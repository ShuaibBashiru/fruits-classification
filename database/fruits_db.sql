-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2022 at 04:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruits_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_passport`
--

CREATE TABLE `admin_passport` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `file_name` varchar(80) NOT NULL,
  `file_height` varchar(30) NOT NULL,
  `file_width` varchar(30) NOT NULL,
  `file_size` varchar(30) NOT NULL,
  `file_ext` varchar(30) NOT NULL,
  `file_url` text DEFAULT NULL,
  `file_title` varchar(80) DEFAULT NULL,
  `group_name` varchar(80) NOT NULL DEFAULT 'admin',
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_passwords`
--

CREATE TABLE `admin_passwords` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `pwd_auth_hash` varchar(80) DEFAULT '',
  `pwd_auth` varchar(80) DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `expire_date` date NOT NULL,
  `expire_time` time NOT NULL,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_record`
--

CREATE TABLE `admin_record` (
  `id` int(11) NOT NULL,
  `personal_id` varchar(80) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `othername` varchar(50) DEFAULT '',
  `email_one` varchar(80) NOT NULL,
  `email_two` varchar(80) DEFAULT '',
  `phone_one` varchar(50) NOT NULL,
  `phone_two` varchar(50) DEFAULT '',
  `phone_code` varchar(30) NOT NULL DEFAULT '+234',
  `passport_url` text DEFAULT NULL,
  `gender_id` int(11) NOT NULL DEFAULT 0,
  `dob` varchar(11) NOT NULL DEFAULT '0',
  `mob` varchar(11) NOT NULL DEFAULT '0',
  `yob` varchar(11) NOT NULL DEFAULT '0',
  `date_of_birth` varchar(30) DEFAULT NULL,
  `age` int(11) NOT NULL DEFAULT 0,
  `zipcode` int(11) NOT NULL DEFAULT 0,
  `language_code` varchar(30) DEFAULT '',
  `lga_id` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `address_one` text DEFAULT NULL,
  `address_two` text DEFAULT NULL,
  `document_id` varchar(120) DEFAULT NULL,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0,
  `date_login` date DEFAULT NULL,
  `time_login` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_record`
--

