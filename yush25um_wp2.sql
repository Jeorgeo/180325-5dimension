-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 06 2018 г., 13:00
-- Версия сервера: 5.7.20-19-beget-5.7.20-20-1-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yush25um_wp2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_events`
--
-- Создание: Мар 25 2018 г., 16:22
--

DROP TABLE IF EXISTS `wp_aiowps_events`;
CREATE TABLE `wp_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) NOT NULL DEFAULT '',
  `username` varchar(150) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) DEFAULT NULL,
  `referer_info` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `event_data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_failed_logins`
--
-- Создание: Мар 25 2018 г., 16:22
--

DROP TABLE IF EXISTS `wp_aiowps_failed_logins`;
CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_global_meta`
--
-- Создание: Мар 25 2018 г., 16:20
--

DROP TABLE IF EXISTS `wp_aiowps_global_meta`;
CREATE TABLE `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) NOT NULL,
  `meta_key2` varchar(255) NOT NULL,
  `meta_key3` varchar(255) NOT NULL,
  `meta_key4` varchar(255) NOT NULL,
  `meta_key5` varchar(255) NOT NULL,
  `meta_value1` varchar(255) NOT NULL,
  `meta_value2` text NOT NULL,
  `meta_value3` text NOT NULL,
  `meta_value4` longtext NOT NULL,
  `meta_value5` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_login_activity`
--
-- Создание: Мар 25 2018 г., 16:22
--

DROP TABLE IF EXISTS `wp_aiowps_login_activity`;
CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) NOT NULL DEFAULT '',
  `login_country` varchar(150) NOT NULL DEFAULT '',
  `browser_type` varchar(150) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_aiowps_login_activity`
--

INSERT INTO `wp_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'yush25um', '2018-03-29 20:37:02', '0000-00-00 00:00:00', '37.45.192.101', '', ''),
(2, 1, 'yush25um', '2018-03-29 22:05:03', '0000-00-00 00:00:00', '37.45.192.101', '', ''),
(3, 1, 'yush25um', '2018-03-31 10:22:36', '0000-00-00 00:00:00', '37.45.192.101', '', ''),
(4, 1, 'yush25um', '2018-04-02 14:13:16', '0000-00-00 00:00:00', '37.45.244.72', '', ''),
(5, 1, 'yush25um', '2018-04-03 11:35:51', '0000-00-00 00:00:00', '37.45.244.72', '', ''),
(6, 1, 'yush25um', '2018-04-04 10:56:19', '0000-00-00 00:00:00', '37.45.207.120', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_login_lockdown`
--
-- Создание: Мар 25 2018 г., 16:22
--

DROP TABLE IF EXISTS `wp_aiowps_login_lockdown`;
CREATE TABLE `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) NOT NULL DEFAULT '',
  `lock_reason` varchar(128) NOT NULL DEFAULT '',
  `unlock_key` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_permanent_block`
--
-- Создание: Мар 25 2018 г., 16:20
--

DROP TABLE IF EXISTS `wp_aiowps_permanent_block`;
CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) NOT NULL DEFAULT '',
  `block_reason` varchar(128) NOT NULL DEFAULT '',
  `country_origin` varchar(50) NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-22 13:38:10', '2018-02-22 10:38:10', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--
