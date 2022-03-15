-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 02:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `sno` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(22) NOT NULL,
  `balance` bigint(3) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`sno`, `name`, `email`, `balance`, `date`) VALUES
(4, 'John Cena', 'john@gmail.com', 6000, '2022-03-15'),
(5, 'Randy Orton', 'randy@gmail.com', 12000, '2022-03-15'),
(6, 'Dave Batista', 'dave@gmail.com', 2000, '2022-03-15'),
(12, 'CM Punk', 'cm@gmail.com', 5000, '2022-03-15'),
(13, 'Triple H', 'triple@gmail.com', 8000, '2022-03-15'),
(14, 'The Undertaker', 'undertaker@gmail.com', 15000, '2022-03-15'),
(15, 'Brock Lesnar', 'brock@gmail.com', 9000, '2022-03-15'),
(16, 'Roman Reigns', 'roman@gmail.com', 11000, '2022-03-15'),
(17, 'Daniel Bryan', 'daniel@gmail.com', 12000, '2022-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `sender` varchar(22) NOT NULL,
  `receiver` varchar(22) NOT NULL,
  `amount` bigint(3) NOT NULL,
  `status` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`sender`, `receiver`, `amount`, `status`) VALUES
('randy@gmail.com', 'cm@gmail.com', 5000, 'succeed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
