-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2022 at 03:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lottolab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'thuy.tranthanh.bd@gmail.com', 'admin', NULL, '63303fd201acf1664106450.jpg', '$2y$10$2qcOUKrDIUqyyCklvHp7IO8fGNcJ1gAXtxouTn1isZPHu6H8CfHPq', NULL, '2022-09-25 04:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'New member registered', 0, '/admin/user/detail/1', '2022-08-11 08:42:58', '2022-08-11 08:42:58'),
(2, 2, 'New member registered', 0, '/admin/user/detail/2', '2022-08-11 08:44:03', '2022-08-11 08:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `slug`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_title', 'Khatdecor LLC', '2020-01-07 00:51:25', '2022-09-25 06:16:42'),
(2, 'logo', '633054c7db4561664111815.jpg', '2020-01-07 00:51:25', '2022-09-25 06:16:56'),
(3, 'login_logo', '633054c8558101664111816.jpg', '2020-01-07 00:51:25', '2022-09-25 06:16:56'),
(4, 'favicon', '633054c81df961664111816.jpg', '2020-01-07 00:51:25', '2022-09-25 06:16:56'),
(5, 'copyright_text', 'Copyrights @2020 Khatdecor LLC', '2020-01-07 00:51:25', '2022-09-25 06:16:42'),
(6, 'lang', 'en', '2020-01-07 00:51:25', '2020-01-07 00:51:25'),
(7, 'primary_email', 'Khatdecor@email.com', '2020-01-07 00:51:25', '2022-09-25 06:16:42'),
(8, 'contact_number', '', '2020-01-07 00:51:25', '2020-01-07 00:51:25'),
(9, 'user_registration', '1', '2020-01-07 00:51:25', '2020-01-07 00:51:25'),
(10, 'login_text', 'Ammelias', '2020-01-07 00:51:25', '2022-09-25 06:16:42'),
(11, 'signup_text', 'Khatdecor LLC', '2020-01-07 00:51:25', '2022-09-25 06:16:42'),
(12, 'about_banner_title', 'CRIS', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(13, 'about_title', 'SparkIT For Your Business Solution', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(14, 'about_video_id', 'Fe que todo llega...', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(15, 'about_section_title1', 'Our History 7 z', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(16, 'about_section_des1', 'The making of WigWag. Exposing the secret behind the complex story behind the brand we all know.', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(17, 'about_section_title2', 'Our Principles', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(18, 'about_section_des2', 'Ready to solve problems and eager to apply new ideas. This is the brave territory where we come together, and it’s hard to get there if you’re not having fun..', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(19, 'about_section_title3', 'Business success', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(20, 'about_section_des3', 'Ready to solve problems and eager to apply new ideas. This is the brave territory where we come together, and it’s hard to get there if you’re not having fun..', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(21, 'about_section_title4', 'Digital Solution', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(22, 'about_section_des4', 'Ready to solve problems and eager to apply new ideas. This is the brave territory where we come together, and it’s hard to get there if you’re not having fun..', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(23, 'about_sub_title', 'Know About Ammelias', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(24, 'about_description', 'Building your online presence helps attract more potential clients. Our integrated marketing team will work directly with you to understand what makes your business unique, and provide more qualified leads to achieve success in your industry', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(25, 'about_last_section_header_title', 'About Digital agency', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(26, 'about_last_section_title', 'Attract Customers With Content And SEO', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(27, 'about_last_section_sub_title', 'How Can Help Your Business?', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(28, 'about_last_description', 'Building your online presence helps attract more potential clients. Our integrated marketing team will work directly with you to understand what makes your business unique, and provide more qualified leads to achieve success in your industry', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(29, 'about_right_image', '63304eff6776e1664110335.jpg', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(30, 'about_banner_image', '63304eff99a691664110335.jpg', '2022-09-25 05:52:15', '2022-09-25 05:52:15'),
(31, 'about_left_image', '63304effce7bc1664110335.jpg', '2022-09-25 05:52:16', '2022-09-25 05:52:16'),
(32, 'home_banner_title', 'Test title updated', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(33, 'home_banner_sub_title', 'Lorem Ipsummm', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(34, 'home_section_title2', 'Test', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(35, 'home_banner_des', 'Test', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(36, 'home_section_des2', 'Test', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(37, 'home_testimonial_title', 'QUE PUTAS ES ESTO', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(38, 'home_blog_title', 'Test', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(39, 'home_banner_image', '63304f4fdc4331664110415.jpg', '2022-09-25 05:53:35', '2022-09-25 05:53:35'),
(40, 'home_second_section_image', '63304f5000c211664110416.jpg', '2022-09-25 05:53:36', '2022-09-25 05:53:36'),
(41, 'service_banner_title', 'Our Main', '2022-09-25 05:53:52', '2022-09-25 05:53:52'),
(42, 'service_banner_des', 'Let us put your website consumers at moment in time they are searching your products services.', '2022-09-25 05:53:52', '2022-09-25 05:53:52'),
(43, 'service_banner_image', '63304f60f3d661664110432.jpg', '2022-09-25 05:53:53', '2022-09-25 05:53:53'),
(44, 'team_banner_title', 'Let us put your website', '2022-09-25 05:55:17', '2022-09-25 05:55:17'),
(45, 'team_banner_des', 'Let us put your website consumers at moment in time they are searching your products services.', '2022-09-25 05:55:17', '2022-09-25 05:55:17'),
(46, 'team_banner_image', '63304fb5921cf1664110517.jpg', '2022-09-25 05:55:17', '2022-09-25 05:55:17'),
(47, 'portfolio_banner_title', 'they are searching your products services.', '2022-09-25 05:55:34', '2022-09-25 05:55:34'),
(48, 'portfolio_banner_des', 'consumers at moment in time they are searching your products services.', '2022-09-25 05:55:34', '2022-09-25 05:55:34'),
(49, 'portfolio_banner_image', '63304fc690f7f1664110534.jpg', '2022-09-25 05:55:34', '2022-09-25 05:55:34'),
(50, 'gallery_banner_title', 'consumers at moment in time', '2022-09-25 05:55:46', '2022-09-25 05:55:46'),
(51, 'gallery_banner_des', 'consumers at moment in time', '2022-09-25 05:55:46', '2022-09-25 05:55:46'),
(52, 'gallery_banner_image', '63304fd2835391664110546.jpg', '2022-09-25 05:55:46', '2022-09-25 05:55:46'),
(53, 'achievement_title', 'We Help To Increase Sales By Improving SEO.', '2022-09-25 05:56:32', '2022-09-25 05:56:32'),
(54, 'achievement_sub_title', 'Know About Ammelias', '2022-09-25 05:56:32', '2022-09-25 05:56:32'),
(55, 'achievement_des', 'Nam quis laoreet nisl. Vivamus nec quam magna.interdum etus blandit hendrerit ornare. Sed id leo nulla.', '2022-09-25 05:56:32', '2022-09-25 05:56:32'),
(56, 'achievement_list1_title', 'Projects', '2022-09-25 05:56:32', '2022-09-25 05:56:32'),
(57, 'achievement_list2_title', 'Cups of Coffee', '2022-09-25 05:56:32', '2022-09-25 05:56:32'),
(58, 'achievement_list3_title', 'Projects', '2022-09-25 05:56:32', '2022-09-25 05:56:32'),
(59, 'achievement_list4_title', 'Customer', '2022-09-25 05:56:33', '2022-09-25 05:56:33'),
(60, 'achievement_list5_title', 'Clients', '2022-09-25 05:56:33', '2022-09-25 05:56:33'),
(61, 'achievement_list5_count', '8', '2022-09-25 05:56:33', '2022-09-25 05:56:33'),
(62, 'achievement_list4_count', '11', '2022-09-25 05:56:33', '2022-09-25 05:56:33'),
(63, 'achievement_list3_count', '32', '2022-09-25 05:56:33', '2022-09-25 05:56:33'),
(64, 'achievement_list2_count', '11', '2022-09-25 05:56:33', '2022-09-25 05:56:33'),
(65, 'achievement_list1_count', '32', '2022-09-25 05:56:33', '2022-09-25 05:56:33'),
(66, 'work_header_title', 'Say hello! SSSSS', '2022-09-25 05:57:00', '2022-09-25 05:57:00'),
(67, 'work_title', 'Work inquiry', '2022-09-25 05:57:00', '2022-09-25 05:57:00'),
(68, 'work_sub_title', 'Is to deliver awesome for our clients. By awesome, this should be a tangible impact on their business', '2022-09-25 05:57:00', '2022-09-25 05:57:00'),
(69, 'work_des', 'We exist as a partner to businesses, crafting strategies that are aligned with our client’s business goals.', '2022-09-25 05:57:00', '2022-09-25 05:57:00'),
(70, 'work_image', '6330501caa55a1664110620.jpg', '2022-09-25 05:57:00', '2022-09-25 05:57:00'),
(71, 'address', '61 Arlington St. Suite 100 Boston, CA 01118, USA', '2022-09-25 06:16:42', '2022-09-25 06:16:42'),
(72, 'front_base_color', '#ffffff', '2022-09-25 06:16:42', '2022-09-25 06:16:42'),
(73, 'google_capcha_site_key', '6LeDrckUAAAAAP2PISECcnuOO8agpcPgB2PXVAPb', '2022-09-25 06:16:42', '2022-09-25 06:16:42'),
(74, 'privacy_policy', 'Best Health Ketom Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nEste es una prueba', '2022-09-25 06:18:20', '2022-09-25 06:18:20'),
(75, 'terms_conditions', 'Terms And Conditions:\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.-prueba', '2022-09-25 06:18:20', '2022-09-25 06:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `user_id`, `title`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum passages, and more', 'lorem-ipsum-passages,-and-more', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '632ed4b8668901664013496.jpg', 1, '2022-09-24 02:58:16', '2022-09-24 02:58:16'),
(2, 2, 1, 'PageMaker including versions of Lorem Ipsum.', 'pagemaker-including-versions-of-lorem-ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '632ed6a73a4291664013991.jpg', 1, '2022-09-24 03:06:31', '2022-09-24 03:06:31'),
(3, 1, 1, 'and more recently with desktop publishing software like Aldus PageMaker', 'and-more-recently-with-desktop-publishing-software-like-aldus-pagemaker', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '632ed6be343821664014014.jpg', 1, '2022-09-24 03:06:54', '2022-09-24 03:06:54'),
(4, 1, 1, 'PageMaker including versions of Lorem Ipsum', 'pagemaker-including-versions-of-lorem-ipsum', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><br></p>', '632ffeef84a221664089839.jpg', 1, '2022-09-24 23:23:17', '2022-09-25 00:10:39'),
(5, 2, 1, 'opposed to using \'Content here, content here\', making', 'opposed-to-using-\'content-here,-content-here\',-making', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><br></p>', '632ffefa4dfdd1664089850.jpg', 1, '2022-09-24 23:24:28', '2022-09-25 00:10:50'),
(6, 2, 1, 'PageMaker including versions of Lorem Ipsum', 'pagemaker-including-versions-of-lorem-ipsum-1', '<p>PageMaker including versions of Lorem Ipsum<br></p>', '633007cb6714b1664092107.jpg', 1, '2022-09-25 00:48:27', '2022-09-25 00:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lipsum Cate', 1, '2022-09-24 02:51:59', '2022-09-24 02:51:59'),
(2, 'Lipsum Cate 2', 1, '2022-09-24 02:53:36', '2022-09-24 02:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Team Category 1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '632d3fc4a2dba1663909828.jpg', 1, '2022-09-22 22:10:28', '2022-09-22 22:10:28'),
(2, 'Team Category 2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '632d4009802da1663909897.jpg', 1, '2022-09-22 22:11:37', '2022-09-22 22:11:37'),
(3, 'Team Category 3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '632d401816f991663909912.jpg', 1, '2022-09-22 22:11:52', '2022-09-22 22:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `commission_logs`
--

CREATE TABLE `commission_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `to_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `main_amo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` decimal(18,8) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `method_currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `final_amo` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `mail_sender` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `user_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'php', 'LottoLab no-reply@viserlab.com', 'tranthanhbinhmathdephcm.001@gmail.com', 'Your Account has been Credited', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Tran Thuy (tranthanhbinhmathdephcm001)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>65,555.00 USD has been added to your account .</div><div><br></div><div>Transaction Number : YKOYPD526QEP</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>65,555.00&nbsp; USD&nbsp;</b></font></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-08-13 01:25:39', '2022-08-13 01:25:39'),
(2, 1, 'php', 'LottoLab no-reply@viserlab.com', 'tranthanhbinhmathdephcm.001@gmail.com', 'Buy Lottery', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Tran Thuy (tranthanhbinhmathdephcm001)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><font size=\"5\">Lottery Name: <b>Energy Football</b></font><div><font size=\"5\">Quantity: <b>1</b></font></div><div><font size=\"5\">Lottery Price: <b>48 USD</b></font></div><div><font size=\"5\">Total Price: <b>48 USD</b></font></div><div><font size=\"5\">Draw Date: <b>2022-08-31 12:00:00</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-08-13 01:25:54', '2022-08-13 01:25:54'),
(3, 1, 'php', 'LottoLab no-reply@viserlab.com', 'tranthanhbinhmathdephcm.001@gmail.com', 'Buy Lottery', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Tran Thuy (tranthanhbinhmathdephcm001)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><font size=\"5\">Lottery Name: <b>Energy Football</b></font><div><font size=\"5\">Quantity: <b>1</b></font></div><div><font size=\"5\">Lottery Price: <b>48 USD</b></font></div><div><font size=\"5\">Total Price: <b>48 USD</b></font></div><div><font size=\"5\">Draw Date: <b>2022-08-31 12:00:00</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-08-13 01:26:27', '2022-08-13 01:26:27'),
(4, 1, 'php', 'LottoLab no-reply@viserlab.com', 'tranthanhbinhmathdephcm.001@gmail.com', 'Buy Lottery', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Tran Thuy (tranthanhbinhmathdephcm001)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><font size=\"5\">Lottery Name: <b>Energy Ball</b></font><div><font size=\"5\">Quantity: <b>1</b></font></div><div><font size=\"5\">Lottery Price: <b>500 USD</b></font></div><div><font size=\"5\">Total Price: <b>500 USD</b></font></div><div><font size=\"5\">Draw Date: <b>2022-11-30 12:00:00</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-08-13 01:28:00', '2022-08-13 01:28:00'),
(5, 1, 'php', 'LottoLab no-reply@viserlab.com', 'tranthanhbinhmathdephcm.001@gmail.com', 'Buy Lottery', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Tran Thuy (tranthanhbinhmathdephcm001)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><font size=\"5\">Lottery Name: <b>Energy Ball</b></font><div><font size=\"5\">Quantity: <b>1</b></font></div><div><font size=\"5\">Lottery Price: <b>500 USD</b></font></div><div><font size=\"5\">Total Price: <b>500 USD</b></font></div><div><font size=\"5\">Draw Date: <b>2022-11-30 12:00:00</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-08-13 01:28:11', '2022-08-13 01:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-06 00:49:06'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-03 23:35:10'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-24 18:00:00', '2020-11-17 03:10:00'),
(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
(208, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Deposit is Approved', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-16 18:00:00', '2020-06-14 18:00:00'),
(209, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Deposit Request is Rejected', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(210, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{method_name}}. You will get {{method_amount}} {{method_currency}} in {{delay}}. Trx: {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2020-06-07 18:00:00', '2021-05-08 06:49:06'),
(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}&nbsp;</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2021-01-06 00:46:18'),
(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(217, 'WIN_EMAIL', 'Win Email', 'You won ticket', '<div style=\"text-align: center;\"><font size=\"6\"><b>Congratulations!</b></font><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">&nbsp;</span></div><div><div style=\"text-align: center;\"><font size=\"5\">You Have Won {{lottery}}</font></div></div><div style=\"text-align: left;\"><font size=\"5\">Ticket Number: {{number}}</font></div><div style=\"text-align: left;\"><font size=\"5\">Winning Level: {{level}}</font></div><div style=\"text-align: left;\"><font size=\"5\">Winning Amount: {{amount}} {{currency}}</font></div><div style=\"text-align: center; \"><font size=\"5\"><br></font></div><div><br></div>', 'Congratulations! You Have Won {{lottery}} for ticket number {{number}}. {{amount}} has been added to your account.', '{\"lottery\":\"Lottery Name\",\"number\":\"Lottery Number\",\"amount\":\"Wining jackpot\",\"amount\":\"Win Amount\",\"level\":\"Winning Level\",\"currency\":\"Site Currency\"}', 1, 1, NULL, NULL),
(218, 'BUY_LOTTERY', 'Buy Lottery', 'Buy Lottery', '<font size=\"5\">Lottery Name: <b>{{lottery_name}}</b></font><div><font size=\"5\">Quantity: <b>{{quantity}}</b></font></div><div><font size=\"5\">Lottery Price: <b>{{price}} {{site_currency}}</b></font></div><div><font size=\"5\">Total Price: <b>{{total_price}} {{site_currency}}</b></font></div><div><font size=\"5\">Draw Date: <b>{{draw_date}}</b></font></div>', NULL, '{\"lottery_name\":\"Lottery Name\",\"quantity\":\"User Bought Quantity\",\"price\":\"Lottery Price\",\"total_price\":\"Total Price\",\"draw_date\":\"Draw Date\",\"site_currency\":\"Site Currency\"}', 1, 1, NULL, NULL),
(219, 'REFERRAL_COMMISSION', 'REFERRAL COMMISSION', 'User Referral Commission', '<div><font size=\"5\">Commission Amount: <b><font color=\"#ff0000\">{{amount}} {{currency}}</font></b></font></div><div><font size=\"5\">Transaction ID: <b><font color=\"#0000cc\">{{trx}}</font></b></font></div><div><font size=\"5\">Referral Level: <b><font color=\"#ff66ff\">{{level}}</font></b></font></div><div><font size=\"5\">Your Current Balance: <b><font color=\"#00ff33\">{{post_balance}} {{currency}}</font></b></font></div><div></div>', NULL, '{\"amount\":\"Amount\", \"post_balance\":\"Post Balance\", \"trx\":\"Transaction\",\"level\":\"Level\", 	\"currency\":\"currency\" }', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2021-05-18 05:37:12'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"-----\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2021-06-16 12:47:10'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 1, NULL, '2019-10-18 23:16:05', '2021-06-13 04:41:29'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, NULL, '2021-05-04 10:19:12'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.PNG', 0, NULL, NULL, '2021-06-16 06:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `views`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"LottoLab\",\"Lottery Platform\",\"Online Lottery\",\"Live Lotter\"],\"description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"LottoLab\",\"social_description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff\",\"image\":\"60c9fa144e3321623849492.jpg\"}', 0, '2020-07-04 23:42:52', '2021-06-16 12:48:12'),
(24, 'about.content', '{\"has_image\":\"1\",\"title\":\"About Us\",\"content\":\"Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illo, ex. Similique harum facilis animi id, eligendi voluptate repellendus mollitia quidem odit eius! Optio, perspiciatis. Voluptates aliquam vel similique eveniet soluta.\\u00a0<div><br \\/><\\/div><div>\\u00a0Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut, a! Praesentium ipsa expedita deleniti beatae rem, eos qui nihil earum architecto consequuntur dicta inventore corrupti vel. Nam quas dolores consectetur quam quibusdam ipsum id, quaerat ea harum non. Impedit harum laboriosam eum nobis cumque ipsum corrupti quaerat ad reiciendis ipsam. Optio, perspiciatis. Voluptates aliquam vel similique eveniet soluta consectetur quam quibusdam ipsum. Impedit harum laboriosam eum nobis cumque ipsum corrupti quaerat ad reiciendis ipsam.<\\/div>\",\"image\":\"60c4b8f1002c51623505137.jpg\"}', 0, '2020-10-28 00:51:20', '2021-06-12 13:08:57'),
(25, 'blog.content', '{\"heading\":\"Our Latest News\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptatum eaque earum quos quia Id aspernatur ratione, voluptas nulla rerum laudantium neque ipsam eaque\"}', 0, '2020-10-28 00:51:34', '2021-06-14 10:43:11'),
(27, 'contact_us.content', '{\"title\":\"Auctor gravida vestibulu\",\"short_details\":\"55f55\",\"email_address\":\"5555f\",\"contact_details\":\"5555h\",\"contact_number\":\"5555a\",\"latitude\":\"5555h\",\"longitude\":\"5555s\",\"website_footer\":\"5555qqq\"}', 0, '2020-10-28 00:59:19', '2020-11-01 04:51:54'),
(28, 'counter.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Register New Account\"}', 0, '2020-10-28 01:04:02', '2020-10-28 01:04:02'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"las la-expand\\\"><\\/i>\",\"url\":\"https:\\/\\/www.google.com\\/\"}', 0, '2020-11-12 04:07:30', '2021-05-12 05:56:59'),
(33, 'feature.content', '{\"heading\":\"Why You Trust Our Service\"}', 0, '2021-01-03 23:40:54', '2021-06-12 11:01:52'),
(35, 'service.element', '{\"trx_type\":\"withdraw\",\"service_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"title\":\"asdfasdf\",\"description\":\"asdfasdfasdfasdf\"}', 0, '2021-03-06 01:12:10', '2021-03-06 01:12:10'),
(36, 'service.content', '{\"trx_type\":\"withdraw\",\"heading\":\"asdf fffff\",\"sub_heading\":\"asdf asdfasdf\"}', 0, '2021-03-06 01:27:34', '2021-03-06 02:19:39'),
(39, 'banner.content', '{\"has_image\":\"1\",\"heading\":\"Play lottery and get chance to get reward\",\"sub_heading\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias quibusdam eveniet similique magni accusantium soluta totam incidunt quam quis architecto amet.\",\"button\":\"Get Started\",\"button_link\":\"login\",\"background_image\":\"60c4850e83a371623491854.jpg\"}', 0, '2021-05-02 06:09:30', '2021-06-12 09:29:05'),
(41, 'cookie.data', '{\"link\":\"#\",\"description\":\"<font color=\\\"#ffffff\\\" face=\\\"Exo, sans-serif\\\"><span style=\\\"font-size: 18px;\\\">We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.<\\/span><\\/font><br>\",\"status\":1}', 0, '2020-07-04 23:42:52', '2021-06-06 09:43:37'),
(42, 'footer.content', '{\"copyright\":\"Copyright \\u00a9 2021 All Right Reserved\"}', 0, '2021-06-12 08:45:11', '2021-06-12 08:45:11'),
(43, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"social_link\":\"www.instagram.com\"}', 0, '2021-06-12 08:45:27', '2021-06-12 08:45:27'),
(44, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"social_link\":\"https:\\/\\/www.linkedin.com\"}', 0, '2021-06-12 08:46:01', '2021-06-12 08:46:01'),
(45, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"social_link\":\"https:\\/\\/www.twitter.com\"}', 0, '2021-06-12 08:46:25', '2021-06-12 08:46:25'),
(46, 'footer.element', '{\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"social_link\":\"https:\\/\\/www.facebook.com\"}', 0, '2021-06-12 08:46:33', '2021-06-12 08:46:33'),
(47, 'extra.element', '{\"title\":\"Terms and Condition\",\"description\":\"<h3>What information do we collect?<\\/h3><div>We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/div><div><br \\/><\\/div><h3>How do we protect your information?<\\/h3><div>All provided delicate\\/credit data is sent through Stripe.<\\/div><div>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/div><div><br \\/><\\/div><h3>Do we disclose any information to outside parties?<\\/h3><div>We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/div><div><br \\/><\\/div><h3>Children\'s Online Privacy Protection Act Compliance<\\/h3><div>We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/div><div><br \\/><\\/div><h3>Changes to our Privacy Policy<\\/h3><div>If we decide to change our privacy policy, we will post those changes on this page.<\\/div><div><br \\/><\\/div><h3>How long we retain your information?<\\/h3><div>At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/div><div><br \\/><\\/div><h3>What we don\\u2019t do with your data<\\/h3><div>We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/div>\"}', 0, '2021-06-12 08:50:04', '2021-06-15 06:24:02'),
(48, 'extra.element', '{\"title\":\"Privacy Policy\",\"description\":\"<h3>What information do we collect?<\\/h3><div>We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/div><div><br \\/><\\/div><h3>How do we protect your information?<\\/h3><div>All provided delicate\\/credit data is sent through Stripe.<\\/div><div>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/div><div><br \\/><\\/div><h3>Do we disclose any information to outside parties?<\\/h3><div>We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/div><div><br \\/><\\/div><h3>Children\'s Online Privacy Protection Act Compliance<\\/h3><div>We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/div><div><br \\/><\\/div><h3>Changes to our Privacy Policy<\\/h3><div>If we decide to change our privacy policy, we will post those changes on this page.<\\/div><div><br \\/><\\/div><h3>How long we retain your information?<\\/h3><div>At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/div><div><br \\/><\\/div><h3>What we don\\u2019t do with your data<\\/h3><div>We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/div>\"}', 0, '2021-06-12 08:50:12', '2021-06-16 06:14:55'),
(49, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"60c47f3294a841623490354.jpg\"}', 0, '2021-06-12 09:02:34', '2021-06-12 09:02:34'),
(50, 'overview.element', '{\"icon\":\"<i class=\\\"las la-users\\\"><\\/i>\",\"title\":\"Total Users\",\"number\":\"78,00,000\"}', 0, '2021-06-12 09:35:15', '2021-06-12 09:35:15'),
(51, 'overview.element', '{\"icon\":\"<i class=\\\"las la-trophy\\\"><\\/i>\",\"title\":\"Total Winners\",\"number\":\"58,00,000\"}', 0, '2021-06-12 09:35:42', '2021-06-12 09:35:42'),
(52, 'overview.element', '{\"icon\":\"<i class=\\\"las la-eye\\\"><\\/i>\",\"title\":\"Total Visitors\",\"number\":\"68,00,000\"}', 0, '2021-06-12 09:36:16', '2021-06-12 09:36:16'),
(53, 'latest_games.content', '{\"heading\":\"Latest Online Games\"}', 0, '2021-06-12 09:46:32', '2021-06-12 09:46:32'),
(54, 'how_work.content', '{\"heading\":\"It\'s Easy to Join and get reward\",\"sub_heading\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam consequatur ipsam ab aperiam facilis ad deserunt debitis ullam. Labore dolore odio magnam corporis in iure.\"}', 0, '2021-06-12 10:12:45', '2021-06-12 10:12:45'),
(55, 'how_work.element', '{\"title\":\"Create an Account\",\"content\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis, modi omnis.\"}', 0, '2021-06-12 10:13:09', '2021-06-12 10:13:09'),
(56, 'how_work.element', '{\"title\":\"Choose Lottery\",\"content\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis, modi omnis.\"}', 0, '2021-06-12 10:13:19', '2021-06-12 10:13:19'),
(57, 'how_work.element', '{\"title\":\"Pick Lottery\",\"content\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis, modi omnis.\"}', 0, '2021-06-12 10:13:31', '2021-06-12 10:13:31'),
(58, 'how_work.element', '{\"title\":\"Win Lottery\",\"content\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis, modi omnis.\"}', 0, '2021-06-12 10:13:39', '2021-06-12 10:13:39'),
(59, 'statistics.content', '{\"heading\":\"Recent Statistics\"}', 0, '2021-06-12 10:17:50', '2021-06-12 10:17:50'),
(60, 'cta.content', '{\"has_image\":\"1\",\"heading\":\"Buy ticket and get million dollars for a click\",\"sub_heading\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias amet, cum qui praesentium, esse deleniti nostrum eaque aut officiis magnam odit. Libero quaerat ad, numquam eum non.\",\"button\":\"Get Started\",\"button_link\":\"login\",\"background_image\":\"60c9d53c66c691623840060.jpg\"}', 0, '2021-06-12 10:50:02', '2021-06-16 10:11:00'),
(61, 'feature.element', '{\"icon\":\"<i class=\\\"las la-certificate\\\"><\\/i>\",\"title\":\"Best Lottery Platform\",\"content\":\"Lorem ipsum dolor sit amet consectetur adicding elit. Pariatur dolore laborum corrupti repreherit nemo facere voluptate similique id earum dinctio.\"}', 0, '2021-06-12 11:02:25', '2021-06-12 11:02:25'),
(62, 'feature.element', '{\"icon\":\"<i class=\\\"las la-wallet\\\"><\\/i>\",\"title\":\"Quick Deposit\",\"content\":\"Lorem ipsum dolor sit amet consectetur adicding elit. Pariatur dolore laborum corrupti repreherit nemo facere voluptate similique id earum dinctio.\"}', 0, '2021-06-12 11:02:43', '2021-06-12 11:02:43'),
(63, 'feature.element', '{\"icon\":\"<i class=\\\"lar la-credit-card\\\"><\\/i>\",\"title\":\"Quick Withdraw\",\"content\":\"Lorem ipsum dolor sit amet consectetur adicding elit. Pariatur dolore laborum corrupti repreherit nemo facere voluptate similique id earum dinctio.\"}', 0, '2021-06-12 11:03:09', '2021-06-12 11:03:09'),
(64, 'faq.content', '{\"has_image\":\"1\",\"image\":\"60c49f20c008a1623498528.png\"}', 0, '2021-06-12 11:18:48', '2021-06-12 11:18:48'),
(65, 'faq.element', '{\"question\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit.\",\"answer\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque perspiciatis harum voluptatibus natus alias nesciunt eius similique tenetur corporis fuga eligendi in enim quisquam dolor voluptates nihil obcaecati pariatur commodi facilis, officiis nobis porro eum architecto! Delectus ut voluptatibus voluptatem, aliquam tenetur et facilis, quia veritatis temporibus, ex magni soluta.\"}', 0, '2021-06-12 11:19:24', '2021-06-12 11:19:24'),
(66, 'faq.element', '{\"question\":\"Doloremque perspiciatis harum voluptatibus natus.\",\"answer\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque perspiciatis harum voluptatibus natus alias nesciunt eius similique tenetur corporis fuga eligendi in enim quisquam dolor voluptates nihil obcaecati pariatur commodi facilis, officiis nobis porro eum architecto! Delectus ut voluptatibus voluptatem, aliquam tenetur et facilis, quia veritatis temporibus, ex magni soluta.\"}', 0, '2021-06-12 11:19:36', '2021-06-12 11:19:36'),
(67, 'faq.element', '{\"question\":\"Nesciunt eius similique tenetur corporis fuga.\",\"answer\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque perspiciatis harum voluptatibus natus alias nesciunt eius similique tenetur corporis fuga eligendi in enim quisquam dolor voluptates nihil obcaecati pariatur commodi facilis, officiis nobis porro eum architecto! Delectus ut voluptatibus voluptatem, aliquam tenetur et facilis, quia veritatis temporibus, ex magni soluta.\"}', 0, '2021-06-12 11:19:48', '2021-06-12 11:19:48'),
(68, 'faq.element', '{\"question\":\"Eligendi in enim quisquam dolor voluptates nihil.\",\"answer\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque perspiciatis harum voluptatibus natus alias nesciunt eius similique tenetur corporis fuga eligendi in enim quisquam dolor voluptates nihil obcaecati pariatur commodi facilis, officiis nobis porro eum architecto! Delectus ut voluptatibus voluptatem, aliquam tenetur et facilis, quia veritatis temporibus, ex magni soluta.\"}', 0, '2021-06-12 11:19:57', '2021-06-12 11:19:57'),
(69, 'faq.element', '{\"question\":\"Doloremque perspiciatis harum voluptatibus natus.\",\"answer\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque perspiciatis harum voluptatibus natus alias nesciunt eius similique tenetur corporis fuga eligendi in enim quisquam dolor voluptates nihil obcaecati pariatur commodi facilis, officiis nobis porro eum architecto! Delectus ut voluptatibus voluptatem, aliquam tenetur et facilis, quia veritatis temporibus, ex magni soluta.\"}', 0, '2021-06-12 11:20:14', '2021-06-12 11:20:14'),
(70, 'recent_winners.content', '{\"heading\":\"Recent Winners\"}', 0, '2021-06-12 11:25:29', '2021-06-12 11:25:29'),
(71, 'testimonial.content', '{\"heading\":\"What User Say About Us\",\"sub_heading\":\"Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nisi suscipit, sunt obcaecati porro consequuntur quo deleniti voluptatum at qui eum quibusdam sapiente laborum.\"}', 0, '2021-06-12 11:36:28', '2021-06-12 11:36:28'),
(72, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"John Doe\",\"designation\":\"Lottery winner\",\"rating\":\"5\",\"review\":\"Lorem ipsum dolor sit amet, consectetur adicing elit. Eius aut odit non. Sunt, laborum Nemo erunt sit libero eius corporis voluptates sapie smoss.\",\"image\":\"60c4a387727371623499655.png\"}', 0, '2021-06-12 11:37:35', '2021-06-12 11:37:35'),
(73, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Jane Doe\",\"designation\":\"Lottery winner\",\"rating\":\"4\",\"review\":\"Lorem ipsum dolor sit amet, consectetur adicing elit. Eius aut odit non. Sunt, laborum Nemo erunt sit libero eius corporis voluptates sapie smoss.\",\"image\":\"60c4a39eb110a1623499678.png\"}', 0, '2021-06-12 11:37:58', '2021-06-12 11:37:58'),
(74, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Jeff Ray\",\"designation\":\"Lottery winner\",\"rating\":\"5\",\"review\":\"Lorem ipsum dolor sit amet, consectetur adicing elit. Eius aut odit non. Sunt, laborum Nemo erunt sit libero eius corporis voluptates sapie smoss.\",\"image\":\"60c4a3c0a06f91623499712.png\"}', 0, '2021-06-12 11:38:32', '2021-06-12 11:38:32'),
(75, 'payments.content', '{\"heading\":\"Payment We Accept\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptatum eaque earum quos quia? Id aspernatur ratione, voluptas nulla rerum laudantium neque ipsam eaque\"}', 0, '2021-06-12 11:50:03', '2021-06-12 11:50:03'),
(76, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a67e1e61a1623500414.png\"}', 0, '2021-06-12 11:50:14', '2021-06-12 11:50:14'),
(77, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a682a2bd21623500418.png\"}', 0, '2021-06-12 11:50:18', '2021-06-12 11:50:18'),
(78, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a6876fa0a1623500423.png\"}', 0, '2021-06-12 11:50:23', '2021-06-12 11:50:23'),
(79, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a68c1fc2c1623500428.png\"}', 0, '2021-06-12 11:50:28', '2021-06-12 11:50:28'),
(80, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a690c65c41623500432.png\"}', 0, '2021-06-12 11:50:32', '2021-06-12 11:50:32'),
(81, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a695c80c01623500437.png\"}', 0, '2021-06-12 11:50:37', '2021-06-12 11:50:37'),
(82, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a69a291041623500442.png\"}', 0, '2021-06-12 11:50:42', '2021-06-12 11:50:42'),
(83, 'payments.element', '{\"has_image\":\"1\",\"image\":\"60c4a69f4f24d1623500447.png\"}', 0, '2021-06-12 11:50:47', '2021-06-12 11:50:47'),
(84, 'subscribe.content', '{\"heading\":\"Join our mail list to get latest announcement\"}', 0, '2021-06-12 11:53:49', '2021-06-12 11:53:49'),
(85, 'lottery.content', '{\"heading\":\"Lottery Calendar\"}', 0, '2021-06-12 12:04:21', '2021-06-12 12:04:21'),
(86, 'contact.content', '{\"title\":\"Get in Touch\",\"content\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt voluptates rerum corporis molestias dolores.\",\"address\":\"Medino, NY 10012, USA\",\"phone\":\"5488848798\",\"email\":\"demo@demo.com\"}', 0, '2021-06-12 13:19:41', '2021-06-12 13:19:41'),
(87, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Laboriosam distinctio nisi debitis deleniti voluptatum corporis.\",\"short_description\":\"Lorem ipsum dolor sit amet, consectetur adipisic elit. Iusto eos rem ducimus nam! Optio, soluta. Laboriosam distinctio nisi debitis deleniti ducim.\",\"description_nic\":\"<div>Consectetuer in non nibh lorem posuere, sapien dictum dolor libero aliquam suspendisse, diam a eu tristique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum molestie, tortor ut orci ornare mi purus. Rhoncus vestibulum quam auctor id per, a luctus, in sed wisi. Arcu et, pulvinar non semper ac neque facilisis nec, pellentesque porttitor dapibus etiam non. Sit tempor nulla vivamus condimentum lorem tempus, velit diam in nullam semper culpa. Erat mattis. Volutpat vel vitae wisi nulla ipsum, non lorem dui mi, ut neque sed maecenas nonummy<\\/div><div><br \\/><\\/div><div>duis, interdum platea enim pretium suspendisse non enim. Ullamcorper duis, fermentum nulla. Suspendisse nec vestibulum odio proin ipsum tincidunt. Adipiscing pede dictum tellus nulla eget integer, felis wisi donec vehicula vel turpis ipsum.<\\/div><div><br \\/><\\/div><div>Aenean metus lectus at id. Morbi aliquet commodo a sodales eget. Eu justo ante nibh et a turpis, aliquam phasellus hymenaeos, imperdiet eget cras sociosqu, tincidunt a amet. Faucibus urna luctus, arcu ni<\\/div><div>Inceptos quam, nam felis tortor tortor sed porta, a facilisis dictumst luctus ipsum phasellus, faucibus aliquam diam ullamcorper, a id ultrices non suscipit nulla. Nam nulla aliquet, imperdiet sit in massa a enim, amet suscipit dui sodales class vestibulum, in ut nec urna sed quis vestibulum. Quisque quis amet turpis, rhoncus integer, sed elit sed amet in mi, amet magna feugiat.tique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit<\\/div><div><br \\/><\\/div><div>quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum dignissim suspendisse purus. Amet vivamus vivamus netus nec orci molestie, nisl morbi pulvinar vulputate eget, mi a mauris odio vel vulputate, cubilia praesent posuere tellus at velit.urpis nec ligula, pulvinar erat<\\/div><div><br \\/><\\/div><div>Quam arcu ac, at adipiscing justo lectus sit nibh massa. Quam euismod, nam eu tellus, et massa non mauris consequat, consequat lectus ultrices. Mi laoreet nunc consequat erat amet. Sem dignissim. Dignissim ac non, convallis id, vitae aliquam id urna a, placerat urna mauris aliquet lorem molestie nec.<\\/div>\",\"image\":\"60c73a74705b61623669364.jpg\"}', 3, '2021-06-14 10:46:04', '2021-06-16 05:37:38'),
(88, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Laboriosam distinctio nisi debitis deleniti voluptatum corporis.\",\"short_description\":\"Lorem ipsum dolor sit amet, consectetur adipisic elit. Iusto eos rem ducimus nam! Optio, soluta. Laboriosam distinctio nisi debitis deleniti ducim.\",\"description_nic\":\"<div>Consectetuer in non nibh lorem posuere, sapien dictum dolor libero aliquam suspendisse, diam a eu tristique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum molestie, tortor ut orci ornare mi purus. Rhoncus vestibulum quam auctor id per, a luctus, in sed wisi. Arcu et, pulvinar non semper ac neque facilisis nec, pellentesque porttitor dapibus etiam non. Sit tempor nulla vivamus condimentum lorem tempus, velit diam in nullam semper culpa. Erat mattis. Volutpat vel vitae wisi nulla ipsum, non lorem dui mi, ut neque sed maecenas nonummy<\\/div><div><br \\/><\\/div><div>duis, interdum platea enim pretium suspendisse non enim. Ullamcorper duis, fermentum nulla. Suspendisse nec vestibulum odio proin ipsum tincidunt. Adipiscing pede dictum tellus nulla eget integer, felis wisi donec vehicula vel turpis ipsum.<\\/div><div><br \\/><\\/div><div>Aenean metus lectus at id. Morbi aliquet commodo a sodales eget. Eu justo ante nibh et a turpis, aliquam phasellus hymenaeos, imperdiet eget cras sociosqu, tincidunt a amet. Faucibus urna luctus, arcu ni<\\/div><div>Inceptos quam, nam felis tortor tortor sed porta, a facilisis dictumst luctus ipsum phasellus, faucibus aliquam diam ullamcorper, a id ultrices non suscipit nulla. Nam nulla aliquet, imperdiet sit in massa a enim, amet suscipit dui sodales class vestibulum, in ut nec urna sed quis vestibulum. Quisque quis amet turpis, rhoncus integer, sed elit sed amet in mi, amet magna feugiat.tique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit<\\/div><div><br \\/><\\/div><div>quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum dignissim suspendisse purus. Amet vivamus vivamus netus nec orci molestie, nisl morbi pulvinar vulputate eget, mi a mauris odio vel vulputate, cubilia praesent posuere tellus at velit.urpis nec ligula, pulvinar erat<\\/div><div><br \\/><\\/div><div>Quam arcu ac, at adipiscing justo lectus sit nibh massa. Quam euismod, nam eu tellus, et massa non mauris consequat, consequat lectus ultrices. Mi laoreet nunc consequat erat amet. Sem dignissim. Dignissim ac non, convallis id, vitae aliquam id urna a, placerat urna mauris aliquet lorem molestie nec.<\\/div>\",\"image\":\"60c73a95ec3891623669397.jpg\"}', 4, '2021-06-14 10:46:37', '2022-08-07 03:35:00'),
(89, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Laboriosam distinctio nisi debitis deleniti voluptatum corporis.\",\"short_description\":\"Lorem ipsum dolor sit amet, consectetur adipisic elit. Iusto eos rem ducimus nam! Optio, soluta. Laboriosam distinctio nisi debitis deleniti ducim.\",\"description_nic\":\"<div>Consectetuer in non nibh lorem posuere, sapien dictum dolor libero aliquam suspendisse, diam a eu tristique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum molestie, tortor ut orci ornare mi purus. Rhoncus vestibulum quam auctor id per, a luctus, in sed wisi. Arcu et, pulvinar non semper ac neque facilisis nec, pellentesque porttitor dapibus etiam non. Sit tempor nulla vivamus condimentum lorem tempus, velit diam in nullam semper culpa. Erat mattis. Volutpat vel vitae wisi nulla ipsum, non lorem dui mi, ut neque sed maecenas nonummy<\\/div><div><br \\/><\\/div><div>duis, interdum platea enim pretium suspendisse non enim. Ullamcorper duis, fermentum nulla. Suspendisse nec vestibulum odio proin ipsum tincidunt. Adipiscing pede dictum tellus nulla eget integer, felis wisi donec vehicula vel turpis ipsum.<\\/div><div><br \\/><\\/div><div>Aenean metus lectus at id. Morbi aliquet commodo a sodales eget. Eu justo ante nibh et a turpis, aliquam phasellus hymenaeos, imperdiet eget cras sociosqu, tincidunt a amet. Faucibus urna luctus, arcu ni<\\/div><div>Inceptos quam, nam felis tortor tortor sed porta, a facilisis dictumst luctus ipsum phasellus, faucibus aliquam diam ullamcorper, a id ultrices non suscipit nulla. Nam nulla aliquet, imperdiet sit in massa a enim, amet suscipit dui sodales class vestibulum, in ut nec urna sed quis vestibulum. Quisque quis amet turpis, rhoncus integer, sed elit sed amet in mi, amet magna feugiat.tique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit<\\/div><div><br \\/><\\/div><div>quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum dignissim suspendisse purus. Amet vivamus vivamus netus nec orci molestie, nisl morbi pulvinar vulputate eget, mi a mauris odio vel vulputate, cubilia praesent posuere tellus at velit.urpis nec ligula, pulvinar erat<\\/div><div><br \\/><\\/div><div>Quam arcu ac, at adipiscing justo lectus sit nibh massa. Quam euismod, nam eu tellus, et massa non mauris consequat, consequat lectus ultrices. Mi laoreet nunc consequat erat amet. Sem dignissim. Dignissim ac non, convallis id, vitae aliquam id urna a, placerat urna mauris aliquet lorem molestie nec.<\\/div>\",\"image\":\"60c73aafdcdea1623669423.jpg\"}', 7, '2021-06-14 10:47:03', '2022-08-21 02:05:30'),
(90, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Laboriosam distinctio nisi debitis deleniti voluptatum corporis.\",\"short_description\":\"Lorem ipsum dolor sit amet, consectetur adipisic elit. Iusto eos rem ducimus nam! Optio, soluta. Laboriosam distinctio nisi debitis deleniti ducim.\",\"description_nic\":\"<div>Consectetuer in non nibh lorem posuere, sapien dictum dolor libero aliquam suspendisse, diam a eu tristique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum molestie, tortor ut orci ornare mi purus. Rhoncus vestibulum quam auctor id per, a luctus, in sed wisi. Arcu et, pulvinar non semper ac neque facilisis nec, pellentesque porttitor dapibus etiam non. Sit tempor nulla vivamus condimentum lorem tempus, velit diam in nullam semper culpa. Erat mattis. Volutpat vel vitae wisi nulla ipsum, non lorem dui mi, ut neque sed maecenas nonummy<\\/div><div><br \\/><\\/div><div>duis, interdum platea enim pretium suspendisse non enim. Ullamcorper duis, fermentum nulla. Suspendisse nec vestibulum odio proin ipsum tincidunt. Adipiscing pede dictum tellus nulla eget integer, felis wisi donec vehicula vel turpis ipsum.<\\/div><div><br \\/><\\/div><div>Aenean metus lectus at id. Morbi aliquet commodo a sodales eget. Eu justo ante nibh et a turpis, aliquam phasellus hymenaeos, imperdiet eget cras sociosqu, tincidunt a amet. Faucibus urna luctus, arcu ni<\\/div><div>Inceptos quam, nam felis tortor tortor sed porta, a facilisis dictumst luctus ipsum phasellus, faucibus aliquam diam ullamcorper, a id ultrices non suscipit nulla. Nam nulla aliquet, imperdiet sit in massa a enim, amet suscipit dui sodales class vestibulum, in ut nec urna sed quis vestibulum. Quisque quis amet turpis, rhoncus integer, sed elit sed amet in mi, amet magna feugiat.tique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit<\\/div><div><br \\/><\\/div><div>quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum dignissim suspendisse purus. Amet vivamus vivamus netus nec orci molestie, nisl morbi pulvinar vulputate eget, mi a mauris odio vel vulputate, cubilia praesent posuere tellus at velit.urpis nec ligula, pulvinar erat<\\/div><div><br \\/><\\/div><div>Quam arcu ac, at adipiscing justo lectus sit nibh massa. Quam euismod, nam eu tellus, et massa non mauris consequat, consequat lectus ultrices. Mi laoreet nunc consequat erat amet. Sem dignissim. Dignissim ac non, convallis id, vitae aliquam id urna a, placerat urna mauris aliquet lorem molestie nec.<\\/div>\",\"image\":\"60c73ac4a014c1623669444.jpg\"}', 3, '2021-06-14 10:47:24', '2021-06-16 06:20:04'),
(91, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Laboriosam distinctio nisi debitis deleniti voluptatum corporis.\",\"short_description\":\"Lorem ipsum dolor sit amet, consectetur adipisic elit. Iusto eos rem ducimus nam! Optio, soluta. Laboriosam distinctio nisi debitis deleniti ducim.\",\"description_nic\":\"<div>Consectetuer in non nibh lorem posuere, sapien dictum dolor libero aliquam suspendisse, diam a eu tristique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum molestie, tortor ut orci ornare mi purus. Rhoncus vestibulum quam auctor id per, a luctus, in sed wisi. Arcu et, pulvinar non semper ac neque facilisis nec, pellentesque porttitor dapibus etiam non. Sit tempor nulla vivamus condimentum lorem tempus, velit diam in nullam semper culpa. Erat mattis. Volutpat vel vitae wisi nulla ipsum, non lorem dui mi, ut neque sed maecenas nonummy<\\/div><div><br \\/><\\/div><div>duis, interdum platea enim pretium suspendisse non enim. Ullamcorper duis, fermentum nulla. Suspendisse nec vestibulum odio proin ipsum tincidunt. Adipiscing pede dictum tellus nulla eget integer, felis wisi donec vehicula vel turpis ipsum.<\\/div><div><br \\/><\\/div><div>Aenean metus lectus at id. Morbi aliquet commodo a sodales eget. Eu justo ante nibh et a turpis, aliquam phasellus hymenaeos, imperdiet eget cras sociosqu, tincidunt a amet. Faucibus urna luctus, arcu ni<\\/div><div>Inceptos quam, nam felis tortor tortor sed porta, a facilisis dictumst luctus ipsum phasellus, faucibus aliquam diam ullamcorper, a id ultrices non suscipit nulla. Nam nulla aliquet, imperdiet sit in massa a enim, amet suscipit dui sodales class vestibulum, in ut nec urna sed quis vestibulum. Quisque quis amet turpis, rhoncus integer, sed elit sed amet in mi, amet magna feugiat.tique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit<\\/div><div><br \\/><\\/div><div>quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum dignissim suspendisse purus. Amet vivamus vivamus netus nec orci molestie, nisl morbi pulvinar vulputate eget, mi a mauris odio vel vulputate, cubilia praesent posuere tellus at velit.urpis nec ligula, pulvinar erat<\\/div><div><br \\/><\\/div><div>Quam arcu ac, at adipiscing justo lectus sit nibh massa. Quam euismod, nam eu tellus, et massa non mauris consequat, consequat lectus ultrices. Mi laoreet nunc consequat erat amet. Sem dignissim. Dignissim ac non, convallis id, vitae aliquam id urna a, placerat urna mauris aliquet lorem molestie nec.<\\/div>\",\"image\":\"60c73ae590f041623669477.jpg\"}', 12, '2021-06-14 10:47:57', '2022-08-09 07:30:05'),
(92, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Laboriosam distinctio nisi debitis deleniti voluptatum corporis.\",\"short_description\":\"Lorem ipsum dolor sit amet, consectetur adipisic elit. Iusto eos rem ducimus nam! Optio, soluta. Laboriosam distinctio nisi debitis deleniti ducim.\",\"description_nic\":\"<div>Consectetuer in non nibh lorem posuere, sapien dictum dolor libero aliquam suspendisse, diam a eu tristique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum molestie, tortor ut orci ornare mi purus. Rhoncus vestibulum quam auctor id per, a luctus, in sed wisi. Arcu et, pulvinar non semper ac neque facilisis nec, pellentesque porttitor dapibus etiam non. Sit tempor nulla vivamus condimentum lorem tempus, velit diam in nullam semper culpa. Erat mattis. Volutpat vel vitae wisi nulla ipsum, non lorem dui mi, ut neque sed maecenas nonummy<\\/div><div><br \\/><\\/div><div>duis, interdum platea enim pretium suspendisse non enim. Ullamcorper duis, fermentum nulla. Suspendisse nec vestibulum odio proin ipsum tincidunt. Adipiscing pede dictum tellus nulla eget integer, felis wisi donec vehicula vel turpis ipsum.<\\/div><div><br \\/><\\/div><div>Aenean metus lectus at id. Morbi aliquet commodo a sodales eget. Eu justo ante nibh et a turpis, aliquam phasellus hymenaeos, imperdiet eget cras sociosqu, tincidunt a amet. Faucibus urna luctus, arcu ni<\\/div><div>Inceptos quam, nam felis tortor tortor sed porta, a facilisis dictumst luctus ipsum phasellus, faucibus aliquam diam ullamcorper, a id ultrices non suscipit nulla. Nam nulla aliquet, imperdiet sit in massa a enim, amet suscipit dui sodales class vestibulum, in ut nec urna sed quis vestibulum. Quisque quis amet turpis, rhoncus integer, sed elit sed amet in mi, amet magna feugiat.tique amet donec, sed vestibulum elit ut sollicitudin. Lacus vivamus elit<\\/div><div><br \\/><\\/div><div>quam lorem, arcu justo pede eget vivamus, fringilla vestibulum sit nec magna duis, vel sed condimentum vestibulum dignissim suspendisse purus. Amet vivamus vivamus netus nec orci molestie, nisl morbi pulvinar vulputate eget, mi a mauris odio vel vulputate, cubilia praesent posuere tellus at velit.urpis nec ligula, pulvinar erat<\\/div><div><br \\/><\\/div><div>Quam arcu ac, at adipiscing justo lectus sit nibh massa. Quam euismod, nam eu tellus, et massa non mauris consequat, consequat lectus ultrices. Mi laoreet nunc consequat erat amet. Sem dignissim. Dignissim ac non, convallis id, vitae aliquam id urna a, placerat urna mauris aliquet lorem molestie nec.<\\/div>\",\"image\":\"60c73afce52f71623669500.jpg\"}', 36, '2021-06-14 10:48:20', '2022-09-22 07:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `category_id`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'use Lorem Ipsum as their', 1, '633045540f6f01664107860.jpg', NULL, 1, '2022-09-25 05:11:00', '2022-09-25 05:11:00'),
(2, 'page editors now use Lorem', 2, '63304572b0dbb1664107890.jpg', NULL, 1, '2022-09-25 05:11:30', '2022-09-25 05:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'obscure Latin words', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, '2022-09-23 08:22:43', '2022-09-23 08:22:43'),
(2, 'injected humour and the like', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2022-09-25 05:10:18', '2022-09-25 05:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(10) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `name`, `alias`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'Paypal', 'Paypal', '5f6f1bd8678601601117144.jpg', 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-owud61543012@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:04:38'),
(2, 102, 'Perfect Money', 'PerfectMoney', '5f6f1d2a742211601117482.jpg', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"hR26aw02Q1eEeUPSIfuwNypXX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:35:33'),
(3, 103, 'Stripe Hosted', 'Stripe', '5f6f1d4bc69e71601117515.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:48:36'),
(4, 104, 'Skrill', 'Skrill', '5f6f1d41257181601117505.jpg', 1, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:30:16'),
(5, 105, 'PayTM', 'Paytm', '5f6f1d1d3ec731601117469.jpg', 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 03:00:44'),
(6, 106, 'Payeer', 'Payeer', '5f6f1bc61518b1601117126.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 107, 'PayStack', 'Paystack', '5f7096563dfb71601214038.jpg', 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:49:51'),
(8, 108, 'VoguePay', 'Voguepay', '5f6f1d5951a111601117529.jpg', 1, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:22:38'),
(9, 109, 'Flutterwave', 'Flutterwave', '5f6f1b9e4bb961601117086.jpg', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-06-05 11:37:45'),
(10, 110, 'RazorPay', 'Razorpay', '5f6f1d3672dd61601117494.jpg', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:51:32'),
(11, 111, 'Stripe Storefront', 'StripeJs', '5f7096a31ed9a1601214115.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:53:10'),
(12, 112, 'Instamojo', 'Instamojo', '5f6f1babbdbb31601117099.jpg', 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:56:20'),
(13, 501, 'Blockchain', 'Blockchain', '5f6f1b2b20c6f1601116971.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:25:00'),
(14, 502, 'Block.io', 'Blockio', '5f6f19432bedf1601116483.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"75757575\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.Blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:31:09'),
(15, 503, 'CoinPayments', 'Coinpayments', '5f6f1b6c02ecd1601117036.jpg', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:14'),
(16, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', '5f6f1b94e9b2b1601117076.jpg', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:44'),
(17, 505, 'Coingate', 'Coingate', '5f6f1b5fe18ee1601117023.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"6354mwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:49:30'),
(18, 506, 'Coinbase Commerce', 'CoinbaseCommerce', '5f6f1b4c774af1601117004.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:02:47'),
(24, 113, 'Paypal Express', 'PaypalSdk', '5f6f1bec255c61601117164.jpg', 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-20 23:01:08'),
(25, 114, 'Stripe Checkout', 'StripeV3', '5f709684736321601214084.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:58:38'),
(27, 115, 'Mollie', 'Mollie', '5f6f1bb765ab11601117111.jpg', 1, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"vi@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:44:45'),
(30, 116, 'Cashmaal', 'Cashmaal', '5f9a8b62bb4dd1603963746.png', 1, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, NULL, '2021-05-21 02:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int(10) DEFAULT NULL,
  `gateway_alias` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `dc` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Deposit Commission',
  `bc` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Buy Commission',
  `wc` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Win Commission',
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `secure_password` tinyint(1) NOT NULL DEFAULT 0,
  `agree` tinyint(1) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_cron` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `ev`, `en`, `sv`, `sn`, `dc`, `bc`, `wc`, `force_ssl`, `secure_password`, `agree`, `registration`, `active_template`, `sys_version`, `last_cron`, `created_at`, `updated_at`) VALUES
(1, 'LottoLab', 'USD', '$', 'no-reply@viserlab.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{name}}, {{message}}', '37f5f9', NULL, '{\"name\":\"php\"}', '{\"clickatell_api_key\":\"----------------------------\",\"infobip_username\":\"--------------\",\"infobip_password\":\"----------------------\",\"message_bird_api_key\":\"-------------------\",\"account_sid\":\"AC67afdacf2dacff5f163134883db92c24\",\"auth_token\":\"77726b242830fb28f52fb08c648dd7a6\",\"from\":\"+17739011523\",\"apiv2_key\":\"dfsfgdfgh\",\"name\":\"clickatell\"}', 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 'basic', NULL, '2021-06-16 19:38:53', NULL, '2021-06-16 13:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 0, '2020-07-06 03:47:55', '2021-05-18 05:37:23'),
(5, 'Hindi', 'hn', NULL, 0, 0, '2020-12-29 02:20:07', '2020-12-29 02:20:16'),
(9, 'Bangla', 'bn', NULL, 0, 0, '2021-03-14 04:37:41', '2021-05-12 05:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `lotteries`
--

CREATE TABLE `lotteries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lotteries`
--

INSERT INTO `lotteries` (`id`, `name`, `image`, `status`, `detail`, `price`, `created_at`, `updated_at`) VALUES
(1, 'US Powerball', '62ef864ee8f451659864654.png', 1, 'Waiting For Draw<br />', '260.00000000', '2022-08-07 02:30:55', '2022-08-07 02:30:55'),
(2, 'Energy Ball', '62ef87e58060a1659865061.png', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. <div><br /></div><div>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\" 1914 translation by H. Rackham \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?<br /></div>', '500.00000000', '2022-08-07 02:37:41', '2022-08-07 02:37:41'),
(3, 'Energy Football', '62f65805666961660311557.png', 1, '<span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br />', '48.00000000', '2022-08-12 06:39:17', '2022-08-12 06:39:17'),
(4, 'Energy Latecy', '62f6582f07a4b1660311599.png', 1, '<span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br />', '33.00000000', '2022-08-12 06:39:59', '2022-08-12 06:39:59'),
(5, 'Energy York', '62f65858ddb941660311640.png', 1, '<span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br />', '553.00000000', '2022-08-12 06:40:40', '2022-08-12 06:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `slug`, `component`, `data_order`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', 'HomePage', 0, 1, NULL, '2022-09-24 06:56:55', '2022-09-24 06:56:55'),
(2, 'Home 2', 'home-2', 'HomePage', 0, 1, NULL, '2022-09-24 06:57:46', '2022-09-24 06:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(208, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(209, '2022_08_13_085258_ammelias_create_admin_settings_table', 1),
(210, '2022_08_13_085312_ammelias_create_blog_categories_table', 1),
(211, '2022_08_13_085325_ammelias_create_categories_table', 1),
(212, '2022_08_13_085330_ammelias_create_contacts_table', 1),
(213, '2022_08_13_085342_ammelias_create_gallery_categories_table', 1),
(214, '2022_08_13_085350_ammelias_create_menus_table', 1),
(215, '2022_08_13_085356_ammelias_create_oauth_auth_codes_table', 1),
(216, '2022_08_13_085404_ammelias_create_oauth_clients_table', 1),
(217, '2022_08_13_085414_ammelias_create_oauth_personal_access_clients_table', 1),
(218, '2022_08_13_085420_ammelias_create_oauth_refresh_tokens_table', 1),
(219, '2022_08_13_085426_ammelias_create_password_resets_table', 1),
(220, '2022_08_13_085438_ammelias_create_portfolio_categories_table', 1),
(221, '2022_08_13_085450_ammelias_create_pricing_plans_table', 1),
(222, '2022_08_13_085458_ammelias_create_services_table', 1),
(223, '2022_08_13_085503_ammelias_create_subscribers_table', 1),
(224, '2022_08_13_085508_ammelias_create_teams_table', 1),
(225, '2022_08_13_085518_ammelias_create_testimonials_table', 1),
(226, '2022_08_13_085531_ammelias_create_users_table', 1),
(227, '2022_08_13_085541_ammelias_create_user_verification_codes_table', 1),
(228, '2022_08_13_090430_ammelias_create_oauth_access_tokens_table', 1),
(229, '2022_08_13_092532_ammelias_create_blogs_table', 1),
(230, '2022_08_13_092645_ammelias_create_galleries_table', 1),
(231, '2022_08_13_092759_ammelias_create_portfolios_table', 1),
(232, '2022_08_13_092850_ammelias_create_pricing_features_table', 1),
(233, '2022_08_13_093841_ammelias_create_blog_comments_table', 1),
(234, '2022_08_13_094005_ammelias_create_user_blogs_table', 1),
(235, '2022_08_14_013308_smartend_create_ltm_translations_table', 1),
(236, '2022_08_14_013706_smartend_create_users_table', 1),
(237, '2022_08_14_013807_smartend_create_password_resets_table', 1),
(238, '2022_08_14_013904_smartend_create_failed_jobs_table', 1),
(239, '2022_08_14_014108_smartend_create_sessions_table', 1),
(240, '2022_08_14_020311_smartend_create_webmaster_settings_table', 1),
(241, '2022_08_14_020520_smartend_create_webmaster_sections_table', 1),
(242, '2022_08_14_020609_smartend_create_webmaster_banners_table', 1),
(243, '2022_08_14_020653_smartend_create_webmails_groups_table', 1),
(244, '2022_08_14_020735_smartend_create_webmails_files_table', 1),
(245, '2022_08_14_020827_smartend_create_webmails_table', 1),
(246, '2022_08_14_020913_smartend_create_topics_table', 1),
(247, '2022_08_14_021000_smartend_create_settings_table', 1),
(248, '2022_08_14_021042_smartend_create_sections_table', 1),
(249, '2022_08_14_021216_smartend_create_photos_table', 1),
(250, '2022_08_14_021304_smartend_create_permissions_table', 1),
(251, '2022_08_14_021423_smartend_create_menus_table', 1),
(252, '2022_08_14_021619_smartend_create_maps_table', 1),
(253, '2022_08_14_021717_smartend_create_events_table', 1),
(254, '2022_08_14_021808_smartend_create_countries_table', 1),
(255, '2022_08_14_021903_smartend_create_contacts_groups_table', 1),
(256, '2022_08_14_021954_smartend_create_contacts_table', 1),
(257, '2022_08_14_022104_smartend_create_comments_table', 1),
(258, '2022_08_14_022151_smartend_create_banners_table', 1),
(259, '2022_08_14_022235_smartend_create_attach_files_table', 1),
(260, '2022_08_14_022357_smartend_create_analytics_visitors_table', 1),
(261, '2022_08_14_022446_smartend_create_analytics_pages_table', 1),
(262, '2022_08_14_022526_smartend_create_related_topics_table', 1),
(263, '2022_08_14_022610_smartend_create_topic_categories_table', 1),
(264, '2022_08_14_022710_smartend_create_topic_fields_table', 1),
(265, '2022_08_14_022754_smartend_create_webmaster_section_fields_table', 1),
(266, '2022_08_14_022838_smartend_create_webmaster_languages_table', 1),
(267, '2022_08_15_200000_add_two_factor_columns_to_users_table', 1),
(268, '2022_08_21_084915_create_sessions_table', 2),
(269, '2022_09_23_023101_create_categories_table', 3),
(270, '2022_09_23_023130_create_teams_table', 4),
(271, '2022_09_23_073037_create_admin_settings_table', 5),
(272, '2022_09_23_080936_create_services_table', 6),
(273, '2022_09_23_133035_create_portfolio_categories_table', 7),
(274, '2022_09_23_133048_create_portfolios_table', 8),
(275, '2022_09_23_144700_create_testimonials_table', 9),
(276, '2022_09_23_144832_create_blog_categories_table', 10),
(277, '2022_09_23_144850_create_blogs_table', 11),
(278, '2022_09_23_145123_create_menus_table', 12),
(279, '2022_09_23_145254_create_user_blogs_table', 13),
(280, '2022_09_23_150019_add_slug_at_blog_table', 14),
(281, '2022_09_23_150346_add_status_at_subscriber_table', 15),
(282, '2022_09_23_152130_create_gallery_categories_table', 16),
(283, '2022_09_23_152137_create_galleries_table', 17),
(284, '2022_09_23_152540_create_pricing_plans_table', 18),
(285, '2022_09_23_153204_create_pricing_features_table', 19),
(286, '2022_09_24_092458_alter_users_table_add_more', 20),
(287, '2016_06_01_000001_create_oauth_auth_codes_table', 21),
(288, '2016_06_01_000002_create_oauth_access_tokens_table', 22),
(289, '2016_06_01_000003_create_oauth_refresh_tokens_table', 23),
(290, '2016_06_01_000004_create_oauth_clients_table', 24),
(291, '2016_06_01_000005_create_oauth_personal_access_clients_table', 25),
(292, '2018_12_26_075334_create_user_verification_codes_table', 26),
(293, '2022_09_25_062816_create_blog_comments_table', 27),
(294, '2022_09_25_115727_create_contacts_table', 28);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', 'templates.basic.', '[\"lottery\",\"how_work\",\"statistics\",\"cta\",\"feature\",\"faq\",\"recent_winners\",\"testimonial\",\"payments\"]', 1, '2020-07-11 06:23:58', '2021-06-12 12:19:57'),
(15, 'About', 'about', 'templates.basic.', '[\"about\",\"feature\",\"testimonial\"]', 0, '2021-06-12 13:03:40', '2021-06-12 13:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phase_number` int(11) DEFAULT 0,
  `lottery_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT 0,
  `salled` int(11) NOT NULL DEFAULT 0,
  `draw_status` int(11) NOT NULL DEFAULT 0,
  `at_dr` int(11) NOT NULL DEFAULT 1 COMMENT 'auto draw',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`id`, `phase_number`, `lottery_id`, `start`, `end`, `quantity`, `available`, `salled`, `draw_status`, `at_dr`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-08-01 12:00:00', '2022-11-30 12:00:00', 325, 323, 2, 1, 0, 1, '2022-08-07 02:39:07', '2022-08-13 01:28:11'),
(2, 1, 1, '2022-08-03 12:00:00', '2023-01-05 12:00:00', 333, 333, 0, 0, 0, 1, '2022-08-07 02:39:26', '2022-08-07 02:39:26'),
(3, 1, 5, '2022-06-22 12:00:00', '2023-05-26 12:00:00', 2, 2, 0, 0, 1, 1, '2022-08-12 06:41:47', '2022-08-12 06:41:47'),
(4, 1, 4, '2022-08-04 12:00:00', '2023-01-28 12:00:00', 44, 44, 0, 0, 0, 1, '2022-08-12 06:42:18', '2022-08-12 06:42:18'),
(5, 1, 3, '2022-08-11 12:00:00', '2022-08-31 12:00:00', 2, 0, 2, 1, 1, 1, '2022-08-12 06:42:51', '2022-08-13 01:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

CREATE TABLE `portfolio_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '632dbb0d947d11663941389.jpg', 1, '2022-09-23 06:56:29', '2022-09-23 06:56:29'),
(2, 'Lorem Ipsum is simply', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '632dbb754436d1663941493.jpg', 1, '2022-09-23 06:58:13', '2022-09-23 06:58:13'),
(3, 'Lorem Ipsum passages', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '632dbb8ca3bad1663941516.jpg', 1, '2022-09-23 06:58:36', '2022-09-23 06:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_features`
--

CREATE TABLE `pricing_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing_features`
--

INSERT INTO `pricing_features` (`id`, `plan_id`, `title`, `created_at`, `updated_at`) VALUES
(3, 2, 'OK', '2022-09-25 05:08:24', '2022-09-25 05:08:24'),
(4, 2, 'OK 2', '2022-09-25 05:08:24', '2022-09-25 05:08:24'),
(5, 1, 'OK', '2022-09-25 05:08:39', '2022-09-25 05:08:39'),
(6, 1, 'OK 2', '2022-09-25 05:08:39', '2022-09-25 05:08:39'),
(7, 3, 'OK 2', '2022-09-25 05:09:18', '2022-09-25 05:09:18'),
(8, 3, 'OK 6', '2022-09-25 05:09:18', '2022-09-25 05:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plans`
--

CREATE TABLE `pricing_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(13,2) NOT NULL DEFAULT 0.00,
  `duration` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing_plans`
--

INSERT INTO `pricing_plans` (`id`, `title`, `description`, `price`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PageMaker including versions of Lorem Ipsum 2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '45.53', 30, 1, '2022-09-25 05:06:55', '2022-09-25 05:08:39'),
(2, 'PageMaker including versions of Lorem Ipsum', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '45.53', 30, 1, '2022-09-25 05:08:24', '2022-09-25 05:08:24'),
(3, 'Various versions have evolved', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '42.90', 365, 1, '2022-09-25 05:09:18', '2022-09-25 05:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'injected humour and the like', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '632d6df7d4abc1663921655.jpg', 1, '2022-09-23 01:27:35', '2022-09-23 01:27:35'),
(2, 'injected humour and the like 3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '632d6e81660f51663921793.jpg', 1, '2022-09-23 01:29:53', '2022-09-25 05:13:00'),
(3, 'use Lorem Ipsum as their', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '633045be96cf91664107966.jpg', 1, '2022-09-25 05:12:46', '2022-09-25 05:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sgbgAz3tTRBgXz7xeus4sdQvpZWl0kfIaVzs9Zkx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.50', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM2JjSEh1SmtlaGY0R2VGR1ZUelJmWlJzbUpzSnd5VEpxQTUwb3JkRSI7czo0OiJsYW5nIjtzOjI6ImVuIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1MjoiaHR0cDovL2l0dHJhdmVsLmxvY2FsL2FkbWluL2FtbWVsaWFzLWdlbmVyYWwtc2V0dGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1664111901);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'thuy.tranthanh.bd@gmail.com', 1, '2022-08-07 02:41:07', '2022-08-07 02:41:07'),
(2, 'tranthanhbinhmathdephcm@gmail.com', 1, '2022-08-07 02:41:24', '2022-08-07 02:41:24'),
(3, 'admin@expressmagazine.net', 1, '2022-08-07 02:41:27', '2022-08-07 02:41:27'),
(4, 'asaleotestf@gmail.com', 1, '2022-08-07 03:34:38', '2022-08-07 03:34:38'),
(5, 'thuy.tranthanh.bd.001@gmail.com', 1, '2022-08-14 03:36:32', '2022-08-14 03:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supportticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT 0,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `category_id`, `designation`, `image`, `bio`, `email`, `facebook`, `google`, `twitter`, `skype`, `linkedin`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tran Thanh Thuy', 1, 'Designation', '632d51b84dcbf1663914424.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'tranthanhbinhmathdephcm@gmail.com', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 1, '2022-09-22 23:27:04', '2022-09-22 23:27:04'),
(2, 'Tran Thanh Thuy', 2, 'Designation', '632d52626cd601663914594.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'tranthanhbinhmathdephcm02@gmail.com', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 1, '2022-09-22 23:29:54', '2022-09-22 23:29:54'),
(3, 'Tran Thanh Thuy', 3, 'Designation', '632d52b119f891663914673.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'tranthanhbinhmathdephcm3@gmail.com', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 1, '2022-09-22 23:31:13', '2022-09-22 23:31:13'),
(4, 'Tran Thanh Thuy', 2, 'Designation', '632d53017b1491663914753.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'tranthanhbinhmathdephcm4@gmail.com', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 'https://expressmagazine.net/', 1, '2022-09-22 23:32:33', '2022-09-22 23:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `profession`, `messages`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dummy text of', 'typesetting', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '632dcc9da58cf1663945885.jpg', 1, '2022-09-23 08:11:25', '2022-09-23 08:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lottery_id` int(11) NOT NULL,
  `phase_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticket_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` decimal(18,8) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `lottery_id`, `phase_id`, `user_id`, `ticket_number`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 1, '3988795227', '48.00000000', 1, NULL, NULL),
(2, 3, 5, 1, '6057274072', '48.00000000', 1, NULL, NULL),
(3, 2, 1, 1, '2596592640', '500.00000000', 1, NULL, NULL),
(4, 2, 1, 1, '1733683663', '500.00000000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '65555.00000000', '0.00000000', '65555.00000000', '+', 'YKOYPD526QEP', 'Added Balance Via Admin', '2022-08-13 01:25:39', '2022-08-13 01:25:39'),
(2, 1, '48.00000000', '0.00000000', '65507.00000000', '-', 'JYFA7O598PHO', 'Payment from user balance for 1 ticket of lottery Energy Football', '2022-08-13 01:25:54', '2022-08-13 01:25:54'),
(3, 1, '48.00000000', '0.00000000', '65459.00000000', '-', 'BOB8SAOFUJXG', 'Payment from user balance for 1 ticket of lottery Energy Football', '2022-08-13 01:26:27', '2022-08-13 01:26:27'),
(4, 1, '500.00000000', '0.00000000', '64959.00000000', '-', 'VSSSY3MB16JW', 'Payment from user balance for 1 ticket of lottery Energy Ball', '2022-08-13 01:28:00', '2022-08-13 01:28:00'),
(5, 1, '500.00000000', '0.00000000', '64459.00000000', '-', '7Q42HCX8D7F4', 'Payment from user balance for 1 ticket of lottery Energy Ball', '2022-08-13 01:28:11', '2022-08-13 01:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_notification_status` tinyint(4) NOT NULL DEFAULT 1,
  `push_notification_status` tinyint(4) NOT NULL DEFAULT 1,
  `device_type` tinyint(4) NOT NULL DEFAULT 1,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `role` tinyint(4) NOT NULL DEFAULT 2,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `country_code`, `email_notification_status`, `push_notification_status`, `device_type`, `language`, `device_id`, `zip`, `state`, `city`, `reset_code`, `email_verified`, `role`, `photo`, `phone`, `country`, `active_status`, `name`, `mobile`, `ref_by`, `balance`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tran', 'Thuy', 'tranthanhbinhmathdephcm001', 'tranthanhbinhmathdephcm.001@gmail.com', 'VN', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, 'DS', 1, 'tranthanhbinhmathdephcm.001', '840936637595', 0, '64459.00000000', '$2y$10$ntkFcfElzbOetDxoqpcoX.QErAzHh3w.jjg5wdLVjxkPiOixggPH.', '62f84b7ec746c1660439422.png', '{\"address\":\"63 Vo Van Tan\",\"state\":\"HCMC\",\"zip\":\"700000\",\"country\":\"Vietnam\",\"city\":\"HCMC\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-08-11 08:42:58', '2022-09-25 00:39:46'),
(2, 'Tran', 'Thuy', 'tranthanhbinhmathdephcm002', 'tranthanhbinhmathdephcm.002@gmail.com', 'AF', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1', 2, NULL, NULL, 'AF', 1, 'tranthanhbinhmathdephcm.002', '930936637594', 0, '0.00000000', '$2y$10$3IDQB2LX3OdtIHNrXI89AOV1EbwW8.hUoydmXRfml0JLe4ypIodku', '62f524064be621660232710.png', '{\"address\":\"10 Vo Van Tan\",\"state\":\"HCMC\",\"zip\":\"70000\",\"country\":\"Afghanistan\",\"city\":\"HCMC\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-08-11 08:44:03', '2022-09-25 00:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_blogs`
--

CREATE TABLE `user_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_blogs`
--

INSERT INTO `user_blogs` (`id`, `ip`, `blog_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 1, 1, '2022-09-24 10:03:17', '2022-09-24 16:03:17'),
(2, '127.0.0.1', 3, 1, '2022-09-24 05:39:56', '2022-09-18 05:39:56'),
(3, '127.0.0.1', 2, 1, '2022-09-21 05:39:56', '2022-09-20 05:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-08-11 08:42:59', '2022-08-11 08:42:59'),
(2, 2, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-08-11 08:44:03', '2022-08-11 08:44:03'),
(3, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-08-13 01:23:54', '2022-08-13 01:23:54'),
(4, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-08-13 18:09:43', '2022-08-13 18:09:43'),
(5, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-08-13 19:53:37', '2022-08-13 19:53:37'),
(6, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-09-22 06:46:32', '2022-09-22 06:46:32'),
(7, 1, '127.0.0.1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-09-24 04:02:44', '2022-09-24 04:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_verification_codes`
--

CREATE TABLE `user_verification_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_at` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verification_codes`
--

INSERT INTO `user_verification_codes` (`id`, `user_id`, `type`, `code`, `expired_at`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '357342', '2022-10-05', 0, '2022-09-24 22:35:44', '2022-09-24 22:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `phase_id` int(11) NOT NULL,
  `ticket_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `win_bonus` decimal(18,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`id`, `ticket_id`, `user_id`, `phase_id`, `ticket_number`, `level`, `win_bonus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '1', 0, '21.00000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `win_bonuses`
--

CREATE TABLE `win_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lottery_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `win_bonuses`
--

INSERT INTO `win_bonuses` (`id`, `level`, `amount`, `lottery_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '13', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(2, 2, '32', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(3, 3, '11', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(4, 4, '44', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(5, 5, '66', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(6, 6, '5', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(7, 7, '7', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(8, 8, '55', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(9, 9, '73', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(10, 10, '222', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(11, 11, '667', 1, 1, '2022-08-07 02:31:24', '2022-08-07 02:31:24'),
(12, 1, '11', 2, 1, '2022-08-07 02:38:13', '2022-08-07 02:38:13'),
(13, 2, '55', 2, 1, '2022-08-07 02:38:13', '2022-08-07 02:38:13'),
(14, 1, '66', 3, 1, '2022-08-12 06:39:28', '2022-08-12 06:39:28'),
(15, 2, '33', 3, 1, '2022-08-12 06:39:28', '2022-08-12 06:39:28'),
(16, 3, '77', 3, 1, '2022-08-12 06:39:28', '2022-08-12 06:39:28'),
(17, 1, '112', 4, 1, '2022-08-12 06:40:11', '2022-08-12 06:40:11'),
(18, 2, '24', 4, 1, '2022-08-12 06:40:11', '2022-08-12 06:40:11'),
(19, 3, '14', 4, 1, '2022-08-12 06:40:11', '2022-08-12 06:40:11'),
(20, 4, '345', 4, 1, '2022-08-12 06:40:11', '2022-08-12 06:40:11'),
(21, 5, '32', 4, 1, '2022-08-12 06:40:11', '2022-08-12 06:40:11'),
(22, 6, '5', 4, 1, '2022-08-12 06:40:11', '2022-08-12 06:40:11'),
(23, 7, '2', 4, 1, '2022-08-12 06:40:11', '2022-08-12 06:40:11'),
(24, 1, '13', 5, 1, '2022-08-12 06:40:48', '2022-08-12 06:40:48'),
(25, 2, '534', 5, 1, '2022-08-12 06:40:48', '2022-08-12 06:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `withdraw_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT 0.00000000,
  `max_limit` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `delay` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(28,8) DEFAULT 0.00000000,
  `rate` decimal(28,8) DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_category_id_foreign` (`category_id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_logs`
--
ALTER TABLE `commission_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_category_id_foreign` (`category_id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotteries`
--
ALTER TABLE `lotteries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_category_id_foreign` (`category_id`);

--
-- Indexes for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing_features`
--
ALTER TABLE `pricing_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricing_features_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_category_id_foreign` (`category_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_blogs_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_verification_codes`
--
ALTER TABLE `user_verification_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_verification_codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `win_bonuses`
--
ALTER TABLE `win_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `commission_logs`
--
ALTER TABLE `commission_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lotteries`
--
ALTER TABLE `lotteries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pricing_features`
--
ALTER TABLE `pricing_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_blogs`
--
ALTER TABLE `user_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_verification_codes`
--
ALTER TABLE `user_verification_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `win_bonuses`
--
ALTER TABLE `win_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `gallery_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `portfolio_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pricing_features`
--
ALTER TABLE `pricing_features`
  ADD CONSTRAINT `pricing_features_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `pricing_plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD CONSTRAINT `user_blogs_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_verification_codes`
--
ALTER TABLE `user_verification_codes`
  ADD CONSTRAINT `user_verification_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
