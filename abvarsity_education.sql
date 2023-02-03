-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 01:28 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abvarsity_education`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_04_07_072138_create_student_infos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student__infos`
--

CREATE TABLE `student__infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fatherName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `studentId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student__infos`
--

INSERT INTO `student__infos` (`id`, `name`, `fatherName`, `studentId`, `email`, `subject`, `session`, `created_at`, `updated_at`) VALUES
(1, 'sagor', 'asdf', '120108', 'sagor@gmail.com', 'cse', '2011', '2021-04-07 02:12:30', '2021-04-07 02:12:30'),
(2, 'belal', 'zxcvbn', '12345', 'belal@gmail.com', 'eee', '2014', '2021-04-07 02:33:35', '2021-04-07 02:33:35'),
(3, 'saddam', 'abdus satter', '14785', 'saddam@gmail.com', 'ICE', '2017', '2021-04-07 07:06:32', '2021-04-07 07:06:32'),
(4, 'Azizul', 'zxcvbnm', '2018', 'azizul@gmail.com', 'ETE', '2016', '2021-04-07 07:07:37', '2021-04-07 07:07:37'),
(5, 'asdfg', 'gfgghf', '125454', 'asdf@gmail.com', 'ABC', '2015', '2021-04-07 07:08:16', '2021-04-07 07:08:16'),
(6, 'Saddam', 'asdf', '78963', 'saddamsaddam@gmail.com', 'computer', '2020', '2021-04-08 05:16:26', '2021-04-08 05:16:26'),
(7, 'adnan', 'abc', '2020', 'adnan@gmail.com', 'CSE', '2011-2012', '2021-04-08 05:22:52', '2021-04-08 05:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sagor', 'sagor@gmail.com', '$2y$10$rdy6R/HMSlZYvvSj.EWXAuj.uN4Iff5/kixZet8uTsKS2Losd3Tqy', 'juUo8upxWiYPiJvETBazAJLT07kB6ch9EaTBu0jr75Y1fhZ9uaRXVkEqNmTw', '2021-04-08 03:16:39', '2021-04-08 03:16:39'),
(2, 'azizul', 'azizul@gmail.com', '$2y$10$Z/lZSf3TxUGMHXSS5Z8dgORP4VdfUGafBZY4VS2O1URAC1eO0Is9K', 'NGAzo25HvJDs54NQyyXCFGkzsYgrhLQIdP3U7xg4wqU7mlapUBLr2Vutghnk', '2021-04-08 03:19:38', '2021-04-08 03:19:38');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `student__infos`
--
ALTER TABLE `student__infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_infos_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student__infos`
--
ALTER TABLE `student__infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
