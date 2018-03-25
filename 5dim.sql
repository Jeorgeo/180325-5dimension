-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 25 2018 г., 20:16
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `5dim`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_events`
--

CREATE TABLE IF NOT EXISTS `wp_aiowps_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) NOT NULL DEFAULT '',
  `username` varchar(150) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) DEFAULT NULL,
  `referer_info` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `event_data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_failed_logins`
--

CREATE TABLE IF NOT EXISTS `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_global_meta`
--

CREATE TABLE IF NOT EXISTS `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `meta_value5` longtext NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_login_activity`
--

CREATE TABLE IF NOT EXISTS `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) NOT NULL DEFAULT '',
  `login_country` varchar(150) NOT NULL DEFAULT '',
  `browser_type` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_login_lockdown`
--

CREATE TABLE IF NOT EXISTS `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) NOT NULL DEFAULT '',
  `lock_reason` varchar(128) NOT NULL DEFAULT '',
  `unlock_key` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_aiowps_permanent_block`
--

CREATE TABLE IF NOT EXISTS `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) NOT NULL DEFAULT '',
  `block_reason` varchar(128) NOT NULL DEFAULT '',
  `country_origin` varchar(50) NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-25 12:06:29', '2018-03-25 09:06:29', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=217 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://yush25um.bget.ru', 'yes'),
(2, 'home', 'http://yush25um.bget.ru', 'yes'),
(3, 'blogname', '5dimension', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
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
(29, 'rewrite_rules', 'a:142:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"reviews_text/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"reviews_text/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"reviews_text/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"reviews_text/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"reviews_text/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"reviews_text/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"reviews_text/([^/]+)/embed/?$";s:45:"index.php?reviews_text=$matches[1]&embed=true";s:33:"reviews_text/([^/]+)/trackback/?$";s:39:"index.php?reviews_text=$matches[1]&tb=1";s:41:"reviews_text/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?reviews_text=$matches[1]&paged=$matches[2]";s:48:"reviews_text/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?reviews_text=$matches[1]&cpage=$matches[2]";s:37:"reviews_text/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?reviews_text=$matches[1]&page=$matches[2]";s:29:"reviews_text/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"reviews_text/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"reviews_text/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"reviews_text/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"reviews_text/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"reviews_text/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"reviews_video/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"reviews_video/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"reviews_video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"reviews_video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"reviews_video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"reviews_video/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"reviews_video/([^/]+)/embed/?$";s:46:"index.php?reviews_video=$matches[1]&embed=true";s:34:"reviews_video/([^/]+)/trackback/?$";s:40:"index.php?reviews_video=$matches[1]&tb=1";s:42:"reviews_video/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?reviews_video=$matches[1]&paged=$matches[2]";s:49:"reviews_video/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?reviews_video=$matches[1]&cpage=$matches[2]";s:38:"reviews_video/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?reviews_video=$matches[1]&page=$matches[2]";s:30:"reviews_video/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"reviews_video/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"reviews_video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"reviews_video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"reviews_video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"reviews_video/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"events/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"events/([^/]+)/embed/?$";s:39:"index.php?events=$matches[1]&embed=true";s:27:"events/([^/]+)/trackback/?$";s:33:"index.php?events=$matches[1]&tb=1";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&cpage=$matches[2]";s:31:"events/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?events=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"events/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:3;s:22:"cyr3lat/cyr-to-lat.php";i:4;s:39:"siteorigin-panels/siteorigin-panels.php";i:5;s:27:"wp-super-cache/wp-cache.php";}', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:177:"<ul>\r\n 	<li><a href="http://yush25um.bget.ru/wp-content/uploads/2018/03/Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov.pdf">Книга "Пятое измерение"</a></li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '52', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:19:{s:11:"social_link";a:1:{i:0;s:14:"custom_html-10";}s:19:"wp_inactive_widgets";a:10:{i:0;s:13:"custom_html-2";i:1;s:13:"custom_html-3";i:2;s:13:"custom_html-5";i:3;s:13:"custom_html-4";i:4;s:8:"search-2";i:5;s:14:"recent-posts-2";i:6;s:17:"recent-comments-2";i:7;s:10:"archives-2";i:8;s:12:"categories-2";i:9;s:6:"meta-2";}s:10:"admin_mail";a:0:{}s:4:"mail";a:0:{}s:5:"phone";a:0:{}s:7:"phone_b";a:0:{}s:9:"social_vk";a:1:{i:0;s:13:"custom_html-6";}s:8:"social_t";a:1:{i:0;s:13:"custom_html-7";}s:14:"social_youtube";a:1:{i:0;s:13:"custom_html-9";}s:16:"social_instagram";a:1:{i:0;s:13:"custom_html-8";}s:8:"social_f";a:0:{}s:6:"events";a:0:{}s:7:"yd_icon";a:0:{}s:9:"footer_al";a:0:{}s:9:"footer_pl";a:0:{}s:12:"footer_about";a:1:{i:0;s:6:"text-2";}s:14:"footer_content";a:0:{}s:11:"footer_copy";a:1:{i:0;s:14:"custom_html-11";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:11:{i:2;a:2:{s:5:"title";s:0:"";s:7:"content";s:0:"";}i:3;a:2:{s:5:"title";s:0:"";s:7:"content";s:0:"";}i:4;a:2:{s:5:"title";s:0:"";s:7:"content";s:0:"";}i:5;a:2:{s:5:"title";s:0:"";s:7:"content";s:0:"";}i:6;a:2:{s:5:"title";s:0:"";s:7:"content";s:87:"<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_vk"></a>";}i:7;a:2:{s:5:"title";s:0:"";s:7:"content";s:86:"<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_t"></a>";}i:8;a:2:{s:5:"title";s:0:"";s:7:"content";s:87:"<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_in"></a>";}i:9;a:2:{s:5:"title";s:0:"";s:7:"content";s:87:"<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_yt"></a>";}i:10;a:2:{s:5:"title";s:0:"";s:7:"content";s:405:"<li>\r\n<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_vk"></a>\r\n</li>\r\n<li>\r\n<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_t"></a>\r\n</li>\r\n<li>\r\n<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_yt"></a>\r\n</li>\r\n<li>\r\n<a href="https://vk.com/nellidav" rel="nofollow" target="_blank" class="social_in"></a>\r\n</li>";}i:11;a:2:{s:5:"title";s:0:"";s:7:"content";s:724:"<p>\r\n<a class="polity_link" href="#" target="_blank">Политика конфиденциальности</a>\r\n</p>\r\n© 2016. Разработано агентством <a href="https://dinelli.ru/">DiNelli</a>. Все права защищены. Текст, изображения, графика, звуковые файлы, анимационные файлы, видеофайлы и их компоновка защищены авторским правом и прочими положениями о защите интеллектуальной собственности.\r\nИП Давыдова Нелли ОРГН 1290003800407519 <br>\r\n350016 Россия, г. Краснодар, ул. Артюшкова, 15";}s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1521995640;a:1:{s:24:"aiowps_hourly_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1522011990;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1522055241;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1522056840;a:1:{s:23:"aiowps_daily_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1522061389;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521985901;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:13:"custom_html-2";i:1;s:13:"custom_html-3";i:2;s:13:"custom_html-5";i:3;s:13:"custom_html-4";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:1:{s:3:"top";i:2;}}', 'yes'),
(125, '_site_transient_timeout_browser_63d96baab63efaf21cb01f3d7fa61642', '1522573642', 'no'),
(126, '_site_transient_browser_63d96baab63efaf21cb01f3d7fa61642', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(128, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1522012045', 'no'),
(129, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(130, '_transient_timeout_feed_126d1ca39d75da07beec8b892738427b', '1522012046', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(131, '_transient_feed_126d1ca39d75da07beec8b892738427b', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Блог — Русский";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:24:"https://ru.wordpress.org";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"Русский";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:34:"\n	Thu, 22 Feb 2018 17:59:21 +0000	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"ru-RU";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=5.0-alpha-42873";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"Выпуск WordPress 4.9.4 (требуется ручное обновление)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"https://ru.wordpress.org/news/2018/02/%d0%b2%d1%8b%d0%bf%d1%83%d1%81%d0%ba-wordpress-4-9-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Feb 2018 16:46:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:22:"Исправления";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:12:"Релизы";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://ru.wordpress.org/?p=1886";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:661:"Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в Консоль &#62; Обновления, либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно здесь. Детали ошибки [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:3:"Yui";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:905:"<p>Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в <em>Консоль &gt; Обновления, </em>либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно <a href="https://ru.wordpress.org/releases/">здесь</a>.</p>\n<p>Детали ошибки <a href="https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/" target="_blank" rel="noopener">доступны</a> в блоге Make WordPress.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Всемирный день перевода WordPress 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://ru.wordpress.org/news/2017/09/wp-translation-day-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 29 Sep 2017 18:55:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:14:"Новости";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://ru.wordpress.org/?p=1841";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:655:"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Denis Yanchevskiy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4393:"<p><a href="https://wptranslationday.org/">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><a href="https://wptranslationday.org/"><img class="alignnone wp-image-1842 size-full" src="https://ru.wordpress.org/files/2017/09/4by3.jpg" alt="" width="1024" height="768" srcset="https://ru.wordpress.org/files/2017/09/4by3.jpg 1024w, https://ru.wordpress.org/files/2017/09/4by3-300x225.jpg 300w, https://ru.wordpress.org/files/2017/09/4by3-768x576.jpg 768w, https://ru.wordpress.org/files/2017/09/4by3-440x330.jpg 440w" sizes="(max-width: 1024px) 100vw, 1024px" /></a></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируется встреча в Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 30 сентября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href="https://www.crowdcast.io/e/gwtd3/22">https://www.crowdcast.io/e/gwtd3/22</a>, начало в 20:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href="https://wptranslationday.org/#primary">https://wptranslationday.org/#primary</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href="https://ru.wordpress.org/support/topic/%D0%BA%D0%B0%D0%BA-%D0%BF%D0%B5%D1%80%D0%B5%D0%B2%D0%B5%D1%81%D1%82%D0%B8-%D1%82%D0%B5%D0%BC%D1%83-%D0%B8%D0%BB%D0%B8-%D0%BF%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD/">Как перевести тему или плагин?</a></li>\n<li><a href="https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0">Рекомендации по стилю перевода</a></li>\n<li><a href="https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F">Как сделать хороший перевод</a></li>\n<li><a href="https://translate.wordpress.org/locale/ru/default/glossary">Словарь терминов</a></li>\n<li><a href="https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/">Первые шаги переводчика</a></li>\n<li><a href="https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href="https://ruwp.slack.com/">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href="https://make.wordpress.org/chat/">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"Всемирный день перевода WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://ru.wordpress.org/news/2016/11/wp-translation-day/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 09 Nov 2016 16:35:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:14:"Новости";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://ru.wordpress.org/?p=1751";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:655:"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Sergey Biryukov";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4653:"<p><a href="https://wptranslationday.org/">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><img class="alignnone wp-image-1764 size-large" src="https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg" width="692" height="391" srcset="https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg 1024w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-300x170.jpg 300w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-768x434.jpg 768w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2.jpg 1200w" sizes="(max-width: 692px) 100vw, 692px" /></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируются встречи в Москве и Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 12 ноября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li><a href="https://wpmag.ru/2016/global-translation-day-moscow/">Москва</a>: метро Краснопресненская, БЦ «Трехгорная мануфактура», ул. Рочдельская, д. 15 стр. 10, 2 этаж (офис компании Setka). Начало в 12:00.</li>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href="https://www.crowdcast.io/e/gwtd2/14">https://www.crowdcast.io/e/gwtd2/14</a>, начало в 16:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href="https://wptranslationday.org/#schedule">https://wptranslationday.org/#schedule</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href="https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/">Первые шаги переводчика</a></li>\n<li><a href="https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n<li><a href="https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0">Рекомендации по стилю перевода</a></li>\n<li><a href="https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F">Как сделать хороший перевод</a></li>\n<li><a href="https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D0.BB.D0.BE.D0.B2.D0.B0.D1.80.D1.8C_.D1.82.D0.B5.D1.80.D0.BC.D0.B8.D0.BD.D0.BE.D0.B2">Словарь терминов</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href="https://ruwp.slack.com/">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href="https://make.wordpress.org/chat/">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Конференция WordCamp Moscow 2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://ru.wordpress.org/news/2016/07/wordcamp-moscow-2016/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 26 Jul 2016 14:00:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:14:"Новости";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://ru.wordpress.org/?p=1722";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:345:"13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Konstantin Kovshenin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2961:"<p>13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.</p>\n<p><img src="https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg" alt="Николай Миронов на WordCamp Russia 2015" width="692" height="462" class="alignnone size-large wp-image-1724" srcset="https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg 1024w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-300x200.jpg 300w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-768x513.jpg 768w" sizes="(max-width: 692px) 100vw, 692px" /></p>\n<p>Cписок докладов находится на стадии утверждения, но некоторые темы уже определены:</p>\n<ul>\n<li>Как заказать разработку сайта у специалиста и остаться довольным</li>\n<li>Как работает искусственный интеллект в поисковых системах</li>\n<li>Откуда брать идеи для написания постов, плагинов и тем</li>\n<li>Как опубликовать свою тему в директорию на WordPress.org</li>\n<li>Чем может быть полезен стек Elasticsearch, Logstash и Kibana</li>\n<li>Как держать потребление памяти в WordPress под контролем</li>\n<li>Что такое A/B тестирование и как его проводить в WordPress</li>\n<li>и многое другое</li>\n</ul>\n<p>В перерывах между докладами можно будет пообщаться с коллегами, задать вопросы опытным специалистам и поделиться своими идеями.</p>\n<p>Приобрести билет можно на <a href="https://2016.moscow.wordcamp.org/tickets/">сайте конференции</a> кредитной или дебетовой картой через PayPal, или при помощи системы Яндекс.Деньги.</p>\n<p>После мероприятия всех ждёт afterparty, где участники смогут пообщаться в местном баре в неформальной обстановке. Ну и, конечно же, каждый из гостей получит футболку с символикой WordPress и унесет с собой столько наклеек и значков, сколько влезет в карманы.</p>\n<p><a href="https://2016.moscow.wordcamp.org/tickets/">Зарегистрироваться</a></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Конференция WordCamp Russia 2015";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://ru.wordpress.org/news/2015/07/wordcamp-russia-2015/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Jul 2015 10:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:14:"Новости";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"WordCamp Russia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://ru.wordpress.org/?p=1660";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:282:"Конференция WordCamp Russia 2015 пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Konstantin Kovshenin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2883:"<p>Конференция <a href="https://russia.wordcamp.org/2015/">WordCamp Russia 2015</a> пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.</p>\n<p><img src="https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg" alt="WordCamp Russia" width="692" height="462" class="alignnone size-large wp-image-1662" srcset="https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg 1024w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-300x200.jpg 300w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2.jpg 1200w" sizes="(max-width: 692px) 100vw, 692px" /></p>\n<p>В этом году на WordCamp вы сможете послушать интересные доклады от ведущих специалистов по WordPress в России, познакомиться с единомышленниками и поделиться своими идеями. Доклады разделены на два потока для пользователей и разработчиков WordPress, и охватывают дизайн, маркетинг, программирование, безопасность, производительность и поисковую оптимизацию.</p>\n<h2>Программа</h2>\n<p>На WordCamp Russia 2015 вы узнаете:</p>\n<ul>\n<li>Как создавать эффективные лендинги с помощью WordPress</li>\n<li>Что такое поведенческие факторы и как они измеряются</li>\n<li>Как создавать многоязычные сайты на WordPress</li>\n<li>Самые распространенные причины медленных сайтов на WordPress</li>\n<li>Как взламываются сайты на WordPress (на практике)</li>\n<li>Что такое фильтры и события в WordPress</li>\n<li>Чего ожидать от REST API в WordPress и как с ним работать</li>\n<li>Почему следует участвовать в разработке ядра WordPress</li>\n<li><a href="https://russia.wordcamp.org/2015/schedule/">и многое другое</a></li>\n</ul>\n<p>Стоимость билета – $20. Сюда входит участие в конференции, обед и напитки, футболка с символикой мероприятия, значки, наклейки, подарки от спонсоров и целый день хорошего настроения.</p>\n<p>Подробности и регистрация <a href="https://russia.wordcamp.org/2015/">на сайте конференции &rarr;</a></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 4.2.1 на русском";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://ru.wordpress.org/news/2015/04/wordpress-4-2-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Apr 2015 16:54:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:12:"Релизы";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://ru.wordpress.org/?p=1636";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:766:"Доступен WordPress 4.2.1. Это критическое обновление безопасности для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее. Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил Йоуко Пиннонен. WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Sergey Biryukov";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1558:"<p>Доступен WordPress 4.2.1. Это <strong>критическое обновление безопасности</strong> для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее.</p>\n<p>Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил <a href="http://klikki.fi/">Йоуко Пиннонен</a>.</p>\n<p>WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, которые <a href="http://https://wordpress.org/plugins/background-update-tester/">поддерживают</a> автоматические фоновые обновления.</p>\n<p>Дополнительную информацию можно найти в <a href="https://codex.wordpress.org/Version_4.2.1">заметке о релизе</a> или в <a href="https://core.trac.wordpress.org/log/branches/4.2?rev=32311&amp;stop_rev=32300">списке изменений</a>.</p>\n<p><a href="https://ru.wordpress.org/releases/">Скачайте версию 4.2.1</a> или перейдите в меню «Консоль» → «Обновления» и нажмите кнопку «Обновить сейчас».</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Конференция WordCamp Russia 2014";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://ru.wordpress.org/news/2014/07/wordcamp-russia-2014/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 03 Jul 2014 09:37:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:14:"Новости";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"WordCamp Russia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://ru.wordpress.org/?p=1588";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:356:"Конференция WordCamp Russia 2014 пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Konstantin Kovshenin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1919:"<p>Конференция <a href="http://2014.russia.wordcamp.org/">WordCamp Russia 2014</a> пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.</p>\n<p>В этом году на WordCamp Russia планируется два отдельных потока для пользователей и разработчиков. С докладами на конференции выступят специалисты WordPress из России и из-за рубежа, включая разработчиков ядра WordPress. Среди подтвержденных докладов:</p>\n<ul>\n<li>Основы поисковой оптимизации WordPress</li>\n<li>WordPress под нагрузкой: масштабирование и отказоустойчивость</li>\n<li>Сайт глазами контентера: какой должна быть идеальная &#171;админка&#187;</li>\n<li>Как не сойти с ума при разработке крупных проектов на WordPress</li>\n<li>WordPress под прицелом хакеров. Что нужно знать, и как избежать проблем.</li>\n<li>Все что вы хотели знать о WP_Query</li>\n<li>Моделирование контента в WordPress: сильно больше, чем &#171;просто блог&#187;</li>\n<li>Малоизвестные функции в ядре WordPress</li>\n<li>Профилирование кода в WordPress</li>\n</ul>\n<p>Подробности и регистрация <a href="http://2014.russia.wordcamp.org/">на сайте конференции &rarr;</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 3.9 «Смит»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://ru.wordpress.org/news/2014/04/3-9-smith/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Apr 2014 19:56:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:12:"Релизы";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://ru.wordpress.org/?p=1516";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:710:"Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд! Медиа и редактор В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Konstantin Kovshenin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5339:"<p>Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд!</p>\n<h3>Медиа и редактор</h3>\n<p><img src="//wordpress.org/news/files/2014/04/editor1-300x233.jpg" alt="editor" width="228" height="177" /><img src="//wordpress.org/news/files/2014/04/image1-300x233.jpg" alt="image" width="228" height="178" /><img src="//wordpress.org/news/files/2014/04/dragdrop1-300x233.jpg" alt="dragdrop" width="228" height="178" /></p>\n<p>В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. Вы теперь можете вставлять текст из таких программ, как Microsoft Word, и редактор автоматически преобразует их в чистую разметку.</p>\n<p>Редактировать изображения (повернуть, перевернуть, обрезать) в медиатеке стало еще быстрее и приятнее в новой версии, а изменять размер вставленных изображений вы теперь можете прямо в самом редакторе.</p>\n<p>Загружать новые файлы в библиотеку файлов также стало намного легче &#8212; теперь их достаточно просто перетащить с вашего компьютера (например, с рабочего стола) прямо в редактор WordPress.</p>\n<p>При вставке галерей в визуальный редактор версии 3.9 вы теперь увидите полноценное превью ваших изображений. Предварительный просмотр элементов в редакторе также доступен для аудио, видео и плей-листов.</p>\n<h3>Аудио и видео</h3>\n<p>В WordPress 3.9 улучшена встроенная поддержка аудио- и видеофайлов. Мы обновили медиаплеер, а также добавили возможность легко создавать плей-листы для аудио и видео:</p>\n<p><img class="alignnone size-large wp-image-1534" src="//ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png" alt="wordpress-audio-playlist" width="641" height="254" srcset="https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png 641w, https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1-300x118.png 300w" sizes="(max-width: 641px) 100vw, 641px" /></p>\n<h3>Работа с виджетами</h3>\n<p>Виджетами теперь легко управлять прямо из конфигуратора тем WordPress. Для запуска конфигуратора зайдите в раздел «Внешний вид» → «Настроить». Любые изменения в этом режиме вступят в силу только после сохранения, так что не бойтесь экспериментировать!</p>\n<p><img class="alignnone size-full wp-image-1536" src="//ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png" alt="wordpress-3-9-widgets-screen" srcset="https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen-300x120.png 300w" sizes="(max-width: 700px) 100vw, 700px" /></p>\n<h3>Поиск и установка тем</h3>\n<p>В версии 3.9 изменился интерфейс для поиска и установки тем из официального каталога WordPress.org. Он стал чище, приятнее и намного быстрее:</p>\n<p><img class="alignnone size-large wp-image-1539" src="//ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png" alt="wordpress-3-9-themes-install" srcset="https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install-300x113.png 300w" sizes="(max-width: 700px) 100vw, 700px" /></p>\n<p>В новой версии также произошло большое количество внутренних изменений, которые сделали WordPress 3.9 еще быстрее и надежнее. В разработке новой версии WordPress приняло участие более 250 человек из разных стран мира. Мы надеемся, что вам понравится данное обновление.</p>\n<p>Если у вас возникнут проблемы с новой версией, обратитесь на <a href="https://ru.forums.wordpress.org/">форум поддержки</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WordPress 3.8 «Паркер»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://ru.wordpress.org/news/2013/12/parker/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 13 Dec 2013 16:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:12:"Релизы";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://ru.wordpress.org/?p=1478";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:749:"Новая версия WordPress 3.8 &#171;Паркер&#187;, названная в честь джазового музыканта Чарли Паркера, доступна для скачивания или обновления через вашу консоль WordPress. Мы надеемся, что вы посчитаете данный релиз самым привлекательным. Совершенно новый внешний вид WordPress получил совершенно новый облик. Новая версия 3.8 полностью изменяет внешний вид панели администрирования, включая новый крупный шрифт Open Sans, плоские [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Konstantin Kovshenin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3736:"<p>Новая версия WordPress 3.8 &#171;Паркер&#187;, названная в честь джазового музыканта Чарли Паркера, доступна для скачивания или обновления через вашу консоль WordPress. Мы надеемся, что вы посчитаете данный релиз самым привлекательным.</p>\n<p><span id="more-1478"></span></p>\n<h2>Совершенно новый внешний вид</h2>\n<p><img alt="Новый дизайн WordPress 3.8"  src="//i0.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/overview.jpg?resize=623%2C193" /></p>\n<p>WordPress получил совершенно новый облик. Новая версия 3.8 полностью изменяет внешний вид панели администрирования, включая новый крупный шрифт Open Sans, плоские векторные иконки и восемь различных цветовых схем.</p>\n<p><img alt="Цветовые схемы WordPress 3.8"  src="//i0.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/colors.jpg?w=420" /></p>\n<p>Любителям писать &#171;на ходу&#187; будет интересно знать, что панель администрирования теперь стала адаптивной. Она автоматически подстраивается под необходимую ширину вашего экрана и безупречно работает как с крупными экранами настольных компьютеров, так и с мелкими экранами мобильных устройств и планшетов.</p>\n<h2>Новый подход к работе с темами</h2>\n<p>В новой версии WordPress стало намного проще и удобнее работать с темами оформления. Мы полностью переделали интерфейс для вашего удобства, включая возможность быстрого поиска по названию, описанию или автору темы, а также возможность &#171;листать&#187; темы с помощью клавиатуры.</p>\n<p><img alt="Работа с темами в WordPress 3.8"  src="//i0.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/themes.jpg?resize=360%2C344" /></p>\n<h2>Журнальная тема Twenty Fourteen</h2>\n<p>Twenty Fourteen стала новой стандартной темой в WordPress 3.8. Темный лаконичный дизайн, адаптивная верстка, поддержка ряда форматов записей, несколько разделов для ваших виджетов и совершенно новый модуль &#171;Избранное содержимое&#187;, с помощью которого можно выделить ваши самые яркие записи в виде сетки или слайдера на главной странице.</p>\n<p><img  src="//i0.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/twentyfourteen.jpg?resize=692%2C275" alt="Тема Twenty Fourteen" /></p>\n<p>Скачать официальную русскую версию WordPress 3.8 вы можете по <a href="https://ru.wordpress.org/wordpress-3.8-ru_RU.zip">этой ссылке</a>. Если вы уже пользуетесь WordPress, выполнить обновление можно в вашей панели администрирования в разделе Консоль → Обновления.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"WordPress 3.7 «Бейси»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://ru.wordpress.org/news/2013/10/wordpress-3-7/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Oct 2013 08:47:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:12:"Релизы";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"3.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://ru.wordpress.org/?p=1464";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:741:"WordPress 3.7 (названный в честь джазового музыканта Каунта Бейси) доступен для скачивания на русском языке. Данный релиз нацелен на некоторые улучшения архитектуры ядра: Автоматические обновления: с версией 3.7 вам больше не нужно беспокоиться об обновлении на технические релизы и релизы безопасности &#8212; WordPress самостоятельно выполнит необходимые обновления и сообщит вам об этом по электронной почте. [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Konstantin Kovshenin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2380:"<p>WordPress 3.7 (названный в честь джазового музыканта Каунта Бейси) доступен для скачивания на русском языке. Данный релиз нацелен на некоторые улучшения архитектуры ядра:</p>\n<ul>\n<li><strong>Автоматические обновления</strong>: с версией 3.7 вам больше не нужно беспокоиться об обновлении на технические релизы и релизы безопасности &#8212; WordPress самостоятельно выполнит необходимые обновления и сообщит вам об этом по электронной почте.</li>\n<li><strong>Надёжные пароли</strong>: с новой библиотекой для проверки надёжности паролей в WordPress, пользователи и администраторы вашего сайта будут в безопасности. Индикатор надёжности теперь проверяет не только длину пароля, но и его содержимое. Например 1234567890, password, qwerty и даже h3ll0w0r1d теперь помечаются как &#171;очень слабые пароли&#187;.</li>\n<li><strong>Улучшенная поддержка языковых пакетов</strong>: с новой версией, WordPress будет запрашивать и обновлять языковые пакеты для ядра и стандартных тем автоматически.</li>\n</ul>\n<p>Разработчики смогут управлять автоматическими обновлениями с помощью ряда новых фильтров и событий, выполнять комплексные запросы с датами с помощью нового класса <code>WP_Date_Query</code> и многое другое. Полный список изменений (более 400) вы можете посмотреть в <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=3.7">баг-трэкере</a>. В данном релизе приняло участие более 200 разработчиков.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:35:"https://ru.wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:9:"\n	hourly	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:4:"\n	1	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Sun, 25 Mar 2018 09:07:38 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Sun, 25 Mar 2018 08:57:46 GMT";s:4:"link";s:61:"<https://ru.wordpress.org/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:9:"HIT ord 1";}}s:5:"build";s:14:"20130911010210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(132, '_transient_timeout_feed_mod_126d1ca39d75da07beec8b892738427b', '1522012046', 'no'),
(133, '_transient_feed_mod_126d1ca39d75da07beec8b892738427b', '1521968846', 'no'),
(134, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1522012048', 'no'),
(135, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1522012048', 'no'),
(136, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1521968848', 'no'),
(137, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1522012048', 'no'),
(138, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://ru.wordpress.org/news/2018/02/%D0%B2%D1%8B%D0%BF%D1%83%D1%81%D0%BA-wordpress-4-9-4/''>Выпуск WordPress 4.9.4 (требуется ручное обновление)</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/noteworthy-changes-coming-in-wordpress-4-9-5''>WPTavern: Noteworthy Changes Coming in WordPress 4.9.5</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wpweekly-episode-309-all-amped-up''>WPTavern: WPWeekly Episode 309 – All AMPed Up</a></li><li><a class=''rsswidget'' href=''https://ma.tt/2018/03/dont-like-change/''>Matt: Don’t Like Change</a></li></ul></div>', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Dinelli', 'yes'),
(141, 'theme_mods_dinelli_new', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:50;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1521985888;s:4:"data";a:16:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:10:"admin_mail";a:0:{}s:4:"mail";a:0:{}s:5:"phone";a:0:{}s:7:"phone_b";a:0:{}s:9:"social_vk";a:1:{i:0;s:13:"custom_html-2";}s:8:"social_f";a:1:{i:0;s:13:"custom_html-3";}s:14:"social_youtube";a:1:{i:0;s:13:"custom_html-5";}s:16:"social_instagram";a:1:{i:0;s:13:"custom_html-4";}s:6:"events";a:0:{}s:7:"yd_icon";a:0:{}s:9:"footer_al";a:0:{}s:9:"footer_pl";a:0:{}s:12:"footer_about";a:0:{}s:14:"footer_content";a:0:{}s:11:"footer_copy";a:0:{}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(144, 'aiowpsec_db_version', '1.9', 'yes'),
(145, 'aio_wp_security_configs', 'a:80:{s:19:"aiowps_enable_debug";s:0:"";s:36:"aiowps_remove_wp_generator_meta_info";s:0:"";s:25:"aiowps_prevent_hotlinking";s:0:"";s:28:"aiowps_enable_login_lockdown";s:0:"";s:28:"aiowps_allow_unlock_requests";s:0:"";s:25:"aiowps_max_login_attempts";s:1:"3";s:24:"aiowps_retry_time_period";s:1:"5";s:26:"aiowps_lockout_time_length";s:2:"60";s:28:"aiowps_set_generic_login_msg";s:0:"";s:26:"aiowps_enable_email_notify";s:0:"";s:20:"aiowps_email_address";s:20:"yu.sh.2583@gmail.com";s:27:"aiowps_enable_forced_logout";s:0:"";s:25:"aiowps_logout_time_period";s:2:"60";s:39:"aiowps_enable_invalid_username_lockdown";s:0:"";s:43:"aiowps_instantly_lockout_specific_usernames";a:0:{}s:32:"aiowps_unlock_request_secret_key";s:20:"ghglepzxoblp5bvn44wz";s:35:"aiowps_lockdown_enable_whitelisting";s:0:"";s:36:"aiowps_lockdown_allowed_ip_addresses";s:0:"";s:26:"aiowps_enable_whitelisting";s:0:"";s:27:"aiowps_allowed_ip_addresses";s:0:"";s:27:"aiowps_enable_login_captcha";s:0:"";s:34:"aiowps_enable_custom_login_captcha";s:0:"";s:25:"aiowps_captcha_secret_key";s:20:"hs9ejp365vyznrx2wbn4";s:42:"aiowps_enable_manual_registration_approval";s:0:"";s:39:"aiowps_enable_registration_page_captcha";s:0:"";s:35:"aiowps_enable_registration_honeypot";s:0:"";s:27:"aiowps_enable_random_prefix";s:0:"";s:31:"aiowps_enable_automated_backups";s:0:"";s:26:"aiowps_db_backup_frequency";s:1:"4";s:25:"aiowps_db_backup_interval";s:1:"2";s:26:"aiowps_backup_files_stored";s:1:"2";s:32:"aiowps_send_backup_email_address";s:0:"";s:27:"aiowps_backup_email_address";s:20:"yu.sh.2583@gmail.com";s:27:"aiowps_disable_file_editing";s:0:"";s:37:"aiowps_prevent_default_wp_file_access";s:0:"";s:22:"aiowps_system_log_file";s:9:"error_log";s:26:"aiowps_enable_blacklisting";s:0:"";s:26:"aiowps_banned_ip_addresses";s:0:"";s:28:"aiowps_enable_basic_firewall";s:0:"";s:31:"aiowps_enable_pingback_firewall";s:0:"";s:38:"aiowps_disable_xmlrpc_pingback_methods";s:0:"";s:34:"aiowps_block_debug_log_file_access";s:0:"";s:26:"aiowps_disable_index_views";s:0:"";s:30:"aiowps_disable_trace_and_track";s:0:"";s:28:"aiowps_forbid_proxy_comments";s:0:"";s:29:"aiowps_deny_bad_query_strings";s:0:"";s:34:"aiowps_advanced_char_string_filter";s:0:"";s:25:"aiowps_enable_5g_firewall";s:0:"";s:25:"aiowps_enable_6g_firewall";s:0:"";s:26:"aiowps_enable_custom_rules";s:0:"";s:19:"aiowps_custom_rules";s:0:"";s:25:"aiowps_enable_404_logging";s:0:"";s:28:"aiowps_enable_404_IP_lockout";s:0:"";s:30:"aiowps_404_lockout_time_length";s:2:"60";s:28:"aiowps_404_lock_redirect_url";s:16:"http://127.0.0.1";s:31:"aiowps_enable_rename_login_page";s:0:"";s:28:"aiowps_enable_login_honeypot";s:0:"";s:43:"aiowps_enable_brute_force_attack_prevention";s:0:"";s:30:"aiowps_brute_force_secret_word";s:0:"";s:24:"aiowps_cookie_brute_test";s:0:"";s:44:"aiowps_cookie_based_brute_force_redirect_url";s:16:"http://127.0.0.1";s:59:"aiowps_brute_force_attack_prevention_pw_protected_exception";s:0:"";s:51:"aiowps_brute_force_attack_prevention_ajax_exception";s:0:"";s:19:"aiowps_site_lockout";s:0:"";s:23:"aiowps_site_lockout_msg";s:0:"";s:30:"aiowps_enable_spambot_blocking";s:0:"";s:29:"aiowps_enable_comment_captcha";s:0:"";s:31:"aiowps_enable_autoblock_spam_ip";s:0:"";s:33:"aiowps_spam_ip_min_comments_block";s:0:"";s:32:"aiowps_enable_automated_fcd_scan";s:0:"";s:25:"aiowps_fcd_scan_frequency";s:1:"4";s:24:"aiowps_fcd_scan_interval";s:1:"2";s:28:"aiowps_fcd_exclude_filetypes";s:0:"";s:24:"aiowps_fcd_exclude_files";s:0:"";s:26:"aiowps_send_fcd_scan_email";s:0:"";s:29:"aiowps_fcd_scan_email_address";s:20:"yu.sh.2583@gmail.com";s:27:"aiowps_fcds_change_detected";b:0;s:22:"aiowps_copy_protection";s:0:"";s:40:"aiowps_prevent_site_display_inside_frame";s:0:"";s:32:"aiowps_prevent_users_enumeration";s:0:"";}', 'yes'),
(146, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(147, 'siteorigin_panels_initial_version', '2.5.10', 'no'),
(148, 'ossdl_off_cdn_url', 'http://yush25um.bget.ru', 'yes'),
(149, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(150, 'ossdl_off_exclude', '.php', 'yes'),
(151, 'ossdl_cname', '', 'yes'),
(152, '_transient_timeout_plugin_slugs', '1522056972', 'no'),
(153, '_transient_plugin_slugs', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:2;s:21:"backwpup/backwpup.php";i:3;s:22:"cyr3lat/cyr-to-lat.php";i:4;s:39:"siteorigin-panels/siteorigin-panels.php";i:5;s:27:"wp-super-cache/wp-cache.php";}', 'no'),
(154, 'recently_activated', 'a:1:{s:21:"backwpup/backwpup.php";i:1521970570;}', 'yes'),
(155, 'siteorigin_panels_active_version', '2.6.3', 'yes'),
(175, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'widget_siteorigin-panels-builder', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(179, 'acf_version', '4.4.12', 'yes'),
(187, 'ossdl_off_blog_url', 'http://yush25um.bget.ru', 'yes'),
(188, 'category_children', 'a:0:{}', 'yes'),
(192, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.4.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1521974771;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(193, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1521974771;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:51:"all-in-one-wp-security-and-firewall/wp-security.php";O:8:"stdClass":9:{s:2:"id";s:49:"w.org/plugins/all-in-one-wp-security-and-firewall";s:4:"slug";s:35:"all-in-one-wp-security-and-firewall";s:6:"plugin";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:11:"new_version";s:5:"4.3.2";s:3:"url";s:66:"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip";s:5:"icons";a:2:{s:2:"1x";s:88:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826";s:7:"default";s:88:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826";}s:7:"banners";a:2:{s:2:"1x";s:90:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1232826";s:7:"default";s:90:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1232826";}s:11:"banners_rtl";a:0:{}}s:22:"cyr3lat/cyr-to-lat.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/cyr3lat";s:4:"slug";s:7:"cyr3lat";s:6:"plugin";s:22:"cyr3lat/cyr-to-lat.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:38:"https://wordpress.org/plugins/cyr3lat/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/siteorigin-panels";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:5:"2.6.3";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.6.3.zip";s:5:"icons";a:3:{s:2:"1x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755";s:2:"2x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755";s:7:"default";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755";}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755";s:7:"default";s:72:"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755";}s:11:"banners_rtl";a:0:{}}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-super-cache";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.5.9";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.5.9.zip";s:5:"icons";a:3:{s:2:"1x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422";s:2:"2x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";s:7:"default";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";}s:7:"banners";a:3:{s:2:"2x";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";s:2:"1x";s:69:"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414";s:7:"default";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(196, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1521985888;s:7:"checked";a:4:{s:7:"dinelli";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(197, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(208, '_site_transient_timeout_theme_roots', '1521987687', 'no'),
(209, '_site_transient_theme_roots', 'a:4:{s:7:"dinelli";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(212, 'theme_mods_dinelli', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:49;}', 'yes'),
(215, '_transient_timeout_users_online', '1521996325', 'no'),
(216, '_transient_users_online', 'a:1:{i:0;a:3:{s:7:"user_id";i:1;s:13:"last_activity";i:1522005325;s:10:"ip_address";s:9:"127.0.0.1";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=230 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(3, 4, '_menu_item_type', 'custom'),
(4, 4, '_menu_item_menu_item_parent', '0'),
(5, 4, '_menu_item_object_id', '4'),
(6, 4, '_menu_item_object', 'custom'),
(7, 4, '_menu_item_target', ''),
(8, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(9, 4, '_menu_item_xfn', ''),
(10, 4, '_menu_item_url', 'http://yush25um.bget.ru/'),
(12, 5, '_menu_item_type', 'post_type'),
(13, 5, '_menu_item_menu_item_parent', '0'),
(14, 5, '_menu_item_object_id', '2'),
(15, 5, '_menu_item_object', 'page'),
(16, 5, '_menu_item_target', ''),
(17, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 5, '_menu_item_xfn', ''),
(19, 5, '_menu_item_url', ''),
(20, 5, '_menu_item_orphaned', '1521974775'),
(21, 2, '_wp_trash_meta_status', 'publish'),
(22, 2, '_wp_trash_meta_time', '1521974961'),
(23, 2, '_wp_desired_post_slug', 'sample-page'),
(24, 7, '_edit_last', '1'),
(25, 7, '_wp_page_template', 'default'),
(26, 7, '_edit_lock', '1521974936:1'),
(27, 9, '_edit_last', '1'),
(28, 9, '_edit_lock', '1521975171:1'),
(29, 9, '_wp_page_template', 'default'),
(30, 11, '_edit_last', '1'),
(31, 11, '_edit_lock', '1521975239:1'),
(32, 11, '_wp_page_template', 'default'),
(33, 13, '_edit_last', '1'),
(34, 13, '_wp_page_template', 'default'),
(35, 13, '_edit_lock', '1521976058:1'),
(36, 16, '_edit_last', '1'),
(37, 16, '_wp_page_template', 'default'),
(38, 16, '_edit_lock', '1521975381:1'),
(39, 18, '_edit_last', '1'),
(40, 18, '_wp_page_template', 'default'),
(41, 18, '_edit_lock', '1521993411:1'),
(42, 20, '_edit_last', '1'),
(43, 20, '_wp_page_template', 'default'),
(44, 20, '_edit_lock', '1521975471:1'),
(45, 22, '_edit_last', '1'),
(46, 22, '_wp_page_template', 'default'),
(47, 22, '_edit_lock', '1521975587:1'),
(48, 26, '_edit_last', '1'),
(49, 26, '_wp_page_template', 'default'),
(50, 26, '_edit_lock', '1521975612:1'),
(51, 28, '_edit_last', '1'),
(52, 28, '_wp_page_template', 'default'),
(53, 28, '_edit_lock', '1521975819:1'),
(54, 30, '_menu_item_type', 'post_type'),
(55, 30, '_menu_item_menu_item_parent', '0'),
(56, 30, '_menu_item_object_id', '28'),
(57, 30, '_menu_item_object', 'page'),
(58, 30, '_menu_item_target', ''),
(59, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 30, '_menu_item_xfn', ''),
(61, 30, '_menu_item_url', ''),
(62, 30, '_menu_item_orphaned', '1521975888'),
(63, 31, '_menu_item_type', 'post_type'),
(64, 31, '_menu_item_menu_item_parent', '0'),
(65, 31, '_menu_item_object_id', '26'),
(66, 31, '_menu_item_object', 'page'),
(67, 31, '_menu_item_target', ''),
(68, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 31, '_menu_item_xfn', ''),
(70, 31, '_menu_item_url', ''),
(71, 31, '_menu_item_orphaned', '1521975888'),
(72, 32, '_menu_item_type', 'post_type'),
(73, 32, '_menu_item_menu_item_parent', '0'),
(74, 32, '_menu_item_object_id', '22'),
(75, 32, '_menu_item_object', 'page'),
(76, 32, '_menu_item_target', ''),
(77, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 32, '_menu_item_xfn', ''),
(79, 32, '_menu_item_url', ''),
(80, 32, '_menu_item_orphaned', '1521975888'),
(81, 33, '_menu_item_type', 'post_type'),
(82, 33, '_menu_item_menu_item_parent', '0'),
(83, 33, '_menu_item_object_id', '20'),
(84, 33, '_menu_item_object', 'page'),
(85, 33, '_menu_item_target', ''),
(86, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 33, '_menu_item_xfn', ''),
(88, 33, '_menu_item_url', ''),
(89, 33, '_menu_item_orphaned', '1521975889'),
(90, 34, '_menu_item_type', 'post_type'),
(91, 34, '_menu_item_menu_item_parent', '0'),
(92, 34, '_menu_item_object_id', '18'),
(93, 34, '_menu_item_object', 'page'),
(94, 34, '_menu_item_target', ''),
(95, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 34, '_menu_item_xfn', ''),
(97, 34, '_menu_item_url', ''),
(98, 34, '_menu_item_orphaned', '1521975889'),
(99, 35, '_menu_item_type', 'post_type'),
(100, 35, '_menu_item_menu_item_parent', '0'),
(101, 35, '_menu_item_object_id', '16'),
(102, 35, '_menu_item_object', 'page'),
(103, 35, '_menu_item_target', ''),
(104, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 35, '_menu_item_xfn', ''),
(106, 35, '_menu_item_url', ''),
(107, 35, '_menu_item_orphaned', '1521975889'),
(108, 36, '_menu_item_type', 'post_type'),
(109, 36, '_menu_item_menu_item_parent', '0'),
(110, 36, '_menu_item_object_id', '13'),
(111, 36, '_menu_item_object', 'page'),
(112, 36, '_menu_item_target', ''),
(113, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 36, '_menu_item_xfn', ''),
(115, 36, '_menu_item_url', ''),
(116, 36, '_menu_item_orphaned', '1521975889'),
(117, 37, '_menu_item_type', 'post_type'),
(118, 37, '_menu_item_menu_item_parent', '0'),
(119, 37, '_menu_item_object_id', '11'),
(120, 37, '_menu_item_object', 'page'),
(121, 37, '_menu_item_target', ''),
(122, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 37, '_menu_item_xfn', ''),
(124, 37, '_menu_item_url', ''),
(125, 37, '_menu_item_orphaned', '1521975889'),
(126, 38, '_edit_last', '1'),
(127, 38, '_edit_lock', '1521976484:1'),
(128, 38, '_wp_page_template', 'default'),
(129, 40, '_menu_item_type', 'post_type'),
(130, 40, '_menu_item_menu_item_parent', '0'),
(131, 40, '_menu_item_object_id', '38'),
(132, 40, '_menu_item_object', 'page'),
(133, 40, '_menu_item_target', ''),
(134, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(135, 40, '_menu_item_xfn', ''),
(136, 40, '_menu_item_url', ''),
(138, 41, '_menu_item_type', 'post_type'),
(139, 41, '_menu_item_menu_item_parent', '0'),
(140, 41, '_menu_item_object_id', '28'),
(141, 41, '_menu_item_object', 'page'),
(142, 41, '_menu_item_target', ''),
(143, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(144, 41, '_menu_item_xfn', ''),
(145, 41, '_menu_item_url', ''),
(147, 42, '_menu_item_type', 'post_type'),
(148, 42, '_menu_item_menu_item_parent', '0'),
(149, 42, '_menu_item_object_id', '26'),
(150, 42, '_menu_item_object', 'page'),
(151, 42, '_menu_item_target', ''),
(152, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(153, 42, '_menu_item_xfn', ''),
(154, 42, '_menu_item_url', ''),
(156, 43, '_menu_item_type', 'post_type'),
(157, 43, '_menu_item_menu_item_parent', '0'),
(158, 43, '_menu_item_object_id', '22'),
(159, 43, '_menu_item_object', 'page'),
(160, 43, '_menu_item_target', ''),
(161, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 43, '_menu_item_xfn', ''),
(163, 43, '_menu_item_url', ''),
(165, 44, '_menu_item_type', 'post_type'),
(166, 44, '_menu_item_menu_item_parent', '0'),
(167, 44, '_menu_item_object_id', '20'),
(168, 44, '_menu_item_object', 'page'),
(169, 44, '_menu_item_target', ''),
(170, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(171, 44, '_menu_item_xfn', ''),
(172, 44, '_menu_item_url', ''),
(174, 45, '_menu_item_type', 'post_type'),
(175, 45, '_menu_item_menu_item_parent', '0'),
(176, 45, '_menu_item_object_id', '18'),
(177, 45, '_menu_item_object', 'page'),
(178, 45, '_menu_item_target', ''),
(179, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(180, 45, '_menu_item_xfn', ''),
(181, 45, '_menu_item_url', ''),
(183, 46, '_menu_item_type', 'post_type'),
(184, 46, '_menu_item_menu_item_parent', '0'),
(185, 46, '_menu_item_object_id', '16'),
(186, 46, '_menu_item_object', 'page'),
(187, 46, '_menu_item_target', ''),
(188, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 46, '_menu_item_xfn', ''),
(190, 46, '_menu_item_url', ''),
(192, 47, '_menu_item_type', 'post_type'),
(193, 47, '_menu_item_menu_item_parent', '0'),
(194, 47, '_menu_item_object_id', '13'),
(195, 47, '_menu_item_object', 'page'),
(196, 47, '_menu_item_target', ''),
(197, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 47, '_menu_item_xfn', ''),
(199, 47, '_menu_item_url', ''),
(201, 48, '_menu_item_type', 'post_type'),
(202, 48, '_menu_item_menu_item_parent', '0'),
(203, 48, '_menu_item_object_id', '11'),
(204, 48, '_menu_item_object', 'page'),
(205, 48, '_menu_item_target', ''),
(206, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 48, '_menu_item_xfn', ''),
(208, 48, '_menu_item_url', ''),
(210, 49, '_wp_attached_file', '2018/03/5d_logo.png'),
(211, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:186;s:6:"height";i:55;s:4:"file";s:19:"2018/03/5d_logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"5d_logo-150x55.png";s:5:"width";i:150;s:6:"height";i:55;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(212, 49, '_wp_attachment_image_alt', 'Университет физики сознания'),
(213, 50, '_wp_attached_file', '2018/03/cropped-5d_logo.png'),
(214, 50, '_wp_attachment_context', 'custom-logo'),
(215, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:186;s:6:"height";i:55;s:4:"file";s:27:"2018/03/cropped-5d_logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-5d_logo-150x55.png";s:5:"width";i:150;s:6:"height";i:55;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(216, 51, '_wp_trash_meta_status', 'publish'),
(217, 51, '_wp_trash_meta_time', '1521977268'),
(218, 52, '_wp_attached_file', '2018/03/cropped-5d_logo-1.png'),
(219, 52, '_wp_attachment_context', 'site-icon'),
(220, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:29:"2018/03/cropped-5d_logo-1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"cropped-5d_logo-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:29:"cropped-5d_logo-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:29:"cropped-5d_logo-1-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:29:"cropped-5d_logo-1-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:29:"cropped-5d_logo-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:27:"cropped-5d_logo-1-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(221, 53, '_edit_lock', '1521977314:1'),
(222, 53, '_wp_trash_meta_status', 'publish'),
(223, 53, '_wp_trash_meta_time', '1521977317'),
(224, 54, '_wp_trash_meta_status', 'publish'),
(225, 54, '_wp_trash_meta_time', '1521986050'),
(226, 55, '_wp_attached_file', '2018/03/Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov.pdf'),
(227, 56, '_edit_last', '1'),
(228, 56, '_edit_lock', '1521993250:1'),
(229, 56, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-25 12:06:29', '2018-03-25 09:06:29', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2018-03-25 12:06:29', '2018-03-25 09:06:29', '', 0, 'http://yush25um.bget.ru/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-25 12:06:29', '2018-03-25 09:06:29', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://yush25um.bget.ru/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-03-25 13:49:21', '2018-03-25 10:49:21', '', 0, 'http://yush25um.bget.ru/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-25 12:07:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-25 12:07:22', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-25 13:47:17', '2018-03-25 10:47:17', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2018-03-25 14:09:55', '2018-03-25 11:09:55', '', 0, 'http://yush25um.bget.ru/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2018-03-25 13:46:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 13:46:15', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-03-25 13:49:21', '2018-03-25 10:49:21', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://yush25um.bget.ru/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-25 13:49:21', '2018-03-25 10:49:21', '', 2, 'http://yush25um.bget.ru/2018/03/25/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-03-25 13:50:24', '2018-03-25 10:50:24', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-03-25 13:50:24', '2018-03-25 10:50:24', '', 0, 'http://yush25um.bget.ru/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-03-25 13:50:04', '2018-03-25 10:50:04', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-03-25 13:50:04', '2018-03-25 10:50:04', '', 7, 'http://yush25um.bget.ru/2018/03/25/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-03-25 13:53:21', '2018-03-25 10:53:21', '', 'Университет Физики Сознания', '', 'publish', 'closed', 'closed', '', 'university', '', '', '2018-03-25 13:53:55', '2018-03-25 10:53:55', '', 0, 'http://yush25um.bget.ru/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-03-25 13:53:21', '2018-03-25 10:53:21', '', 'Университет Физики Сознания', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-25 13:53:21', '2018-03-25 10:53:21', '', 9, 'http://yush25um.bget.ru/2018/03/25/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-03-25 13:56:15', '2018-03-25 10:56:15', '', 'Фонд "Новая Земля"', '', 'publish', 'closed', 'closed', '', 'fond-novaya-zemlya', '', '', '2018-03-25 13:56:15', '2018-03-25 10:56:15', '', 0, 'http://yush25um.bget.ru/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-25 13:56:15', '2018-03-25 10:56:15', '', 'Фонд "Новая Земля"', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 13:56:15', '2018-03-25 10:56:15', '', 11, 'http://yush25um.bget.ru/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-03-25 13:56:40', '2018-03-25 10:56:40', '', 'Описание курсов', '', 'publish', 'closed', 'closed', '', 'courses', '', '', '2018-03-25 14:07:37', '2018-03-25 11:07:37', '', 0, 'http://yush25um.bget.ru/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-03-25 13:56:40', '2018-03-25 10:56:40', '', 'Анонс мероприятий', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-03-25 13:56:40', '2018-03-25 10:56:40', '', 13, 'http://yush25um.bget.ru/2018/03/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-03-25 13:57:07', '2018-03-25 10:57:07', '', 'Описание курсов', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-03-25 13:57:07', '2018-03-25 10:57:07', '', 13, 'http://yush25um.bget.ru/2018/03/25/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-03-25 13:57:54', '2018-03-25 10:57:54', '', 'Книги', '', 'publish', 'closed', 'closed', '', 'knigi', '', '', '2018-03-25 13:57:54', '2018-03-25 10:57:54', '', 0, 'http://yush25um.bget.ru/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-03-25 13:57:54', '2018-03-25 10:57:54', '', 'Книги', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-03-25 13:57:54', '2018-03-25 10:57:54', '', 16, 'http://yush25um.bget.ru/2018/03/25/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-03-25 13:59:12', '2018-03-25 10:59:12', '', 'Аудио', '', 'publish', 'closed', 'closed', '', 'audio', '', '', '2018-03-25 13:59:12', '2018-03-25 10:59:12', '', 0, 'http://yush25um.bget.ru/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-03-25 13:59:12', '2018-03-25 10:59:12', '', 'Аудио', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-03-25 13:59:12', '2018-03-25 10:59:12', '', 18, 'http://yush25um.bget.ru/2018/03/25/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-03-25 14:00:03', '2018-03-25 11:00:03', '', 'Отзывы', '', 'publish', 'closed', 'closed', '', 'otzyvy', '', '', '2018-03-25 14:00:03', '2018-03-25 11:00:03', '', 0, 'http://yush25um.bget.ru/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-03-25 14:00:03', '2018-03-25 11:00:03', '', 'Отзывы', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-03-25 14:00:03', '2018-03-25 11:00:03', '', 20, 'http://yush25um.bget.ru/2018/03/25/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-03-25 14:00:21', '2018-03-25 11:00:21', '', 'Фото', '', 'publish', 'closed', 'closed', '', 'foto', '', '', '2018-03-25 14:02:03', '2018-03-25 11:02:03', '', 0, 'http://yush25um.bget.ru/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-03-25 14:00:21', '2018-03-25 11:00:21', '', 'Фото', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-03-25 14:00:21', '2018-03-25 11:00:21', '', 22, 'http://yush25um.bget.ru/2018/03/25/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-03-25 14:01:18', '2018-03-25 11:01:18', '', 'Видео', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-03-25 14:01:18', '2018-03-25 11:01:18', '', 22, 'http://yush25um.bget.ru/2018/03/25/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-03-25 14:02:03', '2018-03-25 11:02:03', '', 'Фото', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-03-25 14:02:03', '2018-03-25 11:02:03', '', 22, 'http://yush25um.bget.ru/2018/03/25/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-03-25 14:02:24', '2018-03-25 11:02:24', '', 'Видео', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2018-03-25 14:02:24', '2018-03-25 11:02:24', '', 0, 'http://yush25um.bget.ru/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-03-25 14:02:24', '2018-03-25 11:02:24', '', 'Видео', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-03-25 14:02:24', '2018-03-25 11:02:24', '', 26, 'http://yush25um.bget.ru/2018/03/25/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-03-25 14:03:25', '2018-03-25 11:03:25', '', 'Статьи', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-25 14:03:46', '2018-03-25 11:03:46', '', 0, 'http://yush25um.bget.ru/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-03-25 14:03:25', '2018-03-25 11:03:25', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-03-25 14:03:25', '2018-03-25 11:03:25', '', 28, 'http://yush25um.bget.ru/2018/03/25/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-03-25 14:04:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:48', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-03-25 14:04:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:48', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-03-25 14:04:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:48', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-03-25 14:04:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:48', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-03-25 14:04:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:49', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-03-25 14:04:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:49', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-03-25 14:04:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:49', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-03-25 14:04:49', '0000-00-00 00:00:00', '', 'Фонд "Новая Земля"', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 14:04:49', '0000-00-00 00:00:00', '', 0, 'http://yush25um.bget.ru/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-03-25 14:06:27', '2018-03-25 11:06:27', '', 'Анонс мероприятий', '', 'publish', 'closed', 'closed', '', 'anons-meropriyatij-2', '', '', '2018-03-25 14:14:42', '2018-03-25 11:14:42', '', 0, 'http://yush25um.bget.ru/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-03-25 14:06:27', '2018-03-25 11:06:27', '', 'Анонс мероприятий', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-03-25 14:06:27', '2018-03-25 11:06:27', '', 38, 'http://yush25um.bget.ru/2018/03/25/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-03-25 14:09:56', '2018-03-25 11:09:56', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-03-25 14:09:56', '2018-03-25 11:09:56', '', 0, 'http://yush25um.bget.ru/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2018-03-25 14:09:56', '2018-03-25 11:09:56', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2018-03-25 14:09:56', '2018-03-25 11:09:56', '', 0, 'http://yush25um.bget.ru/?p=41', 6, 'nav_menu_item', '', 0),
(42, 1, '2018-03-25 14:09:56', '2018-03-25 11:09:56', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-03-25 14:09:56', '2018-03-25 11:09:56', '', 0, 'http://yush25um.bget.ru/?p=42', 7, 'nav_menu_item', '', 0),
(43, 1, '2018-03-25 14:09:57', '2018-03-25 11:09:57', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-03-25 14:09:57', '2018-03-25 11:09:57', '', 0, 'http://yush25um.bget.ru/?p=43', 9, 'nav_menu_item', '', 0),
(44, 1, '2018-03-25 14:09:57', '2018-03-25 11:09:57', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-03-25 14:09:57', '2018-03-25 11:09:57', '', 0, 'http://yush25um.bget.ru/?p=44', 10, 'nav_menu_item', '', 0),
(45, 1, '2018-03-25 14:09:56', '2018-03-25 11:09:56', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-03-25 14:09:56', '2018-03-25 11:09:56', '', 0, 'http://yush25um.bget.ru/?p=45', 8, 'nav_menu_item', '', 0),
(46, 1, '2018-03-25 14:09:56', '2018-03-25 11:09:56', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-03-25 14:09:56', '2018-03-25 11:09:56', '', 0, 'http://yush25um.bget.ru/?p=46', 5, 'nav_menu_item', '', 0),
(47, 1, '2018-03-25 14:09:56', '2018-03-25 11:09:56', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-03-25 14:09:56', '2018-03-25 11:09:56', '', 0, 'http://yush25um.bget.ru/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2018-03-25 14:09:55', '2018-03-25 11:09:55', '', 'Фонд "Новая Земля"', '', 'publish', 'closed', 'closed', '', 'fond-novaya-zemlya', '', '', '2018-03-25 14:09:55', '2018-03-25 11:09:55', '', 0, 'http://yush25um.bget.ru/?p=48', 2, 'nav_menu_item', '', 0),
(49, 1, '2018-03-25 14:27:01', '2018-03-25 11:27:01', '', '5d_logo', '', 'inherit', 'open', 'closed', '', '5d_logo', '', '', '2018-03-25 14:27:21', '2018-03-25 11:27:21', '', 0, 'http://yush25um.bget.ru/wp-content/uploads/2018/03/5d_logo.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-03-25 14:27:30', '2018-03-25 11:27:30', 'http://yush25um.bget.ru/wp-content/uploads/2018/03/cropped-5d_logo.png', 'cropped-5d_logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-5d_logo-png', '', '', '2018-03-25 14:27:30', '2018-03-25 11:27:30', '', 0, 'http://yush25um.bget.ru/wp-content/uploads/2018/03/cropped-5d_logo.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-03-25 14:27:48', '2018-03-25 11:27:48', '{"dinelli_new::custom_logo":{"value":50,"type":"theme_mod","user_id":1,"date_modified_gmt":"2018-03-25 11:27:48"}}', '', '', 'trash', 'closed', 'closed', '', 'c6ce1f22-169d-4f6a-b622-4c7215e6f47b', '', '', '2018-03-25 14:27:48', '2018-03-25 11:27:48', '', 0, 'http://yush25um.bget.ru/2018/03/25/c6ce1f22-169d-4f6a-b622-4c7215e6f47b/', 0, 'customize_changeset', '', 0),
(52, 1, '2018-03-25 14:28:16', '2018-03-25 11:28:16', 'http://yush25um.bget.ru/wp-content/uploads/2018/03/cropped-5d_logo-1.png', 'cropped-5d_logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-5d_logo-1-png', '', '', '2018-03-25 14:28:16', '2018-03-25 11:28:16', '', 0, 'http://yush25um.bget.ru/wp-content/uploads/2018/03/cropped-5d_logo-1.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2018-03-25 14:28:36', '2018-03-25 11:28:36', '{"site_icon":{"value":52,"type":"option","user_id":1,"date_modified_gmt":"2018-03-25 11:28:34"}}', '', '', 'trash', 'closed', 'closed', '', 'e347a2f8-9f5e-4b24-a7bd-a72997bda79e', '', '', '2018-03-25 14:28:36', '2018-03-25 11:28:36', '', 0, 'http://yush25um.bget.ru/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2018-03-25 16:54:10', '2018-03-25 13:54:10', '{"dinelli::custom_logo":{"value":49,"type":"theme_mod","user_id":1,"date_modified_gmt":"2018-03-25 13:54:10"}}', '', '', 'trash', 'closed', 'closed', '', 'a7335a06-8fab-4426-a7e9-0cced368b09f', '', '', '2018-03-25 16:54:10', '2018-03-25 13:54:10', '', 0, 'http://yush25um.bget.ru/2018/03/25/a7335a06-8fab-4426-a7e9-0cced368b09f/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-03-25 17:53:52', '2018-03-25 14:53:52', '', 'Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov', '', 'inherit', 'open', 'closed', '', 'kniga_pyatoe_izmerenie_3_redaktsia_sergey_dolmatov', '', '', '2018-03-25 17:53:52', '2018-03-25 14:53:52', '', 0, 'http://yush25um.bget.ru/wp-content/uploads/2018/03/Kniga_Pyatoe_izmerenie_3_redaktsia_Sergey_Dolmatov.pdf', 0, 'attachment', 'application/pdf', 0),
(56, 1, '2018-03-25 18:01:02', '2018-03-25 15:01:02', '', 'Политика конфиденциальности', '', 'publish', 'closed', 'closed', '', 'politika-konfidentsialnosti', '', '', '2018-03-25 18:01:02', '2018-03-25 15:01:02', '', 0, 'http://yush25um.bget.ru/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-03-25 18:01:02', '2018-03-25 15:01:02', '', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-03-25 18:01:02', '2018-03-25 15:01:02', '', 56, 'http://yush25um.bget.ru/2018/03/25/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-03-25 19:03:07', '2018-03-25 16:03:07', '<div id="pl-18"  class="panel-layout" ><div id="pg-18-0"  class="panel-grid panel-no-style"  data-style="{&quot;background_image_attachment&quot;:false,&quot;background_display&quot;:&quot;tile&quot;,&quot;cell_alignment&quot;:&quot;flex-start&quot;}"  data-ratio="1"  data-ratio-direction="right" ><div id="pgc-18-0-0"  class="panel-grid-cell"  data-weight="1" ><div id="panel-18-0-0-0" class="so-panel widget widget_media_audio panel-first-child panel-last-child" data-index="0" >[siteorigin_widget class="WP_Widget_Media_Audio"]<input type="hidden" value="{&quot;instance&quot;:[],&quot;args&quot;:{&quot;before_widget&quot;:&quot;&lt;div id=\\&quot;panel-18-0-0-0\\&quot; class=\\&quot;so-panel widget widget_media_audio panel-first-child panel-last-child\\&quot; data-index=\\&quot;0\\&quot; &gt;&quot;,&quot;after_widget&quot;:&quot;&lt;\\/div&gt;&quot;,&quot;before_title&quot;:&quot;&lt;h3 class=\\&quot;widget-title\\&quot;&gt;&quot;,&quot;after_title&quot;:&quot;&lt;\\/h3&gt;&quot;,&quot;widget_id&quot;:&quot;widget-0-0-0&quot;}}" />[/siteorigin_widget]</div></div></div></div>', 'Аудио', '', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2018-03-25 19:03:07', '2018-03-25 16:03:07', '', 18, 'http://yush25um.bget.ru/2018/03/25/18-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(48, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"65b89e334be10aa4155b1dc9a7db9ac931dd5c5189f51b78eeb64d99aab2f5c8";a:4:{s:10:"expiration";i:1522141639;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1521968839;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:26:"add-post-type-reviews_text";i:1;s:27:"add-post-type-reviews_video";i:2;s:20:"add-post-type-events";i:3;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1521987174');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B9kLV5uhBlevD4gxkxeSKTcirGOpYi.', 'admin', 'yu.sh.2583@gmail.com', '', '2018-03-25 09:06:29', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
