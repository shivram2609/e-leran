-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 15, 2014 at 12:46 PM
-- Server version: 5.5.38
-- PHP Version: 5.3.10-1ubuntu3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetails`
--

CREATE TABLE IF NOT EXISTS `admindetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `zip` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `signature` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `passwordstatus` tinyint(1) NOT NULL,
  `remembertoken` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`, `passwordstatus`, `remembertoken`, `created`, `modified`) VALUES
(1, 'admin@admin.com', 'd8878123e54f3fb0c5b7637e1d7f5815', 1, 0, 'db6269382b517db72e72bc0e16f1aba4', '2013-04-26 00:00:00', '2013-09-13 10:49:08'),
(2, 'ralphtreilly@yahoo.com', '9a2ce73bde64af02061df81ec8b6c0cb', 1, 0, 'be568b67364057f8eda26dfaa2fcb605', NULL, '2013-07-26 04:08:27'),
(3, 'vijayetaduggal@zapbuild.com', '9a2ce73bde64af02061df81ec8b6c0cb', 1, 0, '', NULL, '2013-08-05 14:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `backupdbs`
--

CREATE TABLE IF NOT EXISTS `backupdbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `summary` text,
  `body` longtext,
  `published` tinyint(1) NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `in_rss` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `slug`, `summary`, `body`, `published`, `sticky`, `in_rss`, `meta_title`, `meta_description`, `meta_keywords`, `created`, `modified`) VALUES
