-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2025 at 03:42 PM
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
-- Database: `fims`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `description`, `is_active`) VALUES
(8, '2025-04-12 22:33:13', '2025-04-12 22:33:13', 'Test1', NULL, 1),
(9, '2025-04-12 22:35:30', '2025-04-12 22:35:30', 'Test2', NULL, 1),
(10, '2025-04-12 22:40:56', '2025-04-12 22:40:56', 'Test3', NULL, 1),
(19, '2025-05-01 07:37:25', '2025-05-03 05:21:02', 'Test4', NULL, 1),
(20, '2025-05-16 02:39:44', '2025-05-16 02:39:44', 'Makeup', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
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
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`, `created_at`, `updated_at`) VALUES
(24, 'product1.png', 'png', '2025-05-03 00:32:56', '2025-05-03 00:32:56'),
(25, 'product2.jpg', 'jpg', '2025-05-03 00:33:04', '2025-05-03 00:33:04'),
(26, 'product3.jpg', 'jpg', '2025-05-03 00:33:13', '2025-05-03 00:33:13'),
(27, 'product4.jpg', 'jpg', '2025-05-03 05:32:41', '2025-05-03 05:32:41'),
(29, 'product5.jpg', 'jpg', '2025-05-03 05:43:23', '2025-05-03 05:43:23'),
(30, 'product6.jpg', 'jpg', '2025-05-03 05:43:31', '2025-05-03 05:43:31'),
(31, 'product7.jpg', 'jpg', '2025-05-03 05:43:39', '2025-05-03 05:43:39'),
(32, 'product8.jpg', 'jpg', '2025-05-03 05:43:50', '2025-05-03 05:43:50'),
(33, 'product9.jpg', 'jpg', '2025-05-03 05:43:59', '2025-05-03 05:43:59'),
(34, 'product10.jpg', 'jpg', '2025-05-03 05:44:08', '2025-05-03 05:44:08'),
(35, 'product11.jpg', 'jpg', '2025-05-03 05:46:42', '2025-05-03 05:46:42'),
(36, 'product12.jpg', 'jpg', '2025-05-03 05:50:00', '2025-05-03 05:50:00'),
(39, '72e837077a680e148ad4c195a6f9c0ed.jpg', 'jpg', '2025-05-20 04:23:09', '2025-05-20 04:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(115, '0001_01_01_000001_create_cache_table', 1),
(116, '0001_01_01_000002_create_jobs_table', 1),
(117, '2014_10_12_100000_create_password_resets_table', 1),
(118, '2025_04_01_154433_create_categories_table', 1),
(119, '2025_04_01_154549_create_media_table', 1),
(120, '2025_04_01_154559_create_products_table', 1),
(121, '2025_04_01_154641_create_sales_table', 1),
(122, '2025_04_01_154645_create_user_groups_table', 1),
(123, '2025_04_01_160226_add_fields_to_categories_table', 1),
(124, '2025_04_01_161448_add_columns_to_media_table', 1),
(125, '2025_04_01_161658_add_columns_to_products_table', 1),
(126, '2025_04_01_161908_add_columns_to_sales_table', 1),
(127, '2025_04_01_162055_add_columns_to_users_table', 1),
(128, '2025_04_01_162351_add_columns_to_user_groups_table', 1),
(129, '2025_04_01_172400_modify_users_table', 1),
(130, '2025_04_01_172719_modify_users_table', 1),
(131, '2025_04_01_173118_modify_users_table_add_default_user_level', 1),
(132, '2025_04_01_180944_add_group_id_to_users_table', 1),
(133, '2025_04_01_184457_add_foreign_key_to_users_table', 1),
(134, '2025_04_07_135248_rename_qty_to_quantity_in_sales_table', 1),
(135, '2025_04_07_143159_add_foreign_key_to_sales_table', 1),
(136, '2025_04_10_062938_create_sessions_table', 1),
(137, '2025_04_16_063804_create_stock_logs_table', 2),
(138, '2025_04_17_085347_create_stock_movements_table', 3),
(139, '2025_04_22_141959_add_expiry_date_to_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `buy_price` decimal(25,2) NOT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`, `expiry_date`) VALUES
(28, '2025-04-30 21:09:27', '2025-05-20 04:27:52', 'Item 10', '0', 120.00, 150.00, 8, 24, '2025-05-01 05:09:27', '2025-04-26'),
(29, '2025-04-30 21:10:33', '2025-05-20 04:28:10', 'Item 2', '0', 100.00, 120.00, 9, 25, '2025-05-01 05:10:33', '2025-04-19'),
(34, '2025-04-30 21:25:13', '2025-05-20 05:33:14', 'Item 3', '0', 120.00, 130.00, 9, 27, '2025-05-01 05:25:13', '2025-05-15'),
(35, '2025-04-30 21:25:46', '2025-05-18 01:12:43', 'Item 4', '100', 130.00, 140.00, 10, 29, '2025-05-01 05:25:46', '2025-05-06'),
(36, '2025-04-30 21:27:44', '2025-05-03 00:38:20', 'Item 5', '0', 120.00, 130.00, 10, 26, '2025-05-01 05:27:44', '2025-05-11'),
(37, '2025-04-30 23:18:53', '2025-05-12 18:45:42', 'Item 6', '0', 100.00, 120.00, 9, 30, '2025-05-01 07:18:53', '2025-05-30'),
(38, '2025-05-01 05:16:51', '2025-05-03 05:44:52', 'Product 12', '0', 300.00, 340.00, 9, 31, '2025-05-01 13:16:51', '2025-05-31'),
(39, '2025-05-01 07:38:00', '2025-05-03 05:45:04', 'Product 7', '100', 120.00, 125.00, 9, 32, '2025-05-01 15:38:00', '2025-05-30'),
(40, '2025-05-02 23:20:20', '2025-05-03 05:45:15', 'Liptint', '90', 130.00, 140.00, 19, 33, '2025-05-03 07:20:20', '2025-12-03'),
(41, '2025-05-02 23:45:20', '2025-05-20 05:09:31', 'Product 51', '130', 10.00, 20.00, 8, 34, '2025-05-03 07:45:20', '2025-05-23'),
(42, '2025-05-02 23:57:54', '2025-05-20 05:33:58', 'Product51', '18', 50.00, 55.00, 8, 24, '2025-05-03 07:57:54', '2025-05-17'),
(44, '2025-05-03 05:50:40', '2025-05-04 03:02:04', 'Product 14', '50', 60.00, 65.00, 19, 36, '2025-05-03 13:50:40', '2025-05-07'),
(46, '2025-05-12 18:42:15', '2025-05-12 18:42:15', 'product 71', '3', 100.00, 120.00, 19, 25, '2025-05-13 02:42:15', '2025-05-31'),
(47, '2025-05-16 02:47:56', '2025-05-16 02:47:56', 'Kojic', '100', 5.00, 7.00, 8, 29, '2025-05-16 10:47:56', '2025-05-29'),
(48, '2025-05-16 02:54:38', '2025-05-16 02:54:38', 'Kojic', '50', 100.00, 150.00, 8, 25, '2025-05-16 10:54:38', '2025-05-31'),
(49, '2025-05-18 00:59:39', '2025-05-18 00:59:39', 'Product 12', '100', 120.00, 130.00, 20, 35, '2025-05-18 08:59:39', '2025-05-31'),
(50, '2025-05-18 01:02:27', '2025-05-18 01:03:56', 'Product 10', '200', 300.00, 2120.00, 10, 29, '2025-05-18 09:02:27', '2025-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `quantity`, `price`, `date`, `created_at`, `updated_at`, `product_id`) VALUES
(27, 1, 150.00, '2025-05-09', '2025-04-30 21:49:56', '2025-05-01 07:29:43', 28),
(28, 6, 120.00, '2025-05-01', '2025-04-30 21:54:29', '2025-04-30 21:54:29', 29),
(30, 7, 130.00, '2025-05-01', '2025-04-30 21:58:13', '2025-04-30 21:58:13', 36),
(31, 2, 120.00, '2025-05-01', '2025-04-30 23:29:33', '2025-04-30 23:29:33', 37),
(32, 1, 120.00, '2025-05-01', '2025-04-30 23:35:24', '2025-04-30 23:35:24', 37),
(33, 10, 340.00, '2025-05-01', '2025-05-01 05:57:03', '2025-05-01 05:57:03', 38),
(34, 3, 130.00, '2025-05-01', '2025-05-01 06:28:34', '2025-05-01 06:28:34', 36),
(35, 1, 120.00, '2025-05-01', '2025-05-01 06:45:03', '2025-05-01 06:45:03', 37),
(36, 4, 130.00, '2025-05-01', '2025-05-01 06:45:45', '2025-05-01 06:45:45', 36),
(37, 2, 130.00, '2025-05-01', '2025-05-01 06:47:22', '2025-05-01 06:47:22', 34),
(38, 2, 340.00, '2025-05-01', '2025-05-01 07:38:55', '2025-05-01 07:38:55', 38),
(41, 1, 120.00, '2025-05-13', '2025-05-12 18:45:42', '2025-05-12 18:45:42', 37),
(42, 20, 140.00, '2025-05-18', '2025-05-18 01:12:43', '2025-05-18 01:12:43', 35),
(43, 1, 55.00, '2025-05-20', '2025-05-20 05:33:06', '2025-05-20 05:33:06', 42),
(44, 1, 130.00, '2025-05-20', '2025-05-20 05:33:13', '2025-05-20 05:33:13', 34),
(45, 2, 55.00, '2025-05-20', '2025-05-20 05:33:58', '2025-05-20 05:33:58', 42);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('XKfkfT4TiMTTcgLKrkDkvy9O62A36bosw8sDIAjE', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWThFZmZWSHl4TndZRmJZa3dMaHFta3FOcnVQelB0WTJQM0UyWENoaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1747748236);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL DEFAULT 'no_image.jpg',
  `status` int(11) NOT NULL DEFAULT 1,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`, `created_at`, `updated_at`, `group_id`) VALUES
(2, 'Jj', 'john.doe@example.com', '$2y$12$c0ERMtUD8Ff39HG2AVP3y.rWrJjNWKCRebcRoQ.mKMOdF3wk0Bmiq', 1, 'no_image.jpg', 1, NULL, '2025-04-12 11:18:16', '2025-04-12 11:18:16', NULL),
(3, 'Admin01', 'admin01@example.com', '$2y$12$lLml7ukvQKCjm8Kvp1.PFupZ5kwLgctBE4iQIrftQWM/1WiIWpcUi', 1, 'no_image.jpg', 1, NULL, '2025-04-12 11:35:07', '2025-04-12 11:35:07', NULL),
(4, 'Pee', 'pee@example', '$2y$12$ME62iD.Bl0s7HtS5/EMGZOcgt25zI7RjmmoutZzuWRdcW4FvcikEy', 1, 'no_image.jpg', 0, NULL, '2025-04-12 11:39:03', '2025-04-18 21:15:21', NULL),
(5, 'poerrrrrrr', 'pe0eeee@example.com', '$2y$12$cW5iv8y8LguDMM23kE5NX.0x.P8IC9VB90YNlN4Dg2PxWEMPzi9nC', 1, 'no_image.jpg', 0, NULL, '2025-04-12 11:44:45', '2025-04-12 21:30:43', NULL),
(9, 'Filipe', 'filipe', '$2y$12$vD0z8NTOJ.fa8F5v6wzFoecxwiH.foOdFZOh5OYzIyj/3SiaQCrDS', 1, 'no_image.jpg', 0, NULL, '2025-04-12 22:28:15', '2025-04-12 22:40:32', NULL),
(213, 'Admin', 'Admin', '$2y$12$QxfI0Lc0BeaqlAPjXtfAPur1Qm/xc.nl2oE/BSRtFc9.4OPaenAWS', 1, 'no_image.jpg', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_groups_group_level_unique` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`id`),
  ADD CONSTRAINT `users_user_level_foreign` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
