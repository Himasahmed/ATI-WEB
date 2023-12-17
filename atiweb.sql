-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 10:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atiweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `TitleInShort` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `Title`, `TitleInShort`, `Description`) VALUES
(1, 'HND In Information Technology', 'HNDIT', 'it a It course'),
(2, 'HND in Accontancy', 'HNDA', 'accounting course digree'),
(3, 'HND in Tourism', 'HNDTHM', 'Tourism Course'),
(4, 'HND in English', 'HNDE', 'English Diploma');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LecID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LecID`, `Name`, `Email`, `Designation`, `CourseID`, `Gender`, `Password`) VALUES
(1, 'himas', 'himas123@gmail.com', 'Senior Lecturer I', 3, 'Male', '$2y$10$mw.PRx4R1XT9Hiv506kQLOOBGqjkzp4piXjsyjpIeYbPfLQag9sZy'),
(2, 'himas ahm', 'him123@gmail.com', 'Senior Lecturer II', 4, 'Male', '$2y$10$W57iesNgl/A6O1cRNpcnT.ectwbh2H4PMSV5NrSlGQwI93qpVM8fu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LecID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `CourseID` (`CourseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `LecID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
