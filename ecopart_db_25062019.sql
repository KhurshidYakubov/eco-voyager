-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 25 2019 г., 10:49
-- Версия сервера: 10.1.40-MariaDB
-- Версия PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `voyager`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
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
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(32, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 6, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(34, 6, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(35, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(36, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(37, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(39, 7, 'body', 'text_area', 'Body', 0, 1, 1, 1, 1, 1, '{}', 3),
(40, 7, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(41, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(42, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(48, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(50, 9, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(51, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(52, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(53, 9, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(6, 'features', 'features', 'Feature', 'Features', 'voyager-pie-chart', 'App\\Feature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-15 06:50:53', '2019-06-15 06:50:53'),
(7, 'news', 'news', 'News', 'News', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-18 04:19:54', '2019-06-18 04:19:54'),
(9, 'links', 'links', 'Link', 'Links', 'voyager-info-circled', 'App\\Link', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-19 05:17:15', '2019-06-19 05:30:27');

-- --------------------------------------------------------

--
-- Структура таблицы `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `features`
--

INSERT INTO `features` (`id`, `title`, `img`, `created_at`, `updated_at`) VALUES
(2, 'Экологическая политика', 'features\\June2019\\Jz2PYsYWVMOIBZqiF4oY.png', '2019-06-18 00:54:12', '2019-06-18 00:54:12'),
(3, 'Организационна партийная работа', 'features\\June2019\\WxFivU2JLBiyODpQSno8.png', '2019-06-18 00:58:00', '2019-06-18 00:58:32'),
(4, 'Работа с общесвенности', 'features\\June2019\\bUbqQQybEQDa3hBHPxZu.png', '2019-06-18 00:59:59', '2019-06-18 00:59:59'),
(5, 'Охрана окраужащей среды', 'features\\June2019\\hJeWhKUdEtLh3Vt72ujL.png', '2019-06-18 01:01:00', '2019-06-24 06:41:47');

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `title`, `img`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Официальный веб-сайт Президента Республики Узбекистан', 'links\\June2019\\0jYACOfQJUi7PxHHJU7P.png', '2019-06-19 05:23:00', '2019-06-19 05:31:05', 'https://president.uz/ru'),
(2, 'Сенат Олий Мажлиса Республики Узбекистан', 'links\\June2019\\iNfFfBWsNtpyfB3nXQLn.png', '2019-06-19 06:15:37', '2019-06-19 06:15:37', 'https://president.uz/ru'),
(3, 'Законодательная палата Олий Мажлиса Республики Узбекистан', 'links\\June2019\\1TPKuFCEDEMC9yKaL9a2.png', '2019-06-19 06:16:48', '2019-06-19 06:16:48', 'https://president.uz/ru'),
(4, 'Портал Государственной Власти Республики Узбекистан', 'links\\June2019\\4JTpNAiKEqYixl81gQ38.png', '2019-06-20 00:47:00', '2019-06-20 00:48:16', 'https://president.uz/ru'),
(5, 'Экологическое движение Респулики Узбекистан', 'links\\June2019\\euejV9sL3I0ZmabuDx4w.png', '2019-06-20 00:50:18', '2019-06-20 00:50:18', 'https://president.uz/ru'),
(6, 'Портал инвестиции Республики Узбекистан', 'links\\June2019\\9sAyuGghJtmS6pstjEW3.png', '2019-06-20 00:51:45', '2019-06-20 00:51:45', 'https://president.uz/ru');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(3, 'main_menu', '2019-06-06 02:53:11', '2019-06-06 02:53:11');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-06-05 12:34:07', '2019-06-05 12:34:07', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-06-05 12:34:07', '2019-06-07 14:30:02', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-06-05 12:34:07', '2019-06-05 12:34:07', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-06-05 12:34:07', '2019-06-05 12:34:07', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2019-06-05 12:34:07', '2019-06-07 14:30:02', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-06-05 12:34:07', '2019-06-07 14:30:02', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-06-05 12:34:07', '2019-06-07 14:30:02', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-06-05 12:34:07', '2019-06-07 14:30:02', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-06-05 12:34:07', '2019-06-07 14:30:02', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2019-06-05 12:34:07', '2019-06-07 14:30:02', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-06-05 12:34:08', '2019-06-07 14:30:02', 'voyager.hooks', NULL),
(13, 3, 'О партии', '', '_self', NULL, '#000000', NULL, 2, '2019-06-06 02:53:28', '2019-06-15 01:21:10', NULL, ''),
(14, 3, 'Новости', '', '_self', NULL, '#000000', NULL, 1, '2019-06-06 02:53:40', '2019-06-15 02:53:57', NULL, ''),
(15, 3, 'Руководство партии', '', '_self', NULL, '#000000', 13, 1, '2019-06-06 15:02:12', '2019-06-15 01:22:02', NULL, ''),
(16, 3, 'Исполнительный комитет', '', '_self', NULL, '#000000', 13, 2, '2019-06-06 15:02:23', '2019-06-15 01:22:32', NULL, ''),
(17, 3, 'Центральный совет', '', '_self', NULL, '#000000', 13, 3, '2019-06-15 01:23:03', '2019-06-15 01:23:14', NULL, ''),
(18, 3, 'Центрльная контрольная-ревизионная история', '', '_self', NULL, '#000000', 13, 4, '2019-06-15 01:24:04', '2019-06-15 01:24:11', NULL, ''),
(19, 3, 'История партии', '', '_self', NULL, '#000000', 13, 5, '2019-06-15 01:24:47', '2019-06-15 01:24:52', NULL, ''),
(20, 3, 'Территориальные организации', '', '_self', NULL, '#000000', NULL, 3, '2019-06-15 01:25:21', '2019-06-15 01:26:07', NULL, ''),
(21, 3, 'Библиотека', '', '_self', NULL, '#000000', NULL, 4, '2019-06-15 01:25:39', '2019-06-15 01:26:07', NULL, ''),
(22, 3, 'Программа и устав  партии', '', '_self', NULL, '#000000', 21, 1, '2019-06-15 01:26:02', '2019-06-15 01:26:09', NULL, ''),
(23, 3, 'Указы Президента РУ', '', '_self', NULL, '#000000', 21, 2, '2019-06-15 01:26:44', '2019-06-15 01:27:21', NULL, ''),
(24, 3, 'Законы и НПА', '', '_self', NULL, '#000000', 21, 3, '2019-06-15 01:27:42', '2019-06-15 01:27:48', NULL, ''),
(25, 3, 'Полезная литература', '', '_self', NULL, '#000000', 21, 4, '2019-06-15 01:28:07', '2019-06-15 01:28:13', NULL, ''),
(26, 3, 'Детский Эко-журнал \"Родничок\"', '', '_self', NULL, '#000000', 21, 5, '2019-06-15 01:28:57', '2019-06-15 01:29:05', NULL, ''),
(27, 3, 'Пресс-служба', '', '_self', NULL, '#000000', NULL, 5, '2019-06-15 01:30:22', '2019-06-15 01:30:59', NULL, ''),
(28, 3, 'Анонсы и объявления', '', '_self', NULL, '#000000', 27, 1, '2019-06-15 01:30:55', '2019-06-15 01:30:59', NULL, ''),
(29, 3, 'Конкурсы', '', '_self', NULL, '#000000', 27, 2, '2019-06-15 01:31:10', '2019-06-15 01:31:14', NULL, ''),
(30, 3, 'Фотографии', '', '_self', NULL, '#000000', 27, 3, '2019-06-15 01:31:35', '2019-06-15 01:31:39', NULL, ''),
(31, 3, 'Видео', '', '_self', NULL, '#000000', 27, 4, '2019-06-15 01:31:48', '2019-06-15 01:31:54', NULL, ''),
(32, 3, 'Контакты', '', '_self', NULL, '#000000', NULL, 6, '2019-06-15 01:32:24', '2019-06-15 02:53:12', NULL, ''),
(35, 1, 'Features', '', '_self', 'voyager-pie-chart', NULL, NULL, 7, '2019-06-15 06:50:54', '2019-06-15 06:50:54', 'voyager.features.index', NULL),
(36, 1, 'News', '', '_self', 'voyager-news', NULL, NULL, 8, '2019-06-18 04:19:55', '2019-06-18 04:19:55', 'voyager.news.index', NULL),
(38, 1, 'Links', '', '_self', 'voyager-info-circled', NULL, NULL, 9, '2019-06-19 05:17:15', '2019-06-19 05:17:15', 'voyager.links.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Агентство “Узатом” отреагировало на мнение блогеров', 'Недавно после показа сериала, посвященного Чернобыльским событиям в социальных сетях...', 'news\\June2019\\Hb5sJzI6vnFrexhQR6Y6.jpg', '2019-06-18 04:24:00', '2019-06-24 23:54:35'),
(2, 'Благотворительное мероприятие в Аккурганском районе', '9 июня в Аккурганском районе Ташкентской области Ташкентская областная партийная организация...', 'news\\June2019\\eMdDJtNWynhjftr9TyI3.jpg', '2019-06-18 06:15:00', '2019-06-24 23:53:50'),
(3, 'Сначала прохлада, потом настоящая жара', 'Узгидромет опубликовал традиционный прогноз на предстоящую неделю...', 'news\\June2019\\xBoql6bi6vb2N2TJNW2F.jpg', '2019-06-18 06:17:00', '2019-06-24 23:52:30');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(2, 'browse_bread', NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(3, 'browse_database', NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(4, 'browse_media', NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(5, 'browse_compass', NULL, '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(6, 'browse_menus', 'menus', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(7, 'read_menus', 'menus', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(8, 'edit_menus', 'menus', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(9, 'add_menus', 'menus', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(10, 'delete_menus', 'menus', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(11, 'browse_roles', 'roles', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(12, 'read_roles', 'roles', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(13, 'edit_roles', 'roles', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(14, 'add_roles', 'roles', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(15, 'delete_roles', 'roles', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(16, 'browse_users', 'users', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(17, 'read_users', 'users', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(18, 'edit_users', 'users', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(19, 'add_users', 'users', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(20, 'delete_users', 'users', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(21, 'browse_settings', 'settings', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(22, 'read_settings', 'settings', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(23, 'edit_settings', 'settings', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(24, 'add_settings', 'settings', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(25, 'delete_settings', 'settings', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(26, 'browse_hooks', NULL, '2019-06-05 12:34:08', '2019-06-05 12:34:08'),
(37, 'browse_features', 'features', '2019-06-15 06:50:54', '2019-06-15 06:50:54'),
(38, 'read_features', 'features', '2019-06-15 06:50:54', '2019-06-15 06:50:54'),
(39, 'edit_features', 'features', '2019-06-15 06:50:54', '2019-06-15 06:50:54'),
(40, 'add_features', 'features', '2019-06-15 06:50:54', '2019-06-15 06:50:54'),
(41, 'delete_features', 'features', '2019-06-15 06:50:54', '2019-06-15 06:50:54'),
(42, 'browse_news', 'news', '2019-06-18 04:19:55', '2019-06-18 04:19:55'),
(43, 'read_news', 'news', '2019-06-18 04:19:55', '2019-06-18 04:19:55'),
(44, 'edit_news', 'news', '2019-06-18 04:19:55', '2019-06-18 04:19:55'),
(45, 'add_news', 'news', '2019-06-18 04:19:55', '2019-06-18 04:19:55'),
(46, 'delete_news', 'news', '2019-06-18 04:19:55', '2019-06-18 04:19:55'),
(52, 'browse_links', 'links', '2019-06-19 05:17:15', '2019-06-19 05:17:15'),
(53, 'read_links', 'links', '2019-06-19 05:17:15', '2019-06-19 05:17:15'),
(54, 'edit_links', 'links', '2019-06-19 05:17:15', '2019-06-19 05:17:15'),
(55, 'add_links', 'links', '2019-06-19 05:17:15', '2019-06-19 05:17:15'),
(56, 'delete_links', 'links', '2019-06-19 05:17:15', '2019-06-19 05:17:15');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
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
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-06-05 12:34:07', '2019-06-05 12:34:07'),
(2, 'user', 'Normal User', '2019-06-05 12:34:07', '2019-06-05 12:34:07');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Экологическая партия Узбекистана', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(13, 'site.email', 'email', 'info@eco.uz', NULL, 'text', 6, 'Site'),
(14, 'site.sound', 'Sound', 'Звуковое сопровождение', NULL, 'text', 7, 'Site'),
(15, 'site.eye', 'Глаз', 'Для слабовидящих', NULL, 'text', 8, 'Site'),
(17, 'site.flag_text', 'Flag text', 'Флаг', NULL, 'text', 10, 'Site'),
(19, 'site.test_img', 'Test', 'settings\\June2019\\yXc8B9JnEPFUnLbot2oe.jpg', NULL, 'image', 11, 'Site'),
(21, 'site.gerb_text', 'Gerb text', 'Герб', NULL, 'text', 12, 'Site'),
(22, 'site.flag_img', 'Flag image', 'settings\\June2019\\NTPC6elByadNSQrOnYCe.png', NULL, 'image', 13, 'Site'),
(23, 'site.gerb_img', 'Gerb image', 'settings\\June2019\\3tnAfI5wBCVFQ7cjdEQA.png', NULL, 'image', 14, 'Site'),
(24, 'site.gimn_text', 'Gimn text', 'Гимн', NULL, 'text', 15, 'Site'),
(25, 'site.main_img', 'Main cover image', 'settings\\June2019\\y51M5DDKLfWLG0fXGzLd.jpg', NULL, 'image', 16, 'Site'),
(26, 'site.slogan', 'Слоган', 'Мы в ответе за будущее', NULL, 'text', 17, 'Site'),
(27, 'site.logo', 'Лого', 'settings\\June2019\\5AjOUGJHM3WNwLbgFXRX.png', NULL, 'image', 18, 'Site'),
(28, 'site.hotline_t', 'hot line', 'Телефон:', NULL, 'text', 19, 'Site'),
(29, 'site.hotline_p', 'hot line phone', '+99871 123-45-67', NULL, 'text', 20, 'Site'),
(30, 'site.address_t', 'address', 'Адрес:', NULL, 'text', 21, 'Site'),
(31, 'site.address_s', 'address street', 'Мирзо Улуғбек р., ул. Мустакиллик 1-дом', NULL, 'text', 22, 'Site'),
(32, 'site.w-time', 'word time', 'Рабочие дни:', NULL, 'text', 23, 'Site'),
(33, 'site.w-time-t', 'work time text', '9:00-18:00 Понедельник-Пятница', NULL, 'text', 24, 'Site'),
(34, 'site.copy_desc', 'Copyright description', 'При использовании материалов,</br>опубликованных на данном сайте, ссылка на ecouz.uz обязательна.', NULL, 'text_area', 25, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'features', 'title', 5, 'ru', 'test', '2019-06-21 00:14:06', '2019-06-21 00:14:06'),
(2, 'features', 'title', 5, 'uz', '', '2019-06-24 06:41:28', '2019-06-24 06:41:28'),
(3, 'features', 'title', 5, 'en', '', '2019-06-24 06:41:28', '2019-06-24 06:42:02'),
(4, 'news', 'title', 3, 'uz', 'Uzbek title ', '2019-06-24 23:52:30', '2019-06-24 23:52:30'),
(5, 'news', 'title', 3, 'en', 'English', '2019-06-24 23:52:30', '2019-06-24 23:52:30'),
(6, 'news', 'body', 3, 'uz', 'uzbek body', '2019-06-24 23:52:30', '2019-06-24 23:52:30'),
(7, 'news', 'body', 3, 'en', 'English body', '2019-06-24 23:52:30', '2019-06-24 23:52:30'),
(8, 'news', 'title', 2, 'uz', 'Uzbek title ', '2019-06-24 23:53:50', '2019-06-24 23:53:50'),
(9, 'news', 'title', 2, 'en', 'English title', '2019-06-24 23:53:50', '2019-06-24 23:53:50'),
(10, 'news', 'body', 2, 'uz', 'Uzbek body', '2019-06-24 23:53:50', '2019-06-24 23:53:50'),
(11, 'news', 'body', 2, 'en', 'Uzbek body', '2019-06-24 23:53:50', '2019-06-24 23:53:50'),
(12, 'news', 'title', 1, 'uz', 'Uzbek title', '2019-06-24 23:54:35', '2019-06-24 23:54:35'),
(13, 'news', 'title', 1, 'en', 'English title', '2019-06-24 23:54:35', '2019-06-24 23:54:35'),
(14, 'news', 'body', 1, 'uz', 'Uzbek body', '2019-06-24 23:54:35', '2019-06-24 23:54:35'),
(15, 'news', 'body', 1, 'en', 'English body', '2019-06-24 23:54:35', '2019-06-24 23:54:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Khurshid', 'admin@admin.com', 'users\\June2019\\OdDazcuLRGGSqVXH1Hw0.jpg', NULL, '$2y$10$95PtWsMFNkKRiY8VNVbFCeLtwBHDTdEvLb/6xgwCYkGmOwkoXCbY6', NULL, '{\"locale\":\"en\"}', '2019-06-05 12:36:49', '2019-06-05 12:38:34');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
