-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 07:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billboardease`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `bid_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `billboard_id` int(11) NOT NULL,
  `bidAmount` decimal(10,2) NOT NULL,
  `bidTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `forDateTime` datetime NOT NULL,
  `isWinning` tinyint(1) DEFAULT 0,
  `finalize` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`bid_id`, `user_id`, `billboard_id`, `bidAmount`, `bidTime`, `forDateTime`, `isWinning`, `finalize`) VALUES
(1, 123, 63, 350500.00, '2024-05-18 10:45:30', '2024-05-20 10:30:00', 0, 0),
(2, 130, 63, 351000.00, '2024-05-18 10:45:34', '2024-05-20 10:30:00', 0, 0),
(3, 123, 63, 351500.00, '2024-05-18 10:47:39', '2024-05-20 10:30:00', 0, 0),
(4, 123, 63, 352000.00, '2024-05-18 10:54:05', '2024-05-20 10:30:00', 0, 0),
(5, 131, 63, 352500.00, '2024-05-18 10:54:17', '2024-05-20 10:30:00', 0, 0),
(6, 123, 63, 353000.00, '2024-05-18 10:55:12', '2024-05-20 10:30:00', 0, 0),
(7, 131, 63, 353500.00, '2024-05-18 10:55:34', '2024-05-20 10:30:00', 1, 0),
(8, 123, 63, 350500.00, '2024-05-18 11:37:48', '2024-05-20 11:30:00', 0, 0),
(9, 123, 63, 350500.00, '2024-05-18 11:47:25', '2024-05-20 11:30:00', 1, 1),
(10, 123, 63, 350500.00, '2024-05-19 10:21:12', '2024-05-21 15:00:00', 1, 1),
(11, 123, 62, 10500.00, '2024-05-19 10:21:17', '2024-05-21 15:00:00', 1, 1),
(12, 123, 61, 10500.00, '2024-05-19 10:21:19', '2024-05-21 15:00:00', 1, 1),
(13, 123, 57, 10500.00, '2024-05-19 10:21:22', '2024-05-21 15:00:00', 1, 1),
(14, 123, 55, 10500.00, '2024-05-19 10:21:26', '2024-05-21 15:00:00', 1, 1),
(15, 123, 63, 350500.00, '2024-05-19 17:41:51', '2024-05-21 22:30:00', 1, 1),
(16, 123, 63, 350500.00, '2024-05-22 10:06:04', '2024-05-24 15:00:00', 0, 0),
(17, 123, 63, 351000.00, '2024-05-22 10:07:07', '2024-05-24 15:00:00', 0, 0),
(18, 123, 63, 351500.00, '2024-05-22 10:08:11', '2024-05-24 15:00:00', 0, 0),
(19, 130, 63, 352000.00, '2024-05-22 10:09:46', '2024-05-24 15:00:00', 0, 0),
(20, 123, 63, 352500.00, '2024-05-22 10:19:20', '2024-05-24 15:00:00', 0, 0),
(21, 130, 63, 353000.00, '2024-05-22 10:32:54', '2024-05-24 15:00:00', 1, 1),
(22, 130, 63, 350500.00, '2024-05-22 10:35:21', '2024-05-24 15:30:00', 0, 0),
(23, 129, 63, 351000.00, '2024-05-22 10:35:52', '2024-05-24 15:30:00', 0, 0),
(24, 130, 63, 351500.00, '2024-05-22 10:36:23', '2024-05-24 15:30:00', 0, 0),
(25, 123, 63, 352000.00, '2024-05-22 10:36:35', '2024-05-24 15:30:00', 1, 1),
(26, 123, 63, 350500.00, '2024-05-26 16:16:11', '2024-05-28 21:00:00', 1, 1),
(27, 123, 63, 350500.00, '2024-05-26 16:48:22', '2024-05-28 21:30:00', 1, 1),
(28, 123, 62, 10500.00, '2024-05-26 16:50:32', '2024-05-28 21:30:00', 0, 0),
(29, 123, 62, 11000.00, '2024-05-26 16:55:31', '2024-05-28 21:30:00', 0, 0),
(30, 123, 62, 11000.00, '2024-05-26 16:58:26', '2024-05-28 21:30:00', 0, 0),
(31, 123, 62, 11000.00, '2024-05-26 17:01:28', '2024-05-28 21:30:00', 1, 1),
(32, 123, 62, 10500.00, '2024-05-26 17:02:45', '2024-05-28 22:00:00', 1, 1),
(33, 123, 63, 350500.00, '2024-06-01 11:33:33', '2024-06-03 16:30:00', 0, 0),
(34, 123, 62, 10500.00, '2024-06-01 11:33:50', '2024-06-03 16:30:00', 0, 0),
(35, 123, 62, 10500.00, '2024-06-01 11:33:59', '2024-06-03 16:30:00', 0, 0),
(36, 123, 62, 10500.00, '2024-06-01 11:34:05', '2024-06-03 16:30:00', 1, 1),
(37, 123, 61, 10500.00, '2024-06-01 11:34:09', '2024-06-03 16:30:00', 0, 0),
(38, 123, 61, 10500.00, '2024-06-01 11:43:11', '2024-06-03 16:30:00', 0, 0),
(39, 123, 61, 10500.00, '2024-06-01 11:43:14', '2024-06-03 16:30:00', 0, 0),
(40, 123, 61, 10500.00, '2024-06-01 11:49:55', '2024-06-03 16:30:00', 0, 0),
(41, 123, 61, 10500.00, '2024-06-01 11:51:58', '2024-06-03 16:30:00', 0, 0),
(42, 123, 61, 10500.00, '2024-06-01 11:53:31', '2024-06-03 16:30:00', 1, 1),
(43, 130, 63, 350500.00, '2024-06-01 12:00:04', '2024-06-03 17:00:00', 0, 0),
(44, 123, 63, 350500.00, '2024-06-01 12:11:41', '2024-06-03 16:30:00', 0, 0),
(45, 123, 63, 350500.00, '2024-06-01 12:22:42', '2024-06-03 16:30:00', 0, 0),
(46, 130, 63, 350500.00, '2024-06-01 12:25:03', '2024-06-03 17:00:00', 0, 0),
(47, 123, 63, 350500.00, '2024-06-01 12:27:23', '2024-06-03 16:30:00', 1, 1),
(48, 130, 63, 350500.00, '2024-06-01 12:27:43', '2024-06-03 17:00:00', 0, 0),
(49, 123, 63, 350500.00, '2024-06-01 12:27:45', '2024-06-03 17:00:00', 0, 0),
(50, 130, 63, 350500.00, '2024-06-01 12:27:50', '2024-06-03 17:00:00', 0, 0),
(51, 130, 63, 350500.00, '2024-06-01 12:27:52', '2024-06-03 17:00:00', 0, 0),
(52, 130, 63, 350500.00, '2024-06-01 12:27:53', '2024-06-03 17:00:00', 0, 0),
(53, 130, 63, 350500.00, '2024-06-01 12:27:54', '2024-06-03 17:00:00', 0, 0),
(54, 130, 63, 350500.00, '2024-06-01 12:27:56', '2024-06-03 17:00:00', 0, 0),
(55, 130, 63, 350500.00, '2024-06-01 12:27:56', '2024-06-03 17:00:00', 0, 0),
(56, 130, 63, 350500.00, '2024-06-01 12:27:59', '2024-06-03 17:00:00', 0, 0),
(57, 130, 63, 350500.00, '2024-06-01 12:37:49', '2024-06-03 17:00:00', 1, 1),
(58, 123, 63, 350500.00, '2024-06-01 12:38:21', '2024-06-03 17:30:00', 0, 0),
(59, 130, 63, 350500.00, '2024-06-01 12:38:31', '2024-06-03 17:30:00', 0, 0),
(60, 123, 63, 350500.00, '2024-06-01 12:57:39', '2024-06-03 17:30:00', 0, 0),
(61, 123, 63, 351000.00, '2024-06-01 12:57:43', '2024-06-03 17:30:00', 0, 0),
(62, 130, 63, 350500.00, '2024-06-01 12:58:09', '2024-06-03 17:30:00', 0, 0),
(63, 130, 63, 351000.00, '2024-06-01 12:58:16', '2024-06-03 17:30:00', 0, 0),
(64, 123, 63, 351500.00, '2024-06-01 12:58:22', '2024-06-03 17:30:00', 0, 0),
(65, 130, 63, 352000.00, '2024-06-01 12:58:26', '2024-06-03 17:30:00', 1, 1),
(66, 123, 64, 190500.00, '2024-06-08 13:22:01', '2024-06-10 18:00:00', 0, 0),
(67, 123, 64, 191000.00, '2024-06-08 13:22:05', '2024-06-10 23:00:00', 1, 1),
(68, 123, 64, 190500.00, '2024-06-08 14:30:58', '2024-06-10 19:30:00', 0, 0),
(69, 123, 64, 191000.00, '2024-06-08 14:31:03', '2024-06-10 19:30:00', 1, 1),
(70, 123, 65, 24500.00, '2024-06-08 18:24:40', '2024-06-10 23:00:00', 0, 0),
(71, 123, 65, 25000.00, '2024-06-08 18:24:46', '2024-06-10 23:00:00', 0, 0),
(72, 123, 65, 25500.00, '2024-06-08 18:25:16', '2024-06-10 23:00:00', 0, 0),
(73, 130, 65, 26000.00, '2024-06-08 18:25:19', '2024-06-10 23:00:00', 0, 0),
(74, 123, 65, 26500.00, '2024-06-08 18:25:44', '2024-06-10 23:00:00', 0, 0),
(75, 130, 65, 27000.00, '2024-06-08 18:26:02', '2024-06-10 23:00:00', 1, 0),
(76, 123, 65, 30000.00, '2024-06-08 18:45:44', '2024-06-10 23:30:00', 0, 0),
(77, 130, 65, 30500.00, '2024-06-08 18:45:55', '2024-06-10 23:30:00', 0, 0),
(78, 123, 65, 31000.00, '2024-06-08 18:46:01', '2024-06-10 23:30:00', 0, 0),
(79, 123, 65, 31500.00, '2024-06-08 18:46:29', '2024-06-10 23:30:00', 0, 0),
(80, 123, 65, 32000.00, '2024-06-08 18:59:33', '2024-06-10 23:30:00', 1, 1),
(81, 130, 65, 24500.00, '2024-06-08 19:35:04', '2024-06-11 00:30:00', 0, 0),
(82, 123, 65, 25000.00, '2024-06-08 19:35:05', '2024-06-11 00:30:00', 0, 0),
(83, 130, 65, 25500.00, '2024-06-08 19:35:09', '2024-06-11 00:30:00', 1, 0),
(84, 123, 65, 24000.00, '2024-06-08 20:34:34', '2024-06-11 01:30:00', 0, 0),
(85, 123, 65, 24500.00, '2024-06-08 20:35:32', '2024-06-11 01:30:00', 1, 1),
(86, 123, 64, 190000.00, '2024-06-08 20:35:43', '2024-06-11 01:30:00', 1, 1),
(87, 123, 61, 10000.00, '2024-06-08 20:40:27', '2024-06-11 01:30:00', 0, 0),
(88, 123, 61, 10500.00, '2024-06-08 20:41:11', '2024-06-11 01:30:00', 1, 1),
(89, 123, 65, 24500.00, '2024-06-09 07:45:24', '2024-06-11 12:30:00', 0, 0),
(90, 123, 65, 24500.00, '2024-06-09 07:46:21', '2024-06-11 12:30:00', 0, 0),
(91, 123, 65, 25000.00, '2024-06-09 07:46:25', '2024-06-11 12:30:00', 0, 0),
(92, 123, 65, 25500.00, '2024-06-09 07:46:29', '2024-06-11 12:30:00', 1, 1),
(93, 123, 61, 10500.00, '2024-06-10 17:53:04', '2024-06-12 22:30:00', 1, 1),
(94, 123, 65, 24500.00, '2024-06-10 17:53:22', '2024-06-12 22:30:00', 0, 0),
(95, 123, 65, 25000.00, '2024-06-10 17:53:49', '2024-06-12 22:30:00', 0, 0),
(96, 130, 65, 25500.00, '2024-06-10 17:53:52', '2024-06-12 22:30:00', 0, 0),
(97, 130, 65, 26000.00, '2024-06-10 17:54:13', '2024-06-12 22:30:00', 0, 0),
(98, 130, 65, 25500.00, '2024-06-10 17:54:30', '2024-06-12 22:30:00', 0, 0),
(99, 123, 65, 26000.00, '2024-06-10 17:54:33', '2024-06-12 22:30:00', 0, 0),
(100, 123, 65, 26500.00, '2024-06-10 17:57:20', '2024-06-12 22:30:00', 1, 1),
(101, 123, 64, 190500.00, '2024-06-10 17:57:24', '2024-06-12 22:30:00', 1, 1),
(102, 130, 63, 350500.00, '2024-06-10 17:57:28', '2024-06-12 22:30:00', 0, 0),
(103, 130, 63, 351000.00, '2024-06-10 17:57:30', '2024-06-12 22:30:00', 1, 0),
(104, 123, 65, 24500.00, '2024-06-22 13:24:51', '2024-06-24 18:00:00', 0, 0),
(105, 130, 65, 25000.00, '2024-06-22 13:24:52', '2024-06-24 18:00:00', 0, 0),
(106, 123, 65, 25500.00, '2024-06-22 13:24:57', '2024-06-24 18:00:00', 1, 1),
(107, 123, 65, 24500.00, '2024-06-22 13:30:35', '2024-06-24 18:30:00', 0, 0),
(108, 123, 65, 24500.00, '2024-06-22 13:46:08', '2024-06-24 18:30:00', 0, 0),
(109, 123, 65, 25000.00, '2024-06-22 13:46:54', '2024-06-24 18:30:00', 1, 1),
(110, 123, 64, 190500.00, '2024-06-22 13:52:10', '2024-06-24 18:30:00', 1, 1),
(111, 123, 65, 24500.00, '2024-06-24 15:18:47', '2024-06-26 20:00:00', 1, 1),
(112, 139, 66, 23924.00, '2024-06-27 14:16:58', '2024-06-29 19:00:00', 1, 1),
(113, 139, 65, 24500.00, '2024-06-27 15:44:09', '2024-06-29 20:30:00', 1, 0),
(114, 142, 66, 200.00, '2024-06-28 12:32:59', '2024-06-30 17:30:00', 0, 0),
(115, 142, 66, 700.00, '2024-06-28 12:33:15', '2024-06-30 17:30:00', 0, 0),
(116, 142, 65, 9.00, '2024-06-28 12:33:39', '2024-06-30 17:30:00', 0, 0),
(117, 142, 65, 509.00, '2024-06-28 12:35:46', '2024-06-30 17:30:00', 0, 0),
(118, 142, 66, 1200.00, '2024-06-28 12:35:49', '2024-06-30 17:30:00', 1, 1),
(119, 142, 63, 0.00, '2024-06-28 12:38:34', '2024-06-30 17:30:00', 1, 0),
(120, 142, 62, 10500.00, '2024-06-28 12:42:36', '2024-06-30 17:30:00', 1, 0),
(121, 142, 65, 1010.00, '2024-06-28 12:44:28', '2024-06-30 17:30:00', 1, 0),
(122, 142, 66, 23924.00, '2024-06-28 14:50:30', '2024-06-30 19:30:00', 1, 0),
(123, 142, 65, 0.00, '2024-06-28 14:50:37', '2024-06-30 19:30:00', 0, 0),
(124, 142, 65, 0.00, '2024-06-28 14:50:42', '2024-06-30 19:30:00', 1, 0),
(125, 142, 57, 105011.00, '2024-06-28 14:59:03', '2024-06-30 19:30:00', 1, 0),
(126, 142, 55, 105011.00, '2024-06-28 14:59:19', '2024-06-30 19:30:00', 1, 0),
(127, 142, 57, 99999999.99, '2024-06-28 15:02:27', '2024-06-30 20:00:00', 1, 0),
(128, 142, 57, 10500.00, '2024-06-28 15:35:10', '2024-06-30 20:30:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `billboard`
--

CREATE TABLE `billboard` (
  `billboard_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `baseprice` int(11) NOT NULL DEFAULT 10000,
  `quantity` int(255) NOT NULL DEFAULT 1,
  `location_address` varchar(255) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `dimension_x` float DEFAULT NULL,
  `dimension_y` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billboard`
--

INSERT INTO `billboard` (`billboard_id`, `title`, `baseprice`, `quantity`, `location_address`, `longitude`, `latitude`, `dimension_x`, `dimension_y`, `image`, `created_at`, `tag_id`) VALUES
(8, 'Billboard1', 10000, 1, '123 Main St, Example City, EX 12345', -120.123, 35.1235, 14.5, 48, NULL, '2024-06-24 16:52:55', 1),
(9, 'Billboard2', 10000, 0, 'gt road', -120.123, 35.1235, 14.5, 48, NULL, '2024-06-24 16:52:55', 1),
(10, 'Billboard1', 10000, 0, '123 Main St, Example City, EX 12345', 534, 35.1235, 14.5, 48, NULL, '2024-06-24 16:52:55', 1),
(11, 'Billboard1', 10000, 0, '123 Main St, Example City, EX 12345', -120.123, 35.1235, 23, 48, NULL, '2024-06-24 16:52:55', 1),
(12, 'Billboard1', 10000, 0, '123 Main St, Example City, EX 12345', -120.123, 35.1235, 14.5, 48, NULL, '2024-06-24 16:52:55', 1),
(13, 'Billboard1', 10000, 0, '123 Main St, Example City, EX 12345', -120.123, 35.1235, 14.5, 48, 'media-1714913180634-828976147.docx', '2024-06-24 16:52:55', 1),
(16, 'Billboard1', 10000, 0, '123 Main St, Example City, EX 12345', -120.123, 35.1235, 14.5, 48, NULL, '2024-06-24 16:52:55', 1),
(26, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(27, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(28, 'sfsdff', 10000, 0, '345', 345, 53, 534, 345, 'media-1714913329576-42800883.png', '2024-06-24 16:52:55', 1),
(29, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(30, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(31, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(32, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(33, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(34, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(35, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(36, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(37, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(38, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(39, '', 10000, 0, '345', 345, 53, 534, 345, NULL, '2024-06-24 16:52:55', 1),
(41, '', 10000, 0, '34', 435, 345, 5, 35, NULL, '2024-06-24 16:52:55', 2),
(42, '', 10000, 0, 'gdfg', 5, 5, 5, 5, NULL, '2024-06-24 16:52:55', 2),
(43, '', 10000, 0, 'ty', 5, 5, 5, 5, NULL, '2024-06-24 16:52:55', 1),
(44, '', 10000, 0, 'yrty', 5, 5, 5, 5, NULL, '2024-06-24 16:52:55', 1),
(45, '', 10000, 0, 'lda', 4.33, -33.3, 34, 34, NULL, '2024-06-24 16:52:55', 1),
(46, 'try', 10000, 0, 'try5', 5, 5, 5, 5, NULL, '2024-06-24 16:52:55', NULL),
(47, 'Awais', 10000, 0, '456', 3, 3, 3, 3, NULL, '2024-06-24 16:52:55', 1),
(48, 'Awais', 10000, 0, '456', 3, 3, 3, 3, NULL, '2024-06-24 16:52:55', 1),
(50, 'tert', 10000, 0, '34', 43, 34, 34, 345, NULL, '2024-06-24 16:52:55', 2),
(51, 'ert', 10000, 0, 'er', 5, 5, 5, 5, NULL, '2024-06-24 16:52:55', NULL),
(52, 'trert', 10000, 0, '34', 5, 5, 3, 5, NULL, '2024-06-24 16:52:55', NULL),
(53, 'dfg', 10000, 0, 'df', 4, 4, 4, 4, NULL, '2024-06-24 16:52:55', NULL),
(54, 'g', 10000, 0, 'h', 6, 6, 6, 6, NULL, '2024-06-24 16:52:55', NULL),
(55, 'g', 10000, 0, 'h', 6, 6, 6, 6, NULL, '2024-06-24 16:52:55', NULL),
(56, 'g', 10000, 0, 'h', 6, 6, 6, 6, NULL, '2024-06-24 16:52:55', 1),
(57, 'tret', 10000, 0, 'tr', 5, 5, 5, 5, NULL, '2024-06-24 16:52:55', 1),
(58, 'df4frcdf', 10000, 0, 'fg', 443, 4, 4, 443, 'media-1714913004147-39381324.png', '2024-06-24 16:52:55', 1),
(61, 'gfg', 10000, 0, 'ret', 4, 4, 4, 4, 'media-1714915076908-588838507.png', '2024-06-24 16:52:55', 1),
(62, 'trert', 10000, 1, '4', 4, 4, 4, 4, 'media-1714912974026-181036258.png', '2024-06-24 16:52:55', 2),
(63, 'Titans ', 350000, 35, 'Johar Town', 45, 44, 4, 4, 'media-1714916818375-53823284.png', '2024-06-24 16:52:55', 1),
(64, 'Power', 190000, 15, 'nfkrt', 373, 373, 9, 6, NULL, '2024-06-24 16:52:55', 1),
(65, 'power11', 24000, 34, 'f', 4, 4, 4, 3, 'https://res.cloudinary.com/dmnlyefx1/image/upload/v1717330700/media/dw05uyiejoyo0gcntoso.png', '2024-06-24 16:52:55', 1),
(66, 'Some Billboard', 23424, 2, '2', 3, 3, 3, 2, 'https://res.cloudinary.com/dmnlyefx1/image/upload/v1719248051/media/tt9jmrkzcw6klfgk9r8h.png', '2024-06-24 16:54:11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `contenttype_id` int(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `filepath`, `description`, `user_id`, `contenttype_id`, `created_at`, `status`) VALUES
(12, 'hi4', 'https://res.cloudinary.com/dmnlyefx1/video/upload/v1717332686/media/s9mjwdkib310bgcewnip.mp4', 'hi44', 123, NULL, '2024-05-05 19:37:49.197018', NULL),
(13, 'Vivo', 'https://res.cloudinary.com/dmnlyefx1/video/upload/v1717941290/media/ug7vrnfshkcec4vijx85.mp4', 'Juice add', 123, NULL, '2024-05-05 20:26:48.692792', NULL),
(14, 'Sir ', 'https://res.cloudinary.com/dmnlyefx1/video/upload/v1717333098/media/be5ueqyofuyn7qtaidoq.mp4', 'Sir sir', 123, NULL, '2024-05-22 10:22:12.923516', NULL),
(15, 'Vivo', 'https://res.cloudinary.com/dmnlyefx1/video/upload/v1717929521/media/ejw0brqfex6iuehqs2tj.mp4', 'vivo', 130, NULL, '2024-06-01 13:00:51.435085', NULL),
(16, 'dummy', 'https://res.cloudinary.com/dmnlyefx1/video/upload/v1719497866/media/rlumlj0vpsnwk3vp9ae9.mp4', 'description', 139, NULL, '2024-06-27 14:17:46.906286', NULL),
(17, 'cricket AD', 'https://res.cloudinary.com/dmnlyefx1/video/upload/v1719578764/media/dczny2raqkkkutduxfgc.mp4', 'wooden bat A', 142, NULL, '2024-06-28 12:46:06.283717', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contenttype`
--

