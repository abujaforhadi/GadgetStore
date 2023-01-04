-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 01:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `user_name`, `password`) VALUES
(1, 'j123', 'j123'),
(2, 'jafor', 'jafor'),
(3, 'ismail', 'ismail'),
(2, 'jafor', 'jafor'),
(3, 'ismail', 'ismail');

-- --------------------------------------------------------

--
-- Table structure for table `airbuds`
--

CREATE TABLE `airbuds` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airbuds`
--

INSERT INTO `airbuds` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'x', 'jj', 10.00, 'n', '2022-12-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Mobile', 'Samsung Galaxy A04s', 17900.00, './assets/products/s1.png', '2020-03-28 11:08:57'),
(2, 'Mobile', 'Xiaomi Redmi A1+', 11999.00, './assets/products/a3.png', '2022-12-09 13:09:17'),
(3, 'Mobile', 'Xiaomi 12 Pro', 78000.00, './assets/products/m2.png', '2020-03-28 11:08:57'),
(4, 'Mobile', 'Xiaomi Redmi 10 2022', 20400.00, './assets/products/r4.png', '2020-03-28 11:08:57'),
(5, 'Mobile', 'Realme C33', 14999.00, './assets/products/c5.png', '2022-12-17 00:00:00'),
(6, 'Mobile', 'Realme 9 Pro', 27900.00, './assets/products/r6.png', '2022-12-17 00:00:00'),
(7, 'Mobile', 'Realme Narzo 50', 24399.00, './assets/products/7.png', '2022-12-17 00:00:00'),
(8, 'Mobile', 'Realme GT Neo2', 42990.00, './assets/products/n8.png', '2022-12-17 00:00:00'),
(9, 'Mobile', 'Samsung Galaxy Z Flip4', 154999.00, './assets/products/z11.png', '2022-09-09 11:08:57'),
(10, 'Mobile', 'Samsung Galaxy F13', 20000.00, './assets/products/f13.png', '2020-03-28 11:08:57'),
(11, 'Mobile', 'Apple iPhone 14', 146999.00, './assets/products/13.png', '2020-03-28 11:08:57'),
(12, 'PowerBank', 'Verbatim 66168', 1300.00, './assets/products/p2.png', '2023-01-03 00:00:00'),
(14, 'Mobile', 'OnePlus Nord N20 SE', 18900.00, './assets/products/9.png', '2022-12-17 00:00:00'),
(15, 'PowerBank', 'Xiaomi Mi 3 Pro', 2000.00, './assets/products/p1.png', '2023-01-03 20:52:56'),
(16, 'Mobile', 'Apple iPhone 14 Pro Max', 201000.00, './assets/products/16.png', '2022-12-22 00:00:00'),
(17, 'Mobile', 'OnePlus 10 Pro 5G', 94900.00, './assets/products/o10.png', '2022-12-17 00:00:00'),
(20, 'Smartwatch', 'Amazfit T-Rex 2 GPS', 18000.00, './assets/products/w1.jpg', '2022-12-17 00:00:00'),
(21, 'Smartwatch', 'Samsung Galaxy Watch 4 ', 3300.00, './assets/watch/w2.jpg', '2022-12-17 00:00:00'),
(22, 'Smartwatch', 'Xiaomi Haylou RS4 Plus', 5400.00, './assets/watch/w3.jpg', '2022-12-17 00:00:00'),
(23, 'Smartwatch', 'Mibro Watch A1 Black', 2750.00, './assets/watch/w4.jpg', '2022-12-17 00:00:00'),
(25, 'Smartwatch', 'Huawei GT 2 Pro ', 27500.00, './assets/watch/w5.jpg', '2022-12-17 00:00:00'),
(26, 'Smartwatch', 'T500 Bluetooth Call Smart Watch', 27500.00, './assets/watch/w6.jpg', '2022-12-17 00:00:00'),
(27, 'Earbuds', 'Uiisii BT260', 1700.00, './assets/buds/1.png', '2022-12-17 00:00:00'),
(28, 'Earbuds', 'Remax TWS-16', 1750.00, './assets/buds/2.png', '2022-12-19 18:53:25'),
(29, 'Earbuds', 'Oraimo FreePods', 3300.00, './assets/buds/3.png', '2022-12-19 18:53:25'),
(30, 'Earbuds', '1MORE Omthing EO005', 2600.00, './assets/buds/4.png', '2022-12-19 18:53:25'),
(31, 'Earbuds', 'Awei T23 TWS', 1250.00, './assets/buds/5.png', '2022-12-19 18:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`, `number`, `address`) VALUES
(557, 'jafor', 'abujaforhadi1@gmail.com', '123', 1303744711, 'Dhaka'),
(2860, 'rohim', 'abujaforhffffffffffadi@gmail.com', '0011', 130717, 'Dhakawer'),
(4692, 'ismail', 'hasninehemel85@gmail.com', '1236', 139565266, 'dhaka'),
(73173, 'jafor321', 'abdulhadi.me.2010@gmail.com', '123', 1303744717, 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`cart_id`, `user_id`, `item_id`) VALUES
(29, 1, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
