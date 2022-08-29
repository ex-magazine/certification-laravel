-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2022 at 05:17 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, '1000.00', '2022-08-04 07:41:39', '2022-08-04 07:41:39'),
(2, 2, '1000.00', '2022-08-04 07:49:13', '2022-08-04 07:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `transactionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transactionable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_transactions`
--

INSERT INTO `account_transactions` (`id`, `account_id`, `amount`, `balance`, `transactionable_type`, `transactionable_id`, `created_at`, `updated_at`) VALUES
(1, 1, '1000.00', '1000.00', 'App\\Models\\Bonus', 1, '2022-08-04 07:41:39', '2022-08-04 07:41:39'),
(2, 2, '1000.00', '1000.00', 'App\\Models\\Bonus', 2, '2022-08-04 07:49:13', '2022-08-04 07:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_commissions`
--

CREATE TABLE `affiliate_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `referral_account_id` bigint(20) UNSIGNED NOT NULL,
  `tier` tinyint(3) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `commissionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commissionable_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `symbol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `external_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `price` decimal(20,8) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonuses`
--

INSERT INTO `bonuses` (`id`, `account_id`, `type`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1000.00', '2022-08-04 07:41:39', '2022-08-04 07:41:39'),
(2, 2, 1, '1000.00', '2022-08-04 07:49:13', '2022-08-04 07:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_message_recipients`
--

CREATE TABLE `chat_message_recipients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `provably_fair_game_id` bigint(20) UNSIGNED NOT NULL,
  `gameable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gameable_id` bigint(20) UNSIGNED NOT NULL,
  `bet` decimal(16,2) NOT NULL,
  `win` decimal(16,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games_asset_prediction`
--

CREATE TABLE `games_asset_prediction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `direction` tinyint(4) NOT NULL,
  `open_price` decimal(18,8) NOT NULL,
  `close_price` decimal(18,8) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games_baccarat`
--

CREATE TABLE `games_baccarat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deck` varchar(280) COLLATE utf8_unicode_ci NOT NULL,
  `bet_type` tinyint(3) UNSIGNED NOT NULL,
  `player_hand` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `player_score` tinyint(3) UNSIGNED NOT NULL,
  `banker_hand` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `banker_score` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_rooms`
--

CREATE TABLE `game_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gameable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `parameters` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_room_players`
--

CREATE TABLE `game_room_players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_room_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generic_account_transactions`
--

CREATE TABLE `generic_account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `type` mediumint(8) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_03_100000_create_social_profiles_table', 1),
(4, '2019_11_01_000000_create_accounts_table', 1),
(5, '2019_11_01_000001_create_account_transactions_table', 1),
(6, '2019_11_01_000002_create_generic_account_transactions_table', 1),
(7, '2019_11_02_000000_create_provably_fair_games_table', 1),
(8, '2019_11_02_000001_create_games_table', 1),
(9, '2019_11_03_000000_create_games_baccarat_table', 1),
(10, '2019_12_01_000000_create_bonuses_table', 1),
(11, '2020_01_01_000000_create_affiliate_commissions_table', 1),
(12, '2020_01_20_000000_create_chat_rooms_table', 1),
(13, '2020_01_20_000010_create_chat_messages_table', 1),
(14, '2020_01_20_000020_create_chat_message_recipients', 1),
(15, '2020_01_22_063133_alter_users_table_add_banned_from_chat', 1),
(16, '2020_04_20_000001_create_game_rooms_table', 1),
(17, '2020_04_20_000010_create_game_room_players_table', 1),
(18, '2020_06_24_064200_alter_users_table_add_hide_profit', 1),
(19, '2021_02_16_122027_alter_users_table_add_last_seen_at', 1),
(20, '2021_03_24_135447_alter_users_table_add_permissions', 1),
(21, '2021_04_20_000000_create_multiplayer_games_table', 1),
(22, '2021_06_01_000000_create_assets_table', 1),
(23, '2021_06_01_000010_create_games_asset_prediction_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multiplayer_games`
--

CREATE TABLE `multiplayer_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provably_fair_game_id` bigint(20) UNSIGNED NOT NULL,
  `gameable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gameable_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provably_fair_games`
--

CREATE TABLE `provably_fair_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `secret` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `server_seed` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `client_seed` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `gameable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referrer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `hide_profit` tinyint(1) NOT NULL DEFAULT 0,
  `banned_from_chat` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totp_secret` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_from` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_seen_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referrer_id`, `name`, `email`, `role`, `status`, `hide_profit`, `banned_from_chat`, `avatar`, `permissions`, `password`, `remember_token`, `totp_secret`, `last_login_from`, `last_login_at`, `email_verified_at`, `created_at`, `updated_at`, `last_seen_at`) VALUES
(1, NULL, 'admin', 'thuy.tranthanh.bd@gmail.com', 2, 0, 0, 0, NULL, NULL, '$2y$10$44BS0OKNsV9.QxWok8F.EOhkMiILAo4VcdtAIPLObVTLJyFFMzw0G', 'CP0NZQV2QX9posBnIaBUjNpatUie8QhjYtR6MOBOWrqDDgbtNKp6LcYhMfct', NULL, '127.0.0.1', '2022-08-07 07:11:18', '2022-08-04 07:41:38', '2022-08-04 07:41:39', '2022-08-07 00:11:18', NULL),
(2, NULL, 'Tran Thanh Thuy', 'tranthanhbinhmathdephcm@gmail.com', 1, 0, 0, 0, NULL, NULL, '$2y$10$Olk3u.DcgRLsyhyS/dqYN.ebez57hcSSHg1vlVqabnJTfC0ebRuRO', NULL, NULL, '127.0.0.1', '2022-08-04 14:49:13', NULL, '2022-08-04 07:49:13', '2022-08-04 07:49:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_morph` (`transactionable_type`,`transactionable_id`),
  ADD KEY `account_transactions_account_id_foreign` (`account_id`);

--
-- Indexes for table `affiliate_commissions`
--
ALTER TABLE `affiliate_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affiliate_commission_morph` (`commissionable_type`,`commissionable_id`),
  ADD KEY `affiliate_commissions_account_id_foreign` (`account_id`),
  ADD KEY `affiliate_commissions_referral_account_id_foreign` (`referral_account_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assets_type_symbol_unique` (`type`,`symbol`),
  ADD KEY `assets_name_index` (`name`),
  ADD KEY `assets_status_index` (`status`),
  ADD KEY `assets_external_id_index` (`external_id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonuses_account_id_foreign` (`account_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_room_id_foreign` (`room_id`),
  ADD KEY `chat_messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `chat_message_recipients`
--
ALTER TABLE `chat_message_recipients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chat_message_recipients_message_id_user_id_unique` (`message_id`,`user_id`),
  ADD KEY `chat_message_recipients_user_id_foreign` (`user_id`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_rooms_enabled_index` (`enabled`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_morph` (`gameable_type`,`gameable_id`),
  ADD KEY `games_status_index` (`status`),
  ADD KEY `games_win_index` (`win`),
  ADD KEY `games_created_at_index` (`created_at`),
  ADD KEY `games_account_id_foreign` (`account_id`),
  ADD KEY `games_provably_fair_game_id_foreign` (`provably_fair_game_id`);

--
-- Indexes for table `games_asset_prediction`
--
ALTER TABLE `games_asset_prediction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_asset_prediction_asset_id_foreign` (`asset_id`),
  ADD KEY `games_asset_prediction_created_at_index` (`created_at`);

--
-- Indexes for table `games_baccarat`
--
ALTER TABLE `games_baccarat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_rooms`
--
ALTER TABLE `game_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_rooms_user_id_foreign` (`user_id`),
  ADD KEY `game_rooms_gameable_type_status_index` (`gameable_type`,`status`);

--
-- Indexes for table `game_room_players`
--
ALTER TABLE `game_room_players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game_room_players_game_room_id_user_id_unique` (`game_room_id`,`user_id`),
  ADD KEY `game_room_players_user_id_foreign` (`user_id`),
  ADD KEY `game_room_players_game_id_foreign` (`game_id`);

--
-- Indexes for table `generic_account_transactions`
--
ALTER TABLE `generic_account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generic_account_transactions_type_index` (`type`),
  ADD KEY `generic_account_transactions_account_id_foreign` (`account_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiplayer_games`
--
ALTER TABLE `multiplayer_games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multiplayer_games_provably_fair_game_id_foreign` (`provably_fair_game_id`),
  ADD KEY `multiplayer_games_gameable_type_gameable_id_index` (`gameable_type`,`gameable_id`),
  ADD KEY `multiplayer_games_end_time_index` (`end_time`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `provably_fair_games`
--
ALTER TABLE `provably_fair_games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provably_fair_games_hash_gameable_type_unique` (`hash`,`gameable_type`),
  ADD KEY `provably_fair_games_created_at_index` (`created_at`);

--
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_profiles_provider_name_provider_user_id_unique` (`provider_name`,`provider_user_id`),
  ADD KEY `social_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_index` (`role`),
  ADD KEY `users_status_index` (`status`),
  ADD KEY `users_referrer_id_foreign` (`referrer_id`),
  ADD KEY `users_last_seen_at_index` (`last_seen_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `affiliate_commissions`
--
ALTER TABLE `affiliate_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_message_recipients`
--
ALTER TABLE `chat_message_recipients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games_asset_prediction`
--
ALTER TABLE `games_asset_prediction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games_baccarat`
--
ALTER TABLE `games_baccarat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_rooms`
--
ALTER TABLE `game_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_room_players`
--
ALTER TABLE `game_room_players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generic_account_transactions`
--
ALTER TABLE `generic_account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `multiplayer_games`
--
ALTER TABLE `multiplayer_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provably_fair_games`
--
ALTER TABLE `provably_fair_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD CONSTRAINT `account_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `affiliate_commissions`
--
ALTER TABLE `affiliate_commissions`
  ADD CONSTRAINT `affiliate_commissions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affiliate_commissions_referral_account_id_foreign` FOREIGN KEY (`referral_account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD CONSTRAINT `bonuses_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `chat_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat_message_recipients`
--
ALTER TABLE `chat_message_recipients`
  ADD CONSTRAINT `chat_message_recipients_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `chat_messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_message_recipients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `games_provably_fair_game_id_foreign` FOREIGN KEY (`provably_fair_game_id`) REFERENCES `provably_fair_games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `games_asset_prediction`
--
ALTER TABLE `games_asset_prediction`
  ADD CONSTRAINT `games_asset_prediction_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_rooms`
--
ALTER TABLE `game_rooms`
  ADD CONSTRAINT `game_rooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_room_players`
--
ALTER TABLE `game_room_players`
  ADD CONSTRAINT `game_room_players_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_room_players_game_room_id_foreign` FOREIGN KEY (`game_room_id`) REFERENCES `game_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_room_players_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `generic_account_transactions`
--
ALTER TABLE `generic_account_transactions`
  ADD CONSTRAINT `generic_account_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `multiplayer_games`
--
ALTER TABLE `multiplayer_games`
  ADD CONSTRAINT `multiplayer_games_provably_fair_game_id_foreign` FOREIGN KEY (`provably_fair_game_id`) REFERENCES `provably_fair_games` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD CONSTRAINT `social_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_referrer_id_foreign` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
