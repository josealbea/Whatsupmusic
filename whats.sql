-- phpMyAdmin SQL Dump
-- version 4.2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 17 Juin 2014 à 10:46
-- Version du serveur :  5.5.25-log
-- Version de PHP :  5.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `whatsup`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2014-02-10 12:31:35', '2014-02-10 12:31:35', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0),
(2, 6, 'Test', 'jose.albea@gmail.Com', '', '::1', '2014-05-26 15:12:11', '2014-05-26 13:12:11', 'test commentaire', 0, '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:29.0) Gecko/20100101 Firefox/29.0', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1779 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/WhatsUpMusic', 'yes'),
(2, 'blogname', 'What&#039;s Up Music', 'yes'),
(3, 'blogdescription', 'Rock Family', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'jose.albea@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:13:{i:0;s:37:"acf-options-page/acf-options-page.php";i:1;s:29:"acf-repeater/acf-repeater.php";i:2;s:30:"advanced-custom-fields/acf.php";i:3;s:30:"baw-post-views-count/bawpv.php";i:4;s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";i:5;s:53:"nextend-facebook-connect/nextend-facebook-connect.php";i:6;s:51:"nextend-twitter-connect/nextend-twitter-connect.php";i:7;s:37:"user-role-editor/user-role-editor.php";i:8;s:24:"wordpress-seo/wp-seo.php";i:9;s:36:"wp-frontend-form/wp-guest-poster.php";i:10;s:33:"wp-report-post/wp-report-post.php";i:11;s:31:"wti-like-post/wti_like_post.php";i:12;s:28:"wysija-newsletters/index.php";}', 'yes'),
(36, 'home', 'http://localhost/WhatsUpMusic/', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:5:{i:0;s:82:"/var/www/vhosts/sd-42411.dedibox.fr/whatsup/wp-content/themes/whatsup/category.php";i:1;s:85:"/var/www/vhosts/sd-42411.dedibox.fr/whatsup/wp-content/themes/whatsup/custom_home.php";i:3;s:79:"/var/www/vhosts/sd-42411.dedibox.fr/whatsup/wp-content/themes/whatsup/index.php";i:4;s:79:"/var/www/vhosts/sd-42411.dedibox.fr/whatsup/wp-content/themes/whatsup/style.css";i:5;s:80:"/var/www/vhosts/sd-42411.dedibox.fr/whatsup/wp-content/themes/whatsup/author.php";}', 'no'),
(44, 'template', 'whatsup', 'yes'),
(45, 'stylesheet', 'whatsup', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:3:{i:3;a:3:{s:5:"title";s:7:"About :";s:4:"text";s:179:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non massa et ligula porta sagittis eu ut justo. Curabitur accumsan scelerisque fermentum. Suspendisse venenatis dui.";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:7:"Contact";s:4:"text";s:102:"123 Main st.\r\nLos Angeles, CA, 91316, U.S.A\r\n\r\nPhone: +1.818.555.1212\r\nWebsite: http://designwall.com ";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:6:{s:27:"wp-super-cache/wp-cache.php";s:23:"wpsupercache_deactivate";s:30:"baw-post-views-count/bawpv.php";s:18:"bawpvc_uninstaller";s:33:"report-content/report-content.php";s:13:"wprc_rollback";s:96:"Users/accountuser/Documents/Sites/Whatsupmusic/wp-content/plugins/baw-post-views-count/bawpv.php";s:18:"bawpvc_uninstaller";s:31:"wti-like-post/wti_like_post.php";s:23:"UnsetOptionsWtiLikePost";s:97:"Users/accountuser/Documents/Sites/Whatsupmusic/wp-content/plugins/wti-like-post/wti_like_post.php";s:23:"UnsetOptionsWtiLikePost";}', 'no'),
(86, 'timezone_string', 'Europe/Paris', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '35', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:70:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"wysija_newsletters";b:1;s:18:"wysija_subscribers";b:1;s:13:"wysija_config";b:1;s:16:"wysija_theme_tab";b:1;s:16:"wysija_style_tab";b:1;s:22:"wysija_stats_dashboard";b:1;s:15:"wpseo_bulk_edit";b:1;s:14:"manage_ratings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:11:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:6:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:17:"dw-single-sidebar";a:0:{}s:8:"dw-top-1";a:1:{i:0;s:6:"text-3";}s:8:"dw-top-2";a:1:{i:0;s:6:"text-4";}s:8:"dw-top-3";a:1:{i:0;s:8:"wysija-2";}s:8:"dw-top-4";a:1:{i:0;s:12:"qtranslate-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:7:{i:1402128898;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1402129069;a:1:{s:12:"qs_cron_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1402144300;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1402144307;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1402149307;a:1:{s:32:"wpo_poster_clear_reject_articles";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1402165440;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(158, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"jose.albea@gmail.com";s:7:"version";s:5:"3.8.3";s:9:"timestamp";i:1397562400;}', 'yes'),
(159, '_transient_random_seed', '3c8280b8a616945a7b71f1219e3454f0', 'yes'),
(178, 'recently_activated', 'a:1:{s:32:"wp-facebookconnect/fbconnect.php";i:1401184501;}', 'yes'),
(187, 'wpseo_titles', 'a:72:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:1;s:14:"hide-shortlink";b:1;s:16:"hide-wlwmanifest";b:1;s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:0:"";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:0:"";s:15:"title-404-wpseo";s:0:"";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:17:"noauthorship-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:17:"noauthorship-page";b:1;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:1;s:23:"noauthorship-attachment";b:1;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:12:"title-agenda";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:15:"metadesc-agenda";s:0:"";s:14:"metakey-agenda";s:0:"";s:14:"noindex-agenda";b:0;s:19:"noauthorship-agenda";b:1;s:15:"showdate-agenda";b:0;s:18:"hideeditbox-agenda";b:0;s:22:"title-ptarchive-agenda";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:25:"metadesc-ptarchive-agenda";s:0:"";s:24:"metakey-ptarchive-agenda";s:0:"";s:24:"bctitle-ptarchive-agenda";s:0:"";s:24:"noindex-ptarchive-agenda";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(190, 'wpseo', 'a:18:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:1;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:11:"ignore_tour";b:1;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";b:0;s:19:"tracking_popup_done";b:1;s:7:"version";s:7:"1.5.2.8";s:11:"alexaverify";s:0:"";s:20:"disableadvanced_meta";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:15:"pinterestverify";s:0:"";s:12:"yandexverify";s:0:"";s:14:"yoast_tracking";b:0;}', 'yes'),
(192, 'ossdl_off_cdn_url', 'http://wu.josealbea.com', 'yes'),
(193, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(194, 'ossdl_off_exclude', '.php', 'yes'),
(195, 'ossdl_cname', '', 'yes'),
(198, 'acf_version', '4.3.8', 'yes'),
(202, 'qtranslate_next_update_mo', '1399373478', 'yes'),
(205, 'qtranslate_language_names', 'a:17:{s:2:"de";s:7:"Deutsch";s:2:"en";s:7:"English";s:2:"zh";s:6:"中文";s:2:"fi";s:5:"suomi";s:2:"nl";s:10:"Nederlands";s:2:"sv";s:7:"Svenska";s:2:"it";s:8:"Italiano";s:2:"ro";s:8:"Română";s:2:"hu";s:6:"Magyar";s:2:"ja";s:9:"日本語";s:2:"es";s:8:"Español";s:2:"vi";s:14:"Tiếng Việt";s:2:"ar";s:14:"العربية";s:2:"pt";s:10:"Português";s:2:"pl";s:6:"Polski";s:2:"gl";s:6:"galego";s:2:"fr";s:9:"Français";}', 'yes'),
(206, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:"fr";i:1;s:2:"en";}', 'yes'),
(207, 'qtranslate_default_language', 'fr', 'yes'),
(208, 'qtranslate_flag_location', 'plugins/qtranslate/flags/', 'yes'),
(209, 'qtranslate_flags', 'a:16:{s:2:"en";s:6:"gb.png";s:2:"de";s:6:"de.png";s:2:"zh";s:6:"cn.png";s:2:"fi";s:6:"fi.png";s:2:"nl";s:6:"nl.png";s:2:"sv";s:6:"se.png";s:2:"it";s:6:"it.png";s:2:"ro";s:6:"ro.png";s:2:"hu";s:6:"hu.png";s:2:"ja";s:6:"jp.png";s:2:"es";s:6:"es.png";s:2:"vi";s:6:"vn.png";s:2:"ar";s:8:"arle.png";s:2:"pt";s:6:"br.png";s:2:"gl";s:10:"galego.png";s:2:"fr";s:6:"fr.png";}', 'yes'),
(210, 'qtranslate_locales', 'a:17:{s:2:"de";s:5:"de_DE";s:2:"en";s:5:"en_US";s:2:"zh";s:5:"zh_CN";s:2:"fi";s:2:"fi";s:2:"nl";s:5:"nl_NL";s:2:"sv";s:5:"sv_SE";s:2:"it";s:5:"it_IT";s:2:"ro";s:5:"ro_RO";s:2:"hu";s:5:"hu_HU";s:2:"ja";s:2:"ja";s:2:"es";s:5:"es_ES";s:2:"vi";s:2:"vi";s:2:"ar";s:2:"ar";s:2:"pt";s:5:"pt_BR";s:2:"pl";s:5:"pl_PL";s:2:"gl";s:5:"gl_ES";s:2:"fr";s:5:"fr_FR";}', 'yes'),
(211, 'qtranslate_na_messages', 'a:17:{s:2:"de";s:58:"Leider ist der Eintrag nur auf %LANG:, : und % verfügbar.";s:2:"en";s:55:"Sorry, this entry is only available in %LANG:, : and %.";s:2:"zh";s:50:"对不起，此内容只适用于%LANG:，:和%。";s:2:"fi";s:92:"Anteeksi, mutta tämä kirjoitus on saatavana ainoastaan näillä kielillä: %LANG:, : ja %.";s:2:"nl";s:78:"Onze verontschuldigingen, dit bericht is alleen beschikbaar in %LANG:, : en %.";s:2:"sv";s:66:"Tyvärr är denna artikel enbart tillgänglig på %LANG:, : och %.";s:2:"it";s:71:"Ci spiace, ma questo articolo è disponibile soltanto in %LANG:, : e %.";s:2:"ro";s:67:"Din păcate acest articol este disponibil doar în %LANG:, : și %.";s:2:"hu";s:73:"Sajnos ennek a bejegyzésnek csak %LANG:, : és % nyelvű változata van.";s:2:"ja";s:97:"申し訳ありません、このコンテンツはただ今　%LANG:、 :と %　のみです。";s:2:"es";s:68:"Disculpa, pero esta entrada está disponible sólo en %LANG:, : y %.";s:2:"vi";s:63:"Rất tiếc, mục này chỉ tồn tại ở %LANG:, : và %.";s:2:"ar";s:73:"عفوا، هذه المدخلة موجودة فقط في %LANG:, : و %.";s:2:"pt";s:70:"Desculpe-nos, mas este texto esta apenas disponível em %LANG:, : y %.";s:2:"pl";s:68:"Przepraszamy, ten wpis jest dostępny tylko w języku %LANG:, : i %.";s:2:"gl";s:66:"Sentímolo moito, ista entrada atopase unicamente en %LANG;,: e %.";s:2:"fr";s:65:"Désolé, cet article est seulement disponible en %LANG:, : et %.";}', 'yes'),
(212, 'qtranslate_date_formats', 'a:17:{s:2:"en";s:14:"%A %B %e%q, %Y";s:2:"de";s:17:"%A, der %e. %B %Y";s:2:"zh";s:5:"%x %A";s:2:"fi";s:8:"%e.&m.%C";s:2:"nl";s:8:"%d/%m/%y";s:2:"sv";s:8:"%Y/%m/%d";s:2:"it";s:8:"%e %B %Y";s:2:"ro";s:12:"%A, %e %B %Y";s:2:"hu";s:12:"%Y %B %e, %A";s:2:"ja";s:15:"%Y年%m月%d日";s:2:"es";s:14:"%d de %B de %Y";s:2:"vi";s:8:"%d/%m/%Y";s:2:"ar";s:8:"%d/%m/%Y";s:2:"pt";s:14:"%d de %B de %Y";s:2:"pl";s:8:"%d/%m/%y";s:2:"gl";s:14:"%d de %B de %Y";s:2:"fr";s:0:"";}', 'yes'),
(213, 'qtranslate_time_formats', 'a:17:{s:2:"en";s:8:"%I:%M %p";s:2:"de";s:5:"%H:%M";s:2:"zh";s:7:"%I:%M%p";s:2:"fi";s:5:"%H:%M";s:2:"nl";s:5:"%H:%M";s:2:"sv";s:5:"%H:%M";s:2:"it";s:5:"%H:%M";s:2:"ro";s:5:"%H:%M";s:2:"hu";s:5:"%H:%M";s:2:"ja";s:5:"%H:%M";s:2:"es";s:10:"%H:%M hrs.";s:2:"vi";s:5:"%H:%M";s:2:"ar";s:5:"%H:%M";s:2:"pt";s:10:"%H:%M hrs.";s:2:"pl";s:5:"%H:%M";s:2:"gl";s:10:"%H:%M hrs.";s:2:"fr";s:5:"%H:%M";}', 'yes'),
(214, 'qtranslate_ignore_file_types', 'gif,jpg,jpeg,png,pdf,swf,tif,rar,zip,7z,mpg,divx,mpeg,avi,css,js', 'yes'),
(215, 'qtranslate_url_mode', '1', 'yes'),
(216, 'qtranslate_term_name', 'a:6:{s:7:"Musique";a:2:{s:2:"fr";s:7:"Musique";s:2:"en";s:5:"Music";}s:4:"Mode";a:2:{s:2:"fr";s:4:"Mode";s:2:"en";s:4:"Mode";}s:3:"Art";a:2:{s:2:"fr";s:3:"Art";s:2:"en";s:3:"Art";}s:7:"Cinéma";a:2:{s:2:"fr";s:7:"Cinéma";s:2:"en";s:6:"Cinema";}s:4:"Geek";a:2:{s:2:"fr";s:4:"Geek";s:2:"en";s:4:"Geek";}s:5:"Sport";a:2:{s:2:"fr";s:5:"Sport";s:2:"en";s:5:"Sport";}}', 'yes'),
(217, 'qtranslate_use_strftime', '3', 'yes'),
(218, 'qtranslate_detect_browser_language', '1', 'yes'),
(219, 'qtranslate_hide_untranslated', '0', 'yes'),
(220, 'qtranslate_auto_update_mo', '1', 'yes'),
(221, 'qtranslate_hide_default_language', '1', 'yes'),
(222, 'qtranslate_qtranslate_services', '0', 'yes'),
(224, 'current_theme', 'What''s Up Music', 'yes'),
(225, 'theme_mods_dw-fixel', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:8;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397035938;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:17:"dw-single-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"dw-top-1";a:1:{i:0;s:6:"text-2";}s:8:"dw-top-2";a:0:{}s:8:"dw-top-3";a:0:{}s:8:"dw-top-4";a:0:{}}}}', 'yes'),
(226, 'theme_switched', '', 'yes'),
(227, 'dw_theme_options', 'a:11:{s:10:"logo_image";s:60:"http://wu.josealbea.com/wp-content/uploads/2014/04/logo1.png";s:14:"header_display";s:9:"site_logo";s:7:"favicon";s:73:"http://wu.josealbea.com/wp-content/themes/dw-fixel/assets/img/favicon.png";s:16:"background-color";s:0:"";s:16:"page-title-color";s:16:"Page Title Color";s:12:"select-color";s:0:"";s:12:"custom-color";s:0:"";s:12:"heading_font";s:127:"Crimson Text:dw:http://themes.googleusercontent.com/static/fonts/crimsontext/v3/rEy5tGc5HdXy56Xvd4f3I0D2ttfZwueP-QU272T9-k4.ttf";s:9:"body_font";s:0:"";s:11:"header_code";s:0:"";s:11:"footer_code";s:0:"";}', 'yes'),
(237, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(245, 'dw_general_options', 'a:7:{s:13:"facebook_link";s:67:"https://www.facebook.com/pages/Whats-Up-Rock-Family/138037362906184";s:12:"twitter_link";s:0:"";s:14:"instagram_link";s:0:"";s:12:"youtube_link";s:46:"https://www.youtube.com/user/theWhatsUpMusicTV";s:16:"google_plus_link";s:0:"";s:13:"linkedin_link";s:0:"";s:11:"flickr_link";s:0:"";}', 'yes'),
(246, 'dw_archive_page_options', 'a:1:{s:14:"show_more_type";s:6:"button";}', 'yes'),
(260, '_transient_twentyfourteen_category_count', '1', 'yes'),
(261, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397035952;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(262, 'theme_mods_whatsup', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:8:{s:7:"primary";i:8;s:11:"Menu footer";i:0;s:10:"Menufooter";i:0;s:11:"menu_footer";i:0;s:10:"footer_nav";i:0;s:6:"footer";i:0;s:8:"footer_1";i:49;s:8:"footer_2";i:50;}}', 'yes'),
(279, 'wysija_post_type_updated', '1397039143', 'yes'),
(281, 'wysija_post_type_created', '1397039143', 'yes'),
(282, 'installation_step', '16', 'yes'),
(283, 'wysija', 'YToxNzp7czo5OiJmcm9tX25hbWUiO3M6MTY6InlvaGFubi10ZWlzc2VpcmUiO3M6MTI6InJlcGx5dG9fbmFtZSI7czoxNjoieW9oYW5uLXRlaXNzZWlyZSI7czoxNToiZW1haWxzX25vdGlmaWVkIjtzOjI3OiJ5b2hhbm4udGVpc3NlaXJlQGhvdG1haWwuZnIiO3M6MTA6ImZyb21fZW1haWwiO3M6MjE6ImluZm9Ad3Uuam9zZWFsYmVhLmNvbSI7czoxMzoicmVwbHl0b19lbWFpbCI7czoyMToiaW5mb0B3dS5qb3NlYWxiZWEuY29tIjtzOjE1OiJkZWZhdWx0X2xpc3RfaWQiO2k6MTtzOjE3OiJ0b3RhbF9zdWJzY3JpYmVycyI7czoyOiIxMCI7czoxNjoiaW1wb3J0d3BfbGlzdF9pZCI7aToyO3M6MTg6ImNvbmZpcm1fZW1haWxfbGluayI7aTo1NjtzOjEyOiJ1cGxvYWRmb2xkZXIiO3M6NzA6Ii92YXIvd3d3L3Zob3N0cy9zZC00MjQxMS5kZWRpYm94LmZyL3doYXRzdXAvd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS8iO3M6OToidXBsb2FkdXJsIjtzOjUwOiJodHRwOi8vd3Uuam9zZWFsYmVhLmNvbS93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphLyI7czoxNjoiY29uZmlybV9lbWFpbF9pZCI7aToyO3M6OToiaW5zdGFsbGVkIjtiOjE7czoyMDoibWFuYWdlX3N1YnNjcmlwdGlvbnMiO2I6MTtzOjE0OiJpbnN0YWxsZWRfdGltZSI7aToxMzk3MDM5MTQ5O3M6MTc6Ind5c2lqYV9kYl92ZXJzaW9uIjtzOjU6IjIuNi4yIjtzOjExOiJka2ltX2RvbWFpbiI7czoxNjoid3Uuam9zZWFsYmVhLmNvbSI7fQ==', 'yes'),
(285, 'wysija_reinstall', '0', 'no'),
(286, 'wysija_schedules', 'a:5:{s:5:"queue";a:3:{s:13:"next_schedule";i:1402005374;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:6:"bounce";a:3:{s:13:"next_schedule";i:1397125567;s:13:"prev_schedule";i:0;s:7:"running";b:0;}s:5:"daily";a:3:{s:13:"next_schedule";i:1402081991;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:6:"weekly";a:3:{s:13:"next_schedule";i:1402426887;s:13:"prev_schedule";b:0;s:7:"running";b:0;}s:7:"monthly";a:3:{s:13:"next_schedule";i:1404545900;s:13:"prev_schedule";b:0;s:7:"running";b:0;}}', 'yes'),
(288, 'widget_qtranslate', 'a:2:{i:2;a:2:{s:5:"title";s:25:"Sélection de la langue :";s:4:"type";s:4:"text";}s:12:"_multiwidget";i:1;}', 'yes'),
(289, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(290, 'widget_wysija', 'a:2:{i:2;a:2:{s:5:"title";s:16:"Notre newsletter";s:4:"form";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'widget_dw_next_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(296, 'options_slider_0_article', '6', 'no'),
(297, '_options_slider_0_article', 'field_53451bc693b30', 'no'),
(298, 'options_slider_1_article', '47', 'no'),
(299, '_options_slider_1_article', 'field_53451bc693b30', 'no'),
(300, 'options_slider', '4', 'no'),
(301, '_options_slider', 'field_53451b063c7bf', 'no'),
(303, 'wysija_last_php_cron_call', '1402126700', 'yes'),
(304, 'wysija_check_pn', '1402126700.73', 'yes'),
(305, 'wysija_last_scheduled_check', '1402126700', 'yes'),
(410, 'options_slider_2_article', '39', 'no'),
(411, '_options_slider_2_article', 'field_53451bc693b30', 'no'),
(482, 'db_upgraded', '', 'yes'),
(585, 'wpseo_internallinks', 'a:11:{s:20:"breadcrumbs-404crumb";s:30:"Erreur 404 : Page introuvable";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:1;s:25:"breadcrumbs-archiveprefix";s:13:"Archives pour";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:7:"Accueil";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:18:"Vous avez cherché";s:15:"breadcrumbs-sep";s:2:"»";s:23:"post_types-post-maintax";i:0;s:25:"post_types-agenda-maintax";i:0;}', 'yes'),
(680, 'bawpvc_options', 'a:3:{s:4:"time";s:1:"0";s:6:"format";s:23:"Article vu %count% fois";s:10:"post_types";a:1:{i:0;s:4:"post";}}', 'yes'),
(701, 'wp_report_post_placement', '0', 'yes'),
(702, 'wp_report_post_access', '1', 'yes'),
(703, 'wp_report_post_linktext', 'Signaler l\\''article', 'yes'),
(704, 'wp_report_post_icon', '1', 'yes'),
(705, 'wp_report_post_types', '1', 'yes'),
(706, 'wp_report_post_email', '', 'yes'),
(766, 'user_role_editor', 'a:4:{s:17:"ure_caps_readable";s:1:"1";s:24:"ure_show_deprecated_caps";i:0;s:19:"ure_hide_pro_banner";i:0;s:15:"show_admin_role";s:1:"1";}', 'yes'),
(767, 'wp_backup_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:69:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"wysija_newsletters";b:1;s:18:"wysija_subscribers";b:1;s:13:"wysija_config";b:1;s:16:"wysija_theme_tab";b:1;s:16:"wysija_style_tab";b:1;s:22:"wysija_stats_dashboard";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:11:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:6:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'no'),
(783, 'links_recently_updated_prepend', '<em>', 'yes'),
(784, 'links_recently_updated_append', '</em>', 'yes'),
(785, 'links_recently_updated_time', '120', 'yes'),
(787, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:5:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:3;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"3.9";s:7:"version";s:3:"3.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:4;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.8.3.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.8.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.8.3";s:7:"version";s:5:"3.8.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1402126702;s:15:"version_checked";s:5:"3.8.2";s:12:"translations";a:0:{}}', 'yes'),
(788, 'can_compress_scripts', '1', 'yes'),
(829, 'options_slider_3_article', '27', 'no'),
(830, '_options_slider_3_article', 'field_53451bc693b30', 'no'),
(897, 'category_children', 'a:7:{i:3;a:5:{i:0;i:18;i:1;i:19;i:2;i:20;i:3;i:21;i:4;i:22;}i:4;a:3:{i:0;i:23;i:1;i:24;i:2;i:25;}i:5;a:6:{i:0;i:26;i:1;i:27;i:2;i:28;i:3;i:29;i:4;i:30;i:5;i:31;}i:6;a:4:{i:0;i:32;i:1;i:33;i:2;i:34;i:3;i:35;}i:7;a:2:{i:0;i:36;i:1;i:37;}i:11;a:2:{i:0;i:38;i:1;i:39;}i:41;a:4:{i:0;i:43;i:1;i:44;i:2;i:45;i:3;i:46;}}', 'yes'),
(931, 'postratings_image', 'stars', 'yes'),
(932, 'postratings_max', '5', 'yes'),
(933, 'postratings_template_vote', '%RATINGS_IMAGES_VOTE% (<strong>%RATINGS_USERS%</strong> notes, moyenne: <strong>%RATINGS_AVERAGE%</strong> sur %RATINGS_MAX%)<br />%RATINGS_TEXT%', 'yes'),
(934, 'postratings_template_text', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> notes, moyenne: <strong>%RATINGS_AVERAGE%</strong> sur %RATINGS_MAX%, <strong>déja voté</strong></em>)', 'yes'),
(935, 'postratings_template_none', '%RATINGS_IMAGES_VOTE% (%RATINGS_USERS%)<br />%RATINGS_TEXT%', 'yes'),
(936, 'postratings_logging_method', '3', 'yes'),
(937, 'postratings_allowtorate', '2', 'yes'),
(938, 'postratings_ratingstext', 'a:5:{i:0;s:3:"1/5";i:1;s:3:"2/5";i:2;s:3:"3/5";i:3;s:3:"4/5";i:4;s:3:"5/5";}', 'yes'),
(939, 'postratings_template_highestrated', '<li><a href=\\"%POST_URL%\\" title=\\"%POST_TITLE%\\">%POST_TITLE%</a> %RATINGS_IMAGES% (%RATINGS_AVERAGE% sur %RATINGS_MAX%)</li>', 'yes'),
(940, 'postratings_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(941, 'postratings_ratingsvalue', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}', 'yes'),
(942, 'postratings_customrating', '0', 'yes'),
(943, 'postratings_template_permission', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> notes, moyenne: <strong>%RATINGS_AVERAGE%</strong> sur %RATINGS_MAX%</em>)<br /><em>Vous devez être connecté pour pouvoir noter un article.</em>', 'yes'),
(944, 'postratings_template_mostrated', '<li><a href=\\"%POST_URL%\\"  title=\\"%POST_TITLE%\\">%POST_TITLE%</a> - %RATINGS_USERS% notes</li>', 'yes'),
(946, 'postratings_options', 'a:1:{s:11:"richsnippet";i:1;}', 'yes'),
(948, '_site_transient_timeout_browser_a64afbf86ac7a1ef023e4b1e1f62f178', '1400587729', 'yes'),
(949, '_site_transient_browser_a64afbf86ac7a1ef023e4b1e1f62f178', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"34.0.1847.131";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(974, 'wti_like_post_drop_settings_table', '0', 'yes'),
(975, 'wti_like_post_voting_period', 'once', 'yes'),
(976, 'wti_like_post_voting_style', 'style1', 'yes'),
(977, 'wti_like_post_alignment', 'left', 'yes'),
(978, 'wti_like_post_position', 'top', 'yes'),
(979, 'wti_like_post_login_required', '1', 'yes'),
(980, 'wti_like_post_login_message', 'Connectez vous pour voter', 'yes'),
(981, 'wti_like_post_thank_message', 'Merci d''avoir voté', 'yes'),
(982, 'wti_like_post_voted_message', 'Vous avez déjà voté', 'yes'),
(983, 'wti_like_post_allowed_posts', '', 'yes'),
(984, 'wti_like_post_excluded_posts', '', 'yes'),
(985, 'wti_like_post_excluded_categories', '', 'yes'),
(986, 'wti_like_post_excluded_sections', '', 'yes'),
(987, 'wti_like_post_show_on_pages', '0', 'yes'),
(988, 'wti_like_post_show_on_widget', '1', 'yes'),
(989, 'wti_like_post_show_symbols', '1', 'yes'),
(990, 'wti_like_post_show_dislike', '0', 'yes'),
(991, 'wti_like_post_title_text', 'Like/Unlike', 'yes'),
(992, 'wti_like_post_db_version', '1.4.2', 'yes'),
(1096, '_site_transient_timeout_browser_a80ec4a57735c042236dd683b74b8b1d', '1401777278', 'yes'),
(1097, '_site_transient_browser_a80ec4a57735c042236dd683b74b8b1d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"29.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1123, 'fbc_remove_nofollow_option', 'true', 'yes'),
(1124, 'fbc_app_key_option', '299701443527756', 'yes'),
(1125, 'fbc_app_secret_option', 'af4914bdba6773819973ca3254283379', 'yes'),
(1126, 'fbc_last_updated_cache_option', '1401184107', 'yes'),
(1150, '_transient_timeout_plugin_slugs', '1401442362', 'no'),
(1151, '_transient_plugin_slugs', 'a:16:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:37:"acf-options-page/acf-options-page.php";i:2;s:33:"acf-qtranslate/acf-qtranslate.php";i:3;s:29:"acf-repeater/acf-repeater.php";i:4;s:30:"baw-post-views-count/bawpv.php";i:5;s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";i:6;s:28:"wysija-newsletters/index.php";i:7;s:53:"nextend-facebook-connect/nextend-facebook-connect.php";i:8;s:51:"nextend-twitter-connect/nextend-twitter-connect.php";i:9;s:25:"qtranslate/qtranslate.php";i:10;s:37:"user-role-editor/user-role-editor.php";i:11;s:24:"wordpress-seo/wp-seo.php";i:12;s:36:"wp-frontend-form/wp-guest-poster.php";i:13;s:33:"wp-report-post/wp-report-post.php";i:14;s:27:"wp-super-cache/wp-cache.php";i:15;s:31:"wti-like-post/wti_like_post.php";}', 'no'),
(1157, 'nextend_fb_connect', 's:795:"a:11:{s:20:"newfb_update_options";s:1:"Y";s:8:"fb_appid";s:15:"299701443527756";s:9:"fb_secret";s:32:"af4914bdba6773819973ca3254283379";s:14:"fb_user_prefix";s:3:"fb-";s:11:"fb_redirect";s:4:"auto";s:15:"fb_redirect_reg";s:4:"auto";s:13:"fb_load_style";s:1:"1";s:15:"fb_login_button";s:133:"<div class="new-fb-btn new-fb-1 new-fb-default-anim"><div class="new-fb-1-1"><div class="new-fb-1-1-1">CONNECT WITH</div></div></div>";s:14:"fb_link_button";s:136:"<div class="new-fb-btn new-fb-1 new-fb-default-anim"><div class="new-fb-1-1"><div class="new-fb-1-1-1">LINK ACCOUNT TO</div></div></div>";s:16:"fb_unlink_button";s:135:"<div class="new-fb-btn new-fb-1 new-fb-default-anim"><div class="new-fb-1-1"><div class="new-fb-1-1-1">UNLINK ACCOUNT</div></div></div>";s:6:"Submit";s:12:"Save Changes";}";', 'yes'),
(1158, '_site_transient_timeout_n_nextend5385eced77cf65.87230807', '1401289469', 'yes'),
(1159, '_site_transient_n_nextend5385eced77cf65.87230807', '1', 'yes'),
(1160, '_site_transient_timeout_nextend5385eced77cf65.87230807_fb_user_i', '1401289469', 'yes'),
(1161, '_site_transient_nextend5385eced77cf65.87230807_fb_user_id', '10152415453673328', 'yes'),
(1162, '_site_transient_timeout_nextend5385eced77cf65.87230807_fb_code', '1401289470', 'yes'),
(1163, '_site_transient_nextend5385eced77cf65.87230807_fb_code', 'AQCrsTugRDvXCATvo2fhO2YozJ4mSbMXKQxBrvvUVoZJTTsSI06g7nOavum4rH-x4eef8q8HMGvygzz820nRbAXzJqkHGjMbUMviWvBCX1C_Q6kY2XL5a4xkaojSTyC511e7zuqdsK1nPaNBCEVWCDb-y7k42dZxEf9FzTu6AAswF07wKhhZ-Z6irOlmtKwU0XR1-ueOjeWjvmSj57EXN5PG2TmrXJ6vjOatvpoTbdcwb3rudLhzE32kV7QXCAbqHOZAdFTegbjb94wagGOsMrtHDNedtay3CYYTvMZhUnKOZMzsnl7eiQaIb4SP4yXIvew', 'yes'),
(1164, '_site_transient_timeout_nextend5385eced77cf65.87230807_fb_access', '1401289470', 'yes'),
(1165, '_site_transient_nextend5385eced77cf65.87230807_fb_access_token', 'CAAEQk64UhEwBAPbyEklotETCaOghS8KUu1ZCqf73GffEaH3mG4QEM9FqZBvZCYb9TICZAn9h6ALewbGzX1ZCxQCnHfuNuEAqPj89ATNnmEuOWqqP31Wwohf0P8ILO1iQmad6rFGpxmosi62ZB5xsqXAPMVdPoHEIRVltBGzJ2soBxLBZBXZBncEbieLwx6nJmOf8modlKnoVpAZDZD', 'yes'),
(1166, '_site_transient_timeout_n_nextend5385ed5b8186c8.42471642', '1401289579', 'yes'),
(1167, '_site_transient_n_nextend5385ed5b8186c8.42471642', '1', 'yes'),
(1172, '_site_transient_timeout_nextend5385ed5b8186c8.42471642_fb_code', '1401289590', 'yes'),
(1173, '_site_transient_nextend5385ed5b8186c8.42471642_fb_code', 'AQB0OqEeXNnBSoO2TSkNDa2Iz3vyKBGBJ1Yki4kc8Uwu9R5WGyRrojSr9J2HbGFx7mrbQsVdIFCMbfu8iAiN1krH8fedMuBQuMdQnEAY2jdy_L9KHMG9j1poGsVOwkUKSHEQt49qTR1IGcgNijtD3lOj3za4Bl9Dv_654Q7-VUzaR1PAFWDTmOfBtK-eFlaWSiNviFh-vEtVxpPxATe76qS7Z_PX4jNz4ri1D9P6KWM-uQHJF8TFMEIDVSVWrGASgRfeiB90D15aA-ggzVpFmftXVHw4bk0gJs574uSPTCs4Dosj9p8EMuPYkTdcOCwCEy0', 'yes'),
(1174, '_site_transient_timeout_nextend5385ed5b8186c8.42471642_fb_access', '1401289590', 'yes'),
(1175, '_site_transient_nextend5385ed5b8186c8.42471642_fb_access_token', 'CAAEQk64UhEwBAKlJLdeMa2WvaF69BThZBZC1q34hRiEU5Hm6ZAgMZArhors6zzeeVzgHoIopJ7I4rg6ZB22TgiD4RzVZBZBbOZBnYzFbm3cka2NwV7fSD6brxRwkYwoGXvB6soEh6adTsJAXEGLlYIhPDniERcUCgrQ2lTovLapAeT0qRsSDz1uz', 'yes'),
(1176, '_site_transient_timeout_nextend5385ed5b8186c8.42471642_fb_user_i', '1401289590', 'yes'),
(1177, '_site_transient_nextend5385ed5b8186c8.42471642_fb_user_id', '10152415453673328', 'yes'),
(1178, '_site_transient_timeout_browser_cb03b8b2180710a944792958eff84f1d', '1401891137', 'yes'),
(1179, '_site_transient_browser_cb03b8b2180710a944792958eff84f1d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"35.0.1916.114";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1181, '_site_transient_timeout_n_nextend5385f0cc1debb3.64746352', '1401290460', 'yes'),
(1182, '_site_transient_n_nextend5385f0cc1debb3.64746352', '1', 'yes'),
(1189, '_site_transient_timeout_nextend5385f0cc1debb3.64746352_fb_access', '1401290555', 'yes'),
(1191, '_site_transient_timeout_nextend5385f0cc1debb3.64746352_fb_user_i', '1401290556', 'yes'),
(1197, '_site_transient_timeout_nextend5385f0cc1debb3.64746352_fb_code', '1401290555', 'yes'),
(1198, '_site_transient_nextend5385f0cc1debb3.64746352_fb_code', 'AQATjLNnMvGtyqnjsDBTBsE-5yT--PwClrB3doG7byPdjfDyeqwMxxuUHcnC_aHExrAdbQLOJ9ukiZI7wyQsk_1nUBc5ZsZsKWKmFnjxY4mesSS0UefAY4I-nRyv7jveQ7LQ4dS3AULHq741rBNHrP_tqjp4qdyqGiZrRUh2nD11ndASD1B-jS4uffYDUYLvFpHRnjmTpx-7s1YQkqLmp01lXWbvo32RfWQLplU--bSKXyZVFYhULQbn8M_DBZelDyoQ860pET6HOPmPmLkQJGy671bHqg_mtY1mu208BfNehTeo47JhNIpTlDcNAMzz1u4', 'yes'),
(1200, '_site_transient_nextend5385f0cc1debb3.64746352_fb_access_token', 'CAAEQk64UhEwBAAItZAM0ZCx2UyO22DfYZCKYZBZCxlZAk9o7Ot7fF5ToH6RuFzeGrjK8bNSJBn4NsA55OPfuvYUTqXzi3ZAP7ZAHQ4d0ZBcDYXxRPsOUdr6Ks4kqSjjCJga6nfWZBhjpQZC01e7ojLTu3PVusMX245YZB5gLyDbA79oWjnlyHeuwK7Ykw4vDqdFy2kUZD', 'yes'),
(1202, '_site_transient_nextend5385f0cc1debb3.64746352_fb_user_id', '10152415453673328', 'yes'),
(1209, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1401366602', 'yes'),
(1210, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3898";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2456";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2344";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1930";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1856";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1583";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1329";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1325";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1310";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1260";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1225";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1121";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1000";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"982";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"974";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"950";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"844";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"821";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"780";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"722";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"686";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"681";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"678";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"623";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"615";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"595";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"572";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"570";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"541";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"539";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"530";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"522";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"506";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"505";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"471";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"458";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"453";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"452";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"436";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"432";}}', 'yes'),
(1211, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1402126705;s:8:"response";a:2:{s:37:"user-role-editor/user-role-editor.php";O:8:"stdClass":6:{s:2:"id";s:5:"13697";s:4:"slug";s:16:"user-role-editor";s:6:"plugin";s:37:"user-role-editor/user-role-editor.php";s:11:"new_version";s:4:"4.14";s:3:"url";s:47:"https://wordpress.org/plugins/user-role-editor/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/user-role-editor.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:7:"1.5.3.3";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/wordpress-seo.1.5.3.3.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(1212, 'nextend_twitter_connect', 's:974:"a:11:{s:25:"newtwitter_update_options";s:1:"Y";s:20:"twitter_consumer_key";s:25:"zVgqh9L1o6KEPqsagsNPt4HtX";s:23:"twitter_consumer_secret";s:50:"JE2BQerR6Ds3tG5HWSIJVBxVBoCLGSpJjxovPwzStiX0aD4ly0";s:19:"twitter_user_prefix";s:10:"twitter - ";s:16:"twitter_redirect";s:4:"auto";s:20:"twitter_redirect_reg";s:4:"auto";s:18:"twitter_load_style";s:1:"1";s:20:"twitter_login_button";s:158:"<div class="new-twitter-btn new-twitter-1 new-twitter-default-anim"><div class="new-twitter-1-1"><div class="new-twitter-1-1-1">CONNECT WITH</div></div></div>";s:19:"twitter_link_button";s:161:"<div class="new-twitter-btn new-twitter-1 new-twitter-default-anim"><div class="new-twitter-1-1"><div class="new-twitter-1-1-1">LINK ACCOUNT TO</div></div></div>";s:21:"twitter_unlink_button";s:160:"<div class="new-twitter-btn new-twitter-1 new-twitter-default-anim"><div class="new-twitter-1-1"><div class="new-twitter-1-1-1">UNLINK ACCOUNT</div></div></div>";s:6:"Submit";s:12:"Save Changes";}";', 'yes'),
(1213, '_site_transient_timeout_n_nextend538701ccb940b5.27606399', '1401360348', 'yes'),
(1214, '_site_transient_n_nextend538701ccb940b5.27606399', '1', 'yes'),
(1219, '_site_transient_timeout_nextend538701ccb940b5.27606399_twitter_a', '1401360657', 'yes'),
(1220, '_site_transient_nextend538701ccb940b5.27606399_twitter_at', 'a:4:{s:11:"oauth_token";s:50:"2282531059-FVtHEemwYjveKvBNKfHsP449ZRdsYnIetBAMuy4";s:18:"oauth_token_secret";s:45:"g8l5WHL7s8KHxKOUw6k63IY9IUAPDoj8ggrZCjOTlBpab";s:7:"user_id";s:10:"2282531059";s:11:"screen_name";s:14:"kokolitolithe8";}', 'yes'),
(1223, '_site_transient_timeout_n_nextend53871ed30628c2.81804424', '1401367779', 'yes'),
(1224, '_site_transient_n_nextend53871ed30628c2.81804424', '1', 'yes'),
(1229, '_site_transient_timeout_nextend53871ed30628c2.81804424_twitter_a', '1401367821', 'yes'),
(1230, '_site_transient_nextend53871ed30628c2.81804424_twitter_at', 'a:4:{s:11:"oauth_token";s:50:"2282531059-ZrD7ThCOe8fYXctfUJoDBozT0ar2yYDBsrxWtc8";s:18:"oauth_token_secret";s:45:"VcSEDaleNpLUuirkpcfEn6GD3epaFt8NqxL44PvGC35YE";s:7:"user_id";s:10:"2282531059";s:11:"screen_name";s:14:"kokolitolithe8";}', 'yes'),
(1231, '_site_transient_timeout_n_nextend5387256051b3f1.62037067', '1401369456', 'yes'),
(1232, '_site_transient_n_nextend5387256051b3f1.62037067', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1239, '_site_transient_timeout_nextend5387256051b3f1.62037067_twitter_a', '1401369586', 'yes'),
(1240, '_site_transient_nextend5387256051b3f1.62037067_twitter_at', 'a:4:{s:11:"oauth_token";s:50:"2282531059-ZerCIKWfU4hV4KGsJglZ8jhxkUeTLJuuCzxHIXd";s:18:"oauth_token_secret";s:45:"2B8j8hfKYxKvavZhdj7eHvQVJUAXUcOTEQEI09eBR5azH";s:7:"user_id";s:10:"2282531059";s:11:"screen_name";s:14:"kokolitolithe8";}', 'yes'),
(1244, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1401411732', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1245, '_transient_feed_66a70e9599b658d5cc038e8074597e7c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:51:"\n	\n	\n	\n	\n	\n	\n		\n		\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:27:"http://www.wordpress-fr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:70:"La communauté francophone autour du CMS WordPress et son écosystème";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 May 2014 06:26:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:27:"http://wordpress.org/?v=3.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:57:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"L’Hebdo WordPress n°230 : WordPress 4.0 – Jetpack 3.0 – WPTech 2014";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/P6DmqnLdfQ4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:108:"http://www.wordpress-fr.net/2014/05/27/lhebdo-wordpress-n230-wordpress-4-0-jetpack-3-0-wptech-2014/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 27 May 2014 05:23:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:6:{i:0;a:5:{s:4:"data";s:14:"Développement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:7:"Jetpack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7067";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:423:"WordPress 4.0 Déjà quelques précisions concernant l&#8217;internationalisation dans WordPress 4.0 (en). Jetpack 3.0 Jetpack passe en version 3.0 et se relooke en partie. WPTech 2014 WPTech est la première édition d&#8217;une manifestation consacrée à WordPress, mais uniquement du côté technique du sujet. L&#8217;idée vient d&#8217;une partie de la communauté nantaise. Bravo à elle&#8230;. et déjà [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3752:"<h3>WordPress 4.0</h3>\n<p>Déjà quelques précisions concernant l&rsquo;<a href="http://make.wordpress.org/core/2014/05/21/internationalization-goals-for-4-0/">internationalisation dans WordPress 4.0</a> (en).</p>\n<h3>Jetpack 3.0</h3>\n<p><a href="http://jetpack.me/2014/05/20/jetpack-3-0/">Jetpack passe en version 3.0</a> et se relooke en partie.</p>\n<h3>WPTech 2014</h3>\n<p><a href="http://2014.wptech.fr/">WPTech</a> est la première édition d&rsquo;une manifestation consacrée à WordPress, mais uniquement du côté technique du sujet. L&rsquo;idée vient d&rsquo;une partie de la communauté nantaise. Bravo à elle&#8230;. et déjà <a href="http://www.cree1site.com/wp-tech-rendez-wordpress-100-technique/">on en parle sur le web</a>.</p>\n<h3>Les meetups franciliens se &laquo;&nbsp;veryfrenchtripise&nbsp;&raquo;</h3>\n<p>Organisés par une bonne partie de la Very French Trip team <a href="http://veryfrenchtrip-wp.eu/meetup-wordpress-23-mai-14-paris/">les meetups franciliens cherchent à évoluer</a>.</p>\n<h3>Un superhéros WordPress, c&rsquo;est quoi ?</h3>\n<p><a href="http://www.wppourlesnuls.com/comment-devenir-un-super-heros-wordpress-infographie/">La réponse en infographie</a>.</p>\n<h3>Interview de Rodrigue Fénard</h3>\n<p><a href="http://lesdoigtsdanslenet.com/rodrigue-fenard-specialiste-wordpress/">Rodrigue </a>est interviewé par les Doigts dans le Net.</p>\n<h3>Utiliser les &laquo;&nbsp;social meta tags&nbsp;&raquo; de WordPress</h3>\n<p>Pour en savoir plus sur les social meta tags, un conseil,<a href="http://www.wpexplorer.com/setup-open-graph-twitter-cards-wordpress/"> lisez cet article </a>(en).</p>\n<h3>Le VFT Podcast n°1</h3>\n<p><a href="http://veryfrenchtrip-wp.eu/podcast-1/">Un nouveau podcast est toujours un événement </a>mais quand il est français et réalisé par une bande de joyeux lurons comme la VFT team alors on y va les yeux fermés (ça tombe bien, y a pas d&rsquo;images !)<br />\n<em><strong>Ajout :</strong></em> Pour suivre le podcast, abonnez-vous via ce flux : <a href="http://veryfrenchtrip-wp.eu/flux/podcast/feed/">http://veryfrenchtrip-wp.eu/flux/podcast/feed/</a></p>\n<h3>Google dans son site WordPress</h3>\n<p>Pour intégrer les<a href="http://premium.wpmudev.org/blog/wordpress-google-plugins/"> outils de Google dans votre site</a> (en), voici quelques idées.</p>\n<h3>Du support client embarqué</h3>\n<p>Avec <a href="http://issuepress.co/">IssuePress (en)</a>, il devient possible d&rsquo;embarquer son propre service client dans son interface d&rsquo;administrateur.</p>\n<h3>Une page de connexion personnalisée</h3>\n<p>Créer une page de connexion personnalisée est possible&#8230; <a href="http://premium.wpmudev.org/blog/create-a-custom-wordpress-login-page/">voici la méthode</a> (en).</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=P6DmqnLdfQ4:iglnLHqLHyo:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=P6DmqnLdfQ4:iglnLHqLHyo:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/P6DmqnLdfQ4" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:104:"http://www.wordpress-fr.net/2014/05/27/lhebdo-wordpress-n230-wordpress-4-0-jetpack-3-0-wptech-2014/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:99:"http://www.wordpress-fr.net/2014/05/27/lhebdo-wordpress-n230-wordpress-4-0-jetpack-3-0-wptech-2014/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"L’Hebdo WordPress n°229 : Communautés – Extensions – Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5ZwQnV00lFY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:101:"http://www.wordpress-fr.net/2014/05/20/lhebdo-wordpress-n229-communautes-extensions-astuces/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 May 2014 05:23:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:7:"Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7039";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:339:"Les Communautés Bordeaux WordPress&#8217;Camp #10 Pour la 10e édition de cette réunion bordelaise, il sera question de sécurité et de maintenance. Elle aura lieu le 12 juin à 18 H 30. Meetup à Lyon Dès ce jeudi 22 mai, Lyon propose un meetup autour de WordPress et de l&#8217;extension ACF. Meetup à Paris La communauté [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3399:"<h2>Les Communautés</h2>\n<h3>Bordeaux WordPress&rsquo;Camp #10</h3>\n<p>Pour la 10e édition de cette réunion bordelaise, il sera question <a href="https://www.facebook.com/events/1485744844988525/">de sécurité et de maintenance</a>. Elle aura lieu le 12 juin à 18 H 30.</p>\n<h3>Meetup à Lyon</h3>\n<p>Dès ce jeudi 22 mai, Lyon propose un <a href="http://www.meetup.com/WordPress-Lyon-Meetup/">meetup autour de WordPress et de l&rsquo;extension ACF</a>.</p>\n<h3>Meetup à Paris</h3>\n<p>La <a href="http://www.meetup.com/wordpress-ile-de-france/">communauté parisienne se réunie le vendredi 23 mai </a>autour d&rsquo;un verre.</p>\n<h3>Meetup WordPress in Alps</h3>\n<p>La <a href="http://www.wpinalps.com/#prochaine-rencontre">communauté alpine se retrouvera le 10 juin</a>, à l&rsquo;initiative de l&rsquo;association WordPress in Alps. La réunion est prévue à Grenoble.</p>\n<h3>Faire du CRM avec WordPress</h3>\n<p>Si vous souhaitez vous lancer dans le <a href="https://kinsta.com/blog/crm-wordpress-plugins/">CRM avec WordPress</a> (en), ces extensions et conseils vous seront utiles.</p>\n<h3>Font Awsome intègre WordPress</h3>\n<p>La police de caractère <a href="http://fontawesome.io/whats-new/">Font Awsome vient d&rsquo;intégrer une icône de WordPress</a> (en) dans sa nouvelle mise à jour.</p>\n<h3>4 optimisations simples pour booster le SEO</h3>\n<p>Lumière de Lune explique comment, <a href="http://www.lumieredelune.com/encrelune/optimisations-theme-wordpress,2014,05">en 4 points, on peut optimiser un site pour le SEO.</a></p>\n<h3>Une favicon bien faite</h3>\n<p>WPChannel montre comment <a href="http://wpchannel.com/favicon-by-realfavicongenerator-icone-wordpress/">faire une favicon</a> digne de ce nom pour votre site sous WordPress.</p>\n<h3>Construire un job-board</h3>\n<p>WordPress peut désormais se transformer en un véritable job board grâce à cette extension : <a href="http://www.poststat.us/building-new-wp-job-manager-website/">WP Job Manager</a>.</p>\n<h3>Une communauté de traducteurs</h3>\n<p>WordPress étant international, il est logique de voir apparaitre une <a href="http://wp-translations.org/lets-create-community-together/">communauté de traducteurs</a> (en).</p>\n<h3>Bien choisir un hébergement</h3>\n<p>Quelques <a href="http://wpformation.com/choisir-hebergement-wordpress">conseils de Fabrice</a> pour choisir son hébergement pour WordPress.</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5ZwQnV00lFY:YXr4PUWFirU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5ZwQnV00lFY:YXr4PUWFirU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5ZwQnV00lFY" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:97:"http://www.wordpress-fr.net/2014/05/20/lhebdo-wordpress-n229-communautes-extensions-astuces/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:92:"http://www.wordpress-fr.net/2014/05/20/lhebdo-wordpress-n229-communautes-extensions-astuces/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:57:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"L’Hebdo WordPress n°228 : Android – BuddyPress – Scrap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/wpCN_XlMPRo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:95:"http://www.wordpress-fr.net/2014/05/13/lhebdo-wordpress-n228-android-buddypress-scrap/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 May 2014 05:49:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:6:{i:0;a:5:{s:4:"data";s:7:"Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:10:"Extensions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"android";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7031";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:364:"WordPress pour Android 2.8 L&#8217;application WordPress pour Android arrive en version 2.8 (en). A noter que la mise à jour 2.8.1 est sortie. BuddyPress 2.0.1 La première mise à jour mineur de BuddyPress 2.0 (en) est arrivée. Les fichiers attachés dans BuddyPress iMath présente les fichiers attachés  (en) dans BuddyPress. Revenons sur 5 ans de [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7358:"<h3>WordPress pour Android 2.8</h3>\n<p>L&rsquo;application <a href="https://android.wordpress.org/2014/05/01/wordpress-for-android-2-8/">WordPress pour Android</a> arrive en version 2.8 (en). A noter que la <a href="https://play.google.com/store/apps/details?id=org.wordpress.android">mise à jour 2.8.1</a> est sortie.</p>\n<h3>BuddyPress 2.0.1</h3>\n<p>La <a href="http://buddypress.org/2014/05/buddypress-2-0-1/">première mise à jour mineur de BuddyPress 2.0</a> (en) est arrivée.</p>\n<h3>Les fichiers attachés dans BuddyPress</h3>\n<p>iMath présente les <a href="https://bpdevel.wordpress.com/2014/05/08/attachments-in-buddypress/">fichiers attachés  </a>(en) dans BuddyPress.</p>\n<h3>Revenons sur 5 ans de BuddyPress</h3>\n<p>L&rsquo;<a href="http://teleogistic.net/2014/05/five-years-of-buddypress/">histoire de BuddyPress depuis 5 ans</a> (en).</p>\n<h3>Alerte au scrap sur les sites WordPress</h3>\n<p>Cette semaine de très nombreux sites utilisant WordPress se sont fait &laquo;&nbsp;scrapper&nbsp;&raquo;. <a href="http://wpformation.com/scrapping-masse-sites-wordpress/">Explications par Fabrice</a>.</p>\n<h3>Plus de 25 extensions à avoir en 2014</h3>\n<p>Voici une sélection des<a href="http://premium.wpmudev.org/blog/25-must-have-wordpress-plugins-for-2014/"> 25 extensions</a> (en) à ne pas rater en 2014.</p>\n<h3>Une extension qui fait vos badges de WordCamp</h3>\n<p>En marge du WordCamp de Miami, un passionné a réalisé une extension qui permet de créer <a href="http://wptavern.com/would-anyone-be-interested-in-a-wordcamp-badges-plugin">son propre badge du WordCamp Miami (en)</a>. Il réfléchi à la possibilité de faire en sorte de généraliser l&rsquo;extension pour n&rsquo;mporte quel WordCamp.</p>\n<h3>Découvrez BuddyPress</h3>\n<p><a href="http://wpchannel.com/re-decouvres-buddypress/">Si vous ne connaissez pas encore BuddyPress</a>, Mathieu vous explique tout sur WPChannel.</p>\n<h3>Une interview de Daniel Roch</h3>\n<p>Si comme moi vous aviez raté <a href="https://www.youtube.com/watch?v=_y9YXhAVec0">cette interview de Daniel Roch</a>, c&rsquo;est le moment de vous rattraper.</p>\n<h3>WP-Rocket s&rsquo;internationalise</h3>\n<p>L&rsquo;extension WP Rocket devient internationale, <a href="http://wptavern.com/wp-rocket-launches-commercial-caching-plugin-for-wordpress">WPTavern s&rsquo;en fait l&rsquo;écho</a> (en).</p>\n<h3>L&rsquo;API de TinyMCE</h3>\n<p>La version de 3.9 intègre beaucoup de nouveautés et notamment dans TinyMCE. Son intégration dans le core de WordPress apporte une nouvelle API&#8230;<a href="http://www.wpexplorer.com/wordpress-tinymce-tweaks/"> autorisant de nombreuses possibilités</a> (en). Et voici un <a href="http://www.tweetpress.fr/faqs/comment-ajouter-icone-bouton-tinymce-wordpress-3-9/">exemple de ce qu&rsquo;on peut faire</a>.</p>\n<h3>Les jetons de sécurité</h3>\n<p>Julio présente la question des <a href="http://boiteaweb.fr/jetons-securite-petit-plus-dont-vous-avez-besoin-8070.html">jetons de sécurité</a> et l&rsquo;applique à WordPress.</p>\n<h3>L&rsquo;effet FancyBox et WordPress</h3>\n<p>WPChannel explique <a href="http://wpchannel.com/fancybox-wordpress-galerie-image/">comment utiliser FancyBox sur un site WordPress</a>.</p>\n<h3>Organiser les types de contenus et les librairies</h3>\n<p>Voici <a href="http://tommcfarlin.com/organizing-wordpress-content-types-libraries/">une solution présentée</a> par Tom McFarlin (en).</p>\n<h3>Automattic lève 160 millions de dollars</h3>\n<p>Matt annonce qu&rsquo;Automattic<a href="http://ma.tt/2014/05/new-funding-for-automattic/"> lève 160 millions de dollars (en)</a>&#8230; et explique les <a href="http://techcrunch.com/2014/05/07/automattic-ceo-matt-mullenweg-talks-funding-investing-and-the-future-of-wordpress/">investissements et l&rsquo;avenir de WordPress</a> (en).</p>\n<h3>Protéger son wp-config</h3>\n<p>Si vous souhaitez protéger votre fichier wp-config.php via le fichier .htaccess<a href="http://wp-snippets.com/protect-wp-config-php-with-htaccess/"> voici comment procéder (en).</a></p>\n<h3>Une table ronde sur les hébergeurs de WordPress</h3>\n<p><a href="http://wpbacon.com/podcast/wordpress-hosting-panel/">WPBacon </a>a organisé une <a href="http://wptavern.com/highlights-of-the-wpbacon-wordpress-webhosting-roundtable">table ronde pour parler hébergements</a>. (en)</p>\n<h3>Matt Mullenweg est un homme dangereux</h3>\n<p>C&rsquo;est le titre accrocheur de cet article pour montrer la &laquo;&nbsp;peur&nbsp;&raquo; du gouvernement américain envers l&rsquo;open source en général et WordPress en particulier. <a href="http://joeflood.com/2014/05/07/matt/">Angle de vue décalé  </a>(en) pour montrer le ridicule d&rsquo;une situation loin d&rsquo;être erronée.</p>\n<h3>Création d&rsquo;une page de maintenance personnalisée</h3>\n<p>La page de maintenance par défaut de WordPress est triste à souhait ! <a href="http://www.gregoirenoyelle.com/wordpress-creation-page-maintenance-personnalisee/">Personnalisez-la grâce à Grégoire</a>.</p>\n<h3>WordPress n&rsquo;est pas un CMS</h3>\n<p>Mmmmhhh, <a href="http://www.screenfeed.fr/blog/wordpress-pas-cms-02223/">encore de la polémique dans l&rsquo;air</a>&#8230; mais là, l&rsquo;offensive est argumentée&#8230;</p>\n<h3>Évolution du nombre d&rsquo;extensions</h3>\n<p>Julio constate l&rsquo;<a href="http://boiteaweb.fr/combien-plugins-wordpress-8075.html">évolution du nombre d’extensions dans le répertoire officiel</a>.</p>\n<h3>Des séries d&rsquo;articles en liste déroulante</h3>\n<p>C&rsquo;est l&rsquo;extension <a href="http://www.echodesplugins.li-an.fr/plugins/wp-post-series/">WP Post Series</a> qui le permet.</p>\n<h3>60 thèmes typés business pour 2014</h3>\n<p>WPMUDEV présente une liste de <a href="http://premium.wpmudev.org/blog/free-responsive-wordpress-business-themes/">60 thèmes gratuits</a> (en) typés business et sortis en 2014.</p>\n<h3>Une extension peut disparaitre du répertoire officiel ?</h3>\n<p>Marie-Aude explique les raisons de la <a href="http://www.lumieredelune.com/encrelune/disparition-plugin,2014,05">disparition d&rsquo;une extension du répertoire officiel </a>et les conséquences à en tirer.</p>\n<h3>Levé de rideau sur les nouveaux thèmes ElegantThemes</h3>\n<p>Rodrigue présente ce que va être l<a href="http://www.cree1site.com/eleganttheme-2/">&lsquo;avenir des thèmes ElegantThemes</a>.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=wpCN_XlMPRo:xJLuWzsYzXw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=wpCN_XlMPRo:xJLuWzsYzXw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/wpCN_XlMPRo" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:91:"http://www.wordpress-fr.net/2014/05/13/lhebdo-wordpress-n228-android-buddypress-scrap/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"14";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:86:"http://www.wordpress-fr.net/2014/05/13/lhebdo-wordpress-n228-android-buddypress-scrap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"WordPress 3.9.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KpsKznAONCY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"http://www.wordpress-fr.net/2014/05/09/wordpress-3-9-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 May 2014 16:36:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:14:"Développement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:13:"wordpress 3.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7020";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:379:"Trois semaines après le lancement de WordPress 3.9, et avec plus de 9 millions de téléchargements à son actif, nous sommes heureux de vous annoncer que WordPress 3.9.1 est disponible. Cette version de maintenance corrige 34 bugs présents dans la 3.9, parmi lesquels de nombreuses corrections concernant les réseaux multisites, la personnalisation des widgets lors [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4816:"<p>Trois semaines après le lancement de <a title="Sortie de WordPress 3.9" href="http://www.wordpress-fr.net/2014/04/17/sortie-de-wordpress-3-9/">WordPress 3.9</a>, et avec plus de 9 millions de téléchargements à son actif, nous sommes heureux de vous annoncer que WordPress 3.9.1 est disponible.</p>\n<p>Cette version de maintenance corrige 34 bugs présents dans la 3.9, parmi lesquels de nombreuses corrections concernant les réseaux multisites, la personnalisation des widgets lors de la prévisualisation des thèmes et la mise à jour de l&rsquo;éditeur visuel. Nous avons aussi effectué quelques améliorations sur la nouvelle fonction de liste de lecture audio/vidéo et fait quelques retouches pour améliorer les performances. Pour voir la liste complète des changements vous pouvez consulter la <a href="https://core.trac.wordpress.org/query?milestone=3.9.1">liste des tickets (en)</a> et le <a href="https://core.trac.wordpress.org/log/branches/3.9?rev=28353&amp;stop_rev=28154">journal des changements (en)</a>.</p>\n<p>Si vous faites parties des millions d&rsquo;utilisateurs de WordPress 3.9, avons déployé la mise à jour en arrière-plan vers la 3.9.1 &#8211; Pour les sites qui le <a href="http://wordpress.org/plugins/background-update-tester/">supportent</a> (en), évidemment !</p>\n<p><a href="http://wordpress.org/download/">Dans tous les cas vous pouvez téléchargez WordPress 3.9.1</a> ou le faire manuellement depuis votre <strong>Tableau de bord → Mise à jour </strong>et simplement cliquer “Mettre à jour maintenant.”</p>\n<p>Merci beaucoup à toutes ces personnes incroyables qui ont participé au développement de WordPress 3.9.1 : <a href="http://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="http://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="http://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="http://profiles.wordpress.org/rzen">Brian Richards</a>, <a href="http://profiles.wordpress.org/ehg">Chris Blower</a>, <a href="http://profiles.wordpress.org/jupiterwise">Corey McKrill</a>, <a href="http://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="http://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="http://profiles.wordpress.org/feedmeastraycat">feedmeastraycat</a>, <a href="http://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="http://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="http://profiles.wordpress.org/imath">imath</a>, <a href="http://profiles.wordpress.org/avryl">Janneke Van Dorpe</a>, <a href="http://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="http://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="http://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="http://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="http://profiles.wordpress.org/m_i_n">m_i_n</a>, <a href="http://profiles.wordpress.org/clorith">Marius Jensen</a>, <a href="http://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="http://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="http://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="http://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="http://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="http://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, et <a href="http://profiles.wordpress.org/westonruter">Weston Ruter</a>.</p>\n<p><em><strong>NB</strong> : Cet article est une adaptation en français de l&rsquo;article original publié sur <a href="http://wordpress.org/news/2014/05/wordpress-3-9-1/">wordpress.org</a> (en).</em></p>\n<p><em><strong>NB2</strong> </em>:<em> La version française est disponible <a href="http://fr.wordpress.org">ici</a>.</em></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KpsKznAONCY:cCR6KkyEM2I:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KpsKznAONCY:cCR6KkyEM2I:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KpsKznAONCY" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"http://www.wordpress-fr.net/2014/05/09/wordpress-3-9-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:55:"http://www.wordpress-fr.net/2014/05/09/wordpress-3-9-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:57:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"L’Hebdo WordPress n°227 : SupportPress – Sondage – Polémique";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/QOlL4_ZPklY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:101:"http://www.wordpress-fr.net/2014/04/29/lhebdo-wordpress-n227-supportpress-sondage-polemique/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Apr 2014 19:52:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:6:{i:0;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:7:"sondage";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:12:"SupportPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7013";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:369:"Une application pour le support : SupportPress Automattic met à disposition du public une application gratuite de gestion de support, nommée SupportPress (en). Une nouvelle communauté belge Bienvenue à la communauté WordPress de Namur en Belgique. Si vous êtes du coin, rejoignez ce groupe. Un thème et une extension dédiés à Twitter Ozh a réalisé [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2630:"<h3>Une application pour le support : SupportPress</h3>\n<p>Automattic met à disposition du public une application gratuite de gestion de support, nommée <a href="http://supportpress.com/">SupportPress</a> (en).</p>\n<h3>Une nouvelle communauté belge</h3>\n<p>Bienvenue à la communauté WordPress de Namur en Belgique. <a href="http://www.meetup.com/Namur-WordPress-Meetup/">Si vous êtes du coin, rejoignez ce groupe</a>.</p>\n<h3>Un thème et une extension dédiés à Twitter</h3>\n<p><a href="http://wptavern.com/tweet-archive-a-free-wordpress-theme-to-match-the-new-twitter-profiles">Ozh a réalisé un thème et une extension</a> (en) permettant l&rsquo;archivage de ses Tweets (en). Il vient de remettre  l&rsquo;ensemble à jour suite aux dernières retouches du site Twitter.</p>\n<h3>Un sondage pour améliorer WordPress</h3>\n<p>Si vous avez quelques instants, répondez à <a href="http://wordpressdotorg.polldaddy.com/s/wordpress-contributor-experience-poll?p=1">ce sondage concernant votre expérience de WordPress</a> (en).</p>\n<h3>Les CMS c&rsquo;est le mal ?</h3>\n<p>C&rsquo;est ce que semble penser <a href="http://www.cera-interactive.fr/cera-strasbourg/actu-du-web.php?actu=140425-joomla-wordpress-site-web">Lucas K.  </a>de Cera Interactive qui tire à boulets rouges sur les CMS. La réponse d&rsquo;un indépendant ne s&rsquo;est pas faite attendre&#8230;<a href="http://wpformation.com/faut-il-eviter-wordpress-joomla/"> en la personne de Fabrice de WPFormation</a>. Et vous qu&rsquo;en pensez-vous ?<br />\nAjout : <a href="http://www.web-eau.net/blog/entry/la-guerre-du-web-aura-t-elle-lieu">Une autre réponse ici</a>.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=QOlL4_ZPklY:laSY97JiqPg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=QOlL4_ZPklY:laSY97JiqPg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=QOlL4_ZPklY:laSY97JiqPg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=QOlL4_ZPklY:laSY97JiqPg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=QOlL4_ZPklY:laSY97JiqPg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=QOlL4_ZPklY:laSY97JiqPg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/QOlL4_ZPklY" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:97:"http://www.wordpress-fr.net/2014/04/29/lhebdo-wordpress-n227-supportpress-sondage-polemique/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:92:"http://www.wordpress-fr.net/2014/04/29/lhebdo-wordpress-n227-supportpress-sondage-polemique/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:60:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"L’Hebdo WordPress n°226 : BuddyPress 2.0 – Widgets – Dashicons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/s7zcVdwx75U/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:103:"http://www.wordpress-fr.net/2014/04/22/lhebdo-wordpress-n226-buddypress-2-0-widgets-dashicons/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Apr 2014 05:28:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:7:{i:0;a:5:{s:4:"data";s:7:"Astuces";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:10:"automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:13:"wordpress 3.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=7003";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:379:"BuddyPress 2.0 : Juliana BuddyPress 2.0 débarque en version finale (en) et se nomme Juliana. Notons qu&#8217;iMath n&#8217;en est pas peu fier. (et il a bien raison). Explications concernant le gestionnaire de widget Depuis WordPress 3.9, le gestionnaire de widget a subi de grandes améliorations. Un petit récapitulatif est donc bienvenu (en) Automattic évalué à [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3850:"<h3>BuddyPress 2.0 : Juliana</h3>\n<p><a href="http://buddypress.org/2014/04/buddypress-2-0-juliana/">BuddyPress 2.0 débarque en version finale</a> (en) et se nomme Juliana. Notons qu&rsquo;iMath n&rsquo;<a href="http://imathi.eu/2014/04/21/my-very-own-buddypress/">en est pas peu fier</a>. (et il a bien raison).</p>\n<h3>Explications concernant le gestionnaire de widget</h3>\n<p>Depuis WordPress 3.9, le gestionnaire de widget a subi de grandes améliorations. <a href="http://make.wordpress.org/core/2014/04/17/live-widget-previews-widget-management-in-the-customizer-in-wordpress-3-9/">Un petit récapitulatif est donc bienvenu </a>(en)</p>\n<h3>Automattic évalué à 1 milliard de dollars</h3>\n<p><a href="http://mashable.com/2014/04/15/wordpress-automattic/">Après une levée de fonds  </a>(en) d&rsquo;environ <a href="http://tech.fortune.cnn.com/2014/04/15/exclusive-automattic-seeking-to-raise-more-than-100-million/">100 millions de dollars</a> (en), Automattic vaut autour d&rsquo;un milliard de dollars.</p>\n<h3>Le 16e hook de la semaine</h3>\n<p>Julio propose son 16e hook de la semaine avec <code><a href="http://boiteaweb.fr/theme_page_templates-hook-semaine-16-8033.html">theme_page_templates</a>.</code></p>\n<h3> Concevoir un système d&rsquo;espace membre</h3>\n<p>Willy explique comment <a href="http://wabeo.fr/espace-membre-wordpress/">concevoir un système d&rsquo;espace membre</a> dans WordPress.</p>\n<h3>La liste des dashicons</h3>\n<p><a href="http://melchoyce.github.io/dashicons/">Voici une liste des dashicons</a> avec possibilité de les copier pour les insérer chez vous. Vous trouverez aussi les <a href="http://make.wordpress.org/core/2014/04/16/dashicons-in-wordpress-3-9/">nouvelles dashicons de la version 3.9</a> (en).</p>\n<h3>Un site WordPress, ça prend du temps</h3>\n<p>Fabrice explique <a href="http://wpformation.com/site-wordpress-professionnel/">pourquoi un site WordPress prend du temps</a>.</p>\n<h3>Hueman, un thème plein de ressources</h3>\n<p>Li-An fait découvrir un thème gratuit intéressant. <a href="http://www.echodesplugins.li-an.fr/themes/hueman/">Hueman </a>est un thème responsive plein de ressources.</p>\n<h3>Corriger les erreurs 404</h3>\n<p>Les erreurs 404 peuvent être évitées sur votre site. <a href="http://wpformation.com/erreurs-404-wordpress/">Voici comment faire</a>.</p>\n<h3>Éviter le contenu dupliqué</h3>\n<p>Julio propose de montrer comment <a href="http://boiteaweb.fr/eviter-duplicate-content-archives-categories-8027.html">éviter les contenus dupliqués</a> (&laquo;&nbsp;duplicate content&nbsp;&raquo;).</p>\n<h3>Séparer la fonctionnalité de la forme</h3>\n<p>Un article qui s&rsquo;adresse surtout aux développeurs de thèmes. <a href="http://www.tweetpress.fr/screencast/plugin-fonctionnalites/">Julien leur conseille de séparer la forme des fonctionnalités</a>.</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=s7zcVdwx75U:nmUPtOjyecs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=s7zcVdwx75U:nmUPtOjyecs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=s7zcVdwx75U:nmUPtOjyecs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=s7zcVdwx75U:nmUPtOjyecs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=s7zcVdwx75U:nmUPtOjyecs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=s7zcVdwx75U:nmUPtOjyecs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/s7zcVdwx75U" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:99:"http://www.wordpress-fr.net/2014/04/22/lhebdo-wordpress-n226-buddypress-2-0-widgets-dashicons/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:94:"http://www.wordpress-fr.net/2014/04/22/lhebdo-wordpress-n226-buddypress-2-0-widgets-dashicons/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:48:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"À propos de la traduction française de WordPress 3.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/3CW90ipEYuM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:101:"http://www.wordpress-fr.net/2014/04/18/a-propos-de-la-traduction-francaise-de-wordpress-3-9/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Apr 2014 17:57:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:10:"Traduction";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=6991";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:451:"Version courte La traduction présentait certains problèmes et erreurs. Nous vous conseillons de la mettre à jour : Soit en cliquant sur le bouton &#171;&#160;Ré-installer maintenant&#160;&#187; de votre page Tableau de bord &#62; Mises à jour. Soit en téléchargeant le fichier fr_FR.mo corrigé et en le mettant en ligne dans votre dossier /wp-content/languages/, en remplacement du fichier fr_FR.mo en place. Par ailleurs, si [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7326:"<h3>Version courte</h3>\n<p>La traduction présentait certains problèmes et erreurs. Nous vous conseillons de la mettre à jour :</p>\n<ul>\n<li>Soit en cliquant sur le bouton &laquo;&nbsp;Ré-installer maintenant&nbsp;&raquo; de votre page Tableau de bord &gt; Mises à jour.</li>\n<li>Soit en téléchargeant le <a href="http://i18n.svn.wordpress.org/fr_FR/branches/3.9/messages/fr_FR.mo">fichier <code>fr_FR.mo</code> corrigé</a> et en le mettant en ligne dans votre dossier <code>/wp-content/languages/</code>, en remplacement du fichier <code>fr_FR.mo</code> en place.</li>\n</ul>\n<p>Par ailleurs, si votre éditeur visuel est cassé depuis le passage à la 3.9, ce n&rsquo;est sans doute pas dû à la traduction, mais plutôt à l&rsquo;une de vos extensions qui utilisent/étendent l&rsquo;éditeur (TinyMCE). Désactivez-les une à une !</p>\n<h3>Version longue</h3>\n<p>La traduction présentait donc des problèmes :</p>\n<ul>\n<li>L&rsquo;adresse du lien &laquo;&nbsp;Remarque&nbsp;&raquo; du menu WordPress (en haut à gauche de l&rsquo;administration) renvoyait vers &laquo;&nbsp;https://wordpress.org/support/forum/requests-and-feedback(enanglais)&nbsp;&raquo; &#8212; oui, avec &laquo;&nbsp;(en anglais)&nbsp;&raquo; dans l&rsquo;adresse !</li>\n<li>Le mot &laquo;&nbsp;PrestaShop&nbsp;&raquo; apparaissait à la place de &laquo;&nbsp;WordPress&nbsp;&raquo; dans trois chaînes de l&rsquo;outil de personnalisation des thèmes ! <a href="http://www.wordpress-fr.net/support/viewtopic.php?pid=487408#p487408">Explication</a> : PrestaShop est mon employeur, j&rsquo;écris les documentations du logiciel, et je tape donc ce mot à longueur de journée. Je suppose que le soir venu, mes doigts ont glissé&#8230;</li>\n<li>Et surtout, les grands chiffres (supérieurs à 999) sont affichés avec une esperluette (&amp;) : 1&amp;234, 357&amp;156, etc.</li>\n</ul>\n<p>Explication de ce dernier point : <a href="http://fr.wikipedia.org/wiki/Espace_ins%C3%A9cable">en typographie française</a>, il faut utiliser une espace insécable comme séparateur de groupes de trois chiffres dans les nombres par tranches de mille pour la partie entière et la partie décimale (1 234 567 plutôt que 1234567, donc). Ce n&rsquo;est pas possible dans toutes les situations, mais ça l&rsquo;est dans WordPress grâce à une clef de traduction propre à cela :  <code>number_format_thousands_sep</code> (séparateur de milliers). Et donc nous, traducteurs, de traduire le point du standard américain en une espace insécable, qui en HTML s&rsquo;écrit avec l&rsquo;entité &laquo;&nbsp;&amp;nbsp;&nbsp;&raquo;</p>\n<p>L&rsquo;arrivée de ce séparateur (<a href="https://core.trac.wordpress.org/ticket/3677">il y a plus de sept ans</a>, avec <a href="http://codex.wordpress.org/Version_2.3#Internationalization_and_Localization">WordPress 2.3</a> !) avait déjà provoqué des problèmes une fois que la traduction l&rsquo;a pris en compte, <a href="http://www.wordpress-fr.net/support/viewtopic.php?pid=427804">tant en français</a> (<a href="http://www.wordpress-fr.net/support/viewtopic.php?pid=427776#p427776">explication de Guy à l&rsquo;époque de v3.5</a>) que pour <a href="http://wordpress.org/ideas/topic/multi-char-thousands-separator-french-russian-czech-etc">d&rsquo;autres locales</a> (<a href="https://core.trac.wordpress.org/ticket/10373">ticket sur le Trac WP</a>, <a href="https://core.trac.wordpress.org/ticket/10373#comment:8">possible solution</a>).</p>\n<p>Si vous voulez tester mais que vous n&rsquo;avez pas assez d&rsquo;articles, commentaires, médias ou indésirables, une astuce : faites un recherche d&rsquo;extension avec le mot-clé &laquo;&nbsp;widget&nbsp;&raquo; (<code>/wp-admin/plugin-install.php?tab=search&amp;type=tag&amp;s=widget</code>), et regardez le nombre de résultats.</p>\n<p>Le problème ne vient pas de WordPress mais de PHP : dans les versions antérieures à PHP 5.4.0, la méthode <a href="http://www.php.net/manual/en/function.number-format.php"><code>number_format()</code></a> ne prenait en compte que le premier octet, soit en français comme dans d&rsquo;autres langues nécessitant une espace insécable pour la séparation de milliers, le &laquo;&nbsp;&amp;&nbsp;&raquo; de &laquo;&nbsp;&amp;nbsp;&nbsp;&raquo; (cf. la section &laquo;&nbsp;Changelog&nbsp;&raquo; dans la page de cette fonction PHP.<br />\nC&rsquo;est pourquoi les <a href="http://www.wordpress-fr.net/support/viewtopic.php?pid=487647#p487647">récents témoignages que nous avons reçus</a> tendent à montrer que le problème ne survient qu&rsquo;avec une version de PHP inférieure à la 5.4.</p>\n<p>Mais alors, si nous étions déjà au courant de ce problème avec &amp;nbsp; depuis (au moins) la version 3.5 de WordPress, pourquoi le retrouve-t-on dans la 3.8 et la 3.9 ? L&rsquo;explication est simplement humaine : le nombre de chaînes à traduire à chaque sortie, l&rsquo;envie de bien faire, et l&rsquo;oubli des discussions des années passées. J&rsquo;espère que cet article maintiendra le problème en mémoire, jusqu&rsquo;à mise en place d&rsquo;une solution pérenne (cf. la possible solution liée plus haut, que nous mettrons en place pour WP 3.9.1).</p>\n<p>Merci de votre compréhension, et mettez à jour votre traduction ! <img src="http://www.wordpress-fr.net/wp-includes/images/smilies/icon_smile.gif" alt=":)" class="wp-smiley" /> </p>\n<p><strong>Ajout du 22 avril</strong> : la traduction d&rsquo;Akismet 3.0 a également été corrigée ! Elle sera à jour dans la version 3.9.1 de WordPress, mais d&rsquo;ici-là, vous pouvez exporter le fichier .mo en suivant ce processus :</p>\n<ul>\n<li>Allez sur <a href="http://translate.wordpress.org/projects/wp-plugins/akismet/dev/fr/default">http://translate.wordpress.org/projects/wp-plugins/akismet/dev/fr/default</a></li>\n<li>En bas de l&rsquo;écran, sélectionnez &laquo;&nbsp;Machine Object Message catalog (.mo)&nbsp;&raquo;.</li>\n<li>Cliquez sur &laquo;&nbsp;Export&nbsp;&raquo;.</li>\n<li>Renommez le fichier téléchargé &laquo;&nbsp;<code>wp-plugins-akismet-dev-fr.mo</code>&nbsp;&raquo; en &laquo;&nbsp;<code>akismet-fr_FR.mo</code>&laquo;&nbsp;.</li>\n<li>Mettez ce fichier <code>akismet-fr_FR.mo</code> dans le dossier <code>/wp-content/languages/plugins</code> de votre installation de WordPress.</li>\n</ul>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=3CW90ipEYuM:xYH023NF7xM:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=3CW90ipEYuM:xYH023NF7xM:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=3CW90ipEYuM:xYH023NF7xM:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=3CW90ipEYuM:xYH023NF7xM:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=3CW90ipEYuM:xYH023NF7xM:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=3CW90ipEYuM:xYH023NF7xM:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/3CW90ipEYuM" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:97:"http://www.wordpress-fr.net/2014/04/18/a-propos-de-la-traduction-francaise-de-wordpress-3-9/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"17";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:92:"http://www.wordpress-fr.net/2014/04/18/a-propos-de-la-traduction-francaise-de-wordpress-3-9/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"Sortie de WordPress 3.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/wPvO98ucIP4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2014/04/17/sortie-de-wordpress-3-9/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Apr 2014 22:04:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=6978";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:393:"La version 3.9 de WordPress, baptisée &#171;&#160;Smith&#160;&#187; en l&#8217;honneur de l&#8217;organiste de jazz Jimmy Smith, est disponible  en téléchargement ou en mise à jour depuis le tableau de bord de votre site WordPress. Cette version apporte un grand nombre d’améliorations, et nous pensons que vous allez les adorer. Un processus de modification des médias plus [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Xavier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5960:"<p>La version 3.9 de WordPress, baptisée &laquo;&nbsp;Smith&nbsp;&raquo; en l&rsquo;honneur de l&rsquo;organiste de jazz <a href="http://fr.wikipedia.org/wiki/Jimmy_Smith">Jimmy Smith</a>, est disponible  <a href="http://wordpress.org/download/">en téléchargement</a> ou en mise à jour depuis le tableau de bord de votre site WordPress. Cette version apporte un grand nombre d’améliorations, et nous pensons que vous allez les adorer.</p>\n<p><embed width="400" height="224" type="application/x-shockwave-flash" src="http://s0.videopress.com/player.swf?v=1.03" wmode="direct" seamlesstabbing="true" allowfullscreen="allowfullscreen" allowscriptaccess="always" overstretch="true" flashvars="guid=sAiXhCfV&amp;isDynamicSeeking=true"></embed></p>\n<h2 class="about-headline-callout"><em>Un processus de modification des médias plus fluide</em></h2>\n<h4>Édition visuelle améliorée</h4>\n<p><img class="alignnone wp-image-6979 size-full" src="http://www.wordpress-fr.net/wp-content/uploads/2014/04/editor1-300x233.jpg" alt="editor1-300x233" width="300" height="233" /></p>\n<p>L’éditeur visuel a été mis à jour pour gagner en vitesse, en accessibilité et en utilisation mobile. Vous pouvez coller vos écrits depuis votre éditeur de texte sans perdre de temps à nettoyer sa mise en page désordonnée (oui, c’est de toi que l’on parle, Microsoft Word).</p>\n<h4>Modifiez les images facilement</h4>\n<p><img class="alignnone size-full wp-image-6980" src="http://www.wordpress-fr.net/wp-content/uploads/2014/04/image1-300x233.jpg" alt="image1-300x233" width="300" height="233" /></p>\n<p>Avec un accès plus rapide aux outils de recadrage et de rotation, il est désormais plus facile de modifier vos images tandis que vous corrigez vos articles. Vous pouvez également changer l’échelle des images directement dans l’éditeur afin de trouver la taille qui convient.</p>\n<h4>Glissez/déposez vos images</h4>\n<p><img class="alignnone size-full wp-image-6981" src="http://www.wordpress-fr.net/wp-content/uploads/2014/04/dragdrop1-300x233.jpg" alt="dragdrop1-300x233" width="300" height="233" /></p>\n<p>La mise en ligne des images n’a jamais été aussi simple. Glissez simplement vos fichiers depuis votre ordinateur vers l’éditeur visuel.</p>\n<h4>Prévisualisation de galerie</h4>\n<p><img class="alignnone wp-image-6982 size-large" src="http://www.wordpress-fr.net/wp-content/uploads/2014/04/gallery1-500x280.jpg" alt="gallery1" width="500" height="280" /></p>\n<p>Les galeries s’affichent en de belles grilles directement dans l’éditeur, de la même manière qu’elles s’afficheront une fois l’article publié.</p>\n<h4>Faites-en plus avec l’audio et la vidéo</h4>\n<p><img class="alignnone size-large wp-image-6983" src="http://www.wordpress-fr.net/wp-content/uploads/2014/04/playliste-500x193.png" alt="playliste" width="500" height="193" /></p>\n<p>Les images ont leurs galeries, et désormais les fichiers audio et vidéo disposent de listes de lectures très simples, avec lesquelles vous pouvez présenter votre musique ou vos extraits vidéo.</p>\n<h4>Prévisualisation en direct des widgets et de l’en-tête</h4>\n<p>Ajoutez, modifiez et réarrangez vos widgets directement pendant la personnalisation du thème. Plus besoin d’enregistrer pour voir constater les problèmes : découvrez vos modifications en direct, et enregistrez-les une fois qu’elles sont validées.</p>\n<p>L’outil de gestion des images de l’en-tête a également été amélioré : vous pouvez mettre vos images en ligne, les recadre et gérer les en-têtes tout en personnalisant votre thème.</p>\n<h4>Un nouveau et superbe navigateur de thèmes</h4>\n<p><img class="alignnone size-large wp-image-6984" src="http://www.wordpress-fr.net/wp-content/uploads/2014/04/theme1-500x278.jpg" alt="theme1" width="500" height="278" /></p>\n<p>La recherche d’un nouveau thème devrait être facile et ludique. Perdez-vous dans l’offre sans fin de thèmes gratuits proposés par WordPress.org grâce au nouveau et magnifique navigateur de thèmes.</p>\n<h2 style="text-align: left;">L&rsquo;équipe</h2>\n<p>Cette version a été menée par <a href="http://nacin.com/">Andrew Nacin</a> et <a href="http://www.getsource.net/">Mike Schroder</a>, avec l&rsquo;aide de <a href="http://wordpress.org/news/2014/04/smith/">267 contributeurs</a>. Merci à eux !</p>\n<p>Maintenant que cette version est sortie, voici la manière dont vous pouvez aider la communauté pendant les prochains jours :</p>\n<ul>\n<li>Gardez un œil sur le forum d&rsquo;entraide ou sur votre réseau Twitter pour répondre aux questions ;</li>\n<li>Aidez vos amis, vos collègues, vos clients, votre groupe WordPress local et autres, à mettre à jour leurs sites ;</li>\n<li>Faites remonter tout ce qui vous semble suspect, et ne pas avoir peur d&rsquo;en parler aux responsables de l&rsquo;équipe WP (ou WPFR).</li>\n</ul>\n<p>Merci d&rsquo;avoir choisi WordPress, et à bientôt pour la version 4.0 !</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wPvO98ucIP4:I7rchQ6CsGk:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wPvO98ucIP4:I7rchQ6CsGk:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=wPvO98ucIP4:I7rchQ6CsGk:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wPvO98ucIP4:I7rchQ6CsGk:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wPvO98ucIP4:I7rchQ6CsGk:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=wPvO98ucIP4:I7rchQ6CsGk:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/wPvO98ucIP4" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:68:"http://www.wordpress-fr.net/2014/04/17/sortie-de-wordpress-3-9/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"36";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:63:"http://www.wordpress-fr.net/2014/04/17/sortie-de-wordpress-3-9/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:57:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"L’Hebdo WordPress n°225 : WordPress 3.8.3 – WordPress 3.9 – BuddyPress 2.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/7wegzds2MAw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:115:"http://www.wordpress-fr.net/2014/04/15/lhebdo-wordpress-n225-wordpress-3-8-3-wordpress-3-9-buddypress-2-0/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Apr 2014 05:54:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:6:{i:0;a:5:{s:4:"data";s:14:"Développement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"Jetpack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:13:"WordPress 3.8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:13:"wordpress 3.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=6962";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:351:"2 semaines après le premier avril, je tiens à soulager toute la communauté en confirmant que l&#8217;information donnée dans le précédent hebdo était évidemment un gros poisson d&#8217;avril (juste au cas où certains y aurait cru&#8230;) Les prochaines rencontres en France A Lyon : le 22 avril. A Bayonne : WPMX remet le couvert le [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3983:"<p>2 semaines après le premier avril, je tiens à soulager toute la communauté en confirmant que l&rsquo;information donnée dans le précédent hebdo était évidemment <a title="L’Hebdo WordPress n°224 : Facebook/Automattic – Masonry – BuddyPress" href="http://www.wordpress-fr.net/2014/04/01/lhebdo-wordpress-n224-mange-un-poisson-clown/">un gros poisson d&rsquo;avril </a>(juste au cas où certains y aurait cru&#8230;)</p>\n<h3>Les prochaines rencontres en France</h3>\n<ul>\n<li><a href="http://www.meetup.com/WordPress-Lyon-Meetup/events/176385812/">A Lyon : le 22 avril.</a></li>\n<li><a href="https://www.facebook.com/events/298654000290012/">A Bayonne</a> : WPMX remet le couvert le 26 avril.</li>\n<li><a href="http://www.meetup.com/wordpress-ile-de-france/polls/1028452/">Une réflexion</a> pour un meetup parisien</li>\n</ul>\n<h3>WordPress 3.8.2 et WordPress 3.8.3</h3>\n<p>En une semaine de temps, 2 versions mineures de WordPress ont vu le jour : <a href="http://wordpress.org/news/2014/04/wordpress-3-8-2/">3.8.2</a> (en) et <a href="http://wordpress.org/news/2014/04/wordpress-3-8-3/">3.8.3 (en)</a>. La version 3.8.3 vient principalement réparer un dysfonctionnement du &laquo;&nbsp;brouillon rapide&nbsp;&raquo; apparu dans la 3.8.2.</p>\n<h3>WordPress 3.9 et MySQL</h3>\n<p>Des <a href="http://make.wordpress.org/plugins/2014/04/07/mysql-in-wordpress-3-9-implications-for-plugin-authors/">modifications (en) </a>interviennent concernant MySQL dans WordPress 3.9. <span style="text-decoration: underline;">Il est à noter que la version finale de WordPress 3.9 devrait sortir dans les tous prochains jours</span>.</p>\n<h3>BuddyPress 2.0 Beta 2 et RC1</h3>\n<p>BuddyPress 2.0 <a href="http://wptavern.com/major-milestone-for-buddypress-2-million-downloads-and-counting">progresse</a> (en), après une <a href="http://buddypress.org/2014/04/buddypress-2-0-beta2/">beta 2</a> (en), la <a href="http://buddypress.org/2014/04/buddypress-2-0-release-candidate/">première version candidate</a> (en) est sortie il y a quelques jours.</p>\n<h3>Jetpack 2.9.3</h3>\n<p>Jetpack arrive en <a href="http://jetpack.me/2014/04/10/jetpack-security-update/">version 2.9.3</a> (en) et apporte une correction d&rsquo;une faille ancienne mais découverte que récemment.</p>\n<h3>WordPress est-il le bon outil ?</h3>\n<p>Voici des éléments de réponse <a href="http://wpshout.com/wordpress-right-tool-job/">si vous vous posez parfois la question (en)</a>.</p>\n<h3>Forcer la mise à jour des extensions</h3>\n<p>Julio propose une nouvelle extension permettant de forcer la mise à jour des extensions : <a href="http://boiteaweb.fr/force-plugin-updates-re-installez-vos-plugins-rapidement-8016.html#">Force Plugin Updates</a>.</p>\n<h3>Personnaliser les colonnes d&rsquo;administration</h3>\n<p>Pour personnaliser les colonnes de votre administration, essayez cette extension : <a href="http://www.geekpress.fr/wordpress/extension/personnaliser-colonnes-administration-2004/">CodePress Admin Column</a>.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7wegzds2MAw:LehP5y6AqGA:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7wegzds2MAw:LehP5y6AqGA:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=7wegzds2MAw:LehP5y6AqGA:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7wegzds2MAw:LehP5y6AqGA:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=7wegzds2MAw:LehP5y6AqGA:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=7wegzds2MAw:LehP5y6AqGA:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/7wegzds2MAw" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:111:"http://www.wordpress-fr.net/2014/04/15/lhebdo-wordpress-n225-wordpress-3-8-3-wordpress-3-9-buddypress-2-0/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:106:"http://www.wordpress-fr.net/2014/04/15/lhebdo-wordpress-n225-wordpress-3-8-3-wordpress-3-9-buddypress-2-0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:54:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"L’Hebdo WordPress n°224 : Facebook/Automattic – Masonry – BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_VCUvlt4RF4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:93:"http://www.wordpress-fr.net/2014/04/01/lhebdo-wordpress-n224-mange-un-poisson-clown/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 01 Apr 2014 05:44:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:14:"Développement";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:5:"Hebdo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:13:"wordpress 3.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/?p=6941";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:412:"!! Information de dernière minute !! Automattic est racheté par Facebook Nous venons d&#8217;apprendre d&#8217;une source proche du dossier que Matt Mullenweg, le co-fondateur de WordPress et CEO d&#8217;Automattic vient de finaliser un accord d&#8217;un montant de 20 milliards de dollars pour la revente d&#8217;Automattic à Facebook. C&#8217;est ainsi, avec une somme légèrement plus importante [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4850:"<h1>!! Information de dernière minute !!</h1>\n<h3>Automattic est racheté par Facebook</h3>\n<p>Nous venons d&rsquo;apprendre d&rsquo;une source proche du dossier que Matt Mullenweg, le co-fondateur de WordPress et CEO d&rsquo;Automattic vient de finaliser un accord d&rsquo;un montant de 20 milliards de dollars pour la revente d&rsquo;Automattic à Facebook. C&rsquo;est ainsi, avec une somme légèrement plus importante que sa récente acquisition de l’application Whatsapp, qui lui avait couté &laquo;&nbsp;seulement&nbsp;&raquo; 19 milliards de dollars, que le géant des réseaux sociaux acquiert l&rsquo;univers WordPress.</p>\n<p>Facebook, en pleine recherche de croissance externe après les rachats successifs d&rsquo;Instagram, de Whatsapp et dernièrement d&rsquo;Oculus met donc la main sur la maison mère de WordPress et notamment son service communautaire WordPress.com. On suppose que l&rsquo;aspect communautaire qui se développait sur la plateforme de blogs aura convaincu Facebook de sa puissance. Pour l&rsquo;instant, il est encore trop tôt pour savoir ce qu&rsquo;en fera le Géant du Web : intégration dans le réseau social, gestion de blog directement dans Facebook ou bien fusion de l&rsquo;ensemble&#8230; ?</p>\n<p>Pour le moment, le logiciel libre WordPress, disponible sur WordPress.org, semble ne pas être concerné par cette opération. En effet, la Fondation WordPress étant indépendante est encore à l&rsquo;abri&#8230; mais pour combien de temps ? Mark Zuckerberg a de nombreuses cordes à son arc et pourrait trouver la parade pour s&rsquo;approprier l&rsquo;application qui fait tourner 20 % du Web.</p>\n<p>L&rsquo;information n&rsquo;a pas encore &laquo;&nbsp;fuitée&nbsp;&raquo;, notre contact nous ayant donné l&rsquo;exclusivité de l&rsquo;information. Vous êtes donc les premiers à lire ce scoop.</p>\n<p>Nous irons à la pêche aux informations complémentaires qui, soyons en sûr, devrait tomber dans notre chalut tout au long de la journée.</p>\n<p>Restez connectés</p>\n<p><span id="more-6941"></span></p>\n<h1>La suite de l&rsquo;Hebdo :</h1>\n<h3>WordPress 3.9 beta 3</h3>\n<p>N&rsquo;ayant pas eu le temps de faire la traduction de l&rsquo;article présentant la beta 3 de WordPress 3.9, <a href="http://wordpress.org/news/2014/03/wordpress-3-9-beta-3/">je vous glisse le lien ici</a> (en) au cas où vous l&rsquo;auriez manqué.</p>\n<h3>Masonry dans WordPress 3.9</h3>\n<p>Attention le <a href="http://make.wordpress.org/core/2014/03/27/masonry-in-wordpress-3-9/">script Masonry subi des changements</a> (en) suite à son passage à la version 3 dans WordPress 3.9.</p>\n<h3>BuddyPress 2.0</h3>\n<p>BuddyPress 2.0 arrive à la fin de son développement avec une <a href="http://buddypress.org/2014/03/buddypress-2-0-beta-1-is-now-available/">beta 1</a> (en). Pour découvrir les nouveautés <a href="http://buddydev.com/buddypress/buddypress-2-0-coming-soon-expect/">c&rsquo;est ici</a> (en).</p>\n<h3>Le futur des commentaires</h3>\n<p>Quel est l&rsquo;<a href="http://wptavern.com/what-is-the-future-of-comments-in-wordpress">avenir des commentaires </a> (en) dans WordPress ?</p>\n<h3>Une extension SEO pour les dominer tous</h3>\n<p>On pensait avoir tout vu en matière d&rsquo;extension SEO&#8230;. eh bien c&rsquo;était sans compter sur Julio et sa détermination légendaire. Il annonce dès aujourd&rsquo;hui la sortie de sa propre extension, bien plus simple que toutes les autres, mais terriblement efficace. <a href="http://boiteaweb.fr/google-1st-place-plugin-seo-7996.html">Exemple en image à l&rsquo;appui </a>!</p>\n<h3>Conserver la traduction du thème lors de la mise à jour</h3>\n<p>Si vous souhaitez conserver la traduction de votre thème lors de sa mise à jour, <a href="http://www.lumieredelune.com/encrelune/preserver-traduction-po,2014,03">vous devriez regarder cet article</a>.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_VCUvlt4RF4:FQdKOGKg__w:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_VCUvlt4RF4:FQdKOGKg__w:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_VCUvlt4RF4:FQdKOGKg__w:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_VCUvlt4RF4:FQdKOGKg__w:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_VCUvlt4RF4:FQdKOGKg__w:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_VCUvlt4RF4:FQdKOGKg__w:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_VCUvlt4RF4" height="1" width="1"/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:89:"http://www.wordpress-fr.net/2014/04/01/lhebdo-wordpress-n224-mange-un-poisson-clown/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"23";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:84:"http://www.wordpress-fr.net/2014/04/01/lhebdo-wordpress-n224-mange-un-poisson-clown/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:28:"http://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:44:"http://www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"s54Cswagkrpq3UJighfMKkuW/30";s:13:"last-modified";s:29:"Thu, 29 May 2014 12:55:44 GMT";s:4:"date";s:29:"Thu, 29 May 2014 13:02:12 GMT";s:7:"expires";s:29:"Thu, 29 May 2014 13:02:12 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:18:"alternate-protocol";s:7:"80:quic";}s:5:"build";s:14:"20140502090428";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1246, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1401411732', 'no'),
(1247, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1401368532', 'no'),
(1248, '_transient_timeout_feed_2fb9572e3d6a42f680e36370936a57ae', '1401411732', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1249, '_transient_feed_2fb9572e3d6a42f680e36370936a57ae', 'a:4:{s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"feed";a:1:{i:0;a:6:{s:4:"data";s:303:"\n    \n    \n    \n    \n    \n    \n    \n  \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WordPress Francophone : Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"subtitle";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:35:"http://www.wordpress-fr.net/planet/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:3:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:9:"alternate";s:4:"type";s:9:"text/html";s:4:"href";s:35:"http://www.wordpress-fr.net/planet/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:20:"application/atom+xml";s:4:"href";s:54:"http://feeds.feedburner.com/WordpressFrancophonePlanet";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2014-05-29T14:48:58Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:6:"Author";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:5:"entry";a:20:{i:0;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"Cree1site : Moteur de recherche interne : Comment il peut vous aider à convertir !";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:50:"http://www.cree1site.com/moteur-recherche-interne/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:50:"http://www.cree1site.com/moteur-recherche-interne/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-28T21:17:54+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:8:"Rodrigue";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:437:"<div>\n<p>Vu sur le site de <a href="http://www.cree1site.com/">l''agence web</a> Cree1site.com</p>\n<p>Les eComer&ccedil;ants ont pris conscience que la recherche interne est un facteur de conversion, par contre</p>\n<p>Cet article <a rel="nofollow" href="http://www.cree1site.com/moteur-recherche-interne/">Moteur de recherche interne : Comment il peut vous aider &agrave; convertir !</a> est apparu en premier sur Cree1site.com</p>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WordPress Francophone : L’Hebdo WordPress n°230 : WordPress 4.0 – Jetpack 3.0 – WPTech 2014";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/P6DmqnLdfQ4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/P6DmqnLdfQ4/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-27T07:23:07+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:3952:"<div>\n<h3>WordPress 4.0</h3>\n<p>D&eacute;j&agrave; quelques pr&eacute;cisions concernant l&rsquo;<a href="http://make.wordpress.org/core/2014/05/21/internationalization-goals-for-4-0/">internationalisation dans WordPress 4.0</a> (en).</p>\n<h3>Jetpack 3.0</h3>\n<p><a href="http://jetpack.me/2014/05/20/jetpack-3-0/">Jetpack passe en version 3.0</a> et se relooke en partie.</p>\n<h3>WPTech 2014</h3>\n<p><a href="http://2014.wptech.fr/">WPTech</a> est la premi&egrave;re &eacute;dition d&rsquo;une manifestation consacr&eacute;e &agrave; WordPress, mais uniquement du c&ocirc;t&eacute; technique du sujet. L&rsquo;id&eacute;e vient d&rsquo;une partie de la communaut&eacute; nantaise. Bravo &agrave; elle&hellip;. et d&eacute;j&agrave; <a href="http://www.cree1site.com/wp-tech-rendez-wordpress-100-technique/">on en parle sur le web</a>.</p>\n<h3>Les meetups franciliens se &laquo;&nbsp;veryfrenchtripise&nbsp;&raquo;</h3>\n<p>Organis&eacute;s par une bonne partie de la Very French Trip team <a href="http://veryfrenchtrip-wp.eu/meetup-wordpress-23-mai-14-paris/">les meetups franciliens cherchent &agrave; &eacute;voluer</a>.</p>\n<h3>Un superh&eacute;ros WordPress, c&rsquo;est quoi ?</h3>\n<p><a href="http://www.wppourlesnuls.com/comment-devenir-un-super-heros-wordpress-infographie/">La r&eacute;ponse en infographie</a>.</p>\n<h3>Interview de Rodrigue F&eacute;nard</h3>\n<p><a href="http://lesdoigtsdanslenet.com/rodrigue-fenard-specialiste-wordpress/">Rodrigue </a>est interview&eacute; par les Doigts dans le Net.</p>\n<h3>Utiliser les &laquo;&nbsp;social meta tags&nbsp;&raquo; de WordPress</h3>\n<p>Pour en savoir plus sur les social meta tags, un conseil,<a href="http://www.wpexplorer.com/setup-open-graph-twitter-cards-wordpress/"> lisez cet article </a>(en).</p>\n<h3>Le VFT Podcast n&deg;1</h3>\n<p><a href="http://veryfrenchtrip-wp.eu/podcast-1/">Un nouveau podcast est toujours un &eacute;v&eacute;nement </a>mais quand il est fran&ccedil;ais et r&eacute;alis&eacute; par une bande de joyeux lurons comme la VFT team alors on y va les yeux ferm&eacute;s (&ccedil;a tombe bien, y a pas d&rsquo;images !)<br><em><strong>Ajout :</strong></em> Pour suivre le podcast, abonnez-vous via ce flux : <a href="http://veryfrenchtrip-wp.eu/flux/podcast/feed/">http://veryfrenchtrip-wp.eu/flux/podcast/feed/</a></p>\n<h3>Google dans son site WordPress</h3>\n<p>Pour int&eacute;grer les<a href="http://premium.wpmudev.org/blog/wordpress-google-plugins/"> outils de Google dans votre site</a> (en), voici quelques id&eacute;es.</p>\n<h3>Du support client embarqu&eacute;</h3>\n<p>Avec <a href="http://issuepress.co/">IssuePress (en)</a>, il devient possible d&rsquo;embarquer son propre service client dans son interface d&rsquo;administrateur.</p>\n<h3>Une page de connexion personnalis&eacute;e</h3>\n<p>Cr&eacute;er une page de connexion personnalis&eacute;e est possible&hellip; <a href="http://premium.wpmudev.org/blog/create-a-custom-wordpress-login-page/">voici la m&eacute;thode</a> (en).</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=P6DmqnLdfQ4:iglnLHqLHyo:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=P6DmqnLdfQ4:iglnLHqLHyo:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=P6DmqnLdfQ4:iglnLHqLHyo:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/P6DmqnLdfQ4" height="1" width="1">\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"L''écho des plugins WordPress : Admin Menu Tree Page View";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:69:"http://www.echodesplugins.li-an.fr/plugins/admin-menu-tree-page-view/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:69:"http://www.echodesplugins.li-an.fr/plugins/admin-menu-tree-page-view/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-26T11:30:36+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:63:"<div>Deux plugins pour simplifier la gestion de ses pages</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"WP Formation : WordFence Antivirus WordPress efficace";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wpformation.com/wordfence-antivirus-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:53:"http://wpformation.com/wordfence-antivirus-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-24T08:20:10+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"WPFormation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:1328:"<div>\n<p><img width="300" height="192" src="http://wpformation.com/wp-content/uploads/2014/05/wordfence-logo-300x192.jpg" class="attachment-medium wp-post-image" alt="wordfence" style="float: right; margin:0 0 10px 10px;">La s&eacute;curit&eacute; de votre site WordPress est primordiale. Tant de travail et d''articles sur votre blog et tout d''un coup, une simple attaque et... Patatra! Tout est perdu, infect&eacute;, pirat&eacute;:/ Ces derniers temps, j''ai vu augmenter des probl&egrave;mes de s&eacute;curit&eacute; sur des sites WordPress, des probl&egrave;mes de scraping, d''injection de codes malicieux, de banni&egrave;res publicitaires ...</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/wordfence-antivirus-wordpress/">WordFence Antivirus WordPress efficace</a> est un article de <a title="Formation Internet WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a><br><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">eCommerce</a> - Retrouvez-moi sur <a title="Ajouter sur Facebook" href="http://www.facebook.com/Wibeweb">Facebook</a> - <a title="Suivre sur Twitter" href="http://twitter.com/wpformation">Twitter</a> - <a href="http://plus.google.com/+FabriceDucarme/">Google+</a><br><hr>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"L''écho des plugins WordPress : Admin Management Xtended";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:68:"http://www.echodesplugins.li-an.fr/plugins/admin-management-xtended/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:68:"http://www.echodesplugins.li-an.fr/plugins/admin-management-xtended/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-22T10:46:20+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:67:"<div>G&eacute;rez vos billets/pages directement dans la liste</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"BoiteAWeb : Comment devenir un Super Héros WordPress : Infographie";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:82:"http://boiteaweb.fr/comment-devenir-un-super-heros-wordpress-infographie-8100.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:82:"http://boiteaweb.fr/comment-devenir-un-super-heros-wordpress-infographie-8100.html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-22T01:22:36+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:12:"Julio Potier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:323:"<div>\n<p>Quoi ? Je suis un H&eacute;ros WordPress ? Cool :)</p>\n<p>Cet article <a href="http://boiteaweb.fr/comment-devenir-un-super-heros-wordpress-infographie-8100.html">Comment devenir un Super H&eacute;ros WordPress : Infographie</a> est apparu en premier sur <a href="http://boiteaweb.fr/">BoiteAWeb.fr</a>.</p>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"WordPress Channel : Jetpack 3.0 pour WordPress";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:43:"http://wpchannel.com/jetpack-3-0-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:43:"http://wpchannel.com/jetpack-3-0-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-21T11:47:45+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:780:"<div>\n<p>Le plugin Jetpack vient tout juste d&rsquo;atterrir en version 3.0 sur l&rsquo;a&eacute;roport international d&rsquo;Automattic. Le commandant de bord de WordPress Channel vous invite &agrave; la pr&eacute;sentation des nouveaut&eacute;s, grand fan du module super-puissant pour un d&eacute;collage r&eacute;ussi de votre site WordPress. Attachez vos ceintures ! A propos de Jetpack Jetpack n&rsquo;est pas un plugin WordPress&hellip;</p>\n<p><a rel="nofollow" href="http://wpchannel.com/author/aurelien-denis/">Aur&eacute;lien Denis</a> - <a rel="nofollow" href="http://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="http://wpchannel.com/jetpack-3-0-wordpress/">Jetpack 3.0 pour WordPress</a></p>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"Grégoire Noyelle : WordPress :: Very French Trip Podcast 1";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:68:"http://www.gregoirenoyelle.com/wordpress-very-french-trip-podcast-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:68:"http://www.gregoirenoyelle.com/wordpress-very-french-trip-podcast-1/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-21T06:57:02+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:17:"Grégoire Noyelle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:419:"<div>Apr&egrave;s le lancement du site Very French Trip, au moment du 1er WordCamp Europe, la petite &eacute;quipe a relanc&eacute; le Meet Up WordPress Ile de France. Aujourd&rsquo;hui nous vous annon&ccedil;ons la sortie de notre nouveau BB; un podcast D&eacute;di&eacute; &agrave; WordPress: #VFT Podcast. Nous traiterons de WordPress &eacute;videmment, mais pas seulement. Nous pourrons aborder: le [&hellip;]</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Cree1site : WP Tech : Le rendez-vous WordPress 100% Technique";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:64:"http://www.cree1site.com/wp-tech-rendez-wordpress-100-technique/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:64:"http://www.cree1site.com/wp-tech-rendez-wordpress-100-technique/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-20T14:07:02+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:8:"Rodrigue";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:451:"<div>\n<p>Vu sur le site de <a href="http://www.cree1site.com/">l''agence web</a> Cree1site.com</p>\n<p>Le 29 Novembre prochain aura lieu &agrave; Nantes le premier &eacute;v&eacute;nement de WP Tech, ce nouveau format de conf&eacute;rences</p>\n<p>Cet article <a rel="nofollow" href="http://www.cree1site.com/wp-tech-rendez-wordpress-100-technique/">WP Tech : Le rendez-vous WordPress 100% Technique</a> est apparu en premier sur Cree1site.com</p>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WordPress Francophone : L’Hebdo WordPress n°229 : Communautés – Extensions – Astuces";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5ZwQnV00lFY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5ZwQnV00lFY/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-20T07:23:15+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:3572:"<div>\n<h2>Les Communaut&eacute;s</h2>\n<h3>Bordeaux WordPress&rsquo;Camp #10</h3>\n<p>Pour la 10e &eacute;dition de cette r&eacute;union bordelaise, il sera question <a href="https://www.facebook.com/events/1485744844988525/">de s&eacute;curit&eacute; et de maintenance</a>. Elle aura lieu le 12 juin &agrave; 18 H 30.</p>\n<h3>Meetup &agrave; Lyon</h3>\n<p>D&egrave;s ce jeudi 22 mai, Lyon propose un <a href="http://www.meetup.com/WordPress-Lyon-Meetup/">meetup autour de WordPress et de l&rsquo;extension ACF</a>.</p>\n<h3>Meetup &agrave; Paris</h3>\n<p>La <a href="http://www.meetup.com/wordpress-ile-de-france/">communaut&eacute; parisienne se r&eacute;unie le vendredi 23 mai </a>autour d&rsquo;un verre.</p>\n<h3>Meetup WordPress in Alps</h3>\n<p>La <a href="http://www.wpinalps.com/#prochaine-rencontre">communaut&eacute; alpine se retrouvera le 10 juin</a>, &agrave; l&rsquo;initiative de l&rsquo;association WordPress in Alps. La r&eacute;union est pr&eacute;vue &agrave; Grenoble.</p>\n<h3>Faire du CRM avec WordPress</h3>\n<p>Si vous souhaitez vous lancer dans le <a href="https://kinsta.com/blog/crm-wordpress-plugins/">CRM avec WordPress</a> (en), ces extensions et conseils vous seront utiles.</p>\n<h3>Font Awsome int&egrave;gre WordPress</h3>\n<p>La police de caract&egrave;re <a href="http://fontawesome.io/whats-new/">Font Awsome vient d&rsquo;int&eacute;grer une ic&ocirc;ne de WordPress</a> (en) dans sa nouvelle mise &agrave; jour.</p>\n<h3>4 optimisations simples pour booster le SEO</h3>\n<p>Lumi&egrave;re de Lune explique comment, <a href="http://www.lumieredelune.com/encrelune/optimisations-theme-wordpress,2014,05">en 4 points, on peut optimiser un site pour le SEO.</a></p>\n<h3>Une favicon bien faite</h3>\n<p>WPChannel montre comment <a href="http://wpchannel.com/favicon-by-realfavicongenerator-icone-wordpress/">faire une favicon</a> digne de ce nom pour votre site sous WordPress.</p>\n<h3>Construire un job-board</h3>\n<p>WordPress peut d&eacute;sormais se transformer en un v&eacute;ritable job board gr&acirc;ce &agrave; cette extension : <a href="http://www.poststat.us/building-new-wp-job-manager-website/">WP Job Manager</a>.</p>\n<h3>Une communaut&eacute; de traducteurs</h3>\n<p>WordPress &eacute;tant international, il est logique de voir apparaitre une <a href="http://wp-translations.org/lets-create-community-together/">communaut&eacute; de traducteurs</a> (en).</p>\n<h3>Bien choisir un h&eacute;bergement</h3>\n<p>Quelques <a href="http://wpformation.com/choisir-hebergement-wordpress">conseils de Fabrice</a> pour choisir son h&eacute;bergement pour WordPress.</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5ZwQnV00lFY:YXr4PUWFirU:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5ZwQnV00lFY:YXr4PUWFirU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5ZwQnV00lFY:YXr4PUWFirU:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5ZwQnV00lFY" height="1" width="1">\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"L''écho des plugins WordPress : Adjacent Archive Links";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:68:"http://www.echodesplugins.li-an.fr/plugins/adjacent-archive-links-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:68:"http://www.echodesplugins.li-an.fr/plugins/adjacent-archive-links-2/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-19T17:54:59+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:55:"<div>Une navigation pour les archives temporelles</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:91:"Lumière de Lune : Quatre optimisations simples pour booster le SEO de votre site WordPress";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:76:"http://www.lumieredelune.com/encrelune/optimisations-theme-wordpress,2014,05";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:76:"http://www.lumieredelune.com/encrelune/optimisations-theme-wordpress,2014,05";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-15T11:36:26+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:10:"Marie-Aude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:423:"<div>Pour un site bien optimis&eacute;, pas de secret, il faut mettre les mains dans le moteur ! A force d&rsquo;optimiser des th&egrave;mes WordPress, certaines choses reviennent tr&egrave;s souvent. Voici une liste de quelques optimisations simples, qui ne vous demandent pas de grosses connaissances en PHP. D&rsquo;autres vont &ecirc;tre nettement plus complexes&hellip; Important : travaillez toujours [&hellip;]</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:107:"WordPress Channel : Favicon by RealFaviconGenerator, une icône bien faite dans un blog WordPress bien fait";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:69:"http://wpchannel.com/favicon-by-realfavicongenerator-icone-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:69:"http://wpchannel.com/favicon-by-realfavicongenerator-icone-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-14T18:11:04+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:16:"Philippe Bernard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:860:"<div>\n<p>Il est loin le temps o&ugrave; une simple ic&ocirc;ne en 16&times;16 suffisait &agrave; remplir le r&ocirc;le de favicon. Avec de plus hautes r&eacute;solutions et surtout de nouvelles plateformes mobiles, cette image s&rsquo;est diversifi&eacute;e. Un pr&eacute;c&eacute;dent article d&eacute;taillait les nouvelles formes et aspects du favicon et proposait une solution: RealFaviconGenerator. Ce site permet de concevoir un&hellip;</p>\n<p><a rel="nofollow" href="http://wpchannel.com/author/philippe/">Philippe Bernard</a> - <a rel="nofollow" href="http://wpchannel.com/">WordPress Channel - Tutoriels, th&egrave;mes &amp; plugins WordPress</a> - <a rel="nofollow" href="http://wpchannel.com/favicon-by-realfavicongenerator-icone-wordpress/">Favicon by RealFaviconGenerator, une ic&ocirc;ne bien faite dans un blog WordPress bien fait</a></p>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"WordPress Francophone : L’Hebdo WordPress n°228 : Android – BuddyPress – Scrap";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/wpCN_XlMPRo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/wpCN_XlMPRo/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-13T07:49:29+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:7840:"<div>\n<h3>WordPress pour Android 2.8</h3>\n<p>L&rsquo;application <a href="https://android.wordpress.org/2014/05/01/wordpress-for-android-2-8/">WordPress pour Android</a> arrive en version 2.8 (en). A noter que la <a href="https://play.google.com/store/apps/details?id=org.wordpress.android">mise &agrave; jour 2.8.1</a> est sortie.</p>\n<h3>BuddyPress 2.0.1</h3>\n<p>La <a href="http://buddypress.org/2014/05/buddypress-2-0-1/">premi&egrave;re mise &agrave; jour mineur de BuddyPress 2.0</a> (en) est arriv&eacute;e.</p>\n<h3>Les fichiers attach&eacute;s dans BuddyPress</h3>\n<p>iMath pr&eacute;sente les <a href="https://bpdevel.wordpress.com/2014/05/08/attachments-in-buddypress/">fichiers attach&eacute;s&nbsp; </a>(en) dans BuddyPress.</p>\n<h3>Revenons sur 5 ans de BuddyPress</h3>\n<p>L&rsquo;<a href="http://teleogistic.net/2014/05/five-years-of-buddypress/">histoire de BuddyPress depuis 5 ans</a> (en).</p>\n<h3>Alerte au scrap sur les sites WordPress</h3>\n<p>Cette semaine de tr&egrave;s nombreux sites utilisant WordPress se sont fait &laquo;&nbsp;scrapper&nbsp;&raquo;. <a href="http://wpformation.com/scrapping-masse-sites-wordpress/">Explications par Fabrice</a>.</p>\n<h3>Plus de 25 extensions &agrave; avoir en 2014</h3>\n<p>Voici une s&eacute;lection des<a href="http://premium.wpmudev.org/blog/25-must-have-wordpress-plugins-for-2014/"> 25 extensions</a> (en) &agrave; ne pas rater en 2014.</p>\n<h3>Une extension qui fait vos badges de WordCamp</h3>\n<p>En marge du WordCamp de Miami, un passionn&eacute; a r&eacute;alis&eacute; une extension qui permet de cr&eacute;er <a href="http://wptavern.com/would-anyone-be-interested-in-a-wordcamp-badges-plugin">son propre badge du WordCamp Miami (en)</a>. Il r&eacute;fl&eacute;chi &agrave; la possibilit&eacute; de faire en sorte de g&eacute;n&eacute;raliser l&rsquo;extension pour n&rsquo;mporte quel WordCamp.</p>\n<h3>D&eacute;couvrez BuddyPress</h3>\n<p><a href="http://wpchannel.com/re-decouvres-buddypress/">Si vous ne connaissez pas encore BuddyPress</a>, Mathieu vous explique tout sur WPChannel.</p>\n<h3>Une interview de Daniel Roch</h3>\n<p>Si comme moi vous aviez rat&eacute; <a href="https://www.youtube.com/watch?v=_y9YXhAVec0">cette interview de Daniel Roch</a>, c&rsquo;est le moment de vous rattraper.</p>\n<h3>WP-Rocket s&rsquo;internationalise</h3>\n<p>L&rsquo;extension WP Rocket devient internationale, <a href="http://wptavern.com/wp-rocket-launches-commercial-caching-plugin-for-wordpress">WPTavern s&rsquo;en fait l&rsquo;&eacute;cho</a> (en).</p>\n<h3>L&rsquo;API de TinyMCE</h3>\n<p>La version de 3.9 int&egrave;gre beaucoup de nouveaut&eacute;s et notamment dans TinyMCE. Son int&eacute;gration dans le core de WordPress apporte une nouvelle API&hellip;<a href="http://www.wpexplorer.com/wordpress-tinymce-tweaks/"> autorisant de nombreuses possibilit&eacute;s</a> (en). Et voici un <a href="http://www.tweetpress.fr/faqs/comment-ajouter-icone-bouton-tinymce-wordpress-3-9/">exemple de ce qu&rsquo;on peut faire</a>.</p>\n<h3>Les jetons de s&eacute;curit&eacute;</h3>\n<p>Julio pr&eacute;sente la question des <a href="http://boiteaweb.fr/jetons-securite-petit-plus-dont-vous-avez-besoin-8070.html">jetons de s&eacute;curit&eacute;</a> et l&rsquo;applique &agrave; WordPress.</p>\n<h3>L&rsquo;effet FancyBox et WordPress</h3>\n<p>WPChannel explique <a href="http://wpchannel.com/fancybox-wordpress-galerie-image/">comment utiliser FancyBox sur un site WordPress</a>.</p>\n<h3>Organiser les types de contenus et les librairies</h3>\n<p>Voici <a href="http://tommcfarlin.com/organizing-wordpress-content-types-libraries/">une solution pr&eacute;sent&eacute;e</a> par Tom McFarlin (en).</p>\n<h3>Automattic l&egrave;ve 160 millions de dollars</h3>\n<p>Matt annonce qu&rsquo;Automattic<a href="http://ma.tt/2014/05/new-funding-for-automattic/"> l&egrave;ve 160 millions de dollars (en)</a>&hellip; et explique les <a href="http://techcrunch.com/2014/05/07/automattic-ceo-matt-mullenweg-talks-funding-investing-and-the-future-of-wordpress/">investissements et l&rsquo;avenir de WordPress</a> (en).</p>\n<h3>Prot&eacute;ger son wp-config</h3>\n<p>Si vous souhaitez prot&eacute;ger votre fichier wp-config.php via le fichier .htaccess<a href="http://wp-snippets.com/protect-wp-config-php-with-htaccess/"> voici comment proc&eacute;der (en).</a></p>\n<h3>Une table ronde sur les h&eacute;bergeurs de WordPress</h3>\n<p><a href="http://wpbacon.com/podcast/wordpress-hosting-panel/">WPBacon </a>a organis&eacute; une <a href="http://wptavern.com/highlights-of-the-wpbacon-wordpress-webhosting-roundtable">table ronde pour parler h&eacute;bergements</a>. (en)</p>\n<h3>Matt Mullenweg est un homme dangereux</h3>\n<p>C&rsquo;est le titre accrocheur de cet article pour montrer la &laquo;&nbsp;peur&nbsp;&raquo; du gouvernement am&eacute;ricain envers l&rsquo;open source en g&eacute;n&eacute;ral et WordPress en particulier. <a href="http://joeflood.com/2014/05/07/matt/">Angle de vue d&eacute;cal&eacute;&nbsp; </a>(en) pour montrer le ridicule d&rsquo;une situation loin d&rsquo;&ecirc;tre erron&eacute;e.</p>\n<h3>Cr&eacute;ation d&rsquo;une page de maintenance personnalis&eacute;e</h3>\n<p>La page de maintenance par d&eacute;faut de WordPress est triste &agrave; souhait ! <a href="http://www.gregoirenoyelle.com/wordpress-creation-page-maintenance-personnalisee/">Personnalisez-la gr&acirc;ce &agrave; Gr&eacute;goire</a>.</p>\n<h3>WordPress n&rsquo;est pas un CMS</h3>\n<p>Mmmmhhh, <a href="http://www.screenfeed.fr/blog/wordpress-pas-cms-02223/">encore de la pol&eacute;mique dans l&rsquo;air</a>&hellip; mais l&agrave;, l&rsquo;offensive est argument&eacute;e&hellip;</p>\n<h3>&Eacute;volution du nombre d&rsquo;extensions</h3>\n<p>Julio constate l&rsquo;<a href="http://boiteaweb.fr/combien-plugins-wordpress-8075.html">&eacute;volution du nombre d&rsquo;extensions dans le r&eacute;pertoire officiel</a>.</p>\n<h3>Des s&eacute;ries d&rsquo;articles en liste d&eacute;roulante</h3>\n<p>C&rsquo;est l&rsquo;extension <a href="http://www.echodesplugins.li-an.fr/plugins/wp-post-series/">WP Post Series</a> qui le permet.</p>\n<h3>60 th&egrave;mes typ&eacute;s business pour 2014</h3>\n<p>WPMUDEV pr&eacute;sente une liste de <a href="http://premium.wpmudev.org/blog/free-responsive-wordpress-business-themes/">60 th&egrave;mes gratuits</a> (en) typ&eacute;s business et sortis en 2014.</p>\n<h3>Une extension peut disparaitre du r&eacute;pertoire officiel ?</h3>\n<p>Marie-Aude explique les raisons de la <a href="http://www.lumieredelune.com/encrelune/disparition-plugin,2014,05">disparition d&rsquo;une extension du r&eacute;pertoire officiel </a>et les cons&eacute;quences &agrave; en tirer.</p>\n<h3>Lev&eacute; de rideau sur les nouveaux th&egrave;mes ElegantThemes</h3>\n<p>Rodrigue pr&eacute;sente ce que va &ecirc;tre l<a href="http://www.cree1site.com/eleganttheme-2/">&lsquo;avenir des th&egrave;mes ElegantThemes</a>.</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=wpCN_XlMPRo:xJLuWzsYzXw:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=wpCN_XlMPRo:xJLuWzsYzXw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=wpCN_XlMPRo:xJLuWzsYzXw:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/wpCN_XlMPRo" height="1" width="1">\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"Cree1site : Elegantthemes : Levé de rideau sur les nouveaux thèmes";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.cree1site.com/eleganttheme-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:40:"http://www.cree1site.com/eleganttheme-2/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-12T23:47:58+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:8:"Rodrigue";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:418:"<div>\n<p>Vu sur le site de <a href="http://www.cree1site.com/">l''agence web</a> Cree1site.com</p>\n<p>Nick Roach, le fondateur et designer de Elegantthemes annonce l&rsquo;arriv&eacute;e d&rsquo;un grand moment</p>\n<p>Cet article <a rel="nofollow" href="http://www.cree1site.com/eleganttheme-2/">Elegantthemes : Lev&eacute; de rideau sur les nouveaux th&egrave;mes</a> est apparu en premier sur Cree1site.com</p>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"L''écho des plugins WordPress : WP Auto Featured Image";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-auto-featured-image/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:66:"http://www.echodesplugins.li-an.fr/plugins/wp-auto-featured-image/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-12T17:06:27+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:74:"<div>Choisir une image par d&eacute;faut comme image &agrave; la une</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WP Formation : Le Business généré par WordPress";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:42:"http://wpformation.com/business-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:42:"http://wpformation.com/business-wordpress/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-12T11:45:00+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"WPFormation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:1376:"<div>\n<p><img width="300" height="107" src="http://wpformation.com/wp-content/uploads/2014/05/businness-wordpress-300x107.jpg" class="attachment-medium wp-post-image" alt="businness-wordpress" style="float: right; margin:0 0 10px 10px;">WordPress est aujourd&rsquo;hui le syst&egrave;me de gestion de contenu (CMS) incontournable pour toute personne souhaitant cr&eacute;er facilement et rapidement un site internet. Le logiciel est open source et accessible gratuitement par n&rsquo;importe quelle personne poss&eacute;dant une connexion internet.&nbsp;Pourtant, l&rsquo;entreprise du cr&eacute;ateur du logiciel, Automattic, est florissante et a en son sein plus de 250 employ&eacute;s. ...</p>\n<hr>\n<a rel="nofollow" href="http://wpformation.com/business-wordpress/">Le Business g&eacute;n&eacute;r&eacute; par WordPress</a> est un article de <a title="Formation Internet WordPress Ecommerce" href="http://wpformation.com/">WP Formation</a><br><a href="http://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="http://wpformation.com/formation-woocommerce-e-commerce/">eCommerce</a> - Retrouvez-moi sur <a title="Ajouter sur Facebook" href="http://www.facebook.com/Wibeweb">Facebook</a> - <a title="Suivre sur Twitter" href="http://twitter.com/wpformation">Twitter</a> - <a href="http://plus.google.com/+FabriceDucarme/">Google+</a><br><hr>\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"Lumière de Lune : Pourquoi un plugin peut disparaître de WordPress.org ?";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.lumieredelune.com/encrelune/disparition-plugin,2014,05";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:65:"http://www.lumieredelune.com/encrelune/disparition-plugin,2014,05";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-10T19:09:37+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:10:"Marie-Aude";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:459:"<div>La disparition soudaine d&rsquo;un plugin du r&eacute;pertoire des extensions sur WordPress.org n&rsquo;est jamais une information &agrave; prendre &agrave; la l&eacute;g&egrave;re, et quand cela arrive, d&egrave;s qu&rsquo;on s&rsquo;en aper&ccedil;oit, il faut essayer de comprendre ce qui se passe, pour d&eacute;cider si, oui ou non, ce plugin est &agrave; conserver. En r&eacute;sum&eacute;, un plugin disparait du r&eacute;pertoire [&hellip;]</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"L''écho des plugins WordPress : WP Smart Pagination";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:63:"http://www.echodesplugins.li-an.fr/plugins/wp-smart-pagination/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:63:"http://www.echodesplugins.li-an.fr/plugins/wp-smart-pagination/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-10T11:57:40+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:5:"Li-An";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:74:"<div>Une pagination des billets qui permet de choisir sa destination</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:68:"\n        \n        \n        \n        \n        \n        \n        \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Francophone : WordPress 3.9.1";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KpsKznAONCY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:9:"alternate";s:4:"href";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KpsKznAONCY/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-09T18:36:36+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:7:"Benoît";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:5009:"<div>\n<p>Trois semaines apr&egrave;s le lancement de <a title="Sortie de WordPress 3.9" href="http://www.wordpress-fr.net/2014/04/17/sortie-de-wordpress-3-9/">WordPress 3.9</a>, et avec plus de 9 millions de t&eacute;l&eacute;chargements &agrave; son actif, nous sommes heureux de vous annoncer que WordPress 3.9.1 est disponible.</p>\n<p>Cette version de maintenance corrige 34 bugs pr&eacute;sents dans la 3.9, parmi lesquels de nombreuses corrections concernant les r&eacute;seaux multisites, la personnalisation des widgets lors de la pr&eacute;visualisation des th&egrave;mes et la mise &agrave; jour de l&rsquo;&eacute;diteur visuel. Nous avons aussi effectu&eacute; quelques am&eacute;liorations sur la nouvelle fonction de liste de lecture audio/vid&eacute;o et&nbsp;fait quelques retouches pour am&eacute;liorer les performances. Pour voir la liste compl&egrave;te des changements vous pouvez consulter la <a href="https://core.trac.wordpress.org/query?milestone=3.9.1">liste des tickets (en)</a> et le <a href="https://core.trac.wordpress.org/log/branches/3.9?rev=28353&amp;stop_rev=28154">journal des changements (en)</a>.</p>\n<p>Si vous faites parties des millions d&rsquo;utilisateurs de WordPress 3.9, avons d&eacute;ploy&eacute; la mise &agrave; jour en arri&egrave;re-plan vers la 3.9.1 &ndash; Pour les sites qui le <a href="http://wordpress.org/plugins/background-update-tester/">supportent</a> (en), &eacute;videmment !</p>\n<p><a href="http://wordpress.org/download/">Dans tous les cas vous pouvez t&eacute;l&eacute;chargez WordPress 3.9.1</a> ou le faire manuellement depuis votre <strong>Tableau de bord &rarr; Mise &agrave; jour </strong>et simplement cliquer &ldquo;Mettre &agrave; jour maintenant.&rdquo;</p>\n<p>Merci beaucoup &agrave; toutes ces personnes incroyables qui ont particip&eacute; au d&eacute;veloppement de WordPress 3.9.1 :&nbsp;<a href="http://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="http://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="http://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="http://profiles.wordpress.org/rzen">Brian Richards</a>, <a href="http://profiles.wordpress.org/ehg">Chris Blower</a>, <a href="http://profiles.wordpress.org/jupiterwise">Corey McKrill</a>, <a href="http://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="http://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="http://profiles.wordpress.org/feedmeastraycat">feedmeastraycat</a>, <a href="http://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="http://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="http://profiles.wordpress.org/imath">imath</a>, <a href="http://profiles.wordpress.org/avryl">Janneke Van Dorpe</a>, <a href="http://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="http://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="http://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="http://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="http://profiles.wordpress.org/m_i_n">m_i_n</a>, <a href="http://profiles.wordpress.org/clorith">Marius Jensen</a>, <a href="http://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="http://profiles.wordpress.org/dimadin">Milan Dini&#263;</a>, <a href="http://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="http://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="http://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="http://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, et <a href="http://profiles.wordpress.org/westonruter">Weston Ruter</a>.</p>\n<p><em><strong>NB</strong> : Cet article est une adaptation en fran&ccedil;ais de l&rsquo;article original publi&eacute; sur <a href="http://wordpress.org/news/2014/05/wordpress-3-9-1/">wordpress.org</a> (en).</em></p>\n<p><em><strong>NB2</strong> </em>:<em> La version fran&ccedil;aise est disponible <a href="http://fr.wordpress.org/">ici</a>.</em></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KpsKznAONCY:cCR6KkyEM2I:V_sGLiPBpWU" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KpsKznAONCY:cCR6KkyEM2I:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KpsKznAONCY:cCR6KkyEM2I:gIN9vFwOqvQ" border="0"></a>\n</div>\n<img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KpsKznAONCY" height="1" width="1">\n</div>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:26:"wordpressfrancophoneplanet";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}s:4:"type";i:512;s:7:"headers";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"fqoU3N1gtOkWeApCvg/hW5k7LfI";s:13:"last-modified";s:29:"Thu, 29 May 2014 12:48:58 GMT";s:4:"date";s:29:"Thu, 29 May 2014 13:02:12 GMT";s:7:"expires";s:29:"Thu, 29 May 2014 13:02:12 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:18:"alternate-protocol";s:7:"80:quic";}s:5:"build";s:14:"20140502090428";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1250, '_transient_timeout_feed_mod_2fb9572e3d6a42f680e36370936a57ae', '1401411732', 'no'),
(1251, '_transient_feed_mod_2fb9572e3d6a42f680e36370936a57ae', '1401368532', 'no'),
(1252, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1401411733', 'no'),
(1253, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2014 12:38:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Arnee";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the WordPress SEO plugin by Yoast.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 10 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"http://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"MailPoet Newsletters";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wysija-newsletters/#post-32629";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Dec 2011 17:09:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"32629@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:94:"Send newsletters, post notifications or autoresponders from WordPress easily, and beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"MailPoet Staff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"The easiest, most effective way to secure WordPress in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"http://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5468@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"Create a slick mobile WordPress website with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"UpdraftPlus - WordPress Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"http://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy and complete backups + restoration. Manual or automated backups (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:45:"http://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 29 May 2014 13:02:13 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:7:"expires";s:29:"Thu, 29 May 2014 13:13:15 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Thu, 29 May 2014 12:38:15 +0000";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20140502090428";}', 'no'),
(1254, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1401411734', 'no'),
(1255, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1401368534', 'no'),
(1770, '_site_transient_timeout_theme_roots', '1402128503', 'yes'),
(1771, '_site_transient_theme_roots', 'a:4:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:7:"whatsup";s:7:"/themes";}', 'yes'),
(1773, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1402126705;s:7:"checked";a:4:{s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";s:7:"whatsup";s:3:"1.0";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.1.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentythirteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentythirteen.1.2.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.4";s:3:"url";s:41:"https://wordpress.org/themes/twentytwelve";s:7:"package";s:58:"https://wordpress.org/themes/download/twentytwelve.1.4.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(1778, 'rewrite_rules', 'a:111:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:9:"agenda/?$";s:26:"index.php?post_type=agenda";s:39:"agenda/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=agenda&feed=$matches[1]";s:34:"agenda/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=agenda&feed=$matches[1]";s:26:"agenda/page/([0-9]{1,})/?$";s:44:"index.php?post_type=agenda&paged=$matches[1]";s:11:"lookbook/?$";s:28:"index.php?post_type=lookbook";s:41:"lookbook/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=lookbook&feed=$matches[1]";s:36:"lookbook/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=lookbook&feed=$matches[1]";s:28:"lookbook/page/([0-9]{1,})/?$";s:46:"index.php?post_type=lookbook&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"agenda/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"agenda/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"agenda/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"agenda/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"agenda/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"agenda/([^/]+)/trackback/?$";s:33:"index.php?agenda=$matches[1]&tb=1";s:47:"agenda/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?agenda=$matches[1]&feed=$matches[2]";s:42:"agenda/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?agenda=$matches[1]&feed=$matches[2]";s:35:"agenda/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?agenda=$matches[1]&paged=$matches[2]";s:42:"agenda/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?agenda=$matches[1]&cpage=$matches[2]";s:27:"agenda/([^/]+)(/[0-9]+)?/?$";s:45:"index.php?agenda=$matches[1]&page=$matches[2]";s:23:"agenda/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"agenda/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"agenda/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"agenda/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"agenda/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"lookbook/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"lookbook/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"lookbook/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"lookbook/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"lookbook/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"lookbook/([^/]+)/trackback/?$";s:35:"index.php?lookbook=$matches[1]&tb=1";s:49:"lookbook/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?lookbook=$matches[1]&feed=$matches[2]";s:44:"lookbook/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?lookbook=$matches[1]&feed=$matches[2]";s:37:"lookbook/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?lookbook=$matches[1]&paged=$matches[2]";s:44:"lookbook/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?lookbook=$matches[1]&cpage=$matches[2]";s:29:"lookbook/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?lookbook=$matches[1]&page=$matches[2]";s:25:"lookbook/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"lookbook/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"lookbook/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"lookbook/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"lookbook/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=35&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1437 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 5, '_edit_lock', '1397031370:2'),
(3, 5, '_edit_last', '2'),
(4, 5, 'field_5345019659b44', 'a:14:{s:3:"key";s:19:"field_5345019659b44";s:5:"label";s:5:"texte";s:4:"name";s:5:"texte";s:4:"type";s:15:"qtranslate_text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(5, 5, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(6, 5, 'position', 'normal'),
(7, 5, 'layout', 'no_box'),
(8, 5, 'hide_on_screen', ''),
(9, 6, '_edit_lock', '1397120888:3'),
(10, 6, '_edit_last', '3'),
(12, 7, 'texte', 'maison'),
(13, 7, '_texte', 'field_5345019659b44'),
(14, 6, 'texte', 'maison'),
(15, 6, '_texte', 'field_5345019659b44'),
(96, 18, '_dw_featured_post', ''),
(97, 18, '_menu_item_type', 'taxonomy'),
(98, 18, '_menu_item_menu_item_parent', '0'),
(99, 18, '_menu_item_object_id', '5'),
(100, 18, '_menu_item_object', 'category'),
(101, 18, '_menu_item_target', ''),
(102, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 18, '_menu_item_xfn', ''),
(104, 18, '_menu_item_url', ''),
(106, 19, '_dw_featured_post', ''),
(107, 19, '_menu_item_type', 'taxonomy'),
(108, 19, '_menu_item_menu_item_parent', '0'),
(109, 19, '_menu_item_object_id', '6'),
(110, 19, '_menu_item_object', 'category'),
(111, 19, '_menu_item_target', ''),
(112, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 19, '_menu_item_xfn', ''),
(114, 19, '_menu_item_url', ''),
(116, 20, '_dw_featured_post', ''),
(117, 20, '_menu_item_type', 'taxonomy'),
(118, 20, '_menu_item_menu_item_parent', '0'),
(119, 20, '_menu_item_object_id', '7'),
(120, 20, '_menu_item_object', 'category'),
(121, 20, '_menu_item_target', ''),
(122, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 20, '_menu_item_xfn', ''),
(124, 20, '_menu_item_url', ''),
(126, 21, '_dw_featured_post', ''),
(127, 21, '_menu_item_type', 'taxonomy'),
(128, 21, '_menu_item_menu_item_parent', '0'),
(129, 21, '_menu_item_object_id', '4'),
(130, 21, '_menu_item_object', 'category'),
(131, 21, '_menu_item_target', ''),
(132, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 21, '_menu_item_xfn', ''),
(134, 21, '_menu_item_url', ''),
(136, 22, '_dw_featured_post', ''),
(137, 22, '_menu_item_type', 'taxonomy'),
(138, 22, '_menu_item_menu_item_parent', '0'),
(139, 22, '_menu_item_object_id', '3'),
(140, 22, '_menu_item_object', 'category'),
(141, 22, '_menu_item_target', ''),
(142, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 22, '_menu_item_xfn', ''),
(144, 22, '_menu_item_url', ''),
(149, 25, '_wp_attached_file', '2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png'),
(150, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:297;s:6:"height";i:297;s:4:"file";s:55:"2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.32.13-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"agenda-thumb";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.32.13-180x110.png";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(153, 6, '_dw_featured_post', ''),
(154, 27, '_dw_featured_post', '1'),
(155, 27, '_edit_last', '3'),
(156, 27, '_edit_lock', '1397120532:3'),
(160, 29, '_dw_featured_post', ''),
(161, 29, '_edit_last', '3'),
(162, 29, '_edit_lock', '1397120508:3'),
(163, 30, '_wp_attached_file', '2014/04/Capture-d’écran-2014-04-09-à-10.36.26.png'),
(164, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:593;s:6:"height";i:485;s:4:"file";s:55:"2014/04/Capture-d’écran-2014-04-09-à-10.36.26.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.36.26-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.36.26-300x245.png";s:5:"width";i:300;s:6:"height";i:245;s:9:"mime-type";s:9:"image/png";}s:12:"agenda-thumb";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.36.26-180x110.png";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(165, 31, '_wp_attached_file', '2014/04/Capture-d’écran-2014-04-09-à-10.36.15.png'),
(166, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:595;s:6:"height";i:487;s:4:"file";s:55:"2014/04/Capture-d’écran-2014-04-09-à-10.36.15.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.36.15-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.36.15-300x245.png";s:5:"width";i:300;s:6:"height";i:245;s:9:"mime-type";s:9:"image/png";}s:12:"agenda-thumb";a:4:{s:4:"file";s:55:"Capture-d’écran-2014-04-09-à-10.36.15-180x110.png";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(171, 35, '_dw_featured_post', ''),
(172, 35, '_edit_last', '1'),
(173, 35, '_edit_lock', '1397120332:3'),
(174, 35, '_wp_page_template', 'custom_home.php'),
(175, 35, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(176, 37, '_wp_attached_file', '2014/04/logo.png'),
(177, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:376;s:6:"height";i:70;s:4:"file";s:16:"2014/04/logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x70.png";s:5:"width";i:150;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x55.png";s:5:"width";i:300;s:6:"height";i:55;s:9:"mime-type";s:9:"image/png";}s:12:"agenda-thumb";a:4:{s:4:"file";s:15:"logo-180x70.png";s:5:"width";i:180;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(178, 38, '_wp_attached_file', '2014/04/logo1.png'),
(179, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:391;s:6:"height";i:86;s:4:"file";s:17:"2014/04/logo1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo1-150x86.png";s:5:"width";i:150;s:6:"height";i:86;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"logo1-300x65.png";s:5:"width";i:300;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:12:"agenda-thumb";a:4:{s:4:"file";s:16:"logo1-180x86.png";s:5:"width";i:180;s:6:"height";i:86;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(180, 39, '_dw_featured_post', ''),
(181, 39, '_edit_last', '3'),
(182, 39, '_edit_lock', '1397120592:3'),
(183, 40, '_wp_attached_file', '2014/04/technics2.jpg'),
(184, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:21:"2014/04/technics2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"technics2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"technics2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:21:"technics2-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:21:"technics2-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"technics2-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(185, 41, '_wp_attached_file', '2014/04/technics1.jpg'),
(186, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:21:"2014/04/technics1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"technics1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"technics1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:21:"technics1-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:21:"technics1-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"technics1-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(187, 42, '_wp_attached_file', '2014/04/technics.jpg'),
(188, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:20:"2014/04/technics.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"technics-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"technics-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:20:"technics-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:20:"technics-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"technics-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(191, 44, '_dw_featured_post', '1'),
(192, 44, '_edit_last', '3'),
(193, 44, '_edit_lock', '1397120447:3'),
(196, 47, '_dw_featured_post', ''),
(197, 47, '_edit_lock', '1397121703:3'),
(198, 47, '_edit_last', '3'),
(200, 48, '_dw_featured_post', ''),
(201, 48, '_menu_item_type', 'taxonomy'),
(202, 48, '_menu_item_menu_item_parent', '0'),
(203, 48, '_menu_item_object_id', '11'),
(204, 48, '_menu_item_object', 'category'),
(205, 48, '_menu_item_target', ''),
(206, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 48, '_menu_item_xfn', ''),
(208, 48, '_menu_item_url', ''),
(213, 53, '_dw_featured_post', ''),
(214, 53, '_edit_lock', '1399845383:1'),
(215, 53, '_edit_last', '1'),
(216, 53, 'field_53451b063c7bf', 'a:13:{s:3:"key";s:19:"field_53451b063c7bf";s:5:"label";s:6:"Slider";s:4:"name";s:6:"slider";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:1:{i:0;a:13:{s:3:"key";s:19:"field_53451bc693b30";s:5:"label";s:7:"Article";s:4:"name";s:7:"article";s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:9:"post_type";a:1:{i:0;s:4:"post";}s:8:"taxonomy";a:6:{i:0;s:10:"category:5";i:1;s:10:"category:6";i:2;s:10:"category:7";i:3;s:10:"category:4";i:4;s:10:"category:3";i:5;s:11:"category:11";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:2:"10";s:6:"layout";s:5:"table";s:12:"button_label";s:17:"Ajouter un slider";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(218, 53, 'position', 'normal'),
(219, 53, 'layout', 'default'),
(220, 53, 'hide_on_screen', ''),
(221, 53, 'rule', 'a:5:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:11:"acf-options";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(227, 40, '_edit_lock', '1397039566:2'),
(228, 40, '_edit_last', '2'),
(237, 60, '_dw_featured_post', ''),
(238, 60, '_edit_lock', '1399046666:1'),
(239, 60, '_edit_last', '1'),
(240, 60, 'field_53456d9ccaaad', 'a:11:{s:3:"key";s:19:"field_53456d9ccaaad";s:5:"label";s:4:"Date";s:4:"name";s:4:"date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:20:"Date de l''évenement";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(241, 60, 'field_53456da9caaae', 'a:14:{s:3:"key";s:19:"field_53456da9caaae";s:5:"label";s:5:"Titre";s:4:"name";s:5:"titre";s:4:"type";s:4:"text";s:12:"instructions";s:22:"Titre de l''événement";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(242, 60, 'field_53456db9caaaf', 'a:11:{s:3:"key";s:19:"field_53456db9caaaf";s:5:"label";s:11:"Description";s:4:"name";s:11:"description";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:28:"Description de l''événement";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(243, 60, 'field_53456dffcaab0', 'a:12:{s:3:"key";s:19:"field_53456dffcaab0";s:5:"label";s:7:"Adresse";s:4:"name";s:7:"adresse";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(244, 60, 'field_53456e0dcaab1', 'a:14:{s:3:"key";s:19:"field_53456e0dcaab1";s:5:"label";s:22:"Lien vers réservation";s:4:"name";s:21:"lien_vers_reservation";s:4:"type";s:4:"text";s:12:"instructions";s:20:"url de l''événement";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(246, 60, 'position', 'normal'),
(247, 60, 'layout', 'default'),
(248, 60, 'hide_on_screen', 'a:3:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:4:"slug";}'),
(255, 62, '_dw_featured_post', ''),
(256, 62, '_edit_lock', '1399047444:1'),
(257, 62, '_edit_last', '1'),
(258, 62, 'date', '20140423'),
(259, 62, '_date', 'field_53456d9ccaaad'),
(260, 62, 'titre', 'Conférence avec Descoutures'),
(261, 62, '_titre', 'field_53456da9caaae'),
(262, 62, 'description', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.'),
(263, 62, '_description', 'field_53456db9caaaf'),
(264, 62, 'lieu', '19 rue lamartine 94800 villejuif'),
(265, 62, '_lieu', 'field_5345752e7eb5d'),
(266, 62, 'lien_vers_reservation', 'http://ville-villejuif.fr'),
(267, 62, '_lien_vers_reservation', 'field_53456e0dcaab1'),
(268, 63, '_dw_featured_post', ''),
(269, 63, '_edit_last', '1'),
(270, 63, '_edit_lock', '1399047380:1'),
(271, 63, 'date', '20140601'),
(272, 63, '_date', 'field_53456d9ccaaad'),
(273, 63, 'titre', 'RDV Projet ESGI'),
(274, 63, '_titre', 'field_53456da9caaae'),
(275, 63, 'description', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.'),
(276, 63, '_description', 'field_53456db9caaaf'),
(277, 63, 'lieu', 'rue reuilly diderot 75012 Paris'),
(278, 63, '_lieu', 'field_5345752e7eb5d'),
(279, 63, 'lien_vers_reservation', 'http://esgi.fr'),
(280, 63, '_lien_vers_reservation', 'field_53456e0dcaab1'),
(282, 60, 'field_5345752e7eb5d', 'a:14:{s:3:"key";s:19:"field_5345752e7eb5d";s:5:"label";s:4:"Lieu";s:4:"name";s:4:"lieu";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(284, 63, 'adresse', 'a:3:{s:7:"address";s:0:"";s:3:"lat";s:0:"";s:3:"lng";s:0:"";}'),
(285, 63, '_adresse', 'field_53456dffcaab0'),
(288, 63, '_wp_old_slug', 'test2'),
(291, 62, 'adresse', 'a:3:{s:7:"address";s:41:"19 Rue Lamartine, 94800 Villejuif, France";s:3:"lat";s:10:"48.7814524";s:3:"lng";s:18:"2.3638906999999563";}'),
(292, 62, '_adresse', 'field_53456dffcaab0'),
(293, 68, '_wp_attached_file', '2014/04/Irina_Shayk-SI_2011.jpg'),
(294, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:785;s:4:"file";s:31:"2014/04/Irina_Shayk-SI_2011.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Irina_Shayk-SI_2011-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Irina_Shayk-SI_2011-210x300.jpg";s:5:"width";i:210;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:31:"Irina_Shayk-SI_2011-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:31:"Irina_Shayk-SI_2011-550x598.jpg";s:5:"width";i:550;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"Irina_Shayk-SI_2011-418x598.jpg";s:5:"width";i:418;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(295, 39, '_thumbnail_id', '68'),
(301, 74, '_wp_attached_file', '2014/04/sport.jpg'),
(302, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1691;s:6:"height";i:1123;s:4:"file";s:17:"2014/04/sport.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"sport-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"sport-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"sport-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:17:"sport-600x398.jpg";s:5:"width";i:600;s:6:"height";i:398;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:17:"sport-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:17:"sport-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"sport-598x397.jpg";s:5:"width";i:598;s:6:"height";i:397;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:9;s:6:"credit";s:18:"Yuganov Konstantin";s:6:"camera";s:10:"NIKON D300";s:7:"caption";s:31:"a young girl going in for sport";s:17:"created_timestamp";i:1343133225;s:9:"copyright";s:28:"Konstantin Yuganov - Fotolia";s:12:"focal_length";s:2:"90";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:18:"going in for sport";}}'),
(303, 47, '_thumbnail_id', '74'),
(306, 76, '_wp_attached_file', '2014/04/rohff-pose-avec-sa-marque-distinct.jpg'),
(307, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:930;s:6:"height";i:930;s:4:"file";s:46:"2014/04/rohff-pose-avec-sa-marque-distinct.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"rohff-pose-avec-sa-marque-distinct-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"rohff-pose-avec-sa-marque-distinct-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:46:"rohff-pose-avec-sa-marque-distinct-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:46:"rohff-pose-avec-sa-marque-distinct-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:46:"rohff-pose-avec-sa-marque-distinct-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:46:"rohff-pose-avec-sa-marque-distinct-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(308, 44, '_thumbnail_id', '76'),
(310, 79, '_wp_attached_file', '2014/04/blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting.jpg'),
(311, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1063;s:6:"height";i:1503;s:4:"file";s:106:"2014/04/blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:106:"blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:106:"blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting-212x300.jpg";s:5:"width";i:212;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:107:"blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting-724x1024.jpg";s:5:"width";i:724;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:106:"blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting-600x848.jpg";s:5:"width";i:600;s:6:"height";i:848;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:106:"blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:106:"blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:106:"blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting-422x598.jpg";s:5:"width";i:422;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(312, 29, '_thumbnail_id', '79'),
(314, 82, '_wp_attached_file', '2014/04/1386304167543-the-amazing-spider-man-2-0e9210-1386304208.jpg'),
(315, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:512;s:4:"file";s:68:"2014/04/1386304167543-the-amazing-spider-man-2-0e9210-1386304208.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:68:"1386304167543-the-amazing-spider-man-2-0e9210-1386304208-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:68:"1386304167543-the-amazing-spider-man-2-0e9210-1386304208-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:68:"1386304167543-the-amazing-spider-man-2-0e9210-1386304208-600x300.jpg";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:68:"1386304167543-the-amazing-spider-man-2-0e9210-1386304208-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:68:"1386304167543-the-amazing-spider-man-2-0e9210-1386304208-598x512.jpg";s:5:"width";i:598;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:68:"1386304167543-the-amazing-spider-man-2-0e9210-1386304208-598x299.jpg";s:5:"width";i:598;s:6:"height";i:299;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(316, 27, '_thumbnail_id', '82'),
(319, 47, '_wp_old_slug', 'chunk-no-captain-chunk-all-star'),
(321, 44, '_wp_old_slug', 'test2-2'),
(323, 39, '_wp_old_slug', 'test'),
(325, 29, '_wp_old_slug', 'test-3'),
(327, 27, '_wp_old_slug', 'test2'),
(328, 84, '_wp_attached_file', '2014/04/iPhone-Plus-Noir-01.jpg'),
(329, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:31:"2014/04/iPhone-Plus-Noir-01.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"iPhone-Plus-Noir-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"iPhone-Plus-Noir-01-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"iPhone-Plus-Noir-01-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:22:"wysija-newsletters-max";a:4:{s:4:"file";s:31:"iPhone-Plus-Noir-01-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:31:"iPhone-Plus-Noir-01-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"slider-thumb";a:4:{s:4:"file";s:31:"iPhone-Plus-Noir-01-598x598.jpg";s:5:"width";i:598;s:6:"height";i:598;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"iPhone-Plus-Noir-01-598x448.jpg";s:5:"width";i:598;s:6:"height";i:448;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(330, 6, '_thumbnail_id', '84'),
(332, 6, '_wp_old_slug', 'test-acf'),
(333, 86, '_dw_featured_post', ''),
(334, 86, '_edit_last', '1'),
(335, 86, '_edit_lock', '1399046878:1'),
(336, 86, 'date', '20140430'),
(337, 86, '_date', 'field_53456d9ccaaad'),
(338, 86, 'titre', 'Concert Rohff -  Zenith de Paris'),
(339, 86, '_titre', 'field_53456da9caaae'),
(340, 86, 'description', ''),
(341, 86, '_description', 'field_53456db9caaaf'),
(342, 86, 'lieu', 'zenith de paris'),
(343, 86, '_lieu', 'field_5345752e7eb5d'),
(344, 86, 'adresse', 'a:3:{s:7:"address";s:30:"Zenith De Paris, Paris, France";s:3:"lat";s:9:"48.894217";s:3:"lng";s:18:"2.3932170000000497";}'),
(345, 86, '_adresse', 'field_53456dffcaab0'),
(346, 86, 'lien_vers_reservation', ''),
(347, 86, '_lien_vers_reservation', 'field_53456e0dcaab1'),
(348, 87, '_dw_featured_post', ''),
(349, 87, '_edit_last', '1'),
(350, 87, '_edit_lock', '1399047515:1'),
(351, 87, 'date', '20140530'),
(352, 87, '_date', 'field_53456d9ccaaad'),
(353, 87, 'titre', 'Five Villette'),
(354, 87, '_titre', 'field_53456da9caaae'),
(355, 87, 'description', ''),
(356, 87, '_description', 'field_53456db9caaaf'),
(357, 87, 'lieu', '25 Rue Sadi Carnot 93300 Aubervilliers'),
(358, 87, '_lieu', 'field_5345752e7eb5d'),
(359, 87, 'adresse', 'a:3:{s:7:"address";s:47:"25 Rue Sadi Carnot, 93300 Aubervilliers, France";s:3:"lat";s:10:"48.9070518";s:3:"lng";s:18:"2.3861870000000636";}'),
(360, 87, '_adresse', 'field_53456dffcaab0'),
(361, 87, 'lien_vers_reservation', ''),
(362, 87, '_lien_vers_reservation', 'field_53456e0dcaab1'),
(363, 88, '_dw_featured_post', ''),
(364, 88, '_edit_lock', '1399048676:1'),
(365, 88, '_edit_last', '1'),
(366, 88, 'date', '20140531'),
(367, 88, '_date', 'field_53456d9ccaaad'),
(368, 88, 'titre', 'Conférence de presse'),
(369, 88, '_titre', 'field_53456da9caaae'),
(370, 88, 'description', ''),
(371, 88, '_description', 'field_53456db9caaaf'),
(372, 88, 'lieu', '12 rue labois rouillon 75019'),
(373, 88, '_lieu', 'field_5345752e7eb5d'),
(374, 88, 'adresse', 'a:3:{s:7:"address";s:43:"12 Rue Labois-Rouillon, 75019 Paris, France";s:3:"lat";s:17:"48.89366889999999";s:3:"lng";s:17:"2.372249399999987";}'),
(375, 88, '_adresse', 'field_53456dffcaab0'),
(376, 88, 'lien_vers_reservation', ''),
(377, 88, '_lien_vers_reservation', 'field_53456e0dcaab1'),
(378, 89, '_dw_featured_post', ''),
(379, 89, '_edit_lock', '1399047488:1'),
(380, 89, '_edit_last', '1'),
(381, 89, 'date', '20140516'),
(382, 89, '_date', 'field_53456d9ccaaad'),
(383, 89, 'titre', 'Conférence Samsung'),
(384, 89, '_titre', 'field_53456da9caaae'),
(385, 89, 'description', 'Nouveau Samsung Galaxy S5'),
(386, 89, '_description', 'field_53456db9caaaf'),
(387, 89, 'lieu', '10 rue saint sébastien 75011'),
(388, 89, '_lieu', 'field_5345752e7eb5d'),
(389, 89, 'adresse', 'a:3:{s:7:"address";s:44:"10 Rue Saint-Sébastien, 75011 Paris, France";s:3:"lat";s:10:"48.8609288";s:3:"lng";s:17:"2.368549700000017";}'),
(390, 89, '_adresse', 'field_53456dffcaab0'),
(391, 89, 'lien_vers_reservation', ''),
(392, 89, '_lien_vers_reservation', 'field_53456e0dcaab1'),
(393, 90, '_dw_featured_post', ''),
(394, 90, '_edit_lock', '1399047463:1'),
(395, 90, '_edit_last', '1'),
(396, 90, 'date', '20140510'),
(397, 90, '_date', 'field_53456d9ccaaad'),
(398, 90, 'titre', 'Training Parc'),
(399, 90, '_titre', 'field_53456da9caaae'),
(400, 90, 'description', ''),
(401, 90, '_description', 'field_53456db9caaaf'),
(402, 90, 'lieu', 'Parc de la villette 75019'),
(403, 90, '_lieu', 'field_5345752e7eb5d'),
(404, 90, 'adresse', 'a:3:{s:7:"address";s:40:"Parc de la Villette, 75019 Paris, France";s:3:"lat";s:9:"48.893849";s:3:"lng";s:17:"2.390260000000012";}'),
(405, 90, '_adresse', 'field_53456dffcaab0'),
(406, 90, 'lien_vers_reservation', ''),
(407, 90, '_lien_vers_reservation', 'field_53456e0dcaab1'),
(411, 92, '_dw_featured_post', ''),
(412, 93, '_dw_featured_post', ''),
(413, 93, '_edit_lock', '1397218818:1'),
(414, 94, '_dw_featured_post', ''),
(415, 94, '_edit_lock', '1397219353:1'),
(416, 95, '_dw_featured_post', ''),
(417, 96, '_dw_featured_post', ''),
(418, 96, '_edit_lock', '1397237598:1'),
(419, 97, '_dw_featured_post', ''),
(422, 60, 'field_535e08bfbefef', 'a:11:{s:3:"key";s:19:"field_535e08bfbefef";s:5:"label";s:18:"Image illustration";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(424, 86, 'image', '76'),
(425, 86, '_image', 'field_535e08bfbefef'),
(426, 100, '_wp_attached_file', '2014/04/LOGO-ESGI.jpg'),
(427, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:370;s:6:"height";i:251;s:4:"file";s:21:"2014/04/LOGO-ESGI.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"LOGO-ESGI-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"LOGO-ESGI-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:12:"agenda-thumb";a:4:{s:4:"file";s:21:"LOGO-ESGI-180x110.jpg";s:5:"width";i:180;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:9:"logo-esgi";}}'),
(428, 63, 'image', '100'),
(429, 63, '_image', 'field_535e08bfbefef'),
(430, 44, '_count-views_all', '70'),
(431, 44, '_count-views_day-20140502', '37'),
(432, 44, '_count-views_week-201418', '37'),
(433, 44, '_count-views_month-201405', '70'),
(434, 44, '_count-views_year-2014', '70'),
(435, 90, 'image', '74'),
(436, 90, '_image', 'field_535e08bfbefef'),
(437, 60, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"agenda";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(438, 89, 'image', '84'),
(439, 89, '_image', 'field_535e08bfbefef'),
(440, 88, 'image', '68'),
(441, 88, '_image', 'field_535e08bfbefef'),
(442, 87, 'image', '74'),
(443, 87, '_image', 'field_535e08bfbefef'),
(444, 62, 'image', '100'),
(445, 62, '_image', 'field_535e08bfbefef'),
(446, 101, '_dw_featured_post', ''),
(447, 101, '_edit_lock', '1399972162:1'),
(448, 101, '_edit_last', '1'),
(449, 101, '_wp_page_template', 'tpl-login.php'),
(450, 101, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(451, 39, '_count-views_all', '7'),
(452, 39, '_count-views_day-20140502', '1'),
(453, 39, '_count-views_week-201418', '1'),
(454, 39, '_count-views_month-201405', '7'),
(455, 39, '_count-views_year-2014', '7'),
(456, 44, '_count-views_day-20140509', '24'),
(457, 44, '_count-views_week-201419', '29'),
(459, 29, '_count-views_all', '176'),
(460, 29, '_count-views_day-20140510', '115'),
(461, 29, '_count-views_week-201419', '115'),
(462, 29, '_count-views_month-201405', '176'),
(463, 29, '_count-views_year-2014', '176'),
(469, 1, '_wp_trash_meta_status', 'publish'),
(470, 1, '_wp_trash_meta_time', '1399727608'),
(471, 1, '_dw_featured_post', ''),
(472, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(488, 113, '_dw_featured_post', ''),
(489, 113, '_edit_lock', '1400321672:1'),
(490, 113, '_edit_last', '1'),
(491, 113, '_wp_page_template', 'tpl-create-post.php'),
(492, 113, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(495, 125, '_dw_featured_post', ''),
(496, 125, '_edit_last', '1'),
(497, 125, '_edit_lock', '1401187428:1'),
(498, 125, '_wp_page_template', 'tpl-register.php'),
(499, 125, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(501, 128, '_dw_featured_post', ''),
(502, 128, '_edit_last', '1'),
(503, 128, '_edit_lock', '1399972184:1'),
(504, 128, '_wp_page_template', 'default'),
(505, 128, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(511, 94, '_count-views_all', '2'),
(512, 94, '_count-views_day-20140511', '1'),
(513, 94, '_count-views_week-201419', '1'),
(514, 94, '_count-views_month-201405', '2'),
(515, 94, '_count-views_year-2014', '2'),
(516, 44, '_count-views_day-20140511', '5'),
(517, 6, '_count-views_all', '16'),
(518, 6, '_count-views_day-20140511', '1'),
(519, 6, '_count-views_week-201419', '1'),
(520, 6, '_count-views_month-201405', '16'),
(521, 6, '_count-views_year-2014', '16'),
(522, 94, '_count-views_day-20140512', '1'),
(523, 94, '_count-views_week-201420', '1'),
(524, 47, '_count-views_all', '1'),
(525, 47, '_count-views_day-20140512', '1'),
(526, 47, '_count-views_week-201420', '1'),
(527, 47, '_count-views_month-201405', '1'),
(528, 47, '_count-views_year-2014', '1'),
(529, 130, '_dw_featured_post', ''),
(530, 130, '_menu_item_type', 'taxonomy'),
(531, 130, '_menu_item_menu_item_parent', '22'),
(532, 130, '_menu_item_object_id', '20'),
(533, 130, '_menu_item_object', 'category'),
(534, 130, '_menu_item_target', ''),
(535, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(536, 130, '_menu_item_xfn', ''),
(537, 130, '_menu_item_url', ''),
(539, 131, '_dw_featured_post', ''),
(540, 131, '_menu_item_type', 'taxonomy'),
(541, 131, '_menu_item_menu_item_parent', '22'),
(542, 131, '_menu_item_object_id', '18'),
(543, 131, '_menu_item_object', 'category'),
(544, 131, '_menu_item_target', ''),
(545, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(546, 131, '_menu_item_xfn', ''),
(547, 131, '_menu_item_url', ''),
(549, 132, '_dw_featured_post', ''),
(550, 132, '_menu_item_type', 'taxonomy'),
(551, 132, '_menu_item_menu_item_parent', '22'),
(552, 132, '_menu_item_object_id', '22'),
(553, 132, '_menu_item_object', 'category'),
(554, 132, '_menu_item_target', ''),
(555, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(556, 132, '_menu_item_xfn', ''),
(557, 132, '_menu_item_url', ''),
(559, 133, '_dw_featured_post', ''),
(560, 133, '_menu_item_type', 'taxonomy'),
(561, 133, '_menu_item_menu_item_parent', '22'),
(562, 133, '_menu_item_object_id', '21'),
(563, 133, '_menu_item_object', 'category'),
(564, 133, '_menu_item_target', ''),
(565, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(566, 133, '_menu_item_xfn', ''),
(567, 133, '_menu_item_url', ''),
(569, 134, '_dw_featured_post', ''),
(570, 134, '_menu_item_type', 'taxonomy'),
(571, 134, '_menu_item_menu_item_parent', '22'),
(572, 134, '_menu_item_object_id', '19'),
(573, 134, '_menu_item_object', 'category'),
(574, 134, '_menu_item_target', ''),
(575, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(576, 134, '_menu_item_xfn', ''),
(577, 134, '_menu_item_url', ''),
(579, 135, '_dw_featured_post', ''),
(580, 135, '_menu_item_type', 'taxonomy'),
(581, 135, '_menu_item_menu_item_parent', '0'),
(582, 135, '_menu_item_object_id', '5'),
(583, 135, '_menu_item_object', 'category'),
(584, 135, '_menu_item_target', ''),
(585, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(586, 135, '_menu_item_xfn', ''),
(587, 135, '_menu_item_url', ''),
(588, 135, '_menu_item_orphaned', '1399933137'),
(589, 136, '_dw_featured_post', ''),
(590, 136, '_menu_item_type', 'taxonomy'),
(591, 136, '_menu_item_menu_item_parent', '0'),
(592, 136, '_menu_item_object_id', '31'),
(593, 136, '_menu_item_object', 'category'),
(594, 136, '_menu_item_target', ''),
(595, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(596, 136, '_menu_item_xfn', ''),
(597, 136, '_menu_item_url', ''),
(598, 136, '_menu_item_orphaned', '1399933137'),
(599, 137, '_dw_featured_post', ''),
(600, 137, '_menu_item_type', 'taxonomy'),
(601, 137, '_menu_item_menu_item_parent', '0'),
(602, 137, '_menu_item_object_id', '29'),
(603, 137, '_menu_item_object', 'category'),
(604, 137, '_menu_item_target', ''),
(605, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(606, 137, '_menu_item_xfn', ''),
(607, 137, '_menu_item_url', ''),
(608, 137, '_menu_item_orphaned', '1399933137'),
(609, 138, '_dw_featured_post', ''),
(610, 138, '_menu_item_type', 'taxonomy'),
(611, 138, '_menu_item_menu_item_parent', '0'),
(612, 138, '_menu_item_object_id', '30'),
(613, 138, '_menu_item_object', 'category'),
(614, 138, '_menu_item_target', ''),
(615, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(616, 138, '_menu_item_xfn', ''),
(617, 138, '_menu_item_url', ''),
(618, 138, '_menu_item_orphaned', '1399933137'),
(619, 139, '_dw_featured_post', ''),
(620, 139, '_menu_item_type', 'taxonomy'),
(621, 139, '_menu_item_menu_item_parent', '0'),
(622, 139, '_menu_item_object_id', '28'),
(623, 139, '_menu_item_object', 'category'),
(624, 139, '_menu_item_target', ''),
(625, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(626, 139, '_menu_item_xfn', ''),
(627, 139, '_menu_item_url', ''),
(628, 139, '_menu_item_orphaned', '1399933137'),
(629, 140, '_dw_featured_post', ''),
(630, 140, '_menu_item_type', 'taxonomy'),
(631, 140, '_menu_item_menu_item_parent', '0'),
(632, 140, '_menu_item_object_id', '26'),
(633, 140, '_menu_item_object', 'category'),
(634, 140, '_menu_item_target', ''),
(635, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(636, 140, '_menu_item_xfn', ''),
(637, 140, '_menu_item_url', ''),
(638, 140, '_menu_item_orphaned', '1399933137'),
(639, 141, '_dw_featured_post', ''),
(640, 141, '_menu_item_type', 'taxonomy'),
(641, 141, '_menu_item_menu_item_parent', '0'),
(642, 141, '_menu_item_object_id', '27'),
(643, 141, '_menu_item_object', 'category'),
(644, 141, '_menu_item_target', ''),
(645, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(646, 141, '_menu_item_xfn', ''),
(647, 141, '_menu_item_url', ''),
(648, 141, '_menu_item_orphaned', '1399933137'),
(649, 142, '_dw_featured_post', ''),
(650, 142, '_menu_item_type', 'taxonomy'),
(651, 142, '_menu_item_menu_item_parent', '0'),
(652, 142, '_menu_item_object_id', '6'),
(653, 142, '_menu_item_object', 'category'),
(654, 142, '_menu_item_target', ''),
(655, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(656, 142, '_menu_item_xfn', ''),
(657, 142, '_menu_item_url', ''),
(658, 142, '_menu_item_orphaned', '1399933137'),
(659, 143, '_dw_featured_post', ''),
(660, 143, '_menu_item_type', 'taxonomy'),
(661, 143, '_menu_item_menu_item_parent', '0'),
(662, 143, '_menu_item_object_id', '32'),
(663, 143, '_menu_item_object', 'category'),
(664, 143, '_menu_item_target', ''),
(665, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(666, 143, '_menu_item_xfn', ''),
(667, 143, '_menu_item_url', ''),
(668, 143, '_menu_item_orphaned', '1399933137'),
(669, 144, '_dw_featured_post', ''),
(670, 144, '_menu_item_type', 'taxonomy'),
(671, 144, '_menu_item_menu_item_parent', '0'),
(672, 144, '_menu_item_object_id', '33'),
(673, 144, '_menu_item_object', 'category'),
(674, 144, '_menu_item_target', ''),
(675, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(676, 144, '_menu_item_xfn', ''),
(677, 144, '_menu_item_url', ''),
(678, 144, '_menu_item_orphaned', '1399933137'),
(679, 145, '_dw_featured_post', ''),
(680, 145, '_menu_item_type', 'taxonomy'),
(681, 145, '_menu_item_menu_item_parent', '0'),
(682, 145, '_menu_item_object_id', '35'),
(683, 145, '_menu_item_object', 'category'),
(684, 145, '_menu_item_target', ''),
(685, 145, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(686, 145, '_menu_item_xfn', ''),
(687, 145, '_menu_item_url', ''),
(688, 145, '_menu_item_orphaned', '1399933137'),
(689, 146, '_dw_featured_post', ''),
(690, 146, '_menu_item_type', 'taxonomy'),
(691, 146, '_menu_item_menu_item_parent', '0'),
(692, 146, '_menu_item_object_id', '34'),
(693, 146, '_menu_item_object', 'category'),
(694, 146, '_menu_item_target', ''),
(695, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(696, 146, '_menu_item_xfn', ''),
(697, 146, '_menu_item_url', ''),
(698, 146, '_menu_item_orphaned', '1399933137'),
(699, 147, '_dw_featured_post', ''),
(700, 147, '_menu_item_type', 'taxonomy'),
(701, 147, '_menu_item_menu_item_parent', '0'),
(702, 147, '_menu_item_object_id', '40'),
(703, 147, '_menu_item_object', 'category'),
(704, 147, '_menu_item_target', ''),
(705, 147, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(706, 147, '_menu_item_xfn', ''),
(707, 147, '_menu_item_url', ''),
(708, 147, '_menu_item_orphaned', '1399933137'),
(709, 148, '_dw_featured_post', ''),
(710, 148, '_menu_item_type', 'taxonomy'),
(711, 148, '_menu_item_menu_item_parent', '0'),
(712, 148, '_menu_item_object_id', '7'),
(713, 148, '_menu_item_object', 'category'),
(714, 148, '_menu_item_target', ''),
(715, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(716, 148, '_menu_item_xfn', ''),
(717, 148, '_menu_item_url', ''),
(718, 148, '_menu_item_orphaned', '1399933137'),
(719, 149, '_dw_featured_post', ''),
(720, 149, '_menu_item_type', 'taxonomy'),
(721, 149, '_menu_item_menu_item_parent', '0'),
(722, 149, '_menu_item_object_id', '36'),
(723, 149, '_menu_item_object', 'category'),
(724, 149, '_menu_item_target', ''),
(725, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(726, 149, '_menu_item_xfn', ''),
(727, 149, '_menu_item_url', ''),
(728, 149, '_menu_item_orphaned', '1399933137'),
(729, 150, '_dw_featured_post', ''),
(730, 150, '_menu_item_type', 'taxonomy'),
(731, 150, '_menu_item_menu_item_parent', '0'),
(732, 150, '_menu_item_object_id', '37'),
(733, 150, '_menu_item_object', 'category'),
(734, 150, '_menu_item_target', ''),
(735, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(736, 150, '_menu_item_xfn', ''),
(737, 150, '_menu_item_url', ''),
(738, 150, '_menu_item_orphaned', '1399933137'),
(739, 151, '_dw_featured_post', ''),
(740, 151, '_menu_item_type', 'taxonomy'),
(741, 151, '_menu_item_menu_item_parent', '0'),
(742, 151, '_menu_item_object_id', '4'),
(743, 151, '_menu_item_object', 'category'),
(744, 151, '_menu_item_target', ''),
(745, 151, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(746, 151, '_menu_item_xfn', ''),
(747, 151, '_menu_item_url', ''),
(748, 151, '_menu_item_orphaned', '1399933137'),
(749, 152, '_dw_featured_post', ''),
(750, 152, '_menu_item_type', 'taxonomy'),
(751, 152, '_menu_item_menu_item_parent', '0'),
(752, 152, '_menu_item_object_id', '24'),
(753, 152, '_menu_item_object', 'category'),
(754, 152, '_menu_item_target', ''),
(755, 152, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(756, 152, '_menu_item_xfn', ''),
(757, 152, '_menu_item_url', ''),
(758, 152, '_menu_item_orphaned', '1399933137'),
(759, 153, '_dw_featured_post', ''),
(760, 153, '_menu_item_type', 'taxonomy'),
(761, 153, '_menu_item_menu_item_parent', '0'),
(762, 153, '_menu_item_object_id', '23'),
(763, 153, '_menu_item_object', 'category'),
(764, 153, '_menu_item_target', ''),
(765, 153, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(766, 153, '_menu_item_xfn', ''),
(767, 153, '_menu_item_url', ''),
(768, 153, '_menu_item_orphaned', '1399933137'),
(769, 154, '_dw_featured_post', ''),
(770, 154, '_menu_item_type', 'taxonomy'),
(771, 154, '_menu_item_menu_item_parent', '0'),
(772, 154, '_menu_item_object_id', '25'),
(773, 154, '_menu_item_object', 'category'),
(774, 154, '_menu_item_target', ''),
(775, 154, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(776, 154, '_menu_item_xfn', ''),
(777, 154, '_menu_item_url', ''),
(778, 154, '_menu_item_orphaned', '1399933137'),
(779, 155, '_dw_featured_post', ''),
(780, 155, '_menu_item_type', 'taxonomy'),
(781, 155, '_menu_item_menu_item_parent', '0'),
(782, 155, '_menu_item_object_id', '3');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(783, 155, '_menu_item_object', 'category'),
(784, 155, '_menu_item_target', ''),
(785, 155, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(786, 155, '_menu_item_xfn', ''),
(787, 155, '_menu_item_url', ''),
(788, 155, '_menu_item_orphaned', '1399933137'),
(789, 156, '_dw_featured_post', ''),
(790, 156, '_menu_item_type', 'taxonomy'),
(791, 156, '_menu_item_menu_item_parent', '0'),
(792, 156, '_menu_item_object_id', '20'),
(793, 156, '_menu_item_object', 'category'),
(794, 156, '_menu_item_target', ''),
(795, 156, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(796, 156, '_menu_item_xfn', ''),
(797, 156, '_menu_item_url', ''),
(798, 156, '_menu_item_orphaned', '1399933137'),
(799, 157, '_dw_featured_post', ''),
(800, 157, '_menu_item_type', 'taxonomy'),
(801, 157, '_menu_item_menu_item_parent', '0'),
(802, 157, '_menu_item_object_id', '18'),
(803, 157, '_menu_item_object', 'category'),
(804, 157, '_menu_item_target', ''),
(805, 157, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(806, 157, '_menu_item_xfn', ''),
(807, 157, '_menu_item_url', ''),
(808, 157, '_menu_item_orphaned', '1399933137'),
(809, 158, '_dw_featured_post', ''),
(810, 158, '_menu_item_type', 'taxonomy'),
(811, 158, '_menu_item_menu_item_parent', '0'),
(812, 158, '_menu_item_object_id', '22'),
(813, 158, '_menu_item_object', 'category'),
(814, 158, '_menu_item_target', ''),
(815, 158, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(816, 158, '_menu_item_xfn', ''),
(817, 158, '_menu_item_url', ''),
(818, 158, '_menu_item_orphaned', '1399933137'),
(819, 159, '_dw_featured_post', ''),
(820, 159, '_menu_item_type', 'taxonomy'),
(821, 159, '_menu_item_menu_item_parent', '0'),
(822, 159, '_menu_item_object_id', '21'),
(823, 159, '_menu_item_object', 'category'),
(824, 159, '_menu_item_target', ''),
(825, 159, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(826, 159, '_menu_item_xfn', ''),
(827, 159, '_menu_item_url', ''),
(828, 159, '_menu_item_orphaned', '1399933137'),
(829, 160, '_dw_featured_post', ''),
(830, 160, '_menu_item_type', 'taxonomy'),
(831, 160, '_menu_item_menu_item_parent', '0'),
(832, 160, '_menu_item_object_id', '19'),
(833, 160, '_menu_item_object', 'category'),
(834, 160, '_menu_item_target', ''),
(835, 160, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(836, 160, '_menu_item_xfn', ''),
(837, 160, '_menu_item_url', ''),
(838, 160, '_menu_item_orphaned', '1399933137'),
(839, 161, '_dw_featured_post', ''),
(840, 161, '_menu_item_type', 'taxonomy'),
(841, 161, '_menu_item_menu_item_parent', '0'),
(842, 161, '_menu_item_object_id', '1'),
(843, 161, '_menu_item_object', 'category'),
(844, 161, '_menu_item_target', ''),
(845, 161, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(846, 161, '_menu_item_xfn', ''),
(847, 161, '_menu_item_url', ''),
(848, 161, '_menu_item_orphaned', '1399933137'),
(849, 162, '_dw_featured_post', ''),
(850, 162, '_menu_item_type', 'taxonomy'),
(851, 162, '_menu_item_menu_item_parent', '0'),
(852, 162, '_menu_item_object_id', '41'),
(853, 162, '_menu_item_object', 'category'),
(854, 162, '_menu_item_target', ''),
(855, 162, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(856, 162, '_menu_item_xfn', ''),
(857, 162, '_menu_item_url', ''),
(858, 162, '_menu_item_orphaned', '1399933138'),
(859, 163, '_dw_featured_post', ''),
(860, 163, '_menu_item_type', 'taxonomy'),
(861, 163, '_menu_item_menu_item_parent', '0'),
(862, 163, '_menu_item_object_id', '44'),
(863, 163, '_menu_item_object', 'category'),
(864, 163, '_menu_item_target', ''),
(865, 163, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(866, 163, '_menu_item_xfn', ''),
(867, 163, '_menu_item_url', ''),
(868, 163, '_menu_item_orphaned', '1399933138'),
(869, 164, '_dw_featured_post', ''),
(870, 164, '_menu_item_type', 'taxonomy'),
(871, 164, '_menu_item_menu_item_parent', '0'),
(872, 164, '_menu_item_object_id', '46'),
(873, 164, '_menu_item_object', 'category'),
(874, 164, '_menu_item_target', ''),
(875, 164, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(876, 164, '_menu_item_xfn', ''),
(877, 164, '_menu_item_url', ''),
(878, 164, '_menu_item_orphaned', '1399933138'),
(879, 165, '_dw_featured_post', ''),
(880, 165, '_menu_item_type', 'taxonomy'),
(881, 165, '_menu_item_menu_item_parent', '0'),
(882, 165, '_menu_item_object_id', '45'),
(883, 165, '_menu_item_object', 'category'),
(884, 165, '_menu_item_target', ''),
(885, 165, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(886, 165, '_menu_item_xfn', ''),
(887, 165, '_menu_item_url', ''),
(888, 165, '_menu_item_orphaned', '1399933138'),
(889, 166, '_dw_featured_post', ''),
(890, 166, '_menu_item_type', 'taxonomy'),
(891, 166, '_menu_item_menu_item_parent', '0'),
(892, 166, '_menu_item_object_id', '43'),
(893, 166, '_menu_item_object', 'category'),
(894, 166, '_menu_item_target', ''),
(895, 166, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(896, 166, '_menu_item_xfn', ''),
(897, 166, '_menu_item_url', ''),
(898, 166, '_menu_item_orphaned', '1399933138'),
(899, 167, '_dw_featured_post', ''),
(900, 167, '_menu_item_type', 'taxonomy'),
(901, 167, '_menu_item_menu_item_parent', '0'),
(902, 167, '_menu_item_object_id', '11'),
(903, 167, '_menu_item_object', 'category'),
(904, 167, '_menu_item_target', ''),
(905, 167, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(906, 167, '_menu_item_xfn', ''),
(907, 167, '_menu_item_url', ''),
(908, 167, '_menu_item_orphaned', '1399933138'),
(909, 168, '_dw_featured_post', ''),
(910, 168, '_menu_item_type', 'taxonomy'),
(911, 168, '_menu_item_menu_item_parent', '0'),
(912, 168, '_menu_item_object_id', '39'),
(913, 168, '_menu_item_object', 'category'),
(914, 168, '_menu_item_target', ''),
(915, 168, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(916, 168, '_menu_item_xfn', ''),
(917, 168, '_menu_item_url', ''),
(918, 168, '_menu_item_orphaned', '1399933138'),
(919, 169, '_dw_featured_post', ''),
(920, 169, '_menu_item_type', 'taxonomy'),
(921, 169, '_menu_item_menu_item_parent', '0'),
(922, 169, '_menu_item_object_id', '38'),
(923, 169, '_menu_item_object', 'category'),
(924, 169, '_menu_item_target', ''),
(925, 169, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(926, 169, '_menu_item_xfn', ''),
(927, 169, '_menu_item_url', ''),
(928, 169, '_menu_item_orphaned', '1399933138'),
(929, 170, '_dw_featured_post', ''),
(930, 170, '_menu_item_type', 'taxonomy'),
(931, 170, '_menu_item_menu_item_parent', '21'),
(932, 170, '_menu_item_object_id', '24'),
(933, 170, '_menu_item_object', 'category'),
(934, 170, '_menu_item_target', ''),
(935, 170, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(936, 170, '_menu_item_xfn', ''),
(937, 170, '_menu_item_url', ''),
(939, 171, '_dw_featured_post', ''),
(940, 171, '_menu_item_type', 'taxonomy'),
(941, 171, '_menu_item_menu_item_parent', '21'),
(942, 171, '_menu_item_object_id', '23'),
(943, 171, '_menu_item_object', 'category'),
(944, 171, '_menu_item_target', ''),
(945, 171, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(946, 171, '_menu_item_xfn', ''),
(947, 171, '_menu_item_url', ''),
(949, 172, '_dw_featured_post', ''),
(950, 172, '_menu_item_type', 'taxonomy'),
(951, 172, '_menu_item_menu_item_parent', '21'),
(952, 172, '_menu_item_object_id', '25'),
(953, 172, '_menu_item_object', 'category'),
(954, 172, '_menu_item_target', ''),
(955, 172, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(956, 172, '_menu_item_xfn', ''),
(957, 172, '_menu_item_url', ''),
(959, 173, '_dw_featured_post', ''),
(960, 173, '_menu_item_type', 'taxonomy'),
(961, 173, '_menu_item_menu_item_parent', '18'),
(962, 173, '_menu_item_object_id', '31'),
(963, 173, '_menu_item_object', 'category'),
(964, 173, '_menu_item_target', ''),
(965, 173, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(966, 173, '_menu_item_xfn', ''),
(967, 173, '_menu_item_url', ''),
(969, 174, '_dw_featured_post', ''),
(970, 174, '_menu_item_type', 'taxonomy'),
(971, 174, '_menu_item_menu_item_parent', '18'),
(972, 174, '_menu_item_object_id', '29'),
(973, 174, '_menu_item_object', 'category'),
(974, 174, '_menu_item_target', ''),
(975, 174, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(976, 174, '_menu_item_xfn', ''),
(977, 174, '_menu_item_url', ''),
(979, 175, '_dw_featured_post', ''),
(980, 175, '_menu_item_type', 'taxonomy'),
(981, 175, '_menu_item_menu_item_parent', '18'),
(982, 175, '_menu_item_object_id', '30'),
(983, 175, '_menu_item_object', 'category'),
(984, 175, '_menu_item_target', ''),
(985, 175, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(986, 175, '_menu_item_xfn', ''),
(987, 175, '_menu_item_url', ''),
(989, 176, '_dw_featured_post', ''),
(990, 176, '_menu_item_type', 'taxonomy'),
(991, 176, '_menu_item_menu_item_parent', '18'),
(992, 176, '_menu_item_object_id', '28'),
(993, 176, '_menu_item_object', 'category'),
(994, 176, '_menu_item_target', ''),
(995, 176, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(996, 176, '_menu_item_xfn', ''),
(997, 176, '_menu_item_url', ''),
(999, 177, '_dw_featured_post', ''),
(1000, 177, '_menu_item_type', 'taxonomy'),
(1001, 177, '_menu_item_menu_item_parent', '18'),
(1002, 177, '_menu_item_object_id', '26'),
(1003, 177, '_menu_item_object', 'category'),
(1004, 177, '_menu_item_target', ''),
(1005, 177, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1006, 177, '_menu_item_xfn', ''),
(1007, 177, '_menu_item_url', ''),
(1009, 178, '_dw_featured_post', ''),
(1010, 178, '_menu_item_type', 'taxonomy'),
(1011, 178, '_menu_item_menu_item_parent', '18'),
(1012, 178, '_menu_item_object_id', '27'),
(1013, 178, '_menu_item_object', 'category'),
(1014, 178, '_menu_item_target', ''),
(1015, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1016, 178, '_menu_item_xfn', ''),
(1017, 178, '_menu_item_url', ''),
(1019, 179, '_dw_featured_post', ''),
(1020, 179, '_menu_item_type', 'taxonomy'),
(1021, 179, '_menu_item_menu_item_parent', '19'),
(1022, 179, '_menu_item_object_id', '32'),
(1023, 179, '_menu_item_object', 'category'),
(1024, 179, '_menu_item_target', ''),
(1025, 179, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1026, 179, '_menu_item_xfn', ''),
(1027, 179, '_menu_item_url', ''),
(1029, 180, '_dw_featured_post', ''),
(1030, 180, '_menu_item_type', 'taxonomy'),
(1031, 180, '_menu_item_menu_item_parent', '19'),
(1032, 180, '_menu_item_object_id', '33'),
(1033, 180, '_menu_item_object', 'category'),
(1034, 180, '_menu_item_target', ''),
(1035, 180, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1036, 180, '_menu_item_xfn', ''),
(1037, 180, '_menu_item_url', ''),
(1039, 181, '_dw_featured_post', ''),
(1040, 181, '_menu_item_type', 'taxonomy'),
(1041, 181, '_menu_item_menu_item_parent', '19'),
(1042, 181, '_menu_item_object_id', '35'),
(1043, 181, '_menu_item_object', 'category'),
(1044, 181, '_menu_item_target', ''),
(1045, 181, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1046, 181, '_menu_item_xfn', ''),
(1047, 181, '_menu_item_url', ''),
(1049, 182, '_dw_featured_post', ''),
(1050, 182, '_menu_item_type', 'taxonomy'),
(1051, 182, '_menu_item_menu_item_parent', '19'),
(1052, 182, '_menu_item_object_id', '34'),
(1053, 182, '_menu_item_object', 'category'),
(1054, 182, '_menu_item_target', ''),
(1055, 182, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1056, 182, '_menu_item_xfn', ''),
(1057, 182, '_menu_item_url', ''),
(1059, 183, '_dw_featured_post', ''),
(1060, 183, '_menu_item_type', 'taxonomy'),
(1061, 183, '_menu_item_menu_item_parent', '20'),
(1062, 183, '_menu_item_object_id', '36'),
(1063, 183, '_menu_item_object', 'category'),
(1064, 183, '_menu_item_target', ''),
(1065, 183, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1066, 183, '_menu_item_xfn', ''),
(1067, 183, '_menu_item_url', ''),
(1069, 184, '_dw_featured_post', ''),
(1070, 184, '_menu_item_type', 'taxonomy'),
(1071, 184, '_menu_item_menu_item_parent', '20'),
(1072, 184, '_menu_item_object_id', '37'),
(1073, 184, '_menu_item_object', 'category'),
(1074, 184, '_menu_item_target', ''),
(1075, 184, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1076, 184, '_menu_item_xfn', ''),
(1077, 184, '_menu_item_url', ''),
(1079, 185, '_dw_featured_post', ''),
(1080, 185, '_menu_item_type', 'taxonomy'),
(1081, 185, '_menu_item_menu_item_parent', '48'),
(1082, 185, '_menu_item_object_id', '39'),
(1083, 185, '_menu_item_object', 'category'),
(1084, 185, '_menu_item_target', ''),
(1085, 185, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1086, 185, '_menu_item_xfn', ''),
(1087, 185, '_menu_item_url', ''),
(1089, 186, '_dw_featured_post', ''),
(1090, 186, '_menu_item_type', 'taxonomy'),
(1091, 186, '_menu_item_menu_item_parent', '48'),
(1092, 186, '_menu_item_object_id', '38'),
(1093, 186, '_menu_item_object', 'category'),
(1094, 186, '_menu_item_target', ''),
(1095, 186, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1096, 186, '_menu_item_xfn', ''),
(1097, 186, '_menu_item_url', ''),
(1099, 187, '_dw_featured_post', ''),
(1100, 187, '_menu_item_type', 'taxonomy'),
(1101, 187, '_menu_item_menu_item_parent', '0'),
(1102, 187, '_menu_item_object_id', '41'),
(1103, 187, '_menu_item_object', 'category'),
(1104, 187, '_menu_item_target', ''),
(1105, 187, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1106, 187, '_menu_item_xfn', ''),
(1107, 187, '_menu_item_url', ''),
(1109, 188, '_dw_featured_post', ''),
(1110, 188, '_menu_item_type', 'taxonomy'),
(1111, 188, '_menu_item_menu_item_parent', '187'),
(1112, 188, '_menu_item_object_id', '44'),
(1113, 188, '_menu_item_object', 'category'),
(1114, 188, '_menu_item_target', ''),
(1115, 188, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1116, 188, '_menu_item_xfn', ''),
(1117, 188, '_menu_item_url', ''),
(1119, 189, '_dw_featured_post', ''),
(1120, 189, '_menu_item_type', 'taxonomy'),
(1121, 189, '_menu_item_menu_item_parent', '187'),
(1122, 189, '_menu_item_object_id', '46'),
(1123, 189, '_menu_item_object', 'category'),
(1124, 189, '_menu_item_target', ''),
(1125, 189, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1126, 189, '_menu_item_xfn', ''),
(1127, 189, '_menu_item_url', ''),
(1129, 190, '_dw_featured_post', ''),
(1130, 190, '_menu_item_type', 'taxonomy'),
(1131, 190, '_menu_item_menu_item_parent', '187'),
(1132, 190, '_menu_item_object_id', '45'),
(1133, 190, '_menu_item_object', 'category'),
(1134, 190, '_menu_item_target', ''),
(1135, 190, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1136, 190, '_menu_item_xfn', ''),
(1137, 190, '_menu_item_url', ''),
(1139, 191, '_dw_featured_post', ''),
(1140, 191, '_menu_item_type', 'taxonomy'),
(1141, 191, '_menu_item_menu_item_parent', '187'),
(1142, 191, '_menu_item_object_id', '43'),
(1143, 191, '_menu_item_object', 'category'),
(1144, 191, '_menu_item_target', ''),
(1145, 191, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1146, 191, '_menu_item_xfn', ''),
(1147, 191, '_menu_item_url', ''),
(1149, 6, '_count-views_day-20140513', '4'),
(1150, 6, '_count-views_week-201420', '4'),
(1151, 44, '_count-views_day-20140513', '4'),
(1152, 44, '_count-views_week-201420', '4'),
(1153, 39, '_count-views_day-20140513', '6'),
(1154, 39, '_count-views_week-201420', '6'),
(1155, 39, 'ratings_users', '2'),
(1156, 39, 'ratings_score', '8'),
(1157, 39, 'ratings_average', '4'),
(1158, 29, '_count-views_day-20140513', '1'),
(1159, 29, '_count-views_week-201420', '61'),
(1250, 202, '_dw_featured_post', ''),
(1251, 202, '_edit_last', '1'),
(1252, 202, '_wp_page_template', 'default'),
(1253, 202, 'ratings_users', '0'),
(1254, 202, 'ratings_score', '0'),
(1255, 202, 'ratings_average', '0'),
(1256, 202, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(1257, 202, '_edit_lock', '1401187489:1'),
(1258, 204, '_dw_featured_post', ''),
(1259, 204, '_edit_last', '1'),
(1260, 204, '_wp_page_template', 'default'),
(1261, 204, 'ratings_users', '0'),
(1262, 204, 'ratings_score', '0'),
(1263, 204, 'ratings_average', '0'),
(1264, 204, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(1265, 204, '_edit_lock', '1399986876:1'),
(1266, 208, '_dw_featured_post', ''),
(1267, 208, '_edit_last', '1'),
(1268, 208, '_wp_page_template', 'default'),
(1269, 208, 'ratings_users', '0'),
(1270, 208, 'ratings_score', '0'),
(1271, 208, 'ratings_average', '0'),
(1272, 208, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(1273, 208, '_edit_lock', '1399986940:1'),
(1274, 210, '_dw_featured_post', ''),
(1275, 210, '_menu_item_type', 'post_type'),
(1276, 210, '_menu_item_menu_item_parent', '0'),
(1277, 210, '_menu_item_object_id', '208'),
(1278, 210, '_menu_item_object', 'page'),
(1279, 210, '_menu_item_target', ''),
(1280, 210, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1281, 210, '_menu_item_xfn', ''),
(1282, 210, '_menu_item_url', ''),
(1283, 210, '_menu_item_orphaned', '1399988229'),
(1284, 211, '_dw_featured_post', ''),
(1285, 211, '_menu_item_type', 'post_type'),
(1286, 211, '_menu_item_menu_item_parent', '0'),
(1287, 211, '_menu_item_object_id', '204'),
(1288, 211, '_menu_item_object', 'page'),
(1289, 211, '_menu_item_target', ''),
(1290, 211, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1291, 211, '_menu_item_xfn', ''),
(1292, 211, '_menu_item_url', ''),
(1293, 211, '_menu_item_orphaned', '1399988229'),
(1294, 212, '_dw_featured_post', ''),
(1295, 212, '_menu_item_type', 'post_type'),
(1296, 212, '_menu_item_menu_item_parent', '0'),
(1297, 212, '_menu_item_object_id', '202'),
(1298, 212, '_menu_item_object', 'page'),
(1299, 212, '_menu_item_target', ''),
(1300, 212, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1301, 212, '_menu_item_xfn', ''),
(1302, 212, '_menu_item_url', ''),
(1303, 212, '_menu_item_orphaned', '1399988229'),
(1304, 213, '_dw_featured_post', ''),
(1305, 213, '_menu_item_type', 'taxonomy'),
(1306, 213, '_menu_item_menu_item_parent', '0'),
(1307, 213, '_menu_item_object_id', '11'),
(1308, 213, '_menu_item_object', 'category'),
(1309, 213, '_menu_item_target', ''),
(1310, 213, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1311, 213, '_menu_item_xfn', ''),
(1312, 213, '_menu_item_url', ''),
(1314, 214, '_dw_featured_post', ''),
(1315, 214, '_menu_item_type', 'taxonomy'),
(1316, 214, '_menu_item_menu_item_parent', '0'),
(1317, 214, '_menu_item_object_id', '3'),
(1318, 214, '_menu_item_object', 'category'),
(1319, 214, '_menu_item_target', ''),
(1320, 214, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1321, 214, '_menu_item_xfn', ''),
(1322, 214, '_menu_item_url', ''),
(1324, 215, '_dw_featured_post', ''),
(1325, 215, '_menu_item_type', 'taxonomy'),
(1326, 215, '_menu_item_menu_item_parent', '0'),
(1327, 215, '_menu_item_object_id', '4'),
(1328, 215, '_menu_item_object', 'category'),
(1329, 215, '_menu_item_target', ''),
(1330, 215, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1331, 215, '_menu_item_xfn', ''),
(1332, 215, '_menu_item_url', ''),
(1334, 216, '_dw_featured_post', ''),
(1335, 216, '_menu_item_type', 'taxonomy'),
(1336, 216, '_menu_item_menu_item_parent', '0'),
(1337, 216, '_menu_item_object_id', '5'),
(1338, 216, '_menu_item_object', 'category'),
(1339, 216, '_menu_item_target', ''),
(1340, 216, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1341, 216, '_menu_item_xfn', ''),
(1342, 216, '_menu_item_url', ''),
(1344, 217, '_dw_featured_post', ''),
(1345, 217, '_menu_item_type', 'taxonomy'),
(1346, 217, '_menu_item_menu_item_parent', '0'),
(1347, 217, '_menu_item_object_id', '6'),
(1348, 217, '_menu_item_object', 'category'),
(1349, 217, '_menu_item_target', ''),
(1350, 217, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1351, 217, '_menu_item_xfn', ''),
(1352, 217, '_menu_item_url', ''),
(1354, 218, '_dw_featured_post', ''),
(1355, 218, '_menu_item_type', 'taxonomy'),
(1356, 218, '_menu_item_menu_item_parent', '0'),
(1357, 218, '_menu_item_object_id', '7'),
(1358, 218, '_menu_item_object', 'category'),
(1359, 218, '_menu_item_target', ''),
(1360, 218, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1361, 218, '_menu_item_xfn', ''),
(1362, 218, '_menu_item_url', ''),
(1364, 219, '_dw_featured_post', ''),
(1365, 219, '_menu_item_type', 'post_type'),
(1366, 219, '_menu_item_menu_item_parent', '0'),
(1367, 219, '_menu_item_object_id', '208'),
(1368, 219, '_menu_item_object', 'page'),
(1369, 219, '_menu_item_target', ''),
(1370, 219, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1371, 219, '_menu_item_xfn', ''),
(1372, 219, '_menu_item_url', ''),
(1374, 220, '_dw_featured_post', ''),
(1375, 220, '_menu_item_type', 'post_type'),
(1376, 220, '_menu_item_menu_item_parent', '0'),
(1377, 220, '_menu_item_object_id', '204'),
(1378, 220, '_menu_item_object', 'page'),
(1379, 220, '_menu_item_target', ''),
(1380, 220, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1381, 220, '_menu_item_xfn', ''),
(1382, 220, '_menu_item_url', ''),
(1384, 221, '_dw_featured_post', ''),
(1385, 221, '_menu_item_type', 'post_type'),
(1386, 221, '_menu_item_menu_item_parent', '0'),
(1387, 221, '_menu_item_object_id', '202'),
(1388, 221, '_menu_item_object', 'page'),
(1389, 221, '_menu_item_target', ''),
(1390, 221, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1391, 221, '_menu_item_xfn', ''),
(1392, 221, '_menu_item_url', ''),
(1394, 222, '_dw_featured_post', ''),
(1395, 222, '_menu_item_type', 'taxonomy'),
(1396, 222, '_menu_item_menu_item_parent', '0'),
(1397, 222, '_menu_item_object_id', '40'),
(1398, 222, '_menu_item_object', 'category'),
(1399, 222, '_menu_item_target', ''),
(1400, 222, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1401, 222, '_menu_item_xfn', ''),
(1402, 222, '_menu_item_url', ''),
(1403, 222, '_menu_item_orphaned', '1399989576'),
(1404, 223, '_dw_featured_post', ''),
(1405, 223, '_menu_item_type', 'taxonomy'),
(1406, 223, '_menu_item_menu_item_parent', '0'),
(1407, 223, '_menu_item_object_id', '40'),
(1408, 223, '_menu_item_object', 'category'),
(1409, 223, '_menu_item_target', ''),
(1410, 223, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1411, 223, '_menu_item_xfn', ''),
(1412, 223, '_menu_item_url', ''),
(1414, 29, '_count-views_day-20140514', '60'),
(1415, 27, '_count-views_all', '2'),
(1416, 27, '_count-views_day-20140514', '1'),
(1417, 27, '_count-views_week-201420', '1'),
(1418, 27, '_count-views_month-201405', '2'),
(1419, 27, '_count-views_year-2014', '2'),
(1420, 224, '_dw_featured_post', ''),
(1421, 224, '_edit_last', '1'),
(1422, 224, '_edit_lock', '1400258075:1'),
(1423, 224, '_wp_page_template', 'forgot-password.php'),
(1424, 224, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(1425, 6, '_count-views_day-20140526', '10'),
(1426, 6, '_count-views_week-201422', '11'),
(1427, 27, '_count-views_day-20140526', '1'),
(1428, 27, '_count-views_week-201422', '1'),
(1431, 229, '_dw_featured_post', ''),
(1432, 229, '_edit_last', '1'),
(1433, 229, '_wp_page_template', 'tpl-agenda-ajax.php'),
(1434, 229, 'dw-social-wall-settings', 'a:11:{s:9:"heading-1";s:0:"";s:9:"heading-2";s:0:"";s:11:"short-intro";s:0:"";s:13:"facebook-name";s:0:"";s:13:"twitter-query";s:0:"";s:20:"twitter-consumer-key";s:0:"";s:23:"twitter-consumer-secret";s:0:"";s:16:"google-plus-name";s:0:"";s:15:"google-plus-url";s:0:"";s:16:"instagram-search";s:0:"";s:9:"flickr-id";s:0:"";}'),
(1435, 229, '_edit_lock', '1401186283:1'),
(1436, 6, '_count-views_day-20140528', '1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=232 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-02-10 12:31:35', '2014-02-10 12:31:35', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2014-05-10 15:13:28', '2014-05-10 13:13:28', '', 0, 'http://wu.josealbea.com/?p=1', 0, 'post', '', 1),
(5, 2, '2014-04-09 09:16:08', '2014-04-09 08:16:08', '', 'le texte en francais', '', 'publish', 'closed', 'closed', '', 'acf_le-texte-en-francais', '', '', '2014-04-09 09:16:08', '2014-04-09 08:16:08', '', 0, 'http://wu.josealbea.com/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(6, 2, '2014-04-09 09:16:59', '2014-04-09 08:16:59', '<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n&nbsp;\r\n<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n&nbsp;', 'Iphone 6 première images', '', 'publish', 'open', 'open', '', 'iphone-6-premiere-images', '', '', '2014-04-10 11:06:31', '2014-04-10 09:06:31', '', 0, 'http://wu.josealbea.com/?p=6', 0, 'post', '', 0),
(7, 2, '2014-04-09 09:16:59', '2014-04-09 08:16:59', '', 'test acf', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-04-09 09:16:59', '2014-04-09 08:16:59', '', 6, 'http://wu.josealbea.com/?p=7', 0, 'revision', '', 0),
(18, 1, '2014-04-09 09:30:27', '2014-04-09 08:30:27', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 0, 'http://wu.josealbea.com/?p=18', 11, 'nav_menu_item', '', 0),
(19, 1, '2014-04-09 09:30:27', '2014-04-09 08:30:27', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 0, 'http://wu.josealbea.com/?p=19', 18, 'nav_menu_item', '', 0),
(20, 1, '2014-04-09 09:30:28', '2014-04-09 08:30:28', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 0, 'http://wu.josealbea.com/?p=20', 23, 'nav_menu_item', '', 0),
(21, 1, '2014-04-09 09:30:26', '2014-04-09 08:30:26', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 0, 'http://wu.josealbea.com/?p=21', 7, 'nav_menu_item', '', 0),
(22, 1, '2014-04-09 09:30:26', '2014-04-09 08:30:26', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 0, 'http://wu.josealbea.com/?p=22', 1, 'nav_menu_item', '', 0),
(24, 2, '2014-04-09 09:31:02', '2014-04-09 08:31:02', '<div>\n\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\n\n</div>\n&nbsp;\n<div>\n\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\n\n</div>\n&nbsp;', 'test acf', '', 'inherit', 'open', 'open', '', '6-autosave-v1', '', '', '2014-04-09 09:31:02', '2014-04-09 08:31:02', '', 6, 'http://wu.josealbea.com/6-autosave-v1/', 0, 'revision', '', 0),
(25, 2, '2014-04-09 09:32:35', '2014-04-09 08:32:35', '', 'Capture d’écran 2014-04-09 à 10.32.13', '', 'inherit', 'open', 'open', '', 'capture-decran-2014-04-09-a-10-32-13', '', '', '2014-04-09 09:32:35', '2014-04-09 08:32:35', '', 6, 'http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png', 0, 'attachment', 'image/png', 0),
(26, 2, '2014-04-09 09:32:45', '2014-04-09 08:32:45', '<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n&nbsp;\r\n<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n&nbsp;', 'test acf', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-04-09 09:32:45', '2014-04-09 08:32:45', '', 6, 'http://wu.josealbea.com/6-revision-v1/', 0, 'revision', '', 0),
(27, 2, '2014-04-09 09:34:03', '2014-04-09 08:34:03', 'Les fans de l''homme-araignée n''ont plus à attendre très longtemps. «Amazing Spider-Man 2 : le destin d’un héros» , le nouvel opus des aventures de Peter Parker sort le 30 avril. En pleine promo mondiale, Marc Webb, 39 ans, le réalisateur américain de ce blockbuster fera escale à Paris ... et à Saint-Ouen dans les locaux de la rédaction du Parisien.\r\n\r\nSUR LE MÊME SUJET\r\n\r\n    «The amazing spiderman 2» : découvrez la bande annonce «The amazing spiderman 2» : découvrez la bande annonce\r\n\r\nCe vendredi 11 avril, il a accepté de participer à un chat exceptionnel avec les internautes du Parisien.fr. Vous pouvez d’ores et déjà lui poser toutes les questions sur cette franchise Marvel dans le champ des commentaires. Le metteur en scène, âgé de 39 ans, déjà auteur du premier opus, y répondra en direct entre 11 h et 11 h 30.\r\n\r\n«Tout le monde n''a pas le droit à un happy-ending»... L''accroche de la bande-annonce des aventures de l''incroyable Spiderman laisse augurer d''une oeuvre plus sombre qu''à l''ordinaire.', 'The Amazing Spiderman II', '', 'publish', 'open', 'open', '', 'the-amazing-spiderman-ii', '', '', '2014-04-10 11:03:59', '2014-04-10 09:03:59', '', 0, 'http://wu.josealbea.com/?p=27', 0, 'post', '', 0),
(28, 2, '2014-04-09 09:34:03', '2014-04-09 08:34:03', 'test2', 'test2', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2014-04-09 09:34:03', '2014-04-09 08:34:03', '', 27, 'http://wu.josealbea.com/27-revision-v1/', 0, 'revision', '', 0),
(29, 2, '2014-04-09 09:37:32', '2014-04-09 08:37:32', '<a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26.png"><img class="alignnone size-medium wp-image-30" alt="Capture d’écran 2014-04-09 à 10.36.26" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15.png"><img class="alignnone size-medium wp-image-31" alt="Capture d’écran 2014-04-09 à 10.36.15" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png"><img class="alignnone size-full wp-image-25" alt="Capture d’écran 2014-04-09 à 10.32.13" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png" width="297" height="297" /></a>[gallery ids="31,25,30"]', 'Portrait Design', '', 'publish', 'open', 'open', '', 'portrait-design', '', '', '2014-04-10 11:03:35', '2014-04-10 09:03:35', '', 0, 'http://wu.josealbea.com/?p=29', 0, 'post', '', 0),
(30, 2, '2014-04-09 09:37:10', '2014-04-09 08:37:10', '', 'Capture d’écran 2014-04-09 à 10.36.26', '', 'inherit', 'open', 'open', '', 'capture-decran-2014-04-09-a-10-36-26', '', '', '2014-04-09 09:37:10', '2014-04-09 08:37:10', '', 29, 'http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26.png', 0, 'attachment', 'image/png', 0),
(31, 2, '2014-04-09 09:37:12', '2014-04-09 08:37:12', '', 'Capture d’écran 2014-04-09 à 10.36.15', '', 'inherit', 'open', 'open', '', 'capture-decran-2014-04-09-a-10-36-15', '', '', '2014-04-09 09:37:12', '2014-04-09 08:37:12', '', 29, 'http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15.png', 0, 'attachment', 'image/png', 0),
(32, 2, '2014-04-09 09:37:32', '2014-04-09 08:37:32', '', 'test 3', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-04-09 09:37:32', '2014-04-09 08:37:32', '', 29, 'http://wu.josealbea.com/29-revision-v1/', 0, 'revision', '', 0),
(33, 2, '2014-04-09 09:38:16', '2014-04-09 08:38:16', '<a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26.png"><img class="alignnone size-medium wp-image-30" alt="Capture d’écran 2014-04-09 à 10.36.26" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15.png"><img class="alignnone size-medium wp-image-31" alt="Capture d’écran 2014-04-09 à 10.36.15" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png"><img class="alignnone size-full wp-image-25" alt="Capture d’écran 2014-04-09 à 10.32.13" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png" width="297" height="297" /></a>', 'test 3', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-04-09 09:38:16', '2014-04-09 08:38:16', '', 29, 'http://wu.josealbea.com/29-revision-v1/', 0, 'revision', '', 0),
(34, 2, '2014-04-09 09:40:01', '2014-04-09 08:40:01', '<a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26.png"><img class="alignnone size-medium wp-image-30" alt="Capture d’écran 2014-04-09 à 10.36.26" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15.png"><img class="alignnone size-medium wp-image-31" alt="Capture d’écran 2014-04-09 à 10.36.15" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png"><img class="alignnone size-full wp-image-25" alt="Capture d’écran 2014-04-09 à 10.32.13" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png" width="297" height="297" /></a>[gallery ids="31,25,30"]', 'test 3', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-04-09 09:40:01', '2014-04-09 08:40:01', '', 29, 'http://wu.josealbea.com/29-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2014-04-09 09:44:32', '2014-04-09 08:44:32', '', 'Page d''Accueil', '', 'publish', 'open', 'open', '', 'page-daccueil', '', '', '2014-04-09 12:42:52', '2014-04-09 10:42:52', '', 0, 'http://wu.josealbea.com/?page_id=35', 0, 'page', '', 0),
(36, 1, '2014-04-09 09:44:32', '2014-04-09 08:44:32', '', 'Page d''Accueil', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2014-04-09 09:44:32', '2014-04-09 08:44:32', '', 35, 'http://wu.josealbea.com/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2014-04-09 11:00:16', '2014-04-09 09:00:16', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2014-04-09 11:00:16', '2014-04-09 09:00:16', '', 0, 'http://wu.josealbea.com/wp-content/uploads/2014/04/logo.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2014-04-09 11:04:34', '2014-04-09 09:04:34', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo-2', '', '', '2014-04-09 11:04:34', '2014-04-09 09:04:34', '', 0, 'http://wu.josealbea.com/wp-content/uploads/2014/04/logo1.png', 0, 'attachment', 'image/png', 0),
(39, 2, '2014-04-09 11:38:25', '2014-04-09 09:38:25', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. <img class="alignnone" alt="" src="http://www.shockmansion.com/wp-content/myimages/2011/02/Irina-Shayk_0211_06.jpg" width="550" height="856" />\r\nIl a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nUne vidéo sympa :\r\n\r\n<span class="youtube"><iframe width="550" height="395" frameborder="0" allowfullscreen="" src="http://www.youtube.com/embed/ovcMkRhXNhk?wmode=transparent&amp;fs=1&amp;hl=en&amp;showinfo=0&amp;iv_load_policy=3&amp;showsearch=0&amp;rel=0&amp;theme=dark" type="text/html" class="youtube-player" title="YouTube video player"></iframe></span>', 'Irina Shayk', '', 'publish', 'open', 'open', '', 'irina-shayk', '', '', '2014-04-10 11:03:07', '2014-04-10 09:03:07', '', 0, 'http://wu.josealbea.com/?p=39', 0, 'post', '', 0),
(40, 2, '2014-04-09 11:38:04', '2014-04-09 09:38:04', '', 'technics2', '', 'inherit', 'open', 'open', '', 'technics2', '', '', '2014-04-09 11:38:04', '2014-04-09 09:38:04', '', 39, 'http://wu.josealbea.com/wp-content/uploads/2014/04/technics2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 2, '2014-04-09 11:38:06', '2014-04-09 09:38:06', '', 'technics1', '', 'inherit', 'open', 'open', '', 'technics1', '', '', '2014-04-09 11:38:06', '2014-04-09 09:38:06', '', 39, 'http://wu.josealbea.com/wp-content/uploads/2014/04/technics1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 2, '2014-04-09 11:38:07', '2014-04-09 09:38:07', '', 'technics', '', 'inherit', 'open', 'open', '', 'technics', '', '', '2014-04-09 11:38:07', '2014-04-09 09:38:07', '', 39, 'http://wu.josealbea.com/wp-content/uploads/2014/04/technics.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 2, '2014-04-09 11:38:25', '2014-04-09 09:38:25', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'test', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2014-04-09 11:38:25', '2014-04-09 09:38:25', '', 39, 'http://wu.josealbea.com/39-revision-v1/', 0, 'revision', '', 0),
(44, 2, '2014-04-09 11:39:46', '2014-04-09 09:39:46', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Rohff au Zenith de Paris', '', 'publish', 'open', 'open', '', 'rohff-zenith-paris', '', '', '2014-04-10 11:02:33', '2014-04-10 09:02:33', '', 0, 'http://wu.josealbea.com/?p=44', 0, 'post', '', 0),
(45, 2, '2014-04-09 11:39:46', '2014-04-09 09:39:46', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'test2', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2014-04-09 11:39:46', '2014-04-09 09:39:46', '', 44, 'http://wu.josealbea.com/44-revision-v1/', 0, 'revision', '', 0),
(46, 2, '2014-04-09 11:40:52', '2014-04-09 09:40:52', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'test2', '', 'inherit', 'open', 'open', '', '44-autosave-v1', '', '', '2014-04-09 11:40:52', '2014-04-09 09:40:52', '', 44, 'http://wu.josealbea.com/44-autosave-v1/', 0, 'revision', '', 0),
(47, 2, '2014-04-09 11:45:55', '2014-04-09 09:45:55', 'Fearless Records sort aujourd’hui sa compile Punk Goes 90s #2 ! On y retrouve notamment les français de Chunk! No, Captain Chunk! avec leur reprise « All Star » de Smash Mouth ! <iframe src="//www.youtube.com/embed/0fn1jEjX5PA" height="315" width="560" allowfullscreen="" frameborder="0"></iframe> Au programme : Punk Goes 90s Track List: 1. Get Scared – « My Own Worst Enemy » Originally performed by Lit 2. Memphis May Fire – « Interstate Love Song » Originally performed by Stone Temple Pilots 3. Asking Alexandria – « Closer » Originally performed by Nine Inch Nails 4. The Color Morale – « Everlong » Originally performed by The Foo Fighers 5. Chunk! No, Captain Chunk! – « All Star » Originally performed by Smash Mouth 6. Mayday Parade – « Comedown » Originally performed by Bush 7. Motionless In White – « Du Hast » Originally performed by Rammstein 8. Yellowcard – « Today » Originally performed by Smashing Pumpkins 9. Hands Like Houses – « Torn » Originally performed by Natalie Imbruglia 10. The Ghost Inside – « Southtown » Originally performed by P.O.D. 11. Falling In Reverse – « Gangsta’s Paradise » Originally performed by Coolio 12. ICE NINE KILLS – « Good Riddance (Time Of Your Life) » Originally performed by Green Day', 'Forest Hill', '', 'publish', 'open', 'open', '', 'forest-hill', '', '', '2014-04-10 11:02:05', '2014-04-10 09:02:05', '', 0, 'http://wu.josealbea.com/?p=47', 0, 'post', '', 0),
(48, 1, '2014-04-09 11:48:15', '2014-04-09 09:48:15', ' ', '', '', 'publish', 'open', 'open', '', '48', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 0, 'http://wu.josealbea.com/?p=48', 26, 'nav_menu_item', '', 0),
(49, 2, '2014-04-09 11:45:55', '2014-04-09 09:45:55', 'Fearless Records sort aujourd’hui sa compile Punk Goes 90s #2 ! On y retrouve notamment les français de Chunk! No, Captain Chunk! avec leur reprise « All Star » de Smash Mouth !\n\n&lt;iframe width="560" height="315" src="//www.youtube.com/embed/0fn1jEjX5PA" frameborder="0" allowfullscreen&gt;&lt;/iframe&gt;\n\nAu programme :\n\nPunk Goes 90s Track List:\n1. Get Scared – « My Own Worst Enemy »\nOriginally performed by Lit\n2. Memphis May Fire – « Interstate Love Song »\nOriginally performed by Stone Temple Pilots\n3. Asking Alexandria – « Closer »\nOriginally performed by Nine Inch Nails\n4. The Color Morale – « Everlong »\nOriginally performed by The Foo Fighers\n5. Chunk! No, Captain Chunk! – « All Star »\nOriginally performed by Smash Mouth\n6. Mayday Parade – « Comedown »\nOriginally performed by Bush\n7. Motionless In White – « Du Hast »\nOriginally performed by Rammstein\n8. Yellowcard – « Today »\nOriginally performed by Smashing Pumpkins\n9. Hands Like Houses – « Torn »\nOriginally performed by Natalie Imbruglia\n10. The Ghost Inside – « Southtown »\nOriginally performed by P.O.D.\n11. Falling In Reverse – « Gangsta’s Paradise »\nOriginally performed by Coolio\n12. ICE NINE KILLS – « Good Riddance (Time Of Your Life) »\nOriginally performed by Green Day', 'Chunk! No, Captain Chunk! – All Star', '', 'inherit', 'open', 'open', '', '47-autosave-v1', '', '', '2014-04-09 11:45:55', '2014-04-09 09:45:55', '', 47, 'http://wu.josealbea.com/47-autosave-v1/', 0, 'revision', '', 0),
(50, 2, '2014-04-09 11:45:55', '2014-04-09 09:45:55', 'Fearless Records sort aujourd’hui sa compile Punk Goes 90s #2 ! On y retrouve notamment les français de Chunk! No, Captain Chunk! avec leur reprise « All Star » de Smash Mouth !\r\n\r\n&lt;iframe width="560" height="315" src="//www.youtube.com/embed/0fn1jEjX5PA" frameborder="0" allowfullscreen&gt;&lt;/iframe&gt;\r\n\r\nAu programme :\r\n\r\nPunk Goes 90s Track List:\r\n1. Get Scared – « My Own Worst Enemy »\r\nOriginally performed by Lit\r\n2. Memphis May Fire – « Interstate Love Song »\r\nOriginally performed by Stone Temple Pilots\r\n3. Asking Alexandria – « Closer »\r\nOriginally performed by Nine Inch Nails\r\n4. The Color Morale – « Everlong »\r\nOriginally performed by The Foo Fighers\r\n5. Chunk! No, Captain Chunk! – « All Star »\r\nOriginally performed by Smash Mouth\r\n6. Mayday Parade – « Comedown »\r\nOriginally performed by Bush\r\n7. Motionless In White – « Du Hast »\r\nOriginally performed by Rammstein\r\n8. Yellowcard – « Today »\r\nOriginally performed by Smashing Pumpkins\r\n9. Hands Like Houses – « Torn »\r\nOriginally performed by Natalie Imbruglia\r\n10. The Ghost Inside – « Southtown »\r\nOriginally performed by P.O.D.\r\n11. Falling In Reverse – « Gangsta’s Paradise »\r\nOriginally performed by Coolio\r\n12. ICE NINE KILLS – « Good Riddance (Time Of Your Life) »\r\nOriginally performed by Green Day', 'Chunk! No, Captain Chunk! – All Star', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-04-09 11:45:55', '2014-04-09 09:45:55', '', 47, 'http://wu.josealbea.com/47-revision-v1/', 0, 'revision', '', 0),
(51, 2, '2014-04-09 11:46:23', '2014-04-09 09:46:23', 'Fearless Records sort aujourd’hui sa compile Punk Goes 90s #2 ! On y retrouve notamment les français de Chunk! No, Captain Chunk! avec leur reprise « All Star » de Smash Mouth ! <iframe src="//www.youtube.com/embed/0fn1jEjX5PA" height="315" width="560" allowfullscreen="" frameborder="0"></iframe> Au programme : Punk Goes 90s Track List: 1. Get Scared – « My Own Worst Enemy » Originally performed by Lit 2. Memphis May Fire – « Interstate Love Song » Originally performed by Stone Temple Pilots 3. Asking Alexandria – « Closer » Originally performed by Nine Inch Nails 4. The Color Morale – « Everlong » Originally performed by The Foo Fighers 5. Chunk! No, Captain Chunk! – « All Star » Originally performed by Smash Mouth 6. Mayday Parade – « Comedown » Originally performed by Bush 7. Motionless In White – « Du Hast » Originally performed by Rammstein 8. Yellowcard – « Today » Originally performed by Smashing Pumpkins 9. Hands Like Houses – « Torn » Originally performed by Natalie Imbruglia 10. The Ghost Inside – « Southtown » Originally performed by P.O.D. 11. Falling In Reverse – « Gangsta’s Paradise » Originally performed by Coolio 12. ICE NINE KILLS – « Good Riddance (Time Of Your Life) » Originally performed by Green Day', 'Chunk! No, Captain Chunk! – All Star', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-04-09 11:46:23', '2014-04-09 09:46:23', '', 47, 'http://wu.josealbea.com/47-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2014-04-09 12:04:38', '2014-04-09 10:04:38', '', 'Carrousel Page d''accueil', '', 'publish', 'closed', 'closed', '', 'acf_carrousel-page-daccueil', '', '', '2014-04-09 12:07:38', '2014-04-09 10:07:38', '', 0, 'http://wu.josealbea.com/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(56, 1, '2014-04-09 12:25:48', '2014-04-09 10:25:48', '[wysija_page]', 'Confirmation d’inscription', '', 'publish', 'open', 'open', '', 'subscriptions', '', '', '2014-04-09 12:25:48', '2014-04-09 10:25:48', '', 0, 'http://wu.josealbea.com/?wysijap=subscriptions', 0, 'wysijap', '', 0),
(59, 1, '2014-04-09 16:23:49', '2014-04-09 14:23:49', 'Fearless Records sort aujourd’hui sa compile Punk Goes 90s #2 ! On y retrouve notamment les français de Chunk! No, Captain Chunk! avec leur reprise « All Star » de Smash Mouth !\n\n<iframe src="//www.youtube.com/embed/0fn1jEjX5PA" height="315" width="560" allowfullscreen="" frameborder="0"></iframe> Au programme : Punk Goes 90s Track List: 1. Get Scared – « My Own Worst Enemy » Originally performed by Lit 2. Memphis May Fire – « Interstate Love Song » Originally performed by Stone Temple Pilots 3. Asking Alexandria – « Closer » Originally performed by Nine Inch Nails 4. The Color Morale – « Everlong » Originally performed by The Foo Fighers 5. Chunk! No, Captain Chunk! – « All Star » Originally performed by Smash Mouth 6. Mayday Parade – « Comedown » Originally performed by Bush 7. Motionless In White – « Du Hast » Originally performed by Rammstein 8. Yellowcard – « Today » Originally performed by Smashing Pumpkins 9. Hands Like Houses – « Torn » Originally performed by Natalie Imbruglia 10. The Ghost Inside – « Southtown » Originally performed by P.O.D. 11. Falling In Reverse – « Gangsta’s Paradise » Originally performed by Coolio 12. ICE NINE KILLS – « Good Riddance (Time Of Your Life) » Originally performed by Green Day', 'Chunk! No, Captain Chunk! – All Star', '', 'inherit', 'open', 'open', '', '47-autosave-v1', '', '', '2014-04-09 16:23:49', '2014-04-09 14:23:49', '', 47, 'http://wu.josealbea.com/47-autosave-v1/', 0, 'revision', '', 0),
(60, 2, '2014-04-09 18:03:47', '2014-04-09 16:03:47', '', 'Custom agenda', '', 'publish', 'closed', 'closed', '', 'acf_custom-agenda', '', '', '2014-05-02 18:06:40', '2014-05-02 16:06:40', '', 0, 'http://wu.josealbea.com/?post_type=acf&#038;p=60', 0, 'acf', '', 0),
(62, 2, '2014-04-09 18:08:17', '2014-04-09 16:08:17', '', 'Conférence avec Descoutures', '', 'publish', 'closed', 'closed', '', '62', '', '', '2014-05-02 18:19:43', '2014-05-02 16:19:43', '', 0, 'http://wu.josealbea.com/?post_type=agenda&#038;p=62', 0, 'agenda', '', 0),
(63, 2, '2014-04-09 18:09:10', '2014-04-09 16:09:10', '', 'RDV ESGI', '', 'publish', 'closed', 'closed', '', 'rdv-esgi', '', '', '2014-05-02 18:08:04', '2014-05-02 16:08:04', '', 0, 'http://wu.josealbea.com/?post_type=agenda&#038;p=63', 0, 'agenda', '', 0),
(65, 3, '2014-04-10 10:17:16', '2014-04-10 08:17:16', '', 'RDV ESGI', '', 'inherit', 'open', 'open', '', '63-autosave-v1', '', '', '2014-04-10 10:17:16', '2014-04-10 08:17:16', '', 63, 'http://wu.josealbea.com/63-autosave-v1/', 0, 'revision', '', 0),
(66, 3, '2014-04-10 10:21:16', '2014-04-10 08:21:16', '', 'Conférence avec Descoutures', '', 'inherit', 'open', 'open', '', '62-autosave-v1', '', '', '2014-04-10 10:21:16', '2014-04-10 08:21:16', '', 62, 'http://wu.josealbea.com/62-autosave-v1/', 0, 'revision', '', 0),
(67, 3, '2014-04-10 10:41:33', '2014-04-10 08:41:33', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié.\n\n<img class="alignnone" alt="" src="http://www.shockmansion.com/wp-content/myimages/2011/02/Irina-Shayk_0211_06.jpg" width="550" height="856" />\n\nIl a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\n\nUne vidéo sympa :\n\n&nbsp;', 'Irina Shayk', '', 'inherit', 'open', 'open', '', '39-autosave-v1', '', '', '2014-04-10 10:41:33', '2014-04-10 08:41:33', '', 39, 'http://wu.josealbea.com/39-autosave-v1/', 0, 'revision', '', 0),
(68, 3, '2014-04-10 10:34:13', '2014-04-10 08:34:13', '', 'Irina_Shayk-SI_2011', '', 'inherit', 'open', 'open', '', 'irina_shayk-si_2011', '', '', '2014-04-10 10:34:13', '2014-04-10 08:34:13', '', 39, 'http://wu.josealbea.com/wp-content/uploads/2014/04/Irina_Shayk-SI_2011.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 3, '2014-04-10 10:34:26', '2014-04-10 08:34:26', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Irina Shayk', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2014-04-10 10:34:26', '2014-04-10 08:34:26', '', 39, 'http://wu.josealbea.com/39-revision-v1/', 0, 'revision', '', 0),
(71, 3, '2014-04-10 10:42:17', '2014-04-10 08:42:17', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié.\r\n\r\n<img class="alignnone" alt="" src="http://www.shockmansion.com/wp-content/myimages/2011/02/Irina-Shayk_0211_06.jpg" width="550" height="856" />\r\n\r\nIl a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nUne vidéo sympa :\r\n\r\n&lt;span&gt;&lt;iframe width="550" height="395" frameborder="0" allowfullscreen="" src="http://www.youtube.com/embed/ovcMkRhXNhk?wmode=transparent&amp;amp;fs=1&amp;amp;hl=en&amp;amp;showinfo=0&amp;amp;iv_load_policy=3&amp;amp;showsearch=0&amp;amp;rel=0&amp;amp;theme=dark" type="text/html" title="YouTube video player"&gt;&lt;/iframe&gt;&lt;/span&gt;', 'Irina Shayk', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2014-04-10 10:42:17', '2014-04-10 08:42:17', '', 39, 'http://wu.josealbea.com/39-revision-v1/', 0, 'revision', '', 0),
(72, 3, '2014-04-10 10:42:58', '2014-04-10 08:42:58', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. <img class="alignnone" alt="" src="http://www.shockmansion.com/wp-content/myimages/2011/02/Irina-Shayk_0211_06.jpg" width="550" height="856" /> Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nUne vidéo sympa :\r\n\r\n<span class="youtube"><iframe width="550" height="395" frameborder="0" allowfullscreen="" src="http://www.youtube.com/embed/ovcMkRhXNhk?wmode=transparent&amp;fs=1&amp;hl=en&amp;showinfo=0&amp;iv_load_policy=3&amp;showsearch=0&amp;rel=0&amp;theme=dark" type="text/html" class="youtube-player" title="YouTube video player"></iframe></span>', 'Irina Shayk', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2014-04-10 10:42:58', '2014-04-10 08:42:58', '', 39, 'http://wu.josealbea.com/39-revision-v1/', 0, 'revision', '', 0),
(73, 3, '2014-04-10 10:43:26', '2014-04-10 08:43:26', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. <img class="alignnone" alt="" src="http://www.shockmansion.com/wp-content/myimages/2011/02/Irina-Shayk_0211_06.jpg" width="550" height="856" />\r\nIl a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nUne vidéo sympa :\r\n\r\n<span class="youtube"><iframe width="550" height="395" frameborder="0" allowfullscreen="" src="http://www.youtube.com/embed/ovcMkRhXNhk?wmode=transparent&amp;fs=1&amp;hl=en&amp;showinfo=0&amp;iv_load_policy=3&amp;showsearch=0&amp;rel=0&amp;theme=dark" type="text/html" class="youtube-player" title="YouTube video player"></iframe></span>', 'Irina Shayk', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2014-04-10 10:43:26', '2014-04-10 08:43:26', '', 39, 'http://wu.josealbea.com/39-revision-v1/', 0, 'revision', '', 0),
(74, 3, '2014-04-10 10:47:05', '2014-04-10 08:47:05', 'a young girl going in for sport', 'going in for sport', '', 'inherit', 'open', 'open', '', 'going-in-for-sport', '', '', '2014-04-10 10:47:05', '2014-04-10 08:47:05', '', 47, 'http://wu.josealbea.com/wp-content/uploads/2014/04/sport.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 3, '2014-04-10 10:47:19', '2014-04-10 08:47:19', 'Fearless Records sort aujourd’hui sa compile Punk Goes 90s #2 ! On y retrouve notamment les français de Chunk! No, Captain Chunk! avec leur reprise « All Star » de Smash Mouth ! <iframe src="//www.youtube.com/embed/0fn1jEjX5PA" height="315" width="560" allowfullscreen="" frameborder="0"></iframe> Au programme : Punk Goes 90s Track List: 1. Get Scared – « My Own Worst Enemy » Originally performed by Lit 2. Memphis May Fire – « Interstate Love Song » Originally performed by Stone Temple Pilots 3. Asking Alexandria – « Closer » Originally performed by Nine Inch Nails 4. The Color Morale – « Everlong » Originally performed by The Foo Fighers 5. Chunk! No, Captain Chunk! – « All Star » Originally performed by Smash Mouth 6. Mayday Parade – « Comedown » Originally performed by Bush 7. Motionless In White – « Du Hast » Originally performed by Rammstein 8. Yellowcard – « Today » Originally performed by Smashing Pumpkins 9. Hands Like Houses – « Torn » Originally performed by Natalie Imbruglia 10. The Ghost Inside – « Southtown » Originally performed by P.O.D. 11. Falling In Reverse – « Gangsta’s Paradise » Originally performed by Coolio 12. ICE NINE KILLS – « Good Riddance (Time Of Your Life) » Originally performed by Green Day', 'Forest Hill', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-04-10 10:47:19', '2014-04-10 08:47:19', '', 47, 'http://wu.josealbea.com/47-revision-v1/', 0, 'revision', '', 0),
(76, 3, '2014-04-10 10:49:50', '2014-04-10 08:49:50', '', 'rohff-pose-avec-sa-marque-distinct', '', 'inherit', 'open', 'open', '', 'rohff-pose-avec-sa-marque-distinct', '', '', '2014-04-10 10:49:50', '2014-04-10 08:49:50', '', 44, 'http://wu.josealbea.com/wp-content/uploads/2014/04/rohff-pose-avec-sa-marque-distinct.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 3, '2014-04-10 10:49:52', '2014-04-10 08:49:52', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\n\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Rohff au Zenith de Paris', '', 'inherit', 'open', 'open', '', '44-autosave-v1', '', '', '2014-04-10 10:49:52', '2014-04-10 08:49:52', '', 44, 'http://wu.josealbea.com/44-autosave-v1/', 0, 'revision', '', 0),
(78, 3, '2014-04-10 10:50:04', '2014-04-10 08:50:04', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Rohff au Zenith de Paris', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2014-04-10 10:50:04', '2014-04-10 08:50:04', '', 44, 'http://wu.josealbea.com/44-revision-v1/', 0, 'revision', '', 0),
(79, 3, '2014-04-10 10:54:26', '2014-04-10 08:54:26', '', 'blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting', '', 'inherit', 'open', 'open', '', 'blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting', '', '', '2014-04-10 10:54:26', '2014-04-10 08:54:26', '', 29, 'http://wu.josealbea.com/wp-content/uploads/2014/04/blondie-portrait-by-richard-davies-turksworks-art-graphic-design-digital-illustration-painting.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 3, '2014-04-10 10:54:36', '2014-04-10 08:54:36', '<a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26.png"><img class="alignnone size-medium wp-image-30" alt="Capture d’écran 2014-04-09 à 10.36.26" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.26-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15.png"><img class="alignnone size-medium wp-image-31" alt="Capture d’écran 2014-04-09 à 10.36.15" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.36.15-300x245.png" width="300" height="245" /></a> <a href="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png"><img class="alignnone size-full wp-image-25" alt="Capture d’écran 2014-04-09 à 10.32.13" src="http://wu.josealbea.com/wp-content/uploads/2014/04/Capture-d’écran-2014-04-09-à-10.32.13.png" width="297" height="297" /></a>[gallery ids="31,25,30"]', 'Portrait Design', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-04-10 10:54:36', '2014-04-10 08:54:36', '', 29, 'http://wu.josealbea.com/29-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(81, 3, '2014-04-10 10:57:32', '2014-04-10 08:57:32', 'Les fans de l''homme-araignée n''ont plus à attendre très longtemps. «Amazing Spider-Man 2 : le destin d’un héros» , le nouvel opus des aventures de Peter Parker sort le 30 avril. En pleine promo mondiale, Marc Webb, 39 ans, le réalisateur américain de ce blockbuster fera escale à Paris ... et à Saint-Ouen dans les locaux de la rédaction du Parisien.\n\nSUR LE MÊME SUJET\n\n    «The amazing spiderman 2» : découvrez la bande annonce «The amazing spiderman 2» : découvrez la bande annonce\n\nCe vendredi 11 avril, il a accepté de participer à un chat exceptionnel avec les internautes du Parisien.fr. Vous pouvez d’ores et déjà lui poser toutes les questions sur cette franchise Marvel dans le champ des commentaires. Le metteur en scène, âgé de 39 ans, déjà auteur du premier opus, y répondra en direct entre 11 h et 11 h 30.\n\n«Tout le monde n''a pas le droit à un happy-ending»... L''accroche de la bande-annonce des aventures de l''incroyable Spiderman laisse augurer d''une oeuvre plus sombre qu''à l''ordinaire.', 'The Amazing Spiderman II', '', 'inherit', 'open', 'open', '', '27-autosave-v1', '', '', '2014-04-10 10:57:32', '2014-04-10 08:57:32', '', 27, 'http://wu.josealbea.com/27-autosave-v1/', 0, 'revision', '', 0),
(82, 3, '2014-04-10 10:57:47', '2014-04-10 08:57:47', '', '1386304167543-the-amazing-spider-man-2-0e9210-1386304208', '', 'inherit', 'open', 'open', '', '1386304167543-the-amazing-spider-man-2-0e9210-1386304208', '', '', '2014-04-10 10:57:47', '2014-04-10 08:57:47', '', 27, 'http://wu.josealbea.com/wp-content/uploads/2014/04/1386304167543-the-amazing-spider-man-2-0e9210-1386304208.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 3, '2014-04-10 10:57:58', '2014-04-10 08:57:58', 'Les fans de l''homme-araignée n''ont plus à attendre très longtemps. «Amazing Spider-Man 2 : le destin d’un héros» , le nouvel opus des aventures de Peter Parker sort le 30 avril. En pleine promo mondiale, Marc Webb, 39 ans, le réalisateur américain de ce blockbuster fera escale à Paris ... et à Saint-Ouen dans les locaux de la rédaction du Parisien.\r\n\r\nSUR LE MÊME SUJET\r\n\r\n    «The amazing spiderman 2» : découvrez la bande annonce «The amazing spiderman 2» : découvrez la bande annonce\r\n\r\nCe vendredi 11 avril, il a accepté de participer à un chat exceptionnel avec les internautes du Parisien.fr. Vous pouvez d’ores et déjà lui poser toutes les questions sur cette franchise Marvel dans le champ des commentaires. Le metteur en scène, âgé de 39 ans, déjà auteur du premier opus, y répondra en direct entre 11 h et 11 h 30.\r\n\r\n«Tout le monde n''a pas le droit à un happy-ending»... L''accroche de la bande-annonce des aventures de l''incroyable Spiderman laisse augurer d''une oeuvre plus sombre qu''à l''ordinaire.', 'The Amazing Spiderman II', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2014-04-10 10:57:58', '2014-04-10 08:57:58', '', 27, 'http://wu.josealbea.com/27-revision-v1/', 0, 'revision', '', 0),
(84, 3, '2014-04-10 11:06:17', '2014-04-10 09:06:17', '', 'iPhone-Plus-Noir-01', '', 'inherit', 'open', 'open', '', 'iphone-plus-noir-01', '', '', '2014-04-10 11:06:17', '2014-04-10 09:06:17', '', 6, 'http://wu.josealbea.com/wp-content/uploads/2014/04/iPhone-Plus-Noir-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 3, '2014-04-10 11:06:31', '2014-04-10 09:06:31', '<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n&nbsp;\r\n<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n&nbsp;', 'Iphone 6 première images', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-04-10 11:06:31', '2014-04-10 09:06:31', '', 6, 'http://wu.josealbea.com/6-revision-v1/', 0, 'revision', '', 0),
(86, 3, '2014-04-10 11:11:00', '2014-04-10 09:11:00', '', 'Concert Rohff', '', 'publish', 'closed', 'closed', '', 'concert-rohff', '', '', '2014-05-02 18:07:58', '2014-05-02 16:07:58', '', 0, 'http://wu.josealbea.com/?post_type=agenda&#038;p=86', 0, 'agenda', '', 0),
(87, 3, '2014-04-10 11:13:38', '2014-04-10 09:13:38', '', 'Foot Salle', '', 'publish', 'closed', 'closed', '', 'foot-salle', '', '', '2014-05-02 18:20:56', '2014-05-02 16:20:56', '', 0, 'http://wu.josealbea.com/?post_type=agenda&#038;p=87', 0, 'agenda', '', 0),
(88, 3, '2014-04-10 11:16:09', '2014-04-10 09:16:09', '', 'Conférence de presse', '', 'publish', 'closed', 'closed', '', 'conference-presse', '', '', '2014-05-02 18:21:18', '2014-05-02 16:21:18', '', 0, 'http://wu.josealbea.com/?post_type=agenda&#038;p=88', 0, 'agenda', '', 0),
(89, 3, '2014-04-10 11:20:23', '2014-04-10 09:20:23', '', 'Conférence Samsung', '', 'publish', 'closed', 'closed', '', 'conference-samsung', '', '', '2014-05-02 18:20:21', '2014-05-02 16:20:21', '', 0, 'http://wu.josealbea.com/?post_type=agenda&#038;p=89', 0, 'agenda', '', 0),
(90, 3, '2014-04-10 11:22:47', '2014-04-10 09:22:47', '', 'Sport', '', 'publish', 'closed', 'closed', '', 'sport', '', '', '2014-05-02 18:20:04', '2014-05-02 16:20:04', '', 0, 'http://wu.josealbea.com/?post_type=agenda&#038;p=90', 0, 'agenda', '', 0),
(92, 0, '2014-04-11 14:08:40', '0000-00-00 00:00:00', 'qsdsqdsqdqd', 'qsdsqdsqdqd', '', 'pending', 'open', 'open', '', '', '', '', '2014-04-11 14:08:40', '0000-00-00 00:00:00', '', 0, 'http://wu.josealbea.com/?p=92', 0, 'post', '', 0),
(93, 0, '2014-04-11 14:09:07', '0000-00-00 00:00:00', 'qsdsqdsqdqd', 'qsdsqdsqdqd', '', 'pending', 'open', 'open', '', '', '', '', '2014-04-11 14:09:07', '0000-00-00 00:00:00', '', 0, 'http://wu.josealbea.com/?p=93', 0, 'post', '', 0),
(94, 1, '2014-04-11 14:22:28', '0000-00-00 00:00:00', 'woijcqosicjqsoicjqsocijqscoijqscoiqsjoqij', 'qsdqdqsdqsdqsd', '', 'pending', 'open', 'open', '', '', '', '', '2014-04-11 14:22:28', '0000-00-00 00:00:00', '', 0, 'http://wu.josealbea.com/?p=94', 0, 'post', '', 0),
(95, 1, '2014-04-11 14:28:59', '0000-00-00 00:00:00', 'woijcqosicjqsoicjqsocijqscoijqscoiqsjoqij', 'qsdqdqsdqsdqsd', '', 'pending', 'open', 'open', '', '', '', '', '2014-04-11 14:28:59', '0000-00-00 00:00:00', '', 0, 'http://wu.josealbea.com/?p=95', 0, 'post', '', 0),
(96, 1, '2014-04-11 14:29:55', '0000-00-00 00:00:00', 'sdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv z', 'qsdqsdq', '', 'pending', 'open', 'open', '', '', '', '', '2014-04-11 14:29:55', '0000-00-00 00:00:00', '', 0, 'http://wu.josealbea.com/?p=96', 0, 'post', '', 0),
(97, 1, '2014-04-11 16:13:10', '0000-00-00 00:00:00', 'sdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv zsdsqdfzefaregerverzae fzeaf zef zaef zdfqsd sd sdqv sv z', 'qsdqsdq', '', 'pending', 'open', 'open', '', '', '', '', '2014-04-11 16:13:10', '0000-00-00 00:00:00', '', 0, 'http://wu.josealbea.com/?p=97', 0, 'post', '', 0),
(100, 1, '2014-04-28 10:28:06', '2014-04-28 08:28:06', '', 'logo-esgi', '', 'inherit', 'open', 'open', '', 'logo-esgi', '', '', '2014-04-28 10:28:06', '2014-04-28 08:28:06', '', 63, 'http://wu.josealbea.com/wp-content/uploads/2014/04/LOGO-ESGI.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2014-05-02 18:40:30', '2014-05-02 16:40:30', '[wpgp_form_signin label_title="" submit_label="Connexion" rememberMe="yes"]\r\n[wpgp_form_meta label="Nom d''utilisateur" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Mot de passe" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\r\n[/wpgp_form_signin]', 'Connexion', '', 'publish', 'open', 'closed', '', 'connexion', '', '', '2014-05-13 11:09:22', '2014-05-13 09:09:22', '', 0, 'http://localhost/whatsupmusic/?page_id=101', 0, 'page', '', 0),
(102, 1, '2014-05-02 18:40:30', '2014-05-02 16:40:30', '', 'Login', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2014-05-02 18:40:30', '2014-05-02 16:40:30', '', 101, 'http://localhost/whatsupmusic/101-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2014-05-10 15:13:28', '2014-05-10 13:13:28', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-05-10 15:13:28', '2014-05-10 13:13:28', '', 1, 'http://localhost/whatsupmusic/1-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2014-05-10 16:43:00', '2014-05-10 14:43:00', '[wpgp_form label_title="Titre de l''article" label_content="Contenu de l''article" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="yes" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Votre article a été soumis à notre équipe !"]\r\n[/wpgp_form]', 'Proposer article', '', 'publish', 'open', 'open', '', 'proposer-article', '', '', '2014-05-16 18:38:11', '2014-05-16 16:38:11', '', 0, 'http://localhost/whatsupmusic/?page_id=113', 0, 'page', '', 0),
(114, 1, '2014-05-10 16:43:00', '2014-05-10 14:43:00', '[wpgp_form label_title="Post Title" label_content="Post Content" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="no" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Merci pour la soumission de votre article."]\r\n[wpgp_form_meta label="eg: First Name" metakey="firstname" type="text"][/wpgp_form_meta]\r\n[/wpgp_form]', 'test publier', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-05-10 16:43:00', '2014-05-10 14:43:00', '', 113, 'http://localhost/whatsupmusic/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2014-05-16 18:37:40', '2014-05-16 16:37:40', '[wpgp_form label_title="Post Title" label_content="Publication d''un a" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="yes" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Thanks for send the post!"]\n[wpgp_form_meta label="eg: First Name" metakey="firstname" type="text"][/wpgp_form_meta]\n[/wpgp_form]', 'Proposer article', '', 'inherit', 'open', 'open', '', '113-autosave-v1', '', '', '2014-05-16 18:37:40', '2014-05-16 16:37:40', '', 113, 'http://localhost/whatsupmusic/113-autosave-v1/', 0, 'revision', '', 0),
(116, 1, '2014-05-10 17:21:09', '2014-05-10 15:21:09', '[wpgp_form label_title="Titre de l''article" label_content="Contenu de l''article" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="no" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Merci pour la soumission de votre article."]\r\n[wpgp_form_meta label="eg: First Name" metakey="firstname" type="text"][/wpgp_form_meta]\r\n[/wpgp_form]', 'test publier', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-05-10 17:21:09', '2014-05-10 15:21:09', '', 113, 'http://localhost/whatsupmusic/113-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2014-05-10 17:27:33', '2014-05-10 15:27:33', '[wpgp_form label_title="Titre de l''article" label_content="Contenu de l''article" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="no" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Merci pour la soumission de votre article."]\r\n[/wpgp_form]', 'test publier', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-05-10 17:27:33', '2014-05-10 15:27:33', '', 113, 'http://localhost/whatsupmusic/113-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2014-05-10 18:27:41', '2014-05-10 16:27:41', '[wpgp_form label_title="Titre de l''article" label_content="Contenu de l''article" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="no" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Merci pour la soumission de votre article."]\r\n[/wpgp_form]', 'Proposer article', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-05-10 18:27:41', '2014-05-10 16:27:41', '', 113, 'http://localhost/whatsupmusic/113-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2014-05-10 18:32:22', '2014-05-10 16:32:22', '[wpgp_form label_title="Titre de l''article" label_content="Contenu de l''article" allow_comment="yes" allow_trackping="yes" taxonomies="categories,post_tag" allow_guest_post="no" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Merci pour la soumission de votre article."]\r\n[/wpgp_form]', 'Proposer article', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-05-10 18:32:22', '2014-05-10 16:32:22', '', 113, 'http://localhost/whatsupmusic/113-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2014-05-10 18:34:37', '2014-05-10 16:34:37', '[wpgp_form label_title="Post Title" label_content="Post Content" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="yes" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Thanks for send the post!"]\r\n[wpgp_form_meta label="eg: First Name" metakey="firstname" type="text"][/wpgp_form_meta]\r\n[/wpgp_form]', 'Proposer article', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-05-10 18:34:37', '2014-05-10 16:34:37', '', 113, 'http://localhost/whatsupmusic/113-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2014-05-10 18:36:03', '2014-05-10 16:36:03', '[wpgp_form_signin label_title="Sign In Form" submit_label="Sign In!" rememberMe="yes"]\n[wpgp_form_meta label="Login Name" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\n[wpgp_form_meta label="Password" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\n[/wpgp_form_signin]', 'Login', '', 'inherit', 'open', 'open', '', '101-autosave-v1', '', '', '2014-05-10 18:36:03', '2014-05-10 16:36:03', '', 101, 'http://localhost/whatsupmusic/101-autosave-v1/', 0, 'revision', '', 0),
(122, 1, '2014-05-10 18:36:25', '2014-05-10 16:36:25', '[wpgp_form_signin label_title="Sign In Form" submit_label="Sign In!" rememberMe="yes"]\r\n[wpgp_form_meta label="Login Name" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Password" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\r\n[/wpgp_form_signin]', 'Login', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2014-05-10 18:36:25', '2014-05-10 16:36:25', '', 101, 'http://localhost/whatsupmusic/101-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2014-05-11 18:30:07', '2014-05-11 16:30:07', '[wpgp_form_signin submit_label="Connexion" rememberMe="yes"]\r\n[wpgp_form_meta label="Login Name" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Password" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\r\n[/wpgp_form_signin]', 'Login', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2014-05-11 18:30:07', '2014-05-11 16:30:07', '', 101, 'http://localhost/whatsupmusic/101-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2014-05-11 18:30:40', '2014-05-11 16:30:40', '[wpgp_form_signin label_title="" submit_label="Connexion" rememberMe="yes"]\r\n[wpgp_form_meta label="Nom d''utilisateur" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Mot de passe" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\r\n[/wpgp_form_signin]', 'Login', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2014-05-11 18:30:40', '2014-05-11 16:30:40', '', 101, 'http://localhost/whatsupmusic/101-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2014-05-11 18:55:47', '2014-05-11 16:55:47', '[wpgp_form_signup label_title="Signup Form" submit_label="S''inscrire" recaptcha="yes"]\r\n[wpgp_form_meta label="Votre nom d''utilisateur" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Votre adresse email" metakey="user_email" type="email" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Votre mot de passe" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Confirmer votre mot de passe" metakey="user_passconfirm" type="password" required="required"][/wpgp_form_meta]\r\n[/wpgp_form_signup]', 'Inscription', '', 'publish', 'open', 'open', '', 'inscription', '', '', '2014-05-27 12:26:48', '2014-05-27 10:26:48', '', 0, 'http://localhost/whatsupmusic/?page_id=125', 0, 'page', '', 0),
(126, 1, '2014-05-11 18:55:47', '2014-05-11 16:55:47', '[wpgp_form_signup label_title="Signup Form" submit_label="S''inscrire" recaptcha="yes"]\r\n[wpgp_form_meta label="Votre nom d''utilisateur" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Votre adresse email" metakey="user_email" type="email" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Votre mot de passe" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Confirmer votre mot de passe" metakey="user_passconfirm" type="password" required="required"][/wpgp_form_meta]\r\n[/wpgp_form_signup]', 'Inscription', '', 'inherit', 'open', 'open', '', '125-revision-v1', '', '', '2014-05-11 18:55:47', '2014-05-11 16:55:47', '', 125, 'http://localhost/whatsupmusic/125-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2014-05-11 19:31:35', '2014-05-11 17:31:35', '[wpgp_listingpage post_type="post" editpage_id="" class=""][/wpgp_listingpage]', 'Liste de vos articles', '', 'publish', 'open', 'closed', '', 'liste-articles', '', '', '2014-05-13 11:09:44', '2014-05-13 09:09:44', '', 0, 'http://localhost/whatsupmusic/?page_id=128', 0, 'page', '', 0),
(129, 1, '2014-05-11 19:31:35', '2014-05-11 17:31:35', '[wpgp_listingpage post_type="post" editpage_id="" class=""][/wpgp_listingpage]', 'Liste de vos articles', '', 'inherit', 'open', 'open', '', '128-revision-v1', '', '', '2014-05-11 19:31:35', '2014-05-11 17:31:35', '', 128, 'http://localhost/whatsupmusic/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2014-05-13 00:15:05', '2014-05-12 22:15:05', ' ', '', '', 'publish', 'open', 'open', '', '130', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 3, 'http://localhost/whatsupmusic/?p=130', 4, 'nav_menu_item', '', 0),
(131, 1, '2014-05-13 00:15:04', '2014-05-12 22:15:04', ' ', '', '', 'publish', 'open', 'open', '', '131', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 3, 'http://localhost/whatsupmusic/?p=131', 2, 'nav_menu_item', '', 0),
(132, 1, '2014-05-13 00:15:05', '2014-05-12 22:15:05', ' ', '', '', 'publish', 'open', 'open', '', '132', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 3, 'http://localhost/whatsupmusic/?p=132', 6, 'nav_menu_item', '', 0),
(133, 1, '2014-05-13 00:15:05', '2014-05-12 22:15:05', ' ', '', '', 'publish', 'open', 'open', '', '133', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 3, 'http://localhost/whatsupmusic/?p=133', 5, 'nav_menu_item', '', 0),
(134, 1, '2014-05-13 00:15:04', '2014-05-12 22:15:04', ' ', '', '', 'publish', 'open', 'open', '', '134', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 3, 'http://localhost/whatsupmusic/?p=134', 3, 'nav_menu_item', '', 0),
(135, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=135', 1, 'nav_menu_item', '', 0),
(136, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 5, 'http://localhost/whatsupmusic/?p=136', 1, 'nav_menu_item', '', 0),
(137, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 5, 'http://localhost/whatsupmusic/?p=137', 1, 'nav_menu_item', '', 0),
(138, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 5, 'http://localhost/whatsupmusic/?p=138', 1, 'nav_menu_item', '', 0),
(139, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 5, 'http://localhost/whatsupmusic/?p=139', 1, 'nav_menu_item', '', 0),
(140, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 5, 'http://localhost/whatsupmusic/?p=140', 1, 'nav_menu_item', '', 0),
(141, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 5, 'http://localhost/whatsupmusic/?p=141', 1, 'nav_menu_item', '', 0),
(142, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=142', 1, 'nav_menu_item', '', 0),
(143, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 6, 'http://localhost/whatsupmusic/?p=143', 1, 'nav_menu_item', '', 0),
(144, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 6, 'http://localhost/whatsupmusic/?p=144', 1, 'nav_menu_item', '', 0),
(145, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 6, 'http://localhost/whatsupmusic/?p=145', 1, 'nav_menu_item', '', 0),
(146, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 6, 'http://localhost/whatsupmusic/?p=146', 1, 'nav_menu_item', '', 0),
(147, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=147', 1, 'nav_menu_item', '', 0),
(148, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=148', 1, 'nav_menu_item', '', 0),
(149, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 7, 'http://localhost/whatsupmusic/?p=149', 1, 'nav_menu_item', '', 0),
(150, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 7, 'http://localhost/whatsupmusic/?p=150', 1, 'nav_menu_item', '', 0),
(151, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=151', 1, 'nav_menu_item', '', 0),
(152, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 4, 'http://localhost/whatsupmusic/?p=152', 1, 'nav_menu_item', '', 0),
(153, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 4, 'http://localhost/whatsupmusic/?p=153', 1, 'nav_menu_item', '', 0),
(154, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 4, 'http://localhost/whatsupmusic/?p=154', 1, 'nav_menu_item', '', 0),
(155, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=155', 1, 'nav_menu_item', '', 0),
(156, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 3, 'http://localhost/whatsupmusic/?p=156', 1, 'nav_menu_item', '', 0),
(157, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 3, 'http://localhost/whatsupmusic/?p=157', 1, 'nav_menu_item', '', 0),
(158, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 3, 'http://localhost/whatsupmusic/?p=158', 1, 'nav_menu_item', '', 0),
(159, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 3, 'http://localhost/whatsupmusic/?p=159', 1, 'nav_menu_item', '', 0),
(160, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 3, 'http://localhost/whatsupmusic/?p=160', 1, 'nav_menu_item', '', 0),
(161, 1, '2014-05-13 00:18:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=161', 1, 'nav_menu_item', '', 0),
(162, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=162', 1, 'nav_menu_item', '', 0),
(163, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 41, 'http://localhost/whatsupmusic/?p=163', 1, 'nav_menu_item', '', 0),
(164, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 41, 'http://localhost/whatsupmusic/?p=164', 1, 'nav_menu_item', '', 0),
(165, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 41, 'http://localhost/whatsupmusic/?p=165', 1, 'nav_menu_item', '', 0),
(166, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 41, 'http://localhost/whatsupmusic/?p=166', 1, 'nav_menu_item', '', 0),
(167, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/whatsupmusic/?p=167', 1, 'nav_menu_item', '', 0),
(168, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 11, 'http://localhost/whatsupmusic/?p=168', 1, 'nav_menu_item', '', 0),
(169, 1, '2014-05-13 00:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 00:18:58', '0000-00-00 00:00:00', '', 11, 'http://localhost/whatsupmusic/?p=169', 1, 'nav_menu_item', '', 0),
(170, 1, '2014-05-13 00:20:51', '2014-05-12 22:20:51', ' ', '', '', 'publish', 'open', 'open', '', '170', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 4, 'http://localhost/whatsupmusic/?p=170', 8, 'nav_menu_item', '', 0),
(171, 1, '2014-05-13 00:20:51', '2014-05-12 22:20:51', ' ', '', '', 'publish', 'open', 'open', '', '171', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 4, 'http://localhost/whatsupmusic/?p=171', 9, 'nav_menu_item', '', 0),
(172, 1, '2014-05-13 00:20:51', '2014-05-12 22:20:51', ' ', '', '', 'publish', 'open', 'open', '', '172', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 4, 'http://localhost/whatsupmusic/?p=172', 10, 'nav_menu_item', '', 0),
(173, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '173', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 5, 'http://localhost/whatsupmusic/?p=173', 17, 'nav_menu_item', '', 0),
(174, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '174', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 5, 'http://localhost/whatsupmusic/?p=174', 15, 'nav_menu_item', '', 0),
(175, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '175', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 5, 'http://localhost/whatsupmusic/?p=175', 16, 'nav_menu_item', '', 0),
(176, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '176', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 5, 'http://localhost/whatsupmusic/?p=176', 14, 'nav_menu_item', '', 0),
(177, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '177', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 5, 'http://localhost/whatsupmusic/?p=177', 12, 'nav_menu_item', '', 0),
(178, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '178', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 5, 'http://localhost/whatsupmusic/?p=178', 13, 'nav_menu_item', '', 0),
(179, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '179', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 6, 'http://localhost/whatsupmusic/?p=179', 19, 'nav_menu_item', '', 0),
(180, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '180', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 6, 'http://localhost/whatsupmusic/?p=180', 20, 'nav_menu_item', '', 0),
(181, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '181', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 6, 'http://localhost/whatsupmusic/?p=181', 22, 'nav_menu_item', '', 0),
(182, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '182', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 6, 'http://localhost/whatsupmusic/?p=182', 21, 'nav_menu_item', '', 0),
(183, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '183', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 7, 'http://localhost/whatsupmusic/?p=183', 24, 'nav_menu_item', '', 0),
(184, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '184', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 7, 'http://localhost/whatsupmusic/?p=184', 25, 'nav_menu_item', '', 0),
(185, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '185', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 11, 'http://localhost/whatsupmusic/?p=185', 28, 'nav_menu_item', '', 0),
(186, 1, '2014-05-13 00:20:52', '2014-05-12 22:20:52', ' ', '', '', 'publish', 'open', 'open', '', '186', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 11, 'http://localhost/whatsupmusic/?p=186', 27, 'nav_menu_item', '', 0),
(187, 1, '2014-05-13 10:12:14', '2014-05-13 08:12:14', ' ', '', '', 'publish', 'open', 'open', '', '187', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 0, 'http://localhost/whatsupmusic/?p=187', 29, 'nav_menu_item', '', 0),
(188, 1, '2014-05-13 10:12:14', '2014-05-13 08:12:14', ' ', '', '', 'publish', 'open', 'open', '', '188', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 41, 'http://localhost/whatsupmusic/?p=188', 31, 'nav_menu_item', '', 0),
(189, 1, '2014-05-13 10:12:14', '2014-05-13 08:12:14', ' ', '', '', 'publish', 'open', 'open', '', '189', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 41, 'http://localhost/whatsupmusic/?p=189', 33, 'nav_menu_item', '', 0),
(190, 1, '2014-05-13 10:12:14', '2014-05-13 08:12:14', ' ', '', '', 'publish', 'open', 'open', '', '190', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 41, 'http://localhost/whatsupmusic/?p=190', 32, 'nav_menu_item', '', 0),
(191, 1, '2014-05-13 10:12:14', '2014-05-13 08:12:14', ' ', '', '', 'publish', 'open', 'open', '', '191', '', '', '2014-05-27 12:46:57', '2014-05-27 10:46:57', '', 41, 'http://localhost/whatsupmusic/?p=191', 30, 'nav_menu_item', '', 0),
(192, 1, '2014-05-13 11:09:22', '2014-05-13 09:09:22', '[wpgp_form_signin label_title="" submit_label="Connexion" rememberMe="yes"]\r\n[wpgp_form_meta label="Nom d''utilisateur" metakey="user_login" type="text" required="required"][/wpgp_form_meta]\r\n[wpgp_form_meta label="Mot de passe" metakey="user_pass" type="password" required="required"][/wpgp_form_meta]\r\n[/wpgp_form_signin]', 'Connexion', '', 'inherit', 'open', 'open', '', '101-revision-v1', '', '', '2014-05-13 11:09:22', '2014-05-13 09:09:22', '', 101, 'http://localhost/whatsupmusic/101-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2014-05-13 15:16:12', '2014-05-13 13:16:12', '', 'CGU', '', 'publish', 'open', 'open', '', 'cgu', '', '', '2014-05-27 12:46:04', '2014-05-27 10:46:04', '', 0, 'http://localhost/WhatsUpMusic/?page_id=202', 0, 'page', '', 0),
(203, 1, '2014-05-13 15:16:12', '2014-05-13 13:16:12', '', 'cgu', '', 'inherit', 'open', 'open', '', '202-revision-v1', '', '', '2014-05-13 15:16:12', '2014-05-13 13:16:12', '', 202, 'http://localhost/WhatsUpMusic/202-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2014-05-13 15:16:27', '2014-05-13 13:16:27', '', 'Mentions légales', '', 'publish', 'open', 'open', '', 'mentions-legales', '', '', '2014-05-13 15:16:27', '2014-05-13 13:16:27', '', 0, 'http://localhost/WhatsUpMusic/?page_id=204', 0, 'page', '', 0),
(205, 1, '2014-05-13 15:16:27', '2014-05-13 13:16:27', '', 'Mentions légales', '', 'inherit', 'open', 'open', '', '204-revision-v1', '', '', '2014-05-13 15:16:27', '2014-05-13 13:16:27', '', 204, 'http://localhost/WhatsUpMusic/204-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2014-05-13 15:16:43', '2014-05-13 13:16:43', '', 'CGU', '', 'inherit', 'open', 'open', '', '202-revision-v1', '', '', '2014-05-13 15:16:43', '2014-05-13 13:16:43', '', 202, 'http://localhost/WhatsUpMusic/202-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2014-05-13 15:17:02', '2014-05-13 13:17:02', '', 'FAQ', '', 'inherit', 'open', 'open', '', '202-revision-v1', '', '', '2014-05-13 15:17:02', '2014-05-13 13:17:02', '', 202, 'http://localhost/WhatsUpMusic/202-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2014-05-13 15:17:18', '2014-05-13 13:17:18', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2014-05-13 15:17:18', '2014-05-13 13:17:18', '', 0, 'http://localhost/WhatsUpMusic/?page_id=208', 0, 'page', '', 0),
(209, 1, '2014-05-13 15:17:18', '2014-05-13 13:17:18', '', 'Contact', '', 'inherit', 'open', 'open', '', '208-revision-v1', '', '', '2014-05-13 15:17:18', '2014-05-13 13:17:18', '', 208, 'http://localhost/WhatsUpMusic/208-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2014-05-13 15:37:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 15:37:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/WhatsUpMusic/?p=210', 1, 'nav_menu_item', '', 0),
(211, 1, '2014-05-13 15:37:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 15:37:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/WhatsUpMusic/?p=211', 1, 'nav_menu_item', '', 0),
(212, 1, '2014-05-13 15:37:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 15:37:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/WhatsUpMusic/?p=212', 1, 'nav_menu_item', '', 0),
(213, 1, '2014-05-13 15:37:52', '2014-05-13 13:37:52', ' ', '', '', 'publish', 'open', 'open', '', '213', '', '', '2014-05-15 10:17:44', '2014-05-15 08:17:44', '', 0, 'http://localhost/WhatsUpMusic/?p=213', 6, 'nav_menu_item', '', 0),
(214, 1, '2014-05-13 15:37:52', '2014-05-13 13:37:52', ' ', '', '', 'publish', 'open', 'open', '', '214', '', '', '2014-05-15 10:17:44', '2014-05-15 08:17:44', '', 0, 'http://localhost/WhatsUpMusic/?p=214', 1, 'nav_menu_item', '', 0),
(215, 1, '2014-05-13 15:37:52', '2014-05-13 13:37:52', ' ', '', '', 'publish', 'open', 'open', '', '215', '', '', '2014-05-15 10:17:44', '2014-05-15 08:17:44', '', 0, 'http://localhost/WhatsUpMusic/?p=215', 2, 'nav_menu_item', '', 0),
(216, 1, '2014-05-13 15:37:52', '2014-05-13 13:37:52', ' ', '', '', 'publish', 'open', 'open', '', '216', '', '', '2014-05-15 10:17:44', '2014-05-15 08:17:44', '', 0, 'http://localhost/WhatsUpMusic/?p=216', 3, 'nav_menu_item', '', 0),
(217, 1, '2014-05-13 15:37:52', '2014-05-13 13:37:52', ' ', '', '', 'publish', 'open', 'open', '', '217', '', '', '2014-05-15 10:17:44', '2014-05-15 08:17:44', '', 0, 'http://localhost/WhatsUpMusic/?p=217', 4, 'nav_menu_item', '', 0),
(218, 1, '2014-05-13 15:37:52', '2014-05-13 13:37:52', ' ', '', '', 'publish', 'open', 'open', '', '218', '', '', '2014-05-15 10:17:44', '2014-05-15 08:17:44', '', 0, 'http://localhost/WhatsUpMusic/?p=218', 5, 'nav_menu_item', '', 0),
(219, 1, '2014-05-13 15:38:30', '2014-05-13 13:38:30', ' ', '', '', 'publish', 'open', 'open', '', '219', '', '', '2014-05-13 15:59:44', '2014-05-13 13:59:44', '', 0, 'http://localhost/WhatsUpMusic/?p=219', 1, 'nav_menu_item', '', 0),
(220, 1, '2014-05-13 15:38:30', '2014-05-13 13:38:30', ' ', '', '', 'publish', 'open', 'open', '', '220', '', '', '2014-05-13 15:59:44', '2014-05-13 13:59:44', '', 0, 'http://localhost/WhatsUpMusic/?p=220', 2, 'nav_menu_item', '', 0),
(221, 1, '2014-05-13 15:38:30', '2014-05-13 13:38:30', ' ', '', '', 'publish', 'open', 'open', '', '221', '', '', '2014-05-13 15:59:44', '2014-05-13 13:59:44', '', 0, 'http://localhost/WhatsUpMusic/?p=221', 3, 'nav_menu_item', '', 0),
(222, 1, '2014-05-13 15:59:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-05-13 15:59:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/WhatsUpMusic/?p=222', 1, 'nav_menu_item', '', 0),
(223, 1, '2014-05-13 16:00:05', '2014-05-13 14:00:05', ' ', '', '', 'publish', 'open', 'open', '', '223', '', '', '2014-05-15 10:17:44', '2014-05-15 08:17:44', '', 0, 'http://localhost/WhatsUpMusic/?p=223', 7, 'nav_menu_item', '', 0),
(224, 1, '2014-05-16 17:55:18', '2014-05-16 15:55:18', '', 'Mot de passe oublié', '', 'publish', 'open', 'open', '', 'mot-passe-oublie', '', '', '2014-05-16 17:55:18', '2014-05-16 15:55:18', '', 0, 'http://localhost/WhatsUpMusic/?page_id=224', 0, 'page', '', 0),
(225, 1, '2014-05-16 17:55:18', '2014-05-16 15:55:18', '', 'Mot de passe oublié', '', 'inherit', 'open', 'open', '', '224-revision-v1', '', '', '2014-05-16 17:55:18', '2014-05-16 15:55:18', '', 224, 'http://localhost/WhatsUpMusic/224-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2014-05-16 18:38:11', '2014-05-16 16:38:11', '[wpgp_form label_title="Titre de l''article" label_content="Contenu de l''article" allow_comment="yes" allow_trackping="yes" taxonomies="category,post_tag" allow_guest_post="yes" allow_media_button="yes" allow_feature_img="yes" recaptcha="no" success_alert="Votre article a été soumis à notre équipe !"]\r\n[/wpgp_form]', 'Proposer article', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-05-16 18:38:11', '2014-05-16 16:38:11', '', 113, 'http://localhost/WhatsUpMusic/113-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2014-05-27 12:26:27', '2014-05-27 10:26:27', '', 'Ajax-agenda', '', 'publish', 'open', 'open', '', 'ajax-agenda', '', '', '2014-05-27 12:26:34', '2014-05-27 10:26:34', '', 0, 'http://localhost/WhatsUpMusic/?page_id=229', 0, 'page', '', 0),
(230, 1, '2014-05-27 12:26:27', '2014-05-27 10:26:27', '', 'Ajax-agenda', '', 'inherit', 'open', 'open', '', '229-revision-v1', '', '', '2014-05-27 12:26:27', '2014-05-27 10:26:27', '', 229, 'http://localhost/WhatsUpMusic/229-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2014-05-27 12:46:04', '2014-05-27 10:46:04', '', 'CGU', '', 'inherit', 'open', 'open', '', '202-revision-v1', '', '', '2014-05-27 12:46:04', '2014-05-27 10:46:04', '', 202, 'http://localhost/WhatsUpMusic/202-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_ratings`
--

CREATE TABLE `wp_ratings` (
`rating_id` int(11) NOT NULL,
  `rating_postid` int(11) NOT NULL,
  `rating_posttitle` text NOT NULL,
  `rating_rating` int(2) NOT NULL,
  `rating_timestamp` varchar(15) NOT NULL,
  `rating_ip` varchar(40) NOT NULL,
  `rating_host` varchar(200) NOT NULL,
  `rating_username` varchar(50) NOT NULL,
  `rating_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_ratings`
--

INSERT INTO `wp_ratings` (`rating_id`, `rating_postid`, `rating_posttitle`, `rating_rating`, `rating_timestamp`, `rating_ip`, `rating_host`, `rating_username`, `rating_userid`) VALUES
(1, 39, 'Irina Shayk', 3, '1399985360', '::1', 'localhost', 'whatsupadmin', 1),
(2, 39, 'Irina Shayk', 5, '1400004616', '::1', 'localhost', 'whatsupadmin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_reported_posts`
--

CREATE TABLE `wp_reported_posts` (
`id` int(12) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(12) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `post_id` int(12) NOT NULL,
  `status` enum('new','confirmed','deleted','edited','unpublished') NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_social_users`
--

CREATE TABLE `wp_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `identifier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `wp_social_users`
--

INSERT INTO `wp_social_users` (`ID`, `type`, `identifier`) VALUES
(10, 'fb', '10152415453673328'),
(15, 'twitter', '2282531059');

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'post-format-aside', 'post-format-aside', 0),
(3, 'Musique', 'musique', 0),
(4, 'Mode', 'mode', 0),
(5, 'Art', 'art', 0),
(6, 'Cinéma', 'cinema', 0),
(7, 'Geek', 'geek', 0),
(8, 'Main Menu', 'main-menu', 0),
(9, 'post-format-gallery', 'post-format-gallery', 0),
(10, 'post-format-video', 'post-format-video', 0),
(11, 'Sport', 'sport', 0),
(12, 'test', 'test', 0),
(13, 'mode', 'mode-2', 0),
(14, 'etc', 'etc', 0),
(15, 'qsdsqdsqdqd', 'qsdsqdsqdqd', 0),
(16, 'sq&lt;ococxijwoxicjwxocij', 'sqococxijwoxicjwxocij', 0),
(17, 'qsdqsdqsdqsd', 'qsdqsdqsdqsd', 0),
(18, 'Interview', 'interview', 0),
(19, 'Report', 'report', 0),
(20, 'Chronique', 'chronique', 0),
(21, 'News', 'news', 0),
(22, 'Merch', 'merch', 0),
(23, 'Lookbook', 'lookbook', 0),
(24, 'Lifestyle', 'lifestyle', 0),
(25, 'Shopping', 'shopping', 0),
(26, 'Street Art', 'street-art', 0),
(27, 'Tattoo', 'tattoo', 0),
(28, 'Photo', 'photo', 0),
(29, 'Design', 'design', 0),
(30, 'Expo', 'expo', 0),
(31, 'Collab', 'collab', 0),
(32, 'Blockbuster', 'blockbuster', 0),
(33, 'Indés', 'indes', 0),
(34, 'Séries', 'series', 0),
(35, 'News', 'news-cinema', 0),
(36, 'Gaming', 'gaming', 0),
(37, 'Technologies', 'technologies', 0),
(38, 'Ride', 'ride', 0),
(39, 'Extrème', 'extreme', 0),
(40, 'Divers', 'divers', 0),
(41, 'Sorties', 'sorties', 0),
(43, 'Resto', 'resto', 0),
(44, 'Bar', 'bar', 0),
(45, 'Expo', 'expo-sorties', 0),
(46, 'Bon plan', 'bon-plan', 0),
(49, 'Menu Footer 1', 'menu-footer-1', 0),
(50, 'Menu Footer 2', 'menu-footer-2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(6, 7, 0),
(18, 8, 0),
(19, 8, 0),
(20, 8, 0),
(21, 8, 0),
(22, 8, 0),
(27, 6, 0),
(29, 5, 0),
(29, 9, 0),
(39, 4, 0),
(44, 3, 0),
(47, 11, 0),
(48, 8, 0),
(62, 4, 0),
(63, 5, 0),
(86, 3, 0),
(87, 11, 0),
(88, 6, 0),
(89, 7, 0),
(90, 11, 0),
(92, 1, 0),
(92, 15, 0),
(93, 15, 0),
(94, 5, 0),
(94, 16, 0),
(95, 5, 0),
(96, 7, 0),
(96, 17, 0),
(97, 7, 0),
(97, 17, 0),
(130, 8, 0),
(131, 8, 0),
(132, 8, 0),
(133, 8, 0),
(134, 8, 0),
(170, 8, 0),
(171, 8, 0),
(172, 8, 0),
(173, 8, 0),
(174, 8, 0),
(175, 8, 0),
(176, 8, 0),
(177, 8, 0),
(178, 8, 0),
(179, 8, 0),
(180, 8, 0),
(181, 8, 0),
(182, 8, 0),
(183, 8, 0),
(184, 8, 0),
(185, 8, 0),
(186, 8, 0),
(187, 8, 0),
(188, 8, 0),
(189, 8, 0),
(190, 8, 0),
(191, 8, 0),
(213, 50, 0),
(214, 50, 0),
(215, 50, 0),
(216, 50, 0),
(217, 50, 0),
(218, 50, 0),
(219, 49, 0),
(220, 49, 0),
(221, 49, 0),
(223, 50, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'post_format', '', 0, 1),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 2),
(8, 8, 'nav_menu', '', 0, 33),
(9, 9, 'post_format', '', 0, 1),
(10, 10, 'post_format', '', 0, 0),
(11, 11, 'category', '', 0, 3),
(12, 12, 'post_tag', '', 0, 0),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'post_tag', '', 0, 0),
(15, 15, 'post_tag', '', 0, 0),
(16, 16, 'post_tag', '', 0, 0),
(17, 17, 'post_tag', '', 0, 0),
(18, 18, 'category', '', 3, 0),
(19, 19, 'category', '', 3, 0),
(20, 20, 'category', '', 3, 0),
(21, 21, 'category', '', 3, 0),
(22, 22, 'category', '', 3, 0),
(23, 23, 'category', '', 4, 0),
(24, 24, 'category', '', 4, 0),
(25, 25, 'category', '', 4, 0),
(26, 26, 'category', '', 5, 0),
(27, 27, 'category', '', 5, 0),
(28, 28, 'category', '', 5, 0),
(29, 29, 'category', '', 5, 0),
(30, 30, 'category', '', 5, 0),
(31, 31, 'category', '', 5, 0),
(32, 32, 'category', '', 6, 0),
(33, 33, 'category', '', 6, 0),
(34, 34, 'category', '', 6, 0),
(35, 35, 'category', '', 6, 0),
(36, 36, 'category', '', 7, 0),
(37, 37, 'category', '', 7, 0),
(38, 38, 'category', '', 11, 0),
(39, 39, 'category', '', 11, 0),
(40, 40, 'category', '', 0, 0),
(41, 41, 'category', '', 0, 0),
(43, 43, 'category', '', 41, 0),
(44, 44, 'category', '', 41, 0),
(45, 45, 'category', '', 41, 0),
(46, 46, 'category', '', 41, 0),
(49, 49, 'nav_menu', '', 0, 3),
(50, 50, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=255 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'Albea'),
(2, 1, 'last_name', 'José'),
(3, 1, 'nickname', 'whatsupadmin'),
(4, 1, 'description', 'J''aime les frites et les pizza'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '227'),
(15, 1, 'default_password_nag', ''),
(16, 2, 'first_name', 'Yohann'),
(17, 2, 'last_name', 'T'),
(18, 2, 'nickname', 'yohann-teisseire'),
(19, 2, 'description', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.'),
(20, 2, 'rich_editing', 'true'),
(21, 2, 'comment_shortcuts', 'false'),
(22, 2, 'admin_color', 'fresh'),
(23, 2, 'use_ssl', '0'),
(24, 2, 'show_admin_bar_front', 'true'),
(25, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(26, 2, 'wp_user_level', '10'),
(27, 2, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(28, 2, 'wp_dashboard_quick_press_last_post_id', '228'),
(29, 2, 'closedpostboxes_post', 'a:1:{i:0;s:11:"commentsdiv";}'),
(30, 2, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(31, 1, '_yoast_wpseo_profile_updated', '1399982995'),
(32, 2, '_yoast_wpseo_profile_updated', '1399983737'),
(33, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(34, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(35, 2, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(36, 2, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(37, 1, 'nav_menu_recently_edited', '8'),
(38, 2, 'wp_user-settings', 'libraryContent=browse'),
(39, 2, 'wp_user-settings-time', '1397032363'),
(40, 1, 'wpseo_title', ''),
(41, 1, 'wpseo_metadesc', ''),
(42, 1, 'wpseo_metakey', ''),
(43, 1, 'googleplus', 'http://plus.google.com'),
(44, 1, 'twitter', 'http://twitter.com'),
(45, 1, 'facebook', 'http://facebook.com'),
(46, 2, 'closedpostboxes_attachment', 'a:0:{}'),
(47, 2, 'metaboxhidden_attachment', 'a:7:{i:0;s:10:"wpseo_meta";i:1;s:6:"acf_53";i:2;s:5:"acf_5";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(48, 2, 'closedpostboxes_dashboard', 'a:0:{}'),
(49, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(50, 1, 'closedpostboxes_post', 'a:0:{}'),
(51, 1, 'metaboxhidden_post', 'a:8:{i:0;s:6:"acf_53";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}'),
(52, 2, 'closedpostboxes_agenda', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(53, 2, 'metaboxhidden_agenda', 'a:4:{i:0;s:11:"categorydiv";i:1;s:6:"acf_53";i:2;s:5:"acf_5";i:3;s:7:"slugdiv";}'),
(54, 3, 'first_name', ''),
(55, 3, 'last_name', ''),
(56, 3, 'nickname', 'phiphi'),
(57, 3, 'description', ''),
(58, 3, 'rich_editing', 'true'),
(59, 3, 'comment_shortcuts', 'false'),
(60, 3, 'admin_color', 'fresh'),
(61, 3, 'use_ssl', '0'),
(62, 3, 'show_admin_bar_front', 'true'),
(63, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(64, 3, 'wp_user_level', '10'),
(65, 3, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(66, 3, 'wp_dashboard_quick_press_last_post_id', '64'),
(67, 3, 'meta-box-order_agenda', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:38:"submitdiv,categorydiv,tagsdiv-post_tag";s:6:"normal";s:38:"acf_53,acf_60,wpseo_meta,acf_5,slugdiv";s:8:"advanced";s:0:"";}'),
(68, 3, 'screen_layout_agenda', '2'),
(69, 4, 'first_name', 'Axel'),
(70, 4, 'last_name', 'Bouaziz'),
(71, 4, 'nickname', 'Axel'),
(72, 4, 'description', ''),
(73, 4, 'rich_editing', 'true'),
(74, 4, 'comment_shortcuts', 'false'),
(75, 4, 'admin_color', 'fresh'),
(76, 4, 'use_ssl', '0'),
(77, 4, 'show_admin_bar_front', 'true'),
(78, 4, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(79, 4, 'wp_user_level', '10'),
(80, 4, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(81, 3, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(82, 3, 'wp_user-settings-time', '1397119636'),
(83, 5, 'first_name', ''),
(84, 5, 'last_name', ''),
(85, 5, 'nickname', 'clement'),
(86, 5, 'description', ''),
(87, 5, 'rich_editing', 'true'),
(88, 5, 'comment_shortcuts', 'false'),
(89, 5, 'admin_color', 'fresh'),
(90, 5, 'use_ssl', '0'),
(91, 5, 'show_admin_bar_front', 'true'),
(92, 5, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(93, 5, 'wp_user_level', '10'),
(94, 5, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(95, 5, 'wp_dashboard_quick_press_last_post_id', '70'),
(96, 1, 'age', '22'),
(97, 2, 'nav_menu_recently_edited', '8'),
(98, 1, 'user_url', ''),
(99, 1, 'website', 'blabla'),
(100, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&dfw_width=622&hidetb=1'),
(101, 1, 'wp_user-settings-time', '1399732600'),
(102, 2, 'wpseo_title', ''),
(103, 2, 'wpseo_metadesc', ''),
(104, 2, 'wpseo_metakey', ''),
(105, 2, 'googleplus', 'http://plus.google.com'),
(106, 2, 'twitter', 'http://twitter.com'),
(107, 2, 'facebook', 'http://facebook.com'),
(108, 2, 'gplus', 'http://plus.google.com'),
(109, 2, 'years', '22'),
(110, 1, 'closedpostboxes_page', 'a:0:{}'),
(111, 1, 'metaboxhidden_page', 'a:8:{i:0;s:6:"acf_53";i:1;s:6:"acf_60";i:2;s:5:"acf_5";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";i:7;s:23:"dw_social_wall_meta_box";}'),
(112, 1, 'years', ''),
(113, 6, 'first_name', ''),
(114, 6, 'last_name', ''),
(115, 6, 'nickname', 'test'),
(116, 6, 'description', ''),
(117, 6, 'rich_editing', 'true'),
(118, 6, 'comment_shortcuts', 'false'),
(119, 6, 'admin_color', 'fresh'),
(120, 6, 'use_ssl', '0'),
(121, 6, 'show_admin_bar_front', 'true'),
(122, 6, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(123, 6, 'wp_user_level', '0'),
(124, 6, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(125, 7, 'first_name', ''),
(126, 7, 'last_name', ''),
(127, 7, 'nickname', 'testqspod'),
(128, 7, 'description', ''),
(129, 7, 'rich_editing', 'true'),
(130, 7, 'comment_shortcuts', 'false'),
(131, 7, 'admin_color', 'fresh'),
(132, 7, 'use_ssl', '0'),
(133, 7, 'show_admin_bar_front', 'true'),
(134, 7, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(135, 7, 'wp_user_level', '0'),
(136, 7, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(137, 8, 'first_name', ''),
(138, 8, 'last_name', ''),
(139, 8, 'nickname', 'doiudoqisduqsoidu'),
(140, 8, 'description', ''),
(141, 8, 'rich_editing', 'true'),
(142, 8, 'comment_shortcuts', 'false'),
(143, 8, 'admin_color', 'fresh'),
(144, 8, 'use_ssl', '0'),
(145, 8, 'show_admin_bar_front', 'true'),
(146, 8, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(147, 8, 'wp_user_level', '0'),
(148, 8, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(149, 9, 'first_name', ''),
(150, 9, 'last_name', ''),
(151, 9, 'nickname', 'doiudoqisduqsoiduqq'),
(152, 9, 'description', ''),
(153, 9, 'rich_editing', 'true'),
(154, 9, 'comment_shortcuts', 'false'),
(155, 9, 'admin_color', 'fresh'),
(156, 9, 'use_ssl', '0'),
(157, 9, 'show_admin_bar_front', 'true'),
(158, 9, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(159, 9, 'wp_user_level', '0'),
(160, 9, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(161, 10, 'first_name', 'Yohann Daniel'),
(162, 10, 'last_name', 'Carter'),
(163, 10, 'nickname', 'Facebook -'),
(164, 10, 'description', ''),
(165, 10, 'rich_editing', 'true'),
(166, 10, 'comment_shortcuts', 'false'),
(167, 10, 'admin_color', 'fresh'),
(168, 10, 'use_ssl', '0'),
(169, 10, 'show_admin_bar_front', 'true'),
(170, 10, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(171, 10, 'wp_user_level', '0'),
(172, 10, 'twitter', ''),
(173, 10, 'facebook', ''),
(174, 10, 'years', ''),
(175, 10, 'fb_profile_picture', 'https://graph.facebook.com/10152415453673328/picture?type=large'),
(176, 10, 'fb_user_access_token', 'CAAEQk64UhEwBAAItZAM0ZCx2UyO22DfYZCKYZBZCxlZAk9o7Ot7fF5ToH6RuFzeGrjK8bNSJBn4NsA55OPfuvYUTqXzi3ZAP7ZAHQ4d0ZBcDYXxRPsOUdr6Ks4kqSjjCJga6nfWZBhjpQZC01e7ojLTu3PVusMX245YZB5gLyDbA79oWjnlyHeuwK7Ykw4vDqdFy2kUZD'),
(177, 11, 'first_name', ''),
(178, 11, 'last_name', ''),
(179, 11, 'nickname', 'twitter -'),
(180, 11, 'description', ''),
(181, 11, 'rich_editing', 'true'),
(182, 11, 'comment_shortcuts', 'false'),
(183, 11, 'admin_color', 'fresh'),
(184, 11, 'use_ssl', '0'),
(185, 11, 'show_admin_bar_front', 'true'),
(186, 11, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(187, 11, 'wp_user_level', '0'),
(188, 11, 'twitter', ''),
(189, 11, 'facebook', ''),
(190, 11, 'years', ''),
(191, 11, 'fb_profile_picture', 'https://graph.facebook.com/10152415453673328/picture?type=large'),
(192, 11, 'fb_user_access_token', 'CAAEQk64UhEwBAAItZAM0ZCx2UyO22DfYZCKYZBZCxlZAk9o7Ot7fF5ToH6RuFzeGrjK8bNSJBn4NsA55OPfuvYUTqXzi3ZAP7ZAHQ4d0ZBcDYXxRPsOUdr6Ks4kqSjjCJga6nfWZBhjpQZC01e7ojLTu3PVusMX245YZB5gLyDbA79oWjnlyHeuwK7Ykw4vDqdFy2kUZD'),
(193, 10, 'dismissed_wp_pointers', 'wp330_toolbar'),
(194, 11, 'twitter_profile_picture', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png'),
(195, 12, 'first_name', ''),
(196, 12, 'last_name', ''),
(197, 12, 'nickname', 'twitter -'),
(198, 12, 'description', ''),
(199, 12, 'rich_editing', 'true'),
(200, 12, 'comment_shortcuts', 'false'),
(201, 12, 'admin_color', 'fresh'),
(202, 12, 'use_ssl', '0'),
(203, 12, 'show_admin_bar_front', 'true'),
(204, 12, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(205, 12, 'wp_user_level', '0'),
(206, 12, 'twitter', ''),
(207, 12, 'facebook', ''),
(208, 12, 'years', ''),
(209, 12, 'twitter_profile_picture', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png'),
(210, 13, 'first_name', 'kokolitolithe8'),
(211, 13, 'last_name', ''),
(212, 13, 'nickname', 'twitter - kokolitolithe'),
(213, 13, 'description', ''),
(214, 13, 'rich_editing', 'true'),
(215, 13, 'comment_shortcuts', 'false'),
(216, 13, 'admin_color', 'fresh'),
(217, 13, 'use_ssl', '0'),
(218, 13, 'show_admin_bar_front', 'true'),
(219, 13, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(220, 13, 'wp_user_level', '0'),
(221, 13, 'twitter', ''),
(222, 13, 'facebook', ''),
(223, 13, 'years', ''),
(224, 13, 'twitter_profile_picture', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png'),
(225, 14, 'first_name', 'kokolitolithe8'),
(226, 14, 'last_name', ''),
(227, 14, 'nickname', 'twitter - kokolitolithe'),
(228, 14, 'description', ''),
(229, 14, 'rich_editing', 'true'),
(230, 14, 'comment_shortcuts', 'false'),
(231, 14, 'admin_color', 'fresh'),
(232, 14, 'use_ssl', '0'),
(233, 14, 'show_admin_bar_front', 'true'),
(234, 14, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(235, 14, 'wp_user_level', '0'),
(236, 14, 'twitter', ''),
(237, 14, 'facebook', ''),
(238, 14, 'years', ''),
(239, 14, 'twitter_profile_picture', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png'),
(240, 15, 'first_name', 'kokolitolithe8'),
(241, 15, 'last_name', ''),
(242, 15, 'nickname', 'kokolitolithe'),
(243, 15, 'description', ''),
(244, 15, 'rich_editing', 'true'),
(245, 15, 'comment_shortcuts', 'false'),
(246, 15, 'admin_color', 'fresh'),
(247, 15, 'use_ssl', '0'),
(248, 15, 'show_admin_bar_front', 'true'),
(249, 15, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(250, 15, 'wp_user_level', '0'),
(251, 15, 'twitter', ''),
(252, 15, 'facebook', ''),
(253, 15, 'years', ''),
(254, 15, 'twitter_profile_picture', 'http://abs.twimg.com/sticky/default_profile_images/default_profile_4_normal.png');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'whatsupadmin', '$P$BcWAa.coi2o2zaGtFSThRkCuxgfpjn/', 'whatsupadmin', 'jose.albea@gmail.com', 'http://josealbea.Com', '2014-02-10 12:31:34', '', 0, 'whatsupadmin'),
(2, 'yohann-teisseire', '$P$BbSd/iTEM96R8Mzf91Vmdxdcji4U5T0', 'yohann-teisseire', 'yohann.teisseire@hotmail.fr', 'http://wu.josealbea.com', '2014-04-09 06:19:06', '', 0, 'Yohann T'),
(3, 'phiphi', '$P$Ba5K6szTJvRdnjiHjN3h5DuYi4HM0l0', 'phiphi', 'phiphi.traing@gmail.com', '', '2014-04-10 08:13:59', '', 0, 'phiphi'),
(4, 'Axel', '$P$BICQiIpNiR9JnOOdriZg2qKJ7.X4TA.', 'axel', 'axel.bouaziz@hotmail.fr', '', '2014-04-10 08:31:13', '', 0, 'Axel Bouaziz'),
(5, 'clement', '$P$BlDlZNCbzgCaSK/Ri7Nkw9LGrLCXIA0', 'clement', 'gos.clement@gmail.com', '', '2014-04-10 08:34:45', '', 0, 'clement'),
(6, 'test', '$P$BIAjtoPSTuyTVPUqiRmM4gREdFC30S.', 'test', 'test@eazedqsdqsd.fr', '', '2014-05-16 12:48:34', '', 0, 'test'),
(7, 'testqspod', '$P$BJJ.I1cYCxXiSrtcElxwwD02qJSILe/', 'testqspod', 'test@eazedqsdqsd.frq', '', '2014-05-16 12:49:26', '', 0, 'testqspod'),
(8, 'doiudoqisduqsoidu', '$P$BZMel8G8f9qC68fsXXaEWCnAjrMrBy.', 'doiudoqisduqsoidu', 'qsoduqsiduqsoi@qsoiduqsodisu.fr', '', '2014-05-16 13:02:21', '', 0, 'doiudoqisduqsoidu'),
(9, 'doiudoqisduqsoiduqq', '$P$BVk1BooFRAEAKm1Gm.I4hI4dfZ.DsY/', 'doiudoqisduqsoiduqq', 'qsoduqsiduffqsoi@qsoiduqsodisu.fr', '', '2014-05-16 13:02:56', '', 0, 'doiudoqisduqsoiduqq'),
(15, 'kokolitolithe', '$P$BmxV/ZiQdO3zB5OakRv6EX.IvdB.rs1', 'kokolitolithe', '', '', '2014-05-29 12:33:18', '', 0, 'kokolitolithe');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wti_like_post`
--

CREATE TABLE `wp_wti_like_post` (
`id` bigint(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `value` int(2) NOT NULL,
  `date_time` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_wti_like_post`
--

INSERT INTO `wp_wti_like_post` (`id`, `post_id`, `value`, `date_time`, `ip`, `user_id`) VALUES
(1, 29, 1, '2014-05-14 07:45:40', '::1', 2),
(2, 27, 1, '2014-05-14 12:21:42', '::1', 2),
(3, 27, 1, '2014-05-14 12:21:42', '::1', 1),
(4, 27, 1, '2014-05-14 12:21:42', '::1', 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_campaign`
--

CREATE TABLE `wp_wysija_campaign` (
`campaign_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_wysija_campaign`
--

INSERT INTO `wp_wysija_campaign` (`campaign_id`, `name`, `description`) VALUES
(1, 'Guide d''utilisation', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_campaign_list`
--

CREATE TABLE `wp_wysija_campaign_list` (
  `list_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL,
  `filter` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_custom_field`
--

CREATE TABLE `wp_wysija_custom_field` (
`id` mediumint(9) NOT NULL,
  `name` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_email`
--

CREATE TABLE `wp_wysija_email` (
`email_id` int(10) unsigned NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `body` longtext,
  `created_at` int(10) unsigned DEFAULT NULL,
  `modified_at` int(10) unsigned DEFAULT NULL,
  `sent_at` int(10) unsigned DEFAULT NULL,
  `from_email` varchar(250) DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `replyto_email` varchar(250) DEFAULT NULL,
  `replyto_name` varchar(250) DEFAULT NULL,
  `attachments` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `number_sent` int(10) unsigned NOT NULL DEFAULT '0',
  `number_opened` int(10) unsigned NOT NULL DEFAULT '0',
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `number_unsub` int(10) unsigned NOT NULL DEFAULT '0',
  `number_bounce` int(10) unsigned NOT NULL DEFAULT '0',
  `number_forward` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text,
  `wj_data` longtext,
  `wj_styles` longtext
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_wysija_email`
--

INSERT INTO `wp_wysija_email` (`email_id`, `campaign_id`, `subject`, `body`, `created_at`, `modified_at`, `sent_at`, `from_email`, `from_name`, `replyto_email`, `replyto_name`, `attachments`, `status`, `type`, `number_sent`, `number_opened`, `number_clicked`, `number_unsub`, `number_bounce`, `number_forward`, `params`, `wj_data`, `wj_styles`) VALUES
(1, 1, 'Guide d''utilisation', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta content="text/html; charset=UTF-8" http-equiv="Content-Type" /><meta name="viewport" content="width=device-width, initial-scale=1.0"/><title>Guide d''utilisation</title><style type="text/css">    .ReadMsgBody { width:100%; }.ExternalClass { width:100%; }.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}h1 { font-family:"Trebuchet MS"; font-size:40px; line-height:1.3em; color:#000000 !important; font-weight:normal; margin:0; padding:0; font-style:normal; }h2 { font-family:"Trebuchet MS"; font-size:30px; line-height:1.2em; color:#424242 !important; font-weight:normal; margin:0; padding:0; font-style:normal; }h3 { font-family:"Trebuchet MS"; font-size:24px; line-height:1.1em; color:#424242 !important; font-weight:normal; margin:0; padding:0; font-style:normal; }.yshortcuts { color:#4a91b0; }p { font-family:"Arial"; margin:1em 0; word-wrap: break-word; }img {outline:none; text-decoration:none; -ms-interpolation-mode: bicubic;}a img {border:none;}#outlook a {padding:0;}body, #wysija_wrapper {    background:#e8e8e8;    color:#000000;    font-family:"Arial";    font-size:16px;    -webkit-text-size-adjust:100%;    -ms-text-size-adjust:100%;    }table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }table tr td { border-collapse:collapse; }div, p, a, li, td { -webkit-text-size-adjust:none; -ms-text-size-adjust:none; }#wysija_viewbrowser p, #wysija_viewbrowser a {    font-family: "Arial" !important;    font-size: 12px !important;    color: #000000 !important;}#wysija_viewbrowser a, #wysija_unsubscribe a {    text-decoration:underline;}#wysija_unsubscribe p, #wysija_unsubscribe p a {    text-align:center;    color: #000000 !important;    font-size:12px;}a { color:#4a91b0; }a:link { color:#4a91b0; }a:visited { color:#4a91b0; }h1 a { font-family:"Trebuchet MS"; font-size:40px; color:#4a91b0 !important; font-weight:normal; margin:0; padding:0; font-style:normal; }h2 a { font-family:"Trebuchet MS"; font-size:30px; color:#4a91b0 !important; font-weight:normal; margin:0; padding:0; font-style:normal; }h3 a { font-family:"Trebuchet MS"; font-size:24px; color:#4a91b0 !important; font-weight:normal; margin:0; padding:0; font-style:normal; }    </style></head><body bgcolor="#e8e8e8"  style="background:#e8e8e8;color:#000000; font-family:''Arial'';font-size:16px;" alink="#4a91b0" link="#4a91b0" text="#000000"><span id="wysija_wrapper" style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0; display:block;background:#e8e8e8;"><table cellspacing="0" id="wysija_container" align="center" style="background:none; border:none; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-color:none; border-spacing:0; margin-bottom:0; margin-left:auto; margin-right:auto; margin-top:0; width:600px;" width="600" cellpadding="0"><tr><td style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0;">                    <table cellspacing="0" id="wysija_viewbrowser" align="center" style="background:none; background-color:#e8e8e8; border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0; width: 600px;" width="600" cellpadding="0"><tr valign="top"><td id="wysija_viewbrowser_content" style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0;" width="600"><p style="background-color:#e8e8e8;color:#000000 !important;font-family:''Arial''; font-size:12px; height:auto; padding:8px; text-align:center;">Problèmes d''affichage ? <a style="font-family:''Arial'';font-size:12px;color:#000000 !important;border:0;" href="[view_in_browser_link]" target="_blank">Affichez cette newsletter dans votre navigateur.</a></p></td></tr></table>                    <table cellspacing="0" id="wysija_header" align="center" style="background: none; background-color:#e8e8e8; border-collapse: collapse; border-spacing: 0; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0; width:600px;" width="600" cellpadding="0"><tr valign="top"><td id="wysija_header_content" style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0;" width="600"><div style="clear: both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;"><table style="border-collapse: collapse; border-spacing: 0; margin: auto;" width="600"><tr>                        <td style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;" width="600"><div   style="height:72px; max-height:72px;overflow:hidden;border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">                    <img class="wysija-image-center" src="http://wu.josealbea.com/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/header.png" height="72" alt="" width="600" hspace="0" vspace="0" style="border:0;">                </div></td>                    </tr></table></div></td></tr></table>                    <table cellspacing="0" id="wysija_body" align="center" style="background: none; background-color:#ffffff; border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0; width: 600px;" width="600" cellpadding="0"><tr valign="top"><td id="wysija_body_content" style="margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;width:600px;" width="600">\n<div style="background-color:#ffffff;clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr style="background-color:#ffffff;">\n            <td style="background-color:#ffffff;clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div style="width:564px;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding:0;">\n                \n                <h2 style="font-family:''Trebuchet MS'';font-size:30px;color:#424242 !important;background-color:#ffffff;border:0;font-weight:normal;line-height:1.2em;margin-top:0;margin-right:0;margin-bottom:10px;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;word-wrap:break-word;"><strong>Étape 1 :</strong> hé, vous, cliquez sur ce texte !</h2><p style="font-family:''Arial'';font-size:16px;color:#000000 !important;background-color:#ffffff;border:0;line-height:1.5em;margin-top:0;margin-right:0;margin-bottom:1em;margin-left:0;padding-top:3px;padding-right:0;padding-bottom:0;padding-left:0;vertical-align:top;word-wrap:break-word;">Cliquez sur ce bloc de texte pour le modifier.</p>\n                </div>\n            </td>\n        </tr>\n    </table>\n</div>\n<div style="clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr>\n            <td style="clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div  style="border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">\n                    <img src="http://wu.josealbea.com/wp-content/uploads/wysija/dividers/solid.jpg" height="1" width="564" alt="" style="border:0;" />\n                </div>\n            </td>\n        </tr>\n    </table>\n</div>\n\n<div style="background-color:#ffffff;clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr style="background-color:#ffffff;">\n            <td style="background-color:#ffffff;clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div style="width:564px;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding:0;">\n                \n                <h2 style="font-family:''Trebuchet MS'';font-size:30px;color:#424242 !important;background-color:#ffffff;border:0;font-weight:normal;line-height:1.2em;margin-top:0;margin-right:0;margin-bottom:10px;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;word-wrap:break-word;"><strong>Étape 2 :</strong> manipulez l''image</h2>\n                </div>\n            </td>\n        </tr>\n    </table>\n</div>\n<div style="background-color:#ffffff;clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr style="background-color:#ffffff;">\n            <td style="background-color:#ffffff;clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div style="width:564px;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding:0;">\n                \n                    \n                    \n                    \n                    \n                        \n                            \n                            \n                            \n                        \n                        \n                    \n                    <table align="left" border="0" cellpadding="0" cellspacing="0" style="border:1px solid #ffffff;border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0;">\n                        <tr style="background-color:#ffffff;">\n                            <td style="background-color:#ffffff;mso-table-lspace:0;mso-table-rspace:0;clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;" height="193" width="294" valign="top" align="left">\n                                \n                                <img src="http://wu.josealbea.com/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/pigeon.png" height="190" alt="" width="281" style="border:0;line-height:0.1em;margin:0;padding:0;" />\n                                \n                            </td>\n                        </tr>\n                    </table>\n                \n                <p style="font-family:''Arial'';font-size:16px;color:#000000 !important;background-color:#ffffff;border:0;line-height:1.5em;margin-top:0;margin-right:0;margin-bottom:1em;margin-left:0;padding-top:3px;padding-right:0;padding-bottom:0;padding-left:0;vertical-align:top;word-wrap:break-word;">Survolez avec votre souris l''image à gauche.</p>\n                </div>\n            </td>\n        </tr>\n    </table>\n</div>\n<div style="clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr>\n            <td style="clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div  style="border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">\n                    <img src="http://wu.josealbea.com/wp-content/uploads/wysija/dividers/solid.jpg" height="1" width="564" alt="" style="border:0;" />\n                </div>\n            </td>\n        </tr>\n    </table>\n</div>\n\n<div style="background-color:#ffffff;clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr style="background-color:#ffffff;">\n            <td style="background-color:#ffffff;clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div style="width:564px;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding:0;">\n                \n                <h2 style="font-family:''Trebuchet MS'';font-size:30px;color:#424242 !important;background-color:#ffffff;border:0;font-weight:normal;line-height:1.2em;margin-top:0;margin-right:0;margin-bottom:10px;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;word-wrap:break-word;"><strong>Étape 3 :</strong> déposez du contenu ici</h2><p style="font-family:''Arial'';font-size:16px;color:#000000 !important;background-color:#ffffff;border:0;line-height:1.5em;margin-top:0;margin-right:0;margin-bottom:1em;margin-left:0;padding-top:3px;padding-right:0;padding-bottom:0;padding-left:0;vertical-align:top;word-wrap:break-word;">Glissez et déposez <strong>textes, articles, séparateurs.</strong> Regardez à droite !</p><p style="font-family:''Arial'';font-size:16px;color:#000000 !important;background-color:#ffffff;border:0;line-height:1.5em;margin-top:0;margin-right:0;margin-bottom:1em;margin-left:0;padding-top:3px;padding-right:0;padding-bottom:0;padding-left:0;vertical-align:top;word-wrap:break-word;">Vous pouvez même déposez <strong>vos icônes de réseaux sociaux</strong> comme ceci :</p>\n                </div>\n            </td>\n        </tr>\n    </table>\n</div><div style="clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n<table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600"><tr><td style="clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n    <table align="center" width="184" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border-spacing: 0;">\n        <tr valign="top">\n            \n      <td width="61" height="32">\n         <div   style="height:32px; max-height:32px;overflow:hidden;border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">\n              <a style="font-family:''Arial'';font-size:16px;color:#4a91b0 !important;background-color:#ffffff;border:0;" href="http://www.facebook.com/mailpoetplugin">\n                  <img src="http://wu.josealbea.com/wp-content/uploads/wysija/bookmarks/medium/02/facebook.png" height="32" alt="Facebook" width="32" style="border:0;line-height:0.1em;" />\n              </a>\n          </div>\n      </td>\n     \n      <td width="61" height="32">\n         <div   style="height:32px; max-height:32px;overflow:hidden;border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">\n              <a style="font-family:''Arial'';font-size:16px;color:#4a91b0 !important;background-color:#ffffff;border:0;" href="http://www.twitter.com/mail_poet">\n                  <img src="http://wu.josealbea.com/wp-content/uploads/wysija/bookmarks/medium/02/twitter.png" height="32" alt="Twitter" width="32" style="border:0;line-height:0.1em;" />\n              </a>\n          </div>\n      </td>\n     \n      <td width="61" height="32">\n         <div   style="height:32px; max-height:32px;overflow:hidden;border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">\n              <a style="font-family:''Arial'';font-size:16px;color:#4a91b0 !important;background-color:#ffffff;border:0;" href="https://plus.google.com/+Mailpoet">\n                 <img src="http://wu.josealbea.com/wp-content/uploads/wysija/bookmarks/medium/02/google.png" height="32" alt="Google" width="32" style="border:0;line-height:0.1em;" />\n              </a>\n          </div>\n      </td>\n     \n        </tr>\n    </table>\n</td></tr></table></div>\n<div style="clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr>\n            <td style="clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div  style="border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">\n                    <img src="http://wu.josealbea.com/wp-content/uploads/wysija/dividers/solid.jpg" height="1" width="564" alt="" style="border:0;" />\n                </div>\n            </td>\n        </tr>\n    </table>\n</div>\n\n<div style="background-color:#ffffff;clear:both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;">\n    <table style="border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin: auto;" width="600">\n        <tr style="background-color:#ffffff;">\n            <td style="background-color:#ffffff;clear:both;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-top:10px;padding-bottom:10px;padding-left:18px;padding-right:18px;" width="600">\n                <div style="width:564px;margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding:0;">\n                \n                <h2 style="font-family:''Trebuchet MS'';font-size:30px;color:#424242 !important;background-color:#ffffff;border:0;font-weight:normal;line-height:1.2em;margin-top:0;margin-right:0;margin-bottom:10px;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;word-wrap:break-word;"><strong>Étape 4 :</strong> et le pied de page ?</h2><p style="font-family:''Arial'';font-size:16px;color:#000000 !important;background-color:#ffffff;border:0;line-height:1.5em;margin-top:0;margin-right:0;margin-bottom:1em;margin-left:0;padding-top:3px;padding-right:0;padding-bottom:0;padding-left:0;vertical-align:top;word-wrap:break-word;">Changez le contenu du pied dans les <strong>Paramètres</strong> de MailPoet.</p>\n                </div>\n            </td>\n        </tr>\n    </table>\n</div></td></tr></table>                    <table cellspacing="0" id="wysija_footer" align="center" style="background: none; background-color:#e8e8e8; border-collapse: collapse; border-spacing: 0; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0; width:600px;" width="600" cellpadding="0"><tr valign="top"><td id="wysija_header_content" style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0;" width="600"><div style="clear: both; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;"><table style="border-collapse: collapse; border-spacing: 0; margin: auto;" width="600"><tr>                        <td style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding: 0;" width="600"><div   style="height:46px; max-height:46px;overflow:hidden;border:0;text-align:center;margin-top:0;margin-right:auto;margin-bottom:0;margin-left:auto;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;">                    <img class="wysija-image-center" src="http://wu.josealbea.com/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/footer.png" height="46" alt="" width="600" hspace="0" vspace="0" style="border:0;">                </div></td>                    </tr></table></div></td></tr></table>                    <table cellspacing="0" id="wysija_unsubscribe" align="center" style="background:none; background-color:#e8e8e8; border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; border-spacing: 0; margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0; width: 600px;" width="600" cellpadding="0"><tr valign="top"><td id="wysija_unsubscribe_content" style="margin-bottom: 0; margin-left: 0; margin-right: 0; margin-top: 0; padding-bottom: 0; padding-left: 0; padding-right: 0; padding-top: 0;" width="600"><p style="background-color:#e8e8e8; color:#000000; font-family:Verdana; font-size:12px; height:auto; padding:8px; text-align:center;"><a style="color:#000000 !important;border:0;" href="[unsubscribe_link]" target="_blank">Se désabonner</a><br /><br /></p></td></tr></table>                </td></tr></table></span></body></html>', 1397039145, 1397039145, NULL, 'info@wu.josealbea.com', 'yohann-teisseire', 'info@wu.josealbea.com', 'yohann-teisseire', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 'YToxOntzOjE0OiJxdWlja3NlbGVjdGlvbiI7YToxOntzOjY6IndwLTMwMSI7YTo1OntzOjEwOiJpZGVudGlmaWVyIjtzOjY6IndwLTMwMSI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6MzoidXJsIjtzOjEwNjoiaHR0cDovL3d1Lmpvc2VhbGJlYS5jb20vd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvcGlnZW9uLnBuZyI7czo5OiJ0aHVtYl91cmwiO3M6MTE0OiJodHRwOi8vd3Uuam9zZWFsYmVhLmNvbS93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9waWdlb24tMTUweDE1MC5wbmciO319fQ==', 'YTo0OntzOjc6InZlcnNpb24iO3M6NToiMi42LjIiO3M6NjoiaGVhZGVyIjthOjU6e3M6NDoidGV4dCI7TjtzOjU6ImltYWdlIjthOjU6e3M6Mzoic3JjIjtzOjEwNjoiaHR0cDovL3d1Lmpvc2VhbGJlYS5jb20vd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvaGVhZGVyLnBuZyI7czo1OiJ3aWR0aCI7aTo2MDA7czo2OiJoZWlnaHQiO2k6NzI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO31zOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7czo0OiJ0eXBlIjtzOjY6ImhlYWRlciI7fXM6NDoiYm9keSI7YTo5OntzOjc6ImJsb2NrLTEiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MTY0OiJQR2d5UGp4emRISnZibWMrdzRsMFlYQmxJREVnT2p3dmMzUnliMjVuUGlCb3c2a3NJSFp2ZFhNc0lHTnNhWEYxWlhvZ2MzVnlJR05sSUhSbGVIUmxJQ0U4TDJneVBqeHdQa05zYVhGMVpYb2djM1Z5SUdObElHSnNiMk1nWkdVZ2RHVjRkR1VnY0c5MWNpQnNaU0J0YjJScFptbGxjaTQ4TDNBKyI7fXM6NToiaW1hZ2UiO047czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjE7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO31zOjc6ImJsb2NrLTIiO2E6NTp7czo4OiJwb3NpdGlvbiI7aToyO3M6NDoidHlwZSI7czo3OiJkaXZpZGVyIjtzOjM6InNyYyI7czo2ODoiaHR0cDovL3d1Lmpvc2VhbGJlYS5jb20vd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9kaXZpZGVycy9zb2xpZC5qcGciO3M6NToid2lkdGgiO2k6NTY0O3M6NjoiaGVpZ2h0IjtpOjE7fXM6NzoiYmxvY2stMyI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czo3MjoiUEdneVBqeHpkSEp2Ym1jK3c0bDBZWEJsSURJZ09qd3ZjM1J5YjI1blBpQnRZVzVwY0hWc1pYb2diQ2RwYldGblpUd3ZhREkrIjt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6MztzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stNCI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czo3MjoiUEhBK1UzVnlkbTlzWlhvZ1lYWmxZeUIyYjNSeVpTQnpiM1Z5YVhNZ2JDZHBiV0ZuWlNERG9DQm5ZWFZqYUdVdVBDOXdQZz09Ijt9czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMDY6Imh0dHA6Ly93dS5qb3NlYWxiZWEuY29tL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL3BpZ2Vvbi5wbmciO3M6NToid2lkdGgiO2k6MjgxO3M6NjoiaGVpZ2h0IjtpOjE5MDtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO31zOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6NDtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stNSI7YTo1OntzOjg6InBvc2l0aW9uIjtpOjU7czo0OiJ0eXBlIjtzOjc6ImRpdmlkZXIiO3M6Mzoic3JjIjtzOjY4OiJodHRwOi8vd3Uuam9zZWFsYmVhLmNvbS93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphL2RpdmlkZXJzL3NvbGlkLmpwZyI7czo1OiJ3aWR0aCI7aTo1NjQ7czo2OiJoZWlnaHQiO2k6MTt9czo3OiJibG9jay02IjthOjY6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjMzNjoiUEdneVBqeHpkSEp2Ym1jK3c0bDBZWEJsSURNZ09qd3ZjM1J5YjI1blBpQmt3Nmx3YjNObGVpQmtkU0JqYjI1MFpXNTFJR2xqYVR3dmFESStQSEErUjJ4cGMzTmxlaUJsZENCa3c2bHdiM05sZWlBOGMzUnliMjVuUG5SbGVIUmxjeXdnWVhKMGFXTnNaWE1zSUhQRHFYQmhjbUYwWlhWeWN5NDhMM04wY205dVp6NGdVbVZuWVhKa1pYb2d3NkFnWkhKdmFYUmxJQ0U4TDNBK1BIQStWbTkxY3lCd2IzVjJaWG9nYmNPcWJXVWdaTU9wY0c5elpYb2dQSE4wY205dVp6NTJiM01nYVdQRHRHNWxjeUJrWlNCeXc2bHpaV0YxZUNCemIyTnBZWFY0UEM5emRISnZibWMrSUdOdmJXMWxJR05sWTJrZ09qd3ZjRDQ9Ijt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6NjtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stNyI7YTo1OntzOjU6IndpZHRoIjtpOjE4NDtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NToiaXRlbXMiO2E6Mzp7aTowO2E6Nzp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly93d3cuZmFjZWJvb2suY29tL21haWxwb2V0cGx1Z2luIjtzOjM6ImFsdCI7czo4OiJGYWNlYm9vayI7czo5OiJjZWxsV2lkdGgiO2k6NjE7czoxMDoiY2VsbEhlaWdodCI7aTozMjtzOjM6InNyYyI7czo4MjoiaHR0cDovL3d1Lmpvc2VhbGJlYS5jb20vd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL2ZhY2Vib29rLnBuZyI7czo1OiJ3aWR0aCI7aTozMjtzOjY6ImhlaWdodCI7aTozMjt9aToxO2E6Nzp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cudHdpdHRlci5jb20vbWFpbF9wb2V0IjtzOjM6ImFsdCI7czo3OiJUd2l0dGVyIjtzOjk6ImNlbGxXaWR0aCI7aTo2MTtzOjEwOiJjZWxsSGVpZ2h0IjtpOjMyO3M6Mzoic3JjIjtzOjgxOiJodHRwOi8vd3Uuam9zZWFsYmVhLmNvbS93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphL2Jvb2ttYXJrcy9tZWRpdW0vMDIvdHdpdHRlci5wbmciO3M6NToid2lkdGgiO2k6MzI7czo2OiJoZWlnaHQiO2k6MzI7fWk6MjthOjc6e3M6MzoidXJsIjtzOjMzOiJodHRwczovL3BsdXMuZ29vZ2xlLmNvbS8rTWFpbHBvZXQiO3M6MzoiYWx0IjtzOjY6Ikdvb2dsZSI7czo5OiJjZWxsV2lkdGgiO2k6NjE7czoxMDoiY2VsbEhlaWdodCI7aTozMjtzOjM6InNyYyI7czo4MDoiaHR0cDovL3d1Lmpvc2VhbGJlYS5jb20vd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL2dvb2dsZS5wbmciO3M6NToid2lkdGgiO2k6MzI7czo2OiJoZWlnaHQiO2k6MzI7fX1zOjg6InBvc2l0aW9uIjtpOjc7czo0OiJ0eXBlIjtzOjc6ImdhbGxlcnkiO31zOjc6ImJsb2NrLTgiO2E6NTp7czo4OiJwb3NpdGlvbiI7aTo4O3M6NDoidHlwZSI7czo3OiJkaXZpZGVyIjtzOjM6InNyYyI7czo2ODoiaHR0cDovL3d1Lmpvc2VhbGJlYS5jb20vd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9kaXZpZGVycy9zb2xpZC5qcGciO3M6NToid2lkdGgiO2k6NTY0O3M6NjoiaGVpZ2h0IjtpOjE7fXM6NzoiYmxvY2stOSI7YTo2OntzOjQ6InRleHQiO2E6MTp7czo1OiJ2YWx1ZSI7czoxODg6IlBHZ3lQanh6ZEhKdmJtYyt3NGwwWVhCbElEUWdPand2YzNSeWIyNW5QaUJsZENCc1pTQndhV1ZrSUdSbElIQmhaMlVnUHp3dmFESStQSEErUTJoaGJtZGxlaUJzWlNCamIyNTBaVzUxSUdSMUlIQnBaV1FnWkdGdWN5QnNaWE1nUEhOMGNtOXVaejVRWVhKaGJjT29kSEpsY3p3dmMzUnliMjVuUGlCa1pTQk5ZV2xzVUc5bGRDNDhMM0ErIjt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6OTtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fX1zOjY6ImZvb3RlciI7YTo1OntzOjQ6InRleHQiO047czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMDY6Imh0dHA6Ly93dS5qb3NlYWxiZWEuY29tL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL2Zvb3Rlci5wbmciO3M6NToid2lkdGgiO2k6NjAwO3M6NjoiaGVpZ2h0IjtpOjQ2O3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDt9czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO3M6NDoidHlwZSI7czo2OiJmb290ZXIiO319', 'YToxMDp7czo0OiJodG1sIjthOjE6e3M6MTA6ImJhY2tncm91bmQiO3M6NjoiZThlOGU4Ijt9czo2OiJoZWFkZXIiO2E6MTp7czoxMDoiYmFja2dyb3VuZCI7czo2OiJlOGU4ZTgiO31zOjQ6ImJvZHkiO2E6NDp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjU6IkFyaWFsIjtzOjQ6InNpemUiO2k6MTY7czoxMDoiYmFja2dyb3VuZCI7czo2OiJmZmZmZmYiO31zOjY6ImZvb3RlciI7YToxOntzOjEwOiJiYWNrZ3JvdW5kIjtzOjY6ImU4ZThlOCI7fXM6MjoiaDEiO2E6Mzp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjEyOiJUcmVidWNoZXQgTVMiO3M6NDoic2l6ZSI7aTo0MDt9czoyOiJoMiI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjQyNDI0MiI7czo2OiJmYW1pbHkiO3M6MTI6IlRyZWJ1Y2hldCBNUyI7czo0OiJzaXplIjtpOjMwO31zOjI6ImgzIjthOjM6e3M6NToiY29sb3IiO3M6NjoiNDI0MjQyIjtzOjY6ImZhbWlseSI7czoxMjoiVHJlYnVjaGV0IE1TIjtzOjQ6InNpemUiO2k6MjQ7fXM6MToiYSI7YToyOntzOjU6ImNvbG9yIjtzOjY6IjRhOTFiMCI7czo5OiJ1bmRlcmxpbmUiO2I6MDt9czoxMToidW5zdWJzY3JpYmUiO2E6MTp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO31zOjExOiJ2aWV3YnJvd3NlciI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjAwMDAwMCI7czo2OiJmYW1pbHkiO3M6NToiQXJpYWwiO3M6NDoic2l6ZSI7aToxMjt9fQ=='),
(2, 0, 'Confirmation de votre abonnement à What&#039;s Up Music', 'Bonjour ! \n\nFélicitations ! Vous êtes abonné(e) à notre site.\nVous devez cependant activer votre abonnement à [lists_to_confirm] en cliquant sur le lien ci-dessous : \n\n[activation_link]Cliquez ici pour confirmer votre abonnement.[/activation_link]\n\nMerci, \n\nL''équipe !\n', 1397039149, 1397039149, NULL, 'info@wu.josealbea.com', 'yohann-teisseire', 'info@wu.josealbea.com', 'yohann-teisseire', NULL, 99, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_email_user_stat`
--

CREATE TABLE `wp_wysija_email_user_stat` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `sent_at` int(10) unsigned NOT NULL,
  `opened_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_email_user_url`
--

CREATE TABLE `wp_wysija_email_user_url` (
  `email_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `clicked_at` int(10) unsigned DEFAULT NULL,
  `number_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_form`
--

CREATE TABLE `wp_wysija_form` (
`form_id` int(10) unsigned NOT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `styles` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `subscribed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_wysija_form`
--

INSERT INTO `wp_wysija_form` (`form_id`, `name`, `data`, `styles`, `subscribed`) VALUES
(1, 'Abonnez-vous à notre newsletter', 'YTo0OntzOjc6InZlcnNpb24iO3M6MzoiMC40IjtzOjg6InNldHRpbmdzIjthOjQ6e3M6MTA6Im9uX3N1Y2Nlc3MiO3M6NzoibWVzc2FnZSI7czoxNToic3VjY2Vzc19tZXNzYWdlIjtzOjkzOiJWw6lyaWZpZXogdm90cmUgYm/DrnRlIGRlIHLDqWNlcHRpb24gb3Ugdm9zIGluZMOpc2lyYWJsZXMgYWZpbiBkZSBjb25maXJtZXIgdm90cmUgYWJvbm5lbWVudC4iO3M6NToibGlzdHMiO2E6MTp7aTowO3M6MToiMSI7fXM6MTc6Imxpc3RzX3NlbGVjdGVkX2J5IjtzOjU6ImFkbWluIjt9czo0OiJib2R5IjthOjI6e2k6MDthOjQ6e3M6NDoibmFtZSI7czo2OiJFLW1haWwiO3M6NDoidHlwZSI7czo1OiJpbnB1dCI7czo1OiJmaWVsZCI7czo1OiJlbWFpbCI7czo2OiJwYXJhbXMiO2E6Mjp7czo1OiJsYWJlbCI7czo2OiJFLW1haWwiO3M6ODoicmVxdWlyZWQiO2I6MTt9fWk6MTthOjQ6e3M6NDoibmFtZSI7czo3OiJFbnZveWVyIjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6ImZpZWxkIjtzOjY6InN1Ym1pdCI7czo2OiJwYXJhbXMiO2E6MTp7czo1OiJsYWJlbCI7czoxMzoiSmUgbSdhYm9ubmUgISI7fX19czo3OiJmb3JtX2lkIjtpOjE7fQ==', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_list`
--

CREATE TABLE `wp_wysija_list` (
`list_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `namekey` varchar(255) DEFAULT NULL,
  `description` text,
  `unsub_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `welcome_mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_enabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_public` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_wysija_list`
--

INSERT INTO `wp_wysija_list` (`list_id`, `name`, `namekey`, `description`, `unsub_mail_id`, `welcome_mail_id`, `is_enabled`, `is_public`, `created_at`, `ordering`) VALUES
(1, 'Ma première liste', 'ma-premiere-liste', 'Cette liste a été créée automatiquement lors de l''installation de MailPoet.', 0, 0, 1, 1, 1397039145, 0),
(2, 'Utilisateurs WordPress', 'users', 'La liste créée automatiquement lors de l''importation des abonnés de l''extension : "WordPress', 0, 0, 0, 0, 1397039148, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_queue`
--

CREATE TABLE `wp_wysija_queue` (
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `send_at` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `number_try` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_url`
--

CREATE TABLE `wp_wysija_url` (
`url_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_url_mail`
--

CREATE TABLE `wp_wysija_url_mail` (
`email_id` int(11) NOT NULL,
  `url_id` int(10) unsigned NOT NULL,
  `unique_clicked` int(10) unsigned NOT NULL DEFAULT '0',
  `total_clicked` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_user`
--

CREATE TABLE `wp_wysija_user` (
`user_id` int(10) unsigned NOT NULL,
  `wpuser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL,
  `confirmed_ip` varchar(100) NOT NULL DEFAULT '0',
  `confirmed_at` int(10) unsigned DEFAULT NULL,
  `last_opened` int(10) unsigned DEFAULT NULL,
  `last_clicked` int(10) unsigned DEFAULT NULL,
  `keyuser` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `domain` varchar(255) DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `wp_wysija_user`
--

INSERT INTO `wp_wysija_user` (`user_id`, `wpuser_id`, `email`, `firstname`, `lastname`, `ip`, `confirmed_ip`, `confirmed_at`, `last_opened`, `last_clicked`, `keyuser`, `created_at`, `status`, `domain`) VALUES
(1, 1, 'jose.albea@gmail.com', 'Albea', 'José', '', '0', NULL, NULL, NULL, '', 1397039149, 1, 'gmail.com'),
(2, 2, 'yohann.teisseire@hotmail.fr', 'Yohann', 'T', '', '0', NULL, NULL, NULL, '', 1397039149, 1, 'hotmail.fr'),
(3, 3, 'phiphi.traing@gmail.com', 'phiphi', '', '83.142.147.16', '0', NULL, NULL, NULL, '6b7110c8786aeaf3bf2258a0dfd89569', 1397117639, 1, 'gmail.com'),
(4, 4, 'axel.bouaziz@hotmail.fr', 'Axel', 'Bouaziz', '37.160.127.29', '0', NULL, NULL, NULL, 'b91293441aa94ec751200c90e29b3632', 1397118673, 1, 'hotmail.fr'),
(5, 5, 'gos.clement@gmail.com', 'clement', '', '37.160.127.29', '0', NULL, NULL, NULL, '08fdfeedc04cbd3ac8da605df57cb9d8', 1397118885, 1, 'gmail.com'),
(6, 6, 'test@eazedqsdqsd.fr', 'test', '', '127.0.0.1', '0', NULL, NULL, NULL, 'f70705fc92a0409aa726bb72a2d0aa79', 1400244514, 1, 'eazedqsdqsd.fr'),
(7, 7, 'test@eazedqsdqsd.frq', 'testqspod', '', '127.0.0.1', '0', NULL, NULL, NULL, 'd49650769763b29418e20861972acb02', 1400244566, 1, 'eazedqsdqsd.frq'),
(8, 8, 'qsoduqsiduqsoi@qsoiduqsodisu.fr', 'doiudoqisduqsoidu', '', '127.0.0.1', '0', NULL, NULL, NULL, '14f1310da7a51f123bf047fe86b1ff23', 1400245341, 1, 'qsoiduqsodisu.fr'),
(9, 9, 'qsoduqsiduffqsoi@qsoiduqsodisu.fr', 'doiudoqisduqsoiduqq', '', '127.0.0.1', '0', NULL, NULL, NULL, 'bb3cf47de898e5caf126ce067dcefa7d', 1400245376, 1, 'qsoiduqsodisu.fr'),
(10, 11, 'yoyot92@hotmail.com', 'Yohann Daniel', 'Carter', '127.0.0.1', '0', NULL, NULL, NULL, '014e277c39ee2dcf1596a34504f3385f', 1401285870, 1, 'hotmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_user_field`
--

CREATE TABLE `wp_wysija_user_field` (
`field_id` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `column_name` varchar(250) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned DEFAULT '0',
  `values` text,
  `default` varchar(250) NOT NULL DEFAULT '',
  `is_required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `error_message` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_wysija_user_field`
--

INSERT INTO `wp_wysija_user_field` (`field_id`, `name`, `column_name`, `type`, `values`, `default`, `is_required`, `error_message`) VALUES
(1, 'Prénom', 'firstname', 0, NULL, '', 0, 'Merci de saisir le prénom'),
(2, 'Nom', 'lastname', 0, NULL, '', 0, 'Merci de saisir le nom de famille');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_user_history`
--

CREATE TABLE `wp_wysija_user_history` (
`history_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT '',
  `details` text,
  `executed_at` int(10) unsigned DEFAULT NULL,
  `executed_by` int(10) unsigned DEFAULT NULL,
  `source` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wysija_user_list`
--

CREATE TABLE `wp_wysija_user_list` (
  `list_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `sub_date` int(10) unsigned DEFAULT '0',
  `unsub_date` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_wysija_user_list`
--

INSERT INTO `wp_wysija_user_list` (`list_id`, `user_id`, `sub_date`, `unsub_date`) VALUES
(1, 2, 1397039145, 0),
(2, 1, 1397039148, 0),
(2, 2, 1397039148, 0),
(2, 3, 1397117639, 0),
(2, 4, 1397118673, 0),
(2, 5, 1397118886, 0),
(2, 6, 1400244514, 0),
(2, 7, 1400244566, 0),
(2, 8, 1400245341, 0),
(2, 9, 1400245376, 0),
(2, 10, 1401285870, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`);

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_ratings`
--
ALTER TABLE `wp_ratings`
 ADD PRIMARY KEY (`rating_id`);

--
-- Index pour la table `wp_reported_posts`
--
ALTER TABLE `wp_reported_posts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_email` (`user_email`,`post_id`);

--
-- Index pour la table `wp_social_users`
--
ALTER TABLE `wp_social_users`
 ADD KEY `ID` (`ID`,`type`);

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Index pour la table `wp_wti_like_post`
--
ALTER TABLE `wp_wti_like_post`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
 ADD PRIMARY KEY (`campaign_id`);

--
-- Index pour la table `wp_wysija_campaign_list`
--
ALTER TABLE `wp_wysija_campaign_list`
 ADD PRIMARY KEY (`list_id`,`campaign_id`);

--
-- Index pour la table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
 ADD PRIMARY KEY (`email_id`);

--
-- Index pour la table `wp_wysija_email_user_stat`
--
ALTER TABLE `wp_wysija_email_user_stat`
 ADD PRIMARY KEY (`user_id`,`email_id`);

--
-- Index pour la table `wp_wysija_email_user_url`
--
ALTER TABLE `wp_wysija_email_user_url`
 ADD PRIMARY KEY (`user_id`,`email_id`,`url_id`);

--
-- Index pour la table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
 ADD PRIMARY KEY (`form_id`);

--
-- Index pour la table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
 ADD PRIMARY KEY (`list_id`);

--
-- Index pour la table `wp_wysija_queue`
--
ALTER TABLE `wp_wysija_queue`
 ADD PRIMARY KEY (`user_id`,`email_id`), ADD KEY `SENT_AT_INDEX` (`send_at`);

--
-- Index pour la table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
 ADD PRIMARY KEY (`url_id`);

--
-- Index pour la table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
 ADD PRIMARY KEY (`email_id`,`url_id`);

--
-- Index pour la table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `EMAIL_UNIQUE` (`email`);

--
-- Index pour la table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
 ADD PRIMARY KEY (`field_id`);

--
-- Index pour la table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
 ADD PRIMARY KEY (`history_id`);

--
-- Index pour la table `wp_wysija_user_list`
--
ALTER TABLE `wp_wysija_user_list`
 ADD PRIMARY KEY (`list_id`,`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1779;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1437;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT pour la table `wp_ratings`
--
ALTER TABLE `wp_ratings`
MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_reported_posts`
--
ALTER TABLE `wp_reported_posts`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `wp_wti_like_post`
--
ALTER TABLE `wp_wti_like_post`
MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
MODIFY `campaign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
MODIFY `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
MODIFY `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
MODIFY `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
MODIFY `url_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
MODIFY `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT;