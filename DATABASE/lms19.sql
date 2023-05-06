-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 05:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms19`
--
Create Database `lms19`;
Use `lms19`;
-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `date_borrow` datetime NOT NULL DEFAULT current_timestamp(),
  `borrowcode` bigint(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_assigned` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `time_limit` datetime NOT NULL,
  `date_return` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `date_borrow`, `borrowcode`, `member_id`, `item_id`, `stock_id`, `user_id`, `room_assigned`, `status`, `time_limit`, `date_return`) VALUES
(1, '2017-02-21 11:12:17', 22120170412171, 7, 16, 18, 1, 8, 2, '0000-00-00 00:00:00', '2017-02-21 04:12:47'),
(2, '2017-02-21 11:36:07', 22120170436071, 1, 16, 18, 1, 7, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:33'),
(3, '2017-02-21 11:37:01', 22120170437011, 7, 26, 24, 1, 4, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:31'),
(4, '2017-02-21 11:41:12', 22120170441121, 1, 16, 18, 1, 6, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:31'),
(5, '2017-02-21 11:43:39', 22120170443391, 4, 17, 20, 1, 7, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:33'),
(6, '2017-02-21 11:45:31', 22120170445311, 10, 26, 24, 1, 8, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:32'),
(7, '2017-02-21 11:46:36', 22120170446361, 4, 25, 23, 1, 8, 2, '0000-00-00 00:00:00', '2017-02-21 04:48:31'),
(8, '2017-02-21 11:48:49', 22120170448491, 4, 17, 20, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(9, '2017-02-21 11:50:40', 22120170450401, 10, 18, 21, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(10, '2017-02-21 11:51:30', 22120170451301, 8, 24, 22, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(11, '2017-02-21 11:52:38', 22120170452381, 6, 26, 24, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(12, '2017-02-21 18:48:52', 22120171148521, 4, 16, 18, 1, 7, 1, '0000-00-00 00:00:00', NULL),
(13, '2022-11-19 22:56:47', 111920221856471, 4, 16, 18, 1, 7, 1, '2022-11-20 01:56:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `e_deviceid` varchar(50) NOT NULL,
  `e_model` varchar(50) NOT NULL,
  `e_category` varchar(50) NOT NULL,
  `e_brand` varchar(50) NOT NULL,
  `e_description` text NOT NULL,
  `e_stock` int(11) NOT NULL,
  `e_stockleft` int(11) NOT NULL,
  `e_type` varchar(50) NOT NULL,
  `e_status` varchar(50) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipment_inventory`
--

CREATE TABLE `equipment_inventory` (
  `id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_logs`
--

CREATE TABLE `history_logs` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `status_name` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_logs`
--

INSERT INTO `history_logs` (`id`, `description`, `table_name`, `status_name`, `user_id`, `user_type`, `date_created`) VALUES
(49, 'add new equipmentSM-922 , Mouse', 'equipment', '', 1, 1, '2017-02-17 13:28:52'),
(50, 'add 2items toSM-922quantity', 'equipment', '', 1, 1, '2017-02-17 13:46:29'),
(51, 'add 2items toSM-9221quantity', 'equipment', '', 1, 1, '2017-02-17 14:15:46'),
(52, 'add new equipment---- , AVR', 'equipment', '', 1, 1, '2017-02-21 11:20:20'),
(53, 'add new equipmentH328C , Projector', 'equipment', '', 1, 1, '2017-02-21 11:24:12'),
(54, 'add new equipmentOM-130006A/K , Keyboard', 'equipment', '', 1, 1, '2017-02-21 11:28:04'),
(55, 'add new equipment---- , Remote', 'equipment', '', 1, 1, '2017-02-21 11:31:19'),
(56, 'add new equipment58E510 , TV', 'equipment', '', 1, 1, '2017-02-21 11:35:07'),
(57, 'deactivate client', 'client', '', 1, 1, '2022-11-19 22:57:25'),
(58, 'add 7items toCPRX2520Lquantity', 'equipment', '', 1, 1, '2022-11-21 14:19:49'),
(59, 'add new equipment2410TD , Fuses', 'equipment', '', 1, 1, '2022-11-21 14:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(5) NOT NULL,
  `i_deviceID` varchar(50) NOT NULL,
  `i_model` varchar(50) NOT NULL,
  `i_category` varchar(50) NOT NULL,
  `i_brand` varchar(50) NOT NULL,
  `i_description` text NOT NULL,
  `i_type` varchar(50) NOT NULL,
  `item_rawstock` int(11) NOT NULL,
  `i_status` int(11) NOT NULL DEFAULT 1,
  `i_mr` varchar(50) NOT NULL,
  `i_price` decimal(10,2) NOT NULL,
  `i_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `i_deviceID`, `i_model`, `i_category`, `i_brand`, `i_description`, `i_type`, `item_rawstock`, `i_status`, `i_mr`, `i_price`, `i_photo`) VALUES
(16, '14785236', 'CPRX2520L', 'Low Power Inductor', 'Own', 'CPRX2520L series high-current power inductor offers extremely high saturation current up to 110 A and high efficiency.', 'Consumable', 20, 1, 'Aazmir', '2199.00', '1669022343.jpg'),
(17, '36985214714', 'TBPDANN150P', 'Sensor', 'Own', 'TBP series is a non-contact IR temperature measurement sensor that is designed to compensate the active for sudden changes in ambient temperature (thermal shock) with less impact. The devices utilize the I2C communication method.', 'Consumable', 16, 1, 'Rabi', '9599.00', '1669022654.jpg'),
(18, '258369147123', 'MAX66301 ', 'Coprocessors', 'Own', 'MAX66250 and MAX66301 NFC secure authenticators and coprocessors provide a complete contactless security solution. These products feature the latest SHA-3 challenge-and-response cryptographic algorithm coupled with NFC ISO 15693 interface to authenticate and protect against security attacks and prevent counterfeits.', 'Consumable', 3, 1, 'Abdullah', '499.00', '1669022775.jpg'),
(19, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647676.png'),
(20, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647678.png'),
(21, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647679.png'),
(22, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647680.png'),
(23, '----', 'OM-130006A/K', 'Keyboard', 'Acer', 'Slim Compact Keyboard, Black USB Wired, 98 Keys', 'Consumable', 60, 1, 'Sir Cadagat', '250.00', '1487647681.png'),
(24, '753369147456', 'LSK389', 'JFETs', 'Own', 'LSK389 series is an ultra-low-noise dual junction field effect transistor (JFET) with models including LSK389A, LSK389B, LSK389C, and LSK389D. The models are graded by IDSS. The LSK389B grade model is designed for ultra-high-end systems, ranging from U.S. Navy underwater listening to studio reference amps and microphones..', 'Consumable', 60, 1, 'Hamza', '1999.00', '1669022892.jpg'),
(25, '456987123142', 'CPCE2624A', 'High Power Inductor', 'Own', 'CPCE2624A series high-current power inductor features magnetic powder core technology, which provides stable inductance value and saturation over high operating temperatures.', 'Consumable', 10, 1, 'Takreem', '499.00', '1669023041.jpg'),
(26, '852147693546', 'AMG8831', 'Infrared Array Sensors', 'Own', 'AMG88x543 Grid-EYE wide-angle infrared array sensors feature high-resolution 8 pixels by 8 pixels for a total of 64 pixels for temperature distribution. These 90° sensors offer a digital output I²C external interface for thermal presence, direction, and temperature values. ', 'Consumable', 5, 1, 'Aazmir', '8999.00', '1669023570.jpg');
-- (27, '785214693512', '2410TD', 'Fuses', 'Own', 'Eaton Bussmann\'s 2410 series surface mount ceramic brick fuses offer time delay and fast-acting characteristics for overcurrent situations requiring up to 250 VAC protection.', 'Consumable', 10, 1, 'Rabi', '499.00', '1669023874.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory`
--

CREATE TABLE `item_inventory` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `inventory_itemstock` int(11) NOT NULL,
  `inventory_status` int(11) NOT NULL,
  `item_remarks` text NOT NULL,
  `date_change` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_inventory`
--

INSERT INTO `item_inventory` (`id`, `item_id`, `inventory_itemstock`, `inventory_status`, `item_remarks`, `date_change`) VALUES
(8, 16, 2, 2, '', '2017-02-17 06:13:59'),
(9, 16, 2, 2, 'test', '2017-02-17 06:16:07'),
(10, 16, 1, 4, '1', '2022-11-19 17:32:06'),
(11, 17, 1, 3, '1', '2022-11-19 17:32:17'),
(12, 25, 1, 3, '1', '2022-11-19 17:32:37'),
(13, 26, 1, 4, '1', '2022-11-19 17:32:44'),
(14, 16, 1, 3, '1', '2022-11-19 17:54:40'),
(15, 18, 1, 3, '1', '2022-11-20 15:49:38'),
(16, 24, 1, 2, '1', '2022-11-20 15:50:14'),
(17, 25, 1, 2, '1', '2022-11-20 16:01:22'),
(18, 16, 5, 3, 'Product is fully tested and ready to go in market.', '2022-11-21 09:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `items_stock` int(11) NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `room_id`, `items_stock`, `item_status`, `status`) VALUES
(18, 16, 14, 8, 1, 1),
(19, 16, 14, 3, 2, 1),
(20, 17, 14, 14, 1, 1),
(21, 18, 14, 1, 1, 1),
(22, 24, 14, 58, 1, 1),
(23, 25, 14, 8, 1, 1),
(24, 26, 14, 3, 1, 1),
(25, 24, 14, 1, 2, 1),
(26, 25, 14, 1, 2, 1),
(27, 27, 14, 10, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_transfer`
--

CREATE TABLE `item_transfer` (
  `id` int(11) NOT NULL,
  `t_itemID` int(11) NOT NULL,
  `t_roomID` int(11) NOT NULL,
  `t_stockID` int(11) NOT NULL,
  `t_quantity` int(11) NOT NULL,
  `date_transfer` timestamp NOT NULL DEFAULT current_timestamp(),
  `t_status` int(11) NOT NULL DEFAULT 1,
  `personincharge` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `m_school_id` int(11) NOT NULL,
  `m_fname` varchar(50) NOT NULL,
  `m_lname` varchar(50) NOT NULL,
  `m_gender` varchar(10) NOT NULL,
  `m_contact` varchar(15) NOT NULL,
  `m_department` varchar(50) NOT NULL,
  `m_year_section` varchar(20) NOT NULL,
  `m_type` varchar(50) NOT NULL,
  `m_password` varchar(50) NOT NULL,
  `m_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `m_school_id`, `m_fname`, `m_lname`, `m_gender`, `m_contact`, `m_department`, `m_year_section`, `m_type`, `m_password`, `m_status`) VALUES
(1, 21200122, 'John ', 'Doe', 'Male', '9124599887', 'BSIS', '1st-A', 'Student', '', 1),
(2, 21200002, 'Chris ', 'Doe', 'Male', '9076486735', 'BSIS', '1st-A', 'Student', '', 0),
(3, 21300024, 'Shane', 'Ramos', 'Female', '9072786945', 'BSCE', '1st-A', 'Student', '', 1),
(4, 21300156, 'Jedha', 'Dela Cruz', 'Female', '9051467843', 'BSED', '2nd-A', 'Student', '', 1),
(5, 21200011, 'Tresha', 'Tiamzon', 'Female', '9499007591', 'BSIT', '1st-A', 'Student', '', 1),
(6, 21400099, 'Mark', 'Susana', 'Male', '091265451332', 'BSIT', '2nd- B', 'Student', '', 1),
(7, 21300073, 'Gino', 'Olmedo', 'Male', '09502786543', 'BSIS', '4th- A', 'Student', '', 1),
(8, 21401109, 'Mika', 'Calapatan', 'Female', '09498723987', 'BSHRM', '3rd- C', 'Student', '', 1),
(9, 10001, 'Sarah', 'Tamayo', 'Female', '09488098768', 'COED', '- ', 'Faculty', '', 0),
(10, 10002, 'Marilyn', 'cepeda', 'Female', '09051148373', 'SAS', '- ', 'Faculty', '', 1),
(11, 10003, 'Peter', 'Villegas', 'Male', '09489238291', 'SAS', '- ', 'Faculty', '', 1),
(12, 10005, 'Sam', 'Reyes', 'Male', '09072708181', 'CIT', '- ', 'Faculty', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `reservation_code` varchar(60) NOT NULL,
  `member_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `reserve_date` varchar(50) DEFAULT NULL,
  `reservation_time` varchar(20) NOT NULL,
  `time_limit` datetime NOT NULL,
  `assign_room` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` text NOT NULL,
  `r_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_status`
--

CREATE TABLE `reservation_status` (
  `id` int(11) NOT NULL,
  `reservation_code` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `res_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation_status`
--

INSERT INTO `reservation_status` (`id`, `reservation_code`, `remark`, `res_status`) VALUES
(13, '0217201706314310', 'Accepted Reservation', 1),
(14, '021920170329593', 'Accepted Reservation', 1),
(15, '021920170329593', 'Accepted Reservation', 1),
(16, '021920170345437', 'Accepted Reservation', 1),
(17, '021920170353384', 'Accepted Reservation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `rm_name` varchar(50) NOT NULL,
  `rm_date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `rm_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `rm_name`, `rm_date_added`, `rm_status`) VALUES
(1, 'room 312', '2016-11-16 21:21:42', 1),
(2, 'room 403', '2016-11-16 21:21:47', 1),
(3, 'room 311', '2016-11-16 21:21:53', 1),
(4, 'room 313', '2016-11-17 18:45:03', 1),
(5, 'room 402', '2016-11-17 20:51:30', 1),
(6, 'room 301', '2016-11-17 20:51:43', 1),
(7, 'room 302', '2016-11-17 20:51:54', 1),
(8, 'room 303', '2016-11-17 20:52:04', 1),
(9, 'room 304', '2016-11-17 20:52:20', 1),
(10, 'room 305', '2016-11-17 20:52:56', 1),
(11, 'room 306', '2016-11-17 20:53:20', 1),
(14, 'room 310', '2017-01-08 13:17:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_equipment`
--

CREATE TABLE `room_equipment` (
  `id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `re_quantity` int(11) NOT NULL,
  `stats` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_equipment`
--

INSERT INTO `room_equipment` (`id`, `equipment_id`, `room_id`, `re_quantity`, `stats`) VALUES
(1, 1, 14, 12, 1),
(2, 2, 14, 12, 1),
(3, 3, 14, 12, 1),
(4, 4, 14, 12, 1),
(5, 5, 14, 12, 1),
(6, 6, 14, 12, 1),
(7, 7, 14, 12, 1),
(8, 8, 14, 12, 1),
(9, 1, 14, 10, 1),
(10, 2, 14, 10, 1),
(11, 1, 14, 12, 1),
(12, 2, 14, 12, 1),
(13, 3, 14, 2, 1),
(14, 1, 14, 12, 1),
(15, 2, 14, 10, 1),
(16, 3, 14, 10, 1),
(17, 1, 14, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=admin, 2=stafff',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active, 2=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `type`, `status`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 1),
(2, 'John Doe', 'staff1', 'de9bf5643eabf80f4a56fda3bbb84483', 2, 1),
(3, 'Juan', 'juan', 'f5737d25829e95b9c234b7fa06af8736', 2, 1),
(4, 'Maria Cruz', 'maria', '263bce650e68ab4e23f28263760b9fa5', 2, 1),
(5, 'Pedro Jose', 'pedro', 'd3ce9efea6244baa7bf718f12dd0c331', 2, 1),
(6, 'Administrator 2', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `equipment_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_id` (`equipment_id`);

--
-- Indexes for table `history_logs`
--
ALTER TABLE `history_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_inventory`
--
ALTER TABLE `item_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_transfer`
--
ALTER TABLE `item_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `equipment_id` (`item_id`);

--
-- Indexes for table `reservation_status`
--
ALTER TABLE `reservation_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_equipment`
--
ALTER TABLE `room_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment_inventory`
--
ALTER TABLE `equipment_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_logs`
--
ALTER TABLE `history_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `item_inventory`
--
ALTER TABLE `item_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `item_transfer`
--
ALTER TABLE `item_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_status`
--
ALTER TABLE `reservation_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_equipment`
--
ALTER TABLE `room_equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
