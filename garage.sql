-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 10, 2021 at 10:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marque`
--

INSERT INTO `marque` (`id`, `nom`) VALUES
(1, 'Dacia'),
(3, 'Citroen2'),
(4, 'Peugeot'),
(7, 'Porshe'),
(8, 'Audi'),
(9, 'Kia'),
(10, 'Jojo');

-- --------------------------------------------------------

--
-- Table structure for table `modele`
--

CREATE TABLE `modele` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `marque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modele`
--

INSERT INTO `modele` (`id`, `nom`, `prix`, `marque`) VALUES
(1, 'Sandero', 18000, 1),
(2, 'Megane', 24000, 2),
(3, 'Scenic', 12000, 2),
(4, 'C2', 1300, 3),
(6, 'C5 Aircross', 13000, 3),
(7, 'DS3', 20000, 3),
(11, 'Picanto', 7600, 9),
(12, 'Stonic', 20000, 9),
(13, 'Sportage', 24000, 9),
(14, 'Sorento', 32000, 9),
(15, 'Siphon', 12000, 1),
(16, 'Oto', 20000, 1),
(17, 'Mixo', 34000, 1),
(18, 'Cayenne', 90000, 7),
(19, 'Cooper', 76000, 7),
(21, '5008', 23000, 4),
(22, '208', 10000, 4),
(23, '108', 7000, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marque`
--
ALTER TABLE `marque`
  ADD KEY `id` (`id`);

--
-- Indexes for table `modele`
--
ALTER TABLE `modele`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `marque` (`marque`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `modele`
--
ALTER TABLE `modele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
