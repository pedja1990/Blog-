-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 09:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(60) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author`, `text`, `post_id`) VALUES
(4, 'Koment1', 'Ovo je prvi komentar', 1),
(5, 'Koment2', 'Ovo je drugi komentar', 1),
(6, 'Koment3', 'Ovo je treci komentar', 1),
(7, 'Koment1', 'Ovo je prvi komentar', 2),
(8, 'Koment2', 'Ovo je drugi komentar', 2),
(9, 'Koment3', 'Ovo je treci komentar', 2),
(10, 'Koment1', 'Ovo je prvi komentar', 3),
(11, 'Koment2', 'Ovo je drugi komentar', 3),
(12, 'Koment3', 'Ovo je treci komentar', 3),
(13, 'Koment1', 'Ovo je prvi komentar', 4),
(14, 'Koment2', 'Ovo je drugi komentar', 4),
(15, 'Koment3', 'Ovo je treci komentar', 4),
(16, 'Koment1', 'Ovo je prvi komentar', 5),
(17, 'Koment2', 'Ovo je drugi komentar', 5),
(18, 'Koment3', 'Ovo je treci komentar', 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(500) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 'neki naslov 1', 'Prvi post', 'Pedja', '2021-03-13'),
(2, 'neki naslov 2', 'Drugi post', 'Pedja', '2021-03-11'),
(3, 'neki naslov 3', 'Treci post', 'Pedja', '2021-01-12'),
(4, 'neki naslov 4', 'Cetvrti post', 'Pedja', '2021-03-14'),
(5, 'naslov', 'content ovog naslova', 'jelena', '2021-03-18'),
(6, 'naslov', 'content ovog naslova', 'jelena', '2021-03-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
