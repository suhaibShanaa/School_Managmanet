-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 02:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_managmanet`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JOD',
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `hours`, `cost`, `currency`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'CIS 103', '15', '150', 'JOD', '2019-09-28', '2020-11-30', '2020-05-02 11:37:12', '2020-05-02 11:37:12'),
(2, 'MIS', '3', '45', 'JOD', '2020-05-05', '2020-05-05', '2020-05-04 21:26:03', '2020-05-04 21:26:03'),
(3, 'Mis 55', '3', '25', 'JOD', NULL, NULL, '2020-05-31 15:17:46', '2020-05-31 15:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbr` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2015_09_07_190535_create_languages_table', 1),
(3, '2015_09_10_124414_alter_languages_table', 1),
(4, '2016_05_25_121918_create_pages_table', 1),
(5, '2017_04_10_195926_change_extras_to_longtext', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_04_25_115316_create_permission_tables', 1),
(8, '2020_04_27_112657_create_students_table', 1),
(9, '2020_04_27_150547_create_courses_table', 1),
(10, '2020_04_28_144954_create_students_courses_table', 1),
(11, '2020_05_03_100009_create_payments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\BackpackUser', 1),
(1, 'App\\User', 1),
(3, 'App\\Models\\BackpackUser', 4),
(3, 'App\\Models\\BackpackUser', 5),
(4, 'App\\Models\\BackpackUser', 3),
(5, 'App\\Models\\BackpackUser', 2),
(5, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reg_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `reg_id`, `card_name`, `created_at`, `updated_at`) VALUES
(1, '8ac7a4a271cbc5a10171da120e3a61b1', 'PAY', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add courses', 'web', '2020-05-02 11:34:57', '2020-05-02 11:34:57'),
(2, 'edit courses', 'web', '2020-05-02 11:34:57', '2020-05-02 11:34:57'),
(3, 'view courses', 'web', '2020-05-02 11:34:57', '2020-05-02 11:34:57'),
(4, 'delete courses', 'web', '2020-05-02 11:34:57', '2020-05-02 11:34:57'),
(5, 'add students', 'web', '2020-05-02 11:34:57', '2020-05-02 11:34:57'),
(6, 'edit students', 'web', '2020-05-02 11:34:58', '2020-05-02 11:34:58'),
(7, 'view students', 'web', '2020-05-02 11:34:58', '2020-05-02 11:34:58'),
(8, 'delete students', 'web', '2020-05-02 11:34:58', '2020-05-02 11:34:58'),
(9, 'pay cost', 'web', '2020-05-02 11:34:58', '2020-05-02 11:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-05-02 11:34:58', '2020-05-02 11:34:58'),
(2, 'user', 'web', '2020-05-02 11:34:59', '2020-05-02 11:34:59'),
(3, 'master', 'web', '2020-05-02 11:34:59', '2020-05-02 11:34:59'),
(4, 'accountant', 'web', '2020-05-02 11:34:59', '2020-05-02 11:34:59'),
(5, 'super-admin', 'web', '2020-05-02 11:35:00', '2020-05-02 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 1),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(4, 1),
(4, 2),
(4, 5),
(5, 5),
(6, 3),
(6, 5),
(7, 1),
(7, 3),
(7, 4),
(7, 5),
(8, 1),
(8, 5),
(9, 2),
(9, 4),
(9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `std_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `std_number`, `image`, `gender`, `birthday`, `major`, `address`, `Course`, `created_at`, `updated_at`) VALUES
(1, 'suhaib', '00', NULL, '0', '2019-08-31', 'cis', NULL, NULL, '2020-05-02 11:36:33', '2020-05-02 11:36:33'),
(2, 'suhaibs', '2', NULL, '0', '1989-11-26', 'cis 103', NULL, NULL, '2020-05-02 11:37:45', '2020-05-02 11:37:45'),
(3, 'suhaibs', '00', NULL, '0', '2019-01-02', 'cis 103', NULL, NULL, '2020-05-02 19:01:29', '2020-05-02 19:01:29'),
(4, 'mosab', '00', NULL, '0', '2017-01-28', 'cis 103', NULL, NULL, '2020-05-02 19:09:20', '2020-05-02 19:09:20'),
(5, 'mosab', '00', NULL, '0', '2017-01-28', 'cis 103', NULL, NULL, '2020-05-02 19:11:32', '2020-05-02 19:11:32'),
(6, 'mosab', '00', NULL, '0', '2018-12-01', 'cis', NULL, NULL, '2020-05-02 19:16:00', '2020-05-02 19:16:00'),
(7, 'mosab', '00', NULL, '0', '2018-12-01', 'cis', NULL, NULL, '2020-05-02 19:16:25', '2020-05-02 19:16:25'),
(8, 'mosab', '00', NULL, '0', '2018-12-01', 'cis', NULL, NULL, '2020-05-02 19:16:50', '2020-05-02 19:16:50'),
(9, 'mosab', '00', NULL, '0', '2018-12-01', 'cis', NULL, NULL, '2020-05-02 19:17:52', '2020-05-02 19:17:52'),
(10, 'mosab', '00', NULL, '0', '2018-12-01', 'cis', NULL, NULL, '2020-05-02 19:19:24', '2020-05-02 19:19:24'),
(11, 'mosaba', '00', NULL, '0', '2020-11-02', 'cis 103', NULL, NULL, '2020-05-02 19:20:12', '2020-05-02 19:20:12'),
(12, 'product 1', '00', NULL, '0', '2018-11-02', '1212', NULL, NULL, '2020-05-02 19:20:59', '2020-05-02 19:20:59'),
(13, 'suhaibs', '00', NULL, '0', '2018-01-27', 'wad', NULL, NULL, '2020-05-02 19:22:34', '2020-05-02 19:22:34'),
(14, 'product 1', '00', NULL, '0', '2020-01-01', '1212', NULL, NULL, '2020-05-02 19:23:11', '2020-05-02 19:23:11'),
(15, 'mosaba', '00', NULL, '0', '2019-10-02', '1212', NULL, NULL, '2020-05-02 19:24:33', '2020-05-02 19:24:33'),
(16, 'mosaba', '00', NULL, '0', '2020-10-29', '1212', NULL, NULL, '2020-05-02 19:28:08', '2020-05-02 19:28:08'),
(17, 'mosaba', '00', NULL, '0', '2020-10-29', '1212', NULL, NULL, '2020-05-02 19:28:30', '2020-05-02 19:28:30'),
(18, 'mosaba', '00', NULL, '0', '2021-01-01', 'ss', NULL, NULL, '2020-05-02 19:29:31', '2020-05-02 19:29:31'),
(19, 'mosaba', '00', NULL, '0', '2021-01-01', 'ss', NULL, NULL, '2020-05-02 19:29:55', '2020-05-02 19:29:55'),
(20, 'mosaba', '00', NULL, '0', '2021-01-01', 'ss', NULL, NULL, '2020-05-02 19:30:15', '2020-05-02 19:30:15'),
(21, 'suhaib', '00', NULL, '0', '2021-10-02', 'cis', NULL, NULL, '2020-05-04 20:01:11', '2020-05-04 20:01:11'),
(22, 'product 1', '00', NULL, '0', '2019-02-26', 'cis', NULL, NULL, '2020-05-04 20:05:23', '2020-05-04 20:05:23'),
(23, 'suhaib shanaa', '00', NULL, '0', '1998-12-11', 'cis', NULL, NULL, '2020-05-31 15:18:43', '2020-05-31 15:18:43'),
(24, 'HUSSAM', '00', NULL, '0', '5555-12-05', 'HYPER', NULL, NULL, '2020-05-31 20:23:02', '2020-05-31 20:23:02'),
(25, 'suhaibs', '0141', NULL, '0', '4444-04-04', '1212', NULL, NULL, '2020-05-31 20:28:17', '2020-05-31 20:28:17'),
(26, 'Hussam', '63265', NULL, '0', '1111-12-22', 'cis', NULL, NULL, '2020-05-31 20:38:11', '2020-05-31 20:38:11'),
(27, 'suhaib2020', '00', NULL, '0', '2018-02-04', 'cis', NULL, NULL, '2020-05-31 20:56:49', '2020-05-31 20:56:49'),
(28, '2', '22', NULL, '0', '0002-02-22', '2', NULL, NULL, '2020-05-31 20:58:54', '2020-05-31 20:58:54'),
(29, 'suhaib1/6', '00', NULL, '0', '2021-03-02', 'cis', NULL, NULL, '2020-05-31 21:03:33', '2020-05-31 21:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `students_courses`
--

CREATE TABLE `students_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_courses`
--

INSERT INTO `students_courses` (`id`, `student_id`, `course_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 3, 1, '2020-05-02 19:01:30', '2020-05-02 19:01:30'),
(4, 10, 1, '2020-05-02 19:19:24', '2020-05-02 19:19:24'),
(5, 11, 1, '2020-05-02 19:20:13', '2020-05-02 19:20:13'),
(6, 13, 1, '2020-05-02 19:22:34', '2020-05-02 19:22:34'),
(7, 14, 1, '2020-05-02 19:23:11', '2020-05-02 19:23:11'),
(8, 15, 1, '2020-05-02 19:24:33', '2020-05-02 19:24:33'),
(9, 17, 1, '2020-05-02 19:28:30', '2020-05-02 19:28:30'),
(10, 21, 1, '2020-05-04 20:01:11', '2020-05-04 20:01:11'),
(11, 22, 1, '2020-05-04 20:05:23', '2020-05-04 20:05:23'),
(12, 23, 3, '2020-05-31 15:18:43', '2020-05-31 15:18:43'),
(13, 24, 1, '2020-05-31 20:23:02', '2020-05-31 20:23:02'),
(14, 24, 2, '2020-05-31 20:23:02', '2020-05-31 20:23:02'),
(15, 24, 3, '2020-05-31 20:23:02', '2020-05-31 20:23:02'),
(16, 25, 1, '2020-05-31 20:28:17', '2020-05-31 20:28:17'),
(17, 25, 3, '2020-05-31 20:28:17', '2020-05-31 20:28:17'),
(18, 26, 1, '2020-05-31 20:38:11', '2020-05-31 20:38:11'),
(19, 26, 2, '2020-05-31 20:38:11', '2020-05-31 20:38:11'),
(20, 26, 3, '2020-05-31 20:38:12', '2020-05-31 20:38:12'),
(21, 27, 1, '2020-05-31 20:56:49', '2020-05-31 20:56:49'),
(22, 27, 2, '2020-05-31 20:56:49', '2020-05-31 20:56:49'),
(23, 27, 3, '2020-05-31 20:56:49', '2020-05-31 20:56:49'),
(24, 28, 1, '2020-05-31 20:58:54', '2020-05-31 20:58:54'),
(25, 28, 2, '2020-05-31 20:58:54', '2020-05-31 20:58:54'),
(26, 28, 3, '2020-05-31 20:58:54', '2020-05-31 20:58:54'),
(27, 29, 1, '2020-05-31 21:03:33', '2020-05-31 21:03:33'),
(28, 29, 2, '2020-05-31 21:03:33', '2020-05-31 21:03:33'),
(29, 29, 3, '2020-05-31 21:03:34', '2020-05-31 21:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'suhaib.shanaa@gmail.com', NULL, '$2y$10$aiYj6iisj2htsosY.dZtnu1RCwi.yVU0QmEO6nYJLziMm9MuhtHli', '5LGCTvo0YzR46baQ7Gru6jFlbEBnoP7QMPEozS1Kq6su8zRuOSf4whTu93OT', '2020-05-02 11:35:01', '2020-05-02 11:35:01'),
(2, 'super-admin', 'suhaibsh612@gmail.com', NULL, '$2y$10$j2jy8.nZoQ5vt8ht4I62beqqOZqVwimVuuauRUaeOaQ9lzQRPK5h6', NULL, '2020-05-02 11:35:01', '2020-05-02 11:35:01'),
(3, 'Accountant', 'dmcollado@gmail.com', NULL, '$2y$10$X39kQlh7L2xJHEC1Ky82FOFXyOzBe46Laf.Ygq2NmRQpEpFOauUyC', NULL, '2020-05-03 07:31:09', '2020-05-03 07:31:09'),
(4, 'Mohammed Master', 'Master@gmail.com', NULL, '$2y$10$xYRawqrhnORbK/G.AKEMoOIgt1274hKUfYZz3dcIugmskN8kYqkPu', NULL, '2020-05-03 07:32:05', '2020-05-03 07:32:05'),
(5, 'Master22', 'fsh.shanaa@gmail.com', NULL, '$2y$10$1r5/YbIJUXctqUMHpFA8u.Mo0PYNvqVdrUfNPGvgPllxg5Hv5sUde', NULL, '2020-05-04 21:29:52', '2020-05-04 21:29:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_courses_student_id_foreign` (`student_id`),
  ADD KEY `students_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `students_courses`
--
ALTER TABLE `students_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Constraints for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD CONSTRAINT `students_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_courses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
