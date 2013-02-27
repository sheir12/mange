-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2013 at 03:19 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `management`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` int(30) NOT NULL,
  `confirmid` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `founded` int(30) NOT NULL,
  `overview` text NOT NULL,
  `mission` text NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_department_1` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned DEFAULT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `sub_dept_id` int(10) unsigned DEFAULT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmid` varchar(225) NOT NULL,
  `phone` int(30) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `birthday` varchar(225) NOT NULL,
  `about` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_employees_1` (`company_id`),
  KEY `FK_employees_2` (`department_id`),
  KEY `FK_employees_3` (`sub_dept_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `company_id`, `department_id`, `sub_dept_id`, `firstname`, `lastname`, `gender`, `email`, `password`, `confirmid`, `phone`, `website`, `address`, `location`, `country`, `birthday`, `about`) VALUES
(5, NULL, NULL, NULL, 'Ahmed', 'Alnaqaa', 'male', 'ahmedalnaqua@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '98997ba74346ac7d111e54163e9b044d', 376123456, 'www.mufix.org', 'ashmoon', 'cairo', 'bd', '6101992', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `jops`
--

CREATE TABLE IF NOT EXISTS `jops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `name` varchar(145) NOT NULL,
  `description` text NOT NULL,
  `appliers_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jops_1` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `name` varchar(145) NOT NULL,
  `product_desc` text NOT NULL,
  `buyers_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_products_1` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_department`
--

CREATE TABLE IF NOT EXISTS `sub_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sub_department_1` (`department_id`),
  KEY `FK_sub_department_2` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `jops_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `jops_id`, `product_id`, `password`, `username`, `gender`, `country`) VALUES
(4, '', '', 'temraz@yahoo.com', 0, 0, '202cb962ac59075b964b07152d234b70', 'sdfsd', 'male', 'egypt'),
(5, NULL, NULL, 'temraz2@yahoo.com', 0, 0, '81dc9bdb52d04dc20036dbd8313ed055', '12323', 'male', 'egypt'),
(6, NULL, NULL, 'temraz90@yahoo.com', 0, 0, '202cb962ac59075b964b07152d234b70', 'rt', 'male', 'egypt'),
(7, NULL, NULL, 'temraztr@yahoo.com', 0, 0, '202cb962ac59075b964b07152d234b70', 'erer', 'male', 'england'),
(8, NULL, NULL, 'temraztt@yahoo.com', 0, 0, '827ccb0eea8a706c4c34a16891f84e7b', 'wer', 'male', 'egypt'),
(9, NULL, NULL, 'yyy@yahoo.com', 0, 0, '202cb962ac59075b964b07152d234b70', 'temraz2', 'female', 'england');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `FK_department_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `FK_employees_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_employees_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_employees_3` FOREIGN KEY (`sub_dept_id`) REFERENCES `sub_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jops`
--
ALTER TABLE `jops`
  ADD CONSTRAINT `FK_jops_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_products_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_department`
--
ALTER TABLE `sub_department`
  ADD CONSTRAINT `FK_sub_department_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_sub_department_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
