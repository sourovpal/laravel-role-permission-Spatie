-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2023 at 10:02 PM
-- Server version: 8.0.32
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourovpa_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name_slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `name_slug`, `group_name`, `group_name_slug`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'All Access', 'all-access', 'Super Access', 'super-access', 'web', '2022-12-29 18:35:01', '2022-12-29 18:35:01'),
(2, 'Branch Access', 'branch-access', 'Super Access', 'super-access', 'web', '2022-12-29 18:35:01', '2022-12-29 18:35:01'),
(3, 'Dashboard View', 'dashboard-view', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:01', '2022-12-29 18:35:01'),
(4, 'Total Employee', 'total-employee', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:01', '2022-12-29 18:35:01'),
(5, 'Today Attends', 'today-attends', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:01', '2022-12-29 18:35:01'),
(6, 'Today Absent', 'today-absent', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(7, 'Today Clock In Clock Out', 'today-clock-in-clock-out', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(8, 'Employee Work Day', 'employee-work-day', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(9, 'Employee Total Present', 'employee-total-present', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(10, 'Employee Total Absent', 'employee-total-absent', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(11, 'Employee Total Rest Day', 'employee-total-rest-day', 'Dashboard', 'dashboard', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(12, 'Employee Create', 'employee-create', 'Employee', 'employee', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(13, 'Employee View', 'employee-view', 'Employee', 'employee', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(14, 'Employee Edit', 'employee-edit', 'Employee', 'employee', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(15, 'Employee Delete', 'employee-delete', 'Employee', 'employee', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(16, 'Employee Profile', 'employee-profile', 'Employee', 'employee', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(17, 'Branch Create', 'branch-create', 'Branch', 'branch', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(18, 'Branch View', 'branch-view', 'Branch', 'branch', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(19, 'Branch Edit', 'branch-edit', 'Branch', 'branch', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(20, 'Branch Delete', 'branch-delete', 'Branch', 'branch', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(21, 'Role Create', 'role-create', 'Role', 'role', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(22, 'Role View', 'role-view', 'Role', 'role', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(23, 'Role Edit', 'role-edit', 'Role', 'role', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(24, 'Role Delete', 'role-delete', 'Role', 'role', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(25, 'Attendance Create', 'attendance-create', 'Attendance', 'attendance', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(26, 'Attendance View', 'attendance-view', 'Attendance', 'attendance', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(27, 'Attendance Edit', 'attendance-edit', 'Attendance', 'attendance', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(28, 'Attendance Delete', 'attendance-delete', 'Attendance', 'attendance', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(29, 'Attendance Leave', 'attendance-leave', 'Attendance', 'attendance', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(30, 'Attendance Web Clock', 'attendance-web-clock', 'Attendance', 'attendance', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(31, 'Schedule Create', 'schedule-create', 'Schedule', 'schedule', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(32, 'Schedule View', 'schedule-view', 'Schedule', 'schedule', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(33, 'Schedule Edit', 'schedule-edit', 'Schedule', 'schedule', 'web', '2022-12-29 18:35:02', '2022-12-29 18:35:02'),
(34, 'Schedule Delete', 'schedule-delete', 'Schedule', 'schedule', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03'),
(35, 'Add Attendance', 'add-attendance', 'Schedule', 'schedule', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03'),
(36, 'Profile View', 'profile-view', 'Profile', 'profile', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03'),
(37, 'Profile Edit', 'profile-edit', 'Profile', 'profile', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03'),
(38, 'Change Password', 'change-password', 'Profile', 'profile', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03'),
(39, 'Profile Schedule View', 'profile-schedule-view', 'Profile', 'profile', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03'),
(40, 'Profile Attendance View', 'profile-attendance-view', 'Profile', 'profile', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03'),
(41, 'Work Time', 'work-time', 'Profile', 'profile', 'web', '2022-12-29 18:35:03', '2022-12-29 18:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'web', '2022-12-29 18:35:01', '2022-12-29 18:35:01', NULL),
(2, 'Employee', 'web', '2022-12-29 18:49:25', '2022-12-29 18:49:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(13, 1),
(14, 1),
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
(41, 1),
(3, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(30, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
