-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 ก.พ. 2020 เมื่อ 02:59 PM
-- เวอร์ชันของเซิร์ฟเวอร์: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std_test`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `department`
--

CREATE TABLE `department` (
  `dep_id` int(50) NOT NULL,
  `dep_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dep_fuculty_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `department`
--

INSERT INTO `department` (`dep_id`, `dep_name`, `dep_fuculty_id`) VALUES
(1, 'เทคโนโลยีสารสนเทศ', 3),
(2, 'เทคโนโลยีการจัดการ', 3),
(3, 'วิทยาศาสตร์การกีฬา', 6),
(4, 'ชีววิทยา', 6),
(5, 'วิศวกรรมอิเล็กทรอนิกส์', 1),
(6, 'วิศวกรรมเกษตรและอาหาร', 1),
(7, 'วิศวกรรมคอมพิวเตอร์', 1),
(8, 'วิศวกรรมเคมี', 1),
(9, 'วิศวกรรมอากาศยาน', 1),
(10, 'วิศวกรรมโทรคมนาคม', 1),
(11, 'วิศวกรรมธรณี', 1),
(12, 'วิศวกรรมยานยนต์', 1),
(13, 'วิศวกรรมโยธา', 1),
(14, 'วิศวกรรมไฟฟ้า', 1),
(15, 'แพทยศาสตรบัณฑิต', 2),
(16, 'อนามัยสิ่งแวดล้อม', 4),
(17, 'อาชีวอนามัยและความปลอดภัย', 4),
(18, 'พยาบาลศาสตรบัณฑิต', 5),
(19, 'เทคโนโลยีการผลิตพืช', 7),
(20, 'เทคโนโลยีและนวัตกรรมทางสัตว์', 7),
(21, 'เทคโนโลยีอาหาร', 7),
(22, 'ทันตแพทยศาสตรบัณฑิต', 8);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `feedback_msg`
--

