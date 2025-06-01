-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 08:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resumebuilder`
--

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `course` varchar(250) NOT NULL,
  `institute` varchar(250) NOT NULL,
  `started` varchar(100) NOT NULL,
  `ended` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `resume_id`, `course`, `institute`, `started`, `ended`) VALUES
(4, 11, 'bachelor of computer application ', 'mangalore university', 'May 2021', 'Currently pursuing'),
(9, 20, 'bachelor of computer application ', 'mangalore university', 'May 2021', 'Currently pursuing'),
(10, 20, 'bachelor of computer application ', 'mangalore university', 'May 2021', 'Currently Working');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `position` varchar(250) NOT NULL,
  `company` varchar(250) NOT NULL,
  `job_desc` text NOT NULL,
  `started` varchar(250) NOT NULL,
  `ended` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `resume_id`, `position`, `company`, `job_desc`, `started`, `ended`) VALUES
(5, 11, 'PHP Developer | 2+ years', 'Codinix Cloud Pvt.Ltd.', 'good', 'May 2021', 'Currently Working'),
(6, 11, 'PHP Developer | 2+ years', 'Codinix Cloud Pvt.Ltd.', 'bye', 'May 2021', 'Currently Working'),
(14, 20, 'PHP Developer | 2+ years', 'Codinix Cloud Pvt.Ltd.', 'good', 'May 2021', 'Currently Working'),
(15, 20, 'PHP Developer | 2+ years', 'Codinix Cloud Pvt.Ltd.', 'bye', 'May 2021', 'Currently Working');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `hobbies` varchar(250) NOT NULL,
  `languages` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `objective` text NOT NULL,
  `slug` varchar(250) NOT NULL,
  `updated_at` int(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `resume_title` varchar(250) NOT NULL,
  `background` varchar(250) NOT NULL DEFAULT '''''',
  `font` varchar(250) NOT NULL DEFAULT 'Poppins,sans-serif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `user_id`, `full_name`, `email_id`, `mobile_no`, `gender`, `religion`, `nationality`, `marital_status`, `hobbies`, `languages`, `address`, `objective`, `slug`, `updated_at`, `dob`, `resume_title`, `background`, `font`) VALUES
(11, 1, 'Rithvik', 'rithviksalian392@gmail.com', '8317391324', 'Male', 'Hindu', 'Indian', 'Single', 'reading,musics,sports,dance', 'Hindi,english,kannada', 'B-482 Street No 32, Mahavir Enclave Part-2', 'To be a part of an organization where get a chance to use my knowledge and skills to contribute in the progress of the organizations as well as myself.', 'ms1d4q2n419bh4jx', 1744976077, '1999-02-28', 'Web Developer ', '\"', 'Poppins,sans-serif'),
(20, 1, 'Rithvik', 'rithviksalian392@gmail.com', '8317391324', 'Male', 'Hindu', 'Indian', 'Single', 'reading,musics,sports,dance', 'Hindi,english,kannada', 'B-482 Street No 32, Mahavir Enclave Part-2', 'To be a part of an organization where get a chance to use my knowledge and skills to contribute in the progress of the organizations as well as myself.', 'g68irn1p226l03qv', 1745846646, '1999-02-28', 'clone_1745846646', 'tile7.png', 'Open Sans,sans-serif');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `skill` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `resume_id`, `skill`) VALUES
(5, 11, 'PHP & HTML & CSS'),
(6, 11, 'React & JS & Python'),
(14, 20, 'PHP & HTML & CSS'),
(15, 20, 'React & JS & Python'),
(16, 20, 'html');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email_id`, `password`) VALUES
(1, 'Rithvik', 'rithviksalian392@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Rithi', 'rithi1@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