(6, 'Techies are back', 'techies_back', 'Techies are back', '<p>\r\n	Techies are back</p>\r\n', 1, 0, 1, '', '', '', '2014-09-03 16:40:20', '2014-09-10 10:19:05'),
(2, 'My New blog', 'php-blog', 'It is the first useful blog.', '<p>\r\n	This is the body of blog.</p>\r\n', 1, 0, 1, '', '', '', '2014-08-12 14:47:59', '2014-08-28 14:10:25'),
(3, 'My New blog', 'newone', 'Hello', 'Hello There', 1, 0, 0, '', '', '', '2014-08-28 10:39:55', '2014-08-28 10:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE IF NOT EXISTS `blog_post_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `rss_channel_title` varchar(255) DEFAULT NULL,
  `rss_channel_description` text,
  `blog_post_count` int(11) NOT NULL DEFAULT '0',
  `under_blog_post_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `rss_channel_title`, `rss_channel_description`, `blog_post_count`, `under_blog_post_count`, `created`, `modified`) VALUES
(1, NULL, 1, 2, 'Php', 'php-programming', '', '', '', '', '', 2, 2, '2014-08-28 10:38:28', '2014-09-03 17:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories_blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_post_categories_blog_posts` (
  `blog_post_category_id` int(11) NOT NULL,
  `blog_post_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_post_category_id`,`blog_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_post_categories_blog_posts`
--

INSERT INTO `blog_post_categories_blog_posts` (`blog_post_category_id`, `blog_post_id`) VALUES
(1, 3),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE IF NOT EXISTS `blog_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `rss_channel_title` varchar(255) DEFAULT NULL,
  `rss_channel_description` text,
  `blog_post_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `rss_channel_title`, `rss_channel_description`, `blog_post_count`, `created`, `modified`) VALUES
(2, 'php', 'php', '', '', '', '', '', 1, '2014-09-03 17:57:18', '2014-09-03 17:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags_blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_post_tags_blog_posts` (
  `blog_post_tag_id` int(11) NOT NULL,
  `blog_post_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_post_tag_id`,`blog_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_post_tags_blog_posts`
--

INSERT INTO `blog_post_tags_blog_posts` (`blog_post_tag_id`, `blog_post_id`) VALUES
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `blog_settings`
--

CREATE TABLE IF NOT EXISTS `blog_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` varchar(255) NOT NULL,
  `setting_text` varchar(255) NOT NULL,
  `tip` varchar(255) DEFAULT NULL,
  `value` text,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_text_UNIQUE` (`setting_text`),
  UNIQUE KEY `setting_UNIQUE` (`setting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `blog_settings`
--

INSERT INTO `blog_settings` (`id`, `setting`, `setting_text`, `tip`, `value`, `modified`) VALUES
(1, 'meta_title', 'Meta Title', NULL, '1337 Institute of Technology - Blog', '2014-08-28 10:45:29'),
(2, 'meta_description', 'Meta Description', NULL, '', '0000-00-00 00:00:00'),
(3, 'meta_keywords', 'Meta Keywords', NULL, '', NULL),
(4, 'rss_channel_title', 'RSS Channel Title', NULL, 'My New Blog', NULL),
(5, 'rss_channel_description', 'RSS Channel Description', NULL, '', NULL),
(6, 'show_summary_on_post_view', 'Show post summary on post detail page?', '''Yes'' or ''No''', 'No', NULL),
(7, 'show_categories_on_post_view', 'Show post categories on post detail page?', '''Yes'' or ''No''', 'No', NULL),
(8, 'show_tags_on_post_view', 'Show post tags on post detail page?', '''Yes'' or ''No''', 'Yes', NULL),
(9, 'use_summary_or_body_on_post_index', 'Use the summary or the post body on the post index page?', '''Summary'' or ''Body''', 'Summary', NULL),
(10, 'use_summary_or_body_in_rss_feed', 'Use the summary or the post body in the RSS feed?', '''Summary'' or ''Body''', 'Body', NULL),
(11, 'published_format_on_post_index', 'Published date/time format on post index page', 'e.g. ''d M Y'' see php.net/date', '<\\s\\p\\a\\n \\c\\l\\a\\s\\s="\\d\\a\\y">d</\\s\\p\\a\\n> <\\s\\p\\a\\n \\c\\l\\a\\s\\s="\\m\\o\\n\\t\\h">M</\\s\\p\\a\\n> <\\s\\pa\\n \\c\\l\\a\\s\\s="\\y\\e\\a\\r">y</\\s\\p\\a\\n>', NULL),
(12, 'published_format_on_post_view', 'Published date/time format on post view page', 'e.g. ''d M Y'' see php.net/date', '<\\s\\p\\a\\n \\c\\l\\a\\s\\s="\\d\\a\\y">d</\\s\\p\\a\\n> <\\s\\p\\a\\n \\c\\l\\a\\s\\s="\\m\\o\\n\\t\\h">M</\\s\\p\\a\\n> <\\s\\p\\a\\n \\c\\l\\a\\s\\s="\\y\\e\\a\\r">y</\\s\\p\\a\\n>', NULL),
(13, 'og:site_name', 'Open Graph: Site Name', NULL, 'My New Blog', NULL),
(14, 'fb_admins', 'Facebook Admins', NULL, NULL, NULL),
(15, 'use_disqus', 'Use Disqus', '''Yes'' or ''No''', 'No', NULL),
(16, 'disqus_shortname', 'Disqus Shortname', NULL, NULL, NULL),
(17, 'disqus_developer', 'Disqus Developer Mode', '''Yes'' or ''No''', 'Yes', NULL),
(18, 'show_share_links', 'Show the share buttons on blog posts?', '''Yes'' or ''No''', 'Yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumbs`
--

CREATE TABLE IF NOT EXISTS `breadcrumbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `keyval` varchar(255) DEFAULT NULL,
  `keycontroller` varchar(255) DEFAULT NULL,
  `keyaction` varchar(255) DEFAULT NULL,
  `keylink` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `breadcrumbs`
--

INSERT INTO `breadcrumbs` (`id`, `controller`, `action`, `keyval`, `keycontroller`, `keyaction`, `keylink`, `status`, `created`, `modified`) VALUES
(1, 'admins', 'dashboard', 'Home', 'admins', 'dashboard', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(2, 'admins', 'changepassword', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(3, 'admins', 'changepassword', 'Change Password', 'admins', 'changepassword', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(4, 'admins', 'index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(5, 'admins', 'index', 'Admins', 'admins', 'index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(6, 'admins', 'add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(7, 'admins', 'add', 'Admins', 'admins', 'index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(8, 'admins', 'add', 'Add Admin', 'admins', 'index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(9, 'admins', 'edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(10, 'admins', 'edit', 'Admins', 'admins', 'index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(11, 'admins', 'edit', 'Edit Admin', 'admins', 'index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(12, 'admins', 'editprofile', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(13, 'admins', 'editprofile', 'Edit Profile', 'admins', 'index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(14, 'countries', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(15, 'countries', 'admin_index', 'Countries', 'countries', 'admin_index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(16, 'countries', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(17, 'countries', 'admin_add', 'Countries', 'countries', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(18, 'countries', 'admin_add', 'Add Country', 'countries', 'admin_add', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(19, 'countries', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(20, 'countries', 'admin_edit', 'Countries', 'countries', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(21, 'countries', 'admin_edit', 'Edit Country', 'countries', 'admin_edit', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(22, 'states', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(23, 'states', 'admin_index', 'States', 'states', 'admin_index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(24, 'states', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(25, 'states', 'admin_add', 'States', 'states', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(26, 'states', 'admin_add', 'Add State', 'states', 'admin_add', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(27, 'states', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(28, 'states', 'admin_edit', 'States', 'states', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(29, 'states', 'admin_edit', 'Edit State', 'states', 'admin_edit', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(30, 'cities', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(31, 'cities', 'admin_index', 'Cities', 'cities', 'admin_index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(32, 'cities', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(33, 'cities', 'admin_add', 'Cities', 'cities', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(34, 'cities', 'admin_add', 'Add City', 'cities', 'admin_add', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(35, 'cities', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(36, 'cities', 'admin_edit', 'Cities', 'cities', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(37, 'cities', 'admin_edit', 'Edit city', 'cities', 'admin_edit', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(38, 'cmspages', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(39, 'cmspages', 'admin_index', 'Pages', 'cmspages', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(40, 'cmspages', 'admin_index', 'Listing', 'cmspages', 'admin_index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(41, 'cmspages', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(42, 'cmspages', 'admin_add', 'Pages', 'cmspages', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(43, 'cmspages', 'admin_add', 'Add Page', 'cmspages', 'admin_add', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(44, 'cmspages', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(45, 'cmspages', 'admin_edit', 'Pages', 'cmspages', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(46, 'cmspages', 'admin_edit', 'Edit Page', 'cmspages', 'admin_edit', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(47, 'cmsemails', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(48, 'cmsemails', 'admin_index', 'Email Templates', 'cmsemails', 'admin_index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(49, 'cmsemails', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(50, 'cmsemails', 'admin_add', 'Email Templates', 'cmsemails', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(51, 'cmsemails', 'admin_add', 'Add Template', 'cmsemails', 'admin_add', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(52, 'cmsemails', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(53, 'cmsemails', 'admin_edit', 'Email Templates', 'cmsemails', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(54, 'cmsemails', 'admin_edit', 'Edit Template', 'cmsemails', 'admin_edit', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(55, 'users', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(56, 'users', 'admin_index', 'Users', 'cmsemails', 'admin_index', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(57, 'users', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(58, 'users', 'admin_add', 'Users', 'users', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(59, 'users', 'admin_add', 'Add User', 'users', 'admin_add', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(60, 'users', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(61, 'users', 'admin_edit', 'Users', 'users', 'admin_index', 1, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(62, 'users', 'admin_edit', 'Edit User', 'users', 'admin_edit', 0, 1, '2013-04-29 12:26:17', '2013-04-29 12:26:17'),
(63, 'packages', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00'),
(64, 'packages', 'admin_index', 'Packages', 'packages', 'admin_index', 0, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00'),
(65, 'packages', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-30 00:00:00', '2013-04-30 00:00:00'),
(66, 'packages', 'admin_add', 'Add Package', 'packages', 'admin_add', 0, 1, '2013-04-30 00:00:00', '2013-04-30 00:00:00'),
(67, 'packages', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00'),
(68, 'packages', 'admin_edit', 'Edit Package', 'packages', 'admin_edit', 0, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00'),
(69, 'industries', 'admin_index', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00'),
(70, 'industries', 'admin_index', 'Industry', 'industries', 'admin_index', 0, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00'),
(71, 'industries', 'admin_add', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-30 00:00:00', '2013-04-30 00:00:00'),
(72, 'industries', 'admin_add', 'Add Industry', 'industries', 'admin_add', 0, 1, '2013-04-30 00:00:00', '2013-04-30 00:00:00'),
(73, 'industries', 'admin_edit', 'Home', 'admins', 'dashboard', 1, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00'),
(74, 'industries', 'admin_edit', 'Edit Industry', 'industries', 'admin_edit', 0, 1, '2013-04-29 00:00:00', '2013-04-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `status`, `sort`, `created`, `modified`) VALUES
(1, 'Technology', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(2, 'Business', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(3, 'Design', 1, 1, '2013-07-23 18:03:56', '2013-07-23 18:03:56'),
(4, 'Arts and Photography', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(5, 'Health and Fitness', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(6, 'Lifestyle', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(7, 'Math and Science', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(8, 'Education', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(9, 'Languages', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(10, 'Humanities', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:29'),
(11, 'Social Sciences', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:30'),
(12, 'Music', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:30'),
(13, 'Crafts and Hobbies', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:30'),
(14, 'Sports', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:30'),
(15, 'Games', 1, 1, '2013-07-23 18:03:56', '2013-07-23 18:03:56'),
(16, 'Other', 0, 1, '2013-07-23 18:03:56', '2013-09-17 14:59:30'),
(17, 'Programming', 1, 1, '2013-07-23 18:03:56', '2013-07-23 18:03:56'),
(18, 'Applications', 1, 1, '2013-07-23 18:03:56', '2013-07-23 18:03:56'),
(19, 'Software', 1, 1, '2013-07-23 18:03:56', '2013-07-23 18:03:56'),
(20, 'Hacking', 1, 1, '2013-07-23 18:03:56', '2013-07-23 18:03:56'),
(23, 'Others', 1, 2, '2013-10-30 00:00:00', '2013-10-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cmsemails`
--

CREATE TABLE IF NOT EXISTS `cmsemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailfrom` varchar(255) DEFAULT NULL,
  `mailsubject` varchar(255) DEFAULT NULL,
  `mailcontent` longtext,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `cmsemails`
--

INSERT INTO `cmsemails` (`id`, `mailfrom`, `mailsubject`, `mailcontent`, `status`, `created`, `modified`) VALUES
(1, 'noreply@1337institute.com', 'Registration  Confirmation', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	Your registration with 1337 Institute of Technology has been successful.</p>\r\n<p>\r\n	Please {LINK} to activate your account.</p>\r\n', 1, '2013-04-29 10:54:50', '2013-11-28 07:44:46'),
(2, 'noreply@1337institute.com', 'Forgot Password', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	<br />\r\n	It happens to the best of us. We all forget our password sometimes.</p>\r\n<p>\r\n	So here&#39;s a new password for you: {PASSWORD}</p>\r\n<p>\r\n	You can use this password from now onwards.</p>\r\n<p>\r\n	If you didn&#39;t request this, please ignore this email.</p>\r\n', 1, '2013-05-06 11:31:14', '2013-11-28 07:41:03'),
(11, 'noreply@1337institute.com', 'Message', '<p>\r\n	<strong>{SENDER}</strong> has sent a message via 1337 Institute of Technology :</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	{MESSAGE}</p>\r\n', 1, '2013-08-06 00:00:00', '2013-11-28 07:42:10'),
(12, 'noreply@1337institute.com', 'Successfull Enrolled to Course', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	You have successfully enrolled to course: {COURSE}.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '2013-08-23 17:10:03', '2013-11-28 07:46:28'),
(13, 'noreply@1337institute.com', 'New Enrollment to Course', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	This is to inform you that a new student has been enrolled for a course you created on 1337 Institute of Technology.</p>\r\n<p>\r\n	Below are the enrollment details:</p>\r\n<p>\r\n	Student Name&nbsp; : <strong>{STUDENT}</strong></p>\r\n<p>\r\n	Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <strong>{COURSE}</strong></p>\r\n<p>\r\n	Please view the site to get additional information regarding your account.</p>\r\n', 0, '2013-08-24 12:42:01', '2013-11-28 07:43:09'),
(14, 'noreply@1337institute.com', 'User Follow Notification', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	This mail is to to notify you that {FOLLOWER} has started following your profile.</p>\r\n', 0, '2013-09-17 12:45:19', '2013-11-28 07:49:09'),
(15, 'noreply@1337institute.com', 'New Question Notification', '<p>\r\n	Dear <strong>{USER}</strong>,</p>\r\n<p>\r\n	This is to inform you that {ASKEDBY} has aked a new question from course {COURSE} :</p>\r\n<p>\r\n	{QUESTION}.</p>\r\n', 0, '2013-09-17 12:48:00', '2013-11-28 07:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `cmspages`
--

CREATE TABLE IF NOT EXISTS `cmspages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `metatitle` varchar(255) DEFAULT NULL,
  `seourl` varchar(255) DEFAULT NULL,
  `metadesc` text,
  `metakeyword` text,
  `status` tinyint(1) NOT NULL,
  `showinfooter` tinyint(1) NOT NULL,
  `showinleft` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cmspages`
--

INSERT INTO `cmspages` (`id`, `name`, `content`, `metatitle`, `seourl`, `metadesc`, `metakeyword`, `status`, `showinfooter`, `showinleft`, `created`, `modified`) VALUES
(3, 'Terms of Use', '<p>\r\n	<strong>1. Introduction</strong></p>\r\n<p>\r\n	THIS AGREEMENT BINDS YOU OR THE COMPANY YOU REPRESENT (&quot;YOU,&quot; OR &quot;YOUR&quot;) TO THE TERMS AND CONDITIONS SET FORTH HEREIN IN CONNECTION WITH YOUR USE OF IOT, INC.&#39;S (&quot;OUR&quot;, &quot;WE&quot;, &quot;COMPANY&quot; OR &quot;IOT&quot;) SOFTWARE, SERVICES OR OTHER OFFERINGS ON OUR SITE (COLLECTIVELY, OUR &quot;PRODUCTS&quot;). BY USING ANY OF THE COMPANY PRODUCTS OR CLICKING ON THE &quot;SIGNUP&quot; BUTTON, YOU AGREE TO BECOME BOUND BY THE TERMS AND CONDITIONS OF THIS AGREEMENT. IF YOU DO NOT AGREE TO ALL THE TERMS AND CONDITIONS OF THIS AGREEMENT, CLICK ON THE &quot;CANCEL&quot; BUTTON AND DO NOT USE THE COMPANY PRODUCTS. COMPANY&#39;S ACCEPTANCE IS EXPRESSLY CONDITIONED UPON YOUR ASSENT TO ALL THE TERMS AND CONDITIONS OF THIS AGREEMENT, TO THE EXCLUSION OF ALL OTHER TERMS. IF THESE TERMS AND CONDITIONS ARE CONSIDERED AN OFFER BY COMPANY, ACCEPTANCE IS EXPRESSLY LIMITED TO THESE TERMS.</p>\r\n<p>\r\n	<strong>2. Privacy</strong></p>\r\n<p>\r\n	Any personal information submitted in connection with Your use of the Products or the Site is subject to Our Privacy Policy, located at <a href="javascript:void(0);">www.IOT.com/static/privacy</a></p>\r\n<p>\r\n	<strong>3. General</strong></p>\r\n<p>\r\n	The Products enable Users to connect with independent contractor instructors (the &quot;Instructors&quot;) who provide live and recorded instruction, tutoring, and learning services in Our proprietary online classrooms (the &quot;Courses&quot;). The Products include, without limitation, facilitating and hosting Courses, the Courses and supporting materials, and taking feedback from Users.</p>\r\n<p>\r\n	Company reserves the right to revise these Terms in its sole discretion at any time by posting the changes on the Site. Changes become effective thirty (30) days after posting. Your continued use of Products after change become effective shall mean that You accept those changes. You should visit the Site regularly to ensure You are aware of the latest version of the Terms.</p>\r\n<p>\r\n	The Company may modify the Products or discontinue their availability at any time.</p>\r\n<p>\r\n	You are solely responsible for all service, telephony, data charges and/or other fees and costs associated with Your access to and use of the Products, as Well as for obtaining and maintaining all telephone, computer hardware, and other equipment required for such access and use.</p>\r\n<p>\r\n	If You elect to access or use Products that involve payment of a fee, then You agree to pay, and will be responsible for payment of, that fee and all taxes associated with such access or use. If You provide credit card information to pay for such fees then You hereby represent and warrant that You are authorized to supply such information and hereby authorize the Company to charge Your credit card on a regular basis to pay the fees as they are due. Unless otherwise stated, all fees are quoted in U.S. Dollars. If Your payment method fails or Your account is past due, then We may collect fees oWed using other collection mechanisms. This may include charging other payment methods on file with us and/or retaining collection agencies and legal counsel. We may also block Your access to any Products pending resolution of any amounts due by You to Company.</p>\r\n<p>\r\n	All of Your use, access and other activities relating to the Site and the Products must be in compliance with all applicable laws and regulations, including, without limitations, laws relating to copyright and other intellectual property use, and to privacy and personal identity. In connection with Your use of the Products and Site, You must not provide incorrect or knowingly false information; copy, distribute, modify, reverse engineer, deface, tarnish, mutilate, hack, or interfere with the Products or operation of the Site; frame or embed the Site or Products; impersonate another person or gain unauthorized access to another person&#39;s Account; introduce any virus, worm, spyware or any other computer code, file or program that may or is intended to damage or hijack the operation of any hardware, software or telecommunications equipment, or any other aspect of the Products or operation of the Site; scrape, spider, use a robot or other automated means of any kind to access the Products.</p>\r\n<p>\r\n	<strong>4. General Disclaimer</strong></p>\r\n<p>\r\n	The Site is only a marketplace for Instructors and Users. We do not hire or employ Instructors nor are We responsible or liable for any interactions involved betWeen the Instructors and their respective clients. We are not responsible for disputes, claims, losses, injuries, or damage of any kind that might arise out of or relate to conduct of Instructors or Users, including, but not limited to, any User&#39;s reliance upon any information provided by an Instructor.</p>\r\n<p>\r\n	We do not control Submitted Content (as defined below) posted on the Site and, as such, do not guarantee in any manner the reliability, validity, accuracy or truthfulness of such Submitted Content. You also understand that by using the Products may expose You to Submitted Content that You consider offensive, indecent, or objectionable. The Company has no responsibility to keep such content from You and no liability for Your access or use of any Submitted Content.</p>\r\n<p>\r\n	The Site and Products may give You access to links to third-party Websites (&quot;Third Party Sites&quot;), either directly or through Courses or Instructors. The Company does not endorse any of these Third Party Sites and does not control them in any manner. Accordingly, the Company does not assume any liability associated with Third Party Sites. You need to take appropriate steps to determine whether accessing a Third Party Site is appropriate, and to protect Your personal information and privacy on such Third Party Site.</p>\r\n<p>\r\n	<strong>5. Conduct</strong></p>\r\n<p>\r\n	You may only access the Products for lawful purposes. You are solely responsible for the knowledge of and adherence to any and all laws, rules, and regulations pertaining to Your use of the Products. You agree not to use the Products or the Company Content (as defined below) to recruit, solicit, or contact in any form Instructors or potential users for employment or contracting for a business not affiliated with us without Our advance written permission, which may be withheld in Our sole discretion. You assume any and all risks from any meetings or contact betWeen You and any Instructors or other Users of the Products.</p>\r\n<p>\r\n	<strong>6. Specific Obligations of Instructors</strong></p>\r\n<p>\r\n	If You are instructing Users in connection with a Course You are an &quot;Instructor&quot; and the following additional terms and conditions apply, and You represent, warrant and covenant that:</p>\r\n<ul>\r\n	<li>\r\n		You are subject to the Company&#39;s approval, which We may grant or deny in Our sole discretion;</li>\r\n	<li>\r\n		You need to visit http://www.IOT.com/teach and complete the Instructor enrollment form and if You will charge fees for Your Courses You will also need to agree to the Premium Instructor Pricing terms;</li>\r\n	<li>\r\n		You will be responsible for all of Your Submitted Content, that You own or have the necessary licenses, rights, consents, and permissions, and have the authority to authorize Company, to reproduce, distribute, publicly perform (including by means of a digital audio transmission), publicly display, communicate to the public, promote, market and otherwise use and exploit any of Your Submitted Content on and through the Products in the manner contemplated by these this Instructor Agreement, and that no Submitted Content shall infringe or misappropriate any intellectual property right of a third party;</li>\r\n	<li>\r\n		You have the required qualifications, credentials and expertise, including without limitation, education, training, knowledge, and skill sets, to teach and offer the services You offer on and through the Site and the Products;</li>\r\n	<li>\r\n		You will not post any inappropriate, offensive, racist, hateful, sexist, sex-related, false, misleading, infringing, defamatory or libelous content;</li>\r\n	<li>\r\n		You will not upload, post or otherwise transmit any unsolicited or unauthorized advertising, promotional materials, junk mail, spam, chain letters, pyramid schemes or any other form of solicitation (commercial or otherwise) through the Products or to Users;</li>\r\n	<li>\r\n		You will not use the Products for any business other than for providing tutoring, teaching and instructional services to Users of the Site;</li>\r\n	<li>\r\n		You will not engage in any activity that will require Company to obtain any licenses from or pay any royalties to any third party, including, by way of example and not limitation, the payment of royalties for the public performance of any musical works or sound recordings;</li>\r\n	<li>\r\n		You will not copy, modify or distribute Company Content except as permitted in this Instructor Agreement;</li>\r\n	<li>\r\n		You will not interfere with or otherwise prevent other Instructors from providing their services or Courses;</li>\r\n	<li>\r\n		You will maintain Your enrollment and account information, and all such enrollment and account information shall be accurate;</li>\r\n	<li>\r\n		You shall respond promptly to Users seeking Your services and ensure a quality of service commensurate with the standards of Your industry and instruction services in general;</li>\r\n	<li>\r\n		You are over the age of 18 or if not a third party parent or legal guardian has agreed to the terms of this Instructor Agreement and will assume responsibility and liability for Your performance and compliance hereunder.</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>7. Specific Obligations of Users using the Site</strong></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	If You are a User in search of, or engaging, Instructors, Yourepresent, warrant and covenant that:</p>\r\n<ul>\r\n	<li>\r\n		You have read, understood, and agree to be bound by the pricing information (see the Pricing section below) before using the Site or registering for a Course;</li>\r\n	<li>\r\n		If You are under the age of 18, You have obtained parental or legal guardian consent before using the Site, contacting an Instructor, or registering for a Course.</li>\r\n	<li>\r\n		You will not upload, post or otherwise transmit any unsolicited or unauthorized advertising, promotional materials, junk mail, spam, chain letters, pyramid schemes or any other form of solicitation (commercial or otherwise) through the Site or the Products;</li>\r\n	<li>\r\n		You will not post any inappropriate, offensive, racist, hateful, sexist, sex-related, false, misleading, infringing, defamatory or libelous content;</li>\r\n	<li>\r\n		You will not reproduce, distribute, publicly display, publicly perform, communicate to the public, create derivative works from or otherwise use and exploit any Company Content, the Products or Courses or Submitted Content except as permitted by these Terms or the relevant Instructor as applicable;</li>\r\n	<li>\r\n		You will not disclose any personal information to an Instructor, and otherwise will assume responsibility for controlling how Your personal information is disclosed or used, including, without limitation, taking appropriate steps to protect such information; and</li>\r\n	<li>\r\n		You will not solicit personal information from any Instructor or other User.</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>8. Registration</strong></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	To use certain Products, You will need to register and obtain an account, username and password. When You register, the information You provide to us during the registration process will help us in offering content, customer service, and network management. You are solely responsible for maintaining the confidentiality of Your account, username, and password (collectively, Your &quot;Account&quot;) and for all activities associated with or occurring under Your Account. You represent and warrant that Your Account information will be accurate at all times. You must notify us (a) immediately of any unauthorized use of Your Account and any other breach of security, and (b) ensure that You exit from Your Account at the end of each use of the Products. We cannot and will not be responsible for any loss or damage arising from Your failure to comply with the foregoing requirements or as a result of use of Your Account, either with or without Your knowledge, prior to Your notifying us of unauthorized access to Your Account.</p>\r\n<p>\r\n	You may not transfer Your Account to any other person and You may not use anyone else&#39;s Account at any time without the permission of the account holder. In cases where You have authorized or registered another individual, including a minor, to use Your Account, You are fully responsible for (i) the online conduct of such User; (ii) controlling the User&#39;s access to and use of the Products; and (iii) the consequences of any misuse.</p>\r\n<p>\r\n	<strong>9. Content, Licenses &amp; Permissions</strong></p>\r\n<p>\r\n	All software, technology, designs, materials, information, communications, text, graphics, links, electronic art, animations, illustrations, artwork, audio clips, video clips, photos, images, reviews, ideas, and other data or copyrightable materials or content, including the selection and arrangements thereof is &quot;Content.&quot; Where the Company provides Content to You in connection with the Products, including, without limitation, the Software and the Products and the Site, it is &quot;Company Content.&quot; Content uploaded, transmitted or posted to the Site or through the Products by a User or Instructor is &quot;Submitted Content.&quot; Content remains the proprietary property of the person or entity supplying it (or their affiliated and/or third party providers and suppliers) and is protected, without limitation, pursuant to U.S. and foreign copyright and other intellectual property laws. You hereby represent and warrant that You have all licenses, rights, consents, and permissions necessary to grant the rights set forth in these Terms to Company with respect to Your Submitted Content and that Company shall not need to obtain any licenses, rights, consents, or permissions from, or make any payments to, any third party for any use or exploitation of Your Submitted Content as authorized in these Terms or have any liability to You or any other party as a result of any use or exploitation of Your Submitted Content as authorized in these Terms.</p>\r\n<p>\r\n	You hereby grant the Company a non-exclusive right and license to reproduce, distribute, publicly perform, offer, market and otherwise use and exploit the Submitted Content on the Site and through the Products, and sublicense it to Instructors and Users for these purposes directly or through third parties. Notwithstanding the foregoing, You have the right to remove all or any portion of Your Submitted Content from the Site at any time. Removal of Your Submitted Content will terminate the foregoing license and rights sixty (60) days after such removal as to new uses, provided, however, that any rights given to Users or Instructors prior to that time will continue in accordance with the terms granted to such Users or Instructors.</p>\r\n<p>\r\n	The Company hereby grants You (as a User) a limited, non-exclusive, non-transferable license to access and use Submitted Content and Company Content, for which You have paid all required fees, solely for Your personal, non-commercial, educational purposes through the Site and the Products, in accordance with these Terms and any conditions or restrictions associated with particular Courses or Products. All other uses are expressly prohibited absent Our express written consent. You may not reproduce, redistribute, transmit, assign, sell, broadcast, rent, share, lend, modify, adapt, edit, create derivative works of, license, or otherwise transfer or use any Submitted Content or Company Content unless We give You explicit permission to do so. Submitted Content and Company Content is licensed, and not sold, to You. Instructors may not grant You license rights to Submitted Content You access or acquire through the Services and any such direct license shall be null and void and a violation of these Terms</p>\r\n<p>\r\n	You agree that We may record all or any part of any Courses (including voice chat communications) for quality control and delivering, marketing, promoting, demonstrating or operating the Site and the Products. You hereby grant the Company a permission and release to use Your name, likeness, image or voice in connection with offering, delivering, marketing, promoting, demonstrating, and selling the Site, Products, Courses, Company Content and Submitted Content and waive any and all rights of privacy, publicity, or any other rights of a similar nature in connection therewith.</p>\r\n<p>\r\n	THE COMPANY RESPECTS ALL COPYRIGHT, PRIVACY, DEFAMATION AND OTHER LAWS RELATING TO CONTENT AND INFORMATION AND WILL NOT TOLERATE VIOLATION OF SUCH LAWS. NOTWITHSTANDING THE FOREGOING, THE COMPANY DOES NOT SCREEN THE SUBMITTED CONTENT AND ALL USE OF THE SUBMITTED CONTENT BY YOU IS AT YOUR OWN RISK AND THE COMPANY SHALL HAVE NO LIABILITY FOR SUCH USE. IN PARTICULAR, NO REVIEW OR POSTING OR APPEARANCE OF THE SUBMITTED CONTENT ON THE SITE OR THROUGH THE PRODUCTS IS INTENDED TO ACT AS AN ENDORSEMENT OR REPRESENTATION THAT ANY SUBMITTED CONTENT IS FREE OFVIOLATION OF ANY COPYRIGHT, PRIVACY OR OTHER LAWS OR WILL SUIT A PARTICULAR PURPOSE OR BE ACCURATE OR USEFUL. If You believe that Submitted Content of Yours violates any law or regulation or is inaccurate or poses any risk whatsoever to a third party it is Your responsibility to take such steps You deem necessary to correct the situation. If You believe that Submitted Content of a third party or any Company Content violates any laws or regulations, including, without limitation, any copyright laws, You should report it to the Company in accordance with the procedures that We maintain at <a href="javascript:void(0);">www.IOT.com/static/copyright</a>.</p>\r\n<p>\r\n	All rights not expressly granted in these Terms are retained by the Content owners and these Terms do not grant any implied licenses.</p>\r\n<p>\r\n	<strong>Pricing for Paid Courses</strong></p>\r\n<p>\r\n	Unless a Course is made available through the IOT Deals Program (as described below), a Course Instructor will be solely responsible for determining the fees to be charged for such Course, in accordance with the Instructor terms and conditions found at <a href="javascript:void(0);">www.IOT.com/static/premium-instructor-agreements</a>. If You are a User, You agree to pay the fees for Courses that You take, and hereby authorize Us to charge Your credit card for these amounts. We will charge Your credit card monthly for all amounts owed. If Your credit card is declined, You agree to pay Us the fees within thirty (30) days of notification from Us, and pay (at Our discretion) a late payment charge at 1.5% per month, or the maximum permitted by law, whichever is greater.</p>\r\n<p>\r\n	<strong>Refunds</strong></p>\r\n<p>\r\n	IOT offers Users a thirty (30)-day, no-questions-asked money back guarantee on Courses that are not purchased through IOT&#39;s iOS applications. If you, as a User, are unhappy with such a Course and request a refund within thirty (30) days of the date that you paid for access to that Course, we will provide you with a full refund of the amount you paid. To request a refund, please contact us via support.IOT.com. Please note that if we believe that you are abusing our refund policy in our sole discretion, we reserve the right to suspend or terminate your account and refuse or restrict any and all current or future use of the Company Products, without any liability to you. In addition, please note that notwithstanding anything to the contrary in these Terms, IOT does not provide refunds for Courses purchased through our iOS applications. All sales of Courses through IOT&#39;s iOS applications are final.</p>\r\n<p>\r\n	You, as an Instructor, acknowledge and agree that Users have the right to receive a refund as set forth in this section. Neither Instructors nor Company shall receive any payments, fees or commissions for any transactions for which a refund has been granted. In the event that a User requests a refund for a Course after IOT has sent an Instructor payment for that Course, IOT reserves the right to either (1) deduct the amount of such refund from the next payment to be sent to that Instructor, or (2) require that Instructor to refund any amounts refunded to Users for Instructor&#39;s Course to the extent no additional payments are due from IOT to Instructor or such payments due Instructor are insufficient to cover the amounts refunded to Users.</p>\r\n<p>\r\n	<strong>10. Trademarks</strong></p>\r\n<p>\r\n	The trademarks, service marks, and logos (the &quot;Trademarks&quot;) used and displayed on the Site, in the Products or in any Company Content are Our registered or unregistered Trademarks or of Our suppliers or third parties and are protected pursuant to U.S. and foreign trademark laws. All rights are reserved and You may not alter or obscure the Trademarks, or link to them without Our prior approval.</p>\r\n<p>\r\n	<strong>11. Warranty Disclaimer</strong></p>\r\n<p>\r\n	THE PRODUCTS, SITE, COMPANY CONTENT, SUBMITTED CONTENT, COURSES, AND ANY OTHER MATERIALS MADE AVAILABLE ON OR THROUGH THE SITE OR THE PRODUCTS ARE PROVIDED &quot;AS IS,&quot; WITHOUT ANY WARRANTIES OF ANY KIND AND THE COMPANY HEREBY DISCLAIMS ALL SUCH WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT, ACCURACY, FREEDOM FROM ERRORS, SUITABILITY OF CONTENT, OR AVAILABILITY.</p>\r\n<p>\r\n	<strong>12. Limitation of Liability</strong></p>\r\n<p>\r\n	NEITHER PARTY SHALL BE LIABLE HEREUNDER UNDER ANY THEORY OF LIABLITY, INCLUDING, WITHOUT LIMITATION, CONTRACT, TORT OR NEGLIGENCE, FOR ANY INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES OR LOST PROFITS. THE COMPANY&#39;S TOTAL LIABILITY HEREUNDER SHALL BE LIMITED TO THE AMOUNTS PAID IN CONNECTION WITH THE COURSES OR PRODUCTS UNDER WHICH SUCH LIABILITY AROSE.</p>\r\n<p>\r\n	<strong>13. Indemnification</strong></p>\r\n<p>\r\n	You hereby indemnify, defend and hold harmless the Company, and its affiliates, officers, directors, agents, partners, employees, licensors, representatives and third party providers from and against all losses, expenses, damages, costs, claims and demands, including reasonable attorneys&#39; fees and related costs and expenses, due to or arising out of Your breach of any representation or warranty hereunder. We reserve the right, at Our own expense, to assume the exclusive defense and control of any matter otherwise subject to indemnification by You, and in such case, You agree to fully cooperate with such defense and in asserting any available defenses.</p>\r\n<p>\r\n	<strong>14. Termination</strong></p>\r\n<p>\r\n	We may terminate Your use of the Products or Site immediately without notice for any breach by You of these Terms or any of Our applicable policies, as posted on the Site from time to time. We may discontinue offering any Product, Course, or Content at any time (which will terminate Your right to offer these Courses if You are an Instructor). You may terminate Your use of the Site or the Products at any time, either by ceasing to access them, or by contacting us at support @IOT.com (but if You are an Instructor then Users enrolled in Your Courses prior to termination shall continue to have access to them for the duration of the Course). We have no obligation to retain any of Your Account or Submitted Content for any period of time beyond what may be required by applicable law. Upon termination, You must cease all use of the Site, Products and Content. Any accrued rights to payment and Sections 4, 5, 10-15 and all representations and warranties shall survive termination.</p>\r\n<p>\r\n	<strong>15. Miscellaneous</strong></p>\r\n<p>\r\n	1. Entire Agreement. These Terms and any policies applicable to You posted on the Site constitute the entire agreement between the parties with respect to the subject matter hereof, and supersede all previous written or oral agreements between the parties with respect to such subject matter.</p>\r\n<p>\r\n	2. Severability. If any provision of these Terms is found to be illegal, void or unenforceable, then that provision shall be deemed severable from these Terms and shall not affect the validity and enforceability of any remaining provisions of these Terms.</p>\r\n<p>\r\n	3. Waiver. A provision of these Terms may be waived only by a written instrument executed by the party entitled to the benefit of such provision. The failure of Company to exercise or enforce any right or provision of these Terms will not constitute a waiver of such right or provision.</p>\r\n<p>\r\n	4. Notice. Any notice or other communication to be given hereunder will be in writing and given by facsimile, postpaid registered or certified mail return receipt requested, or electronic mail.</p>\r\n<p>\r\n	5. No Agency. Nothing in these Terms shall be construed as making either party the partner, joint venture, agent, legal representative, employer, contractor or employee of the other. Neither the Company nor any other party to this Agreement shall have, or hold itself out to any third party as having, any authority to make any statements, representations or commitments of any kind, or to take any action that shall be binding on the other except as provided for herein or authorized in writing by the party to be bound.</p>\r\n<p>\r\n	6. These Terms and Your use of the Site and the Products shall be governed by the substantive laws of the State of California without reference to its choice or conflicts of law principles.</p>\r\n', 'Terms of use', 'terms-of-use', 'terms', 'terms', 1, 1, 1, '2013-08-13 14:38:32', '2014-01-04 12:51:42'),
(4, 'About Us', '<p>\r\n	About IOT</p>\r\n', 'about-us', 'about-us', 'about-us', 'about-us1', 1, 1, 1, '2013-08-13 19:28:57', '2014-06-06 17:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `default_header` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `heading`, `default_header`, `value`, `created`, `modified`) VALUES
(1, 'Commission(%)', 'SITE_COMMISSION', '10', '2013-04-29 00:00:00', '2014-08-06 18:26:16'),
(2, 'Instructor Default Commission', 'INSTRUCTOR_COMMISSION', '5', '2013-04-26 00:00:00', '2014-08-06 18:26:16'),
(5, 'Contact Us Email', 'CONTACT_MAIL', 'shivamsharma@zapbuild.com', '2013-06-10 00:00:00', '2014-08-06 18:26:16'),
(6, 'Paypal Username', 'API_USERNAME', '1337institute_api1.gmail.com', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(7, 'Paypal Password', 'API_PASSWORD', '24GFY3LNUVNFNGYW', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(8, 'Paypal Signature', 'API_SIGNATURE', 'Ai1PaghZh5FmBLCDCTQpwG8jB264AAkxBWf2X2f5XXjiDKBIdDQSULAb', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(9, 'Paypal Application ID', 'API_APPLICATIONID', 'APP-01E46180E9268854Y', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(10, 'Paypal Developer Email', 'PAYPAL_DEVELOPER_EMAIL', '1337institute@gmail.com', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(11, 'Paypal Mode', 'API_MODE', 'live', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(12, 'Facebook API ID', 'FACEBOOK_API_KEY', '392296474215871', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(13, 'Facebook Secret Key', 'FACEBOOK_SECRET_KEY', 'c75b545cd09cfb3ef89e396432a37497', NULL, '2014-08-06 18:26:16'),
(14, 'Twitter API ID', 'TWITTER_API_ID', 'CSpbRJK5eAEod91O7js5Gg', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(15, 'Twitter Secret Key', 'TWITTER_SECRET_KEY', '8KGhKpPzYRDX6FYkPVXTzvELN1D7pXtA78SYSnq44', '2013-09-30 00:00:00', '2014-08-06 18:26:16'),
(38, 'Hope Page Banner Text 1', 'HOMEPAGE_BANNER_IMAGE_TEXT1', '<span>The Elite Site for</span> Premium<br>\r\n                    Technology<br>\r\n                    Courses', NULL, '2014-08-06 18:26:16'),
(39, 'Home Page Banner Image 1', 'HOMEPAGE_BANNER_IMAGE1', '/img/banners/bannerimage39.jpg', NULL, '2014-07-15 18:05:03'),
(40, 'Home Page Banner Link Text 1', 'HOMEPAGE_BANNER_IMAGE_LINK1', 'Test Text1', NULL, '2014-08-06 18:26:16'),
(41, 'Home Page Banner Link Value 1', 'HOMEPAGE_BANNER_IMAGE_LINK_VAL1', 'http://google.com', NULL, '2014-08-06 18:26:16'),
(42, 'Hope Page Banner Text 2', 'HOMEPAGE_BANNER_IMAGE_TEXT2', '<span>The Elite Site for</span> Premium<br>\r\n                    Technology<br>\r\n                    Courses', NULL, '2014-08-06 18:26:16'),
(43, 'Home Page Banner Image 2', 'HOMEPAGE_BANNER_IMAGE2', '/img/banners/bannerimage16.jpg', '2014-07-15 00:00:00', '2014-07-03 09:56:10'),
(44, 'Home Page Banner Link Text 2', 'HOMEPAGE_BANNER_IMAGE_LINK2', 'Test Text2', NULL, '2014-08-06 18:26:16'),
(45, 'Home Page Banner Link Value 2', 'HOMEPAGE_BANNER_IMAGE_LINK_VAL2', 'http://yahoo.com', NULL, '2014-08-06 18:26:16'),
(46, 'Hope Page Banner Text 3', 'HOMEPAGE_BANNER_IMAGE_TEXT3', '<span>The Elite Site for</span> Premium<br>\r\n                    Technology<br>\r\n                    Courses', NULL, '2014-08-06 18:26:16'),
(47, 'Home Page Banner Image 3', 'HOMEPAGE_BANNER_IMAGE3', '/img/banners/bannerimage17.jpg', '2014-06-26 00:00:00', '2014-07-03 09:56:10'),
(48, 'Home Page Banner Link Text 3', 'HOMEPAGE_BANNER_IMAGE_LINK3', 'Test Text 3', NULL, '2014-08-06 18:26:16'),
(49, 'Home Page Banner Link Value 3', 'HOMEPAGE_BANNER_IMAGE_LINK_VAL3', 'http://zapbuild.com', NULL, '2014-08-06 18:26:16'),
(50, 'Hope Page Banner Text 4', 'HOMEPAGE_BANNER_IMAGE_TEXT4', '<span>The Elite Site for</span> Premium<br>\r\n                    Technology<br>\r\n                    Courses', NULL, '2014-08-06 18:26:16'),
(51, 'Home Page Banner Image 4', 'HOMEPAGE_BANNER_IMAGE4', '/img/banners/bannerimage18.jpg', '2014-06-26 00:00:00', '2014-07-03 09:56:10'),
(52, 'Home Page Banner Link Text 4', 'HOMEPAGE_BANNER_IMAGE_LINK4', 'Test Text 4', NULL, '2014-08-06 18:26:16'),
(53, 'Home Page Banner Link Value 4', 'HOMEPAGE_BANNER_IMAGE_LINK_VAL4', 'http://facebook.com', NULL, '2014-08-06 18:26:16'),
(54, 'Meta Title', 'SEO_META_TITLE', '1337 institute of technology', NULL, '2014-08-06 18:26:16'),
(55, 'Meta Description', 'SEO_META_DESC', '1337 institute of technology', NULL, '2014-08-06 18:26:16'),
(56, 'Meta Keywords', 'SEO_META_KEYWORD', '1337 institute of technology', NULL, '2014-08-06 18:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=239 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `status`, `created`, `modified`) VALUES
(1, 'United Kingdom', 'GB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(2, 'United States', 'US', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(3, 'Afghanistan', 'AF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(4, 'Albania', 'AL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(5, 'Algeria', 'DZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(6, 'American Samoa', 'AS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(7, 'Andorra', 'AD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(8, 'Angola', 'AO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(9, 'Anguilla', 'AI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(10, 'Antarctica', 'AQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(11, 'Antigua And Barbuda', 'AG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(12, 'Argentina', 'AR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(13, 'Armenia', 'AM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(14, 'Aruba', 'AW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(15, 'Australia', 'AU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(16, 'Austria', 'AT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(17, 'Azerbaijan', 'AZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(18, 'Bahamas', 'BS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(19, 'Bangladesh', 'BD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(20, 'Barbados', 'BB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(21, 'Belarus', 'BY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(22, 'Belgium', 'BE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(23, 'Belize', 'BZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(24, 'Benin', 'BJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(25, 'Bermuda', 'BM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(26, 'Bhutan', 'BT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(27, 'Bolivia', 'BO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(28, 'Bosnia And Herzegowina', 'BA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(29, 'Botswana', 'BW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(30, 'Bouvet Island', 'BV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(31, 'Brazil', 'BR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(32, 'British Indian Ocean Territory', 'IO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(33, 'Brunei Darussalam', 'BN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(34, 'Bulgaria', 'BG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(35, 'Burkina Faso', 'BF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(36, 'Burundi', 'BI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(37, 'Cambodia', 'KH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(38, 'Cameroon', 'CM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(39, 'Canada', 'CA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(40, 'Cape Verde', 'CV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(41, 'Cayman Islands', 'KY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(42, 'Central African Republic', 'CF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(43, 'Chad', 'TD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(44, 'Chile', 'CL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(45, 'China', 'CN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(46, 'Christmas Island', 'CX', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(47, 'Cocos (Keeling) Islands', 'CC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(48, 'Colombia', 'CO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(49, 'Comoros', 'KM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(50, 'Congo', 'CG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(51, 'Congo, The Democratic Republic Of The', 'CD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(52, 'Cook Islands', 'CK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(53, 'Costa Rica', 'CR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(54, 'Cote D''Ivoire', 'CI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(55, 'Croatia (Local Name: Hrvatska)', 'HR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(56, 'Cuba', 'CU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(57, 'Cyprus', 'CY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(58, 'Czech Republic', 'CZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(59, 'Denmark', 'DK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(60, 'Djibouti', 'DJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(61, 'Dominica', 'DM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(62, 'Dominican Republic', 'DO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(63, 'East Timor', 'TP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(64, 'Ecuador', 'EC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(65, 'Egypt', 'EG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(66, 'El Salvador', 'SV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(67, 'Equatorial Guinea', 'GQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(68, 'Eritrea', 'ER', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(69, 'Estonia', 'EE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(70, 'Ethiopia', 'ET', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(71, 'Falkland Islands (Malvinas)', 'FK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(72, 'Faroe Islands', 'FO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(73, 'Fiji', 'FJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(74, 'Finland', 'FI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(75, 'France', 'FR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(76, 'France, Metropolitan', 'FX', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(77, 'French Guiana', 'GF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(78, 'French Polynesia', 'PF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(79, 'French Southern Territories', 'TF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(80, 'Gabon', 'GA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(81, 'Gambia', 'GM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(82, 'Georgia', 'GE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(83, 'Germany', 'DE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(84, 'Ghana', 'GH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(85, 'Gibraltar', 'GI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(86, 'Greece', 'GR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(87, 'Greenland', 'GL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(88, 'Grenada', 'GD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(89, 'Guadeloupe', 'GP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(90, 'Guam', 'GU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(91, 'Guatemala', 'GT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(92, 'Guinea', 'GN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(93, 'Guinea-Bissau', 'GW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(94, 'Guyana', 'GY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(95, 'Haiti', 'HT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(96, 'Heard And Mc Donald Islands', 'HM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(97, 'Holy See (Vatican City State)', 'VA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(98, 'Honduras', 'HN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(99, 'Hong Kong', 'HK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(100, 'Hungary', 'HU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(101, 'Iceland', 'IS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(102, 'India', 'IN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(103, 'Indonesia', 'ID', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(104, 'Iran (Islamic Republic Of)', 'IR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(105, 'Iraq', 'IQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(106, 'Ireland', 'IE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(107, 'Israel', 'IL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(108, 'Italy', 'IT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(109, 'Jamaica', 'JM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(110, 'Japan', 'JP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(111, 'Jordan', 'JO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(112, 'Kazakhstan', 'KZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(113, 'Kenya', 'KE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(114, 'Kiribati', 'KI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(115, 'Korea, Democratic People''s Republic Of', 'KP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(116, 'Korea, Republic Of', 'KR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(117, 'Kuwait', 'KW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(118, 'Kyrgyzstan', 'KG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(119, 'Lao People''s Democratic Republic', 'LA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(120, 'Latvia', 'LV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(121, 'Lebanon', 'LB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(122, 'Lesotho', 'LS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(123, 'Liberia', 'LR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(124, 'Libyan Arab Jamahiriya', 'LY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(125, 'Liechtenstein', 'LI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(126, 'Lithuania', 'LT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(127, 'Luxembourg', 'LU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(128, 'Macau', 'MO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(129, 'Macedonia, Former Yugoslav Republic Of', 'MK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(130, 'Madagascar', 'MG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(131, 'Malawi', 'MW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(132, 'Malaysia', 'MY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(133, 'Maldives', 'MV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(134, 'Mali', 'ML', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(135, 'Malta', 'MT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(136, 'Marshall Islands', 'MH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(137, 'Martinique', 'MQ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(138, 'Mauritania', 'MR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(139, 'Mauritius', 'MU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(140, 'Mayotte', 'YT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(141, 'Mexico', 'MX', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(142, 'Micronesia', 'FM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(143, 'Moldova, Republic Of', 'MD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(144, 'Monaco', 'MC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(145, 'Mongolia', 'MN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(146, 'Montserrat', 'MS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(147, 'Morocco', 'MA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(148, 'Mozambique', 'MZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(149, 'Myanmar', 'MM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(150, 'Namibia', 'NA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(151, 'Nauru', 'NR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(152, 'Nepal', 'NP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(153, 'Netherlands', 'NL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(154, 'Netherlands Antilles', 'AN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(155, 'New Caledonia', 'NC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(156, 'New Zealand', 'NZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(157, 'Nicaragua', 'NI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(158, 'Niger', 'NE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(159, 'Nigeria', 'NG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(160, 'Niue', 'NU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(161, 'Norfolk Island', 'NF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(162, 'Northern Mariana Islands', 'MP', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(163, 'Norway', 'NO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(164, 'Oman', 'OM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(165, 'Pakistan', 'PK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(166, 'Palau', 'PW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(167, 'Panama', 'PA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(168, 'Papua New Guinea', 'PG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(169, 'Paraguay', 'PY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(170, 'Peru', 'PE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(171, 'Philippines', 'PH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(172, 'Pitcairn', 'PN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(173, 'Poland', 'PL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(174, 'Portugal', 'PT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(175, 'Puerto Rico', 'PR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(176, 'Qatar', 'QA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(177, 'Reunion', 'RE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(178, 'Romania', 'RO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(179, 'Russian Federation', 'RU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(180, 'Rwanda', 'RW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(181, 'Saint Kitts And Nevis', 'KN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(182, 'Saint Lucia', 'LC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(183, 'Saint Vincent And The Grenadines', 'VC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(184, 'Samoa', 'WS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(185, 'San Marino', 'SM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(186, 'Sao Tome And Principe', 'ST', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(187, 'Saudi Arabia', 'SA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(188, 'Senegal', 'SN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(189, 'Seychelles', 'SC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(190, 'Sierra Leone', 'SL', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(191, 'Singapore', 'SG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(192, 'Slovakia (Slovak Republic)', 'SK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(193, 'Slovenia', 'SI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(194, 'Solomon Islands', 'SB', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(195, 'Somalia', 'SO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(196, 'South Africa', 'ZA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(197, 'South Georgia, South Sandwich Islands', 'GS', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(198, 'Spain', 'ES', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(199, 'Sri Lanka', 'LK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(200, 'St. Helena', 'SH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(201, 'St. Pierre And Miquelon', 'PM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(202, 'Sudan', 'SD', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(203, 'Suriname', 'SR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(204, 'Svalbard And Jan Mayen Islands', 'SJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(205, 'Swaziland', 'SZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(206, 'Sweden', 'SE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(207, 'Switzerland', 'CH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(208, 'Syrian Arab Republic', 'SY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(209, 'Taiwan', 'TW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(210, 'Tajikistan', 'TJ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(211, 'Tanzania, United Republic Of', 'TZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(212, 'Thailand', 'TH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(213, 'Togo', 'TG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(214, 'Tokelau', 'TK', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(215, 'Tonga', 'TO', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(216, 'Trinidad And Tobago', 'TT', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(217, 'Tunisia', 'TN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(218, 'Turkey', 'TR', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(219, 'Turkmenistan', 'TM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(220, 'Turks And Caicos Islands', 'TC', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(221, 'Tuvalu', 'TV', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(222, 'Uganda', 'UG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(223, 'Ukraine', 'UA', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(224, 'United Arab Emirates', 'AE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(225, 'United States Minor Outlying Islands', 'UM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(226, 'Uruguay', 'UY', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(227, 'Uzbekistan', 'UZ', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(228, 'Vanuatu', 'VU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(229, 'Venezuela', 'VE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(230, 'Viet Nam', 'VN', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(231, 'Virgin Islands (British)', 'VG', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(232, 'Virgin Islands (U.S.)', 'VI', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(233, 'Wallis And Futuna Islands', 'WF', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(234, 'Western Sahara', 'EH', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(235, 'Yemen', 'YE', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(236, 'Yugoslavia', 'YU', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(237, 'Zambia', 'ZM', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52'),
(238, 'Zimbabwe', 'ZW', 1, '2013-08-22 14:22:52', '2013-08-22 14:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT '-1',
  `language_id` int(11) DEFAULT NULL,
  `instruction_level_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `summary` text,
  `lincence_logo` varchar(200) DEFAULT NULL,
  `lincence_url` varchar(200) DEFAULT NULL,
  `source_title` varchar(200) DEFAULT NULL,
  `source_url` varchar(200) DEFAULT NULL,
  `coverimage` varchar(150) DEFAULT NULL,
  `promovideo` varchar(150) DEFAULT NULL,
  `visibility` enum('Private','Public') DEFAULT 'Public',
  `pricetype` enum('Free','Paid') NOT NULL DEFAULT 'Free',
  `price` float NOT NULL,
  `privacy_type` enum('1','2') DEFAULT NULL COMMENT '1 for adding invitees and 2 for making course password protected, will be dependent on visibility type of course will be used only visibility type be selected as private',
  `publishstatus` enum('Publish','Unpublish') DEFAULT NULL COMMENT 'User can mark its course as publish or unpublish',
  `status` tinyint(1) DEFAULT '1' COMMENT 'field to manage site admin right on course site admin can mark and course inactive at any time',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `user_id`, `category_id`, `language_id`, `instruction_level_id`, `title`, `subtitle`, `keywords`, `summary`, `lincence_logo`, `lincence_url`, `source_title`, `source_url`, `coverimage`, `promovideo`, `visibility`, `pricetype`, `price`, `privacy_type`, `publishstatus`, `status`, `created`, `modified`) VALUES
(8, 10, NULL, NULL, NULL, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-19 21:27:32', '2013-08-05 16:55:08'),
(10, 8, NULL, NULL, 1, 'Automation Technology', '', '', 'This is a world of Science ad Technology', NULL, NULL, NULL, NULL, '/img/8/Course/10/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-19 22:27:30', '2013-08-05 16:55:08'),
(13, 13, NULL, NULL, NULL, 'Technical Maths', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-22 12:43:32', '2013-08-05 16:55:08'),
(14, 13, NULL, NULL, NULL, 'Auto-Sciences', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-22 14:35:18', '2013-08-05 16:55:08'),
(15, 13, '1', 1, 4, 'Furious Technology ', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-22 17:08:44', '2013-08-05 16:55:08'),
(16, 13, NULL, NULL, 4, 'Techno World', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n \r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, NULL, NULL, NULL, '/img/13/Course/16/coverimage/coverimage.jpg', 'img/13/Course/16/coverimage/1374561390.mp4', 'Private', 'Paid', 2, '1', 'Unpublish', 1, '2013-07-23 10:14:04', '2013-08-05 16:55:08'),
(17, 8, NULL, NULL, NULL, 'Technology World', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 14:45:13', '2013-08-05 16:55:08'),
(18, 13, NULL, NULL, NULL, 'Backdoor Sciences', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-23 17:47:35', '2013-08-05 16:55:08'),
(19, 8, NULL, NULL, NULL, 'Tech Sciences', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:25:06', '2013-08-05 16:55:08'),
(20, 8, NULL, NULL, NULL, 'World of Atoms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:25:23', '2013-08-05 16:55:08'),
(21, 8, NULL, NULL, NULL, 'Automation in today''s life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:26:02', '2013-08-05 16:55:08'),
(22, 8, NULL, NULL, NULL, 'Inovationa and Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:26:17', '2013-08-05 16:55:08'),
(23, 8, NULL, NULL, NULL, 'Life without machines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:26:31', '2013-08-05 16:55:08'),
(24, 8, NULL, NULL, NULL, 'Automated Machines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:26:47', '2013-08-05 16:55:08'),
(25, 8, NULL, NULL, NULL, 'Transformers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-23 18:26:55', '2013-08-05 16:55:08'),
(26, 8, NULL, NULL, NULL, 'Blue technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:27:22', '2013-08-05 16:55:08'),
(27, 8, NULL, NULL, NULL, 'Automatic Connectivity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-23 18:27:37', '2013-08-05 16:55:08'),
(28, 8, NULL, NULL, NULL, 'Wireless world', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-23 18:27:49', '2013-08-05 16:55:08'),
(30, 8, NULL, NULL, NULL, 'Teachonline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-24 00:38:03', '2013-08-05 16:55:08'),
(31, 8, NULL, NULL, NULL, 'C++', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-24 04:24:13', '2013-08-05 16:54:59'),
(32, 8, NULL, NULL, NULL, 'teachingonline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-24 09:21:53', '2013-08-05 16:54:59'),
(33, 8, NULL, NULL, NULL, 'Vivek''s First Course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-24 09:21:55', '2013-08-05 16:54:59'),
(34, 15, NULL, NULL, NULL, 'sdsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-24 11:23:54', '2013-08-05 16:54:59'),
(35, 15, NULL, NULL, NULL, 'eeee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-24 18:36:18', '2013-08-05 16:54:59'),
(36, 15, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-25 18:28:12', '2013-08-05 16:54:59'),
(37, 8, NULL, NULL, NULL, 'cobalt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-26 04:45:05', '2013-08-05 16:54:59'),
(38, 15, NULL, NULL, NULL, 'rtrfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-26 14:46:06', '2013-08-05 16:54:59'),
(39, 5, NULL, NULL, NULL, 'illustrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-26 16:34:00', '2013-08-05 16:54:59'),
(40, 8, NULL, NULL, NULL, 'Test 111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-07-26 17:08:34', '2013-08-05 16:54:59'),
(41, 8, NULL, NULL, 1, 'rita', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-07-27 21:09:25', '2013-08-05 16:54:59'),
(42, 17, NULL, NULL, 4, 'testin65767', '', '', '<ol>\r\n	<li>\r\n		hello this is a new course</li>\r\n	<li>\r\n		i have created it</li>\r\n</ol>\r\n', NULL, NULL, NULL, NULL, '/img/18/Course/42/coverimage/coverimage.jpg', NULL, 'Public', 'Paid', 100, '', 'Publish', 1, '2013-08-01 18:28:00', '2013-08-21 14:18:02'),
(43, 18, NULL, NULL, 4, 'Techno World', '', '', '<p>\r\n	z vxccxz cxvfcxz vzxcv</p>\r\n', NULL, NULL, NULL, NULL, '/img/18/Course/43/coverimage/coverimage.jpg', 'img/18/Course/43/coverimage/1mb.mp4', 'Public', 'Free', 0, '', 'Unpublish', 1, '2013-08-02 17:51:38', '2013-09-25 13:18:20'),
(46, 20, NULL, 19, 4, 'kites technology', '', '', '<p>\r\n	<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', NULL, NULL, NULL, NULL, '/img/20/Course/46/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-05 16:37:13', '2013-08-07 12:00:25'),
(47, 18, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/img/18/Course/47/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, '2', 'Publish', 1, '2013-08-05 18:27:43', '2013-10-01 11:21:38'),
(48, 20, '2', 19, NULL, 'My Business', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '', NULL, NULL, NULL, NULL, NULL, '/img/20/Course/48/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-06 12:29:05', '2013-08-06 12:32:31'),
(49, 20, '3', 20, NULL, 'My Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '', NULL, NULL, NULL, NULL, NULL, '/img/20/Course/49/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-06 12:31:22', '2013-08-06 12:32:00'),
(50, 20, '4', 15, NULL, 'Arts and Designs', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '', NULL, NULL, NULL, NULL, NULL, '/img/20/Course/50/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-06 12:32:52', '2013-08-06 12:33:28'),
(51, 20, '5', 6, NULL, 'Fitness', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '', NULL, NULL, NULL, NULL, NULL, '/img/20/Course/51/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-06 12:33:45', '2013-08-06 12:34:38'),
(52, 20, '6', 9, 4, 'Lifestyle', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '', '<p>\r\n	kjhgf gfjhgfkufjhgfjhgf</p>\r\n', NULL, NULL, NULL, NULL, '/img/20/Course/52/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-06 12:35:01', '2013-08-06 19:09:01'),
(53, 20, NULL, NULL, 1, 'My SQL', NULL, NULL, '<p>\r\n	<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n	<p>\r\n		It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Paid', 100, '1', 'Unpublish', 1, '2013-08-06 16:07:34', '2013-08-06 16:17:42'),
(54, 20, NULL, NULL, NULL, 'my course1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-06 17:49:33', '2013-08-06 17:49:33'),
(55, 20, NULL, NULL, NULL, 'sadasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-06 18:13:08', '2013-08-06 18:13:08'),
(56, 8, NULL, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-06 22:05:40', '2013-08-06 22:05:40'),
(57, 8, NULL, NULL, NULL, 'teachonline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-06 22:18:27', '2013-08-06 22:18:27'),
(58, 8, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-07 08:50:31', '2013-08-07 08:50:31'),
(59, 8, NULL, NULL, NULL, 'Course 123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-07 08:50:32', '2013-08-07 08:50:32'),
(60, 8, NULL, NULL, NULL, 'Course 12321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-07 08:56:00', '2013-08-07 08:56:00'),
(61, 8, NULL, NULL, NULL, 'Penguins Technique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-07 12:48:32', '2013-08-07 12:57:16'),
(62, 20, NULL, NULL, NULL, 'Apple Technique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-07 16:48:58', '2013-08-07 16:54:53'),
(63, 20, NULL, NULL, NULL, 'Tester', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-07 17:17:41', '2013-08-07 17:20:35'),
(64, 20, NULL, NULL, NULL, 'Coder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-07 17:28:07', '2013-08-07 17:29:59'),
(65, 20, NULL, NULL, NULL, 'New Course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-07 17:59:40', '2013-08-07 17:59:40'),
(66, 20, NULL, NULL, NULL, 'My new Course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-07 18:02:41', '2013-08-07 18:05:40'),
(67, 20, NULL, NULL, NULL, 'New Course 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-07 18:14:21', '2013-08-07 18:14:21'),
(68, 8, NULL, NULL, NULL, 'Test Cource', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-07 19:02:05', '2013-08-07 19:02:05'),
(69, 8, NULL, NULL, NULL, 'rita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-08 02:24:52', '2013-08-08 02:24:52'),
(70, 8, NULL, NULL, NULL, 'kdkfjd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-08 09:06:13', '2013-08-08 09:06:13'),
(71, 8, NULL, NULL, NULL, 'qwerty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-08 09:08:24', '2013-08-08 09:08:24'),
(72, 18, NULL, NULL, NULL, 'sports', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/18/Course/72/coverimage/1376342796.flv', 'Public', 'Paid', 100, NULL, 'Publish', 1, '2013-08-08 17:59:00', '2013-09-30 11:02:50'),
(73, 20, NULL, NULL, NULL, 'Learn sci fi techniques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 15:35:24', '2013-08-09 15:35:24'),
(74, 8, NULL, NULL, NULL, 'Test Course Aug09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 16:44:23', '2013-08-09 16:44:23'),
(75, 20, '1', 20, NULL, 'Scitech', 'Its Scitech course', 'science, technology, scitech', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 16:45:46', '2013-08-09 16:57:48'),
(76, 8, NULL, NULL, NULL, 'Test111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 16:56:49', '2013-08-09 16:56:49'),
(77, 8, NULL, NULL, NULL, 'Course 0809', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 17:04:27', '2013-08-09 17:04:27'),
(78, 8, NULL, NULL, NULL, 'Hello 123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 17:15:48', '2013-08-09 17:15:48'),
(79, 18, NULL, NULL, NULL, 'Learn this technique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 17:20:07', '2013-08-09 17:20:07'),
(81, 8, NULL, NULL, NULL, 'QWERTY 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 17:22:40', '2013-08-09 17:22:40'),
(82, 17, NULL, NULL, NULL, 'Learn course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/img/17/Course/82/coverimage/coverimage.png', NULL, 'Private', 'Free', 0, '1', 'Unpublish', 1, '2013-08-09 17:57:51', '2013-08-13 20:02:38'),
(83, 17, NULL, NULL, NULL, 'Learn something', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/img/17/Course/83/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, '1', 'Unpublish', 1, '2013-08-09 18:07:53', '2013-08-16 18:42:04'),
(84, 8, NULL, NULL, NULL, 'Course 001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 18:08:56', '2013-08-09 18:08:56'),
(85, 20, NULL, NULL, NULL, 'hkjaskS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-09 18:53:24', '2013-08-09 18:53:24'),
(89, 17, NULL, NULL, NULL, 'dsfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-10 10:41:14', '2013-08-10 10:41:14'),
(90, 8, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-11 22:29:08', '2013-08-11 22:29:08'),
(91, 8, NULL, NULL, NULL, 'uuuuuuu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-11 22:30:51', '2013-08-11 22:30:51'),
(92, 20, NULL, NULL, 4, 'Atom', NULL, NULL, '', NULL, NULL, NULL, NULL, '/img/20/Course/92/coverimage/coverimage.jpg', 'img/20/Course/92/coverimage/1376262195.mp4', 'Public', 'Paid', 150, NULL, 'Unpublish', 1, '2013-08-12 11:49:38', '2013-08-12 17:47:07'),
(93, 18, NULL, NULL, 4, 'Tests  asdlkmajdlkad asdlkjadlkajdkjasldalksdasd asdkaljdlka', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-13 15:36:28', '2013-08-21 16:57:10'),
(94, 18, NULL, NULL, NULL, 'hgjhggfhg sadkas zkjjhasd kzjhdsa klhd adklasjhdad k  kljadk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-13 15:37:31', '2013-08-13 15:37:31'),
(95, 20, '1', 20, 3, 'ABC of technology', 'This course should be of particular interest to people aspiring a career in designing and managing b', 'ab c', '<p>\r\n	This course should be of particular interest to people aspiring a career in designing and managing business processes, either directly (V.P. of Ops, COO) or indirectly (e.g. management consulting). The course should also be of interest to people who manage interfaces between operations and other business functions such as finance, marketing, managerial accounting and human resources. Finally, a working knowledge of operations, which typically employs the greatest number of employees and requires the largest investment in assets, is indispensable for general managers and entrepreneurs.</p>\r\n<p>\r\n	We will see how different business strategies require different business processes, and vice versa, how different operational capabilities allow and support different strategies to gain competitive advantage. A process view of operations will be used to analyze different key operational dimensions such as capacity management, flow time management, supply chain management, and quality management. We will also discuss developments such as lean operations, just-in-time operations, and time-based competition.</p>\r\n', NULL, NULL, NULL, NULL, '/img/20/Course/95/coverimage/coverimage.jpg', 'img/20/Course/95/coverimage/1376347749.mp4', 'Public', 'Free', 0, '1', 'Publish', 1, '2013-08-13 16:06:20', '2013-08-13 16:19:37'),
(96, 18, NULL, NULL, NULL, 'hfgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, '2', 'Publish', 1, '2013-08-13 16:29:54', '2013-08-21 15:59:32'),
(97, 20, NULL, NULL, NULL, 'fins and fishes technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/20/Course/97/coverimage/DONALD_DUCK_IN_HINDI_EP_DONALDS_DINNER_DATE_VERY_F.wmv.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-13 22:04:23', '2013-11-19 13:32:57'),
(98, 12, NULL, NULL, NULL, 'This is my Test data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-14 10:11:18', '2013-08-14 10:11:18'),
(99, 12, NULL, NULL, NULL, 'lern parsi', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-14 10:16:11', '2013-08-14 10:17:15'),
(100, 18, NULL, NULL, NULL, 'illustrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-16 15:02:02', '2013-08-16 15:02:02'),
(101, 18, NULL, NULL, NULL, 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-08-16 15:30:38', '2013-08-16 15:30:41'),
(102, 18, NULL, NULL, NULL, 'asf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-16 15:36:04', '2013-08-16 15:36:04'),
(103, 18, NULL, NULL, NULL, 'dasdsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-29 19:06:02', '2013-08-29 19:06:02'),
(104, 18, NULL, NULL, NULL, 'designing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-30 11:30:58', '2013-08-30 11:30:58'),
(105, 18, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-08-30 14:51:05', '2013-08-30 14:51:05'),
(106, 32, NULL, NULL, NULL, 'A NEW ONE FOR TESTING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-09-06 11:00:08', '2013-09-06 11:00:08'),
(107, 32, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Private', 'Free', 0, '2', 'Unpublish', 1, '2013-09-23 15:52:16', '2013-11-13 10:54:36'),
(108, 3, NULL, NULL, NULL, 'ertrtt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-10-15 12:08:56', '2013-10-15 12:08:56'),
(109, 3, NULL, NULL, NULL, 'deddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-10-15 12:57:53', '2013-10-15 12:57:53'),
(110, 18, NULL, NULL, NULL, 'dsfds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-10-23 18:34:09', '2013-10-23 18:34:09'),
(111, 18, NULL, NULL, NULL, 'video test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2013-10-24 17:06:49', '2013-10-24 17:23:52'),
(112, 18, NULL, NULL, NULL, 'A new one on friday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/18/Course/112/coverimage/wmv.wmv.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-10-25 18:33:59', '2013-10-30 14:24:16'),
(113, 18, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Private', 'Free', 0, '2', 'Publish', 1, '2013-10-30 15:12:50', '2013-10-30 17:29:02'),
(114, 18, NULL, NULL, NULL, 'Test password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Private', 'Free', 0, '2', 'Unpublish', 1, '2013-10-30 17:33:12', '2013-10-30 17:33:24'),
(115, 18, NULL, NULL, NULL, 'BIO ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-06 14:16:52', '2013-11-06 14:16:52'),
(116, 18, NULL, NULL, NULL, 'Kamboj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-07 12:30:40', '2013-11-08 19:09:34'),
(117, 18, NULL, NULL, NULL, 'hiii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-09 16:37:57', '2013-11-09 16:37:57'),
(118, 18, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/18/Course/118/coverimage/test.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-09 16:40:18', '2014-01-14 12:56:05'),
(119, 18, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Private', 'Free', 0, '2', 'Unpublish', 1, '2013-11-12 18:01:27', '2013-11-13 10:49:26'),
(120, 18, NULL, NULL, NULL, 'fgds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-13 15:33:14', '2013-11-13 15:33:14'),
(121, 18, NULL, NULL, NULL, 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/img/18/Course/121/coverimage/coverimage.png', 'img/18/Course/121/coverimage/capturedvideo.MOV.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-13 16:30:16', '2014-01-22 17:33:10'),
(122, 18, NULL, NULL, 4, 'dsfas', NULL, NULL, '<p>\r\n	Another for facebook test</p>\r\n', NULL, NULL, NULL, NULL, '/img/18/Course/122/coverimage/coverimage.jpg', 'img/18/Course/122/coverimage/1mb.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-15 14:25:01', '2013-11-30 13:45:52'),
(123, 18, NULL, NULL, 4, 'Java New Course', '', '', '<p>\r\n	Ever hang your head in shame after your Python program wasn&#39;t as fast as your friend&#39;s C program? Ever wish you could use objects without having to use Java? Join us for this fun introduction to C and C++! We will take you through a tour that will start with writing simple C programs, go deep into the caves of C memory manipulation, resurface with an introduction to using C++ classes, dive deeper into advanced C++ class use and the C++ Standard Template Libraries. We&#39;ll wrap up by teaching you some tricks of the trade that you may need for tech interviews. We see this as a &quot;C/C++ empowerment&quot; course: we want</p>\r\n', '/img/18/Course/123/coverimage/lincenceimage.png', '', '', '', '/img/18/Course/123/coverimage/coverimage.jpg', 'http://vimeo.com/80977329', 'Public', 'Paid', 18, NULL, 'Publish', 1, '2013-11-18 14:21:20', '2014-01-24 12:32:56'),
(124, 39, NULL, NULL, NULL, 'PHP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-11-18 15:48:17', '2013-11-18 15:48:17'),
(125, 18, NULL, NULL, NULL, 'sadfs asdfds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-12-12 11:45:44', '2013-12-12 11:45:44'),
(126, 39, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-12-19 11:27:16', '2013-12-19 11:27:16'),
(127, 39, NULL, NULL, 4, 'test', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-12-19 14:34:52', '2013-12-19 17:30:26'),
(128, 18, NULL, NULL, 2, 'sds', NULL, NULL, '<p>\r\n	Hfwoudgfudwfogwdjfohwdoufbowbdcefef wevewbffwe fe f,e tefoj oj ou ovj weevwij gienedvije pvi ijfijbeu vied ivjwdijvbiwdj vijwbifj woj vwjd voj wdouv dwoiv wodj v</p>\r\n', NULL, NULL, NULL, NULL, '/img/18/Course/128/coverimage/coverimage.jpg', NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2013-12-23 12:30:48', '2014-01-08 18:02:46'),
(129, 18, NULL, NULL, NULL, ' Tttttteste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-08 18:05:23', '2014-01-10 16:40:49'),
(130, 18, NULL, NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/18/Course/130/coverimage/test.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-10 17:40:03', '2014-01-14 12:52:45'),
(131, 18, NULL, NULL, NULL, 'Dgguffyiciyfiyv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-10 17:46:17', '2014-01-10 17:46:17'),
(132, 8, NULL, NULL, NULL, 'Testralph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-11 00:24:34', '2014-01-11 00:24:34'),
(133, 18, NULL, NULL, NULL, 'Wuwueu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/img/18/Course/133/coverimage/coverimage.jpg', 'img/18/Course/133/coverimage/capturedvideo.MOV.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-22 19:11:58', '2014-01-22 19:13:59'),
(134, 18, NULL, NULL, NULL, 'Test amrit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/18/Course/134/coverimage/capturedvideo.MOV.mp4', 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-27 11:43:20', '2014-01-27 11:45:22'),
(135, 8, NULL, NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-27 11:50:37', '2014-01-27 11:50:37'),
(136, 8, NULL, NULL, NULL, 'Ralphtest01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public', 'Free', 0, NULL, 'Unpublish', 1, '2014-01-30 02:31:37', '2014-01-30 02:31:37'),
(137, 18, NULL, NULL, 4, 'dd', '&lt;script&gt;alert(&#039;hello&#039;)&lt;/script&gt;', '&lt;script&gt;alert(&#039;hello&#039;)&lt;/script&gt;', '<p>\r\n	&amp;lt;script&amp;gt;alert(&amp;#039;hello&amp;#039;)&amp;lt;/script&amp;gt;</p>\r\n', NULL, '', '&lt;script&gt;alert(&#039;hello&#039;)&lt;/script&gt;', NULL, NULL, NULL, 'Public', 'Free', 100, NULL, 'Unpublish', 1, '2014-02-11 03:20:02', '2014-04-22 23:20:03'),
(138, 45, '17', 34, 4, 'Android', 'Andriod system', 'abc', '<p>\r\n	What do you heart? We want to know about the people, places, pursuits and even pets that matter to you. Upload a picture of something you heart, and we&#39;ll reward the most impassioned entries with Nexus prizes:</p>\r\n', NULL, '', 'http://www.android.com/', NULL, '/img/45/Course/138/coverimage/coverimage.jpeg', NULL, 'Public', 'Free', 0, NULL, 'Publish', 1, '2014-05-22 04:44:15', '2014-05-22 05:36:29'),
(139, 18, '17', NULL, NULL, 'afsafasfsa', '', '', NULL, NULL, '', '', NULL, NULL, NULL, 'Public', 'Free', 100, NULL, 'Publish', 1, '2014-06-06 06:46:37', '2014-08-08 04:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `course_audience`
--

CREATE TABLE IF NOT EXISTS `course_audience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `title` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `course_audience`
--

INSERT INTO `course_audience` (`id`, `course_id`, `title`, `created`, `modified`) VALUES
(3, 15, 'a:1:{i:1;s:0:"";}', '2013-07-22 18:14:30', '2013-07-22 18:14:30'),
(4, 16, 'a:3:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', '2013-07-23 11:58:31', '2013-07-23 13:05:44'),
(5, 10, 'a:3:{i:1;s:11:"Instructors";i:2;s:8:"Teachers";i:3;s:8:"Students";}', '2013-07-23 18:35:26', '2013-07-23 18:36:12'),
(6, 41, 'a:3:{i:1;s:0:"";i:2;s:8:"Beginner";i:3;s:0:"";}', '2013-07-27 23:43:06', '2013-07-27 23:43:06'),
(7, 42, 'a:1:{i:1;s:0:"";}', '2013-08-01 18:28:19', '2013-08-06 12:00:33'),
(8, 46, 'a:2:{i:1;s:11:"Instructors";i:2;s:8:"Teachers";}', '2013-08-05 16:39:08', '2013-08-06 19:21:05'),
(9, 53, 'a:1:{i:1;s:1189:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";}', '2013-08-06 16:16:33', '2013-08-06 16:16:33'),
(10, 52, 'a:3:{i:1;s:11:"Instructors";i:2;s:8:"Teachers";i:3;s:8:"Students";}', '2013-08-06 19:09:01', '2013-08-06 19:09:01'),
(11, 43, 'a:3:{i:1;s:8:"sdfgsdfg";i:2;s:7:"zvfczvx";i:3;s:0:"";}', '2013-08-06 19:13:12', '2013-09-09 16:58:32'),
(12, 92, 'a:1:{i:1;s:0:"";}', '2013-08-12 16:31:25', '2013-08-12 16:31:25'),
(13, 95, 'a:1:{i:1;s:8:"teachers";}', '2013-08-13 16:17:30', '2013-08-13 16:17:30'),
(14, 93, 'a:1:{i:1;s:0:"";}', '2013-08-21 16:57:09', '2013-08-21 16:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `course_contents`
--

CREATE TABLE IF NOT EXISTS `course_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_content_type_id` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `lecture` int(11) DEFAULT NULL,
  `content` longtext,
  `content_link` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_content_types`
--

CREATE TABLE IF NOT EXISTS `course_content_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `primary_image` varchar(200) DEFAULT NULL,
  `secondary_image` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_goals`
--

CREATE TABLE IF NOT EXISTS `course_goals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `title` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `course_goals`
--

INSERT INTO `course_goals` (`id`, `course_id`, `title`, `created`, `modified`) VALUES
(3, 15, 'a:1:{i:1;s:0:"";}', '2013-07-22 18:14:30', '2013-07-22 18:14:30'),
(4, 16, 'a:1:{i:1;s:0:"";}', '2013-07-23 11:58:31', '2013-07-23 13:05:44'),
(5, 10, 'a:1:{i:1;s:36:"To make everybody learn the concepts";}', '2013-07-23 18:35:26', '2013-07-23 18:36:12'),
(6, 41, 'a:1:{i:1;s:0:"";}', '2013-07-27 23:43:06', '2013-07-27 23:43:06'),
(7, 42, 'a:1:{i:1;s:0:"";}', '2013-08-01 18:28:19', '2013-08-06 12:00:33'),
(8, 46, 'a:2:{i:1;s:36:"To make everybody learn the concepts";i:2;s:4:"ohuo";}', '2013-08-05 16:39:08', '2013-08-06 19:21:05'),
(9, 53, 'a:1:{i:1;s:1189:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";}', '2013-08-06 16:16:33', '2013-08-06 16:16:33'),
(10, 52, 'a:3:{i:1;s:36:"To make everybody learn the concepts";i:2;s:4:"ohuo";i:3;s:7:"lkhkujl";}', '2013-08-06 19:09:00', '2013-08-06 19:09:00'),
(11, 43, 'a:3:{i:1;s:11:"sdgfsdgsdfg";i:2;s:7:"zxcvzxc";i:3;s:7:"xzcvzxc";}', '2013-08-06 19:13:12', '2013-09-09 16:58:32'),
(12, 92, 'a:3:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', '2013-08-12 16:31:25', '2013-08-12 16:31:25'),
(13, 95, 'a:1:{i:1;s:1103:"This course should be of particular interest to people aspiring a career in designing and managing business processes, either directly (V.P. of Ops, COO) or indirectly (e.g. management consulting). The course should also be of interest to people who manage interfaces between operations and other business functions such as finance, marketing, managerial accounting and human resources. Finally, a working knowledge of operations, which typically employs the greatest number of employees and requires the largest investment in assets, is indispensable for general managers and entrepreneurs.  We will see how different business strategies require different business processes, and vice versa, how different operational capabilities allow and support different strategies to gain competitive advantage. A process view of operations will be used to analyze different key operational dimensions such as capacity management, flow time management, supply chain management, and quality management. We will also discuss developments such as lean operations, just-in-time operations, and time-based competition.";}', '2013-08-13 16:17:30', '2013-08-13 16:17:30'),
(14, 93, 'a:1:{i:1;s:0:"";}', '2013-08-21 16:57:09', '2013-08-21 16:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `course_instructors`
--

CREATE TABLE IF NOT EXISTS `course_instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `editpermission` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for not giving instructor permission to edit course and 1 is for giving permission to edit course',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `commission` float NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=180 ;

--
-- Dumping data for table `course_instructors`
--

INSERT INTO `course_instructors` (`id`, `course_id`, `user_id`, `editpermission`, `visible`, `commission`, `created`, `modified`) VALUES
(19, 8, 10, 1, 1, 0, '2013-07-19 21:27:32', '2013-07-19 21:27:32'),
(21, 10, 8, 1, 1, 0, '2013-07-19 22:27:30', '2013-07-19 22:27:30'),
(25, 13, 13, 1, 1, 0, '2013-07-22 12:43:32', '2013-07-22 12:43:32'),
(26, 14, 13, 1, 1, 0, '2013-07-22 14:35:18', '2013-07-22 14:35:18'),
(27, 15, 13, 1, 1, 0, '2013-07-22 17:08:44', '2013-07-22 17:08:44'),
(28, 16, 13, 1, 1, 0, '2013-07-23 10:14:04', '2013-07-23 10:14:04'),
(29, 16, 13, 0, 1, 5, '2013-07-23 12:08:01', '2013-07-23 12:08:01'),
(32, 17, 8, 1, 1, 0, '2013-07-23 14:45:13', '2013-07-23 14:45:13'),
(34, 18, 13, 1, 1, 0, '2013-07-23 17:47:35', '2013-07-23 17:47:35'),
(35, 19, 8, 1, 1, 0, '2013-07-23 18:25:06', '2013-07-23 18:25:06'),
(36, 20, 8, 1, 1, 0, '2013-07-23 18:25:23', '2013-07-23 18:25:23'),
(37, 21, 8, 1, 1, 0, '2013-07-23 18:26:03', '2013-07-23 18:26:03'),
(38, 22, 8, 1, 1, 0, '2013-07-23 18:26:17', '2013-07-23 18:26:17'),
(39, 23, 8, 1, 1, 0, '2013-07-23 18:26:31', '2013-07-23 18:26:31'),
(40, 24, 8, 1, 1, 0, '2013-07-23 18:26:47', '2013-07-23 18:26:47'),
(41, 25, 8, 1, 1, 0, '2013-07-23 18:26:55', '2013-07-23 18:26:55'),
(42, 26, 8, 1, 1, 0, '2013-07-23 18:27:22', '2013-07-23 18:27:22'),
(43, 27, 8, 1, 1, 0, '2013-07-23 18:27:37', '2013-07-23 18:27:37'),
(44, 28, 8, 1, 1, 0, '2013-07-23 18:27:49', '2013-07-23 18:27:49'),
(46, 30, 8, 1, 1, 0, '2013-07-24 00:38:03', '2013-07-24 00:38:03'),
(47, 31, 8, 1, 1, 0, '2013-07-24 04:24:13', '2013-07-24 04:24:13'),
(48, 32, 8, 1, 1, 0, '2013-07-24 09:21:53', '2013-07-24 09:21:53'),
(49, 33, 8, 1, 1, 0, '2013-07-24 09:21:55', '2013-07-24 09:21:55'),
(50, 34, 15, 1, 1, 0, '2013-07-24 11:23:54', '2013-07-24 11:23:54'),
(51, 35, 15, 1, 1, 0, '2013-07-24 18:36:18', '2013-07-24 18:36:18'),
(52, 36, 15, 1, 1, 0, '2013-07-25 18:28:12', '2013-07-25 18:28:12'),
(53, 37, 8, 1, 1, 0, '2013-07-26 04:45:06', '2013-07-26 04:45:06'),
(54, 38, 15, 1, 1, 0, '2013-07-26 14:46:06', '2013-07-26 14:46:06'),
(55, 39, 5, 1, 1, 0, '2013-07-26 16:34:00', '2013-07-26 16:34:00'),
(56, 40, 8, 1, 1, 0, '2013-07-26 17:08:34', '2013-07-26 17:08:34'),
(57, 41, 8, 1, 1, 0, '2013-07-27 21:09:25', '2013-07-27 21:09:25'),
(58, 42, 17, 1, 1, 0, '2013-08-01 18:28:00', '2013-08-01 18:28:00'),
(65, 43, 18, 1, 1, 0, '2013-08-02 17:51:38', '2013-08-02 17:51:38'),
(68, 46, 20, 1, 1, 0, '2013-08-05 16:37:13', '2013-08-05 16:37:13'),
(69, 47, 18, 1, 1, 0, '2013-08-05 18:27:43', '2013-08-05 18:27:43'),
(70, 47, 17, 0, 1, 40, '2013-08-06 11:11:03', '2013-08-06 11:11:37'),
(71, 48, 20, 1, 1, 0, '2013-08-06 12:29:05', '2013-08-06 12:29:05'),
(72, 49, 20, 1, 1, 0, '2013-08-06 12:31:22', '2013-08-06 12:31:22'),
(73, 50, 20, 1, 1, 0, '2013-08-06 12:32:52', '2013-08-06 12:32:52'),
(74, 51, 20, 1, 1, 0, '2013-08-06 12:33:45', '2013-08-06 12:33:45'),
(75, 52, 20, 1, 1, 0, '2013-08-06 12:35:01', '2013-08-06 12:35:01'),
(76, 53, 20, 1, 1, 0, '2013-08-06 16:07:34', '2013-08-06 16:07:34'),
(78, 54, 20, 1, 1, 0, '2013-08-06 17:49:33', '2013-08-06 17:49:33'),
(79, 55, 20, 1, 1, 0, '2013-08-06 18:13:08', '2013-08-06 18:13:08'),
(80, 56, 8, 1, 1, 0, '2013-08-06 22:05:40', '2013-08-06 22:05:40'),
(81, 57, 8, 1, 1, 0, '2013-08-06 22:18:28', '2013-08-06 22:18:28'),
(82, 58, 8, 1, 1, 0, '2013-08-07 08:50:31', '2013-08-07 08:50:31'),
(83, 59, 8, 1, 1, 0, '2013-08-07 08:50:32', '2013-08-07 08:50:32'),
(84, 60, 8, 1, 1, 0, '2013-08-07 08:56:00', '2013-08-07 08:56:00'),
(85, 61, 8, 1, 1, 0, '2013-08-07 12:48:32', '2013-08-07 12:48:32'),
(86, 62, 20, 1, 1, 0, '2013-08-07 16:48:58', '2013-08-07 16:48:58'),
(87, 63, 20, 1, 1, 0, '2013-08-07 17:17:41', '2013-08-07 17:17:41'),
(88, 64, 20, 1, 1, 0, '2013-08-07 17:28:07', '2013-08-07 17:28:07'),
(89, 65, 20, 1, 1, 0, '2013-08-07 17:59:40', '2013-08-07 17:59:40'),
(90, 66, 20, 1, 1, 0, '2013-08-07 18:02:41', '2013-08-07 18:02:41'),
(91, 67, 20, 1, 1, 0, '2013-08-07 18:14:22', '2013-08-07 18:14:22'),
(92, 68, 8, 1, 1, 0, '2013-08-07 19:02:06', '2013-08-07 19:02:06'),
(93, 69, 8, 1, 1, 0, '2013-08-08 02:24:52', '2013-08-08 02:24:52'),
(94, 70, 8, 1, 1, 0, '2013-08-08 09:06:13', '2013-08-08 09:06:13'),
(95, 71, 8, 1, 1, 0, '2013-08-08 09:08:24', '2013-08-08 09:08:24'),
(97, 72, 18, 1, 1, 0, '2013-08-08 17:59:00', '2013-08-08 17:59:00'),
(98, 73, 20, 1, 1, 0, '2013-08-09 15:35:24', '2013-08-09 15:35:24'),
(99, 74, 8, 1, 1, 0, '2013-08-09 16:44:23', '2013-08-09 16:44:23'),
(100, 75, 20, 1, 1, 0, '2013-08-09 16:45:47', '2013-08-09 16:45:47'),
(101, 76, 8, 1, 1, 0, '2013-08-09 16:56:49', '2013-08-09 16:56:49'),
(102, 77, 8, 1, 1, 0, '2013-08-09 17:04:27', '2013-08-09 17:04:27'),
(103, 75, 1, 0, 1, 5, '2013-08-09 17:14:35', '2013-08-09 17:14:35'),
(104, 78, 8, 1, 1, 0, '2013-08-09 17:15:48', '2013-08-09 17:15:48'),
(105, 79, 18, 1, 1, 0, '2013-08-09 17:20:07', '2013-08-09 17:20:07'),
(107, 81, 8, 1, 1, 0, '2013-08-09 17:22:40', '2013-08-09 17:22:40'),
(109, 82, 17, 1, 1, 0, '2013-08-09 17:57:51', '2013-08-09 17:57:51'),
(110, 83, 17, 1, 1, 0, '2013-08-09 18:07:53', '2013-08-09 18:07:53'),
(111, 84, 8, 1, 1, 0, '2013-08-09 18:08:56', '2013-08-09 18:08:56'),
(112, 85, 20, 1, 1, 0, '2013-08-09 18:53:24', '2013-08-09 18:53:24'),
(116, 89, 17, 1, 1, 0, '2013-08-10 10:41:14', '2013-08-10 10:41:14'),
(117, 90, 8, 1, 1, 0, '2013-08-11 22:29:08', '2013-08-11 22:29:08'),
(118, 91, 8, 1, 1, 0, '2013-08-11 22:30:51', '2013-08-11 22:30:51'),
(119, 92, 20, 1, 1, 0, '2013-08-12 11:49:38', '2013-08-12 11:49:38'),
(120, 92, 16, 0, 1, 10, '2013-08-12 17:47:57', '2013-08-12 17:49:22'),
(121, 92, 3, 0, 1, 0, '2013-08-12 17:49:03', '2013-08-12 17:49:22'),
(122, 93, 18, 1, 1, 0, '2013-08-13 15:36:28', '2013-08-13 15:36:28'),
(123, 94, 18, 1, 1, 0, '2013-08-13 15:37:31', '2013-08-13 15:37:31'),
(124, 95, 20, 1, 1, 0, '2013-08-13 16:06:20', '2013-08-13 16:06:20'),
(125, 96, 18, 1, 1, 0, '2013-08-13 16:29:54', '2013-08-13 16:29:54'),
(126, 97, 20, 1, 1, 0, '2013-08-13 22:04:23', '2013-08-13 22:04:23'),
(127, 98, 12, 1, 1, 0, '2013-08-14 10:11:18', '2013-08-14 10:11:18'),
(128, 99, 12, 1, 1, 0, '2013-08-14 10:16:11', '2013-08-14 10:16:11'),
(129, 99, 17, 0, 1, 5, '2013-08-14 10:18:03', '2013-08-14 10:18:03'),
(130, 82, 17, 0, 1, 5, '2013-08-14 14:42:53', '2013-08-14 14:42:53'),
(132, 82, 18, 0, 1, 5, '2013-08-14 14:43:18', '2013-08-14 14:43:18'),
(133, 100, 18, 1, 1, 0, '2013-08-16 15:02:02', '2013-08-16 15:02:02'),
(134, 101, 18, 1, 1, 0, '2013-08-16 15:30:38', '2013-08-16 15:30:38'),
(135, 102, 18, 1, 1, 0, '2013-08-16 15:36:04', '2013-08-16 15:36:04'),
(136, 103, 18, 1, 1, 0, '2013-08-29 19:06:02', '2013-08-29 19:06:02'),
(137, 104, 18, 1, 1, 0, '2013-08-30 11:30:59', '2013-08-30 11:30:59'),
(138, 105, 18, 1, 1, 0, '2013-08-30 14:51:05', '2013-08-30 14:51:05'),
(139, 42, 18, 0, 1, 5, '2013-09-02 19:45:32', '2013-09-02 19:45:32'),
(140, 43, 17, 0, 1, 5, '2013-09-03 19:34:36', '2013-09-23 13:01:12'),
(143, 43, 29, 0, 1, 5, '2013-09-03 19:37:15', '2013-09-23 13:01:12'),
(144, 106, 32, 1, 1, 0, '2013-09-06 11:00:09', '2013-09-06 11:00:09'),
(145, 107, 32, 1, 1, 0, '2013-09-23 15:52:17', '2013-09-23 15:52:17'),
(146, 72, 17, 0, 1, 5, '2013-09-30 11:32:13', '2013-09-30 11:32:13'),
(147, 108, 3, 1, 1, 0, '2013-10-15 12:08:56', '2013-10-15 12:08:56'),
(148, 109, 3, 1, 1, 0, '2013-10-15 12:57:53', '2013-10-15 12:57:53'),
(149, 110, 18, 1, 1, 0, '2013-10-23 18:34:10', '2013-10-23 18:34:10'),
(150, 111, 18, 1, 1, 0, '2013-10-24 17:06:49', '2013-10-24 17:06:49'),
(151, 112, 18, 1, 1, 0, '2013-10-25 18:34:00', '2013-10-25 18:34:00'),
(152, 113, 18, 1, 1, 0, '2013-10-30 15:12:50', '2013-10-30 15:12:50'),
(153, 114, 18, 1, 1, 0, '2013-10-30 17:33:12', '2013-10-30 17:33:12'),
(154, 115, 18, 1, 1, 0, '2013-11-06 14:16:52', '2013-11-06 14:16:52'),
(155, 116, 18, 1, 1, 0, '2013-11-07 12:30:40', '2013-11-07 12:30:40'),
(156, 117, 18, 1, 1, 0, '2013-11-09 16:37:57', '2013-11-09 16:37:57'),
(157, 118, 18, 1, 1, 0, '2013-11-09 16:40:18', '2013-11-09 16:40:18'),
(158, 119, 18, 1, 1, 0, '2013-11-12 18:01:27', '2013-11-12 18:01:27'),
(159, 120, 18, 1, 1, 0, '2013-11-13 15:33:14', '2013-11-13 15:33:14'),
(160, 121, 18, 1, 1, 0, '2013-11-13 16:30:16', '2013-11-13 16:30:16'),
(161, 122, 18, 1, 1, 0, '2013-11-15 14:25:01', '2013-11-15 14:25:01'),
(162, 123, 18, 1, 1, 0, '2013-11-18 14:21:21', '2013-11-18 14:21:21'),
(163, 124, 39, 1, 1, 0, '2013-11-18 15:48:17', '2013-11-18 15:48:17'),
(164, 125, 18, 1, 1, 0, '2013-12-12 11:45:44', '2013-12-12 11:45:44'),
(165, 126, 39, 1, 1, 0, '2013-12-19 11:27:16', '2013-12-19 11:27:16'),
(166, 127, 39, 1, 1, 0, '2013-12-19 14:34:52', '2013-12-19 14:34:52'),
(167, 128, 18, 1, 1, 0, '2013-12-23 12:30:48', '2013-12-23 12:30:48'),
(168, 129, 18, 1, 1, 0, '2014-01-08 18:05:23', '2014-01-08 18:05:23'),
(169, 130, 18, 1, 1, 0, '2014-01-10 17:40:03', '2014-01-10 17:40:03'),
(170, 131, 18, 1, 1, 0, '2014-01-10 17:46:17', '2014-01-10 17:46:17'),
(171, 132, 8, 1, 1, 0, '2014-01-11 00:24:34', '2014-01-11 00:24:34'),
(172, 123, 33, 0, 1, 5, '2014-01-14 12:40:09', '2014-01-14 12:40:09'),
(173, 133, 18, 1, 1, 0, '2014-01-22 19:11:58', '2014-01-22 19:11:58'),
(174, 134, 18, 1, 1, 0, '2014-01-27 11:43:20', '2014-01-27 11:43:20'),
(175, 135, 8, 1, 1, 0, '2014-01-27 11:50:37', '2014-01-27 11:50:37'),
(176, 136, 8, 1, 1, 0, '2014-01-30 02:31:37', '2014-01-30 02:31:37'),
(177, 137, 18, 1, 1, 0, '2014-02-11 03:20:02', '2014-02-11 03:20:02'),
(178, 138, 45, 1, 1, 0, '2014-05-22 04:44:15', '2014-05-22 04:44:15'),
(179, 139, 18, 1, 1, 0, '2014-06-06 06:46:37', '2014-06-06 06:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `course_invitees`
--

CREATE TABLE IF NOT EXISTS `course_invitees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `invitee` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE IF NOT EXISTS `course_lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `course_section_id` int(11) DEFAULT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `course_description` text NOT NULL,
  `content` longtext,
  `content_type` enum('D','T','A','V','P','M') DEFAULT NULL COMMENT 'D for Documents it can be pdf or ppt etc, T for text only, A for Audio files, V for Video files,P for presentation',
  `content_title` varchar(255) NOT NULL,
  `content_external_link` enum('None','Youtube','Vimeo') NOT NULL,
  `content_source` varchar(100) DEFAULT NULL,
  `supplimentary_material` varchar(100) NOT NULL,
  `lecture_index` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=317 ;

--
-- Dumping data for table `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `course_id`, `course_section_id`, `heading`, `course_description`, `content`, `content_type`, `content_title`, `content_external_link`, `content_source`, `supplimentary_material`, `lecture_index`, `created`, `modified`) VALUES
(37, 8, 14, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-19 21:27:32', '2013-07-19 21:27:32'),
(39, 10, 16, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-19 22:27:30', '2013-07-19 22:27:30'),
(44, 13, 19, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-22 12:43:32', '2013-07-22 12:43:32'),
(45, 14, 20, 'This is my First Lecture', '', NULL, 'V', '', 'None', 'img/13/Course14/Section20/Lecture45/lecturevideo.mp4', '', 1, '2013-07-22 14:35:19', '2013-07-22 15:02:44'),
(46, 14, 20, 'This is my second lecture', '', NULL, 'A', '', 'None', 'img/13/Course14/Section20/Lecture46/lectureaudio.mp3', '', 2, '2013-07-22 15:09:08', '2013-07-22 15:10:47'),
(47, 14, 20, 'this is my third lecture', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-07-22 15:11:10', '2013-07-22 15:11:10'),
(48, 14, 20, 'this is my fourth lecture', '', '<p>\r\n	this is nice</p>\r\n', 'D', '', 'None', 'img/13/Course14/Section20/Lecture48/lecturedocs.pdf', '', 4, '2013-07-22 15:15:30', '2013-07-22 15:17:09'),
(49, 14, 20, 'this is my fifth lecture', '', NULL, 'P', '', 'None', 'img/13/Course14/Section20/Lecture49/lecturedocs.pdf', '', 5, '2013-07-22 16:45:25', '2013-07-22 16:45:49'),
(50, 14, 21, 'My is First Lecture', '', '<p>\r\n	dsdsad</p>\r\n', 'A', '', 'None', 'img/13/Course14/Section21/Lecture50/lectureaudio.mp3', '', 1, '2013-07-22 16:46:12', '2013-07-22 16:47:37'),
(56, 15, 22, 'First Lecture of mine', '', NULL, 'A', '', 'None', 'img/13/Course15/Section22/Lecture56/lectureaudio.mp3', '', 1, '2013-07-22 17:08:44', '2013-07-22 17:09:39'),
(58, 16, 23, 'Oh 1 lecture', '', '<p>\r\n	This is new syllabus for this subject.</p>\r\n', 'T', '', 'None', NULL, '', 1, '2013-07-23 12:47:30', '2013-07-23 12:50:39'),
(59, 16, 23, 'oh 2 lecture', '', NULL, 'D', '', 'None', 'img/13/Course16/Section23/Lecture59/lecturedocs.pdf', '', 2, '2013-07-23 12:50:53', '2013-07-23 12:52:05'),
(60, 16, 23, 'oh 3 lecture', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-07-23 12:58:31', '2013-07-23 12:58:31'),
(61, 16, 23, 'oh 4 lecture', '', NULL, 'A', '', 'None', 'img/13/Course16/Section23/Lecture61/lectureaudio.mp3', '', 4, '2013-07-23 12:59:11', '2013-07-23 13:00:30'),
(62, 16, 23, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '', NULL, 'V', '', 'None', 'img/13/Course16/Section23/Lecture62/lecturevideo.mp4', '', 5, '2013-07-23 13:01:48', '2013-07-23 13:03:00'),
(63, 16, 23, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', '', NULL, NULL, '', 'None', NULL, '', 6, '2013-07-23 13:03:27', '2013-07-23 13:03:27'),
(64, 17, 24, 'My First Lecture', '', NULL, 'D', '', 'None', 'img/8/Course17/Section24/Lecture64/lecturedocs.pdf', '', 1, '2013-07-23 14:45:13', '2013-07-23 14:48:25'),
(65, 18, 25, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 17:47:35', '2013-07-23 17:47:35'),
(66, 19, 26, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:25:06', '2013-07-23 18:25:06'),
(67, 20, 27, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:25:23', '2013-07-23 18:25:23'),
(68, 21, 28, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:26:03', '2013-07-23 18:26:03'),
(69, 22, 29, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:26:17', '2013-07-23 18:26:17'),
(70, 23, 30, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:26:31', '2013-07-23 18:26:31'),
(71, 24, 31, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:26:47', '2013-07-23 18:26:47'),
(72, 25, 32, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:26:55', '2013-07-23 18:26:55'),
(73, 26, 33, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:27:22', '2013-07-23 18:27:22'),
(74, 27, 34, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:27:37', '2013-07-23 18:27:37'),
(75, 28, 35, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:27:49', '2013-07-23 18:27:49'),
(76, 10, 16, 'my first lecture', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-07-23 18:38:46', '2013-07-23 18:38:46'),
(77, 10, 16, 'my second lecture', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-07-23 18:39:05', '2013-07-23 18:39:05'),
(78, 10, 36, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-23 18:39:26', '2013-07-23 18:39:26'),
(79, 10, 36, 'first lecture', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-07-23 18:39:37', '2013-07-23 18:39:37'),
(80, 10, 36, 'second lecture', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-07-23 18:39:46', '2013-07-23 18:39:46'),
(81, 10, 36, 'third lecture', '', NULL, NULL, '', 'None', NULL, '', 4, '2013-07-23 18:39:58', '2013-07-23 18:39:58'),
(83, 30, 38, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-24 00:38:03', '2013-07-24 00:38:03'),
(84, 30, 38, 'Tttt', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-07-24 00:38:46', '2013-07-24 00:38:46'),
(85, 31, 39, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-24 04:24:13', '2013-07-24 04:24:13'),
(86, 32, 40, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-24 09:21:53', '2013-07-24 09:21:53'),
(87, 33, 41, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-24 09:21:55', '2013-07-24 09:21:55'),
(88, 34, 42, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-24 11:23:54', '2013-07-24 11:23:54'),
(89, 35, 43, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-24 18:36:19', '2013-07-24 18:36:19'),
(90, 36, 44, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-25 18:28:12', '2013-07-25 18:28:12'),
(91, 37, 45, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-26 04:45:06', '2013-07-26 04:45:06'),
(92, 38, 46, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-26 14:46:06', '2013-07-26 14:46:06'),
(93, 39, 47, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-26 16:34:00', '2013-07-26 16:34:00'),
(94, 40, 48, 'Lecture #1', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-26 17:08:34', '2013-08-12 17:47:39'),
(95, 41, 49, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-07-27 21:09:25', '2013-07-27 21:09:25'),
(96, 41, 49, 'Abc', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-07-27 23:41:14', '2013-07-27 23:41:14'),
(97, 42, 50, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-01 18:28:00', '2013-08-09 16:45:36'),
(101, 46, 54, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-05 16:37:13', '2013-08-07 17:03:08'),
(102, 47, 55, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-05 18:27:43', '2013-08-05 18:27:43'),
(103, 48, 56, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-06 12:29:05', '2013-08-07 18:11:13'),
(104, 49, 57, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-06 12:31:22', '2013-08-07 17:45:59'),
(105, 50, 58, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-06 12:32:53', '2013-08-06 12:32:53'),
(106, 51, 59, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-06 12:33:45', '2013-08-06 12:33:45'),
(107, 52, 60, 'My First Lecture', '', NULL, 'P', '', 'None', 'img/20/Course52/Section60/Lecture107/lecturedocs.pdf', '', 1, '2013-08-06 12:35:01', '2013-08-06 18:56:40'),
(108, 53, 61, 'My First Lecture', '', NULL, 'V', '', 'None', 'img/20/Course53/Section61/Lecture108/lecturevideo.mp4', '', 1, '2013-08-06 16:07:34', '2013-08-06 16:11:55'),
(109, 53, 61, 'Lecture a', '', '<p>\r\n	<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n	<p>\r\n		It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>\r\n	<br />\r\n	&nbsp;</p>\r\n', 'T', '', 'None', NULL, '', 2, '2013-08-06 16:12:58', '2013-08-06 16:13:54'),
(110, 53, 61, 'lecture b', '', NULL, 'V', '', 'None', 'img/20/Course53/Section61/Lecture110/lecturevideo.mp4', '', 3, '2013-08-06 16:14:02', '2013-08-06 16:14:26'),
(111, 53, 62, 'My First Lecture', '', NULL, 'P', '', 'None', 'img/20/Course53/Section62/Lecture111/lecturedocs.pdf', '', 1, '2013-08-06 16:14:39', '2013-08-06 18:54:54'),
(112, 54, 63, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-06 17:49:33', '2013-08-06 17:49:33'),
(113, 55, 64, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-06 18:13:08', '2013-08-06 18:13:08'),
(114, 46, 54, 'lec 2', '', NULL, 'V', '', 'None', 'img/20/Course46/Section54/Lecture114/lecturevideo.mp4', '', 2, '2013-08-06 18:57:19', '2013-08-07 12:07:00'),
(115, 46, 54, 'lec 3', '', NULL, 'A', '', 'None', 'img/20/Course46/Section54/Lecture115/lectureaudio.mp3', '', 3, '2013-08-06 18:59:33', '2013-08-06 19:00:02'),
(116, 56, 65, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-06 22:05:41', '2013-08-06 22:05:41'),
(117, 57, 66, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-06 22:18:28', '2013-08-06 22:18:28'),
(118, 58, 67, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-07 08:50:31', '2013-08-07 08:50:31'),
(119, 59, 68, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-07 08:50:32', '2013-08-07 08:50:32'),
(120, 60, 69, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-07 08:56:00', '2013-08-07 08:56:00'),
(121, 61, 70, 'Lecture 1', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-07 12:48:32', '2013-08-07 12:48:47'),
(122, 61, 70, 'Lecture 2', '', NULL, 'A', '', 'None', 'img/8/Course61/Section70/Lecture122/lectureaudio.mp3', '', 2, '2013-08-07 12:50:19', '2013-08-07 12:51:19'),
(123, 61, 71, 'Lec 1', '', NULL, 'P', '', 'None', 'img/8/Course61/Section71/Lecture123/lecturedocs.pdf', '', 1, '2013-08-07 12:51:42', '2013-08-07 12:53:49'),
(124, 61, 71, 'Lec 2', '', NULL, 'D', '', 'None', 'img/8/Course61/Section71/Lecture124/lecturedocs.pdf', '', 2, '2013-08-07 12:53:57', '2013-08-07 12:54:16'),
(125, 43, 51, 'xxx', '', NULL, 'V', '', 'None', 'img/18/Course43/Section51/Lecture125/lecturevideo.mp4.mp4', '', 1, '2013-08-07 13:45:46', '2013-10-18 15:57:22'),
(127, 47, 55, 'mashup test', '', NULL, 'M', '', 'None', NULL, '', 2, '2013-08-07 14:50:46', '2013-08-07 14:56:53'),
(128, 62, 72, 'Lecture 1', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-07 16:48:58', '2013-08-07 16:52:52'),
(129, 63, 73, 'Lecture 1', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-07 17:17:41', '2013-08-07 17:20:20'),
(130, 47, 55, 'My Second Lecture', '', NULL, 'M', '', 'None', NULL, '', 3, '2013-08-07 17:20:46', '2013-08-08 17:37:56'),
(131, 63, 73, 'lecture 2', '', NULL, 'M', '', 'None', NULL, '', 2, '2013-08-07 17:22:22', '2013-08-07 17:26:48'),
(132, 64, 74, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-07 17:28:07', '2013-08-07 17:29:53'),
(133, 49, 57, 'Second lecture', '', NULL, 'M', '', 'None', NULL, '', 2, '2013-08-07 17:47:27', '2013-08-07 17:50:10'),
(134, 65, 75, 'Lecture 1', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-07 17:59:40', '2013-08-07 18:00:11'),
(135, 66, 76, 'Lecture 1', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-07 18:02:42', '2013-08-07 18:05:34'),
(136, 67, 77, 'Lecture 1', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-07 18:14:22', '2013-08-07 18:17:02'),
(137, 68, 78, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-07 19:02:06', '2013-08-07 19:02:06'),
(138, 69, 79, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-08 02:24:52', '2013-08-08 02:24:52'),
(139, 70, 80, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-08 09:06:13', '2013-08-08 09:06:13'),
(140, 71, 81, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-08 09:08:24', '2013-08-08 09:08:24'),
(141, 47, 55, 'ddddd', '', NULL, 'M', '', 'None', NULL, '', 4, '2013-08-08 17:45:27', '2013-08-13 19:24:29'),
(143, 73, 83, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 15:35:24', '2013-08-09 15:35:24'),
(144, 74, 84, 'Lecture 1', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 16:44:23', '2013-08-09 16:44:55'),
(145, 75, 85, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 16:45:47', '2013-08-09 16:45:47'),
(146, 74, 84, 'Lecture 2', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-08-09 16:47:16', '2013-08-09 16:47:16'),
(147, 76, 86, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 16:56:50', '2013-08-09 16:56:50'),
(148, 77, 87, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 17:04:27', '2013-08-09 17:04:27'),
(149, 78, 88, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 17:15:48', '2013-08-09 17:15:48'),
(150, 79, 89, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-09 17:20:07', '2013-08-13 13:06:38'),
(151, 78, 88, 'Lecture 2', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-08-09 17:20:25', '2013-08-09 17:20:25'),
(153, 81, 91, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 17:22:40', '2013-08-09 17:22:40'),
(154, 82, 92, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 17:57:52', '2013-08-09 17:57:52'),
(155, 83, 93, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 18:07:53', '2013-08-09 18:07:53'),
(156, 84, 94, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 18:08:56', '2013-08-09 18:08:56'),
(157, 85, 95, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-09 18:53:24', '2013-08-09 18:53:24'),
(161, 89, 99, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-10 10:41:14', '2013-08-10 10:41:14'),
(162, 89, 100, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-10 10:43:20', '2013-08-10 10:43:20'),
(163, 90, 101, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-11 22:29:09', '2013-08-11 22:29:09'),
(164, 91, 102, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-11 22:30:51', '2013-08-11 22:30:51'),
(165, 92, 103, 'Lecture 1.0', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-12 11:49:38', '2013-08-12 14:59:33'),
(166, 92, 103, 'lecture 2.0', '', NULL, 'V', '', 'None', 'img/20/Course92/Section103/Lecture166/lecturevideo.mp4', '', 2, '2013-08-12 15:04:09', '2013-08-12 15:05:31'),
(167, 92, 103, 'lecture 3.0', '', NULL, 'A', '', 'None', 'img/20/Course92/Section103/Lecture167/lectureaudio.mp3', '', 3, '2013-08-12 15:05:46', '2013-08-12 15:06:23'),
(168, 92, 103, 'Lecture 4.0', '', NULL, 'P', '', 'None', 'img/20/Course92/Section103/Lecture168/lecturedocs.pdf', '', 4, '2013-08-12 15:06:47', '2013-08-12 15:07:06'),
(169, 92, 103, 'lecture 5.0', '', 'This is the fifth lecture...', 'T', '', 'None', NULL, '', 5, '2013-08-12 15:07:16', '2013-08-12 15:12:37'),
(170, 93, 104, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-13 15:36:28', '2013-08-13 15:36:28'),
(171, 94, 105, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-13 15:37:31', '2013-08-13 15:37:31'),
(172, 95, 106, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-13 16:06:20', '2013-08-13 16:06:20'),
(176, NULL, NULL, 'My Second Lecture', '', NULL, NULL, '', 'None', NULL, '', 0, '2013-08-13 17:40:44', '2013-08-13 17:40:44'),
(178, 96, NULL, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-13 17:49:52', '2013-08-13 17:49:52'),
(180, 96, 109, 'My First Lectures', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-13 17:50:55', '2013-10-07 16:49:29'),
(182, 94, 111, 'My First Lecture', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-08-13 17:53:41', '2013-08-13 19:50:29'),
(183, 94, 111, 'dfgdfg', '', NULL, 'M', '', 'None', NULL, '', 2, '2013-08-13 17:54:31', '2013-08-13 19:37:13'),
(184, 47, 55, 'aaaaa', '', NULL, 'M', '', 'None', NULL, '', 5, '2013-08-13 19:42:04', '2013-08-13 19:43:36'),
(185, NULL, NULL, NULL, '', NULL, 'M', '', 'None', NULL, '', 0, '2013-08-13 19:51:28', '2013-08-13 19:51:28'),
(186, NULL, NULL, NULL, '', NULL, 'M', '', 'None', NULL, '', 0, '2013-08-13 19:53:48', '2013-08-13 19:53:48'),
(187, 47, 55, 'sdfgfdsg', '', NULL, 'M', '', 'None', NULL, '', 6, '2013-08-13 19:56:27', '2013-08-13 19:57:52'),
(188, 47, 55, 'dsfgdsfg', '', NULL, 'M', '', 'None', NULL, '', 7, '2013-08-13 19:59:31', '2013-08-13 20:01:41'),
(189, 72, 82, 'sfdsdgvdsfg ', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-13 20:16:07', '2013-08-13 20:16:07'),
(190, 97, 112, 'ggtrdt', 'undefined', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-13 22:04:23', '2013-11-19 13:27:05'),
(191, 98, 113, 'Lecture !', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-14 10:11:18', '2013-08-14 10:12:14'),
(192, 99, 114, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-14 10:16:11', '2013-08-14 10:16:11'),
(193, 47, 55, 'Test Lecture', '', NULL, NULL, '', 'None', NULL, '', 8, '2013-08-14 13:16:02', '2013-08-14 13:16:02'),
(194, 42, 50, 'My Second Lecture', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-08-15 11:53:08', '2013-08-15 11:53:08'),
(195, 100, 115, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-16 15:02:02', '2013-08-16 15:02:02'),
(196, 101, 116, 'My First Lecture', '', NULL, 'V', 'test.mp4', 'None', 'img/18/Course101/Section116/Lecture196/lecturevideo1388709999.mp4', '', 1, '2013-08-16 15:30:38', '2014-01-03 18:17:01'),
(197, 102, 117, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-16 15:36:05', '2013-08-16 15:36:05'),
(198, 43, 51, 'My Second Lecture', '', NULL, 'M', '', 'None', NULL, '', 3, '2013-08-23 15:02:24', '2013-08-26 13:12:42'),
(199, 43, 51, 'My Third Lecture', '', NULL, 'V', '', 'None', 'img/18/Course43/Section51/Lecture199/lecturevideo.mp4.mp4', '', 4, '2013-08-26 13:30:24', '2013-10-18 15:36:01'),
(200, 43, 51, 'xzcvbcx', '', NULL, 'V', '', 'None', 'img/18/Course43/Section51/Lecture200/lecturevideo.mp4', '', 5, '2013-08-28 14:08:11', '2013-09-09 15:17:19'),
(201, 103, 118, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-29 19:06:02', '2013-08-29 19:06:02'),
(202, 104, 119, 'My First Lecture', '', '<p>\r\n	fdsfdsfdsf</p>\r\n', 'T', '', 'None', NULL, '', 1, '2013-08-30 11:30:59', '2014-01-15 17:43:24'),
(203, 105, 120, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-08-30 14:51:05', '2013-08-30 14:51:05'),
(204, 106, 121, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-09-06 11:00:09', '2013-09-06 11:00:09'),
(205, 43, 51, 'sfda ', '', NULL, 'A', '', 'None', 'img/18/Course43/Section51/Lecture205/lectureaudio.mp3', '', 6, '2013-09-17 18:32:45', '2013-09-17 18:33:13'),
(206, 43, 51, 'A new lecture', '', '<ol>\r\n	<li>\r\n		hello</li>\r\n	<li>\r\n		hello1</li>\r\n	<li>\r\n		hello2</li>\r\n</ol>\r\n', 'T', '', 'None', NULL, '', 7, '2013-09-18 13:32:57', '2013-09-18 13:38:01'),
(207, 43, 122, 'My First Lecture', '', NULL, 'V', '', 'None', 'img/18/Course43/Section122/Lecture207/lecturevideo.mov.mp4', '', 1, '2013-09-18 13:33:46', '2013-09-24 13:01:13'),
(208, 107, 123, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-09-23 15:52:17', '2013-09-23 15:52:17'),
(209, 43, 122, 'testing ffmpeg', '', NULL, 'V', '', 'None', 'img/18/Course43/Section122/Lecture209/lecturevideo.mp4', '', 2, '2013-09-23 18:38:23', '2013-09-23 18:50:41'),
(210, 43, 122, 'dsfvg ', '', NULL, 'V', '', 'None', 'img/18/Course43/Section122/Lecture210/lecturevideo.MOV.mp4', '', 2, '2013-09-24 12:01:44', '2013-09-24 12:58:57'),
(212, 43, 51, 'A new one in a section', '', NULL, NULL, '', 'None', NULL, '', 8, '2013-10-07 16:08:14', '2013-10-07 16:08:14'),
(213, 43, 51, 'mashup video test 2', '', NULL, 'V', '', 'None', 'img/18/Course43/Section51/Lecture213/lecturevideo.mp4', '', 9, '2013-10-07 16:51:47', '2013-10-07 17:41:01'),
(214, 43, 51, 'mashup testin 3', '', NULL, NULL, '', 'None', NULL, '', 10, '2013-10-07 17:41:53', '2013-10-07 17:41:53'),
(215, 43, 122, 'fds', '', NULL, 'P', '', 'None', 'img/18/Course43/Section122/Lecture215/lecturedocs.pptx', '', 3, '2013-10-09 12:07:45', '2013-10-09 14:35:38'),
(216, 43, 122, 'sadf s f', '', NULL, 'D', '', 'None', 'img/18/Course43/Section122/Lecture216/lecturedocs.docx', '', 4, '2013-10-09 12:10:41', '2013-10-09 12:10:57'),
(217, 43, 122, 'Audio Testing', '', NULL, 'A', '', 'None', 'img/18/Course43/Section122/Lecture217/lectureaudio.m4a.mp3', '', 5, '2013-10-09 13:10:55', '2013-10-09 14:31:36'),
(218, 43, 122, 'g sdfgdfsgs', '', NULL, 'D', '', 'None', 'img/18/Course43/Section122/Lecture218/lecturedocs.doc', '', 6, '2013-10-09 14:36:35', '2013-10-09 14:36:46'),
(219, 43, 122, 'A new one is here', '', NULL, 'P', '', 'None', 'img/18/Course43/Section122/Lecture219/lecturedocs.notebook', '', 8, '2013-10-11 19:00:06', '2013-10-16 12:40:37'),
(221, 108, 125, 'My First Lecture', '', NULL, 'V', '', 'None', 'img/3/Course108/Section125/Lecture221/lecturevideo.mov.mp4', '', 1, '2013-10-15 12:09:49', '2013-10-18 11:15:58'),
(222, 108, 126, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-10-15 12:09:56', '2013-10-15 12:09:56'),
(223, 108, 127, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-10-15 12:10:51', '2013-10-15 12:10:51'),
(225, 108, 128, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-10-15 12:14:06', '2013-10-15 12:14:06'),
(226, 109, 129, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-10-15 12:57:53', '2013-10-15 12:57:53'),
(227, 109, 130, 'My First Lecture', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-10-15 13:15:52', '2013-10-15 13:15:52'),
(228, 109, 129, 'lecture three for module one', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-10-15 13:16:18', '2013-10-15 13:16:18'),
(229, 108, 125, 'rtgb', '', '<p>\r\n	rgwertwert</p>\r\n', 'T', '', 'None', NULL, '', 2, '2013-10-16 09:41:51', '2013-10-18 11:19:27'),
(230, 108, 126, 'rtgfbdetf', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-10-16 09:42:34', '2013-10-16 09:42:34'),
(231, 108, 126, 'module 3 lecture 3', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-10-16 09:43:08', '2013-10-16 09:43:08'),
(232, 43, 122, 'asdas', '', NULL, 'M', '', 'None', NULL, '', 9, '2013-10-16 20:30:55', '2013-10-16 20:33:38'),
(233, 108, 125, 'erfgv', '', '<p>\r\n	erergtert</p>\r\n', 'T', '', 'None', NULL, '', 3, '2013-10-17 14:32:07', '2013-10-18 11:15:58'),
(234, 43, 51, 'A New Lecture', '', NULL, NULL, '', 'None', NULL, '', 10, '2013-10-23 17:49:00', '2013-10-23 17:49:00'),
(236, 110, 133, 'My First Lecture', '', NULL, 'V', 'lecturevideo.mov', 'None', 'img/18/Course110/Section133/Lecture236/lecturevideo.mov.mp4', '', 1, '2013-10-23 18:44:28', '2013-10-24 18:45:28'),
(237, 110, 133, 'A New Lecture', '', NULL, 'V', 'VIDEO0165.mp4', 'None', 'img/18/Course110/Section133/Lecture237/lecturevideo.mp4', '', 2, '2013-10-24 16:16:31', '2013-10-24 18:46:39'),
(238, 110, 133, 'A New Lecture', '', NULL, 'V', 'DONALD DUCK IN HINDI EP - DONALDS DINNER DATE VERY FUNNY CARTOON IN HINDI.mp4', 'None', 'img/18/Course110/Section133/Lecture238/lecturevideo.mp4', '', 3, '2013-10-24 16:35:39', '2013-10-24 16:37:48'),
(239, 110, 133, 'A New Lecture', '', NULL, 'P', 'Tutorial.pdf', 'None', 'img/18/Course110/Section133/Lecture239/lecturedocs.pdf', '', 4, '2013-10-24 17:01:15', '2013-10-24 18:28:21'),
(240, 111, 134, 'upload video', 'undefined', NULL, 'V', 'MVI_2073.MOV', 'None', 'img/18/Course111/Section134/Lecture240/lecturevideo.MOV.mp4', '', 1, '2013-10-24 17:09:15', '2013-10-25 18:22:31'),
(241, 111, 134, 'mov', 'undefined', NULL, 'V', 'Hot Air Balloon- Owl City _new song_ Music Video w_ Lyrics.mp4', 'None', 'img/18/Course111/Section134/Lecture241/lecturevideo.mp4', '', 2, '2013-10-24 17:12:59', '2013-10-24 17:14:57'),
(242, 111, 134, 'wmv', 'undefined', NULL, 'V', 'wmv.wmv', 'None', 'img/18/Course111/Section134/Lecture242/lecturevideo.wmv.mp4', '', 3, '2013-10-24 17:15:23', '2013-10-24 17:20:21'),
(243, 111, 134, 'AVI', 'undefined', NULL, 'V', 'tANK_Video.avi', 'None', 'img/18/Course111/Section134/Lecture243/lecturevideo.avi.mp4', '', 4, '2013-10-24 17:20:39', '2013-10-24 17:22:05'),
(244, 111, 134, 'wmv1', 'undefined', NULL, 'V', 'MVI_2073.MOV', 'None', 'img/18/Course111/Section134/Lecture244/lecturevideo.MOV.mp4', '', 5, '2013-10-24 17:27:23', '2013-10-25 11:46:01'),
(245, 110, 133, 'A New Lecture', '', NULL, 'A', '08 - Bhaag Milkha Bhaag (Rock Version) - DownloadMing.SE.mp3', 'None', 'img/18/Course110/Section133/Lecture245/lectureaudio.mp3', '', 5, '2013-10-24 18:30:15', '2013-10-24 18:30:59'),
(246, 112, 135, 'A New Lecture', '', NULL, 'V', 'DONALD DUCK IN HINDI EP - DONALDS DINNER DATE VERY FUNNY CARTOON IN HINDI.mp4', 'None', 'img/18/Course112/Section135/Lecture246/lecturevideo.mp4', '', 1, '2013-10-28 10:44:42', '2013-10-29 15:44:52'),
(249, 111, 134, 'A New Lecture', '', NULL, NULL, '', 'None', NULL, '', 6, '2013-10-28 16:08:35', '2013-10-28 16:08:35'),
(250, 112, 135, 'A New Lesson', '', NULL, 'V', 'DONALD DUCK IN HINDI EP - DONALDS DINNER DATE VERY FUNNY CARTOON IN HINDI.mp4', 'None', 'img/18/Course112/Section135/Lecture250/lecturevideo.mp4', '', 2, '2013-10-29 15:45:44', '2013-10-29 15:52:33'),
(251, 112, 135, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-10-29 17:06:53', '2013-10-29 17:06:53'),
(252, 114, 137, 'A New Lesson', 'undefined', NULL, 'V', 'DONALD DUCK IN HINDI EP - DONALDS DINNER DATE VERY FUNNY CARTOON IN HINDI.mp4', 'None', 'img/18/Course114/Section137/Lecture252/lecturevideo.mp4', '', 1, '2013-10-31 09:39:43', '2013-11-06 11:20:35'),
(253, 114, 137, 'A New Lesson', '', NULL, 'V', 'DONALD DUCK IN HINDI EP - DONALDS DINNER DATE VERY FUNNY CARTOON IN HINDI.mp4', 'None', 'img/18/Course114/Section137/Lecture253/lecturevideo.mp4', '', 2, '2013-10-31 15:53:07', '2013-10-31 19:45:58'),
(254, 114, 137, 'A New Lesson', '', NULL, 'V', 'DONALD DUCK IN HINDI EP - DONALDS DINNER DATE VERY FUNNY CARTOON IN HINDI.mp4', 'None', 'img/18/Course114/Section137/Lecture254/lecturevideo.mp4', '', 3, '2013-10-31 19:46:19', '2013-10-31 19:53:12'),
(255, 114, 137, 'A New Lesson', '', NULL, 'V', 'lecturevideo.mov', 'None', 'img/18/Course114/Section137/Lecture255/lecturevideo.mov.mp4', '', 4, '2013-10-31 19:54:40', '2013-11-01 15:22:12'),
(256, 114, 137, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 5, '2013-10-31 20:40:47', '2013-10-31 20:40:47'),
(257, 114, 137, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 6, '2013-11-01 16:36:16', '2013-11-01 16:36:16'),
(260, 116, 140, 'A New Lesson', '', NULL, 'A', '01 - Gurbani - DownloadMing.SE.mp3', 'None', 'img/18/Course116/Section140/Lecture260/lectureaudio.mp3', '', 1, '2013-11-07 15:48:30', '2013-11-07 15:49:14'),
(261, 116, 140, 'A New Lesson', '', NULL, 'V', 'wmv.wmv', 'None', 'img/18/Course116/Section140/Lecture261/lecturevideo.wmv.mp4', '', 2, '2013-11-09 12:12:30', '2013-11-09 13:05:18'),
(262, 116, 140, 'A New Lesson', '', NULL, 'V', 'DONALD_DUCK_IN_HINDI_EP_DONALDS_DINNER_DATE_VERY_F.wmv', 'None', 'img/18/Course116/Section140/Lecture262/lecturevideo.wmv.mp4', '', 3, '2013-11-09 12:21:26', '2013-11-09 14:38:44'),
(263, 116, 140, 'A New Lesson', '', NULL, 'V', 'DONALD_DUCK_IN_HINDI_EP_DONALDS_DINNER_DATE_VERY_F.wmv', 'None', 'img/18/Course116/Section140/Lecture263/lecturevideo.wmv.mp4', '', 4, '2013-11-09 14:40:23', '2013-11-09 15:57:08'),
(264, 115, 139, 'A New Lesson', '', NULL, 'V', 'trailer_480p.mov', 'None', 'img/18/Course115/Section139/Lecture264/lecturevideo.mov.mp4', '', 1, '2013-11-09 16:12:23', '2013-11-09 16:19:11'),
(265, 118, 142, 'A New Lesson', '', NULL, 'V', 'test.mp4', 'None', 'img/18/Course118/Section142/Lecture265/lecturevideo.mp4', '', 1, '2013-11-11 10:29:42', '2013-11-12 17:15:11'),
(266, 118, 142, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 2, '2013-11-11 10:30:02', '2013-11-11 10:30:02'),
(267, 118, 142, 'A New bjkn', 'undefined', NULL, NULL, '', 'None', NULL, '', 3, '2013-11-11 16:53:36', '2013-11-11 16:53:46'),
(268, 119, 144, 'A New Lesson', '', NULL, 'M', '', 'None', NULL, '', 1, '2013-11-12 18:01:36', '2013-11-12 18:05:34'),
(269, 119, 144, 'A New Lesson', 'undefined', NULL, 'M', '', 'None', NULL, '', 2, '2013-11-12 19:23:41', '2013-11-12 19:27:10'),
(270, 119, 144, 'A New Lesson', '', NULL, 'P', 'Session2.pptx', 'None', 'img/18/Course119/Section144/Lecture270/lecturedocs.pptx', '', 3, '2013-11-13 15:09:04', '2013-11-13 15:09:16'),
(271, 121, 146, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 1, '2013-11-14 19:27:06', '2013-11-14 19:27:06'),
(273, 124, 149, 'Lession1', 'undefined', NULL, NULL, '', 'None', NULL, '', 1, '2013-11-18 15:49:41', '2013-11-18 15:49:52'),
(275, 46, 151, 'Lesson 1', 'undefined', NULL, NULL, '', 'None', NULL, '', 1, '2013-11-21 13:15:23', '2013-11-21 13:15:32'),
(276, 123, 150, 'A New Lesson', '', NULL, 'A', '01_Gurbani_DownloadMing.wav', 'None', 'img/18/Course123/Section150/Lecture276/lectureaudio1385063000.wav.mp3', '', 1, '2013-11-21 13:24:52', '2013-11-22 13:13:27'),
(277, 123, 150, 'A New Lesson', '', NULL, 'V', 'test.mp4', 'None', 'img/18/Course123/Section150/Lecture277/lecturevideo1386023304.mp4', '', 2, '2013-11-21 15:11:27', '2013-12-03 15:58:46'),
(278, 123, 150, 'A New Lesson', '', NULL, 'V', 'Jagao Mere Des Ko - A.R Rahman, Suchi, Blaaze - Coke Studio @ MTV Season 3', 'Youtube', '7FKEy_RWwQk', '', 3, '2013-11-21 15:17:50', '2013-12-03 12:00:37'),
(279, 123, 150, 'A New Lesson', '', NULL, 'P', 'Session2.pptx', 'None', 'img/18/Course123/Section150/Lecture279/lecturedocs1385362683.pptx', '', 4, '2013-11-25 12:27:49', '2013-11-25 12:28:04'),
(280, 123, 150, 'A New Lesson', '', '<p>\r\n	Hello Sir</p>\r\n', 'T', '', 'None', NULL, '', 5, '2013-11-25 12:36:09', '2013-11-25 12:36:22'),
(281, 123, 150, 'A New Lesson', '', NULL, 'M', '', 'None', NULL, '', 6, '2013-11-27 15:23:33', '2014-01-29 18:54:36'),
(282, 123, 150, 'A New Lesson', '', NULL, 'M', '', 'None', NULL, '', 7, '2013-11-27 18:02:04', '2013-11-27 18:07:27'),
(283, 123, 150, 'A New Lesson', '', NULL, 'P', 'abc.pdf', 'None', 'img/18/Course123/Section150/Lecture283/lecturedocs1385518929.pdf', '', 8, '2013-11-27 19:43:33', '2013-11-27 19:52:09'),
(284, 123, 150, 'A New Lesson', '', NULL, 'V', 'Dhoom 3 Theatrical Trailer', 'Vimeo', '78249340', '', 9, '2013-12-03 10:55:49', '2013-12-03 12:18:37'),
(285, 123, 150, 'A New Lesson', '', NULL, 'V', 'Wee - When The Night Comes', 'Youtube', 'srMFb6zpx2Y', '', 10, '2013-12-03 12:16:27', '2013-12-03 12:17:10'),
(286, 123, 150, 'A New Lesson', 'undefined', NULL, 'V', 'Koffee With Karan - Salman Khan on Koffee With Karan - [Full Episode]', 'Youtube', 'FiNyMQCa0As', '', 11, '2013-12-03 15:10:16', '2014-01-15 18:52:16'),
(287, 123, 150, 'A New Lesson', '', NULL, 'V', 'Charkha Nolakha HD, Atif Aslam and Qayaas, Coke Studio Pakistan, Season 5, Episode 1', 'Vimeo', '51215211', '', 12, '2013-12-03 15:33:36', '2013-12-03 15:35:39'),
(289, 125, 152, 'A New Lesson', '', NULL, 'V', 'Koffee With Karan - Season 4 - Kareena and Ranbir on Koffee With Karan - [Full Episode]', 'Youtube', 'JWqRkJzwKFE', '', 1, '2013-12-12 11:45:51', '2013-12-12 12:32:11'),
(290, 123, 150, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 13, '2013-12-17 18:10:17', '2013-12-17 18:10:17'),
(291, 125, 152, 'A New Lesson', '', NULL, 'V', 'lecturevideo.mov', 'None', 'img/18/Course125/Section152/Lecture291/lecturevideo1387523716.mov.mp4', '', 2, '2013-12-20 12:44:37', '2013-12-20 12:47:17'),
(292, 125, 152, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-12-20 18:38:39', '2013-12-20 18:38:39'),
(293, 125, 152, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 4, '2013-12-20 18:38:42', '2013-12-20 18:38:42'),
(294, 128, 155, 'A New Lesson', '', '<p>\r\n	test</p>\r\n', 'T', '', 'None', NULL, '', 1, '2013-12-23 12:30:54', '2013-12-26 09:46:10'),
(295, 128, 155, 'A New Lesson', 'undefined', NULL, NULL, '', 'None', NULL, '', 2, '2013-12-23 12:35:38', '2013-12-26 14:29:33'),
(296, 128, 155, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 3, '2013-12-23 12:35:41', '2013-12-23 12:35:41'),
(297, 128, 155, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 4, '2013-12-26 14:29:40', '2013-12-26 14:29:40'),
(298, 127, 154, 'A New Lesson', '', '<p>\r\n	Java lectures</p>\r\n', 'T', '', 'None', NULL, '', 1, '2014-01-03 11:49:36', '2014-01-03 11:49:57'),
(299, 128, 155, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 5, '2014-01-08 18:00:35', '2014-01-08 18:00:35'),
(300, 129, 156, 'A New Lessonsxc.khqdjkc', 'undefined', NULL, NULL, '', 'None', NULL, '', 1, '2014-01-08 18:06:16', '2014-01-08 18:06:20'),
(301, 130, 157, 'A New Lesson', '', NULL, 'V', 'capturedvideo.MOV', 'None', 'img/18/Course130/Section157/Lecture301/lecturevideo1389312756.MOV.mp4', '', 1, '2014-01-10 17:40:21', '2014-01-10 17:42:49'),
(302, 130, 157, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 2, '2014-01-10 17:45:49', '2014-01-10 17:45:49'),
(303, 131, 158, 'A New Lesson', 'undefined', NULL, 'V', 'trim.DE6A5B4F-0B62-43FF-BD24-5EA5F2D07CCD.MOV', 'None', 'img/18/Course131/Section158/Lecture303/lecturevideo1390178465.MOV.mp4', '', 1, '2014-01-10 17:46:25', '2014-01-20 18:12:22'),
(304, 132, 159, 'A New LessonYyyyy', 'undefined', NULL, NULL, '', 'None', NULL, '', 1, '2014-01-13 10:49:06', '2014-01-13 10:49:17'),
(305, 131, 158, 'A New Lesson', '', NULL, 'V', 'lecturevideo.mov', 'None', 'img/18/Course131/Section158/Lecture305/lecturevideo1390255106.mov.mp4', '', 2, '2014-01-21 15:27:57', '2014-01-21 15:30:26'),
(306, 131, 158, 'Mashup', 'undefined', NULL, 'M', '', 'None', NULL, '', 3, '2014-01-21 15:34:31', '2014-01-21 15:43:18'),
(307, 132, 159, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 2, '2014-01-24 11:30:07', '2014-01-24 11:30:07'),
(308, 134, 162, 'A New Lesson', 'undefined', NULL, NULL, '', 'None', NULL, '', 1, '2014-01-27 11:43:37', '2014-01-27 11:43:41'),
(309, 123, 150, 'A New Lesson', '', NULL, 'M', '', 'None', NULL, '', 14, '2014-01-29 18:55:52', '2014-01-29 18:57:48'),
(310, 137, 165, 'A New Les', 'undefined', '', 'T', '', 'None', NULL, '', 1, '2014-02-11 03:20:09', '2014-04-22 23:17:15'),
(311, 137, 165, 'A New Lesson', '', '', 'T', '', 'None', NULL, '', 2, '2014-03-18 04:57:19', '2014-03-18 04:57:42'),
(312, 138, 168, 'A New Lesson', 'undefined', NULL, 'V', 'IMG_4627.MOV', 'None', 'img/45/Course138/Section168/Lecture312/lecturevideo1400754414.MOV.mp4', '', 1, '2014-05-22 04:46:03', '2014-05-22 05:27:57'),
(313, 138, 168, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 2, '2014-05-22 05:30:29', '2014-05-22 05:30:29'),
(314, 139, 170, 'A New Lesson', '', '', 'T', '', 'None', NULL, '', 1, '2014-06-10 03:50:51', '2014-06-10 03:52:02'),
(315, 114, 137, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 7, '2014-06-13 04:56:37', '2014-06-13 04:56:37'),
(316, 114, 137, 'A New Lesson', '', NULL, NULL, '', 'None', NULL, '', 8, '2014-06-13 04:56:48', '2014-06-13 04:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `course_mashup`
--

CREATE TABLE IF NOT EXISTS `course_mashup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `course_lecture_id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `doc` varchar(255) NOT NULL,
  `xml` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `video` (`video`,`doc`,`xml`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `course_mashup`
--

INSERT INTO `course_mashup` (`id`, `course_id`, `course_lecture_id`, `video`, `doc`, `xml`, `created`, `modified`) VALUES
(1, 47, 187, '2013-08-13-1956411mb.mp4', '2013-08-13-152651tutorial.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2013-08-13-152651tutorial.xml', '2013-08-07 13:01:23', '2013-08-13 19:57:52'),
(2, 47, 102, '2013-08-07-142036lola_MOV.mp4', 'StoneyPointdetails.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/StoneyPointdetails.xml', '2013-08-07 14:24:40', '2013-08-07 14:24:40'),
(3, 47, 188, '2013-08-13-2001271mb.mp4', '2013-08-13-153118phpsec_cheatsheet.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2013-08-13-153118phpsec_cheatsheet.xml', '2013-08-13 20:01:41', '2013-08-13 20:01:41'),
(4, 96, 180, '2013-08-13-2002571mb.mp4', '2013-08-13-153314tutorial.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2013-08-13-153314tutorial.xml', '2013-08-13 20:04:04', '2013-08-13 20:04:04'),
(5, 43, 198, '2013-08-26-130726MP_4.mp4', 'graphicstutorial1.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/graphicstutorial1.xml', '2013-08-26 13:12:42', '2013-08-26 13:12:42'),
(6, 43, 232, '2013-10-16-2031261mb.mp4', 'tutorial.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/tutorial.xml', '2013-10-16 20:33:38', '2013-10-16 20:33:38'),
(7, 119, 268, '54VIDEO0057', '2013-11-12-123215oyt_websitepresentation.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2013-11-12-123215oyt_websitepresentation.xml', '2013-11-12 18:05:34', '2013-11-12 18:05:34'),
(8, 119, 269, '2908lecturevideo', '2013-11-12-135601stoneypointdetails.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2013-11-12-135601stoneypointdetails.xml', '2013-11-12 19:27:10', '2013-11-12 19:27:10'),
(9, 123, 281, '51661mb', '2013-11-27-122131abc.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2013-11-27-122131abc.xml', '2013-11-27 17:52:40', '2013-11-27 17:52:40'),
(10, 123, 282, '1303untitled', '2013-11-27-123632abc.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2013-11-27-123632abc.xml', '2013-11-27 18:07:27', '2013-11-27 18:07:27'),
(11, 131, 306, '470lola_MOV', '2014-01-21-101203tutorial.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2014-01-21-101203tutorial.xml', '2014-01-21 15:43:18', '2014-01-21 15:43:18'),
(12, 123, 281, '29751mb', '2014-01-29-132333tutorial.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2014-01-29-132333tutorial.xml', '2014-01-29 18:54:36', '2014-01-29 18:54:36'),
(13, 123, 309, '5581mb', '2014-01-29-132640tutorial.pdf', 'http://1337iot.zapbuild.com/files/mashup_xml/2014-01-29-132640tutorial.xml', '2014-01-29 18:57:48', '2014-01-29 18:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `course_passwords`
--

CREATE TABLE IF NOT EXISTS `course_passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `course_passwords`
--

INSERT INTO `course_passwords` (`id`, `course_id`, `password`, `created`, `modified`) VALUES
(1, 107, '123456', '2013-07-19 16:19:02', '2013-11-13 10:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `course_quizzes`
--

CREATE TABLE IF NOT EXISTS `course_quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_section_id` int(11) NOT NULL,
  `course_lecture_id` int(11) NOT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `publish` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_section_id` (`course_section_id`),
  KEY `course_lecture_id` (`course_lecture_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `course_quizzes`
--

INSERT INTO `course_quizzes` (`id`, `course_section_id`, `course_lecture_id`, `heading`, `content`, `publish`, `created`, `modified`) VALUES
(9, 21, 50, 'Quiz 1', '<p>\n	who is the queen</p>\n', NULL, '2013-07-22 16:48:01', '2013-07-22 17:07:05'),
(10, 22, 56, 'Quiz 1 of mine', '', NULL, '2013-07-22 17:09:56', '2013-07-22 17:09:56'),
(11, 22, 56, 'Quiz 2', '', NULL, '2013-07-22 17:35:36', '2013-07-22 17:35:36'),
(12, 23, 63, 'quiz1', '<div>\n	<div class="lc">\n		<p>\n			<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n	</div>\n	<div class="rc">\n		<p>\n			It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n	</div>\n</div>\n<p>\n	&nbsp;</p>\n<div class="lc">\n	<p>\n		Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\n	<p>\n		The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n</div>\n<p>\n	&nbsp;</p>\n', NULL, '2013-07-23 13:03:38', '2013-07-23 13:04:57'),
(14, 24, 64, 'A new Quiz', '<p>\n	A dummy Quiz</p>\n', NULL, '2013-07-23 17:18:12', '2013-07-23 17:20:00'),
(15, 16, 77, 'quiz 1', '', NULL, '2013-07-23 18:39:12', '2013-07-23 18:39:12'),
(16, 22, 56, 'Quiz 3', '', NULL, '2013-07-30 13:12:53', '2013-07-30 13:12:53'),
(17, 62, 111, 'quiz a', '<p>\n	What is water</p>\n', NULL, '2013-08-06 16:15:01', '2013-08-06 16:15:57'),
(18, 71, 124, 'Quiz 1', '<p>\n	What is Sun?</p>\n', NULL, '2013-08-07 12:54:26', '2013-08-07 12:57:12'),
(19, 50, 97, 'Hello Quiz', 'Hello Dummy Quiz description', NULL, '2013-08-09 16:30:28', '2013-08-09 22:26:12'),
(20, 103, 165, 'Quiz 1', '', NULL, '2013-08-12 15:03:28', '2013-08-12 15:03:28'),
(21, 103, 165, 'Quiz 1', '', NULL, '2013-08-12 15:03:36', '2013-08-12 15:03:36'),
(23, 55, 193, 'sdaf ', '', NULL, '2013-08-14 20:00:57', '2013-08-14 20:00:57'),
(24, 111, 183, 'sdgfds', '', NULL, '2013-08-14 20:02:56', '2013-08-14 20:02:56'),
(25, 119, 202, 'test', '', NULL, '2013-08-30 11:31:11', '2013-08-30 11:31:11'),
(26, 120, 203, 'test', '', NULL, '2013-08-30 14:55:06', '2013-08-30 14:55:06'),
(27, 122, 218, 'sadf', '<p>\n	vgfdv&nbsp; sadf</p>\n', NULL, '2013-10-10 15:00:03', '2013-10-10 15:00:35'),
(28, 133, 236, 'A new Quiz', '', NULL, '2013-10-23 18:55:19', '2013-10-23 18:55:19'),
(29, 135, 0, 'A new Quiz', '', NULL, '2013-10-25 18:34:09', '2013-10-25 18:34:09'),
(31, 134, 249, 'A new Quiz', 'sdksl;dksal;dkl;sakdl;askdl;sakdl;ksa;ldkasl;kdl;sakdl;sakfl;sdkfl;dskf;lsdkfl;dskfl;dskf;ldskfl;dskfld;skfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;dskfl;d', NULL, '2013-10-28 17:12:06', '2013-10-28 17:12:38'),
(32, 134, 249, 'A new Quiz', '', NULL, '2013-10-28 17:12:41', '2013-10-28 17:12:41'),
(33, 135, 0, 'A new Quiz', '', NULL, '2013-10-29 12:52:33', '2013-10-29 12:52:33'),
(34, 142, 267, 'test', 'testing', NULL, '2013-11-12 17:01:54', '2013-11-12 17:02:18'),
(35, 150, 0, 'A new Quiz', '', NULL, '2013-11-20 17:17:08', '2013-11-20 17:17:08'),
(36, 155, 296, 'A new Quiz', '', NULL, '2013-12-26 12:33:45', '2013-12-26 12:33:45'),
(37, 154, 298, 'Weekly', '', NULL, '2014-01-03 11:50:13', '2014-01-03 11:50:22'),
(38, 150, 290, 'A new Quiz', '', NULL, '2014-01-15 18:51:37', '2014-01-15 18:51:37'),
(39, 168, 312, 'A new Quiz', '', NULL, '2014-05-22 04:46:36', '2014-05-22 04:46:36'),
(40, 137, 257, 'A new Quiz', '', NULL, '2014-06-13 04:55:28', '2014-06-13 04:55:28'),
(41, 137, 316, 'A new Quiz', '', NULL, '2014-06-13 04:56:58', '2014-06-13 04:56:58'),
(42, 161, 0, 'A new Quiz', '', NULL, '2014-07-23 07:29:12', '2014-07-23 07:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `course_quiz_questions`
--

CREATE TABLE IF NOT EXISTS `course_quiz_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_quiz_id` int(11) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `type` enum('B','M','F') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `course_quiz_questions`
--

INSERT INTO `course_quiz_questions` (`id`, `course_quiz_id`, `question`, `type`, `created`, `modified`) VALUES
(1, 2, '<p>\n	sdfg dsfg sdf gsdfg</p>\n', NULL, '2013-07-19 14:46:12', '2013-07-19 14:46:12'),
(2, 2, '<p>\n	sdfg dsfg sdf gsdfg</p>\n', NULL, '2013-07-19 14:48:24', '2013-07-19 14:48:24'),
(3, 2, '<p>\n	xbgvbgdfb</p>\n', 'M', '2013-07-19 14:48:59', '2013-07-19 14:48:59'),
(4, 2, '<p>\n	xbgvbgdfb</p>\n', 'M', '2013-07-19 14:49:33', '2013-07-19 14:49:33'),
(5, 2, '<p>\n	xbgvbgdfb</p>\n', 'M', '2013-07-19 14:49:57', '2013-07-19 14:49:57'),
(6, 2, '<p>\n	dsfgfsdgfsdgsdf</p>\n', 'M', '2013-07-19 15:13:33', '2013-07-19 15:13:33'),
(7, 2, '<p>\n	dsfgfsdgfsdgsdf</p>\n', 'M', '2013-07-19 15:14:06', '2013-07-19 15:14:06'),
(8, 2, '<p>\n	dsfgfsdgfsdgsdf</p>\n', 'M', '2013-07-19 15:14:30', '2013-07-19 15:14:30'),
(9, 2, '<p>\n	dsfgfsdgfsdgsdf</p>\n', 'M', '2013-07-19 15:15:10', '2013-07-19 15:15:10'),
(10, 2, '<p>\n	dsfgfsdgfsdgsdf</p>\n', 'M', '2013-07-19 15:15:36', '2013-07-19 15:15:36'),
(11, 2, '<p>\n	dsfgfsdgfsdgsdf</p>\n', 'M', '2013-07-19 15:16:04', '2013-07-19 15:16:04'),
(12, 2, '<p>\n	vs ddwsaf&nbsp; asdf sa sadf a fasdf</p>\n', 'M', '2013-07-19 15:54:29', '2013-07-19 15:54:29'),
(13, 2, '<p>\n	sdgfds sdfgsda</p>\n', 'M', '2013-07-19 15:56:57', '2013-07-19 15:56:57'),
(14, 2, '<p>\n	sdgfds sdfgsda</p>\n', 'M', '2013-07-19 15:57:42', '2013-07-19 15:57:42'),
(15, 2, '<p>\n	sdgfds sdfgsda</p>\n', 'M', '2013-07-19 15:58:18', '2013-07-19 15:58:18'),
(16, 2, '<p>\n	xcbvxcb dbvgd</p>\n', 'B', '2013-07-19 15:59:36', '2013-07-19 15:59:36'),
(17, 2, '<p>\n	zxcvxzcv</p>\n', 'B', '2013-07-19 16:00:33', '2013-07-19 16:00:33'),
(18, 2, '<p>\n	zxcvxzcv</p>\n', 'B', '2013-07-19 16:01:07', '2013-07-19 16:01:07'),
(19, 2, '<p>\n	zxcvxzcv</p>\n', 'B', '2013-07-19 16:02:14', '2013-07-19 16:02:14'),
(20, 2, '<p>\n	zxcvxzcv</p>\n', 'B', '2013-07-19 16:03:12', '2013-07-19 16:03:12'),
(21, 2, '<p>\n	Hello_,are_?</p>\n', 'F', '2013-07-19 16:07:01', '2013-07-19 16:07:01'),
(22, 2, '<p>\n	Hello_,are_?</p>\n', 'F', '2013-07-19 16:07:23', '2013-07-19 16:07:23'),
(23, 2, '<p>\n	Hello_,are_?</p>\n', 'F', '2013-07-19 16:08:31', '2013-07-19 16:08:31'),
(24, 8, '<p>\n	Hello Give me answer?</p>\n', 'M', '2013-07-19 16:49:39', '2013-07-19 16:49:39'),
(25, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:06:53', '2013-07-22 17:06:53'),
(26, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:06:57', '2013-07-22 17:06:57'),
(27, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:00', '2013-07-22 17:07:00'),
(28, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(29, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(30, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(31, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(32, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(33, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(34, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(35, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:03', '2013-07-22 17:07:03'),
(36, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:04', '2013-07-22 17:07:04'),
(37, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:04', '2013-07-22 17:07:04'),
(38, 9, '<p>\n	I am the Queen.</p>\n', 'B', '2013-07-22 17:07:06', '2013-07-22 17:07:06'),
(39, 12, '<p>\n	Whats my name?</p>\n', 'M', '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(40, 12, '<p>\n	Whats my name?</p>\n', 'M', '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(41, 14, '<p>\n	Hello__How__are__you?</p>\n', 'F', '2013-07-23 17:18:46', '2013-07-23 17:18:46'),
(42, 14, '<p>\n	Sky is blue?</p>\n', 'B', '2013-07-23 17:19:10', '2013-07-23 17:19:10'),
(43, 14, '<p>\n	Who is king?</p>\n', 'M', '2013-07-23 17:20:00', '2013-07-23 17:20:00'),
(44, 17, '<p>\n	What is water.</p>\n<p>\n	water is a way to life.</p>\n', 'B', '2013-08-06 16:15:58', '2013-08-06 16:15:58'),
(45, 18, '<p>\n	What is Sun?</p>\n', 'M', '2013-08-07 12:57:12', '2013-08-07 12:57:12'),
(46, 20, 'What is rainbow?', 'M', '2013-08-12 15:14:45', '2013-08-12 15:14:45'),
(47, 21, 'Are dolphins pink?', 'B', '2013-08-12 15:15:21', '2013-08-12 15:15:21'),
(48, 23, 'sad fdsafdsf asd fsadf sd', 'F', '2013-08-14 20:01:06', '2013-08-14 20:01:06'),
(49, 24, 'sdf f', 'F', '2013-08-14 20:03:04', '2013-08-14 20:03:04'),
(50, 22, 'hfdfgf', 'M', '2013-08-30 15:13:24', '2013-08-30 16:49:21'),
(51, 22, 'God is one?', 'B', '2013-08-30 15:14:15', '2013-09-05 11:35:29'),
(52, 29, 'Hello?', 'B', '2013-10-25 18:34:43', '2013-10-25 18:36:36'),
(53, 29, 'Good?', 'M', '2013-10-25 18:37:03', '2013-10-28 14:17:39'),
(54, 35, 'test', 'M', '2013-11-20 17:17:48', '2014-01-14 12:15:48'),
(55, 35, 'test2', 'B', '2013-11-20 17:18:06', '2013-12-10 12:16:30'),
(56, 37, 'Is java client side language', 'B', '2014-01-03 11:50:45', '2014-01-03 11:50:45'),
(57, 39, '1. Who''ll be the next PM of India?', 'M', '2014-05-22 05:30:15', '2014-05-22 05:30:15'),
(58, 42, 'Multiple type question?', 'M', '2014-07-23 07:30:08', '2014-07-23 07:30:08'),
(59, 42, 'True or False?', 'B', '2014-07-23 07:30:44', '2014-07-23 07:30:44'),
(60, 42, 'This is a _good_ example of fill in the blanks.', 'F', '2014-07-23 07:31:13', '2014-07-23 07:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `course_quiz_question_options`
--

CREATE TABLE IF NOT EXISTS `course_quiz_question_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_quiz_question_id` int(11) NOT NULL,
  `options` varchar(200) DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `course_quiz_question_options`
--

INSERT INTO `course_quiz_question_options` (`id`, `course_quiz_question_id`, `options`, `answer`, `created`, `modified`) VALUES
(1, 0, NULL, NULL, '2013-07-19 15:14:30', '2013-07-19 15:14:30'),
(2, 0, NULL, NULL, '2013-07-19 15:15:10', '2013-07-19 15:15:10'),
(3, 0, NULL, NULL, '2013-07-19 15:15:37', '2013-07-19 15:15:37'),
(4, 11, 'dgdfs', 0, '2013-07-19 15:16:04', '2013-07-19 15:16:04'),
(5, 11, 'sdfgfdsg', 1, '2013-07-19 15:16:04', '2013-07-19 15:16:04'),
(6, 11, 'sdfgdsfg', 0, '2013-07-19 15:16:04', '2013-07-19 15:16:04'),
(7, 11, 'sdfgdfsg', 0, '2013-07-19 15:16:04', '2013-07-19 15:16:04'),
(8, 0, NULL, NULL, '2013-07-19 15:54:29', '2013-07-19 15:54:29'),
(9, 13, '1', NULL, '2013-07-19 15:56:57', '2013-07-19 15:56:57'),
(10, 13, '0', NULL, '2013-07-19 15:56:57', '2013-07-19 15:56:57'),
(11, 14, '1', NULL, '2013-07-19 15:57:42', '2013-07-19 15:57:42'),
(12, 14, '0', NULL, '2013-07-19 15:57:42', '2013-07-19 15:57:42'),
(13, 15, '1', NULL, '2013-07-19 15:58:18', '2013-07-19 15:58:18'),
(14, 15, '0', NULL, '2013-07-19 15:58:18', '2013-07-19 15:58:18'),
(15, 16, '1', 1, '2013-07-19 15:59:36', '2013-07-19 15:59:36'),
(16, 16, '0', 1, '2013-07-19 15:59:36', '2013-07-19 15:59:36'),
(17, 17, '0', 1, '2013-07-19 16:00:33', '2013-07-19 16:00:33'),
(18, 17, '1', 1, '2013-07-19 16:00:33', '2013-07-19 16:00:33'),
(19, 18, '0', 1, '2013-07-19 16:01:07', '2013-07-19 16:01:07'),
(20, 18, '1', 1, '2013-07-19 16:01:07', '2013-07-19 16:01:07'),
(21, 19, '0', 1, '2013-07-19 16:02:14', '2013-07-19 16:02:14'),
(22, 19, '1', 1, '2013-07-19 16:02:14', '2013-07-19 16:02:14'),
(23, 20, 'True', 0, '2013-07-19 16:03:12', '2013-07-19 16:03:12'),
(24, 20, 'False', 1, '2013-07-19 16:03:12', '2013-07-19 16:03:12'),
(25, 21, NULL, 1, '2013-07-19 16:07:02', '2013-07-19 16:07:02'),
(26, 21, NULL, 0, '2013-07-19 16:07:02', '2013-07-19 16:07:02'),
(27, 21, NULL, 0, '2013-07-19 16:07:02', '2013-07-19 16:07:02'),
(28, 21, NULL, 0, '2013-07-19 16:07:02', '2013-07-19 16:07:02'),
(29, 22, NULL, 1, '2013-07-19 16:07:23', '2013-07-19 16:07:23'),
(30, 22, NULL, 0, '2013-07-19 16:07:23', '2013-07-19 16:07:23'),
(31, 22, NULL, 0, '2013-07-19 16:07:23', '2013-07-19 16:07:23'),
(32, 22, NULL, 0, '2013-07-19 16:07:23', '2013-07-19 16:07:23'),
(33, 23, 'How,You', 1, '2013-07-19 16:08:31', '2013-07-19 16:08:31'),
(34, 23, 'How,me', 0, '2013-07-19 16:08:31', '2013-07-19 16:08:31'),
(35, 23, 'Who,You', 0, '2013-07-19 16:08:31', '2013-07-19 16:08:31'),
(36, 23, 'How,I', 0, '2013-07-19 16:08:31', '2013-07-19 16:08:31'),
(37, 24, 'Answer1', 0, '2013-07-19 16:49:39', '2013-07-19 16:49:39'),
(38, 24, 'Answer1', 0, '2013-07-19 16:49:39', '2013-07-19 16:49:39'),
(39, 24, 'Answer1', 1, '2013-07-19 16:49:39', '2013-07-19 16:49:39'),
(40, 24, 'Answer1', 0, '2013-07-19 16:49:39', '2013-07-19 16:49:39'),
(41, 25, 'True', 1, '2013-07-22 17:06:53', '2013-07-22 17:06:53'),
(42, 25, 'False', 0, '2013-07-22 17:06:53', '2013-07-22 17:06:53'),
(43, 26, 'True', 1, '2013-07-22 17:06:57', '2013-07-22 17:06:57'),
(44, 26, 'False', 0, '2013-07-22 17:06:57', '2013-07-22 17:06:57'),
(45, 27, 'True', 1, '2013-07-22 17:07:00', '2013-07-22 17:07:00'),
(46, 27, 'False', 0, '2013-07-22 17:07:00', '2013-07-22 17:07:00'),
(47, 28, 'True', 1, '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(48, 28, 'False', 0, '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(49, 29, 'True', 1, '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(50, 29, 'False', 0, '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(51, 30, 'True', 1, '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(52, 30, 'False', 0, '2013-07-22 17:07:01', '2013-07-22 17:07:01'),
(53, 31, 'True', 1, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(54, 31, 'False', 0, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(55, 32, 'True', 1, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(56, 32, 'False', 0, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(57, 33, 'True', 1, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(58, 33, 'False', 0, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(59, 34, 'True', 1, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(60, 34, 'False', 0, '2013-07-22 17:07:02', '2013-07-22 17:07:02'),
(61, 35, 'True', 1, '2013-07-22 17:07:03', '2013-07-22 17:07:03'),
(62, 35, 'False', 0, '2013-07-22 17:07:03', '2013-07-22 17:07:03'),
(63, 36, 'True', 1, '2013-07-22 17:07:04', '2013-07-22 17:07:04'),
(64, 36, 'False', 0, '2013-07-22 17:07:04', '2013-07-22 17:07:04'),
(65, 37, 'True', 1, '2013-07-22 17:07:04', '2013-07-22 17:07:04'),
(66, 37, 'False', 0, '2013-07-22 17:07:04', '2013-07-22 17:07:04'),
(67, 38, 'True', 1, '2013-07-22 17:07:06', '2013-07-22 17:07:06'),
(68, 38, 'False', 0, '2013-07-22 17:07:06', '2013-07-22 17:07:06'),
(69, 39, 'tom', 0, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(70, 39, 'terry', 1, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(71, 39, 'sandra', 0, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(72, 39, 'mick', 0, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(73, 40, 'tom', 0, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(74, 40, 'terry', 1, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(75, 40, 'sandra', 0, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(76, 40, 'mick', 0, '2013-07-23 13:04:57', '2013-07-23 13:04:57'),
(77, 42, 'True', 1, '2013-07-23 17:19:10', '2013-07-23 17:19:10'),
(78, 42, 'False', 0, '2013-07-23 17:19:10', '2013-07-23 17:19:10'),
(79, 43, 'i', 0, '2013-07-23 17:20:00', '2013-07-23 17:20:00'),
(80, 43, 'me', 1, '2013-07-23 17:20:00', '2013-07-23 17:20:00'),
(81, 43, 'myself', 0, '2013-07-23 17:20:00', '2013-07-23 17:20:00'),
(82, 43, 'he', 0, '2013-07-23 17:20:00', '2013-07-23 17:20:00'),
(83, 44, 'True', 1, '2013-08-06 16:15:58', '2013-08-06 16:15:58'),
(84, 44, 'False', 0, '2013-08-06 16:15:58', '2013-08-06 16:15:58'),
(85, 45, 'Planet', 0, '2013-08-07 12:57:12', '2013-08-07 12:57:12'),
(86, 45, 'Star', 1, '2013-08-07 12:57:12', '2013-08-07 12:57:12'),
(87, 45, 'asteroid', 0, '2013-08-07 12:57:12', '2013-08-07 12:57:12'),
(88, 45, '', 0, '2013-08-07 12:57:12', '2013-08-07 12:57:12'),
(89, 46, 'magic', 0, '2013-08-12 15:14:45', '2013-08-12 15:14:45'),
(90, 46, 'trick', 0, '2013-08-12 15:14:45', '2013-08-12 15:14:45'),
(91, 46, 'witchcraft', 0, '2013-08-12 15:14:45', '2013-08-12 15:14:45'),
(92, 46, 'god''s gift', 1, '2013-08-12 15:14:45', '2013-08-12 15:14:45'),
(93, 47, 'True', 1, '2013-08-12 15:15:21', '2013-08-12 15:15:21'),
(94, 47, 'False', 0, '2013-08-12 15:15:21', '2013-08-12 15:15:21'),
(95, 50, 'gfch', 0, '2013-08-30 15:13:24', '2013-08-30 16:49:22'),
(96, 50, 'fghj', 1, '2013-08-30 15:13:24', '2013-08-30 16:49:22'),
(97, 50, 'fg', 0, '2013-08-30 15:13:24', '2013-08-30 16:49:22'),
(98, 50, 'fghj', 0, '2013-08-30 15:13:24', '2013-08-30 16:49:22'),
(99, 51, 'True', 1, '2013-08-30 15:14:15', '2013-09-05 11:35:30'),
(100, 51, 'False', 0, '2013-08-30 15:14:15', '2013-09-05 11:35:30'),
(101, 52, 'True', 1, '2013-10-25 18:34:43', '2013-10-25 18:36:36'),
(102, 52, 'False', 0, '2013-10-25 18:34:43', '2013-10-25 18:36:36'),
(103, 53, 'a', 0, '2013-10-25 18:37:03', '2013-10-28 14:17:39'),
(104, 53, 'b', 0, '2013-10-25 18:37:03', '2013-10-28 14:17:39'),
(105, 53, 'c', 1, '2013-10-25 18:37:03', '2013-10-28 14:17:39'),
(106, 53, 'd', 0, '2013-10-25 18:37:03', '2013-10-28 14:17:39'),
(107, 54, 'test', 0, '2013-11-20 17:17:48', '2014-01-14 12:15:48'),
(108, 54, 'test1', 0, '2013-11-20 17:17:48', '2014-01-14 12:15:48'),
(109, 54, 'test3', 1, '2013-11-20 17:17:48', '2014-01-14 12:15:48'),
(110, 54, 'test4', 0, '2013-11-20 17:17:48', '2014-01-14 12:15:48'),
(111, 55, 'True', 0, '2013-11-20 17:18:06', '2013-12-10 12:16:30'),
(112, 55, 'False', 1, '2013-11-20 17:18:06', '2013-12-10 12:16:30'),
(113, 56, 'True', 0, '2014-01-03 11:50:45', '2014-01-03 11:50:45'),
(114, 56, 'False', 1, '2014-01-03 11:50:46', '2014-01-03 11:50:46'),
(115, 57, 'Modi', 1, '2014-05-22 05:30:15', '2014-05-22 05:30:15'),
(116, 57, 'Kejriwal', 0, '2014-05-22 05:30:15', '2014-05-22 05:30:15'),
(117, 57, 'Rahul', 0, '2014-05-22 05:30:15', '2014-05-22 05:30:15'),
(118, 57, 'Manmohal', 0, '2014-05-22 05:30:15', '2014-05-22 05:30:15'),
(119, 58, 'Type A', 0, '2014-07-23 07:30:09', '2014-07-23 07:30:09'),
(120, 58, 'Type B', 0, '2014-07-23 07:30:09', '2014-07-23 07:30:09'),
(121, 58, 'Type C', 1, '2014-07-23 07:30:09', '2014-07-23 07:30:09'),
(122, 58, 'Type D', 0, '2014-07-23 07:30:09', '2014-07-23 07:30:09'),
(123, 59, 'True', 1, '2014-07-23 07:30:44', '2014-07-23 07:30:44'),
(124, 59, 'False', 0, '2014-07-23 07:30:44', '2014-07-23 07:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `course_requirements`
--

CREATE TABLE IF NOT EXISTS `course_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `title` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `course_requirements`
--

INSERT INTO `course_requirements` (`id`, `course_id`, `title`, `created`, `modified`) VALUES
(3, 15, 'a:1:{i:1;s:0:"";}', '2013-07-22 18:14:30', '2013-07-22 18:14:30'),
(4, 16, 'a:1:{i:1;s:0:"";}', '2013-07-23 11:58:31', '2013-07-23 13:05:44'),
(5, 10, 'a:1:{i:1;s:20:"Anybody can learn it";}', '2013-07-23 18:35:27', '2013-07-23 18:36:12'),
(6, 41, 'a:1:{i:1;s:0:"";}', '2013-07-27 23:43:06', '2013-07-27 23:43:06'),
(7, 42, 'a:1:{i:1;s:0:"";}', '2013-08-01 18:28:19', '2013-08-06 12:00:33'),
(8, 46, 'a:2:{i:1;s:20:"Anybody can learn it";i:3;s:9:"jhasdjias";}', '2013-08-05 16:39:08', '2013-08-06 19:21:05'),
(9, 53, 'a:1:{i:1;s:1189:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";}', '2013-08-06 16:16:33', '2013-08-06 16:16:33'),
(10, 52, 'a:3:{i:1;s:20:"Anybody can learn it";i:4;s:5:"jhkjl";i:5;s:6:"khgkjh";}', '2013-08-06 19:09:01', '2013-08-06 19:09:01'),
(11, 43, 'a:3:{i:1;s:8:"sdfgdfsg";i:2;s:7:"zxcvzxc";i:3;s:8:"zxcvzxcv";}', '2013-08-06 19:13:13', '2013-09-09 16:58:32'),
(12, 92, 'a:1:{i:1;s:0:"";}', '2013-08-12 16:31:25', '2013-08-12 16:31:25'),
(13, 95, 'a:1:{i:1;s:18:"nothing is requird";}', '2013-08-13 16:17:30', '2013-08-13 16:17:30'),
(14, 93, 'a:1:{i:1;s:0:"";}', '2013-08-21 16:57:09', '2013-08-21 16:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `course_reviews`
--

CREATE TABLE IF NOT EXISTS `course_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `review_text` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `course_reviews`
--

INSERT INTO `course_reviews` (`id`, `user_id`, `course_id`, `rating`, `review_text`, `created`, `modified`) VALUES
(1, 8, 7, 5, 'xdcbvgfd', NULL, NULL),
(2, 20, 51, 5, '1', '2013-08-06 16:05:08', '2013-08-06 16:05:08'),
(3, 20, 52, 5, 'xyz', '2013-08-06 17:12:54', '2013-08-06 17:44:28'),
(4, 18, 52, 5, 'Hello I am rating', '2013-08-06 17:24:43', '2013-08-06 17:24:43'),
(5, 29, 48, 4, 'very Good lessons', '2013-08-21 15:44:10', '2013-08-21 15:44:10'),
(6, 18, 95, 5, 'hiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '2013-11-06 11:51:02', '2013-11-06 11:51:02'),
(7, 18, 51, 3, 'Test', '2014-01-15 17:25:43', '2014-01-15 17:25:43'),
(8, 18, 66, 2, 'it is good', '2014-05-22 06:08:42', '2014-05-22 06:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE IF NOT EXISTS `course_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `section_index` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=171 ;

--
-- Dumping data for table `course_sections`
--

INSERT INTO `course_sections` (`id`, `course_id`, `heading`, `section_index`, `created`, `modified`) VALUES
(14, 8, 'My First Section', 1, '2013-07-19 21:27:32', '2013-07-19 21:27:32'),
(16, 10, 'my first section', 1, '2013-07-19 22:27:30', '2013-07-23 18:38:31'),
(19, 13, 'My First Section', 1, '2013-07-22 12:43:32', '2013-07-22 12:43:32'),
(20, 14, 'This is my frst session', 1, '2013-07-22 14:35:19', '2013-07-22 14:59:41'),
(21, 14, 'thisis my secong session', 2, '2013-07-22 16:46:12', '2013-07-22 16:46:12'),
(22, 15, 'My First Section', 1, '2013-07-22 17:08:44', '2013-07-22 17:08:44'),
(23, 16, 'Oh First Section', 1, '2013-07-23 10:14:04', '2013-07-23 12:47:04'),
(24, 17, 'Title 1', 1, '2013-07-23 14:45:13', '2013-07-23 14:45:45'),
(25, 18, 'My First Section', 1, '2013-07-23 17:47:35', '2013-07-23 17:47:35'),
(26, 19, 'My First Section', 1, '2013-07-23 18:25:06', '2013-07-23 18:25:06'),
(27, 20, 'My First Section', 1, '2013-07-23 18:25:23', '2013-07-23 18:25:23'),
(28, 21, 'My First Section', 1, '2013-07-23 18:26:03', '2013-07-23 18:26:03'),
(29, 22, 'My First Section', 1, '2013-07-23 18:26:17', '2013-07-23 18:26:17'),
(30, 23, 'My First Section', 1, '2013-07-23 18:26:31', '2013-07-23 18:26:31'),
(31, 24, 'My First Section', 1, '2013-07-23 18:26:47', '2013-07-23 18:26:47'),
(32, 25, 'My First Section', 1, '2013-07-23 18:26:55', '2013-07-23 18:26:55'),
(33, 26, 'My First Section', 1, '2013-07-23 18:27:22', '2013-07-23 18:27:22'),
(34, 27, 'My First Section', 1, '2013-07-23 18:27:37', '2013-07-23 18:27:37'),
(35, 28, 'My First Section', 1, '2013-07-23 18:27:49', '2013-07-23 18:27:49'),
(36, 10, 'my second section', 2, '2013-07-23 18:39:25', '2013-07-23 18:39:25'),
(38, 30, 'My First Section', 1, '2013-07-24 00:38:03', '2013-07-24 00:38:03'),
(39, 31, 'My First Section', 1, '2013-07-24 04:24:13', '2013-07-24 04:24:13'),
(40, 32, 'My First Section', 1, '2013-07-24 09:21:53', '2013-07-24 09:21:53'),
(41, 33, 'My First Section', 1, '2013-07-24 09:21:55', '2013-07-24 09:21:55'),
(42, 34, 'My First Section', 1, '2013-07-24 11:23:54', '2013-07-24 11:23:54'),
(43, 35, 'My First Section', 1, '2013-07-24 18:36:19', '2013-07-24 18:36:19'),
(44, 36, 'My First Section', 1, '2013-07-25 18:28:12', '2013-07-25 18:28:12'),
(45, 37, 'My First Section', 1, '2013-07-26 04:45:06', '2013-07-26 04:45:06'),
(46, 38, 'My First Section', 1, '2013-07-26 14:46:06', '2013-07-26 14:46:06'),
(47, 39, 'My First Section', 1, '2013-07-26 16:34:00', '2013-07-26 16:34:00'),
(48, 40, 'Section #1', 1, '2013-07-26 17:08:34', '2013-08-12 17:47:16'),
(49, 41, 'My First Section', 1, '2013-07-27 21:09:25', '2013-07-27 21:09:25'),
(50, 42, 'My First Section', 1, '2013-08-01 18:28:00', '2013-08-01 18:28:00'),
(51, 43, 'My First Section', 1, '2013-08-02 17:51:38', '2013-08-02 17:51:38'),
(54, 46, 'My First Section', 1, '2013-08-05 16:37:13', '2013-08-05 16:37:13'),
(55, 47, 'My First Section', 1, '2013-08-05 18:27:43', '2013-08-05 18:27:43'),
(56, 48, 'My First Section', 1, '2013-08-06 12:29:05', '2013-08-06 12:29:05'),
(57, 49, 'My First Section', 1, '2013-08-06 12:31:22', '2013-08-06 12:31:22'),
(58, 50, 'My First Section', 1, '2013-08-06 12:32:53', '2013-08-06 12:32:53'),
(59, 51, 'My First Section', 1, '2013-08-06 12:33:45', '2013-08-06 12:33:45'),
(60, 52, 'My First Section', 1, '2013-08-06 12:35:01', '2013-08-06 12:35:01'),
(61, 53, 'Section a', 1, '2013-08-06 16:07:34', '2013-08-06 16:10:19'),
(62, 53, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 2, '2013-08-06 16:14:39', '2013-08-06 16:14:39'),
(63, 54, 'My First Section', 1, '2013-08-06 17:49:33', '2013-08-06 17:49:33'),
(64, 55, 'My First Section', 1, '2013-08-06 18:13:08', '2013-08-06 18:13:08'),
(65, 56, 'My First Section', 1, '2013-08-06 22:05:40', '2013-08-06 22:05:40'),
(66, 57, 'My First Section', 1, '2013-08-06 22:18:28', '2013-08-06 22:18:28'),
(67, 58, 'My First Section', 1, '2013-08-07 08:50:31', '2013-08-07 08:50:31'),
(68, 59, 'My First Section', 1, '2013-08-07 08:50:32', '2013-08-07 08:50:32'),
(69, 60, 'My First Section', 1, '2013-08-07 08:56:00', '2013-08-07 08:56:00'),
(70, 61, 'Section 1', 1, '2013-08-07 12:48:32', '2013-08-07 12:50:30'),
(71, 61, 'Section 2', 2, '2013-08-07 12:51:42', '2013-08-07 12:51:42'),
(72, 62, 'Section 1', 1, '2013-08-07 16:48:58', '2013-08-07 16:49:29'),
(73, 63, 'Section 1', 1, '2013-08-07 17:17:41', '2013-08-07 17:17:54'),
(74, 64, 'My First Section', 1, '2013-08-07 17:28:07', '2013-08-07 17:28:07'),
(75, 65, 'Section 1', 1, '2013-08-07 17:59:40', '2013-08-07 18:00:00'),
(76, 66, 'Section 1', 1, '2013-08-07 18:02:41', '2013-08-07 18:03:03'),
(77, 67, 'Section 1', 1, '2013-08-07 18:14:22', '2013-08-07 18:14:40'),
(78, 68, 'My First Section', 1, '2013-08-07 19:02:06', '2013-08-07 19:02:06'),
(79, 69, 'My First Section', 1, '2013-08-08 02:24:52', '2013-08-08 02:24:52'),
(80, 70, 'My First Section', 1, '2013-08-08 09:06:13', '2013-08-08 09:06:13'),
(81, 71, 'My First Section', 1, '2013-08-08 09:08:24', '2013-08-08 09:08:24'),
(82, 72, 'My First Section', 1, '2013-08-08 17:59:00', '2013-08-08 17:59:00'),
(83, 73, 'My First Section', 1, '2013-08-09 15:35:24', '2013-08-09 15:35:24'),
(84, 74, 'Section 1', 1, '2013-08-09 16:44:23', '2013-08-09 16:44:46'),
(85, 75, 'My First Section', 1, '2013-08-09 16:45:47', '2013-08-09 16:45:47'),
(86, 76, 'My First Section', 1, '2013-08-09 16:56:50', '2013-08-09 16:56:50'),
(87, 77, 'My First Section', 1, '2013-08-09 17:04:27', '2013-08-09 17:04:27'),
(88, 78, 'My First Section', 1, '2013-08-09 17:15:48', '2013-08-09 17:15:48'),
(89, 79, 'My First Section', 1, '2013-08-09 17:20:07', '2013-08-09 17:20:07'),
(91, 81, 'My First Section', 1, '2013-08-09 17:22:40', '2013-08-09 17:22:40'),
(92, 82, 'My First Section', 1, '2013-08-09 17:57:52', '2013-08-09 17:57:52'),
(93, 83, 'My First Section', 1, '2013-08-09 18:07:53', '2013-08-09 18:07:53'),
(94, 84, 'My First Section', 1, '2013-08-09 18:08:56', '2013-08-09 18:08:56'),
(95, 85, 'My First Section', 1, '2013-08-09 18:53:24', '2013-08-09 18:53:24'),
(99, 89, 'My First Section', 1, '2013-08-10 10:41:14', '2013-08-10 10:41:14'),
(100, 89, 'testing', 2, '2013-08-10 10:43:20', '2013-08-10 10:43:20'),
(101, 90, 'My First Section', 1, '2013-08-11 22:29:08', '2013-08-11 22:29:08'),
(102, 91, 'My First Section', 1, '2013-08-11 22:30:51', '2013-08-11 22:30:51'),
(103, 92, 'Section 1.0', 1, '2013-08-12 11:49:38', '2013-08-12 12:38:07'),
(104, 93, 'My First Section', 1, '2013-08-13 15:36:28', '2013-08-13 15:36:28'),
(105, 94, 'My First Section', 1, '2013-08-13 15:37:31', '2013-08-13 15:37:31'),
(106, 95, 'My First Section', 1, '2013-08-13 16:06:20', '2013-08-13 16:06:20'),
(109, 96, 'dfgdfgdfg', 1, '2013-08-13 17:50:54', '2013-08-13 17:50:54'),
(111, 94, 'ssdfsdf', 2, '2013-08-13 17:53:41', '2013-08-13 17:53:41'),
(112, 97, 'rwer', 1, '2013-08-13 22:04:23', '2013-11-19 13:27:02'),
(113, 98, 'Section !', 1, '2013-08-14 10:11:18', '2013-08-14 10:11:59'),
(114, 99, 'My First Section', 1, '2013-08-14 10:16:11', '2013-08-14 10:16:11'),
(115, 100, 'My First Section', 1, '2013-08-16 15:02:02', '2013-08-16 15:02:02'),
(116, 101, 'My First Section', 1, '2013-08-16 15:30:38', '2013-08-16 15:30:38'),
(117, 102, 'My First Section', 1, '2013-08-16 15:36:05', '2013-08-16 15:36:05'),
(118, 103, 'My First Section', 1, '2013-08-29 19:06:02', '2013-08-29 19:06:02'),
(119, 104, 'My First Section', 1, '2013-08-30 11:30:59', '2013-08-30 11:30:59'),
(120, 105, 'My First Section', 1, '2013-08-30 14:51:05', '2013-08-30 14:51:05'),
(121, 106, 'My First Section', 1, '2013-09-06 11:00:09', '2013-09-06 11:00:09'),
(122, 43, 'A new Section', 2, '2013-09-18 13:33:46', '2013-09-18 13:33:46'),
(123, 107, 'My First Section', 1, '2013-09-23 15:52:17', '2013-09-23 15:52:17'),
(124, 108, 'My First Sertrectironttt', 1, '2013-10-15 12:08:56', '2013-10-15 12:09:26'),
(125, 108, 'erf', 2, '2013-10-15 12:09:49', '2013-10-15 12:09:49'),
(126, 108, 'yyyyyyyyyyyy', 3, '2013-10-15 12:09:56', '2013-10-15 12:09:56'),
(127, 108, 'dddd', 4, '2013-10-15 12:10:50', '2013-10-15 12:10:50'),
(128, 108, 'ye5d', 5, '2013-10-15 12:14:06', '2013-10-15 12:14:06'),
(129, 109, 'My First Sectioneg', 1, '2013-10-15 12:57:53', '2013-10-15 13:15:34'),
(130, 109, 'module 2', 2, '2013-10-15 13:15:52', '2013-10-15 13:15:52'),
(133, 110, 'A new module', 1, '2013-10-23 18:44:28', '2013-10-23 18:44:28'),
(134, 111, 'Video module', 1, '2013-10-24 17:06:49', '2013-10-24 17:08:56'),
(135, 112, 'A New Module', 1, '2013-10-25 18:34:00', '2013-10-25 18:34:00'),
(136, 113, 'A New Module', 1, '2013-10-30 15:12:50', '2013-10-30 15:12:50'),
(137, 114, 'A New Module', 1, '2013-10-30 17:33:12', '2013-10-30 17:33:12'),
(138, 114, 'A new Module', 2, '2013-11-06 11:31:44', '2013-11-06 11:31:44'),
(139, 115, 'A New Module', 1, '2013-11-06 14:16:52', '2013-11-06 14:16:52'),
(140, 116, 'A New Module', 1, '2013-11-07 12:30:40', '2013-11-07 12:30:40'),
(141, 117, 'A New Module', 1, '2013-11-09 16:37:57', '2013-11-09 16:37:57'),
(142, 118, 'A New Module', 1, '2013-11-09 16:40:18', '2013-11-09 16:40:18'),
(143, 118, 'A new Module', 2, '2013-11-11 16:42:21', '2013-11-11 16:42:21'),
(144, 119, 'A New Module', 1, '2013-11-12 18:01:27', '2013-11-12 18:01:27'),
(145, 120, 'A New Module', 1, '2013-11-13 15:33:14', '2013-11-13 15:33:14'),
(146, 121, 'A New Module', 1, '2013-11-13 16:30:16', '2013-11-13 16:30:16'),
(147, 122, 'A New Module', 1, '2013-11-15 14:25:01', '2013-11-15 14:25:01'),
(149, 124, 'Interface', 1, '2013-11-18 15:48:17', '2013-11-18 15:49:37'),
(150, 123, 'A new Module', 1, '2013-11-20 17:16:42', '2013-11-20 17:16:42'),
(151, 46, 'A new Module', 2, '2013-11-21 13:15:00', '2013-11-21 13:15:33'),
(152, 125, 'A New Module', 1, '2013-12-12 11:45:44', '2013-12-12 11:45:44'),
(153, 126, 'A New Module', 1, '2013-12-19 11:27:16', '2013-12-19 11:27:16'),
(154, 127, 'test', 1, '2013-12-19 14:34:52', '2014-01-03 11:49:35'),
(155, 128, 'A New Module', 1, '2013-12-23 12:30:48', '2013-12-23 12:30:48'),
(156, 129, 'Ghghghwghfwshwd', 1, '2014-01-08 18:05:23', '2014-01-08 18:06:11'),
(157, 130, 'A New Module', 1, '2014-01-10 17:40:03', '2014-01-10 17:40:03'),
(158, 131, 'Test', 1, '2014-01-10 17:46:17', '2014-01-20 18:10:17'),
(159, 132, 'A NeGgggggw Module', 1, '2014-01-11 00:24:34', '2014-01-13 10:49:01'),
(160, 121, 'A new Module', 2, '2014-01-22 17:31:12', '2014-01-22 17:31:12'),
(161, 133, 'A New Module', 1, '2014-01-22 19:11:58', '2014-01-22 19:11:58'),
(162, 134, 'A New Module', 1, '2014-01-27 11:43:20', '2014-01-27 11:43:20'),
(163, 135, 'A New Module', 1, '2014-01-27 11:50:37', '2014-01-27 11:50:37'),
(164, 136, 'A New Module', 1, '2014-01-30 02:31:37', '2014-01-30 02:31:37'),
(165, 137, 'A New ', 1, '2014-02-11 03:20:02', '2014-04-22 23:16:49'),
(167, 137, 'A new Module', 2, '2014-04-22 23:17:34', '2014-04-22 23:17:34'),
(168, 138, 'Andriod Outline', 1, '2014-05-22 04:44:15', '2014-05-22 04:49:49'),
(169, 138, 'A new Module', 2, '2014-05-22 05:30:32', '2014-05-22 05:30:32'),
(170, 139, 'A New Module', 1, '2014-06-06 06:46:37', '2014-06-06 06:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `course_suppliments`
--

CREATE TABLE IF NOT EXISTS `course_suppliments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_lecture_id` int(11) DEFAULT NULL,
  `content_title` varchar(200) DEFAULT NULL,
  `content_source` varchar(255) DEFAULT NULL,
  `content_link` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `course_suppliments`
--

INSERT INTO `course_suppliments` (`id`, `course_lecture_id`, `content_title`, `content_source`, `content_link`, `created`, `modified`) VALUES
(1, 125, 'aarti.doc', 'img/18/Course43/Section51/Lecture125/1380762059.doc', NULL, '2013-10-03 18:31:00', '2013-10-03 18:31:00'),
(2, 126, '08 - Bhaag Milkha Bhaag (Rock Version) - DownloadMing.SE.mp3', 'img/18/Course43/Section51/Lecture126/1380764748.mp3', NULL, '2013-10-03 19:15:48', '2013-10-03 19:15:48'),
(4, 125, '1337_Institute_Of_Technology.jpg', 'img/18/Course43/Section51/Lecture125/1381455099.jpg.mp4', NULL, '2013-10-11 19:01:40', '2013-10-11 19:01:40'),
(6, 219, 'Frog_Money_Game_rev.notebook', 'img/18/Course43/Section122/Lecture219/1381908508.notebook.mp4', NULL, '2013-10-16 12:58:29', '2013-10-16 12:58:29'),
(7, 219, 'Frog_Money_Game_rev.notebook', 'img/18/Course43/Section122/Lecture219/1381865553.notebook.mp4', NULL, '2013-10-16 13:02:33', '2013-10-16 13:02:33'),
(8, 244, 'IMG_2103.JPG', 'img/18/Course111/Section134/Lecture244/1382682100.JPG', NULL, '2013-10-25 11:51:40', '2013-10-25 11:51:40'),
(9, 301, 'test.pdf', 'img/18/Course130/Section157/Lecture301/1389738883.pdf', NULL, '2014-01-15 16:04:43', '2014-01-15 16:04:43'),
(10, 294, 'image.jpg', 'img/18/Course128/Section155/Lecture294/1389744690.jpg', NULL, '2014-01-15 17:41:30', '2014-01-15 17:41:30'),
(11, 202, 'demoform1.pdf', 'img/18/Course104/Section119/Lecture202/1389744813.pdf', NULL, '2014-01-15 17:43:33', '2014-01-15 17:43:33'),
(12, 301, 'image.jpg', 'img/18/Course130/Section157/Lecture301/1389746093.jpg', NULL, '2014-01-15 18:04:53', '2014-01-15 18:04:53'),
(13, 301, 'trim.lFYNVi.MOV', 'img/18/Course130/Section157/Lecture301/1389746202.MOV', NULL, '2014-01-15 18:06:42', '2014-01-15 18:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `course_user_notes`
--

CREATE TABLE IF NOT EXISTS `course_user_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_section_id` int(11) DEFAULT NULL,
  `notes` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `course_user_notes`
--

INSERT INTO `course_user_notes` (`id`, `user_id`, `course_id`, `course_section_id`, `notes`, `created`, `modified`) VALUES
(1, 8, 6, 6, 'zsvfg sdgfsdg', '2013-08-01 21:00:38', '2013-08-01 21:00:38'),
(2, 8, 6, 6, 'Hello', '2013-08-01 21:05:51', '2013-08-01 21:05:51'),
(3, 8, 6, 6, 'szfvsdv sbvdfsg', '2013-08-02 14:21:51', '2013-08-02 14:21:51'),
(4, 8, 6, 6, 'fhdfghjfg dfhf', '2013-08-02 14:22:05', '2013-08-02 14:22:05'),
(5, 8, 6, 6, 'xczv dfg sdfg sdg ', '2013-08-02 14:22:23', '2013-08-02 14:22:23'),
(6, 8, 6, 8, 'xzv sdgfsd', '2013-08-02 14:23:21', '2013-08-02 14:23:21'),
(7, 8, 6, 8, 'sadfds', '2013-08-02 14:24:05', '2013-08-02 14:24:05'),
(8, 8, 6, 8, 'sdfsdaf sdfsd ', '2013-08-02 14:39:09', '2013-08-02 14:39:09'),
(9, 8, 6, 8, 'dghdh', '2013-08-02 14:39:19', '2013-08-02 14:39:19'),
(10, 8, 6, 8, 'szasfcd sdfds', '2013-08-02 14:40:19', '2013-08-02 14:40:19'),
(11, 8, 6, 8, 'xzsadv safvsdaf', '2013-08-02 14:45:56', '2013-08-02 14:45:56'),
(12, 8, 6, 6, 'zvxc asdfsad', '2013-08-02 14:51:16', '2013-08-02 14:51:16'),
(13, 8, 6, 6, 'safc asfd', '2013-08-02 14:55:09', '2013-08-02 14:55:09'),
(14, 8, 6, 6, 'xzvcvxz', '2013-08-02 14:57:43', '2013-08-02 14:57:43'),
(15, 8, 6, 6, 'A new One', '2013-08-02 15:02:02', '2013-08-02 15:02:02'),
(16, 8, 6, 6, 'Another new one', '2013-08-02 15:02:27', '2013-08-02 15:02:27'),
(17, 20, 46, 54, 'mnbmnbm', '2013-08-06 18:59:02', '2013-08-06 18:59:02'),
(18, 18, 96, 109, 'xcvgb dcxb dsf dfs hsdfg d', '2013-08-13 20:10:00', '2013-08-13 20:10:00'),
(19, 18, 43, 51, 'Hello fantastic song is this, just love this one', '2013-08-21 17:42:47', '2013-08-21 17:42:47'),
(20, 18, 48, 56, 'dsfds', '2013-09-10 16:50:44', '2013-09-10 16:50:44'),
(21, 18, 48, 56, 'adasddsfsfsfhsa gjdsfj hghsdj gjgffgfgfggfgfgfgfgfgfgfgfgfgfgfgfgfgfhjgfgffgfggfhjgffgeuwryuiwegfghdsfhdgsfhdgsfhdgsfdgsfyugefgjhgfhj', '2013-09-10 16:54:24', '2013-09-10 16:54:24'),
(22, 18, 48, 56, 'asdhjkah dkjashdjkashdkjhdkjhdjkshakdjhsakjhdjsakhdkasjhdkjsahdkjashdkjashdakjsdhjaskdhjkashdsjkhdkjasdhkjashdsjkadh', '2013-09-10 17:37:15', '2013-09-10 17:37:15'),
(23, 32, 48, 56, 'dsahdkl kldsakjdkjshdjhsajkdhasjkdhkjshdkjsahdkjsahdkjshdkjshdkjhsjdkhsjkdhskjhdkjshdkjshdjkshdjksahdjksahdjksahdjksahdjk', '2013-09-11 09:51:07', '2013-09-11 09:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `course_user_questions`
--

CREATE TABLE IF NOT EXISTS `course_user_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_lecture_id` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `question` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  KEY `lecture_id` (`course_lecture_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `course_user_questions`
--

INSERT INTO `course_user_questions` (`id`, `user_id`, `course_id`, `course_lecture_id`, `heading`, `question`, `created`, `modified`) VALUES
(1, 8, 6, 19, '', NULL, '2013-08-01 21:01:54', '2013-08-01 21:01:54'),
(2, 8, 6, 19, '', 'szcfddsa sdfs sdf sdf', '2013-08-01 21:02:31', '2013-08-01 21:02:31'),
(3, 8, 6, 19, '', 'szcfddsa sdfs sdf sdf', '2013-08-01 21:03:18', '2013-08-01 21:03:18'),
(4, 8, 6, 19, '', 'Hello Sir?', '2013-08-01 21:06:02', '2013-08-01 21:06:02'),
(5, 8, 6, 26, '', 'cvxbvcx', '2013-08-02 13:09:58', '2013-08-02 13:09:58'),
(6, 8, 6, 19, '', 'safd asdfasd', '2013-08-02 14:56:08', '2013-08-02 14:56:08'),
(7, 8, 6, 19, '', 'How are you?', '2013-08-02 15:02:41', '2013-08-02 15:02:41'),
(8, 8, 6, 19, '', 'Hello Sir', '2013-08-02 15:03:10', '2013-08-02 15:03:10'),
(9, 18, 96, 180, '', 'sdgf segfds', '2013-08-13 20:09:54', '2013-08-13 20:09:54'),
(11, 18, 42, 97, '', 'ssss', '2013-09-27 18:13:47', '2013-09-27 18:13:47'),
(12, 18, 47, 102, 'Abc', 'Abc', '2013-10-07 11:14:03', '2013-10-07 11:14:03'),
(13, 18, 10, 76, 'test', 'x,.cvm,.xz ', '2013-10-08 18:22:37', '2013-10-08 18:22:37'),
(14, 18, 10, 76, 'zgf', 'dsf', '2013-10-08 18:24:50', '2013-10-08 18:24:50'),
(15, 18, 10, 76, 'xcvgb', 'xcvbvcx', '2013-10-08 18:25:01', '2013-10-08 18:25:01'),
(16, 18, 10, 76, 'sadf', 'sdf', '2013-10-08 18:25:30', '2013-10-08 18:25:30'),
(17, 18, 10, 39, 'ljkhbkjhbvkjhbjhbvjkhbgjhgb kjfgkjgkjgkjg gh glkug ougt lkhgkuyg ljhfg kljhvbgkj gljgkuyfg ljhgkj gl', 'uy fiytfiytf tf ihfgf ', '2013-10-16 15:47:08', '2013-10-16 15:47:08'),
(18, 18, 66, 135, 'xzcvzsc', 'cvxzcv', '2013-12-20 14:47:51', '2013-12-20 14:47:51'),
(19, 18, 66, 135, 'gvbe ghdeyrt', ' ewteery e y', '2013-12-20 14:48:12', '2013-12-20 14:48:12'),
(20, 18, 95, 172, 'Test', 'Test', '2014-01-15 15:47:49', '2014-01-15 15:47:49'),
(21, 18, 95, 172, 'sadsa', 'asda', '2014-01-15 16:01:36', '2014-01-15 16:01:36'),
(22, 18, 51, 106, 'Wryre', 'Dhfhdyt', '2014-01-15 17:26:20', '2014-01-15 17:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `course_user_question_answers`
--

CREATE TABLE IF NOT EXISTS `course_user_question_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_user_question_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `answer` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `course_user_question_answers`
--

INSERT INTO `course_user_question_answers` (`id`, `course_user_question_id`, `user_id`, `answer`, `created`, `modified`) VALUES
(1, 12, 18, 'test', '2013-10-07 12:16:23', '2013-10-07 12:16:23'),
(2, 10, 18, 'Hello', '2013-10-07 16:31:15', '2013-10-07 16:31:15'),
(3, 19, 18, 'sdf gsdfg sfd', '2013-12-20 14:48:32', '2013-12-20 14:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE IF NOT EXISTS `followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'id of the person who is being followed',
  `follower_id` int(11) NOT NULL COMMENT 'id of the person who is clicking on Follow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `follower_id`) VALUES
(2, 18, 17),
(4, 20, 18),
(5, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `instruction_levels`
--

CREATE TABLE IF NOT EXISTS `instruction_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `instruction_levels`
--

INSERT INTO `instruction_levels` (`id`, `title`, `created`, `modified`) VALUES
(1, 'Introductory', '2013-07-08 11:23:58', '2013-07-08 11:23:58'),
(2, 'Intermediate', '2013-07-08 11:23:58', '2013-07-08 11:23:58'),
(3, 'Advanced', '2013-07-08 11:23:58', '2013-07-08 11:23:58'),
(4, 'All Levels (Comprehensive)', '2013-07-08 11:23:58', '2013-07-08 11:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `status`, `created`, `modified`) VALUES
(1, 'Afrikaans', 1, NULL, '2013-08-06 16:42:47'),
(2, 'Shqip', 1, NULL, '2013-08-06 16:42:47'),
(3, 'عربية', 1, NULL, '2013-08-06 16:42:47'),
(4, 'Հայերեն', 1, NULL, '2013-08-06 16:42:47'),
(5, 'Aymar aru', 1, NULL, '2013-08-06 16:42:47'),
(6, 'Azərbaycan dili', 1, NULL, '2013-08-06 16:42:47'),
(7, 'Euskara', 1, NULL, '2013-08-06 16:42:47'),
(8, 'Bangla', 1, NULL, '2013-08-06 16:42:47'),
(9, 'Bosanski', 1, NULL, '2013-08-06 16:42:47'),
(10, 'Български', 1, NULL, '2013-08-06 16:42:47'),
(11, 'Catala', 1, NULL, '2013-08-06 16:42:47'),
(12, 'Cherokee', 1, NULL, '2013-08-06 16:42:47'),
(13, 'Hrvatski', 1, NULL, '2013-08-06 16:42:47'),
(14, 'Cestina', 1, NULL, '2013-08-06 16:42:47'),
(15, 'Dansk', 1, NULL, '2013-08-06 16:42:47'),
(16, 'Nederlands', 1, NULL, '2013-08-06 16:42:47'),
(17, 'Nederlands (Belgie)', 1, NULL, '2013-08-06 16:42:47'),
(18, 'English (India)', 1, NULL, '2013-08-06 16:42:47'),
(19, 'English (UK)', 1, NULL, '2013-08-06 16:42:47'),
(20, 'English (US)', 1, NULL, '2013-08-06 16:42:47'),
(21, 'Eesti', 1, NULL, '2013-08-06 16:42:37'),
(22, 'Føroyskt', 1, NULL, '2013-08-06 16:42:37'),
(23, 'Filipino', 1, NULL, '2013-08-06 16:42:37'),
(24, 'Suomi', 1, NULL, '2013-08-06 16:42:37'),
(25, 'Français (Canada)', 1, NULL, '2013-08-06 16:42:38'),
(26, 'Français (France)', 1, NULL, '2013-08-06 16:42:38'),
(27, 'Frysk', 1, NULL, '2013-08-06 16:42:38'),
(28, 'Galego', 1, NULL, '2013-08-06 16:42:38'),
(29, 'ქართული', 1, NULL, '2013-08-06 16:42:38'),
(30, 'Deutsch', 1, NULL, '2013-08-06 16:42:38'),
(31, 'Ελληνικά', 1, NULL, '2013-08-06 16:42:38'),
(32, 'Avañe''ẽ', 1, NULL, '2013-08-06 16:42:38'),
(33, 'ગુજરાતી', 1, NULL, '2013-08-06 16:42:38'),
(34, 'हिन्दी', 1, NULL, '2013-08-06 16:42:38'),
(35, 'Magyar', 1, NULL, '2013-08-06 16:42:38'),
(36, 'मराठी', 1, NULL, '2013-08-06 16:42:38'),
(37, 'नेपाली', 1, NULL, '2013-08-06 16:42:38'),
(38, 'ਪੰਜਾਬੀ', 1, NULL, '2013-08-06 16:42:38'),
(39, 'संस्कृतम्', 1, NULL, '2013-08-06 16:42:38'),
(41, 'PARSI', 1, '2013-08-05 17:00:00', '2013-08-06 16:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `reciever_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text,
  `messagestatus` enum('Unread','Read','Trash') NOT NULL DEFAULT 'Unread',
  `userdelstatus` enum('View','Delete') NOT NULL DEFAULT 'View',
  `recvdelstatus` enum('View','Delete') NOT NULL DEFAULT 'View',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reciever_id` (`reciever_id`),
  KEY `messagestatus` (`messagestatus`),
  KEY `recvdelstatus` (`recvdelstatus`),
  KEY `userdelstatus` (`userdelstatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message_id`, `sender_id`, `reciever_id`, `subject`, `message`, `messagestatus`, `userdelstatus`, `recvdelstatus`, `created`, `modified`) VALUES
(1, 0, 18, 17, '', 'Hello Sandeep,\n\nTesting message', 'Unread', 'View', 'View', '2013-08-06 17:16:49', '2013-08-06 17:16:49'),
(2, 0, 18, 17, '', 'Hello Sandeep,\n\nTesting message', 'Unread', 'View', 'View', '2013-08-06 17:17:00', '2013-08-06 17:17:00'),
(3, 0, 18, 17, '', 'Hello Sandeep,\n\nTesting message', 'Unread', 'View', 'View', '2013-08-06 17:18:55', '2013-08-06 17:18:55'),
(4, 0, 20, 14, '', 'hello', 'Unread', 'View', 'View', '2013-08-06 19:07:01', '2013-08-06 19:07:01'),
(5, 0, 18, 14, '', 'cxbvcxb', 'Unread', 'View', 'View', '2013-08-07 11:44:01', '2013-08-07 11:44:01'),
(6, 6, 18, 18, '', 'cxdgbv sdg sdf', 'Trash', 'View', 'View', '2013-08-13 20:16:44', '2014-01-01 11:56:36'),
(7, 7, 17, 20, '', 'Hi vijeyta', 'Unread', 'View', 'View', '2013-08-14 15:05:05', '2013-08-14 15:05:05'),
(8, 0, 18, 17, '', 'Hello Sandeep', 'Unread', 'View', 'View', '2013-08-23 20:16:37', '2013-08-23 20:16:37'),
(9, 9, 17, 18, '', 'Hello Shivam', 'Unread', 'View', 'View', '2013-08-23 20:17:10', '2013-08-23 20:17:10'),
(10, 10, 32, 4, '', 'test', 'Unread', 'View', 'View', '2013-09-23 16:05:01', '2013-09-23 16:05:01'),
(11, 11, 18, 29, '', 'Hello Sir,\n\nHow are you?', 'Unread', 'View', 'View', '2013-09-25 19:12:50', '2013-09-25 19:12:50'),
(12, 9, 18, 17, '', 'xcv hbxvcb ', 'Unread', 'View', 'View', '2014-01-01 12:13:47', '2014-01-01 12:13:47'),
(13, 13, 45, 18, '', 'hello', 'Trash', 'View', 'View', '2014-05-22 15:10:04', '2014-05-22 16:10:04'),
(14, 13, 45, 18, '', 'hello2', 'Trash', 'View', 'View', '2014-05-22 15:10:31', '2014-05-22 16:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification`, `enable`) VALUES
(1, 'Someone ask question from course you create.', 1),
(2, 'Someone sends you a message.', 1),
(3, 'Someone starts to follow you.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `paymentref` varchar(255) DEFAULT NULL,
  `paymentnote` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `paymentstatus` tinyint(1) DEFAULT NULL,
  `payment` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `buyer_id`, `seller_id`, `course_id`, `paymentref`, `paymentnote`, `invoice`, `paymentstatus`, `payment`, `status`, `created`, `modified`) VALUES
(1, 0, 17, NULL, 72, '4YR31219P8842523P', 'Enrolled to a new course', '1337IOT/2013-09-30/17/1', 1, 100, NULL, '2013-09-30 11:06:39', '2013-09-30 11:06:39'),
(2, 0, 17, NULL, 72, '19W66587UV505354H', 'Enrolled to a new course', '1337IOT/2013-09-30/17/2', 1, 100, NULL, '2013-09-30 11:34:13', '2013-09-30 11:34:13'),
(3, 0, 17, NULL, 72, '1E408453MY4881805', 'Enrolled to a new course', '1337IOT/2013-09-30/17/3', 1, 100, NULL, '2013-09-30 14:58:36', '2013-09-30 14:58:36'),
(4, 0, 17, NULL, 72, '0T426433DR476030P', 'Enrolled to a new course', '1337IOT/2013-09-30/17/4', 1, 100, NULL, '2013-09-30 15:43:38', '2013-09-30 15:43:38'),
(5, 0, 17, NULL, 72, '39V11056V1200004G', 'Enrolled to a new course', '1337IOT/2013-09-30/17/5', 1, 100, NULL, '2013-09-30 15:47:43', '2013-09-30 15:47:43'),
(6, 0, 17, NULL, 72, '23E1757910769673G', 'Enrolled to a new course', '1337IOT/2013-09-30/17/6', 1, 100, NULL, '2013-09-30 15:51:43', '2013-09-30 15:51:43'),
(7, 0, 17, NULL, 72, '3U967340W3594942F', 'Enrolled to a new course', '1337IOT/2013-09-30/17/7', 1, 100, NULL, '2013-09-30 15:53:14', '2013-09-30 15:53:14'),
(8, 0, 17, NULL, 72, '0N715469YF2705610', 'Enrolled to a new course', '1337IOT/2013-09-30/17/8', 1, 100, NULL, '2013-09-30 15:55:45', '2013-09-30 15:55:45'),
(9, 8, NULL, 17, 72, '8P528493EV030804N', 'Enrollment fees for course ', '1337IOT/2013-09-30/17/9', 1, 5, NULL, '2013-09-30 15:55:45', '2013-09-30 15:55:45'),
(10, 8, NULL, 18, 72, '45N4785016344630N', 'Enrollment fees for course ', '1337IOT/2013-09-30/18/1', 1, 85, NULL, '2013-09-30 15:55:45', '2013-09-30 15:55:45'),
(11, 0, 17, NULL, 72, '75300895EP8596514', 'Enrolled to a new course', '1337IOT/2013-09-30/17/9', 1, 100, NULL, '2013-09-30 15:56:57', '2013-09-30 15:56:57'),
(12, 11, NULL, 17, 72, '9WR565990Y880041L', 'Enrollment fees for course ', '1337IOT/2013-09-30/17/10', 1, 5, NULL, '2013-09-30 15:56:57', '2013-09-30 15:56:57'),
(13, 11, NULL, 18, 72, '6WG60113283318505', 'Enrollment fees for course ', '1337IOT/2013-09-30/18/1', 1, 85, NULL, '2013-09-30 15:56:57', '2013-09-30 15:56:57'),
(14, 0, NULL, NULL, NULL, '7JS94759MV880722K', 'Enrolled to a new course', '1337IOT/2014-02-14//5', 1, NULL, NULL, '2014-02-14 03:56:03', '2014-02-14 03:56:03'),
(15, 0, NULL, NULL, NULL, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//6', 1, NULL, NULL, '2014-02-14 03:56:03', '2014-02-14 03:56:03'),
(16, 14, NULL, NULL, NULL, '7JS94759MV880722K', 'Enrollment fees for course ', '1337IOT/2014-02-14//7', 1, 0, NULL, '2014-02-14 03:56:04', '2014-02-14 03:56:04'),
(17, 14, NULL, NULL, NULL, '7JS94759MV880722K', 'Enrollment fees for course ', '1337IOT/2014-02-14/1337institute@gmail.com/1', 1, 0, NULL, '2014-02-14 03:56:04', '2014-02-14 03:56:04'),
(18, 15, NULL, NULL, NULL, NULL, 'Enrollment fees for course ', '1337IOT/2014-02-14//7', 1, 0, NULL, '2014-02-14 03:56:04', '2014-02-14 03:56:04'),
(19, 15, NULL, NULL, NULL, NULL, 'Enrollment fees for course ', '1337IOT/2014-02-14/1337institute@gmail.com/1', 1, 0, NULL, '2014-02-14 03:56:04', '2014-02-14 03:56:04'),
(20, 0, 17, NULL, 137, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//11', 1, 100, NULL, '2014-02-14 03:56:27', '2014-02-14 03:56:27'),
(21, 20, NULL, NULL, 137, NULL, 'Enrollment fees for course ', '1337IOT/2014-02-14/1337institute_biz@gmail.com/1', 1, 5, NULL, '2014-02-14 03:56:29', '2014-02-14 03:56:29'),
(22, 20, NULL, NULL, 137, NULL, 'Enrollment fees for course ', '1337IOT/2014-02-14/shivam_biz@zapbuild.com/1', 1, 100, NULL, '2014-02-14 03:56:29', '2014-02-14 03:56:29'),
(23, 20, NULL, NULL, 137, NULL, 'Enrollment fees for course ', '1337IOT/2014-02-14/1337institute@gmail.com/1', 1, 10, NULL, '2014-02-14 03:56:29', '2014-02-14 03:56:29'),
(24, 0, 17, NULL, 137, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//14', 1, 100, NULL, '2014-02-14 04:24:56', '2014-02-14 04:24:56'),
(25, 24, NULL, 4, 137, NULL, 'Enrollment fees for course ', '1337IOT/2014-02-14/4/1', 1, 5, NULL, '2014-02-14 04:24:57', '2014-02-14 04:24:57'),
(26, 24, NULL, 18, 137, NULL, 'Enrollment fees for course ', '1337IOT/2014-02-14/18/1', 1, 100, NULL, '2014-02-14 04:24:57', '2014-02-14 04:24:57'),
(27, 0, NULL, NULL, NULL, '11C735231R591243D', 'Enrolled to a new course', '1337IOT/2014-02-14//16', 1, NULL, NULL, '2014-02-14 04:37:12', '2014-02-14 04:37:12'),
(28, 0, 17, NULL, 137, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//17', 1, 100, NULL, '2014-02-14 04:37:19', '2014-02-14 04:37:19'),
(29, 28, NULL, 4, 137, NULL, 'Enrollment fees for course ', '', 1, 5, NULL, '2014-02-14 04:37:20', '2014-02-14 04:37:20'),
(30, 28, NULL, 18, 137, NULL, 'Enrollment fees for course ', '', 1, 100, NULL, '2014-02-14 04:37:20', '2014-02-14 04:37:20'),
(31, 0, 17, NULL, 137, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//19', 1, 100, NULL, '2014-02-14 05:14:04', '2014-02-14 05:14:04'),
(32, 31, NULL, 4, 137, NULL, 'Enrollment fees for course ', '', 1, 5, NULL, '2014-02-14 05:14:04', '2014-02-14 05:14:04'),
(33, 31, NULL, 18, 137, NULL, 'Enrollment fees for course ', '', 1, 100, NULL, '2014-02-14 05:14:04', '2014-02-14 05:14:04'),
(34, 0, 12, NULL, 137, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//21', 1, 100, NULL, '2014-02-14 07:24:11', '2014-02-14 07:24:11'),
(35, 34, NULL, 4, 137, NULL, 'Enrollment fees for course ', '', 1, 5, NULL, '2014-02-14 07:24:11', '2014-02-14 07:24:11'),
(36, 34, NULL, 18, 137, NULL, 'Enrollment fees for course ', '', 1, 100, NULL, '2014-02-14 07:24:11', '2014-02-14 07:24:11'),
(37, 0, 44, NULL, 137, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//23', 1, 100, NULL, '2014-02-14 07:27:51', '2014-02-14 07:27:51'),
(38, 37, NULL, 4, 137, NULL, 'Enrollment fees for course ', '', 1, 5, NULL, '2014-02-14 07:27:51', '2014-02-14 07:27:51'),
(39, 37, NULL, 18, 137, NULL, 'Enrollment fees for course ', '', 1, 100, NULL, '2014-02-14 07:27:51', '2014-02-14 07:27:51'),
(40, 0, 12, NULL, 123, NULL, 'Enrolled to a new course', '1337IOT/2014-02-14//25', 1, 18, NULL, '2014-02-14 07:32:55', '2014-02-14 07:32:55'),
(41, 40, NULL, 18, 123, NULL, 'Enrollment fees for course ', '', 1, 18, NULL, '2014-02-14 07:32:55', '2014-02-14 07:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logs` text CHARACTER SET utf8 COLLATE utf8_bin,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `logs`, `created`) VALUES
(78, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A13%3A01+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AF0SGzOExD9pxMOP1X8PWFA9up6mARE-gFgGY87mG3VDgzMJff-xHprg";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=7JS94759MV880722K";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:26:"ipn_track_id=164ae0feeb763";}', '2014-02-14 03:14:18'),
(79, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=6PF831232X862032N";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=7JS94759MV880722K";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:61:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=53Y38639L59630911";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=9XN17262HL154482K";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=8JW80769E79026033";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=A719by8BO0tmZGcajPWpoCp2EylTA3Ap-r7FqvmsuWT0fDtklCoSoJ9q";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-1KD88458L7510063J";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=3LR92220XC9725216";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A12%3A22+PST+2014";}', '2014-02-14 03:14:18'),
(80, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A13%3A01+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AF0SGzOExD9pxMOP1X8PWFA9up6mARE-gFgGY87mG3VDgzMJff-xHprg";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=7JS94759MV880722K";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:26:"ipn_track_id=164ae0feeb763";}', '2014-02-14 03:15:44'),
(81, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=6PF831232X862032N";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=7JS94759MV880722K";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:61:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=53Y38639L59630911";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=9XN17262HL154482K";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=8JW80769E79026033";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=A719by8BO0tmZGcajPWpoCp2EylTA3Ap-r7FqvmsuWT0fDtklCoSoJ9q";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-1KD88458L7510063J";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=3LR92220XC9725216";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A12%3A22+PST+2014";}', '2014-02-14 03:15:44'),
(82, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:17:25'),
(83, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:17:25'),
(84, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:17:40'),
(85, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:17:40'),
(86, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:18:05'),
(87, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:18:05'),
(88, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A13%3A01+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AF0SGzOExD9pxMOP1X8PWFA9up6mARE-gFgGY87mG3VDgzMJff-xHprg";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=7JS94759MV880722K";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:26:"ipn_track_id=164ae0feeb763";}', '2014-02-14 03:18:27'),
(89, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=6PF831232X862032N";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=7JS94759MV880722K";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:61:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=53Y38639L59630911";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=9XN17262HL154482K";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=8JW80769E79026033";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=A719by8BO0tmZGcajPWpoCp2EylTA3Ap-r7FqvmsuWT0fDtklCoSoJ9q";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-1KD88458L7510063J";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=3LR92220XC9725216";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A12%3A22+PST+2014";}', '2014-02-14 03:18:29'),
(90, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:18:50'),
(91, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:18:50'),
(92, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:20:13'),
(93, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:20:13'),
(94, 'ytvygujvgvgv', '2014-02-14 03:20:22'),
(95, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:23:00'),
(96, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:23:00'),
(97, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A13%3A01+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AF0SGzOExD9pxMOP1X8PWFA9up6mARE-gFgGY87mG3VDgzMJff-xHprg";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=7JS94759MV880722K";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:26:"ipn_track_id=164ae0feeb763";}', '2014-02-14 03:23:52'),
(98, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=6PF831232X862032N";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=7JS94759MV880722K";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:61:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=53Y38639L59630911";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=9XN17262HL154482K";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=8JW80769E79026033";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=A719by8BO0tmZGcajPWpoCp2EylTA3Ap-r7FqvmsuWT0fDtklCoSoJ9q";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-1KD88458L7510063J";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=3LR92220XC9725216";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A12%3A22+PST+2014";}', '2014-02-14 03:23:53'),
(99, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:28:23'),
(100, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:28:25'),
(101, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=6PF831232X862032N";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=7JS94759MV880722K";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:61:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=53Y38639L59630911";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=9XN17262HL154482K";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=8JW80769E79026033";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=A719by8BO0tmZGcajPWpoCp2EylTA3Ap-r7FqvmsuWT0fDtklCoSoJ9q";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-1KD88458L7510063J";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=3LR92220XC9725216";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A12%3A22+PST+2014";}', '2014-02-14 03:34:39'),
(102, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A13%3A01+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AF0SGzOExD9pxMOP1X8PWFA9up6mARE-gFgGY87mG3VDgzMJff-xHprg";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=7JS94759MV880722K";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:26:"ipn_track_id=164ae0feeb763";}', '2014-02-14 03:34:39'),
(103, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=0GS6223103830401M";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:55:"transaction%5B0%5D.receiver=arjundhadwal%40zapbuild.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=722609392E117170D";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:61:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=8S4022929H219990M";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:20:"charset=windows-1252";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1UG951091F931882B";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=8RL67381KB130224T";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:77:"cancel_url=http%3A//localhost/IOT1337/trunk//c/17/new-chained-payment-testing";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:56:"transaction%5B1%5D.receiver=varunjitsodhi%40zapbuild.com";i:25;s:68:"verify_sign=AFcWxV21C7fd0v3bYYYRCpSSRl31AtSO.04U.exeCM7ubW3Ggds5GvGd";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:77:"return_url=http%3A//localhost/IOT1337/trunk//c/17/new-chained-payment-testing";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-6P2995128V662793M";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=8LG47438LV778630U";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Thu+Feb+13+22%3A42%3A53+PST+2014";}', '2014-02-14 03:35:13'),
(104, 'a:32:{i:0;s:20:"transaction_subject=";i:1;s:44:"payment_date=01%3A17%3A34+Feb+14%2C+2014+PST";i:2;s:19:"txn_type=web_accept";i:3;s:16:"last_name=Sharma";i:4;s:20:"residence_country=US";i:5;s:10:"item_name=";i:6;s:19:"payment_gross=10.00";i:7;s:15:"mc_currency=USD";i:8;s:46:"business=1337institute-facilitator%40gmail.com";i:9;s:20:"payment_type=instant";i:10;s:33:"protection_eligibility=Ineligible";i:11;s:68:"verify_sign=AQU0e5vuZCvSg-XJploSa.sGUDlpAzERBW0qy6UBYzxT2nRaLtek2C4J";i:12;s:21:"payer_status=verified";i:13;s:10:"test_ipn=1";i:14;s:8:"tax=0.00";i:15;s:37:"payer_email=shivam_biz%40zapbuild.com";i:16;s:24:"txn_id=80C36693PL4745045";i:17;s:10:"quantity=0";i:18;s:52:"receiver_email=1337institute-facilitator%40gmail.com";i:19;s:17:"first_name=Shivam";i:20;s:22:"payer_id=FHTYPNXDBEPME";i:21;s:25:"receiver_id=8UQDL5B7U3U3L";i:22;s:12:"item_number=";i:23;s:48:"payer_business_name=Shivam+Sharma%27s+Test+Store";i:24;s:24:"payment_status=Completed";i:25;s:16:"payment_fee=0.59";i:26;s:11:"mc_fee=0.59";i:27;s:14:"mc_gross=10.00";i:28;s:7:"custom=";i:29;s:13:"charset=UTF-8";i:30;s:18:"notify_version=3.7";i:31;s:25:"ipn_track_id=3ac93a8369b7";}', '2014-02-14 03:39:06'),
(105, 'a:43:{i:0;s:44:"transaction%5B0%5D.is_primary_receiver=false";i:1;s:54:"transaction%5B0%5D.id_for_sender_txn=8K306572XD2435533";i:2;s:49:"log_default_shipping_address_in_transaction=false";i:3;s:65:"transaction%5B2%5D.receiver=1337institute-facilitator%40gmail.com";i:4;s:57:"transaction%5B0%5D.receiver=1337institute_biz%40gmail.com";i:5;s:18:"action_type=CREATE";i:6;s:35:"transaction%5B2%5D.amount=USD+10.00";i:7;s:39:"transaction%5B2%5D.id=80C36693PL4745045";i:8;s:38:"transaction%5B2%5D.pending_reason=NONE";i:9;s:68:"ipn_notification_url=http%3A//1337iot.zapbuild.com/ipnhandler/17/137";i:10;s:38:"transaction%5B2%5D.paymentType=SERVICE";i:11;s:54:"transaction%5B2%5D.id_for_sender_txn=2EJ71803N77382005";i:12;s:38:"transaction%5B1%5D.paymentType=SERVICE";i:13;s:34:"transaction%5B0%5D.amount=USD+5.00";i:14;s:13:"charset=UTF-8";i:15;s:37:"transaction_type=Adaptive+Payment+PAY";i:16;s:54:"transaction%5B1%5D.id_for_sender_txn=1YU23965413488805";i:17;s:43:"transaction%5B1%5D.is_primary_receiver=true";i:18;s:35:"transaction%5B0%5D.status=Completed";i:19;s:26:"notify_version=UNVERSIONED";i:20;s:39:"transaction%5B0%5D.id=1LP20954LW576604X";i:21;s:50:"transaction%5B2%5D.status_for_sender_txn=Completed";i:22;s:67:"cancel_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:23;s:50:"transaction%5B1%5D.status_for_sender_txn=Completed";i:24;s:53:"transaction%5B1%5D.receiver=shivam_biz%40zapbuild.com";i:25;s:68:"verify_sign=Aenj1X29OXYsrGl0Uz8dGZRfRrLGAAZql1hIsiUY9iDfCrbg41io40WK";i:26;s:36:"sender_email=shivam_pers%40gmail.com";i:27;s:23:"fees_payer=EACHRECEIVER";i:28;s:50:"transaction%5B0%5D.status_for_sender_txn=Completed";i:29;s:67:"return_url=http%3A//1337iot.zapbuild.com/c/137/test-chained-payment";i:30;s:38:"transaction%5B0%5D.paymentType=SERVICE";i:31;s:36:"transaction%5B1%5D.amount=USD+100.00";i:32;s:44:"reverse_all_parallel_payments_on_error=false";i:33;s:38:"transaction%5B1%5D.pending_reason=NONE";i:34;s:28:"pay_key=AP-504743113D0173448";i:35;s:35:"transaction%5B2%5D.status=Completed";i:36;s:39:"transaction%5B1%5D.id=6JH62938YU035382B";i:37;s:44:"transaction%5B2%5D.is_primary_receiver=false";i:38;s:38:"transaction%5B0%5D.pending_reason=NONE";i:39;s:16:"status=COMPLETED";i:40;s:35:"transaction%5B1%5D.status=Completed";i:41;s:10:"test_ipn=1";i:42;s:53:"payment_request_date=Fri+Feb+14+01%3A16%3A32+PST+2014";}', '2014-02-14 03:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE IF NOT EXISTS `userdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `paypalaccount` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `biography` text,
  `notification` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `webLink` varchar(255) DEFAULT NULL,
  `fbLink` varchar(255) DEFAULT NULL,
  `twitterLink` varchar(255) DEFAULT NULL,
  `gplusLink` varchar(255) DEFAULT NULL,
  `language` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `state_id` (`state_id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `user_id`, `first_name`, `last_name`, `paypalaccount`, `email`, `about`, `city`, `phone`, `state_id`, `country_id`, `image`, `newsletter`, `status`, `reference`, `designation`, `heading`, `biography`, `notification`, `privacy`, `webLink`, `fbLink`, `twitterLink`, `gplusLink`, `language`, `created`, `modified`) VALUES
(1, 1, 'Shivam', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-06-27 17:20:51', '2013-06-27 17:20:51'),
(2, 2, 'Shivam', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-06-27 17:21:31', '2013-06-27 17:21:31'),
(3, 3, 'Shivam', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-06-27 17:24:27', '2013-06-27 17:24:27'),
(4, 4, 'Shivam', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-06-27 17:27:39', '2013-06-27 17:27:39'),
(8, 8, 'Ralph', 'Reilly', '', '', 'Dummy Profile\r\nThis is a dummy profile', NULL, '', NULL, NULL, '/img/8/profileimg/profile.jpg', 0, 0, '', 'asldkfjlksdfj', '', '', NULL, 'a:3:{s:30:"Show Profile in Search Engines";s:1:"0";s:23:"Show Courses in Profile";s:1:"1";s:20:"Use Transaction info";s:1:"0";}', 'http://', '', '@ralphreilly', ',l,l,', 1, '2013-07-01 18:13:39', '2013-08-13 21:57:52'),
(16, 16, 'Vijayeta', 'Duggal', '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-07-30 11:58:31', '2013-07-30 11:58:31'),
(9, 9, 'Shivam', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-07-10 18:04:55', '2013-07-10 18:04:55'),
(10, 10, 'Shivam', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-07-10 18:06:57', '2013-07-10 18:06:57'),
(11, 11, 'Zara', 'Joe', '', '', '', NULL, '', NULL, NULL, '/img/11/profileimg/profile.jpg', 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-07-19 22:16:16', '2013-09-25 12:30:47'),
(12, 12, 'Varun', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-07-22 12:14:21', '2013-07-22 12:14:21'),
(14, 14, 'Shivam', 'Sharma', '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-07-23 11:10:44', '2013-07-23 11:10:44'),
(17, 17, 'sandeep', 'k', 'arjundhadwal@zapbuild.com', '', '', NULL, '', NULL, NULL, '/img/17/profileimg/profile.JPG', 0, 0, '', 'developer', '', '<p>\r\n	this is biography text</p>\r\n', 'a:4:{i:0;s:1:"1";i:1;s:1:"4";i:2;s:1:"5";i:3;s:1:"6";}', 'a:3:{s:30:"Show Profile in Search Engines";s:1:"0";s:23:"Show Courses in Profile";s:1:"0";s:20:"Use Transaction info";s:1:"1";}', 'http://', '', '', '', 20, '2013-07-30 12:53:49', '2013-09-02 19:42:49'),
(18, 18, 'shivam', 'sharma', 'thompsonbooks@yahoo.com', '', '', NULL, '', NULL, NULL, '/img/18/profileimg/profile.png', 0, 0, '', '', 'headline testing test teast tiuys AH AKHSKA fddsf sdf sdf  s', '<ul>\r\n	<li>\r\n		<em><strong>Test Biography</strong></em></li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		dasdadasdasd</li>\r\n	<li>\r\n		asdadasdasd</li>\r\n	<li>\r\n		asdasdasdas</li>\r\n	<li>\r\n		dasdad</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n	<li>\r\n		asdasdadadasdasd</li>\r\n	<li>\r\n		asdasdadad</li>\r\n	<li>\r\n		adadadasdas</li>\r\n	<li>\r\n		dasdadadasd</li>\r\n	<li>\r\n		adasdasda</li>\r\n</ul>\r\n', 'a:2:{i:0;s:1:"4";i:1;s:1:"5";}', 'a:3:{s:20:"make profile private";s:1:"0";s:30:"Show Profile in Search Engines";s:1:"1";s:23:"Show Courses in Profile";s:1:"1";}', 'http://', '', '', '', 1, '2013-08-02 17:44:01', '2014-08-04 19:03:35'),
(19, 19, 'vijayeta', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-08-05 12:54:31', '2013-08-05 12:54:31'),
(20, 20, 'veggi', 'duggal', '', '', '', NULL, '', NULL, NULL, '/img/20/profileimg/profile.jpg', 0, 0, '', 'pilot', 'i love and admire teaching', '<p>\r\n	I am a teacher and an author from long time. I love teaching different and subject related to art, fashion, creativity and nature.</p>\r\n', 'a:7:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";i:6;s:1:"7";}', NULL, 'http://', '', '', '', 20, '2013-08-05 12:56:01', '2013-08-14 10:33:43'),
(21, 28, 'Shivam ', 'Sharma', '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-08-12 13:09:04', '2013-08-12 13:09:04'),
(22, 29, 'Shivam Sharma', NULL, '', 'shivamsharma@zapbuild.com', '', NULL, '', NULL, NULL, '/img/29/profileimg/profile.jpg', 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-08-12 14:43:54', '2013-08-22 12:40:50'),
(23, 30, 'vijayeta duggal', NULL, '', '', '', NULL, '', NULL, NULL, '/img/30/profileimg/profile.jpg', 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-08-13 21:17:13', '2013-08-13 21:39:03'),
(24, 31, 'Shivam', 'Sharma', '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-08-16 17:14:44', '2013-08-16 17:14:44'),
(25, 32, 'Kamlesh', NULL, 'kamleshkumar@zapbuild.com', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-09-06 10:57:21', '2013-09-25 10:09:21'),
(26, 33, 'sheetal', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-09-19 12:59:57', '2013-09-19 12:59:57'),
(27, 34, 'aman', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-10-17 17:54:18', '2013-10-17 17:54:18'),
(28, 35, 'manreet', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-10-18 11:08:23', '2013-10-18 11:08:23'),
(29, 36, 'Rakesh', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-10-28 12:00:04', '2013-10-28 12:00:04'),
(30, 37, 'aman', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-11-06 16:08:12', '2013-11-06 16:08:12'),
(31, 38, 'Jitin', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-11-18 15:36:18', '2013-11-18 15:36:18'),
(32, 39, 'TestName', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-11-18 15:41:10', '2013-11-18 15:41:10'),
(33, 40, 'shivam', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-11-28 13:34:41', '2013-11-28 13:34:41'),
(34, 41, 'David', 'Homes', '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', '', '', '', NULL, NULL, 'http://', '', '', '', 1, '2013-12-03 17:00:06', '2013-12-03 17:02:59'),
(35, 42, 'Bimal', 'Chawla', '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-12-26 18:03:23', '2013-12-26 18:03:23'),
(36, 43, 'Zara Joe', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2013-12-26 18:19:57', '2013-12-26 18:19:57'),
(38, 45, 'Annie', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2014-05-22 14:54:02', '2014-05-22 14:54:02'),
(37, 44, 'Amrit', NULL, '', '', '', NULL, '', NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2014-02-14 18:41:12', '2014-02-14 18:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fbid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remembertoken` varchar(255) NOT NULL,
  `loginfrom` enum('Site','FB','Twitter') NOT NULL DEFAULT 'Site',
  `status` tinyint(1) NOT NULL,
  `passwordstatus` varchar(255) NOT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `profiletype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 for private and 0 for public ',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fbid`, `username`, `password`, `remembertoken`, `loginfrom`, `status`, `passwordstatus`, `newsletter`, `profiletype`, `created`, `modified`) VALUES
(29, '', '1034418668', '352677ef9e87dce3fd48093c7236672db34d97f5', '', 'Twitter', 0, '', NULL, 0, '2013-08-12 14:43:54', '2013-08-22 12:40:50'),
(3, '', 'hiteshchopra21@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '', 1, '', NULL, 0, '2013-06-27 17:24:27', '2013-07-09 13:03:32'),
(4, '', 'hiteshchopra221@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '', 1, '', NULL, 0, '2013-06-27 17:27:39', '2013-07-09 13:03:32'),
(8, '', 'ralphtreilly@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'be568b67364057f8eda26dfaa2fcb605', 'Site', 1, '89036d5348a948e5cf0ffd921769c73e', 1, 0, '2013-07-01 18:13:39', '2014-02-14 18:50:28'),
(9, '', 'zap@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '', 0, 'eb8344c5b653f1d3068fc1467a3e2314', NULL, 0, '2013-07-10 18:04:55', '2013-07-10 18:04:55'),
(10, '', 'raju@mailmetrash.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '', 1, '0', NULL, 0, '2013-07-10 18:06:57', '2013-07-10 18:07:21'),
(11, '100004346048262', 'zarajoe11@gmail.com', '618deb94b43ef4a81398779343442af231ffb70d', '', '', 1, '', NULL, 0, '2013-07-19 22:16:16', '2013-09-25 12:30:47'),
(12, '', 'varunjeetsodhi@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 'Site', 1, '0', NULL, 0, '2013-07-22 12:14:21', '2013-07-22 12:17:12'),
(31, '100000518146877', 'shivam_sharma5@yahoo.com', '4a1d85eced7e70ac94112c9854a40a2115bced70', '', 'FB', 1, '', NULL, 0, '2013-08-16 17:14:44', '2013-08-16 17:14:44'),
(17, '', 'sandeepkaur@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '3b76c4534b156fbd32abe64de28ef334', '', 1, '3b76c4534b156fbd32abe64de28ef334', NULL, 0, '2013-07-30 12:53:49', '2013-08-16 13:21:16'),
(16, '100001374920488', 'vijayeta_04@yahoo.co.in', 'f2631fb3c1a380120062ab541e2b05949e573fff', '', '', 1, '', NULL, 0, '2013-07-30 11:58:31', '2013-07-30 11:58:31'),
(18, '', 'shivamsharma@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '89036d5348a948e5cf0ffd921769c73e', 'Site', 1, '1', NULL, 0, '2013-08-02 17:44:01', '2014-08-04 19:03:35'),
(19, '', 'vijayetaduggal@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '', 0, '5511430e5965877b113a7897e1a2dfd0', NULL, 0, '2013-08-05 12:54:31', '2013-08-05 12:54:31'),
(20, '', 'vijayeta.veggi@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'a4b0100f659b6addd6b8c580ea173a34', '', 1, '1', NULL, 0, '2013-08-05 12:56:01', '2013-08-13 11:16:58'),
(32, '', 'kamleshkumar@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 'Site', 1, '0', NULL, 0, '2013-09-06 10:57:21', '2013-09-06 10:58:16'),
(33, '', 'sheetalpandhi@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 'Site', 1, '0', NULL, 0, '2013-09-19 12:59:57', '2013-09-19 13:00:29'),
(34, '', 'aman.0619@yahoo.com', '6d46924759088b4700c1d26e30dfbeafa54afb38', '', 'Site', 0, '88358b7837706c35999866eb2cb27335', NULL, 0, '2013-10-17 17:54:18', '2013-10-17 17:54:18'),
(35, '', 'manreet841@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '', 'Site', 1, '0', NULL, 0, '2013-10-18 11:08:23', '2013-10-18 11:09:57'),
(36, '', 'rakeshkapoor@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 'Site', 0, '1db42a8e787112fcace88b0ed1d4f736', NULL, 0, '2013-10-28 12:00:04', '2013-10-28 12:00:04'),
(37, '', 'amanpreetkaur013@gmail.com', '6d46924759088b4700c1d26e30dfbeafa54afb38', '', 'Site', 0, 'd5dff9b0ceaade588ef8dc055b2e1e72', NULL, 0, '2013-11-06 16:08:12', '2013-11-06 16:08:12'),
(38, '', 'nareshnootoo123@gmail.com', '94eea75ee93f11d61ad33ca209041ef35f8a84c5', '', 'Site', 0, 'b53fc7a7845fc7fa8d9259d7bab2b5dc', NULL, 0, '2013-11-18 15:36:18', '2013-11-18 15:36:18'),
(39, '', 'nareshnootoo+123@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', 'Site', 1, '0', NULL, 0, '2013-11-18 15:41:10', '2013-11-18 15:41:58'),
(40, '', 'shivamsharma586@gmail.com', '422dae92f19953f40ba5f25ff364ef4a211821bf', '', 'Site', 1, '1', NULL, 0, '2013-11-28 13:34:41', '2013-11-28 13:35:52'),
(41, '100006564306289', 'davidhomes8@gmail.com', '50c952ef3ce8465838e0a7d5a07c068d6b5cdacb', '', 'FB', 1, '', NULL, 0, '2013-12-03 17:00:06', '2013-12-03 17:00:06'),
(42, '100001682880689', 'bimal_89chawla@yahoo.co.in', '65572cb4531248325559fa63080afa9e663659cd', '', 'FB', 1, '', NULL, 0, '2013-12-26 18:03:23', '2013-12-26 18:03:23'),
(43, '', '817143564', '14d45f3190ee0ba87eaf0d9c05376ca541474df1', '', 'Twitter', 0, '', NULL, 0, '2013-12-26 18:19:57', '2013-12-26 18:19:57'),
(44, '', 'amritpalsingh@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 'Site', 1, '0334352a6459ccdc6f67a81bfc09f328', NULL, 0, '2014-02-14 18:41:12', '2014-02-14 18:41:12'),
(45, '', 'ambikakumari@zapbuild.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '236985c55eda3864f83ec4dc23985237', 'Site', 1, '0', NULL, 0, '2014-05-22 14:54:02', '2014-05-22 14:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_complete_course_lectures`
--

CREATE TABLE IF NOT EXISTS `user_complete_course_lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lecture_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user_complete_course_lectures`
--

INSERT INTO `user_complete_course_lectures` (`id`, `user_id`, `course_id`, `lecture_id`, `created`, `modified`) VALUES
(2, 18, 43, 125, '2013-08-30 15:07:53', '2013-08-30 15:07:53'),
(5, 17, 82, 154, '2013-08-30 17:33:40', '2013-08-30 17:33:40'),
(7, 18, 10, 39, '2013-09-02 11:05:57', '2013-09-02 11:05:57'),
(10, 18, 50, 105, '2013-10-16 14:54:41', '2013-10-16 14:54:41'),
(11, 18, 48, 103, '2013-10-30 15:14:33', '2013-10-30 15:14:33'),
(16, 18, 95, 172, '2013-11-07 18:20:49', '2013-11-07 18:20:49'),
(18, 20, 95, 172, '2013-11-21 13:14:01', '2013-11-21 13:14:01'),
(19, 45, 138, 312, '2014-05-22 05:28:52', '2014-05-22 05:28:52'),
(20, 18, 66, 135, '2014-05-22 06:08:17', '2014-05-22 06:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_learning_courses`
--

CREATE TABLE IF NOT EXISTS `user_learning_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `user_learning_courses`
--

INSERT INTO `user_learning_courses` (`id`, `user_id`, `course_id`, `completed`, `created`, `modified`) VALUES
(3, 18, 10, 0, '2013-08-30 20:22:19', '2013-08-30 20:22:19'),
(4, 18, 42, 0, '2013-09-03 14:18:36', '2013-09-03 14:18:36'),
(5, 32, 96, 0, '2013-09-10 12:30:50', '2013-09-10 12:30:50'),
(6, 18, 48, 1, '2013-09-10 16:50:33', '2013-10-30 15:14:34'),
(7, 32, 48, 0, '2013-09-11 09:50:47', '2013-09-11 09:50:47'),
(8, 32, 95, 0, '2013-09-19 18:34:18', '2013-09-19 18:34:18'),
(9, 32, 13, 0, '2013-09-25 10:07:34', '2013-09-25 10:07:34'),
(15, 18, 107, 1, '2013-10-08 19:49:30', '2013-10-16 14:54:41'),
(16, 35, 95, 0, '2013-10-18 11:11:21', '2013-10-18 11:11:21'),
(17, 18, 95, 1, '2013-11-06 11:49:48', '2013-11-07 18:20:50'),
(18, 18, 66, 1, '2013-11-06 11:52:21', '2014-05-22 06:08:17'),
(19, 18, 51, 0, '2013-11-09 11:09:28', '2013-11-09 11:09:28'),
(20, 32, 118, 0, '2013-11-13 10:50:35', '2013-11-13 10:50:35'),
(21, 8, 111, 0, '2014-01-14 04:53:27', '2014-01-14 04:53:27'),
(22, 8, 66, 0, '2014-01-27 12:08:58', '2014-01-27 12:08:58'),
(23, 32, 47, 0, '2014-01-29 13:18:13', '2014-01-29 13:18:13'),
(24, 32, 64, 0, '2014-01-30 20:11:06', '2014-01-30 20:11:06'),
(29, NULL, NULL, 0, '2014-02-14 04:37:12', '2014-02-14 04:37:12'),
(32, 12, 137, 0, '2014-02-14 07:24:11', '2014-02-14 07:24:11'),
(33, 44, 137, 0, '2014-02-14 07:27:51', '2014-02-14 07:27:51'),
(34, 12, 123, 0, '2014-02-14 07:32:55', '2014-02-14 07:32:55'),
(35, 18, 25, 0, '2014-05-22 06:06:13', '2014-05-22 06:06:13'),
(36, 45, 49, 0, '2014-05-28 08:01:28', '2014-05-28 08:01:28'),
(37, 18, 138, 0, '2014-09-08 23:51:25', '2014-09-08 23:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_view_courses`
--

CREATE TABLE IF NOT EXISTS `user_view_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

--
-- Dumping data for table `user_view_courses`
--

INSERT INTO `user_view_courses` (`id`, `user_id`, `course_id`, `created`, `modified`) VALUES
(1, 8, 6, '2013-07-31 15:34:51', '2013-07-31 15:34:51'),
(2, 8, 7, '2013-07-31 15:35:20', '2013-07-31 15:35:20'),
(3, 3, 7, '2013-07-31 15:35:35', '2013-07-31 15:35:35'),
(4, 5, 15, '2013-08-02 15:11:55', '2013-08-02 15:11:55'),
(5, 17, 13, '2013-08-02 15:34:52', '2013-08-02 15:34:52'),
(6, 17, 10, '2013-08-02 15:49:27', '2013-08-02 15:49:27'),
(7, 18, 43, '2013-08-02 17:58:54', '2013-08-02 17:58:54'),
(8, 18, 10, '2013-08-05 18:00:33', '2013-08-05 18:00:33'),
(9, 18, 13, '2013-08-05 18:29:08', '2013-08-05 18:29:08'),
(10, 20, 15, '2013-08-06 15:55:09', '2013-08-06 15:55:09'),
(11, 20, 13, '2013-08-06 16:01:27', '2013-08-06 16:01:27'),
(12, 20, 52, '2013-08-06 16:04:32', '2013-08-06 16:04:32'),
(13, 20, 51, '2013-08-06 16:04:56', '2013-08-06 16:04:56'),
(14, 18, 52, '2013-08-06 17:19:42', '2013-08-06 17:19:42'),
(15, 20, 46, '2013-08-06 18:58:36', '2013-08-06 18:58:36'),
(16, 18, 51, '2013-08-06 19:38:41', '2013-08-06 19:38:41'),
(17, 18, 50, '2013-08-06 19:41:58', '2013-08-06 19:41:57'),
(18, 18, 18, '2013-08-07 11:58:01', '2013-08-07 11:58:01'),
(19, 8, 61, '2013-08-07 12:57:33', '2013-08-07 12:57:33'),
(20, 8, 10, '2013-08-07 13:01:50', '2013-08-07 13:01:50'),
(21, 18, 46, '2013-08-07 14:04:43', '2013-08-07 14:04:43'),
(22, 18, 47, '2013-08-07 15:00:08', '2013-08-07 15:00:08'),
(23, 20, 62, '2013-08-07 16:55:11', '2013-08-07 16:55:11'),
(24, 20, 47, '2013-08-07 16:58:43', '2013-08-07 16:58:43'),
(25, 18, 62, '2013-08-07 17:07:28', '2013-08-07 17:07:28'),
(26, 20, 63, '2013-08-07 17:20:56', '2013-08-07 17:20:56'),
(27, 20, 64, '2013-08-07 17:30:16', '2013-08-07 17:30:16'),
(28, 18, 64, '2013-08-07 17:36:32', '2013-08-07 17:36:32'),
(29, 20, 49, '2013-08-07 17:46:14', '2013-08-07 17:46:14'),
(30, 20, 48, '2013-08-07 17:54:05', '2013-08-07 17:54:05'),
(31, 20, 67, '2013-08-07 18:17:16', '2013-08-07 18:17:16'),
(32, 8, 69, '2013-08-08 02:25:57', '2013-08-08 02:25:57'),
(33, 8, 17, '2013-08-08 09:02:38', '2013-08-08 09:02:38'),
(34, 8, 66, '2013-08-08 09:09:12', '2013-08-08 09:09:12'),
(35, 17, 89, '2013-08-10 10:42:26', '2013-08-10 10:42:26'),
(36, 18, 42, '2013-08-12 10:10:24', '2013-08-12 10:10:24'),
(37, 20, 92, '2013-08-12 11:53:34', '2013-08-12 11:53:34'),
(38, 18, 82, '2013-08-13 12:04:16', '2013-08-13 12:04:16'),
(39, 18, 79, '2013-08-13 13:06:43', '2013-08-13 13:06:43'),
(40, 18, 63, '2013-08-13 15:38:59', '2013-08-13 15:38:59'),
(41, 18, 95, '2013-08-13 16:30:22', '2013-08-13 16:30:22'),
(42, 18, 96, '2013-08-13 17:04:14', '2013-08-13 17:04:14'),
(43, 17, 82, '2013-08-13 19:40:58', '2013-08-13 19:40:58'),
(44, 18, 66, '2013-08-13 20:14:29', '2013-08-13 20:14:29'),
(45, 17, 52, '2013-08-13 20:30:51', '2013-08-13 20:30:51'),
(46, 17, 48, '2013-08-13 20:51:28', '2013-08-13 20:51:28'),
(47, 30, 95, '2013-08-13 21:27:05', '2013-08-13 21:27:05'),
(48, 18, 72, '2013-08-13 21:56:05', '2013-08-13 21:56:05'),
(49, 20, 95, '2013-08-13 22:07:58', '2013-08-13 22:07:58'),
(50, 18, 61, '2013-08-13 22:10:35', '2013-08-13 22:10:35'),
(51, 17, 95, '2013-08-14 15:04:37', '2013-08-14 15:04:37'),
(52, 18, 100, '2013-08-16 15:08:16', '2013-08-16 15:08:16'),
(53, 17, 42, '2013-08-20 15:32:07', '2013-08-20 15:32:07'),
(54, 18, 101, '2013-08-21 14:18:44', '2013-08-21 14:18:44'),
(55, 29, 48, '2013-08-21 15:41:56', '2013-08-21 15:41:56'),
(56, 18, 48, '2013-08-22 11:14:05', '2013-08-22 11:14:05'),
(57, 29, 95, '2013-08-24 14:29:20', '2013-08-24 14:29:20'),
(58, 8, 19, '2013-08-25 13:08:37', '2013-08-25 13:08:37'),
(59, 18, 93, '2013-08-29 19:05:52', '2013-08-29 19:05:52'),
(60, 17, 18, '2013-08-30 16:50:54', '2013-08-30 16:50:54'),
(61, 17, 101, '2013-08-30 16:52:09', '2013-08-30 16:52:09'),
(62, 17, 43, '2013-08-30 16:52:16', '2013-08-30 16:52:16'),
(63, 17, 96, '2013-08-30 16:52:59', '2013-08-30 16:52:59'),
(64, 32, 106, '2013-09-06 11:00:21', '2013-09-06 11:00:21'),
(65, 32, 96, '2013-09-06 15:48:55', '2013-09-06 15:48:55'),
(66, 32, 95, '2013-09-11 09:48:57', '2013-09-11 09:48:57'),
(67, 32, 51, '2013-09-11 09:49:16', '2013-09-11 09:49:16'),
(68, 32, 48, '2013-09-11 09:50:14', '2013-09-11 09:50:14'),
(69, 8, 37, '2013-09-11 16:29:31', '2013-09-11 16:29:31'),
(70, 8, 20, '2013-09-11 16:32:48', '2013-09-11 16:32:48'),
(71, 8, 21, '2013-09-11 16:33:00', '2013-09-11 16:33:00'),
(72, 32, 13, '2013-09-25 10:07:00', '2013-09-25 10:07:00'),
(73, 17, 72, '2013-09-30 11:04:26', '2013-09-30 11:04:26'),
(74, 32, 66, '2013-09-30 12:35:32', '2013-09-30 12:35:32'),
(75, 32, 10, '2013-09-30 14:04:40', '2013-09-30 14:04:40'),
(76, 32, 43, '2013-10-16 14:10:26', '2013-10-16 14:10:26'),
(77, 32, 107, '2013-10-16 14:10:38', '2013-10-16 14:10:38'),
(78, 35, 95, '2013-10-18 11:11:14', '2013-10-18 11:11:14'),
(79, 18, 110, '2013-10-24 16:21:11', '2013-10-24 16:21:11'),
(80, 18, 111, '2013-10-24 17:23:59', '2013-10-24 17:23:59'),
(81, 18, 112, '2013-10-26 13:39:54', '2013-10-26 13:39:54'),
(82, 18, 53, '2013-10-30 14:22:03', '2013-10-30 14:22:03'),
(83, 18, 107, '2013-10-30 15:13:27', '2013-10-30 15:13:27'),
(84, 18, 113, '2013-10-30 15:13:54', '2013-10-30 15:13:54'),
(85, 18, 104, '2013-10-30 15:20:45', '2013-10-30 15:20:45'),
(86, 17, 113, '2013-10-30 17:29:29', '2013-10-30 17:29:29'),
(87, 18, 114, '2013-10-30 17:33:32', '2013-10-30 17:33:32'),
(88, 18, 115, '2013-11-07 10:03:25', '2013-11-07 10:03:25'),
(89, 18, 116, '2013-11-08 10:57:40', '2013-11-08 10:57:40'),
(90, 18, 117, '2013-11-09 16:38:46', '2013-11-09 16:38:46'),
(91, 18, 118, '2013-11-09 16:40:30', '2013-11-09 16:40:30'),
(92, 18, 119, '2013-11-12 18:05:42', '2013-11-12 18:05:42'),
(93, 32, 118, '2013-11-13 10:50:31', '2013-11-13 10:50:31'),
(94, 18, 122, '2013-11-18 13:01:40', '2013-11-18 13:01:40'),
(95, 18, 123, '2013-11-19 12:40:24', '2013-11-19 12:40:24'),
(96, 18, 49, '2013-11-20 12:00:35', '2013-11-20 12:00:35'),
(97, 11, 118, '2013-11-30 12:18:35', '2013-11-30 12:18:35'),
(98, 18, 121, '2013-11-30 12:19:40', '2013-11-30 12:19:40'),
(99, 11, 123, '2013-11-30 12:31:24', '2013-11-30 12:31:24'),
(100, 18, 125, '2013-12-12 11:45:57', '2013-12-12 11:45:57'),
(101, 18, 128, '2013-12-23 16:38:37', '2013-12-23 16:38:37'),
(102, 18, 9, '2013-12-26 16:53:26', '2013-12-26 16:53:26'),
(103, 42, 123, '2013-12-26 18:07:57', '2013-12-26 18:07:57'),
(104, 42, 129, '2013-12-26 18:13:22', '2013-12-26 18:13:22'),
(105, 39, 127, '2014-01-03 11:48:30', '2014-01-03 11:48:30'),
(106, 17, 123, '2014-01-08 18:23:39', '2014-01-08 18:23:39'),
(107, 18, 129, '2014-01-10 11:12:32', '2014-01-10 11:12:32'),
(108, 18, 131, '2014-01-10 17:48:25', '2014-01-10 17:48:25'),
(109, 18, 130, '2014-01-10 17:51:28', '2014-01-10 17:51:28'),
(110, 8, 132, '2014-01-11 00:25:44', '2014-01-11 00:25:44'),
(111, 8, 47, '2014-01-11 00:29:44', '2014-01-11 00:29:44'),
(112, 8, 123, '2014-01-14 04:48:42', '2014-01-14 04:48:42'),
(113, 8, 118, '2014-01-14 04:52:44', '2014-01-14 04:52:44'),
(114, 8, 43, '2014-01-14 04:52:58', '2014-01-14 04:52:58'),
(115, 8, 111, '2014-01-14 04:53:21', '2014-01-14 04:53:21'),
(116, 8, 77, '2014-01-23 21:44:16', '2014-01-23 21:44:16'),
(117, 18, 133, '2014-01-23 21:44:55', '2014-01-23 21:44:55'),
(118, 32, 123, '2014-01-24 12:34:38', '2014-01-24 12:34:38'),
(119, 32, 42, '2014-01-24 17:24:21', '2014-01-24 17:24:21'),
(120, 8, 95, '2014-01-27 11:48:13', '2014-01-27 11:48:13'),
(121, 8, 48, '2014-01-27 11:48:49', '2014-01-27 11:48:49'),
(122, 8, 64, '2014-01-27 12:11:07', '2014-01-27 12:11:07'),
(123, 8, 42, '2014-01-28 17:53:48', '2014-01-28 17:53:48'),
(124, 8, 135, '2014-01-29 06:12:06', '2014-01-29 06:12:06'),
(125, 8, 76, '2014-01-29 06:30:00', '2014-01-29 06:30:00'),
(126, 32, 47, '2014-01-29 13:18:09', '2014-01-29 13:18:09'),
(127, 18, 134, '2014-01-29 14:43:49', '2014-01-29 14:43:49'),
(128, 8, 136, '2014-01-30 17:58:10', '2014-01-30 17:58:10'),
(129, 32, 64, '2014-01-30 20:11:02', '2014-01-30 20:11:02'),
(130, 17, 137, '2014-02-11 03:22:42', '2014-02-11 03:22:42'),
(131, 18, 137, '2014-02-13 08:13:07', '2014-02-13 08:13:07'),
(132, 44, 137, '2014-02-14 07:19:27', '2014-02-14 07:19:27'),
(133, 12, 137, '2014-02-14 07:20:04', '2014-02-14 07:20:04'),
(134, 8, 137, '2014-02-14 07:20:29', '2014-02-14 07:20:29'),
(135, 12, 123, '2014-02-14 07:32:14', '2014-02-14 07:32:14'),
(136, 12, 72, '2014-02-14 07:34:10', '2014-02-14 07:34:10'),
(137, 12, 42, '2014-02-14 07:39:59', '2014-02-14 07:39:59'),
(138, 44, 123, '2014-02-17 07:26:47', '2014-02-17 07:26:47'),
(139, 31, 137, '2014-03-06 15:06:08', '2014-03-06 15:06:08'),
(140, 45, 138, '2014-05-22 05:32:25', '2014-05-22 05:32:25'),
(141, 18, 138, '2014-05-22 05:58:23', '2014-05-22 05:58:23'),
(142, 18, 25, '2014-05-22 06:05:25', '2014-05-22 06:05:25'),
(143, 45, 49, '2014-05-28 08:01:07', '2014-05-28 08:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist_courses`
--

CREATE TABLE IF NOT EXISTS `user_wishlist_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_wishlist_courses`
--

INSERT INTO `user_wishlist_courses` (`id`, `user_id`, `course_id`, `created`, `modified`) VALUES
(1, 8, 6, '2013-08-02 10:35:14', '2013-08-02 10:35:14'),
(2, 17, 10, '2013-08-02 15:50:17', '2013-08-02 15:50:17'),
(3, 20, 15, '2013-08-06 15:55:12', '2013-08-06 15:55:12'),
(4, 18, 10, '2013-08-07 11:53:23', '2013-08-07 11:53:23'),
(5, 30, 95, '2013-08-13 21:27:08', '2013-08-13 21:27:08');
