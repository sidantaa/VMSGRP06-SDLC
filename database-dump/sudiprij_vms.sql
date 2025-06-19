-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2025 at 04:04 PM
-- Server version: 10.6.22-MariaDB
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sudiprij_vmsfleettest`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customer_id`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 34, 'sudbury', NULL, '2025-06-15 23:35:41', '2025-06-15 23:35:41'),
(2, 34, 'sadas', NULL, '2025-06-15 23:35:41', '2025-06-15 23:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `api_settings`
--

CREATE TABLE `api_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `key_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `api_settings`
--

INSERT INTO `api_settings` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'api', '1', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(2, 'anyone_register', '0', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(3, 'region_availability', 'region one, region two, region three', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(4, 'driver_review', '1', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(5, 'booking', '3', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(6, 'cancel', '2', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(7, 'max_trip', '1', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(8, 'api_key', 'AIzaSyDijjl7Q6g-ChnQ1pAPSFKIpwNRCGaMR1U', '2021-11-20 07:03:58', '2025-06-18 20:56:39', NULL),
(9, 'db_url', '', '2021-11-20 07:03:58', '2021-11-20 07:03:58', NULL),
(10, 'db_secret', '', '2021-11-20 07:03:58', '2021-11-20 07:03:58', NULL),
(11, 'server_key', '', '2021-11-20 07:03:58', '2021-11-20 07:03:58', NULL),
(12, 'google_api', '1', '2021-11-20 07:03:58', '2025-06-15 22:56:53', NULL),
(13, 'vendor_server_key', '', '2021-11-20 07:03:58', '2021-11-20 07:03:58', NULL),
(14, 'is_on_ven_app', '0', '2021-11-20 07:03:58', '2021-11-20 07:03:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `pickup` timestamp NULL DEFAULT NULL,
  `dropoff` timestamp NULL DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `pickup_addr` varchar(255) DEFAULT NULL,
  `dest_addr` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `travellers` int(11) NOT NULL DEFAULT 1,
  `cancellation` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `user_id`, `vehicle_id`, `driver_id`, `pickup`, `dropoff`, `duration`, `pickup_addr`, `dest_addr`, `note`, `travellers`, `cancellation`, `status`, `payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 1, 1, 6, '2021-11-09 23:29:07', '2021-11-10 10:26:56', 2880, '368 Matilda Landing Apt. 901\nProhaskatown, SD 24803', '887 Sabina Parkway\nNorth Robbie, GA 83557-9858', 'sample note', 2, 0, 1, 1, '2021-11-20 07:03:41', '2021-11-20 07:03:51', NULL),
(2, 5, 1, 1, 7, '2021-10-26 07:53:04', '2021-10-27 10:42:16', 2880, '28114 Bernhard Springs\nMcDermottberg, GA 86108', '66878 Dora Mountains\nKenyastad, NY 63820', 'sample note', 3, 0, 0, 0, '2021-11-20 07:03:41', '2021-11-20 07:03:41', NULL),
(3, 34, 1, 1, 8, '2025-06-17 06:00:00', '2025-06-18 06:01:00', 1441, 'sudbury', 'sadas', NULL, 1, 0, 1, 1, '2025-06-15 23:35:41', '2025-06-15 23:40:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_meta`
--

CREATE TABLE `bookings_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'null',
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `bookings_meta`
--

INSERT INTO `bookings_meta` (`id`, `booking_id`, `type`, `key`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'integer', 'tax_total', '500', NULL, '2021-11-20 07:03:51', '2021-11-20 07:03:51'),
(2, 1, 'integer', 'total_tax_percent', '0', NULL, '2021-11-20 07:03:51', '2021-11-20 07:03:51'),
(3, 1, 'integer', 'total_tax_charge_rs', '0', NULL, '2021-11-20 07:03:51', '2021-11-20 07:03:51'),
(4, 1, 'string', 'ride_status', 'Completed', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(5, 1, 'string', 'journey_date', '10-11-2021', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(6, 1, 'string', 'journey_time', '04:59:07', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(7, 1, 'integer', 'customerid', '4', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(8, 1, 'integer', 'vehicleid', '1', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(9, 1, 'integer', 'day', '1', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(10, 1, 'integer', 'mileage', '10', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(11, 1, 'integer', 'waiting_time', '0', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(12, 1, 'string', 'date', '2021-11-20', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(13, 1, 'integer', 'total', '500', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(14, 1, 'integer', 'receipt', '1', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(15, 2, 'string', 'ride_status', 'Upcoming', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(16, 2, 'string', 'journey_date', '26-10-2021', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(17, 2, 'string', 'journey_time', '13:23:04', NULL, '2021-11-20 07:03:52', '2021-11-20 07:03:52'),
(18, 3, 'string', 'journey_date', '17-06-2025', NULL, '2025-06-15 23:35:41', '2025-06-15 23:35:41'),
(19, 3, 'string', 'journey_time', '06:00:00', NULL, '2025-06-15 23:35:41', '2025-06-15 23:37:05'),
(20, 3, 'integer', 'booking_type', '1', NULL, '2025-06-15 23:35:41', '2025-06-15 23:35:41'),
(21, 3, 'integer', 'accept_status', '0', NULL, '2025-06-15 23:35:41', '2025-06-15 23:35:41'),
(22, 3, 'string', 'ride_status', 'Upcoming', NULL, '2025-06-15 23:35:41', '2025-06-15 23:40:30'),
(23, 3, 'string', 'vehicle_typeid', '3', NULL, '2025-06-15 23:35:41', '2025-06-15 23:35:41'),
(24, 3, 'string', 'total_time', '00:00:00', NULL, '2025-06-15 23:35:41', '2025-06-15 23:35:41'),
(25, 3, 'string', 'total_kms', '10', NULL, '2025-06-15 23:35:41', '2025-06-15 23:38:15'),
(26, 3, 'string', 'udf', 'N;', NULL, '2025-06-15 23:37:05', '2025-06-15 23:37:05'),
(27, 3, 'string', 'customerid', '34', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(28, 3, 'string', 'vehicleid', '1', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(29, 3, 'string', 'day', '2', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(30, 3, 'string', 'mileage', '10', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(31, 3, 'string', 'waiting_time', '0', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(32, 3, 'string', 'date', '2025-06-15', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(33, 3, 'double', 'total', '100', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(34, 3, 'double', 'tax_total', '100', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(35, 3, 'double', 'total_tax_percent', '0', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(36, 3, 'double', 'total_tax_charge_rs', '0', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(37, 3, 'string', 'driver_amount', '1000', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(38, 3, 'string', 'driver_commision', '1000', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(39, 3, 'string', 'driver_commision_type', 'amount', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(40, 3, 'integer', 'receipt', '1', NULL, '2025-06-15 23:38:15', '2025-06-15 23:38:15'),
(41, 3, 'string', 'completed_at', '2025-06-15 23:39:25', NULL, '2025-06-15 23:39:25', '2025-06-15 23:39:25'),
(42, 3, 'string', 'payment_method', 'cash', NULL, '2025-06-15 23:40:01', '2025-06-15 23:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `booking_alerts`
--

CREATE TABLE `booking_alerts` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_income`
--

CREATE TABLE `booking_income` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `income_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `booking_income`
--

INSERT INTO `booking_income` (`id`, `booking_id`, `income_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2021-11-20 07:03:51', '2021-11-20 07:03:51', NULL),
(2, 3, 4, '2025-06-15 23:38:15', '2025-06-15 23:38:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_payments`
--

CREATE TABLE `booking_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `booking_payments`
--

INSERT INTO `booking_payments` (`id`, `booking_id`, `method`, `transaction_id`, `amount`, `payment_status`, `payment_details`, `created_at`, `updated_at`) VALUES
(1, 3, 'cash', NULL, 100, 'succeeded', NULL, '2025-06-15 23:40:01', '2025-06-15 23:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `booking_quotation`
--

CREATE TABLE `booking_quotation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `pickup` timestamp NULL DEFAULT NULL,
  `dropoff` timestamp NULL DEFAULT NULL,
  `pickup_addr` varchar(255) DEFAULT NULL,
  `dest_addr` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `travellers` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment` int(11) NOT NULL DEFAULT 0,
  `day` int(11) DEFAULT NULL,
  `mileage` double DEFAULT NULL,
  `waiting_time` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tax_total` double(10,2) DEFAULT NULL,
  `total_tax_percent` double(10,2) DEFAULT NULL,
  `total_tax_charge_rs` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_settings`
--

CREATE TABLE `chat_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chat_settings`
--

INSERT INTO `chat_settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pusher_app_id', '', '2022-01-23 23:35:30', '2022-01-24 00:02:32', NULL),
(2, 'pusher_app_key', '', '2022-01-23 23:35:30', '2022-01-24 00:02:32', NULL),
(3, 'pusher_app_secret', '', '2022-01-23 23:35:30', '2022-01-24 00:02:32', NULL),
(4, 'pusher_app_cluster', '', '2022-01-23 23:35:30', '2022-01-24 00:02:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `other` longtext DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `slug`, `city`, `cost`, `image`, `other`, `order_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'bhopal', 'Bhopal', 1000, '6ef10993-7dac-4d13-a73e-a9a213771ceb.png', '<p style=\"text-align: justify;\"><b><u><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: 24px;\">Bhopal</span></span><span style=\"font-size: 24px;\"> </span></u></b>is a city in the central Indian state of <u><b>Madhya Pradesh.</b></u> It\'s one of India’s greenest cities. There are two main lakes, the Upper Lake and the Lower Lake. On the banks of the Upper Lake is Van Vihar National Park, home to tigers, lions and leopards. The State Museum has fossils, paintings and rare <span style=\"font-family: \" courier=\"\" new\";\"=\"\">Jain sculptures</span>. Taj-ul-Masjid is one of Asia’s largest mosques, <a href=\"http://mpcab.in\" target=\"_blank\">with white domes</a>, minarets and a huge courtyard.\r\n            </p>', 0, '2020-02-04 00:49:38', '2021-07-21 05:43:34', NULL),
(4, 'sagar', 'Sagar', 2000, '851b85ed-ce45-45c5-ad9d-314d490bd53d.jpeg', '<span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; text-align: justify;\">Sagar is a popular district as well as a renowned city. The administrative system in Sagar is well settled and maintained. Like other famous industrial and tourist special cities, in Sagar also MP Cabs has started its services. The cab service presents several services like an online taxi or cab service, local and outstation cabs service and for tourists, they have also have begun their travel agency. All the sectors are very popular in Sagar. The well-trained team is very much expert in the operational system, tracking records of rides along with their drivers. Though Sagar is a small city, many people live there. So, cab service is very popular in Sagar.</span>', 3, '2020-02-04 00:54:51', '2021-08-06 10:58:11', NULL),
(5, 'indore', 'Indore', 5000, 'c3ad2b86-75bc-4693-97d3-42b2a3a85167.jpg', 'Indore is a city in west-central India. It’s known for the 7-story Rajwada Palace and the Lal Baag Palace, which date back to Indore’s 19th-century Holkar dynasty. The Holkar rulers are honored by a cluster of tombs and cenotaphs at Chhatri Baag. The night market Sarafa Bazar sells street food. East is the Indo-Gothic Gandhi Hall and clock tower. The Jain temple Kanch Mandir has a mirrored mosaic interior.', 1, '2020-03-17 22:59:31', '2021-07-21 05:43:34', NULL),
(6, 'betul', 'Betul', 600, 'a5e34797-128e-42f8-a5f3-309e775856b1.jpg', 'Betul is a district and municipality in southern Madhya Pradesh, India. It is the administrative center of its eponymous district and forms the southernmost part of the Bhopal Division in the Betul. Bhimpur village, located 45 km west of Betul, is the site of proposed 2800 MW Nuclear Power plant.', 4, '2020-03-17 22:59:44', '2021-07-20 12:20:03', NULL),
(7, 'katni', 'Katni', 700, 'cc7030b9-9ad1-4609-a2f4-d0faedf86d9b.jpg', 'Katni is a town on the banks of the Katni River in Madhya Pradesh, India. It is the administrative headquarters of Katni District. It is in the Mahakoshal region of central India. The city is 90 km from the divisional headquarters of the region, Jabalpur.', 2, '2020-03-17 23:00:37', '2021-07-21 05:43:34', NULL),
(8, 'chhindwara', 'Chhindwara', 2000, '370eeb4a-1345-406d-b6f0-6df2c45cc497.jpg', 'Chhindwara is a city in India and a Municipal Corporation in Chhindwara district in the Indian state of Madhya Pradesh. The city is the administrative headquarters of Chhindwara District. Chhindwara is reachable by rail or road from adjacent cities Nagpur and Jabalpur.', 5, '2020-03-17 23:01:20', '2021-07-20 09:12:01', NULL),
(9, 'ujjain', 'Ujjain', NULL, '044f0c0a-ae63-46ea-83a7-a741e14689d4.jpg', 'An ancient city situated on the eastern bank of the Kshipra River, Ujjain was the most prominent city on the Malwa plateau of central India for much of its history. It emerged as the political centre of central India around 600 BCE. It was the capital of the ancient Avanti kingdom, one of the sixteen mahajanapadas. It remained an important political, commercial and cultural centre of central India until the early 19th century, when the British administrators decided to develop Indore as an alternative to it. Ujjain continues to be an important place of pilgrimage for Shaivites, Vaishnavites and followers of Shakta', 6, '2020-04-08 11:32:22', '2021-07-20 09:12:01', NULL),
(10, 'rewa', 'Rewa', NULL, NULL, NULL, 7, '2020-05-23 12:27:38', '2021-07-20 09:12:01', NULL),
(11, 'khajuraho', 'Khajuraho', NULL, 'cc872a77-842a-422e-a05f-e64dc90a87f4.jpg', NULL, 8, '2020-05-23 12:28:00', '2021-07-20 09:12:01', NULL),
(12, 'damoh', 'Damoh', NULL, NULL, NULL, 9, '2020-05-23 12:28:30', '2021-07-20 09:12:01', NULL),
(13, 'jabalpur', 'Jabalpur', NULL, NULL, NULL, 10, '2020-05-23 12:29:03', '2021-07-20 09:12:01', NULL),
(14, 'narsingpur', 'Narsingpur', NULL, NULL, NULL, 12, '2020-05-23 12:29:55', '2021-07-21 05:43:47', NULL),
(15, 'bhavnagar', 'Bhavnagar', NULL, '668fbcbb-aa17-4344-8b1c-a451396af7fc.png', NULL, 11, '2020-07-24 10:31:52', '2021-07-21 05:43:47', NULL),
(16, 'rajkot', 'Rajkot', NULL, NULL, '<ul><li><strong style=\"margin: 0px; padding: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 0);\"=\"\">Lorem Ipsum</strong><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"><span style=\"background-color: rgb(255, 255, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry</span>. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s<span style=\"color: rgb(255, 156, 0);\"> </span>with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></li></ul><h3><ul><li><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">123323232</span></li></ul></h3><ul><li><br></li></ul>', 13, '2021-06-14 12:44:20', '2021-07-20 09:12:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_services`
--

CREATE TABLE `company_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `company_services`
--

INSERT INTO `company_services` (`id`, `title`, `image`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Best price guranteed', 'fleet-bestprice.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45'),
(2, '24/7 Customer care', 'fleet-care.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45'),
(3, 'Home pickups', 'fleet-homepickup.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45'),
(4, 'Easy Bookings', 'fleet-easybooking.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Neque at, nobis repudiandae dolores.', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `driver_alert`
--

CREATE TABLE `driver_alert` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `driver_alert`
--

INSERT INTO `driver_alert` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aggressive behaviour', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(2, 'Violation of customer privacy', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(3, 'Rude or unprofessional behaviour', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(4, 'Ignoring customer request', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(5, 'Unsafe driving practices', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(6, 'rahman', '2025-06-15 22:43:39', '2025-06-15 22:43:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_logs`
--

CREATE TABLE `driver_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `driver_logs`
--

INSERT INTO `driver_logs` (`id`, `vehicle_id`, `driver_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2021-11-20 07:03:53', '2021-11-20 07:03:53', '2021-11-20 07:03:53'),
(2, 2, 8, '2021-11-22 23:02:01', '2021-11-22 23:02:01', '2021-11-22 23:02:01'),
(3, 3, 18, '2025-06-16 01:23:07', '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(4, 2, 16, '2025-06-16 01:44:26', '2025-06-16 01:44:26', '2025-06-16 01:44:26'),
(5, 2, 16, '2025-06-16 01:44:29', '2025-06-16 01:44:29', '2025-06-16 01:44:29'),
(6, 1, 22, '2025-06-16 01:44:42', '2025-06-16 01:44:42', '2025-06-16 01:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `driver_payments`
--

CREATE TABLE `driver_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_vehicle`
--

CREATE TABLE `driver_vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `driver_vehicle`
--

INSERT INTO `driver_vehicle` (`id`, `vehicle_id`, `driver_id`, `created_at`, `updated_at`) VALUES
(3, 3, 18, NULL, NULL),
(4, 2, 16, NULL, NULL),
(5, 1, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_content`
--

CREATE TABLE `email_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_content`
--

INSERT INTO `email_content` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'insurance', 'vehicle insurance email content', '2021-11-20 07:04:07', '2021-11-20 07:04:07', NULL),
(2, 'vehicle_licence', 'vehicle licence email content', '2021-11-20 07:04:07', '2021-11-20 07:04:07', NULL),
(3, 'driving_licence', 'driving licence email content', '2021-11-20 07:04:07', '2021-11-20 07:04:07', NULL),
(4, 'registration', 'vehicle registration email content', '2021-11-20 07:04:07', '2021-11-20 07:04:07', NULL),
(5, 'service_reminder', 'service reminder email content', '2021-11-20 07:04:07', '2021-11-20 07:04:07', NULL),
(6, 'users', 'a:2:{i:0;s:2:\"33\";i:1;s:1:\"1\";}', '2021-11-20 07:04:07', '2025-06-15 23:15:03', NULL),
(7, 'options', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}', '2021-11-20 07:04:07', '2025-06-15 23:15:03', NULL),
(8, 'email', '1', '2021-11-20 07:04:07', '2025-06-15 23:14:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `exp_id` int(11) DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'e',
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `driver_amount` double(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expense_type` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `vehicle_id`, `exp_id`, `type`, `amount`, `driver_amount`, `user_id`, `expense_type`, `comment`, `date`, `created_at`, `updated_at`, `deleted_at`, `vendor_id`) VALUES
(1, 1, NULL, 'e', 1763.00, 0.00, 2, 1, 'Sample Comment', '2021-11-19', '2021-11-20 07:03:50', '2021-11-20 07:03:50', NULL, NULL),
(2, 2, NULL, 'e', 1312.00, 0.00, 3, 4, 'Sample Comment', '2021-11-15', '2021-11-20 07:03:51', '2021-11-20 07:03:51', NULL, NULL),
(3, 1, 1, 'e', 500.00, 0.00, 2, 8, 'Sample Comment', '2021-11-18', '2021-11-20 07:03:53', '2021-11-20 07:03:53', NULL, NULL),
(4, 1, 2, 'e', 500.00, 0.00, 2, 8, 'Sample Comment', '2021-11-30', '2021-11-20 07:03:53', '2021-11-20 07:03:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_cat`
--

CREATE TABLE `expense_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `expense_cat`
--

INSERT INTO `expense_cat` (`id`, `name`, `user_id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Insurance', 1, 'd', '2021-11-20 07:03:54', '2021-11-20 07:03:54', NULL),
(2, 'Patente', 1, 'd', '2021-11-20 07:03:54', '2021-11-20 07:03:54', NULL),
(3, 'Mechanics', 1, 'd', '2021-11-20 07:03:55', '2021-11-20 07:03:55', NULL),
(4, 'Car wash', 1, 'd', '2021-11-20 07:03:55', '2021-11-20 07:03:55', NULL),
(5, 'Vignette', 1, 'd', '2021-11-20 07:03:55', '2021-11-20 07:03:55', NULL),
(6, 'Maintenance', 1, 'd', '2021-11-20 07:03:55', '2021-11-20 07:03:55', NULL),
(7, 'Parking', 1, 'd', '2021-11-20 07:03:55', '2021-11-20 07:03:55', NULL),
(8, 'Fuel', 1, 'd', '2021-11-20 07:03:55', '2021-11-20 07:03:55', NULL),
(9, 'Car Services', 1, 'd', '2021-11-20 07:03:55', '2021-11-20 07:03:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fare_settings`
--

CREATE TABLE `fare_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `key_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fare_settings`
--

INSERT INTO `fare_settings` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`, `type_id`) VALUES
(1, 'hatchback_base_fare', '500', '2021-11-20 07:03:59', '2021-11-20 07:03:59', NULL, 1),
(2, 'hatchback_base_km', '10', '2021-11-20 07:03:59', '2021-11-20 07:03:59', NULL, 1),
(3, 'hatchback_base_time', '2', '2021-11-20 07:03:59', '2021-11-20 07:03:59', NULL, 1),
(4, 'hatchback_std_fare', '20', '2021-11-20 07:03:59', '2021-11-20 07:03:59', NULL, 1),
(5, 'hatchback_weekend_base_fare', '500', '2021-11-20 07:03:59', '2021-11-20 07:03:59', NULL, 1),
(6, 'hatchback_weekend_base_km', '10', '2021-11-20 07:03:59', '2021-11-20 07:03:59', NULL, 1),
(7, 'hatchback_weekend_wait_time', '2', '2021-11-20 07:03:59', '2021-11-20 07:03:59', NULL, 1),
(8, 'hatchback_weekend_std_fare', '20', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 1),
(9, 'hatchback_night_base_fare', '500', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 1),
(10, 'hatchback_night_base_km', '10', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 1),
(11, 'hatchback_night_wait_time', '2', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 1),
(12, 'hatchback_night_std_fare', '20', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 1),
(13, 'sedan_base_fare', '500', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 2),
(14, 'sedan_base_km', '10', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 2),
(15, 'sedan_base_time', '2', '2021-11-20 07:04:00', '2021-11-20 07:04:00', NULL, 2),
(16, 'sedan_std_fare', '20', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(17, 'sedan_weekend_base_fare', '500', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(18, 'sedan_weekend_base_km', '10', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(19, 'sedan_weekend_wait_time', '2', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(20, 'sedan_weekend_std_fare', '20', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(21, 'sedan_night_base_fare', '500', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(22, 'sedan_night_base_km', '10', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(23, 'sedan_night_wait_time', '2', '2021-11-20 07:04:01', '2021-11-20 07:04:01', NULL, 2),
(24, 'sedan_night_std_fare', '20', '2021-11-20 07:04:02', '2021-11-20 07:04:02', NULL, 2),
(25, 'minivan_base_fare', '500', '2021-11-20 07:04:02', '2021-11-20 07:04:02', NULL, 3),
(26, 'minivan_base_km', '10', '2021-11-20 07:04:02', '2021-11-20 07:04:02', NULL, 3),
(27, 'minivan_base_time', '2', '2021-11-20 07:04:02', '2021-11-20 07:04:02', NULL, 3),
(28, 'minivan_std_fare', '20', '2021-11-20 07:04:02', '2021-11-20 07:04:02', NULL, 3),
(29, 'minivan_weekend_base_fare', '500', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(30, 'minivan_weekend_base_km', '10', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(31, 'minivan_weekend_wait_time', '2', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(32, 'minivan_weekend_std_fare', '20', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(33, 'minivan_night_base_fare', '500', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(34, 'minivan_night_base_km', '10', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(35, 'minivan_night_wait_time', '2', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(36, 'minivan_night_std_fare', '20', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 3),
(37, 'saloon_base_fare', '500', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 4),
(38, 'saloon_base_km', '10', '2021-11-20 07:04:03', '2021-11-20 07:04:03', NULL, 4),
(39, 'saloon_base_time', '2', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(40, 'saloon_std_fare', '20', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(41, 'saloon_weekend_base_fare', '500', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(42, 'saloon_weekend_base_km', '10', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(43, 'saloon_weekend_wait_time', '2', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(44, 'saloon_weekend_std_fare', '20', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(45, 'saloon_night_base_fare', '500', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(46, 'saloon_night_base_km', '10', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(47, 'saloon_night_wait_time', '2', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(48, 'saloon_night_std_fare', '20', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 4),
(49, 'suv_base_fare', '500', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 5),
(50, 'suv_base_km', '10', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 5),
(51, 'suv_base_time', '2', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 5),
(52, 'suv_std_fare', '20', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 5),
(53, 'suv_weekend_base_fare', '500', '2021-11-20 07:04:04', '2021-11-20 07:04:04', NULL, 5),
(54, 'suv_weekend_base_km', '10', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 5),
(55, 'suv_weekend_wait_time', '2', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 5),
(56, 'suv_weekend_std_fare', '20', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 5),
(57, 'suv_night_base_fare', '500', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 5),
(58, 'suv_night_base_km', '10', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 5),
(59, 'suv_night_wait_time', '2', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 5),
(60, 'suv_night_std_fare', '20', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 5),
(61, 'bus_base_fare', '500', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(62, 'bus_base_km', '10', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(63, 'bus_base_time', '2', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(64, 'bus_std_fare', '20', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(65, 'bus_weekend_base_fare', '500', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(66, 'bus_weekend_base_km', '10', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(67, 'bus_weekend_wait_time', '2', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(68, 'bus_weekend_std_fare', '20', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(69, 'bus_night_base_fare', '500', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(70, 'bus_night_base_km', '10', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(71, 'bus_night_wait_time', '2', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(72, 'bus_night_std_fare', '20', '2021-11-20 07:04:05', '2021-11-20 07:04:05', NULL, 6),
(73, 'truck_base_fare', '500', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(74, 'truck_base_km', '10', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(75, 'truck_base_time', '2', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(76, 'truck_std_fare', '20', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(77, 'truck_weekend_base_fare', '500', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(78, 'truck_weekend_base_km', '10', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(79, 'truck_weekend_wait_time', '2', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(80, 'truck_weekend_std_fare', '20', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(81, 'truck_night_base_fare', '500', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(82, 'truck_night_base_km', '10', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(83, 'truck_night_wait_time', '2', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7),
(84, 'truck_night_std_fare', '20', '2021-11-20 07:04:06', '2021-11-20 07:04:06', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `frontend`
--

CREATE TABLE `frontend` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `key_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `frontend`
--

INSERT INTO `frontend` (`id`, `key_name`, `key_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'about_us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(2, 'contact_email', 'srijal@srijal.ca', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(3, 'contact_phone', '0123456789', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(4, 'customer_support', '0999988888', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(5, 'about_description', 'OUR Fleet Manager is built to simplify the complexities of vehicle management.', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(6, 'about_title', 'Proudly serving you', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(7, 'facebook', NULL, '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(8, 'twitter', NULL, '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(9, 'instagram', NULL, '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(10, 'linkedin', NULL, '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(11, 'faq_link', NULL, '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(12, 'cities', '5', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(13, 'vehicles', '10', '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(14, 'cancellation', NULL, '2021-11-20 07:04:08', '2025-06-15 23:20:33', NULL),
(15, 'terms', NULL, '2021-11-20 07:04:09', '2025-06-15 23:20:33', NULL),
(16, 'privacy_policy', NULL, '2021-11-20 07:04:09', '2025-06-15 23:20:33', NULL),
(17, 'enable', '1', '2021-11-20 07:04:09', '2025-06-15 23:20:33', NULL),
(18, 'language', 'English-en', '2021-11-20 07:04:09', '2025-06-15 23:20:33', NULL),
(19, 'admin_approval', '1', '2021-11-20 07:04:09', '2025-06-15 23:20:33', NULL),
(20, 'booking_time', '1', '2022-01-05 16:00:09', '2025-06-15 23:20:33', NULL),
(21, 'footer_link', '[{\"title\":\"Home\",\"url\":\"https:\\/\\/vmsfg5.srijal.ca\"},{\"title\":\"About\",\"url\":\"https:\\/\\/vmsfg5.srijal.ca\\/about\"},{\"title\":\"Contact\",\"url\":\"https:\\/\\/vmsfg5.srijal.ca\\/contact\"}]', '2022-01-05 16:00:09', '2025-06-15 23:20:33', NULL),
(22, 'sign_up_title', 'Mobile App & Web Based Solution', '2022-01-05 16:00:09', '2025-06-15 23:20:33', NULL),
(23, 'sign_up_content', '[{\"file_path\":\"dark_mode.svg\",\"title\":\"Stunning Dark Theme\",\"subtitle\":\"Give a Stunning Dark & Bold Version to your Fleet Manager Admin.\"},{\"file_path\":\"search.svg\",\"title\":\"Sidebar Search\",\"subtitle\":\"Search any Module \\/ Section with Just a Few Key Presses.\"},{\"file_path\":\"upgrade.svg\",\"title\":\"Upgraded Front-end Website\",\"subtitle\":\"A Revamped Front-end UI Design to give you a Fresh Experience.\"},{\"file_path\":\"menu.svg\",\"title\":\"The Awesome Font Awesome Icons\",\"subtitle\":\"Because Good Icons Represent Features Better.\"}]', '2022-01-05 16:00:09', '2025-06-15 23:20:33', NULL),
(24, 'sign_up_sub_title', 'A better way to Manage Fleets & Vehicle Bookings', '2022-01-05 16:00:09', '2025-06-15 23:20:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_meter` varchar(255) DEFAULT NULL,
  `end_meter` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `qty` double(10,2) DEFAULT NULL,
  `fuel_from` varchar(255) DEFAULT NULL,
  `cost_per_unit` varchar(255) DEFAULT NULL,
  `consumption` int(11) DEFAULT NULL,
  `complete` int(11) DEFAULT 0,
  `date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`id`, `vehicle_id`, `user_id`, `start_meter`, `end_meter`, `reference`, `province`, `note`, `vendor_name`, `qty`, `fuel_from`, `cost_per_unit`, `consumption`, `complete`, `date`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, '1000', '2000', NULL, 'Gujarat', 'sample note', NULL, 10.00, 'Fuel Tank', '50', 100, 0, '2021-11-18', NULL, '2021-11-20 07:03:53', '2021-11-20 07:03:53', NULL),
(2, 1, 2, '2000', '0', NULL, 'Gujarat', 'sample note', NULL, 10.00, 'Fuel Tank', '50', 0, 0, '2021-11-30', NULL, '2021-11-20 07:03:53', '2021-11-20 07:03:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `income_id` int(11) DEFAULT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `driver_amount` double(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `income_cat` int(11) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tax_percent` double(10,2) DEFAULT NULL,
  `tax_charge_rs` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `vehicle_id`, `income_id`, `amount`, `driver_amount`, `user_id`, `income_cat`, `mileage`, `date`, `created_at`, `updated_at`, `deleted_at`, `tax_percent`, `tax_charge_rs`) VALUES
(1, 1, NULL, 4018.00, 0.00, 2, 1, NULL, '2021-11-15', '2021-11-20 07:03:50', '2021-11-20 07:03:50', NULL, 0.00, 0.00),
(2, 2, NULL, 3801.00, 0.00, 3, 1, NULL, '2021-11-19', '2021-11-20 07:03:51', '2021-11-20 07:03:51', NULL, 0.00, 0.00),
(3, 1, 1, 500.00, 0.00, 1, 1, 10, '2021-11-20', '2021-11-20 07:03:51', '2021-11-20 07:03:51', NULL, 0.00, 0.00),
(4, 1, 3, 100.00, 1000.00, 34, 1, 10, '2025-06-15', '2025-06-15 23:38:15', '2025-06-15 23:38:15', NULL, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `income_cat`
--

CREATE TABLE `income_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `income_cat`
--

INSERT INTO `income_cat` (`id`, `name`, `user_id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Booking', 1, 'd', '2021-11-20 07:03:54', '2021-11-20 07:03:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`id`, `user_id`, `name`, `email`, `contact_number`, `category`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tracy Lakin', 'connelly.mckenna@example.com', '1-350-561-3982 x177', 'Electrical Engineering', NULL, '2021-11-20 07:04:11', '2021-11-20 07:04:11'),
(2, 1, 'Theresa Toy', 'chris.haley@example.net', '734-670-6060', 'Electrical Engineering', NULL, '2021-11-20 07:04:12', '2021-11-20 07:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) UNSIGNED NOT NULL,
  `fcm_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_user` int(10) UNSIGNED DEFAULT NULL,
  `to_user` int(10) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2017_06_03_134331_create_expense_table', 1),
(7, '2017_06_03_134332_create_expense_cat_table', 1),
(8, '2017_06_03_134332_create_income_table', 1),
(9, '2017_06_03_134333_create_income_cat_table', 1),
(10, '2017_06_03_134336_create_password_resets_table', 1),
(11, '2017_06_03_134337_create_users_table', 1),
(12, '2017_06_03_134338_create_vehicles_table', 1),
(13, '2017_07_24_080537_create_booking_table', 1),
(14, '2017_07_24_080643_create_settings_table', 1),
(15, '2017_08_01_073926_create_booking_income_table', 1),
(16, '2017_10_30_064357_create_notifications_table', 1),
(17, '2017_10_30_094858_create_fuel_table', 1),
(18, '2017_11_09_105729_create_vendors_table', 1),
(19, '2017_11_10_062609_create_work_orders_table', 1),
(20, '2017_11_10_095438_create_notes_table', 1),
(21, '2017_11_22_093559_create_vehicle_group_table', 1),
(22, '2017_12_28_091600_create_service_items_table', 1),
(23, '2017_12_28_122952_create_service_reminder_table', 1),
(24, '2017_12_28_174333_create_api_settings_table', 1),
(25, '2018_01_08_062105_create_driver_vehicle_table', 1),
(26, '2018_01_10_130517_users_meta', 1),
(27, '2018_01_13_050018_bookings_meta', 1),
(28, '2018_01_16_095657_fare_settings', 1),
(29, '2018_01_25_050939_create_vehicles_meta_table', 1),
(30, '2018_02_06_052302_create_message_table', 1),
(31, '2018_02_06_125252_create_reviews_table', 1),
(32, '2018_03_13_124424_create_addresses_table', 1),
(33, '2018_03_28_085735_create_reasons_table', 1),
(34, '2018_04_28_073004_create_email_content_table', 1),
(35, '2018_08_14_061757_create_vehicle_review_table', 1),
(36, '2019_01_18_063916_add_vendor_id_to_expense', 1),
(37, '2019_01_19_080738_add_udf_to_vendors', 1),
(38, '2019_01_19_103826_create_parts_table', 1),
(39, '2019_01_19_110823_create_vehicle_types_table', 1),
(40, '2019_01_22_101948_create_driver_logs_table', 1),
(41, '2019_01_23_113852_add_type_id_to_vehicles_table', 1),
(42, '2019_01_24_095115_add_type_id_to_fare_settings_table', 1),
(43, '2019_04_12_092111_create_parts_category_table', 1),
(44, '2019_04_19_053314_create_work_order_logs_table', 1),
(45, '2019_05_13_062039_create_push_notification_table', 1),
(46, '2019_07_18_110031_add_column_to_vendors', 1),
(47, '2019_07_31_082514_create_testimonials_table', 1),
(48, '2019_07_31_102801_create_frontend_table', 1),
(49, '2019_08_01_045837_add_columns_to_message_table', 1),
(50, '2019_08_19_101509_create_booking_quotation_table', 1),
(51, '2019_08_22_052138_create_parts_used_table', 1),
(52, '2019_08_22_113138_add_parts_price_to_work_order_logs_table', 1),
(53, '2019_08_29_104613_create_company_services_table', 1),
(54, '2019_09_16_085700_create_teams_table', 1),
(55, '2019_12_10_083547_add_columns_to_booking_quotation_table', 1),
(56, '2019_12_16_064152_add_indexes_to_users_table', 1),
(57, '2019_12_16_064951_add_indexes_to_addresses_table', 1),
(58, '2019_12_16_065511_add_indexes_to_bookings_table', 1),
(59, '2019_12_16_083315_add_indexes_to_booking_income_table', 1),
(60, '2019_12_16_084539_add_indexes_to_booking_quotation_table', 1),
(61, '2019_12_16_085312_add_indexes_to_driver_logs_table', 1),
(62, '2019_12_16_085505_add_indexes_to_driver_vehicle_table', 1),
(63, '2019_12_16_091010_add_indexes_to_email_content_table', 1),
(64, '2019_12_16_091713_add_indexes_to_expense_table', 1),
(65, '2019_12_16_094305_add_indexes_to_expense_cat_table', 1),
(66, '2019_12_16_094651_add_indexes_to_fare_settings_table', 1),
(67, '2019_12_16_095024_add_indexes_to_frontend_table', 1),
(68, '2019_12_16_095339_add_indexes_to_fuel_table', 1),
(69, '2019_12_16_095634_add_indexes_to_income_table', 1),
(70, '2019_12_16_095953_add_indexes_to_income_cat_table', 1),
(71, '2019_12_16_100221_add_indexes_to_notes_table', 1),
(72, '2019_12_16_100437_add_indexes_to_notifications_table', 1),
(73, '2019_12_16_100545_add_indexes_to_parts_table', 1),
(74, '2019_12_16_101113_add_indexes_to_parts_used_table', 1),
(75, '2019_12_16_101540_add_indexes_to_push_notification_table', 1),
(76, '2019_12_16_101851_add_indexes_to_reviews_table', 1),
(77, '2019_12_16_102259_add_indexes_to_service_reminder_table', 1),
(78, '2019_12_16_102555_add_indexes_to_vehicles_table', 1),
(79, '2019_12_16_104209_add_indexes_to_vehicle_review_table', 1),
(80, '2019_12_16_104440_add_indexes_to_vendors_table', 1),
(81, '2019_12_16_104704_add_indexes_to_work_orders_table', 1),
(82, '2019_12_16_105013_add_indexes_to_work_order_logs_table', 1),
(83, '2019_12_16_115309_add_indexes_to_api_settings_table', 1),
(84, '2019_12_17_080649_add_taxes_to_income_table', 1),
(85, '2019_12_19_052248_create_payment_settings_table', 1),
(86, '2019_12_19_063520_create_booking_payments_table', 1),
(87, '2021_01_04_113449_create_twilio_settings_table', 1),
(88, '2021_06_29_052236_add_udf_field_to_vehicle_review_table', 1),
(89, '2021_06_29_115538_create_mechanics_table', 1),
(90, '2021_07_02_051340_create_permission_tables', 1),
(91, '2021_07_02_052117_add_mechanic_work_order_table', 1),
(92, '2021_07_02_055514_add_mechanic_work_order_log_table', 1),
(93, '2021_07_22_071412_create_push_subscriptions_table', 1),
(94, '2021_07_22_113433_add_provider_to_oauth_clients_table', 1),
(95, '2021_08_27_121756_add_user_id_to_mechanics_table', 1),
(96, '2021_08_27_121856_add_user_id_to_parts_category_table', 1),
(97, '2021_08_27_121941_add_user_id_to_service_items_table', 1),
(98, '2021_08_27_122008_add_user_id_to_service_reminder_table', 1),
(99, '2021_08_27_122045_add_user_id_to_vehicle_group_table', 1),
(100, '2021_08_27_122127_add_user_id_to_vendors_table', 1),
(101, '2021_08_27_122155_add_user_id_to_work_orders_table', 1),
(102, '2021_08_27_122217_add_user_id_to_work_order_logs_table', 1),
(103, '2021_08_27_122259_add_user_id_to_notes_table', 1),
(104, '2021_09_07_070458_add_user_id_to_users_table', 1),
(105, '2021_08_07_063711_create_messages_table', 1),
(106, '2022_01_17_065748_create_chat_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(9, 'App\\Model\\User', 6),
(9, 'App\\Model\\User', 7),
(9, 'App\\Model\\User', 8),
(9, 'App\\Model\\User', 12),
(9, 'App\\Model\\User', 13),
(9, 'App\\Model\\User', 14),
(9, 'App\\Model\\User', 15),
(9, 'App\\Model\\User', 16),
(9, 'App\\Model\\User', 17),
(9, 'App\\Model\\User', 18),
(9, 'App\\Model\\User', 19),
(9, 'App\\Model\\User', 20),
(9, 'App\\Model\\User', 21),
(9, 'App\\Model\\User', 22),
(9, 'App\\Model\\User', 23),
(9, 'App\\Model\\User', 24),
(9, 'App\\Model\\User', 25),
(9, 'App\\Model\\User', 26),
(9, 'App\\Model\\User', 27),
(9, 'App\\Model\\User', 28),
(9, 'App\\Model\\User', 29),
(9, 'App\\Model\\User', 30),
(9, 'App\\Model\\User', 31),
(9, 'App\\Model\\User', 32),
(41, 'App\\Model\\User', 6),
(41, 'App\\Model\\User', 7),
(41, 'App\\Model\\User', 8),
(41, 'App\\Model\\User', 12),
(41, 'App\\Model\\User', 13),
(41, 'App\\Model\\User', 14),
(41, 'App\\Model\\User', 15),
(41, 'App\\Model\\User', 16),
(41, 'App\\Model\\User', 17),
(41, 'App\\Model\\User', 18),
(41, 'App\\Model\\User', 19),
(41, 'App\\Model\\User', 20),
(41, 'App\\Model\\User', 21),
(41, 'App\\Model\\User', 22),
(41, 'App\\Model\\User', 23),
(41, 'App\\Model\\User', 24),
(41, 'App\\Model\\User', 25),
(41, 'App\\Model\\User', 26),
(41, 'App\\Model\\User', 27),
(41, 'App\\Model\\User', 28),
(41, 'App\\Model\\User', 29),
(41, 'App\\Model\\User', 30),
(41, 'App\\Model\\User', 31),
(41, 'App\\Model\\User', 32),
(42, 'App\\Model\\User', 12),
(42, 'App\\Model\\User', 13),
(42, 'App\\Model\\User', 14),
(42, 'App\\Model\\User', 15),
(42, 'App\\Model\\User', 16),
(42, 'App\\Model\\User', 17),
(42, 'App\\Model\\User', 18),
(42, 'App\\Model\\User', 19),
(42, 'App\\Model\\User', 20),
(42, 'App\\Model\\User', 21),
(42, 'App\\Model\\User', 22),
(42, 'App\\Model\\User', 23),
(42, 'App\\Model\\User', 24),
(42, 'App\\Model\\User', 25),
(42, 'App\\Model\\User', 26),
(42, 'App\\Model\\User', 27),
(42, 'App\\Model\\User', 28),
(42, 'App\\Model\\User', 29),
(42, 'App\\Model\\User', 30),
(42, 'App\\Model\\User', 31),
(42, 'App\\Model\\User', 32),
(43, 'App\\Model\\User', 12),
(43, 'App\\Model\\User', 13),
(43, 'App\\Model\\User', 14),
(43, 'App\\Model\\User', 15),
(43, 'App\\Model\\User', 16),
(43, 'App\\Model\\User', 17),
(43, 'App\\Model\\User', 18),
(43, 'App\\Model\\User', 19),
(43, 'App\\Model\\User', 20),
(43, 'App\\Model\\User', 21),
(43, 'App\\Model\\User', 22),
(43, 'App\\Model\\User', 23),
(43, 'App\\Model\\User', 24),
(43, 'App\\Model\\User', 25),
(43, 'App\\Model\\User', 26),
(43, 'App\\Model\\User', 27),
(43, 'App\\Model\\User', 28),
(43, 'App\\Model\\User', 29),
(43, 'App\\Model\\User', 30),
(43, 'App\\Model\\User', 31),
(43, 'App\\Model\\User', 32),
(44, 'App\\Model\\User', 12),
(44, 'App\\Model\\User', 13),
(44, 'App\\Model\\User', 14),
(44, 'App\\Model\\User', 15),
(44, 'App\\Model\\User', 16),
(44, 'App\\Model\\User', 17),
(44, 'App\\Model\\User', 18),
(44, 'App\\Model\\User', 19),
(44, 'App\\Model\\User', 20),
(44, 'App\\Model\\User', 21),
(44, 'App\\Model\\User', 22),
(44, 'App\\Model\\User', 23),
(44, 'App\\Model\\User', 24),
(44, 'App\\Model\\User', 25),
(44, 'App\\Model\\User', 26),
(44, 'App\\Model\\User', 27),
(44, 'App\\Model\\User', 28),
(44, 'App\\Model\\User', 29),
(44, 'App\\Model\\User', 30),
(44, 'App\\Model\\User', 31),
(44, 'App\\Model\\User', 32),
(66, 'App\\Model\\User', 6),
(66, 'App\\Model\\User', 7),
(66, 'App\\Model\\User', 8),
(67, 'App\\Model\\User', 6),
(67, 'App\\Model\\User', 7),
(67, 'App\\Model\\User', 8),
(68, 'App\\Model\\User', 6),
(68, 'App\\Model\\User', 7),
(68, 'App\\Model\\User', 8),
(69, 'App\\Model\\User', 6),
(69, 'App\\Model\\User', 7),
(69, 'App\\Model\\User', 8),
(71, 'App\\Model\\User', 4),
(71, 'App\\Model\\User', 5),
(71, 'App\\Model\\User', 35),
(71, 'App\\Model\\User', 36),
(71, 'App\\Model\\User', 37),
(71, 'App\\Model\\User', 38),
(71, 'App\\Model\\User', 39),
(71, 'App\\Model\\User', 40),
(71, 'App\\Model\\User', 41),
(71, 'App\\Model\\User', 42),
(72, 'App\\Model\\User', 4),
(72, 'App\\Model\\User', 5),
(72, 'App\\Model\\User', 35),
(72, 'App\\Model\\User', 36),
(72, 'App\\Model\\User', 37),
(72, 'App\\Model\\User', 38),
(72, 'App\\Model\\User', 39),
(72, 'App\\Model\\User', 40),
(72, 'App\\Model\\User', 41),
(72, 'App\\Model\\User', 42),
(73, 'App\\Model\\User', 4),
(73, 'App\\Model\\User', 5),
(73, 'App\\Model\\User', 35),
(73, 'App\\Model\\User', 36),
(73, 'App\\Model\\User', 37),
(73, 'App\\Model\\User', 38),
(73, 'App\\Model\\User', 39),
(73, 'App\\Model\\User', 40),
(73, 'App\\Model\\User', 41),
(73, 'App\\Model\\User', 42),
(74, 'App\\Model\\User', 4),
(74, 'App\\Model\\User', 5),
(74, 'App\\Model\\User', 35),
(74, 'App\\Model\\User', 36),
(74, 'App\\Model\\User', 37),
(74, 'App\\Model\\User', 38),
(74, 'App\\Model\\User', 39),
(74, 'App\\Model\\User', 40),
(74, 'App\\Model\\User', 41),
(74, 'App\\Model\\User', 42),
(81, 'App\\Model\\User', 6),
(81, 'App\\Model\\User', 7),
(81, 'App\\Model\\User', 8),
(82, 'App\\Model\\User', 6),
(82, 'App\\Model\\User', 7),
(82, 'App\\Model\\User', 8),
(83, 'App\\Model\\User', 6),
(83, 'App\\Model\\User', 7),
(83, 'App\\Model\\User', 8),
(84, 'App\\Model\\User', 6),
(84, 'App\\Model\\User', 7),
(84, 'App\\Model\\User', 8),
(101, 'App\\Model\\User', 6),
(101, 'App\\Model\\User', 7),
(101, 'App\\Model\\User', 8),
(101, 'App\\Model\\User', 12),
(101, 'App\\Model\\User', 13),
(101, 'App\\Model\\User', 14),
(101, 'App\\Model\\User', 15),
(101, 'App\\Model\\User', 16),
(101, 'App\\Model\\User', 17),
(101, 'App\\Model\\User', 18),
(101, 'App\\Model\\User', 19),
(101, 'App\\Model\\User', 20),
(101, 'App\\Model\\User', 21),
(101, 'App\\Model\\User', 22),
(101, 'App\\Model\\User', 23),
(101, 'App\\Model\\User', 24),
(101, 'App\\Model\\User', 25),
(101, 'App\\Model\\User', 26),
(101, 'App\\Model\\User', 27),
(101, 'App\\Model\\User', 28),
(101, 'App\\Model\\User', 29),
(101, 'App\\Model\\User', 30),
(101, 'App\\Model\\User', 31),
(101, 'App\\Model\\User', 32),
(102, 'App\\Model\\User', 6),
(102, 'App\\Model\\User', 7),
(102, 'App\\Model\\User', 8),
(102, 'App\\Model\\User', 12),
(102, 'App\\Model\\User', 13),
(102, 'App\\Model\\User', 14),
(102, 'App\\Model\\User', 15),
(102, 'App\\Model\\User', 16),
(102, 'App\\Model\\User', 17),
(102, 'App\\Model\\User', 18),
(102, 'App\\Model\\User', 19),
(102, 'App\\Model\\User', 20),
(102, 'App\\Model\\User', 21),
(102, 'App\\Model\\User', 22),
(102, 'App\\Model\\User', 23),
(102, 'App\\Model\\User', 24),
(102, 'App\\Model\\User', 25),
(102, 'App\\Model\\User', 26),
(102, 'App\\Model\\User', 27),
(102, 'App\\Model\\User', 28),
(102, 'App\\Model\\User', 29),
(102, 'App\\Model\\User', 30),
(102, 'App\\Model\\User', 31),
(102, 'App\\Model\\User', 32),
(103, 'App\\Model\\User', 6),
(103, 'App\\Model\\User', 7),
(103, 'App\\Model\\User', 8),
(103, 'App\\Model\\User', 12),
(103, 'App\\Model\\User', 13),
(103, 'App\\Model\\User', 14),
(103, 'App\\Model\\User', 15),
(103, 'App\\Model\\User', 16),
(103, 'App\\Model\\User', 17),
(103, 'App\\Model\\User', 18),
(103, 'App\\Model\\User', 19),
(103, 'App\\Model\\User', 20),
(103, 'App\\Model\\User', 21),
(103, 'App\\Model\\User', 22),
(103, 'App\\Model\\User', 23),
(103, 'App\\Model\\User', 24),
(103, 'App\\Model\\User', 25),
(103, 'App\\Model\\User', 26),
(103, 'App\\Model\\User', 27),
(103, 'App\\Model\\User', 28),
(103, 'App\\Model\\User', 29),
(103, 'App\\Model\\User', 30),
(103, 'App\\Model\\User', 31),
(103, 'App\\Model\\User', 32),
(104, 'App\\Model\\User', 6),
(104, 'App\\Model\\User', 7),
(104, 'App\\Model\\User', 8),
(104, 'App\\Model\\User', 12),
(104, 'App\\Model\\User', 13),
(104, 'App\\Model\\User', 14),
(104, 'App\\Model\\User', 15),
(104, 'App\\Model\\User', 16),
(104, 'App\\Model\\User', 17),
(104, 'App\\Model\\User', 18),
(104, 'App\\Model\\User', 19),
(104, 'App\\Model\\User', 20),
(104, 'App\\Model\\User', 21),
(104, 'App\\Model\\User', 22),
(104, 'App\\Model\\User', 23),
(104, 'App\\Model\\User', 24),
(104, 'App\\Model\\User', 25),
(104, 'App\\Model\\User', 26),
(104, 'App\\Model\\User', 27),
(104, 'App\\Model\\User', 28),
(104, 'App\\Model\\User', 29),
(104, 'App\\Model\\User', 30),
(104, 'App\\Model\\User', 31),
(104, 'App\\Model\\User', 32);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Model\\User', 1),
(2, 'App\\Model\\User', 2),
(2, 'App\\Model\\User', 3),
(2, 'App\\Model\\User', 33);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `submitted_on` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Fleet Manager Personal Access Client', 'RSgOa49VlbquB3GxT1WAO2jReLCnHoWndPfyrJ4p', NULL, 'http://localhost', 1, 0, 0, '2021-11-20 07:03:53', '2021-11-20 07:03:53'),
(2, NULL, 'Fleet Manager Password Grant Client', 'sX7qzt55VQ5pGjl4gkxyycwKz9yE6ngT4EoPEtRH', 'users', 'http://localhost', 0, 1, 0, '2021-11-20 07:03:53', '2021-11-20 07:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-20 07:03:53', '2021-11-20 07:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `availability` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_cost` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `udf` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parts_category`
--

CREATE TABLE `parts_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `parts_category`
--

INSERT INTO `parts_category` (`id`, `user_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Engine Parts', '2021-11-20 07:03:50', '2021-11-20 07:03:50', NULL),
(2, 1, 'Electricals', '2021-11-20 07:03:50', '2021-11-20 07:03:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parts_used`
--

CREATE TABLE `parts_used` (
  `id` int(10) UNSIGNED NOT NULL,
  `part_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'method', '[\"cash\"]', '2021-11-20 07:04:09', '2025-06-15 23:14:18', NULL),
(2, 'currency_code', 'CAD', '2021-11-20 07:04:10', '2025-06-15 23:14:18', NULL),
(3, 'stripe_publishable_key', NULL, '2021-11-20 07:04:10', '2025-06-15 23:14:18', NULL),
(4, 'stripe_secret_key', NULL, '2021-11-20 07:04:10', '2025-06-15 23:14:18', NULL),
(5, 'razorpay_key', NULL, '2021-11-20 07:04:10', '2025-06-15 23:14:18', NULL),
(6, 'razorpay_secret', NULL, '2021-11-20 07:04:10', '2025-06-15 23:14:18', NULL),
(7, 'paystack_secret', NULL, '2021-11-20 07:04:10', '2025-06-15 23:14:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Users add', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(2, 'Users edit', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(3, 'Users delete', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(4, 'Users list', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(5, 'Users import', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(6, 'Drivers add', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(7, 'Drivers edit', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(8, 'Drivers delete', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(9, 'Drivers list', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(10, 'Drivers import', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(11, 'Customer add', 'web', '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(12, 'Customer edit', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(13, 'Customer delete', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(14, 'Customer list', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(15, 'Customer import', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(16, 'VehicleType add', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(17, 'VehicleType edit', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(18, 'VehicleType delete', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(19, 'VehicleType list', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(20, 'VehicleType import', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(21, 'VehicleMaker add', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(22, 'VehicleMaker edit', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(23, 'VehicleMaker delete', 'web', '2021-11-20 07:04:16', '2021-11-20 07:04:16'),
(24, 'VehicleMaker list', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(25, 'VehicleMaker import', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(26, 'VehicleModels add', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(27, 'VehicleModels edit', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(28, 'VehicleModels delete', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(29, 'VehicleModels list', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(30, 'VehicleModels import', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(31, 'VehicleColors add', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(32, 'VehicleColors edit', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(33, 'VehicleColors delete', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(34, 'VehicleColors list', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(35, 'VehicleColors import', 'web', '2021-11-20 07:04:17', '2021-11-20 07:04:17'),
(36, 'VehicleGroup add', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(37, 'VehicleGroup edit', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(38, 'VehicleGroup delete', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(39, 'VehicleGroup list', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(40, 'VehicleGroup import', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(41, 'VehicleInspection add', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(42, 'VehicleInspection edit', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(43, 'VehicleInspection delete', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(44, 'VehicleInspection list', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(45, 'VehicleInspection import', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(46, 'BookingQuotations add', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(47, 'BookingQuotations edit', 'web', '2021-11-20 07:04:18', '2021-11-20 07:04:18'),
(48, 'BookingQuotations delete', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(49, 'BookingQuotations list', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(50, 'BookingQuotations import', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(51, 'PartsCategory add', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(52, 'PartsCategory edit', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(53, 'PartsCategory delete', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(54, 'PartsCategory list', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(55, 'PartsCategory import', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(56, 'Mechanics add', 'web', '2021-11-20 07:04:19', '2021-11-20 07:04:19'),
(57, 'Mechanics edit', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(58, 'Mechanics delete', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(59, 'Mechanics list', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(60, 'Mechanics import', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(61, 'Vehicles add', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(62, 'Vehicles edit', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(63, 'Vehicles delete', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(64, 'Vehicles list', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(65, 'Vehicles import', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(66, 'Transactions add', 'web', '2021-11-20 07:04:20', '2021-11-20 07:04:20'),
(67, 'Transactions edit', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(68, 'Transactions delete', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(69, 'Transactions list', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(70, 'Transactions import', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(71, 'Bookings add', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(72, 'Bookings edit', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(73, 'Bookings delete', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(74, 'Bookings list', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(75, 'Bookings import', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(76, 'Reports add', 'web', '2021-11-20 07:04:21', '2021-11-20 07:04:21'),
(77, 'Reports edit', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(78, 'Reports delete', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(79, 'Reports list', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(80, 'Reports import', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(81, 'Fuel add', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(82, 'Fuel edit', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(83, 'Fuel delete', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(84, 'Fuel list', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(85, 'Fuel import', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(86, 'Vendors add', 'web', '2021-11-20 07:04:22', '2021-11-20 07:04:22'),
(87, 'Vendors edit', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(88, 'Vendors delete', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(89, 'Vendors list', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(90, 'Vendors import', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(91, 'Parts add', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(92, 'Parts edit', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(93, 'Parts delete', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(94, 'Parts list', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(95, 'Parts import', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(96, 'WorkOrders add', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(97, 'WorkOrders edit', 'web', '2021-11-20 07:04:23', '2021-11-20 07:04:23'),
(98, 'WorkOrders delete', 'web', '2021-11-20 07:04:24', '2021-11-20 07:04:24'),
(99, 'WorkOrders list', 'web', '2021-11-20 07:04:24', '2021-11-20 07:04:24'),
(100, 'WorkOrders import', 'web', '2021-11-20 07:04:24', '2021-11-20 07:04:24'),
(101, 'Notes add', 'web', '2021-11-20 07:04:24', '2021-11-20 07:04:24'),
(102, 'Notes edit', 'web', '2021-11-20 07:04:24', '2021-11-20 07:04:24'),
(103, 'Notes delete', 'web', '2021-11-20 07:04:24', '2021-11-20 07:04:24'),
(104, 'Notes list', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(105, 'Notes import', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(106, 'ServiceReminders add', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(107, 'ServiceReminders edit', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(108, 'ServiceReminders delete', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(109, 'ServiceReminders list', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(110, 'ServiceReminders import', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(111, 'ServiceItems add', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(112, 'ServiceItems edit', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(113, 'ServiceItems delete', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(114, 'ServiceItems list', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(115, 'ServiceItems import', 'web', '2021-11-20 07:04:25', '2021-11-20 07:04:25'),
(116, 'Testimonials add', 'web', '2021-11-20 07:04:26', '2021-11-20 07:04:26'),
(117, 'Testimonials edit', 'web', '2021-11-20 07:04:26', '2021-11-20 07:04:26'),
(118, 'Testimonials delete', 'web', '2021-11-20 07:04:26', '2021-11-20 07:04:26'),
(119, 'Testimonials list', 'web', '2021-11-20 07:04:26', '2021-11-20 07:04:26'),
(120, 'Testimonials import', 'web', '2021-11-20 07:04:26', '2021-11-20 07:04:26'),
(121, 'Team add', 'web', '2021-11-20 07:04:26', '2021-11-20 07:04:26'),
(122, 'Team edit', 'web', '2021-11-20 07:04:26', '2021-11-20 07:04:26'),
(123, 'Team delete', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(124, 'Team list', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(125, 'Team import', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(126, 'Settings add', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(127, 'Settings edit', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(128, 'Settings delete', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(129, 'Settings list', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(130, 'Settings import', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(131, 'Inquiries add', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(132, 'Inquiries edit', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(133, 'Inquiries delete', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(134, 'Inquiries list', 'web', '2021-11-20 07:04:27', '2021-11-20 07:04:27'),
(135, 'Inquiries import', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(136, 'Inquiries import', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(137, 'VehicleBreakdown add', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(138, 'VehicleBreakdown edit', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(139, 'VehicleBreakdown delete', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(140, 'VehicleBreakdown list', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(141, 'DriverAlert add', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(142, 'DriverAlert edit', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(143, 'DriverAlert delete', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(144, 'DriverAlert list', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `push_notification`
--

CREATE TABLE `push_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `authtoken` varchar(255) DEFAULT NULL,
  `contentencoding` varchar(255) DEFAULT NULL,
  `endpoint` varchar(255) DEFAULT NULL,
  `publickey` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribable_type` varchar(255) NOT NULL,
  `subscribable_id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `public_key` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `content_encoding` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `reason`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'No fuel', NULL, '2021-11-20 07:03:46', '2021-11-20 07:03:46'),
(2, 'Tire punctured', NULL, '2021-11-20 07:03:46', '2021-11-20 07:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `ratings` double(8,2) DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2021-11-20 07:04:28', '2021-11-20 07:04:28'),
(2, 'Admin', 'web', '2021-11-20 07:04:36', '2021-11-20 07:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_items`
--

CREATE TABLE `service_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `time_interval` varchar(255) DEFAULT 'off',
  `overdue_time` varchar(255) DEFAULT NULL,
  `overdue_unit` varchar(255) DEFAULT NULL,
  `meter_interval` varchar(255) DEFAULT 'off',
  `overdue_meter` varchar(255) DEFAULT NULL,
  `show_time` varchar(255) DEFAULT 'off',
  `duesoon_time` varchar(255) DEFAULT NULL,
  `duesoon_unit` varchar(255) DEFAULT NULL,
  `show_meter` varchar(255) DEFAULT 'off',
  `duesoon_meter` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `service_items`
--

INSERT INTO `service_items` (`id`, `user_id`, `description`, `time_interval`, `overdue_time`, `overdue_unit`, `meter_interval`, `overdue_meter`, `show_time`, `duesoon_time`, `duesoon_unit`, `show_meter`, `duesoon_meter`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Change oil', 'on', '60', 'day(s)', 'off', NULL, 'on', '2', 'day(s)', 'off', NULL, NULL, '2021-11-20 07:03:53', '2021-11-20 07:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `service_reminder`
--

CREATE TABLE `service_reminder` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `last_date` varchar(255) DEFAULT NULL,
  `last_meter` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `label`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Website Name', 'app_name', 'VMS GRP06', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(2, 'Business Address 1', 'badd1', 'Company Address 1', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(3, 'Business Address 2', 'badd2', 'Company Address 2', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(4, 'Email Address', 'email', 'srijal@srijal.com', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(5, 'City', 'city', 'Kathmandu', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(6, 'State', 'state', 'Bagmati', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(7, 'Country', 'country', 'Nepal', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(8, 'Distence Format', 'dis_format', 'km', '2021-11-20 07:03:56', '2025-06-15 22:56:08', NULL),
(9, 'Language', 'language', 'English-en', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(10, 'Currency', 'currency', '$', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(11, 'Tax No', 'tax_no', 'ABCD8735XXX', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(12, 'Invoice Text', 'invoice_text', 'Your Invoice', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(13, 'Small Logo', 'icon_img', 'f5842071-bfc5-44e7-a3eb-3b54c426e73f.png', '2021-11-20 07:03:57', '2025-06-15 22:47:21', NULL),
(14, 'Main Logo', 'logo_img', 'logo.png', '2021-11-20 07:03:57', '2021-11-20 07:03:57', NULL),
(15, 'Time Interval', 'time_interval', '30', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(16, 'Tax Charge', 'tax_charge', 'null', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(17, 'Fuel Unit', 'fuel_unit', 'liter', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(18, 'Date Format', 'date_format', 'd-m-Y', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(19, 'Website Footer', 'web_footer', '<p><span style=\"font-size: 16px;\">© SRIJAL 2025. &nbsp;<span class=\"vertical-spacer d-none d-lg-inline\">|</span>&nbsp;Powered By&nbsp;</span><a href=\"https://srijal.ca/\" target=\"_blank\" class=\"link\"><span style=\"font-size: 16px;\">VMS</span></a></p>', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(20, 'Fuel enable for Driver', 'fuel_enable_driver', '1', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(21, 'Income enable for Driver', 'income_enable_driver', '1', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(22, 'Expense enable for Driver', 'expense_enable_driver', '1', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(23, 'traccar_enable', 'traccar_enable', '1', '2021-11-20 07:03:57', '2025-06-18 21:16:47', NULL),
(24, 'traccar_username', 'traccar_username', 'masudiprijal@gmail.com', '2021-11-20 07:03:57', '2025-06-18 21:16:47', NULL),
(25, 'traccar_password', 'traccar_password', 'Astr@l@4321', '2021-11-20 07:03:57', '2025-06-18 21:16:47', NULL),
(26, 'traccar_server_link', 'traccar_server_link', 'https://xiri8urzm.traccar.com', '2021-11-20 07:03:57', '2025-06-18 21:16:47', NULL),
(27, 'traccar_map_key', 'traccar_map_key', 'AIzaSyDijjl7Q6g-ChnQ1pAPSFKIpwNRCGaMR1U', '2021-11-20 07:03:57', '2025-06-18 21:16:47', NULL),
(28, 'vehicle_interval', 'vehicle_interval', '45', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(29, 'driver_interval', 'driver_interval', '60', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(30, 'driver_doc_verification', 'driver_doc_verification', '0', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(31, 'fotter logo img', 'fotter_logo_img', 'c3d2471b-2cf7-4e4d-9229-d46fbe45faa7.png', '2021-11-20 07:03:57', '2025-06-15 22:47:21', NULL),
(32, 'fare mode', 'fare_mode', 'type_wise', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL),
(33, 'return booking', 'return_booking', '1', '2021-11-20 07:03:57', '2025-06-15 22:56:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `details`, `designation`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Elliot Hirthe', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus neque est nemo et ipsum fugiat, ab facere adipisci. Aliquam quibusdam molestias quisquam distinctio? Culpa, voluptatem voluptates exercitationem sequi velit quaerat.', 'Owner', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(2, 'Kathlyn Wisoky IV', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus neque est nemo et ipsum fugiat, ab facere adipisci. Aliquam quibusdam molestias quisquam distinctio? Culpa, voluptatem voluptates exercitationem sequi velit quaerat.', 'Owner', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(3, 'Prof. Juliana Mante', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus neque est nemo et ipsum fugiat, ab facere adipisci. Aliquam quibusdam molestias quisquam distinctio? Culpa, voluptatem voluptates exercitationem sequi velit quaerat.', 'Owner', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(4, 'Deron Ortiz', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus neque est nemo et ipsum fugiat, ab facere adipisci. Aliquam quibusdam molestias quisquam distinctio? Culpa, voluptatem voluptates exercitationem sequi velit quaerat.', 'Owner', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(5, 'Dr. Jailyn Feil', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus neque est nemo et ipsum fugiat, ab facere adipisci. Aliquam quibusdam molestias quisquam distinctio? Culpa, voluptatem voluptates exercitationem sequi velit quaerat.', 'Owner', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `details`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dahlia Goldner', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(2, 'Franz Stokes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(3, 'Albert Gleason', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(4, 'Vanessa Bechtelar PhD', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL),
(5, 'Adah Rau', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet animi doloribus, repudiandae iusto magnam soluta voluptates, expedita aspernatur consectetur! Ex fugit ducimus itaque, quibusdam nemo in animi quae libero repellendus!', NULL, '2021-11-20 07:03:45', '2021-11-20 07:03:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `twilio_settings`
--

CREATE TABLE `twilio_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `twilio_settings`
--

INSERT INTO `twilio_settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sid', '', '2021-11-20 07:04:11', '2021-11-20 07:04:11', NULL),
(2, 'token', '', '2021-11-20 07:04:11', '2021-11-20 07:04:11', NULL),
(3, 'from', '', '2021-11-20 07:04:11', '2021-11-20 07:04:11', NULL),
(4, 'customer_message', '', '2021-11-20 07:04:11', '2021-11-20 07:04:11', NULL),
(5, 'driver_message', '', '2021-11-20 07:04:11', '2021-11-20 07:04:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(95) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `api_token` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `password`, `user_type`, `group_id`, `api_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Administrator', 'srijal@laurentian.ca', '$2y$10$H5xe3elXgR120ZfPBwEAGu7LpbFhfe/4FNP0.1eKhU49gdFM6txEq', 'S', NULL, 'vNjY40dy2vWTYJqPfsOGRW331lIU8OY2qfUrqL5Oo4RTxnIvsxT9ZVIHlXFv', NULL, '2021-11-20 07:03:48', '2025-06-15 21:21:02', NULL),
(2, 1, 'User One', '1750022535_deleteduser1@admin.com', '$2y$10$0yL5QM7IVdb3B6FUi3m2HugbnC5VK2HncZR0VGr1cvsSEV/Nc/pc.', 'O', 1, '1TxP6fg9WPYmPse2PaRggJUAyt0De9xOYUivQeiSC0N92GYEFVOviNfQq6Qk', NULL, '2021-11-20 07:03:48', '2025-06-15 21:22:15', '2025-06-15 21:22:15'),
(3, 1, 'User Two', '1750022539_deleteduser2@admin.com', '$2y$10$JPAnaeoH1aw5NIoomGPHyOi03VVOl0y6/iU4Po0Q/d8HaKsOpoPK.', 'O', 1, 'dLlOOjzxTrYzA2N9IEJeduRXnpLwrARmnaXvwbtLtPCFgpcZgeYIfErCQ6ja', NULL, '2021-11-20 07:03:48', '2025-06-15 21:22:19', '2025-06-15 21:22:19'),
(4, 1, 'Customer One', 'customer1@gmail.com', '$2y$10$bt3dPDa3tHjUkB.IDINUM.1lqfLy.3M.TTd2qVWDqF5P3wCrVlpLq', 'C', NULL, 'TuaPjW443femKIauadpE0VskcpvSwBke0dsS39YeOaiAAkS8rsek1vuXx9F3', NULL, '2021-11-20 07:03:49', '2021-11-20 07:03:49', NULL),
(5, 1, 'Customer Two', '1750035394_deletedcustomer2@gmail.com', '$2y$10$tMH0pfSWraNZLp1.nGhhDOMPhyxjC.tNykK6eXxg88CEZF0Zm.mdW', 'C', NULL, '0G1fjlmammOVOA7hxpsXAtw0Wp1oWLPC2xCxrCQoqS14m0U2d26sGHw15LuX', NULL, '2021-11-20 07:03:49', '2025-06-16 00:56:34', '2025-06-16 00:56:34'),
(6, 1, 'Mariah Bahringer', 'nbode@example.net', '$2y$10$mRsCYSZSMw0lAle/kxMjGODZ6nt/G3FzB75AUWsTKb7jdq9KXL9ny', 'D', NULL, '4vyb77kPNaiMyuPG63WUFctB2G3NPjPx1kgafzjBOWWnhEsVS8rScIg7s98O', '5aN4c0pRUd', '2021-11-20 07:04:12', '2021-11-20 07:04:12', NULL),
(7, 1, 'Leland Schuppe', 'oabshire@example.org', '$2y$10$8xlqNIYjbsuuTrMho/4AieRd4AO8XFKL0UpO9L1c/4REs40OlSCXS', 'D', NULL, 'rDQOs9u7J4HX9gRG9ba6SHpDfpcpNqxmKVuZmhgGAc9EK1Zbfs60cBepetsr', 'yX9YRQfvBJ', '2021-11-20 07:04:13', '2021-11-20 07:05:06', NULL),
(8, 1, 'Noelle Stafford', 'kedim@mailinator.com', '$2y$10$3x2u23rUc0eqJNqqPO7yNutR/wUZb9CAk97oI2OWVTrlDWexPfyfm', 'D', NULL, 'pN1iP2z5R3KnjTtk2QiJHES7saG5MvxswgHjCaCu9Ob2CR32is6dD98c0txL', NULL, '2021-11-22 23:01:58', '2021-11-22 23:01:58', NULL),
(12, NULL, 'Asha Gurung', 'asha.gurung76@example.com', '$2y$10$Sej1Vnz1laOt8hwEK5mFuOP/OXTA7m4jjTg.WtlFaaegoy3k33tYi', 'D', NULL, 'kKjvSN7H8H0LtEaDdpF4NiWttmn9ZIVXQ5ptazdoIVI76cCwY8jc2xfnvbuR', NULL, '2025-06-15 21:02:39', '2025-06-15 21:02:39', NULL),
(13, NULL, 'Rahman Islam', 'rahman.islam28@example.com', '$2y$10$dtkM3Csc3PrrSaM3k0KE5OV9pa2EP21GMXtXTLmMhm2RLQXnRDMvW', 'D', NULL, 'UZWxW2c0vkNDiFGM4afVtUGQzUMUbEGAHXckhYvYEeNIMIr5u3xfz56h3zGM', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(14, NULL, 'Hua Liu', 'hua.liu70@example.com', '$2y$10$p5bCYFTYvacULZKlzR/2l.nZrp/bIMNPYNu2iZVIC0U4dCxySnIkO', 'D', NULL, 'D8mpQiP82mOdgvJKcabVZmnXV8TUHVRgn8SBTtQShrMizLe5rVvIZ8oTBTCn', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(15, NULL, 'Hasan Ali', 'hasan.ali38@example.com', '$2y$10$g9N9KN.9r8apeR8237oyIOSgUpsK.ZsawtqFC0dqpyau0qjm7M0TO', 'D', NULL, 'Z6RbpMwcczDudAujEyhPH0T3jq61AtjRxgmZsxQkOxVKnRL87g1ymIdCVtbk', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(16, NULL, 'Tao Sun', 'tao.sun59@example.com', '$2y$10$92C5U/KQfIZ6VmD4swDEE.1zhbEKsw3scwktXwJCCyPMp6Owy8ZnS', 'D', NULL, 'DXgkbHCOYaq1VV2u0B6vDLFq4xvi8apH0QI2xNdxS9pqc5KpfL5G5gHvBF5T', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(17, NULL, 'Prashant Basnet', 'prashant.basnet10@example.com', '$2y$10$xSHZdRidlF.KNWeHGg0ta.tMo7LngseeE6td7c4oO.cbdxYj9BbVG', 'D', NULL, 'wjo3v4o2EPFZBumwoiiR7AO9SE6F2bsYRYlzrGBJQeZKlX67Vf2WO03HCqWl', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(18, NULL, 'Prashant Poudel', 'prashant.poudel51@example.com', '$2y$10$7YjH3F6OOEP1SnWA4lC9fe5t9NVwL/2Qt9yBKLWB6Qnbtu6Xuc8om', 'D', NULL, 'h6KqV8iSlkKtT6FaClO1h5POsIcygMXug2wt5beyAYT0jnsFaWxtH99SWpjL', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(19, NULL, 'Kamal Begum', 'kamal.begum52@example.com', '$2y$10$8CZ.4.iZqsrpZgeMU7TDLeTMWv8758efP1KQR7STQPTHde4Ep/1Me', 'D', NULL, 'wpOttZ6GDEYwx3xE6usYjNyNQuXKDb6xGBxD5y7qWGGPG0wAasPJLNQzgPuL', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(20, NULL, 'Raj Singh', 'raj.singh24@example.com', '$2y$10$C908mabl8m2gTQnTLHnfHeEKqvcCAVjTQPJRaB2sQcSE6sRQ3Pcf.', 'D', NULL, 'DRlceeripllZEsRH4Y2VpCG8H0J4LfS2BfzHp8CVS44l75jcWRFl2hL9erCK', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(21, NULL, 'Fatima Sarkar', 'fatima.sarkar26@example.com', '$2y$10$BtnXANizbk2GLA9AmfabMuU1mRPWdXgKrFXvlT081Wyzr3TOGU6Wa', 'D', NULL, 'ejwF7CEGaPNBKvGh1llI6mXUY7o0urcNTaIHCIb3VJSfhfRQ6NyrrIeDawBY', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(22, NULL, 'Puja Rai', 'puja.rai27@example.com', '$2y$10$Ne0kvcTZmwp161BE.mNmRO2cfwCjKY9DGFareRCICEgFurPQa7/wy', 'D', NULL, 'FbEMOhWrtyt4oJB6IMdP7vL4kTknx2JVPokTqlEUod3up453cCQCZJdPbpKu', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(23, NULL, 'Mei Xu', 'mei.xu21@example.com', '$2y$10$hLnSaJyyaZxmyz0wGfcC/OvHYFVA80McrkBrps6Hr5U4QCWXRv9sW', 'D', NULL, 'AjMYpuj2vxQeUHjZ65OAprQEcLf9GCOLoqfUIDdnfeYuSPbrJWlICrghB0co', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(24, NULL, 'Nabin Sharma', 'nabin.sharma73@example.com', '$2y$10$s0nv0o.vHSskfqg9D5o5ZOySt9npgGXC.t7qbPApeD3.86N2zEw96', 'D', NULL, '1m8QbfYDhIhpXVOXo9xu4LYyKXejQ2Es6Clc1xU95b67yRFP1Z4LyJ10mXHY', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(25, NULL, 'Jahan Bhuiyan', 'jahan.bhuiyan13@example.com', '$2y$10$eaxQ..U.VlLH1QM3UPcvjuS3Z7y/wbqQNJn6n6Yt78CrgjZYkoXJi', 'D', NULL, 'Va1GGdD07wCZnqXfTiEUoBBoDwO2ehvDwNJwfrpVe4sLZfstZdD7TbjlRJ3V', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(26, NULL, 'Vikram Yadav', 'vikram.yadav48@example.com', '$2y$10$TIUBwssdJ038R/TpF2dH.OxMqWGQNtcRhDZk2hMs8EzZTu5wSKOXG', 'D', NULL, '9XyVXijvERsVNbKqpcsZn8MWMBa2I05ZK9FUtxlrWtvYcMhFtqxzMXQYyalK', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(27, NULL, 'Lin Zhang', 'lin.zhang32@example.com', '$2y$10$nuD7ArFeDDccbUtsI3V4l.VjRlhnLe0FpKR/B.s4ADWpwjXQm7Sby', 'D', NULL, 'tILgJkF8In93e63Yulh6exi8nDuUKj2wns8gGzPGlYa0KbmCSuGeBZRKP8Ng', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40', NULL),
(28, NULL, 'Priya Patel', 'priya.patel16@example.com', '$2y$10$CZ2X3FvzvDcDaYKphUHlf.vgAVOwkFsm8Vygj0XB4meLH185p6cV.', 'D', NULL, 'siBQ6GfN2zNtkWkL6GnFc5Zp5tOb7V3tRorkrYfwuwK6q57HtnndBk16V8XY', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41', NULL),
(29, NULL, 'Tao Zhao', 'tao.zhao15@example.com', '$2y$10$8HgzHf2MysMnLXG5a7ZBsuH1ijxbDvejFq5ac7fdvGgclWZ1D96Dm', 'D', NULL, 'frjE2ZtaKyRHWm2oFv32aVQ8utHlT1kCAGwbIfCtBON7dQUfSTBpQuvi2d9J', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41', NULL),
(30, NULL, 'Zhang Huang', 'zhang.huang17@example.com', '$2y$10$zH7AugyoNHajXTEAKjJfL.3bqjcLImw8Hul/RvCR2S7cP9BXQ8cjm', 'D', NULL, 'JQoT0vQlDS4bXT1V9FIaUgdDOobMzGbdC1VLXQbktdaxwBOLyECQ8rX5p3Vd', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41', NULL),
(31, NULL, 'Li Li', 'li.li78@example.com', '$2y$10$rWkqtrunoXGLnth0Syd90.izYPtR7DEQUYWIn9an6iJGJSay68YHu', 'D', NULL, 'X6o6LHLk1mofnckVgRKGv1Fdj8XMCLVsbI6Aq4evo4zbOm1Eg4bVSeEvZHiE', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41', NULL),
(32, NULL, 'Hasan Hossain', 'hasan.hossain54@example.com', '$2y$10$oZHLoMALPqwlkQluE6ZjgOklCwY5PLzq/2b2fHGahQV2MROQJrbO.', 'D', NULL, 'gobtcn6rGnYYEuSf01A49xTV2PYT3BSYceuxXDUUCCs33SwFQc4c5YwFF9bR', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41', NULL),
(33, 1, 'SDLC SDLC', 'sdlc@group6.vms', '$2y$10$zLe2Z/f2PWYnPvYXER70eueSvkRzFMH0nSSIZFcEZU/uvjFmp/FgS', 'O', 1, 'ulK3QgM9jrcVOfo5ebOZPCcbHJwAFTtkCUhSJ8daS8aeerBazqcBiIkkM4hJ', NULL, '2025-06-15 21:10:43', '2025-06-15 21:10:43', NULL),
(34, NULL, 'Sudip Rijal', 'puks@laurentian.ca', '$2y$10$.WFJsC9xFcKnzZjzivL6duRvICueO5/51Xxc7o0o2tYl6temmIz3S', 'C', NULL, '4mfyKahBl6mBxlOXtbzHQsrc3GZJJaUBN3llsl8tL3U8bIUqyQeXbF6QRYsV', NULL, '2025-06-15 22:39:15', '2025-06-15 22:39:55', NULL),
(35, 1, 'PeiJung Hsieh', 'peijung.hsieh@example.com', '$2y$10$CFmHm/RSDkp04kYZBpBCxed4F9GAY6uY6/zJQDOySxXWPEMunJ1CS', 'C', NULL, '5ltPAw3Du879MVEMBqHp1MGtxQ5tNuXczHShSoWaLjUG1sxePTtdw5XLHOFx', NULL, '2025-06-16 00:50:46', '2025-06-16 00:50:56', NULL),
(36, 1, 'Iqbal Hossain', 'iqbal.hossain@example.com', '$2y$10$dmoSzRCa0NQYmzTc.sRo.ucklqaMncchjFzp0.HeEm/mgKX.89Dwu', 'C', NULL, 'rauJsFo4jv0PvxstE83djagJP3n6Cvc3S5PNQ2Pk6eV4pmdmHYGOPGMXI5uv', NULL, '2025-06-16 00:51:23', '2025-06-16 00:51:33', NULL),
(37, 1, 'Moumita Nag', 'moumita.nag@example.com', '$2y$10$QlkYCd80qvilvpCFDmlVZepKILq4ibZOgddsnQw.VEDoOUWB/ydVy', 'C', NULL, 'L8eHIFm2hRxE5N8r9mapghmGy8NEq5jiZvPOCgY9THARdqj057hVQmJX22kI', NULL, '2025-06-16 00:52:13', '2025-06-16 00:52:19', NULL),
(38, 1, 'Sudip Rijal', 'sudip.rijal@example.com', '$2y$10$Rw3aQt4JWPaZRoPFgozwqeeGVAifQ7cPfnswUyMC5KBsPML82cLYi', 'C', NULL, 'z795ykx5kbkd9RKLNICemnZzzd5XnlypoMuvLMvtxlLpOabJg3ywx62fEQfO', NULL, '2025-06-16 00:52:54', '2025-06-16 00:53:00', NULL),
(39, 1, 'Wen Zhang', 'wen.zhang@example.com', '$2y$10$9uOWF/IJTPS5zgMkI87uZunH9gNRd6hDv5DMnQfX8YIwq/KRlzlp2', 'C', NULL, 'JVBc4GERxRsf66H95TfXyalaf18Ocq0j7kQE04Bsk8xQJ3wt35ypiTwfbNLQ', NULL, '2025-06-16 00:53:38', '2025-06-16 00:53:45', NULL),
(40, 1, 'Amir Chowdhury', 'amir.chowdhury@example.com', '$2y$10$k0uuRSlVyk5BWdJTlu5GXO/Lwp6qQDdvc7H1.PQ8NYn4Az0Y/OcrO', 'C', NULL, 's24MOhaUbEHOCetSbHdyEcfLugMtviis4aSbfSVK7uIMmI5xWuqi9k01qpsb', NULL, '2025-06-16 00:54:13', '2025-06-16 00:54:19', NULL),
(41, 1, 'Priya Mehta', 'priya.mehta@example.com', '$2y$10$4cq3P9YU4OvonwbqNYjbUu10XcSQXwud.jw8oP/k.JAbbVnej4G3y', 'C', NULL, 'OEKZ5p7UVM2pfTtuP5DgGlTmULhTxLUrkjsFD47XzY9cK5pkHFyEn9qKL4FZ', NULL, '2025-06-16 00:54:47', '2025-06-16 00:54:53', NULL),
(42, 1, 'Hao Chen', 'hao.chen@example.com', '$2y$10$SRZvF8lipcXt.cBaL4BVIOZF7q.UXJEyBnQc3LtykuaxQh9qPc8hq', 'C', NULL, 'uIlCG3GZG1ZyBmSwxs5pOeYdzuhXjuWgOPr8Nl1xx3vRIEA9dmJ8OhPQLlca', NULL, '2025-06-16 00:55:21', '2025-06-16 00:55:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'null',
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`id`, `user_id`, `type`, `key`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'string', 'profile_image', 'no-user.jpg', NULL, '2021-11-20 07:03:48', '2021-11-20 07:03:48'),
(2, 1, 'string', 'module', 'N;', NULL, '2021-11-20 07:03:48', '2025-06-15 21:21:02'),
(3, 2, 'string', 'module', 'a:15:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;}', NULL, '2021-11-20 07:03:48', '2021-11-20 07:03:48'),
(4, 3, 'string', 'module', 'a:15:{i:0;i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;i:9;i:10;i:10;i:11;i:12;i:12;i:13;i:13;i:14;i:14;i:15;}', NULL, '2021-11-20 07:03:48', '2021-11-20 07:03:48'),
(5, 4, 'string', 'first_name', 'Customer', NULL, '2021-11-20 07:03:49', '2021-11-20 07:03:49'),
(6, 4, 'string', 'last_name', 'One', NULL, '2021-11-20 07:03:49', '2021-11-20 07:03:49'),
(7, 4, 'string', 'address', '728 Evalyn Knolls Apt. 119 Lake Jaydenville, MD 74979-3406', NULL, '2021-11-20 07:03:49', '2021-11-20 07:03:49'),
(8, 4, 'string', 'mobno', '8639379915669', NULL, '2021-11-20 07:03:49', '2021-11-20 07:03:49'),
(9, 4, 'integer', 'gender', '0', NULL, '2021-11-20 07:03:49', '2021-11-20 07:03:49'),
(10, 5, 'string', 'first_name', 'Customer', '2025-06-16 00:56:34', '2021-11-20 07:03:49', '2025-06-16 00:56:34'),
(11, 5, 'string', 'last_name', 'Two', '2025-06-16 00:56:34', '2021-11-20 07:03:49', '2025-06-16 00:56:34'),
(12, 5, 'string', 'address', '91158 Luigi Cliffs Lake Darby, MA 39627-1727', '2025-06-16 00:56:34', '2021-11-20 07:03:49', '2025-06-16 00:56:34'),
(13, 5, 'string', 'mobno', '9773607007903', '2025-06-16 00:56:34', '2021-11-20 07:03:49', '2025-06-16 00:56:34'),
(14, 5, 'integer', 'gender', '1', '2025-06-16 00:56:34', '2021-11-20 07:03:49', '2025-06-16 00:56:34'),
(15, 6, 'string', 'first_name', 'Mariah', NULL, '2021-11-20 07:04:13', '2021-11-20 07:04:13'),
(16, 6, 'string', 'last_name', 'Bahringer', NULL, '2021-11-20 07:04:13', '2021-11-20 07:04:13'),
(17, 6, 'string', 'address', '842 Dicki Run\nPort Lewis, DC 61595-0469', NULL, '2021-11-20 07:04:13', '2021-11-20 07:04:13'),
(18, 6, 'string', 'phone', '03057119344690', NULL, '2021-11-20 07:04:13', '2021-11-20 07:04:13'),
(19, 6, 'string', 'issue_date', '2021-11-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(20, 6, 'string', 'exp_date', '2022-01-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(21, 6, 'string', 'start_date', '2021-11-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(22, 6, 'string', 'end_date', '2021-12-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(23, 6, 'integer', 'license_number', '256612', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(24, 6, 'integer', 'contract_number', '5296', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(25, 6, 'integer', 'emp_id', '5732787', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(26, 7, 'string', 'first_name', 'Leland', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(27, 7, 'string', 'last_name', 'Schuppe', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(28, 7, 'string', 'address', '798 Ariel Causeway\nSouth Amirbury, GA 81164', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(29, 7, 'string', 'phone', '04450210557668', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(30, 7, 'string', 'issue_date', '2021-11-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(31, 7, 'string', 'exp_date', '2022-01-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(32, 7, 'string', 'start_date', '2021-11-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(33, 7, 'string', 'end_date', '2021-12-20', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(34, 7, 'integer', 'license_number', '812157', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(35, 7, 'integer', 'contract_number', '7824', NULL, '2021-11-20 07:04:14', '2021-11-20 07:04:14'),
(36, 7, 'integer', 'emp_id', '4157602', NULL, '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(37, 6, 'integer', 'vehicle_id', '1', NULL, '2021-11-20 07:04:15', '2021-11-20 07:04:15'),
(38, 8, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2021-11-22 23:01:58', '2025-06-15 20:31:56'),
(39, 8, 'string', 'is_active', '1', NULL, '2021-11-22 23:01:58', '2021-11-22 23:01:58'),
(40, 8, 'string', 'is_available', '0', NULL, '2021-11-22 23:01:58', '2021-11-22 23:01:58'),
(41, 8, 'string', 'first_name', 'Noelle', NULL, '2021-11-22 23:01:58', '2025-06-15 20:31:56'),
(42, 8, 'string', 'middle_name', 'Mona Rutledge', NULL, '2021-11-22 23:01:59', '2025-06-15 20:31:56'),
(43, 8, 'string', 'last_name', 'Stafford', NULL, '2021-11-22 23:01:59', '2025-06-15 20:31:56'),
(44, 8, 'string', 'vehicle_id', '2', NULL, '2021-11-22 23:01:59', '2021-11-22 23:01:59'),
(45, 8, 'string', 'address', 'Esse neque quos qui', NULL, '2021-11-22 23:01:59', '2021-11-22 23:01:59'),
(46, 8, 'string', 'email', 'kedim@mailinator.com', NULL, '2021-11-22 23:01:59', '2021-11-22 23:01:59'),
(47, 8, 'string', 'phone_code', '+49', NULL, '2021-11-22 23:01:59', '2021-11-22 23:01:59'),
(48, 8, 'string', 'phone', '86912121231231', NULL, '2021-11-22 23:01:59', '2025-06-15 20:31:56'),
(49, 8, 'string', 'emp_id', 'Nisi sit ab ea plac', NULL, '2021-11-22 23:01:59', '2021-11-22 23:01:59'),
(50, 8, 'string', 'contract_number', '533', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(51, 8, 'string', 'license_number', '417', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(52, 8, 'string', 'issue_date', '2020-02-19', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(53, 8, 'string', 'exp_date', '2022-05-15', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(54, 8, 'string', 'start_date', '2006-07-24', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(55, 8, 'string', 'end_date', '2022-02-11', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(56, 8, 'string', 'password', 'password', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(57, 8, 'string', 'gender', '0', NULL, '2021-11-22 23:02:00', '2025-06-15 20:31:56'),
(58, 8, 'string', 'econtact', 'Et placeat excepteu', NULL, '2021-11-22 23:02:00', '2021-11-22 23:02:00'),
(59, 1, 'string', 'language', 'English-en', NULL, '2021-11-22 23:03:04', '2021-11-22 23:03:04'),
(60, 8, 'string', 'driver_image', '3794f4bb-16fe-459d-ae1e-7e1863cc1815.jpg', NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(61, 8, 'string', '_method', 'PATCH', NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(62, 8, 'string', 'id', '8', NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(63, 8, 'string', 'edit', '1', NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(64, 8, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(65, 8, 'string', 'user_id', '1', NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(66, 8, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(67, 8, 'string', 'driver_commision', '10', NULL, '2025-06-15 20:31:56', '2025-06-15 20:31:56'),
(100, 12, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(101, 12, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(102, 12, 'string', 'first_name', 'Asha', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:58'),
(103, 12, 'string', 'middle_name', 'K.', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:58'),
(104, 12, 'string', 'last_name', 'Gurung', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:58'),
(105, 12, 'string', 'address', 'Biratnagar-8, Morang', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(106, 12, 'string', 'phone', '60694382232523', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:58'),
(107, 12, 'string', 'phone_code', '+977', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(108, 12, 'string', 'emp_id', '38290', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:58'),
(109, 12, 'string', 'contract_number', '38290', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:58'),
(110, 12, 'string', 'license_number', 'LN42500647', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(111, 12, 'string', 'issue_date', '2016-09-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(112, 12, 'string', 'exp_date', '2030-04-21', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(113, 12, 'string', 'start_date', '2020-07-13', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(114, 12, 'string', 'gender', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:58'),
(115, 12, 'string', 'econtact', 'Nusrat Kumar (+8803277039463)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(116, 13, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(117, 13, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(118, 13, 'string', 'first_name', 'Rahman', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:29'),
(119, 13, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:29'),
(120, 13, 'string', 'last_name', 'Islam', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:29'),
(121, 13, 'string', 'address', 'Khulna, Khulna Division', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(122, 13, 'string', 'phone', '858495970435345', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:29'),
(123, 13, 'string', 'phone_code', '+880', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(124, 13, 'string', 'emp_id', '27199', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:29'),
(125, 13, 'string', 'contract_number', '27199', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:29'),
(126, 13, 'string', 'license_number', 'LN27117877', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(127, 13, 'string', 'issue_date', '2015-11-22', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(128, 13, 'string', 'exp_date', '2027-07-25', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(129, 13, 'string', 'start_date', '2024-01-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(130, 13, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:29'),
(131, 13, 'string', 'econtact', 'Priya Reddy (+8802546044223)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(132, 14, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(133, 14, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(134, 14, 'string', 'first_name', 'Hua', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:05'),
(135, 14, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:05'),
(136, 14, 'string', 'last_name', 'Liu', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:05'),
(137, 14, 'string', 'address', 'Shenzhen, Guangdong', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(138, 14, 'string', 'phone', '132408561034242', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:05'),
(139, 14, 'string', 'phone_code', '+86', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(140, 14, 'string', 'emp_id', '68724', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:05'),
(141, 14, 'string', 'contract_number', '68724', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:05'),
(142, 14, 'string', 'license_number', 'LN91571073', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(143, 14, 'string', 'issue_date', '2015-12-30', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(144, 14, 'string', 'exp_date', '2028-10-13', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(145, 14, 'string', 'start_date', '2024-01-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(146, 14, 'string', 'gender', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:27:05'),
(147, 14, 'string', 'econtact', 'Farida Shrestha (+8809177170388)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(148, 15, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(149, 15, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(150, 15, 'string', 'first_name', 'Hasan', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:40'),
(151, 15, 'string', 'middle_name', 'Md.', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:40'),
(152, 15, 'string', 'last_name', 'Ali', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:40'),
(153, 15, 'string', 'address', 'Barisal, Barisal Division', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(154, 15, 'string', 'phone', '11070424572131', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:40'),
(155, 15, 'string', 'phone_code', '+880', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(156, 15, 'string', 'emp_id', '84171', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:40'),
(157, 15, 'string', 'contract_number', '84171', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:40'),
(158, 15, 'string', 'license_number', 'LN99902184', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(159, 15, 'string', 'issue_date', '2016-08-21', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(160, 15, 'string', 'exp_date', '2027-10-13', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(161, 15, 'string', 'start_date', '2022-04-17', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(162, 15, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:40'),
(163, 15, 'string', 'econtact', 'Shreya Rai (+8803492176561)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(164, 16, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(165, 16, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(166, 16, 'string', 'first_name', 'Tao', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:21'),
(167, 16, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:21'),
(168, 16, 'string', 'last_name', 'Sun', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:21'),
(169, 16, 'string', 'address', 'Chengdu, Sichuan', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(170, 16, 'string', 'phone', '111727440624123', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:21'),
(171, 16, 'string', 'phone_code', '+86', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(172, 16, 'string', 'emp_id', '14268', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:21'),
(173, 16, 'string', 'contract_number', '14268', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:21'),
(174, 16, 'string', 'license_number', 'LN70889157', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(175, 16, 'string', 'issue_date', '2015-11-22', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(176, 16, 'string', 'exp_date', '2027-04-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(177, 16, 'string', 'start_date', '2023-08-20', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(178, 16, 'string', 'end_date', '2025-12-16', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(179, 16, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:21'),
(180, 16, 'string', 'econtact', 'Bina Islam (+8806924821893)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(181, 17, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(182, 17, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(183, 17, 'string', 'first_name', 'Prashant', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:02'),
(184, 17, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:02'),
(185, 17, 'string', 'last_name', 'Basnet', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:02'),
(186, 17, 'string', 'address', 'Butwal-12, Rupandehi', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(187, 17, 'string', 'phone', '20631952281323', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:02'),
(188, 17, 'string', 'phone_code', '+977', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(189, 17, 'string', 'emp_id', '16069', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:02'),
(190, 17, 'string', 'contract_number', '16069', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:02'),
(191, 17, 'string', 'license_number', 'LN62563149', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(192, 17, 'string', 'issue_date', '2021-05-23', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(193, 17, 'string', 'exp_date', '2026-12-16', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(194, 17, 'string', 'start_date', '2024-05-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(195, 17, 'string', 'end_date', '2024-10-23', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(196, 17, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:26:02'),
(197, 17, 'string', 'econtact', 'Meera Rai (+8808772319724)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(198, 18, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(199, 18, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(200, 18, 'string', 'first_name', 'Prashant', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:42'),
(201, 18, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:42'),
(202, 18, 'string', 'last_name', 'Poudel', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:42'),
(203, 18, 'string', 'address', 'Butwal-12, Rupandehi', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(204, 18, 'string', 'phone', '83920272143234', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:42'),
(205, 18, 'string', 'phone_code', '+977', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(206, 18, 'string', 'emp_id', '21928', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:42'),
(207, 18, 'string', 'contract_number', '21928', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:42'),
(208, 18, 'string', 'license_number', 'LN13650138', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(209, 18, 'string', 'issue_date', '2019-12-26', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(210, 18, 'string', 'exp_date', '2028-12-25', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(211, 18, 'string', 'start_date', '2022-04-17', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(212, 18, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:42'),
(213, 18, 'string', 'econtact', 'Dong Bhuiyan (+8803839121830)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(214, 19, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(215, 19, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(216, 19, 'string', 'first_name', 'Kamal', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:10'),
(217, 19, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:10'),
(218, 19, 'string', 'last_name', 'Begum', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:10'),
(219, 19, 'string', 'address', 'Barisal, Barisal Division', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(220, 19, 'string', 'phone', '14356896621212', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:10'),
(221, 19, 'string', 'phone_code', '+880', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(222, 19, 'string', 'emp_id', '99628', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:10'),
(223, 19, 'string', 'contract_number', '99628', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:10'),
(224, 19, 'string', 'license_number', 'LN20208990', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(225, 19, 'string', 'issue_date', '2015-06-21', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(226, 19, 'string', 'exp_date', '2027-02-22', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(227, 19, 'string', 'start_date', '2022-04-17', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(228, 19, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:25:10'),
(229, 19, 'string', 'econtact', 'Amit Chen (+8806445928419)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(230, 20, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(231, 20, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(232, 20, 'string', 'first_name', 'Raj', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:47'),
(233, 20, 'string', 'middle_name', 'Kamal', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:47'),
(234, 20, 'string', 'last_name', 'Singh', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:47'),
(235, 20, 'string', 'address', 'Bengaluru, Karnataka', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(236, 20, 'string', 'phone', '199513547723423', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:47'),
(237, 20, 'string', 'phone_code', '+91', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(238, 20, 'string', 'emp_id', '59995', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:47'),
(239, 20, 'string', 'contract_number', '59995', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:47'),
(240, 20, 'string', 'license_number', 'LN28561810', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(241, 20, 'string', 'issue_date', '2018-12-30', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(242, 20, 'string', 'exp_date', '2030-12-20', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(243, 20, 'string', 'start_date', '2023-02-18', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(244, 20, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:47'),
(245, 20, 'string', 'econtact', 'Jahan Reddy (+8801933409964)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(246, 21, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(247, 21, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(248, 21, 'string', 'first_name', 'Fatima', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:21'),
(249, 21, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:21'),
(250, 21, 'string', 'last_name', 'Sarkar', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:21'),
(251, 21, 'string', 'address', 'Barisal, Barisal Division', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(252, 21, 'string', 'phone', '35424880423432', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:21'),
(253, 21, 'string', 'phone_code', '+880', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(254, 21, 'string', 'emp_id', '78767', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:21'),
(255, 21, 'string', 'contract_number', '78767', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:21'),
(256, 21, 'string', 'license_number', 'LN73581487', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(257, 21, 'string', 'issue_date', '2018-12-20', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(258, 21, 'string', 'exp_date', '2027-04-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(259, 21, 'string', 'start_date', '2024-01-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(260, 21, 'string', 'gender', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:24:21'),
(261, 21, 'string', 'econtact', 'Dong Shrestha (+8809582970364)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(262, 22, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(263, 22, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(264, 22, 'string', 'first_name', 'Puja', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:44'),
(265, 22, 'string', 'middle_name', 'Rani', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:44'),
(266, 22, 'string', 'last_name', 'Rai', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:44'),
(267, 22, 'string', 'address', 'Dharan-1, Sunsari', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(268, 22, 'string', 'phone', '39994562632423', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:44'),
(269, 22, 'string', 'phone_code', '+977', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(270, 22, 'string', 'emp_id', '32246', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:44'),
(271, 22, 'string', 'contract_number', '32246', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:44'),
(272, 22, 'string', 'license_number', 'LN58515557', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(273, 22, 'string', 'issue_date', '2015-08-23', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(274, 22, 'string', 'exp_date', '2027-12-22', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(275, 22, 'string', 'start_date', '2024-11-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(276, 22, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:44'),
(277, 22, 'string', 'econtact', 'Puja Tamang (+8809698525414)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(278, 23, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(279, 23, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(280, 23, 'string', 'first_name', 'Mei', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:12'),
(281, 23, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:12'),
(282, 23, 'string', 'last_name', 'Xu', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:12'),
(283, 23, 'string', 'address', 'Shenzhen, Guangdong', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(284, 23, 'string', 'phone', '583496163324234', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:12'),
(285, 23, 'string', 'phone_code', '+86', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(286, 23, 'string', 'emp_id', '60611', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:12'),
(287, 23, 'string', 'contract_number', '60611', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:12'),
(288, 23, 'string', 'license_number', 'LN96371116', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(289, 23, 'string', 'issue_date', '2015-04-28', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(290, 23, 'string', 'exp_date', '2031-12-25', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(291, 23, 'string', 'start_date', '2021-09-13', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(292, 23, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:23:12'),
(293, 23, 'string', 'econtact', 'Anjali Huang (+8803091552905)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(294, 24, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(295, 24, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(296, 24, 'string', 'first_name', 'Nabin', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:31'),
(297, 24, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:31'),
(298, 24, 'string', 'last_name', 'Sharma', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:31'),
(299, 24, 'string', 'address', 'Lalitpur-3, Lalitpur', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(300, 24, 'string', 'phone', '69503114823434', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:31'),
(301, 24, 'string', 'phone_code', '+977', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(302, 24, 'string', 'emp_id', '70346', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:31'),
(303, 24, 'string', 'contract_number', '70346', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:31'),
(304, 24, 'string', 'license_number', 'LN81452956', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(305, 24, 'string', 'issue_date', '2018-12-26', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(306, 24, 'string', 'exp_date', '2024-10-18', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(307, 24, 'string', 'start_date', '2020-01-29', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(308, 24, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:31'),
(309, 24, 'string', 'econtact', 'Sumaiya Xu (+8803333362334)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(310, 25, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(311, 25, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(312, 25, 'string', 'first_name', 'Jahan', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:00'),
(313, 25, 'string', 'middle_name', 'Miya', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:00'),
(314, 25, 'string', 'last_name', 'Bhuiyan', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:00'),
(315, 25, 'string', 'address', 'Rajshahi, Rajshahi Division', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(316, 25, 'string', 'phone', '39947590423214', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:00'),
(317, 25, 'string', 'phone_code', '+880', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(318, 25, 'string', 'emp_id', '94000', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:00'),
(319, 25, 'string', 'contract_number', '94000', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:00'),
(320, 25, 'string', 'license_number', 'LN18298681', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(321, 25, 'string', 'issue_date', '2015-11-22', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(322, 25, 'string', 'exp_date', '2026-10-18', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(323, 25, 'string', 'start_date', '2022-04-17', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(324, 25, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:09:00'),
(325, 25, 'string', 'econtact', 'Md. Jain (+8802930723711)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(326, 26, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(327, 26, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(328, 26, 'string', 'first_name', 'Vikram', NULL, '2025-06-15 21:02:40', '2025-06-15 21:08:34'),
(329, 26, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:08:34'),
(330, 26, 'string', 'last_name', 'Yadav', NULL, '2025-06-15 21:02:40', '2025-06-15 21:08:34'),
(331, 26, 'string', 'address', 'Bengaluru, Karnataka', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(332, 26, 'string', 'phone', '168973067634234', NULL, '2025-06-15 21:02:40', '2025-06-15 21:08:34'),
(333, 26, 'string', 'phone_code', '+91', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(334, 26, 'string', 'emp_id', '63293', NULL, '2025-06-15 21:02:40', '2025-06-15 21:08:34'),
(335, 26, 'string', 'contract_number', '63293', NULL, '2025-06-15 21:02:40', '2025-06-15 21:08:34'),
(336, 26, 'string', 'license_number', 'LN44382392', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(337, 26, 'string', 'issue_date', '2017-03-23', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(338, 26, 'string', 'exp_date', '2024-10-13', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(339, 26, 'string', 'start_date', '2022-01-18', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(340, 26, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:08:34'),
(341, 26, 'string', 'econtact', 'Shreya Islam (+8808258304806)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(342, 27, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(343, 27, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(344, 27, 'string', 'first_name', 'Lin', NULL, '2025-06-15 21:02:40', '2025-06-15 21:07:54'),
(345, 27, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:40', '2025-06-15 21:07:54'),
(346, 27, 'string', 'last_name', 'Zhang', NULL, '2025-06-15 21:02:40', '2025-06-15 21:07:54'),
(347, 27, 'string', 'address', 'Tianjin, Tianjin', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(348, 27, 'string', 'phone', '21224029713423', NULL, '2025-06-15 21:02:40', '2025-06-15 21:07:54'),
(349, 27, 'string', 'phone_code', '+86', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(350, 27, 'string', 'emp_id', '63389', NULL, '2025-06-15 21:02:40', '2025-06-15 21:07:54'),
(351, 27, 'string', 'contract_number', '63389', NULL, '2025-06-15 21:02:40', '2025-06-15 21:07:54'),
(352, 27, 'string', 'license_number', 'LN52652919', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(353, 27, 'string', 'issue_date', '2015-02-21', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(354, 27, 'string', 'exp_date', '2027-09-25', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(355, 27, 'string', 'start_date', '2020-05-14', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(356, 27, 'string', 'gender', '1', NULL, '2025-06-15 21:02:40', '2025-06-15 21:07:54'),
(357, 27, 'string', 'econtact', 'Sanjay Sun (+8807778511070)', NULL, '2025-06-15 21:02:40', '2025-06-15 21:02:40'),
(358, 28, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(359, 28, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(360, 28, 'string', 'first_name', 'Priya', NULL, '2025-06-15 21:02:41', '2025-06-15 21:07:04'),
(361, 28, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:41', '2025-06-15 21:07:04'),
(362, 28, 'string', 'last_name', 'Patel', NULL, '2025-06-15 21:02:41', '2025-06-15 21:07:04'),
(363, 28, 'string', 'address', 'Chennai, Tamil Nadu', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(364, 28, 'string', 'phone', '2053615962234', NULL, '2025-06-15 21:02:41', '2025-06-15 21:07:04'),
(365, 28, 'string', 'phone_code', '+91', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(366, 28, 'string', 'emp_id', '77475', NULL, '2025-06-15 21:02:41', '2025-06-15 21:07:04'),
(367, 28, 'string', 'contract_number', '77475', NULL, '2025-06-15 21:02:41', '2025-06-15 21:07:04'),
(368, 28, 'string', 'license_number', 'LN60762398', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(369, 28, 'string', 'issue_date', '2015-06-21', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(370, 28, 'string', 'exp_date', '2027-02-22', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(371, 28, 'string', 'start_date', '2020-01-29', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(372, 28, 'string', 'end_date', '2022-10-21', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(373, 28, 'string', 'gender', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:07:04'),
(374, 28, 'string', 'econtact', 'Dong Magar (+8803056595503)', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(375, 29, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(376, 29, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(377, 29, 'string', 'first_name', 'Tao', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:34'),
(378, 29, 'string', 'middle_name', 'Xin', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:34'),
(379, 29, 'string', 'last_name', 'Zhao', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:34'),
(380, 29, 'string', 'address', 'Tianjin, Tianjin', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(381, 29, 'string', 'phone', '980208456324', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:34'),
(382, 29, 'string', 'phone_code', '+86', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(383, 29, 'string', 'emp_id', '75963', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:34'),
(384, 29, 'string', 'contract_number', '75963', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:34'),
(385, 29, 'string', 'license_number', 'LN74137525', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(386, 29, 'string', 'issue_date', '2015-08-23', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(387, 29, 'string', 'exp_date', '2026-10-27', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(388, 29, 'string', 'start_date', '2023-08-20', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(389, 29, 'string', 'end_date', '2024-03-26', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(390, 29, 'string', 'gender', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:34'),
(391, 29, 'string', 'econtact', 'Sneha Roy (+8803269506047)', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(392, 30, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(393, 30, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(394, 30, 'string', 'first_name', 'Zhang', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:08'),
(395, 30, 'NULL', 'middle_name', NULL, NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:08'),
(396, 30, 'string', 'last_name', 'Huang', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:08'),
(397, 30, 'string', 'address', 'Chengdu, Sichuan', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(398, 30, 'string', 'phone', '1332605849454', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:08'),
(399, 30, 'string', 'phone_code', '+86', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(400, 30, 'string', 'emp_id', '94440', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:08'),
(401, 30, 'string', 'contract_number', '94440', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:08'),
(402, 30, 'string', 'license_number', 'LN21061348', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(403, 30, 'string', 'issue_date', '2017-03-23', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(404, 30, 'string', 'exp_date', '2024-10-18', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(405, 30, 'string', 'start_date', '2020-04-20', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(406, 30, 'string', 'end_date', '2023-01-28', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(407, 30, 'string', 'gender', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:06:08'),
(408, 30, 'string', 'econtact', 'Hari Lama (+8802536220431)', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(409, 31, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(410, 31, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(411, 31, 'string', 'first_name', 'Li', NULL, '2025-06-15 21:02:41', '2025-06-15 21:05:41'),
(412, 31, 'string', 'middle_name', 'Jun', NULL, '2025-06-15 21:02:41', '2025-06-15 21:05:41'),
(413, 31, 'string', 'last_name', 'Li', NULL, '2025-06-15 21:02:41', '2025-06-15 21:05:41'),
(414, 31, 'string', 'address', 'Chongqing, Chongqing', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(415, 31, 'string', 'phone', '172583612121312', NULL, '2025-06-15 21:02:41', '2025-06-15 21:05:29'),
(416, 31, 'string', 'phone_code', '+86', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(417, 31, 'string', 'emp_id', '24141', NULL, '2025-06-15 21:02:41', '2025-06-15 21:05:29'),
(418, 31, 'string', 'contract_number', '24141', NULL, '2025-06-15 21:02:41', '2025-06-15 21:05:29'),
(419, 31, 'string', 'license_number', 'LN53814824', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(420, 31, 'string', 'issue_date', '2015-04-28', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(421, 31, 'string', 'exp_date', '2027-02-22', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(422, 31, 'string', 'start_date', '2020-05-14', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(423, 31, 'string', 'gender', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:05:29'),
(424, 31, 'string', 'econtact', 'Vikram Yang (+8806316181278)', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(425, 32, 'integer', 'is_active', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(426, 32, 'integer', 'is_available', '0', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(427, 32, 'string', 'first_name', 'Hasan', NULL, '2025-06-15 21:02:41', '2025-06-15 21:04:55'),
(428, 32, 'string', 'middle_name', 'Md.', NULL, '2025-06-15 21:02:41', '2025-06-15 21:04:55'),
(429, 32, 'string', 'last_name', 'Hossain', NULL, '2025-06-15 21:02:41', '2025-06-15 21:04:55'),
(430, 32, 'string', 'address', 'Sylhet, Sylhet Division', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(431, 32, 'string', 'phone', '617162988', NULL, '2025-06-15 21:02:41', '2025-06-15 21:04:55'),
(432, 32, 'string', 'phone_code', '+880', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(433, 32, 'string', 'emp_id', '79085', NULL, '2025-06-15 21:02:41', '2025-06-15 21:04:55'),
(434, 32, 'string', 'contract_number', '79085', NULL, '2025-06-15 21:02:41', '2025-06-15 21:04:55'),
(435, 32, 'string', 'license_number', 'LN20831820', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(436, 32, 'string', 'issue_date', '2016-02-18', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(437, 32, 'string', 'exp_date', '2021-05-19', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(438, 32, 'string', 'start_date', '2021-12-24', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(439, 32, 'string', 'gender', '1', NULL, '2025-06-15 21:02:41', '2025-06-15 21:04:55'),
(440, 32, 'string', 'econtact', 'Bibek Magar (+8805232883132)', NULL, '2025-06-15 21:02:41', '2025-06-15 21:02:41'),
(441, 32, 'string', 'driver_image', '24efd496-8152-4068-9624-8b604ffcf790.jpg', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(442, 32, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(443, 32, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(444, 32, 'string', 'id', '32', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(445, 32, 'string', 'edit', '1', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(446, 32, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(447, 32, 'string', 'user_id', '1', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(448, 32, 'string', 'email', 'hasan.hossain54@example.com', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(449, 32, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(450, 32, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(451, 32, 'string', 'driver_commision', '13', NULL, '2025-06-15 21:04:55', '2025-06-15 21:04:55'),
(452, 31, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(453, 31, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(454, 31, 'string', 'id', '31', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(455, 31, 'string', 'edit', '1', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(456, 31, 'string', 'detail_id', '31', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:41'),
(457, 31, 'string', 'user_id', '1', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(458, 31, 'string', 'email', 'li.li78@example.com', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(459, 31, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(460, 31, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(461, 31, 'string', 'driver_commision', '14', NULL, '2025-06-15 21:05:29', '2025-06-15 21:05:29'),
(462, 31, 'string', 'driver_image', 'cdebb737-1354-4493-82ad-9b21955be68a.jpg', NULL, '2025-06-15 21:05:41', '2025-06-15 21:05:41'),
(463, 30, 'string', 'driver_image', 'e5b832b9-56f6-431b-947c-79d25d798289.jpg', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(464, 30, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(465, 30, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(466, 30, 'string', 'id', '30', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(467, 30, 'string', 'edit', '1', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(468, 30, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(469, 30, 'string', 'user_id', '1', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(470, 30, 'string', 'email', 'zhang.huang17@example.com', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(471, 30, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(472, 30, 'string', 'driver_commision', '17', NULL, '2025-06-15 21:06:08', '2025-06-15 21:06:08'),
(473, 29, 'string', 'driver_image', 'c3498dfc-863b-4e77-b4b0-81833efa80cd.jpg', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(474, 29, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(475, 29, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(476, 29, 'string', 'id', '29', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(477, 29, 'string', 'edit', '1', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(478, 29, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(479, 29, 'string', 'user_id', '1', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(480, 29, 'string', 'email', 'tao.zhao15@example.com', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(481, 29, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(482, 29, 'string', 'driver_commision', '18', NULL, '2025-06-15 21:06:34', '2025-06-15 21:06:34'),
(483, 28, 'string', 'driver_image', '4ea98bef-cc5c-414d-8ab5-8e1766dfea61.jpg', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(484, 28, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(485, 28, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(486, 28, 'string', 'id', '28', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(487, 28, 'string', 'edit', '1', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(488, 28, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(489, 28, 'string', 'user_id', '1', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(490, 28, 'string', 'email', 'priya.patel16@example.com', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(491, 28, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(492, 28, 'string', 'driver_commision', '8', NULL, '2025-06-15 21:07:04', '2025-06-15 21:07:04'),
(493, 27, 'string', 'driver_image', '133376b1-0777-4bb8-bc00-46a81b6815f4.jpg', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(494, 27, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(495, 27, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(496, 27, 'string', 'id', '27', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(497, 27, 'string', 'edit', '1', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(498, 27, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(499, 27, 'string', 'user_id', '1', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(500, 27, 'string', 'email', 'lin.zhang32@example.com', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(501, 27, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(502, 27, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(503, 27, 'string', 'driver_commision', '7', NULL, '2025-06-15 21:07:54', '2025-06-15 21:07:54'),
(504, 26, 'string', 'driver_image', '900a9a06-6c9e-4030-baf7-e145a0616d8b.jpg', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(505, 26, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(506, 26, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(507, 26, 'string', 'id', '26', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(508, 26, 'string', 'edit', '1', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(509, 26, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(510, 26, 'string', 'user_id', '1', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(511, 26, 'string', 'email', 'vikram.yadav48@example.com', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(512, 26, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(513, 26, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(514, 26, 'string', 'driver_commision', '6', NULL, '2025-06-15 21:08:34', '2025-06-15 21:08:34'),
(515, 25, 'string', 'driver_image', 'f1fcbfbc-8229-4a05-b1a8-6c43febfc7b4.jpg', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(516, 25, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(517, 25, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(518, 25, 'string', 'id', '25', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(519, 25, 'string', 'edit', '1', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(520, 25, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(521, 25, 'string', 'user_id', '1', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(522, 25, 'string', 'email', 'jahan.bhuiyan13@example.com', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(523, 25, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(524, 25, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(525, 25, 'string', 'driver_commision', '7', NULL, '2025-06-15 21:09:00', '2025-06-15 21:09:00'),
(526, 24, 'string', 'driver_image', '6d2375f8-dbc7-4fab-b058-3d67ab437662.jpg', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(527, 24, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(528, 24, 'string', '_token', 'xgePLnbTaVP3ofeI9wmBcCRYJ3Fw5EPXeC0Wx6zZ', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(529, 24, 'string', 'id', '24', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(530, 24, 'string', 'edit', '1', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(531, 24, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(532, 24, 'string', 'user_id', '1', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(533, 24, 'string', 'email', 'nabin.sharma73@example.com', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(534, 24, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(535, 24, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(536, 24, 'string', 'driver_commision', '16', NULL, '2025-06-15 21:09:31', '2025-06-15 21:09:31'),
(537, 33, 'string', 'module', 'N;', NULL, '2025-06-15 21:10:43', '2025-06-15 21:10:43'),
(538, 33, 'string', 'language', 'English-en', NULL, '2025-06-15 21:10:43', '2025-06-15 21:10:43'),
(539, 33, 'string', 'first_name', 'SDLC', NULL, '2025-06-15 21:10:43', '2025-06-15 21:10:43'),
(540, 33, 'string', 'last_name', 'SDLC', NULL, '2025-06-15 21:10:43', '2025-06-15 21:10:43'),
(541, 1, 'string', 'first_name', 'Super', NULL, '2025-06-15 21:21:02', '2025-06-15 21:21:02'),
(542, 1, 'string', 'last_name', 'Administrator', NULL, '2025-06-15 21:21:02', '2025-06-15 21:21:02');
INSERT INTO `users_meta` (`id`, `user_id`, `type`, `key`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(543, 23, 'string', 'driver_image', 'd06b2a27-5b68-45c7-a620-4ae2c9900416.jpg', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(544, 23, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(545, 23, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(546, 23, 'string', 'id', '23', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(547, 23, 'string', 'edit', '1', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(548, 23, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(549, 23, 'string', 'user_id', '1', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(550, 23, 'string', 'email', 'mei.xu21@example.com', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(551, 23, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(552, 23, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(553, 23, 'string', 'driver_commision', '5', NULL, '2025-06-15 21:23:12', '2025-06-15 21:23:12'),
(554, 22, 'string', 'driver_image', 'e7781b38-79ff-4e5c-92da-4247e2beb1cb.jpg', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(555, 22, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(556, 22, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(557, 22, 'string', 'id', '22', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(558, 22, 'string', 'edit', '1', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(559, 22, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(560, 22, 'string', 'user_id', '1', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(561, 22, 'string', 'email', 'puja.rai27@example.com', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(562, 22, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(563, 22, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(564, 22, 'string', 'driver_commision', '10', NULL, '2025-06-15 21:23:44', '2025-06-15 21:23:44'),
(565, 21, 'string', 'driver_image', '779d470b-c406-4e90-bca9-f66e72a6678d.jpg', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(566, 21, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(567, 21, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(568, 21, 'string', 'id', '21', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(569, 21, 'string', 'edit', '1', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(570, 21, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(571, 21, 'string', 'user_id', '1', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(572, 21, 'string', 'email', 'fatima.sarkar26@example.com', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(573, 21, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(574, 21, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(575, 21, 'string', 'driver_commision', '4', NULL, '2025-06-15 21:24:21', '2025-06-15 21:24:21'),
(576, 20, 'string', 'driver_image', '8866e194-706c-42d1-8cb4-4af9516c0605.jpg', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(577, 20, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(578, 20, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(579, 20, 'string', 'id', '20', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(580, 20, 'string', 'edit', '1', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(581, 20, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(582, 20, 'string', 'user_id', '1', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(583, 20, 'string', 'email', 'raj.singh24@example.com', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(584, 20, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(585, 20, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(586, 20, 'string', 'driver_commision', '17', NULL, '2025-06-15 21:24:47', '2025-06-15 21:24:47'),
(587, 19, 'string', 'driver_image', '36411682-212b-4ee6-9c09-3c8a2f83d151.jpg', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(588, 19, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(589, 19, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(590, 19, 'string', 'id', '19', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(591, 19, 'string', 'edit', '1', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(592, 19, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(593, 19, 'string', 'user_id', '1', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(594, 19, 'string', 'email', 'kamal.begum52@example.com', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(595, 19, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(596, 19, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(597, 19, 'string', 'driver_commision', '12', NULL, '2025-06-15 21:25:10', '2025-06-15 21:25:10'),
(598, 18, 'string', 'driver_image', 'ea170342-ca91-4c99-803c-bd8ce904015a.jpg', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(599, 18, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(600, 18, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(601, 18, 'string', 'id', '18', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(602, 18, 'string', 'edit', '1', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(603, 18, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(604, 18, 'string', 'user_id', '1', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(605, 18, 'string', 'email', 'prashant.poudel51@example.com', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(606, 18, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(607, 18, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(608, 18, 'string', 'driver_commision', '8', NULL, '2025-06-15 21:25:42', '2025-06-15 21:25:42'),
(609, 17, 'string', 'driver_image', '3f983500-9f78-4039-85ac-8c15385a08c2.jpg', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(610, 17, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(611, 17, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(612, 17, 'string', 'id', '17', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(613, 17, 'string', 'edit', '1', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(614, 17, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(615, 17, 'string', 'user_id', '1', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(616, 17, 'string', 'email', 'prashant.basnet10@example.com', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(617, 17, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(618, 17, 'string', 'driver_commision', '20', NULL, '2025-06-15 21:26:02', '2025-06-15 21:26:02'),
(619, 16, 'string', 'driver_image', '78cc45dc-6196-4f6b-a29a-59eff0c3dea4.jpg', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(620, 16, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(621, 16, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(622, 16, 'string', 'id', '16', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(623, 16, 'string', 'edit', '1', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(624, 16, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(625, 16, 'string', 'user_id', '1', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(626, 16, 'string', 'email', 'tao.sun59@example.com', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(627, 16, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(628, 16, 'string', 'driver_commision', '17', NULL, '2025-06-15 21:26:21', '2025-06-15 21:26:21'),
(629, 15, 'string', 'driver_image', 'b9de2dea-2b99-4321-b79e-c3b987a67f86.jpg', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(630, 15, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(631, 15, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(632, 15, 'string', 'id', '15', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(633, 15, 'string', 'edit', '1', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(634, 15, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(635, 15, 'string', 'user_id', '1', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(636, 15, 'string', 'email', 'hasan.ali38@example.com', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(637, 15, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(638, 15, 'string', 'driver_commision_type', 'amount', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(639, 15, 'string', 'driver_commision', '1000', NULL, '2025-06-15 21:26:40', '2025-06-15 21:26:40'),
(640, 14, 'string', 'driver_image', '142b3a33-a685-440a-b914-b7c7bd664a4f.jpg', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(641, 14, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(642, 14, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(643, 14, 'string', 'id', '14', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(644, 14, 'string', 'edit', '1', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(645, 14, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(646, 14, 'string', 'user_id', '1', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(647, 14, 'string', 'email', 'hua.liu70@example.com', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(648, 14, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(649, 14, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(650, 14, 'string', 'driver_commision', '18', NULL, '2025-06-15 21:27:05', '2025-06-15 21:27:05'),
(651, 13, 'string', 'driver_image', 'b999d301-623d-4750-8727-528c2122b1da.jpg', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(652, 13, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(653, 13, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(654, 13, 'string', 'id', '13', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(655, 13, 'string', 'edit', '1', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(656, 13, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(657, 13, 'string', 'user_id', '1', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(658, 13, 'string', 'email', 'rahman.islam28@example.com', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(659, 13, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(660, 13, 'string', 'driver_commision_type', 'amount', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(661, 13, 'string', 'driver_commision', '1800', NULL, '2025-06-15 21:27:29', '2025-06-15 21:27:29'),
(662, 12, 'string', 'driver_image', '1626b9e7-22ac-4a06-b7aa-bb1fb86153cd.jpg', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(663, 12, 'string', '_method', 'PATCH', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(664, 12, 'string', '_token', 'dvJKQy2YO0LqpIwd5AFWFseYZm2tIrvminXVqYnB', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(665, 12, 'string', 'id', '12', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(666, 12, 'string', 'edit', '1', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(667, 12, 'NULL', 'detail_id', NULL, NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(668, 12, 'string', 'user_id', '1', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(669, 12, 'string', 'email', 'asha.gurung76@example.com', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(670, 12, 'NULL', 'end_date', NULL, NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(671, 12, 'string', 'driver_commision_type', 'percent', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(672, 12, 'string', 'driver_commision', '3', NULL, '2025-06-15 21:27:58', '2025-06-15 21:27:58'),
(673, 34, 'string', 'first_name', 'Sudip', NULL, '2025-06-15 22:39:15', '2025-06-15 22:39:15'),
(674, 34, 'string', 'last_name', 'Rijal', NULL, '2025-06-15 22:39:15', '2025-06-15 22:39:15'),
(675, 34, 'string', 'address', '1080', NULL, '2025-06-15 22:39:15', '2025-06-15 22:39:15'),
(676, 34, 'string', 'mobno', '24912312312312', NULL, '2025-06-15 22:39:15', '2025-06-15 22:39:15'),
(677, 34, 'string', 'gender', '1', NULL, '2025-06-15 22:39:15', '2025-06-15 22:39:55'),
(678, 34, 'integer', 'login_status', '1', NULL, '2025-06-15 22:39:33', '2025-06-15 23:28:25'),
(679, 35, 'string', 'first_name', 'PeiJung', NULL, '2025-06-16 00:50:46', '2025-06-16 00:50:46'),
(680, 35, 'string', 'last_name', 'Hsieh', NULL, '2025-06-16 00:50:46', '2025-06-16 00:50:46'),
(681, 35, 'string', 'address', '15 Sunflower Lane, Taipei, Taiwan', NULL, '2025-06-16 00:50:46', '2025-06-16 00:50:46'),
(682, 35, 'string', 'mobno', '9876543210', NULL, '2025-06-16 00:50:46', '2025-06-16 00:50:46'),
(683, 35, 'string', 'gender', '0', NULL, '2025-06-16 00:50:46', '2025-06-16 00:50:46'),
(684, 36, 'string', 'first_name', 'Iqbal', NULL, '2025-06-16 00:51:23', '2025-06-16 00:51:23'),
(685, 36, 'string', 'last_name', 'Hossain', NULL, '2025-06-16 00:51:23', '2025-06-16 00:51:23'),
(686, 36, 'string', 'address', '23 Greenview St, Dhaka, Bangladesh', NULL, '2025-06-16 00:51:23', '2025-06-16 00:51:23'),
(687, 36, 'string', 'mobno', '8765432109', NULL, '2025-06-16 00:51:23', '2025-06-16 00:51:23'),
(688, 36, 'string', 'gender', '1', NULL, '2025-06-16 00:51:23', '2025-06-16 00:51:23'),
(689, 37, 'string', 'first_name', 'Moumita', NULL, '2025-06-16 00:52:13', '2025-06-16 00:52:13'),
(690, 37, 'string', 'last_name', 'Nag', NULL, '2025-06-16 00:52:13', '2025-06-16 00:52:13'),
(691, 37, 'string', 'address', '78 Park Avenue, Kolkata, India', NULL, '2025-06-16 00:52:13', '2025-06-16 00:52:13'),
(692, 37, 'string', 'mobno', '7654321098', NULL, '2025-06-16 00:52:13', '2025-06-16 00:52:13'),
(693, 37, 'string', 'gender', '0', NULL, '2025-06-16 00:52:13', '2025-06-16 00:52:13'),
(694, 38, 'string', 'first_name', 'Sudip', NULL, '2025-06-16 00:52:54', '2025-06-16 00:52:54'),
(695, 38, 'string', 'last_name', 'Rijal', NULL, '2025-06-16 00:52:54', '2025-06-16 00:52:54'),
(696, 38, 'string', 'address', '45 Everest Road, Kathmandu, Nepal', NULL, '2025-06-16 00:52:54', '2025-06-16 00:52:54'),
(697, 38, 'string', 'mobno', '6543210987', NULL, '2025-06-16 00:52:54', '2025-06-16 00:52:54'),
(698, 38, 'string', 'gender', '1', NULL, '2025-06-16 00:52:54', '2025-06-16 00:52:54'),
(699, 39, 'string', 'first_name', 'Wen', NULL, '2025-06-16 00:53:38', '2025-06-16 00:53:38'),
(700, 39, 'string', 'last_name', 'Zhang', NULL, '2025-06-16 00:53:38', '2025-06-16 00:53:38'),
(701, 39, 'string', 'address', '66 Bamboo St, Beijing, China', NULL, '2025-06-16 00:53:38', '2025-06-16 00:53:38'),
(702, 39, 'string', 'mobno', '5432109876', NULL, '2025-06-16 00:53:38', '2025-06-16 00:53:38'),
(703, 39, 'string', 'gender', '1', NULL, '2025-06-16 00:53:38', '2025-06-16 00:53:38'),
(704, 40, 'string', 'first_name', 'Amir', NULL, '2025-06-16 00:54:13', '2025-06-16 00:54:13'),
(705, 40, 'string', 'last_name', 'Chowdhury', NULL, '2025-06-16 00:54:13', '2025-06-16 00:54:13'),
(706, 40, 'string', 'address', '89 River Lane, Chattogram, Bangladesh', NULL, '2025-06-16 00:54:13', '2025-06-16 00:54:13'),
(707, 40, 'string', 'mobno', '4321098765', NULL, '2025-06-16 00:54:13', '2025-06-16 00:54:13'),
(708, 40, 'string', 'gender', '1', NULL, '2025-06-16 00:54:13', '2025-06-16 00:54:13'),
(709, 41, 'string', 'first_name', 'Priya', NULL, '2025-06-16 00:54:47', '2025-06-16 00:54:47'),
(710, 41, 'string', 'last_name', 'Mehta', NULL, '2025-06-16 00:54:47', '2025-06-16 00:54:47'),
(711, 41, 'string', 'address', '12 Lotus Path, Mumbai, India', NULL, '2025-06-16 00:54:47', '2025-06-16 00:54:47'),
(712, 41, 'string', 'mobno', '3210987654', NULL, '2025-06-16 00:54:47', '2025-06-16 00:54:47'),
(713, 41, 'string', 'gender', '0', NULL, '2025-06-16 00:54:47', '2025-06-16 00:54:47'),
(714, 42, 'string', 'first_name', 'Hao', NULL, '2025-06-16 00:55:21', '2025-06-16 00:55:21'),
(715, 42, 'string', 'last_name', 'Chen', NULL, '2025-06-16 00:55:21', '2025-06-16 00:55:21'),
(716, 42, 'string', 'address', '99 Orchid Rd, Shanghai, China', NULL, '2025-06-16 00:55:21', '2025-06-16 00:55:21'),
(717, 42, 'string', 'mobno', '2109876543', NULL, '2025-06-16 00:55:21', '2025-06-16 00:55:21'),
(718, 42, 'string', 'gender', '1', NULL, '2025-06-16 00:55:21', '2025-06-16 00:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `make_name` varchar(100) DEFAULT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  `color_name` varchar(100) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `lic_exp_date` date DEFAULT NULL,
  `reg_exp_date` date DEFAULT NULL,
  `vehicle_image` varchar(255) DEFAULT NULL,
  `engine_type` varchar(255) DEFAULT NULL,
  `horse_power` varchar(255) DEFAULT NULL,
  `vin` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) NOT NULL,
  `mileage` int(11) DEFAULT NULL,
  `in_service` tinyint(4) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `int_mileage` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `make_name`, `model_name`, `color_name`, `year`, `group_id`, `lic_exp_date`, `reg_exp_date`, `vehicle_image`, `engine_type`, `horse_power`, `vin`, `license_plate`, `mileage`, `in_service`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `int_mileage`, `type_id`) VALUES
(1, 'Tata', 'Tiago', 'Red', '2015', 1, '2022-07-28', '2022-04-19', '6e6d881f-2533-4c6a-b3d6-fc9a19cd8f1f.png', 'Petrol', '190', '2342342', '9191bh', 45464, 1, 1, '2021-11-20 07:03:50', '2025-06-16 01:17:22', NULL, 50, 2),
(2, 'Maruti', 'Suzuki', 'Blue', '2012', 1, '2022-11-20', '2022-02-18', 'car1.png', 'Petrol', '150', '124578', '1245ab', 45464, 1, 1, '2021-11-20 07:03:50', '2021-11-20 07:03:50', NULL, 40, 3),
(3, 'Toyota', 'Truck', 'Red', '2022', 1, '2027-11-10', '2026-12-12', '5de9f30b-b7e5-4352-927a-a80b338de5d3.png', 'Diesel', '200', '1FTSW21R08EB34970', 'AB1234CD', NULL, 1, 1, '2025-06-16 01:23:07', '2025-06-16 01:27:09', NULL, 10000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_meta`
--

CREATE TABLE `vehicles_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'null',
  `key` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vehicles_meta`
--

INSERT INTO `vehicles_meta` (`id`, `vehicle_id`, `type`, `key`, `value`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'integer', 'driver_id', '6', NULL, '2021-11-20 07:03:50', '2021-11-20 07:03:50'),
(2, 1, 'string', 'average', '35.45', NULL, '2021-11-20 07:03:50', '2025-06-16 01:15:47'),
(3, 1, 'string', 'ins_number', '70651', NULL, '2021-11-20 07:03:50', '2021-11-20 07:03:50'),
(4, 1, 'string', 'ins_exp_date', '2022-05-29', NULL, '2021-11-20 07:03:50', '2021-11-20 07:03:50'),
(5, 2, 'string', 'average', '42.5', NULL, '2021-11-20 07:03:50', '2025-06-16 01:43:41'),
(6, 2, 'string', 'ins_number', '36945', NULL, '2021-11-20 07:03:50', '2021-11-20 07:03:50'),
(7, 2, 'string', 'ins_exp_date', '2022-05-29', NULL, '2021-11-20 07:03:50', '2021-11-20 07:03:50'),
(8, 2, 'integer', 'driver_id', '8', NULL, '2021-11-22 23:02:01', '2021-11-22 23:02:01'),
(9, 1, 'string', 'traccar_device_id', 'qid123', NULL, '2025-06-16 01:15:47', '2025-06-18 21:10:43'),
(10, 1, 'NULL', 'traccar_vehicle_id', NULL, NULL, '2025-06-16 01:15:47', '2025-06-16 01:15:47'),
(11, 1, 'string', 'luggage', '2', NULL, '2025-06-16 01:15:47', '2025-06-16 01:15:47'),
(12, 1, 'string', 'price', '0', NULL, '2025-06-16 01:15:47', '2025-06-16 01:15:47'),
(13, 1, 'string', 'udf', 'N;', NULL, '2025-06-16 01:15:47', '2025-06-16 01:15:47'),
(14, 3, 'string', 'ins_number', '', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(15, 3, 'string', 'ins_exp_date', '', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(16, 3, 'string', 'documents', '', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(17, 3, 'string', 'traccar_device_id', 'sid123', NULL, '2025-06-16 01:23:07', '2025-06-18 21:10:18'),
(18, 3, 'NULL', 'traccar_vehicle_id', NULL, NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(19, 3, 'string', 'assign_driver_id', '18', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(20, 3, 'string', 'luggage', '5 bags', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(21, 3, 'string', 'price', '800', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(22, 3, 'string', 'udf', 'N;', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(23, 3, 'string', 'average', '10', NULL, '2025-06-16 01:23:07', '2025-06-16 01:23:07'),
(24, 2, 'string', 'traccar_device_id', 'pid123', NULL, '2025-06-16 01:43:41', '2025-06-18 21:10:31'),
(25, 2, 'NULL', 'traccar_vehicle_id', NULL, NULL, '2025-06-16 01:43:41', '2025-06-16 01:43:41'),
(26, 2, 'string', 'luggage', '1', NULL, '2025-06-16 01:43:41', '2025-06-16 01:43:41'),
(27, 2, 'string', 'price', '200', NULL, '2025-06-16 01:43:41', '2025-06-16 01:43:41'),
(28, 2, 'string', 'udf', 'N;', NULL, '2025-06-16 01:43:41', '2025-06-16 01:43:41'),
(29, 2, 'string', 'assign_driver_id', '16', NULL, '2025-06-16 01:44:26', '2025-06-16 01:44:26'),
(30, 1, 'string', 'assign_driver_id', '22', NULL, '2025-06-16 01:44:42', '2025-06-16 01:44:42'),
(31, 3, 'string', 'purchase_info', 'a:1:{i:0;a:2:{s:8:\"exp_name\";s:12:\"ChasisRepair\";s:10:\"exp_amount\";s:4:\"1250\";}}', NULL, '2025-06-16 01:46:24', '2025-06-16 01:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_breakdown`
--

CREATE TABLE `vehicle_breakdown` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vehicle_breakdown`
--

INSERT INTO `vehicle_breakdown` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mechanical Failure', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(2, 'Electrical issues', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(3, 'Fuel Shortage', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(4, 'Tire puncture or flat tire', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL),
(5, 'Overheating', '2024-08-23 12:28:30', '2024-08-23 09:12:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_group`
--

CREATE TABLE `vehicle_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vehicle_group`
--

INSERT INTO `vehicle_group` (`id`, `user_id`, `name`, `description`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Default', 'Default vehicle group', 'Default vehicle group', NULL, '2021-11-20 07:03:49', '2021-11-20 07:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_review`
--

CREATE TABLE `vehicle_review` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `kms_outgoing` int(11) DEFAULT NULL,
  `kms_incoming` int(11) DEFAULT NULL,
  `fuel_level_out` int(11) DEFAULT NULL,
  `fuel_level_in` int(11) DEFAULT NULL,
  `datetime_outgoing` datetime DEFAULT NULL,
  `datetime_incoming` datetime DEFAULT NULL,
  `petrol_card` text DEFAULT NULL,
  `lights` text DEFAULT NULL,
  `invertor` text DEFAULT NULL,
  `car_mats` text DEFAULT NULL,
  `int_damage` text DEFAULT NULL,
  `int_lights` text DEFAULT NULL,
  `ext_car` text DEFAULT NULL,
  `tyre` text DEFAULT NULL,
  `ladder` text DEFAULT NULL,
  `leed` text DEFAULT NULL,
  `power_tool` text DEFAULT NULL,
  `ac` text DEFAULT NULL,
  `head_light` text DEFAULT NULL,
  `lock` text DEFAULT NULL,
  `windows` text DEFAULT NULL,
  `condition` text DEFAULT NULL,
  `oil_chk` text DEFAULT NULL,
  `suspension` text DEFAULT NULL,
  `tool_box` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `udf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vehicle_review`
--

INSERT INTO `vehicle_review` (`id`, `vehicle_id`, `user_id`, `reg_no`, `kms_outgoing`, `kms_incoming`, `fuel_level_out`, `fuel_level_in`, `datetime_outgoing`, `datetime_incoming`, `petrol_card`, `lights`, `invertor`, `car_mats`, `int_damage`, `int_lights`, `ext_car`, `tyre`, `ladder`, `leed`, `power_tool`, `ac`, `head_light`, `lock`, `windows`, `condition`, `oil_chk`, `suspension`, `tool_box`, `image`, `deleted_at`, `created_at`, `updated_at`, `udf`) VALUES
(1, 2, 8, '875', 15, 65, 3, 1, '2019-12-09 00:00:00', '1977-04-28 00:00:00', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:20:\"Omnis facere aut cil\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:19:\"Obcaecati obcaecati\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:20:\"Quis doloremque repe\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:19:\"Fugit commodi quide\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:20:\"Numquam deserunt qui\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:20:\"Cupiditate dignissim\";}', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:19:\"Quibusdam dicta qui\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:19:\"Necessitatibus fuga\";}', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:20:\"Ut ut ullam omnis ad\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:20:\"Adipisci irure offic\";}', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:19:\"Fuga Aperiam quaera\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:20:\"Ea ea modi earum ali\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:20:\"Nisi dolor officia e\";}', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:19:\"Unde nisi culpa con\";}', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:20:\"Quisquam eiusmod deb\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:20:\"Ex in beatae consequ\";}', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:20:\"Do est ad et aliquid\";}', 'a:2:{s:4:\"flag\";s:1:\"0\";s:4:\"text\";s:19:\"Dolores ut eligendi\";}', 'a:2:{s:4:\"flag\";s:1:\"1\";s:4:\"text\";s:20:\"Doloremque dolores e\";}', NULL, NULL, '2021-11-22 23:02:36', '2021-11-22 23:02:36', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicletype` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `isenable` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `vehicletype`, `displayname`, `icon`, `isenable`, `seats`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hatchback', 'Hatchback', 'vehicle_type_1750035867.png', 1, 4, '2021-11-20 07:03:46', '2025-06-16 01:04:27', NULL),
(2, 'Sedan', 'Sedan', 'vehicle_type_1750035837.png', 1, 4, '2021-11-20 07:03:47', '2025-06-16 01:03:57', NULL),
(3, 'Mini van', 'Mini van', 'vehicle_type_1750035826.png', 1, 7, '2021-11-20 07:03:47', '2025-06-16 01:03:46', NULL),
(4, 'Saloon', 'Saloon', 'vehicle_type_1750035768.png', 1, 4, '2021-11-20 07:03:47', '2025-06-16 01:02:48', NULL),
(5, 'SUV', 'SUV', 'vehicle_type_1750035697.png', 1, 4, '2021-11-20 07:03:48', '2025-06-16 01:01:37', NULL),
(6, 'Bus', 'Bus', 'vehicle_type_1750035661.png', 1, 40, '2021-11-20 07:03:48', '2025-06-16 01:01:01', NULL),
(7, 'Truck', 'Truck', 'vehicle_type_1750035633.png', 1, 3, '2021-11-20 07:03:48', '2025-06-16 01:00:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `custom_type` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `udf` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `name`, `photo`, `type`, `website`, `custom_type`, `note`, `phone`, `address1`, `address2`, `city`, `province`, `email`, `deleted_at`, `created_at`, `updated_at`, `udf`, `country`, `postal_code`) VALUES
(1, 1, 'Prof. Hiram Kovacek', NULL, 'Fuel', 'http://www.example.com', NULL, 'default vendor', '04401670207973', '64150 Bonnie Way\nWest Nolan, MA 17783-5065', NULL, 'Satterfieldland', NULL, 'eladio99@example.org', NULL, '2021-11-20 07:04:11', '2021-11-20 07:04:11', NULL, NULL, NULL),
(2, 1, 'Melyssa Yost DDS', NULL, 'Parts', 'http://www.example.com', NULL, 'default vendor', '09923748210738', '3016 Newell Manors Suite 126\nWest Jackelineland, CO 52293-3742', NULL, 'West Raoul', NULL, 'williamson.melany@example.org', NULL, '2021-11-20 07:04:12', '2021-11-20 07:04:12', NULL, NULL, NULL),
(3, 1, 'AlphaMotors', NULL, 'Parts', 'alphamotors.com', NULL, 'Reliable supplier', '9876543210', '101', 'Elm Street', 'Toronto', 'Ontario', 'alpha@motors.com', NULL, '2025-06-16 02:09:22', '2025-06-16 02:09:22', 'N;', 'Canada', '1212121212'),
(4, 1, 'ZenithSupplies', NULL, 'Fuel', 'zenithsupply.com', NULL, 'Good quality', '8765432109', '202', 'Maple Ave', 'New York', 'New York', 'zenith@supply.com', NULL, '2025-06-16 02:12:36', '2025-06-16 02:12:36', 'N;', 'USA', '1212121212'),
(5, 1, 'HikariTech', NULL, 'machinaries', 'hikari-tech.com', NULL, 'Fast delivery', '7654321098', '309', 'Sakura Rd', 'Tokyo', 'Tokyo', 'hikari@tech.com', NULL, '2025-06-16 02:14:29', '2025-06-16 02:14:29', 'N;', 'Japan', '1212121212'),
(6, 1, 'RoyalAutoCare', NULL, 'Parts', 'royalautocare.com', NULL, 'Trusted vendor', '6543210987', '404', 'King Blvd', 'London', 'England', 'royal@autocare.com', NULL, '2025-06-16 02:15:53', '2025-06-16 02:15:53', 'N;', 'UK', '1212121212'),
(7, 1, 'GoldenWheels', NULL, 'Fuel', 'goldenwheels.com', NULL, 'Affordable prices', '5432109876', '505', 'Bay Street', 'Sydney', 'New South Wales', 'golden@wheels.com', NULL, '2025-06-16 02:16:57', '2025-06-16 02:16:57', 'N;', 'Australia', '1212121212');

-- --------------------------------------------------------

--
-- Table structure for table `work_orders`
--

CREATE TABLE `work_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `required_by` date DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meter` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mechanic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `work_orders`
--

INSERT INTO `work_orders` (`id`, `user_id`, `created_on`, `required_by`, `vehicle_id`, `vendor_id`, `price`, `status`, `description`, `meter`, `note`, `deleted_at`, `created_at`, `updated_at`, `mechanic_id`) VALUES
(1, 1, '2021-11-20', '2021-11-25', 2, 1, 2000.00, 'Pending', 'Sample work order', 1398, 'sample work order', NULL, '2021-11-20 07:04:12', '2021-11-20 07:04:12', 1),
(2, 1, '2021-11-20', '2021-11-25', 1, 2, 3000.00, 'Pending', 'Sample work order', 2389, 'sample work order', NULL, '2021-11-20 07:04:12', '2021-11-20 07:04:12', 2);

-- --------------------------------------------------------

--
-- Table structure for table `work_order_logs`
--

CREATE TABLE `work_order_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `required_by` date DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meter` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parts_price` double DEFAULT 0,
  `mechanic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_index` (`customer_id`);

--
-- Indexes for table `api_settings`
--
ALTER TABLE `api_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_settings_key_name_index` (`key_name`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_customer_id_driver_id_vehicle_id_user_id_index` (`customer_id`,`driver_id`,`vehicle_id`,`user_id`),
  ADD KEY `bookings_payment_status_index` (`payment`,`status`);

--
-- Indexes for table `bookings_meta`
--
ALTER TABLE `bookings_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_meta_booking_id_index` (`booking_id`),
  ADD KEY `bookings_meta_key_index` (`key`);

--
-- Indexes for table `booking_alerts`
--
ALTER TABLE `booking_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_income`
--
ALTER TABLE `booking_income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_income_booking_id_income_id_index` (`booking_id`,`income_id`);

--
-- Indexes for table `booking_payments`
--
ALTER TABLE `booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_quotation`
--
ALTER TABLE `booking_quotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_quotation_customer_id_user_id_vehicle_id_driver_id_index` (`customer_id`,`user_id`,`vehicle_id`,`driver_id`),
  ADD KEY `booking_quotation_status_payment_index` (`status`,`payment`);

--
-- Indexes for table `chat_settings`
--
ALTER TABLE `chat_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_services`
--
ALTER TABLE `company_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_alert`
--
ALTER TABLE `driver_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_logs`
--
ALTER TABLE `driver_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_logs_driver_id_vehicle_id_index` (`driver_id`,`vehicle_id`);

--
-- Indexes for table `driver_payments`
--
ALTER TABLE `driver_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_payments_driver_id_user_id_index` (`driver_id`,`user_id`);

--
-- Indexes for table `driver_vehicle`
--
ALTER TABLE `driver_vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_vehicle_driver_id_vehicle_id_index` (`driver_id`,`vehicle_id`);

--
-- Indexes for table `email_content`
--
ALTER TABLE `email_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_content_key_index` (`key`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_vehicle_id_exp_id_user_id_expense_type_index` (`vehicle_id`,`exp_id`,`user_id`,`expense_type`),
  ADD KEY `expense_type_index` (`type`),
  ADD KEY `expense_date_index` (`date`);

--
-- Indexes for table `expense_cat`
--
ALTER TABLE `expense_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_cat_name_type_index` (`name`,`type`);

--
-- Indexes for table `fare_settings`
--
ALTER TABLE `fare_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fare_settings_key_name_index` (`key_name`),
  ADD KEY `fare_settings_type_id_index` (`type_id`);

--
-- Indexes for table `frontend`
--
ALTER TABLE `frontend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_key_name_index` (`key_name`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fuel_vehicle_id_user_id_index` (`vehicle_id`,`user_id`),
  ADD KEY `fuel_date_index` (`date`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_vehicle_id_income_id_user_id_income_cat_index` (`vehicle_id`,`income_id`,`user_id`,`income_cat`),
  ADD KEY `income_date_index` (`date`);

--
-- Indexes for table `income_cat`
--
ALTER TABLE `income_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_cat_name_type_index` (`name`,`type`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_user` (`from_user`),
  ADD KEY `to_user` (`to_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_vehicle_id_customer_id_index` (`vehicle_id`,`customer_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  ADD KEY `notifications_type_index` (`type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_category_id_user_id_availability_index` (`category_id`,`user_id`,`availability`);

--
-- Indexes for table `parts_category`
--
ALTER TABLE `parts_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts_used`
--
ALTER TABLE `parts_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_used_part_id_work_id_index` (`part_id`,`work_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_settings_name_unique` (`name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notification`
--
ALTER TABLE `push_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notification_user_id_index` (`user_id`),
  ADD KEY `push_notification_user_type_index` (`user_type`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_booking_id_driver_id_index` (`user_id`,`booking_id`,`driver_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `service_items`
--
ALTER TABLE `service_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_reminder`
--
ALTER TABLE `service_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_reminder_vehicle_id_service_id_index` (`vehicle_id`,`service_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio_settings`
--
ALTER TABLE `twilio_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `twilio_settings_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_type_index` (`user_type`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_meta_user_id_index` (`user_id`),
  ADD KEY `users_meta_key_index` (`key`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_group_id_type_id_user_id_in_service_index` (`group_id`,`type_id`,`user_id`,`in_service`),
  ADD KEY `vehicles_lic_exp_date_reg_exp_date_index` (`lic_exp_date`,`reg_exp_date`),
  ADD KEY `vehicles_license_plate_index` (`license_plate`);

--
-- Indexes for table `vehicles_meta`
--
ALTER TABLE `vehicles_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_meta_vehicle_id_index` (`vehicle_id`),
  ADD KEY `vehicles_meta_key_index` (`key`);

--
-- Indexes for table `vehicle_breakdown`
--
ALTER TABLE `vehicle_breakdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_group`
--
ALTER TABLE `vehicle_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_review`
--
ALTER TABLE `vehicle_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_review_vehicle_id_user_id_index` (`vehicle_id`,`user_id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendors_type_index` (`type`);

--
-- Indexes for table `work_orders`
--
ALTER TABLE `work_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_orders_vehicle_id_vendor_id_index` (`vehicle_id`,`vendor_id`),
  ADD KEY `work_orders_status_index` (`status`);

--
-- Indexes for table `work_order_logs`
--
ALTER TABLE `work_order_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_order_logs_vehicle_id_vendor_id_index` (`vehicle_id`,`vendor_id`),
  ADD KEY `work_order_logs_status_index` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_settings`
--
ALTER TABLE `api_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings_meta`
--
ALTER TABLE `bookings_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `booking_alerts`
--
ALTER TABLE `booking_alerts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_income`
--
ALTER TABLE `booking_income`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_payments`
--
ALTER TABLE `booking_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_quotation`
--
ALTER TABLE `booking_quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_settings`
--
ALTER TABLE `chat_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_services`
--
ALTER TABLE `company_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver_alert`
--
ALTER TABLE `driver_alert`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `driver_logs`
--
ALTER TABLE `driver_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `driver_payments`
--
ALTER TABLE `driver_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_vehicle`
--
ALTER TABLE `driver_vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_content`
--
ALTER TABLE `email_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense_cat`
--
ALTER TABLE `expense_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fare_settings`
--
ALTER TABLE `fare_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `frontend`
--
ALTER TABLE `frontend`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `income_cat`
--
ALTER TABLE `income_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parts_category`
--
ALTER TABLE `parts_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parts_used`
--
ALTER TABLE `parts_used`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `push_notification`
--
ALTER TABLE `push_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_items`
--
ALTER TABLE `service_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_reminder`
--
ALTER TABLE `service_reminder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `twilio_settings`
--
ALTER TABLE `twilio_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles_meta`
--
ALTER TABLE `vehicles_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `vehicle_breakdown`
--
ALTER TABLE `vehicle_breakdown`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_group`
--
ALTER TABLE `vehicle_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_review`
--
ALTER TABLE `vehicle_review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `work_orders`
--
ALTER TABLE `work_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_order_logs`
--
ALTER TABLE `work_order_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
