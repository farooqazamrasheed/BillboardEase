require('dotenv').config()

const connection = require('../Database/connect')
const jwt = require('jsonwebtoken')

const bcrypt = require('bcrypt')
const saltRounds = 10 // This is the cost factor for hashing the password.

const register = async (req, res) => {
  console.log('Registered Request Recieved')
  const { cnic, password } = req.body

  try {
    const connect = await connection()
    // Hash the password
    const hashedPassword = await bcrypt.hash(password, saltRounds)

    let query = 'INSERT INTO user (cnic, password) VALUES (?, ?)'
    connect.query(query, [cnic, hashedPassword], (err, result) => {
      if (err) {
        if (err.code === 'ER_DUP_ENTRY') {
          return res.status(400).json({ error: 'CNIC already exists' })
        }
        console.error('Error inserting user:', err)
        return res.status(500).json({ error: 'Internal server error' })
      }

      const userId = result.insertId
      const tokenPayload = { user_id: userId }

      // Fetch the newly created user to return its details (excluding password)
      connect.query(
        'SELECT user_id, name, cnic, email, phone_number, created_at, status FROM user WHERE user_id = ?',
        [userId],
        (err, rows) => {
          if (err || rows.length === 0) {
            return res.status(500).json({ error: 'Internal server error' })
          }

          const user = rows[0]
          const token = jwt.sign(tokenPayload, process.env.SECRET_KEY)
          res.header('Authorization', `Bearer ${token}`)
          connect.end()
          return res.status(200).json({
            user_id: user.user_id,
            name: user.name,
            cnic: user.cnic,
            email: user.email,
            phone_number: user.phone_number,
            created_at: user.created_at,
            status: user.status,
            token: `Bearer ${token}` // Optionally return the token in the response body
          })
        }
      )
    })
  } catch (error) {
    console.error('Error during registration:', error)
    return res.status(500).json({ error: 'Internal server error' })
  }
}

const login = async (req, res) => {
  console.log('hi')
  const { cnic, password } = req.body

  try {
    const connect = await connection()
    let query = 'SELECT * FROM user WHERE cnic = ?'

    connect.query(query, [cnic], async (err, results) => {
      if (err) {
        console.error('Error fetching user:', err)
        return res.status(500).json({ error: 'Internal server error' })
      }

      if (results.length > 0) {
        const user = results[0]
        // Use bcrypt to compare the hashed password stored in the database with the plaintext password provided.
        const match = await bcrypt.compare(password, user.password)

        if (match) {
          // Exclude sensitive information from the response body
          const responseBody = {
            user_id: user.user_id,
            name: user.name,
            cnic: user.cnic,
            email: user.email,
            phone_number: user.phone_number,
            created_at: user.created_at,
            role: user.usertype_id,
            status: user.status
          }

          const tokenPayload = { user_id: user.user_id }
          const token = jwt.sign(tokenPayload, process.env.SECRET_KEY) // Customize token expiration as needed

          // Send the token in both the Authorization header and the response body
          res.header('Authorization', `Bearer ${token}`)
          return res
            .status(200)
            .json({ ...responseBody, token: `Bearer ${token}` })
        } else {
          console.log('invalid cred')
          return res.status(401).json({ error: 'Invalid credentials' })
        }
      } else {
        console.log('Not')
        return res.status(404).json({ error: 'User not found' })
      }
    })
  } catch (error) {
    console.error('Error during login:', error)
    return res.status(500).json({ error: 'Internal server error' })
  }
}

const getUserById = async (req, res) => {
  const { user_id } = req.params

  try {
    const connect = await connection()
    let query =
      'SELECT user_id, name, email, cnic, phone_number, created_at, status, usertype_id FROM user WHERE user_id = ?'

    connect.query(query, [user_id], (err, results) => {
      if (err) {
        console.error('Error fetching user:', err)
        return res.status(500).json({ error: 'Internal server error' })
      }

      if (results.length > 0) {
        return res.status(200).json(results[0])
      } else {
        return res.status(404).json({ error: 'User not found' })
      }
    })
  } catch (error) {
    console.error('Error during fetching user:', error)
    return res.status(500).json({ error: 'Internal server error' })
  }
}

const updateUserById = async (req, res) => {
  const { user_id } = req.params
  const { name, email, cnic, phone_number, status, usertype_id } = req.body

  try {
    const connect = await connection()
    let query =
      'UPDATE user SET name = ?, email = ?, cnic = ?, phone_number = ?, status = ?, usertype_id = ? WHERE user_id = ?'

    connect.query(
      query,
      [name, email, cnic, phone_number, status, usertype_id, user_id],
      (err, results) => {
        if (err) {
          if (err.code === 'ER_DUP_ENTRY') {
            return res.status(400).json({ error: 'CNIC already exists' })
          }
          console.error('Error updating user:', err)
          return res.status(500).json({ error: 'Internal server error' })
        }

        if (results.affectedRows > 0) {
          return res.status(200).json({ message: 'User updated successfully' })
        } else {
          return res.status(404).json({ error: 'User not found' })
        }
      }
    )
  } catch (error) {
    console.error('Error during updating user:', error)
    return res.status(500).json({ error: 'Internal server error' })
  }
}

module.exports = { register, login, getUserById, updateUserById }
