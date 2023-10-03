-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 07:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `City_id` int(11) NOT NULL,
  `City_name` varchar(50) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`City_id`, `City_name`, `Latitude`, `Longitude`, `Country_id`) VALUES
(1, 'Berlin', 52.52, 13.405, 1),
(2, 'Belgrade', 44.7872, 20.4573, 2),
(3, 'Zagreb', 45.8154, 15.9666, 3),
(4, 'New York', 40.7306, -73.9352, 4),
(5, 'Los Angeles', 34.0522, -118.244, 4),
(6, 'Warsaw', 52.237, 21.0175, 5);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Country_id` int(11) NOT NULL,
  `Country_name` varchar(50) NOT NULL,
  `Country_name_eng` varchar(50) NOT NULL,
  `Country_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Country_id`, `Country_name`, `Country_name_eng`, `Country_code`) VALUES
(1, 'Deutschland', 'Germany', 'DEU'),
(2, 'Srbija', 'Serbia', 'SRB'),
(3, 'Hrvatska', 'Croatia', 'HRV'),
(4, 'United States of America', 'United States of America', 'USA'),
(5, 'Polska', 'Poland', 'POL'),
(6, 'Espana', 'Spain', 'ESP'),
(7, 'Rossiya', 'Russia', 'RUS');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `Customer_name` varchar(50) DEFAULT NULL,
  `City_id` int(11) DEFAULT NULL,
  `Customer_address` varchar(50) DEFAULT NULL,
  `Next_call_date` date DEFAULT NULL,
  `ts_inserted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Customer_name`, `City_id`, `Customer_address`, `Next_call_date`, `ts_inserted`) VALUES
(1, 'Jewelry_store', 4, 'Long Street 120', '2020-01-21', '2020-01-09 01:20:00'),
(2, 'Bakery', 1, 'Kurfurstendamm 25', '2020-02-21', '2020-01-09 17:52:15'),
(3, 'Cafe', 1, 'Tauentzienstrase 44', '2020-01-21', '2020-01-10 08:02:49'),
(4, 'Restaurant', 3, 'Ucila lipa 15', '2020-01-21', '2020-01-10 09:10:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`City_id`),
  ADD KEY `Country_id` (`Country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD KEY `City_id` (`City_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `City_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `Country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`Country_id`) REFERENCES `country` (`Country_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`City_id`) REFERENCES `city` (`City_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

Task 1: 
SELECT c.Country_name, c.Country_name_eng, c.Country_code, cu.Customer_name, cu.Customer_address, cu.Next_call_date 
FROM country c
LEFT JOIN city ci ON c.Country_id = ci.Country_id
LEFT JOIN customer cu ON ci.City_id = cu.City_id;


task 2:
SELECT c.Country_name_eng, c.Country_code, cu.Customer_name, cu.Customer_address
FROM country c
LEFT JOIN city ci ON ci.Country_id = c.Country_id
INNER JOIN customer cu ON cu.City_id = ci.City_id
WHERE ci.Country_id IS NOT NULL
ORDER BY c.Country_name_eng;