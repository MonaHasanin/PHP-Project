-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 07:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `date` date DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `Content` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `active` varchar(100) NOT NULL,
  `Image` blob NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `bev_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`date`, `title`, `Content`, `Price`, `active`, `Image`, `category_name`, `bev_id`) VALUES
(NULL, 'Iced Americano ', 'Here is a short description for the first item. Wave Cafe Template is provided by Tooplate.', 10, 'on', 0x696365642d616d65726963616e6f2e706e67, 'Iced Coffee', 2),
(NULL, 'Iced Cappuccino', 'Here is a list of 4 items or add more. You can use this template for commercial purposes.', 12, 'on', 0x696365642d63617070756363696e6f2e706e67, 'Iced Coffee', 3),
(NULL, 'Iced Espresso', 'You are not permitted to redistribute this template ZIP file on any other template websites.', 14, 'on', 0x696365642d657370726573736f2e706e67, 'Iced Coffee', 4),
(NULL, 'Iced Latte', 'Contents are organized into 3 tabs. Please contact Tooplate if you have anything to ask.', 11, 'on', 0x696365642d6c617474652e706e67, 'Iced Coffee', 5),
(NULL, 'Hot coffee', 'Contents', 12, 'on', 0x696365642d6c617474652e706e67, 'Hot Coffee', 6),
(NULL, 'Fruit Juice', 'Fruit Juice Contents', 13, 'on', 0x696365642d6c617474652e706e67, 'Fruit Juice', 7);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_name` varchar(100) NOT NULL,
  `cust_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_name`, `cust_id`) VALUES
(' Hot Coffee ', 7),
(' Iced Coffee ', 6),
('Fruit Juice', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `date` date DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cust_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`date`, `full_name`, `username`, `email`, `active`, `password`, `cust_id`) VALUES
(NULL, 'mona', 'NewUser', '111@gmail.com', 'on', '123', 1),
(NULL, 'cust_id', 'cust_id', 'cust_id@cust_id.com', 'yes', '13', 38),
(NULL, 'John Doe', 'Mona Galal', 'NewUser@gmail.com', 'on', '123', 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`bev_id`,`category_name`),
  ADD KEY `category_name` (`category_name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `category_name` (`category_name`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `cust_id_2` (`cust_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `active` (`active`),
  ADD KEY `date` (`date`),
  ADD KEY `date_2` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `bev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cust_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `cust_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
