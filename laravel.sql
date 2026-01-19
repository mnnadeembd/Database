-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2026 at 08:56 AM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `lav_attendances`
--

CREATE TABLE `lav_attendances` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `status` enum('Present','Absent','Late') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_attendances`
--

INSERT INTO `lav_attendances` (`id`, `employee_id`, `date`, `check_in`, `check_out`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-01', '09:05:00', '17:00:00', 'Late', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(2, 2, '2024-01-01', '09:00:00', '17:00:00', 'Present', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(3, 3, '2024-01-01', '09:15:00', '17:00:00', 'Late', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(4, 4, '2024-01-01', '09:00:00', '17:00:00', 'Present', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(5, 5, '2024-01-01', '09:00:00', '17:00:00', 'Present', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(6, 6, '2024-01-01', NULL, NULL, 'Absent', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(7, 7, '2024-01-01', '09:10:00', '17:00:00', 'Late', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(8, 8, '2024-01-01', '09:00:00', '17:00:00', 'Present', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(9, 9, '2024-01-01', '09:00:00', '17:00:00', 'Present', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(10, 10, '2024-01-01', '09:20:00', '17:00:00', 'Late', '2025-12-28 05:00:07', '2026-01-12 05:08:17'),
(11, 1, '2026-01-12', '05:08:22', '05:09:45', 'Present', '2026-01-11 23:08:22', '2026-01-11 23:09:45'),
(12, 2, '2026-01-12', '06:21:01', '06:21:34', 'Present', '2026-01-12 00:21:01', '2026-01-12 00:21:34'),
(13, 11, '2026-01-12', '06:30:43', '06:31:10', 'Present', '2026-01-12 00:30:43', '2026-01-12 00:31:10'),
(14, 12, '2026-01-12', '06:30:43', '06:31:10', 'Present', '2026-01-12 00:30:43', '2026-01-12 00:31:10'),
(15, 13, '2026-01-12', '06:30:43', '06:31:10', 'Present', '2026-01-12 00:30:43', '2026-01-12 00:31:10'),
(16, 8, '2026-01-18', '05:41:55', NULL, 'Present', '2026-01-17 23:41:55', '2026-01-17 23:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `lav_cache`
--

CREATE TABLE `lav_cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lav_cache`
--

INSERT INTO `lav_cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-mnnadeembd@gmail.co|127.0.0.1', 'i:1;', 1768798302),
('laravel-cache-mnnadeembd@gmail.co|127.0.0.1:timer', 'i:1768798302;', 1768798302);

-- --------------------------------------------------------

--
-- Table structure for table `lav_cache_locks`
--

CREATE TABLE `lav_cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lav_customers`
--

CREATE TABLE `lav_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lav_customers`
--

