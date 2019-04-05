-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2019 at 07:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('soumya', 'soumya');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `dName` varchar(20) NOT NULL,
  `pName` varchar(15) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`dName`, `pName`, `room`) VALUES
('Rogue', 'Ronan', 909),
('Rogue', 'Yash', 909),
('Soumya', 'Yash', 806),
('Soumya', 'Yash', 806);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `count` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`count`, `date`, `id`, `name`, `age`, `gender`, `blood`, `dept`, `phone`, `email`, `status`, `address`, `room`, `username`, `password`) VALUES
(1, '02-04-2018', 's0HMSd1', 'Soumya', 20, 'Male', 'A-', 'General Medicine', '+91 0000000001', 'abc@xyz.com', 'Single', 'Bangalore', 806, 'Soumya', 'Soumya'),
(2, '31-01-2018', 's0HMSd2', 'Thor', 32, 'Male', 'A+', 'Dental', '+91 0000000002', 'thor@gmail.com', 'Married', 'Bangalore', 202, 'Thor', 'Thor'),
(3, '12-12-2016', 's0HMSd3', 'Thanos', 34, 'Male', 'AB-', 'Neurology', '+91 0000000003', 'thanos@gmail.com', 'Divorced', 'Bangalore', 809, 'Thanos', 'Thanos'),
(4, '09-08-2017', 's0HMSd5', 'Rogue', 23, 'Female', 'O-', 'Gynaecology', '+91 0000000004', 'Rogue@gmail.com', 'Single', 'Chennai', 909, 'Rogue', 'Rogue'),
(5, '05-03-2015', 's0HMSd7', 'Gamora', 28, 'Female', 'O+', 'Haematology', '+91 0000000005', 'gamora@gmail.com', 'Married', 'Mumbai', 23, 'Gamora', 'Gamora');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `count` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`count`, `date`, `id`, `name`, `age`, `gender`, `address`, `phone`, `status`, `disease`, `room`) VALUES
(15, '18-03-2018', 's0HMSp1', 'Yash', 21, 'Male', 'Bangalore', '+91 00000000', 'Single', 'kuhfeh', 302);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `count` int(11) NOT NULL,
  `joining` varchar(15) NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`count`, `joining`, `id`, `name`, `age`, `gender`, `blood`, `email`, `phone`, `address`, `status`, `username`, `password`) VALUES
(1, '23-04-2013', 's0HMSr1', 'Cable', 21, 'Male', 'O+', 'cable@gmail.com', '+91 0000000111', 'Vadodra', 'Single', 'Cable', 'Cable');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `a` varchar(11) NOT NULL,
  `b` varchar(11) NOT NULL,
  `c` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`a`, `b`, `c`) VALUES
('5', '6', '6'),
('1', '2', '4'),
('gfhf', 'fv', 'hf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`count`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
