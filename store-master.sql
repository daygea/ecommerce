-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2017 at 03:58 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '2016-04-26 20:26:53', '2016-04-26 20:26:53'),
(2, 'ASUS', '2016-04-26 20:27:39', '2016-04-26 20:27:39'),
(3, 'Beats by Dr. Dre', '2016-04-26 20:27:56', '2016-04-26 20:27:56'),
(4, 'Bose', '2016-04-26 20:28:10', '2016-04-26 20:28:10'),
(5, 'Blackberry', '2016-04-26 20:28:22', '2016-04-26 20:28:22'),
(6, 'Canon', '2016-04-26 20:28:38', '2016-04-26 20:28:38'),
(7, 'DELL', '2016-04-26 20:28:53', '2016-04-26 20:28:53'),
(8, 'GoPro', '2016-04-26 20:29:09', '2016-04-26 20:29:09'),
(9, 'HP', '2016-04-26 20:29:20', '2016-04-26 20:29:20'),
(10, 'Lenovo', '2016-04-26 20:29:44', '2016-04-26 20:29:44'),
(11, 'LG', '2016-04-26 20:29:52', '2016-04-26 20:29:52'),
(12, 'Logitech', '2016-04-26 20:30:18', '2016-04-26 20:30:18'),
(13, 'Microsoft', '2016-04-26 20:30:28', '2016-04-26 20:30:28'),
(14, 'Nikon Cameras', '2016-04-26 20:31:01', '2016-04-26 20:31:01'),
(15, 'Panasonic', '2016-04-26 20:31:24', '2016-04-26 20:31:24'),
(16, 'Samsung', '2016-04-26 20:31:44', '2016-04-26 20:31:44'),
(17, 'Sony', '2016-04-26 20:32:01', '2016-04-26 20:32:01'),
(18, 'Toshiba', '2016-04-26 20:32:15', '2016-04-26 20:32:15'),
(19, 'Turtle Beach', '2016-04-26 20:32:26', '2016-04-26 20:32:26'),
(20, 'CyberPowerPC', '2016-04-26 23:01:31', '2016-04-26 23:01:31'),
(21, 'Astro', '2016-04-27 04:18:37', '2016-04-27 04:18:37'),
(22, 'EA', '2016-04-27 21:13:07', '2016-04-27 21:13:07'),
(23, 'Other', '2016-04-27 21:15:27', '2016-04-27 21:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `total` decimal(10,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(16, 13, 63, 4, '1799.96', '2017-05-30 13:46:40', '2017-05-30 13:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'TV', NULL, '2016-04-26 20:24:49', '2016-04-26 20:24:49'),
(2, 'Computers & Tablets', NULL, '2016-04-26 20:25:26', '2016-04-26 20:35:58'),
(3, 'Cell Phones', NULL, '2016-04-26 20:25:38', '2016-04-26 20:25:38'),
(4, 'Cameras', NULL, '2016-04-26 20:25:47', '2016-04-26 20:25:47'),
(5, 'Audio', NULL, '2016-04-26 20:26:09', '2016-04-26 20:26:09'),
(6, 'Video Games', NULL, '2016-04-26 20:26:21', '2016-04-26 20:26:21'),
(7, '4K Ultra HD TVs', 1, '2016-04-26 20:33:50', '2016-04-26 20:33:50'),
(8, 'Smart TVs', 1, '2016-04-26 20:34:02', '2016-04-26 20:34:02'),
(9, 'Curved TVs', 1, '2016-04-26 20:34:15', '2016-04-26 20:34:15'),
(10, 'LED TVs', 1, '2016-04-26 20:34:26', '2016-04-26 20:34:26'),
(11, 'OLED TVs', 1, '2016-04-26 20:34:40', '2016-04-26 20:34:40'),
(12, 'Desktops', 2, '2016-04-26 20:35:03', '2016-04-26 20:35:03'),
(13, 'Laptops', 2, '2016-04-26 20:35:10', '2016-04-26 20:35:10'),
(14, 'Monitors', 2, '2016-04-26 20:35:34', '2016-04-26 20:35:34'),
(15, 'iPads', 2, '2016-04-26 20:36:05', '2016-04-26 20:36:05'),
(16, 'Tablets', 2, '2016-04-26 20:36:20', '2016-04-26 20:36:20'),
(17, 'iPhones', 3, '2016-04-26 20:36:34', '2016-04-26 20:36:34'),
(18, 'Samsung Galaxy', 3, '2016-04-26 20:37:00', '2016-04-26 20:37:00'),
(19, 'Blackberries ', 3, '2016-04-26 20:37:11', '2016-04-26 20:37:11'),
(20, 'Digital SLR Cameras', 4, '2016-04-26 20:37:39', '2016-04-26 20:37:39'),
(21, 'Mirrorless Cameras', 4, '2016-04-26 20:38:03', '2016-04-26 20:38:03'),
(22, 'Point & Shoot Cameras', 4, '2016-04-26 20:38:38', '2016-04-26 20:38:38'),
(23, 'GoPros', 4, '2016-04-26 20:39:27', '2016-04-26 20:39:27'),
(25, 'Xbox One Headsets', 5, '2016-04-26 20:40:01', '2016-04-26 20:40:01'),
(26, 'PlayStation 4 Headsets', 5, '2016-04-26 20:40:11', '2016-04-26 20:40:11'),
(27, 'HeadPhones', 5, '2016-04-26 20:40:29', '2016-04-26 20:40:29'),
(28, 'Xbox One', 6, '2016-04-26 20:41:01', '2016-04-26 20:41:01'),
(29, 'Xbox One Games', 6, '2016-04-26 20:41:13', '2016-04-26 20:41:13'),
(30, 'Xbox One Accessories', 6, '2016-04-26 20:41:26', '2016-04-26 20:41:26'),
(31, 'PlayStation 4', 6, '2016-04-26 20:41:37', '2016-04-26 20:41:37'),
(32, 'PlayStation 4 Accessories', 6, '2016-04-26 20:41:51', '2016-04-26 20:41:51'),
(33, 'PlayStation 4 Games', 6, '2016-04-26 20:42:00', '2016-04-26 20:42:00'),
(34, 'PC Games', 6, '2016-04-26 20:42:12', '2016-04-26 20:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_01_225427_create_categories_table', 1),
('2016_04_04_235728_create_products_table', 1),
('2016_04_08_172826_create_brands_table', 1),
('2016_04_09_201921_create_product_images_table', 1),
('2016_04_17_181302_create_carts_table', 1),
('2016_04_18_183841_create_orders_table', 1),
('2016_04_18_232109_create_order_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `first_name`, `last_name`, `address`, `phone`, `city`, `state`, `zip`, `total`, `full_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jane ', 'Smith', '415 Jackson Avenue', '', 'Astoria', 'NY', '11102', '3399.98', 'Jane Smith', '2016-04-27 21:36:28', '2016-04-27 21:36:28'),
(2, 2, 'Dave', 'Colin', '712 Pheasant Run', '', 'Vicksburg', 'MS', '39180', '499.99', 'Dave Colin', '2016-04-27 21:39:48', '2016-04-27 21:39:48'),
(3, 2, 'Jenny', 'Larun', '129 Cedar Court ', '', 'Jackson Heights', 'NY', '11372', '699.99', 'Jenny Laurn', '2016-04-27 21:40:49', '2016-04-27 21:40:49'),
(4, 2, 'Myers', 'Setph', '636 Monroe Drive', '', 'La Vergne', 'TN', '37086', '124.98', 'Myers Setph', '2016-04-27 21:42:11', '2016-04-27 21:42:11'),
(5, 2, 'John', 'Zehn', '305 Route 202 ', '', 'Findlay', 'OH', '45840', '1999.99', 'John Zehn', '2016-04-27 21:43:15', '2016-04-27 21:43:15'),
(6, 2, 'Joile', 'Hanna', '977 Homestead Drive ', '', 'West Des Moines', 'IA', '50265', '219.99', 'Joile Hanna', '2016-04-27 21:44:25', '2016-04-27 21:44:25'),
(7, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '11999.96', '', '2017-05-24 08:16:15', '2017-05-24 08:16:15'),
(8, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Gombe', '', '6099.94', '', '2017-05-24 08:20:37', '2017-05-24 08:20:37'),
(9, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Imo', '', '1299.99', '', '2017-05-24 08:24:29', '2017-05-24 08:24:29'),
(10, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Kano', '', '6499.95', '', '2017-05-24 08:35:04', '2017-05-24 08:35:04'),
(11, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Ekiti', '', '6499.95', '', '2017-05-24 08:46:16', '2017-05-24 08:46:16'),
(12, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Ebonyi', '', '6499.95', '', '2017-05-24 08:47:35', '2017-05-24 08:47:35'),
(13, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '6499.95', '', '2017-05-24 08:49:27', '2017-05-24 08:49:27'),
(14, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Gombe', '', '6499.95', '', '2017-05-24 08:55:03', '2017-05-24 08:55:03'),
(15, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Imo', '', '6499.95', '', '2017-05-24 09:03:51', '2017-05-24 09:03:51'),
(16, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Delta', '', '6499.95', '', '2017-05-24 09:04:49', '2017-05-24 09:04:49'),
(17, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Edo', '', '6499.95', '', '2017-05-24 09:07:46', '2017-05-24 09:07:46'),
(18, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Edo', '', '7849.93', '', '2017-05-24 19:48:10', '2017-05-24 19:48:10'),
(19, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Ebonyi', '', '7849.93', '', '2017-05-24 19:51:28', '2017-05-24 19:51:28'),
(20, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Gombe', '', '7849.93', '', '2017-05-24 19:53:38', '2017-05-24 19:53:38'),
(21, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Enugu', '', '7849.93', '', '2017-05-24 19:54:34', '2017-05-24 19:54:34'),
(22, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Ebonyi', '', '7849.93', '', '2017-05-24 19:55:39', '2017-05-24 19:55:39'),
(23, 1, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Ebonyi', '', '10849.92', '', '2017-05-29 04:37:20', '2017-05-29 04:37:20'),
(24, 13, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '1799.96', '', '2017-05-30 13:37:52', '2017-05-30 13:37:52'),
(25, 13, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '2249.95', '', '2017-05-30 13:38:50', '2017-05-30 13:38:50'),
(26, 13, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '2249.95', '', '2017-05-30 13:42:16', '2017-05-30 13:42:16'),
(27, 13, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '1799.96', '', '2017-05-30 13:47:02', '2017-05-30 13:47:02'),
(28, 2, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '1009.98', '', '2017-05-31 06:01:13', '2017-05-31 06:01:13'),
(29, 2, 'Adedeji', 'Kadri', '10, Ogunfunmi street', '', 'Surulere', 'Lagos', '', '1009.98', '', '2017-05-31 06:01:59', '2017-05-31 06:01:59'),
(30, 2, 'Adedeji Nasir', 'Kadri', '10, Ogunfunmi street, Off Akobi Crescent', '', 'Surulere', 'Lagos', '', '1799.96', '', '2017-05-31 06:16:12', '2017-05-31 06:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `reduced_price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `total_reduced` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `price`, `reduced_price`, `total`, `total_reduced`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, '2999.99', '0.00', '2999.99', '0.00', NULL, NULL),
(2, 1, 16, 1, '399.99', '0.00', '399.99', '0.00', NULL, NULL),
(3, 2, 29, 1, '499.99', '0.00', '499.99', '0.00', NULL, NULL),
(4, 3, 21, 1, '699.99', '0.00', '699.99', '0.00', NULL, NULL),
(5, 4, 33, 1, '24.99', '0.00', '24.99', '0.00', NULL, NULL),
(6, 4, 48, 1, '99.99', '0.00', '99.99', '0.00', NULL, NULL),
(7, 5, 11, 1, '1999.99', '0.00', '1999.99', '0.00', NULL, NULL),
(8, 6, 14, 1, '219.99', '0.00', '219.99', '0.00', NULL, NULL),
(9, 7, 3, 4, '1999.99', '2999.99', '7999.96', '11999.96', NULL, NULL),
(10, 8, 63, 4, '449.99', '0.00', '1799.96', '0.00', NULL, NULL),
(11, 8, 3, 1, '1999.99', '2999.99', '1999.99', '2999.99', NULL, NULL),
(12, 8, 2, 1, '899.99', '1299.99', '899.99', '1299.99', NULL, NULL),
(13, 9, 2, 1, '899.99', '1299.99', '899.99', '1299.99', NULL, NULL),
(14, 10, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(15, 11, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(16, 12, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(17, 13, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(18, 14, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(19, 15, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(20, 16, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(21, 17, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(22, 18, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(23, 19, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(24, 20, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(25, 21, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(26, 22, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(27, 23, 2, 5, '899.99', '1299.99', '4499.95', '6499.95', NULL, NULL),
(28, 24, 63, 4, '449.99', '0.00', '1799.96', '0.00', NULL, NULL),
(29, 25, 62, 5, '449.99', '0.00', '2249.95', '0.00', NULL, NULL),
(30, 26, 64, 5, '449.99', '0.00', '2249.95', '0.00', NULL, NULL),
(31, 29, 27, 1, '449.99', '0.00', '449.99', '0.00', NULL, NULL),
(32, 29, 8, 1, '449.99', '0.00', '449.99', '0.00', NULL, NULL),
(33, 30, 65, 4, '449.99', '0.00', '1799.96', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_qty` int(10) UNSIGNED NOT NULL,
  `product_sku` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `reduced_price` decimal(10,2) UNSIGNED DEFAULT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_spec` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_qty`, `product_sku`, `price`, `reduced_price`, `cat_id`, `brand_id`, `featured`, `description`, `product_spec`, `created_at`, `updated_at`) VALUES
(1, 'Sony - 55\" Class - LED - 2160p - Smart - 4K Ultra HD', 8, 260478281, '999.99', '899.99', 7, 17, 0, '<h3><strong><span style=\"font-size: 18px;\">Enjoy greater clarity, color, and contrast with the new 4K Processor X1</span></strong></h3><p>The powerful 4K Processor X1 brings stunning picture quality to whatever you\'re watching. Every source is intelligently analyzed and upscaled to our best 4K resolution, from TV broadcasts, Blu-ray Discs™ and DVDs, to 4K Internet videos. Enjoy incredible 4K images with stunning clarity, more lifelike colors and sparkling contrast.</p><h3><strong><span style=\"font-size: 18px;\">Whatever you’re watching, watch it in our true 4K</span></strong></h3><p>No matter the source, every pixel is upscaled beautifully by our most powerful 4K picture processing technology ever. Scenes are analyzed and matched with a special image database for supremely lifelike detail, whatever you\'re watching.</p><h3><strong><span style=\"font-size: 18px;\">Dynamic Contrast Enhancer improves contrast for everything you watch</span></strong></h3><p>The 4K Processor X1 ensures that the dynamic range of brightness on screen is continually optimized frame by frame.</p>', '<h4><strong><span style=\"font-size: 18px;\">54.6\" screen (measured diagonally from corner to corner)</span></strong></h4><p>A great size for a living room or mid-sized home theater space.</p><p><br></p><h4><strong><span style=\"font-size: 18px;\">LED TVs perform well in all lighting conditions</span></strong></h4><p>They also deliver plasma-like deep blacks and rich colors.</p><p><br></p><h4><strong><span style=\"font-size: 18px;\">2160p resolution for breathtaking HD images</span></strong></h4><p>Watch 4K movies and TV shows at 4x the resolution of Full HD, and upscale your current HD content to gorgeous, Ultra HD-level picture quality.</p><p><br></p><h4><strong><span style=\"font-size: 18px;\">Smart TV brings a world of entertainment to your living room</span></strong></h4><p>Stream your favorite movies, TV shows and music with Google Play.</p><p><br></p><h4><strong><span style=\"font-size: 18px;\">4 HDMI inputs for the best home theater connection</span></strong></h4><p>High-speed HDMI delivers a full 1080p picture and digital surround sound in one convenient cable. HDMI cable not included.</p><p><br></p><h4><strong><span style=\"font-size: 18px;\">3 USB inputs</span></strong></h4><p>Easily connect your digital camera, camcorder or other USB device.</p><p><br></p><p>Web-based services and content require high-speed Internet service. Some services may require a subscription.</p><p><br></p><p><br></p>', '2016-04-26 21:26:52', '2016-04-26 23:12:51'),
(2, 'Samsung - 50\" Class - LED - 2160p - Smart - 4K Ultra HD TV', 3, 441716796, '899.99', '1299.99', 8, 16, 0, '<p><span>This SUHD TV offers 4K picture quality — 4x the resolution of Full HD — and a wide variety of Web options via Smart TV and apps. Stream music and video and surf the Internet with the multitasking power of a quad-core processor. Plus, with Briefing on TV, you can sync this SUHD TV with a Samsung smartphone or tablet to display time, weather and schedule updates on the TV screen.</span></p>', '<p><span style=\"font-size: 18px;\"><strong>49-1/2\" screen (measured diagonally from corner to corner)</strong></span></p><p>A great size for a living room or mid-sized home theater space.</p><p><br></p><p><span style=\"font-size: 18px;\"><strong>2160p resolution for breathtaking HD images</strong></span></p><p>Watch 4K movies and TV shows at 4x the resolution of Full HD, and upscale your current HD content to gorgeous, Ultra HD-level picture quality.*</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Motion Rate 120</span></strong></p><p>Enjoy high-speed action with good motion clarity.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Smart TV means a huge world of entertainment</span></strong></p><p>Stream content using Smart Hub and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Rapid Web browsing and downloading</span></strong></p><p>Multitask, browse the Web, and download apps faster with a quad-core processor.</p><p><br></p><p><span style=\"font-size: 18px;\">Reduced glare from any viewing angle</span></p><p>Ultra Clear Panel screen absorbs ambient light to reduce reflections, for clear viewing no matter where the TV is positioned.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Increased sense of depth</span></strong></p><p>Contrast enhancer automatically optimizes contrast across multiple zones of the screen for realistic foregrounds and backgrounds.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Nano-crystal color technology brings your entertainment to life in vivid detail</span></strong></p><p>Reveal brilliant colors and details you never knew were there.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Watch your smartphone content on your TV, and vice versa</span></strong></p><p>Smart View 2.0 lets you watch your mobile media on the TV display, or mirror TV titles on your compatible mobile device.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">ConnectShare Movie</span></strong></p><p>Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Briefing on TV lets you display important information and schedule your day</span></strong></p><p>Have the TV act as an alarm, and sync up with Samsung mobile devices to display important items such as the time, weather, and your daily schedule on the TV screen.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Advanced TV sound</span></strong></p><p>This TV includes two 10W speakers, DTS Premium Sound and DTS Studio Sound.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">4 HDMI inputs for the best home theater connection</span></strong></p><p>High-speed HDMI delivers an HD picture and digital surround sound in one convenient cable. HDMI cable sold separately.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">3 USB inputs</span></strong></p><p><br></p><p><br></p>', '2016-04-26 21:33:54', '2016-04-26 23:15:06'),
(3, 'Sony - 65\" Class - LED - 2160p - Smart - 4K Ultra HD TV ', 8, 710509134, '1999.99', '2999.99', 7, 17, 0, '<p><span>Enjoy streaming content with a clear picture and bright colors, use your smartphone or tablet as a remote control, or stream PlayStation 3 games to your TV. Plus, the Android TV function lets you download a wide array of apps and games.</span></p>', '<p><strong><span style=\"font-size: 18px;\">64-1/2\" screen (measured diagonally from corner to corner)</span></strong></p><p>Provides an immersive experience for everyone in the room.</p><p><br></p><p><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></p><p>They also deliver plasma-like deep blacks and rich colors.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">2160p resolution for breathtaking HD images</span></strong></p><p>Watch 4K movies and TV shows at 4x the resolution of Full HD, and upscale your current HD content to gorgeous, Ultra HD-level picture quality.*</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Crisp, clear images, even at high speed</span></strong></p><p>You\'ll get impressive clarity during sporting events and action movies with Motionflow XR 960 technology.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Smart TV delivers a huge world of entertainment</span></strong></p><p>Stream movies, music and more through the Sony Entertainment Network, and surf your favorite websites with the included Opera Web browser.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Built-in Wi-Fi</span></strong></p><p>Connect to your wireless home network.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Android TV</span></strong></p><p>The power of Android on your television screen. Enjoy an array of apps, games and personalization features. Supports voice search and Google Cast.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">HDR compatible for next-level color and contrast</span></strong></p><p>HDR (High Dynamic Range) reproduces a wide range of brightness levels, bringing greater color and contrast to the screen.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">More color, depth and realism</span></strong></p><p>Colors come alive from the wide color gamut and heightened color depth of TRILUMINOS + X1 technology.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Upscaled clarity and color</span></strong></p><p>X-Reality PRO analyzes and refines clarity and contrast from your favorite shows, movies and clips in real time, creating crisp images and vibrant colors.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Stream PlayStation 3 games to your TV</span></strong></p><p>Choose from an exciting selection of PS3 games and stream them the same way you stream movies and TV shows. DualShock 4 controller sold separately.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Use your smartphone or tablet as a remote control</span></strong></p><p>Access Android TV or TV SideView on your compatible device to easily navigate using a keyboard, voice search, and quick access buttons.</p><p><br></p><p><strong><span style=\"font-size: 18px;\">Dolby Digital Plus and Dolby Pulse</span></strong></p><p>Optimizes the sound for TV from sources like Internet movies and music, connected PCs, smartphones and tablets.</p><p><br></p><p><br></p>', '2016-04-26 21:43:52', '2016-04-26 21:43:52'),
(4, 'Samsung - 48\" Class - LED - 1080p - Smart - HDTV', 18, 785282706, '449.99', '0.00', 8, 16, 1, '<p><span>Discover new programs, stream movies and create a network of connected Samsung devices with this smart TV\'s advanced features. Color- and sound-enhancing options help bring your favorite shows and video clips to life.</span></p>', '<ul><li><h4><span style=\"font-size: 18px;\"><strong>47.6\" screen (measured diagonally from corner to corner)</strong></span></h4><p><span style=\"font-size: 18px;\">A great size for a living room or mid-sized home theater space.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></h4><p><span style=\"font-size: 18px;\">They also deliver deep blacks and rich colors.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>1080p resolution for stunning HD images</strong></span></h4><p><span style=\"font-size: 18px;\">Watch Blu-ray movies and 1080p HD content at their highest level of detail.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Motion Rate 60</strong></span></h4><p><span style=\"font-size: 18px;\">Enjoy high-speed action with basic motion clarity.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Smart TV means a huge world of entertainment</strong></span></h4><p><span style=\"font-size: 18px;\">Stream content using Smart Hub, and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Intelligent energy management</strong></span></h4><p><span style=\"font-size: 18px;\">Eco Sensor measures the intensity of light in the room and automatically adjusts the TV brightness.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Give a color boost to your picture</strong></span></h4><p><span style=\"font-size: 18px;\">Wide Color Enhancer expands the color range for rich, natural-looking images.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>ConnectShare Movie</strong></span></h4><p><span style=\"font-size: 18px;\">Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</span></p><br><br></li></ul>', '2016-04-26 21:49:18', '2016-04-26 23:14:48'),
(8, 'Chaoba - 48\" Class - LED - 1080p - Smart - HDTV', 17, 785282706, '449.99', '0.00', 8, 16, 0, '<p><span>Discover new programs, stream movies and create a network of connected Samsung devices with this smart TV\'s advanced features. Color- and sound-enhancing options help bring your favorite shows and video clips to life.</span></p>', '<ul><li><h4><span style=\"font-size: 18px;\"><strong>47.6\" screen (measured diagonally from corner to corner)</strong></span></h4><p><span style=\"font-size: 18px;\">A great size for a living room or mid-sized home theater space.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></h4><p><span style=\"font-size: 18px;\">They also deliver deep blacks and rich colors.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>1080p resolution for stunning HD images</strong></span></h4><p><span style=\"font-size: 18px;\">Watch Blu-ray movies and 1080p HD content at their highest level of detail.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Motion Rate 60</strong></span></h4><p><span style=\"font-size: 18px;\">Enjoy high-speed action with basic motion clarity.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Smart TV means a huge world of entertainment</strong></span></h4><p><span style=\"font-size: 18px;\">Stream content using Smart Hub, and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Intelligent energy management</strong></span></h4><p><span style=\"font-size: 18px;\">Eco Sensor measures the intensity of light in the room and automatically adjusts the TV brightness.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Give a color boost to your picture</strong></span></h4><p><span style=\"font-size: 18px;\">Wide Color Enhancer expands the color range for rich, natural-looking images.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>ConnectShare Movie</strong></span></h4><p><span style=\"font-size: 18px;\">Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</span></p><br><br></li></ul>', '2016-04-26 21:49:18', '2016-04-26 23:14:48'),
(27, 'Chaoba - 48\" Class - LED - 1080p - Smart - HDTV', 17, 785282706, '449.99', '0.00', 8, 16, 0, '<p><span>Discover new programs, stream movies and create a network of connected Samsung devices with this smart TV\'s advanced features. Color- and sound-enhancing options help bring your favorite shows and video clips to life.</span></p>', '<ul><li><h4><span style=\"font-size: 18px;\"><strong>47.6\" screen (measured diagonally from corner to corner)</strong></span></h4><p><span style=\"font-size: 18px;\">A great size for a living room or mid-sized home theater space.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></h4><p><span style=\"font-size: 18px;\">They also deliver deep blacks and rich colors.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>1080p resolution for stunning HD images</strong></span></h4><p><span style=\"font-size: 18px;\">Watch Blu-ray movies and 1080p HD content at their highest level of detail.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Motion Rate 60</strong></span></h4><p><span style=\"font-size: 18px;\">Enjoy high-speed action with basic motion clarity.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Smart TV means a huge world of entertainment</strong></span></h4><p><span style=\"font-size: 18px;\">Stream content using Smart Hub, and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Intelligent energy management</strong></span></h4><p><span style=\"font-size: 18px;\">Eco Sensor measures the intensity of light in the room and automatically adjusts the TV brightness.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Give a color boost to your picture</strong></span></h4><p><span style=\"font-size: 18px;\">Wide Color Enhancer expands the color range for rich, natural-looking images.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>ConnectShare Movie</strong></span></h4><p><span style=\"font-size: 18px;\">Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</span></p><br><br></li></ul>', '2016-04-26 21:49:18', '2016-04-26 23:14:48'),
(62, 'Dell - 48\" Class - LED - 1080p - Smart - HDTV', 13, 785282706, '449.99', '0.00', 8, 16, 1, '<p><span>Discover new programs, stream movies and create a network of connected Samsung devices with this smart TV\'s advanced features. Color- and sound-enhancing options help bring your favorite shows and video clips to life.</span></p>', '<ul><li><h4><span style=\"font-size: 18px;\"><strong>47.6\" screen (measured diagonally from corner to corner)</strong></span></h4><p><span style=\"font-size: 18px;\">A great size for a living room or mid-sized home theater space.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></h4><p><span style=\"font-size: 18px;\">They also deliver deep blacks and rich colors.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>1080p resolution for stunning HD images</strong></span></h4><p><span style=\"font-size: 18px;\">Watch Blu-ray movies and 1080p HD content at their highest level of detail.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Motion Rate 60</strong></span></h4><p><span style=\"font-size: 18px;\">Enjoy high-speed action with basic motion clarity.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Smart TV means a huge world of entertainment</strong></span></h4><p><span style=\"font-size: 18px;\">Stream content using Smart Hub, and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Intelligent energy management</strong></span></h4><p><span style=\"font-size: 18px;\">Eco Sensor measures the intensity of light in the room and automatically adjusts the TV brightness.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Give a color boost to your picture</strong></span></h4><p><span style=\"font-size: 18px;\">Wide Color Enhancer expands the color range for rich, natural-looking images.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>ConnectShare Movie</strong></span></h4><p><span style=\"font-size: 18px;\">Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</span></p><br><br></li></ul>', '2016-04-26 21:49:18', '2016-04-26 23:14:48'),
(63, 'Sony - 48\" Class - LED - 1080p - Smart - HDTV', 14, 785282706, '449.99', '0.00', 8, 16, 1, '<p><span>Discover new programs, stream movies and create a network of connected Samsung devices with this smart TV\'s advanced features. Color- and sound-enhancing options help bring your favorite shows and video clips to life.</span></p>', '<ul><li><h4><span style=\"font-size: 18px;\"><strong>47.6\" screen (measured diagonally from corner to corner)</strong></span></h4><p><span style=\"font-size: 18px;\">A great size for a living room or mid-sized home theater space.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></h4><p><span style=\"font-size: 18px;\">They also deliver deep blacks and rich colors.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>1080p resolution for stunning HD images</strong></span></h4><p><span style=\"font-size: 18px;\">Watch Blu-ray movies and 1080p HD content at their highest level of detail.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Motion Rate 60</strong></span></h4><p><span style=\"font-size: 18px;\">Enjoy high-speed action with basic motion clarity.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Smart TV means a huge world of entertainment</strong></span></h4><p><span style=\"font-size: 18px;\">Stream content using Smart Hub, and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Intelligent energy management</strong></span></h4><p><span style=\"font-size: 18px;\">Eco Sensor measures the intensity of light in the room and automatically adjusts the TV brightness.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Give a color boost to your picture</strong></span></h4><p><span style=\"font-size: 18px;\">Wide Color Enhancer expands the color range for rich, natural-looking images.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>ConnectShare Movie</strong></span></h4><p><span style=\"font-size: 18px;\">Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</span></p><br><br></li></ul>', '2016-04-26 21:49:18', '2016-04-26 23:14:48'),
(64, 'Toshiba - 48\" Class - LED - 1080p - Smart - HDTV', 13, 785282706, '449.99', '0.00', 8, 16, 1, '<p><span>Discover new programs, stream movies and create a network of connected Samsung devices with this smart TV\'s advanced features. Color- and sound-enhancing options help bring your favorite shows and video clips to life.</span></p>', '<ul><li><h4><span style=\"font-size: 18px;\"><strong>47.6\" screen (measured diagonally from corner to corner)</strong></span></h4><p><span style=\"font-size: 18px;\">A great size for a living room or mid-sized home theater space.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></h4><p><span style=\"font-size: 18px;\">They also deliver deep blacks and rich colors.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>1080p resolution for stunning HD images</strong></span></h4><p><span style=\"font-size: 18px;\">Watch Blu-ray movies and 1080p HD content at their highest level of detail.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Motion Rate 60</strong></span></h4><p><span style=\"font-size: 18px;\">Enjoy high-speed action with basic motion clarity.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Smart TV means a huge world of entertainment</strong></span></h4><p><span style=\"font-size: 18px;\">Stream content using Smart Hub, and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Intelligent energy management</strong></span></h4><p><span style=\"font-size: 18px;\">Eco Sensor measures the intensity of light in the room and automatically adjusts the TV brightness.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Give a color boost to your picture</strong></span></h4><p><span style=\"font-size: 18px;\">Wide Color Enhancer expands the color range for rich, natural-looking images.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>ConnectShare Movie</strong></span></h4><p><span style=\"font-size: 18px;\">Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</span></p><br><br></li></ul>', '2016-04-26 21:49:18', '2016-04-26 23:14:48'),
(65, 'Chaoba - 48\" Class - LED - 1080p - Smart - HDTV', 14, 785282706, '449.99', '0.00', 8, 16, 0, '<p><span>Discover new programs, stream movies and create a network of connected Samsung devices with this smart TV\'s advanced features. Color- and sound-enhancing options help bring your favorite shows and video clips to life.</span></p>', '<ul><li><h4><span style=\"font-size: 18px;\"><strong>47.6\" screen (measured diagonally from corner to corner)</strong></span></h4><p><span style=\"font-size: 18px;\">A great size for a living room or mid-sized home theater space.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>LED TVs perform well in all lighting conditions</strong></span></h4><p><span style=\"font-size: 18px;\">They also deliver deep blacks and rich colors.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>1080p resolution for stunning HD images</strong></span></h4><p><span style=\"font-size: 18px;\">Watch Blu-ray movies and 1080p HD content at their highest level of detail.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Motion Rate 60</strong></span></h4><p><span style=\"font-size: 18px;\">Enjoy high-speed action with basic motion clarity.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Smart TV means a huge world of entertainment</strong></span></h4><p><span style=\"font-size: 18px;\">Stream content using Smart Hub, and surf the Internet with the included Web browser. S-Recommendation finds the movies and shows you\'ll enjoy most. Built-in Wi-Fi connects to a wireless home network.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Intelligent energy management</strong></span></h4><p><span style=\"font-size: 18px;\">Eco Sensor measures the intensity of light in the room and automatically adjusts the TV brightness.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>Give a color boost to your picture</strong></span></h4><p><span style=\"font-size: 18px;\">Wide Color Enhancer expands the color range for rich, natural-looking images.</span></p><span style=\"font-size: 18px;\"><br></span><h4><span style=\"font-size: 18px;\"><strong>ConnectShare Movie</strong></span></h4><p><span style=\"font-size: 18px;\">Watch videos, play music and view photos from a USB connection without needing to use a PC or special equipment.</span></p><br><br></li></ul>', '2016-04-26 21:49:18', '2016-04-26 23:14:48'),
(66, 'Test', 6, 111758385, '300000.00', '280000.00', 18, 1, 0, '<p>cascacsa</p>', '', '2017-05-30 04:38:01', '2017-05-30 04:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `path`, `thumbnail_path`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 'a372829277cab311ebfdbdc4698d404bed09c34a.jpg', 'ProductPhotos/photos/a556f4a07c2bb51be3d290b9e87fa9bc7fec0157.jpg', 'ProductPhotos/photos/th-a556f4a07c2bb51be3d290b9e87fa9bc7fec0157.jpg', 0, '2016-04-26 21:27:13', '2016-04-26 21:28:05'),
(2, 1, 'b95144289cde4e7b6937ad761b39e4a7fdc77cf5.jpg', 'ProductPhotos/photos/93071fc504eec5ff96f5bc02c8f52a7ccc72a291.jpg', 'ProductPhotos/photos/th-93071fc504eec5ff96f5bc02c8f52a7ccc72a291.jpg', 0, '2016-04-26 21:27:13', '2016-04-26 21:28:05'),
(6, 1, 'bffdd7ac95b53c7b22161dd5328b17292ae6b487.jpg', 'ProductPhotos/photos/5a98522f954a5e233b79783957f17794fd11cafb.jpg', 'ProductPhotos/photos/th-5a98522f954a5e233b79783957f17794fd11cafb.jpg', 0, '2016-04-26 21:27:13', '2016-04-26 21:28:05'),
(8, 2, '770776ddb516f9f03b5936335eaa78f4c3f6f1d1.jpg', 'ProductPhotos/photos/f491596073e9545ed5c4a309588d3c7d78b66ad7.jpg', 'ProductPhotos/photos/th-f491596073e9545ed5c4a309588d3c7d78b66ad7.jpg', 0, '2016-04-26 21:34:05', '2016-04-26 21:36:13'),
(9, 2, '8dde09c152c6eb3d3e7e9e1a2f789e078a366481.jpg', 'ProductPhotos/photos/a18963a7d4f8a0e2af4372afc40fe9fc4c6588ee.jpg', 'ProductPhotos/photos/th-a18963a7d4f8a0e2af4372afc40fe9fc4c6588ee.jpg', 0, '2016-04-26 21:34:06', '2016-04-26 21:36:13'),
(11, 2, 'ba30e96844d51d88fe5cea492cd9a6af2dd10293.jpg', 'ProductPhotos/photos/ded66b1a238384cd9c9249d91877dedf8d3c78a8.jpg', 'ProductPhotos/photos/th-ded66b1a238384cd9c9249d91877dedf8d3c78a8.jpg', 1, '2016-04-26 21:36:07', '2016-04-26 21:36:13'),
(12, 3, 'f85a61c67c17f31938c4426f186da98370225823.jpg', 'ProductPhotos/photos/3d18779c672c56e3a23a0f119c50952c9b09879f.jpg', 'ProductPhotos/photos/th-3d18779c672c56e3a23a0f119c50952c9b09879f.jpg', 1, '2016-04-26 21:44:08', '2016-04-26 21:44:21'),
(19, 3, 'dd7eb0e593561fa197776c8fbd9f3243bff5ddf9.jpg', 'ProductPhotos/photos/dd7eb0e593561fa197776c8fbd9f3243bff5ddf9.jpg', 'ProductPhotos/photos/th-dd7eb0e593561fa197776c8fbd9f3243bff5ddf9.jpg', 0, '2016-04-26 21:44:10', '2016-04-26 21:44:21'),
(20, 4, '920a961555bb9c7bd12ad259f0f9cc3b0bb0f855.jpg', 'ProductPhotos/photos/077301b80bb7b81f23f6ee7c7f2fef22e987e649.jpg', 'ProductPhotos/photos/th-077301b80bb7b81f23f6ee7c7f2fef22e987e649.jpg', 1, '2016-04-26 21:49:37', '2016-04-26 21:49:42'),
(21, 62, '920a961555bb9c7bd12ad259f0f9cc3b0bb0f855.jpg', 'ProductPhotos/photos/077301b80bb7b81f23f6ee7c7f2fef22e987e649.jpg', 'ProductPhotos/photos/th-077301b80bb7b81f23f6ee7c7f2fef22e987e649.jpg', 1, '2016-04-26 21:49:37', '2016-04-26 21:49:42'),
(22, 63, '770776ddb516f9f03b5936335eaa78f4c3f6f1d1.jpg', 'ProductPhotos/photos/f491596073e9545ed5c4a309588d3c7d78b66ad7.jpg', 'ProductPhotos/photos/th-f491596073e9545ed5c4a309588d3c7d78b66ad7.jpg', 0, '2016-04-26 21:34:05', '2016-04-26 21:36:13'),
(23, 64, 'a372829277cab311ebfdbdc4698d404bed09c34a.jpg', 'ProductPhotos/photos/a556f4a07c2bb51be3d290b9e87fa9bc7fec0157.jpg', 'ProductPhotos/photos/th-a556f4a07c2bb51be3d290b9e87fa9bc7fec0157.jpg', 0, '2016-04-26 21:27:13', '2016-04-26 21:28:05'),
(24, 65, '8dde09c152c6eb3d3e7e9e1a2f789e078a366481.jpg', 'ProductPhotos/photos/a18963a7d4f8a0e2af4372afc40fe9fc4c6588ee.jpg', 'ProductPhotos/photos/th-a18963a7d4f8a0e2af4372afc40fe9fc4c6588ee.jpg', 0, '2016-04-26 21:34:06', '2016-04-26 21:36:13'),
(25, 66, '8442fb8987424614d29f5d3b827ddf2295f267a1.jpg', 'ProductPhotos/photos/8442fb8987424614d29f5d3b827ddf2295f267a1.jpg', 'ProductPhotos/photos/th-8442fb8987424614d29f5d3b827ddf2295f267a1.jpg', 0, '2017-06-01 11:43:59', '2017-06-01 11:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `last_login`, `verified`, `token`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@ecommerce.com', '$2y$10$qN6fnUZb9Qs4EQ5UL9KadeQ6irkBJRbxmEyUurYrJ49dLL8XpSF5i', '2017-05-30 11:29:15', 1, '', 1, 'ibEKbBdCt5muzz1MvehE6HAxSObsQmyy4aOmwA1WeYEEnRIUeJ0YDwERY8xE', '2017-05-23 07:56:08', '2017-05-30 10:29:15'),
(2, 'Daygea', 'kadri_adedeji@yahoo.com', '$2y$10$qN6fnUZb9Qs4EQ5UL9KadeQ6irkBJRbxmEyUurYrJ49dLL8XpSF5i', '2017-06-01 12:27:27', 1, '', 0, 'v1nyKe7YnDyZz68y8dBTRC0NE9D4o5bY9kRJoYPIlopq6pvSZfMhU6ptqTTt', '2017-05-23 07:56:08', '2017-06-01 11:27:27'),
(13, 'Daygeasss', 'kadri_adedejisss@yahoo.com', '$2y$10$qN6fnUZb9Qs4EQ5UL9KadeQ6irkBJRbxmEyUurYrJ49dLL8XpSF5i', '2017-05-31 07:19:16', 1, '', 0, 'Y1mpvgX68g3QEIyJI61TWiIzZnE5i3eM5ca7kCCnBOEM8yD0EcoWYYW8D5Pj', '2017-05-23 07:56:08', '2017-05-31 06:19:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