INSERT INTO `lav_customers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Daren Kertzmann', 'bertrand.haag@example.net', '+1.518.430.5113', '43208 Wava Forge Suite 885\nLake Arnold, PA 61021-0942', '0', '2025-12-19 22:10:06', '2025-12-19 22:10:06'),
(2, 'Demetrius Feest', 'luis.vonrueden@example.org', '+1-743-409-3470', '52005 Luciano Canyon Suite 617\nNorth Cedrickton, AZ 96353-0840', '0', '2025-12-19 22:10:06', '2025-12-19 22:10:06'),
(3, 'Elbert Harvey', 'cletus22@example.org', '(620) 609-3892', '6362 Dax Row\nEast Heidiland, WI 56262-2035', '0', '2025-12-19 22:10:06', '2025-12-19 22:10:06'),
(4, 'Turner Konopelski', 'mills.orval@example.net', '618.881.0523', '20784 Vivien Road Suite 427\nHiramborough, WA 67458', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(5, 'Jordi Kuphal', 'harris.irving@example.org', '1-765-983-2506', '61671 Katheryn Wells Apt. 695\nNew Dock, SD 44690', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(6, 'Franco Wiegand', 'monica.hane@example.net', '1-660-515-3242', '9419 Little River Apt. 725\nDarionside, PA 88684', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(7, 'Jamison Huels', 'russ.cartwright@example.com', '+16805138664', '7398 Schuster Fall Suite 207\nRubenburgh, ME 43412-1934', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(8, 'Winifred Lang', 'vidal18@example.com', '+1.321.862.3121', '177 Upton Rapid Apt. 457\nCandaceview, DC 34453', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(9, 'Raegan Lesch Jr.', 'tanner23@example.org', '727-550-9422', '872 Sawayn Land Suite 419\nTheaville, MI 39008-3924', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(10, 'Miss Alayna Aufderhar', 'jude.deckow@example.com', '1-520-297-2289', '166 Jast Overpass Apt. 662\nWest Chadrick, WV 64084', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(11, 'Dr. Sophia Wilkinson Jr.', 'hane.chauncey@example.net', '+1-754-650-1410', '4695 Felicia Fort Suite 329\nEast Jessiemouth, MA 70033-6485', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(12, 'Willow Hills', 'davis.kale@example.org', '+1-820-718-7890', '135 Ayla Mews Suite 977\nGenevievetown, KS 89055', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(13, 'Makenna Casper', 'rudolph47@example.com', '941.470.5278', '196 Bethany Well\nKesslerhaven, NC 18432', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(14, 'Mr. Raoul Trantow II', 'mary30@example.org', '984-335-1325', '20942 McLaughlin Manor\nPort Lorenzoside, FL 08753-6742', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(15, 'Brooks Rosenbaum DVM', 'krunolfsdottir@example.net', '+1.903.864.9309', '67580 Jane Ridge Apt. 392\nLynchshire, SC 12613-9299', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(16, 'Berniece Nader DDS', 'bwiza@example.com', '+15208736328', '558 Malvina Views\nMaeveshire, TN 42399-2418', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(17, 'Jakayla Brown', 'noble.frami@example.net', '223.574.0371', '519 Clint Fords\nEast Giles, AZ 72719', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(18, 'Myrtis DuBuque', 'lemuel.hahn@example.com', '(605) 555-4160', '73501 Greenholt Shoals\nWest Georgettefort, WV 15935-9745', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(19, 'Maeve DuBuque MD', 'smills@example.com', '+1-252-845-2927', '136 Kaelyn Stravenue\nNew Brandyton, VT 08274-7633', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(20, 'Izaiah Konopelski', 'roberta.corwin@example.com', '1-539-523-4056', '304 Theresia Circle\nEsmeraldaville, OR 65528', '0', '2025-12-19 22:10:07', '2025-12-19 22:10:07'),
(21, 'Rashedul Islam', 'rashed@pondint.com', '01745222233', 'Nilkhet, Newmarket, Dhaka', 'nadeem (1).jpg', '2025-12-19 22:27:02', '2025-12-19 22:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `lav_departments`
--

CREATE TABLE `lav_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_departments`
--

INSERT INTO `lav_departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Human Resource', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(2, 'IT', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(3, 'Accounts', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(4, 'Marketing', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(5, 'Sales', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(6, 'Support', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(7, 'Administration', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(8, 'Operations', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(9, 'Finance', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(10, 'Security', '2025-12-23 06:07:49', '2026-01-12 03:14:54'),
(11, 'PPC', '2026-01-11 21:15:00', '2026-01-11 21:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `lav_designations`
--

CREATE TABLE `lav_designations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `salarie_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_designations`
--

INSERT INTO `lav_designations` (`id`, `name`, `salarie_id`, `created_at`) VALUES
(1, 'Manager', 1, '2025-12-23 06:09:42'),
(2, 'Assistant Manager', 2, '2025-12-23 06:09:42'),
(3, 'Senior Officer', 3, '2025-12-23 06:09:42'),
(4, 'Junior Officer', 4, '2025-12-23 06:09:42'),
(5, 'Executive', 5, '2025-12-23 06:09:42'),
(6, 'Accountant', 3, '2025-12-23 06:09:42'),
(7, 'HR Officer', 3, '2025-12-23 06:09:42'),
(8, 'Developer', 5, '2025-12-23 06:09:42'),
(9, 'Designer', 6, '2025-12-23 06:09:42'),
(10, 'Intern', 10, '2025-12-23 06:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `lav_employees`
--

CREATE TABLE `lav_employees` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `joining_date` timestamp NULL DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_employees`
--

INSERT INTO `lav_employees` (`id`, `user_id`, `department_id`, `designation_id`, `phone`, `photo`, `present_address`, `permanent_address`, `salary`, `joining_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 7, 1, '01712678923', 'uploads/employees/9ZGqdOH7jypDyxXMVDaACzXRpeMha2dQxinuawNA.jpg', 'Nandail, Mymensingh', 'Zigatola, Dhaka', 45000.00, '2024-01-01 18:00:00', 'Active', '2026-01-18 01:55:19', '2026-01-18 01:55:19'),
(2, 3, 7, 2, '01571231031', NULL, 'New Market, Dhaka', 'Gaibandha, Rangpur', 32000.00, '2024-06-30 18:00:00', 'Active', '2026-01-18 21:42:52', '2026-01-18 21:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `lav_failed_jobs`
--

CREATE TABLE `lav_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lav_jobs`
--

CREATE TABLE `lav_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lav_job_batches`
--

CREATE TABLE `lav_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lav_leaves`
--

CREATE TABLE `lav_leaves` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `reason` text NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT NULL,
  `approved_by` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_leaves`
--

INSERT INTO `lav_leaves` (`id`, `employee_id`, `leave_type_id`, `reason`, `start_date`, `end_date`, `status`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'This leave for personal issue.', '2026-01-19', '2026-01-22', 'Pending', NULL, '2026-01-18 01:58:05', '2026-01-18 01:58:05'),
(2, 1, 6, 'This leave for my personal emergency.', '2026-01-31', '2026-02-02', 'Pending', NULL, '2026-01-18 02:01:29', '2026-01-18 02:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `lav_leave_types`
--

CREATE TABLE `lav_leave_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_leave_types`
--

INSERT INTO `lav_leave_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Casual Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(2, 'Sick Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(3, 'Annual Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(4, 'Maternity Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(6, 'Emergency Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(7, 'Medical Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(8, 'Study Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(9, 'Unpaid Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(10, 'Special Leave', '2025-12-28 05:00:48', '2026-01-04 05:03:01'),
(12, 'Paternity Leave', '2026-01-03 23:27:37', '2026-01-03 23:27:37'),
(13, 'Others', '2026-01-03 23:28:06', '2026-01-04 00:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `lav_migrations`
--

CREATE TABLE `lav_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lav_migrations`
--

INSERT INTO `lav_migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_11_040647_create_customers_table', 1),
(5, '2025_12_20_050910_create_products_table', 2),
(6, '2025_12_21_034942_create_schools_table', 3),
(7, '2026_01_11_041227_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `lav_password_reset_tokens`
--

CREATE TABLE `lav_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lav_payrollitems`
--

CREATE TABLE `lav_payrollitems` (
  `id` int(11) NOT NULL,
  `payroll_type_id` int(11) NOT NULL,
  `type` enum('Allowance','Deduction') NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_payrollitems`
--

INSERT INTO `lav_payrollitems` (`id`, `payroll_type_id`, `type`, `title`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'Allowance', 'House Rent', 2000.00, '2026-01-04 08:06:17', '2026-01-04 08:06:17'),
(2, 1, 'Allowance', 'Medical Allowance', 1000.00, '2026-01-04 08:06:17', '2026-01-04 08:06:17'),
(3, 2, 'Deduction', 'Late Penalty', 500.00, '2026-01-04 08:06:17', '2026-01-12 19:01:42'),
(4, 1, 'Allowance', 'Transport Allowance', 1500.00, '2026-01-04 08:06:17', '2026-01-12 19:01:57'),
(5, 2, 'Deduction', 'Tax', 2000.00, '2026-01-04 08:06:17', '2026-01-12 19:02:11'),
(6, 2, 'Deduction', 'Provident Fund', 1000.00, '2026-01-04 08:06:17', '2026-01-12 19:02:23'),
(7, 1, 'Allowance', 'Bonus', 2000.00, '2026-01-04 08:06:17', '2026-01-12 19:02:28'),
(8, 2, 'Deduction', 'Loan Deduction', 1500.00, '2026-01-04 08:06:17', '2026-01-12 19:02:33'),
(9, 2, 'Deduction', 'Absent Penalty', 4000.00, '2026-01-04 08:06:17', '2026-01-12 19:02:37'),
(10, 1, 'Allowance', 'Performance Bonus', 2000.00, '2026-01-04 08:06:17', '2026-01-12 19:02:46'),
(11, 1, 'Allowance', 'Basic Salary', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(12, 1, 'Allowance', 'House Rent Allowance (HRA)', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(13, 1, 'Allowance', 'Medical Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(14, 1, 'Allowance', 'Conveyance / Transport Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(15, 1, 'Allowance', 'Food / Lunch Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(16, 1, 'Allowance', 'Overtime', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(17, 1, 'Allowance', 'Bonus', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(18, 1, 'Allowance', 'Special Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(19, 1, 'Allowance', 'Mobile / Phone Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(20, 1, 'Allowance', 'Internet Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(21, 1, 'Allowance', 'Shift Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(22, 1, 'Allowance', 'Attendance Bonus', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(23, 1, 'Allowance', 'Performance Incentive', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(24, 1, 'Allowance', 'Commission', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(25, 1, 'Allowance', 'Project Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(26, 1, 'Allowance', 'Acting Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(27, 1, 'Allowance', 'Arrear / Salary Adjustment', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(28, 1, 'Allowance', 'Leave Encashment', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(29, 1, 'Allowance', 'Risk / Hazard Allowance', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(30, 1, 'Allowance', 'Travel / Tour Allowance (TA/DA)', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(31, 2, 'Deduction', 'Provident Fund', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(32, 2, 'Deduction', 'Tax (Income Tax)', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(33, 2, 'Deduction', 'Absent / Leave Deduction', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(34, 2, 'Deduction', 'Loan / Advance Deduction', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(35, 2, 'Deduction', 'Late Fine / Penalty', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(36, 2, 'Deduction', 'Salary Adjustment / Overpayment Recovery', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(37, 2, 'Deduction', 'Damage / Loss Recovery', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(38, 2, 'Deduction', 'Notice Period Deduction', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(39, 2, 'Deduction', 'Insurance Premium', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(40, 2, 'Deduction', 'Mobile / Internet Excess Bill', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(41, 2, 'Deduction', 'Cafeteria / Meal Deduction', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(42, 2, 'Deduction', 'Transport Deduction', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(43, 2, 'Deduction', 'Union / Association Fee', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(44, 2, 'Deduction', 'Training Cost Recovery', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(45, 2, 'Deduction', 'Equipment / Uniform Deduction', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(46, 2, 'Deduction', 'Leave Encashment Adjustment', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(47, 2, 'Deduction', 'Penalty for Policy Violation', 0.00, '2026-01-12 19:01:22', '2026-01-12 19:01:22'),
(48, 1, 'Allowance', 'Festival bonus', 200.00, '2026-01-12 23:28:53', '2026-01-12 23:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `lav_payrolls`
--

CREATE TABLE `lav_payrolls` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `salary_month` varchar(7) NOT NULL,
  `gross_salary` decimal(10,2) NOT NULL,
  `total_deduction` decimal(10,2) NOT NULL,
  `net_salary` decimal(10,2) NOT NULL,
  `payment_status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `payment_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_payrolls`
--

INSERT INTO `lav_payrolls` (`id`, `employee_id`, `salary_month`, `gross_salary`, `total_deduction`, `net_salary`, `payment_status`, `payment_date`, `created_at`, `updated_at`) VALUES
(1, 2, '2024-07', 53000.00, 7950.00, 45050.00, 'Approved', '2024-07-19', '2026-01-19 00:49:23', '2026-01-19 01:22:20'),
(2, 2, '2024-03', 42000.00, 2000.00, 40000.00, 'Approved', '2024-03-31', '2026-01-19 01:52:07', '2026-01-19 01:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `lav_payroll_details`
--

CREATE TABLE `lav_payroll_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('Allowance','Deduction') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lav_payroll_details`
--

INSERT INTO `lav_payroll_details` (`id`, `payroll_id`, `employee_id`, `payroll_item_id`, `type`, `title`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'Allowance', 'House Rent', 10000.00, '2026-01-19 00:49:23', '2026-01-19 00:49:23'),
(2, 1, 2, NULL, 'Allowance', 'Medical Allowance', 1000.00, '2026-01-19 00:49:23', '2026-01-19 00:49:23'),
(3, 1, 2, NULL, 'Allowance', 'Travel / Tour Allowance (TA/DA)', 10000.00, '2026-01-19 00:49:23', '2026-01-19 00:49:23'),
(4, 1, 2, NULL, 'Deduction', 'Tax (Income Tax)', 7950.00, '2026-01-19 00:49:23', '2026-01-19 00:49:23'),
(5, 1, 2, NULL, 'Allowance', 'Basic Salary', 32000.00, '2026-01-19 00:49:23', '2026-01-19 00:49:23'),
(6, 2, 2, NULL, 'Allowance', 'House Rent Allowance (HRA)', 10000.00, '2026-01-19 01:52:07', '2026-01-19 01:52:07'),
(7, 2, 2, NULL, 'Deduction', 'Tax', 2000.00, '2026-01-19 01:52:07', '2026-01-19 01:52:07'),
(8, 2, 2, NULL, 'Allowance', 'Basic Salary', 32000.00, '2026-01-19 01:52:07', '2026-01-19 01:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `lav_personal_access_tokens`
--

CREATE TABLE `lav_personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lav_products`
--

CREATE TABLE `lav_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lav_products`
--

INSERT INTO `lav_products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Bettie Runolfsson', 3382.00, 'Eligendi earum odio voluptates. Mollitia iure enim quo facilis culpa sit.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(2, 'Sasha Gibson', 2025.00, 'Maxime quaerat et commodi et et corporis. Voluptas aut et qui est rem perspiciatis quibusdam.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(3, 'Bruce Wiza', 2004.00, 'Cumque harum iure saepe consequatur quasi aut libero. Consequatur fugiat eum nisi est ut eos.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(4, 'Ms. Gabriella Schowalter', 653.00, 'Sit accusantium sed ullam voluptas nostrum beatae nihil nihil. In minus rerum blanditiis suscipit.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(5, 'Coty Gibson', 3815.00, 'Omnis earum rerum in repellendus ipsum. Dolores provident odit rerum ea.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(6, 'Isabella Bartoletti', 1490.00, 'Expedita sapiente accusamus possimus officiis mollitia ut. Et et sint non voluptas at labore.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(7, 'Dr. Don Weissnat', 3596.00, 'Ipsa aliquam qui quae repellat aliquid. Doloremque ea ea debitis. Culpa dolore unde sint quis.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(8, 'Ocie Dare', 757.00, 'Dolorum voluptas minima laboriosam corporis. Eum repellendus sequi vel omnis et ab in molestiae.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(9, 'Luigi Harris', 3881.00, 'Accusamus est consequatur adipisci. Sed vel eveniet sed architecto.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(10, 'Adriel Powlowski', 2122.00, 'Magnam dolore commodi blanditiis veniam veritatis. Aliquid excepturi est qui.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(11, 'Tanya Zemlak', 3350.00, 'Nulla sed alias doloribus odit. Autem quisquam eos eos inventore.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(12, 'Prof. Felton Crooks', 1519.00, 'Qui quam omnis libero adipisci asperiores. Cupiditate enim aut quas quas.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(13, 'Prof. Leatha Schuppe', 1730.00, 'Sint et rem dolorum animi fuga exercitationem. Qui reprehenderit consequatur et.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(14, 'Maida Pagac', 535.00, 'Aut accusantium quia ut quae. Nisi enim occaecati consequatur.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(15, 'Sigurd Adams', 806.00, 'Vel accusantium dolor et ut illum est est et. Atque in sit dolor atque.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(16, 'Randy Koelpin', 1243.00, 'Facere quaerat nihil et deleniti in laudantium. Et earum vel non.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(17, 'Miller Kuphal', 1717.00, 'Natus et sit vel voluptatum. Veniam in quos molestias qui dolore laudantium.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(18, 'Mrs. Winifred Schaefer', 2545.00, 'Non quaerat quod adipisci voluptate. Officiis doloremque ut similique sed consequatur.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(19, 'Aidan Schmeler', 2083.00, 'Repellat voluptates ut autem. Rerum sunt facere ipsam. Officia iste est recusandae architecto.', '2025-12-19 23:21:37', '2025-12-19 23:21:37'),
(20, 'Irwin Borer', 1937.00, 'Et fuga perspiciatis vitae eos officiis. Ex optio ea enim quo illo. Nulla et architecto ea.', '2025-12-19 23:21:37', '2025-12-19 23:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `lav_roles`
--

CREATE TABLE `lav_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `salarie_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_roles`
--

INSERT INTO `lav_roles` (`id`, `name`, `salarie_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, '2025-12-23 06:00:49', '2026-01-11 21:20:52'),
(2, 'HR Manager', 4, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(3, 'Accountant', 5, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(4, 'Product Manager', 6, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(5, 'Marketing Specialist', 4, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(6, 'Lead Designer', 6, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(7, 'UX/UI Designer', 6, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(8, 'Senior Developer', 5, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(9, 'Software Engineer', 4, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(10, 'Digital Marketing Lead', 5, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(11, 'Employee', 9, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(12, 'Intern', 10, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(13, 'Guest', 10, '2025-12-23 06:00:49', '2026-01-12 03:18:58'),
(14, 'Adviser', 10, '2026-01-11 21:20:35', '2026-01-17 23:26:49'),
(15, 'Member', 10, '2026-01-17 23:27:11', '2026-01-17 23:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `lav_salaries`
--

CREATE TABLE `lav_salaries` (
  `id` int(11) NOT NULL,
  `basic_salary` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_salaries`
--

INSERT INTO `lav_salaries` (`id`, `basic_salary`, `created_at`, `updated_at`) VALUES
(1, 45000.00, '2026-01-10 04:07:55', NULL),
(2, 40000.00, '2026-01-10 04:07:55', NULL),
(3, 35000.00, '2026-01-10 04:07:55', NULL),
(4, 32000.00, '2026-01-10 04:07:55', NULL),
(5, 30000.00, '2026-01-10 04:07:55', NULL),
(6, 29000.00, '2026-01-10 04:07:55', NULL),
(7, 28000.00, '2026-01-10 04:07:55', NULL),
(8, 27000.00, '2026-01-10 04:07:55', NULL),
(9, 26000.00, '2026-01-10 04:07:55', NULL),
(10, 15000.00, '2026-01-10 04:07:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lav_schools`
--

CREATE TABLE `lav_schools` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lav_schools`
--

INSERT INTO `lav_schools` (`id`, `name`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Imam Abu Hanifa Islamic School', 'Dhaka, Bangladesh', 'abuhanifa@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(2, 'Imam Malik Bin Anas Academy', 'Chattogram, Bangladesh', 'malik@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(3, 'Imam Shafi’i Education Center', 'Sylhet, Bangladesh', 'shafii@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(4, 'Imam Ahmad Ibn Hanbal School', 'Rajshahi, Bangladesh', 'hanbal@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(5, 'Hazrat Abdul Qadir Jilani Institute', 'Khulna, Bangladesh', 'jilani@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(6, 'Hazrat Rabia Basri School', 'Barishal, Bangladesh', 'rabia@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(7, 'Imam Ghazali Islamic Academy', 'Cumilla, Bangladesh', 'ghazali@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(8, 'Hazrat Bayazid Bostami School', 'Bogura, Bangladesh', 'bostami@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(9, 'Imam Bukhari Education Center', 'Mymensingh, Bangladesh', 'bukhari@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(10, 'Imam Muslim Islamic School', 'Narayanganj, Bangladesh', 'muslim@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(11, 'Hazrat Shah Jalal Academy', 'Sylhet, Bangladesh', 'shahjalal@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(12, 'Hazrat Shah Poran Institute', 'Sylhet, Bangladesh', 'shahporan@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(13, 'Imam Ibn Taymiyyah School', 'Dhaka, Bangladesh', 'taymiyyah@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(14, 'Hazrat Data Ganj Bakhsh Academy', 'Lahore Road, Bangladesh', 'dataganj@school.com', '2025-12-21 04:03:01', '2025-12-21 04:03:01'),
(16, 'Imam Hasan al-Basri School', 'Gazipur, Bangladesh', 'hasanbasri@school.com', '2025-12-20 23:36:53', '2025-12-20 23:36:53'),
(17, 'Imam Hasan al-Basri School', 'Gazipur, Bangladesh', 'hasanbasri@school.com', '2025-12-20 23:37:42', '2025-12-21 01:47:18'),
(19, 'Rashed', 'Newmarket', 'carussell507@gmail.com', '2025-12-30 01:22:37', '2025-12-30 01:22:37'),
(20, 'Rashed', 'Newmarket', 'carussell507@gmail.com', '2025-12-30 01:23:23', '2025-12-30 01:23:23'),
(21, 'Rashed', 'Newmarket', 'carussell507@gmail.com', '2025-12-30 01:23:47', '2025-12-30 01:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `lav_sessions`
--

CREATE TABLE `lav_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lav_sessions`
--

INSERT INTO `lav_sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NYSXQPeshFK7XDgvHLcgLauCsRNW3qQlRsWRItmd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiT21xS3IzUUVSN1k0akpWZmllRkk2RnVqRVo2eXpmUUlzUVBrdzVlZCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcGF5cm9sbC9wYXlzbGlwLzEiO3M6NToicm91dGUiO3M6MTU6InBheXJvbGwucGF5c2xpcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc2ODgwNzYyOTt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1768809283);

-- --------------------------------------------------------

--
-- Table structure for table `lav_users`
--

CREATE TABLE `lav_users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lav_users`
--

INSERT INTO `lav_users` (`id`, `role_id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 1, 'Md, Nuruzzaman Nadeem', 'mnnadeembd@gmail.com', '$2y$12$yw/SF3rVo/a/tRGhLKdJj.5wDxX.K0ogyjylD0W.OXYaAdjm9Keha', '2026-01-19 03:47:25', '2026-01-18 01:53:16'),
(2, 1, 'Md. Nuruzzaman Nadeem', 'mnnadeembd@yahoo.com', '$2y$12$SUJx0clb5cSMlrm.Q.IAAujl5hj1oPSLD/s4kr5RFFY8L4SUE.x8q', '2026-01-18 01:55:18', '2026-01-18 01:55:18'),
(3, 2, 'Md. Rashedul Islam', 'mdrashedulislam604@gmail.com', '$2y$12$jvIYpws9k3bHBYc/dYDf.eVMLME8oG1ILbffBqdJvbMlSvrGxCv2m', '2026-01-18 22:19:56', '2026-01-18 21:42:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lav_attendances`
--
ALTER TABLE `lav_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_cache`
--
ALTER TABLE `lav_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `lav_cache_locks`
--
ALTER TABLE `lav_cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `lav_customers`
--
ALTER TABLE `lav_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_departments`
--
ALTER TABLE `lav_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_designations`
--
ALTER TABLE `lav_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_employees`
--
ALTER TABLE `lav_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_failed_jobs`
--
ALTER TABLE `lav_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lav_failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lav_jobs`
--
ALTER TABLE `lav_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lav_jobs_queue_index` (`queue`);

--
-- Indexes for table `lav_job_batches`
--
ALTER TABLE `lav_job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_leaves`
--
ALTER TABLE `lav_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_leave_types`
--
ALTER TABLE `lav_leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_migrations`
--
ALTER TABLE `lav_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_password_reset_tokens`
--
ALTER TABLE `lav_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `lav_payrollitems`
--
ALTER TABLE `lav_payrollitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_payrolls`
--
ALTER TABLE `lav_payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_payroll_details`
--
ALTER TABLE `lav_payroll_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_payroll_employee` (`payroll_id`,`employee_id`);

--
-- Indexes for table `lav_personal_access_tokens`
--
ALTER TABLE `lav_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lav_personal_access_tokens_token_unique` (`token`),
  ADD KEY `lav_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `lav_personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `lav_products`
--
ALTER TABLE `lav_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_roles`
--
ALTER TABLE `lav_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_salaries`
--
ALTER TABLE `lav_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_schools`
--
ALTER TABLE `lav_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lav_sessions`
--
ALTER TABLE `lav_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lav_sessions_user_id_index` (`user_id`),
  ADD KEY `lav_sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `lav_users`
--
ALTER TABLE `lav_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lav_attendances`
--
ALTER TABLE `lav_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lav_customers`
--
ALTER TABLE `lav_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lav_departments`
--
ALTER TABLE `lav_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lav_designations`
--
ALTER TABLE `lav_designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lav_employees`
--
ALTER TABLE `lav_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lav_failed_jobs`
--
ALTER TABLE `lav_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lav_jobs`
--
ALTER TABLE `lav_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lav_leaves`
--
ALTER TABLE `lav_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lav_leave_types`
--
ALTER TABLE `lav_leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lav_migrations`
--
ALTER TABLE `lav_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lav_payrollitems`
--
ALTER TABLE `lav_payrollitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `lav_payrolls`
--
ALTER TABLE `lav_payrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lav_payroll_details`
--
ALTER TABLE `lav_payroll_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lav_personal_access_tokens`
--
ALTER TABLE `lav_personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lav_products`
--
ALTER TABLE `lav_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lav_roles`
--
ALTER TABLE `lav_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lav_salaries`
--
ALTER TABLE `lav_salaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lav_schools`
--
ALTER TABLE `lav_schools`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lav_users`
--
ALTER TABLE `lav_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
