-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2025 at 08:10 AM
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
-- Database: `tea_diary`
--

-- --------------------------------------------------------

--
-- Table structure for table `v_items`
--

CREATE TABLE `v_items` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_items`
--

INSERT INTO `v_items` (`id`, `seller_id`, `item_name`, `item_price`) VALUES
(1, 2, 'Product Two', 5000.00),
(2, 2, 'Product Three', 700.00),
(3, 3, 'New Product', 2000.00),
(4, 3, 'New Item', 300.00);

-- --------------------------------------------------------

--
-- Table structure for table `v_orders`
--

CREATE TABLE `v_orders` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_orders`
--

INSERT INTO `v_orders` (`id`, `seller_id`, `total_amount`, `order_date`) VALUES
(1, 2, 50.00, '2025-10-09 11:58:01'),
(2, 2, 50.00, '2025-10-09 11:58:15'),
(3, 2, 5.00, '2025-10-09 12:01:07'),
(4, 3, 2000.00, '2025-10-09 18:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `v_order_items`
--

CREATE TABLE `v_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_order_items`
--

INSERT INTO `v_order_items` (`id`, `order_id`, `item_id`, `quantity`, `price`) VALUES
(1, 1, 1, 3, 10.00),
(3, 2, 1, 3, 10.00),
(5, 3, 1, 3, 10.00),
(6, 3, 2, 3, 25.00),
(7, 4, 1, 2, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `v_sellers`
--

CREATE TABLE `v_sellers` (
  `id` int(11) NOT NULL,
  `seller_name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_sellers`
--

INSERT INTO `v_sellers` (`id`, `seller_name`, `contact`, `address`) VALUES
(2, 'Vaishvi', '1234554321', 'India\r\n'),
(3, 'Saumya', '9664656109', 'Germany');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `v_items`
--
ALTER TABLE `v_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `v_orders`
--
ALTER TABLE `v_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `v_order_items`
--
ALTER TABLE `v_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `v_sellers`
--
ALTER TABLE `v_sellers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `v_items`
--
ALTER TABLE `v_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `v_orders`
--
ALTER TABLE `v_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `v_order_items`
--
ALTER TABLE `v_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `v_sellers`
--
ALTER TABLE `v_sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `v_items`
--
ALTER TABLE `v_items`
  ADD CONSTRAINT `v_items_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `v_sellers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `v_orders`
--
ALTER TABLE `v_orders`
  ADD CONSTRAINT `v_orders_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `v_sellers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `v_order_items`
--
ALTER TABLE `v_order_items`
  ADD CONSTRAINT `v_order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `v_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `v_order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `v_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
