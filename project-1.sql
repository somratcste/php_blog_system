-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2014 at 12:56 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(1, 'Computer'),
(4, 'Mobile'),
(5, 'Desktop'),
(6, 'Laptop'),
(7, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_url` varchar(255) NOT NULL,
  `c_message` text NOT NULL,
  `c_date` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`c_id`, `c_name`, `c_email`, `c_url`, `c_message`, `c_date`, `post_id`, `active`) VALUES
(1, 'Morshedul Arefin', 'arefin2k@gmail.com', '', 'This is a nice article', '2014-01-22', 12, 1),
(2, 'Ruhul Amin', 'ruhul@gmail.com', 'www.abc.com', 'This is very good.', '2014-01-22', 12, 1),
(3, 'Al Amin', 'alamin@gmail.com', '', 'This is a nice thing', '2014-01-22', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE IF NOT EXISTS `tbl_footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `description`) VALUES
(1, 'Copyright &copy; 2014 by Coder House BD. All Rights Reserved. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE IF NOT EXISTS `tbl_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `tag_id` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `year` varchar(4) NOT NULL,
  `month` varchar(2) NOT NULL,
  `post_timestamp` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_image`, `cat_id`, `tag_id`, `post_date`, `year`, `month`, `post_timestamp`) VALUES
(1, 'Retro Photos 1', '<p>Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis. Maecenas hendrerit, massa ac laoreet iaculipede mnisl ullamcorpermassa, cosectetuer feipsum eget pede. Proin nunc. Donec nonummy, tellus er sodales enim, in tincidunmauris in odio. Massa ac laoreet iaculipede nisl ullamcorpermassa, ac consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. massa ac laoreet iaculipede niorpermassa,consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis. Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis. Maecenas hendrerit, massa ac laoreet iaculipede mnisl ullamcorpermassa, cosectetuer feipsum eget pede. Proin nunc. Donec nonummy, tellus er sodales enim, in tincidunmauris in odio. Massa ac laoreet iaculipede nisl ullamcorpermassa, ac consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. massa ac laoreet iaculipede niorpermassa,consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis. Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis. Maecenas hendrerit, massa ac laoreet iaculipede mnisl ullamcorpermassa, cosectetuer feipsum eget pede. Proin nunc. Donec nonummy, tellus er sodales enim, in tincidunmauris in odio. Massa ac laoreet iaculipede nisl ullamcorpermassa, ac consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. massa ac laoreet iaculipede niorpermassa,consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis. Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis. Maecenas hendrerit, massa ac laoreet iaculipede mnisl ullamcorpermassa, cosectetuer feipsum eget pede. Proin nunc. Donec nonummy, tellus er sodales enim, in tincidunmauris in odio. Massa ac laoreet iaculipede nisl ullamcorpermassa, ac consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. massa ac laoreet iaculipede niorpermassa,consectetuer feipsum eget pede. Proin nunc. Donec massa. Nulla pulvinar, nisl ac convallis nonummy, tellus eros sodales enim, in tincidunt mauris in odio. Lorem ipsum dolor sit amet, consectetuer adipi scing elit.Mauris urna urna, varius et, interdum a, tincidunt quis, libero. Aenean sit amturpis.</p>\r\n', '1.jpg', 7, '1,4,3', '2013-08-21', '2013', '08', '1390258800'),
(2, 'post number 2', '<p>post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 post number 2 v</p>\r\n', '2.png', 1, '1,4', '2013-08-22', '2013', '08', '1390345200'),
(3, 'post number 3 ', '<p>post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3 post number 3</p>\r\n', '3.png', 5, '1,4,3', '2013-09-22', '2013', '09', '1390345200'),
(4, 'post number 4 ', '<p>post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4 post number 4</p>\r\n', '4.png', 4, '1', '2013-10-22', '2013', '10', '1390345200'),
(5, 'post number 5', '<p>post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5 post number 5</p>\r\n', '5.png', 1, '4', '2013-11-22', '2013', '11', '1390345200'),
(6, 'post number 6 ', '<p>post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6 post number 6</p>\r\n', '6.png', 5, '4', '2013-12-03', '2013', '12', '1390345200'),
(7, 'post number 7 ', '<p>post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7 post number 7</p>\r\n', '7.png', 1, '1,4', '2013-12-10', '2013', '12', '1390345200'),
(8, 'post number 8 ', '<p>post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 post number 8 v</p>\r\n', '8.png', 5, '4', '2014-01-06', '2014', '01', '1390345200'),
(9, 'post number 9 ', '<p>post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9 post number 9v</p>\r\n', '9.png', 6, '1', '2014-01-20', '2014', '01', '1390345200'),
(10, 'post number 10 ', '<p>post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 post number 10 v</p>\r\n', '10.png', 1, '1', '2014-01-22', '2014', '01', '1390345200'),
(11, 'post number 11 ', '<p>post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11 post number 11</p>\r\n', '11.png', 1, '1', '2014-01-22', '2014', '01', '1390345200'),
(12, 'This is the last post of this day', '<p>this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day. this is the last post of this day.</p>\r\n', '12.png', 5, '4,3', '2014-01-22', '2014', '01', '1390345200');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag`
--

CREATE TABLE IF NOT EXISTS `tbl_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_tag`
--

INSERT INTO `tbl_tag` (`tag_id`, `tag_name`) VALUES
(1, 'book'),
(3, 'pen'),
(4, 'khata');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
