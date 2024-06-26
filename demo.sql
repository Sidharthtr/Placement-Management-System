-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 06:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `bio` varchar(256) DEFAULT NULL,
  `cv` varchar(256) DEFAULT NULL,
  `user_auth` int(11) DEFAULT NULL,
  `apply` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `bio`, `cv`, `user_auth`, `apply`) VALUES
(7, 'Sidharth T R', 'sidharth@gmail.com', '4', 'dssf', 'Screenshot (1).png', NULL, NULL),
(10, 'Sandeep R', 'sandeep@gmail.com', '222', 'asas', 'Screenshot (8).png', 2, NULL),
(11, 'Ankur Jat', 'ankur@gmail.com', '44', 'dffff', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_collage`
--

CREATE TABLE `tbl_collage` (
  `id` int(11) NOT NULL,
  `collage_name` varchar(256) NOT NULL,
  `about_collage` varchar(256) NOT NULL,
  `enrolled_students` varchar(256) NOT NULL,
  `user_auth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id` int(11) NOT NULL,
  `cp_name` varchar(256) NOT NULL,
  `company_details` varchar(256) NOT NULL,
  `can_numbder` varchar(256) NOT NULL,
  `user_auth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`id`, `cp_name`, `company_details`, `can_numbder`, `user_auth`) VALUES
(7, 'Google', 'Tech company', 'abc', NULL),
(8, 'Microsoft', 'Tech', 'dsdsds', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_post`
--

CREATE TABLE `tbl_job_post` (
  `id` int(11) NOT NULL,
  `job_title` varchar(256) NOT NULL,
  `job_description` varchar(256) NOT NULL,
  `qualification` varchar(256) NOT NULL,
  `user_auth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_job_post`
--

INSERT INTO `tbl_job_post` (`id`, `job_title`, `job_description`, `qualification`, `user_auth`) VALUES
(1, 'SDE', 'Developpment', 'CSE', 4),
(2, 'Web-Developer', 'Web Designing', 'CSE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_role_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 1, 'Sidharth TR', 'Emv', 'sidharth@emv.com', '5fe7a6c397be626b26e0b94df1d9d68f'),
(2, 2, 'Athul', 'Jojo', 'jojo@emv.com', '2b4162433a2c0c0ebc6019f611c66b59'),
(3, 3, 'Krishna', 'Prasad', 'krishna@emv.com', 'ae41adde0c47ab2f50c160486b928450'),
(4, 4, 'Albin', 'Xavir', 'albin@emv.com', 'bee26428b6f17e282f0009c27f166341');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `id` int(11) NOT NULL,
  `user_role` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`id`, `user_role`) VALUES
(1, 'admin'),
(2, 'company'),
(3, 'collage'),
(4, 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_auth` (`user_auth`);

--
-- Indexes for table `tbl_collage`
--
ALTER TABLE `tbl_collage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_auth` (`user_auth`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_auth` (`user_auth`);

--
-- Indexes for table `tbl_job_post`
--
ALTER TABLE `tbl_job_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_auth` (`user_auth`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_collage`
--
ALTER TABLE `tbl_collage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_job_post`
--
ALTER TABLE `tbl_job_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_auth`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_collage`
--
ALTER TABLE `tbl_collage`
  ADD CONSTRAINT `tbl_collage_ibfk_1` FOREIGN KEY (`user_auth`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD CONSTRAINT `tbl_company_ibfk_1` FOREIGN KEY (`user_auth`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_job_post`
--
ALTER TABLE `tbl_job_post`
  ADD CONSTRAINT `tbl_job_post_ibfk_1` FOREIGN KEY (`user_auth`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
