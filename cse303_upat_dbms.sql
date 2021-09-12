-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 02:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse303_upat_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment_t`
--

CREATE TABLE `assessment_t` (
  `AssessmentID` int(3) NOT NULL,
  `AssessmentName` varchar(10) NOT NULL,
  `TotalMarks` varchar(3) NOT NULL,
  `SectionID` varchar(9) NOT NULL,
  `COID` varchar(3) NOT NULL,
  `QuestionNUmber` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assessment_t`
--

INSERT INTO `assessment_t` (`AssessmentID`, `AssessmentName`, `TotalMarks`, `SectionID`, `COID`, `QuestionNUmber`) VALUES
(1, 'Quiz', '15', 'CSE303_1', '1', '2'),
(2, 'MidTerm', '30', 'CSE303_1', '2', '3'),
(3, 'Project', '15', 'CSE303_1', '1', '4'),
(4, 'Final', '40', 'CSE303_1', '2', '5'),
(5, 'Quiz', '15', 'CSE303_2', '1', '2'),
(6, 'MidTerm', '30', 'CSE303_2', '2', '3'),
(7, 'Project', '15', 'CSE303_2', '1', '4'),
(8, 'Final', '40', 'CSE303_2', '2', '5'),
(9, 'Quiz', '15', 'CSE501_1', '3', '1'),
(10, 'MidTerm', '30', 'CSE501_1', '3', '2'),
(11, 'Project', '15', 'CSE501_1', '4', '3'),
(12, 'Final', '40', 'CSE501_1', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `course_t`
--

CREATE TABLE `course_t` (
  `CourseID` varchar(7) NOT NULL,
  `CourseTitle` varchar(20) NOT NULL,
  `NumberOfCredit` varchar(4) NOT NULL,
  `ProgramID` varchar(10) NOT NULL,
  `MappedCourseID` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_t`
--

INSERT INTO `course_t` (`CourseID`, `CourseTitle`, `NumberOfCredit`, `ProgramID`, `MappedCourseID`) VALUES
('ACN101', 'Introduction to acco', '3', 'BBA-ACN', ''),
('ACN301', 'Intermediate Account', '3', 'BBA-ACN', ''),
('ACN513', 'Advance accounting', '3', 'MBA-ACN', ''),
('ACN520', 'Income tax accountin', '3', 'MBA-ACN', ''),
('CSE203', 'Data Structure', '3', 'B.Sc-CSE', ''),
('CSE303', 'Database management', '3', 'B.Sc-CSE', ''),
('CSE501', 'Theory of Programmin', '3', 'M.Sc-CSE', ''),
('CSE503', 'Design and Analysis ', '3', 'M.Sc-CSE', ''),
('EEE131', 'Electrical Circuit', '4', 'B.Sc-EEE', ''),
('EEE231', 'Signals and Systems', '4', 'B.Sc-EEE', ''),
('EEE501', 'Stochastic Processes', '3', 'M.Sc-EEE', ''),
('EEE502', 'Advanced Digital Com', '3', 'M.Sc-EEE', ''),
('HSC530', 'Human Health and Dis', '3', 'MPH', ''),
('HSC531', 'Epidemiology', '3', 'MPH', ''),
('MIS341', 'Computers in Busines', '3', 'BBA-MIS', ''),
('MIS442', 'Management Informati', '3', 'BBA-MIS', ''),
('PHA101', 'Introduction of Phar', '3', 'BPharm', ''),
('PHA203', 'Complementary and Al', '3', 'BPharm', '');

-- --------------------------------------------------------

--
-- Table structure for table `co_t`
--

CREATE TABLE `co_t` (
  `COID` int(4) NOT NULL,
  `CourseID` varchar(7) NOT NULL,
  `CONumber` varchar(3) NOT NULL,
  `CODescription` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co_t`
--

INSERT INTO `co_t` (`COID`, `CourseID`, `CONumber`, `CODescription`) VALUES
(1, 'CSE303', 'CO1', 'Apply'),
(2, 'CSE303', 'CO2', 'Describe\r\n'),
(3, 'CSE501', 'CO3', 'Explain'),
(4, 'CSE501', 'CO4', 'Solve'),
(5, 'CSE503', 'CO5', 'Analys'),
(6, 'EEE131', 'CO2', 'Describe'),
(7, 'EEE131', 'CO3', 'Explain');

-- --------------------------------------------------------

--
-- Table structure for table `department_t`
--

CREATE TABLE `department_t` (
  `DepartmentID` varchar(10) NOT NULL,
  `DepartmentName` varchar(20) NOT NULL,
  `SchoolID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_t`
--

INSERT INTO `department_t` (`DepartmentID`, `DepartmentName`, `SchoolID`) VALUES
('ACN', 'Accounting', 'SBE'),
('CSE', 'Computer Science and', 'SETS'),
('EEE', 'Electrical and Elect', 'SETS'),
('MIS', 'Management Informati', 'SBE'),
('PH', 'Public Health', 'SPPH'),
('Pharm', 'Pharmacy', 'SPPH');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_t`
--

CREATE TABLE `evaluation_t` (
  `EvaluationID` int(7) NOT NULL,
  `AssessmentID` varchar(7) NOT NULL,
  `ObtainMarks` int(11) DEFAULT NULL,
  `StudentID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_t`
--

INSERT INTO `evaluation_t` (`EvaluationID`, `AssessmentID`, `ObtainMarks`, `StudentID`) VALUES
(1, '1', 7, '1345678'),
(2, '2', 20, '1345678'),
(3, '3', 10, '1345678'),
(4, '4', 33, '1345678'),
(5, '1', 12, '1853478'),
(6, '2', 25, '1853478'),
(7, '3', 13, '1853478'),
(8, '4', 35, '1853478'),
(9, '9', 8, '1567893'),
(10, '10', 18, '1567893'),
(11, '11', 14, '1567893'),
(12, '12', 30, '1567893');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_t`
--

CREATE TABLE `instructor_t` (
  `InstructorID` varchar(7) NOT NULL,
  `InstructorName` varchar(20) NOT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `DepartmentID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor_t`
--

INSERT INTO `instructor_t` (`InstructorID`, `InstructorName`, `Email`, `DepartmentID`) VALUES
('1545', 'Abu Sayed', '', 'CSE'),
('4565', 'Noor Muhammad', '', 'ACN'),
('4666', 'Sadita Ahmed', '', 'CSE'),
('4755', 'Shahriar Kabir', '', 'ACN'),
('4878', 'Tasnim Hassan', '', 'Pharm'),
('5589', 'Muhammad hosain', '', 'MIS'),
('5645', 'Anik Mahmud', '', 'EEE'),
('7893', 'Motiur Rahman', '', 'PH'),
('8488', 'Sheikh Kaniz', '', 'MIS'),
('8793', ' Sharif Rahman', '', 'PH');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_t`
--

CREATE TABLE `mapping_t` (
  `COID` varchar(10) NOT NULL,
  `PLOID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping_t`
--

INSERT INTO `mapping_t` (`COID`, `PLOID`) VALUES
('1', '11'),
('2', '11'),
('3', '16'),
('4', '16'),
('5', '16'),
('6', '12'),
('7', '12');

-- --------------------------------------------------------

--
-- Table structure for table `plo_t`
--

CREATE TABLE `plo_t` (
  `PLOID` int(4) NOT NULL,
  `ProgramID` varchar(10) NOT NULL,
  `PLONumber` varchar(15) NOT NULL,
  `PLODomain` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plo_t`
--

INSERT INTO `plo_t` (`PLOID`, `ProgramID`, `PLONumber`, `PLODomain`) VALUES
(11, 'B.Sc_CSE', 'PLO4', 'Design'),
(12, 'B.Sc_EEE', 'PLO1', 'Knowledge'),
(13, 'BBA_ACN', 'PLO1', 'Knowledge'),
(14, 'BBA_MIS', 'PLO3', 'Problem Analysis'),
(15, 'BPharm ', 'PLO3', 'Problem Analysis'),
(16, 'M.Sc_CSE', 'PLO5', 'Problem Solving'),
(17, 'M.Sc_EEE', 'PLO2', 'Requirement Analysis'),
(18, 'MBA_ACN', 'PLO2', 'Requirement Analysis'),
(19, 'MPH', 'PLO4', 'Design');

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_t`
--

CREATE TABLE `prerequisite_t` (
  `CourseID` varchar(7) NOT NULL,
  `PrerequisiteCourseID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisite_t`
--

INSERT INTO `prerequisite_t` (`CourseID`, `PrerequisiteCourseID`) VALUES
('ACE301', 'ACN101'),
('CSE303', 'CSE203'),
('EEE231', 'EEE131');

-- --------------------------------------------------------

--
-- Table structure for table `program_t`
--

CREATE TABLE `program_t` (
  `ProgramID` varchar(10) NOT NULL,
  `ProgramName` varchar(20) NOT NULL,
  `DepartmentID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_t`
--

INSERT INTO `program_t` (`ProgramID`, `ProgramName`, `DepartmentID`) VALUES
('B.Sc-CSE', 'Bachelor of Science ', 'CSE'),
('B.Sc-EEE', 'Bachelor of Science ', 'EEE'),
('BBA-ACN', 'Bachelor of Business', 'ACN'),
('BBA-MIS', 'Bachelor of Business', 'MIS'),
('BPharm', 'Bachelor of Pharmacy', 'Pharm'),
('M.Sc-CSE', 'Master of Science in', 'CSE'),
('M.Sc-EEE', 'Master of Science in', 'EEE'),
('MBA-ACN', 'Master of Business A', 'ACN'),
('MPH', 'Master of Public Hea', 'PH');

-- --------------------------------------------------------

--
-- Table structure for table `registrations_t`
--

CREATE TABLE `registrations_t` (
  `StudentID` varchar(7) NOT NULL,
  `SectionID` varchar(9) NOT NULL,
  `DateOfRegistration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrations_t`
--

INSERT INTO `registrations_t` (`StudentID`, `SectionID`, `DateOfRegistration`) VALUES
('1345678', 'CSE203_2', '2020-05-04 00:00:00'),
('1345678', 'CSE303_1', '2020-01-26 00:00:00'),
('1567893', 'CSE501_1', '2021-06-02 00:00:00'),
('1659636', 'EEE131_1', '2021-06-02 00:00:00'),
('1659636', 'EEE231_1', '2021-01-26 00:00:00'),
('1853478', 'CSE303_1', '2020-06-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `school_t`
--

CREATE TABLE `school_t` (
  `SchoolID` varchar(10) NOT NULL,
  `SchoolName` varchar(20) NOT NULL,
  `UniversityID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_t`
--

INSERT INTO `school_t` (`SchoolID`, `SchoolName`, `UniversityID`) VALUES
('SBE', 'School of Business &', 'IUB'),
('SETS', 'School of Engineerin', 'NSU'),
('SPPH', 'School of Pharmacy A', 'AIUB');

-- --------------------------------------------------------

--
-- Table structure for table `section_t`
--

CREATE TABLE `section_t` (
  `SectionID` varchar(9) NOT NULL,
  `CourseID` varchar(7) NOT NULL,
  `SectionNumber` varchar(2) NOT NULL,
  `InstructorID` varchar(7) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section_t`
--

INSERT INTO `section_t` (`SectionID`, `CourseID`, `SectionNumber`, `InstructorID`, `Semester`, `Year`) VALUES
('ACN101_1', 'ACN101', '1', '4565', 'Spring', '2020'),
('ACN101_2', 'ACN101', '2', '4755', 'Spring', '2020'),
('ACN301_1', 'ACN301', '1', '4565', 'Summer', '2020'),
('ACN301_2', 'ACN301', '2', '4755', 'Summer', '2021'),
('ACN513_1', 'ACN513', '1', '4565', 'Autumn', '2020'),
('ACN520_1', 'ACN520', '1', '4755', 'Summer', '2021'),
('CSE203_1', 'CSE303', '2', '1545', 'Summer', '2020'),
('CSE203_2', 'CSE203', '2', '4666', 'Spring', '2021'),
('CSE303_1', 'CSE303', '1', '4666', 'Spring', '2020'),
('CSE303_2', 'CSE303', '2', '1545', 'Summer', '2020'),
('CSE501_1', 'CSE501', '1', '1545', 'Spring', '2021'),
('CSE503_1', 'CSE503', '1', '1545', 'Spring', '2020'),
('EEE131_1', 'EEE131', '1', '5645', 'Spring', '2020'),
('EEE231_1', 'EEE231', '1', '5645', 'Autumn', '2021'),
('EEE501_1', 'EEE501', '1', '5645', 'Spring', '2021'),
('EEE501_2', 'EEE501', '1', '5645', 'Summer', '2021'),
('EEE502_1', 'EEE502', '1', '5645', 'Summer', '2021'),
('HSC530_1', 'HSC530', '1', '8793', 'Spring', '2021'),
('HSC531_1', 'HSC531', '1', '8793', 'Spring', '2020'),
('MIS341_1', 'MIS341', '1', '5589', 'Summer', '2020'),
('MIS341_2', 'MIS341', '2', '8488', 'Spring', '2021'),
('MIS442_1', 'MIS442', '1', '5589', 'Spring', '2021'),
('MIS442_2', 'MIS442', '2', '8488', 'Summer', '2021'),
('PHA101_1', 'PHA101', '1', '4878', 'Spring', '2021'),
('PHA203_1', 'PHA203', '1', '4878', 'Autumn', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `student_t`
--

CREATE TABLE `student_t` (
  `StudentID` varchar(7) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `SecondName` varchar(40) NOT NULL,
  `DateOfBirth` datetime NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `EmailS` varchar(20) DEFAULT NULL,
  `NID` char(17) DEFAULT NULL,
  `ProgramID` varchar(10) NOT NULL,
  `EnrollmentDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_t`
--

INSERT INTO `student_t` (`StudentID`, `FirstName`, `SecondName`, `DateOfBirth`, `Gender`, `EmailS`, `NID`, `ProgramID`, `EnrollmentDate`) VALUES
('1345678', 'Munna', 'Kabir', '1992-05-25 00:00:00', 'Male', '', '', 'B.Sc_CSE', '0000-00-00 00:00:00'),
('1456789', 'Shariar', 'Rahman', '2000-02-20 00:00:00', 'Male', '', '', 'MPH', '0000-00-00 00:00:00'),
('1567893', 'Lamisa', 'Khan', '1995-07-10 00:00:00', 'Female', '', '', 'M.Sc_CSE', '0000-00-00 00:00:00'),
('1659636', 'Ferdous', 'Shahriar', '1997-10-05 00:00:00', 'Male', '', '', 'B.Sc_EEE', '0000-00-00 00:00:00'),
('1765349', 'Ruby', 'Rashid', '1999-02-04 00:00:00', 'Female', '', '', 'BBA_MIS', '0000-00-00 00:00:00'),
('1787536', 'Sumaiya', 'Mustarin', '1998-05-22 00:00:00', 'Female', '', '', 'M.Sc_EEE', '0000-00-00 00:00:00'),
('1789467', 'Shanta', 'Akhtar', '1995-10-30 00:00:00', 'Female', '', '', 'MBA_ACN', '0000-00-00 00:00:00'),
('1853478', 'Tahsin', 'Shahrin', '1998-04-30 00:00:00', 'Female', '', '', 'B.Sc_CSE', '0000-00-00 00:00:00'),
('1887468', 'Fahad', 'Islam', '1997-05-23 00:00:00', 'Male', '', '', 'BBA_ACN', '0000-00-00 00:00:00'),
('1890654', 'Anika', 'Rahman', '1996-12-31 00:00:00', 'Female', '', '', 'BPharm', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `university_t`
--

CREATE TABLE `university_t` (
  `UniversityID` varchar(10) NOT NULL,
  `UniversityName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `university_t`
--

INSERT INTO `university_t` (`UniversityID`, `UniversityName`) VALUES
('AIUB', 'American International University Bangla'),
('IUB', 'Independent University Bangladesh'),
('NSU', 'North South University');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment_t`
--
ALTER TABLE `assessment_t`
  ADD PRIMARY KEY (`AssessmentID`),
  ADD KEY `AT_fk1` (`SectionID`),
  ADD KEY `AT_fk2` (`COID`);

--
-- Indexes for table `course_t`
--
ALTER TABLE `course_t`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `CT_fk1` (`ProgramID`),
  ADD KEY `CT_fk2` (`MappedCourseID`);

--
-- Indexes for table `co_t`
--
ALTER TABLE `co_t`
  ADD PRIMARY KEY (`COID`),
  ADD KEY `CoT_fk` (`CourseID`);

--
-- Indexes for table `department_t`
--
ALTER TABLE `department_t`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `DT_fk` (`SchoolID`);

--
-- Indexes for table `evaluation_t`
--
ALTER TABLE `evaluation_t`
  ADD PRIMARY KEY (`EvaluationID`),
  ADD KEY `ET_fk1` (`AssessmentID`),
  ADD KEY `ET_fk2` (`StudentID`);

--
-- Indexes for table `instructor_t`
--
ALTER TABLE `instructor_t`
  ADD PRIMARY KEY (`InstructorID`),
  ADD KEY `IT_fk` (`DepartmentID`);

--
-- Indexes for table `mapping_t`
--
ALTER TABLE `mapping_t`
  ADD PRIMARY KEY (`COID`,`PLOID`),
  ADD KEY `MT_fk1` (`COID`),
  ADD KEY `MT_fk2` (`PLOID`);

--
-- Indexes for table `plo_t`
--
ALTER TABLE `plo_t`
  ADD PRIMARY KEY (`PLOID`),
  ADD KEY `PloT_fk` (`ProgramID`);

--
-- Indexes for table `prerequisite_t`
--
ALTER TABLE `prerequisite_t`
  ADD PRIMARY KEY (`CourseID`,`PrerequisiteCourseID`),
  ADD KEY `PreT_fk1` (`CourseID`),
  ADD KEY `PreT_fk2` (`PrerequisiteCourseID`);

--
-- Indexes for table `program_t`
--
ALTER TABLE `program_t`
  ADD PRIMARY KEY (`ProgramID`),
  ADD KEY `PT_fk` (`DepartmentID`);

--
-- Indexes for table `registrations_t`
--
ALTER TABLE `registrations_t`
  ADD PRIMARY KEY (`StudentID`,`SectionID`),
  ADD KEY `RT_fk1` (`StudentID`),
  ADD KEY `RT_fk2` (`SectionID`);

--
-- Indexes for table `school_t`
--
ALTER TABLE `school_t`
  ADD PRIMARY KEY (`SchoolID`),
  ADD KEY `ScT_fk` (`UniversityID`);

--
-- Indexes for table `section_t`
--
ALTER TABLE `section_t`
  ADD PRIMARY KEY (`SectionID`),
  ADD KEY `SecT_fk1` (`CourseID`),
  ADD KEY `SecT_fk2` (`InstructorID`);

--
-- Indexes for table `student_t`
--
ALTER TABLE `student_t`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `ST_fk` (`ProgramID`);

--
-- Indexes for table `university_t`
--
ALTER TABLE `university_t`
  ADD PRIMARY KEY (`UniversityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment_t`
--
ALTER TABLE `assessment_t`
  MODIFY `AssessmentID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `co_t`
--
ALTER TABLE `co_t`
  MODIFY `COID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `evaluation_t`
--
ALTER TABLE `evaluation_t`
  MODIFY `EvaluationID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `plo_t`
--
ALTER TABLE `plo_t`
  MODIFY `PLOID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
