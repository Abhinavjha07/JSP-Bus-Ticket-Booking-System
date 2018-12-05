-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 09:49 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `pwd`) VALUES
(141, 'admin1'),
(142, 'admin2'),
(143, 'admin3'),
(144, 'admin4'),
(145, 'admin5');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_id` int(11) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `fare` float DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL,
  `seats_rem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_id`, `source`, `destination`, `fare`, `total_seats`, `seats_rem`) VALUES
(176, 'Lahore', 'Karachi', 55, 35, 35),
(181, 'Rewari', 'Faridabad', 150, 75, 75),
(182, 'Guwahati', 'Jorhat', 150, 75, 75),
(183, 'Delhi', 'Faridabad', 80, 60, 60),
(191, 'Rewari', 'Delhi', 120, 65, 65),
(192, 'Rewari', 'Gurgaon', 90, 60, 60),
(211, 'Nagpur', 'Mumbai', 250, 80, 80),
(456, 'Delhi', 'Jaipur', 180, 75, 75),
(512, 'Guwahati', 'Shillong', 100, 80, 76);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `U_id` int(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `tickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`U_id`, `date`, `bus_id`, `tickets`) VALUES
(102, '25/10/2017', 512, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pwd`) VALUES
(101, 'password'),
(102, 'hello'),
(121, 'project'),
(142, 'user'),
(162, 'java'),
(421, 'oracle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
