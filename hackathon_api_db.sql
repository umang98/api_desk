-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2017 at 06:38 AM
-- Server version: 5.5.40-36.1
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackathon_api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_as_appointment`
--

CREATE TABLE IF NOT EXISTS `user_as_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token_no` varchar(300) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dr_name` varchar(100) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `fees` varchar(100) NOT NULL,
  `appoint_time` varchar(300) NOT NULL,
  `system_time` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `user_as_appointment`
--

INSERT INTO `user_as_appointment` (`id`, `token_no`, `full_name`, `mobile_no`, `time_date`, `dr_name`, `hospital_name`, `fees`, `appoint_time`, `system_time`) VALUES
(1, '1359717293', 'Deepak Chawla', '9694442980', '2017-03-19 08:00:11', 'doctor 1', 'hospital 1', '200', '', ''),
(2, '2086764203', 'Deepak Chawla', '9694442980', '2017-03-19 08:00:57', 'doctor 1', 'hospital 1', '200', '', ''),
(3, '774777424', 'efjedfkj', 'hwufhuie', '2017-03-20 07:02:52', 'sakjfkaj', 'kbfkjds', '200', '', ''),
(4, '693708698', 'efjedfkj', 'hwufhuie', '2017-03-20 07:03:41', 'sakjfkaj', 'kbfkjds', '200', '', ''),
(5, '413386918', '', '', '2017-03-20 07:05:04', '', '', '', '', ''),
(6, '2133091464', 'Deepak Chawla', '9694442980', '2017-03-20 07:08:10', 'doctor 1', 'hospital 1', '200', '', ''),
(7, '150426933', 'Deepak Chawla', '9694442980', '2017-03-20 07:09:15', 'doctor 1', 'hospital 1', '200', '', ''),
(8, '749891277', 'Deepak Chawla', '9694442980', '2017-03-20 07:09:35', 'doctor 1', 'hospital 1', '20089', '', ''),
(9, '1379125118', 'dfh', 'hdkhk', '2017-03-20 07:14:11', 'HDJKDS', 'dkjsdhk', 'djkdjsh', '', ''),
(10, '190990299', 'Deepak Chawla', '9694442980', '2017-03-23 19:16:03', 'doctor 1', 'hospital 1', '200', '', ''),
(11, '1485700583', 'Deepak Chawla', '9694442980', '2017-03-23 19:29:16', 'doctor 1', 'hospital 1', '200', '', ''),
(12, '332407881', 'Deepak Chawla', '9694442980', '2017-03-23 19:29:40', 'doctor 1', 'hospital 1', '200', '', ''),
(13, '1905724183', 'Deepak Chawla', '9694442980', '2017-03-23 19:29:50', 'doctor 1', 'hospital 1', '200', '', ''),
(14, '1087065550', 'Deepak Chawla', '9694442980', '2017-03-23 19:30:12', 'doctor 1', 'hospital 1', '200', '', ''),
(15, '1547284234', 'Deepak Chawla', '9694442980', '2017-03-23 19:31:19', 'doctor 1', 'hospital 1', '200', '', ''),
(16, '238257206', 'Deepak Chawla', '9694442980', '2017-03-23 19:31:23', 'doctor 1', 'hospital 1', '200', '', ''),
(17, '1511966661', 'ddkjsahgHSDEHGIW', 'sdhghdf', '2017-03-27 11:15:59', 'hirhg', 'hdffhgo', 'hofhgioer', '', ''),
(18, '1953316398', 'Anshul Laddha', '+919413631820', '2017-03-29 09:15:02', 'Anshul Laddha', 'arihant hospital', '400', '', ''),
(19, '1768355872', 'gjfkg', '+91-9414475878', '2017-03-27 12:53:43', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:23:42 PM'),
(20, '2111848065', 'gjfkg', '+91-9414475878', '2017-03-27 12:53:49', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:23:48 PM'),
(21, '136053118', 'gjfkg', '+91-9414475878', '2017-03-27 12:53:50', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:23:49 PM'),
(22, '1011524335', 'gjfkg', '+91-9414475878', '2017-03-27 12:53:50', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:23:49 PM'),
(23, '1849146082', 'gjfkg', '+91-9414475878', '2017-03-27 12:53:51', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:23:50 PM'),
(24, '449692633', 'gjfkg', '+91-9414475878', '2017-03-27 12:53:52', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:23:51 PM'),
(25, '2057622193', 'gjfkg', '+91-9414475878', '2017-03-27 12:54:05', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:24:04 PM'),
(26, '974129371', 'gjfkg', '+91-9414475878', '2017-03-27 12:54:35', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:24:34 PM'),
(27, '1946455340', 'gjfkg', '+91-9414475878', '2017-03-27 12:54:35', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:24:34 PM'),
(28, '1937693070', 'gjfkg', '+91-9414475878', '2017-03-27 12:54:35', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:24:34 PM'),
(29, '1612132808', 'gjfkg', '+91-9414475878', '2017-03-27 12:54:36', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:24:35 PM'),
(30, '725390015', 'fjvv', '+91-2658563268', '2017-03-27 12:56:54', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:26:53 PM'),
(31, '946234710', 'fjvv', '+91-2658563268', '2017-03-27 12:56:57', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:26:56 PM'),
(32, '964738455', 'djxj', '+91-1468853367', '2017-03-27 12:58:43', 'Dr Anshul Laddha', 'arihant hospital\n', '400', 'Morning-Hours', 'Mar 27, 2017 6:28:42 PM'),
(33, '457838076', 'Deepak Chawla', '9694442980', '2017-03-28 09:38:21', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(34, '711178747', 'Anshul Laddha', '9413631820', '2017-03-28 09:40:19', 'Anshul Laddha', 'arihant hospital', '400', 'evening-hour', 'hsas'),
(35, '965313327', 'Deepak Chawla', '9694442980', '2017-03-28 09:41:24', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(36, '850115826', 'Anshul Laddha', '9413631820', '2017-03-28 09:41:42', 'Anshul Laddha', 'arihant hospital', '400', 'evening-hour', 'hsas'),
(37, '1724775272', 'Anshul Laddha', '9413631820', '2017-03-28 09:43:04', 'Anshul Laddha', 'arihant hospital', '400', 'evening-hour', 'hsas'),
(38, '701206395', 'Anshul Laddha', '9413631820', '2017-03-28 09:46:03', 'Anshul Laddha', 'arihant hospital', '400', 'evening-hour', 'hsas'),
(39, '2032957322', 'Anshul Laddha', '9413631820', '2017-03-28 09:48:25', 'Anshul Laddha', 'arihant hospital', '400', 'evening-hour', 'hsas'),
(40, '993320670', 'Deepak Chawla', '9694442980', '2017-03-28 10:20:22', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(41, '1477707958', 'Deepak Chawla', '9694442980', '2017-03-28 10:20:31', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(42, '848771087', 'Deepak Chawla', '9694442980', '2017-03-28 10:27:16', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(43, '1261094963', 'Deepak Chawla', '9694442980', '2017-03-28 10:27:22', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(44, '1979962568', 'Deepak Chawla', '9694442980', '2017-03-28 10:31:02', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(45, '2053443379', 'Deepak Chawla', '9694442980', '2017-03-28 10:31:28', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(46, '122445675', 'Deepak Chawla', '9694442980', '2017-03-28 10:33:10', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(47, '1500740653', 'Deepak Chawla', '9694442980', '2017-03-28 11:21:11', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(48, '873420667', 'Deepak Chawla', '9694442980', '2017-03-28 11:21:16', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(49, '898963386', 'Deepak Chawla', '9694442980', '2017-03-28 11:22:48', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(50, '128836291', 'Deepak Chawla', '9694442980', '2017-03-28 11:22:51', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(51, '844968976', 'Deepak Chawla', '9694442980', '2017-03-28 11:22:52', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(52, '88142377', 'Deepak Chawla', '9694442980', '2017-03-28 11:29:37', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(53, '138727269', 'Deepak Chawla', '9694442980', '2017-03-28 11:29:55', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(54, '1964586651', 'Deepak Chawla', '9694442980', '2017-03-28 11:30:22', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(55, '1480642829', 'Deepak Chawla', '9694442980', '2017-03-28 11:31:21', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(56, '128301668', 'Deepak Chawla', '9694442980', '2017-03-28 11:31:49', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(57, '1850612427', 'Deepak Chawla', '9694442980', '2017-03-28 11:32:05', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(58, '1138122163', 'Deepak Chawla', '9694442980', '2017-03-28 11:32:23', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(59, '435675100', 'Deepak Chawla', '9694442980', '2017-03-28 11:32:46', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(60, '842650081', 'Deepak Chawla', '9694442980', '2017-03-28 11:33:07', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(61, '602466668', 'Deepak Chawla', '9694442980', '2017-03-28 11:33:49', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(62, '1805216701', 'Deepak Chawla', '9694442980', '2017-03-28 11:36:32', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(63, '1416547028', 'Deepak Chawla', '9694442980', '2017-03-28 11:36:57', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(64, '894222164', 'Deepak Chawla', '9694442980', '2017-03-28 11:37:10', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(65, '1200069980', 'Deepak Chawla', '9694442980', '2017-03-28 11:38:35', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(66, '209668714', 'Deepak Chawla', '9694442980', '2017-03-28 11:39:09', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(67, '854632008', 'Deepak Chawla', '9694442980', '2017-03-28 11:39:36', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(68, '1425987275', 'Deepak Chawla', '9694442980', '2017-03-28 11:42:22', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(69, '72867920', 'Deepak Chawla', '9694442980', '2017-03-28 11:42:41', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(70, '1338893005', 'Deepak Chawla', '9694442980', '2017-03-28 11:42:57', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(71, '555057267', 'Deepak Chawla', '9694442980', '2017-03-28 11:43:00', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(72, '1532735504', 'Deepak Chawla', '9694442980', '2017-03-28 11:43:09', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(73, '52035700', 'Deepak Chawla', '9694442980', '2017-03-28 11:43:53', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(74, '20947018', 'Deepak Chawla', '9694442980', '2017-03-28 11:44:02', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(75, '792871002', 'Deepak Chawla', '9694442980', '2017-03-28 11:44:10', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(76, '661559618', 'Deepak Chawla', '9694442980', '2017-03-28 11:44:50', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(77, '1423517306', 'Deepak Chawla', '9694442980', '2017-03-28 11:45:02', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(78, '1884475247', 'Deepak Chawla', '9694442980', '2017-03-28 11:45:39', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(79, '1038577928', 'Deepak Chawla', '9694442980', '2017-03-28 11:45:47', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(80, '1961618111', 'Deepak Chawla', '9694442980', '2017-03-28 11:46:08', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(81, '930987262', 'Deepak Chawla', '9694442980', '2017-03-28 11:46:19', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(82, '1060264034', 'Deepak Chawla', '9694442980', '2017-03-28 11:46:30', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(83, '1776852778', 'Deepak Chawla', '9694442980', '2017-03-28 11:46:46', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(84, '1363213794', 'Deepak Chawla', '9694442980', '2017-03-28 11:46:59', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(85, '332825257', 'Deepak Chawla', '9694442980', '2017-03-28 11:47:20', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(86, '457471463', 'Deepak Chawla', '9694442980', '2017-03-28 11:48:30', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(87, '152050064', 'Deepak Chawla', '9694442980', '2017-03-28 11:48:47', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(88, '35796669', 'Deepak Chawla', '9694442980', '2017-03-28 11:49:00', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(89, '1667702933', 'Deepak Chawla', '9694442980', '2017-03-28 11:51:09', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(90, '848887531', 'Deepak Chawla', '9694442980', '2017-03-28 11:51:30', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(91, '1555154874', 'Deepak Chawla', '9694442980', '2017-03-28 11:52:02', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(92, '186856780', 'Deepak Chawla', '9694442980', '2017-03-28 11:52:21', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(93, '1901624805', 'Deepak Chawla', '9694442980', '2017-03-28 11:52:34', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(94, '936316444', 'Deepak Chawla', '9694442980', '2017-03-28 11:52:54', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(95, '1756973560', 'Deepak Chawla', '9694442980', '2017-03-28 11:53:09', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(96, '1162938587', 'Deepak Chawla', '9694442980', '2017-03-28 11:54:44', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(97, '1990216734', 'Deepak Chawla', '9694442980', '2017-03-28 11:59:34', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(98, '1351564288', 'Deepak Chawla', '9694442980', '2017-03-28 12:00:46', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(99, '63851824', 'Deepak Chawla', '9694442980', '2017-03-28 12:02:53', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(100, '1995748467', 'Deepak Chawla', '9694442980', '2017-03-28 13:11:59', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(101, '633327977', 'Deepak Chawla', '9694442980', '2017-03-28 13:12:57', 'doctor 1', 'hospital 1', '200', 'morning', '123'),
(102, '738764618', 'cnvnjj', '+91-9413631820', '2017-03-29 14:21:51', 'Dr Deepak Chawla', 'MG hopital\n', '200', 'Morning-Hours', 'Mar 29, 2017 7:51:51 PM'),
(103, '1084192297', 'fkcn', '+91-2741954865', '2017-03-29 14:28:18', 'Dr Deepak Chawla', 'MG hopital\n', '200', 'Morning-Hours', 'Mar 29, 2017 7:58:18 PM'),
(104, '372246643', 'fkcn', '+91-2741954865', '2017-03-29 14:30:27', 'Dr Deepak Chawla', 'MG hopital\n', '200', 'Morning-Hours', 'Mar 29, 2017 8:00:12 PM'),
(105, '599692960', 'DSHFSDU', '+918619670150', '2017-03-30 05:09:50', 'HDIUHSI', 'HISHGI', '500', 'HDIUGHI', 'HDSGHIDUG'),
(106, '790457267', 'DSHFSDUSFDGSEHGIHGH', '+918619670150', '2017-03-30 05:10:11', 'HDIUHSI', 'HISHGIJSSBG', '50000', 'HDIUGHI', 'HDSGHIDUG'),
(107, '984969490', 'DSHFSDUSFDGSEHGIHGH', '+918619670150', '2017-03-30 06:02:07', 'HDIUHSI', 'HISHGIJSSBG', '50000', 'HDIUGHI', 'HDSGHIDUG'),
(108, '1481633715', 'bjxjxbdb', '+918619670150', '2017-03-30 06:59:51', 'Dr Deepak Chawla', 'MG hopital\n', '200', 'Morning-Hours', 'Mar 30, 2017 12:29:51 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user_as_hopital`
--

CREATE TABLE IF NOT EXISTS `user_as_hopital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(300) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `department` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `website_url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_as_hopital`
--

INSERT INTO `user_as_hopital` (`id`, `full_name`, `user_name`, `password`, `department`, `address`, `city`, `state`, `contact_number`, `email_id`, `website_url`) VALUES
(1, 'hospital1', 'hospital1', 'hospital1', 'deparment1', 'bhilwara', 'Bhilwara', 'India', '1234567891', 'deepakchawla35@gmail.com', 'hospital1.com'),
(2, 'hospital2', 'hospital2', 'hospital2', 'deparment2', 'bhilwara', 'Bhilwara', 'India', '1234567891', 'deepakchawla35@gmail.com', 'hospital2.com'),
(3, 'hospital3', 'hospital3', 'hospital3', 'deparment3', 'bhilwara', 'Bhilwara', 'India', '1234567891', 'deepakchawla35@gmail.com', 'hospital3.com'),
(4, 'hospital4', 'hospital4', 'hospital4', 'deparment4', 'bhilwara', 'Bhilwara', 'India', '1234567891', 'deepakchawla35@gmail.com', 'hospital4.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_as_hospital_dr`
--

CREATE TABLE IF NOT EXISTS `user_as_hospital_dr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_name` varchar(100) NOT NULL,
  `hospital_name` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `education` varchar(300) NOT NULL,
  `department` varchar(300) NOT NULL,
  `position` varchar(300) NOT NULL,
  `specialist` varchar(300) NOT NULL,
  `brief_description` varchar(1000) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(300) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `fees` int(11) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user_as_hospital_dr`
--

INSERT INTO `user_as_hospital_dr` (`id`, `dr_name`, `hospital_name`, `password`, `mobile_no`, `email_id`, `education`, `department`, `position`, `specialist`, `brief_description`, `experience`, `address`, `city`, `photo`, `fees`, `longitude`, `latitude`) VALUES
(1, 'Dr Deepak Chawla', 'MG hopital', 'doc1', '1234567891', 'doc1@', 'llb', 'Ophthalmologist', 'Junior', 'densit', 'good doctor', '1', 'bhilwara', 'bhilwara', '', 200, '0', '0'),
(2, 'Dr Anshul Laddha', 'arihant hospital', 'doc1', '1234567891', 'doc1@', 'doc1', 'Ophthalmologist', 'Senior', 'cardiology', 'best doctor', '2', 'bhilwara', 'bhilwara', '', 400, '0', '0'),
(3, 'Dr Nitesh Jangir', 'soni hopital', 'doc3', '0987654321', 'doc3@', 'doc3', 'Cardiologist', 'Fresher', 'orthologist', 'average doctor', '1', 'bhilwara', 'bhilwara', '', 450, '0', '0'),
(4, 'Dr Reshu', 'keshav hospital', 'doc4', '9854631217', 'doc4@', 'doc4', 'Psychiatrist', 'Junior', 'phyisian', 'noraml doctor', '0', 'bhilwara', 'bhilwara', '', 350, '0', '0'),
(5, 'Dr Reshu', 'keshav hospital', 'doc4', '9854631217', 'doc4@', 'doc4', 'Psychiatrist', 'Junior', 'phyisian', 'noraml doctor', '0', 'bhilwara', 'bhilwara', '', 350, '0', '0'),
(6, 'Dr Deepak Chawla', 'MG hopital\n', 'doc1', '1234567891', 'doc1@', 'llb', 'Ophthalmologist', 'Junior', 'densit', 'good doctor', '1', 'bhilwara', 'bhilwara', '', 200, '0', '0'),
(7, 'Dr Nitesh Jangir', 'soni hopital\n', 'doc3', '0987654321', 'doc3@', 'doc3', 'Cardiologist', 'Fresher', 'orthologist', 'average doctor', '1', 'bhilwara', 'bhilwara', '', 450, '0', '0'),
(8, 'Dr Anshul Laddha', 'arihant hospital\n', 'doc1', '1234567891', 'doc1@', 'doc1', 'Ophthalmologist', 'Senior', 'cardiology', 'best doctor', '2', 'bhilwara', 'bhilwara', '', 400, '0', '0'),
(9, 'Dr Reshu', 'keshav hospital\n', 'doc4', '9854631217', 'doc4@', 'doc4', 'Psychiatrist', 'Junior', 'phyisian', 'noraml doctor', '0', 'bhilwara', 'bhilwara', '', 350, '0', '0'),
(10, 'Dr Deepak Chawla', 'MG hopital\n', 'doc1', '1234567891', 'doc1@', 'llb', 'Ophthalmologist', 'Junior', 'densit', 'good doctor', '1', 'bhilwara', 'bhilwara', '', 200, '0', '0'),
(11, 'Dr Deepak Chawla', 'MG hopital\n', 'doc1', '1234567891', 'doc1@', 'llb', 'Ophthalmologist', 'Junior', 'densit', 'good doctor', '1', 'bhilwara', 'bhilwara', '', 200, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_as_patient`
--

CREATE TABLE IF NOT EXISTS `user_as_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firebase_id` varchar(300) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `user_as_patient`
--

INSERT INTO `user_as_patient` (`id`, `firebase_id`, `full_name`, `father_name`, `age`, `gender`, `address`, `city`, `mobile_number`, `email_id`) VALUES
(27, '0', 'nitesh jain', 'om prakash jain', '21', 'male', 'haveli', '', '123456789', 'deepakchawla35@gmail.com'),
(28, '0', 'testing', 'testing father', '45', 'male', 'has', '', '987456321', 'deepakchawla35@gmail.com'),
(29, '0', 'Deepak Chawla', 'fsd', 'das', 'das', 'das', '', '09876', 'riyabachn'),
(30, '0', 'sss', 'ssss', 'asas', 'asas', 'asas', '', 'asasa', 'asasas'),
(31, '0', 'efjedfkj', 'fhe', 'fehifu', 'dfuehfdue', 'huqwihdf', '', 'hwufhuie', 'ifheihf'),
(33, '0', 'sfdsb', 'kjsdhfkjds', 'kjsdfbkdsj', 'bkfjbdk', 'bfkjdbk', '', 'jkdbkd', 'kbk'),
(35, '0', 'deepak', 'chawla', '21', 'male', 'NBH', '', '9694442980', 'deepakchawla@gmail.com'),
(36, 'cmjvFuxhmg4:APA91bFiD1sM3XIcd8oacwCzCZIJ9OUT35RJcf2FyMa4xs59yk7o_SgESTKcpP43Z_6rEaV7QeUgFuWp8Z1whW8mh4zjRx1gHWn3I3vP5mIbB8fue7GMq60LUTrTH5LtzGiaYY6vtFab', '', '', '', '', '', '', '', ''),
(37, '0', 'testing', 'father', '33', 'femal', '123', '', '1234567890', 'as@gmail.com'),
(38, '0', 'testing', 'testing', '20', 'male', 'paali', '', '0987654321', 'sa@gmail.com'),
(45, '12', 'Deepak Chawla', 'father name', '23', 'male', 'ad', '', '654321', 'deepakchawla35@gmail.com'),
(46, '12', 'dasd', 'kjhlkjh', '12', 'bhj.', 'kj,bh,', '', '54321', 'kjgbk,jh'),
(47, 'jghk', 'hf', 'gbh', '21', 'bjk', 'bk,j', '', '321', 'dew'),
(48, 'AnshulLLLLL', 'iufdhsu', 'sdhfi', '39', 'hidufiwu', 'hiehfiwe', '', '+918923002589', 'dsfhe'),
(54, 'k.hbj.kj', 'Nikhil Varshney', 'S/O Nidhish Varshney', '13/06/1995', 'M', 'anal colony (barahsaini),Sikandra Rao,Hathras,Uttar Pradesh', '', '+919811253300', 'talk2@gmail.com'),
(55, '123gbjkhbj23bgj42b,hkj3b', 'Deepak Chawla', 'prahlad', '12', 'Deepak Cha', '2-C-26 New Housing Board Shastri Nagar', '', '67809545t4', 'deepakchawla35@gmail.com'),
(57, '12', 'tsting', 'fteh', '21', 'male', 'ads', '', '543211', 'deepakchawla35@gmail.com'),
(59, 'e-d4L3aRO3w:APA91bF6Avc6zaHdC6CSwoiepKFLu1GTip4JP_Z0DYM--ivzbDog-FZc205XXY1zYFwMUhkxZ7WKPpKR9gLWo9gzdjiuI1bPC8Ln4n7EQYGS9yu2e4IB1mzy3rP4zVnEpsetQLAAZWRZ', 'Anshul', 'cjkk', '31-12-2', 'male', 'gkjhi', '', '+918619670150', 'rtjj@gmail.com'),
(60, 'eQ2Az3hckUA:APA91bHyJYlaH_qvCYh-MC4qjtTG5GGAl5UvIxbm0qqGP56gm7zt4u73iDZ8bul0F8yIwtatfk36I4FAf20_8oD9eCilMumRiYi_8s9aLqNi1uh8wkrpkXekINsbt4-37jZukifc7K09', 'Anshul', 'bxkxkx', '31-12-2', 'male', 'bxmxnjx', '', '+919413631820', 'laddhaanshul@gmail.com'),
(61, 'dYIjsLvdgDs:APA91bF1I3KWByiO9Ji1GHkrEEB_PjGyx7JJ1cwiSxgSDKksE60tx-C1gbux8GcIeIPg7Iy-wIj6qrhNuywyB_uS-R0Hti1EuEbkQ76MZHGB5y0Bga8FZ0hvZE1tmsL1InNFMs1ZDPBX', 'rishu', 'e', '31-12-2', 'female', 'a', '', '+919602628590', 'a@a.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_as_patient_history`
--

CREATE TABLE IF NOT EXISTS `user_as_patient_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disease` varchar(100) NOT NULL,
  `medicine_table_name` varchar(100) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_as_patient_history`
--

INSERT INTO `user_as_patient_history` (`id`, `disease`, `medicine_table_name`, `time_date`) VALUES
(1, 'disease part', 'ultacitamol', '2017-03-23 06:00:13'),
(2, 'disesase 2', 'medical tablet', '2017-03-23 06:00:56'),
(3, 'dsease 3', 'medical tablet', '2017-03-23 06:01:24'),
(4, 'disease4', 'medical tablet', '2017-03-23 06:01:55');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
