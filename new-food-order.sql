-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 12:56 PM
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
-- Database: `new-food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `aamarpay`
--

CREATE TABLE `aamarpay` (
  `id` int(100) NOT NULL,
  `cus_name` text NOT NULL,
  `amount` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `pay_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transaction_id` varchar(100) NOT NULL,
  `card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aamarpay`
--

INSERT INTO `aamarpay` (`id`, `cus_name`, `amount`, `status`, `pay_time`, `transaction_id`, `card_type`) VALUES
(55, 'Jayanth', 320, 'Successful', '2024-03-21 08:20:47', 'ONL-PAY-DTYI65WPX7', 'DBBL-MobileBanking'),
(56, 'Kedar', 300, 'Successful', '2024-03-21 08:20:36', 'ONL-PAY-9M8MHK5ROM', 'DBBL-MASTERDEBIT');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `message_status` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `phone`, `subject`, `message`, `message_status`, `date`) VALUES
(19, 'Maheosy Haque', 1867348264, 'Test Subject', 'Test Message', 'unread', '2022-02-14 12:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `online_orders_new`
--

CREATE TABLE `online_orders_new` (
  `order_id` int(100) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `online_orders_new`
--

INSERT INTO `online_orders_new` (`order_id`, `Item_Name`, `Price`, `Quantity`) VALUES
(36, 'French Fries', 80, 1),
(37, 'Beef Burger', 150, 1),
(38, 'Beef Burger', 150, 3),
(38, 'Pizza', 250, 1),
(39, 'French Fries', 80, 1),
(40, 'Beef Burger', 150, 4),
(41, 'Beef Burger', 150, 1),
(42, 'Margherita Pizza', 200, 1),
(42, 'Regular French Fries', 100, 2),
(43, 'Beef Burger', 150, 1),
(44, 'Beef Burger', 150, 1),
(45, 'Vegetarian Pizza', 180, 1),
(46, 'Mexican Pizza', 250, 1),
(47, 'Vegetarian Pizza', 180, 1),
(48, 'Beef Burger', 150, 1),
(1, 'Mexican Pizza', 250, 1),
(1, 'Buffalo Wings', 250, 1),
(1, 'Regular French Fries', 100, 2),
(2, 'Pepperoni Pizza', 220, 1),
(3, 'Mexican Pizza', 250, 1),
(3, 'Beef Burger', 150, 1),
(3, 'Regular French Fries', 100, 2),
(4, 'Vegetarian Pizza', 180, 1),
(5, 'Buffalo Wings', 250, 1),
(6, 'Buffalo Wings', 250, 1),
(7, 'Vegetarian Pizza', 180, 1),
(8, 'Beef Burger', 150, 1),
(9, 'Buffalo Wings', 250, 1),
(9, 'Pepperoni Pizza', 220, 1),
(10, 'Regular French Fries', 100, 1),
(11, 'Regular French Fries', 100, 1),
(12, 'Mexican Pizza', 250, 1),
(12, 'Pepperoni Pizza', 220, 1),
(13, 'Cheese Burger', 170, 1),
(14, 'Hone Glazed Chicken', 270, 1),
(15, 'Popcorn Chicken', 150, 1),
(16, 'Samoosa ', 100, 1),
(17, 'French Fries ', 130, 1),
(18, 'Pepperoni Pizza ', 270, 1),
(19, 'Popcorn Chicken', 150, 1),
(20, 'BBQ Wings', 230, 1),
(21, 'Hone Glazed Chicken', 270, 1),
(22, 'BBQ Wings', 230, 1),
(23, 'Mushroom Pizza', 280, 1),
(24, 'Samoosa ', 100, 1),
(25, 'Vegetarian Pizza', 300, 1),
(26, 'Crispy Wings', 250, 1),
(27, 'Hone Glazed Chicken', 270, 1),
(28, 'Cheese Pizza', 290, 1),
(29, 'Crispy Wings', 250, 2),
(29, 'Hone Glazed Chicken', 270, 2),
(29, 'Pepperoni Pizza ', 270, 1),
(30, 'Chicken Kiev Balls', 200, 1),
(30, 'Chicken Burger', 120, 1),
(30, 'Onion Rings', 100, 1),
(31, 'Deluxe Pizza ', 490, 1),
(31, 'Beef Burger', 150, 3),
(32, 'Beef Burger', 150, 2),
(32, 'Hamburger', 160, 1),
(33, 'Beef Burger', 150, 5),
(34, 'Red Hot', 120, 1),
(34, 'Beef Burger', 150, 4),
(34, 'Hamburger', 160, 1),
(35, 'Deluxe Pizza ', 490, 2),
(35, 'Shingara', 100, 1),
(36, 'Cheese Burger', 100, 1),
(36, 'Samoosa', 100, 2),
(37, 'Chicken Nuggets', 150, 1),
(37, 'Onion Rings', 100, 1),
(38, 'Deluxe Pizza ', 490, 1),
(39, 'Chicken Burger', 120, 2),
(40, 'French Fries', 120, 3),
(41, 'Hamburger', 160, 1),
(42, 'Hamburger', 160, 1),
(43, 'Hamburger', 160, 1),
(44, 'Hamburger', 160, 1),
(45, 'Hamburger', 160, 1),
(46, 'Hamburger', 160, 1),
(47, 'Hamburger', 160, 1),
(48, 'Hamburger', 160, 1),
(49, 'Hamburger', 160, 1),
(50, 'Cheese Dog', 110, 1),
(51, 'Cheese Dog', 110, 1),
(52, 'Cheese Dog', 110, 1),
(53, 'Cheese Dog', 110, 1),
(54, 'Cheese Dog', 110, 1),
(55, 'Cheese Dog', 110, 1),
(56, 'Cheese Dog', 110, 1),
(57, 'Cheese Dog', 110, 1),
(58, 'Cheese Dog', 110, 1),
(59, 'Cheese Dog', 110, 1),
(60, 'Cheese Dog', 110, 1),
(61, 'Deluxe Pizza ', 490, 1),
(61, 'Samoosa', 100, 1),
(62, 'Deluxe Pizza ', 490, 1),
(62, 'Samoosa', 100, 1),
(63, 'Deluxe Pizza ', 490, 1),
(63, 'Samoosa', 100, 1),
(64, 'Deluxe Pizza ', 490, 1),
(64, 'Samoosa', 100, 1),
(65, 'Deluxe Pizza ', 490, 1),
(65, 'Samoosa', 100, 1),
(66, 'Deluxe Pizza ', 490, 1),
(66, 'Samoosa', 100, 1),
(67, 'Supreme Pizza', 450, 1),
(68, 'Red Hot', 120, 1),
(69, 'Red Hot', 120, 1),
(70, 'Red Hot', 120, 1),
(71, 'Red Hot', 120, 1),
(72, 'Red Hot', 120, 1),
(73, 'Cheese Dog', 110, 1),
(74, 'Cheese Dog', 110, 1),
(75, 'Chicken Nuggets', 150, 2),
(76, 'Chicken Burger', 120, 1),
(77, 'Chicken Burger', 120, 2),
(77, 'Beef Burger', 150, 1),
(78, 'Chicken Burger', 120, 2),
(78, 'Beef Burger', 150, 2),
(79, 'Chicken Burger', 120, 2),
(79, 'Beef Burger', 150, 2),
(80, 'Chicken Kiev Balls', 200, 1),
(81, 'Chicken Kiev Balls', 200, 1),
(82, 'Hamburger', 160, 2),
(83, 'Chicken Burger', 120, 3),
(83, 'Beef Burger', 150, 2),
(84, 'Chicken Burger', 120, 4),
(85, 'Cheese Burger', 100, 2),
(86, 'Cheese Burger', 100, 3),
(86, 'Cheese Pizza', 350, 4),
(87, 'Chicken Burger', 120, 3),
(87, 'Beef Burger', 150, 2),
(88, 'French Fries', 120, 4),
(89, 'Vegetarian Pizza', 300, 1),
(90, 'Hot Onion Dog', 100, 1),
(91, 'Shingara', 100, 2),
(91, 'Chicken Nuggets', 150, 1),
(92, 'Onion Rings', 100, 1),
(93, 'Chili Hot Dog', 80, 4),
(94, 'Vegetarian Pizza', 300, 1),
(95, 'Cheese Burger', 100, 1),
(96, 'Vegetarian Pizza', 300, 1),
(96, 'Chili Hot Dog', 80, 1),
(97, 'Red Hot', 120, 1),
(98, 'Vegetarian Pizza', 300, 1),
(99, 'Supreme Pizza', 450, 1),
(100, 'Cheese Burger', 100, 1),
(100, 'Beef Burger', 150, 1),
(101, 'Chicken Burger', 120, 1),
(101, 'Lamb Burger', 150, 1),
(102, 'Lamb Burger', 150, 1),
(103, 'Cheese Burger', 100, 1),
(104, 'Lamb Burger', 150, 1),
(105, 'Hamburger', 160, 1),
(106, 'Chicken Burger', 120, 1),
(106, 'Lamb Burger', 150, 1),
(106, 'Cheese Burger', 100, 1),
(107, 'Chicken Burger', 120, 1),
(108, 'Lamb Burger', 150, 1),
(108, 'Cheese Pizza', 350, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `cus_name` text NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  `cus_add1` varchar(100) NOT NULL,
  `cus_city` text NOT NULL,
  `cus_phone` bigint(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` int(11) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_manager`
--

INSERT INTO `order_manager` (`order_id`, `username`, `cus_name`, `cus_email`, `cus_add1`, `cus_city`, `cus_phone`, `payment_status`, `order_date`, `total_amount`, `transaction_id`, `order_status`) VALUES
(16, '', 'my full name', 'me@mydomain.com', '01', 'city name', 67, 'successful', '0000-00-00 00:00:00', 100, 'ONL-PAY-TFWV0J5REO', ''),
(17, '', 'my full name', 'me@mydomain.com', '01', 'city name', 76, 'successful', '0000-00-00 00:00:00', 130, 'ONL-PAY-GY1UBIG5RX', ''),
(18, '', 'my full name', 'me@mydomain.com', '01', 'city name', 54, 'successful', '0000-00-00 00:00:00', 270, 'ONL-PAY-FYCCSXTQHX', ''),
(19, '', 'my full name', 'me@mydomain.com', '01', 'city name', 54, 'successful', '0000-00-00 00:00:00', 150, 'ONL-PAY-DRV44CERAQ', 'Delivered'),
(20, '', 'my full name', 'me@mydomain.com', '01', 'city name', 78, 'successful', '0000-00-00 00:00:00', 230, 'ONL-PAY-UXZ7UIZ402', 'Delivered'),
(101, 'mehehehesi', 'messiii', 'messi@gmail.com', 'argentina', 'rosario', 10456545465, 'pending', '2024-03-11 12:53:06', 270, 'ONL-PAY-F2GQ9WV69H', 'Pending'),
(102, 'mehehehesi', 'messiii', 'messi@gmail.com', 'argentina', 'rosario', 10456545465, 'pending', '2024-03-10 08:01:30', 150, 'ONL-PAY-ATQY862CVE', 'Pending'),
(103, 'mehehehesi', 'messiii', 'messi@gmail.com', 'argentina', 'rosario', 10456545465, 'pending', '2024-03-10 08:04:44', 100, 'ONL-PAY-DCWSPJDD28', 'Pending'),
(106, 'jayanth88', 'chethan', 'jayanthsaichethan@gmail.com', 'karnataka', 'bangalore', 9740383746, 'pending', '2024-03-21 01:29:08', 370, 'ONL-PAY-RRUPQ9TBIU', 'Pending'),
(107, 'jayanth88', 'chethan', 'jayanthsaichethan@gmail.com', 'karnataka', 'bangalore', 9740383746, 'pending', '2024-03-21 01:31:02', 120, 'ONL-PAY-593EKDOIG0', 'Pending'),
(108, 'jayanth88', 'chethan', 'jayanthsaichethan@gmail.com', 'karnataka', 'bangalore', 9740383746, 'pending', '2024-03-21 02:03:50', 500, 'ONL-PAY-0AJZLQSEVB', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `res_id` int(11) NOT NULL,
  `res_name` varchar(30) NOT NULL,
  `res_date` date NOT NULL,
  `res_time` varchar(10) NOT NULL,
  `no_guests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`res_id`, `res_name`, `res_date`, `res_time`, `no_guests`) VALUES