-- Создание: Мар 25 2018 г., 16:05
-- Последнее обновление: Апр 06 2018 г., 09:33
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://5dimansion.ru', 'yes'),
(2, 'home', 'http://5dimansion.ru', 'yes'),
(3, 'blogname', '5DiMАNsion', 'yes'),
(4, 'blogdescription', 'Международный Университет Физики Сознания', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'yu.sh.2583@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:142:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"reviews_text/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"reviews_text/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"reviews_text/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"reviews_text/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"reviews_text/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"reviews_text/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"reviews_text/([^/]+)/embed/?$\";s:45:\"index.php?reviews_text=$matches[1]&embed=true\";s:33:\"reviews_text/([^/]+)/trackback/?$\";s:39:\"index.php?reviews_text=$matches[1]&tb=1\";s:41:\"reviews_text/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?reviews_text=$matches[1]&paged=$matches[2]\";s:48:\"reviews_text/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?reviews_text=$matches[1]&cpage=$matches[2]\";s:37:\"reviews_text/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?reviews_text=$matches[1]&page=$matches[2]\";s:29:\"reviews_text/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"reviews_text/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"reviews_text/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"reviews_text/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"reviews_text/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"reviews_text/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"reviews_video/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"reviews_video/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"reviews_video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"reviews_video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"reviews_video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"reviews_video/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"reviews_video/([^/]+)/embed/?$\";s:46:\"index.php?reviews_video=$matches[1]&embed=true\";s:34:\"reviews_video/([^/]+)/trackback/?$\";s:40:\"index.php?reviews_video=$matches[1]&tb=1\";s:42:\"reviews_video/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?reviews_video=$matches[1]&paged=$matches[2]\";s:49:\"reviews_video/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?reviews_video=$matches[1]&cpage=$matches[2]\";s:38:\"reviews_video/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?reviews_video=$matches[1]&page=$matches[2]\";s:30:\"reviews_video/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"reviews_video/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"reviews_video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"reviews_video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"reviews_video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"reviews_video/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:22:\"cyr3lat/cyr-to-lat.php\";i:3;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:4;s:39:\"so-widgets-bundle/so-widgets-bundle.php\";i:5;s:27:\"wp-super-cache/wp-cache.php\";i:6;s:24:\"wpforms-lite/wpforms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'dinelli', 'yes'),
(41, 'stylesheet', 'dinelli', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:88:\"SPOLEK \"NEW PLANET\" V Zamcich 227/26\r\nPrague, Bohnice 18100 Czech Republic\r\nICO 04469330\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:421:\"<ul>\r\n 	<li><a href=\"http://5dimansion.ru/knigi/\">Книги</a></li>\r\n 	<li><a href=\"http://5dimansion.ru/audio/\">Аудио</a></li>\r\n 	<li><a href=\"http://5dimansion.ru/video/\">Видео</a></li>\r\n 	<li><a href=\"http://5dimansion.ru/foto/\">Фото</a></li>\r\n 	<li><a href=\"http://5dimansion.ru/stati/\">Статьи</a></li>\r\n 	<li><a href=\"http://5dimansion.ru/otzyvy/\">Отзывы</a></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '87', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:18:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:10:\"admin_mail\";a:1:{i:0;s:14:\"custom_html-10\";}s:4:\"mail\";a:1:{i:0;s:13:\"custom_html-7\";}s:5:\"phone\";a:1:{i:0;s:13:\"custom_html-8\";}s:7:\"phone_b\";a:1:{i:0;s:13:\"custom_html-9\";}s:9:\"social_vk\";a:1:{i:0;s:13:\"custom_html-2\";}s:8:\"social_t\";a:1:{i:0;s:13:\"custom_html-3\";}s:14:\"social_youtube\";a:1:{i:0;s:13:\"custom_html-4\";}s:16:\"social_instagram\";a:1:{i:0;s:13:\"custom_html-5\";}s:8:\"social_f\";a:0:{}s:6:\"events\";a:1:{i:0;s:6:\"text-3\";}s:12:\"footer_links\";a:1:{i:0;s:12:\"sow-editor-2\";}s:15:\"footer_contacts\";a:1:{i:0;s:12:\"sow-editor-4\";}s:14:\"footer_courses\";a:1:{i:0;s:12:\"sow-editor-3\";}s:12:\"footer_about\";a:1:{i:0;s:6:\"text-2\";}s:13:\"footer_policy\";a:1:{i:0;s:12:\"sow-editor-5\";}s:11:\"footer_copy\";a:1:{i:0;s:12:\"sow-editor-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:9:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:87:\"<a href=\"https://vk.com/nellidav\" rel=\"nofollow\" target=\"_blank\" class=\"social_vk\"></a>\";}i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:86:\"<a href=\"https://vk.com/nellidav\" rel=\"nofollow\" target=\"_blank\" class=\"social_t\"></a>\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:87:\"<a href=\"https://vk.com/nellidav\" rel=\"nofollow\" target=\"_blank\" class=\"social_yt\"></a>\";}i:5;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:87:\"<a href=\"https://vk.com/nellidav\" rel=\"nofollow\" target=\"_blank\" class=\"social_in\"></a>\";}i:7;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:89:\"<a href=\"mailto:info@5dimansion.ru\" target=\"_blank\" rel=\"noopener\">info@5DiMANsion.ru</a>\";}i:8;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:48:\"<a href=\"tel:+791847690307\">+7 918 476 90 30</a>\";}i:9;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:47:\"<a href=\"tel:+79182507894\">+7 918 250 78 94</a>\";}i:10;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:69:\"<input type=\"hidden\" name=\"admin_email\" value=\"yu.sh.2583@gmail.com\">\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1523010149;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1523011090;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523011103;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523031749;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523031778;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521994915;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(141, 'new_admin_email', 'yu.sh.2583@gmail.com', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(174, 'current_theme', 'Dinelli', 'yes'),
(175, 'theme_mods_dinelli', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"menu-2\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:89;}', 'yes'),
(176, 'theme_switched', '', 'yes'),
(180, 'aiowpsec_db_version', '1.9', 'yes'),
(181, 'aio_wp_security_configs', 'a:80:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:20:\"yu.sh.2583@gmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"uu0ieaew9j4ixk6mjw3z\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"xwtagp3f07jks9swawj9\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:20:\"yu.sh.2583@gmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:20:\"yu.sh.2583@gmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";}', 'yes'),
(182, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(183, 'siteorigin_panels_initial_version', '2.5.10', 'no'),
(184, 'ossdl_off_cdn_url', 'http://5dimansion.ru', 'yes'),
(185, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(186, 'ossdl_off_exclude', '.php', 'yes'),
(187, 'ossdl_cname', '', 'yes'),
(188, 'siteorigin_panels_active_version', '2.6.3', 'yes'),
(191, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'acf_version', '4.4.12', 'yes'),
(205, 'ossdl_off_blog_url', 'http://5dimansion.ru', 'yes'),
(206, 'category_children', 'a:0:{}', 'yes'),
(212, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(215, 'wpsupercache_start', '1521997363', 'yes'),
(216, 'wpsupercache_count', '0', 'yes'),
(228, 'widget_sow-button', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(229, 'widget_sow-google-map', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(230, 'widget_sow-image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(231, 'widget_sow-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(232, 'widget_sow-post-carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(233, 'widget_sow-editor', 'a:6:{i:2;a:6:{s:5:\"title\";s:37:\"Обучающие материалы\";s:4:\"text\";s:787:\"<ul>\r\n<li><a href=\"#\">Видео «Тайные знания. Как исполнять все свои желания»</a></li>\r\n<li><a href=\"#\">Видео «Страх. Как обнаружить внутреннее знание, которое он содержит»</a></li>\r\n<li><a href=\"#\">Видео «Обида. Зачем она мне нужна и как не заболеть обидой»</a></li>\r\n<li><a href=\"#\">Видео «Чувство вины. Движущая сила или стопкран»</a></li>\r\n<li><a href=\"#\">Видео «Как потерять и как вернуть здоровье? Квантовые технологии исцеления»</a></li>\r\n<li><a href=\"#\">Аудиокнига «Пятое Измерение»</a></li>\r\n</ul>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"8028330055abf77764e067724186396\";s:19:\"_sow_form_timestamp\";s:13:\"1522513925940\";}i:3;a:6:{s:5:\"title\";s:29:\"обучающие курсы\";s:4:\"text\";s:655:\"<ul>\r\n<li><a href=\"#\">I ступень обучения «Вырвись за пределы»</a></li>\r\n<li><a href=\"#\">II ступень обучения «Мастер трансформации»</a></li>\r\n<li><a href=\"#\">III ступень обучения «Трансформирующее принятие»</a></li>\r\n<li><a href=\"#\">Курс для преподавателей «Квантовые технологии в образовании»</a></li>\r\n<li><a href=\"#\">Обучающий курс «Квантовые технологии Траблшутинга»</a></li>\r\n<li><a href=\"#\">Школа экзорцистов</a></li>\r\n</ul>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"18818918505abf7a66ca9c2421070683\";s:19:\"_sow_form_timestamp\";s:13:\"1522513876628\";}i:4;a:6:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:188:\"<ul>\r\n<li><a href=\"/wp-content/uploads/2018/03/Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov.pdf\" target=\"_blank\" rel=\"noopener\">Скачайте книгу 5DiMANsion</a></li>\r\n</ul>\";s:20:\"text_selected_editor\";s:4:\"tmce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"20476771665abfc250c7a10371426292\";s:19:\"_sow_form_timestamp\";s:13:\"1522516856853\";}i:5;a:6:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:128:\"<p><a href=\"http://5dimansion.ru/politika-konfidentsialnosti/\">Политика конфиденциальности </a></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"20476771665abfc250c7a10371426292\";s:19:\"_sow_form_timestamp\";s:13:\"1522516693152\";}i:6;a:6:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:472:\"<p>© 2018 Разработано агентством <a href=\"https://dinelli.ru\">DiNelli</a>. Все права защищены. Текст, изображения, графика, звуковые файлы, анимационные файлы, видеофайлы и их компоновка, защищены авторским правом и прочими положениями о защите интеллектуальной собственности.</p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"20476771665abfc250c7a10371426292\";s:19:\"_sow_form_timestamp\";s:13:\"1522516753093\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(234, 'siteorigin_widget_bundle_version', '1.11.7', 'yes'),
(235, 'siteorigin_widgets_old_widgets', '/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/accordion/accordion.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/button/button.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/cta/cta.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/contact/contact.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/editor/editor.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/features/features.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/google-map/google-map.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/headline/headline.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/hero/hero.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/icon/icon.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/image/image.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/image-grid/image-grid.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/slider/slider.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/layout-slider/layout-slider.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/post-carousel/post-carousel.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/price-table/price-table.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/simple-masonry/simple-masonry.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/social-media-buttons/social-media-buttons.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/tabs/tabs.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/taxonomy/taxonomy.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/testimonial/testimonial.php,/home/y/yush25um/5dimansion.ru/public_html/wp-content/plugins/so-widgets-bundle/widgets/video/video.php', 'yes'),
(508, '_transient_timeout_sow:cleared', '1523215124', 'no'),
(509, '_transient_sow:cleared', '1', 'no'),
(531, '_site_transient_timeout_browser_63d96baab63efaf21cb01f3d7fa61642', '1523272397', 'no'),
(532, '_site_transient_browser_63d96baab63efaf21cb01f3d7fa61642', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(607, 'wpforms_preview_page', '196', 'yes'),
(608, 'wpforms_version', '1.4.5.2', 'yes'),
(609, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1522761502;}', 'yes'),
(612, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(613, '_amn_wpforms-lite_last_checked', '1522800000', 'yes'),
(614, 'wpforms_review', 'a:2:{s:4:\"time\";i:1522761504;s:9:\"dismissed\";b:0;}', 'yes'),
(636, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1522968725;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(638, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"yu.sh.2583@gmail.com\";s:7:\"version\";s:5:\"4.9.5\";s:9:\"timestamp\";i:1522803709;}', 'no'),
(706, '_site_transient_timeout_theme_roots', '1522970526', 'no'),
(707, '_site_transient_theme_roots', 'a:4:{s:7:\"dinelli\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(708, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1522968728;s:7:\"checked\";a:4:{s:7:\"dinelli\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(709, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1522968729;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:5:\"4.3.2\";s:22:\"cyr3lat/cyr-to-lat.php\";s:3:\"3.5\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:5:\"2.6.3\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:6:\"1.11.7\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.4.5.2\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.5.9\";}s:8:\"response\";a:1:{s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:5:\"2.6.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:7:\"default\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";s:7:\"default\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"4.3.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";s:7:\"default\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1232826\";s:7:\"default\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1232826\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr3lat\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:39:\"so-widgets-bundle/so-widgets-bundle.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/so-widgets-bundle\";s:4:\"slug\";s:17:\"so-widgets-bundle\";s:6:\"plugin\";s:39:\"so-widgets-bundle/so-widgets-bundle.php\";s:11:\"new_version\";s:6:\"1.11.7\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/so-widgets-bundle/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/so-widgets-bundle.1.11.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-128x128.png?rev=1044942\";s:2:\"2x\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-256x256.png?rev=1044942\";s:7:\"default\";s:70:\"https://ps.w.org/so-widgets-bundle/assets/icon-256x256.png?rev=1044942\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/so-widgets-bundle/assets/banner-772x250.jpg?rev=1044942\";s:7:\"default\";s:72:\"https://ps.w.org/so-widgets-bundle/assets/banner-772x250.jpg?rev=1044942\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.4.5.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wpforms-lite.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:7:\"default\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";s:7:\"default\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.5.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.5.9.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:7:\"default\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";s:7:\"default\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1521994975'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 5, '_edit_last', '1'),
(7, 5, '_wp_page_template', 'page-events-page.php'),
(8, 5, '_edit_lock', '1522835040:1'),
(9, 7, '_edit_last', '1'),
(10, 7, '_wp_page_template', 'page-audio-page.php'),
(11, 7, '_edit_lock', '1522835143:1'),
(12, 9, '_edit_last', '1'),
(13, 9, '_wp_page_template', 'page-vlog-page.php'),
(14, 9, '_edit_lock', '1522835219:1'),
(15, 11, '_edit_last', '1'),
(16, 11, '_wp_page_template', 'page-home-page.php'),
(17, 11, '_edit_lock', '1522568966:1'),
(18, 13, '_edit_last', '1'),
(19, 13, '_wp_page_template', 'page-books-page.php'),
(20, 13, '_edit_lock', '1522835257:1'),
(21, 17, '_edit_last', '1'),
(22, 17, '_wp_page_template', 'page-service-page.php'),
(23, 17, '_edit_lock', '1522835378:1'),
(24, 19, '_edit_last', '1'),
(25, 19, '_wp_page_template', 'page-t_reviews-page.php'),
(26, 19, '_edit_lock', '1522836090:1'),
(27, 21, '_edit_last', '1'),
(28, 21, '_wp_page_template', 'default'),
(29, 21, '_edit_lock', '1522005035:1'),
(30, 23, '_edit_last', '1'),
(31, 23, '_wp_page_template', 'page-blog-page.php'),
(32, 23, '_edit_lock', '1522836133:1'),
(33, 25, '_edit_last', '1'),
(34, 25, '_wp_page_template', 'default'),
(35, 25, '_edit_lock', '1521995009:1'),
(36, 27, '_edit_last', '1'),
(37, 27, '_wp_page_template', 'default'),
(38, 27, '_edit_lock', '1521995026:1'),
(39, 29, '_edit_last', '1'),
(40, 29, '_wp_page_template', 'page-photo-page.php'),
(41, 29, '_edit_lock', '1522836234:1'),
(48, 33, '_wp_trash_meta_status', 'publish'),
(49, 33, '_wp_trash_meta_time', '1521996108'),
(50, 34, '_menu_item_type', 'custom'),
(51, 34, '_menu_item_menu_item_parent', '0'),
(52, 34, '_menu_item_object_id', '34'),
(53, 34, '_menu_item_object', 'custom'),
(54, 34, '_menu_item_target', ''),
(55, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 34, '_menu_item_xfn', ''),
(57, 34, '_menu_item_url', 'http://5dimansion.ru/'),
(58, 34, '_menu_item_orphaned', '1521996731'),
(59, 35, '_menu_item_type', 'post_type'),
(60, 35, '_menu_item_menu_item_parent', '0'),
(61, 35, '_menu_item_object_id', '5'),
(62, 35, '_menu_item_object', 'page'),
(63, 35, '_menu_item_target', ''),
(64, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 35, '_menu_item_xfn', ''),
(66, 35, '_menu_item_url', ''),
(86, 38, '_menu_item_type', 'post_type'),
(87, 38, '_menu_item_menu_item_parent', '0'),
(88, 38, '_menu_item_object_id', '11'),
(89, 38, '_menu_item_object', 'page'),
(90, 38, '_menu_item_target', ''),
(91, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 38, '_menu_item_xfn', ''),
(93, 38, '_menu_item_url', ''),
(104, 40, '_menu_item_type', 'post_type'),
(105, 40, '_menu_item_menu_item_parent', '0'),
(106, 40, '_menu_item_object_id', '17'),
(107, 40, '_menu_item_object', 'page'),
(108, 40, '_menu_item_target', ''),
(109, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 40, '_menu_item_xfn', ''),
(111, 40, '_menu_item_url', ''),
(122, 42, '_menu_item_type', 'post_type'),
(123, 42, '_menu_item_menu_item_parent', '0'),
(124, 42, '_menu_item_object_id', '21'),
(125, 42, '_menu_item_object', 'page'),
(126, 42, '_menu_item_target', ''),
(127, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 42, '_menu_item_xfn', ''),
(129, 42, '_menu_item_url', ''),
(130, 42, '_menu_item_orphaned', '1521996731'),
(167, 47, '_wp_attached_file', '2018/03/Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov.pdf'),
(168, 47, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov-pdf-106x150.jpg\";s:5:\"width\";i:106;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov-pdf-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:67:\"Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov-pdf-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"full\";a:4:{s:4:\"file\";s:58:\"Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov-pdf.jpg\";s:5:\"width\";i:1058;s:6:\"height\";i:1497;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(169, 48, '_wp_attached_file', '2018/03/5d_bg.jpg'),
(170, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:972;s:4:\"file\";s:17:\"2018/03/5d_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"5d_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"5d_bg-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"5d_bg-768x389.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"5d_bg-1024x518.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 50, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}}}'),
(173, 51, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}}}'),
(174, 52, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:3:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(175, 52, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}}}'),
(176, 52, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:0:{}}}}'),
(177, 53, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:3:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(178, 54, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:17:\"parallax-original\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(179, 54, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:3:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(180, 54, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:3:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:8:\"parallax\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(181, 55, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:17:\"parallax-original\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(182, 56, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:3:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:5:\"fixed\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(183, 56, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:17:\"parallax-original\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(184, 56, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:4:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:17:\"parallax-original\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(185, 57, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:3:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:5:\"fixed\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(186, 49, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:548:\"<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p>\";s:20:\"text_selected_editor\";s:4:\"html\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"7288061305ab7f58be1ca7233608585\";s:19:\"_sow_form_timestamp\";s:13:\"1522005464613\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:1;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"25f4b1aa-293c-4765-95b5-9a1e898e4703\";s:5:\"style\";a:3:{s:7:\"padding\";s:20:\"150px 30px 30px 30px\";s:14:\"mobile_padding\";s:19:\"10px 10px 10px 10px\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:2;s:5:\"style\";a:4:{s:5:\"class\";s:13:\"main__display\";s:27:\"background_image_attachment\";s:2:\"48\";s:18:\"background_display\";s:5:\"fixed\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:2:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}i:1;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:1;s:6:\"weight\";d:0.5;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:18:\"vertical_alignment\";s:4:\"auto\";}}}}'),
(187, 58, '_edit_last', '1'),
(188, 58, 'field_5ab7f8e80d13b', 'a:14:{s:3:\"key\";s:19:\"field_5ab7f8e80d13b\";s:5:\"label\";s:49:\"Заголовок на первом экране\";s:4:\"name\";s:8:\"title_d1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(189, 58, 'field_5ab7f8fd0d13c', 'a:11:{s:3:\"key\";s:19:\"field_5ab7f8fd0d13c\";s:5:\"label\";s:41:\"Текст на первом экране\";s:4:\"name\";s:7:\"text_d1\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(190, 58, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(191, 58, 'position', 'normal'),
(192, 58, 'layout', 'no_box'),
(193, 58, 'hide_on_screen', ''),
(194, 58, '_edit_lock', '1522833006:1'),
(195, 60, 'title_d1', 'Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова'),
(196, 60, '_title_d1', 'field_5ab7f8e80d13b'),
(197, 60, 'text_d1', 'Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.'),
(198, 60, '_text_d1', 'field_5ab7f8fd0d13c'),
(199, 11, 'title_d1', '<span class=\"upper-text\">Квантовые  технологии</span> <span class=\"big-text\">5D</span>i<span class=\"upper-text\">man</span>sion'),
(200, 11, '_title_d1', 'field_5ab7f8e80d13b'),
(201, 11, 'text_d1', 'Международный Университет Физики Сознания'),
(202, 11, '_text_d1', 'field_5ab7f8fd0d13c'),
(213, 66, '_edit_lock', '1522351048:1'),
(214, 66, '_wp_trash_meta_status', 'publish'),
(215, 66, '_wp_trash_meta_time', '1522351048'),
(218, 68, '_wp_trash_meta_status', 'publish'),
(219, 68, '_wp_trash_meta_time', '1522351150'),
(230, 74, '_wp_attached_file', '2018/03/5d_favicon.jpg'),
(231, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:22:\"2018/03/5d_favicon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 75, '_wp_trash_meta_status', 'publish'),
(233, 75, '_wp_trash_meta_time', '1522351646'),
(234, 76, '_wp_trash_meta_status', 'publish'),
(235, 76, '_wp_trash_meta_time', '1522351744'),
(236, 25, '_wp_trash_meta_status', 'publish'),
(237, 25, '_wp_trash_meta_time', '1522480993'),
(238, 25, '_wp_desired_post_slug', 'universitet-fiziki-soznaniya'),
(239, 77, '_edit_last', '1'),
(240, 77, '_wp_page_template', 'default'),
(241, 77, '_edit_lock', '1522835249:1'),
(242, 79, '_menu_item_type', 'post_type'),
(243, 79, '_menu_item_menu_item_parent', '0'),
(244, 79, '_menu_item_object_id', '27'),
(245, 79, '_menu_item_object', 'page'),
(246, 79, '_menu_item_target', ''),
(247, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 79, '_menu_item_xfn', ''),
(249, 79, '_menu_item_url', ''),
(250, 79, '_menu_item_orphaned', '1522481068'),
(251, 80, '_edit_last', '1'),
(252, 80, '_wp_page_template', 'default'),
(253, 80, '_edit_lock', '1522835346:1'),
(254, 82, '_menu_item_type', 'post_type'),
(255, 82, '_menu_item_menu_item_parent', '0'),
(256, 82, '_menu_item_object_id', '80'),
(257, 82, '_menu_item_object', 'page'),
(258, 82, '_menu_item_target', ''),
(259, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 82, '_menu_item_xfn', ''),
(261, 82, '_menu_item_url', ''),
(263, 83, '_menu_item_type', 'post_type'),
(264, 83, '_menu_item_menu_item_parent', '0'),
(265, 83, '_menu_item_object_id', '77'),
(266, 83, '_menu_item_object', 'page'),
(267, 83, '_menu_item_target', ''),
(268, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 83, '_menu_item_xfn', ''),
(270, 83, '_menu_item_url', ''),
(274, 85, '_wp_trash_meta_status', 'publish'),
(275, 85, '_wp_trash_meta_time', '1522482669'),
(278, 87, '_wp_attached_file', '2018/03/5d_favicon-n.png'),
(279, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:24:\"2018/03/5d_favicon-n.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 88, '_wp_trash_meta_status', 'publish'),
(281, 88, '_wp_trash_meta_time', '1522483392'),
(282, 89, '_wp_attached_file', '2018/03/5d_logo.png'),
(283, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:278;s:6:\"height\";i:93;s:4:\"file\";s:19:\"2018/03/5d_logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"5d_logo-150x93.png\";s:5:\"width\";i:150;s:6:\"height\";i:93;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:18:\"5d_logo-272x93.png\";s:5:\"width\";i:272;s:6:\"height\";i:93;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 89, '_wp_attachment_image_alt', 'Обучение в Университете физики сознания'),
(285, 90, '_wp_trash_meta_status', 'publish'),
(286, 90, '_wp_trash_meta_time', '1522515675'),
(287, 91, 'title_d1', 'Квантовые  технологии 5Di<span class=\"big-text\">man</span>tion'),
(288, 91, '_title_d1', 'field_5ab7f8e80d13b'),
(289, 91, 'text_d1', 'Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.'),
(290, 91, '_text_d1', 'field_5ab7f8fd0d13c'),
(291, 92, 'title_d1', 'Квантовые  технологии <span class=\"big-text\'>5D<span>i<span class=\"upper-text\">man</span>tion'),
(292, 92, '_title_d1', 'field_5ab7f8e80d13b'),
(293, 92, 'text_d1', 'Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.'),
(294, 92, '_text_d1', 'field_5ab7f8fd0d13c'),
(295, 93, 'title_d1', 'Квантовые  технологии <span class=\"big-text\'>5D<span>i<span class=\"upper-text\">man</span>tion'),
(296, 93, '_title_d1', 'field_5ab7f8e80d13b'),
(297, 93, 'text_d1', 'Международный Университет Физики Сознания'),
(298, 93, '_text_d1', 'field_5ab7f8fd0d13c'),
(299, 94, 'title_d1', 'Квантовые  технологии <span class=\"big-text\'>5D</span>i<span class=\"upper-text\">man</span>tion'),
(300, 94, '_title_d1', 'field_5ab7f8e80d13b'),
(301, 94, 'text_d1', 'Международный Университет Физики Сознания'),
(302, 94, '_text_d1', 'field_5ab7f8fd0d13c'),
(303, 95, 'title_d1', 'Квантовые  технологии <span class=\"big-text\">5D</span>i<span class=\"upper-text\">man</span>tion'),
(304, 95, '_title_d1', 'field_5ab7f8e80d13b'),
(305, 95, 'text_d1', 'Международный Университет Физики Сознания'),
(306, 95, '_text_d1', 'field_5ab7f8fd0d13c'),
(307, 96, 'title_d1', '<span class=\"upper-text\">Квантовые  технологии</span> <span class=\"big-text\">5D</span>i<span class=\"upper-text\">man</span>tion'),
(308, 96, '_title_d1', 'field_5ab7f8e80d13b'),
(309, 96, 'text_d1', 'Международный Университет Физики Сознания'),
(310, 96, '_text_d1', 'field_5ab7f8fd0d13c'),
(311, 97, '_wp_trash_meta_status', 'publish'),
(312, 97, '_wp_trash_meta_time', '1522566168'),
(313, 98, 'title_d1', '<span class=\"upper-text\">Квантовые  технологии</span> <span class=\"big-text\">5D</span>i<span class=\"upper-text\">man</span>sion'),
(314, 98, '_title_d1', 'field_5ab7f8e80d13b'),
(315, 98, 'text_d1', 'Международный Университет Физики Сознания'),
(316, 98, '_text_d1', 'field_5ab7f8fd0d13c'),
(317, 99, '_edit_last', '1'),
(318, 99, 'field_5ac0a8f3e8f7d', 'a:14:{s:3:\"key\";s:19:\"field_5ac0a8f3e8f7d\";s:5:\"label\";s:46:\"Ссылка на статью или фото\";s:4:\"name\";s:10:\"link-photo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:46:\"Ссылка на статью или фото\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(319, 99, 'field_5ac0a915e8f7e', 'a:11:{s:3:\"key\";s:19:\"field_5ac0a915e8f7e\";s:5:\"label\";s:25:\"Добавить фото\";s:4:\"name\";s:9:\"img-photo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(320, 99, 'field_5ac0a926e8f7f', 'a:14:{s:3:\"key\";s:19:\"field_5ac0a926e8f7f\";s:5:\"label\";s:44:\"Название слайда галереи\";s:4:\"name\";s:11:\"title-photo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(321, 99, 'field_5ac0a932e8f80', 'a:13:{s:3:\"key\";s:19:\"field_5ac0a932e8f80\";s:5:\"label\";s:44:\"Описание слайда галереи\";s:4:\"name\";s:17:\"description-photo\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(323, 99, 'position', 'normal'),
(324, 99, 'layout', 'no_box'),
(325, 99, 'hide_on_screen', ''),
(326, 99, '_edit_lock', '1522830204:1'),
(327, 100, '_wp_attached_file', '2018/04/5d_cours-1.jpg'),
(328, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:603;s:4:\"file\";s:22:\"2018/04/5d_cours-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(329, 101, '_wp_attached_file', '2018/04/5d_cours-2.jpg'),
(330, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2018/04/5d_cours-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-2-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 102, '_wp_attached_file', '2018/04/5d_cours-3.jpg'),
(332, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:399;s:4:\"file\";s:22:\"2018/04/5d_cours-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-3-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-3-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 103, '_wp_attached_file', '2018/04/5d_cours-4.jpg'),
(334, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:568;s:4:\"file\";s:22:\"2018/04/5d_cours-4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-4-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 104, '_wp_attached_file', '2018/04/5d_cours-5.jpg'),
(336, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:453;s:4:\"file\";s:22:\"2018/04/5d_cours-5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-5-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 105, '_wp_attached_file', '2018/04/5d_cours-6.jpg'),
(338, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:388;s:4:\"file\";s:22:\"2018/04/5d_cours-6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-6-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-6-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 106, '_wp_attached_file', '2018/04/5d_cours-7.jpg'),
(340, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:453;s:4:\"file\";s:22:\"2018/04/5d_cours-7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-7-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-7-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 107, '_wp_attached_file', '2018/04/5d_cours-8.jpg'),
(342, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:603;s:6:\"height\";i:604;s:4:\"file\";s:22:\"2018/04/5d_cours-8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-8-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 108, '_wp_attached_file', '2018/04/5d_cours-9.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(344, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:568;s:4:\"file\";s:22:\"2018/04/5d_cours-9.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5d_cours-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5d_cours-9-300x289.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:22:\"5d_cours-9-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 109, '_edit_last', '1'),
(347, 109, '_edit_lock', '1522575757:1'),
(348, 110, 'link-photo', '#'),
(349, 110, '_link-photo', 'field_5ac0a8f3e8f7d'),
(350, 110, 'img-photo', '108'),
(351, 110, '_img-photo', 'field_5ac0a915e8f7e'),
(352, 110, 'title-photo', 'Тестовое фото1'),
(353, 110, '_title-photo', 'field_5ac0a926e8f7f'),
(354, 110, 'description-photo', 'Тестовое фото1'),
(355, 110, '_description-photo', 'field_5ac0a932e8f80'),
(356, 109, 'link-photo', '#'),
(357, 109, '_link-photo', 'field_5ac0a8f3e8f7d'),
(358, 109, 'img-photo', '108'),
(359, 109, '_img-photo', 'field_5ac0a915e8f7e'),
(360, 109, 'title-photo', 'Тестовое фото1'),
(361, 109, '_title-photo', 'field_5ac0a926e8f7f'),
(362, 109, 'description-photo', 'Тестовое фото1'),
(363, 109, '_description-photo', 'field_5ac0a932e8f80'),
(364, 111, '_edit_last', '1'),
(365, 111, '_edit_lock', '1522575783:1'),
(366, 112, 'link-photo', '#'),
(367, 112, '_link-photo', 'field_5ac0a8f3e8f7d'),
(368, 112, 'img-photo', '107'),
(369, 112, '_img-photo', 'field_5ac0a915e8f7e'),
(370, 112, 'title-photo', 'Тестовое фото2'),
(371, 112, '_title-photo', 'field_5ac0a926e8f7f'),
(372, 112, 'description-photo', 'Тестовое фото2'),
(373, 112, '_description-photo', 'field_5ac0a932e8f80'),
(374, 111, 'link-photo', '#'),
(375, 111, '_link-photo', 'field_5ac0a8f3e8f7d'),
(376, 111, 'img-photo', '107'),
(377, 111, '_img-photo', 'field_5ac0a915e8f7e'),
(378, 111, 'title-photo', 'Тестовое фото2'),
(379, 111, '_title-photo', 'field_5ac0a926e8f7f'),
(380, 111, 'description-photo', 'Тестовое фото2'),
(381, 111, '_description-photo', 'field_5ac0a932e8f80'),
(382, 113, '_edit_last', '1'),
(383, 113, '_edit_lock', '1522575842:1'),
(384, 114, 'link-photo', ''),
(385, 114, '_link-photo', 'field_5ac0a8f3e8f7d'),
(386, 114, 'img-photo', '106'),
(387, 114, '_img-photo', 'field_5ac0a915e8f7e'),
(388, 114, 'title-photo', 'Тестовое фото3'),
(389, 114, '_title-photo', 'field_5ac0a926e8f7f'),
(390, 114, 'description-photo', 'Тестовое фото3'),
(391, 114, '_description-photo', 'field_5ac0a932e8f80'),
(392, 113, 'link-photo', ''),
(393, 113, '_link-photo', 'field_5ac0a8f3e8f7d'),
(394, 113, 'img-photo', '106'),
(395, 113, '_img-photo', 'field_5ac0a915e8f7e'),
(396, 113, 'title-photo', 'Тестовое фото3'),
(397, 113, '_title-photo', 'field_5ac0a926e8f7f'),
(398, 113, 'description-photo', 'Тестовое фото3'),
(399, 113, '_description-photo', 'field_5ac0a932e8f80'),
(400, 115, '_edit_last', '1'),
(401, 115, '_edit_lock', '1522579961:1'),
(402, 116, 'link-photo', '#'),
(403, 116, '_link-photo', 'field_5ac0a8f3e8f7d'),
(404, 116, 'img-photo', '105'),
(405, 116, '_img-photo', 'field_5ac0a915e8f7e'),
(406, 116, 'title-photo', 'Тестовое фото4'),
(407, 116, '_title-photo', 'field_5ac0a926e8f7f'),
(408, 116, 'description-photo', 'Тестовое фото4'),
(409, 116, '_description-photo', 'field_5ac0a932e8f80'),
(410, 115, 'link-photo', '#'),
(411, 115, '_link-photo', 'field_5ac0a8f3e8f7d'),
(412, 115, 'img-photo', '105'),
(413, 115, '_img-photo', 'field_5ac0a915e8f7e'),
(414, 115, 'title-photo', 'Тестовое фото4'),
(415, 115, '_title-photo', 'field_5ac0a926e8f7f'),
(416, 115, 'description-photo', 'Тестовое фото4'),
(417, 115, '_description-photo', 'field_5ac0a932e8f80'),
(418, 99, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"photo\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(419, 117, '_edit_last', '1'),
(420, 117, 'field_5ac0bd5e2e9a4', 'a:11:{s:3:\"key\";s:19:\"field_5ac0bd5e2e9a4\";s:5:\"label\";s:36:\"Изображение в ленту\";s:4:\"name\";s:10:\"blog-image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(421, 117, 'field_5ac0bdef2e9a5', 'a:11:{s:3:\"key\";s:19:\"field_5ac0bdef2e9a5\";s:5:\"label\";s:31:\"Краткое описание\";s:4:\"name\";s:16:\"blog-description\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(423, 117, 'position', 'normal'),
(424, 117, 'layout', 'no_box'),
(425, 117, 'hide_on_screen', ''),
(426, 117, '_edit_lock', '1522830956:1'),
(427, 1, '_edit_lock', '1522580992:1'),
(428, 1, '_edit_last', '1'),
(429, 1, '_thumbnail_id', '105'),
(432, 118, 'blog-image', '105'),
(433, 118, '_blog-image', 'field_5ac0bd5e2e9a4'),
(434, 118, 'blog-description', 'тестовая запись 1'),
(435, 118, '_blog-description', 'field_5ac0bdef2e9a5'),
(436, 1, 'blog-image', '105'),
(437, 1, '_blog-image', 'field_5ac0bd5e2e9a4'),
(438, 1, 'blog-description', 'тестовая запись 1'),
(439, 1, '_blog-description', 'field_5ac0bdef2e9a5'),
(440, 119, '_edit_last', '1'),
(441, 119, '_edit_lock', '1522587084:1'),
(442, 119, '_thumbnail_id', '102'),
(445, 120, 'blog-image', '102'),
(446, 120, '_blog-image', 'field_5ac0bd5e2e9a4'),
(447, 120, 'blog-description', 'тестовая запись 2'),
(448, 120, '_blog-description', 'field_5ac0bdef2e9a5'),
(449, 119, 'blog-image', '102'),
(450, 119, '_blog-image', 'field_5ac0bd5e2e9a4'),
(451, 119, 'blog-description', 'тестовая запись 2'),
(452, 119, '_blog-description', 'field_5ac0bdef2e9a5'),
(454, 121, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:34:\"Записи по тематике\";s:4:\"text\";s:87:\"<p>Здесь вы прочтете статьи по данной тематике</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"11363978095ac0bede1b069585076350\";s:19:\"_sow_form_timestamp\";s:13:\"1522581225984\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"d1652114-6418-4b77-87f6-d3ea5c86298f\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(455, 122, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:34:\"Записи по тематике\";s:4:\"text\";s:87:\"<p>Здесь вы прочтете статьи по данной тематике</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"11363978095ac0bede1b069585076350\";s:19:\"_sow_form_timestamp\";s:13:\"1522581225984\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"d1652114-6418-4b77-87f6-d3ea5c86298f\";s:5:\"style\";a:3:{s:5:\"class\";s:9:\"container\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(456, 122, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:34:\"Записи по тематике\";s:4:\"text\";s:87:\"<p>Здесь вы прочтете статьи по данной тематике</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"11363978095ac0bede1b069585076350\";s:19:\"_sow_form_timestamp\";s:13:\"1522581225984\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"d1652114-6418-4b77-87f6-d3ea5c86298f\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(457, 122, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:34:\"Записи по тематике\";s:4:\"text\";s:87:\"<p>Здесь вы прочтете статьи по данной тематике</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"11363978095ac0bede1b069585076350\";s:19:\"_sow_form_timestamp\";s:13:\"1522581225984\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"d1652114-6418-4b77-87f6-d3ea5c86298f\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(458, 123, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:34:\"Записи по тематике\";s:4:\"text\";s:87:\"<p>Здесь вы прочтете статьи по данной тематике</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:32:\"11363978095ac0bede1b069585076350\";s:19:\"_sow_form_timestamp\";s:13:\"1522581225984\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"d1652114-6418-4b77-87f6-d3ea5c86298f\";s:5:\"style\";a:3:{s:5:\"class\";s:9:\"container\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(463, 125, '_edit_last', '1'),
(464, 125, '_edit_lock', '1522585004:1'),
(465, 125, '_thumbnail_id', '102'),
(466, 126, 'blog-image', '102'),
(467, 126, '_blog-image', 'field_5ac0bd5e2e9a4'),
(468, 126, 'blog-description', 'Первым делом проверьте сайт. Куда мы попали? Или как не слить бюджет Яндекс.Директ в пустую.'),
(469, 126, '_blog-description', 'field_5ac0bdef2e9a5'),
(470, 125, 'blog-image', '102'),
(471, 125, '_blog-image', 'field_5ac0bd5e2e9a4'),
(472, 125, 'blog-description', 'Первым делом проверьте сайт. Куда мы попали? Или как не слить бюджет Яндекс.Директ в пустую.'),
(473, 125, '_blog-description', 'field_5ac0bdef2e9a5'),
(474, 127, '_edit_last', '1'),
(475, 127, '_edit_lock', '1522585058:1'),
(476, 127, '_thumbnail_id', '103'),
(477, 128, 'blog-image', '103'),
(478, 128, '_blog-image', 'field_5ac0bd5e2e9a4'),
(479, 128, 'blog-description', 'Первым делом проверьте сайт. Куда мы попали? Или как не слить бюджет Яндекс.Директ в пустую.'),
(480, 128, '_blog-description', 'field_5ac0bdef2e9a5'),
(481, 127, 'blog-image', '103'),
(482, 127, '_blog-image', 'field_5ac0bd5e2e9a4'),
(483, 127, 'blog-description', 'Первым делом проверьте сайт. Куда мы попали? Или как не слить бюджет Яндекс.Директ в пустую.'),
(484, 127, '_blog-description', 'field_5ac0bdef2e9a5'),
(485, 129, '_edit_last', '1'),
(486, 129, '_edit_lock', '1522585099:1'),
(487, 129, '_thumbnail_id', '104'),
(488, 130, 'blog-image', '104'),
(489, 130, '_blog-image', 'field_5ac0bd5e2e9a4'),
(490, 130, 'blog-description', 'Первым делом проверьте сайт. Куда мы попали? Или как не слить бюджет Яндекс.Директ в пустую.'),
(491, 130, '_blog-description', 'field_5ac0bdef2e9a5'),
(492, 129, 'blog-image', '104'),
(493, 129, '_blog-image', 'field_5ac0bd5e2e9a4'),
(494, 129, 'blog-description', 'Первым делом проверьте сайт. Куда мы попали? Или как не слить бюджет Яндекс.Директ в пустую.'),
(495, 129, '_blog-description', 'field_5ac0bdef2e9a5'),
(496, 131, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:18:\"Заголовок\";s:4:\"text\";s:17:\"<p>текст</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"4540944695ac0cecb40828337096698\";s:19:\"_sow_form_timestamp\";s:13:\"1522585306589\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b14d3438-9704-4410-be5a-f8fea2d06302\";s:5:\"style\";a:3:{s:5:\"class\";s:9:\"container\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(497, 9, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:18:\"Заголовок\";s:4:\"text\";s:17:\"<p>текст</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"4540944695ac0cecb40828337096698\";s:19:\"_sow_form_timestamp\";s:13:\"1522585306589\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b14d3438-9704-4410-be5a-f8fea2d06302\";s:5:\"style\";a:2:{s:5:\"class\";s:9:\"container\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(498, 132, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:18:\"Заголовок\";s:4:\"text\";s:17:\"<p>текст</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"4540944695ac0cecb40828337096698\";s:19:\"_sow_form_timestamp\";s:13:\"1522585306589\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b14d3438-9704-4410-be5a-f8fea2d06302\";s:5:\"style\";a:3:{s:5:\"class\";s:9:\"container\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(499, 133, '_wp_attached_file', '2018/04/Egor-Krid-KReeD-Papina-dochka-minus-2.mp3'),
(500, 133, '_wp_attachment_metadata', 'a:19:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.226757369614512482858259545537293888628482818603515625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:6471064;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:162;s:16:\"length_formatted\";s:4:\"2:42\";s:4:\"year\";s:4:\"1904\";s:4:\"date\";s:4:\"0101\";s:4:\"time\";s:4:\"0000\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(501, 136, '_wp_attached_file', '2018/04/Gipsy-Kings-Bamboleo.mp3'),
(502, 136, '_wp_attachment_metadata', 'a:22:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:252610.73521996723138727247714996337890625;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:5:\"codec\";s:4:\"LAME\";s:7:\"encoder\";s:8:\"LAME3.92\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:13:\"-V9 -q2 -b255\";s:17:\"compression_ratio\";d:0.179004205796462034783189665176905691623687744140625;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:6547770;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:207;s:16:\"length_formatted\";s:4:\"3:27\";s:12:\"track_number\";s:1:\"2\";s:5:\"genre\";s:12:\"Instrumental\";s:14:\"recording_time\";s:4:\"1997\";s:5:\"title\";s:8:\"Bamboleo\";s:6:\"artist\";s:11:\"Gipsy Kings\";s:4:\"year\";s:4:\"1997\";}'),
(503, 137, '_wp_attached_file', '2018/04/05_01.mp3'),
(504, 137, '_wp_attachment_metadata', 'a:21:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:192000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR192\";s:17:\"compression_ratio\";d:0.1360544217687074952660708504481590352952480316162109375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:13064192;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:544;s:16:\"length_formatted\";s:4:\"9:04\";s:12:\"track_number\";s:1:\"5\";s:17:\"copyright_message\";s:69:\"©&amp;(P) OOO \"Mediokontinental\'\", © Kalashnikova E.D. (nasledniki)\";s:7:\"comment\";s:54:\"Perevodchik: Kalashnikova E.D., Chtets: Zaretskii A.N.\";s:6:\"artist\";s:7:\"O.Henry\";s:5:\"title\";s:7:\"Persiki\";s:4:\"year\";s:4:\"2004\";s:5:\"genre\";s:5:\"Other\";}'),
(505, 138, '_wp_attached_file', '2018/04/05_02.mp3'),
(506, 138, '_wp_attachment_metadata', 'a:22:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:192000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR192\";s:17:\"compression_ratio\";d:0.1360544217687074952660708504481590352952480316162109375;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:11264000;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:469;s:16:\"length_formatted\";s:4:\"7:49\";s:12:\"track_number\";s:1:\"5\";s:17:\"copyright_message\";s:69:\"©&amp;(P) OOO \"Mediokontinental\'\", © Kalashnikova E.D. (nasledniki)\";s:7:\"comment\";s:54:\"Perevodchik: Kalashnikova E.D., Chtets: Zaretskii A.N.\";s:6:\"artist\";s:7:\"O.Henry\";s:5:\"title\";s:7:\"Persiki\";s:4:\"year\";s:4:\"2004\";s:5:\"genre\";s:5:\"Other\";s:5:\"album\";s:0:\"\";}'),
(507, 135, '_edit_last', '1'),
(508, 135, 'field_5ac0d11e98507', 'a:11:{s:3:\"key\";s:19:\"field_5ac0d11e98507\";s:5:\"label\";s:3:\"111\";s:4:\"name\";s:3:\"111\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(509, 135, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(510, 135, 'position', 'normal'),
(511, 135, 'layout', 'no_box'),
(512, 135, 'hide_on_screen', ''),
(513, 135, '_edit_lock', '1522830184:1'),
(514, 117, 'field_5ac0d583ab1b3', 'a:10:{s:3:\"key\";s:19:\"field_5ac0d583ab1b3\";s:5:\"label\";s:38:\"ссылка на скачивание\";s:4:\"name\";s:9:\"blog-link\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(520, 139, '_edit_last', '1'),
(521, 139, '_edit_lock', '1522830960:1'),
(522, 139, '_thumbnail_id', '101'),
(523, 140, 'blog-image', '101'),
(524, 140, '_blog-image', 'field_5ac0bd5e2e9a4'),
(525, 140, 'blog-description', 'Книга ааа а а а а а а аа  а'),
(526, 140, '_blog-description', 'field_5ac0bdef2e9a5'),
(527, 140, 'blog-link', 'http://5dimansion.ru/wp-content/uploads/2018/03/Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov.pdf'),
(528, 140, '_blog-link', 'field_5ac0d583ab1b3'),
(529, 139, 'blog-image', '101'),
(530, 139, '_blog-image', 'field_5ac0bd5e2e9a4'),
(531, 139, 'blog-description', 'Книга ааа а а а а а а аа а'),
(532, 139, '_blog-description', 'field_5ac0bdef2e9a5'),
(533, 139, 'blog-link', '47'),
(534, 139, '_blog-link', 'field_5ac0d583ab1b3'),
(541, 141, '_edit_last', '1'),
(542, 141, '_edit_lock', '1522830963:1'),
(547, 143, 'blog-image', '108'),
(548, 143, '_blog-image', 'field_5ac0bd5e2e9a4'),
(549, 143, 'blog-description', '[audio mp3=\"http://5dimansion.ru/wp-content/uploads/2018/04/05_02.mp3\"][/audio]'),
(550, 143, '_blog-description', 'field_5ac0bdef2e9a5'),
(551, 143, 'blog-link', 'http://5dimansion.ru/wp-content/uploads/2018/04/05_02.mp3'),
(552, 143, '_blog-link', 'field_5ac0d583ab1b3'),
(553, 141, 'blog-image', '108'),
(554, 141, '_blog-image', 'field_5ac0bd5e2e9a4'),
(555, 141, 'blog-description', '[audio mp3=\"http://5dimansion.ru/wp-content/uploads/2018/04/05_02.mp3\"][/audio]'),
(556, 141, '_blog-description', 'field_5ac0bdef2e9a5'),
(557, 141, 'blog-link', '138'),
(558, 141, '_blog-link', 'field_5ac0d583ab1b3'),
(563, 145, 'blog-image', '108'),
(564, 145, '_blog-image', 'field_5ac0bd5e2e9a4'),
(565, 145, 'blog-description', '[audio mp3=\"http://5dimansion.ru/wp-content/uploads/2018/04/05_02.mp3\"][/audio]'),
(566, 145, '_blog-description', 'field_5ac0bdef2e9a5'),
(567, 145, 'blog-link', '138'),
(568, 145, '_blog-link', 'field_5ac0d583ab1b3'),
(573, 146, '_edit_last', '1'),
(574, 146, '_edit_lock', '1522836091:1'),
(575, 146, '_wp_page_template', 'page-vk_reviews-page.php'),
(576, 149, '_edit_last', '1'),
(577, 149, '_edit_lock', '1522836056:1'),
(578, 149, '_wp_page_template', 'page-v_reviews-page.php'),
(579, 148, '_edit_last', '1'),
(582, 148, 'position', 'normal'),
(583, 148, 'layout', 'no_box'),
(584, 148, 'hide_on_screen', ''),
(585, 148, '_edit_lock', '1522834033:1'),
(589, 148, 'field_5ac1000ebe7de', 'a:11:{s:3:\"key\";s:19:\"field_5ac1000ebe7de\";s:5:\"label\";s:54:\"Ссылка на страницу с отзывами\";s:4:\"name\";s:9:\"t_reviews\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(590, 148, 'field_5ac10037be7df', 'a:11:{s:3:\"key\";s:19:\"field_5ac10037be7df\";s:5:\"label\";s:65:\"Ссылка на страницу с видео отзывами\";s:4:\"name\";s:9:\"v_reviews\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(591, 148, 'field_5ac10041be7e0', 'a:11:{s:3:\"key\";s:19:\"field_5ac10041be7e0\";s:5:\"label\";s:62:\"Ссылка на страницу с отзывами с ВК\";s:4:\"name\";s:10:\"vk_reviews\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(598, 149, 't_reviews', '19'),
(599, 149, '_t_reviews', 'field_5ac1000ebe7de'),
(600, 149, 'v_reviews', '149'),
(601, 149, '_v_reviews', 'field_5ac10037be7df'),
(602, 149, 'vk_reviews', '146'),
(603, 149, '_vk_reviews', 'field_5ac10041be7e0'),
(604, 151, 't_reviews', '19'),
(605, 151, '_t_reviews', 'field_5ac1000ebe7de'),
(606, 151, 'v_reviews', '149'),
(607, 151, '_v_reviews', 'field_5ac10037be7df'),
(608, 151, 'vk_reviews', '146'),
(609, 151, '_vk_reviews', 'field_5ac10041be7e0'),
(610, 146, 't_reviews', '19'),
(611, 146, '_t_reviews', 'field_5ac1000ebe7de'),
(612, 146, 'v_reviews', '149'),
(613, 146, '_v_reviews', 'field_5ac10037be7df'),
(614, 146, 'vk_reviews', '146'),
(615, 146, '_vk_reviews', 'field_5ac10041be7e0'),
(616, 19, 't_reviews', '19'),
(617, 19, '_t_reviews', 'field_5ac1000ebe7de'),
(618, 19, 'v_reviews', '149'),
(619, 19, '_v_reviews', 'field_5ac10037be7df'),
(620, 19, 'vk_reviews', '146'),
(621, 19, '_vk_reviews', 'field_5ac10041be7e0'),
(622, 152, 't_reviews', '19'),
(623, 152, '_t_reviews', 'field_5ac1000ebe7de'),
(624, 152, 'v_reviews', '149'),
(625, 152, '_v_reviews', 'field_5ac10037be7df'),
(626, 152, 'vk_reviews', '146'),
(627, 152, '_vk_reviews', 'field_5ac10041be7e0'),
(628, 153, 't_reviews', '19'),
(629, 153, '_t_reviews', 'field_5ac1000ebe7de'),
(630, 153, 'v_reviews', '149'),
(631, 153, '_v_reviews', 'field_5ac10037be7df'),
(632, 153, 'vk_reviews', '146'),
(633, 153, '_vk_reviews', 'field_5ac10041be7e0'),
(637, 156, '_edit_last', '1'),
(638, 156, 'field_5ac2141fa0a35', 'a:11:{s:3:\"key\";s:19:\"field_5ac2141fa0a35\";s:5:\"label\";s:35:\"Отзывы фото в ленту\";s:4:\"name\";s:13:\"reviews-image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(639, 156, 'field_5ac2144ba0a36', 'a:11:{s:3:\"key\";s:19:\"field_5ac2144ba0a36\";s:5:\"label\";s:44:\"Отзывы краткое описание\";s:4:\"name\";s:19:\"reviews-description\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(640, 156, 'field_5ac21457a0a37', 'a:14:{s:3:\"key\";s:19:\"field_5ac21457a0a37\";s:5:\"label\";s:23:\"Отзывы видео\";s:4:\"name\";s:13:\"reviews-video\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(641, 156, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"reviews_text\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(642, 156, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"reviews_video\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(643, 156, 'position', 'normal'),
(644, 156, 'layout', 'no_box'),
(645, 156, 'hide_on_screen', ''),
(646, 156, '_edit_lock', '1522835944:1'),
(647, 157, '_edit_last', '1'),
(648, 157, '_edit_lock', '1522669580:1'),
(649, 159, 'reviews-image', '106'),
(650, 159, '_reviews-image', 'field_5ac2141fa0a35'),
(651, 159, 'reviews-description', 'Выражаем благодарность Нелли Давыдовой за превосходную'),
(652, 159, '_reviews-description', 'field_5ac2144ba0a36'),
(653, 159, 'reviews-video', ''),
(654, 159, '_reviews-video', 'field_5ac21457a0a37'),
(655, 157, 'reviews-image', '106'),
(656, 157, '_reviews-image', 'field_5ac2141fa0a35'),
(657, 157, 'reviews-description', 'Выражаем благодарность Нелли Давыдовой за превосходную'),
(658, 157, '_reviews-description', 'field_5ac2144ba0a36'),
(659, 157, 'reviews-video', ''),
(660, 157, '_reviews-video', 'field_5ac21457a0a37'),
(661, 160, '_edit_last', '1'),
(662, 160, '_edit_lock', '1522669602:1'),
(663, 161, 'reviews-image', '105'),
(664, 161, '_reviews-image', 'field_5ac2141fa0a35'),
(665, 161, 'reviews-description', 'Выражаем благодарность Нелли Давыдовой за превосходную\r\n\r\nВыражаем благодарность Нелли Давыдовой за превосходную'),
(666, 161, '_reviews-description', 'field_5ac2144ba0a36'),
(667, 161, 'reviews-video', ''),
(668, 161, '_reviews-video', 'field_5ac21457a0a37'),
(669, 160, 'reviews-image', '105'),
(670, 160, '_reviews-image', 'field_5ac2141fa0a35'),
(671, 160, 'reviews-description', 'Выражаем благодарность Нелли Давыдовой за превосходную\r\n\r\nВыражаем благодарность Нелли Давыдовой за превосходную'),
(672, 160, '_reviews-description', 'field_5ac2144ba0a36'),
(673, 160, 'reviews-video', ''),
(674, 160, '_reviews-video', 'field_5ac21457a0a37'),
(675, 162, '_edit_last', '1'),
(676, 162, '_edit_lock', '1522686846:1'),
(677, 163, 'reviews-image', '101'),
(678, 163, '_reviews-image', 'field_5ac2141fa0a35'),
(679, 163, 'reviews-description', 'Благодаря вашей работе, стало приятно не только заносить\r\n\r\nБлагодаря вашей работе, стало приятно не только заносить'),
(680, 163, '_reviews-description', 'field_5ac2144ba0a36'),
(681, 163, 'reviews-video', ''),
(682, 163, '_reviews-video', 'field_5ac21457a0a37'),
(683, 162, 'reviews-image', '101'),
(684, 162, '_reviews-image', 'field_5ac2141fa0a35'),
(685, 162, 'reviews-description', 'Благодаря вашей работе, стало приятно не только заносить\r\n\r\nБлагодаря вашей работе, стало приятно не только заносить'),
(686, 162, '_reviews-description', 'field_5ac2144ba0a36'),
(687, 162, 'reviews-video', ''),
(688, 162, '_reviews-video', 'field_5ac21457a0a37'),
(689, 158, '_edit_last', '1'),
(690, 158, '_edit_lock', '1522689719:1'),
(691, 164, 'reviews-image', '107'),
(692, 164, '_reviews-image', 'field_5ac2141fa0a35'),
(693, 164, 'reviews-description', 'ааааа\r\n\r\nа\r\n\r\nа\r\n\r\nа\r\n\r\nа'),
(694, 164, '_reviews-description', 'field_5ac2144ba0a36'),
(695, 164, 'reviews-video', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SA7PnFMXRz4\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>'),
(696, 164, '_reviews-video', 'field_5ac21457a0a37'),
(697, 158, 'reviews-image', '108'),
(698, 158, '_reviews-image', 'field_5ac2141fa0a35'),
(699, 158, 'reviews-description', 'ааааа\r\n\r\nа\r\n\r\nа\r\n\r\nа\r\n\r\nа'),
(700, 158, '_reviews-description', 'field_5ac2144ba0a36'),
(701, 158, 'reviews-video', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SA7PnFMXRz4\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>'),
(702, 158, '_reviews-video', 'field_5ac21457a0a37'),
(703, 166, 'reviews-image', '108'),
(704, 166, '_reviews-image', 'field_5ac2141fa0a35'),
(705, 166, 'reviews-description', 'ааааа\r\n\r\nа\r\n\r\nа\r\n\r\nа\r\n\r\nа'),
(706, 166, '_reviews-description', 'field_5ac2144ba0a36'),
(707, 166, 'reviews-video', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SA7PnFMXRz4\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>'),
(708, 166, '_reviews-video', 'field_5ac21457a0a37'),
(709, 167, '_edit_last', '1'),
(710, 167, '_edit_lock', '1522696787:1'),
(711, 168, 'reviews-image', '107'),
(712, 168, '_reviews-image', 'field_5ac2141fa0a35'),
(713, 168, 'reviews-description', 'ggg\r\n\r\ng\r\n\r\ng\r\n\r\n&nbsp;'),
(714, 168, '_reviews-description', 'field_5ac2144ba0a36'),
(715, 168, 'reviews-video', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SA7PnFMXRz4\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>'),
(716, 168, '_reviews-video', 'field_5ac21457a0a37'),
(717, 167, 'reviews-image', '107'),
(718, 167, '_reviews-image', 'field_5ac2141fa0a35'),
(719, 167, 'reviews-description', 'ggg\r\n\r\ng\r\n\r\ng\r\n\r\n&nbsp;'),
(720, 167, '_reviews-description', 'field_5ac2144ba0a36'),
(721, 167, 'reviews-video', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SA7PnFMXRz4\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>'),
(722, 167, '_reviews-video', 'field_5ac21457a0a37'),
(723, 169, '_edit_last', '1'),
(724, 169, '_edit_lock', '1522698136:1'),
(725, 170, '_edit_last', '1'),
(726, 170, 'field_5ac287796a9fe', 'a:11:{s:3:\"key\";s:19:\"field_5ac287796a9fe\";s:5:\"label\";s:39:\"Описание мероприятия\";s:4:\"name\";s:18:\"events-description\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(727, 170, 'field_5ac2878b6a9ff', 'a:11:{s:3:\"key\";s:19:\"field_5ac2878b6a9ff\";s:5:\"label\";s:40:\"Ссылка на мероприятие\";s:4:\"name\";s:11:\"events-link\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(728, 170, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(729, 170, 'position', 'normal'),
(730, 170, 'layout', 'no_box'),
(731, 170, 'hide_on_screen', ''),
(732, 170, '_edit_lock', '1522833034:1'),
(733, 172, 'events-description', '<div id=\"comp-jf5f7r7a\" class=\"txtNew\" data-packed=\"true\">\r\n<p class=\"font_7\"><span class=\"color_11\">Черногория, Близикуче</span></p>\r\n<p class=\"font_7\"><span class=\"color_11\">2-13 апреля 2018 года</span></p>\r\n\r\n</div>'),
(734, 172, '_events-description', 'field_5ac287796a9fe'),
(735, 172, 'events-link', '119'),
(736, 172, '_events-link', 'field_5ac2878b6a9ff'),
(737, 169, 'events-description', '<div id=\"comp-jf5f7r7a\" class=\"txtNew\" data-packed=\"true\">\r\n<p class=\"font_7\"><span class=\"color_11\">Черногория, Близикуче</span></p>\r\n<p class=\"font_7\"><span class=\"color_11\">2-13 апреля 2018 года</span></p>\r\n\r\n</div>'),
(738, 169, '_events-description', 'field_5ac287796a9fe'),
(739, 169, 'events-link', '119'),
(740, 169, '_events-link', 'field_5ac2878b6a9ff'),
(741, 173, '_edit_last', '1'),
(742, 173, '_edit_lock', '1522698178:1'),
(743, 174, 'events-description', '<div id=\"comp-jf5f7r82\" class=\"txtNew\" data-packed=\"true\">\r\n<p class=\"font_7\"><span class=\"color_11\">Черногория, Близикуче</span></p>\r\n<p class=\"font_7\"><span class=\"color_11\">14-25 апреля 2018 года</span></p>\r\n\r\n</div>'),
(744, 174, '_events-description', 'field_5ac287796a9fe'),
(745, 174, 'events-link', '119'),
(746, 174, '_events-link', 'field_5ac2878b6a9ff'),
(747, 173, 'events-description', '<div id=\"comp-jf5f7r82\" class=\"txtNew\" data-packed=\"true\">\r\n<p class=\"font_7\"><span class=\"color_11\">Черногория, Близикуче</span></p>\r\n<p class=\"font_7\"><span class=\"color_11\">14-25 апреля 2018 года</span></p>\r\n\r\n</div>'),
(748, 173, '_events-description', 'field_5ac287796a9fe'),
(749, 173, 'events-link', '119'),
(750, 173, '_events-link', 'field_5ac2878b6a9ff'),
(751, 175, '_edit_last', '1'),
(752, 175, '_edit_lock', '1522698286:1'),
(753, 176, 'events-description', '<div id=\"comp-jf5f7r7j\" class=\"txtNew\" data-packed=\"false\" data-min-height=\"31\">\r\n<p class=\"font_7\"><span class=\"color_11\">Черногория, Близикуче</span></p>\r\n<p class=\"font_7\"><span class=\"color_11\">14-25 апреля 2018 года</span></p>\r\n\r\n</div>'),
(754, 176, '_events-description', 'field_5ac287796a9fe'),
(755, 176, 'events-link', '119'),
(756, 176, '_events-link', 'field_5ac2878b6a9ff'),
(757, 175, 'events-description', '<div id=\"comp-jf5f7r7j\" class=\"txtNew\" data-packed=\"false\" data-min-height=\"31\">\r\n<p class=\"font_7\"><span class=\"color_11\">Черногория, Близикуче</span></p>\r\n<p class=\"font_7\"><span class=\"color_11\">14-25 апреля 2018 года</span></p>\r\n\r\n</div>'),
(758, 175, '_events-description', 'field_5ac287796a9fe'),
(759, 175, 'events-link', '119'),
(760, 175, '_events-link', 'field_5ac2878b6a9ff'),
(761, 177, '_edit_last', '1'),
(762, 177, 'field_5ac36bf7bde56', 'a:11:{s:3:\"key\";s:19:\"field_5ac36bf7bde56\";s:5:\"label\";s:36:\"Картинка в карточку\";s:4:\"name\";s:13:\"service-image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(763, 177, 'field_5ac36c11bde57', 'a:13:{s:3:\"key\";s:19:\"field_5ac36c11bde57\";s:5:\"label\";s:33:\"Описание карточки\";s:4:\"name\";s:19:\"service-description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(764, 177, 'field_5ac36c1abde58', 'a:11:{s:3:\"key\";s:19:\"field_5ac36c1abde58\";s:5:\"label\";s:26:\"Ссылка на курс\";s:4:\"name\";s:12:\"service-link\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"1\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(766, 177, 'position', 'normal'),
(767, 177, 'layout', 'no_box'),
(768, 177, 'hide_on_screen', ''),
(769, 177, '_edit_lock', '1522833032:1'),
(771, 178, '_edit_last', '1'),
(772, 178, '_edit_lock', '1522761639:1'),
(773, 179, '_wp_attached_file', '2018/04/5d_cours-10.jpg'),
(774, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:603;s:4:\"file\";s:23:\"2018/04/5d_cours-10.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"5d_cours-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"5d_cours-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:23:\"5d_cours-10-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(775, 180, '_wp_attached_file', '2018/04/5d_cours-11.jpg'),
(776, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:603;s:4:\"file\";s:23:\"2018/04/5d_cours-11.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"5d_cours-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"5d_cours-11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:23:\"5d_cours-11-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(777, 181, '_wp_attached_file', '2018/04/5d_cours-12.jpg'),
(778, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:603;s:4:\"file\";s:23:\"2018/04/5d_cours-12.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"5d_cours-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"5d_cours-12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:23:\"5d_cours-12-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(779, 182, '_wp_attached_file', '2018/04/5d_cours-13.jpg'),
(780, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:603;s:4:\"file\";s:23:\"2018/04/5d_cours-13.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"5d_cours-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"5d_cours-13-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:23:\"5d_cours-13-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(781, 183, '_wp_attached_file', '2018/04/5d_cours-14.jpg'),
(782, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:603;s:4:\"file\";s:23:\"2018/04/5d_cours-14.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"5d_cours-14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"5d_cours-14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:23:\"5d_cours-14-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(783, 184, '_wp_attached_file', '2018/04/5d_cours-15.jpg'),
(784, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:604;s:6:\"height\";i:453;s:4:\"file\";s:23:\"2018/04/5d_cours-15.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"5d_cours-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"5d_cours-15-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:23:\"5d_cours-15-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(785, 185, 'events-image', '179'),
(786, 185, '_events-image', 'field_5ac36bf7bde56'),
(787, 185, 'events-description', 'I ступень \"Вырвись за пределы\"\r\n140 000 руб.'),
(788, 185, '_events-description', 'field_5ac36c11bde57'),
(789, 185, 'events-link', '119'),
(790, 185, '_events-link', 'field_5ac36c1abde58'),
(791, 178, 'events-image', '179'),
(792, 178, '_events-image', 'field_5ac36bf7bde56'),
(793, 178, 'events-description', 'I ступень \"Вырвись за пределы\"\r\n'),
(794, 178, '_events-description', 'field_5ac36c11bde57'),
(795, 178, 'events-link', '119'),
(796, 178, '_events-link', 'field_5ac36c1abde58'),
(797, 186, '_edit_last', '1'),
(798, 186, '_edit_lock', '1522761638:1'),
(799, 177, 'field_5ac37a76d72f1', 'a:14:{s:3:\"key\";s:19:\"field_5ac37a76d72f1\";s:5:\"label\";s:19:\"Цена курса\";s:4:\"name\";s:13:\"service-price\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(801, 187, 'events-image', ''),
(802, 187, '_events-image', 'field_5ac36bf7bde56'),
(803, 187, 'events-description', 'II ступень «Пятое измерение. Мастер трансформации»\r\n350 000 руб.'),
(804, 187, '_events-description', 'field_5ac36c11bde57'),
(805, 187, 'events-link', '119'),
(806, 187, '_events-link', 'field_5ac36c1abde58'),
(807, 186, 'events-image', ''),
(808, 186, '_events-image', 'field_5ac36bf7bde56'),
(809, 186, 'events-description', 'II ступень «Пятое измерение. Мастер трансформации»\r\n350 000 руб.'),
(810, 186, '_events-description', 'field_5ac36c11bde57'),
(811, 186, 'events-link', '119'),
(812, 186, '_events-link', 'field_5ac36c1abde58'),
(814, 186, 'service-price', '140 000 руб.'),
(815, 186, '_service-price', 'field_5ac37a76d72f1'),
(816, 188, 'events-image', '179'),
(817, 188, '_events-image', 'field_5ac36bf7bde56'),
(818, 188, 'events-description', 'I ступень \"Вырвись за пределы\"\r\n'),
(819, 188, '_events-description', 'field_5ac36c11bde57'),
(820, 188, 'service-price', '140 000 руб.'),
(821, 188, '_service-price', 'field_5ac37a76d72f1'),
(822, 188, 'events-link', '119'),
(823, 188, '_events-link', 'field_5ac36c1abde58'),
(824, 178, 'service-price', '140 000 руб.'),
(825, 178, '_service-price', 'field_5ac37a76d72f1'),
(826, 189, '_edit_last', '1'),
(827, 189, '_edit_lock', '1522761637:1'),
(828, 190, 'events-image', '181'),
(829, 190, '_events-image', 'field_5ac36bf7bde56'),
(830, 190, 'events-description', 'Курс для преподавателей «Квантовые технологии в '),
(831, 190, '_events-description', 'field_5ac36c11bde57'),
(832, 190, 'service-price', '350 000 руб.'),
(833, 190, '_service-price', 'field_5ac37a76d72f1'),
(834, 190, 'events-link', 'null'),
(835, 190, '_events-link', 'field_5ac36c1abde58'),
(836, 189, 'events-image', '181'),
(837, 189, '_events-image', 'field_5ac36bf7bde56'),
(838, 189, 'events-description', 'Курс для преподавателей «Квантовые технологии в '),
(839, 189, '_events-description', 'field_5ac36c11bde57'),
(840, 189, 'service-price', '350 000 руб.'),
(841, 189, '_service-price', 'field_5ac37a76d72f1'),
(842, 189, 'events-link', 'null'),
(843, 189, '_events-link', 'field_5ac36c1abde58'),
(844, 191, '_edit_last', '1'),
(845, 191, '_edit_lock', '1522764890:1'),
(846, 192, 'events-image', '182'),
(847, 192, '_events-image', 'field_5ac36bf7bde56'),
(848, 192, 'events-description', 'III ступень \"Пятое измерение. Трансформирующее '),
(849, 192, '_events-description', 'field_5ac36c11bde57'),
(850, 192, 'service-price', '700 000 руб.'),
(851, 192, '_service-price', 'field_5ac37a76d72f1'),
(852, 192, 'events-link', 'null'),
(853, 192, '_events-link', 'field_5ac36c1abde58'),
(854, 191, 'events-image', '182'),
(855, 191, '_events-image', 'field_5ac36bf7bde56'),
(856, 191, 'events-description', 'III ступень \"Пятое измерение. Трансформирующее '),
(857, 191, '_events-description', 'field_5ac36c11bde57');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(858, 191, 'service-price', '700 000 руб.'),
(859, 191, '_service-price', 'field_5ac37a76d72f1'),
(860, 191, 'events-link', 'null'),
(861, 191, '_events-link', 'field_5ac36c1abde58'),
(862, 193, '_edit_last', '1'),
(863, 193, '_edit_lock', '1522764887:1'),
(864, 193, '_wp_page_template', 'default'),
(865, 194, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"2554409655ac37d692b11e336375315\";s:19:\"_sow_form_timestamp\";s:0:\"\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"c21f5dc6-626b-448f-9ec2-3b749c8868d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(866, 193, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:59:\"<p>[wpforms id=\"198\" title=\"false\" description=\"false\"]</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"2554409655ac37d692b11e336375315\";s:19:\"_sow_form_timestamp\";s:13:\"1522761813909\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"c21f5dc6-626b-448f-9ec2-3b749c8868d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(867, 195, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"2554409655ac37d692b11e336375315\";s:19:\"_sow_form_timestamp\";s:0:\"\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"c21f5dc6-626b-448f-9ec2-3b749c8868d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(868, 177, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(869, 197, 'notification_id', '721'),
(870, 197, 'type', 'success'),
(871, 197, 'dismissable', '1'),
(872, 197, 'location', '[\"everywhere\"]'),
(873, 197, 'version', ''),
(874, 197, 'viewed', '1'),
(875, 197, 'expiration', '1522796400'),
(876, 197, 'plans', '[]'),
(877, 199, 'service-image', '179'),
(878, 199, '_service-image', 'field_5ac36bf7bde56'),
(879, 199, 'service-description', 'I ступень \"Вырвись за пределы\"'),
(880, 199, '_service-description', 'field_5ac36c11bde57'),
(881, 199, 'service-price', '140 000 руб.'),
(882, 199, '_service-price', 'field_5ac37a76d72f1'),
(883, 199, 'service-link', 'null'),
(884, 199, '_service-link', 'field_5ac36c1abde58'),
(885, 178, 'service-image', '179'),
(886, 178, '_service-image', 'field_5ac36bf7bde56'),
(887, 178, 'service-description', 'I ступень \"Вырвись за пределы\"'),
(888, 178, '_service-description', 'field_5ac36c11bde57'),
(889, 178, 'service-link', 'null'),
(890, 178, '_service-link', 'field_5ac36c1abde58'),
(891, 200, 'service-image', '180'),
(892, 200, '_service-image', 'field_5ac36bf7bde56'),
(893, 200, 'service-description', 'II ступень «Пятое измерение. Мастер трансформации»'),
(894, 200, '_service-description', 'field_5ac36c11bde57'),
(895, 200, 'service-price', '140 000 руб.'),
(896, 200, '_service-price', 'field_5ac37a76d72f1'),
(897, 200, 'service-link', 'null'),
(898, 200, '_service-link', 'field_5ac36c1abde58'),
(899, 186, 'service-image', '180'),
(900, 186, '_service-image', 'field_5ac36bf7bde56'),
(901, 186, 'service-description', 'II ступень «Пятое измерение. Мастер трансформации»'),
(902, 186, '_service-description', 'field_5ac36c11bde57'),
(903, 186, 'service-link', 'null'),
(904, 186, '_service-link', 'field_5ac36c1abde58'),
(905, 201, 'service-image', '179'),
(906, 201, '_service-image', 'field_5ac36bf7bde56'),
(907, 201, 'service-description', 'Курс для преподавателей «Квантовые технологии в'),
(908, 201, '_service-description', 'field_5ac36c11bde57'),
(909, 201, 'service-price', '350 000 руб.'),
(910, 201, '_service-price', 'field_5ac37a76d72f1'),
(911, 201, 'service-link', 'null'),
(912, 201, '_service-link', 'field_5ac36c1abde58'),
(913, 189, 'service-image', '179'),
(914, 189, '_service-image', 'field_5ac36bf7bde56'),
(915, 189, 'service-description', 'Курс для преподавателей «Квантовые технологии в'),
(916, 189, '_service-description', 'field_5ac36c11bde57'),
(917, 189, 'service-link', 'null'),
(918, 189, '_service-link', 'field_5ac36c1abde58'),
(919, 202, 'service-image', '182'),
(920, 202, '_service-image', 'field_5ac36bf7bde56'),
(921, 202, 'service-description', 'III ступень \"Пятое измерение. Трансформирующее'),
(922, 202, '_service-description', 'field_5ac36c11bde57'),
(923, 202, 'service-price', '700 000 руб.'),
(924, 202, '_service-price', 'field_5ac37a76d72f1'),
(925, 202, 'service-link', 'null'),
(926, 202, '_service-link', 'field_5ac36c1abde58'),
(927, 191, 'service-image', '182'),
(928, 191, '_service-image', 'field_5ac36bf7bde56'),
(929, 191, 'service-description', 'III ступень \"Пятое измерение. Трансформирующее'),
(930, 191, '_service-description', 'field_5ac36c11bde57'),
(931, 191, 'service-link', '193'),
(932, 191, '_service-link', 'field_5ac36c1abde58'),
(933, 203, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:59:\"<p>[wpforms id=\"198\" title=\"false\" description=\"false\"]</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"2554409655ac37d692b11e336375315\";s:19:\"_sow_form_timestamp\";s:13:\"1522761813909\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"c21f5dc6-626b-448f-9ec2-3b749c8868d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(934, 203, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"2554409655ac37d692b11e336375315\";s:19:\"_sow_form_timestamp\";s:0:\"\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"c21f5dc6-626b-448f-9ec2-3b749c8868d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(935, 203, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"2554409655ac37d692b11e336375315\";s:19:\"_sow_form_timestamp\";s:0:\"\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"c21f5dc6-626b-448f-9ec2-3b749c8868d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(936, 204, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:59:\"<p>[wpforms id=\"198\" title=\"false\" description=\"false\"]</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"2554409655ac37d692b11e336375315\";s:19:\"_sow_form_timestamp\";s:13:\"1522761813909\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"c21f5dc6-626b-448f-9ec2-3b749c8868d5\";s:5:\"style\";a:2:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(937, 205, 'service-image', '182'),
(938, 205, '_service-image', 'field_5ac36bf7bde56'),
(939, 205, 'service-description', 'III ступень \"Пятое измерение. Трансформирующее'),
(940, 205, '_service-description', 'field_5ac36c11bde57'),
(941, 205, 'service-price', '700 000 руб.'),
(942, 205, '_service-price', 'field_5ac37a76d72f1'),
(943, 205, 'service-link', '193'),
(944, 205, '_service-link', 'field_5ac36c1abde58'),
(945, 206, '_wp_trash_meta_status', 'auto-draft'),
(946, 206, '_wp_trash_meta_time', '1522762418'),
(947, 206, '_wp_desired_post_slug', ''),
(948, 135, '_wp_trash_meta_status', 'publish'),
(949, 135, '_wp_trash_meta_time', '1522830328'),
(950, 135, '_wp_desired_post_slug', 'acf_audio'),
(951, 117, 'field_5ac48c92dc510', 'a:14:{s:3:\"key\";s:19:\"field_5ac48c92dc510\";s:5:\"label\";s:31:\"Кастомная ссылка\";s:4:\"name\";s:11:\"blog-сlink\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:69:\"<a class=\"books__btn\"href=\"#\" target=\"_blank\" >Подробнее</a>\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(952, 117, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(953, 117, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"vlog\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(954, 117, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"books\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:2;}'),
(955, 117, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"aud\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:3;}'),
(956, 139, 'blog-сlink', '<a class=\"books__btn\"href=\"#\" target=\"_blank\" >Подробнее</a>'),
(957, 139, '_blog-сlink', 'field_5ac48c92dc510'),
(958, 207, 'blog-image', '101'),
(959, 207, '_blog-image', 'field_5ac0bd5e2e9a4'),
(960, 207, 'blog-description', 'Книга ааа а а а а а а аа а'),
(961, 207, '_blog-description', 'field_5ac0bdef2e9a5'),
(962, 207, 'blog-link', '47'),
(963, 207, '_blog-link', 'field_5ac0d583ab1b3'),
(964, 207, 'blog-сlink', '<a class=\"books__btn\"href=\"#\" target=\"_blank\" >Подробнее</a>'),
(965, 207, '_blog-сlink', 'field_5ac48c92dc510'),
(966, 208, 'blog-image', '101'),
(967, 208, '_blog-image', 'field_5ac0bd5e2e9a4'),
(968, 208, 'blog-description', 'Книга ааа а а а а а а аа а'),
(969, 208, '_blog-description', 'field_5ac0bdef2e9a5'),
(970, 208, 'blog-link', ''),
(971, 208, '_blog-link', 'field_5ac0d583ab1b3'),
(972, 208, 'blog-сlink', '<a class=\"books__btn\"href=\"#\" target=\"_blank\" >Подробнее</a>'),
(973, 208, '_blog-сlink', 'field_5ac48c92dc510'),
(974, 209, 'blog-image', '101'),
(975, 209, '_blog-image', 'field_5ac0bd5e2e9a4'),
(976, 209, 'blog-description', 'Книга ааа а а а а а а аа а'),
(977, 209, '_blog-description', 'field_5ac0bdef2e9a5'),
(978, 209, 'blog-link', '47'),
(979, 209, '_blog-link', 'field_5ac0d583ab1b3'),
(980, 209, 'blog-сlink', '<a class=\"books__btn\"href=\"#\" target=\"_blank\" >Подробнее</a>'),
(981, 209, '_blog-сlink', 'field_5ac48c92dc510'),
(982, 210, '_edit_last', '1'),
(983, 210, 'field_5ac491021aa75', 'a:11:{s:3:\"key\";s:19:\"field_5ac491021aa75\";s:5:\"label\";s:34:\"Фон шапки страницы\";s:4:\"name\";s:11:\"title-image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(984, 210, 'field_5ac4912f1aa76', 'a:14:{s:3:\"key\";s:19:\"field_5ac4912f1aa76\";s:5:\"label\";s:35:\"Заголовок страницы\";s:4:\"name\";s:10:\"title-text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(986, 210, 'position', 'normal'),
(987, 210, 'layout', 'no_box'),
(988, 210, 'hide_on_screen', ''),
(989, 210, '_edit_lock', '1522836236:1'),
(990, 211, '_wp_attached_file', '2018/04/knigi_shapka.jpg'),
(991, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:24:\"2018/04/knigi_shapka.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"knigi_shapka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"knigi_shapka-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"knigi_shapka-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:24:\"knigi_shapka-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(992, 212, 'title-image', '211'),
(993, 212, '_title-image', 'field_5ac491021aa75'),
(994, 212, 'title-text', 'Книги'),
(995, 212, '_title-text', 'field_5ac4912f1aa76'),
(996, 13, 'title-image', '211'),
(997, 13, '_title-image', 'field_5ac491021aa75'),
(998, 13, 'title-text', 'Книги'),
(999, 13, '_title-text', 'field_5ac4912f1aa76'),
(1000, 148, 'field_5ac49728713b5', 'a:11:{s:3:\"key\";s:19:\"field_5ac49728713b5\";s:5:\"label\";s:34:\"Фон шапки страницы\";s:4:\"name\";s:11:\"title-image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(1001, 148, 'field_5ac4973c713b6', 'a:14:{s:3:\"key\";s:19:\"field_5ac4973c713b6\";s:5:\"label\";s:35:\"Заголовок страницы\";s:4:\"name\";s:10:\"title-text\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(1002, 148, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1003, 148, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"146\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(1004, 148, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"149\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:2;}'),
(1015, 213, '_wp_attached_file', '2018/04/anons_shapka-e1522834964892.jpg'),
(1016, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:39:\"2018/04/anons_shapka-e1522834964892.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"anons_shapka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"anons_shapka-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"anons_shapka-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:24:\"anons_shapka-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1017, 214, '_wp_attached_file', '2018/04/audio_shapka.jpg'),
(1018, 214, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:24:\"2018/04/audio_shapka.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"audio_shapka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"audio_shapka-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"audio_shapka-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:24:\"audio_shapka-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1019, 215, '_wp_attached_file', '2018/04/diksha_shapka1.jpg'),
(1020, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:26:\"2018/04/diksha_shapka1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"diksha_shapka1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"diksha_shapka1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"diksha_shapka1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:26:\"diksha_shapka1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1021, 216, '_wp_attached_file', '2018/04/foto_shapka.jpg'),
(1022, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:23:\"2018/04/foto_shapka.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"foto_shapka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"foto_shapka-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"foto_shapka-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:23:\"foto_shapka-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1023, 217, '_wp_attached_file', '2018/04/knigi_shapka-1.jpg'),
(1024, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:26:\"2018/04/knigi_shapka-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"knigi_shapka-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"knigi_shapka-1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"knigi_shapka-1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:26:\"knigi_shapka-1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1025, 218, '_wp_attached_file', '2018/04/konsultatsii_shapka1.jpg'),
(1026, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:32:\"2018/04/konsultatsii_shapka1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"konsultatsii_shapka1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"konsultatsii_shapka1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"konsultatsii_shapka1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:32:\"konsultatsii_shapka1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1027, 219, '_wp_attached_file', '2018/04/obuchayuschie_kursy_shapka1.jpg'),
(1028, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:39:\"2018/04/obuchayuschie_kursy_shapka1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"obuchayuschie_kursy_shapka1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"obuchayuschie_kursy_shapka1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"obuchayuschie_kursy_shapka1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:39:\"obuchayuschie_kursy_shapka1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1029, 220, '_wp_attached_file', '2018/04/otzyvy_shapka1.jpg'),
(1030, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:26:\"2018/04/otzyvy_shapka1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"otzyvy_shapka1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"otzyvy_shapka1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"otzyvy_shapka1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:26:\"otzyvy_shapka1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1031, 221, '_wp_attached_file', '2018/04/stati_shapka1.jpg'),
(1032, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:25:\"2018/04/stati_shapka1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"stati_shapka1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"stati_shapka1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"stati_shapka1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:25:\"stati_shapka1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1033, 222, '_wp_attached_file', '2018/04/video_shapka1.jpg'),
(1034, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:25:\"2018/04/video_shapka1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"video_shapka1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"video_shapka1-300x105.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"video_shapka1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"sow-carousel-default\";a:4:{s:4:\"file\";s:25:\"video_shapka1-272x182.jpg\";s:5:\"width\";i:272;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1035, 213, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:16:\"anons_shapka.jpg\";}s:18:\"full-1522834964892\";a:3:{s:5:\"width\";i:920;s:6:\"height\";i:323;s:4:\"file\";s:31:\"anons_shapka-e1522834948853.jpg\";}}'),
(1036, 223, 'title-image', '213'),
(1037, 223, '_title-image', 'field_5ac491021aa75'),
(1038, 223, 'title-text', 'Анонс мероприятий'),
(1039, 223, '_title-text', 'field_5ac4912f1aa76'),
(1040, 5, 'title-image', '213'),
(1041, 5, '_title-image', 'field_5ac491021aa75'),
(1042, 5, 'title-text', 'Анонс мероприятий'),
(1043, 5, '_title-text', 'field_5ac4912f1aa76'),
(1044, 224, 'title-image', '214'),
(1045, 224, '_title-image', 'field_5ac491021aa75'),
(1046, 224, 'title-text', 'Аудио'),
(1047, 224, '_title-text', 'field_5ac4912f1aa76'),
(1048, 7, 'title-image', '214'),
(1049, 7, '_title-image', 'field_5ac491021aa75'),
(1050, 7, 'title-text', 'Аудио'),
(1051, 7, '_title-text', 'field_5ac4912f1aa76'),
(1052, 225, 'title-image', '222'),
(1053, 225, '_title-image', 'field_5ac491021aa75'),
(1054, 225, 'title-text', 'Видео Журнал'),
(1055, 225, '_title-text', 'field_5ac4912f1aa76'),
(1056, 225, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:18:\"Заголовок\";s:4:\"text\";s:17:\"<p>текст</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"4540944695ac0cecb40828337096698\";s:19:\"_sow_form_timestamp\";s:13:\"1522585306589\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b14d3438-9704-4410-be5a-f8fea2d06302\";s:5:\"style\";a:2:{s:5:\"class\";s:9:\"container\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(1057, 225, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:18:\"Заголовок\";s:4:\"text\";s:17:\"<p>текст</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"4540944695ac0cecb40828337096698\";s:19:\"_sow_form_timestamp\";s:13:\"1522585306589\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b14d3438-9704-4410-be5a-f8fea2d06302\";s:5:\"style\";a:3:{s:5:\"class\";s:9:\"container\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(1058, 225, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:18:\"Заголовок\";s:4:\"text\";s:17:\"<p>текст</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"4540944695ac0cecb40828337096698\";s:19:\"_sow_form_timestamp\";s:13:\"1522585306589\";s:11:\"panels_info\";a:6:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b14d3438-9704-4410-be5a-f8fea2d06302\";s:5:\"style\";a:3:{s:5:\"class\";s:9:\"container\";s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:3:{s:27:\"background_image_attachment\";b:0;s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(1059, 9, 'title-image', '222'),
(1060, 9, '_title-image', 'field_5ac491021aa75'),
(1061, 9, 'title-text', 'Видео Журнал'),
(1062, 9, '_title-text', 'field_5ac4912f1aa76'),
(1063, 226, 'title-image', '222'),
(1064, 226, '_title-image', 'field_5ac491021aa75'),
(1065, 226, 'title-text', 'Видео Журнал'),
(1066, 226, '_title-text', 'field_5ac4912f1aa76'),
(1067, 226, 'panels_data', 'a:3:{s:7:\"widgets\";a:1:{i:0;a:7:{s:5:\"title\";s:18:\"Заголовок\";s:4:\"text\";s:17:\"<p>текст</p>\";s:20:\"text_selected_editor\";s:7:\"tinymce\";s:5:\"autop\";b:1;s:12:\"_sow_form_id\";s:31:\"4540944695ac0cecb40828337096698\";s:19:\"_sow_form_timestamp\";s:13:\"1522585306589\";s:11:\"panels_info\";a:7:{s:5:\"class\";s:31:\"SiteOrigin_Widget_Editor_Widget\";s:3:\"raw\";b:0;s:4:\"grid\";i:0;s:4:\"cell\";i:0;s:2:\"id\";i:0;s:9:\"widget_id\";s:36:\"b14d3438-9704-4410-be5a-f8fea2d06302\";s:5:\"style\";a:2:{s:5:\"class\";s:9:\"container\";s:18:\"background_display\";s:4:\"tile\";}}}}s:5:\"grids\";a:1:{i:0;a:4:{s:5:\"cells\";i:1;s:5:\"style\";a:2:{s:18:\"background_display\";s:4:\"tile\";s:14:\"cell_alignment\";s:10:\"flex-start\";}s:5:\"ratio\";i:1;s:15:\"ratio_direction\";s:5:\"right\";}}s:10:\"grid_cells\";a:1:{i:0;a:4:{s:4:\"grid\";i:0;s:5:\"index\";i:0;s:6:\"weight\";i:1;s:5:\"style\";a:0:{}}}}'),
(1068, 227, 'title-image', '215'),
(1069, 227, '_title-image', 'field_5ac491021aa75'),
(1070, 227, 'title-text', 'Дикша Любви и Единства'),
(1071, 227, '_title-text', 'field_5ac4912f1aa76'),
(1072, 77, 'title-image', '215'),
(1073, 77, '_title-image', 'field_5ac491021aa75'),
(1074, 77, 'title-text', 'Дикша Любви и Единства'),
(1075, 77, '_title-text', 'field_5ac4912f1aa76'),
(1076, 228, 'title-image', '218'),
(1077, 228, '_title-image', 'field_5ac491021aa75'),
(1078, 228, 'title-text', 'Консультации'),
(1079, 228, '_title-text', 'field_5ac4912f1aa76'),
(1080, 80, 'title-image', '218'),
(1081, 80, '_title-image', 'field_5ac491021aa75'),
(1082, 80, 'title-text', 'Консультации'),
(1083, 80, '_title-text', 'field_5ac4912f1aa76'),
(1084, 229, 'title-image', '219'),
(1085, 229, '_title-image', 'field_5ac491021aa75'),
(1086, 229, 'title-text', 'Обучающие курсы'),
(1087, 229, '_title-text', 'field_5ac4912f1aa76'),
(1088, 17, 'title-image', '219'),
(1089, 17, '_title-image', 'field_5ac491021aa75'),
(1090, 17, 'title-text', 'Обучающие курсы'),
(1091, 17, '_title-text', 'field_5ac4912f1aa76'),
(1092, 230, '_menu_item_type', 'post_type'),
(1093, 230, '_menu_item_menu_item_parent', '0'),
(1094, 230, '_menu_item_object_id', '149'),
(1095, 230, '_menu_item_object', 'page'),
(1096, 230, '_menu_item_target', ''),
(1097, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1098, 230, '_menu_item_xfn', ''),
(1099, 230, '_menu_item_url', ''),
(1101, 231, '_menu_item_type', 'post_type'),
(1102, 231, '_menu_item_menu_item_parent', '0'),
(1103, 231, '_menu_item_object_id', '146'),
(1104, 231, '_menu_item_object', 'page'),
(1105, 231, '_menu_item_target', ''),
(1106, 231, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1107, 231, '_menu_item_xfn', ''),
(1108, 231, '_menu_item_url', ''),
(1110, 232, '_menu_item_type', 'post_type'),
(1111, 232, '_menu_item_menu_item_parent', '0'),
(1112, 232, '_menu_item_object_id', '19'),
(1113, 232, '_menu_item_object', 'page'),
(1114, 232, '_menu_item_target', ''),
(1115, 232, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1116, 232, '_menu_item_xfn', ''),
(1117, 232, '_menu_item_url', ''),
(1119, 148, '_wp_trash_meta_status', 'publish'),
(1120, 148, '_wp_trash_meta_time', '1522836091'),
(1121, 148, '_wp_desired_post_slug', 'acf_otzyvy-ssylki'),
(1122, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(1123, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(1124, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:2;}'),
(1125, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:3;}'),
(1126, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"77\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:4;}'),
(1127, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"80\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:5;}'),
(1128, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:6;}'),
(1129, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"23\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:7;}'),
(1130, 210, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"29\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:8;}'),
(1131, 210, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:9;}'),
(1132, 210, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-v_reviews-page.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:10;}'),
(1133, 210, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-t_reviews-page.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:11;}'),
(1134, 210, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"page-vk_reviews-page.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:12;}'),
(1135, 149, '_', ''),
(1136, 233, 'title-image', '220'),
(1137, 233, '_title-image', 'field_5ac491021aa75'),
(1138, 233, 'title-text', 'Отзывы и результаты'),
(1139, 233, '_title-text', 'field_5ac4912f1aa76'),
(1140, 149, 'title-image', '220'),
(1141, 149, '_title-image', 'field_5ac491021aa75'),
(1142, 149, 'title-text', 'Отзывы и результаты'),
(1143, 149, '_title-text', 'field_5ac4912f1aa76'),
(1144, 234, 'title-image', '220'),
(1145, 234, '_title-image', 'field_5ac491021aa75'),
(1146, 234, 'title-text', 'Отзывы и результаты'),
(1147, 234, '_title-text', 'field_5ac4912f1aa76'),
(1148, 19, 'title-image', '220'),
(1149, 19, '_title-image', 'field_5ac491021aa75'),
(1150, 19, 'title-text', 'Отзывы и результаты'),
(1151, 19, '_title-text', 'field_5ac4912f1aa76'),
(1152, 235, 'title-image', '220'),
(1153, 235, '_title-image', 'field_5ac491021aa75'),
(1154, 235, 'title-text', 'Отзывы и результаты'),
(1155, 235, '_title-text', 'field_5ac4912f1aa76'),
(1156, 146, 'title-image', '220'),
(1157, 146, '_title-image', 'field_5ac491021aa75'),
(1158, 146, 'title-text', 'Отзывы и результаты'),
(1159, 146, '_title-text', 'field_5ac4912f1aa76'),
(1160, 236, 'title-image', '221'),
(1161, 236, '_title-image', 'field_5ac491021aa75'),
(1162, 236, 'title-text', 'Статьи и Публикации'),
(1163, 236, '_title-text', 'field_5ac4912f1aa76'),
(1164, 23, 'title-image', '221'),
(1165, 23, '_title-image', 'field_5ac491021aa75'),
(1166, 23, 'title-text', 'Статьи и Публикации'),
(1167, 23, '_title-text', 'field_5ac4912f1aa76'),
(1168, 237, 'title-image', '221'),
(1169, 237, '_title-image', 'field_5ac491021aa75'),
(1170, 237, 'title-text', 'Статьи и Публикации'),
(1171, 237, '_title-text', 'field_5ac4912f1aa76'),
(1172, 238, 'title-image', '216'),
(1173, 238, '_title-image', 'field_5ac491021aa75'),
(1174, 238, 'title-text', 'Фотоальбом'),
(1175, 238, '_title-text', 'field_5ac4912f1aa76'),
(1176, 29, 'title-image', '216'),
(1177, 29, '_title-image', 'field_5ac491021aa75'),
(1178, 29, 'title-text', 'Фотоальбом'),
(1179, 29, '_title-text', 'field_5ac4912f1aa76');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-22 13:38:10', '2018-02-22 10:38:10', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2018-04-01 14:12:12', '2018-04-01 11:12:12', '', 0, 'http://5dimansion.ru/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-22 13:38:10', '2018-02-22 10:38:10', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://5dimansion.ru/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-03-25 19:22:55', '2018-03-25 16:22:55', '', 0, 'http://5dimansion.ru/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-03-25 19:22:55', '2018-03-25 16:22:55', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://5dimansion.ru/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-25 19:22:55', '2018-03-25 16:22:55', '', 2, 'http://5dimansion.ru/2018/03/25/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-03-25 19:23:12', '2018-03-25 16:23:12', '', 'Анонс мероприятий', '', 'publish', 'closed', 'closed', '', 'anons-meropriyatij', '', '', '2018-04-04 12:46:21', '2018-04-04 09:46:21', '', 0, 'http://5dimansion.ru/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-03-25 19:23:12', '2018-03-25 16:23:12', '', 'Анонс мероприятий', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-03-25 19:23:12', '2018-03-25 16:23:12', '', 5, 'http://5dimansion.ru/2018/03/25/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-03-25 19:23:24', '2018-03-25 16:23:24', '', 'Аудио', '', 'publish', 'closed', 'closed', '', 'audio', '', '', '2018-04-04 12:48:03', '2018-04-04 09:48:03', '', 0, 'http://5dimansion.ru/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-03-25 19:23:24', '2018-03-25 16:23:24', '', 'Аудио', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-03-25 19:23:24', '2018-03-25 16:23:24', '', 7, 'http://5dimansion.ru/2018/03/25/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-03-25 19:23:35', '2018-03-25 16:23:35', '<div id=\"pl-9\"  class=\"panel-layout\" ><div id=\"pg-9-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-9-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-9-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-9-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Заголовок</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>текст</p></div>\n</div></div></div></div></div></div>', 'Видео', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2018-04-04 12:48:42', '2018-04-04 09:48:42', '', 0, 'http://5dimansion.ru/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-03-25 19:23:35', '2018-03-25 16:23:35', '', 'Видео', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-25 19:23:35', '2018-03-25 16:23:35', '', 9, 'http://5dimansion.ru/2018/03/25/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-03-25 19:23:47', '2018-03-25 16:23:47', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-01 10:48:07', '2018-04-01 07:48:07', '', 0, 'http://5dimansion.ru/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-25 19:23:47', '2018-03-25 16:23:47', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 19:23:47', '2018-03-25 16:23:47', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-03-25 19:24:08', '2018-03-25 16:24:08', '', 'Книги', '', 'publish', 'closed', 'closed', '', 'knigi', '', '', '2018-04-04 11:50:08', '2018-04-04 08:50:08', '', 0, 'http://5dimansion.ru/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-03-25 19:24:08', '2018-03-25 16:24:08', '', 'Книги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-03-25 19:24:08', '2018-03-25 16:24:08', '', 13, 'http://5dimansion.ru/2018/03/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-03-25 19:24:19', '2018-03-25 16:24:19', '', 'Описание курсов', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-03-25 19:24:19', '2018-03-25 16:24:19', '', 13, 'http://5dimansion.ru/2018/03/25/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-03-25 19:24:27', '2018-03-25 16:24:27', '', 'Книги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-03-25 19:24:27', '2018-03-25 16:24:27', '', 13, 'http://5dimansion.ru/2018/03/25/13-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-03-25 19:24:44', '2018-03-25 16:24:44', '', 'Описание курсов', '', 'publish', 'closed', 'closed', '', 'opisanie-kursov', '', '', '2018-04-04 12:51:56', '2018-04-04 09:51:56', '', 0, 'http://5dimansion.ru/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-03-25 19:24:44', '2018-03-25 16:24:44', '', 'Описание курсов', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-03-25 19:24:44', '2018-03-25 16:24:44', '', 17, 'http://5dimansion.ru/2018/03/25/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-03-25 19:24:54', '2018-03-25 16:24:54', '', 'Отзывы', '', 'publish', 'closed', 'closed', '', 'otzyvy', '', '', '2018-04-04 13:03:36', '2018-04-04 10:03:36', '', 0, 'http://5dimansion.ru/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-03-25 19:24:54', '2018-03-25 16:24:54', '', 'Отзывы', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-03-25 19:24:54', '2018-03-25 16:24:54', '', 19, 'http://5dimansion.ru/2018/03/25/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-03-25 19:25:19', '2018-03-25 16:25:19', '', 'Политика конфиденциальности', '', 'publish', 'closed', 'closed', '', 'politika-konfidentsialnosti', '', '', '2018-03-25 19:25:19', '2018-03-25 16:25:19', '', 0, 'http://5dimansion.ru/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-03-25 19:25:19', '2018-03-25 16:25:19', '', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-03-25 19:25:19', '2018-03-25 16:25:19', '', 21, 'http://5dimansion.ru/2018/03/25/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-03-25 19:25:27', '2018-03-25 16:25:27', '', 'Статьи', '', 'publish', 'closed', 'closed', '', 'stati', '', '', '2018-04-04 13:04:29', '2018-04-04 10:04:29', '', 0, 'http://5dimansion.ru/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-03-25 19:25:27', '2018-03-25 16:25:27', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-03-25 19:25:27', '2018-03-25 16:25:27', '', 23, 'http://5dimansion.ru/2018/03/25/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-03-25 19:25:51', '2018-03-25 16:25:51', '', 'Университет Физики Сознания', '', 'trash', 'closed', 'closed', '', 'universitet-fiziki-soznaniya__trashed', '', '', '2018-03-31 10:23:13', '2018-03-31 07:23:13', '', 0, 'http://5dimansion.ru/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-25 19:25:51', '2018-03-25 16:25:51', '', 'Университет Физики Сознания', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-25 19:25:51', '2018-03-25 16:25:51', '', 25, 'http://5dimansion.ru/2018/03/25/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-03-25 19:26:06', '2018-03-25 16:26:06', '', 'Фонд \"Новая Земля\"', '', 'publish', 'closed', 'closed', '', 'fond-novaya-zemlya', '', '', '2018-03-25 19:26:06', '2018-03-25 16:26:06', '', 0, 'http://5dimansion.ru/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-03-25 19:26:06', '2018-03-25 16:26:06', '', 'Фонд \"Новая Земля\"', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-25 19:26:06', '2018-03-25 16:26:06', '', 27, 'http://5dimansion.ru/2018/03/25/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-03-25 19:26:15', '2018-03-25 16:26:15', '', 'Фото', '', 'publish', 'closed', 'closed', '', 'foto', '', '', '2018-04-04 13:05:54', '2018-04-04 10:05:54', '', 0, 'http://5dimansion.ru/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-03-25 19:26:15', '2018-03-25 16:26:15', '', 'Фото', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-03-25 19:26:15', '2018-03-25 16:26:15', '', 29, 'http://5dimansion.ru/2018/03/25/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-03-25 19:41:48', '2018-03-25 16:41:48', '{\n    \"site_icon\": {\n        \"value\": 32,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-25 16:41:48\"\n    },\n    \"dinelli::custom_logo\": {\n        \"value\": 31,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-25 16:41:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2b04722d-0812-4539-baa2-0f085c4be667', '', '', '2018-03-25 19:41:48', '2018-03-25 16:41:48', '', 0, 'http://5dimansion.ru/2018/03/25/2b04722d-0812-4539-baa2-0f085c4be667/', 0, 'customize_changeset', '', 0),
(34, 1, '2018-03-25 19:52:11', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 19:52:11', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-03-25 19:54:54', '2018-03-25 16:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-04-04 11:41:01', '2018-04-04 08:41:01', '', 0, 'http://5dimansion.ru/?p=35', 3, 'nav_menu_item', '', 0),
(38, 1, '2018-03-25 19:54:54', '2018-03-25 16:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-04-04 11:41:01', '2018-04-04 08:41:01', '', 0, 'http://5dimansion.ru/?p=38', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-03-25 19:54:54', '2018-03-25 16:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-04-04 11:41:01', '2018-04-04 08:41:01', '', 0, 'http://5dimansion.ru/?p=40', 2, 'nav_menu_item', '', 0),
(42, 1, '2018-03-25 19:52:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 19:52:11', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?p=42', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-03-25 21:59:33', '2018-03-25 18:59:33', 'Книга \"Пятое измерение\"', 'Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov', '', 'inherit', 'open', 'closed', '', 'kniga_pyatoe_izmerenie_3_redaktsia_sergey_dolmatov', '', '', '2018-03-25 21:59:58', '2018-03-25 18:59:58', '', 0, 'http://5dimansion.ru/wp-content/uploads/2018/03/Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov.pdf', 0, 'attachment', 'application/pdf', 0),
(48, 1, '2018-03-25 22:13:34', '2018-03-25 19:13:34', '', '5d_bg', '', 'inherit', 'open', 'closed', '', '5d_bg', '', '', '2018-03-25 22:13:34', '2018-03-25 19:13:34', '', 11, 'http://5dimansion.ru/wp-content/uploads/2018/03/5d_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-03-25 22:30:58', '2018-03-25 19:30:58', '<div id=\"pl-11\"  class=\"panel-layout\" ><div id=\"pg-11-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;class&quot;:&quot;main__display&quot;,&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;fixed&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div class=\"main__display panel-row-style panel-row-style-for-11-0\" ><div id=\"pgc-11-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ></div><div id=\"pgc-11-0-1\"  class=\"panel-grid-cell\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ><div id=\"panel-11-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;30% 30% 30% 30%&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-11-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2018-03-25 22:30:58', '2018-03-25 19:30:58', '', 11, 'http://5dimansion.ru/2018/03/25/11-autosave-v1/', 0, 'revision', '', 0),
(50, 1, '2018-03-25 22:18:00', '2018-03-25 19:18:00', '<div id=\"pl-50\"  class=\"panel-layout\" ><div id=\"pg-50-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;parallax&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div data-siteorigin-parallax=\"{&quot;backgroundUrl&quot;:&quot;http:\\/\\/5dimansion.ru\\/wp-content\\/uploads\\/2018\\/03\\/5d_bg.jpg&quot;,&quot;backgroundSize&quot;:[1920,972],&quot;backgroundSizing&quot;:&quot;scaled&quot;,&quot;limitMotion&quot;:&quot;auto&quot;}\" class=\"panel-row-style panel-row-style-for-50-0\" ><div id=\"pgc-50-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-weight=\"0.5\" ></div><div id=\"pgc-50-0-1\"  class=\"panel-grid-cell\"  data-weight=\"0.5\" ><div id=\"panel-50-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-50-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:18:00', '2018-03-25 19:18:00', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-03-25 22:18:00', '2018-03-25 19:18:00', '<div id=\"pl-11\"  class=\"panel-layout\" ><div id=\"pg-11-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;parallax&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div data-siteorigin-parallax=\"{&quot;backgroundUrl&quot;:&quot;http:\\/\\/5dimansion.ru\\/wp-content\\/uploads\\/2018\\/03\\/5d_bg.jpg&quot;,&quot;backgroundSize&quot;:[1920,972],&quot;backgroundSizing&quot;:&quot;scaled&quot;,&quot;limitMotion&quot;:&quot;auto&quot;}\" class=\"panel-row-style panel-row-style-for-11-0\" ><div id=\"pgc-11-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-weight=\"0.5\" ></div><div id=\"pgc-11-0-1\"  class=\"panel-grid-cell\"  data-weight=\"0.5\" ><div id=\"panel-11-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-11-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:18:00', '2018-03-25 19:18:00', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-03-25 22:19:51', '2018-03-25 19:19:51', '<div id=\"pl-52\"  class=\"panel-layout\" ><div id=\"pg-52-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;class&quot;:&quot;main__display&quot;,&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;parallax&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div class=\"main__display panel-row-style panel-row-style-for-52-0\" data-siteorigin-parallax=\"{&quot;backgroundUrl&quot;:&quot;http:\\/\\/5dimansion.ru\\/wp-content\\/uploads\\/2018\\/03\\/5d_bg.jpg&quot;,&quot;backgroundSize&quot;:[1920,972],&quot;backgroundSizing&quot;:&quot;scaled&quot;,&quot;limitMotion&quot;:&quot;auto&quot;}\" ><div id=\"pgc-52-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ></div><div id=\"pgc-52-0-1\"  class=\"panel-grid-cell\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ><div id=\"panel-52-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-52-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:19:51', '2018-03-25 19:19:51', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-03-25 22:19:51', '2018-03-25 19:19:51', '<div id=\"pl-11\"  class=\"panel-layout\" ><div id=\"pg-11-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;class&quot;:&quot;main__display&quot;,&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;parallax&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div class=\"main__display panel-row-style panel-row-style-for-11-0\" data-siteorigin-parallax=\"{&quot;backgroundUrl&quot;:&quot;http:\\/\\/5dimansion.ru\\/wp-content\\/uploads\\/2018\\/03\\/5d_bg.jpg&quot;,&quot;backgroundSize&quot;:[1920,972],&quot;backgroundSizing&quot;:&quot;scaled&quot;,&quot;limitMotion&quot;:&quot;auto&quot;}\" ><div id=\"pgc-11-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ></div><div id=\"pgc-11-0-1\"  class=\"panel-grid-cell\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ><div id=\"panel-11-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-11-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:19:51', '2018-03-25 19:19:51', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-03-25 22:23:09', '2018-03-25 19:23:09', '<div id=\"pl-54\"  class=\"panel-layout\" ><div id=\"pg-54-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;class&quot;:&quot;main__display&quot;,&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;parallax-original&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div class=\"main__display panel-row-style panel-row-style-for-54-0\" data-siteorigin-parallax=\"{&quot;backgroundUrl&quot;:&quot;http:\\/\\/5dimansion.ru\\/wp-content\\/uploads\\/2018\\/03\\/5d_bg.jpg&quot;,&quot;backgroundSize&quot;:[1920,972],&quot;backgroundSizing&quot;:&quot;original&quot;,&quot;limitMotion&quot;:&quot;auto&quot;}\" ><div id=\"pgc-54-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ></div><div id=\"pgc-54-0-1\"  class=\"panel-grid-cell\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ><div id=\"panel-54-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-54-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:23:09', '2018-03-25 19:23:09', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-03-25 22:23:09', '2018-03-25 19:23:09', '<div id=\"pl-11\"  class=\"panel-layout\" ><div id=\"pg-11-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;class&quot;:&quot;main__display&quot;,&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;parallax-original&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div class=\"main__display panel-row-style panel-row-style-for-11-0\" data-siteorigin-parallax=\"{&quot;backgroundUrl&quot;:&quot;http:\\/\\/5dimansion.ru\\/wp-content\\/uploads\\/2018\\/03\\/5d_bg.jpg&quot;,&quot;backgroundSize&quot;:[1920,972],&quot;backgroundSizing&quot;:&quot;original&quot;,&quot;limitMotion&quot;:&quot;auto&quot;}\" ><div id=\"pgc-11-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ></div><div id=\"pgc-11-0-1\"  class=\"panel-grid-cell\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ><div id=\"panel-11-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-11-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:23:09', '2018-03-25 19:23:09', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-03-25 22:23:29', '2018-03-25 19:23:29', '<div id=\"pl-56\"  class=\"panel-layout\" ><div id=\"pg-56-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;class&quot;:&quot;main__display&quot;,&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;fixed&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div class=\"main__display panel-row-style panel-row-style-for-56-0\" ><div id=\"pgc-56-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ></div><div id=\"pgc-56-0-1\"  class=\"panel-grid-cell\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ><div id=\"panel-56-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-56-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:23:29', '2018-03-25 19:23:29', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-03-25 22:23:29', '2018-03-25 19:23:29', '<div id=\"pl-11\"  class=\"panel-layout\" ><div id=\"pg-11-0\"  class=\"panel-grid panel-has-style\"  data-style=\"{&quot;class&quot;:&quot;main__display&quot;,&quot;background_image_attachment&quot;:&quot;48&quot;,&quot;background_display&quot;:&quot;fixed&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div class=\"main__display panel-row-style panel-row-style-for-11-0\" ><div id=\"pgc-11-0-0\"  class=\"panel-grid-cell panel-grid-cell-empty\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ></div><div id=\"pgc-11-0-1\"  class=\"panel-grid-cell\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;vertical_alignment&quot;:&quot;auto&quot;}\"  data-weight=\"0.5\" ><div id=\"panel-11-0-1-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;padding&quot;:&quot;150px 30px 30px 30px&quot;,&quot;mobile_padding&quot;:&quot;10px 10px 10px 10px&quot;,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"panel-widget-style panel-widget-style-for-11-0-1-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<h2 class=\"page_name\"><span style=\"color: #ffffff;\">Физика сознания. #ТРАБЛШУТЕР Нелли Давыдова</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: #ffffff;\">Обучение в Университете физики сознания. Фонд \"НОВАЯ ЗЕМЛЯ\". Миссия фонда - содействие просвещению, продвижению здорового образа жизни и духовного развития личности современного человека.</span></p></div>\n</div></div></div></div></div></div></div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 22:23:29', '2018-03-25 19:23:29', '', 11, 'http://5dimansion.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-03-25 22:34:02', '2018-03-25 19:34:02', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'acf_glavnaya', '', '', '2018-03-25 22:34:02', '2018-03-25 19:34:02', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=58', 0, 'acf', '', 0),
(59, 1, '2018-03-26 00:01:42', '2018-03-25 21:01:42', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-26 00:01:42', '2018-03-25 21:01:42', '', 11, 'http://5dimansion.ru/2018/03/26/11-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-03-26 00:01:59', '2018-03-25 21:01:59', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-26 00:01:59', '2018-03-25 21:01:59', '', 11, 'http://5dimansion.ru/2018/03/26/11-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-03-29 20:37:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-29 20:37:02', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?p=61', 0, 'post', '', 0),
(66, 1, '2018-03-29 22:17:28', '2018-03-29 19:17:28', '{\n    \"site_icon\": {\n        \"value\": 64,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-29 19:17:28\"\n    },\n    \"dinelli::custom_logo\": {\n        \"value\": 65,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-29 19:17:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd4656fc7-6c23-4db5-9c1d-ad629b4cc537', '', '', '2018-03-29 22:17:28', '2018-03-29 19:17:28', '', 0, 'http://5dimansion.ru/?p=66', 0, 'customize_changeset', '', 0),
(68, 1, '2018-03-29 22:19:10', '2018-03-29 19:19:10', '{\n    \"site_icon\": {\n        \"value\": 67,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-29 19:19:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1d9404b6-5d21-41c4-9ce3-6b6518208572', '', '', '2018-03-29 22:19:10', '2018-03-29 19:19:10', '', 0, 'http://5dimansion.ru/2018/03/29/1d9404b6-5d21-41c4-9ce3-6b6518208572/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-03-29 22:27:00', '2018-03-29 19:27:00', '', '5d_favicon', '', 'inherit', 'open', 'closed', '', '5d_favicon', '', '', '2018-03-29 22:27:00', '2018-03-29 19:27:00', '', 0, 'http://5dimansion.ru/wp-content/uploads/2018/03/5d_favicon.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-03-29 22:27:26', '2018-03-29 19:27:26', '{\n    \"site_icon\": {\n        \"value\": 74,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-29 19:27:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec004521-2fa1-4bf8-8b44-75a364a66171', '', '', '2018-03-29 22:27:26', '2018-03-29 19:27:26', '', 0, 'http://5dimansion.ru/2018/03/29/ec004521-2fa1-4bf8-8b44-75a364a66171/', 0, 'customize_changeset', '', 0),
(76, 1, '2018-03-29 22:29:04', '2018-03-29 19:29:04', '{\n    \"blogname\": {\n        \"value\": \"5Dim\\u0410ntion\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-29 19:29:04\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u041c\\u0435\\u0436\\u0434\\u0443\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u044b\\u0439 \\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442 \\u0424\\u0438\\u0437\\u0438\\u043a\\u0438 \\u0421\\u043e\\u0437\\u043d\\u0430\\u043d\\u0438\\u044f\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-29 19:29:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eeaf25c0-88a9-4a7a-a7d0-5f19cc0603e3', '', '', '2018-03-29 22:29:04', '2018-03-29 19:29:04', '', 0, 'http://5dimansion.ru/2018/03/29/eeaf25c0-88a9-4a7a-a7d0-5f19cc0603e3/', 0, 'customize_changeset', '', 0),
(77, 1, '2018-03-31 10:24:03', '2018-03-31 07:24:03', '', 'Дикша Любви', '', 'publish', 'closed', 'closed', '', 'diksha-lyubvi', '', '', '2018-04-04 12:49:48', '2018-04-04 09:49:48', '', 0, 'http://5dimansion.ru/?page_id=77', 0, 'page', '', 0),
(78, 1, '2018-03-31 10:24:03', '2018-03-31 07:24:03', '', 'Дикша Любви', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-03-31 10:24:03', '2018-03-31 07:24:03', '', 77, 'http://5dimansion.ru/2018/03/31/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-03-31 10:24:28', '0000-00-00 00:00:00', '', 'Фонд \"Новая Земля\"', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-31 10:24:28', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2018-03-31 10:25:16', '2018-03-31 07:25:16', '', 'Консультации', '', 'publish', 'closed', 'closed', '', 'konsultatsii', '', '', '2018-04-04 12:51:19', '2018-04-04 09:51:19', '', 0, 'http://5dimansion.ru/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-03-31 10:25:16', '2018-03-31 07:25:16', '', 'Консультации', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-03-31 10:25:16', '2018-03-31 07:25:16', '', 80, 'http://5dimansion.ru/2018/03/31/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-03-31 10:28:03', '2018-03-31 07:28:03', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2018-04-04 11:41:01', '2018-04-04 08:41:01', '', 0, 'http://5dimansion.ru/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2018-03-31 10:28:03', '2018-03-31 07:28:03', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-04-04 11:41:01', '2018-04-04 08:41:01', '', 0, 'http://5dimansion.ru/?p=83', 5, 'nav_menu_item', '', 0),
(85, 1, '2018-03-31 10:51:09', '2018-03-31 07:51:09', '{\n    \"site_icon\": {\n        \"value\": 84,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-31 07:51:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66caeffc-4135-4c5d-ae7b-cb8092267f64', '', '', '2018-03-31 10:51:09', '2018-03-31 07:51:09', '', 0, 'http://5dimansion.ru/2018/03/31/66caeffc-4135-4c5d-ae7b-cb8092267f64/', 0, 'customize_changeset', '', 0),
(87, 1, '2018-03-31 11:02:10', '2018-03-31 08:02:10', '', '5d_favicon-n', '', 'inherit', 'open', 'closed', '', '5d_favicon-n', '', '', '2018-03-31 11:02:10', '2018-03-31 08:02:10', '', 0, 'http://5dimansion.ru/wp-content/uploads/2018/03/5d_favicon-n.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2018-03-31 11:03:12', '2018-03-31 08:03:12', '{\n    \"site_icon\": {\n        \"value\": 87,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-31 08:03:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b8eb765f-2f62-4040-b6e4-efd605b492d1', '', '', '2018-03-31 11:03:12', '2018-03-31 08:03:12', '', 0, 'http://5dimansion.ru/2018/03/31/b8eb765f-2f62-4040-b6e4-efd605b492d1/', 0, 'customize_changeset', '', 0),
(89, 1, '2018-03-31 20:00:41', '2018-03-31 17:00:41', '', '5d_logo', '', 'inherit', 'open', 'closed', '', '5d_logo', '', '', '2018-03-31 20:01:07', '2018-03-31 17:01:07', '', 0, 'http://5dimansion.ru/wp-content/uploads/2018/03/5d_logo.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2018-03-31 20:01:12', '2018-03-31 17:01:12', '{\n    \"dinelli::custom_logo\": {\n        \"value\": 89,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-31 17:01:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7f914cd-19b9-483a-a608-bf3d32e28363', '', '', '2018-03-31 20:01:12', '2018-03-31 17:01:12', '', 0, 'http://5dimansion.ru/2018/03/31/d7f914cd-19b9-483a-a608-bf3d32e28363/', 0, 'customize_changeset', '', 0),
(91, 1, '2018-03-31 21:34:53', '2018-03-31 18:34:53', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-31 21:34:53', '2018-03-31 18:34:53', '', 11, 'http://5dimansion.ru/2018/03/31/11-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-03-31 21:42:18', '2018-03-31 18:42:18', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-31 21:42:18', '2018-03-31 18:42:18', '', 11, 'http://5dimansion.ru/2018/03/31/11-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-03-31 21:43:06', '2018-03-31 18:43:06', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-31 21:43:06', '2018-03-31 18:43:06', '', 11, 'http://5dimansion.ru/2018/03/31/11-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-03-31 21:43:25', '2018-03-31 18:43:25', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-31 21:43:25', '2018-03-31 18:43:25', '', 11, 'http://5dimansion.ru/2018/03/31/11-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-03-31 21:44:37', '2018-03-31 18:44:37', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-31 21:44:37', '2018-03-31 18:44:37', '', 11, 'http://5dimansion.ru/2018/03/31/11-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-03-31 21:49:49', '2018-03-31 18:49:49', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-31 21:49:49', '2018-03-31 18:49:49', '', 11, 'http://5dimansion.ru/2018/03/31/11-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-04-01 10:02:48', '2018-04-01 07:02:48', '{\n    \"blogname\": {\n        \"value\": \"5DiM\\u0410Nsion\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-01 07:02:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3a1b9e1-1906-480d-b1bc-df582cfbed2b', '', '', '2018-04-01 10:02:48', '2018-04-01 07:02:48', '', 0, 'http://5dimansion.ru/2018/04/01/d3a1b9e1-1906-480d-b1bc-df582cfbed2b/', 0, 'customize_changeset', '', 0),
(98, 1, '2018-04-01 10:48:07', '2018-04-01 07:48:07', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-01 10:48:07', '2018-04-01 07:48:07', '', 11, 'http://5dimansion.ru/2018/04/01/11-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-04-01 12:42:40', '2018-04-01 09:42:40', '', 'Фото', '', 'publish', 'closed', 'closed', '', 'acf_foto', '', '', '2018-04-01 12:47:48', '2018-04-01 09:47:48', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=99', 0, 'acf', '', 0),
(100, 1, '2018-04-01 12:43:17', '2018-04-01 09:43:17', '', '5d_cours-1', '', 'inherit', 'open', 'closed', '', '5d_cours-1', '', '', '2018-04-01 12:43:17', '2018-04-01 09:43:17', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-04-01 12:43:17', '2018-04-01 09:43:17', '', '5d_cours-2', '', 'inherit', 'open', 'closed', '', '5d_cours-2', '', '', '2018-04-01 12:43:17', '2018-04-01 09:43:17', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-04-01 12:43:18', '2018-04-01 09:43:18', '', '5d_cours-3', '', 'inherit', 'open', 'closed', '', '5d_cours-3', '', '', '2018-04-01 12:43:18', '2018-04-01 09:43:18', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-04-01 12:43:18', '2018-04-01 09:43:18', '', '5d_cours-4', '', 'inherit', 'open', 'closed', '', '5d_cours-4', '', '', '2018-04-01 12:43:18', '2018-04-01 09:43:18', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-04-01 12:43:19', '2018-04-01 09:43:19', '', '5d_cours-5', '', 'inherit', 'open', 'closed', '', '5d_cours-5', '', '', '2018-04-01 12:43:19', '2018-04-01 09:43:19', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-04-01 12:43:19', '2018-04-01 09:43:19', '', '5d_cours-6', '', 'inherit', 'open', 'closed', '', '5d_cours-6', '', '', '2018-04-01 12:43:19', '2018-04-01 09:43:19', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-04-01 12:43:19', '2018-04-01 09:43:19', '', '5d_cours-7', '', 'inherit', 'open', 'closed', '', '5d_cours-7', '', '', '2018-04-01 12:43:19', '2018-04-01 09:43:19', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2018-04-01 12:43:21', '2018-04-01 09:43:21', '', '5d_cours-8', '', 'inherit', 'open', 'closed', '', '5d_cours-8', '', '', '2018-04-01 12:43:21', '2018-04-01 09:43:21', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-04-01 12:43:21', '2018-04-01 09:43:21', '', '5d_cours-9', '', 'inherit', 'open', 'closed', '', '5d_cours-9', '', '', '2018-04-01 12:43:21', '2018-04-01 09:43:21', '', 29, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-04-01 12:44:54', '2018-04-01 09:44:54', '', 'Тестовое фото1', '', 'publish', 'closed', 'closed', '', 'testovoe-foto1', '', '', '2018-04-01 12:44:54', '2018-04-01 09:44:54', '', 0, 'http://5dimansion.ru/?post_type=photo&#038;p=109', 0, 'photo', '', 0),
(110, 1, '2018-04-01 12:44:54', '2018-04-01 09:44:54', '', 'Тестовое фото1', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-04-01 12:44:54', '2018-04-01 09:44:54', '', 109, 'http://5dimansion.ru/2018/04/01/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-04-01 12:45:25', '2018-04-01 09:45:25', '', 'Тестовое фото2', '', 'publish', 'closed', 'closed', '', 'testovoe-foto2', '', '', '2018-04-01 12:45:25', '2018-04-01 09:45:25', '', 0, 'http://5dimansion.ru/?post_type=photo&#038;p=111', 0, 'photo', '', 0),
(112, 1, '2018-04-01 12:45:25', '2018-04-01 09:45:25', '', 'Тестовое фото2', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-04-01 12:45:25', '2018-04-01 09:45:25', '', 111, 'http://5dimansion.ru/2018/04/01/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-04-01 12:46:23', '2018-04-01 09:46:23', '', 'Тестовое фото3', '', 'publish', 'closed', 'closed', '', 'testovoe-foto3', '', '', '2018-04-01 12:46:23', '2018-04-01 09:46:23', '', 0, 'http://5dimansion.ru/?post_type=photo&#038;p=113', 0, 'photo', '', 0),
(114, 1, '2018-04-01 12:46:23', '2018-04-01 09:46:23', '', 'Тестовое фото3', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-04-01 12:46:23', '2018-04-01 09:46:23', '', 113, 'http://5dimansion.ru/2018/04/01/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-04-01 12:46:53', '2018-04-01 09:46:53', '', 'Тестовое фото4', '', 'publish', 'closed', 'closed', '', 'testovoe-foto4', '', '', '2018-04-01 12:47:14', '2018-04-01 09:47:14', '', 0, 'http://5dimansion.ru/?post_type=photo&#038;p=115', 0, 'photo', '', 0),
(116, 1, '2018-04-01 12:46:53', '2018-04-01 09:46:53', '', 'Тестовое фото4', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-04-01 12:46:53', '2018-04-01 09:46:53', '', 115, 'http://5dimansion.ru/2018/04/01/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-04-01 14:10:49', '2018-04-01 11:10:49', '', 'Блог', '', 'publish', 'closed', 'closed', '', 'acf_blog', '', '', '2018-04-04 11:30:35', '2018-04-04 08:30:35', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=117', 0, 'acf', '', 0),
(118, 1, '2018-04-01 14:12:12', '2018-04-01 11:12:12', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-01 14:12:12', '2018-04-01 11:12:12', '', 1, 'http://5dimansion.ru/2018/04/01/1-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-04-01 14:13:00', '2018-04-01 11:13:00', 'Это тестовая запись!', 'Пока Мир!', '', 'publish', 'open', 'open', '', 'poka-mir', '', '', '2018-04-01 14:13:00', '2018-04-01 11:13:00', '', 0, 'http://5dimansion.ru/?p=119', 0, 'post', '', 0),
(120, 1, '2018-04-01 14:13:00', '2018-04-01 11:13:00', 'Это тестовая запись!', 'Пока Мир!', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-04-01 14:13:00', '2018-04-01 11:13:00', '', 119, 'http://5dimansion.ru/2018/04/01/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-04-01 14:14:07', '2018-04-01 11:14:07', '<div id=\"pl-23\"  class=\"panel-layout\" ><div id=\"pg-23-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-23-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-23-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Записи по тематике</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>Здесь вы прочтете статьи по данной тематике</p></div>\n</div></div></div></div></div>', 'Статьи', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-01 14:14:07', '2018-04-01 11:14:07', '', 23, 'http://5dimansion.ru/2018/04/01/23-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(122, 1, '2018-04-01 14:14:52', '2018-04-01 11:14:52', '<div id=\"pl-122\"  class=\"panel-layout\" ><div id=\"pg-122-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-122-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-122-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-122-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Записи по тематике</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>Здесь вы прочтете статьи по данной тематике</p></div>\n</div></div></div></div></div></div>', 'Статьи', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-01 14:14:52', '2018-04-01 11:14:52', '', 23, 'http://5dimansion.ru/2018/04/01/23-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-04-01 14:14:52', '2018-04-01 11:14:52', '<div id=\"pl-23\"  class=\"panel-layout\" ><div id=\"pg-23-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-23-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-23-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-23-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Записи по тематике</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>Здесь вы прочтете статьи по данной тематике</p></div>\n</div></div></div></div></div></div>', 'Статьи', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-01 14:14:52', '2018-04-01 11:14:52', '', 23, 'http://5dimansion.ru/2018/04/01/23-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-04-01 15:14:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-01 15:14:35', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?post_type=vlog&p=124', 0, 'vlog', '', 0),
(125, 1, '2018-04-01 15:19:00', '2018-04-01 12:19:00', '', 'Проверьте сайт', '', 'publish', 'open', 'open', '', 'proverte-sajt', '', '', '2018-04-01 15:19:00', '2018-04-01 12:19:00', '', 0, 'http://5dimansion.ru/?post_type=vlog&#038;p=125', 0, 'vlog', '', 0),
(126, 1, '2018-04-01 15:19:00', '2018-04-01 12:19:00', '', 'Проверьте сайт', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-04-01 15:19:00', '2018-04-01 12:19:00', '', 125, 'http://5dimansion.ru/2018/04/01/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-04-01 15:19:59', '2018-04-01 12:19:59', '', 'Проверьте мозг', '', 'publish', 'open', 'open', '', 'proverte-mozg', '', '', '2018-04-01 15:19:59', '2018-04-01 12:19:59', '', 0, 'http://5dimansion.ru/?post_type=vlog&#038;p=127', 0, 'vlog', '', 0),
(128, 1, '2018-04-01 15:19:59', '2018-04-01 12:19:59', '', 'Проверьте мозг', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-04-01 15:19:59', '2018-04-01 12:19:59', '', 127, 'http://5dimansion.ru/2018/04/01/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2018-04-01 15:20:39', '2018-04-01 12:20:39', '', 'Проверьте еще что-нибудь', '', 'publish', 'open', 'open', '', 'proverte-eshhe-chto-nibud', '', '', '2018-04-01 15:20:39', '2018-04-01 12:20:39', '', 0, 'http://5dimansion.ru/?post_type=vlog&#038;p=129', 0, 'vlog', '', 0),
(130, 1, '2018-04-01 15:20:39', '2018-04-01 12:20:39', '', 'Проверьте еще что-нибудь', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-04-01 15:20:39', '2018-04-01 12:20:39', '', 129, 'http://5dimansion.ru/2018/04/01/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2018-04-01 15:22:07', '2018-04-01 12:22:07', '<div id=\"pl-131\"  class=\"panel-layout\" ><div id=\"pg-131-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-131-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-131-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-131-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Заголовок</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>текст</p></div>\n</div></div></div></div></div></div>', 'Видео', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-01 15:22:07', '2018-04-01 12:22:07', '', 9, 'http://5dimansion.ru/2018/04/01/9-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-04-01 15:22:09', '2018-04-01 12:22:09', '<div id=\"pl-9\"  class=\"panel-layout\" ><div id=\"pg-9-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-9-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-9-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-9-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Заголовок</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>текст</p></div>\n</div></div></div></div></div></div>', 'Видео', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-01 15:22:09', '2018-04-01 12:22:09', '', 9, 'http://5dimansion.ru/2018/04/01/9-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-04-01 15:29:33', '2018-04-01 12:29:33', '«Егор Крид (KReeD) - Папина дочка (minus 2)». Год выпуска: 1904.', 'Егор Крид (KReeD) - Папина дочка (minus 2)', '', 'inherit', 'open', 'closed', '', 'egor-krid-kreed-papina-dochka-minus-2', '', '', '2018-04-01 15:30:41', '2018-04-01 12:30:41', '', 7, 'http://5dimansion.ru/wp-content/uploads/2018/04/Egor-Krid-KReeD-Papina-dochka-minus-2.mp3', 0, 'attachment', 'audio/mpeg', 0),
(134, 1, '2018-04-01 15:30:46', '2018-04-01 12:30:46', '[audio mp3=\"http://5dimansion.ru/wp-content/uploads/2018/04/Egor-Krid-KReeD-Papina-dochka-minus-2.mp3\"][/audio]', 'Аудио', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-04-01 15:30:46', '2018-04-01 12:30:46', '', 7, 'http://5dimansion.ru/2018/04/01/7-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-04-01 15:50:18', '2018-04-01 12:50:18', '', 'Аудио', '', 'trash', 'closed', 'closed', '', 'acf_audio__trashed', '', '', '2018-04-04 11:25:28', '2018-04-04 08:25:28', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=135', 0, 'acf', '', 0),
(136, 1, '2018-04-01 15:34:12', '2018-04-01 12:34:12', '«Bamboleo» исполнителя Gipsy Kings. Год выпуска: 1997. Трек 2. Жанр: Instrumental.', 'Bamboleo', '', 'inherit', 'open', 'closed', '', 'bamboleo', '', '', '2018-04-01 15:34:12', '2018-04-01 12:34:12', '', 0, 'http://5dimansion.ru/wp-content/uploads/2018/04/Gipsy-Kings-Bamboleo.mp3', 0, 'attachment', 'audio/mpeg', 0),
(137, 1, '2018-04-01 15:34:37', '2018-04-01 12:34:37', '«Persiki» исполнителя O.Henry. Год выпуска: 2004. Трек 5. Жанр: Other.', 'Persiki', '', 'inherit', 'open', 'closed', '', 'persiki', '', '', '2018-04-01 15:34:37', '2018-04-01 12:34:37', '', 0, 'http://5dimansion.ru/wp-content/uploads/2018/04/05_01.mp3', 0, 'attachment', 'audio/mpeg', 0),
(138, 1, '2018-04-01 15:34:46', '2018-04-01 12:34:46', '«Persiki» исполнителя O.Henry. Год выпуска: 2004. Трек 5. Жанр: Other.', 'Persiki', '', 'inherit', 'open', 'closed', '', 'persiki-2', '', '', '2018-04-01 17:31:54', '2018-04-01 14:31:54', '', 141, 'http://5dimansion.ru/wp-content/uploads/2018/04/05_02.mp3', 0, 'attachment', 'audio/mpeg', 0),
(139, 1, '2018-04-01 15:53:23', '2018-04-01 12:53:23', '', 'Пятое измерение', '', 'publish', 'open', 'open', '', 'pyatoe-izmerenie', '', '', '2018-04-04 11:37:07', '2018-04-04 08:37:07', '', 0, 'http://5dimansion.ru/?post_type=books&#038;p=139', 0, 'books', '', 0),
(140, 1, '2018-04-01 15:53:23', '2018-04-01 12:53:23', '', 'Пятое измерение', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-04-01 15:53:23', '2018-04-01 12:53:23', '', 139, 'http://5dimansion.ru/2018/04/01/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-04-01 17:25:59', '2018-04-01 14:25:59', '', 'Тестовый трек', '', 'publish', 'open', 'open', '', 'testovyj-trek', '', '', '2018-04-01 17:34:05', '2018-04-01 14:34:05', '', 0, 'http://5dimansion.ru/?post_type=aud&#038;p=141', 0, 'aud', '', 0),
(142, 1, '2018-04-01 17:25:59', '2018-04-01 14:25:59', '[audio mp3=\"http://5dimansion.ru/wp-content/uploads/2018/04/05_02.mp3\"][/audio]', 'Тестовый трек', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-04-01 17:25:59', '2018-04-01 14:25:59', '', 141, 'http://5dimansion.ru/2018/04/01/141-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-04-01 17:27:38', '2018-04-01 14:27:38', '', 'Тестовый трек', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-04-01 17:27:38', '2018-04-01 14:27:38', '', 141, 'http://5dimansion.ru/2018/04/01/141-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-04-01 17:29:04', '2018-04-01 14:29:04', '', 'Аудио', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-04-01 17:29:04', '2018-04-01 14:29:04', '', 7, 'http://5dimansion.ru/2018/04/01/7-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-04-01 17:31:58', '2018-04-01 14:31:58', '', 'Тестовый трек', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2018-04-01 17:31:58', '2018-04-01 14:31:58', '', 141, 'http://5dimansion.ru/2018/04/01/141-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-04-01 17:46:44', '2018-04-01 14:46:44', '', 'Отзывы с ВК', '', 'publish', 'closed', 'closed', '', 'otzyvy-s-vk', '', '', '2018-04-04 13:03:45', '2018-04-04 10:03:45', '', 0, 'http://5dimansion.ru/?page_id=146', 0, 'page', '', 0),
(147, 1, '2018-04-01 17:46:44', '2018-04-01 14:46:44', '', 'Отзывы с ВК', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-04-01 17:46:44', '2018-04-01 14:46:44', '', 146, 'http://5dimansion.ru/2018/04/01/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-04-01 18:51:33', '2018-04-01 15:51:33', '', 'отзывы-ссылки', '', 'trash', 'closed', 'closed', '', 'acf_otzyvy-ssylki__trashed', '', '', '2018-04-04 13:01:31', '2018-04-04 10:01:31', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=148', 0, 'acf', '', 0),
(149, 1, '2018-04-01 18:51:17', '2018-04-01 15:51:17', '', 'Видео отзывы', '', 'publish', 'closed', 'closed', '', 'video-otzyvy', '', '', '2018-04-04 13:03:14', '2018-04-04 10:03:14', '', 0, 'http://5dimansion.ru/?page_id=149', 0, 'page', '', 0),
(150, 1, '2018-04-01 18:51:17', '2018-04-01 15:51:17', '', 'Видео отзывы', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-04-01 18:51:17', '2018-04-01 15:51:17', '', 149, 'http://5dimansion.ru/2018/04/01/149-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-04-01 18:56:13', '2018-04-01 15:56:13', '', 'Видео отзывы', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-04-01 18:56:13', '2018-04-01 15:56:13', '', 149, 'http://5dimansion.ru/2018/04/01/149-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-04-01 18:56:32', '2018-04-01 15:56:32', '', 'Отзывы с ВК', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-04-01 18:56:32', '2018-04-01 15:56:32', '', 146, 'http://5dimansion.ru/2018/04/01/146-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-04-01 18:56:45', '2018-04-01 15:56:45', '', 'Отзывы', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-04-01 18:56:45', '2018-04-01 15:56:45', '', 19, 'http://5dimansion.ru/2018/04/01/19-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-04-02 14:28:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-02 14:28:30', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?post_type=reviews_text&p=154', 0, 'reviews_text', '', 0),
(155, 1, '2018-04-02 14:28:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-02 14:28:41', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?post_type=acf&p=155', 0, 'acf', '', 0),
(156, 1, '2018-04-02 14:47:22', '2018-04-02 11:47:22', '', 'Отзывы-контент', '', 'publish', 'closed', 'closed', '', 'acf_otzyvy-kontent', '', '', '2018-04-02 14:47:22', '2018-04-02 11:47:22', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=156', 0, 'acf', '', 0),
(157, 1, '2018-04-02 14:48:42', '2018-04-02 11:48:42', '', 'Отзыв Studio10. Воздушные шарики для любых праздников', '', 'publish', 'open', 'open', '', 'otzyv-studio10-vozdushnye-shariki-dlya-lyubyh-prazdnikov', '', '', '2018-04-02 14:48:42', '2018-04-02 11:48:42', '', 0, 'http://5dimansion.ru/?post_type=reviews_text&#038;p=157', 0, 'reviews_text', '', 0),
(158, 1, '2018-04-02 19:36:40', '2018-04-02 16:36:40', 'gggggg\r\ngg\r\ng\r\ng\r\ng\r\ng\r\ng', 'тестовый отзыв', '', 'publish', 'open', 'open', '', 'testovyj-otzyv', '', '', '2018-04-02 20:24:21', '2018-04-02 17:24:21', '', 0, 'http://5dimansion.ru/?post_type=reviews_video&#038;p=158', 0, 'reviews_video', '', 0),
(159, 1, '2018-04-02 14:48:42', '2018-04-02 11:48:42', '', 'Отзыв Studio10. Воздушные шарики для любых праздников', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2018-04-02 14:48:42', '2018-04-02 11:48:42', '', 157, 'http://5dimansion.ru/2018/04/02/157-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-04-02 14:48:58', '2018-04-02 11:48:58', '', 'Выражаем благодарность Нелли Давыдовой за превосходную', '', 'publish', 'open', 'open', '', 'vyrazhaem-blagodarnost-nelli-davydovoj-za-prevoshodnuyu', '', '', '2018-04-02 14:48:58', '2018-04-02 11:48:58', '', 0, 'http://5dimansion.ru/?post_type=reviews_text&#038;p=160', 0, 'reviews_text', '', 0),
(161, 1, '2018-04-02 14:48:58', '2018-04-02 11:48:58', '', 'Выражаем благодарность Нелли Давыдовой за превосходную', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2018-04-02 14:48:58', '2018-04-02 11:48:58', '', 160, 'http://5dimansion.ru/2018/04/02/160-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-04-02 14:49:37', '2018-04-02 11:49:37', '', 'Отзыв Мобильное-Топливо. Поставка дизельного топлива и нефтепродуктов', '', 'publish', 'open', 'open', '', 'otzyv-mobilnoe-toplivo-postavka-dizelnogo-topliva-i-nefteproduktov', '', '', '2018-04-02 14:49:37', '2018-04-02 11:49:37', '', 0, 'http://5dimansion.ru/?post_type=reviews_text&#038;p=162', 0, 'reviews_text', '', 0),
(163, 1, '2018-04-02 14:49:37', '2018-04-02 11:49:37', '', 'Отзыв Мобильное-Топливо. Поставка дизельного топлива и нефтепродуктов', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2018-04-02 14:49:37', '2018-04-02 11:49:37', '', 162, 'http://5dimansion.ru/2018/04/02/162-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2018-04-02 19:36:40', '2018-04-02 16:36:40', 'ролрлорл\r\nаааа\r\nа\r\nа\r\nа\r\nа\r\nа\r\nа\r\nа', 'тестовый отзыв', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2018-04-02 19:36:40', '2018-04-02 16:36:40', '', 158, 'http://5dimansion.ru/2018/04/02/158-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2018-04-02 19:42:42', '2018-04-02 16:42:42', 'gggggg\ngg\ng\ng\ng\ng\ng', 'тестовый отзыв', '', 'inherit', 'closed', 'closed', '', '158-autosave-v1', '', '', '2018-04-02 19:42:42', '2018-04-02 16:42:42', '', 158, 'http://5dimansion.ru/2018/04/02/158-autosave-v1/', 0, 'revision', '', 0),
(166, 1, '2018-04-02 20:24:21', '2018-04-02 17:24:21', 'gggggg\r\ngg\r\ng\r\ng\r\ng\r\ng\r\ng', 'тестовый отзыв', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2018-04-02 20:24:21', '2018-04-02 17:24:21', '', 158, 'http://5dimansion.ru/2018/04/02/158-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2018-04-02 20:25:01', '2018-04-02 17:25:01', 'ggggg\r\ngg\r\ng\r\ngggggg', 'nerdhj', '', 'publish', 'open', 'open', '', 'nerdhj', '', '', '2018-04-02 20:25:01', '2018-04-02 17:25:01', '', 0, 'http://5dimansion.ru/?post_type=reviews_video&#038;p=167', 0, 'reviews_video', '', 0),
(168, 1, '2018-04-02 20:25:01', '2018-04-02 17:25:01', 'ggggg\r\ngg\r\ng\r\ngggggg', 'nerdhj', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2018-04-02 20:25:01', '2018-04-02 17:25:01', '', 167, 'http://5dimansion.ru/2018/04/02/167-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-04-02 22:44:12', '2018-04-02 19:44:12', '', 'Курс \"Пятое измерение.  Вырвись за пределы\" I ступень', '', 'publish', 'open', 'open', '', 'kurs-pyatoe-izmerenie-vyrvis-za-predely-i-stupen', '', '', '2018-04-02 22:44:37', '2018-04-02 19:44:37', '', 0, 'http://5dimansion.ru/?post_type=events&#038;p=169', 0, 'events', '', 0),
(170, 1, '2018-04-02 22:44:04', '2018-04-02 19:44:04', '', 'Мероприятия', '', 'publish', 'closed', 'closed', '', 'acf_meropriyatiya', '', '', '2018-04-02 22:44:04', '2018-04-02 19:44:04', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=170', 0, 'acf', '', 0),
(171, 1, '2018-04-02 22:44:12', '2018-04-02 19:44:12', '', 'Курс \"Пятое измерение.  Вырвись за пределы\" I ступень', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2018-04-02 22:44:12', '2018-04-02 19:44:12', '', 169, 'http://5dimansion.ru/2018/04/02/169-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2018-04-02 22:44:37', '2018-04-02 19:44:37', '', 'Курс \"Пятое измерение.  Вырвись за пределы\" I ступень', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2018-04-02 22:44:37', '2018-04-02 19:44:37', '', 169, 'http://5dimansion.ru/2018/04/02/169-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2018-04-02 22:45:20', '2018-04-02 19:45:20', '', 'Курс \"Пятое измерение. Вырвись за пределы\" II ступень  \"Мастер Трансформации\"', '', 'publish', 'open', 'open', '', 'kurs-pyatoe-izmerenie-vyrvis-za-predely-ii-stupen-master-transformatsii', '', '', '2018-04-02 22:45:20', '2018-04-02 19:45:20', '', 0, 'http://5dimansion.ru/?post_type=events&#038;p=173', 0, 'events', '', 0),
(174, 1, '2018-04-02 22:45:20', '2018-04-02 19:45:20', '', 'Курс \"Пятое измерение. Вырвись за пределы\" II ступень  \"Мастер Трансформации\"', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2018-04-02 22:45:20', '2018-04-02 19:45:20', '', 173, 'http://5dimansion.ru/2018/04/02/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2018-04-02 22:45:44', '2018-04-02 19:45:44', '', 'Курс \"Квантовые технологии Траблшутинга\"', '', 'publish', 'open', 'open', '', 'kurs-kvantovye-tehnologii-trablshutinga', '', '', '2018-04-02 22:45:44', '2018-04-02 19:45:44', '', 0, 'http://5dimansion.ru/?post_type=events&#038;p=175', 0, 'events', '', 0),
(176, 1, '2018-04-02 22:45:44', '2018-04-02 19:45:44', '', 'Курс \"Квантовые технологии Траблшутинга\"', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-04-02 22:45:44', '2018-04-02 19:45:44', '', 175, 'http://5dimansion.ru/2018/04/02/175-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-04-03 14:58:35', '2018-04-03 11:58:35', '', 'Курсы', '', 'publish', 'closed', 'closed', '', 'acf_kursy', '', '', '2018-04-03 16:18:18', '2018-04-03 13:18:18', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=177', 0, 'acf', '', 0),
(178, 1, '2018-04-03 15:57:36', '2018-04-03 12:57:36', '', 'I ступень \"Вырвись за пределы\"', '', 'publish', 'open', 'open', '', 'i-stupen-vyrvis-za-predely', '', '', '2018-04-03 16:22:13', '2018-04-03 13:22:13', '', 0, 'http://5dimansion.ru/?post_type=service&#038;p=178', 0, 'service', '', 0),
(179, 1, '2018-04-03 15:56:15', '2018-04-03 12:56:15', '', '5d_cours-10', '', 'inherit', 'open', 'closed', '', '5d_cours-10', '', '', '2018-04-03 15:56:15', '2018-04-03 12:56:15', '', 178, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2018-04-03 15:56:16', '2018-04-03 12:56:16', '', '5d_cours-11', '', 'inherit', 'open', 'closed', '', '5d_cours-11', '', '', '2018-04-03 15:56:16', '2018-04-03 12:56:16', '', 178, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2018-04-03 15:56:16', '2018-04-03 12:56:16', '', '5d_cours-12', '', 'inherit', 'open', 'closed', '', '5d_cours-12', '', '', '2018-04-03 15:56:16', '2018-04-03 12:56:16', '', 178, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2018-04-03 15:56:17', '2018-04-03 12:56:17', '', '5d_cours-13', '', 'inherit', 'open', 'closed', '', '5d_cours-13', '', '', '2018-04-03 15:56:17', '2018-04-03 12:56:17', '', 178, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2018-04-03 15:56:17', '2018-04-03 12:56:17', '', '5d_cours-14', '', 'inherit', 'open', 'closed', '', '5d_cours-14', '', '', '2018-04-03 15:56:17', '2018-04-03 12:56:17', '', 178, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2018-04-03 15:56:18', '2018-04-03 12:56:18', '', '5d_cours-15', '', 'inherit', 'open', 'closed', '', '5d_cours-15', '', '', '2018-04-03 15:56:18', '2018-04-03 12:56:18', '', 178, 'http://5dimansion.ru/wp-content/uploads/2018/04/5d_cours-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2018-04-03 15:57:36', '2018-04-03 12:57:36', '', 'I ступень \"Вырвись за пределы\"', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-04-03 15:57:36', '2018-04-03 12:57:36', '', 178, 'http://5dimansion.ru/2018/04/03/178-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-04-03 16:02:29', '2018-04-03 13:02:29', '', 'II ступень «Пятое измерение. Мастер трансформации»', '', 'publish', 'open', 'open', '', 'ii-stupen-pyatoe-izmerenie-master-transformatsii', '', '', '2018-04-03 16:22:33', '2018-04-03 13:22:33', '', 0, 'http://5dimansion.ru/?post_type=service&#038;p=186', 0, 'service', '', 0),
(187, 1, '2018-04-03 16:02:29', '2018-04-03 13:02:29', '', 'II ступень «Пятое измерение. Мастер трансформации»', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2018-04-03 16:02:29', '2018-04-03 13:02:29', '', 186, 'http://5dimansion.ru/2018/04/03/186-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2018-04-03 16:06:15', '2018-04-03 13:06:15', '', 'I ступень \"Вырвись за пределы\"', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-04-03 16:06:15', '2018-04-03 13:06:15', '', 178, 'http://5dimansion.ru/2018/04/03/178-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2018-04-03 16:07:55', '2018-04-03 13:07:55', '', 'Курс для преподавателей «Квантовые технологии в', '', 'publish', 'open', 'open', '', 'kurs-dlya-prepodavatelej-kvantovye-tehnologii-v', '', '', '2018-04-03 16:22:46', '2018-04-03 13:22:46', '', 0, 'http://5dimansion.ru/?post_type=service&#038;p=189', 0, 'service', '', 0),
(190, 1, '2018-04-03 16:07:55', '2018-04-03 13:07:55', '', 'Курс для преподавателей «Квантовые технологии в', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2018-04-03 16:07:55', '2018-04-03 13:07:55', '', 189, 'http://5dimansion.ru/2018/04/03/189-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2018-04-03 16:08:56', '2018-04-03 13:08:56', '', 'III ступень \"Пятое измерение. Трансформирующее', '', 'publish', 'open', 'open', '', 'iii-stupen-pyatoe-izmerenie-transformiruyushhee', '', '', '2018-04-03 16:24:02', '2018-04-03 13:24:02', '', 0, 'http://5dimansion.ru/?post_type=service&#038;p=191', 0, 'service', '', 0),
(192, 1, '2018-04-03 16:08:56', '2018-04-03 13:08:56', '', 'III ступень \"Пятое измерение. Трансформирующее', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2018-04-03 16:08:56', '2018-04-03 13:08:56', '', 191, 'http://5dimansion.ru/2018/04/03/191-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2018-04-03 16:11:50', '2018-04-03 13:11:50', '<div id=\"pl-193\"  class=\"panel-layout\" ><div id=\"pg-193-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-193-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-193-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>[wpforms id=\"198\" title=\"false\" description=\"false\"]</p></div>\n</div></div></div></div></div>', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2018-04-03 16:23:37', '2018-04-03 13:23:37', '', 0, 'http://5dimansion.ru/?page_id=193', 0, 'page', '', 0),
(194, 1, '2018-04-03 16:11:50', '2018-04-03 13:11:50', '<div id=\"pl-194\"  class=\"panel-layout\" ><div id=\"pg-194-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-194-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-194-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	</div>\n</div></div></div></div></div>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2018-04-03 16:11:50', '2018-04-03 13:11:50', '', 193, 'http://5dimansion.ru/2018/04/03/193-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2018-04-03 16:11:50', '2018-04-03 13:11:50', '<div id=\"pl-193\"  class=\"panel-layout\" ><div id=\"pg-193-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-193-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-193-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	</div>\n</div></div></div></div></div>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2018-04-03 16:11:50', '2018-04-03 13:11:50', '', 193, 'http://5dimansion.ru/2018/04/03/193-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2018-04-03 16:18:22', '2018-04-03 13:18:22', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publicly accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2018-04-03 16:18:22', '2018-04-03 13:18:22', '', 0, 'http://5dimansion.ru/wpforms-preview/', 0, 'page', '', 0),
(197, 1, '2018-04-03 16:18:24', '0000-00-00 00:00:00', '<p>\n<strong>Help us improve WPForms</strong><br />\nWe&#8217;re celebrating WPForms&#8217; 2nd birthday. Since the launch of WPForms two years ago, it is now being used by over 900,000 websites. As we plan for the next three years, we need your feedback &#8211; it&#8217;ll take less than 90 seconds.\n</p>\n<p><a href=\"https://wpforms.com/wpforms-nps-survey-2018/?utm_source=wpdashboard&#038;utm_medium=amnotification&#038;utm_campaign=npssurvey\" target=\"_blank\" class=\"button button-primary\">Share your feedback and help improve WPForms &raquo;</a> <a href=\"https://wpforms.com/wpforms-turns-2-years-old-whats-new-whats-coming-next/?utm_source=wpdashboard&#038;utm_medium=amnotification&#038;utm_campaign=npssurvey\" class=\"button button-secondary\" target=\"_blank\">Read our Annual Recap to See What&#8217;s New in WPForms</a></p>\n<p>Thanks as always for your continuous support of WPForms!<br />\nSyed Balkhi<br />\nFounder of WPForms<br />\nP.S. there&#8217;s a limited time 30% off coupon at the end of the survey :)</p>\n', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-03 16:18:24', '0000-00-00 00:00:00', '', 0, 'http://5dimansion.ru/?post_type=amn_wpforms-lite&p=197', 0, 'amn_wpforms-lite', '', 0),
(198, 1, '2018-04-03 16:19:02', '2018-04-03 13:19:02', '{\"id\":\"198\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"\\u0418\\u043c\\u044f\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439 \\u0438\\u043b\\u0438 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"\\u041c\\u044b \\u043d\\u0430 \\u0441\\u0432\\u044f\\u0437\\u0438\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c\",\"submit_text_processing\":\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0430...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"jeorgeo@list.ru\",\"subject\":\"\\u041d\\u043e\\u0432\\u0430\\u044f \\u0437\\u0430\\u043f\\u0438\\u0441\\u044c: \\u041f\\u0440\\u043e\\u0441\\u0442\\u0430\\u044f \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0430\\u044f \\u0444\\u043e\\u0440\\u043c\\u0430\",\"sender_name\":\"{field_id=\\\"0\\\"}\",\"sender_address\":\"jeorgeo@list.ru\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmation_type\":\"message\",\"confirmation_message\":\"\\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0430\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438 \\u043d\\u0430\\u043c! \\u041c\\u044b \\u0441\\u043a\\u043e\\u0440\\u043e \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438.\",\"confirmation_message_scroll\":\"1\",\"confirmation_page\":\"5\",\"confirmation_redirect\":\"\"},\"meta\":{\"template\":\"contact\"}}', 'Мы на связи', '', 'publish', 'closed', 'closed', '', 'prostaya-kontaktnaya-forma', '', '', '2018-04-03 16:21:30', '2018-04-03 13:21:30', '', 0, 'http://5dimansion.ru/?post_type=wpforms&#038;p=198', 0, 'wpforms', '', 0),
(199, 1, '2018-04-03 16:22:13', '2018-04-03 13:22:13', '', 'I ступень \"Вырвись за пределы\"', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2018-04-03 16:22:13', '2018-04-03 13:22:13', '', 178, 'http://5dimansion.ru/2018/04/03/178-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-04-03 16:22:33', '2018-04-03 13:22:33', '', 'II ступень «Пятое измерение. Мастер трансформации»', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2018-04-03 16:22:33', '2018-04-03 13:22:33', '', 186, 'http://5dimansion.ru/2018/04/03/186-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2018-04-03 16:22:46', '2018-04-03 13:22:46', '', 'Курс для преподавателей «Квантовые технологии в', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2018-04-03 16:22:46', '2018-04-03 13:22:46', '', 189, 'http://5dimansion.ru/2018/04/03/189-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-04-03 16:22:59', '2018-04-03 13:22:59', '', 'III ступень \"Пятое измерение. Трансформирующее', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2018-04-03 16:22:59', '2018-04-03 13:22:59', '', 191, 'http://5dimansion.ru/2018/04/03/191-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-04-03 16:23:37', '2018-04-03 13:23:37', '<div id=\"pl-203\"  class=\"panel-layout\" ><div id=\"pg-203-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-203-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-203-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>[wpforms id=\"198\" title=\"false\" description=\"false\"]</p></div>\n</div></div></div></div></div>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2018-04-03 16:23:37', '2018-04-03 13:23:37', '', 193, 'http://5dimansion.ru/2018/04/03/193-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-04-03 16:23:37', '2018-04-03 13:23:37', '<div id=\"pl-193\"  class=\"panel-layout\" ><div id=\"pg-193-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-193-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-193-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>[wpforms id=\"198\" title=\"false\" description=\"false\"]</p></div>\n</div></div></div></div></div>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2018-04-03 16:23:37', '2018-04-03 13:23:37', '', 193, 'http://5dimansion.ru/2018/04/03/193-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-04-03 16:24:02', '2018-04-03 13:24:02', '', 'III ступень \"Пятое измерение. Трансформирующее', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2018-04-03 16:24:02', '2018-04-03 13:24:02', '', 191, 'http://5dimansion.ru/2018/04/03/191-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2018-04-03 16:33:38', '2018-04-03 13:33:38', '', 'Черновик', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-04-03 16:33:38', '2018-04-03 13:33:38', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=206', 0, 'acf', '', 0),
(207, 1, '2018-04-04 11:34:54', '2018-04-04 08:34:54', '', 'Пятое измерение', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-04-04 11:34:54', '2018-04-04 08:34:54', '', 139, 'http://5dimansion.ru/2018/04/04/139-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-04-04 11:36:47', '2018-04-04 08:36:47', '', 'Пятое измерение', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-04-04 11:36:47', '2018-04-04 08:36:47', '', 139, 'http://5dimansion.ru/2018/04/04/139-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2018-04-04 11:37:07', '2018-04-04 08:37:07', '', 'Пятое измерение', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-04-04 11:37:07', '2018-04-04 08:37:07', '', 139, 'http://5dimansion.ru/2018/04/04/139-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2018-04-04 11:48:58', '2018-04-04 08:48:58', '', 'Страницы', '', 'publish', 'closed', 'closed', '', 'acf_stranitsy', '', '', '2018-04-04 13:02:43', '2018-04-04 10:02:43', '', 0, 'http://5dimansion.ru/?post_type=acf&#038;p=210', 0, 'acf', '', 0),
(211, 1, '2018-04-04 11:49:51', '2018-04-04 08:49:51', '', 'knigi_shapka', '', 'inherit', 'open', 'closed', '', 'knigi_shapka', '', '', '2018-04-04 11:49:51', '2018-04-04 08:49:51', '', 13, 'http://5dimansion.ru/wp-content/uploads/2018/04/knigi_shapka.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2018-04-04 11:50:08', '2018-04-04 08:50:08', '', 'Книги', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-04-04 11:50:08', '2018-04-04 08:50:08', '', 13, 'http://5dimansion.ru/2018/04/04/13-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2018-04-04 12:41:38', '2018-04-04 09:41:38', '', 'anons_shapka', '', 'inherit', 'open', 'closed', '', 'anons_shapka', '', '', '2018-04-04 12:41:38', '2018-04-04 09:41:38', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/anons_shapka.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2018-04-04 12:41:38', '2018-04-04 09:41:38', '', 'audio_shapka', '', 'inherit', 'open', 'closed', '', 'audio_shapka', '', '', '2018-04-04 12:41:38', '2018-04-04 09:41:38', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/audio_shapka.jpg', 0, 'attachment', 'image/jpeg', 0),
(215, 1, '2018-04-04 12:41:39', '2018-04-04 09:41:39', '', 'diksha_shapka1', '', 'inherit', 'open', 'closed', '', 'diksha_shapka1', '', '', '2018-04-04 12:41:39', '2018-04-04 09:41:39', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/diksha_shapka1.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2018-04-04 12:41:40', '2018-04-04 09:41:40', '', 'foto_shapka', '', 'inherit', 'open', 'closed', '', 'foto_shapka', '', '', '2018-04-04 12:41:40', '2018-04-04 09:41:40', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/foto_shapka.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2018-04-04 12:41:40', '2018-04-04 09:41:40', '', 'knigi_shapka', '', 'inherit', 'open', 'closed', '', 'knigi_shapka-2', '', '', '2018-04-04 12:41:40', '2018-04-04 09:41:40', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/knigi_shapka-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2018-04-04 12:41:41', '2018-04-04 09:41:41', '', 'konsultatsii_shapka1', '', 'inherit', 'open', 'closed', '', 'konsultatsii_shapka1', '', '', '2018-04-04 12:41:41', '2018-04-04 09:41:41', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/konsultatsii_shapka1.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2018-04-04 12:41:41', '2018-04-04 09:41:41', '', 'obuchayuschie_kursy_shapka1', '', 'inherit', 'open', 'closed', '', 'obuchayuschie_kursy_shapka1', '', '', '2018-04-04 12:41:41', '2018-04-04 09:41:41', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/obuchayuschie_kursy_shapka1.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2018-04-04 12:41:42', '2018-04-04 09:41:42', '', 'otzyvy_shapka1', '', 'inherit', 'open', 'closed', '', 'otzyvy_shapka1', '', '', '2018-04-04 12:41:42', '2018-04-04 09:41:42', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/otzyvy_shapka1.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2018-04-04 12:41:43', '2018-04-04 09:41:43', '', 'stati_shapka1', '', 'inherit', 'open', 'closed', '', 'stati_shapka1', '', '', '2018-04-04 12:41:43', '2018-04-04 09:41:43', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/stati_shapka1.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2018-04-04 12:41:44', '2018-04-04 09:41:44', '', 'video_shapka1', '', 'inherit', 'open', 'closed', '', 'video_shapka1', '', '', '2018-04-04 12:41:44', '2018-04-04 09:41:44', '', 5, 'http://5dimansion.ru/wp-content/uploads/2018/04/video_shapka1.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2018-04-04 12:43:29', '2018-04-04 09:43:29', '', 'Анонс мероприятий', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-04-04 12:43:29', '2018-04-04 09:43:29', '', 5, 'http://5dimansion.ru/2018/04/04/5-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2018-04-04 12:46:55', '2018-04-04 09:46:55', '', 'Аудио', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-04-04 12:46:55', '2018-04-04 09:46:55', '', 7, 'http://5dimansion.ru/2018/04/04/7-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2018-04-04 12:48:42', '2018-04-04 09:48:42', '<div id=\"pl-225\"  class=\"panel-layout\" ><div id=\"pg-225-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-225-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-225-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-225-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Заголовок</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>текст</p></div>\n</div></div></div></div></div></div>', 'Видео', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-04 12:48:42', '2018-04-04 09:48:42', '', 9, 'http://5dimansion.ru/2018/04/04/9-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2018-04-04 12:48:42', '2018-04-04 09:48:42', '<div id=\"pl-9\"  class=\"panel-layout\" ><div id=\"pg-9-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-9-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-9-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-9-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Заголовок</h3>\n<div class=\"siteorigin-widget-tinymce textwidget\">\n	<p>текст</p></div>\n</div></div></div></div></div></div>', 'Видео', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-04 12:48:42', '2018-04-04 09:48:42', '', 9, 'http://5dimansion.ru/2018/04/04/9-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2018-04-04 12:49:48', '2018-04-04 09:49:48', '', 'Дикша Любви', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-04-04 12:49:48', '2018-04-04 09:49:48', '', 77, 'http://5dimansion.ru/2018/04/04/77-revision-v1/', 0, 'revision', '', 0),
(228, 1, '2018-04-04 12:51:19', '2018-04-04 09:51:19', '', 'Консультации', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-04-04 12:51:19', '2018-04-04 09:51:19', '', 80, 'http://5dimansion.ru/2018/04/04/80-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-04-04 12:51:56', '2018-04-04 09:51:56', '', 'Описание курсов', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-04-04 12:51:56', '2018-04-04 09:51:56', '', 17, 'http://5dimansion.ru/2018/04/04/17-revision-v1/', 0, 'revision', '', 0),
(230, 1, '2018-04-04 13:00:30', '2018-04-04 10:00:30', ' ', '', '', 'publish', 'closed', 'closed', '', '230', '', '', '2018-04-04 13:00:30', '2018-04-04 10:00:30', '', 0, 'http://5dimansion.ru/?p=230', 3, 'nav_menu_item', '', 0),
(231, 1, '2018-04-04 13:00:30', '2018-04-04 10:00:30', ' ', '', '', 'publish', 'closed', 'closed', '', '231', '', '', '2018-04-04 13:00:30', '2018-04-04 10:00:30', '', 0, 'http://5dimansion.ru/?p=231', 2, 'nav_menu_item', '', 0),
(232, 1, '2018-04-04 13:00:30', '2018-04-04 10:00:30', ' ', '', '', 'publish', 'closed', 'closed', '', '232', '', '', '2018-04-04 13:00:30', '2018-04-04 10:00:30', '', 0, 'http://5dimansion.ru/?p=232', 1, 'nav_menu_item', '', 0),
(233, 1, '2018-04-04 13:03:14', '2018-04-04 10:03:14', '', 'Видео отзывы', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-04-04 13:03:14', '2018-04-04 10:03:14', '', 149, 'http://5dimansion.ru/2018/04/04/149-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2018-04-04 13:03:36', '2018-04-04 10:03:36', '', 'Отзывы', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-04-04 13:03:36', '2018-04-04 10:03:36', '', 19, 'http://5dimansion.ru/2018/04/04/19-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2018-04-04 13:03:45', '2018-04-04 10:03:45', '', 'Отзывы с ВК', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-04-04 13:03:45', '2018-04-04 10:03:45', '', 146, 'http://5dimansion.ru/2018/04/04/146-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2018-04-04 13:04:21', '2018-04-04 10:04:21', '<div id=\"pl-23\"  class=\"panel-layout\" ><div id=\"pg-23-0\"  class=\"panel-grid panel-no-style\"  data-style=\"{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}\"  data-ratio=\"1\"  data-ratio-direction=\"right\" ><div id=\"pgc-23-0-0\"  class=\"panel-grid-cell\"  data-weight=\"1\" ><div id=\"panel-23-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\" data-style=\"{&quot;class&quot;:&quot;container&quot;,&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;}\" ><div class=\"container panel-widget-style panel-widget-style-for-23-0-0-0\" ><div class=\"so-widget-sow-editor so-widget-sow-editor-base\"><h3 class=\"widget-title\">Записи по тематике</h3>\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n	<p>Здесь вы прочтете статьи по данной тематике</p></div>\r\n</div></div></div></div></div></div>', 'Статьи', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-04 13:04:21', '2018-04-04 10:04:21', '', 23, 'http://5dimansion.ru/2018/04/04/23-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2018-04-04 13:04:29', '2018-04-04 10:04:29', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-04-04 13:04:29', '2018-04-04 10:04:29', '', 23, 'http://5dimansion.ru/2018/04/04/23-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2018-04-04 13:05:54', '2018-04-04 10:05:54', '', 'Фото', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-04-04 13:05:54', '2018-04-04 10:05:54', '', 29, 'http://5dimansion.ru/2018/04/04/29-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Меню отзывов', 'menyu-otzyvov', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(35, 2, 0),
(38, 2, 0),
(40, 2, 0),
(82, 2, 0),
(83, 2, 0),
(119, 1, 0),
(230, 3, 0),
(231, 3, 0),
(232, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'yush25um'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '61'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"37.45.207.0\";}'),
(19, 1, 'session_tokens', 'a:3:{s:64:\"38f2c66ff3ee38e3e658e09e1dbbd69ab5bcd1dabf03a0efc8c2310437c4086c\";a:4:{s:10:\"expiration\";i:1522840396;s:2:\"ip\";s:12:\"37.45.244.72\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522667596;}s:64:\"c4132cd8348bceabc130c6af6ba9d851a704f9620407c3b88b753d0c2a76e995\";a:4:{s:10:\"expiration\";i:1522917351;s:2:\"ip\";s:12:\"37.45.244.72\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522744551;}s:64:\"0348a52992aa337f3d1fdfc963358fb702f6be24d1db801269bf42d440194043\";a:4:{s:10:\"expiration\";i:1523001379;s:2:\"ip\";s:13:\"37.45.207.120\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522828579;}}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1522581244'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:26:\"add-post-type-reviews_text\";i:1;s:27:\"add-post-type-reviews_video\";i:2;s:20:\"add-post-type-events\";i:3;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '3'),
(25, 1, 'last_login_time', '2018-04-04 10:56:19');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--
-- Создание: Мар 25 2018 г., 16:05
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'yush25um', '$P$Bqojw6QE5s4XibsCi6JhBYZ.dftsCP0', 'yush25um', 'yu.sh.2583@gmail.com', '', '2018-02-22 10:38:10', '', 0, 'yush25um');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Индексы таблицы `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1180;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