INSERT INTO `admin_record` (`id`, `personal_id`, `lastname`, `firstname`, `othername`, `email_one`, `email_two`, `phone_one`, `phone_two`, `phone_code`, `passport_url`, `gender_id`, `dob`, `mob`, `yob`, `date_of_birth`, `age`, `zipcode`, `language_code`, `lga_id`, `city_id`, `state_id`, `country_id`, `address_one`, `address_two`, `document_id`, `department_id`, `role_id`, `status_id`, `generated_id`, `created_by`, `modified_by`, `date_created`, `time_created`, `updated_at`, `deleted_status`, `deleted_by`, `date_login`, `time_login`) VALUES
(22, '2789127635321', 'Dorcas', 'Adebayo', 'Abiodun', 'instructsme@gmail.com', '', '8103195478', '', '+234', NULL, 1, '03', '03', '1992', '03/03/1992', 0, 0, '', 0, 0, 306, 161, '3 Borie street, cele-village, alimosho', NULL, NULL, 0, 2, 1, '24023263020208', 1, 22, '2022-08-24', '06:02:33', '2022-09-14 20:36:42', 0, 0, NULL, NULL),
(23, 'F/HD/18/32100900', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsme200@gmail.com', '', '8172790180', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '60246422087020', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(24, 'F/HD/18/3210096', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsm4e62@gmail.com', '', '8176790188', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '20647262024008', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(25, '09702006102162', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsme2@gmail.com', '', '8172790181', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '22274602084060', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(26, 'F/HD/18/3210090', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsme2j@gmail.com', '', '81727090181', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '02740862022406', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(27, 'F/HD/18/3210091', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsme22@gmail.com', '', '81728790181', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '62242624078000', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(28, '42502260160200', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsme11@gmail.com', '', '8172090181', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '76220464022080', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(29, 'F/HD/18/3210024', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsme8@gmail.com', '', '8176790181', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '26720822604400', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(30, '20206025128054', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsme20@gmail.com', '', '8171790181', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '04224827002606', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(31, 'F/HD/18/3210099', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsm4e2@gmail.com', '', '8176627901081', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '42242006786002', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(32, 'F/HD/18/3210054', 'Bashiru', 'Shuaib', 'Abiodun', 'instructsm44e2@gmail.com', '', '817279018155', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '02482266207004', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(33, 'F/HD/18/3210001', 'Adewale', 'Medinat', 'M', 'adewale@gmail.com', '', '2348172790011', '', '+234', NULL, 2, '03', '04', '1992', '03/04/1992', 0, 0, '', 0, 0, 296, 161, '3 Borie street, cele-village, alimosho, iyana-ipaja, lagos.', NULL, NULL, 0, 0, 1, '20702468024026', 1, 22, '2022-08-24', '06:06:47', '2022-08-29 01:08:05', 0, 0, NULL, NULL),
(34, 'F/HD/18/3210002', 'Oladele', 'Dauda', 'B', 'adewale1@gmail.com', '', '2348172790012', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '26048270060224', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(35, 'F/HD/18/3210003', 'Akata', 'Chinenye', 'H', 'adewale2@gmail.com', '', '2348172790013', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '20686422070024', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(36, 'F/HD/18/3210004', 'Kareem', 'Oladele', 'D', 'test4@gmail.com', '', '2348172790014', '', '+234', NULL, 2, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '02060440622728', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(37, 'F/HD/18/3210005', 'Benjamin', 'Ayokunle', 'C', 'test5@gmail.com', '', '2348172790051', '', '+234', NULL, 2, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '84722000220646', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(38, 'F/HD/18/3210006', 'Wasiu', 'Alao', 'B', 'test6@gmail.com', '', '2348172790611', '', '+234', NULL, 2, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '20076402208246', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(39, 'F/HD/18/3210007', 'Ikeduba', 'Philips', 'K', 'test7@gmail.com', '', '2348172799011', '', '+234', NULL, 2, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 5, 1, '42826760402002', 1, 22, '2022-08-24', '06:06:47', '2022-09-05 11:08:05', 0, 0, NULL, NULL),
(40, 'F/HD/18/3210008', 'Stephen', 'Emeka', 'L', 'test8@gmail.com', '', '2348172710011', '', '+234', NULL, 2, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '68226720424000', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:12:58', 0, 0, NULL, NULL),
(41, 'F/HD/18/3210009', 'Solomon', 'Samson', '', 'test9@gmail.com', '', '2348172791011', '', '+234', NULL, 2, '06', '03', '1992', '06/03/1992', 0, 0, '', 0, 0, 306, 161, '3 Borie street, cele-village, alimosho', NULL, NULL, 0, 0, 1, '40468062022270', 1, 22, '2022-08-24', '06:06:47', '2022-08-29 04:01:46', 0, 0, NULL, NULL),
(42, 'deleted::02642070286042::F/HD/18/3210010', 'Agboola', 'Mariam', 'B', 'deleted::02642070286042::test10@gmail.com', '', 'deleted::02642070286042::2348172744011', '', '+234', NULL, 2, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '02642070286042', 1, 1, '2022-08-24', '06:06:47', '2022-08-24 17:13:26', 1, 1, NULL, NULL),
(43, '20204380054432', 'Damola', 'Damola', '', 'allioyindamola00@gmail.com', '', '9030031164', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '20204380054432', 22, 0, '2022-08-30', '04:43:45', '2022-08-30 03:43:45', 0, 0, NULL, NULL),
(44, '01209311284200', 'Olanrewaju', 'Rahmat', 'Aweni', 'or.olanrewaju@gmail.com', '', '8903195478', '', '+234', NULL, 2, '04', '05', '1993', '04/05/1993', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, '01209311284200', 22, 0, '2022-09-14', '11:38:00', '2022-09-14 10:38:00', 0, 0, NULL, NULL),
(45, '20462100742549', 'Opeoluwa', 'Restaurant', '', 'opeoluwarestaurant22@gmail.com', '', '8101111111', '', '+234', NULL, 1, '00', '00', '0000', '00/00/0000', 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 3, 1, '20462100742549', 22, 22, '2022-09-15', '06:47:44', '2022-09-15 05:48:31', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_reset_password`
--

CREATE TABLE `admin_reset_password` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `reset_code` varchar(80) NOT NULL,
  `expire_date` date NOT NULL,
  `expire_time` time NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `document_name` varchar(100) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attachments_group`
--

CREATE TABLE `attachments_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `document_name` varchar(100) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents_group`
--

CREATE TABLE `documents_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `files_upload`
--

CREATE TABLE `files_upload` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `file_name` varchar(80) NOT NULL,
  `file_height` varchar(30) NOT NULL,
  `file_width` varchar(30) NOT NULL,
  `file_size` varchar(30) NOT NULL,
  `file_ext` varchar(30) NOT NULL,
  `file_url` text DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `file_title` varchar(80) DEFAULT NULL,
  `group_name` varchar(80) NOT NULL DEFAULT 'admin',
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files_upload`
--

INSERT INTO `files_upload` (`id`, `userid`, `file_name`, `file_height`, `file_width`, `file_size`, `file_ext`, `file_url`, `descriptions`, `file_title`, `group_name`, `status_id`, `generated_id`, `created_by`, `modified_by`, `date_created`, `time_created`, `updated_at`, `deleted_status`, `deleted_by`) VALUES
(29, 1, '1666272500173.jpg', '300', '300', '300', 'jpg', '/media/files/1666272500173.jpg', 'This image most likely belongs to Apple with a 100.00 percent confidence.', '', 'admin', 1, '20232022001182', 0, 0, '2022-10-20', '13:28:24', '2022-10-20 13:28:24', 0, 0),
(30, 1, '1666272526646.jpg', '300', '300', '300', 'jpg', '/media/files/1666272526646.jpg', 'This image most likely belongs to Cabbage with a 56.43 percent confidence.', '', 'admin', 1, '02841302622102', 0, 0, '2022-10-20', '13:28:47', '2022-10-20 13:28:47', 0, 0),
(31, 1, '1666272554065.jpg', '300', '300', '300', 'jpg', '/media/files/1666272554065.jpg', 'This image most likely belongs to Carrot with a 94.02 percent confidence.', '', 'admin', 1, '00101222132429', 0, 0, '2022-10-20', '13:29:15', '2022-10-20 13:29:15', 0, 0),
(32, 1, '1666272578082.jpg', '300', '300', '300', 'jpg', '/media/files/1666272578082.jpg', 'This image most likely belongs to Cucumber with a 99.84 percent confidence.', '', 'admin', 1, '21812330292002', 0, 0, '2022-10-20', '13:29:40', '2022-10-20 13:29:40', 0, 0),
(33, 1, '1666272601866.jpg', '300', '300', '300', 'jpg', '/media/files/1666272601866.jpg', 'This image most likely belongs to Pear with a 98.04 percent confidence.', '', 'admin', 1, '23131012200020', 0, 0, '2022-10-20', '13:30:04', '2022-10-20 13:30:04', 0, 0),
(34, 1, '1666272642303.jpg', '300', '300', '300', 'jpg', '/media/files/1666272642303.jpg', 'This image most likely belongs to Rotten Apple with a 100.00 percent confidence.', '', 'admin', 1, '02023201021432', 0, 0, '2022-10-20', '13:30:43', '2022-10-20 13:30:43', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(80) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `servicename` varchar(100) NOT NULL,
  `comments` text DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(80) DEFAULT '',
  `status_description` text DEFAULT NULL,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `unverify_users`
--

CREATE TABLE `unverify_users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `othername` varchar(50) DEFAULT '',
  `email_one` varchar(80) NOT NULL,
  `phone_one` varchar(50) NOT NULL,
  `phone_code` varchar(30) NOT NULL DEFAULT '+234',
  `personal_id` varchar(80) NOT NULL,
  `gender_id` int(11) NOT NULL DEFAULT 0,
  `dob` varchar(11) NOT NULL DEFAULT '0',
  `mob` varchar(11) NOT NULL DEFAULT '0',
  `yob` varchar(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE `user_passport` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `file_name` varchar(80) NOT NULL,
  `file_height` varchar(30) NOT NULL,
  `file_width` varchar(30) NOT NULL,
  `file_size` varchar(30) NOT NULL,
  `file_ext` varchar(30) NOT NULL,
  `file_url` text DEFAULT '/media/avatar.png',
  `file_title` varchar(80) DEFAULT NULL,
  `group_name` varchar(80) NOT NULL DEFAULT 'user',
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_passport`
--

INSERT INTO `user_passport` (`id`, `userid`, `file_name`, `file_height`, `file_width`, `file_size`, `file_ext`, `file_url`, `file_title`, `group_name`, `status_id`, `generated_id`, `created_by`, `modified_by`, `date_created`, `time_created`, `updated_at`, `deleted_status`, `deleted_by`) VALUES
(3, 2, '1665062504121.png', '300', '300', '300', 'png', '/media/passports/1665062504121.png', '', 'user', 1, '22241013412006', 0, 0, '2022-10-06', '13:21:44', '2022-10-06 13:26:51', 0, 0),
(5, 9, '1665065633594.png', '300', '300', '300', 'png', '/media/passports/1665065633594.png', '', 'user', 1, '23212510106430', 0, 0, '2022-10-06', '14:13:53', '2022-10-06 14:13:53', 0, 0),
(6, 8, '1665135640150.png', '300', '300', '300', 'png', '/media/passports/1665135640150.png', '', 'user', 1, '02944102070020', 0, 0, '2022-10-07', '09:40:40', '2022-10-07 09:40:40', 0, 0),
(7, 5, '1665144163376.png', '300', '300', '300', 'png', '/media/passports/1665144163376.png', '', 'user', 1, '30701221242200', 0, 0, '2022-10-07', '12:02:43', '2022-10-07 12:02:43', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_passwords`
--

CREATE TABLE `user_passwords` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `pwd_auth_hash` varchar(80) DEFAULT '',
  `pwd_auth` varchar(80) DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `expire_date` date NOT NULL,
  `expire_time` time NOT NULL,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_record`
--

CREATE TABLE `user_record` (
  `id` int(11) NOT NULL,
  `personal_id` varchar(80) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `othername` varchar(50) DEFAULT '',
  `email_one` varchar(80) NOT NULL,
  `email_two` varchar(80) DEFAULT '',
  `phone_one` varchar(50) NOT NULL,
  `phone_two` varchar(50) DEFAULT '',
  `phone_code` varchar(30) NOT NULL DEFAULT '+234',
  `passport_url` text DEFAULT NULL,
  `gender_id` int(11) NOT NULL DEFAULT 0,
  `dob` varchar(11) NOT NULL DEFAULT '0',
  `mob` varchar(11) NOT NULL DEFAULT '0',
  `yob` varchar(11) NOT NULL DEFAULT '0',
  `date_of_birth` varchar(30) DEFAULT NULL,
  `age` int(11) NOT NULL DEFAULT 0,
  `zipcode` int(11) NOT NULL DEFAULT 0,
  `language_code` varchar(30) DEFAULT '',
  `lga_id` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `address_one` text DEFAULT NULL,
  `address_two` text DEFAULT NULL,
  `document_id` varchar(120) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0,
  `date_login` date DEFAULT NULL,
  `time_login` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`id`, `personal_id`, `lastname`, `firstname`, `othername`, `email_one`, `email_two`, `phone_one`, `phone_two`, `phone_code`, `passport_url`, `gender_id`, `dob`, `mob`, `yob`, `date_of_birth`, `age`, `zipcode`, `language_code`, `lga_id`, `city_id`, `state_id`, `country_id`, `address_one`, `address_two`, `document_id`, `role_id`, `status_id`, `generated_id`, `created_by`, `modified_by`, `date_created`, `time_created`, `updated_at`, `deleted_status`, `deleted_by`, `date_login`, `time_login`) VALUES
(2, '2789127635321', 'Dorcas', 'Adebayo', 'Adewale', 'instructsme@gmail.com', '', '8103195478', '', '+234', NULL, 2, '', '', '', NULL, 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '20815210704222', 0, 0, '2022-10-02', '12:58:47', '2022-10-02 12:58:47', 0, 0, NULL, NULL),
(5, '90021512032223', 'Chiamaka', 'Ebere', 'Kunle', 'dorcadebayo@yahoo.com', '', '81031095478', '', '+234', NULL, 1, '', '', '', NULL, 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '90021512032223', 0, 0, '2022-10-02', '12:59:33', '2022-10-02 12:59:33', 0, 0, NULL, NULL),
(8, '2789127635320', 'Oladoyin', 'Isreal', '', 'oladoyin@gmail.com', '', '8072790181', '', '+234', NULL, 2, '', '', '', NULL, 0, 0, '', 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '69010020291212', 0, 0, '2022-10-06', '10:19:29', '2022-10-06 10:19:29', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_reset_password`
--

CREATE TABLE `user_reset_password` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `reset_code` varchar(80) NOT NULL,
  `expire_date` date NOT NULL,
  `expire_time` time NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `generated_id` varchar(80) NOT NULL DEFAULT '0',
  `date_created` date NOT NULL,
  `time_created` time NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_status` int(11) NOT NULL DEFAULT 0,
  `deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_user_record`
-- (See below for the actual view)
--
CREATE TABLE `vw_user_record` (
`id` int(11)
,`personal_id` varchar(80)
,`lastname` varchar(50)
,`firstname` varchar(50)
,`othername` varchar(50)
,`email_one` varchar(80)
,`email_two` varchar(80)
,`phone_one` varchar(50)
,`phone_two` varchar(50)
,`phone_code` varchar(30)
,`passport_url` text
,`gender_id` int(11)
,`dob` varchar(11)
,`mob` varchar(11)
,`yob` varchar(11)
,`date_of_birth` varchar(30)
,`age` int(11)
,`zipcode` int(11)
,`language_code` varchar(30)
,`lga_id` int(11)
,`city_id` int(11)
,`state_id` int(11)
,`country_id` int(11)
,`address_one` text
,`address_two` text
,`document_id` varchar(120)
,`role_id` int(11)
,`status_id` int(11)
,`generated_id` varchar(80)
,`created_by` int(11)
,`modified_by` int(11)
,`date_created` date
,`time_created` time
,`updated_at` timestamp
,`deleted_status` int(11)
,`deleted_by` int(11)
,`date_login` date
,`time_login` time
,`file_url` text
);

-- --------------------------------------------------------

--
-- Structure for view `vw_user_record`
--
DROP TABLE IF EXISTS `vw_user_record`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_user_record`  AS SELECT `t1`.`id` AS `id`, `t1`.`personal_id` AS `personal_id`, `t1`.`lastname` AS `lastname`, `t1`.`firstname` AS `firstname`, `t1`.`othername` AS `othername`, `t1`.`email_one` AS `email_one`, `t1`.`email_two` AS `email_two`, `t1`.`phone_one` AS `phone_one`, `t1`.`phone_two` AS `phone_two`, `t1`.`phone_code` AS `phone_code`, `t1`.`passport_url` AS `passport_url`, `t1`.`gender_id` AS `gender_id`, `t1`.`dob` AS `dob`, `t1`.`mob` AS `mob`, `t1`.`yob` AS `yob`, `t1`.`date_of_birth` AS `date_of_birth`, `t1`.`age` AS `age`, `t1`.`zipcode` AS `zipcode`, `t1`.`language_code` AS `language_code`, `t1`.`lga_id` AS `lga_id`, `t1`.`city_id` AS `city_id`, `t1`.`state_id` AS `state_id`, `t1`.`country_id` AS `country_id`, `t1`.`address_one` AS `address_one`, `t1`.`address_two` AS `address_two`, `t1`.`document_id` AS `document_id`, `t1`.`role_id` AS `role_id`, `t1`.`status_id` AS `status_id`, `t1`.`generated_id` AS `generated_id`, `t1`.`created_by` AS `created_by`, `t1`.`modified_by` AS `modified_by`, `t1`.`date_created` AS `date_created`, `t1`.`time_created` AS `time_created`, `t1`.`updated_at` AS `updated_at`, `t1`.`deleted_status` AS `deleted_status`, `t1`.`deleted_by` AS `deleted_by`, `t1`.`date_login` AS `date_login`, `t1`.`time_login` AS `time_login`, `t2`.`file_url` AS `file_url` FROM (`multimodal_db`.`user_record` `t1` left join `multimodal_db`.`user_passport` `t2` on(`t2`.`userid` = `t1`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_passport`
--
ALTER TABLE `admin_passport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generated_id` (`generated_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `admin_record`
--
ALTER TABLE `admin_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_id` (`personal_id`),
  ADD UNIQUE KEY `email_one` (`email_one`),
  ADD UNIQUE KEY `phone_one` (`phone_one`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `admin_reset_password`
--
ALTER TABLE `admin_reset_password`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reset_code` (`reset_code`),
  ADD UNIQUE KEY `generated_id` (`generated_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document_name` (`document_name`),
  ADD UNIQUE KEY `generated_id` (`generated_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `attachments_group`
--
ALTER TABLE `attachments_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_name` (`group_name`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document_name` (`document_name`),
  ADD UNIQUE KEY `generated_id` (`generated_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `documents_group`
--
ALTER TABLE `documents_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_name` (`group_name`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `files_upload`
--
ALTER TABLE `files_upload`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender_name` (`gender_name`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `unverify_users`
--
ALTER TABLE `unverify_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_one` (`email_one`),
  ADD UNIQUE KEY `phone_one` (`phone_one`),
  ADD UNIQUE KEY `personal_id` (`personal_id`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `user_passport`
--
ALTER TABLE `user_passport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `user_passwords`
--
ALTER TABLE `user_passwords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generated_id` (`generated_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user_record`
--
ALTER TABLE `user_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_id` (`personal_id`),
  ADD UNIQUE KEY `email_one` (`email_one`),
  ADD UNIQUE KEY `phone_one` (`phone_one`),
  ADD UNIQUE KEY `generated_id` (`generated_id`);

--
-- Indexes for table `user_reset_password`
--
ALTER TABLE `user_reset_password`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reset_code` (`reset_code`),
  ADD UNIQUE KEY `generated_id` (`generated_id`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_passport`
--
ALTER TABLE `admin_passport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_record`
--
ALTER TABLE `admin_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `admin_reset_password`
--
ALTER TABLE `admin_reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments_group`
--
ALTER TABLE `attachments_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents_group`
--
ALTER TABLE `documents_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_upload`
--
ALTER TABLE `files_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unverify_users`
--
ALTER TABLE `unverify_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_passport`
--
ALTER TABLE `user_passport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_passwords`
--
ALTER TABLE `user_passwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_record`
--
ALTER TABLE `user_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_reset_password`
--
ALTER TABLE `user_reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_passport`
--
ALTER TABLE `admin_passport`
  ADD CONSTRAINT `admin_passport_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `admin_record` (`id`);

--
-- Constraints for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `admin_passwords_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `admin_record` (`id`);

--
-- Constraints for table `admin_reset_password`
--
ALTER TABLE `admin_reset_password`
  ADD CONSTRAINT `admin_reset_password_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `admin_record` (`id`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `attachments_group` (`id`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `documents_group` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