(1, 'joshi', '2024-02-08', '10.30', 5),
(2, 'kedar', '2024-02-09', '11.30', 2),
(3, 'afs', '2024-02-14', '8 30', 2),
(4, 'messi', '2024-03-12', '10:30', 6),
(5, 'afs', '2024-03-13', '10:30', 4),
(6, 'bharath', '2024-03-13', '8:30', 4),
(7, 'jayanth', '2024-02-29', '10.30', 4),
(8, 'ronaldo', '2024-03-20', '4:30', 4),
(9, 'priyansh', '2024-03-14', '3:30', 3),
(10, 'jayanth', '2024-03-21', '11.30', 2),
(11, 'neymar', '2024-03-22', '4:30', 6),
(12, 'neymar', '2024-03-22', '8 30', 6),
(13, 'bharath', '2024-03-22', '10:30', 4),
(14, 'bharath', '2024-03-21', '10:30', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(39, 'Doc', 'jay08', 'jayanth08'),
(41, 'Jayanth Sai', 'jay08', 'jay08'),
(42, 'Jayanth Sai', 'jayanth08', '71af60921db8838bc90fde9888485ae8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(41, 'Burger', 'Food_Category_81005.jpg', 'Yes', 'Yes'),
(42, 'Pizza', 'Food_Category_13196.jpg', 'Yes', 'Yes'),
(43, 'Hot Dogs', 'Food_Category_76472.jpg', 'Yes', 'Yes'),
(44, 'Sides', 'Food_Category_39435.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eipay`
--

CREATE TABLE `tbl_eipay` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `tran_id` varchar(50) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_status` varchar(50) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  `stock` int(100) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`, `stock`) VALUES
(34, 'Chicken Burger', 'Chicken Burger', 120.00, 'Food-Name-7394.jpg', 41, 'No', 'Yes', 67),
(35, 'Lamb Burger', 'Lamb Burger', 150.00, 'Food-Name-251.jpg', 41, 'No', 'Yes', 54),
(36, 'Cheese Burger', 'Cheese Burger', 100.00, 'Food-Name-1511.jpg', 41, 'No', 'Yes', 81),
(37, 'Hamburger', 'Hamburger', 160.00, 'Food-Name-8238.jpg', 41, 'Yes', 'Yes', 89),
(38, 'Supreme Pizza', 'Supreme Pizza', 450.00, 'Food-Name-3657.jpg', 42, 'Yes', 'Yes', 69),
(39, 'Deluxe Pizza ', 'Deluxe Pizza ', 490.00, 'Food-Name-4854.jpg', 42, 'No', 'Yes', 49),
(40, 'Cheese Pizza', 'Cheese Pizza', 350.00, 'Food-Name-926.jpg', 42, 'No', 'Yes', 79),
(41, 'Vegetarian Pizza', 'Vegetarian Pizza', 300.00, 'Food-Name-6428.jpg', 42, 'No', 'Yes', 86),
(42, 'Chili Hot Dog', 'Chili Hot Dog', 80.00, 'Food-Name-1499.jpg', 43, 'No', 'Yes', 145),
(43, 'Hot Onion Dog', 'Hot Onion Dog', 100.00, 'Food-Name-5049.jpg', 43, 'No', 'Yes', 159),
(44, 'Cheese Dog', 'Cheese Dog', 110.00, 'Food-Name-3512.jpg', 43, 'Yes', 'Yes', 60),
(45, 'Red Hot', 'Red Hot\r\n', 120.00, 'Food-Name-5500.jpg', 43, 'No', 'Yes', 139),
(46, 'Popcorn Chicken', 'Popcorn Chicken', 250.00, 'Food-Name-9143.jpg', 44, 'No', 'Yes', 500),
(47, 'Samoosa', 'Samoosa', 100.00, 'Food-Name-1669.jpg', 44, 'No', 'Yes', 300),
(48, 'Shingara', 'Shingara', 100.00, 'Food-Name-937.jpg', 44, 'Yes', 'Yes', 596),
(49, 'Spring Roll', 'Spring Roll', 130.00, 'Food-Name-5356.jpg', 44, 'Yes', 'Yes', 78),
(50, 'Chicken Nuggets', 'Chicken Nuggets', 150.00, 'Food-Name-5725.jpg', 44, 'No', 'Yes', 595),
(51, 'Chicken Kiev Balls', 'Chicken Kiev Balls', 200.00, 'Food-Name-5497.jpg', 44, 'Yes', 'Yes', 39),
(52, 'French Fries', 'French Fries', 120.00, 'Food-Name-2893.jpg', 44, 'Yes', 'Yes', 594),
(53, 'Onion Rings', 'Onion Rings', 100.00, 'Food-Name-8745.jpg', 44, 'Yes', 'Yes', 597);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `tbl_no` int(10) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `ord_date` date NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cust_name`, `tbl_no`, `total`, `phone`, `ord_date`, `order_status`) VALUES
(1, 'jayanth', 4, 500.00, '9740383746', '2024-03-11', ''),
(2, 'Kedar', 3, 400.00, '9740383746', '2024-03-12', ''),
(3, 'Messi', 6, 300.00, '9740383746', '0000-00-00', 'Completed'),
(40, 'bharath', 4, 370.00, '987456321', '2024-03-21', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `add1` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` bigint(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `add1`, `city`, `phone`, `username`, `password`) VALUES
(5, 'Mofiz Mia', 'mofiz@gmail.com', 'Dhaka', 'Dhaka', 1717122112, 'mofiz11', 'b59c67bf196a4758191e42f76670ceba'),
(6, 'jayanth', 'jayanth@gmail.com', 'karnataka', 'bangalore', 9740383746, 'jayanth08', '0ca7e6d2aef8fdd63b1c94c9ac302ade'),
(7, 'messiii', 'messi@gmail.com', 'argentina', 'rosario', 10456545465, 'mehehehesi', '2dafaffcd2f1f8e813834473e380080e'),
(8, 'chethan', 'jayanthsaichethan@gmail.com', 'karnataka', 'bangalore', 9740383746, 'jayanth88', '97e128eb351d48a4a9303226b81a2ebf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aamarpay`
--
ALTER TABLE `aamarpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_eipay`
--
ALTER TABLE `tbl_eipay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aamarpay`
--
ALTER TABLE `aamarpay`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_eipay`
--
ALTER TABLE `tbl_eipay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
