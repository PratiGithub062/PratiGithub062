-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 09:23 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `draoopintmentdb_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `UserId` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`UserId`, `Name`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_details`
--

CREATE TABLE `tbl_appointment_details` (
  `Pname` varchar(30) NOT NULL,
  `Paddress` varchar(100) NOT NULL,
  `Pcontact` varchar(12) NOT NULL,
  `Pemail` varchar(50) NOT NULL,
  `PAdate` varchar(10) NOT NULL,
  `PAtime` varchar(8) NOT NULL,
  `Pid` int(11) NOT NULL,
  `DoctorName` varchar(30) NOT NULL,
  `Remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointment_details`
--

INSERT INTO `tbl_appointment_details` (`Pname`, `Paddress`, `Pcontact`, `Pemail`, `PAdate`, `PAtime`, `Pid`, `DoctorName`, `Remark`) VALUES
('dinesh Kumar Patel', '458 rgh ', '9986958654', 'dk@gmail.com', '2017-08-23', '23:11', 10, '1', 'illeness'),
('raju', 'jsg', '4589658452', 'r@gmail.com', '2017-08-24', '15:00', 12, '2', 'pain in whole body'),
('gulsan', 'sp', '5896547896', 'g@gmail.com', '2017-08-24', '16:00', 13, '2', 'aaa'),
('Prajna Bharati Dash', 'Saheed Nagar', '8093479757', 'prajna.dash123@gmail.com', '2018-03-30', '13:59', 14, '5', 'Ok.'),
('Madhu', 'Saheednagar', '9011066000', 'abc1@gmail.in', '2022-06-10', '13:00', 15, '7', 'Headache');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city_details`
--

CREATE TABLE `tbl_city_details` (
  `CityId` int(11) NOT NULL,
  `CityName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city_details`
--

INSERT INTO `tbl_city_details` (`CityId`, `CityName`) VALUES
(15, 'Bhubaneswar'),
(16, 'Cuttack'),
(17, 'Puri'),
(19, 'Raipur'),
(21, 'Lucknow');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_consulting_details`
--

CREATE TABLE `tbl_doctor_consulting_details` (
  `Dcid` int(11) NOT NULL,
  `DoctorId` int(11) NOT NULL,
  `ConsultingDay` varchar(20) DEFAULT NULL,
  `FromTime` varchar(10) DEFAULT NULL,
  `ToTime` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_doctor_consulting_details`
--

INSERT INTO `tbl_doctor_consulting_details` (`Dcid`, `DoctorId`, `ConsultingDay`, `FromTime`, `ToTime`) VALUES
(87, 1, 'Sunday', '12:00 PM', '02:00 PM'),
(88, 1, 'Monday', '12:00 PM', '04:30 PM'),
(89, 1, 'Tuesday', '12:00 PM', '03:30 PM'),
(90, 1, 'Wednesday', '12:30 PM', '04:30 PM'),
(91, 1, 'Thursday', 'close', 'close'),
(92, 1, 'Friday', '12:30 PM', '03:00 PM'),
(93, 1, 'Saturday', '01:00 AM', '02:30 AM'),
(94, 2, 'Sunday', '12 00 PM', '04 00 PM'),
(95, 2, 'Monday', '', ''),
(96, 2, 'Tuesday', '', ''),
(97, 2, 'Wednesday', '', ''),
(98, 2, 'Thursday', '', ''),
(99, 2, 'Friday', '', ''),
(100, 2, 'Saturday', '', ''),
(108, 4, 'Sunday', '06:00 AM', '02:30 AM'),
(109, 4, 'Monday', '', ''),
(110, 4, 'Tuesday', '', ''),
(111, 4, 'Wednesday', '', ''),
(112, 4, 'Thursday', '', ''),
(113, 4, 'Friday', '', ''),
(114, 4, 'Saturday', '', ''),
(115, 5, 'Sunday', '10:00 AM', '02:30 PM'),
(116, 5, 'Monday', '12:00 AM', '01:00 AM'),
(117, 5, 'Tuesday', '', ''),
(118, 5, 'Wednesday', '', ''),
(119, 5, 'Thursday', '', ''),
(120, 5, 'Friday', '', ''),
(121, 5, 'Saturday', '', ''),
(122, 6, 'Sunday', '10:00 AM', '09:00 PM'),
(123, 6, 'Monday', '10:00 AM', '09:00 PM'),
(124, 6, 'Tuesday', '10:00 AM', '09:00 PM'),
(125, 6, 'Wednesday', '10:00 AM', '09:00 PM'),
(126, 6, 'Thursday', '10:00 AM', '09:00 PM'),
(127, 6, 'Friday', '10:00 AM', '09:00 PM'),
(128, 6, 'Saturday', '10:00 AM', '09:00 PM'),
(129, 7, 'Sunday', '', ''),
(130, 7, 'Monday', '10:00 AM', '04:00 PM'),
(131, 7, 'Tuesday', '10:00 AM', '04:00 PM'),
(132, 7, 'Wednesday', '10:00 AM', '04:00 PM'),
(133, 7, 'Thursday', '10:00 AM', '04:00 PM'),
(134, 7, 'Friday', '10:00 AM', '04:00 PM'),
(135, 7, 'Saturday', '10:00 AM', '04:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_details`
--

CREATE TABLE `tbl_doctor_details` (
  `DoctorId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `LocationId` int(11) NOT NULL,
  `SpecialistId` int(11) NOT NULL,
  `RegistrationDate` varchar(10) NOT NULL,
  `RegistrationTime` varchar(11) NOT NULL,
  `Qualification` varchar(50) NOT NULL,
  `Experience` varchar(50) NOT NULL,
  `Practice` varchar(100) NOT NULL,
  `About` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `ContactNo` varchar(13) NOT NULL,
  `VisitingHour` varchar(100) NOT NULL,
  `ConsultingCharge` varchar(20) NOT NULL,
  `DoctorName` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_doctor_details`
--

INSERT INTO `tbl_doctor_details` (`DoctorId`, `CityId`, `LocationId`, `SpecialistId`, `RegistrationDate`, `RegistrationTime`, `Qualification`, `Experience`, `Practice`, `About`, `Address`, `EmailId`, `ContactNo`, `VisitingHour`, `ConsultingCharge`, `DoctorName`, `Password`, `Image`) VALUES
(1, 15, 1, 1, '08/17/2017', '12:38:22 pm', 'MBBS', '5 year', 'Private Job,Apollo Hospital', 'Shine 32 is a Dental clinic in Gariahat, Kolkata. The clinic is visited by doctors like Dr. Sukirti Mandal Biswas. The timings of Shine 32 are: Mon to Sat: 11:30 AM-7:00 PM and Sun: 4:00 PM-8:00 PM. S', 'Kolkata,Salt Lake', 'dineshpatel123@gmail.com', '  5698986529', 'mon-sun : 01 pm -05 pm', '800 Rs.', 'Dr Dinesh Kumar Patel', '111', 'images/1503990792aa.png'),
(2, 15, 1, 1, '08/17/2017', '16:29:44 pm', 'mbbs', '15 years', 'job', 'abc', '11 sahid nagar bhubaneswar odisha', 'r@gmail.com', '7895874587', 'sun-sat : 02 pm-05 pm', '500 Rs', 'raj', '111', NULL),
(4, 15, 1, 1, '08/24/2017', '15:24:50 pm', 'md', '10 year', 'private', 'ada', '35ada', 'SD@gmail.com', '5887689631', 'mon-thu :10 am - 03 pm\r\nfri-sat : 12 pm - 04 pm', '500', 'xdg', '111', NULL),
(5, 15, 1, 1, '03/22/2018', '13:53:21 pm', 'MBBS', '10 Years', 'Govt Job', 'DrBijay Kumar Dash says work is not only a profession but also a passion, a worship for him. Has completed his education from BDS - Buddha Institute of Dental Sciences Hospital, 1993. Member of Indian', 'plot no:359,2nd floor,\r\nRuali square', 'bkdash134@gmail.com', ' 7896541235', '10:00 AM-2:30 PM', '200', 'DrBijay Kumar Dash', '111', 'images/1521707409new3.jpg'),
(6, 21, 7, 7, '03/30/2018', '11:05:09 am', 'MBBS', '10 Years Experience', 'Central Govt. Job', 'Dr. Sambit Das is a Endocrinologist and General Physician in Gajapati Nagar, Bhubaneswar and has an experience of 9 years in these fields. Dr. Sambit Das practices at Apollo Hospitals in Gajapati Naga', 'Bhubaneswar', 'sauravmishra@gmail.com', '7854123698', 'Mon-Sunday\r\n10:00AM-9:00PM', '300', 'Dr Saurav Mishra', '123', NULL),
(7, 15, 1, 1, '06/10/2022', '12:06:54 pm', 'MBBS', '5yrs', 'Job', 'Dr. Nilam Singh is a M.D and General Physician in Saheed Nagar, Bhubaneswar and has an experience of 5 years in these fields.', 'Plot No - 123, Saheed Nagar , Bhubaneswar', 'nilam@gmail.in', '9000066000', '10.00 am - 4.00 pm', '500', 'Nilam Singh', 'nilam', 'images/1654844926avatar2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location_details`
--

CREATE TABLE `tbl_location_details` (
  `LocationId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `LocationName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_location_details`
--

INSERT INTO `tbl_location_details` (`LocationId`, `CityId`, `LocationName`) VALUES
(1, 15, 'Sahid Nagar'),
(2, 16, 'Gandhi Nagar Market'),
(5, 19, 'Sadar Bajar'),
(7, 21, 'Amausi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient_gallery`
--

CREATE TABLE `tbl_patient_gallery` (
  `DoctorId` int(11) NOT NULL,
  `ImageId` int(11) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `Date` varchar(10) NOT NULL,
  `Time` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_patient_gallery`
--

INSERT INTO `tbl_patient_gallery` (`DoctorId`, `ImageId`, `Image`, `Date`, `Time`) VALUES
(1, 15, 'pimages/1503990527aa.png', '29:08:2017', '12:38 pm'),
(1, 16, 'pimages/1504000202jj.jpg', '29:08:2017', '15:20 pm'),
(1, 17, 'pimages/150400020822.jpg', '29:08:2017', '15:20 pm'),
(1, 18, 'pimages/15040002204 (1).jpg', '29:08:2017', '15:20 pm'),
(1, 19, 'pimages/15040002304 (2).jpg', '29:08:2017', '15:20 pm'),
(1, 20, 'pimages/1504000246aa.png', '29:08:2017', '15:20 pm'),
(1, 21, 'pimages/150407371322.jpg', '30:08:2017', '11:45 am'),
(5, 22, 'pimages/1521718963Chrysanthemum.jpg', '22:03:2018', '17:12 pm'),
(5, 23, 'pimages/1521718967Desert.jpg', '22:03:2018', '17:12 pm'),
(5, 24, 'pimages/1521718971Hydrangeas.jpg', '22:03:2018', '17:12 pm'),
(5, 25, 'pimages/1521718976Jellyfish.jpg', '22:03:2018', '17:12 pm'),
(5, 26, 'pimages/1521718979Koala.jpg', '22:03:2018', '17:12 pm'),
(5, 27, 'pimages/1521718983Lighthouse.jpg', '22:03:2018', '17:13 pm'),
(5, 28, 'pimages/1521718987Penguins.jpg', '22:03:2018', '17:13 pm'),
(5, 29, 'pimages/1521718992Tulips.jpg', '22:03:2018', '17:13 pm'),
(7, 30, 'pimages/1654844939user6-128x128.jpg', '10:06:2022', '12:38 pm'),
(7, 31, 'pimages/1654844945user7-128x128.jpg', '10:06:2022', '12:39 pm'),
(7, 32, 'pimages/1654844955avatar2.png', '10:06:2022', '12:39 pm'),
(7, 33, 'pimages/1654844960avatar3.png', '10:06:2022', '12:39 pm'),
(7, 34, 'pimages/1654844970user8-128x128.jpg', '10:06:2022', '12:39 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_speciality_details`
--

CREATE TABLE `tbl_speciality_details` (
  `SpecialistId` int(11) NOT NULL,
  `Specialist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_speciality_details`
--

INSERT INTO `tbl_speciality_details` (`SpecialistId`, `Specialist`) VALUES
(1, 'Medicine (M.D.)'),
(2, 'Cardiology'),
(3, 'neurologist'),
(4, 'physist'),
(6, 'Skin Specialist (phd)'),
(7, 'Endocrynologist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `tbl_appointment_details`
--
ALTER TABLE `tbl_appointment_details`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `tbl_city_details`
--
ALTER TABLE `tbl_city_details`
  ADD PRIMARY KEY (`CityId`);

--
-- Indexes for table `tbl_doctor_consulting_details`
--
ALTER TABLE `tbl_doctor_consulting_details`
  ADD PRIMARY KEY (`Dcid`),
  ADD KEY `DoctorId` (`DoctorId`);

--
-- Indexes for table `tbl_doctor_details`
--
ALTER TABLE `tbl_doctor_details`
  ADD PRIMARY KEY (`DoctorId`),
  ADD KEY `CityId` (`CityId`),
  ADD KEY `LocationId` (`LocationId`),
  ADD KEY `SpecialistId` (`SpecialistId`);

--
-- Indexes for table `tbl_location_details`
--
ALTER TABLE `tbl_location_details`
  ADD PRIMARY KEY (`LocationId`),
  ADD KEY `CityId` (`CityId`);

--
-- Indexes for table `tbl_patient_gallery`
--
ALTER TABLE `tbl_patient_gallery`
  ADD PRIMARY KEY (`ImageId`),
  ADD KEY `DoctorId` (`DoctorId`);

--
-- Indexes for table `tbl_speciality_details`
--
ALTER TABLE `tbl_speciality_details`
  ADD PRIMARY KEY (`SpecialistId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appointment_details`
--
ALTER TABLE `tbl_appointment_details`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_city_details`
--
ALTER TABLE `tbl_city_details`
  MODIFY `CityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_doctor_consulting_details`
--
ALTER TABLE `tbl_doctor_consulting_details`
  MODIFY `Dcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbl_location_details`
--
ALTER TABLE `tbl_location_details`
  MODIFY `LocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_patient_gallery`
--
ALTER TABLE `tbl_patient_gallery`
  MODIFY `ImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_speciality_details`
--
ALTER TABLE `tbl_speciality_details`
  MODIFY `SpecialistId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_doctor_consulting_details`
--
ALTER TABLE `tbl_doctor_consulting_details`
  ADD CONSTRAINT `tbl_doctor_consulting_details_ibfk_1` FOREIGN KEY (`DoctorId`) REFERENCES `tbl_doctor_details` (`DoctorId`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_doctor_details`
--
ALTER TABLE `tbl_doctor_details`
  ADD CONSTRAINT `tbl_doctor_details_ibfk_1` FOREIGN KEY (`SpecialistId`) REFERENCES `tbl_speciality_details` (`SpecialistId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_doctor_details_ibfk_2` FOREIGN KEY (`CityId`) REFERENCES `tbl_city_details` (`CityId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_doctor_details_ibfk_3` FOREIGN KEY (`LocationId`) REFERENCES `tbl_location_details` (`LocationId`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_location_details`
--
ALTER TABLE `tbl_location_details`
  ADD CONSTRAINT `tbl_location_details_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `tbl_city_details` (`CityId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
