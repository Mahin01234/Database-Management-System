-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 21, 2026 at 06:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(50) DEFAULT NULL,
  `Credit` int(11) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseName`, `Credit`, `DepartmentID`) VALUES
(201, 'Programming Fundamentals', 3, 1),
(202, 'Data Structures', 3, 1),
(203, 'Circuit Analysis', 3, 2),
(204, 'Thermodynamics', 3, 3),
(205, 'Structural Engineering', 3, 4),
(206, 'Accounting', 3, 5),
(207, 'Calculus', 3, 6),
(208, 'Quantum Physics', 3, 7),
(209, 'Organic Chemistry', 3, 8),
(210, 'Microeconomics', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'Computer Science'),
(2, 'Electrical Engineering'),
(3, 'Mechanical Engineering'),
(4, 'Civil Engineering'),
(5, 'Business Administration'),
(6, 'Mathematics'),
(7, 'Physics'),
(8, 'Chemistry'),
(9, 'English'),
(10, 'Economics');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `EnrollmentID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `Semester` varchar(20) DEFAULT NULL,
  `Grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`EnrollmentID`, `StudentID`, `CourseID`, `Semester`, `Grade`) VALUES
(1, 101, 201, 'Spring 2025', 'A'),
(2, 102, 202, 'Spring 2025', 'B+'),
(3, 103, 201, 'Spring 2025', 'A-'),
(4, 104, 204, 'Fall 2025', 'B'),
(5, 105, 205, 'Fall 2025', 'A'),
(6, 106, 206, 'Spring 2026', 'A+'),
(7, 107, 207, 'Spring 2026', 'B+'),
(8, 108, 208, 'Fall 2026', 'A-'),
(9, 109, 209, 'Fall 2026', 'B'),
(10, 110, 210, 'Spring 2027', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `StudentName`, `Gender`, `DepartmentID`) VALUES
(101, 'Rahim', 'Male', 1),
(102, 'Karim', 'Male', 2),
(103, 'Ayesha', 'Female', 1),
(104, 'Fatema', 'Female', 3),
(105, 'Nabil', 'Male', 4),
(106, 'Sumaiya', 'Female', 5),
(107, 'Hasan', 'Male', 6),
(108, 'Nusrat', 'Female', 7),
(109, 'Sabbir', 'Male', 8),
(110, 'Mim', 'Female', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`EnrollmentID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
