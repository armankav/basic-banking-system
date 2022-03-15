-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 02:23 PM
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
-- Database: `contactus`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sno` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(22) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sno`, `name`, `email`, `message`, `date`) VALUES
(64, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(65, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(66, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(67, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(68, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(69, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(70, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(71, 'Arman', 'cmpunkgts@gmail.com', 'ssss', '2022-03-14'),
(72, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(73, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(74, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(75, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(76, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(77, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(78, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(79, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(80, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(81, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(82, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(83, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(84, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(85, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(86, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(87, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(88, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(89, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(90, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(91, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(92, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(93, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(94, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(95, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(96, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(97, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(98, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(99, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(100, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(101, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(102, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(103, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(104, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(105, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(106, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(107, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(108, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(109, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(110, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(111, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(112, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(113, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(114, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(115, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(116, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(117, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(118, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(119, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(120, 'Arman', 'arman.21910271@viit.ac', 'bbb', '2022-03-14'),
(121, 'Arman', 'cmpunkgts@gmail.com', 'aaaa', '2022-03-15'),
(122, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(123, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(124, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(125, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(126, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(127, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(128, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(129, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(130, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(131, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(132, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(133, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(134, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(135, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(136, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(137, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(138, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(139, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(140, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(141, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(142, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(143, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(144, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(145, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(146, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(147, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(148, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(149, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(150, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(151, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(152, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(153, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(154, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(155, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(156, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(157, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15'),
(158, 'fff', 'sahil@gmail.com', 'aa', '2022-03-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `sno` (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
