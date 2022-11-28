-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 04:51 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quanli`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`) VALUES
(5, 'mai', '$2y$10$4PSUo7918FK8yQthbI24G.iHwZnyCL2GotvUkCmQUv/VsgC49qyoS');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `genre_id` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_id`, `category_name`, `genre_id`) VALUES
(1, 1, 'ChuÃ´ng bÃ¡o chÃ¡y', 1),
(2, 2, 'ChuÃ´ng siÃªu vip Pro', 1),
(4, 4, 'Xiaomi Mi 8 pro', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
`id` int(255) NOT NULL,
  `cat_id` int(255) NOT NULL,
  `genre_id` int(255) NOT NULL,
  `mv_name` varchar(255) NOT NULL,
  `mv_des` varchar(255) NOT NULL,
  `mv_tag` varchar(255) NOT NULL,
  `link1` varchar(255) NOT NULL,
  `link2` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `lang` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `cat_id`, `genre_id`, `mv_name`, `mv_des`, `mv_tag`, `link1`, `link2`, `img`, `date`, `lang`, `director`, `meta_description`) VALUES
(1, 1, 1, 'chuÃ´ng siÃªu Vip pro', 'Sáº£n pháº©m cháº¥t lÆ°á»£ng cao', '', '', '', 'thumb20171206-cam-cao-phong-rot-chuc-gia-loan-tin-3000-4000-dong-kg-1.jpg', '2021-11-17', 'hÃ  Ná»™i', 'Jon Watts', '400.000'),
(2, 2, 1, 'ChuÃ´ng gá»i y tÃ¡ ST-E1', 'Nháº­p kháº©u Má»¹', '', '', '', 'thumbcam-bu-ha-tinh-1487642474431.jpg', '2021-11-17', 'Má»¹', 'Chad Stahelski', '11.200.000'),
(3, 1, 1, 'Xiaomi Mi rep100', 'Sáº£n pháº©m cháº¥t lÆ°á»£ng cao', '', '', '', 'thumbe928f3a76e9d5949f265bb9f63b9d8d0.jpg', '2021-11-11', 'Quáº£ng ChÃ¢u', 'Kevin', '2000.000'),
(4, 3, 1, 'ChÃ´ng cáº£nh bÃ¡o lÆ°u Ä‘á»™ng', 'Sáº£n pháº©m cháº¥t lÆ°á»£ng cao', '', '', '', 'thumbvai-thieu-tuoi-luc-ngan.jpg', '2021-11-13', 'ThÃ¡i Lan', 'Rajkumar Hirani', '800.000'),
(5, 4, 3, 'ChuÃ´ng Alpha 8 pro', 'Sáº£n pháº©m cháº¥t lÆ°á»£ng cao', '', '', '', 'thumbchuyen-gia-ly-giai-chuyen-dua-hau-de-nua-nam-khong-hong.jpg', '2021-11-11', 'Nháº­t ', 'Jon Watts', '70.000.000'),
(6, 5, 5, 'ChuÃ´ng bÃ¡o hiá»‡n dá»¯ liá»‡u', 'Sáº£n pháº©m cháº¥t lÆ°á»£ng cao', '', '', '', 'thumbunnamed (1).jpg', '2021-11-18', 'Há»“ ChÃ­ Minh', 'Duy Kh?i', '4000.000'),
(7, 1, 1, 'NÃºt chuÃ´ng bÃ¡o chÃ¡y', 'Sáº£n pháº©m cháº¥t lÆ°á»£ng cao', '', '', '', '11.jpg', '2021-11-25', 'HÃ²a Láº¡c', 'James Wan', '250.00');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
`id` int(255) NOT NULL,
  `genre_name` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `genreid` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genre_name`, `category_id`, `genreid`) VALUES
(1, 'Mĩ', 1, 2),
(2, 'Pháp', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `id` int(255) NOT NULL,
  `date` date NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`,`category_id`,`date`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data` (`id`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`id`) REFERENCES `category` (`id`);

--
-- Constraints for table `genre`
--
ALTER TABLE `genre`
ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`id`) REFERENCES `category` (`id`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`id`) REFERENCES `bill` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
