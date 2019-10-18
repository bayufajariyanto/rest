-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2019 at 01:31 PM
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
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `klasemen`
--

CREATE TABLE `klasemen` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `p` int(11) NOT NULL,
  `w` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `l` int(11) NOT NULL,
  `f` int(11) NOT NULL,
  `a` int(11) NOT NULL,
  `gd` int(11) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasemen`
--

INSERT INTO `klasemen` (`id`, `name`, `p`, `w`, `d`, `l`, `f`, `a`, `gd`, `pts`) VALUES
(0, '', 0, 0, 0, 0, 0, 0, 0, 0),
(1, 'Liverpool', 8, 8, 0, 0, 20, 6, 14, 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klasemen`
--
ALTER TABLE `klasemen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klasemen`
--
ALTER TABLE `klasemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
