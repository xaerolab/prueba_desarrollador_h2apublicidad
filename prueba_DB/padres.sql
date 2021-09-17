-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 16, 2021 at 05:27 PM
-- Server version: 8.0.26-0ubuntu0.21.04.3
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padres`
--

-- --------------------------------------------------------

--
-- Table structure for table `edades`
--

CREATE TABLE `edades` (
  `id` int NOT NULL,
  `idpadre` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `edad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `edades`
--

INSERT INTO `edades` (`id`, `idpadre`, `nombre`, `edad`) VALUES
(1, 0, 'Rafael', 80),
(2, 0, 'Manuel', 60),
(3, 1, 'Carlos', 50),
(4, 3, 'Miguel', 32),
(5, 4, 'Juan', 8),
(6, 1, 'Jose', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edades`
--
ALTER TABLE `edades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `edades`
--
ALTER TABLE `edades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
