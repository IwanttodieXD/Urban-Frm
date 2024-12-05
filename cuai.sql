-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost: 3306
-- Generation Time: Dec 03, 2024 at 05:33 AM
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
-- Database: `cuai`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `AccountID` int(5) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `UserType` varchar(30) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `AttendanceID` int(11) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL,
  `AttendanceDate` date NOT NULL,
  `TimeIn` time NOT NULL,
  `TimeOut` time NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tb`
--

CREATE TABLE `employee_tb` (
  `EmployeeID` varchar(20) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Mname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `Bdate` date NOT NULL,
  `Sex` varchar(15) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `HireDate` date NOT NULL,
  `Position` varchar(50) NOT NULL,
  `UserType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Links` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `harvestingrecords`
--

CREATE TABLE `harvestingrecords` (
  `HarvestID` int(11) NOT NULL,
  `PlantName` varchar(100) NOT NULL,
  `DateOfHarvest` date NOT NULL,
  `HarvestBatch` int(10) NOT NULL,
  `NoPlantsHarvested` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Remarks` text NOT NULL,
  `BatchNumber` int(10) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaveapplication`
--

CREATE TABLE `leaveapplication` (
  `LeaveID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `TypeofLeave` varchar(50) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `TotalDays` int(5) NOT NULL,
  `DateFiled` date NOT NULL,
  `Reason` text NOT NULL,
  `Status` varchar(20) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plantingrecords`
--

CREATE TABLE `plantingrecords` (
  `PlantID` int(11) NOT NULL,
  `PlantName` varchar(100) NOT NULL,
  `BatchNum` int(10) NOT NULL,
  `NoSeedsPlanted` int(5) NOT NULL,
  `PlantingDate` date NOT NULL,
  `PlantingNote` text NOT NULL,
  `NoSeedsTransplanted` int(5) NOT NULL,
  `DateTransplanted` date NOT NULL,
  `TransplantingNote` text NOT NULL,
  `PotMixUsed` varchar(50) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `potmix`
--

CREATE TABLE `potmix` (
  `MixID` int(11) NOT NULL,
  `ItemName` varchar(100) NOT NULL,
  `Stock` int(10) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `potmixusage`
--

CREATE TABLE `potmixusage` (
  `UsageID` int(11) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `UsageDate` date NOT NULL,
  `MixID` int(5) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `ToolID` int(11) NOT NULL,
  `ItemName` varchar(100) NOT NULL,
  `Count` int(10) NOT NULL,
  `PurchaseAmount` decimal(8,2) NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toolsusage`
--

CREATE TABLE `toolsusage` (
  `UsageID` int(11) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `UsageDate` date NOT NULL,
  `ToolID` int(5) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`AccountID`,`EmployeeID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`AttendanceID`,`EmployeeID`);

--
-- Indexes for table `employee_tb`
--
ALTER TABLE `employee_tb`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `harvestingrecords`
--
ALTER TABLE `harvestingrecords`
  ADD PRIMARY KEY (`HarvestID`,`EmployeeID`);

--
-- Indexes for table `leaveapplication`
--
ALTER TABLE `leaveapplication`
  ADD PRIMARY KEY (`LeaveID`,`EmployeeID`);

--
-- Indexes for table `plantingrecords`
--
ALTER TABLE `plantingrecords`
  ADD PRIMARY KEY (`PlantID`,`EmployeeID`);

--
-- Indexes for table `potmix`
--
ALTER TABLE `potmix`
  ADD PRIMARY KEY (`MixID`);

--
-- Indexes for table `potmixusage`
--
ALTER TABLE `potmixusage`
  ADD PRIMARY KEY (`UsageID`,`EmployeeID`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`ToolID`);

--
-- Indexes for table `toolsusage`
--
ALTER TABLE `toolsusage`
  ADD PRIMARY KEY (`UsageID`,`EmployeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `AccountID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `AttendanceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harvestingrecords`
--
ALTER TABLE `harvestingrecords`
  MODIFY `HarvestID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaveapplication`
--
ALTER TABLE `leaveapplication`
  MODIFY `LeaveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plantingrecords`
--
ALTER TABLE `plantingrecords`
  MODIFY `PlantID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `potmix`
--
ALTER TABLE `potmix`
  MODIFY `MixID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `potmixusage`
--
ALTER TABLE `potmixusage`
  MODIFY `UsageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `ToolID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toolsusage`
--
ALTER TABLE `toolsusage`
  MODIFY `UsageID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
