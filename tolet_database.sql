-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2017 at 08:19 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tolet_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE IF NOT EXISTS `comment_table` (
  `COMMENT_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `COMMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `confirmation_table`
--

CREATE TABLE IF NOT EXISTS `confirmation_table` (
  `CONFIRMATION_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `VALIDATION_TEXT` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_image_table`
--

CREATE TABLE IF NOT EXISTS `post_image_table` (
  `IMAGE_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `IMAGE_LINK` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_image_table`
--

INSERT INTO `post_image_table` (`IMAGE_ID`, `POST_ID`, `IMAGE_LINK`) VALUES
(22, 83, '../post_picture/image_83_100.jpg'),
(23, 83, '../post_picture/image_83_101.jpg'),
(24, 83, '../post_picture/image_83_102.jpg'),
(25, 84, '../post_picture/image_84_100.jpg'),
(26, 85, '../post_picture/image_85_100.jpg'),
(27, 86, '../post_picture/image_86_100.jpg'),
(28, 87, '../post_picture/image_87_100.jpg'),
(29, 88, '../post_picture/image_88_100.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post_table`
--

CREATE TABLE IF NOT EXISTS `post_table` (
  `POST_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `DETAILS` text NOT NULL,
  `ADDRESS` text NOT NULL,
  `RENT` int(8) NOT NULL,
  `DATE_TIME` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_table`
--

INSERT INTO `post_table` (`POST_ID`, `USER_ID`, `TITLE`, `DETAILS`, `ADDRESS`, `RENT`, `DATE_TIME`) VALUES
(83, 36, ' TOLET !!! TOLET !!! TOLET !!!', '       4 bed rooms, 3 bathroos,1 kitchen, 1 balcony       ', 'road15,Nikunjo-1,Dhaka.', 6000, '2017-08-15 20:02:27 pm'),
(84, 28, '1 rommate needed', 'wifi,attcahed balcony + bathroom ', 'c block,road - 15,Basundhara,Dhaka.', 4500, '2017-08-15 20:14:11 pm'),
(85, 27, '1 male rommat needed ', 'neat and clean room, 1 balcony ,1 bathroom', 'c block,road - 15,Basundhara,Dhaka.', 5000, '2017-08-15 20:17:57 pm'),
(86, 37, '1 Gym room', 'trademil,cycle', 'kuratoli,Basundhara,Dhaka.', 2000, '2017-08-15 20:23:59 pm'),
(87, 26, '1 female rommate needed', 'attached balcony ,wifi', '15 no road, house no 2, 5th floor,Nikunjo-2,Dhaka.', 3500, '2017-08-16 18:56:17 pm'),
(88, 40, 'TOLET an apartment', '2 room', '19 no road,Farmgate,Dhaka.', 3500, '2017-08-16 20:08:59 pm');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_data_table`
--

CREATE TABLE IF NOT EXISTS `user_profile_data_table` (
  `PROFILE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `IMAGE` text,
  `ADDRESS` text
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile_data_table`
--

INSERT INTO `user_profile_data_table` (`PROFILE_ID`, `USER_ID`, `PHONE_NO`, `IMAGE`, `ADDRESS`) VALUES
(5, 24, NULL, NULL, NULL),
(6, 25, NULL, NULL, NULL),
(7, 26, NULL, '../profile_picture/26.jpg', NULL),
(8, 27, NULL, '../profile_picture/27.jpg', NULL),
(9, 28, NULL, '../profile_picture/28.jpg', NULL),
(13, 35, NULL, NULL, NULL),
(14, 36, '01828422676', '../../profile_picture/36.jpg', NULL),
(15, 37, NULL, '../profile_picture/37.jpg', NULL),
(16, 38, '01814666625', '../profile_picture/38.jpg', NULL),
(17, 39, NULL, NULL, NULL),
(18, 40, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `USER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `CREATION_DATE_TIME` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`USER_ID`, `FIRST_NAME`, `LAST_NAME`, `USER_NAME`, `USER_TYPE`, `EMAIL`, `PASSWORD`, `CREATION_DATE_TIME`) VALUES
(24, 'Ishtiak', 'Hasan', 'ishti20', 'AUTH_USER', 'ishtiak.hasan10@gmail.com', '12345', '2017-08-11 12:11:51 pm'),
(25, 'Nigga', 'Rakhi', 'Rakhi20', 'AUTH_USER', 'rakhi20@gmail.com', '12345', '2017-08-11 12:12:41 pm'),
(26, 'Robi', 'Ratno', 'robi20', 'AUTH_USER', 'robi20@gmail.com', '12345', '2017-08-11 12:13:17 pm'),
(27, 'Urme', 'jaman', 'urme20', 'AUTH_USER', 'jamanvai@gmail.com', '12345', '2017-08-11 12:14:20 pm'),
(28, 'Susmita', 'Anchal', 'fozli20', 'AUTH_USER', 'fozli20@gmail.com', '12345', '2017-08-11 12:15:04 pm'),
(35, 'shanto', 'khan', 'khan20', 'ADMIN_USER', 'khan@gmail.com', '12345', '2017-08-11 16:53:55 pm'),
(36, 'Shihab', 'Saadi', 'saadi20', 'ADMIN_USER', 'saadi20@gmail.com', '12345', '2017-08-11 16:59:08 pm'),
(37, 'Jaber', 'Hossain', 'bodybuilder', 'AUTH_USER', 'jaber.fatty@gmailcom', '12345', '2017-08-16 00:20:49 am'),
(38, 'Saquib', 'Sina', 'sina20', 'AUTH_USER', 'sina20@gmail.com', '12345', '2017-08-16 23:17:50 pm'),
(39, 'seam', 'hossain', 'seam20', 'ADMIN_USER', 'seam20@gmail.com', '12345', '2017-08-16 23:28:30 pm'),
(40, 'biron', 'khan', 'biron20', 'ADMIN_USER', 'biron20@gmail.com', '12345', '2017-08-16 23:31:15 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`COMMENT_ID`),
  ADD KEY `POST_ID` (`POST_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `confirmation_table`
--
ALTER TABLE `confirmation_table`
  ADD PRIMARY KEY (`CONFIRMATION_ID`),
  ADD UNIQUE KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `post_image_table`
--
ALTER TABLE `post_image_table`
  ADD PRIMARY KEY (`IMAGE_ID`),
  ADD KEY `POST_ID` (`POST_ID`);

--
-- Indexes for table `post_table`
--
ALTER TABLE `post_table`
  ADD PRIMARY KEY (`POST_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `USER_ID_2` (`USER_ID`),
  ADD KEY `USER_ID_3` (`USER_ID`);

--
-- Indexes for table `user_profile_data_table`
--
ALTER TABLE `user_profile_data_table`
  ADD PRIMARY KEY (`PROFILE_ID`),
  ADD UNIQUE KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `ADMIN_USER_NAME` (`USER_NAME`),
  ADD UNIQUE KEY `ADMIN_EMAIL` (`EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `confirmation_table`
--
ALTER TABLE `confirmation_table`
  MODIFY `CONFIRMATION_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_image_table`
--
ALTER TABLE `post_image_table`
  MODIFY `IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `post_table`
--
ALTER TABLE `post_table`
  MODIFY `POST_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `user_profile_data_table`
--
ALTER TABLE `user_profile_data_table`
  MODIFY `PROFILE_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD CONSTRAINT `fk_comTable_pTable` FOREIGN KEY (`POST_ID`) REFERENCES `post_table` (`POST_ID`),
  ADD CONSTRAINT `fk_comTable_uTable` FOREIGN KEY (`USER_ID`) REFERENCES `user_table` (`USER_ID`);

--
-- Constraints for table `confirmation_table`
--
ALTER TABLE `confirmation_table`
  ADD CONSTRAINT `fk_Utable_ConTable` FOREIGN KEY (`USER_ID`) REFERENCES `user_table` (`USER_ID`);

--
-- Constraints for table `post_image_table`
--
ALTER TABLE `post_image_table`
  ADD CONSTRAINT `fk_pImgTable_pTable` FOREIGN KEY (`POST_ID`) REFERENCES `post_table` (`POST_ID`);

--
-- Constraints for table `post_table`
--
ALTER TABLE `post_table`
  ADD CONSTRAINT `fk_pTable_uTable` FOREIGN KEY (`USER_ID`) REFERENCES `user_table` (`USER_ID`);

--
-- Constraints for table `user_profile_data_table`
--
ALTER TABLE `user_profile_data_table`
  ADD CONSTRAINT `fk_Utable_UProTable` FOREIGN KEY (`USER_ID`) REFERENCES `user_table` (`USER_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