CREATE TABLE `contenttype` (
  `contenttype_id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contenttype`
--

INSERT INTO `contenttype` (`contenttype_id`, `name`, `created_at`, `status`) VALUES
(1, 'video', '2024-04-02 15:41:22.650314', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `approve` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `content_id`, `bid_id`, `created_at`, `approve`, `paid`) VALUES
(1, 13, 9, '2024-05-19 15:20:00', 1, 0),
(2, 13, 10, '2024-05-19 18:28:23', 1, 0),
(3, 13, 14, '2024-05-19 19:04:25', 1, 0),
(4, 13, 11, '2024-05-19 19:04:46', 0, 0),
(5, 12, 12, '2024-05-19 19:07:30', 1, 0),
(6, 13, 13, '2024-05-19 19:07:33', 0, 0),
(7, 13, 31, '2024-05-26 22:03:15', 1, 0),
(8, 13, 32, '2024-05-26 22:03:37', 1, 0),
(9, 13, 15, '2024-05-26 22:03:42', 0, 0),
(10, 12, 25, '2024-05-26 22:03:45', 0, 0),
(11, 12, 26, '2024-05-26 22:03:48', 1, 0),
(12, 13, 27, '2024-05-26 22:03:51', 1, 0),
(13, 13, 36, '2024-06-01 17:59:02', 1, 0),
(14, 13, 42, '2024-06-01 17:59:08', 1, 0),
(15, 15, 47, '2024-06-01 18:00:58', 1, 0),
(16, 15, 21, '2024-06-01 18:01:04', 0, 0),
(17, 15, 57, '2024-06-01 18:01:09', 1, 1),
(18, 15, 65, '2024-06-01 18:01:37', 1, 1),
(19, 13, 67, '2024-06-09 12:47:37', 1, 1),
(20, 13, 85, '2024-06-10 23:06:11', 0, 0),
(21, 13, 80, '2024-06-10 23:06:57', 0, 1),
(22, 13, 69, '2024-06-10 23:07:01', 0, 0),
(23, 13, 86, '2024-06-10 23:07:05', 0, 1),
(24, 13, 88, '2024-06-10 23:07:08', 0, 0),
(25, 13, 92, '2024-06-10 23:07:11', 0, 0),
(26, 13, 93, '2024-06-10 23:07:14', 0, 0),
(27, 12, 100, '2024-06-10 23:07:17', 0, 0),
(28, 13, 101, '2024-06-10 23:07:19', 0, 0),
(29, 13, 106, '2024-06-22 19:06:02', 0, 1),
(30, 13, 109, '2024-06-22 19:06:06', 0, 1),
(31, 14, 110, '2024-06-22 19:06:10', 0, 1),
(32, 12, 111, '2024-06-25 20:12:43', 1, 0),
(33, 16, 112, '2024-06-27 19:33:35', 1, 1),
(34, 17, 118, '2024-06-28 21:34:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'Johar Town'),
(2, 'Model Town');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(255) DEFAULT NULL,
  `usertype_id` int(255) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `cnic`, `phone_number`, `created_at`, `status`, `usertype_id`) VALUES
(1, '', NULL, '', 'ferf', NULL, '2024-03-25 14:41:07.132445', 0, 1),
(5, '', NULL, '', 'dfgfdg', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(6, '', NULL, 'fnfijifrgnj', '263643434', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(7, '', NULL, 'fnfijifrgnj', '263646786783434', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(9, '', NULL, 'fnfihthjifrgnj', '263646786rty783434', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(10, '', NULL, 'fnetertfihthjifrgnj', '2636trert46786rty783434', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(12, '', NULL, 'fnetefhrtfihthjifrgnj', '2636fhgfghtrert46786rty783434', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(14, '', NULL, 'fnetefhrtfihthjifrgnj', '2636fhgfgjghjhtrert46786rty783434', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(15, '', NULL, 'fnetefhrtfihthjifrgnj', '2636fhgfgjg83434', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(16, '', NULL, 'fnetefhrtfihthjifrgnj', 'uyt7', NULL, '2024-03-25 14:41:07.132445', 0, NULL),
(20, '', NULL, '4564t5656', 'uyt46567', NULL, '2024-03-25 15:28:08.935109', NULL, NULL),
(22, '', NULL, '4564t5656', 'uyt45646567', NULL, '2024-03-25 15:29:27.948720', NULL, NULL),
(23, '', NULL, '$2b$10$PgPGWihlP6LIdl8/FJgc6u1VjXWrGpT7lWVTP1sRbhGigsNlA6j4C', '3520174187813', NULL, '2024-03-26 14:12:53.154251', NULL, NULL),
(24, '', NULL, '$2b$10$f7auADZPHwVWFppwCBx3S.3d5tAhCTwuVa8JKbdd7HkNIlvVj8VKG', '35201t74187813', NULL, '2024-04-01 16:03:43.824844', NULL, NULL),
(25, '', NULL, '$2b$10$7UECOtx5KrDYv2ScBB4LBuGNuyU7gyMuzVdBOTMG/sk2U1SIZtdra', '234234234', NULL, '2024-04-01 17:15:02.249101', NULL, NULL),
(26, '', NULL, '$2b$10$ks2z19IugdMWnP.RO0kk.OOmH1z9E9BaSsjGborZ8FtxO6Ua8YaTS', '23f4234234', NULL, '2024-04-01 17:19:18.142938', NULL, NULL),
(27, '', NULL, '$2b$10$xW9bKTgQj8nID3VXrKU/dus7e0xyowsAI/a38oDwo.XKKic/iqs1e', '456456', NULL, '2024-04-17 18:07:53.011487', NULL, NULL),
(28, '', NULL, '$2b$10$ssIMK2lX9en0syMZTPP20e4S9CI/JDnNxicVkltvgUqBv0Bjgjg96', 'ttrter', NULL, '2024-04-17 18:11:20.609027', NULL, NULL),
(29, '', NULL, '$2b$10$hL7dq/risGfVt9b/8JVVu.MghVI4gpCjv5IqRAEUnL52hARMydK12', 'ttrter534', NULL, '2024-04-17 18:11:55.766342', NULL, NULL),
(30, '', NULL, '$2b$10$s.IVtlFlj55erlbZ5uvtueqe1Tegt1KmQtipeJ0DfQUJ4sH50lr7m', 'ttrter534rt', NULL, '2024-04-17 18:12:27.516680', NULL, NULL),
(31, '', NULL, '$2b$10$l1lvCdIkRO4UnDN2hW0aeOtUhAytT2tT1XULvxMIKLiGZmU6ow8eu', 'ttrter534rt56', NULL, '2024-04-17 18:13:11.356900', NULL, NULL),
(33, '', NULL, '$2b$10$MLtRelWfuj.OUXH1kePp4.sFZQva/DhGzviRG4WMzq/KAZ505wUkO', 'ttrter534rt5664564', NULL, '2024-04-17 18:13:38.458258', NULL, NULL),
(34, '', NULL, '$2b$10$22XKGwmZ2AVmRZlZ2fOU5uQUDvnS.sDvVInyeFFNYwVITe5JM3YL6', 'tt456664y645', NULL, '2024-04-17 18:15:06.907098', NULL, NULL),
(35, '', NULL, '$2b$10$6jDW1Qgyzp7rD2XjnFYOf.ZmdeT/6kmRg57Poehq/QW5isU1Tr1lO', 'tthrfghrgh', NULL, '2024-04-17 18:21:13.415527', NULL, NULL),
(36, '', NULL, '$2b$10$yMFihUMp7LAr0qajLwsB/eeUtZ0a9RzJdDGMWP.mWWweQ8EzQHtH2', 'hyrty', NULL, '2024-04-17 18:29:40.501668', NULL, NULL),
(37, '', NULL, '$2b$10$wM08w38xrSEIsKRwbhxauOUo0aqXeq0W3XRIBtqInUJ.oetc7Y6yW', 'hyrty3456', NULL, '2024-04-17 18:30:28.543479', NULL, NULL),
(38, '', NULL, '$2b$10$TLMIwZMCxxJw2CrgMnP6ueVY9nWc23cJluJ2ab5d2EaT.j4D.zlwC', '36363', NULL, '2024-04-17 18:32:35.156636', NULL, NULL),
(46, '', NULL, '$2b$10$vwlDPGXe4tN3lvalqNsFyuv7jT55RHs1zhCdvdIavfB50thO7.CyS', '36363567567', NULL, '2024-04-17 18:32:40.217046', NULL, NULL),
(47, '', NULL, '$2b$10$YkobXu3flq4G4oLTS.eFHecZf1iZSHs7EcQDjDQyAfgdNeIw07aMq', 'ert', NULL, '2024-04-17 18:34:19.615799', NULL, NULL),
(48, '', NULL, '$2b$10$zGvAfwdbZ/jd/6ippD9SlO/lzsQG1P00.JTyzos72gdloDXqfOx7u', 'ert443545', NULL, '2024-04-17 18:36:35.654513', NULL, NULL),
(49, '', NULL, '$2b$10$ikFErejQoXVpN242iSArS.OJik.gxE/t2miWEICDIt87apsNnJL9y', '453dfgrtg', NULL, '2024-04-17 18:38:17.760237', NULL, NULL),
(51, '', NULL, '$2b$10$mrL3/M6BLW0o1zYUOKRqjOPui5NwF6tlcOM.Pb/ZooKLrE6816hPm', 'trtertert', NULL, '2024-04-17 18:44:47.984791', NULL, NULL),
(53, '', NULL, '$2b$10$Dhxv0ISTfci9POooYnPDOe7oUwB1flLFmzpGR3hqKbrXtmYZ4Qsvu', 'trtertertertert', NULL, '2024-04-17 18:44:59.219388', NULL, NULL),
(54, '', NULL, '$2b$10$e4fUPqXiLxB3HALItWUr0e9ZH8NFQdobPQkNQdYcIpaNvj40ATRkG', 'tr545', NULL, '2024-04-17 18:46:29.812800', NULL, NULL),
(56, '', NULL, '$2b$10$ttUdHI62yyOifQviKD7IF.4V/7tkHyT03tiAv/C6YWkZFyRdiHpjq', 'tr54545345', NULL, '2024-04-17 18:46:42.845210', NULL, NULL),
(57, '', NULL, '$2b$10$vLGf2ld.ik814PWDvUq11.dcEGahWjyn0rHEy8s/frw/4U4JNJB4W', 'tr5454534534', NULL, '2024-04-17 18:46:46.477309', NULL, NULL),
(59, '', NULL, '$2b$10$jq2TD3JOpS1ZF5b9vV/vfuGK8l2gI4gymvchnzgSmpZUYaEraGNl6', 'r34', NULL, '2024-04-21 08:26:49.456050', NULL, NULL),
(64, '', NULL, '$2b$10$cDeKVxp6ZvdWQhtzJvKCfOpymYWPUz831uYxtZP31JCAZzjRVd/n6', '34534545', NULL, '2024-04-21 08:28:21.232549', NULL, NULL),
(69, '', NULL, '$2b$10$YKReHmJn4wG/ZfltBhjZ8eU3sbVTC.4tU2sP73TcdEvM8K0vKN73.', '456456gertg', NULL, '2024-04-21 09:58:39.812793', NULL, NULL),
(70, '', NULL, '$2b$10$dJB5oDWeDxp8CsOe8q7w1..jgcW1n0eEUmg2AEe9ObUEZTvz7pRUa', 'fwfrwerf2egc4r', NULL, '2024-04-21 10:00:18.081907', NULL, NULL),
(71, '', NULL, '$2b$10$YPpDjUDM7T44Q/xrj6fzUOJ9cTYdNmfjLfJ/JTz7l7D7u1VYcH4Y2', '45vyr5yv65yyhftyhyujtyuj', NULL, '2024-04-21 10:00:40.682099', NULL, NULL),
(72, '', NULL, '$2b$10$YBIOP/eY1WlPVHMTI0/Fg.36ZusUzpyF53WBpYfkyzTguGFFAND7e', 'fsf', NULL, '2024-04-23 06:40:56.937604', NULL, NULL),
(73, '', NULL, '$2b$10$D8K59.tUJVoW4SbZYdXpk.LRA2X0zstksMTwSeRmp0f9rJAXEVCvi', 'hi', NULL, '2024-04-23 07:05:17.351969', NULL, NULL),
(74, '', NULL, '$2b$10$QcuWxNTlai97qDR.aUXeO.SmsVdCSOquALdcu/z/Z2jQTCsl0b27a', '74923648244', NULL, '2024-04-23 07:21:25.775089', NULL, NULL),
(75, '', NULL, '$2b$10$bK9DZLOAawNz5Er87bHPju50mw.Wm46MSQJ5fsTq2JmVxkzLACzGK', '34234', NULL, '2024-04-23 07:21:31.337172', NULL, NULL),
(76, '', NULL, '$2b$10$sjji.BanIM8xt4AlB6P01.2Jnejz.9PrUcP8g/B9nv6XFa9IoeGvC', '42344', NULL, '2024-04-23 07:21:47.360542', NULL, NULL),
(77, '', NULL, '$2b$10$Pw2iuCIVn3.zgFbFEzkZne5xq6vHBYq1jdLnXSSry4O5ZX0tJvjmy', 't45t', NULL, '2024-04-23 07:38:03.310582', NULL, NULL),
(78, '', NULL, '$2b$10$0.4PmV9l0ET4NCcBD2lU0.dNjKY5hRJ5FdkLc994c01mb.nFSYgEK', 'rttrt', NULL, '2024-04-23 07:38:11.982654', NULL, NULL),
(79, '', NULL, '$2b$10$CMtYmbjqtKCdZHdXwNaPwetpI6dwP9XeezTnm1C75PBL4WLDpF/Kq', '4353455', NULL, '2024-04-23 07:38:31.843634', NULL, NULL),
(80, '', NULL, '$2b$10$F3Z/NsosJkE/bFbrlBFYGeykd.8cqCyp2NSro2pc4JzUZDCcaOXCm', 't345', NULL, '2024-04-23 07:38:41.169780', NULL, NULL),
(81, '', NULL, '$2b$10$X5bWXHuXsZk1HcwTSlvP9uFickJp4E12CRi8yEneB/tunki8tITNC', '423434', NULL, '2024-04-23 07:39:51.122464', NULL, NULL),
(82, '', NULL, '$2b$10$s3iwnaXy8t4d0zKyQn4cheUJisfYDMeLRpu7dy20O0Figwa3rDvmW', '4534', NULL, '2024-04-23 07:53:33.094950', NULL, NULL),
(83, '', NULL, '$2b$10$68lmZUtDFbkHo.8mTyznhOdfAx4WDzZxy8rcWkAiNSP4qa.lPX5UW', 'werwr', NULL, '2024-04-27 08:24:55.528253', NULL, NULL),
(84, '', NULL, '$2b$10$PkyqaSg/5wWqOkRm.Mo3Qu3O7zuXshOZC9GoQuG5/2Vrw3pZBlU56', 'tryy', NULL, '2024-04-27 08:29:10.377723', NULL, NULL),
(85, '', NULL, '$2b$10$5eQ3Lruqx3Y0bUX2HdhgY.WX11E2YjrUhb/XIcKHAn8.UBareGWci', '6456', NULL, '2024-04-27 08:31:38.168806', NULL, NULL),
(86, '', NULL, '$2b$10$Wotrj2hLD38A8KaL6gWBFON078D3fOJkMqKLPmccPX5iIQSLPRs5W', 'reer', NULL, '2024-04-27 09:01:01.418023', NULL, NULL),
(87, '', NULL, '$2b$10$cPSmni.cTQ4pMweRFKfeyOrAz1qpie/2fI1OTdAx22cVx9SrRyBUK', 'gtg', NULL, '2024-04-27 09:02:04.005471', NULL, NULL),
(88, '', NULL, '$2b$10$htB8QHju2lo4oY/d4obLMO20ksL1VWYsLS.1/jAlwSl05stykfRiu', 'rghtr', NULL, '2024-04-27 09:03:17.605926', NULL, NULL),
(89, '', NULL, '$2b$10$H8hYursS9j4VDzwuzNlji.uE837CIRzuOhFdmXV02ZJGtQP38hZPW', 'rtgrg', NULL, '2024-04-27 09:05:24.950446', NULL, NULL),
(91, '', NULL, '$2b$10$kqDcqrCmpHegDUmsWA.muer8xprYSulAZ2xrWUO2wcYcGhVDXWM/e', 'gtgerrgerg', NULL, '2024-04-27 09:06:37.646670', NULL, NULL),
(92, '', NULL, '$2b$10$QySv9cq2KOxFve.ltJ5Nc.DrXbrzfNhlOeo2.mj/t5.8TLnr3TA4G', 'cvcvbfgb', NULL, '2024-04-27 09:07:07.431952', NULL, NULL),
(93, '', NULL, '$2b$10$DArgKeGlyI9juWpOHfwMD.7h9nOpiImJOpMNFgqwZDnKe6Jup7xgW', 'fgfgg', NULL, '2024-04-27 09:09:16.599671', NULL, NULL),
(94, '', NULL, '$2b$10$ZD2FRNetoHes4kd1gOMpR.orAC3.fyz4Vmn2PCB3i5vr3cxswccrC', 'hyt', NULL, '2024-04-27 09:10:03.334616', NULL, NULL),
(95, '', NULL, '$2b$10$L95l7xdpJm528jfxFHhEzOS1DFhxcCoNn44yKr5tvTzJscrQESqDe', 'bbgtg', NULL, '2024-04-27 09:44:56.882737', NULL, 1),
(96, '', NULL, '$2b$10$hNUuzlXKwy7gBrDLvhejx.P9SLN.4NwhUm/jiYSnAhYA4icw5nE8a', 'fgfh', NULL, '2024-04-27 10:04:27.920050', NULL, 1),
(97, '', NULL, '$2b$10$SLzut..LhU08hHEnia/1O.Jo9My.16ZY4I3WVRKFFyQV6VPdWPhI6', 'yry', NULL, '2024-04-27 10:28:03.780698', NULL, 1),
(98, '', NULL, '$2b$10$QpYeY2s7AoDvlsqEte5C9Owf7hjRpwiAL7yn30U1ppZ15MS4TVkAm', 'fhngg', NULL, '2024-04-27 10:29:00.070681', NULL, 1),
(99, '', NULL, '$2b$10$bJx80hzePib8FBLtjYM.PuADTLcTs.MUBJwSNqe3vUTqzTddxEhEK', '45345', NULL, '2024-04-28 07:30:34.618110', NULL, 1),
(100, '', NULL, '$2b$10$YxCrpmQHettTzOYDDHozj.eDBsdBbozdqnT5R67YRCeI4J2GdQYwG', 'etr', NULL, '2024-04-28 10:00:24.294218', NULL, 1),
(105, '', NULL, '$2b$10$YOvttZXEG70ON2P/m98EZeTzsaZRSZmNX6Da2CX4N0kSLDlvEM7x6', 'etrretertert', NULL, '2024-04-28 10:00:40.375825', NULL, 1),
(106, '', NULL, '$2b$10$MiElbvs8cKjLbRoiEehVb.Q9B9rneu7nuh4yxnRd782OAGW3sb3My', 'ret', NULL, '2024-04-28 10:56:55.265776', NULL, 1),
(107, '', NULL, '$2b$10$zdrL0qnWQGa/OlTNjbBdw.1x17loNILObK8mHxBvUwqqaPugxSZrS', 'rettr', NULL, '2024-04-28 10:57:12.371974', NULL, 1),
(108, '', NULL, '$2b$10$OwdReypkNRBxsHGPNs5SPuC78VbqvGLr36KXvFmto022rUsXDlyLe', 'iuihiuhihuuhhb', NULL, '2024-04-28 11:16:16.772952', NULL, 1),
(109, '', NULL, '$2b$10$cb3jtPm5513y.28d2fxd2.eyU0JLuaIHJ4LrmUDOoMjT323YXZnVK', 'f', NULL, '2024-04-28 13:58:19.440474', NULL, 1),
(110, '', NULL, '$2b$10$HahBHCwAuIxrzZTVLvjOWuuEqFRvoyyuy5VQz0uXFpkEndYSDHf8G', 'qweqeqweqweqwee', NULL, '2024-04-29 19:23:58.402075', NULL, 1),
(111, '', NULL, '$2b$10$xNNDK84TBhUXxfFVZJj0WeLhFByhW7T87Ng8p9VxC117xmnB0v/Ti', 'rwer', NULL, '2024-04-30 08:34:35.141138', NULL, 1),
(112, '', NULL, '$2b$10$iKACnCzTlvjY2NCWfaUw8OeSxo6Mq0jdKedXLDERMq9tr3FfQXjsa', '3454', NULL, '2024-04-30 08:36:20.743220', NULL, 1),
(113, '', NULL, '$2b$10$l7xDTwrwfSJitT34zvB3XOu1mUqN4xHAXsjd.l61p54UVeARbeYrG', 'trytryrt', NULL, '2024-05-01 07:16:21.098457', NULL, 1),
(114, '', NULL, '$2b$10$wbxRFpTrATpgiyfhkrhmc.hwaPmx6I7M6pfo7.P.zwpzJznzqglGO', 'rwwertvtttrvyrt', NULL, '2024-05-01 07:31:09.269912', NULL, 1),
(115, '', NULL, '$2b$10$D3TS1If1idOXK50gtIcivel616gIm2lQpGPsngempGoybuuto/8H.', 'erttert', NULL, '2024-05-01 07:43:28.801478', NULL, 1),
(116, '', NULL, '$2b$10$Z.rOdPxHD1gDp4b64RjaYOHtVzFkm9.zMot1xyVZCVufT2wc55H1m', 'erwerwer', NULL, '2024-05-01 07:43:52.522898', NULL, 1),
(117, '', NULL, '$2b$10$JkGy33460/arhcq/xaKyd.lLJha4nF0lPx7dt0g3KI.9O59jzfXGe', '34534534', NULL, '2024-05-01 07:45:44.153537', NULL, 1),
(118, '', NULL, '$2b$10$ig94k/OA7jqXQYvyiXMVY.aue8pP4wiYKZvNfZ1yARcWuivdTbqZS', 'erewrwer', NULL, '2024-05-01 07:47:55.140024', NULL, 1),
(119, '', NULL, '$2b$10$6rC8hpukVAVvPp1dgwKcJOOmemsJhxLkSCPE2xJiokKtj.53r7LLi', 'awais', NULL, '2024-05-01 07:48:19.428378', NULL, 1),
(120, '', NULL, '$2b$10$.Bg1fKmi1xzCAllH63nKOOCu0w4/grV.4CJLZgfctQFi6Zt3Ol8q.', 'hassan', NULL, '2024-05-01 08:08:27.788900', NULL, 1),
(122, '', NULL, '$2b$10$MsNluUWH.oxsj64xZP4eDudwOL8Vg7zrMdOKdhZBSxjbj98eY3wPC', 'hassan1', NULL, '2024-05-01 08:09:28.523150', NULL, 1),
(123, 'Awais Qamar', 'awaisqamar157@gmail.com', '$2b$10$fM7ExY0IXgK4dBhfolSige.mR6cSEpug71ZMxsUSxJy8.6pJg3exG', '3520174187818', '03028861009', '2024-05-01 09:11:56.670730', 1, 2),
(127, '', NULL, '$2b$10$8l4kaSoBRaFliFd5DP9g2.BYyj014yLhSAqcjKOFSFUfP8pDPU0Eq', 'jhfhubhfer', NULL, '2024-05-04 12:28:39.366990', 1, 2),
(128, '', NULL, '$2b$10$SvhQ4FvY3uXOAOSscKuRk.WDpodq7/CVzm8Oj1ZyIFLB.4KSAUvL2', '1234', NULL, '2024-05-04 12:42:47.740571', 1, 2),
(129, 'Awais', 'awaisqamar157@gmail.com', '$2b$10$pUUHJyrLOVpLYLsd3ydbHe1OBlUjZEe7D1AlJIbo2IZhXREPqQFW2', '3520155555555', '03028861009', '2024-05-04 13:29:10.692971', 1, 1),
(130, '', NULL, '$2b$10$FO1KAhug4ZX9DDBlZkEn4ObUn75owIh0ER1wP/PKCACvJj5hjOTeK', 'user1', NULL, '2024-05-18 09:27:24.508317', 1, 2),
(131, '', NULL, '$2b$10$O9.VLD3fx7EJ7G3fqoV1We.JCQghklLBa5cdzdmvCMhtL0oHIBqTO', 'user2', NULL, '2024-05-18 10:46:27.088878', 1, 2),
(133, '', NULL, '$2b$10$oC6nCy8sSzRouA7Iw7q3auyIEcKs3PpH0AImS5/ADkPHelFpKR3VC', 'awaishi', NULL, '2024-06-27 09:26:02.055401', NULL, 1),
(134, '', NULL, '$2b$10$NEP6Ha9uZWQtu/Z/bGdXT.H6/Yh6nKdF2whWPQ.4eNGKLJjSyPGfe', 'user11', NULL, '2024-06-27 09:27:12.584956', NULL, 1),
(135, '', NULL, '$2b$10$QNfAIY/2wYg4oaiaC1YobORscCeAWJGhIa6fqtNL6sUVa5Cmg1XJW', 'hiawaisqamar', NULL, '2024-06-27 09:28:37.964120', NULL, 1),
(136, '', NULL, '$2b$10$Yf20b/OB7AY3pSas9t8AG.Rmw6JlVswJlwLE3JYg4k3kFMa5SHYsS', '333333333333', NULL, '2024-06-27 11:32:07.013498', NULL, 1),
(137, '', NULL, '$2b$10$E5IkYKqDVc1cnJdRLpeAWu/.be86u1nS0jWDSeINTaTgMTZRC6gb2', '1', NULL, '2024-06-27 11:33:21.276337', NULL, 1),
(138, '', NULL, '$2b$10$ARsH4s5Ad0pUpFc7azv/r.TPigWeBIOQCldq6Q0WoIyYPb3j9yp9G', '3520231329835', NULL, '2024-06-27 14:13:58.647922', NULL, 1),
(139, '', NULL, '$2b$10$lovB1alatDGD6epvhraVGe8Lt1.AcEORjl6qwWJKvQgXkkVeDZc/u', '35202', NULL, '2024-06-27 14:14:14.375039', 1, 2),
(140, '', NULL, '$2b$10$saO.pnFrhJzl7q1J9Olxhu/Y4Z4vJhMEVCXi9epl5Xc5wNmb.0uem', '1111111111111', NULL, '2024-06-27 16:11:14.492284', NULL, 1),
(141, '', NULL, '$2b$10$JW6bx9xZooXqRp5EXLd/KOjfmdYMlkpCZSOHAVCWrd9FRITvAadOa', '4444444444444', NULL, '2024-06-28 12:24:40.354950', NULL, 1),
(142, '', NULL, '$2b$10$A/Q67sB3G4RnqMM5jHvNJ.PFeYFfF7LpIYuBDypUL5MNUnbm.HgWW', '8888888888888', NULL, '2024-06-28 12:28:57.933737', NULL, 2),
(143, '', NULL, '$2b$10$pPkk79jgdLEdQVCJkKbEq.awOST7pJ3wdyMta/G1WnAPwc/DvLUN.', '0000000000000', NULL, '2024-06-28 16:03:59.906659', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `usertype_id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` int(10) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertype_id`, `name`, `code`, `created_at`, `status`) VALUES
(1, 'ADMIN', 1, '2024-04-01 17:01:12.592373', NULL),
(2, 'USER', 2, '2024-04-01 17:01:12.592373', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `billboard_id` int(11) NOT NULL,
  `forDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `user_id`, `billboard_id`, `forDate`) VALUES
(1, 123, 63, '2024-05-22 19:00:00'),
(2, 123, 62, '2024-05-19 19:00:00'),
(3, 123, 62, '2024-05-30 19:00:00'),
(4, 123, 63, '2024-05-28 19:00:00'),
(5, 123, 63, '2024-05-21 19:00:00'),
(6, 123, 63, '2024-05-21 19:00:00'),
(7, 123, 61, '2024-06-05 19:00:00'),
(8, 123, 63, '2024-05-28 19:00:00'),
(9, 123, 62, '2024-05-22 19:00:00'),
(10, 123, 54, '2024-05-21 19:00:00'),
(11, 123, 62, '2024-05-21 05:02:00'),
(12, 123, 62, '2024-05-10 06:58:00'),
(13, 123, 62, '2024-05-23 10:28:00'),
(14, 123, 62, '2024-05-18 07:02:00'),
(15, 123, 62, '2024-05-21 19:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`bid_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `billboard_id` (`billboard_id`);

--
-- Indexes for table `billboard`
--
ALTER TABLE `billboard`
  ADD PRIMARY KEY (`billboard_id`),
  ADD KEY `fk_tag_id` (`tag_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `fk_contenttype` (`contenttype_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `contenttype`
--
ALTER TABLE `contenttype`
  ADD PRIMARY KEY (`contenttype_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_content` (`content_id`),
  ADD KEY `fk_order_bid` (`bid_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD KEY `fk_usertype_id` (`usertype_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertype_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `billboard_id` (`billboard_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `billboard`
--
ALTER TABLE `billboard`
  MODIFY `billboard_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contenttype`
--
ALTER TABLE `contenttype`
  MODIFY `contenttype_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertype_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `bid_ibfk_2` FOREIGN KEY (`billboard_id`) REFERENCES `billboard` (`billboard_id`);

--
-- Constraints for table `billboard`
--
ALTER TABLE `billboard`
  ADD CONSTRAINT `fk_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_contenttype` FOREIGN KEY (`contenttype_id`) REFERENCES `contenttype` (`contenttype_id`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_bid` FOREIGN KEY (`bid_id`) REFERENCES `bid` (`bid_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_content` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_usertype` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`usertype_id`),
  ADD CONSTRAINT `fk_usertype_id` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`usertype_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`billboard_id`) REFERENCES `billboard` (`billboard_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
