-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 06:50 PM
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
-- Database: `friendtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `participant_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`participant_id`, `post_id`, `user_id`, `joined_at`) VALUES
(1, 2, 2, '2024-05-05 09:51:47'),
(2, 7, 1, '2024-05-05 11:53:10'),
(5, 3, 3, '2024-05-06 15:30:51'),
(6, 5, 3, '2024-05-06 15:31:07'),
(7, 3, 3, '2024-05-06 15:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `max_participants` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `event_start` datetime DEFAULT NULL,
  `current_participants` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `title`, `category`, `description`, `max_participants`, `created_at`, `event_start`, `current_participants`) VALUES
(2, 1, 'event01', 'Game', '15196161', 4, '2024-05-04 09:34:02', '2024-05-04 16:33:00', 0),
(3, 1, 'event02', 'Game', '123', 1, '2024-05-04 09:35:09', '2024-05-04 16:35:00', 0),
(4, 1, 'event03', 'Game', '5555', 4, '2024-05-04 09:35:58', '2024-05-04 16:35:00', 0),
(5, 1, 'event04', 'Game', '555', 4, '2024-05-04 09:36:28', '2024-05-04 16:36:00', 0),
(6, 1, 'event05', 'Game', '22156555', 5, '2024-05-05 09:35:50', '2024-05-05 14:35:00', 0),
(7, 2, 'event06', 'Game', '4646546', 4, '2024-05-05 11:52:51', '2024-05-05 19:52:00', 0),
(9, 3, 'event07', 'Sport', '12', 5, '2024-05-05 15:06:55', '2024-05-09 22:06:00', 0),
(10, 1, 'event08', 'Sport', '3232', 0, '2024-05-06 14:15:12', '2024-05-07 04:15:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'test01', 'test01@mail.com', '$2b$10$OL5Q5GooSW2CMCUe/DEluOOm6ukQDdgZzbOxj75IIKmQLcrQW0w82'),
(2, 'test02', 'test02@mail.com', '$2b$10$uP10xc6jvs5xgnIK5woAd.z4q5jABA1TE0qr8f.oSvcUqHJB/fDya'),
(3, 't', '1@mail.com', '$2b$10$qRq.LNzj2J9npyvxJbUYNu95KSuBxnu2xSwzt2ts3SWPRiVy53pca'),
(4, 'test03', 'test03@mail.com', '$2a$10$PZsX0r3UwJbXsC/1FueVEeNblEMAf2CuRNZzA29fy3gpwuXPAzbw2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`participant_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `participant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
