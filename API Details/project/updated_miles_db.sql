-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2026 at 12:10 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `v_category_images`
--

CREATE TABLE `v_category_images` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_auction_results`
--
ALTER TABLE `v_auction_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_bids`
--
ALTER TABLE `v_bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_category`
--
ALTER TABLE `v_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_category_attributes`
--
ALTER TABLE `v_category_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_category_images`
--
ALTER TABLE `v_category_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_miles_orders`
--
ALTER TABLE `v_miles_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_miles_order_items`
--
ALTER TABLE `v_miles_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_products`
--
ALTER TABLE `v_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_product_attributes`
--
ALTER TABLE `v_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_product_reviews`
--
ALTER TABLE `v_product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_users`
--
ALTER TABLE `v_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
