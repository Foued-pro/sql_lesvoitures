-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2025 at 04:31 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ventes`
--

-- --------------------------------------------------------

--
-- Table structure for table `energie_voiture`
--

CREATE TABLE `energie_voiture` (
  `id` int NOT NULL,
  `id_voiture` int NOT NULL,
  `id_energie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `energie_voiture`
--

INSERT INTO `energie_voiture` (`id`, `id_voiture`, `id_energie`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(8, 2, 1),
(9, 2, 2),
(10, 2, 5),
(11, 3, 1),
(12, 3, 4),
(13, 10, 1),
(14, 10, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `energie_voiture`
--
ALTER TABLE `energie_voiture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_voiture` (`id_voiture`),
  ADD KEY `id_energie` (`id_energie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `energie_voiture`
--
ALTER TABLE `energie_voiture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `energie_voiture`
--
ALTER TABLE `energie_voiture`
  ADD CONSTRAINT `energie_voiture_ibfk_1` FOREIGN KEY (`id_energie`) REFERENCES `energie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `energie_voiture_ibfk_2` FOREIGN KEY (`id_voiture`) REFERENCES `voiture` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
