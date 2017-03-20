-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2017 lúc 09:18 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tainghe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `order`, `icon`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tai nghe có dây', 'tai-nghe-co-day', 20, '', 0, '', '', NULL, NULL),
(2, 'Tai nghe More', 'tai-nghe-more', 100, '', 1, '', '', NULL, NULL),
(3, 'Loa di động', 'loa-di-dong', 24, '', 0, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_posts`
--

CREATE TABLE `category_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_advs`
--

CREATE TABLE `image_advs` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_advs`
--

INSERT INTO `image_advs` (`id`, `image`, `slug`, `position`, `content`, `width`, `height`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/images_adv/razer-moray.jpg', '#', 1, '', 1166, 99, 1, NULL, NULL),
(2, 'images/images_adv/go-play-mini.jpg', '#', 2, '', 385, 99, 1, NULL, NULL),
(3, 'images/images_adv/onyx-studio-3.jpg', '#', 2, '', 385, 99, 1, NULL, NULL),
(4, 'images/images_adv/681b-681evo.jpg', '#', 2, '', 385, 99, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_types`
--

CREATE TABLE `image_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_types`
--

INSERT INTO `image_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Banner', NULL, NULL),
(2, 'Quảng cáo trên', NULL, NULL),
(3, 'Quảng cáo dưới', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `icon`, `sort_order`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 'trang-chu', '', 1, 0, 1, NULL, NULL),
(2, 'Sản phẩm', 'san-pham', '', 2, 0, 1, NULL, NULL),
(3, 'Tai nghe có dây', 'tai-nghe-co-day', '', 1, 2, 1, NULL, NULL),
(4, 'Giới thiệu', 'gioi-thieu', '', 3, 0, 1, NULL, NULL),
(5, 'Tin tức', 'tin-tuc', '', 4, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_03_04_020732_create_options_table', 1),
(8, '2017_03_04_052231_create_menus_table', 2),
(10, '2017_03_06_043647_create_categories_table', 3),
(11, '2017_03_06_101019_create_image_types_table', 4),
(12, '2017_03_06_101100_create_image_advs_table', 4),
(14, '2017_03_06_122952_create_products_table', 5),
(15, '2017_03_07_121942_create_one_pages_table', 6),
(16, '2017_03_08_073503_create_category_posts_table', 7),
(17, '2017_03_08_074741_create_posts_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `one_pages`
--

CREATE TABLE `one_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `one_pages`
--

INSERT INTO `one_pages` (`id`, `name`, `slug`, `content`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', '<img src=\"/images/banners/Untitled-2.jpg\" alt=\"http://tainghe365.com banner headphone\" width=\"1025\" height=\"250\"></span></p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">	\r\n	</span></p><div id=\"video-EAuPuGpoviE\" class=\"shortcode-video\">\r\n		<div class=\"fluid-width-video-wrapper\" style=\"padding-top: 56.2318%;\"><iframe src=\"https://www.youtube.com/embed/EAuPuGpoviE\" allowfullscreen=\"\"></iframe></div>\r\n	</div>\r\n	<script>\r\n		spnoConflict(function($){\r\n			$(\"#video-EAuPuGpoviE\").fitVids();\r\n		});\r\n	</script>\r\n	<p></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><strong>365Audio </strong>chuyên:&nbsp;</span></p>\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">-&nbsp;<a title=\"tai nghe \" href=\"/san-pham/tai-nghe-co-day.html\" rel=\"alternate\">Tai nghe</a>&nbsp;</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">- <a title=\"Máy nghe nhạc\" href=\"/san-pham/may-nghe-nhac.html\" target=\"_blank\" rel=\"alternate\">Máy nghe nhạc</a>&nbsp;</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">-&nbsp;<a title=\"Loa di động\" href=\"/san-pham/loa-di-dong.html\" rel=\"alternate\">Loa di động</a>&nbsp;</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">-&nbsp;<a title=\"Tai nghe Bluetooth\" href=\"/san-pham/tai-nghe-khong-day.html\" rel=\"alternate\">Tai nghe Bluetooth</a>&nbsp;</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">-&nbsp;<a title=\"Amp DAC\" href=\"/san-pham/amp-dac.html\" rel=\"alternate\">Amp DAC</a>&nbsp;</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">- <a href=\"/san-pham/tai-nghe-2hands.html\" rel=\"alternate\">Tai nghe cũ</a>&nbsp;</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">-&nbsp;<a title=\"Phụ kiện Xiaomi\" href=\"/san-pham/san-pham-xiaomi.html\" rel=\"alternate\">Phụ kiện Xiaomi</a>&nbsp;</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">- Sửa chữa tai nghe</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><br>&gt;&nbsp;<a href=\"http://tainghe365.com/\" rel=\"alternate\">365Audio</a> xin cam kết các mặt hàng shop bán ra&nbsp;chính hãng 100% ( vì nhập từ shop lớn, uy tín ) bảo hành từ 6-12 tháng tùy từng sản phẩm,&nbsp;Quý khách&nbsp;nào phát hiện hàng fake&nbsp;Shop&nbsp;tặng luôn và đền 100% giá trị sản phẩm, hàng của Shop&nbsp;giá cả cạnh tranh cực tốt cho anh em vì chủ yếu&nbsp;bán online&nbsp;+&nbsp;offline, ko mất chi phí thuê cửa hàng...<br></span></p>\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&gt; Shop <a title=\"tainghe365.com\" href=\"http://tainghe365.com/\" rel=\"alternate\">tainghe365.com</a>&nbsp;là một shop chuyên cung cấp các thiết bị Audio gồm <a title=\"tai nghe\" href=\"/san-pham/tai-nghe-co-day.html\" rel=\"alternate\">tai nghe</a>, <a title=\"loa di động\" href=\"/san-pham/loa-di-dong.html\" rel=\"alternate\">loa di động</a>, <a title=\"máy nghe nhạc\" href=\"/san-pham/may-nghe-nhac.html\" rel=\"alternate\">máy nghe nhạc</a>&nbsp;và <a title=\"phụ kiện Xiaomi\" href=\"/san-pham/san-pham-xiaomi.html\" rel=\"alternate\">phụ kiện Xiaomi</a>&nbsp;chính hãng cho các tín đồ yêu âm nhạc .</span></p>\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&gt; 365Audio&nbsp;hiện đang là đại lý phân phối cung cấp những thương hiệu âm thanh nổi tiếng hàng đầu thế giới như: <a title=\"tai nghe Audiotechnica\" href=\"/san-pham/tai-nghe-audiotechnica.html\" rel=\"alternate\">Audiotechnica</a>, <a title=\"tai nghe akg \" href=\"/san-pham/tai-nghe-akg.html\" rel=\"alternate\">AKG</a>, <a title=\"tai nghe Sony\" href=\"/san-pham/tai-nghe-sony.html\" rel=\"alternate\">Sony</a>, <a title=\"tai nghe SoundMAGIC\" href=\"/san-pham/tai-nghe-soundmagic.html\" rel=\"alternate\">SoundMAGIC,</a> <a href=\"/san-pham/tai-nghe-bluetooth-bluedio.html\" rel=\"alternate\">Bluedio</a>, <a href=\"/san-pham/tai-nghe-1more.html\" rel=\"alternate\">1More</a>, <a href=\"/san-pham/tai-nghe-bluetooth-ausdom.html\" rel=\"alternate\">Ausdom</a>, <a href=\"/san-pham/tai-nghe-knowledge-zenith-kz.html\" rel=\"alternate\">Knowledge Zenith (KZ)</a></span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">, <a href=\"/san-pham/tai-nghe-auglamour.html\" rel=\"alternate\">Auglamour</a></span><span style=\"font-size: 12pt;\">, <a href=\"/san-pham/tai-nghe-ostry.html\" rel=\"alternate\">Ostry</a>,&nbsp;<a href=\"/san-pham/may-nghe-nhac-benjie.html\" rel=\"alternate\">Benjie</a>, <a href=\"/san-pham/may-nghe-nhac-fiio.html\" rel=\"alternate\">Fiio</a>, <a href=\"/san-pham/may-nghe-nhac-xduoo.html\" rel=\"alternate\">Xduoo</a>, <a href=\"/san-pham/may-nghe-nhac-ibasso.html\" rel=\"alternate\">iBasso</a>,&nbsp;<a href=\"/san-pham/loa-bluetooth-kingone.html\" rel=\"alternate\">Kingone</a>, <a href=\"/san-pham/loa-bluetooth-jbl.html\" rel=\"alternate\">JBL</a>, <a href=\"/san-pham/loa-bluetooth-harman-kardon.html\" rel=\"alternate\">Harman Kardon</a>, <a href=\"/san-pham/loa-bluetooth-dreamwave.html\" rel=\"alternate\">Dreamwave</a>, <a href=\"/san-pham/tai-nghe-superlux.html\" rel=\"alternate\">Superlux</a>, <a href=\"/san-pham/loa-bluetooth-bose.html\" rel=\"alternate\">Bose</a>, <a href=\"/san-pham/loa-bluetooth-braven.html\" rel=\"alternate\">Braven</a>, <a href=\"/san-pham/loa-bluetooth-trendwoo.html\" rel=\"alternate\">Trenwood </a> ....</span></p>\r\n<p><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">&gt; Phương châm hoạt động của <a href=\"http://tainghe365.com/\" rel=\"alternate\">365Audio</a></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #33cccc; font-family: arial, helvetica, sans-serif;\">“Cam kết chất lượng – Tư vấn nhiệt tình</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #33cccc; font-family: arial, helvetica, sans-serif;\">Đi đầu về giá cả và chất lượng phục vụ</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #33cccc; font-family: arial, helvetica, sans-serif;\">Người bạn đồng hành cùng người yêu âm nhạc”</span></p>\r\n<p><span class=\"text_exposed_show\" style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">►Email : <span id=\"cloak85256\"><span id=\"cloak62828\"><span id=\"cloak4841cb42ec7b7973f82cc17dcf449501\"><a href=\"mailto:tainghe365@gmail.com\" rel=\"alternate\">tainghe365@gmail.com</a></span><script type=\"text/javascript\">\r\n				document.getElementById(\'cloak4841cb42ec7b7973f82cc17dcf449501\').innerHTML = \'\';\r\n				var prefix = \'&#109;a\' + \'i&#108;\' + \'&#116;o\';\r\n				var path = \'hr\' + \'ef\' + \'=\';\r\n				var addy4841cb42ec7b7973f82cc17dcf449501 = \'t&#97;&#105;ngh&#101;365\' + \'&#64;\';\r\n				addy4841cb42ec7b7973f82cc17dcf449501 = addy4841cb42ec7b7973f82cc17dcf449501 + \'gm&#97;&#105;l\' + \'&#46;\' + \'c&#111;m\';\r\n				var addy_text4841cb42ec7b7973f82cc17dcf449501 = \'t&#97;&#105;ngh&#101;365\' + \'&#64;\' + \'gm&#97;&#105;l\' + \'&#46;\' + \'c&#111;m\';document.getElementById(\'cloak4841cb42ec7b7973f82cc17dcf449501\').innerHTML += \'<a \' + path + \'\\\'\' + prefix + \':\' + addy4841cb42ec7b7973f82cc17dcf449501 + \'\\\' rel=\"alternate\">\'+addy_text4841cb42ec7b7973f82cc17dcf449501+\'<\\/a>\';\r\n		</script></span></span></span></p>\r\n<p><span class=\"text_exposed_show\" style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">►Skype&nbsp;:&nbsp;nguyenxuanto2014<br>►Hotline / Zalo: <a href=\"tel:0986540333\" rel=\"alternate\">0986 540 333</a> - &nbsp;<a href=\"tel:01649629629\" rel=\"alternate\">01649 629 629</a><br></span></p>\r\n<p><span class=\"text_exposed_show\" style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">►Fanpage: <a href=\"https://www.facebook.com/TaiNgheTot/\" target=\"_blank\" rel=\"alternate\">https://www.facebook.com/TaiNgheTot/</a><br></span></p>\r\n<p><span class=\"text_exposed_show\" style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">►Website&nbsp;: &nbsp; <a href=\"http://tainghe365.com/\" rel=\"alternate\">http://tainghe365.com&nbsp;</a></span></p>\r\n<p><span class=\"text_exposed_show\" style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">►Youtube : &nbsp;<a href=\"https://www.youtube.com/channel/UCKO4Xkv-yokTIF8OitIp06g\" target=\"_blank\" rel=\"alternate\">https://www.youtube.com/tainghe365channel</a></span></p>\r\n<p><span class=\"text_exposed_show\" style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">► Địa chỉ: <strong>Số nhà 15&nbsp;Ngõ 22 Phan Đình Giót, Thanh Xuân, Hà Nội</strong> (288 Giải Phóng rẽ vào khoảng 200m)</span><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\"><img src=\"/images/xcid2f60zsqj81hnbm_k_Screenshot6.png\" alt=\"bản đồ tainghe365 - 365audio\" width=\"1024\" height=\"505\"></span></p>\r\n<p>&nbsp;</p> 		', '', '', NULL, NULL),
(2, 'Thanh toán vận chuyển', 'thanh-toan-van-chuyen', '<p><span style=\"color: #3366ff;\"><strong><span style=\"font-size: 12pt;\">I.&nbsp; KHI ĐẶT HÀNG QUÝ KHÁCH CÓ THỂ LỰA CHỌN CÁC&nbsp;HÌNH THỨC CHUYỂN TIỀN DƯỚI ĐÂY:</span></strong></span></p>\r\n<p><span style=\"font-size: 12pt;\">1. Thanh toán trực tiếp cho nhân viên khi giao hàng.</span></p>\r\n<p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; (Áp dụng trong nội thành Hà Nội)</span></p>\r\n<div>\r\n<p><span style=\"font-size: 12pt;\">2. Chuyển tiền vào tài khoản sau của:</span></p>\r\n<p><span style=\"font-size: 12pt;\">*&nbsp; Ngân hàng Vietcombank - VCB&nbsp;( tại sở giao dịch Ngoại Thương Việt Nam )&nbsp;</span></p>\r\n<p><span style=\"font-size: 12pt;\">&nbsp;&nbsp;&nbsp;Số tài khoản: &nbsp;0011000399310</span></p>\r\n<p><span style=\"font-size: 12pt;\">&nbsp;&nbsp; Chủ tài khoản: NGUYỄN XUÂN TỎ</span></p>\r\n<p><span style=\"color: #3366ff;\"><strong><span style=\"font-size: 12pt;\">II. HÌNH THỨC VẬN CHUYỂN HÀNG CỦA&nbsp;TAINGHE365</span></strong></span></p>\r\n<p><span style=\"font-size: 12pt;\">- Quý khách ở Hà Nội: giao hàng miễn phí <em>(không áp dụng với các sản phẩm đang được KM)</em>, thời gian giao hàng&nbsp;trong ngày&nbsp;kể từ khi đặt hàng.</span></p>\r\n<p style=\"text-align: left;\" align=\"center\"><em><span style=\"font-size: 12pt;\">( Nhân viên tainghe365&nbsp;sẽ mang hàng trực tiếp đến địa chỉ Quý khách yêu cầu.)</span></em></p>\r\n<p style=\"text-align: left;\" align=\"center\"><span style=\"font-size: 12pt;\">- Quý khách ở TPHCM và các tỉnh, tainghe365&nbsp;sẽ giao hàng thông qua Tín Thành/&nbsp;NewsdayExpress&nbsp;/ DHA ..., thời gian giao hàng từ 1 đến 3 ngày kể từ khi hoàn tất thanh toán.</span></p>\r\n<p style=\"text-align: left;\" align=\"center\"><span style=\"font-size: 12pt;\">-&nbsp;Hỗ trợ chuyển hàng ra bến xe cho khách hàng ở các tỉnh trên toàn quốc</span></p>\r\n<p style=\"text-align: left;\" align=\"center\"><strong><span style=\"font-size: 12pt;\">HÃY&nbsp;LIÊN HỆ&nbsp;THEO HOTLINE: <a href=\"tel:0986540333\" rel=\"alternate\">0986.540.333</a>&nbsp;để&nbsp;được&nbsp;phục vụ&nbsp;nhanh nhất.</span></strong></p>\r\n</div>\r\n</div>\r\n<div>\r\n<p><em><span style=\"font-size: 12pt;\">* Lưu ý:</span></em></p>\r\n<p><span style=\"font-size: 12pt;\">-&nbsp;Bất kỳ tài khoản nào không được cập nhật ở trên đều không có giá trị thanh toán.</span></p>\r\n<p class=\"header\" style=\"text-align: center;\"><strong><span style=\"font-size: 12pt;\"><a title=\"TAINGHE365.COM UY TÍN - TẬN TÂM\" href=\"/tainghe365.com\" rel=\"alternate\">TAINGHE365.COM</a>&nbsp;UY TÍN - TẬN TÂM</span></strong></p>\r\n</div>\r\n<div>&nbsp;</div> 	', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'logo', '', NULL, NULL),
(2, 'phone_number', '0912119088', NULL, NULL),
(3, 'hot_line', '0912119088', NULL, NULL),
(4, 'address', 'Nhà A8 T1 - Tầng 1 - Chung cư 5 tầng , phố Hà Liễu - Phường Gia Cẩm - TP.Việt Trì - Tình Phú Thọ', NULL, NULL),
(5, 'time_works', 'Nhà A8 T1 - Tầng 1 - Chung cư 5 tầng , phố Hà Liễu - Phường Gia Cẩm - TP.Việt Trì - Tình Phú Thọ', NULL, NULL),
(6, 'posts_per_page', '10', NULL, NULL),
(7, 'products_per_page', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `image`, `intro`, `content`, `post_id`, `keywords`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'RHA T20: thiết kế cao cấp, chất âm \"audiophile\"', '342-rha-t20-thiet-ke-cao-cap-chat-am-audiophile', '/images/images_post/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg', 'Những gì mà RHA T20 thể hiện cho thấy nó xứng đáng với từng xu được bỏ ra, nhất là trong phân khúc tai nghe cao cấp vốn khá kén người dùng ở Việt Nam từ trước đến nay.', '<p><span style=\"font-size: 12pt;\">RHA (Reid and Heaths Acoustic) là nhà sản xuất âm thanh danh tiếng, có trụ sở tại Glasgow, Scotland, thuộc Vương quốc Anh. Lần đầu ra mắt công chúng vào năm 2012 với những mẫu tai nghe giá rẻ cùng âm hình V-Sharp đặc trưng, RHA đã bắt đầu thu hút được sự chú ý của người chơi âm thanh, đặc biệt là ở phân khúc phổ thông. Những chiếc tai nghe in-ear RHA MA series như MA350 (50 USD) hay MA750i (150 USD) khá được ưa chuộng tại Việt Nam khi sở hữu p/p (giá thành/hiệu năng) cực tốt.</span></p>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153069\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/rha-t20-5-1444794956314/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"RHA T20\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">RHA T20</span></div>\n</div>\n<p><span style=\"font-size: 12pt;\">Cuối năm 2013, RHA đã tung ra chiếc \"flagship\" RHA T10 với thiết kế sang trọng, đi kèm là bộ filter dành cho từng đối tượng người nghe và đặc biệt là chất âm ấn tượng, rất chi tiết và giàu cảm xúc. Rất nhanh chóng, T10 đã chiếm được cảm tình cũng như sự mong đợi của fan hâm mộ trên toàn thế giới. Năm 2015, nhà sản xuất này tiếp tục giới thiệu bộ đôi tai nghe Hi-Res RHA T20 và T20i hứa hẹn nhiều nâng cấp đáng kể so với phiên bản tiền nhiệm.</span></p>\n<p><span style=\"font-size: 12pt;\">Hiện tại, T20 và T20i đã có mặt tại thị trường Việt Nam với giá bán tham khảo lần lượt là 6.600.000 VNĐ và 6.800.000 VNĐ (bởi NPP IDO Việt Nam). Đối đầu với nhiều đối thủ cứng cựa khác đến từ Sennheiser, Dunu, Audio Technica,... liệu T20 có thuyết phục được người nghe \"rút ví\" như T10 đã từng?</span></p>\n<p><span style=\"font-size: 12pt;\"><strong>THIẾT KẾ CAO CẤP</strong></span></p>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153070\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/1-1444794956082/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Giống như phiên bản trước, T20 được đóng hộp đơn giản , chắc chắn\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Giống như phiên bản trước, T20 được đóng hộp đơn giản , chắc chắn</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153071\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/2-1444794956097/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Mặt sau là những thông tin kĩ thuật của RHA T20\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Mặt sau là những thông tin kĩ thuật của RHA T20</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153072\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/3-1444794956218/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Hộp T20 là dạng window (cửa sổ), khi mở ra chúng ta có thể thấy được toàn bộ những gì bên trong\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Hộp T20 là dạng window (cửa sổ), khi mở ra chúng ta có thể thấy được toàn bộ những gì bên trong</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153073\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-8-1444794956199/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Mở hộp. Tai nghe và bộ phụ kiện được bọc ngay ngay ngắn, đẹp mắt trong lớp mút chống sốc.\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Mở hộp. Tai nghe và bộ phụ kiện được bọc ngay ngay ngắn, đẹp mắt trong lớp mút chống sốc.</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153074\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/5-1444794956264/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Ngoài đôi tips đã gắn vào tai, RHA còn hào phóng tặng cho người dùng 5 đôi tips thường, 2 cặp foam đen và 2 cặp tips 2 tầng cách âm\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Ngoài đôi tips đã gắn vào tai, RHA còn hào phóng tặng cho người dùng 5 đôi tips thường, 2 cặp foam đen và 2 cặp tips 2 tầng cách âm</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153075\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/6-1444794956107/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Túi đựng tai nghe, kẹp áo cùng hướng dẫn sử dụng\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Túi đựng tai nghe, kẹp áo cùng hướng dẫn sử dụng</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153098\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/4-1444794956153/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Cận cảnh bộ sound filter có tác dụng thay đổi chất âm (bass, treble) tương tự như trên RHA T10\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Cận cảnh bộ sound filter có tác dụng thay đổi chất âm (bass, treble) tương tự như trên RHA T10</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153099\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-13-1444794956181/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Cận cảnh RHA T20. Không có quá nhiều sự thay đổi so với phiên bản tiền nhiệm, T20 vẫn sở hữu thiết kế vô cùng tinh tế, sang trọng và đẹp mắt.\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Cận cảnh RHA T20. Không có quá nhiều sự thay đổi so với phiên bản tiền nhiệm, T20 vẫn sở hữu thiết kế vô cùng tinh tế, sang trọng và đẹp mắt.</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153100\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-10-1444794956129/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"\nHousing làm hoàn toàn từ kim loại với chất lượng gia công hoàn hảo\n\"></span></div>\n<div class=\"PhotoCMS_Caption\">\n<p><span style=\"font-size: 12pt;\">Housing làm hoàn toàn từ kim loại với chất lượng gia công hoàn hảo</span></p>\n</div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153101\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/rha-t20-5-1444794956314/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Logo RHA in chìm bên ngoài\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Logo RHA in chìm bên ngoài</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153102\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-18-1444794956247/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Bên trong là tên sản phẩm\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Bên trong là tên sản phẩm</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153103\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-11-1444794956163/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Cùng với đánh dấu L (trái), R (phải) rõ ràng\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Cùng với đánh dấu L (trái), R (phải) rõ ràng</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153104\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-16-1444794956171/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Cùng với đánh dấu L (trái), R (phải) rõ ràng\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Cùng với đánh dấu L (trái), R (phải) rõ ràng</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153105\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-14-1444794956230/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Hoặc người nghe có thể phân biệt qua vòng nhựa ở đuôi housing (đỏ - bên phải; xanh - bên trái)\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Hoặc người nghe có thể phân biệt qua vòng nhựa ở đuôi housing (đỏ - bên phải; xanh - bên trái)</span></div>\n</div>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153106\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/rha-t20-7-1444794956238/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"Dây bọc cao su dày, bền chắc, đi kèm với đó là những chi tiết bằng thép mạ cao cấp như jack 3.5 mm, cầu nối chia dây cáp sang 2 kênh tai.\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">Dây bọc cao su dày, bền chắc, đi kèm với đó là những chi tiết bằng thép mạ cao cấp như jack 3.5 mm, cầu nối chia dây cáp sang 2 kênh tai.</span></div>\n</div>\n<p><span style=\"font-size: 12pt;\">Tất nhiên, T20 sẽ hơi nặng một chút so với những tai nghe khác, bù lại là khả năng cách âm gần như tuyệt đối cũng như thoải mái khi đeo trong thời gian dài. Nhược điểm duy nhất của T20 chính là cáp không thể tháo rời, hoặc thay thế. Tuy nhiên, với việc được bảo hành 3 năm, cùng dây dẫn được làm bằng đồng OFC cao cấp khiến cho vấn đề về cáp tháo rời có phần không còn quá quan trọng với người dùng.</span></p>\n<p><span style=\"font-size: 12pt;\"><strong>CHẤT ÂM AUDIOPHILE</strong></span></p>\n<p><span style=\"font-size: 12pt;\">Trước khi nói về chất âm, chúng ta hãy cùng tìm hiểu công nghệ DualCoil™ driver độc quyền được RHA trang bị trên chiếc flagship của mình. Bên trong housing T20 chúng ta có hai cuộn cảm (voice coil) nằm trên cùng một màng loa, mỗi cuộn cảm sẽ hoạt động độc lập để tái tạo một phần của dải tần số.</span></p>\n<p><span style=\"font-size: 12pt;\">Cụ thể, dải tần số đáp ứng được phân chia thành dải thấp và cao. Các tần số dưới 2.2 kHz sẽ được tái tạo bởi cuộn bên trong và cuộn bên ngoài đảm nhận dải tần chéo trên nhằm tăng cường hiệu suất trình diễn, cho ra âm thanh có độ chi tiết cực cao. Kết quả là RHA T20 có thể đáp ứng được giải tần số rộng hơn nhiều so với những chiếc tai nghe có cấu tạo driver dynamic thông thường.</span></p>\n<p><span style=\"font-size: 12pt;\">Để đánh giá chất âm của T20 một cách khách quan nhất, mình bắt đầu với việc cắm “chay\" nó cùng smartphone, laptop cho đến phối ghép với DAC/AMP. Lần này, mình sử dụng nguồn phát là iPhone 6/ HTC One M8 cùng nguồn nhạc mp3 chất lượng 320kbps, sau đó là ghép cùng một số AMP/DAC từ rẻ tới đắt như Dac Magic XS, DarkVoice, Fiio X5 và các bài hát quen thuộc để test 3 dải.</span></p>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153107\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/rha-t20-fiio-x5-2-1444794956352/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"\nRHA T20 phụ thuộc rất nhiều vào nguồn phát\n\"></span></div>\n<div class=\"PhotoCMS_Caption\">\n<p><span style=\"font-size: 12pt;\">RHA T20 phụ thuộc rất nhiều vào nguồn phát</span></p>\n</div>\n</div>\n<p><span style=\"font-size: 12pt;\">Rút kinh nghiệm với phiên bản tiền nhiệm RHA T10, khi chất âm có sự trau chuốt đáng kể sau thời gian burn-in nhẹ trong 50 giờ đồng hồ, mình cũng thực hiện điều tương tự với T20. Cảm nhận đầu tiên với chiếc in-ear này là sự trải đều bài hát vào cả 3 dải âm: bass đủ, mid cân bằng, treble lên tới cùng với âm trường rộng rãi. Nếu là 1 fan hâm mộ của RHA, không quá khó để bạn nhận ra những gì tốt nhất của MA750 cũng như T10 đã được kết hợp khéo léo trên \"viên đạn bạc\" này.</span></p>\n<p><span style=\"font-size: 12pt;\">Nào, bắt đầu dải bass cùng đoạn intro quen thuộc trong bản Live Hotel California và nhịp điệu sôi động của All about that bass. Nếu dải trầm mạnh mẽ, áp đảo của T10 đôi lúc khiến người nghe mệt tai thì điều này đã không còn xuất hiện trên T20. Không thiên nhiều về lực, dải bass trên chiếc in-ear này được trau chuốt để cân bằng giữa lượng và chất, thể hiện qua sự tròn nẩy, chính xác cùng tốc độ tốt.</span></p>\n<p><span style=\"font-size: 12pt;\">Tiếng trống trong đoạn intro Hotel California live không xuống quá sâu, không dừng nửa vời, cũng không lan tỏa bập bùng mà đánh gọn, dừng cực kỳ đúng lúc và bắt đầu \"tan\" trong đầu người nghe - rất dễ chịu. Có thể rằng RHA T20 sở hữu dải bass rất \"thanh lịch\", 10 điểm về chất và 7 điểm về lượng, cả 2 bù trừ cho nhau để mang lại cho người nghe một cảm giác thoải mái nhưng không bị thiếu, phù hợp với rất nhiều thể loại nhạc.</span></p>\n<p><span style=\"font-size: 12pt;\">Công bằng mà nói, đối với basshead hay thể loại nhạc sôi động như Dance, EDM,... thì bass trên T20 thể hiện chưa thật sự xuất sắc để làm đã tai người nghe. Đến đây, chúng ta có thể bắt đầu nghĩ đến việc sử dụng sound filter tăng bass (màu đen) hoặc sử dụng một nguồn phát có chất âm ấm áp, dày dặn để cải thiện tình trạng này. Thật may, RHA T20 cũng là một trong những tai nghe có khả năng thay đổi chất âm tốt nhất thị trường đồng thời bị ảnh hưởng khá nhiều bởi nguồn phát, nên bạn không quá phải lo lắng nếu như cảm nhận đầu tiên chưa thật sự tuyệt vời.</span></p>\n<div class=\"VCSortableInPreviewMode IMSCurrentEditorEditObject\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153116\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/7-1444794956339/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">&nbsp;</span></div>\n</div>\n<p><span style=\"font-size: 12pt;\">Nếu dải mid là một trong những điểm nổi bật nhất trên phiên bản tiền nhiệm T10, thì điều này một lần nữa được RHA tái hiện cực kỳ xuất sắc trên T20. Vẫn là một dải mid lại cực kỳ mượt mà, chi tiết và pha chút ngọt ngào của \"ông bạn\" Audio Technica. Những giọng vocal nữ Norah Jones, Yao Si Ting, Carpenters, Thùy Chi ngân lên da diết, nỗi niềm nhưng cũng tràn đầy tình cảm, chạm tới từng cung bậc cảm xúc của người nghe. Bên cạnh đó là chút màu sắc, mượt mà, giàu nhạc tính với giọng nam cao của Bằng Kiều, Tuấn Ngọc.</span></p>\n<p><span style=\"font-size: 12pt;\">Vẫn là một dải mid tiến và sáng, nhưng không quá gần người nghe gây cảm giác ngợp hay chói gắt. Sự chi tiết đáng kinh ngạc thể hiện rõ nhất khi T20 trình diễn instrumental hay classical, dàn nhạc cụ từ piano cho tới guitar đều được bóc tách rõ ràng, trong không gian sân khấu vô cùng thoáng đãng cùng chút cá tính mà những chiếc in-ear khác khó lòng sánh được.</span></p>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153118\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-20-1444794956284/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">&nbsp;</span></div>\n</div>\n<p><span style=\"font-size: 12pt;\">Còn dải cao? Chẳng cần đến \"treble filter\" để T20 trình diễn thứ treble khỏe khoắn, dồi dào năng lượng và chi tiết. Không lung linh, leng keng đến mức chói gắt, cũng không bị lép vế giữa một dải bass chắc nẩy hay dải mid tiến sáng, treble của RHA T20 vẫn lên tới, nhấn mạnh vào sự chi tiết và vô cùng tách bạch. Với người nghe dễ dãi thì treble của chiếc in-ear này quả là quá hay, dễ nghe, dễ chịu nhưng với người khó tính hoặc nghiện treble, việc đổi sang \"treble filter\" mới thực sự thoã mãn đôi tai của họ.</span></p>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153117\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-19-1444794956275/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">&nbsp;</span></div>\n</div>\n<p><span style=\"font-size: 12pt;\">Lạm bàn về âm trường trên một chiếc tai nghe in-ear, với 3 dải âm đánh mạnh vào sự chi tiết, tách bạch thì một soundstage rộng rãi của RHA T20 là điều đã được dự báo trước. Không hề bị bó hẹp theo chiều dọc hoặc chiều ngang, không gian sân khấu được thể hiện một cách rộng rãi, thoải mái và vô cùng thoáng đãng. Dải mid tiến đưa ta đến gần sân khấu hơn, nhưng tất cả từ vị trí ca sĩ, sắp xếp dàn nhạc cụ đều được tái hiện một cách chân thực nhất. Có thể nói, âm trường trên T20 không hề thua kém một đối thủ nào trong cùng phân khúc, kể cả \"ông bạn\" DN2000J đến từ DUNU.</span></p>\n<p><span style=\"font-size: 12pt;\"><strong>TẠM KẾT</strong></span></p>\n<p><span style=\"font-size: 12pt;\">Giống như phiên bản tiền nhiệm, RHA T20 làm mê mẩn người nghe từ cái nhìn đầu tiên với thiết kế vô cùng tinh tế, sang trọng cùng một tá phụ kiện đi kèm. Tuy nhiên, điểm đáng giá trên chiếc \"flagship\" này là chất âm hoàn hảo, kết hợp từ những gì hay nhất của T10 và MA750 - 2 chiếc in-ear được đánh giá cao nhất trong lịch sử RHA.</span></p>\n<div class=\"VCSortableInPreviewMode\">\n<div><span style=\"font-size: 12pt;\"><img id=\"img_153115\" src=\"http://genknews.genkcdn.vn/k:thumb_w/640/2015/danh-gia-rha-t20-9-1444794956120/rha-t20-thiet-ke-cao-cap-chat-am-audiophile.jpg\" alt=\"\"></span></div>\n<div class=\"PhotoCMS_Caption\"><span style=\"font-size: 12pt;\">&nbsp;</span></div>\n</div>\n<p><span style=\"font-size: 12pt;\">Đó là sự cân bằng giữa 3 dải: bass đủ lượng thiên về chất, mid mượt mà chi tiết, treble dồi dào năng lượng cùng với âm trường thênh thang. Cuối cùng, khả năng thay đổi chất âm hoàn hảo từ việc thay sound filter cho tới nguồn phát là một điểm cộng cho T20 khi so kè với những đối thủ khác trên thị trường.</span></p>\n<p><span style=\"font-size: 12pt;\">Nhược điểm của RHA T20? Có phải là mức giá gần 7 triệu đồng cho một chiếc tai nghe in-ear được bảo hành 3 năm? Không! Những gì mà T20 thể hiện cho thấy nó xứng đáng với từng xu được bỏ ra, nhất là trong phân khúc tai nghe cao cấp vốn khá kén người dùng ở Việt Nam từ trước đến nay.</span></p>', 0, 'RHA T20: thiết kế cao cấp, chất âm \"audiophile\"', 'RHA T20: thiết kế cao cấp, chất âm \"audiophile\"', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_new` int(11) NOT NULL,
  `price_old` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_sale` int(11) NOT NULL,
  `is_selling` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price_new`, `price_old`, `intro`, `content`, `image`, `cate_id`, `keywords`, `description`, `status_sale`, `is_selling`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jabra Talk LikeNEW', 'jabra-talk-likenew', 200000, 250000, 'Trạng thái: Hết hàng\r\nBảo hành: 3 tháng\r\nJabra Talk LikeNEW:\r\n- Tai nghe bluetooth dành cho điện thoại di động\r\n- Thiết kế đơn giản, dễ sử dụng nhưng không kém phần sang trọng\r\n- Âm thanh rõ ràng với công nghệ HD voice\r\n- Kết nối không dây Bluetooth tiện lợi và di động\r\n- Công nghệ A2DP hổ trợ nghe nhạc, GPS ...\r\n- Tự động tìm kiếm và ghép kết nối với các thiết bị nhanh chóng\r\n- Thông báo kết nối và tình trạng pin bằng giọng nói - Voice Announcements\r\n- Đèn LED hiển thị thông báo tình trạng kết nối và tình trạng pin tiện dụng\r\n- Công nghệ Multiuse hổ trợ kết nối cùng lúc 2 thiết bị\r\n- Móc tai êm ái tạo cảm giác thoải mái cho cả ngày sử dụng\r\n- Đàm thoại liên tục 6 giờ và thời gian chờ lên đến 8 ngày\r\n- Trọng lượng siêu nhẹ chỉ 10 gram\r\n- Sản phẩm thương hiệu Jabra (Đan Mạch)\r\n- Bảo hành 3 tháng đổi mới nếu có lỗi', 'Tainghe365 giới thiệu quý khách hàng sản phẩm Jabra Talk LikeNEW\r\n- Sản phẩm chính hãng bảo hành 3 tháng\r\n- Quy cách : LikeNEW noBox Mới 99%\r\n- Quý khách hàng quan tâm tới sản phẩm này xin mời liên hệ HOTLINE: 0986.540.333 để được tư vấn và ship hàng nhanh nhất.', '/images/images_pro/jabra-talk-tainghe365-icon.jpg', 1, 'JABRA TALK LIKENEW', 'JABRA TALK LIKENEW', 1, 1, 1, NULL, NULL),
(2, 'XIAOMI YOUTH LITE', 'xiaomi-youth-lite', 100000, 200000, 'Trạng thái: Hết hàng\r\nBảo hành: 12 tháng\r\nXiaomi Youth Lite:\r\nXiaomi Youth Lite phiên bản rút gọn của Xiaomi Youth, tích hợp Míc cho smartphone', '<div id=\"vina-description\" class=\"tab-pane product-description active\">\r\n					<p style=\"line-height: 15.0pt; background: white; margin: 0cm 0cm 7.5pt 0cm;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: red;\">Tainghe365 giới thiệu quý khách hàng sản phẩm Xiaomi Youth Lite</span></strong></span></p>\r\n<p style=\"line-height: 15.0pt; background: white; margin: 0cm 0cm 7.5pt 0cm;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: red;\">- Sản phẩm chính hãng bảo hành 12 tháng</span></strong></span></p>\r\n<p style=\"line-height: 15.0pt; background: white; margin: 0cm 0cm 7.5pt 0cm;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: red;\">- Quy cách : FullBox Mới 100%</span></strong></span></p>\r\n<p style=\"line-height: 15.0pt; background: white; margin: 0cm 0cm 7.5pt 0cm;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: red;\">- Quý khách hàng quan tâm tới sản phẩm này xin mời liên hệ HOTLINE</span><span class=\"apple-converted-space\"><span style=\"color: red;\">&nbsp;</span></span><a href=\"tel:0986540333\"><span style=\"color: #1b57b1;\">0986.540.333</span></a><span class=\"apple-converted-space\"><span style=\"color: red;\">&nbsp;</span></span><span style=\"color: red;\">để được tư vấn và ship hàng nhanh nhất.</span></strong></span></p>\r\n<p style=\"line-height: 15pt; margin: 0cm 0cm 7.5pt; text-align: center; background: white;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: red;\"><img src=\"../images/ImageProductDetail/tainghe/youth-lite/xiaomi-youth-lite-tainghe365-1.jpg\" alt=\"Xiaomi Youth Lite\" width=\"800\" height=\"450\"></span></strong></span></p>\r\n<p style=\"line-height: 15pt; margin: 0cm 0cm 7.5pt; text-align: center; background: white;\"><span style=\"color: #0000ff; font-size: 12pt;\"><em>Xiaomi Youth Lite là tai nghe có míc đàm thoại chính hãng giá rẻ của Xiaomi</em></span></p>\r\n<p><strong><span style=\"font-size: 12pt;\">Đánh giá tính năng nổi bật:</span></strong></p>\r\n<p><span style=\"font-size: 12pt;\">-&nbsp;&nbsp;Xiaomi được biết đến trong lĩnh vực tai nghe nhờ thành công của dòng sản phẩm Piston với 2 phiên bản 2.0 và 3.0. Những sản phẩm này có chất lượng bề ngoài và chất âm đều khá tốt so với mức giá rẻ của chúng. Vì vậy, ba sản phẩm Xiaomi vừa ra mắt hứa hẹn sẽ đem lại thêm nhiều lựa chọn tốt cho người tiêu dùng.</span><br><span style=\"font-size: 12pt;\">-&nbsp;Trong số ba tai nghe này, Youth Lite là tai nghe rẻ nhất của Xiaomi hiện nay</span><br><span style=\"font-size: 12pt;\">- Thiết kế: Tai<span class=\"text_exposed_show\"> nghe có chất lượng hoàn thiện khá tốt, không có các phần nhựa thừa và dây dẫn được làm dẹt chống rối. Thiết kế in-ear vẫn giúp<span class=\"highlightNode\">Xiaomi Youth Lite</span> có khả năng cách âm khá tốt, ít bị ảnh hưởng môi trường bên ngoài khi nghe nhạc. Những cặp tips đi kèm tai nghe này cũng dễ dàng vừa với tai người dùng một cách thoải mái, không như những cặp tips của những mẫu Soundmagic giá rẻ.<br>- Về chất âm, khá bất ngờ là chiếc tai nghe <span class=\"highlightNode\">Xiaomi Youth Lite</span> có chất âm rất tốt trong tầm giá. Tiếng bass vẫn có lực, khá gọn gàng. Phải nói độ chi tiết cùng dải âm cao của <span class=\"highlightNode\">Xiaomi Youth Lite</span> rất tốt so với các tai giá rẻ, tiếng treb sáng, sắc nét và tạo được cảm giác thoáng đãng trong trẻo.</span></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><img src=\"../images/ImageProductDetail/tainghe/youth-lite/xiaomi-youth-lite-tainghe365-2.jpg\" alt=\"Xiaomi Youth Lite\" width=\"800\" height=\"600\"></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #0000ff;\"><em>Housing trên&nbsp;Xiaomi Youth Lite nghiêng 1 góc đem lại khả năng thoải mái khi đeo</em></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><img src=\"../images/ImageProductDetail/tainghe/youth-lite/xiaomi-youth-lite-tainghe365-4.jpg\" alt=\"Xiaomi Youth Lite\" width=\"800\" height=\"600\"></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #0000ff;\"><em>Dây dẹt chống rối cũng là một điểm cộng trên chiếc tai nghe này</em></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><img src=\"../images/ImageProductDetail/tainghe/youth-lite/xiaomi-youth-lite-tainghe365-5.jpg\" alt=\"Xiaomi Youth Lite\" width=\"800\" height=\"600\"></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #0000ff;\"><em>Chỉ với mức giá 189k đi kèm chế độ bảo hành 12 tháng đây sẽ là một sự lựa chọn không tồi cho người mới bắt đầu hay cần 1 chiếc tai nghe giá rẻ chính hãng</em></span></p>\r\n<p><span style=\"font-size: 12pt;\"><em>&gt;&gt;&nbsp;Liên hệ&nbsp;ngay với&nbsp;</em><a href=\"../index.html\"><em>tainghe365.com</em></a><em>&nbsp;để được</em>&nbsp;<em>tư vấn về</em><em> <a href=\"xiaomi-youth-lite.html\" rel=\"alternate\">Xiaomi Youth Lite</a></em><em>&nbsp;</em><em>tốt nhất, đi kèm chế độ bảo hành chính hãng</em>&nbsp;<em>trong 12 tháng và nhận ngay các ưu đãi&nbsp;cho những khách hàng đầu tiên.</em></span></p>\r\n<p><span style=\"font-size: 12pt;\">&nbsp;</span></p>					\r\n				</div>\r\n					\r\n			<div id=\"vina-reviews\" class=\"tab-pane product-review\">\r\n							</div>			\r\n	', '/images/images_pro/jabra-talk-tainghe365-icon.jpg', 1, '', '', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_posts_name_unique` (`name`);

--
-- Chỉ mục cho bảng `image_advs`
--
ALTER TABLE `image_advs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_types`
--
ALTER TABLE `image_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `one_pages`
--
ALTER TABLE `one_pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_name_unique` (`name`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `image_advs`
--
ALTER TABLE `image_advs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `image_types`
--
ALTER TABLE `image_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `one_pages`
--
ALTER TABLE `one_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
