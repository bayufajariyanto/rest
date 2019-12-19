-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 03:22 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `category`, `price`) VALUES
(1, 'Tenda Double Layer Kap 2 org', 'Tenda', 17000),
(2, 'Tenda Double Layer Kap 3-4 org', 'Tenda', 19000),
(3, 'Tenda Bestway Kap 4-5', 'Tenda', 22000),
(4, 'Tenda Consina Kap 4 org', 'Tenda', 25000),
(5, 'Tenda Great Outdoor Kap 4-5 org', 'Tenda', 25000),
(6, 'Tenda Dhaulagiri 4 org Ultralight', 'Tenda', 30000),
(7, 'Tenda Great Outdoor Kap 5-6 org', 'Tenda', 35000),
(8, 'Tenda Great Outdoor Kap 6-8 org', 'Tenda', 35000),
(9, 'Tas Carrier 70-80 L', 'Carrier', 12500),
(10, 'Tas Carrier 60 L', 'Carrier', 10000),
(11, 'Tas Carrier 50 L', 'Carrier', 7500),
(12, 'Cover Bag', 'Other', 2500),
(13, 'Sepatu Trekking', 'Sepatu', 15000),
(14, 'Sandal Trekking', 'Sandal', 5000),
(15, 'Hammock', 'Other', 5000),
(16, 'Jacket', 'Jacket', 10000),
(17, 'Flysheet', 'Other', 7500),
(18, 'Sarung Tangan Polar', 'Other', 4000),
(19, 'Kompor Lapang', 'Cooking Set', 5000),
(20, 'Nesting / Panci', 'Cooking Set', 5000),
(21, 'Sleeping Bag', 'Other', 5000),
(22, 'Trekking Pole', 'Other', 6000),
(23, 'Matras', 'Other', 2500),
(24, 'Gaiter', 'Other', 4000),
(25, 'Headlamp / Senter', 'Lighting', 4000),
(26, 'Lampu Tenda', 'Lighting', 4000),
(27, 'Jerigen Lipat 5L', 'Other', 3000),
(28, 'Kompas', 'Other', 2500),
(29, 'Pisau Lipat', 'Other', 2500),
(30, 'hasjvd', 'sajkd', 123123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
