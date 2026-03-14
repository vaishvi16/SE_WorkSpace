-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2026 at 10:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miles_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `v_auctions`
--

CREATE TABLE `v_auctions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` enum('upcoming','active','ended') DEFAULT 'upcoming',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_auctions`
--

INSERT INTO `v_auctions` (`id`, `product_id`, `start_time`, `end_time`, `status`, `created_at`) VALUES
(1, 5, '2026-02-07 12:52:13', '2026-02-07 12:53:43', 'ended', '2026-02-07 17:22:13'),
(2, 5, '2026-02-07 12:54:30', '2026-02-07 12:56:00', 'ended', '2026-02-07 17:24:30'),
(3, 5, '2026-02-11 08:25:39', '2026-02-11 08:27:09', 'ended', '2026-02-11 12:55:39'),
(4, 5, '2026-02-11 08:51:42', '2026-02-11 08:53:12', 'ended', '2026-02-11 13:21:42'),
(5, 5, '2026-02-11 09:02:06', '2026-02-11 09:03:36', 'ended', '2026-02-11 13:32:06'),
(6, 6, '2026-02-11 14:08:59', '2026-02-11 14:10:29', 'ended', '2026-02-11 18:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `v_auction_results`
--

CREATE TABLE `v_auction_results` (
  `id` int(11) NOT NULL,
  `auction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `winner_user_id` int(11) NOT NULL,
  `winning_bid` decimal(10,2) NOT NULL,
  `ended_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_auction_results`
--

