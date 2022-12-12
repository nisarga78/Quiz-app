-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 08:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcn`
--

CREATE TABLE `addcn` (
  `id` int(11) NOT NULL,
  `qf1` varchar(255) NOT NULL,
  `of1` varchar(255) NOT NULL,
  `of2` varchar(255) NOT NULL,
  `of3` varchar(255) NOT NULL,
  `of4` varchar(255) NOT NULL,
  `af1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcn`
--

INSERT INTO `addcn` (`id`, `qf1`, `of1`, `of2`, `of3`, `of4`, `af1`) VALUES
(1, 'Which of the following is not an operating system?', 'Windows', 'Linux', 'Oracle', 'DOS', 'Oracle');

-- --------------------------------------------------------

--
-- Table structure for table `addjava`
--

CREATE TABLE `addjava` (
  `id` int(11) NOT NULL,
  `qf1` varchar(255) NOT NULL,
  `of1` varchar(255) NOT NULL,
  `of2` varchar(255) NOT NULL,
  `of3` varchar(255) NOT NULL,
  `of4` varchar(255) NOT NULL,
  `af1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addjava`
--

INSERT INTO `addjava` (`id`, `qf1`, `of1`, `of2`, `of3`, `of4`, `af1`) VALUES
(1, 'Which of the following is not an operating system?', 'Windows', 'Linux', 'Oracle', 'DOS', 'Oracle');

-- --------------------------------------------------------

--
-- Table structure for table `addos`
--

CREATE TABLE `addos` (
  `id` int(11) NOT NULL,
  `qf1` varchar(255) NOT NULL,
  `of1` varchar(255) NOT NULL,
  `of2` varchar(255) NOT NULL,
  `of3` varchar(255) NOT NULL,
  `of4` varchar(255) NOT NULL,
  `af1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addos`
--

INSERT INTO `addos` (`id`, `qf1`, `of1`, `of2`, `of3`, `of4`, `af1`) VALUES
(1, 'Which of the following is not an operating system?', 'Windows', 'Linux', 'Oracle', 'DOS', 'Oracle');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `user` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `user`, `email`, `phone`, `message`) VALUES
(1, 'mrinal', 'mrinal@gmail.com', '8787878787', 'hey, this is awsome');

-- --------------------------------------------------------

--
-- Table structure for table `regist`
--

CREATE TABLE `regist` (
  `id` int(11) NOT NULL,
  `username` varchar(111) NOT NULL,
  `phone` varchar(111) NOT NULL,
  `email` varchar(112) NOT NULL,
  `password1` varchar(122) NOT NULL,
  `status` varchar(112) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regist`
--

INSERT INTO `regist` (`id`, `username`, `phone`, `email`, `password1`, `status`) VALUES
(1, 'nishu', '9155532456', 'mrinal@gmail.com', '1234', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `uans` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `question`, `uans`) VALUES
(3, '1', 'Linux\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcn`
--
ALTER TABLE `addcn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addjava`
--
ALTER TABLE `addjava`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addos`
--
ALTER TABLE `addos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regist`
--
ALTER TABLE `regist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcn`
--
ALTER TABLE `addcn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addjava`
--
ALTER TABLE `addjava`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addos`
--
ALTER TABLE `addos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `regist`
--
ALTER TABLE `regist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
