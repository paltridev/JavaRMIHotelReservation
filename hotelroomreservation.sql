-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 10:39 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelroomreservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `guestid` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `roomid` varchar(255) NOT NULL,
  `roomtype` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`guestid`, `name`, `roomid`, `roomtype`) VALUES
('111', 'Mary Jane', 'rm1', '1'),
('444', 'Peter Kavinsky', 'rm2', '2'),
('333', 'Lara Jean', 'rm3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomId` varchar(255) NOT NULL,
  `roomType` varchar(1) NOT NULL,
  `roomPrice` int(255) NOT NULL,
  `roomDetails` text NOT NULL,
  `roomQuantity` int(50) NOT NULL,
  `roomAvailable` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomId`, `roomType`, `roomPrice`, `roomDetails`, `roomQuantity`, `roomAvailable`) VALUES
('rm0', '0', 55, 'Single room', 10, 10),
('rm1', '1', 75, 'Double room', 20, 19),
('rm2', '2', 80, 'Twin room', 5, 4),
('rm3', '3', 150, 'Triple room', 3, 2),
('rm4', '4', 230, 'Quad room', 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