CREATE TABLE `feedback_msg` (
  `msg_id` int(10) NOT NULL,
  `msg_detail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg_topic` int(10) NOT NULL,
  `msg_by` int(10) NOT NULL,
  `msg_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `feedback_msg`
--

INSERT INTO `feedback_msg` (`msg_id`, `msg_detail`, `msg_topic`, `msg_by`, `msg_date`) VALUES
(1, 'ตอนนี้ใช้งานได้แล้วนะครับ', 2, 16, '2020-01-14 20:56:56'),
(2, 'ขอบคุณครับ', 2, 18, '2020-01-14 21:30:42'),
(5, 'ดีๆ', 2, 18, '2020-01-14 22:07:40'),
(6, 'ครับ', 2, 16, '2020-01-14 22:32:59');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `feedback_topic`
--

CREATE TABLE `feedback_topic` (
  `fb_id` int(50) NOT NULL,
  `fb_topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fb_detail` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fb_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fb_createdDate` datetime NOT NULL DEFAULT current_timestamp(),
  `fb_createdBy` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `feedback_topic`
--

INSERT INTO `feedback_topic` (`fb_id`, `fb_topic`, `fb_detail`, `fb_status`, `fb_createdDate`, `fb_createdBy`) VALUES
(2, 'ดาวน์โลดเอกสารโครงงานไม่ได้', 'ไม่สามารถดาวน์โหบดเอกสารโครงงานได้ รบกวนแก้ไขให้ด้วยครับ', 'กำลังตรวจสอบ', '2020-01-14 20:08:12', 18),
(3, 'อัพเดตสถานะโครงงานไม่ได้', 'เกิด Error ตอน อัพเดตสถานะ', 'ดำเนินการแล้ว', '2020-01-14 20:18:10', 18);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `fuaculty`
--

CREATE TABLE `fuaculty` (
  `fac_id` int(50) NOT NULL,
  `fac_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `fuaculty`
--

INSERT INTO `fuaculty` (`fac_id`, `fac_name`) VALUES
(1, 'วิศวะกรรมศาสตร์'),
(2, 'แพทยศาสตร์'),
(3, 'เทคโนโลยีสังคม'),
(4, 'สาธารณสุขศาสตร์'),
(5, 'พยาบาลศาสตร์'),
(6, 'วิทยศาสตร์'),
(7, 'เทคโนโลยีการเกษตร'),
(8, 'ทันตแพทยศาสตร์');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `profile`
--

CREATE TABLE `profile` (
  `Id` int(50) NOT NULL,
  `Tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Religion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Military` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Faculty` int(50) DEFAULT NULL,
  `Department` int(50) DEFAULT NULL,
  `Degree` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GPAX` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Star` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `profile`
--

INSERT INTO `profile` (`Id`, `Tel`, `Birthday`, `Religion`, `Nation`, `Military`, `Faculty`, `Department`, `Degree`, `GPAX`, `Star`, `CreatedBy`, `CreatedDate`) VALUES
(5, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, 'admin1', '2019-12-17 20:52:54'),
(6, '0831141235', '1998-02-11', 'ไืทย', 'ไทย', 'ยังไม่ผ่านการเกณฑทหาร์', 8, 5, 'วิทยาการสารสนเทศบัณฑิต', '3.89', NULL, 'std1', '2019-12-17 20:53:12'),
(7, '0902155745', NULL, NULL, NULL, NULL, 5, 4, '', '', NULL, 'advi1', '2019-12-17 20:53:33'),
(8, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, 'pers1', '2019-12-17 20:54:00'),
(9, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, 'B5972555', '2020-01-02 22:11:43'),
(35, NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', NULL, '35', '2020-01-06 18:28:12'),
(37, NULL, NULL, NULL, NULL, 'ยังไม่ผ่านการเกณฑทหาร์', 3, 1, 'วิทยาการสารสนเทศบัณฑิต', NULL, NULL, 'B5972548', '2020-01-07 14:57:20'),
(38, '0830341466', '0000-00-00', 'ไทย', '-', 'ยังไม่ผ่านการเกณฑทหาร์', 0, 0, 'วิทยาการสารสนเทศบัณฑิต', '-', NULL, 'B5972556', '2020-01-11 16:48:59');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `projectinfo`
--

CREATE TABLE `projectinfo` (
  `Id` int(50) NOT NULL,
  `Type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ProjectName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `Picture` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `File` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Star` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Award` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Advisor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `P1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `P2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `P3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `P4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `P5` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `View` int(255) NOT NULL,
  `CreatedBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `projectinfo`
--

INSERT INTO `projectinfo` (`Id`, `Type`, `ProjectName`, `Description`, `Picture`, `File`, `Status`, `Star`, `Award`, `Advisor`, `P1`, `P2`, `P3`, `P4`, `P5`, `View`, `CreatedBy`, `CreatedDate`) VALUES
(20, 'ธุรกิจ', 'เช็ควัสดุภายในมหาวิทยาลัย', '     บริการขนส่งพัสดุเร่งด่วนถึงบ้าน บริการส่งพัสดุแบบควบคุมอุณหภูมิทั้งแบบแช่เย็นและแช่แข็ง บริการส่งเอกสารระหว่างบริษัทถึงบริษัท บริการเก็บเงินค่าสินค้าที่ปลายทางทั้งในรูปแบบเงินสดและบัตรเครดิต บริการส่งพืชผลทางการเกษตรส่งตรงความสดถึงมือผู้บริโภคทันเวลา', 'ems.jpg', '2558_56a9d444d5276.pdf', 'อนุมัติแล้ว', '4', NULL, '18', '32', '33', '37', ' ', ' ', 312, '37', '2020-01-06 16:19:52'),
(21, 'การศึกษา', 'แชทบอทสอบถามเส้นทางในมหาวิทยาลัย', 'Chatbot คือ โปรแกรมสนทนาอัตโนมัติ พัฒนาขึ้นเพื่อจำลองการสนทนาของมนุษย์ ทำให้สามารถสื่อสาร และพูดคุยกับมนุษย์ได้แบบ Real time และไม่เพียงแต่เป็นข้อความ  ยังสามารถสื่อสารผ่านเสียงได้อีกด้วย อย่าง โปรแกรม Voice Assistant App เช่น Alexa หรือ Siri เป็นต้น\r\nสำหรับธุรกิจเล็กๆ หรือธุรกิจที่เพิ่งเริ่มต้น สามารถให้ Chatbot แบบ Rule-Based Bot เป็นตัวช่วยในการสื่อสาร ติดต่อลูกค้าได้แบบฟรีๆ ไม่มีค่าใช้จ่าย โดยใช้โปรแกรมการตอบบทสนนาอัตโนมัติหรือ Auto Reply ที่ร้านค้าไหนมี Page ของ Facebook ก็สามารถทำได้ นอกจากนั้นยังมี Rule-Based Bot ในแอปพลิเคชั่นของ Line@ ที่เพื่อนๆ สามารถใส่คีย์เวิดและคำตอบ เพื่อให้เจ้า Chatbot ทำการสนทนาแทนในขณะที่เพื่อนๆ ยังไม่ว่างได้เช่นกัน', 'Chatbot.jpg', '52_22-12-2018_09-06-42.pdf', 'อนุมัติแล้ว', '3.5', NULL, '18', '32', '', '', ' ', ' ', 90, '32', '2020-01-08 00:48:15');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `project_comment`
--

CREATE TABLE `project_comment` (
  `cmid` int(50) NOT NULL,
  `id` int(50) NOT NULL,
  `user` int(50) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `project_comment`
--

INSERT INTO `project_comment` (`cmid`, `id`, `user`, `name`, `comment`, `img`, `time`) VALUES
(4, 21, 37, 'B5972548', 'โครงงานดีมากๆครับ', '79381856_2463716280543121_584375067064926208_o.jpg', '2020-01-15 10:03:21'),
(5, 21, 32, 'std1', 'ขอบคุณมจ้า', 'mascot.jpg', '2020-01-15 10:04:40');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `project_star`
--

CREATE TABLE `project_star` (
  `stid` int(50) NOT NULL,
  `id` int(50) NOT NULL,
  `user` int(50) NOT NULL,
  `star` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `project_star`
--

INSERT INTO `project_star` (`stid`, `id`, `user`, `star`) VALUES
(2032, 20, 32, 4),
(2132, 21, 32, 4),
(2137, 21, 37, 3);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `project_update_history`
--

CREATE TABLE `project_update_history` (
  `updateId` int(50) NOT NULL,
  `ProjectId` int(50) NOT NULL,
  `UpdateBy` int(50) NOT NULL,
  `UpdateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `Status_update` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `project_update_history`
--

INSERT INTO `project_update_history` (`updateId`, `ProjectId`, `UpdateBy`, `UpdateDate`, `Status_update`) VALUES
(11, 20, 18, '2020-01-06 16:26:39', 'อนุมัติแล้ว'),
(12, 21, 18, '2020-01-08 00:49:30', 'อนุมัติแล้ว');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `skills`
--

CREATE TABLE `skills` (
  `Id` int(50) NOT NULL,
  `Type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Skills` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` int(50) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `skills`
--

INSERT INTO `skills` (`Id`, `Type`, `Skills`, `CreatedBy`, `CreatedDate`) VALUES
(1, 'Computing', 'Java,PHP,javaScript,HTML', 32, '2020-01-06 03:18:21'),
(7, 'Computing', 'PHP Laravel Framwork, JavaScript', 32, '2020-01-06 04:43:09'),
(8, 'ภาษาต่างประเทศ', 'ภาษาอังกฤษ', 37, '2020-01-07 23:28:19');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `studyhistory`
--

CREATE TABLE `studyhistory` (
  `Id` int(50) NOT NULL,
  `Level` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SchoolName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Qualification` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` int(50) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `studyhistory`
--

INSERT INTO `studyhistory` (`Id`, `Level`, `SchoolName`, `Qualification`, `Time`, `CreatedBy`, `CreatedDate`) VALUES
(1, 'ปริญญาโท', 'มหาวิทยาลัยจุฬาลงกรณ์', 'ปริญญาโท', '2551-2552', 32, '2020-01-06 02:52:01'),
(2, 'ปริญญาตรี', 'มหาวิทยาลัยเทคโนโลยีสุรนารี', 'เทคโนโลยีสารสนเทศ', '2559-2562', 37, '2020-01-07 23:26:34');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `trianninghistory`
--

CREATE TABLE `trianninghistory` (
  `Id` int(50) NOT NULL,
  `Header` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Organize` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` int(50) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `trianninghistory`
--

INSERT INTO `trianninghistory` (`Id`, `Header`, `Organize`, `Time`, `CreatedBy`, `CreatedDate`) VALUES
(1, 'Big D', 'SEDA', '2554', 32, '2020-01-06 03:17:05');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `users`
--

CREATE TABLE `users` (
  `Id` int(50) NOT NULL,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Prefix` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ImgUrl` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SYSTEM',
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `users`
--

INSERT INTO `users` (`Id`, `Username`, `Password`, `Email`, `Prefix`, `Firstname`, `Lastname`, `Gender`, `ImgUrl`, `Role`, `CreatedBy`, `CreatedDate`) VALUES
(16, 'admin1', '81dc9bdb52d04dc20036dbd8313ed055', 'admin1@email.com', '', NULL, NULL, '', NULL, 'admin', 'test', '2019-12-17 20:52:54'),
(18, 'advi1', '81dc9bdb52d04dc20036dbd8313ed055', 'advi1@email.com', 'ผ.ศ.ด.ร.', 'สิริน', 'นามสาร', '', 'mascot.jpg', 'advisor', 'test', '2019-12-17 20:53:33'),
(32, 'std1', '81dc9bdb52d04dc20036dbd8313ed055', 'std1@email.com', 'นางสาว', 'มาลี', 'มีนา', '', 'mascot.jpg', 'student', 'test', '2020-01-01 15:55:34'),
(33, 'B5972555', '81dc9bdb52d04dc20036dbd8313ed055', 'anuwat40350@email.com', 'นาย', 'อนุวัช', 'ภาคาทิน', '', NULL, 'student', 'admin1', '2020-01-02 22:11:43'),
(34, 'B5972556', '81dc9bdb52d04dc20036dbd8313ed055', 'b5972556@email.com', 'นาย', 'สมจิต', 'ฤดีริทย์', '', 'logoayw.jpg', 'student', 'SYSTEM', '2020-01-02 22:55:18'),
(37, 'B5972548', '81dc9bdb52d04dc20036dbd8313ed055', 'Thanakorn.pimt@gmail.com', 'นาย', 'ธนากร', 'พิมพ์ที', '', '79381856_2463716280543121_584375067064926208_o.jpg', '', 'admin1', '2020-01-07 14:57:20'),
(38, '', '', '', '', '', '', '', '', '', 'SYSTEM', '2020-02-20 20:52:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `feedback_msg`
--
ALTER TABLE `feedback_msg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `feedback_topic`
--
ALTER TABLE `feedback_topic`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `fuaculty`
--
ALTER TABLE `fuaculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Tel` (`Tel`),
  ADD KEY `CreatedBy` (`CreatedBy`);

--
-- Indexes for table `projectinfo`
--
ALTER TABLE `projectinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `project_comment`
--
ALTER TABLE `project_comment`
  ADD PRIMARY KEY (`cmid`);

--
-- Indexes for table `project_star`
--
ALTER TABLE `project_star`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `project_update_history`
--
ALTER TABLE `project_update_history`
  ADD PRIMARY KEY (`updateId`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `studyhistory`
--
ALTER TABLE `studyhistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `trianninghistory`
--
ALTER TABLE `trianninghistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dep_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `feedback_msg`
--
ALTER TABLE `feedback_msg`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback_topic`
--
ALTER TABLE `feedback_topic`
  MODIFY `fb_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fuaculty`
--
ALTER TABLE `fuaculty`
  MODIFY `fac_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `projectinfo`
--
ALTER TABLE `projectinfo`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `project_comment`
--
ALTER TABLE `project_comment`
  MODIFY `cmid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_update_history`
--
ALTER TABLE `project_update_history`
  MODIFY `updateId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `studyhistory`
--
ALTER TABLE `studyhistory`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trianninghistory`
--
ALTER TABLE `trianninghistory`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
