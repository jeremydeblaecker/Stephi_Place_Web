-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 02 juin 2020 à 16:51
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stephi`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

DROP TABLE IF EXISTS `agences`;
CREATE TABLE IF NOT EXISTS `agences` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Stephi Place', 'Stephi Place', '2020-05-31 19:48:54', '2020-05-31 19:48:54'),
(2, 'Citya', 'Citya', '2020-05-31 19:48:54', '2020-05-31 19:48:54'),
(3, 'Foncia', 'Foncia', '2020-05-31 19:48:54', '2020-05-31 19:48:54'),
(4, 'Studea', 'Studea', '2020-05-31 19:48:54', '2020-05-31 19:48:54'),
(5, 'JeremyLtd', 'JeremyLtd', '2020-05-31 19:48:54', '2020-05-31 19:48:54');

-- --------------------------------------------------------

--
-- Structure de la table `agence_estate`
--

DROP TABLE IF EXISTS `agence_estate`;
CREATE TABLE IF NOT EXISTS `agence_estate` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `agence_id` bigint(20) UNSIGNED NOT NULL,
  `estate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agence_estate_agence_id_foreign` (`agence_id`),
  KEY `agence_estate_estate_id_foreign` (`estate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `agence_estate`
--

INSERT INTO `agence_estate` (`id`, `agence_id`, `estate_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 5, 2, NULL, NULL),
(5, 2, 3, NULL, NULL),
(7, 2, 4, NULL, NULL),
(9, 1, 5, NULL, NULL),
(11, 3, 6, NULL, NULL),
(13, 2, 7, NULL, NULL),
(15, 3, 8, NULL, NULL),
(17, 2, 9, NULL, NULL),
(19, 5, 10, NULL, NULL),
(21, 1, 11, NULL, NULL),
(23, 4, 12, NULL, NULL),
(25, 3, 13, NULL, NULL),
(27, 2, 14, NULL, NULL),
(29, 3, 15, NULL, NULL),
(31, 4, 16, NULL, NULL),
(33, 5, 17, NULL, NULL),
(35, 1, 18, NULL, NULL),
(38, 2, 19, NULL, NULL),
(39, 4, 20, NULL, NULL),
(41, 1, 21, NULL, NULL),
(43, 2, 22, NULL, NULL),
(45, 2, 23, NULL, NULL),
(47, 3, 24, NULL, NULL),
(49, 2, 25, NULL, NULL),
(51, 1, 26, NULL, NULL),
(53, 5, 27, NULL, NULL),
(55, 2, 28, NULL, NULL),
(57, 5, 29, NULL, NULL),
(59, 4, 30, NULL, NULL),
(61, 2, 31, NULL, NULL),
(63, 2, 32, NULL, NULL),
(65, 4, 33, NULL, NULL),
(68, 2, 34, NULL, NULL),
(69, 3, 35, NULL, NULL),
(71, 4, 36, NULL, NULL),
(73, 2, 37, NULL, NULL),
(75, 4, 38, NULL, NULL),
(78, 4, 39, NULL, NULL),
(80, 2, 40, NULL, NULL),
(81, 4, 41, NULL, NULL),
(83, 3, 42, NULL, NULL),
(85, 1, 43, NULL, NULL),
(88, 2, 44, NULL, NULL),
(89, 1, 45, NULL, NULL),
(91, 4, 46, NULL, NULL),
(94, 2, 47, NULL, NULL),
(95, 5, 48, NULL, NULL),
(98, 1, 49, NULL, NULL),
(99, 5, 50, NULL, NULL),
(101, 1, 51, NULL, NULL),
(103, 2, 52, NULL, NULL),
(105, 5, 53, NULL, NULL),
(107, 5, 54, NULL, NULL),
(109, 1, 55, NULL, NULL),
(111, 4, 56, NULL, NULL),
(113, 5, 57, NULL, NULL),
(115, 2, 58, NULL, NULL),
(117, 1, 59, NULL, NULL),
(119, 3, 60, NULL, NULL),
(121, 2, 61, NULL, NULL),
(123, 1, 62, NULL, NULL),
(125, 1, 63, NULL, NULL),
(128, 1, 64, NULL, NULL),
(129, 5, 65, NULL, NULL),
(131, 5, 66, NULL, NULL),
(133, 5, 67, NULL, NULL),
(135, 2, 68, NULL, NULL),
(137, 4, 69, NULL, NULL),
(139, 3, 70, NULL, NULL),
(141, 3, 71, NULL, NULL),
(143, 3, 72, NULL, NULL),
(145, 2, 73, NULL, NULL),
(147, 4, 74, NULL, NULL),
(149, 2, 75, NULL, NULL),
(151, 1, 76, NULL, NULL),
(153, 3, 77, NULL, NULL),
(155, 3, 78, NULL, NULL),
(157, 5, 79, NULL, NULL),
(159, 1, 80, NULL, NULL),
(161, 1, 81, NULL, NULL),
(163, 2, 82, NULL, NULL),
(165, 3, 83, NULL, NULL),
(167, 2, 84, NULL, NULL),
(169, 4, 85, NULL, NULL),
(171, 4, 86, NULL, NULL),
(173, 4, 87, NULL, NULL),
(175, 3, 88, NULL, NULL),
(177, 5, 89, NULL, NULL),
(179, 1, 90, NULL, NULL),
(181, 4, 91, NULL, NULL),
(183, 3, 92, NULL, NULL),
(185, 5, 93, NULL, NULL),
(187, 2, 94, NULL, NULL),
(189, 5, 95, NULL, NULL),
(191, 5, 96, NULL, NULL),
(193, 4, 97, NULL, NULL),
(195, 3, 98, NULL, NULL),
(197, 3, 99, NULL, NULL),
(199, 4, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Maison', 'Maison', '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(2, 'Appartement', 'Appartement', '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(3, 'Villa', 'Villa', '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(4, 'Studio', 'Studio', '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(5, 'Manoir', 'Manoir', '2020-05-31 10:12:07', '2020-05-31 10:12:07');

-- --------------------------------------------------------

--
-- Structure de la table `category_estate`
--

DROP TABLE IF EXISTS `category_estate`;
CREATE TABLE IF NOT EXISTS `category_estate` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `estate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_estate_category_id_foreign` (`category_id`),
  KEY `category_estate_estate_id_foreign` (`estate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `category_estate`
--

INSERT INTO `category_estate` (`id`, `category_id`, `estate_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 4, 2, NULL, NULL),
(5, 4, 3, NULL, NULL),
(7, 5, 4, NULL, NULL),
(9, 2, 5, NULL, NULL),
(11, 1, 6, NULL, NULL),
(13, 3, 7, NULL, NULL),
(15, 5, 8, NULL, NULL),
(17, 5, 9, NULL, NULL),
(19, 2, 10, NULL, NULL),
(21, 4, 11, NULL, NULL),
(23, 2, 12, NULL, NULL),
(25, 1, 13, NULL, NULL),
(27, 1, 14, NULL, NULL),
(29, 3, 15, NULL, NULL),
(31, 5, 16, NULL, NULL),
(33, 1, 17, NULL, NULL),
(35, 4, 18, NULL, NULL),
(37, 2, 19, NULL, NULL),
(39, 1, 20, NULL, NULL),
(41, 5, 21, NULL, NULL),
(43, 5, 22, NULL, NULL),
(45, 4, 23, NULL, NULL),
(47, 2, 24, NULL, NULL),
(49, 4, 25, NULL, NULL),
(51, 4, 26, NULL, NULL),
(53, 4, 27, NULL, NULL),
(55, 4, 28, NULL, NULL),
(57, 5, 29, NULL, NULL),
(59, 2, 30, NULL, NULL),
(61, 5, 31, NULL, NULL),
(63, 1, 32, NULL, NULL),
(65, 3, 33, NULL, NULL),
(68, 2, 34, NULL, NULL),
(70, 1, 35, NULL, NULL),
(72, 5, 36, NULL, NULL),
(73, 4, 37, NULL, NULL),
(75, 1, 38, NULL, NULL),
(77, 4, 39, NULL, NULL),
(79, 3, 40, NULL, NULL),
(81, 2, 41, NULL, NULL),
(83, 4, 42, NULL, NULL),
(86, 2, 43, NULL, NULL),
(88, 4, 44, NULL, NULL),
(90, 2, 45, NULL, NULL),
(91, 4, 46, NULL, NULL),
(93, 3, 47, NULL, NULL),
(96, 5, 48, NULL, NULL),
(97, 1, 49, NULL, NULL),
(99, 3, 50, NULL, NULL),
(101, 1, 51, NULL, NULL),
(103, 3, 52, NULL, NULL),
(105, 1, 53, NULL, NULL),
(107, 3, 54, NULL, NULL),
(109, 5, 55, NULL, NULL),
(111, 2, 56, NULL, NULL),
(113, 3, 57, NULL, NULL),
(115, 5, 58, NULL, NULL),
(117, 1, 59, NULL, NULL),
(119, 2, 60, NULL, NULL),
(121, 2, 61, NULL, NULL),
(123, 4, 62, NULL, NULL),
(125, 4, 63, NULL, NULL),
(127, 2, 64, NULL, NULL),
(129, 5, 65, NULL, NULL),
(131, 3, 66, NULL, NULL),
(133, 4, 67, NULL, NULL),
(135, 2, 68, NULL, NULL),
(137, 2, 69, NULL, NULL),
(139, 3, 70, NULL, NULL),
(141, 5, 71, NULL, NULL),
(143, 2, 72, NULL, NULL),
(145, 3, 73, NULL, NULL),
(147, 5, 74, NULL, NULL),
(149, 1, 75, NULL, NULL),
(151, 2, 76, NULL, NULL),
(153, 4, 77, NULL, NULL),
(155, 1, 78, NULL, NULL),
(157, 1, 79, NULL, NULL),
(159, 3, 80, NULL, NULL),
(161, 3, 81, NULL, NULL),
(163, 5, 82, NULL, NULL),
(165, 1, 83, NULL, NULL),
(167, 2, 84, NULL, NULL),
(169, 1, 85, NULL, NULL),
(171, 5, 86, NULL, NULL),
(173, 3, 87, NULL, NULL),
(174, 1, 87, NULL, NULL),
(175, 4, 88, NULL, NULL),
(177, 4, 89, NULL, NULL),
(179, 2, 90, NULL, NULL),
(181, 1, 91, NULL, NULL),
(183, 4, 92, NULL, NULL),
(185, 4, 93, NULL, NULL),
(187, 2, 94, NULL, NULL),
(189, 4, 95, NULL, NULL),
(191, 1, 96, NULL, NULL),
(193, 4, 97, NULL, NULL),
(195, 3, 98, NULL, NULL),
(197, 5, 99, NULL, NULL),
(199, 3, 100, NULL, NULL),
(201, 1, 101, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'hidden', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'soustitre', 'text', 'Soustitre', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'prix', 'number', 'Prix', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(30, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(33, 4, 'estate_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category_estate\",\"pivot\":\"1\",\"taggable\":\"on\"}', 10),
(34, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(36, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(37, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(38, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(39, 4, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 8),
(40, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(42, 6, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(43, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(44, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-05-31 10:11:06', '2020-06-02 07:00:44'),
(4, 'estates', 'estates', 'Estate', 'Estates', 'voyager-home', 'App\\estate', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-31 10:23:03', '2020-05-31 18:15:48'),
(5, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-31 11:01:02', '2020-05-31 11:01:02'),
(6, 'agences', 'agences', 'Agence', 'Agences', 'voyager-paper-plane', 'App\\Agence', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-01 05:18:28', '2020-06-01 05:21:02');

-- --------------------------------------------------------

--
-- Structure de la table `estates`
--

DROP TABLE IF EXISTS `estates`;
CREATE TABLE IF NOT EXISTS `estates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soustitre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estates_title_unique` (`title`),
  UNIQUE KEY `estates_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `estates`
--

INSERT INTO `estates` (`id`, `title`, `slug`, `soustitre`, `description`, `prix`, `image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Qui facilis vel autem.', 'dolorum-nostrum-consectetur-labore-quis-repellat-labore', 'Et itaque occaecati beatae reprehenderit omnis nisi sequi quasi corporis odit aliquam ea.', 'Earum nesciunt iure atque ea est unde consequatur quibusdam qui laudantium nostrum.', 751300, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:00', '2020-05-31 11:44:36'),
(2, 'Dolor commodi soluta.', 'qui-consectetur-adipisci-vero-veritatis', 'Perferendis explicabo voluptate magnam aut vitae dolore sunt consequuntur et voluptates maxime provident aut modi voluptatem.', 'Cum qui commodi consectetur possimus sapiente omnis quis odio vel nesciunt maiores vel voluptas facere in beatae.', 922600, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(3, 'Itaque atque eligendi.', 'occaecati-voluptates-harum-incidunt-ea-magni-natus-itaque', 'Qui quia sunt eos possimus asperiores nihil qui ratione aspernatur eius consectetur deleniti sed.', 'Similique harum laboriosam est fuga voluptas dolorem enim sed cupiditate ut temporibus qui adipisci voluptas eaque hic voluptates rerum non.', 334200, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(4, 'Iste culpa quis est.', 'aperiam-vero-ut-dignissimos', 'Est laborum iusto maiores consequatur explicabo aut quaerat deserunt repellendus.', 'Aperiam illum autem itaque iste magnam et debitis possimus nam dolores natus quas et repellendus molestiae dolorum.', 111900, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(5, 'Ut dolores qui perspiciatis.', 'enim-eos-sunt-qui-error-qui-fuga-eveniet', 'Quidem odit labore voluptatem qui sint natus asperiores velit iste laudantium quod rem sunt beatae sit.', 'Voluptas tenetur vel suscipit repellat esse delectus eligendi veritatis neque est velit inventore delectus expedita.', 222800, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(6, 'Earum non omnis voluptates.', 'occaecati-soluta-non-cumque-voluptatem-deserunt-reiciendis-ducimus-molestiae', 'Neque tenetur sequi alias et fuga in quo maxime est voluptates velit quis.', 'Et numquam aliquid ipsum quisquam est quidem id aspernatur ea voluptatem mollitia et modi aut.', 700400, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(7, 'Est odit numquam sed.', 'id-consequatur-quisquam-explicabo-minus', 'Accusantium qui nostrum magni architecto consequatur porro cupiditate aliquam est maxime eum et laborum sed consequatur quasi est non.', 'Distinctio impedit rem distinctio qui eveniet consequatur tempore eius dolorem harum harum sed debitis sequi reiciendis.', 795700, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(8, 'Quas sed qui.', 'dolorem-magnam-sed-dolores', 'Neque et consequatur tempore est temporibus quae illo ut assumenda nihil eum perferendis voluptatem excepturi.', 'Neque culpa distinctio laboriosam est quia sit soluta voluptatibus dolorem et voluptatem nulla in dolor deserunt occaecati et dolorem.', 667300, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(9, 'Ipsam non culpa consequatur.', 'aut-quo-sit-debitis-ut', 'Molestias sequi adipisci aliquid libero rem accusamus excepturi non consequatur ullam.', 'Quae temporibus soluta rerum nihil perferendis id perferendis repudiandae nesciunt eveniet temporibus modi expedita sunt quo eum maiores sequi autem rerum architecto.', 611000, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(10, 'Dicta quos corrupti fugiat nulla.', 'distinctio-expedita-voluptate-necessitatibus-voluptates-sunt', 'Veniam sit ipsam incidunt sint vero ea corrupti error optio nam sed corrupti earum velit.', 'Magnam mollitia modi iste sed vel sit ut et voluptatem ipsam minima laboriosam temporibus est minima.', 297600, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(11, 'Earum qui dolores ut.', 'quas-magnam-dignissimos-non-nam', 'Nihil similique est eligendi commodi id natus qui ut nesciunt porro dolor consequatur asperiores id qui dolores aut.', 'Quisquam sed id et minima culpa totam voluptas natus repudiandae praesentium nihil perspiciatis error quas qui nemo.', 442000, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(12, 'Ea veritatis laudantium.', 'tempora-est-tempora-molestiae-omnis-odit', 'Et reiciendis doloremque nemo quos sit quos quisquam porro nisi officiis quos dolorem minus dolor.', 'Ut adipisci dolore tempore expedita aspernatur porro repellendus unde itaque facere voluptates deleniti non maiores.', 812400, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(13, 'Ullam reprehenderit aut earum.', 'ea-est-ipsam-omnis-delectus-aut', 'Voluptates voluptatum neque debitis omnis amet necessitatibus dolor eum aspernatur eum ab dolorum commodi aut earum est.', 'Illo et fugit velit et quis necessitatibus fuga eius accusamus iusto suscipit voluptas ipsam et minima non non.', 100800, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(14, 'Magnam nam voluptatem modi.', 'distinctio-quia-voluptatem-facilis-qui-aut-voluptatibus', 'Voluptas labore voluptas similique repudiandae doloremque ipsam repellat sit minima qui eligendi numquam optio nihil distinctio aut id.', 'Aut rerum exercitationem eos veritatis illum totam praesentium eos suscipit debitis id pariatur molestias pariatur assumenda et veritatis alias.', 513600, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(15, 'Amet quo eos aut.', 'qui-maiores-aut-sed-nulla-quis-doloremque', 'Dicta repellat placeat qui inventore nesciunt in et a omnis aut suscipit dolore consequuntur.', 'Aut ipsam dolor dolor delectus adipisci vitae iusto adipisci officia et soluta aut dicta fuga ipsa et omnis labore.', 434800, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(16, 'Beatae hic sapiente.', 'nesciunt-voluptas-consequatur-fugiat-soluta-est', 'Eos quia quidem sed eum minima error excepturi alias et dolorem.', 'Quis voluptatem et quam iste est nihil tenetur molestias ea dolore consectetur atque ipsa unde dolorum enim.', 542200, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(17, 'Perferendis aut aut ipsa.', 'totam-quibusdam-aliquam-accusantium-voluptas-qui-iste-consectetur', 'Doloribus consequuntur aut aut dolores alias omnis enim dolorem dolor ratione quis blanditiis a ullam.', 'Eos nobis nobis vel cupiditate autem sapiente perspiciatis odio necessitatibus consectetur quisquam at aut consequatur autem deserunt dolorum.', 724800, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(18, 'Ipsa quam voluptates omnis.', 'voluptatem-dolor-vel-nobis-doloribus-quidem', 'Neque eum soluta aut ut et nisi aut numquam cumque autem nostrum dolorem nesciunt aliquam voluptatem.', 'Vel iusto nesciunt velit culpa tempora quas vitae magnam aspernatur dolores optio unde accusamus.', 431100, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(19, 'Ut omnis voluptas.', 'laboriosam-cum-voluptas-incidunt-commodi-sed-voluptas-id', 'Sed odit aut dolorem illo eum quas tenetur consequatur quis nam deserunt impedit et praesentium molestias at quae.', 'Dolorem nihil est consequatur iusto error architecto explicabo et laborum magni voluptatibus quibusdam quas dolorem id impedit expedita.', 528500, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(20, 'Sunt facilis nisi est.', 'rerum-similique-vero-eum-mollitia-sit-reiciendis-maxime', 'Enim omnis culpa provident iusto qui corporis in dolor.', 'Delectus reprehenderit sint fugit est dolorem totam ipsum optio beatae aliquid quis autem animi inventore distinctio.', 565100, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(21, 'Est rem et.', 'quo-earum-quo-doloribus-possimus-eveniet', 'Iste quis nam id aut quia velit voluptate magni quis qui fuga quia molestias.', 'Aut voluptas quod quia est rem non in fugit impedit saepe qui est explicabo quia ea quia.', 766900, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(22, 'Doloremque perferendis esse laboriosam.', 'debitis-aut-odit-provident-ab-sed-tenetur-amet', 'Nemo vel sequi sit aut facere et blanditiis voluptatem sit voluptas quo doloremque accusamus libero.', 'Doloribus officia inventore et ipsum sint voluptatibus in sed sunt ducimus ratione sed fugit enim rerum est eius recusandae.', 770700, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(23, 'Expedita numquam soluta ut.', 'provident-cumque-quibusdam-nostrum-aliquid-natus-molestiae', 'Blanditiis itaque sint et nihil et ad blanditiis repellendus eos expedita iure perspiciatis.', 'Odit et corporis optio commodi quidem temporibus veniam voluptate sed iure dolores et quaerat.', 431300, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(24, 'Tempora asperiores odio.', 'qui-et-omnis-id-quod-et-iure-omnis', 'Quis eos repellat eum non temporibus sunt ratione laudantium et aliquam.', 'Distinctio sunt aut eius placeat consequuntur doloribus non qui sunt.', 486400, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(25, 'Aut quam ad praesentium.', 'est-praesentium-beatae-qui', 'Vel quas hic qui ipsum delectus quae culpa aspernatur sapiente et aut.', 'Itaque sit doloremque culpa sed excepturi et sint atque laboriosam at et similique eum quod et quaerat odio consectetur.', 604200, 'estates\\May2020\\DUOItpa1jUgjWTdXE4PM.jpg', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(26, 'Est sunt quisquam.', 'neque-natus-incidunt-quia-cumque-est-molestiae', 'Id odio mollitia sed molestias sunt ab nam ut molestiae.', 'Culpa porro vel ea rem aut error quas sed quis enim provident nam est voluptatem doloremque quia.', 453400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(27, 'Consequatur exercitationem nulla unde asperiores.', 'libero-similique-et-adipisci-cupiditate', 'Omnis atque facilis laboriosam eos animi iste et aut necessitatibus quis.', 'Magni eligendi quas et dolores id molestiae quia repudiandae repellendus aut dolor sed.', 395600, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(28, 'Et soluta.', 'enim-quos-non-consequuntur-voluptas-debitis', 'Et nobis tempora ut perferendis sed pariatur eos veniam provident est ut quasi sit minus magnam id.', 'Laboriosam aut praesentium dolorum ipsam non nostrum voluptatum et et quia voluptas deleniti amet aut aut.', 626300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(29, 'Qui culpa nam aut.', 'minus-voluptate-minima-dolorem-soluta-inventore-numquam', 'Qui blanditiis fugit nobis ut commodi ut rerum fuga.', 'Inventore velit consequatur hic praesentium beatae porro quaerat tempore consequuntur optio consectetur maiores qui sint cupiditate ut dicta ut autem.', 178500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(30, 'Nostrum unde ut.', 'nihil-porro-error-minima-sint-dolorem-impedit-aliquam', 'Tempore fuga voluptatum nihil ut praesentium dolores dolorem odit omnis provident.', 'Omnis explicabo iusto eius reprehenderit velit facere eveniet corrupti aliquid sapiente asperiores blanditiis consequatur tempora ipsum id tenetur rerum ipsam laudantium.', 946000, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(31, 'Accusamus incidunt eum ea.', 'iusto-ut-suscipit-nesciunt-laborum-et-quasi', 'Illo eius autem dolores ducimus non tempore cumque quos earum quos.', 'Amet et veniam voluptatum aut a cum reprehenderit non et.', 449100, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(32, 'Ex perferendis ea.', 'provident-voluptates-aliquid-a-non-illum-quis-quia-in', 'Voluptas odit deleniti ut animi veniam nostrum quia ut sequi debitis ratione vel reiciendis magnam deleniti quia dolores.', 'Nulla atque qui nisi voluptatem et repellat unde quia quis velit quos et quae assumenda optio quis magnam voluptas.', 218900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(33, 'Blanditiis libero.', 'sint-consequatur-alias-quo-aut-magnam', 'Asperiores et qui et aliquam unde et quasi aut eum.', 'Accusantium nesciunt sunt fugiat impedit consequuntur corporis aut repellendus qui rerum recusandae eum aut omnis voluptas.', 873500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(34, 'Dolor ullam excepturi.', 'labore-et-dignissimos-excepturi-quia-ex-voluptas-praesentium-ea', 'Voluptate aut quidem non modi omnis cumque officiis laudantium ipsum iste tempora labore dolorem alias corrupti natus.', 'Ut veniam distinctio sapiente explicabo qui quos voluptate rerum deleniti facere ut est tempora.', 747700, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(35, 'Magnam pariatur.', 'ut-ullam-ratione-rerum-quis-voluptatem-dolorem', 'Magni quidem excepturi quibusdam facilis sed placeat omnis magnam dignissimos est dolor.', 'Aut quibusdam nesciunt et omnis officia laudantium iure reiciendis vel officia neque.', 406700, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(36, 'Consequatur ut est itaque.', 'id-cumque-ab-ipsum-amet-itaque-quas', 'Voluptas dolorum velit fuga nisi recusandae quod autem possimus voluptate.', 'Dicta soluta optio aut facilis optio nam ut dolor dolor ut ut voluptas vero qui mollitia.', 546900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(37, 'Blanditiis alias perferendis.', 'non-harum-atque-itaque-temporibus-minima-ullam', 'Rerum dolor autem laboriosam et magni aspernatur cum minima.', 'Ducimus rerum fugiat ipsum harum aut fugiat qui non unde repellendus porro esse voluptatem voluptate adipisci temporibus et tempore et magnam.', 507400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(38, 'Voluptas numquam quo et.', 'eveniet-sit-iste-sequi', 'Adipisci voluptatem corrupti placeat earum est cumque id et nam recusandae voluptatum.', 'Deserunt sunt nihil dolorem laborum qui eum vel aliquam qui iste vel voluptate quam.', 625800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(39, 'Recusandae incidunt deleniti.', 'quaerat-placeat-ducimus-minus-enim-harum', 'Pariatur in reprehenderit sit nemo quae quas aut odit.', 'Architecto at tenetur ut quaerat corporis quasi voluptatem sunt qui optio rerum ut hic officia soluta ipsa ipsa omnis nisi.', 690000, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(40, 'Aut libero exercitationem.', 'dolorem-dolorem-laboriosam-voluptatem-vitae', 'Ut et iusto in et veritatis quis necessitatibus ipsam eos excepturi harum quibusdam dignissimos tempore itaque hic voluptas.', 'Autem eveniet est accusamus sit voluptate voluptates consequatur odio eum illum rerum reprehenderit ullam eum deserunt ea.', 970500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(41, 'Veritatis at vel non.', 'placeat-voluptatem-quia-est-adipisci-quasi-distinctio-aut', 'Praesentium sed enim laborum distinctio eius impedit in excepturi maxime eligendi error nihil.', 'Est et aliquam qui eum est sit omnis quia ullam atque quia et ea vel sed repudiandae assumenda.', 798300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(42, 'Alias maxime voluptas.', 'vero-sunt-ea-iusto-asperiores-et', 'Velit et veritatis sint atque et aut ea eum quo possimus consequuntur quo commodi dolore explicabo.', 'Velit et enim praesentium tempora illo quae autem dolorem minus earum.', 502700, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(43, 'Quaerat voluptates molestiae qui.', 'natus-reprehenderit-consequatur-suscipit-a', 'Mollitia aut facere quidem nesciunt quas eum consequuntur sit iusto magni aliquam.', 'Non beatae tenetur vitae ducimus et cumque cum est non eaque ut repellat debitis.', 891200, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(44, 'Voluptate ratione animi eveniet quasi.', 'qui-nisi-minima-et-repellendus-voluptate', 'Nihil voluptatem nesciunt eos fugiat ipsum suscipit repellat laborum totam eos totam excepturi reprehenderit minima dicta velit est et.', 'Aut et atque consequatur accusamus et voluptas non itaque magnam fugit veritatis quia voluptate.', 489100, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(45, 'Distinctio omnis ipsam aspernatur molestias.', 'blanditiis-qui-illum-et-ratione', 'Officia quis nihil commodi culpa similique ut assumenda similique nesciunt quia voluptates aut nobis vero dignissimos nostrum.', 'Maxime sunt fugiat est est fugiat sit minima accusantium possimus aliquam ab voluptatem.', 516300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(46, 'Excepturi veniam et aspernatur.', 'officia-quia-non-nostrum-dolores', 'Quibusdam dignissimos modi ut voluptatem rerum dolorum quibusdam similique ipsa similique ipsam possimus architecto ex at nulla et.', 'Qui tempora enim labore et dolorem eum voluptates consequatur accusantium enim laboriosam deserunt reprehenderit alias voluptatem quisquam dignissimos autem iusto.', 729900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(47, 'Repellat voluptatem eligendi.', 'veniam-et-distinctio-ipsa', 'Illo porro sit voluptates minima modi nihil excepturi modi aperiam voluptates expedita veritatis vel perspiciatis praesentium sequi nam.', 'Quaerat quibusdam culpa ea culpa et non beatae sequi dolorem suscipit velit rerum est consequatur doloribus explicabo accusantium et repudiandae rerum.', 782700, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(48, 'Eos facilis nisi.', 'quis-soluta-voluptates-quod-ut-in-necessitatibus-ducimus', 'Earum ut ex ut voluptas enim minima nihil id a quis commodi voluptatibus.', 'Accusamus ab omnis ab aut praesentium recusandae perspiciatis velit id sunt sed.', 241700, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(49, 'Sapiente libero omnis.', 'et-corporis-sint-aut-quibusdam-perferendis', 'Corporis veniam quo vel dolorum natus quasi assumenda voluptatum pariatur est perspiciatis incidunt enim hic itaque totam sint.', 'Recusandae iste tenetur omnis maiores eveniet reprehenderit quaerat blanditiis eos voluptates est.', 517800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(50, 'Enim autem natus repudiandae ullam.', 'est-deserunt-est-ut-ratione-itaque-quia', 'Eaque accusamus doloremque hic accusamus non ut quas tempora ut.', 'Quidem facilis cupiditate vero perspiciatis delectus eos quidem sint modi unde hic in quae earum quibusdam.', 912200, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(51, 'Consectetur aut.', 'illo-ipsam-rerum-cupiditate-et', 'Et reiciendis doloremque et deleniti quia minus ab ut repudiandae voluptas saepe rerum consequatur dolorem distinctio error quia consequatur.', 'Et nobis quidem enim consequatur minima commodi iusto recusandae sed natus inventore illum repellendus repudiandae ut quod fuga tempora vel.', 805300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(52, 'Iste ex rerum quasi.', 'dolore-et-commodi-voluptas-sint-et-deserunt-quo-rerum', 'Aspernatur saepe rem assumenda deserunt consectetur in molestias quae quidem repellat voluptatem voluptatem et.', 'Quam doloribus voluptatem velit in magni mollitia soluta numquam nihil sint autem qui.', 346400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(53, 'Sit eos enim quas.', 'eos-sit-qui-laudantium-et-unde-in', 'Aspernatur consequuntur laborum aut nisi aliquam et aut est veniam nesciunt asperiores ipsa et rerum quasi nisi.', 'Vel quae voluptatum nesciunt totam quaerat ab vel fugiat et quam dolores ut omnis iusto quod mollitia.', 779000, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(54, 'Rerum reprehenderit nesciunt.', 'quia-expedita-repellendus-eius-deleniti-est-eum-qui', 'Vel blanditiis eos natus qui quo incidunt aut aut libero et maxime praesentium.', 'Suscipit illum voluptatum quibusdam delectus id et in molestiae sit molestiae consequatur omnis in delectus omnis et quod mollitia quia qui.', 170400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(55, 'Non laudantium.', 'quis-ratione-dolorem-non-omnis-quos-hic', 'Et eos ut ad enim nemo aut non quia omnis ea ad et et iusto.', 'Et soluta neque aut repellat placeat dolore vel nostrum tempora perferendis distinctio soluta.', 516600, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(56, 'Quo iste.', 'magnam-quas-tempora-doloribus-sit-et-cumque-porro-ea', 'Vitae ea non aut accusamus delectus aut sint corrupti eveniet quaerat.', 'Sunt possimus enim nostrum facere quisquam dolor reiciendis aperiam dolor deserunt inventore magni omnis sunt recusandae minus.', 140400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(57, 'Laborum veniam maxime.', 'vel-et-at-enim-distinctio-sit-est', 'Eaque tenetur et sit non et aut et illum.', 'Reiciendis alias et tempore earum exercitationem vel sunt recusandae debitis dolore nam vel aut voluptates.', 445500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(58, 'Quia odit quisquam officiis et.', 'eveniet-enim-eos-voluptatibus-est', 'Inventore voluptates alias et voluptatum facere perferendis amet laboriosam ut.', 'Eveniet ducimus reprehenderit corrupti aut quae distinctio ipsam blanditiis distinctio voluptatibus dolorem aut in numquam ut vero ipsa culpa corporis.', 390900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(59, 'Et eveniet in eos.', 'unde-perspiciatis-non-est-sit-provident-vitae-quidem', 'Maiores commodi est tempora quam nam quis deleniti ratione quod veniam autem dolorem dolores sapiente labore labore eaque accusamus.', 'Provident velit est consequatur iure perspiciatis dolorem tenetur quo possimus quae et dignissimos veniam ullam quas eos sit laboriosam.', 144000, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(60, 'Fuga officiis sed eos eligendi.', 'delectus-autem-optio-voluptas-placeat-deleniti', 'Est totam eveniet enim qui ratione dignissimos sint ex illo in est ullam omnis perspiciatis beatae.', 'Nulla quis et voluptatem qui quia neque numquam occaecati voluptas id et dolorem non eum dolorum aut.', 728200, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(61, 'Nihil et assumenda.', 'eos-eos-quaerat-debitis', 'Quia eius voluptatum cupiditate minima non cumque nihil.', 'Animi dolores vero minima laudantium distinctio est minus quia quas omnis blanditiis.', 176600, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(62, 'Ducimus voluptas quod alias.', 'et-unde-commodi-eos', 'Inventore in adipisci aliquid dolorem ut voluptatem eligendi ut id natus nobis sit in reprehenderit enim.', 'Quod omnis vel laborum et suscipit ab at iste nostrum perferendis explicabo non enim ea quae dolores rem expedita.', 430500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(63, 'Est vitae.', 'sunt-omnis-velit-at-corrupti-beatae-libero-maxime-dicta', 'Est et nihil quod repellat qui et eos dolores cum qui voluptate tempore voluptas in et.', 'Dolorem consequatur est et voluptatem non dolorum reiciendis officiis eum voluptatem optio aliquam quia sunt iure voluptates et vero voluptas voluptas illum.', 247400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(64, 'Ut et est.', 'dolorem-voluptas-est-rerum-inventore-ut-quia', 'Eos voluptatibus nesciunt dignissimos est voluptatem facilis enim molestiae dolores aliquid et sed omnis laudantium dolores quos.', 'Ea nesciunt pariatur est est necessitatibus voluptatem optio quas eius ut.', 330800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(65, 'Molestiae dolores ea esse.', 'quis-sit-ipsam-natus-quae-sed', 'Molestiae incidunt neque pariatur et omnis vel ipsa ex ullam sint eius placeat ut sequi omnis.', 'Voluptatum repellendus nihil quaerat dolore modi a sint ut ea eos ab placeat repellat voluptatem nihil quas accusamus officia sit.', 581800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(66, 'Ea neque.', 'sit-et-voluptate-quo-nihil', 'Asperiores fugit in blanditiis ex ut beatae accusamus aut id eos quia deserunt.', 'Omnis occaecati reiciendis iste repudiandae dolor vel voluptate dicta omnis repellendus id amet recusandae fugit eum eum reiciendis sit cum et.', 720200, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(67, 'Natus aliquam tempore eius.', 'molestias-totam-officiis-vel-numquam-repellendus-et-autem-officia', 'Maxime qui excepturi possimus perferendis eligendi incidunt aperiam autem alias veritatis doloribus iusto itaque nostrum ipsum numquam.', 'Vitae et cum optio qui sequi quis tenetur inventore et temporibus.', 114800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(68, 'Illum saepe maiores.', 'et-qui-laboriosam-asperiores-quia-iure-autem', 'At minus optio qui fugiat corporis nam atque magni odio magni ut et exercitationem.', 'Omnis architecto cupiditate quia illo alias sint vel repellat laudantium.', 543600, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(69, 'Esse incidunt quas quae.', 'similique-sit-voluptatem-fugit-ex-sit-sunt-aut', 'Blanditiis consequuntur et et rerum amet quos eum placeat.', 'Itaque aut itaque sit dolor repellendus sint incidunt consectetur occaecati ad.', 805800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(70, 'Est et reiciendis praesentium.', 'ullam-aspernatur-aliquid-quia-amet-sunt-deleniti', 'Similique enim similique ut dignissimos tempora eveniet dolorem laudantium ab eum quo magnam quam est ab.', 'Delectus commodi amet est est sint cum alias in dolorem id voluptas suscipit.', 487800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(71, 'Velit rerum.', 'adipisci-at-voluptas-nisi-beatae', 'Enim soluta itaque earum odit voluptates reiciendis omnis ipsa iste tenetur velit quia fugit ducimus magni.', 'Ut distinctio sequi alias iure perspiciatis quis in consequuntur nulla sapiente velit saepe ad est.', 426200, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(72, 'Ratione inventore.', 'cumque-error-nesciunt-sunt-omnis', 'Aut aut eveniet quidem aut et pariatur soluta qui perferendis quos architecto omnis odit.', 'Ea deserunt iusto dolore nobis recusandae et sit excepturi commodi ad.', 969600, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(73, 'Maxime culpa corrupti et.', 'debitis-sed-consequuntur-eum-nisi-tempora', 'Nesciunt sit et quis qui optio beatae qui reiciendis veritatis cumque.', 'Ullam dolorum excepturi nihil fugit odio aut est quis illum ut consectetur id voluptas sed non quis aut mollitia.', 573900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(74, 'Tempora enim harum et est.', 'dolores-deleniti-libero-consequatur-ratione-omnis', 'Magni repellat corporis expedita id magni et vel iure voluptates illum accusantium et atque sunt.', 'In corporis aut cum numquam ea repellendus ad dolor error.', 983500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(75, 'Nihil tempora non.', 'adipisci-rem-dolorum-ut-veritatis-corporis-quia-quia-tempore', 'Non tempore earum voluptatibus rerum quidem iusto laboriosam repudiandae ut natus sed a temporibus esse animi omnis modi.', 'Sequi quidem pariatur doloremque velit necessitatibus repudiandae voluptatem non dolorem.', 770900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(76, 'Aut alias qui.', 'vitae-excepturi-consequuntur-molestiae-est', 'Consequuntur quo aut dolores rerum quo aliquid earum laboriosam reiciendis eum.', 'Provident et veniam optio earum deserunt odio quia fuga tempore cupiditate nesciunt odit rerum officiis asperiores itaque asperiores mollitia sed sit.', 355400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(77, 'Incidunt perspiciatis eaque.', 'quos-nobis-similique-est-esse-dicta', 'Pariatur eveniet eveniet pariatur non sunt et quae aut rerum corporis magnam eos quas aut et porro error.', 'Quod accusantium et voluptatum maiores aut porro et nulla et doloremque possimus laudantium voluptas distinctio hic commodi fugit sed.', 620500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(78, 'Tenetur praesentium ut.', 'hic-minus-officia-expedita-et-et-sunt-id-voluptatem', 'Voluptatem nemo consequuntur quos doloremque est perferendis quasi non eveniet corrupti et aut molestiae voluptates.', 'Et pariatur id distinctio quia delectus quis quis consequatur minus vitae cumque distinctio error id quia deserunt itaque qui exercitationem et.', 581300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(79, 'Voluptatibus sit magni.', 'hic-numquam-accusamus-ut-dolorem-officiis-fuga-sint', 'Pariatur voluptatem perferendis tempora dolorum mollitia rerum numquam cum nisi optio.', 'Dolorem ut ipsam et tempore tempore consequatur ratione voluptatem reprehenderit autem repudiandae ducimus quasi magnam hic nisi vero adipisci nam.', 809900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(80, 'Velit a commodi est.', 'unde-ipsam-esse-tenetur', 'Consequatur beatae perferendis voluptatem aliquid sint excepturi aspernatur qui soluta et.', 'Qui voluptatem atque possimus ut voluptatem sit aut eveniet sapiente.', 868800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(81, 'Officia accusamus dignissimos.', 'ab-officiis-sapiente-veniam', 'Eum autem aspernatur nemo expedita nulla autem velit.', 'Ducimus alias ut laboriosam cumque et enim animi nobis et aut et quam dolores ducimus pariatur molestiae.', 775200, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(82, 'Pariatur eos totam.', 'delectus-qui-numquam-facere-eos-nobis-minima', 'Qui molestias fugit necessitatibus inventore provident facere sunt repellendus rem maxime amet.', 'Sapiente iusto aut est est inventore libero dolorem numquam voluptatem.', 386700, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(83, 'Sed placeat doloremque.', 'facere-porro-error-odit-voluptatum', 'Cumque esse sed voluptatum ea ex qui et maxime a harum.', 'Fugit dolorem dignissimos tempora at quis distinctio officiis et omnis est.', 216800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(84, 'Rerum ipsam est assumenda.', 'enim-expedita-libero-voluptatum-ex-et', 'Dolorem aut fugit delectus fugit nostrum ratione nobis ipsam eaque iste aut sed asperiores excepturi quisquam et voluptatem.', 'Iusto id minus sapiente temporibus eaque et sed est ipsum quis voluptas maiores occaecati voluptatem est ducimus unde et in.', 144100, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(85, 'Doloremque optio.', 'ad-numquam-repellendus-dignissimos-iusto-debitis-ut-consequatur', 'Amet earum reiciendis laboriosam asperiores officia quisquam neque cumque autem nisi temporibus est ullam provident.', 'Animi laboriosam est optio error sapiente vero magni vel illo ut neque dolore alias et minima.', 405100, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(86, 'Qui ipsum suscipit incidunt eos.', 'nostrum-maiores-maiores-beatae-suscipit', 'Aut eligendi inventore qui quae veniam distinctio natus voluptate id sed itaque voluptas voluptate.', 'Eius adipisci cum quae sunt unde veritatis dicta nesciunt quas est ducimus quas incidunt et dolorum officia earum.', 224300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(87, 'Nam accusamus dolorem sed.', 'suscipit-eos-eaque-molestias-totam-qui-tempora', 'Quis nulla dolor explicabo deleniti consequuntur molestias dignissimos qui ullam voluptate quaerat expedita.', 'Quaerat corporis ut officia voluptatem nihil labore tempora officiis maxime ut dicta.', 313300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(88, 'Amet ullam est.', 'modi-harum-quisquam-ipsa-vitae-itaque', 'Et sunt quis ab ea odio blanditiis placeat in repellat.', 'Nisi dignissimos quisquam assumenda ut aut aliquid sint aperiam repellendus molestias et perspiciatis similique dolores nisi exercitationem provident.', 776600, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(89, 'Architecto quibusdam et.', 'labore-enim-debitis-aut-magnam-sit-veniam-ipsam', 'Et consequatur omnis alias soluta deleniti omnis dignissimos vel quos quo.', 'Et corrupti dolor non quo commodi tenetur commodi porro commodi reiciendis quasi quidem asperiores consequatur vitae est id.', 939500, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(90, 'Dolores necessitatibus ut.', 'quo-rem-asperiores-qui-dolor-eum', 'Error iure qui ut quae voluptatum eum veniam.', 'Temporibus nam voluptate consequatur accusamus a omnis ullam quibusdam ullam non exercitationem soluta doloremque harum fugiat ducimus unde et occaecati.', 812800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(91, 'Ipsa laboriosam quasi.', 'reiciendis-occaecati-sint-dolor-provident-similique', 'Et magnam atque modi ullam tenetur laborum incidunt veritatis eveniet.', 'Suscipit soluta commodi provident rerum et aspernatur natus laudantium commodi dolorem officia sit debitis provident facere architecto minima.', 429900, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(92, 'Quas ea excepturi ab doloremque.', 'qui-atque-consequatur-velit-soluta', 'Est hic aliquam mollitia nulla nobis quia et itaque quod non commodi ut quasi modi in voluptas ipsa.', 'Hic quis sit officiis qui vitae quaerat ratione ad ab distinctio error aut rem omnis corrupti velit.', 358300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(93, 'Quis error dolor vitae.', 'delectus-suscipit-expedita-occaecati-ut-vitae-et', 'Excepturi aliquam exercitationem alias quas ut totam est error quo delectus quidem autem deserunt voluptatem officia.', 'Voluptatem laborum molestias in ab voluptatibus nobis et qui quod sint tenetur consequatur doloribus veritatis dicta.', 159400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(94, 'Et repellat sed.', 'doloremque-qui-magnam-saepe-fuga-aspernatur-saepe-cum', 'Delectus nesciunt quos est voluptatem at ut ut sunt molestiae enim assumenda.', 'Vitae sed quidem at iure nulla qui consequatur et natus enim qui.', 114800, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(95, 'Asperiores saepe pariatur.', 'doloribus-nulla-et-aut-quia', 'Excepturi numquam harum autem aut eum dolorem nisi eos quae ut.', 'Ut culpa aliquid ut magnam voluptate nemo quo recusandae sint optio et blanditiis.', 251400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(96, 'Et omnis rerum.', 'architecto-ratione-quos-et-quo-dignissimos-incidunt-earum-et', 'Id tempore dolorum fuga ut qui in sint doloremque.', 'Suscipit explicabo incidunt quis et aut ab ipsa vel nemo soluta voluptates.', 755700, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(97, 'Voluptatem ut odio.', 'voluptate-nostrum-veniam-suscipit-amet-porro-consectetur-ex', 'Et consequatur et assumenda fugiat ipsam dolorem ea perspiciatis dolores rerum aliquam omnis ratione quas doloribus.', 'In vel beatae iste quas pariatur et dolorem consequatur ut.', 676100, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(98, 'Maxime minus.', 'harum-assumenda-distinctio-culpa-odit-doloribus', 'Qui aut dolor omnis nihil recusandae occaecati porro sit hic praesentium placeat et modi.', 'Et eius placeat magnam facere deserunt dolorem ullam repellendus eveniet quia mollitia enim aut qui.', 226600, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(99, 'Explicabo laborum.', 'dolor-neque-totam-non-quia-qui-ut', 'Possimus et sit explicabo fugit qui eum excepturi tempora et.', 'Suscipit sit animi minima rem odio possimus fugit tempore non nemo ut quo.', 365300, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(100, 'Est sequi ut excepturi.', 'non-et-perspiciatis-facere', 'Quaerat quia similique saepe delectus quas qui placeat beatae officiis maxime aliquam libero labore.', 'Tempore laboriosam nobis ut ut et illo delectus earum sapiente doloribus qui aut temporibus quia ex.', 624400, 'https://via.placeholder.com/300x225', NULL, '2020-05-31 10:12:07', '2020-05-31 10:12:07'),
(101, '100m²', 'En ville', 'Maison en ville', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non libero a metus cursus mollis.', 455445, 'estates\\May2020\\oPpYuVOjyS8tRBa8a5g0.jpg', '[\"estates\\\\May2020\\\\W4yAYXtQRsxD5FLDKP9k.png\",\"estates\\\\May2020\\\\leCXgmslbcO5ZiBg2Le2.jpg\"]', '2020-05-31 11:12:00', '2020-05-31 18:17:11');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-05-31 10:11:06', '2020-05-31 10:11:06');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-05-31 10:11:06', '2020-05-31 10:11:06', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2020-05-31 10:11:06', '2020-06-01 05:21:20', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 6, '2020-05-31 10:11:06', '2020-06-01 05:21:20', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2020-05-31 10:11:06', '2020-05-31 11:01:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2020-05-31 10:11:06', '2020-06-01 05:21:20', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-05-31 10:11:06', '2020-05-31 10:27:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-05-31 10:11:06', '2020-05-31 10:27:53', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-05-31 10:11:06', '2020-05-31 10:27:53', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-05-31 10:11:06', '2020-05-31 10:27:53', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2020-05-31 10:11:06', '2020-06-01 05:21:20', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-05-31 10:11:06', '2020-05-31 10:27:53', 'voyager.hooks', NULL),
(12, 1, 'Estates', '', '_self', 'voyager-home', NULL, NULL, 2, '2020-05-31 10:23:03', '2020-05-31 10:27:53', 'voyager.estates.index', NULL),
(13, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 3, '2020-05-31 11:01:02', '2020-05-31 11:01:39', 'voyager.categories.index', NULL),
(14, 1, 'Agences', '', '_self', NULL, NULL, NULL, 5, '2020-06-01 05:18:28', '2020-06-01 05:21:20', 'voyager.agences.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2016_01_01_000000_add_voyager_user_fields', 1),
(18, '2016_01_01_000000_create_data_types_table', 1),
(19, '2016_05_19_173453_create_menu_table', 1),
(20, '2016_10_21_190000_create_roles_table', 1),
(21, '2016_10_21_190000_create_settings_table', 1),
(22, '2016_11_30_135954_create_permission_table', 1),
(23, '2016_11_30_141208_create_permission_role_table', 1),
(24, '2016_12_26_201236_data_types__add__server_side', 1),
(25, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(26, '2017_01_14_005015_create_translations_table', 1),
(27, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(28, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(29, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(30, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(31, '2017_08_05_000000_add_group_to_settings_table', 1),
(32, '2017_11_26_013050_add_user_role_relationship', 1),
(33, '2017_11_26_015000_create_user_roles_table', 1),
(34, '2018_03_11_000000_add_user_settings', 1),
(35, '2018_03_14_000000_add_details_to_data_types_table', 1),
(36, '2018_03_16_000000_make_settings_value_nullable', 1),
(37, '2019_08_19_000000_create_failed_jobs_table', 1),
(38, '2020_05_30_193035_create_estates_table', 1),
(39, '2020_05_31_085152_create_categories_table', 1),
(40, '2020_05_31_085448_create_category_estate_table', 1),
(41, '2014_10_12_100000_create_password_resets_table', 2),
(42, '2020_05_31_201103_add_images_to_products_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(2, 'browse_bread', NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(3, 'browse_database', NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(4, 'browse_media', NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(5, 'browse_compass', NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(6, 'browse_menus', 'menus', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(7, 'read_menus', 'menus', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(8, 'edit_menus', 'menus', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(9, 'add_menus', 'menus', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(10, 'delete_menus', 'menus', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(11, 'browse_roles', 'roles', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(12, 'read_roles', 'roles', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(13, 'edit_roles', 'roles', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(14, 'add_roles', 'roles', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(15, 'delete_roles', 'roles', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(16, 'browse_users', 'users', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(17, 'read_users', 'users', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(18, 'edit_users', 'users', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(19, 'add_users', 'users', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(20, 'delete_users', 'users', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(21, 'browse_settings', 'settings', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(22, 'read_settings', 'settings', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(23, 'edit_settings', 'settings', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(24, 'add_settings', 'settings', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(25, 'delete_settings', 'settings', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(26, 'browse_hooks', NULL, '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(27, 'browse_estates', 'estates', '2020-05-31 10:23:03', '2020-05-31 10:23:03'),
(28, 'read_estates', 'estates', '2020-05-31 10:23:03', '2020-05-31 10:23:03'),
(29, 'edit_estates', 'estates', '2020-05-31 10:23:03', '2020-05-31 10:23:03'),
(30, 'add_estates', 'estates', '2020-05-31 10:23:03', '2020-05-31 10:23:03'),
(31, 'delete_estates', 'estates', '2020-05-31 10:23:03', '2020-05-31 10:23:03'),
(32, 'browse_categories', 'categories', '2020-05-31 11:01:02', '2020-05-31 11:01:02'),
(33, 'read_categories', 'categories', '2020-05-31 11:01:02', '2020-05-31 11:01:02'),
(34, 'edit_categories', 'categories', '2020-05-31 11:01:02', '2020-05-31 11:01:02'),
(35, 'add_categories', 'categories', '2020-05-31 11:01:02', '2020-05-31 11:01:02'),
(36, 'delete_categories', 'categories', '2020-05-31 11:01:02', '2020-05-31 11:01:02'),
(37, 'browse_agences', 'agences', '2020-06-01 05:18:28', '2020-06-01 05:18:28'),
(38, 'read_agences', 'agences', '2020-06-01 05:18:28', '2020-06-01 05:18:28'),
(39, 'edit_agences', 'agences', '2020-06-01 05:18:28', '2020-06-01 05:18:28'),
(40, 'add_agences', 'agences', '2020-06-01 05:18:28', '2020-06-01 05:18:28'),
(41, 'delete_agences', 'agences', '2020-06-01 05:18:28', '2020-06-01 05:18:28');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
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
(39, 1),
(40, 1),
(41, 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-05-31 10:11:06', '2020-05-31 10:11:06'),
(2, 'user', 'Normal User', '2020-05-31 10:11:06', '2020-05-31 10:11:06');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users\\May2020\\fqZPptEJprnbYs7ZWHaZ.JPG', NULL, '$2y$10$ax3PCLTImTe1TQsXr3ly5Om00YMjAXNjPNiRhlubhkNfBR0vd9HvC', NULL, '{\"locale\":\"fr\"}', '2020-05-31 10:18:20', '2020-05-31 10:27:09'),
(2, 2, 'jeremy', 'jeremy.deblaecker@gmail.com', 'users/default.png', NULL, '$2y$10$YN01NBciAM8h6DKChGDuAOfHGl.PLfkamN0c3Qa6jgPd45UpsDRZ6', NULL, NULL, '2020-05-31 17:37:49', '2020-05-31 17:37:49');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_estate`
--
ALTER TABLE `category_estate`
  ADD CONSTRAINT `category_estate_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_estate_estate_id_foreign` FOREIGN KEY (`estate_id`) REFERENCES `estates` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
