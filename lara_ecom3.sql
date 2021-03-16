-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 09:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_ecom3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(233) NOT NULL,
  `password` varchar(233) NOT NULL,
  `email` varchar(233) NOT NULL,
  `p_category` varchar(255) DEFAULT NULL,
  `coupon` varchar(233) DEFAULT NULL,
  `blog` varchar(233) DEFAULT NULL,
  `product` varchar(233) DEFAULT NULL,
  `product_stock` varchar(244) DEFAULT NULL,
  `order` varchar(211) DEFAULT NULL,
  `others` varchar(211) DEFAULT NULL,
  `site_setting` varchar(211) DEFAULT NULL,
  `report` varchar(211) DEFAULT NULL,
  `user_role` varchar(211) DEFAULT NULL,
  `contact_message` varchar(231) DEFAULT NULL,
  `product_comment` varchar(233) DEFAULT NULL,
  `mail` varchar(233) DEFAULT NULL,
  `chat_room` varchar(233) DEFAULT NULL,
  `return_order` varchar(233) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`, `email`, `p_category`, `coupon`, `blog`, `product`, `product_stock`, `order`, `others`, `site_setting`, `report`, `user_role`, `contact_message`, `product_comment`, `mail`, `chat_room`, `return_order`, `type`, `status`) VALUES
(2, 'abc', '4297f44b13955235245b2497399d7a93', 'abc@gmail.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1),
(4, 'sourav', '4297f44b13955235245b2497399d7a93', 'abc@gmail.com', NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `heading`, `desc`, `image`, `date`, `status`) VALUES
(2, 'What is nutrition, and why does it matter?', 'Nutrition is the study of nutrients in food, how the body uses them, and the relationship between diet, health, and disease.', 'public/blog_image/1694226722364663.jpg', '21-03-14', '1'),
(3, 'The most popular diet search according to Google was intermittent fasting.', 'The author of the article says that “Based on available evidence, a well-formulated ketogenic diet does not appear to have major safety concerns for the general public and can be considered a first-line approach for obesity and diabetes.', 'public/blog_image/1694226818699276.jpg', '21-03-14', '1'),
(4, 'The Relative Caloric Prices of Healthy and Unhealthy Foods', 'This study compared relative caloric prices (RCPs) for different food categories across 176 countries and ascertained their associations with dietary indicators and nutrition outcomes.', 'public/blog_image/1694226867185785.jpg', '21-03-14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_desc`, `status`) VALUES
(3, 'Ogani Brand', 'Ogani Brand', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_desc`, `status`) VALUES
(17, 'Fresh Meat', 'Fresh Meat', 1),
(18, 'Vegetables', 'Vegetables', 1),
(19, 'Fruit & Nut Gifts', 'Fruit & Nut Gifts', 1),
(21, 'Ocean Foods', 'Ocean Foods', 1),
(22, 'Butter & Eggs', 'Butter & Eggs', 1),
(23, 'Fastfood', 'Fastfood', 1),
(27, 'Fish', 'Fresh One', 1),
(28, 'Mutton', 'Fresh Mutton', 1),
(29, 'Chicken', 'Fresh Chicken', 1),
(30, 'Drinks', 'Low fat Drinks', 1),
(31, 'Dry Fruits', 'Dry Fruits', 1),
(32, 'Frozen Food', 'Frozen Food', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `user_name`, `user_email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Sourav', 'souravkairy420@gmail.com', 'This is the best............', NULL, NULL),
(2, 'Akhlak', 'souravkairy420@gmail.com', 'zcxcvxcv', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_ammount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`c_id`, `c_name`, `c_type`, `c_ammount`, `status`, `created_at`) VALUES
(2, 'test', '2', '500', 1, '2020-11-05 20:36:24'),
(3, 'arpon', '1', '200', 1, '2020-11-19 17:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(233) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`id`, `name`, `email`, `social_id`, `social_type`, `user_name`, `password`, `status`) VALUES
(1, 'Sourav', 'abc@gmail.com', NULL, NULL, 'sourav', '4297f44b13955235245b2497399d7a93', 1),
(2, 'abc', 'kibriamalik@gmail.com', NULL, NULL, 'sourav', '4297f44b13955235245b2497399d7a93', 1),
(4, 'arpon', 'souravkairy44@gmail.com', NULL, NULL, 'arpon', '4297f44b13955235245b2497399d7a93', 1),
(5, 'Abu taher', 'abu@gmail.com', NULL, NULL, 'taher', '4297f44b13955235245b2497399d7a93', 1),
(6, 'Hasnat', 'taher@gmail.com', NULL, NULL, 'hasnat', '4297f44b13955235245b2497399d7a93', 1),
(7, 'Sourav Kairy', 'souravkairy420@gmail.com', NULL, NULL, 'abc', '4297f44b13955235245b2497399d7a93', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_slider`
--

CREATE TABLE `home_slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_slider`
--

INSERT INTO `home_slider` (`id`, `heading1`, `main_heading`, `heading2`, `button_text`, `image1`, `created_at`, `updated_at`) VALUES
(1, 'FRUIT FRESH', 'Vegetable 100% Organic', 'Free Pickup and Delivery Available', 'SHOP NOW', 'public/product_image/1684633146198571.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_03_200606_create_sessions_table', 1),
(8, '2020_11_05_090111_create_category_table', 2),
(9, '2020_11_05_173520_create_sub_category_table', 3),
(10, '2020_11_05_195604_create_brand_table', 4),
(12, '2020_11_05_202043_create_coupons_table', 5),
(17, '2020_11_09_172859_create_product_table', 6),
(18, '2020_11_12_111300_create_wishlist_table', 7),
(19, '2020_11_13_085607_create_customer_info_table', 8),
(38, '2020_11_22_143756_create_order_table', 9),
(39, '2020_11_22_143824_create_order_details_table', 9),
(40, '2020_11_22_143854_create_shipping_table', 9),
(42, '2020_11_23_193357_create_seo_table', 10),
(45, '2020_11_25_174917_create_site_setting_table', 11),
(47, '2020_11_28_065607_create_contact_info_table', 12),
(48, '2020_11_28_190716_create_home_slider_table', 13),
(51, '2021_03_11_045740_create_blog_post_table', 14),
(52, '2021_03_12_035257_create_newsletter_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `status`) VALUES
(1, 'syltrips@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `c_id` int(11) NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paying_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bln_transection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `c_id`, `payment_id`, `paying_amount`, `stripe_order_id`, `payment_method`, `bln_transection`, `sub_total`, `shipping_cost`, `vat`, `total`, `month`, `date`, `year`, `tracking_code`, `status`) VALUES
(10, 1, 'card_1Hqc5QIxGxCTMOQgGzCNo8Am', '890', '5fbb8bde09c21', 'Stripe', 'txn_1Hqc5RIxGxCTMOQgSwpz995t', '800.00', '50', '40.00', '890', 'November', '23-11-20', '2020', '012345', 2),
(11, 4, 'card_1Hqc6gIxGxCTMOQgQN55A27K', '627', '5fbb8c2c82fe9', 'Stripe', 'txn_1Hqc6iIxGxCTMOQgcck8SFgR', '550.00', '50', '27.50', '627', 'November', '23-11-20', '2020', NULL, 4),
(12, 5, 'card_1HqkXEIxGxCTMOQg1t5IGiAT', '690', '5fbc0abb81727', 'Stripe', 'txn_1HqkXJIxGxCTMOQgzcW1cpaM', '600', '50', '40.00', '690', 'November', '23-11-20', '2020', NULL, 0),
(13, 5, 'card_1HqvSFIxGxCTMOQgv9xvBJoF', '627', '5fbcaeb153c6e', 'Stripe', 'txn_1HqvSHIxGxCTMOQgDjxPJ4dM', '550.00', '50', '27.50', '627', 'November', '20-11-24', '2020', '123456', 3),
(14, 5, 'card_1Hr2CuIxGxCTMOQguJ2gbGk2', '627', '5fbd141643bff', 'Stripe', 'txn_1Hr2CxIxGxCTMOQgywTMrvfq', '550.00', '50', '27.50', '627', 'November', '20-11-24', '2020', '377794', 0),
(15, 4, 'card_1HrmQoIxGxCTMOQgw4bLU3kb', '427', '5fbfca2c66c43', 'Stripe', 'txn_1HrmQrIxGxCTMOQgN7VghfIz', '350', '50', '27.50', '427', 'November', '20-11-26', '2020', '733521', 3),
(16, 6, 'card_1HvmcoIxGxCTMOQgBlgwvDKc', '627', '5fce58f4af547', 'Stripe', 'txn_1HvmcrIxGxCTMOQgdHiG9fy8', '550.00', '50', '27.50', '627', 'December', '20-12-07', '2020', '870766', 1),
(17, 7, 'card_1IU1I4IxGxCTMOQgr5mFY1gg', '112', '604ada1997fc9', 'Stripe', 'txn_1IU1I6IxGxCTMOQgsAsxMx0f', '50', '50', '12.50', '112', 'March', '21-03-12', '2021', '238558', 1),
(18, 7, 'card_1IUc0oIxGxCTMOQg4Fzs5JMU', '112', '604d018041a0d', 'Stripe', 'txn_1IUc0rIxGxCTMOQgj7ckkif7', '50', '50', '12.50', '112', 'March', '21-03-13', '2021', '365931', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_d_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_d_id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `qty`, `single_price`, `total_price`) VALUES
(8, 10, 2, 'Meat', 'red', '1kg', '1', '550', '550'),
(9, 10, 1, 'Burger', 'White,green', 'Medium', '1', '250', '250'),
(10, 11, 2, 'Meat', 'red', '1kg', '1', '550', '550'),
(11, 12, 2, 'Meat', 'red', '1kg', '1', '550', '550'),
(12, 12, 1, 'Burger', 'White,green', 'Medium', '1', '250', '250'),
(13, 13, 2, 'Meat', 'red', '1kg', '1', '550', '550'),
(14, 14, 2, 'Meat', 'red', '1kg', '1', '550', '550'),
(15, 15, 2, 'Meat', 'red', '1kg', '1', '550', '550'),
(16, 16, 2, 'Meat', 'red', '1kg', '1', '550', '550'),
(17, 17, 9, 'Banana', 'yellow', 'Medium', '50', '5', '250'),
(18, 18, 9, 'Banana', 'yellow', 'Medium', '50', '5', '250');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('souravkairy420@gmail.com', '$2y$10$ND8lKxvRmgn9siKRdSlS3OsWsDEYQ3OQYw1RyzwkBKrD60nhhydIO', '2020-11-05 03:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` int(11) NOT NULL,
  `s_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `p_name`, `category_id`, `sub_cat_id`, `brand_id`, `color`, `size`, `qty`, `unit`, `s_price`, `c_price`, `promo_code`, `video`, `p_desc`, `l_p`, `p_p`, `t_p`, `image1`, `image2`, `image3`, `status`, `Time`) VALUES
(1, 'Burger', 23, 8, 3, 'White,green', 'Medium', '15', 1, '250', '60', 'y-2020', 'No-video', 'integerintegerintegerintegerintegerintegerinteger', '1', NULL, NULL, 'public/product_image/1683006565577908.jpg', NULL, NULL, 1, '2020-11-10 20:28:56'),
(9, 'Banana', 19, 7, 3, 'yellow', 'Medium', '100', 1, '5', '4', 'y-2020', 'No-video', 'Fresh Banana', NULL, NULL, '1', 'public/product_image/1693867651623152.jpg', NULL, NULL, 1, '2021-03-10 17:41:15'),
(10, 'Apple', 19, 8, 3, 'red', 'Medium', '100', 2, '120', '79', 'y-2020', 'No-video', 'Fresh One', NULL, '1', NULL, 'public/product_image/1693867727531923.jpg', NULL, NULL, 1, '2021-03-10 17:42:27'),
(11, 'Watermelon', 19, 8, 3, NULL, NULL, NULL, 1, '250', '200', 'y-2020', 'No-video', 'None', NULL, '1', NULL, 'public/product_image/1694224362857827.jpg', NULL, NULL, 1, '2021-03-14 16:11:01'),
(12, 'Chicken Fry', 29, 8, 3, NULL, NULL, NULL, 1, '50', '30', 'y-2020', 'No-video', 'None', NULL, NULL, NULL, 'public/product_image/1694224458440305.jpg', NULL, NULL, 1, '2021-03-14 16:12:32'),
(13, 'Mango', 19, 8, 3, NULL, NULL, NULL, 2, '180', '120', 'y-2020', 'No-video', 'No', NULL, NULL, NULL, 'public/product_image/1694224741745880.jpg', NULL, NULL, 1, '2021-03-14 16:17:02'),
(14, 'Dry Fruits', 31, 8, 3, NULL, NULL, NULL, 1, '500', '450', 'y-2020', 'No-video', 'none', NULL, NULL, NULL, 'public/product_image/1694226440674833.jpg', NULL, NULL, 1, '2021-03-14 16:44:02'),
(15, 'Guava', 19, 8, 3, NULL, NULL, NULL, 2, '150', '110', 'y-2020', 'No-video', 'None', NULL, NULL, NULL, 'public/product_image/1694226536150504.jpg', NULL, NULL, 1, '2021-03-14 16:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Ogani', 'Ogani A online shop', 'best online shop', 'This is the one of the best shop in bangladesh and we provide the best service in sylhet......', 'tryry567786788ikukk', 'uiujhmk68979878', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iiRwE5olg8ihFq31qK1zwWytA5kGsklISHsHFebq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6Im1iVEtrOFhxOHl1SzBIM2tjYUpHbVpYYlpDSnlqcVp6NTE1d01HcmsiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vbG9jYWxob3N0L2xhcmFfZWNvbTMvTmV3c2xhdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJ1c2VybmFtZSI7czozOiJhYmMiO3M6NToiZW1haWwiO3M6MjQ6InNvdXJhdmthaXJ5NDIwQGdtYWlsLmNvbSI7czo3OiJtZXNzYWdlIjtzOjI2OiJQT1NUIFNhdmVkIFN1Y2Nlc3NmdWxseSAhISI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiMTQxMTU1NTM5NjU4YWZmOWZiYWM5NjUzMWJkYTllZTIiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMDp7czo1OiJyb3dJZCI7czozMjoiMTQxMTU1NTM5NjU4YWZmOWZiYWM5NjUzMWJkYTllZTIiO3M6MjoiaWQiO2k6OTtzOjM6InF0eSI7czozOiIxMDAiO3M6NDoibmFtZSI7czo2OiJCYW5hbmEiO3M6NToicHJpY2UiO2Q6NTtzOjY6IndlaWdodCI7ZDoxO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjM6e3M6NToiaW1hZ2UiO3M6NDE6InB1YmxpYy9wcm9kdWN0X2ltYWdlLzE2OTM4Njc2NTE2MjMxNTIuanBnIjtzOjU6ImNvbG9yIjtzOjY6InllbGxvdyI7czo0OiJzaXplIjtzOjY6Ik1lZGl1bSI7fX1zOjc6InRheFJhdGUiO2k6NTtzOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDY6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBkaXNjb3VudFJhdGUiO2k6MDt9fX19czo0OiJuYW1lIjtzOjEyOiJTb3VyYXYgS2FpcnkiO3M6OToidXNlcl9uYW1lIjtzOjM6ImFiYyI7czoyOiJpZCI7aTo3O30=', 1615753170);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `sh_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`sh_id`, `order_id`, `first_name`, `last_name`, `country`, `address1`, `town`, `post_code`, `phone`, `email`, `notes`) VALUES
(9, 10, 'Sourav', 'Kairy', 'Bangladesh', 'Tilagor - Ambarkhana Road', 'sylhet', '3200', '01797338420', 'souravkairy420@gmail.com', NULL),
(10, 11, 'Sourav', 'Kairy', 'Bangladesh', 'Tilagor - Ambarkhana Road', 'sylhet', '3200', '01797338420', 'souravkairy420@gmail.com', NULL),
(11, 12, 'Taher', 'Abu', 'Bangladesh', 'Tilagor - Ambarkhana Road', 'sylhet', '3200', '01313721939', 'taher@gmail.com', NULL),
(12, 13, 'Taher', 'Abu', 'Bangladesh', 'Tilagor - Ambarkhana Road', 'sylhet', '3200', '01313721939', 'taher@gmail.com', NULL),
(13, 14, 'Sourav', 'Kairy', 'Bangladesh', 'Tilagor - Ambarkhana Road', 'sylhet', '3200', '01797338420', 'souravkairy420@gmail.com', NULL),
(14, 15, 'Akhlak', 'Ashik', 'Bangladesh', 'Tilagor - Ambarkhana Road', 'sylhet', '3200', '01797338420', 'souravkairy420@gmail.com', 'please make it qk...'),
(15, 16, 'Hasnat', 'khan', 'italy', 'italy', 'italy', '321455', '453546466', 'souravkairy420@gmail.com', NULL),
(16, 17, 'Sourav', 'Kairy', 'Bangladesh', '17/A Anamika , Tilagor - Ambarkhana Road', 'sylhet', '3200', '+8801797338420', 'souravkairy420@gmail.com', NULL),
(17, 18, 'Taher', 'Abu', 'Bangladesh', 'Tilagor - Ambarkhana Road', 'sylhet', '3200', '01313721939', 'taher@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `main_logo`, `facebook`, `linkedin`, `twitter`, `pinterest`, `email`, `phone`, `banner1`, `banner2`, `address`, `status`) VALUES
(2, 'public/product_image/logo.png', 'https://www.facebook.com/souravkairy.arpon/', 'https://www.facebook.com/souravkairy.arpon/', 'https://www.facebook.com/souravkairy.arpon/', 'https://www.facebook.com/souravkairy.arpon/', 'info@ogani.com', '01797338420', 'public/product_image/bn1.jpg', 'public/product_image/1684362654830643.jpg', 'Tilagor - Ambarkhana Road', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `sub_category_name`, `status`) VALUES
(2, 16, 'Demo sub category', 1),
(3, 19, 'Fresh Berries', 1),
(4, 18, 'Fresh Onion', 1),
(5, 19, 'Papayaya & Crisps', 1),
(6, 18, 'Oatmeal', 1),
(7, 19, 'Fresh Bananas', 1),
(8, 19, 'Fresh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(233) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `social_id`, `social_type`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Sourav Kairy', 'souravkairy42@gmail.com', NULL, '$2y$10$GH52RVGxDIa0Mv/2qDxrZO4gQzipdBaqEOHWGttKLF2EN/cZk.bA.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 14:23:13', '2020-11-03 14:23:13'),
(7, 'Sourav Kairy Arpon', 'souravkairy420@gmail.com', NULL, 'eyJpdiI6IkFXT0g1aVBUNEFZajdhazFvK2FmcHc9PSIsInZhbHVlIjoiTVRORDBMRU1YejRIakpVQjdWa2kwQzdFTThSVVY4VDBtQitGYlhXVWR1ND0iLCJtYWMiOiJmMGY1ODc2Zjc2MzFkNjgyNGY4NzFhOGU0MDVkYmE0ZWZkNWJkNmVjOTZmNmZlNTA4YzVlZGMxYjUyZDgzMTg0In0=', '2719715064948350', 'facebook', NULL, NULL, NULL, NULL, NULL, '2020-11-18 14:38:30', '2020-11-18 14:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `status`) VALUES
(13, 1, 2, 1),
(14, 7, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_d_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`sh_id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_d_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `sh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
