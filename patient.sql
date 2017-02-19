-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `patient`
--
CREATE DATABASE IF NOT EXISTS `patient` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `patient`;

-- --------------------------------------------------------

--
-- Table structure for table `p_details`
--

CREATE TABLE IF NOT EXISTS `p_details` (
  `p_id` int(255) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_lname` varchar(255) NOT NULL,
  `p_age` int(255) NOT NULL,
  `p_dob` varchar(255) NOT NULL,
  `p_email` varchar(255) NOT NULL,
  `p_gender` varchar(255) NOT NULL,
  `p_phone` int(255) NOT NULL,
  `p_address` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `p_details`
--

INSERT INTO `p_details` (`p_id`, `p_name`, `p_lname`, `p_age`, `p_dob`, `p_email`, `p_gender`, `p_phone`, `p_address`) VALUES
(1, 'Justin', 'Smith', '24', '15/02/1992', 'justin@yahoo.com', 'male', '9729804882', 'New York'),
(2, 'Naveen', 'Yadav', '22', '25/08/1994', 'naveen@yahoo.com', 'male', '7729774282', 'India'),
(3, 'Abhi', 'Rana', '22', '05/05/1994', 'rana@yahoo.com', 'male', '8283833409', 'New Delhi'),
(4, 'Abhijit', 'Singh', '23', '20/12/1993', 'abhisingh@gmail.com', 'male', '7348819182', 'Budapest'),
(5, 'Ritika', 'Sharma', '22', '25/08/1994', 'ritz@yahoo.com', 'female', '9700004282', 'New York');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