INSERT INTO `v_auction_results` (`id`, `auction_id`, `product_id`, `winner_user_id`, `winning_bid`, `ended_at`) VALUES
(1, 0, 5, 3, 20.00, '2026-02-07 17:24:05'),
(2, 0, 5, 1, 7.00, '2026-02-11 12:54:51'),
(3, 4, 5, 4, 5.00, '2026-02-11 13:31:53'),
(4, 5, 5, 1, 11.00, '2026-02-11 13:33:48'),
(5, 6, 6, 3, 5.00, '2026-02-11 18:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `v_bids`
--

CREATE TABLE `v_bids` (
  `id` int(11) NOT NULL,
  `auction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bid_amount` decimal(10,2) DEFAULT NULL,
  `bid_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_bids`
--

INSERT INTO `v_bids` (`id`, `auction_id`, `product_id`, `user_id`, `bid_amount`, `bid_time`) VALUES
(1, 1, 5, 1, 2.00, '2026-02-07 11:52:20'),
(2, 1, 5, 3, 5.00, '2026-02-07 11:52:29'),
(3, 1, 5, 4, 7.00, '2026-02-07 11:52:36'),
(4, 1, 5, 1, 9.00, '2026-02-07 11:52:42'),
(5, 1, 5, 3, 12.00, '2026-02-07 11:52:49'),
(6, 1, 5, 4, 18.00, '2026-02-07 11:53:00'),
(7, 1, 5, 3, 20.00, '2026-02-07 11:53:08'),
(8, 2, 5, 1, 2.00, '2026-02-07 11:54:44'),
(9, 2, 5, 3, 4.00, '2026-02-07 11:54:55'),
(10, 2, 5, 1, 7.00, '2026-02-07 11:55:02'),
(11, 3, 5, 1, 2.00, '2026-02-11 07:26:11'),
(12, 3, 5, 3, 7.00, '2026-02-11 07:26:28'),
(13, 3, 5, 1, 8.00, '2026-02-11 07:26:36'),
(14, 3, 5, 3, 16.00, '2026-02-11 07:26:47'),
(15, 4, 5, 3, 1.00, '2026-02-11 07:51:50'),
(16, 4, 5, 1, 3.00, '2026-02-11 07:51:56'),
(17, 4, 5, 3, 4.00, '2026-02-11 07:52:02'),
(18, 4, 5, 4, 5.00, '2026-02-11 07:52:08'),
(19, 5, 5, 1, 5.00, '2026-02-11 08:02:20'),
(20, 5, 5, 3, 8.00, '2026-02-11 08:02:27'),
(21, 5, 5, 1, 11.00, '2026-02-11 08:02:41'),
(22, 6, 6, 1, 3.00, '2026-02-11 13:09:16'),
(23, 6, 6, 3, 5.00, '2026-02-11 13:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `v_category`
--

CREATE TABLE `v_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_category`
--

INSERT INTO `v_category` (`id`, `name`, `parent_id`, `seller_id`) VALUES
(1, 'Beauty', NULL, 1),
(3, 'Fashion', NULL, 1),
(4, 'Shoes', NULL, 1),
(5, 'Clothes', NULL, 3),
(6, 'Boys Clothes', NULL, 4),
(7, 'Beauty ', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `v_category_attributes`
--

CREATE TABLE `v_category_attributes` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `attribute_type` enum('text','number','dropdown') DEFAULT 'text',
  `attribute_options` text DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_category_attributes`
--

INSERT INTO `v_category_attributes` (`id`, `category_id`, `attribute_name`, `attribute_type`, `attribute_options`, `is_required`) VALUES
(1, 5, 'Color', 'dropdown', 'Black,Red,Blue', 1),
(2, 5, 'Size', 'dropdown', 'S,M,L,XL', 1),
(3, 6, 'Color', 'dropdown', 'Black,Red,Blue', 1),
(4, 6, 'Size', 'dropdown', 'S,M,L,XL', 1),
(5, 4, 'Size', 'dropdown', '6,7,8,9,10,11', 1),
(6, 4, 'Color', 'dropdown', 'Black,White,Grey,Blue', 1),
(7, 1, 'Shade', 'dropdown', 'Light,Medium,Dark', 1),
(8, 1, 'Skin Type', 'dropdown', 'Dry,Oily,Combination,Normal', 0),
(9, 3, 'Material', 'text', NULL, 0),
(10, 3, 'Size', 'dropdown', 'S,M,L,XL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `v_category_images`
--

CREATE TABLE `v_category_images` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_category_images`
--

INSERT INTO `v_category_images` (`id`, `category_id`, `image`) VALUES
(1, 3, '1766167105_1765459210_img33.jpeg'),
(2, 3, '1766167105_1765459210_img34.jpeg'),
(3, 3, '1766167105_1765459210_img35.jpeg'),
(4, 3, '1766167105_1765459210_img36.jpeg'),
(5, 3, '1766167105_1765459210_img38.jpeg'),
(6, 3, '1766167105_1765459210_img42.jpeg'),
(7, 3, '1766167105_1765459210_img43.jpeg'),
(8, 1, '1766167641_img11.jpeg'),
(9, 1, '1766167641_img10.jpeg'),
(10, 1, '1766167641_img9.jpeg'),
(11, 1, '1766167641_img7.jpeg'),
(12, 1, '1766167641_img6.jpeg'),
(13, 1, '1766167641_img5.jpeg'),
(14, 1, '1766167642_img4.jpeg'),
(15, 1, '1766167642_img3.jpeg'),
(16, 1, '1766167642_img2.jpeg'),
(17, 1, '1766167642_img1.jpg'),
(18, 4, '1766220960_1765459029_shoes.webp'),
(19, 4, '1766220960_1765459029_shoes_1.webp'),
(20, 4, '1766220960_1765459029_shoes_2.webp'),
(21, 4, '1766220960_1765459029_shoes_3.webp'),
(22, 4, '1766220960_1765459029_shoes_4.webp'),
(23, 4, '1766220960_1765459029_shoes_5.webp'),
(24, 4, '1766220960_1765459029_shoes_6.webp'),
(25, 5, '1766221150_1765459210_img46.jpeg'),
(26, 5, '1766221150_1765459210_img47.jpeg'),
(27, 5, '1766221150_1765459210_img48.jpeg'),
(28, 5, '1766221150_1765459298_img12.jpeg'),
(29, 5, '1766221150_1765459298_img13.jpeg'),
(30, 5, '1766221150_1765459298_img14.jpeg'),
(31, 5, '1766221150_1765459298_img15.jpeg'),
(32, 5, '1766221150_1765459298_img16.jpeg'),
(33, 5, '1766221150_1765459298_img17.jpeg'),
(34, 5, '1766221150_1765459298_img18.jpeg'),
(35, 5, '1766221150_1765459298_img19.jpeg'),
(36, 5, '1766221150_1765459298_img20.jpeg'),
(37, 5, '1766221150_1765459298_img21.jpeg'),
(38, 5, '1766221150_1765459298_img22.jpeg'),
(39, 5, '1766221150_1765459363_img2.jpeg'),
(40, 5, '1766221150_1765459363_img3.jpeg'),
(41, 6, '1766221242_img23.jpeg'),
(42, 6, '1766221242_img24.jpeg'),
(43, 6, '1766221242_img25.jpeg'),
(44, 6, '1766221242_img26.jpeg'),
(45, 6, '1766221242_img27.jpeg'),
(46, 6, '1766221242_img28.jpeg'),
(47, 6, '1766221242_img29.jpeg'),
(48, 6, '1766221242_img30.jpeg'),
(49, 6, '1766221242_img31.jpeg'),
(50, 7, '1766221286_1765459112_beauty.jpg'),
(51, 7, '1766221286_1765459112_beauty.webp'),
(52, 7, '1766221286_1765459112_beauty_1.webp'),
(53, 7, '1766221286_1765459112_beauty_2.webp'),
(54, 7, '1766221286_1765459112_beauty_3.webp'),
(55, 7, '1766221286_1765459112_beauty_4.webp'),
(56, 7, '1766221286_1765459112_beauty_5.webp');

-- --------------------------------------------------------

--
-- Table structure for table `v_miles_orders`
--

CREATE TABLE `v_miles_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `shipping_type` varchar(20) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT 'pending',
  `order_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_miles_orders`
--

INSERT INTO `v_miles_orders` (`id`, `user_id`, `address`, `phone`, `payment_method`, `shipping_type`, `total_amount`, `order_status`, `order_time`) VALUES
(4, 3, '', '', '', NULL, NULL, 'pending', '2026-01-09 13:08:42'),
(8, 3, '', '', '', NULL, NULL, 'pending', '2026-01-19 19:04:46'),
(10, 3, '', '', '', NULL, NULL, 'pending', '2026-01-19 20:05:15'),
(11, 3, '', '', '', NULL, NULL, 'pending', '2026-01-19 20:09:03'),
(12, 4, '', '', '', NULL, NULL, 'pending', '2026-01-19 20:10:03'),
(13, 4, '', '', '', NULL, NULL, 'cancelled', '2026-01-20 12:52:42'),
(14, 4, 'test ', '1234567890', 'cod', 'standard', 2000.00, 'pending', '2026-01-20 13:29:37'),
(15, 4, 'Jalaram - 2, Rajkot, 360007, India', '+917878751127', 'cod', 'standard', 3000.00, 'delivered', '2026-01-20 14:19:57'),
(16, 1, 'test ', '1234567890', 'cod', 'standard', 2000.00, 'pending', '2026-01-20 14:22:53'),
(17, 1, 'Jalaram - 2, Rajkot, 360007, India', '+919664656109', 'card', 'standard', 3180.00, 'shipped', '2026-01-21 14:57:03'),
(18, 1, 'testing address', '1234567890', 'cod', 'standard', 13299.00, 'pending', '2026-02-13 12:48:33'),
(19, 1, 'testing address', '1234567890', 'cod', 'express', 10999.00, 'pending', '2026-02-13 12:49:18'),
(20, 1, 'testing address', '1234567890', 'cod', 'express', 10999.00, 'pending', '2026-02-13 12:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `v_miles_order_items`
--

CREATE TABLE `v_miles_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_miles_order_items`
--

INSERT INTO `v_miles_order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 10, 5, 1),
(2, 10, 6, 1),
(3, 10, 8, 1),
(4, 11, 5, 1),
(5, 11, 6, 1),
(6, 11, 8, 1),
(7, 12, 5, 1),
(8, 12, 6, 1),
(9, 13, 11, 1),
(10, 14, 5, 3),
(11, 14, 6, 1),
(12, 15, 5, 0),
(13, 16, 5, 3),
(14, 16, 6, 1),
(15, 17, 10, 1),
(16, 17, 8, 2),
(17, 18, 5, 3),
(18, 18, 6, 1),
(19, 18, 12, 1),
(20, 19, 5, 3),
(21, 19, 12, 1),
(22, 20, 5, 3),
(23, 20, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `v_products`
--

CREATE TABLE `v_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `bid_status` enum('available','active','sold','inactive') DEFAULT 'available',
  `created_at` datetime DEFAULT current_timestamp(),
  `standard_delivery_days` varchar(50) DEFAULT NULL,
  `express_delivery_days` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_products`
--

INSERT INTO `v_products` (`id`, `user_id`, `cat_id`, `name`, `description`, `image`, `price`, `bid_status`, `created_at`, `standard_delivery_days`, `express_delivery_days`) VALUES
(5, 3, 4, 'White sneakers', 'Nike ', '1766389300_1765459029_shoes_1.webp', 3000, 'sold', '2026-02-13 00:17:13', '', ''),
(6, 1, 6, 'Sweatshirt', 'Colors available', '1766390160_1765459363_img5.jpeg', 3500, 'sold', '2026-02-13 00:17:13', '', ''),
(7, 4, 1, 'Foundation', 'Lakme product', '1766390898_1765459112_beauty_4.webp', 999, 'sold', '2026-02-13 00:17:13', '', ''),
(8, 3, 3, 'Crop top', 'Full sleeves top ', '1766390881_1765459298_img18.jpeg', 590, 'available', '2026-02-13 00:17:13', '', ''),
(9, 1, 7, 'Face pan stick', 'Herbal product ', '1766390804_1765459112_beauty.webp', 1200, 'available', '2026-02-13 00:17:13', '', ''),
(10, 3, 6, 'Hover coat', 'Long coat', '1766390761_1766221242_img25.jpeg', 2000, 'available', '2026-02-13 00:17:13', '', ''),
(11, 4, 3, 'Frock', 'Kids size available', '1766390645_1765459210_img33.jpeg', 650, 'sold', '2026-02-13 00:17:13', '', ''),
(12, 3, 6, 'Cargo Pants', 'Cargo pants combine rugged functionality with modern street style, making them a must-have for everyday wear. Designed with spacious utility pockets and a comfortable fit, they offer both practicality and effortless style. Perfect for those who want versatility, durability, and trend-forward fashion in one piece.\n', '1771070081_1765459298_img26.jpeg', 799, 'available', '2026-02-13 12:46:13', '5-7 days', '1-2 days'),
(13, 1, 3, 'Ring', 'Elegant and timeless, this ring adds the perfect touch of sparkle to any look. Crafted with precision and designed to shine, Its ideal for everday elegance or special moments. \n\nA beautiful piece that speaks of style, love and lasting quality. ', '1771327580_e0ad16e4-86aa-47b3-af8d-0b180275b6e3818339062215432200.jpg', 220, 'inactive', '2026-02-17 16:56:20', '5-7 days', '1-2 days'),
(14, 1, 7, 'Laptop', 'ncejdkdkdkdm\nkckdkdkskddk', '1771336014_4757257a-6569-452a-82f0-bdb81ad71d0c625528304272746461.jpg', 5000, 'inactive', '2026-02-17 19:16:54', '5-7 days', '1-2 days'),
(15, 3, 6, 'Mobile Phone', 'Experience next-level performance with a smartphone designed to match your speed and style.\nCapture stunning moments, enjoy seamless multitasking, and stay connected all day long.\nSmart, powerful, and built to elevate your everyday life. \n', '1771487959_1765458953_electronics_2.webp', 1799, 'available', '2026-02-19 13:29:19', '5-7 days', '1-2 days'),
(16, 1, 4, 'charger', 'Stay powered all day with lightning fast charging that keeps up with your busy life. \n\nBuilt for speed, safety and durability. The perfect charger for unstoppable performance. Experience rapid, reliable power that keeps your world connected without interution. ', '1771493097_3074c401-0b19-404b-b65c-19da7c9f20c26165499883813003155.jpg', 350, 'inactive', '2026-02-19 14:54:57', '5-7 days', '1-2 days'),
(17, 1, 1, 'Cream', 'Experience the ultimate skin hydration with our rich, nourishing cream. ', '1771500516_d78e236b-793d-419c-b855-ca2cbe6b76f63635469454090061707.jpg', 499, 'inactive', '2026-02-19 16:58:36', '5-7 days', '1-2 days'),
(18, 1, 5, 'Saree', 'Orange saree with full sleeves blouse will give you elegant look. ', '1771501152_30efd16b-23a2-49b9-a3f8-ab7c783c40bf-1_all_9.webp', 4000, 'inactive', '2026-02-19 17:09:12', '5-7 days', '1-2 days'),
(19, 3, 4, 'Sneaker Shoes', 'Step into confidence with our latest shoe collection — where comfort meets cutting-edge style. Designed for everyday performance and standout looks, these shoes elevate every step you take. Walk bold. Walk unstoppable.\n', '1771576973_1765459029_shoes_3.webp', 1799, 'available', '2026-02-20 14:12:53', '5-7 days', '1-2 days'),
(20, 1, 5, 'Fairy Frock ', 'very good product ', '1771579229_1000013291.jpg', 800, 'inactive', '2026-02-20 14:50:29', '5-7 days', '1-2 days'),
(21, 3, 4, 'New Testing Shoes', 'Step into confidence with our latest shoe collection — where comfort meets cutting-edge style. Designed for everyday performance and standout looks, these shoes elevate every step you take. Walk bold. Walk unstoppable.\n', '1771580291_1765459029_shoes_3.webp', 799, 'available', '2026-02-20 15:08:11', '5-7 days', '1-2 days'),
(24, 1, 5, 'Jumsuit', 'Elevate your style effortlessly with our chic jumpsuits — the perfect blend of comfort and elegance. Designed for every occasion, they transition seamlessly from day to night. Step out in confidence and make a statement wherever you go.\n', '1771589351_1765459210_img47.jpeg', 3050, 'available', '2026-02-20 17:39:11', NULL, NULL),
(25, 1, 3, 'Clutcher', 'testinggggg', '1771590335_46997491-c4d0-4b96-b38c-17a915d8475b1614140145317920478.jpg', 199, 'inactive', '2026-02-20 17:55:35', NULL, NULL),
(26, 1, 4, 'testing product ', 'jcjfkcfk cndkdkel\nkcdkkd \njeoeofockrnfnfnf jfkfoekdnckrkdkdosld', '1771597504_1000003370.jpg', 360, 'inactive', '2026-02-20 19:55:04', NULL, NULL),
(31, 5, 3, 'Nail', 'kckdks djdidi\ndjsjidjdjfjfjfkfd oqqososkd jsjssk\n', '1772275840_1000020279.jpg', 280, 'inactive', '2026-02-28 16:20:40', NULL, NULL),
(32, 5, 3, 'jcdjdj', 'come dudj\nkskdkdiidkssk', '1772276779_1000020276.jpg', 360, 'inactive', '2026-02-28 16:36:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `v_product_attributes`
--

CREATE TABLE `v_product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_product_attributes`
--

INSERT INTO `v_product_attributes` (`id`, `product_id`, `attribute_id`, `attribute_value`) VALUES
(28, 25, 9, 'Plastic'),
(29, 25, 10, 'M'),
(32, 24, 1, 'Blue, Black'),
(33, 24, 2, 'L, S, XL'),
(34, 26, 5, '8,7,9,10'),
(35, 26, 6, 'Black,Grey'),
(36, 31, 9, 'jfdkdkd'),
(37, 31, 10, 'M'),
(38, 32, 9, 'chfhdjdjd'),
(39, 32, 10, 'L,M');

-- --------------------------------------------------------

--
-- Table structure for table `v_product_reviews`
--

CREATE TABLE `v_product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `review_text` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `v_users`
--

CREATE TABLE `v_users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `auth_provider` enum('manual','google','facebook','instagram') NOT NULL DEFAULT 'manual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_users`
--

INSERT INTO `v_users` (`id`, `name`, `mail`, `password`, `created_at`, `auth_provider`) VALUES
(1, 'Vaishvi', 'vaishvi@gmail.com', '$2y$10$/SUEazYirBam7o4SbGzIS.XZBClW3k1a6xcIvwOCtuaqesmWvzda6', '2025-12-19 17:39:44', 'manual'),
(3, 'Saumya', 'svaishvi@gmail.com', '', '2025-12-19 17:39:44', 'manual'),
(4, 'Adopted child', 'ac@gmail.com', '$2y$10$EhUqL1KNb0xvGAyb72oTc.VHJQ8qNlLT8TsiM.u9RhKIcfIukLXy6', '2025-12-19 17:46:04', 'manual'),
(5, 'Vaishvi Gandhi', 'vaishvigandhi07@gmail.com', '$2y$10$GFxVjKqKKEc1aSDBlv8GyeDC4jJtcjcir9Cc/qU8yosp39/cCS0a6', '2026-02-20 18:30:06', 'google');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `v_auctions`
--
ALTER TABLE `v_auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_auction_results`
--
ALTER TABLE `v_auction_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_bids`
--
ALTER TABLE `v_bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auction_id` (`auction_id`);

--
-- Indexes for table `v_category`
--
ALTER TABLE `v_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `v_category_attributes`
--
ALTER TABLE `v_category_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `v_category_images`
--
ALTER TABLE `v_category_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `v_miles_orders`
--
ALTER TABLE `v_miles_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `v_miles_order_items`
--
ALTER TABLE `v_miles_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `v_products`
--
ALTER TABLE `v_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `v_product_attributes`
--
ALTER TABLE `v_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `v_product_reviews`
--
ALTER TABLE `v_product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `v_users`
--
ALTER TABLE `v_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `v_auctions`
--
ALTER TABLE `v_auctions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `v_auction_results`
--
ALTER TABLE `v_auction_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `v_bids`
--
ALTER TABLE `v_bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `v_category`
--
ALTER TABLE `v_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `v_category_attributes`
--
ALTER TABLE `v_category_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `v_category_images`
--
ALTER TABLE `v_category_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `v_miles_orders`
--
ALTER TABLE `v_miles_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `v_miles_order_items`
--
ALTER TABLE `v_miles_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `v_products`
--
ALTER TABLE `v_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `v_product_attributes`
--
ALTER TABLE `v_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `v_product_reviews`
--
ALTER TABLE `v_product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_users`
--
ALTER TABLE `v_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `v_bids`
--
ALTER TABLE `v_bids`
  ADD CONSTRAINT `v_bids_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `v_products` (`id`),
  ADD CONSTRAINT `v_bids_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `v_users` (`id`);

--
-- Constraints for table `v_category`
--
ALTER TABLE `v_category`
  ADD CONSTRAINT `v_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `v_category` (`id`),
  ADD CONSTRAINT `v_category_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `v_users` (`id`);

--
-- Constraints for table `v_category_attributes`
--
ALTER TABLE `v_category_attributes`
  ADD CONSTRAINT `v_category_attributes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `v_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `v_category_images`
--
ALTER TABLE `v_category_images`
  ADD CONSTRAINT `fk_category_images` FOREIGN KEY (`category_id`) REFERENCES `v_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `v_miles_orders`
--
ALTER TABLE `v_miles_orders`
  ADD CONSTRAINT `v_miles_orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `v_users` (`id`);

--
-- Constraints for table `v_miles_order_items`
--
ALTER TABLE `v_miles_order_items`
  ADD CONSTRAINT `fk_order_items_order` FOREIGN KEY (`order_id`) REFERENCES `v_miles_orders` (`id`),
  ADD CONSTRAINT `fk_order_items_product` FOREIGN KEY (`product_id`) REFERENCES `v_products` (`id`);

--
-- Constraints for table `v_products`
--
ALTER TABLE `v_products`
  ADD CONSTRAINT `v_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `v_users` (`id`),
  ADD CONSTRAINT `v_products_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `v_category` (`id`);

--
-- Constraints for table `v_product_attributes`
--
ALTER TABLE `v_product_attributes`
  ADD CONSTRAINT `v_product_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `v_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `v_product_attributes_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `v_category_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `v_product_reviews`
--
ALTER TABLE `v_product_reviews`
  ADD CONSTRAINT `v_product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `v_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `v_product_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `v_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
