-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 08:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `reg_id` int(11) NOT NULL,
  `user_id` int(12) NOT NULL,
  `reg_no` varchar(7) NOT NULL,
  `candidate` varchar(30) NOT NULL,
  `eventName` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`reg_id`, `user_id`, `reg_no`, `candidate`, `eventName`, `category`, `time`) VALUES
(12, 21, '19IT025', 'Dixon', 'AI and ML', 'webinars', '2021-12-18 12:26:49'),
(13, 23, '19IT101', 'Sreesh', 'AI and ML', 'webinars', '2021-12-18 12:26:49'),
(14, 22, '19IT073', 'Ragul', 'AI and ML', 'webinars', '2021-12-18 12:26:49'),
(28, 21, '19IT025', 'Dixon', 'Python', 'workshops', '2021-12-18 12:26:49'),
(29, 21, '19IT025', 'Dixon', 'Blockchain', 'webinars', '2021-12-18 12:26:49'),
(30, 21, '19IT025', 'Dixon', 'Angular', 'workshops', '2021-12-18 12:26:49'),
(31, 21, '19IT025', 'Dixon', 'Deep Learning', 'workshops', '2021-12-18 12:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `reg_no` varchar(7) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `name`, `reg_no`, `email`, `password`) VALUES
(1, 'admin', 'admin', '000', 'admin@tce.edu', 'password'),
(21, 'student', 'Dixon', '19IT025', 'dixon@student.tce.edu', 'dixon123'),
(22, 'student', 'Ragul', '19IT073', 'ragul@student.tce.edu', 'ragul123'),
(23, 'student', 'Sreesh', '19IT101', 'sreesh@student.tce.edu', 'sreesh123'),
(27, 'faculty', 'Dr. P.Karthikeyan', '111', 'karthikeyan@gmail.com', 'karthikeyan123'),
(28, 'faculty', 'Dr. A.M.Abirami', '222', 'abiramiam@gmail.com', 'abirami123');

-- --------------------------------------------------------

--
-- Table structure for table `webinars`
--

CREATE TABLE `webinars` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `name`, `venue`, `date`, `time`, `user_id`, `category`) VALUES
(1, 'AI and ML', 'K S Auditorium', '2021-11-30', '15:25', 27, 'webinars'),
(24, 'Blockchain', 'K M Auditorium', '2021-10-15', '21:00', 28, 'webinars'),
(34, 'API', 'Auditorium', '2021-12-05', '10:20', 27, 'webinars');

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `user_id` int(15) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `name`, `venue`, `date`, `time`, `user_id`, `category`) VALUES
(1, 'Python', 'K M Auditorium', '11/10/21', '9:10', 28, 'workshops'),
(12, 'Angular', 'K S Auditorium', '2021-12-04', '15:20', 27, 'workshops'),
(22, 'Web Design', 'Motorola Lab', '2021-12-02', '14:05', 27, 'workshops'),
(24, 'Deep Learning', 'IT Seminar Hall', '2021-12-15', '10:00', 28, 'workshops');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webinars`
--
ALTER TABLE `webinars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `webinars`
--
ALTER TABLE `webinars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;