-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2025 at 09:37 AM
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
-- Table structure for table `v_bids`
--

CREATE TABLE `v_bids` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bid_amount` int(11) NOT NULL,
  `bid_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_bids`
--

INSERT INTO `v_bids` (`id`, `product_id`, `user_id`, `bid_amount`, `bid_time`) VALUES
(1, 2, 3, 100, '2025-10-10 16:34:41'),
(2, 2, 3, 150, '2025-10-10 16:44:19'),
(3, 2, 3, 350, '2025-10-10 16:50:42');

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
(1, 'Electronics', NULL, 1),
(2, 'Shoes', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `v_miles_orders`
--

CREATE TABLE `v_miles_orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `order_status` varchar(50) DEFAULT 'pending',
  `order_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_miles_orders`
--

INSERT INTO `v_miles_orders` (`id`, `product_id`, `user_id`, `cat_id`, `order_status`, `order_time`) VALUES
(1, 2, 3, 2, 'shipped', '2025-10-11 11:08:23'),
(2, 3, 3, 2, 'cancelled', '2025-10-11 11:34:44'),
(3, 3, 3, 2, 'pending', '2025-10-13 13:04:53');

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
  `bid_status` enum('available','sold','inactive') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_products`
--

INSERT INTO `v_products` (`id`, `user_id`, `cat_id`, `name`, `description`, `image`, `price`, `bid_status`) VALUES
(2, 3, 2, 'New Item', 'Item Available', '1760097198_activity_lifecycle.jpg', 500, 'available'),
(3, 3, 2, 'Product Two', 'Nice Product', '1760095902_5_miles_logo.jpg', 200, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `v_users`
--

CREATE TABLE `v_users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_users`
--

INSERT INTO `v_users` (`id`, `name`, `mail`) VALUES
(1, 'Vaishvi', 'vaishvi@gmail.com'),
(3, 'Saumya', 'svaishvi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `v_bids`
--
ALTER TABLE `v_bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `v_category`
--
ALTER TABLE `v_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `v_miles_orders`
--
ALTER TABLE `v_miles_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `v_products`
--
ALTER TABLE `v_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cat_id` (`cat_id`);

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
-- AUTO_INCREMENT for table `v_bids`
--
ALTER TABLE `v_bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `v_category`
--
ALTER TABLE `v_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `v_miles_orders`
--
ALTER TABLE `v_miles_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `v_products`
--
ALTER TABLE `v_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `v_users`
--
ALTER TABLE `v_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `v_miles_orders`
--
ALTER TABLE `v_miles_orders`
  ADD CONSTRAINT `v_miles_orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `v_products` (`id`),
  ADD CONSTRAINT `v_miles_orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `v_users` (`id`),
  ADD CONSTRAINT `v_miles_orders_ibfk_3` FOREIGN KEY (`cat_id`) REFERENCES `v_category` (`id`);

--
-- Constraints for table `v_products`
--
ALTER TABLE `v_products`
  ADD CONSTRAINT `v_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `v_users` (`id`),
  ADD CONSTRAINT `v_products_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `v_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
