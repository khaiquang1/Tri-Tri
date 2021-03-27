-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 27, 2021 lúc 05:40 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_novaly1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `abouts`
--

INSERT INTO `abouts` (`id`, `language_id`, `title`, `desc`, `btn_name`, `btn_link`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'GIỚI THIỆU', '<p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\">Với khát vọng và niềm tin sâu sắc, Trí Tri tích cực tư duy và kiên trì hành động thực hiện sứ mệnh:</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\">- Giúp từng cá nhân, các tổ chức đạt hiệu quả tối ưu trong công việc công ty và cuộc sống của mình bằng cách “đánh thức Tiềm năng thành Khả năng, rèn luyện Khả năng thành Kỹ năng, tích hợp Kỹ năng tỏa sáng thành Tài năng”để Cá nhân Cảm được Hạnh phúc, Tổ chức Nhận được Thành công.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\">- Phát triển Trí Lực và Tâm Lực của cá nhân và Nâng cao Hiệu năng và Hiệu quả cho khách hàng – đối tác – nhà đầu tư thông qua những giải pháp độc đáo, tối ưu giá trị có Triết lý sâu sắc – Phương pháp thực tiễn, dễ hiểu, dễ áp dụng và dễ thành công, nhằm giải quyết các vấn đề về chất lượng nguồn nhân lực, chất lượng quản trị, chất lượng sống trong kinh doanh, công việc &amp; cuộc sống.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit; font-weight: bolder; border: 0px; vertical-align: baseline; background: transparent;\">GIÁ TRỊ CỐT LÕI</span></p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\">- Với Triết lý Tam Nghiệm (Trải – Chứng – Chiêm), phát triển Tam Lực (Thể - Trí - Tâm) Phương pháp Sinh Giáo Sinh Huấn cùng nhiều công cụ đặc sắc và hữu hiệu, Trí Tri giúp từng cá nhân, các đội nhóm và tổ chức gia tăng hiệu quả, tích hợp và pên thông để chủ động phát triển.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\">- Tận Tâm - Chính Trực - Chuyên Nghiệp.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\">- Đủ trẻ để có TÂM nhiệt huyết trong công việc, đủ lớn để có TẦM sâu sắc trong tư duy. Chiến lược, kế hoạch và hành động nhất quán phù hợp với đặc điểm riêng có của mỗi cá nhân và từng tổ chức.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif; text-align: justify;\">- Viễn kiến sâu, chiến lược sắc, giải pháp khát quát, kế hoạch cụ thể, hành động pên hoàn, pnh hoạt nhất quán, phương pháp thực học thực hành, sâu sát thực tiễn, kiên quyết, kiên trì và cam kết nhận lãnh và hoàn thành trách nhiệm.</p>', 'tri tri', 'tritri.org', '1616492773-2.jpg', '2021-03-23 02:46:13', '2021-03-23 02:47:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `category_name`, `category_id`, `title`, `desc`, `blog_image`, `author`, `slug`, `view`, `status`, `tag`, `created_at`, `updated_at`) VALUES
(8, 1, 'chien luoc', 1, 'BẢY CĂN BỆNH VỀ QUẢN TRỊ DOANH NGHIỆP Ở VIỆT NAM MÀ CÁC DOANH NHÂN DOANH CHỦ THƯỜNG MẮC PHẢI', '<p><span style=\"font-weight:bolder;font-size:20px;color:rgb(51,51,51);font-family:Helvetica, sans-serif;\">BỆNH THỨ NHẤT: CHIẾN LƯỢC</span><br></p><div>Bệnh này rất nhiều doanh nghiệp mắc phải, nhất là các doanh nghiệp vừa và nhỏ, thể hiện cụ thể là thiếu hoặc chưa tự đánh giá doanh nghiệp mình về 5 vấn đề lớn, gồm: thứ nhất là điểm mạnh, yếu (nội lực của doanh nghiệp) về quản trị, văn hóa doanh nghiệp, nguồn lực. Thứ hai là những cơ hội và thách thức về kinh tế, công nghệ, khách hàng và đối thủ cạnh tranh. </div>', '1616466642-54378989_857414947938938_6176216177702862848_n.png', 'Tri tri', 'bay-can-benh-ve-quan-tri-doanh-nghiep-o-viet-nam-ma-cac-doanh-nhan-doanh-chu-thuong-mac-phai-1', 3, 1, '/', '2021-03-22 19:30:43', '2021-03-26 20:26:03'),
(9, 1, 'chien luoc', 1, 'BẢY CĂN BỆNH VỀ QUẢN TRỊ DOANH NGHIỆP Ở VIỆT NAM MÀ CÁC DOANH NHÂN DOANH CHỦ THƯỜNG MẮC PHẢI', '<p><span style=\"font-weight:bolder;font-size:20px;color:rgb(51,51,51);font-family:Helvetica, sans-serif;\">BỆNH THỨ NHẤT: CHIẾN LƯỢC</span><br></p><div>Bệnh này rất nhiều doanh nghiệp mắc phải, nhất là các doanh nghiệp vừa và nhỏ, thể hiện cụ thể là thiếu hoặc chưa tự đánh giá doanh nghiệp mình về 5 vấn đề lớn, gồm: thứ nhất là điểm mạnh, yếu (nội lực của doanh nghiệp) về quản trị, văn hóa doanh nghiệp, nguồn lực. Thứ hai là những cơ hội và thách thức về kinh tế, công nghệ, khách hàng và đối thủ cạnh tranh. </div>', '1616466836-54378989_857414947938938_6176216177702862848_n.png', 'Tri tri', 'bay-can-benh-ve-quan-tri-doanh-nghiep-o-viet-nam-ma-cac-doanh-nhan-doanh-chu-thuong-mac-phai-2', 13, 1, '/', '2021-03-22 19:33:56', '2021-03-24 01:12:12'),
(10, 1, 'doanh nghiep', 2, 'Công nghê CRM', '<p>sdadasdas</p>', NULL, 'Tri tri', 'cong-nghe-crm', 11, 1, '/', '2021-03-22 20:23:57', '2021-03-23 02:15:51'),
(11, 1, 'doanh nghiep', 2, 'bbb', '<p>vcccccc</p>', '1616469869-54378989_857414947938938_6176216177702862848_n.png', 'Tri tri', 'bbb', 1, 1, 'z', '2021-03-22 20:24:29', '2021-03-23 01:53:47'),
(12, 1, 'doanh nghiep', 2, 'Công nghê CRM', '<p>12 a sd  a a a a </p>', '1616488071-54378989_857414947938938_6176216177702862848_n.png', 'Nguyễn Quang Khải', 'cong-nghe-crm-1', 2, 0, '/', '2021-03-23 01:27:53', '2021-03-23 02:15:54'),
(13, 1, 'doanh nghiep', 2, 'aâ a  â a', '<p>s  s  </p>', '1616733494-2.jpg', 'Tri tri', 'aa-a-a-a', 1, 1, '/', '2021-03-23 01:28:35', '2021-03-25 21:38:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_sections`
--

CREATE TABLE `blog_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_sections`
--

INSERT INTO `blog_sections` (`id`, `language_id`, `top_title`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, '2', 'Công nghê CRM', '2021-03-22 00:32:13', '2021-03-22 00:32:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `breadcrumbs`
--

CREATE TABLE `breadcrumbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `breadcrumb_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `language_id`, `category_name`, `order`, `status`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'chien luoc', 1, 1, 'chien-luoc', '2021-03-21 21:21:48', '2021-03-21 21:21:48'),
(2, 1, 'doanh nghiep', 2, 1, 'doanh-nghiep', '2021-03-21 21:22:04', '2021-03-21 21:22:04'),
(3, 1, 'chien luoc 2', 3, 1, 'chien-luoc-2', '2021-03-25 22:39:44', '2021-03-25 22:39:44'),
(4, 1, 'chien luoc 4', 5, 1, 'chien-luoc-4', '2021-03-25 22:39:55', '2021-03-25 22:39:55'),
(5, 1, 'chien luoc 6', 6, 1, 'chien-luoc-6', '2021-03-25 22:40:06', '2021-03-25 22:40:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_options`
--

CREATE TABLE `color_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_option` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_sections`
--

CREATE TABLE `contact_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_five_group_keywords`
--

CREATE TABLE `content_five_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `please_create_a_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_admin_panel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_frontend` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_footer_menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_dropdown` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_site_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `please_try_again` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `you_are_not_authorized` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_all_as_approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unread` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `content_five_group_keywords`
--

INSERT INTO `content_five_group_keywords` (`id`, `language_id`, `site_name`, `site_desc`, `site_keywords`, `please_create_a_category`, `languages`, `add_language`, `edit_language`, `language_name`, `language_code`, `direction`, `keywords`, `for_admin_panel`, `for_frontend`, `content_group`, `menu`, `hide`, `show`, `yes`, `no`, `display_footer_menu`, `display_dropdown`, `default_site_language`, `please_try_again`, `you_are_not_authorized`, `comment`, `comments`, `approval_status`, `mark_all_as_approval`, `read`, `unread`, `profile`, `change_password`) VALUES
(1, 1, 'Site Name', 'Site Description', 'Site Keywords', 'Please create a category.', 'Languages', 'Add Language', 'Edit Language', 'Language Name', 'Language Code', 'Direction', 'Keywords', 'For Admin Panel', 'For Frontend', 'Content Group', 'Menu', 'Hide', 'Show', 'Yes', 'No', 'Display Footer Menu?', 'Display Dropdown?', 'Default Site Language', 'Please try again!', 'You are not authorized to delete this operation.', 'Comment', 'Comments', 'Approval Status', 'Mark All As Approval', 'Read', 'Unread', 'Profile', 'Change Password');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_four_group_keywords`
--

CREATE TABLE `content_four_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `map_iframe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_iframe_desc_placeholder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_all_as_read` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_map_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_small_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_white_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_colored_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sections` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `content_four_group_keywords`
--

INSERT INTO `content_four_group_keywords` (`id`, `language_id`, `map_iframe`, `map_iframe_desc_placeholder`, `contact`, `add_contact`, `edit_contact`, `socials`, `add_social`, `edit_social`, `link`, `email`, `subject`, `message`, `read_status`, `mark_all_as_read`, `mark`, `messages`, `site_info`, `copyright`, `address`, `address_map_link`, `phone`, `site_images`, `favicon`, `admin_logo`, `admin_small_logo_image`, `site_white_logo_image`, `site_colored_logo_image`, `google_analytic`, `external_url`, `breadcrumb`, `sections`, `seo`) VALUES
(1, 1, 'Map Iframe (link in src)', 'Please find your address on Google Map. And click the Share Button on the Left Side. You will see the Map Placement Area. In the Copy Html field in this section Copy and paste the link in the src from the code inside.', 'Contact', 'Add Contact', 'Edit Contact', 'Socials', 'Add Social', 'Edit Social', 'Link', 'Email', 'Subject', 'Message', 'Read Status', 'Mark All As Read', 'Mark', 'Messages', 'Site Info', 'Copyright', 'Address', 'Address Map Link', 'Phone', 'Site Images', 'Favicon', 'Admin Logo', 'Admin Small Logo', 'Site White Logo', 'Site Colored Logo', 'Google Analytic', 'External Url', 'Breadcrumb', 'Sections', 'Seo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_one_group_keywords`
--

CREATE TABLE `content_one_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `sliders` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_slider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_slider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_new` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommended_size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_successfully` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_successfully` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_successfully` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_yet_created` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `close` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `you_wont_be_able_to_revert_this` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes_delete_it` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_your_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `content_one_group_keywords`
--

INSERT INTO `content_one_group_keywords` (`id`, `language_id`, `sliders`, `add_slider`, `edit_slider`, `add_new`, `title`, `desc`, `btn_name`, `btn_link`, `order`, `image`, `size`, `recommended_size`, `submit`, `action`, `created_successfully`, `updated_successfully`, `deleted_successfully`, `current_image`, `not_yet_created`, `delete`, `close`, `you_wont_be_able_to_revert_this`, `cancel`, `yes_delete_it`, `categories`, `add_category`, `edit_category`, `category_name`, `status`, `select_your_option`, `enable`, `disable`) VALUES
(1, 1, 'Sliders', 'Add Slider', 'Edit Slider', 'Add New', 'Title', 'Description', 'Button Name', 'Button Link', 'Order', 'Image', 'size', 'You do not have to use the recommended sizes. However, please use the recommended sizes for your site design to look its best.', 'Submit', 'Action', 'Created Successfully.', 'Updated Successfully.', 'Deleted Successfully.', 'Current Image', 'Not yet created.', 'Delete', 'Close', 'You wont be able to revert this!', 'Cancel', 'Yes, delete it!', 'Categories', 'Add Category', 'Edit Category', 'Category Name', 'Status', 'Select Your Option', 'Enable', 'Disable');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_six_group_keywords`
--

CREATE TABLE `content_six_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `current_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_faq` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_faq` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending_approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `which_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminding` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Color Option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `content_six_group_keywords`
--

INSERT INTO `content_six_group_keywords` (`id`, `language_id`, `current_password`, `new_password`, `confirm_password`, `add_faq`, `edit_faq`, `favicon_image`, `admin_logo_image`, `pending_approval`, `approval`, `which_language`, `reminding`, `color_option`) VALUES
(1, 1, 'Current Password', 'New Password', 'Confirm Password', 'Add Faq', 'Edit Faq', 'Favicon', 'Admin Logo Image', 'Pending Approval', 'Approval', 'Which language do you want to create the data?', 'Please note that all the entries you create will be based on your chosen language.', 'Color Option');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_three_group_keywords`
--

CREATE TABLE `content_three_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `percent_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_project` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_project` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponsors` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_sponsor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_sponsor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prices` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annually` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `please_take_with_features_semicolon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_testimonial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_testimonial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shadow_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `content_three_group_keywords`
--

INSERT INTO `content_three_group_keywords` (`id`, `language_id`, `percent_rate`, `projects`, `add_project`, `edit_project`, `sponsors`, `add_sponsor`, `edit_sponsor`, `prices`, `add_price`, `edit_price`, `currency`, `price`, `time`, `monthly`, `annually`, `please_take_with_features_semicolon`, `faqs`, `add_faqs`, `edit_faqs`, `question`, `answer`, `testimonials`, `add_testimonial`, `edit_testimonial`, `shadow_text`, `star`, `galleries`, `add_gallery`, `edit_gallery`, `pages`, `add_page`, `edit_page`) VALUES
(1, 1, 'Percent Rate', 'Projects', 'Add Project', 'Edit Project', 'Sponsors', 'Add Sponsor', 'Edit Sponsor', 'Prices', 'Add Price', 'Edit Price', 'Currency', 'Price', 'Time', 'Monthly', 'Annually', 'Please take with features semicolon(;).', 'Faqs', 'Add Faqs', 'Edit Faqs', 'Question', 'Answer', 'Testimonials', 'Add Testimonial', 'Edit Testimonial', 'Shadow Text', 'Star', 'Galleries', 'Add Gallery', 'Edit Gallery', 'Pages', 'Add Page', 'Edit Page');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_two_group_keywords`
--

CREATE TABLE `content_two_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title_and_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_blog` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_blog` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seperate_with_commas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_feature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_feature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counters` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_counter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_counter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_team` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_team` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_skill` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_skill` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `content_two_group_keywords`
--

INSERT INTO `content_two_group_keywords` (`id`, `language_id`, `section_title_and_desc`, `top_title`, `blogs`, `add_blog`, `edit_blog`, `short_desc`, `tag`, `seperate_with_commas`, `author`, `category`, `post_date`, `view`, `features`, `add_feature`, `edit_feature`, `about`, `counters`, `add_counter`, `edit_counter`, `icon`, `timer`, `services`, `add_service`, `edit_service`, `teams`, `add_team`, `edit_team`, `name`, `job`, `skills`, `add_skill`, `edit_skill`) VALUES
(1, 1, 'Section Title/Description', 'Top Title', 'Blogs', 'Add Blog', 'Edit Blog', 'Short Description', 'Tag', 'Seperate with commas', 'Author', 'Category', 'Post Date', 'View', 'Features', 'Add Feature', 'Edit Feature', 'About', 'Counters', 'Add Counter', 'Edit Counter', 'Icon', 'Timer', 'Services', 'Add Service', 'Edit Service', 'Teams', 'Add Team', 'Edit Team', 'Name', 'Job', 'Skills', 'Add Skill', 'Edit Skill');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timer` int(11) NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `counters`
--

INSERT INTO `counters` (`id`, `language_id`, `icon`, `timer`, `desc`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, '', 3, 'as  a a a', 1, '2021-03-26 00:02:37', '2021-03-26 00:02:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faq_sections`
--

CREATE TABLE `faq_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `feature_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `features`
--

INSERT INTO `features` (`id`, `language_id`, `feature_image`, `title`, `desc`, `btn_link`, `order`, `created_at`, `updated_at`) VALUES
(5, 1, '1616737885-54378989_857414947938938_6176216177702862848_n.png', 'BẢY CĂN BỆNH VỀ QUẢN TRỊ DOANH NGHIỆP Ở VIỆT NAM MÀ CÁC DOANH NHÂN DOANH CHỦ THƯỜNG MẮC PHẢI', '<p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Companies shifted quickly and unexpectedly to remote work in early 2020, but leaders planning for a post-pandemic future have an opportunity to take a more intentional, strategic approach to remote work.&nbsp; Most likely this will involve revisiting a number of 1) company policies and 2) management practices.&nbsp; The authors examine key emerging trends in these areas and suggest a number of questions leaders should ask themselves as they plan for their organization’s optimal mix of remote work.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Virtually all projections anticipate the post-pandemic workforce will be relatively more remote — that is, nearly all firms will experience an increase in remote work relative to their pre-pandemic baseline levels.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">As pandemic restrictions ease, company leaders need to make decisions about how to achieve an optimal remote work strategy. Unlike the reactive shift that began abruptly in early 2020, the coming shift can be proactive and intentional. And yet, in a recent PWC survey of 133 US executives, nearly one-third described their approach to post-pandemic remote work as “going with the flow.”</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Rather than simply shifting operations “back to normal,” we urge leaders to think about how they can leverage recent remote-work experiences to intentionally plan for a remote/hybrid workforce in the future. Leaders must think strategically about their remote work policies and practices going forward. And, whether you lead a company or a small team, now is the time to start planning.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Our research, executive education, and corporate advisory experience suggests that the key decisions leaders will face fall into two main categories: company policies and management practices. Below, we take a look at key emerging trends in each of these categories.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Company policies</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">A proactive implementation of remote work may require updating company policies to fit the needs of a dispersed workforce. As companies reconsider existing policies, they’ll need to address the following questions.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">What’s the right mix of remote work for your organization?</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Possible scenarios include a primarily remote, hybrid (with employees in the office part-time, typically two or three days per week), or a primarily in-office setting. To determine the optimal policy for your organization, leaders should factor in the following strategic considerations:</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Nature of the work. Independent tasks — that do not rely heavily on collaboration or coordination with others — are ideal for remote work. Highly collaborative work can also be successful remotely, but requires more effort to manage. Obviously, some jobs simply cannot be performed remotely, but these may be fewer than you think. Companies continue to stretch the boundaries of remote work, with technologies like robotics and augmented reality being used to enable remote machine maintenance in manufacturing, and even some medical screenings and diagnosis functions.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Experience level of the workforce. New employees or those recently promoted typically benefit from an initial period of time in the office, both to build relationships and to gain the implicit knowledge that can be more easily absorbed in the office environment. If the workforce is primarily remote, synchronous virtual orientation sessions or on-site retreats may be beneficial.</p><p style=\"box-sizing: inherit; border: 0px; font-size: 15px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); font-family: Helvetica, sans-serif;\">Employee preferences. Individual choices should be taken into consideration given differences in personalities and preferences for remote work. Although some employees may indicate preferences now, those conversations should be revisited as work patterns and routines normalize.</p><p style=\"font-size:15px;color:rgb(102,102,102);font-family:Helvetica, sans-serif;\">As pandemic restrictions ease, company leaders need to make decisions about how to achieve an optimal remote work strategy. Unlike the reactive shift that began abruptly in early 2020, the coming shift can be proactive and intentional. And yet, in a recent PWC survey of 133 US executives, nearly one-third described their approach to post-pandemic remote work as “going with the flow.”</p>', '#', 0, '2021-03-25 22:27:32', '2021-03-25 23:02:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `frontend_one_group_keywords`
--

CREATE TABLE `frontend_one_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `home` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_list` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_more` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_us_now` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `more_question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_news` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_message_has_been_delivered` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_comment_is_pending_approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_now` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recent_posts` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_monthly` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_annual` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `frontend_one_group_keywords`
--

INSERT INTO `frontend_one_group_keywords` (`id`, `language_id`, `home`, `about`, `services`, `teams`, `projects`, `news`, `pricing`, `faqs`, `skills`, `contact`, `gallery`, `galleries`, `office_address`, `social_list`, `read_more`, `call_us_now`, `more_question`, `testimonials`, `all_news`, `your_message_has_been_delivered`, `your_comment_is_pending_approval`, `help`, `contact_info`, `submit_now`, `updating`, `all`, `recent_posts`, `by`, `pages`, `per_monthly`, `per_annual`, `comments`) VALUES
(1, 1, 'Home', 'About', 'Services', 'Teams', 'Projects', 'News', 'Pricing', 'Faqs', 'Skills', 'Contact', 'Gallery', 'Galleries', 'Office Address', 'Social List', 'Read More', 'Call Us Now', 'More Question?', 'Testimonials', 'ALL NEWS', 'Your message has been delivered.', 'Your comment is pending approval.', 'Help', 'Contact Info', 'Submit Now', 'Updating...', 'All', 'Recent Posts', 'by', 'Pages', 'Per Monthly', 'Per Annual', 'Comments');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `frontend_two_group_keywords`
--

CREATE TABLE `frontend_two_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `leave_a_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_results` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_here` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nothing_found` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `links` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_us` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_more` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `frontend_two_group_keywords`
--

INSERT INTO `frontend_two_group_keywords` (`id`, `language_id`, `leave_a_comment`, `your_name`, `your_email`, `your_comment`, `post_comment`, `search`, `search_results`, `search_here`, `nothing_found`, `categories`, `links`, `contact_us`, `view_more`, `name`, `email`, `subject`, `message`, `tags`, `admin`) VALUES
(1, 1, 'Leave A Comment', 'Your Name *', 'Your Email *', 'Your Comment *', 'Post Comment', 'Search', 'Search Results', 'Search Here', 'Nothing Found', 'Categories', 'Links', 'Contact Us', 'View More', 'Name *', 'Email *', 'Subject *', 'Message *', 'Tags', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_analytic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `display_dropdown` int(11) NOT NULL,
  `default_site_language` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `direction`, `status`, `display_dropdown`, `default_site_language`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, 1, 1, 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_keywords`
--

CREATE TABLE `menu_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `dashboard` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counters` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponsors` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prices` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_versions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sections` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optimizer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifications` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `which_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminding` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Color Option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_keywords`
--

INSERT INTO `menu_keywords` (`id`, `language_id`, `dashboard`, `banner`, `sliders`, `categories`, `blogs`, `features`, `about`, `counters`, `services`, `teams`, `skills`, `projects`, `sponsors`, `prices`, `faqs`, `testimonials`, `contact`, `contact_info`, `socials`, `messages`, `pages`, `settings`, `site_info`, `site_images`, `homepage_versions`, `google_analytic`, `external_url`, `breadcrumb`, `sections`, `seo`, `languages`, `optimizer`, `logout`, `notifications`, `profile`, `change_password`, `data_language`, `comments`, `galleries`, `which_language`, `reminding`, `created_at`, `updated_at`, `color_option`) VALUES
(1, 1, 'Dashboard', 'Banner', 'Sliders', 'Categories', 'Blogs', 'Features', 'About', 'Counters', 'Services', 'Teams', 'Skills', 'Projects', 'Sponsors', 'Prices', 'Faqs', 'Testimonials', 'Contact', 'Contact Info', 'Socials', 'Messages', 'Pages', 'Settings', 'Site Info', 'Site Images', 'Homepage Versions', 'Google Analytic', 'External Url', 'Breadcrumb', 'Sections', 'Seo', 'Languages', 'Optimizer', 'Logout', 'Notifications', 'Profile', 'Change Password', 'Data Language', 'Comments', 'Galleries', 'Which language do you want to create the data?', 'Please note that all the entries you create will be based on your chosen language.', '2021-02-05 08:30:10', '2021-02-05 08:30:10', 'Color Option');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_09_24_005133_create_sessions_table', 1),
(7, '2020_09_26_225805_create_languages_table', 1),
(8, '2020_09_30_133427_create_sliders_table', 1),
(9, '2020_09_30_231340_create_abouts_table', 1),
(10, '2020_10_06_090858_create_services_table', 1),
(11, '2020_10_07_095629_create_service_sections_table', 1),
(12, '2020_10_08_123654_create_features_table', 1),
(13, '2020_10_08_204636_create_counters_table', 1),
(14, '2020_10_09_193118_create_prices_table', 1),
(15, '2020_10_10_092350_create_teams_table', 1),
(16, '2020_10_10_092409_create_team_sections_table', 1),
(17, '2020_10_12_133209_create_faqs_table', 1),
(18, '2020_10_12_133231_create_faq_sections_table', 1),
(19, '2020_10_16_144438_create_site_infos_table', 1),
(20, '2020_10_21_053827_create_google_analytics_table', 1),
(21, '2020_10_21_055547_create_seos_table', 1),
(22, '2020_10_21_073549_create_categories_table', 1),
(23, '2020_10_22_003541_create_blogs_table', 1),
(24, '2020_10_22_004159_create_blog_sections_table', 1),
(25, '2020_10_24_064553_create_contacts_table', 1),
(26, '2020_10_24_064616_create_contact_sections_table', 1),
(27, '2020_10_25_004806_create_site_images_table', 1),
(28, '2020_11_01_133405_create_menu_keywords_table', 1),
(29, '2020_11_01_173003_create_content_one_group_keywords_table', 1),
(30, '2020_11_02_085101_create_content_two_group_keywords_table', 1),
(31, '2020_11_02_085802_create_content_three_group_keywords_table', 1),
(32, '2020_11_02_095041_create_content_four_group_keywords_table', 1),
(33, '2020_11_02_095441_create_content_five_group_keywords_table', 1),
(34, '2020_11_05_081548_create_socials_table', 1),
(35, '2020_11_05_125854_create_breadcrumbs_table', 1),
(36, '2020_11_05_132410_create_sections_table', 1),
(37, '2020_11_05_142833_create_colors_table', 1),
(38, '2020_11_06_073530_create_pages_table', 1),
(39, '2020_11_06_110956_create_content_six_group_keywords_table', 1),
(40, '2020_11_11_112402_create_messages_table', 1),
(41, '2020_11_18_125114_create_testimonials_table', 1),
(42, '2020_11_18_125134_create_testimonial_sections_table', 1),
(43, '2020_11_19_105332_create_comments_table', 1),
(44, '2020_11_25_195255_create_frontend_one_group_keywords_table', 1),
(45, '2020_11_25_195818_create_frontend_two_group_keywords_table', 1),
(46, '2020_12_09_174622_create_skills_table', 1),
(47, '2020_12_09_174640_create_skill_sections_table', 1),
(48, '2020_12_09_205619_create_projects_table', 1),
(49, '2020_12_09_205637_create_project_sections_table', 1),
(50, '2020_12_09_223455_create_sponsors_table', 1),
(51, '2020_12_15_190411_create_galleries_table', 1),
(52, '2021_02_05_064120_create_color_options_table', 1),
(53, '2021_02_05_084011_add_color_option_to_menu_keywords_table', 1),
(54, '2021_02_05_084302_add_color_option_to_content_six_group_keywords_table', 1),
(55, '2021_03_26_071903_create_videos', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_footer_menu` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `page_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `page_title`, `desc`, `breadcrumb_image`, `display_footer_menu`, `status`, `order`, `page_slug`, `created_at`, `updated_at`) VALUES
(4, 1, 'Tuyen dung', '<p>a </p><p> </p><p>as</p><p>a</p><p> </p><p>a</p><p> a</p><p><br></p><p>a </p><p>a</p>', '1616737094-2.jpg', 0, 1, 1, 'tuyen-dung', '2021-03-25 22:38:14', '2021-03-25 22:38:14'),
(5, 1, 'Tuyen dung 222', '<p>a  a aa a</p>', NULL, 0, 1, 1, 'tuyen-dung-222', '2021-03-25 23:19:50', '2021-03-25 23:19:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 1,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `project_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `language_id`, `project_image`, `title`, `desc`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Cam nhan cua chu tich', 'Đội ngũ Dale Carnegie Việt Nam trân trọng cảm ơn anh Chiến', 0, '2021-03-22 19:43:57', '2021-03-22 19:43:57'),
(2, 1, NULL, 'cam nhan cua chu', '', 0, '2021-03-22 19:53:03', '2021-03-22 19:53:03'),
(3, 1, NULL, 'can benh nguy hiem â', 'sdasd', 0, '2021-03-22 20:01:46', '2021-03-22 20:01:46'),
(4, 1, NULL, 'quá nguy hiểm', 'đá', 0, '2021-03-22 20:01:59', '2021-03-22 20:01:59'),
(5, 1, NULL, 'Công nghê CRM', 'aaaa', 0, '2021-03-22 20:05:58', '2021-03-22 20:05:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_sections`
--

CREATE TABLE `project_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sections`
--

INSERT INTO `sections` (`id`, `title`, `section`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Page Menu', 'page_menu', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(2, 'Feature Section', 'feature_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(3, 'About Section', 'about_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(4, 'Service Section', 'service_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(5, 'Team Section', 'team_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(6, 'Counter Section', 'counter_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(7, 'Skill Section', 'skill_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(8, 'Project Section', 'project_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(9, 'Sponsor Section', 'sponsor_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(10, 'Price Section', 'price_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(11, 'Client Section', 'client_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(12, 'Gallery Section', 'gallery_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(13, 'Faq Section', 'faq_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(14, 'Blog Section', 'blog_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(15, 'Contact Section', 'contact_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(16, 'Footer Section', 'footer_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(17, 'Preloader', 'preloader', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_sections`
--

CREATE TABLE `service_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1DCHtNXHGGaqvZnEcljp2otmVuEwpSzo13LRwVUT', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHBsRml0dFZUNnI4blVDQXdGV0dXeGVUUTAzZmJrU2lNcXMyWVZxWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTc6Imh0dHA6Ly9sb2NhbGhvc3Qvc2VydmljZXNvdXJjZTEvcHVibGljL2Fzc2V0cy9mcm9udGVuZC9uTHlaNmJZaFNOdS5qcy50JUUxJUJBJUEzaSUyMHh1JUUxJUJCJTkxbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1616816492),
('E1H7luvopztJMmPZhEL27RZwXjhNNWPVGV7LXt6o', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG40Z0dDazZ5cXBJeDlQZTBnbklFc3BKZ2pXTmJlN3dEV1hDdUJiNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTc6Imh0dHA6Ly9sb2NhbGhvc3Qvc2VydmljZXNvdXJjZTEvcHVibGljL2Fzc2V0cy9mcm9udGVuZC9VZFM3QW1kM2FYSS5qcy50JUUxJUJBJUEzaSUyMHh1JUUxJUJCJTkxbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1616819990);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_images`
--

CREATE TABLE `site_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_small_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_white_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_colored_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_map_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_rate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `skill_sections`
--

CREATE TABLE `skill_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sponsor_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `team_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_sections`
--

CREATE TABLE `team_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `testimonial_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonial_sections`
--

CREATE TABLE `testimonial_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `shadow_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'info@melink.vn', NULL, '$2y$10$9F3FHXJqhgGUuEgRvedZae87Mua7cleqnV5GoE1vIInOtYRX8d/Km', NULL, NULL, 'RoKz3NqDRYLEiXbnOX8W83BZfuO4fOlgOQaT6f5cVN5WoD4SWsHTYvyQnX1l', NULL, '1615847905-Icon-App-40x40@1x.png', '2021-02-05 08:30:10', '2021-03-15 19:03:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `image`, `title`, `link`, `order`, `category_id`, `created_at`, `updated_at`) VALUES
(9, '54378989_857414947938938_6176216177702862848_n35.png', 'Video thu 1', 'https://www.youtube.com/watch?v=WrXl_BRgzuE', 2, 4, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `breadcrumbs`
--
ALTER TABLE `breadcrumbs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`),
  ADD KEY `categories_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color_options`
--
ALTER TABLE `color_options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `contact_sections`
--
ALTER TABLE `contact_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `content_five_group_keywords`
--
ALTER TABLE `content_five_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_five_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `content_four_group_keywords`
--
ALTER TABLE `content_four_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_four_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `content_one_group_keywords`
--
ALTER TABLE `content_one_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_one_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `content_six_group_keywords`
--
ALTER TABLE `content_six_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_six_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `content_three_group_keywords`
--
ALTER TABLE `content_three_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_three_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `content_two_group_keywords`
--
ALTER TABLE `content_two_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_two_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counters_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `faq_sections`
--
ALTER TABLE `faq_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `frontend_one_group_keywords`
--
ALTER TABLE `frontend_one_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_one_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `frontend_two_group_keywords`
--
ALTER TABLE `frontend_two_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_two_group_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_keywords`
--
ALTER TABLE `menu_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_keywords_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `project_sections`
--
ALTER TABLE `project_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seos_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `service_sections`
--
ALTER TABLE `service_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `site_images`
--
ALTER TABLE `site_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_infos_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `skill_sections`
--
ALTER TABLE `skill_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `team_sections`
--
ALTER TABLE `team_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_sections_language_id_foreign` (`language_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `blog_sections`
--
ALTER TABLE `blog_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `breadcrumbs`
--
ALTER TABLE `breadcrumbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `color_options`
--
ALTER TABLE `color_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact_sections`
--
ALTER TABLE `contact_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `content_five_group_keywords`
--
ALTER TABLE `content_five_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content_four_group_keywords`
--
ALTER TABLE `content_four_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content_one_group_keywords`
--
ALTER TABLE `content_one_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content_six_group_keywords`
--
ALTER TABLE `content_six_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content_three_group_keywords`
--
ALTER TABLE `content_three_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content_two_group_keywords`
--
ALTER TABLE `content_two_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faq_sections`
--
ALTER TABLE `faq_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `frontend_one_group_keywords`
--
ALTER TABLE `frontend_one_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `frontend_two_group_keywords`
--
ALTER TABLE `frontend_two_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_keywords`
--
ALTER TABLE `menu_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `project_sections`
--
ALTER TABLE `project_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_sections`
--
ALTER TABLE `service_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `site_images`
--
ALTER TABLE `site_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `skill_sections`
--
ALTER TABLE `skill_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `team_sections`
--
ALTER TABLE `team_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD CONSTRAINT `blog_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `contact_sections`
--
ALTER TABLE `contact_sections`
  ADD CONSTRAINT `contact_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `content_five_group_keywords`
--
ALTER TABLE `content_five_group_keywords`
  ADD CONSTRAINT `content_five_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `content_four_group_keywords`
--
ALTER TABLE `content_four_group_keywords`
  ADD CONSTRAINT `content_four_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `content_one_group_keywords`
--
ALTER TABLE `content_one_group_keywords`
  ADD CONSTRAINT `content_one_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `content_six_group_keywords`
--
ALTER TABLE `content_six_group_keywords`
  ADD CONSTRAINT `content_six_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `content_three_group_keywords`
--
ALTER TABLE `content_three_group_keywords`
  ADD CONSTRAINT `content_three_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `content_two_group_keywords`
--
ALTER TABLE `content_two_group_keywords`
  ADD CONSTRAINT `content_two_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `counters`
--
ALTER TABLE `counters`
  ADD CONSTRAINT `counters_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `faq_sections`
--
ALTER TABLE `faq_sections`
  ADD CONSTRAINT `faq_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `frontend_one_group_keywords`
--
ALTER TABLE `frontend_one_group_keywords`
  ADD CONSTRAINT `frontend_one_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `frontend_two_group_keywords`
--
ALTER TABLE `frontend_two_group_keywords`
  ADD CONSTRAINT `frontend_two_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_keywords`
--
ALTER TABLE `menu_keywords`
  ADD CONSTRAINT `menu_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `project_sections`
--
ALTER TABLE `project_sections`
  ADD CONSTRAINT `project_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `seos`
--
ALTER TABLE `seos`
  ADD CONSTRAINT `seos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_sections`
--
ALTER TABLE `service_sections`
  ADD CONSTRAINT `service_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `site_infos`
--
ALTER TABLE `site_infos`
  ADD CONSTRAINT `site_infos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `skill_sections`
--
ALTER TABLE `skill_sections`
  ADD CONSTRAINT `skill_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `team_sections`
--
ALTER TABLE `team_sections`
  ADD CONSTRAINT `team_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  ADD CONSTRAINT `testimonial_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
