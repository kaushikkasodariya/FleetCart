-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 07:34 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aartas`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ifLXEHARxpuPmmfmsol8xHDNqeYiHD6S', 1, '2020-06-07 12:20:39', '2020-06-07 06:50:38', '2020-06-07 06:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'test', NULL, 1, 1, '2020-06-07 12:58:42', '2020-06-07 12:58:42'),
(2, 1, 'kaushik', NULL, 1, 1, '2020-06-07 12:58:58', '2020-06-07 12:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Test'),
(2, 2, 'en', 'Kaushik');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int(10) UNSIGNED DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `cross_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '1.0000', '2020-06-07 06:50:44', '2020-06-07 06:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(4, 10, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2020-06-08 14:25:10', '2020-06-08 14:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(6, 1, 'yAaq3dHTWLOlac12ioxGgVrZ3xtrIhKnL5r3roIl.webp', 'public_storage', 'media/7pILoFKq1qLnSTGMuZPvSEFylyJ94lkCZwl2E9m1.webp', 'webp', 'image/webp', '7720', '2020-06-07 13:02:45', '2020-06-07 13:02:45'),
(7, 1, '2.webp', 'public_storage', 'media/whgQ9quNXAC3pDLZEhQvNJdMLibwK8uPUh0oU6Fc.webp', 'webp', 'image/webp', '16076', '2020-06-07 13:03:24', '2020-06-07 13:03:24'),
(8, 1, '1.webp', 'public_storage', 'media/1k4FFgTWjW2mSX2F0L7jM2EJS7PCXSudDsktINVm.webp', 'webp', 'image/webp', '10110', '2020-06-07 13:03:24', '2020-06-07 13:03:24'),
(9, 1, 'VRkauQNSpdKMBmCJA6ZKgXAhfJ58YHKiTsYeVzt6.webp', 'public_storage', 'media/eOKFTbqoWe94lLqnlIVv2T1ImmXGzDHDLZVwx0V8.webp', 'webp', 'image/webp', '53958', '2020-06-07 13:07:59', '2020-06-07 13:07:59'),
(10, 1, 'GdxlRSTcxPNGi4gqv86yVx4N2FcpnBSrIa8i7xVe.webp', 'public_storage', 'media/pwY28An8X7pILHgb8xtteSexbARrHRl9uzFFf1rn.webp', 'webp', 'image/webp', '4968', '2020-06-07 13:09:30', '2020-06-07 13:09:30'),
(11, 1, 'sl2.webp', 'public_storage', 'media/zUSWFaTcUKWwFNDuD6STKH8eFdj02sCaMkqKvEnr.webp', 'webp', 'image/webp', '6674', '2020-06-07 13:10:49', '2020-06-07 13:10:49'),
(12, 1, 'sl.webp', 'public_storage', 'media/37a358GwOuggNfWEjrRrCM722U2Lwb9wUbQDPrk5.webp', 'webp', 'image/webp', '13542', '2020-06-07 13:10:49', '2020-06-07 13:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `created_at`, `updated_at`) VALUES
(1, '2020-06-08 14:42:23', '2020-06-08 14:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `flash_sale_id`, `product_id`, `end_date`, `price`, `qty`, `position`) VALUES
(1, 1, 1, '2020-06-19', '20.0000', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_product_orders`
--

CREATE TABLE `flash_sale_product_orders` (
  `flash_sale_product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_translations`
--

CREATE TABLE `flash_sale_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_translations`
--

INSERT INTO `flash_sale_translations` (`id`, `flash_sale_id`, `locale`, `campaign_name`) VALUES
(1, 1, 'en', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-07 12:44:41', '2020-06-07 12:44:41'),
(3, 1, '2020-06-07 13:18:41', '2020-06-07 13:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT 0,
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `icon`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2020-06-07 12:44:42', '2020-06-07 12:44:42'),
(2, 1, 1, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2020-06-07 12:45:22', '2020-06-07 12:47:09'),
(3, 1, 1, NULL, NULL, 'url', '/brands', NULL, '_self', NULL, 0, 0, 1, '2020-06-07 12:48:01', '2020-06-07 12:48:01'),
(4, 1, 1, NULL, 1, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:13:59', '2020-06-07 13:13:59'),
(5, 1, 1, NULL, 4, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:16:36', '2020-06-07 13:16:36'),
(6, 1, 1, NULL, 2, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:16:52', '2020-06-07 13:16:52'),
(8, 3, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2020-06-07 13:18:41', '2020-06-07 13:18:41'),
(9, 3, 8, NULL, 1, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:19:00', '2020-06-07 13:19:00'),
(10, 3, 8, NULL, 3, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:19:26', '2020-06-07 13:19:26'),
(11, 3, 8, NULL, 2, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:19:39', '2020-06-07 13:19:39'),
(12, 3, 8, NULL, 5, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:19:51', '2020-06-07 13:19:51'),
(13, 3, 8, NULL, 4, 'page', NULL, NULL, '_self', NULL, 0, 0, 1, '2020-06-07 13:20:06', '2020-06-07 13:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(2, 2, 'en', 'Shop'),
(3, 3, 'en', 'Brands'),
(4, 4, 'en', 'About Us'),
(5, 5, 'en', 'Terms Of Use'),
(6, 6, 'en', 'FAQ'),
(8, 8, 'en', 'root'),
(9, 9, 'en', 'About Us'),
(10, 10, 'en', 'Return Policy'),
(11, 11, 'en', 'FAQ'),
(12, 12, 'en', 'Privacy & Policy'),
(13, 13, 'en', 'Terms Of Use');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Primary Menu'),
(3, 3, 'en', 'Footer Menu 1');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Product\\Entities\\Product', 1, '2020-06-07 13:00:18', '2020-06-07 13:00:18'),
(2, 'Modules\\Page\\Entities\\Page', 1, '2020-06-07 13:13:41', '2020-06-07 13:13:41'),
(3, 'Modules\\Page\\Entities\\Page', 2, '2020-06-07 13:14:41', '2020-06-07 13:14:41'),
(4, 'Modules\\Page\\Entities\\Page', 3, '2020-06-07 13:15:06', '2020-06-07 13:15:06'),
(5, 'Modules\\Page\\Entities\\Page', 4, '2020-06-07 13:15:31', '2020-06-07 13:15:31'),
(6, 'Modules\\Page\\Entities\\Page', 5, '2020-06-07 13:16:14', '2020-06-07 13:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_data_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_description`) VALUES
(1, 1, 'en', NULL, NULL),
(2, 2, 'en', NULL, NULL),
(3, 3, 'en', NULL, NULL),
(4, 4, 'en', NULL, NULL),
(5, 5, 'en', NULL, NULL),
(6, 6, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153348_create_option_translations_table', 1),
(13, '2017_08_02_153406_create_option_values_table', 1),
(14, '2017_08_02_153736_create_option_value_translations_table', 1),
(15, '2017_08_03_156576_create_product_options_table', 1),
(16, '2017_08_17_170128_create_related_products_table', 1),
(17, '2017_08_17_175236_create_up_sell_products_table', 1),
(18, '2017_08_17_175828_create_cross_sell_products_table', 1),
(19, '2017_11_09_141332910964_create_categories_table', 1),
(20, '2017_11_09_141332931539_create_category_translations_table', 1),
(21, '2017_11_26_083614526622_create_meta_data_table', 1),
(22, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(23, '2018_01_24_125642_create_product_categories_table', 1),
(24, '2018_02_04_150917488267_create_coupons_table', 1),
(25, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(26, '2018_03_11_181317_create_coupon_products_table', 1),
(27, '2018_03_15_091937_create_coupon_categories_table', 1),
(28, '2018_04_18_154028776225_create_reviews_table', 1),
(29, '2018_05_17_115822452977_create_currency_rates_table', 1),
(30, '2018_07_03_124153537506_create_sliders_table', 1),
(31, '2018_07_03_124153537695_create_slider_translations_table', 1),
(32, '2018_07_03_133107770172_create_slider_slides_table', 1),
(33, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(34, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(35, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(36, '2018_07_28_190524758646_create_attributes_table', 1),
(37, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(38, '2018_07_28_190524759461_create_product_attributes_table', 1),
(39, '2018_08_01_001919718631_create_tax_classes_table', 1),
(40, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(41, '2018_08_01_001919723551_create_tax_rates_table', 1),
(42, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(43, '2018_08_03_195922206748_create_attribute_values_table', 1),
(44, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(45, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(46, '2018_08_07_135631306565_create_orders_table', 1),
(47, '2018_08_07_135631309451_create_order_products_table', 1),
(48, '2018_08_07_135631309512_create_order_product_options_table', 1),
(49, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(50, '2018_09_11_213926106353_create_transactions_table', 1),
(51, '2018_09_19_081602135631_create_order_taxes_table', 1),
(52, '2018_09_19_103745_create_setting_translations_table', 1),
(53, '2018_10_01_224852175056_create_wish_lists_table', 1),
(54, '2018_10_04_185608_create_search_terms_table', 1),
(55, '2018_11_03_160015_create_menus_table', 1),
(56, '2018_11_03_160138_create_menu_translations_table', 1),
(57, '2018_11_03_160753_create_menu_items_table', 1),
(58, '2018_11_03_160804_create_menu_item_translation_table', 1),
(59, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(60, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(61, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(62, '2019_02_14_103408_create_attribute_categories_table', 1),
(63, '2019_08_09_164759_add_slug_column_to_attributes_table', 1),
(64, '2019_11_01_201511_add_special_price_type_column_to_products_table', 1),
(65, '2019_11_23_193101_add_value_column_to_order_product_options_table', 1),
(66, '2020_01_04_211424_add_icon_column_to_menu_items_table', 1),
(67, '2020_01_05_160502_add_direction_column_to_slider_slide_translations_table', 1),
(68, '2020_01_05_234014_add_speed_column_to_sliders_table', 1),
(69, '2020_01_05_235014_add_fade_column_to_sliders_table', 1),
(70, '2020_01_15_000346259038_create_flash_sales_table', 1),
(71, '2020_01_15_000346259349_create_flash_sale_translations_table', 1),
(72, '2020_01_23_011234_create_flash_sale_products_table', 1),
(73, '2020_01_30_015722_create_flash_sale_product_orders_table', 1),
(74, '2020_02_22_215943_delete_meta_keywords_column_from_meta_data_translations_table', 1),
(75, '2020_03_05_214602901973_create_brands_table', 1),
(76, '2020_03_05_214602902369_create_brand_translations_table', 1),
(77, '2020_03_06_234605_add_brand_id_column_to_products_table', 1),
(78, '2020_04_06_211526_add_note_column_to_orders_table', 1),
(79, '2020_04_28_034118164376_create_tags_table', 1),
(80, '2020_04_28_034118164618_create_tag_translations_table', 1),
(81, '2020_04_28_225657_create_product_tags_table', 1),
(82, '2020_05_10_041616_create_updater_scripts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 1, '2020-06-07 13:13:41', '2020-06-07 13:13:41'),
(2, 'faq', 1, '2020-06-07 13:14:41', '2020-06-07 13:14:41'),
(3, 'return-policy', 1, '2020-06-07 13:15:06', '2020-06-07 13:15:06'),
(4, 'terms-conditions', 1, '2020-06-07 13:15:31', '2020-06-07 13:15:31'),
(5, 'privacy-policy', 1, '2020-06-07 13:16:14', '2020-06-07 13:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'en', 'About Us', '<h1 style=\"text-align: center;\">About Us</h1>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/media/HmOKyObsMLWvxahqNqsnvjox2PYfZJMPNxuHMs29.jpeg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>In luctus nunc id lectus pellentesque lacinia.</li>\r\n<li>Pellentesque laoreet mi molestie tortor aliquam, sed hendrerit nisi consectetur.</li>\r\n<li>Nam sed sapien sed lacus placerat euismod in consectetur ex.</li>\r\n<li>Sed et odio ultrices, semper sem sed, scelerisque libero.</li>\r\n<li>Proin ut ex varius libero viverra pellentesque.</li>\r\n</ul>'),
(2, 2, 'en', 'FAQ', '<h1 style=\"text-align: center;\">Help &amp; FAQ</h1>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>What does LOREM mean?</h4>\r\n<p>&lsquo;Lorem ipsum dolor sit amet, consectetur adipisici elit&hellip;&rsquo; (complete text) is dummy text that is not meant to mean anything. It is used as a placeholder in magazine layouts, for example, in order to give an impression of the finished document. The text is intentionally unintelligible so that the viewer is not distracted by the content. The language is not real Latin and even the first word &lsquo;Lorem&rsquo; does not exist. It is said that the lorem ipsum text has been common among typesetters since the 16th century.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Why do we use Lorem Ipsum?</h4>\r\n<p>Many times, readers will get distracted by readable text when looking at the layout of a page. Instead of using filler text that says &ldquo;Insert content here,&rdquo; Lorem Ipsum uses a normal distribution of letters, making it resemble standard English. This makes it easier for designers to focus on visual elements, as opposed to what the text on a page actually says. Lorem Ipsum is absolutely necessary in most design cases, too. Web design projects like landing pages, website redesigns and so on only look as intended when they\'re fully-fleshed out with content.</p>'),
(3, 3, 'en', 'Return Policy', '<h1 style=\"text-align: center;\">Return Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Studio Lorem Ipsum will accept returns of UNWORN MERCHANDISE within 14 days of receipt of your order. If 14 days have gone by since receipt of your order, unfortunately we can&rsquo;t offer you a refund or exchange.</p>\r\n<p>&nbsp;</p>\r\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\r\n<p>&nbsp;</p>\r\n<p>To complete your return, we require a receipt or proof of purchase.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Refunds (if applicable)</h4>\r\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.<br />If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Late or missing refunds (if applicable)</h4>\r\n<ul>\r\n<li>If you haven&rsquo;t received a refund yet, first check your bank account again.</li>\r\n<li>Then contact your credit card company, it may take some time before your refund is officially posted.</li>\r\n<li>Next contact your bank. There is often some processing time before a refund is posted.</li>\r\n<li>If you&rsquo;ve done all of this and you still have not received your refund yet, please contact us.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Gifts</h4>\r\n<p>If the item was marked as a gift when purchased and shipped directly to you, you&rsquo;ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\r\n<p>&nbsp;</p>\r\n<p>If the item wasn&rsquo;t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and he will find out about your return.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Shipping</h4>\r\n<p>To return your product, you can request to return the product within 14 days of receipt of your order, and we will email you the return label which you can use to ship the product. Once your return is received and inspected, the refund will be processed to your original method of payment.</p>'),
(4, 4, 'en', 'Terms & Conditions', '<h1 style=\"text-align: center;\">Terms of Service</h1>\r\n<p>&nbsp;</p>\r\n<p>This website is operated by a.season. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to a.season. a.season offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>\r\n<p>&nbsp;</p>\r\n<p>By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Online Store Terms</h4>\r\n<p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>General Conditions</h4>\r\n<p>We reserve the right to refuse service to anyone for any reason at any time.<br />You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>License</h4>\r\n<p>You must not:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Republish material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Sell, rent or sub-license material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Reproduce, duplicate or copy material from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n<li>Redistribute content from&nbsp;<span class=\"highlight preview_website_name\">Website Name</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclaimer</h4>\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>limit or exclude our or your liability for death or personal injury;</li>\r\n<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>'),
(5, 5, 'en', 'Privacy & Policy', '<h1 style=\"text-align: center;\">Privacy Policy</h1>\r\n<p>&nbsp;</p>\r\n<p>Your privacy is as important to us as it is to you. We know you hate SPAM and so do we. That is why we will never sell or share your information with anyone without your express permission. We respect your rights and will do everything in our power to protect your personal information. In the interest of full disclosure, we provide this notice explaining our online information collection practices. This privacy notice discloses the privacy practices for <a href=\"https://envaysoft.com/\">EnvaySoft</a>&nbsp;(herein known as we, us and our company) and applies solely to information collected by this web site.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Information Collection, Use, and Sharing</h4>\r\n<p>We are the sole owners of the information collected on this site. We only have access to information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone. We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Disclosure</h4>\r\n<p>This site uses Google web analytics service. Google may record mouse clicks, mouse movements, scrolling activity as well as text you type in this website. This site does not use Google to collect any personally identifiable information entered in this website. Google does track your browsing habits across web sites which do not use Google services.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Security</h4>\r\n<p>We take precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline.</p>\r\n<p>Wherever we collect sensitive information (such as credit card data), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a closed lock icon at the bottom of your web browser, or looking for &ldquo;https&rdquo; at the beginning of the address of the web page.</p>\r\n<p>While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers/servers in which we store personally identifiable information are kept in a secure environment.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h4>Email Policy</h4>\r\n<p>The following are situations in which you may provide Your Information to us:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>\r\n<p>When you fill out forms or fields through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you register for an account with our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you create a subscription for our newsletter or Services.</p>\r\n</li>\r\n<li>\r\n<p>When you provide responses to a survey.</p>\r\n</li>\r\n<li>\r\n<p>When you answer questions on a quiz.</p>\r\n</li>\r\n<li>\r\n<p>When you join or enroll in an event through our Services.</p>\r\n</li>\r\n<li>\r\n<p>When you order services or products from, or through our Service.</p>\r\n</li>\r\n<li>\r\n<p>When you provide information to us through a third-party application, service or Website.</p>\r\n</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, '05bFxJNzIbOlvPY2bY9lHl4Z3yfllGJM', '2020-06-07 12:51:01', '2020-06-07 12:51:01'),
(2, 1, 'WkkU0MLLBs3Q4xm1e8cIOYoFtj1u3RLH', '2020-06-07 16:50:44', '2020-06-07 16:50:44'),
(4, 1, 'hbFV6UQEQDSt7fkkaeTWialsmQGNWkNi', '2020-06-08 16:24:06', '2020-06-08 16:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'product1', '10.0000', '5.0000', 'fixed', NULL, NULL, '5.0000', NULL, 0, NULL, 1, 1, 1, NULL, NULL, NULL, '2020-06-07 13:00:17', '2020-06-07 13:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(1, 1, 'en', 'Product1', '<p>Test</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2020-06-07 06:50:37', '2020-06-07 06:50:37'),
(2, NULL, '2020-06-07 06:50:42', '2020-06-07 06:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Admin'),
(2, 2, 'en', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_terms`
--

INSERT INTO `search_terms` (`id`, `term`, `results`, `hits`, `created_at`, `updated_at`) VALUES
(1, 'Te', 0, 2, '2020-06-07 13:00:53', '2020-06-07 13:25:37'),
(2, 'test', 0, 2, '2020-06-07 13:25:44', '2020-06-07 13:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT 0,
  `plain_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2020-06-07 06:50:40', '2020-06-07 06:50:40'),
(2, 'store_email', 0, 's:17:\"admin@electro.com\";', '2020-06-07 06:50:41', '2020-06-07 12:34:11'),
(3, 'search_engine', 0, 's:5:\"mysql\";', '2020-06-07 06:50:41', '2020-06-07 06:50:41'),
(4, 'algolia_app_id', 0, 'N;', '2020-06-07 06:50:41', '2020-06-07 06:50:41'),
(5, 'algolia_secret', 0, 'N;', '2020-06-07 06:50:41', '2020-06-07 06:50:41'),
(6, 'active_theme', 0, 's:10:\"Storefront\";', '2020-06-07 06:50:42', '2020-06-07 06:50:42'),
(7, 'supported_countries', 0, 'a:3:{i:0;s:2:\"IN\";i:1;s:2:\"US\";i:2;s:2:\"FR\";}', '2020-06-07 06:50:42', '2020-06-07 13:28:32'),
(8, 'default_country', 0, 's:2:\"IN\";', '2020-06-07 06:50:42', '2020-06-07 13:03:34'),
(9, 'supported_locales', 0, 'a:2:{i:0;s:2:\"en\";i:1;s:2:\"fr\";}', '2020-06-07 06:50:42', '2020-06-07 13:28:32'),
(10, 'default_locale', 0, 's:2:\"en\";', '2020-06-07 06:50:42', '2020-06-07 06:50:42'),
(11, 'default_timezone', 0, 's:12:\"Asia/Kolkata\";', '2020-06-07 06:50:42', '2020-06-07 13:03:34'),
(12, 'customer_role', 0, 's:1:\"2\";', '2020-06-07 06:50:42', '2020-06-07 13:03:34'),
(13, 'reviews_enabled', 0, 's:1:\"1\";', '2020-06-07 06:50:42', '2020-06-07 13:03:34'),
(14, 'auto_approve_reviews', 0, 's:1:\"0\";', '2020-06-07 06:50:42', '2020-06-07 12:57:49'),
(15, 'cookie_bar_enabled', 0, 's:1:\"1\";', '2020-06-07 06:50:42', '2020-06-07 13:03:34'),
(16, 'supported_currencies', 0, 'a:1:{i:0;s:3:\"USD\";}', '2020-06-07 06:50:42', '2020-06-07 06:50:42'),
(17, 'default_currency', 0, 's:3:\"USD\";', '2020-06-07 06:50:42', '2020-06-07 06:50:42'),
(18, 'send_order_invoice_email', 0, 'b:0;', '2020-06-07 06:50:42', '2020-06-07 06:50:42'),
(19, 'newsletter_enabled', 0, 's:1:\"1\";', '2020-06-07 06:50:42', '2020-06-07 13:03:36'),
(20, 'local_pickup_cost', 0, 's:2:\"20\";', '2020-06-07 06:50:42', '2020-06-07 12:59:39'),
(21, 'flat_rate_cost', 0, 's:2:\"25\";', '2020-06-07 06:50:42', '2020-06-07 12:59:39'),
(22, 'free_shipping_label', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(23, 'local_pickup_label', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(24, 'flat_rate_label', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(25, 'paypal_label', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(26, 'paypal_description', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(27, 'stripe_label', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(28, 'stripe_description', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(29, 'instamojo_label', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(30, 'instamojo_description', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(31, 'cod_label', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(32, 'cod_description', 1, NULL, '2020-06-07 06:50:43', '2020-06-07 06:50:43'),
(33, 'bank_transfer_label', 1, NULL, '2020-06-07 06:50:44', '2020-06-07 06:50:44'),
(34, 'bank_transfer_description', 1, NULL, '2020-06-07 06:50:44', '2020-06-07 06:50:44'),
(35, 'check_payment_label', 1, NULL, '2020-06-07 06:50:44', '2020-06-07 06:50:44'),
(36, 'check_payment_description', 1, NULL, '2020-06-07 06:50:44', '2020-06-07 06:50:44'),
(37, 'storefront_copyright_text', 1, 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";', '2020-06-07 06:50:44', '2020-06-07 12:56:31'),
(38, 'storefront_welcome_text', 1, NULL, '2020-06-07 12:56:30', '2020-06-07 12:56:30'),
(39, 'storefront_address', 1, NULL, '2020-06-07 12:56:30', '2020-06-07 12:56:30'),
(40, 'storefront_navbar_text', 1, NULL, '2020-06-07 12:56:30', '2020-06-07 12:56:30'),
(41, 'storefront_footer_menu_one_title', 1, NULL, '2020-06-07 12:56:30', '2020-06-07 12:56:30'),
(42, 'storefront_footer_menu_two_title', 1, NULL, '2020-06-07 12:56:31', '2020-06-07 12:56:31'),
(43, 'storefront_feature_1_title', 1, NULL, '2020-06-07 12:56:31', '2020-06-07 12:56:31'),
(44, 'storefront_feature_1_subtitle', 1, NULL, '2020-06-07 12:56:31', '2020-06-07 12:56:31'),
(45, 'storefront_feature_2_title', 1, NULL, '2020-06-07 12:56:31', '2020-06-07 12:56:31'),
(46, 'storefront_feature_2_subtitle', 1, NULL, '2020-06-07 12:56:31', '2020-06-07 12:56:31'),
(47, 'storefront_feature_3_title', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(48, 'storefront_feature_3_subtitle', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(49, 'storefront_feature_4_title', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(50, 'storefront_feature_4_subtitle', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(51, 'storefront_feature_5_title', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(52, 'storefront_feature_5_subtitle', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(53, 'storefront_product_page_banner_file_id', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(54, 'storefront_slider_banner_1_file_id', 1, NULL, '2020-06-07 12:56:32', '2020-06-07 12:56:32'),
(55, 'storefront_slider_banner_2_file_id', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(56, 'storefront_three_column_full_width_banners_1_file_id', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(57, 'storefront_three_column_full_width_banners_2_file_id', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(58, 'storefront_three_column_full_width_banners_3_file_id', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(59, 'storefront_featured_categories_section_title', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(60, 'storefront_featured_categories_section_subtitle', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(61, 'storefront_product_tabs_1_section_tab_1_title', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(62, 'storefront_product_tabs_1_section_tab_2_title', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(63, 'storefront_product_tabs_1_section_tab_3_title', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(64, 'storefront_product_tabs_1_section_tab_4_title', 1, NULL, '2020-06-07 12:56:33', '2020-06-07 12:56:33'),
(65, 'storefront_two_column_banners_1_file_id', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(66, 'storefront_two_column_banners_2_file_id', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(67, 'storefront_product_grid_section_tab_1_title', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(68, 'storefront_product_grid_section_tab_2_title', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(69, 'storefront_product_grid_section_tab_3_title', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(70, 'storefront_product_grid_section_tab_4_title', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(71, 'storefront_three_column_banners_1_file_id', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(72, 'storefront_three_column_banners_2_file_id', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(73, 'storefront_three_column_banners_3_file_id', 1, NULL, '2020-06-07 12:56:34', '2020-06-07 12:56:34'),
(74, 'storefront_product_tabs_2_section_title', 1, NULL, '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(75, 'storefront_product_tabs_2_section_tab_1_title', 1, NULL, '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(76, 'storefront_product_tabs_2_section_tab_2_title', 1, NULL, '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(77, 'storefront_product_tabs_2_section_tab_3_title', 1, NULL, '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(78, 'storefront_product_tabs_2_section_tab_4_title', 1, NULL, '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(79, 'storefront_one_column_banner_file_id', 1, NULL, '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(80, 'storefront_theme', 0, 's:12:\"theme-orange\";', '2020-06-07 12:56:35', '2020-06-07 13:06:36'),
(81, 'storefront_mail_theme', 0, 's:12:\"theme-orange\";', '2020-06-07 12:56:35', '2020-06-07 13:06:36'),
(82, 'storefront_slider', 0, 's:1:\"3\";', '2020-06-07 12:56:35', '2020-06-07 13:06:36'),
(83, 'storefront_terms_page', 0, 'N;', '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(84, 'storefront_privacy_page', 0, 'N;', '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(85, 'storefront_primary_menu', 0, 's:1:\"1\";', '2020-06-07 12:56:35', '2020-06-07 12:49:39'),
(86, 'storefront_category_menu', 0, 'N;', '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(87, 'storefront_footer_menu_one', 0, 's:1:\"3\";', '2020-06-07 12:56:35', '2020-06-07 13:22:07'),
(88, 'storefront_footer_menu_two', 0, 'N;', '2020-06-07 12:56:35', '2020-06-07 12:56:35'),
(89, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2020-06-07 12:56:35', '2020-06-07 13:09:06'),
(90, 'storefront_feature_1_icon', 0, 's:17:\"las la-headphones\";', '2020-06-07 12:56:35', '2020-06-07 13:09:06'),
(91, 'storefront_feature_2_icon', 0, 's:18:\"las la-credit-card\";', '2020-06-07 12:56:35', '2020-06-07 13:09:06'),
(92, 'storefront_feature_3_icon', 0, 's:17:\"las la-shield-alt\";', '2020-06-07 12:56:35', '2020-06-07 13:09:06'),
(93, 'storefront_feature_4_icon', 0, 's:12:\"las la-truck\";', '2020-06-07 12:56:35', '2020-06-07 13:09:07'),
(94, 'storefront_feature_5_icon', 0, 's:21:\"las la-calendar-minus\";', '2020-06-07 12:56:35', '2020-06-07 13:09:07'),
(95, 'storefront_product_page_banner_call_to_action_url', 0, 's:1:\"#\";', '2020-06-07 12:56:36', '2020-06-07 13:09:38'),
(96, 'storefront_product_page_banner_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(97, 'storefront_facebook_link', 0, 's:1:\"#\";', '2020-06-07 12:56:36', '2020-06-07 13:09:53'),
(98, 'storefront_twitter_link', 0, 's:1:\"#\";', '2020-06-07 12:56:36', '2020-06-07 13:09:53'),
(99, 'storefront_instagram_link', 0, 's:1:\"#\";', '2020-06-07 12:56:36', '2020-06-07 13:09:53'),
(100, 'storefront_youtube_link', 0, 's:1:\"#\";', '2020-06-07 12:56:36', '2020-06-07 13:09:53'),
(101, 'storefront_slider_banner_1_call_to_action_url', 0, 's:1:\"#\";', '2020-06-07 12:56:36', '2020-06-07 13:11:27'),
(102, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 13:11:27'),
(103, 'storefront_slider_banner_2_call_to_action_url', 0, 's:1:\"#\";', '2020-06-07 12:56:36', '2020-06-07 13:11:27'),
(104, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 13:11:27'),
(105, 'storefront_three_column_full_width_banners_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(106, 'storefront_three_column_full_width_banners_1_call_to_action_url', 0, 'N;', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(107, 'storefront_three_column_full_width_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(108, 'storefront_three_column_full_width_banners_2_call_to_action_url', 0, 'N;', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(109, 'storefront_three_column_full_width_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(110, 'storefront_three_column_full_width_banners_3_call_to_action_url', 0, 'N;', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(111, 'storefront_three_column_full_width_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(112, 'storefront_featured_categories_section_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:36', '2020-06-07 12:56:36'),
(113, 'storefront_featured_categories_section_category_1_category_id', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(114, 'storefront_featured_categories_section_category_1_product_type', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(115, 'storefront_featured_categories_section_category_1_products_limit', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(116, 'storefront_featured_categories_section_category_2_category_id', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(117, 'storefront_featured_categories_section_category_2_product_type', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(118, 'storefront_featured_categories_section_category_2_products_limit', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(119, 'storefront_featured_categories_section_category_3_category_id', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(120, 'storefront_featured_categories_section_category_3_product_type', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(121, 'storefront_featured_categories_section_category_3_products_limit', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(122, 'storefront_featured_categories_section_category_4_category_id', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(123, 'storefront_featured_categories_section_category_4_product_type', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(124, 'storefront_featured_categories_section_category_4_products_limit', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(125, 'storefront_featured_categories_section_category_5_category_id', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(126, 'storefront_featured_categories_section_category_5_product_type', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(127, 'storefront_featured_categories_section_category_5_products_limit', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(128, 'storefront_featured_categories_section_category_6_category_id', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(129, 'storefront_featured_categories_section_category_6_product_type', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(130, 'storefront_featured_categories_section_category_6_products_limit', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(131, 'storefront_product_tabs_1_section_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(132, 'storefront_product_tabs_1_section_tab_1_product_type', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(133, 'storefront_product_tabs_1_section_tab_1_category_id', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(134, 'storefront_product_tabs_1_section_tab_1_products_limit', 0, 'N;', '2020-06-07 12:56:37', '2020-06-07 12:56:37'),
(135, 'storefront_product_tabs_1_section_tab_2_product_type', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(136, 'storefront_product_tabs_1_section_tab_2_category_id', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(137, 'storefront_product_tabs_1_section_tab_2_products_limit', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(138, 'storefront_product_tabs_1_section_tab_3_product_type', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(139, 'storefront_product_tabs_1_section_tab_3_category_id', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(140, 'storefront_product_tabs_1_section_tab_3_products_limit', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(141, 'storefront_product_tabs_1_section_tab_4_product_type', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(142, 'storefront_product_tabs_1_section_tab_4_category_id', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(143, 'storefront_product_tabs_1_section_tab_4_products_limit', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(144, 'storefront_top_brands_section_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(145, 'storefront_flash_sale_and_vertical_products_section_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(146, 'storefront_flash_sale_title', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(147, 'storefront_active_flash_sale_campaign', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(148, 'storefront_vertical_products_1_title', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(149, 'storefront_vertical_products_1_product_type', 0, 'N;', '2020-06-07 12:56:38', '2020-06-07 12:56:38'),
(150, 'storefront_vertical_products_1_category_id', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(151, 'storefront_vertical_products_1_products_limit', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(152, 'storefront_vertical_products_2_title', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(153, 'storefront_vertical_products_2_product_type', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(154, 'storefront_vertical_products_2_category_id', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(155, 'storefront_vertical_products_2_products_limit', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(156, 'storefront_vertical_products_3_title', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(157, 'storefront_vertical_products_3_product_type', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(158, 'storefront_vertical_products_3_category_id', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(159, 'storefront_vertical_products_3_products_limit', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(160, 'storefront_two_column_banners_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:39', '2020-06-07 12:40:57'),
(161, 'storefront_two_column_banners_1_call_to_action_url', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(162, 'storefront_two_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(163, 'storefront_two_column_banners_2_call_to_action_url', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(164, 'storefront_two_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(165, 'storefront_product_grid_section_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(166, 'storefront_product_grid_section_tab_1_product_type', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(167, 'storefront_product_grid_section_tab_1_category_id', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(168, 'storefront_product_grid_section_tab_1_products_limit', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(169, 'storefront_product_grid_section_tab_2_product_type', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(170, 'storefront_product_grid_section_tab_2_category_id', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(171, 'storefront_product_grid_section_tab_2_products_limit', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(172, 'storefront_product_grid_section_tab_3_product_type', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(173, 'storefront_product_grid_section_tab_3_category_id', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(174, 'storefront_product_grid_section_tab_3_products_limit', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(175, 'storefront_product_grid_section_tab_4_product_type', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(176, 'storefront_product_grid_section_tab_4_category_id', 0, 'N;', '2020-06-07 12:56:39', '2020-06-07 12:56:39'),
(177, 'storefront_product_grid_section_tab_4_products_limit', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(178, 'storefront_three_column_banners_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:40', '2020-06-07 13:11:56'),
(179, 'storefront_three_column_banners_1_call_to_action_url', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(180, 'storefront_three_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(181, 'storefront_three_column_banners_2_call_to_action_url', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(182, 'storefront_three_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(183, 'storefront_three_column_banners_3_call_to_action_url', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(184, 'storefront_three_column_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(185, 'storefront_product_tabs_2_section_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(186, 'storefront_product_tabs_2_section_tab_1_product_type', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(187, 'storefront_product_tabs_2_section_tab_1_category_id', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(188, 'storefront_product_tabs_2_section_tab_1_products_limit', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(189, 'storefront_product_tabs_2_section_tab_2_product_type', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(190, 'storefront_product_tabs_2_section_tab_2_category_id', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(191, 'storefront_product_tabs_2_section_tab_2_products_limit', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(192, 'storefront_product_tabs_2_section_tab_3_product_type', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(193, 'storefront_product_tabs_2_section_tab_3_category_id', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(194, 'storefront_product_tabs_2_section_tab_3_products_limit', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(195, 'storefront_product_tabs_2_section_tab_4_product_type', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(196, 'storefront_product_tabs_2_section_tab_4_category_id', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(197, 'storefront_product_tabs_2_section_tab_4_products_limit', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(198, 'storefront_one_column_banner_enabled', 0, 's:1:\"0\";', '2020-06-07 12:56:40', '2020-06-07 12:40:21'),
(199, 'storefront_one_column_banner_call_to_action_url', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(200, 'storefront_one_column_banner_open_in_new_window', 0, 's:1:\"0\";', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(201, 'storefront_footer_tags', 0, 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"5\";i:4;s:1:\"3\";}', '2020-06-07 12:56:40', '2020-06-07 13:25:21'),
(202, 'storefront_featured_categories_section_category_1_products', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(203, 'storefront_featured_categories_section_category_2_products', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(204, 'storefront_featured_categories_section_category_3_products', 0, 'N;', '2020-06-07 12:56:40', '2020-06-07 12:56:40'),
(205, 'storefront_featured_categories_section_category_4_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(206, 'storefront_featured_categories_section_category_5_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(207, 'storefront_featured_categories_section_category_6_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(208, 'storefront_product_tabs_1_section_tab_1_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(209, 'storefront_product_tabs_1_section_tab_2_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(210, 'storefront_product_tabs_1_section_tab_3_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(211, 'storefront_product_tabs_1_section_tab_4_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(212, 'storefront_top_brands', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(213, 'storefront_vertical_products_1_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(214, 'storefront_vertical_products_2_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(215, 'storefront_vertical_products_3_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(216, 'storefront_product_grid_section_tab_1_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(217, 'storefront_product_grid_section_tab_2_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(218, 'storefront_product_grid_section_tab_3_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(219, 'storefront_product_grid_section_tab_4_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(220, 'storefront_product_tabs_2_section_tab_1_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(221, 'storefront_product_tabs_2_section_tab_2_products', 0, 'N;', '2020-06-07 12:56:41', '2020-06-07 12:56:41'),
(222, 'storefront_product_tabs_2_section_tab_3_products', 0, 'N;', '2020-06-07 12:56:42', '2020-06-07 12:56:42'),
(223, 'storefront_product_tabs_2_section_tab_4_products', 0, 'N;', '2020-06-07 12:56:42', '2020-06-07 12:56:42'),
(224, 'welcome_email', 0, 's:1:\"1\";', '2020-06-07 13:03:34', '2020-06-07 12:57:49'),
(225, 'admin_order_email', 0, 's:1:\"1\";', '2020-06-07 13:03:34', '2020-06-07 12:57:49'),
(226, 'order_status_email', 0, 's:1:\"1\";', '2020-06-07 13:03:34', '2020-06-07 12:57:49'),
(227, 'invoice_email', 0, 's:1:\"1\";', '2020-06-07 13:03:34', '2020-06-07 12:57:49'),
(228, 'maintenance_mode', 0, 's:1:\"0\";', '2020-06-07 13:03:34', '2020-06-07 13:03:34'),
(229, 'allowed_ips', 0, 'N;', '2020-06-07 13:03:34', '2020-06-07 13:03:34'),
(230, 'store_tagline', 1, NULL, '2020-06-07 13:03:34', '2020-06-07 13:03:34'),
(231, 'bank_transfer_instructions', 1, NULL, '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(232, 'check_payment_instructions', 1, NULL, '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(233, 'store_phone', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(234, 'store_address_1', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(235, 'store_address_2', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(236, 'store_city', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(237, 'store_country', 0, 's:2:\"IN\";', '2020-06-07 13:03:35', '2020-06-07 12:34:11'),
(238, 'store_state', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(239, 'store_zip', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(240, 'currency_rate_exchange_service', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(241, 'fixer_access_key', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(242, 'forge_api_key', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(243, 'currency_data_feed_api_key', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(244, 'auto_refresh_currency_rates', 0, 's:1:\"1\";', '2020-06-07 13:03:35', '2020-06-07 12:58:35'),
(245, 'auto_refresh_currency_rate_frequency', 0, 's:6:\"weekly\";', '2020-06-07 13:03:35', '2020-06-07 12:58:35'),
(246, 'mail_from_address', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(247, 'mail_from_name', 0, 'N;', '2020-06-07 13:03:35', '2020-06-07 13:03:35'),
(248, 'mail_host', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(249, 'mail_port', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(250, 'mail_username', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(251, 'mail_password', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(252, 'mail_encryption', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(253, 'mailchimp_api_key', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(254, 'mailchimp_list_id', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(255, 'custom_header_assets', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(256, 'custom_footer_assets', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(257, 'facebook_login_enabled', 0, 's:1:\"0\";', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(258, 'facebook_login_app_id', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(259, 'facebook_login_app_secret', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(260, 'google_login_enabled', 0, 's:1:\"0\";', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(261, 'google_login_client_id', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(262, 'google_login_client_secret', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(263, 'free_shipping_enabled', 0, 's:1:\"1\";', '2020-06-07 13:03:36', '2020-06-07 12:59:09'),
(264, 'free_shipping_min_amount', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(265, 'local_pickup_enabled', 0, 's:1:\"1\";', '2020-06-07 13:03:36', '2020-06-07 12:59:39'),
(266, 'flat_rate_enabled', 0, 's:1:\"1\";', '2020-06-07 13:03:36', '2020-06-07 12:59:39'),
(267, 'paypal_enabled', 0, 's:1:\"0\";', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(268, 'paypal_test_mode', 0, 's:1:\"0\";', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(269, 'paypal_client_id', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(270, 'paypal_secret', 0, 'N;', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(271, 'stripe_enabled', 0, 's:1:\"0\";', '2020-06-07 13:03:36', '2020-06-07 13:03:36'),
(272, 'stripe_publishable_key', 0, 'N;', '2020-06-07 13:03:37', '2020-06-07 13:03:37'),
(273, 'stripe_secret_key', 0, 'N;', '2020-06-07 13:03:37', '2020-06-07 13:03:37'),
(274, 'instamojo_enabled', 0, 's:1:\"0\";', '2020-06-07 13:03:37', '2020-06-07 13:03:37'),
(275, 'instamojo_test_mode', 0, 's:1:\"0\";', '2020-06-07 13:03:37', '2020-06-07 13:03:37'),
(276, 'instamojo_api_key', 0, 'N;', '2020-06-07 13:03:37', '2020-06-07 13:03:37'),
(277, 'instamojo_auth_token', 0, 'N;', '2020-06-07 13:03:37', '2020-06-07 13:03:37'),
(278, 'cod_enabled', 0, 's:1:\"1\";', '2020-06-07 13:03:37', '2020-06-07 12:34:51'),
(279, 'bank_transfer_enabled', 0, 's:1:\"1\";', '2020-06-07 13:03:37', '2020-06-07 13:00:27'),
(280, 'check_payment_enabled', 0, 's:1:\"0\";', '2020-06-07 13:03:37', '2020-06-07 13:03:37'),
(281, 'storefront_newsletter_bg_image', 0, 's:1:\"9\";', '2020-06-07 13:08:04', '2020-06-07 13:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:7:\"Electro\";'),
(2, 22, 'en', 's:13:\"Free Shipping\";'),
(3, 23, 'en', 's:12:\"Local Pickup\";'),
(4, 24, 'en', 's:9:\"Flat Rate\";'),
(5, 25, 'en', 's:6:\"PayPal\";'),
(6, 26, 'en', 's:28:\"Pay via your PayPal account.\";'),
(7, 27, 'en', 's:6:\"Stripe\";'),
(8, 28, 'en', 's:29:\"Pay via credit or debit card.\";'),
(9, 29, 'en', 's:9:\"Instamojo\";'),
(10, 30, 'en', 's:16:\"CC/DB/NB/Wallets\";'),
(11, 31, 'en', 's:16:\"Cash On Delivery\";'),
(12, 32, 'en', 's:28:\"Pay with cash upon delivery.\";'),
(13, 33, 'en', 's:13:\"Bank Transfer\";'),
(14, 34, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(15, 35, 'en', 's:19:\"Check / Money Order\";'),
(16, 36, 'en', 's:33:\"Please send a check to our store.\";'),
(17, 38, 'en', 's:26:\"Welcome to Electro Shopper\";'),
(18, 39, 'en', 's:23:\"Loos-en-Gohelle, France\";'),
(19, 40, 'en', 's:24:\"Free shipping over $100+\";'),
(20, 41, 'en', 's:12:\"Our Services\";'),
(21, 42, 'en', 's:11:\"Information\";'),
(22, 37, 'en', 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";'),
(23, 43, 'en', 's:12:\"24/7 SUPPORT\";'),
(24, 44, 'en', 's:18:\"Support every time\";'),
(25, 45, 'en', 's:14:\"ACCEPT PAYMENT\";'),
(26, 46, 'en', 's:20:\"Visa, Paypal, Master\";'),
(27, 47, 'en', 's:15:\"SECURED PAYMENT\";'),
(28, 48, 'en', 's:12:\"100% secured\";'),
(29, 49, 'en', 's:13:\"FREE SHIPPING\";'),
(30, 50, 'en', 's:15:\"Order over $100\";'),
(31, 51, 'en', 's:14:\"30 DAYS RETURN\";'),
(32, 52, 'en', 's:17:\"30 days guarantee\";'),
(33, 53, 'en', 's:2:\"10\";'),
(34, 54, 'en', 's:2:\"12\";'),
(35, 55, 'en', 's:2:\"11\";'),
(36, 56, 'en', 'N;'),
(37, 57, 'en', 'N;'),
(38, 58, 'en', 'N;'),
(39, 59, 'en', 'N;'),
(40, 60, 'en', 'N;'),
(41, 61, 'en', 'N;'),
(42, 62, 'en', 'N;'),
(43, 63, 'en', 'N;'),
(44, 64, 'en', 'N;'),
(45, 65, 'en', 'N;'),
(46, 66, 'en', 'N;'),
(47, 67, 'en', 'N;'),
(48, 68, 'en', 'N;'),
(49, 69, 'en', 'N;'),
(50, 70, 'en', 'N;'),
(51, 71, 'en', 'N;'),
(52, 72, 'en', 'N;'),
(53, 73, 'en', 'N;'),
(54, 74, 'en', 'N;'),
(55, 75, 'en', 'N;'),
(56, 76, 'en', 'N;'),
(57, 77, 'en', 'N;'),
(58, 78, 'en', 'N;'),
(59, 79, 'en', 'N;'),
(60, 230, 'en', 'N;'),
(61, 231, 'en', 's:154:\"Please send your payment to the following account.\r\n<br>\r\nBank Name: Lorem Ipsum.\r\n<br>\r\nBeneficiary Name: John Doe.\r\n<br>\r\nAccount Number/IBAN: 123456789\";'),
(62, 232, 'en', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `speed` int(11) DEFAULT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int(11) DEFAULT NULL,
  `fade` tinyint(1) NOT NULL DEFAULT 0,
  `dots` tinyint(1) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `speed`, `autoplay`, `autoplay_speed`, `fade`, `dots`, `arrows`, `created_at`, `updated_at`) VALUES
(3, 1000, 1, 5000, 0, 1, 1, '2020-06-07 13:03:46', '2020-06-07 13:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(4, 3, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 0, '2020-06-07 13:03:47', '2020-06-07 13:03:47'),
(5, 3, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 1, '2020-06-07 13:03:47', '2020-06-07 13:03:47'),
(6, 3, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 0, 2, '2020-06-07 13:03:47', '2020-06-07 13:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `file_id`, `caption_1`, `caption_2`, `call_to_action_text`, `direction`) VALUES
(4, 4, 'en', 8, '<b>XIAOMI</b> SPEAKER', 'There are a upgrade for the quality and control in the home', 'SHOP NOW', 'left'),
(5, 5, 'en', 7, '<b>3D</b> Virtual Reality', 'VR 3D glasses with remote control gamepad at best price', 'BUY NOW', 'left'),
(6, 6, 'en', 6, '<b>DJI</b> MAVIC PRO', 'The creative\'s shop for flying cameras and flight controllers', 'ORDER NOW', 'left');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(3, 3, 'en', 'Main Slider');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'accessories', '2020-06-07 13:23:49', '2020-06-07 13:23:49'),
(2, 'hd-tv', '2020-06-07 13:24:13', '2020-06-07 13:24:13'),
(3, 'smart-tv-gpmsRQXc', '2020-06-07 13:24:28', '2020-06-07 13:24:35'),
(4, 'jewelry-design', '2020-06-07 13:24:47', '2020-06-07 13:24:47'),
(5, 'lifestyle', '2020-06-07 13:25:05', '2020-06-07 13:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Accessories'),
(2, 2, 'en', 'HD TV'),
(3, 3, 'en', 'Smart TV'),
(4, 4, 'en', 'Jewelry design'),
(5, 5, 'en', 'Lifestyle');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updater_scripts`
--

CREATE TABLE `updater_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updater_scripts`
--

INSERT INTO `updater_scripts` (`id`, `script`) VALUES
(1, 'V2_0_0');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `up_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$FogVfTfZDp7kDjNOMBbQUOfSFp9.UzO5ralxSRySFdBQTbUBeYEw.', NULL, '2020-06-08 21:54:06', '2020-06-07 06:50:37', '2020-06-08 16:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-07 06:50:40', '2020-06-07 06:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_translations_brand_id_locale_unique` (`brand_id`,`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD PRIMARY KEY (`flash_sale_product_id`,`order_id`),
  ADD KEY `flash_sale_product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flash_sale_translations_flash_sale_id_locale_unique` (`flash_sale_id`,`locale`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD CONSTRAINT `flash_sale_product_orders_flash_sale_product_id_foreign` FOREIGN KEY (`flash_sale_product_id`) REFERENCES `flash_sale_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD CONSTRAINT `flash_sale_translations_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
