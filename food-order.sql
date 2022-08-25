-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 07:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

DELIMITER $$

Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrders` ()  SELECT * FROM tbl_order ORDER BY id DESC$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getTransactions` ()  SELECT * FROM tbl_bill ORDER BY ord_id DESC$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `bill_id` int(10) UNSIGNED NOT NULL,
  `bill_amount` decimal(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `ord_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bill`
--

INSERT INTO `tbl_bill` (`bill_id`, `bill_amount`, `bill_date`, `ord_id`) VALUES
(1, '40.00', '2022-01-17', 12),
(2, '40.00', '2022-01-17', 13),
(3, '50.00', '2022-01-17', 14),
(4, '50.00', '2022-01-17', 15),
(5, '50.00', '2022-01-17', 16),
(6, '50.00', '2022-01-17', 17),
(7, '50.00', '2022-01-17', 18),
(8, '50.00', '2022-01-17', 19),
(9, '50.00', '2022-01-17', 20),
(10, '20.00', '2022-01-17', 21),
(11, '20.00', '2022-01-17', 22),
(12, '20.00', '2022-01-17', 23),
(13, '30.00', '2022-01-17', 24),
(14, '35.00', '2022-01-17', 25),
(15, '25.00', '2022-01-17', 26),
(16, '25.00', '2022-01-17', 27),
(17, '20.00', '2022-01-17', 28),
(19, '10.00', '2022-01-18', 30),
(20, '30.00', '2022-01-24', 31),
(21, '20.00', '2022-01-24', 32),
(22, '40.00', '2022-01-24', 33),
(23, '10.00', '2022-01-25', 34);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(9, 'South Indian', 'Food_Category_677.jpg', 'Yes', 'Yes'),
(10, 'Chinese', 'Food_Category_450.jpg', 'Yes', 'Yes'),
(11, 'Beverages', 'Food_Category_585.jpg', 'No', 'Yes');

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
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(9, 'Curd Rice', 'Curd rice is a dish where soft cooked mushy rice is simply mixed with curd (Indian yogurt) and salt.', '25.00', 'Food-Name-7302.jpg', 9, 'No', 'Yes'),
(10, 'Idli', 'Idli is a soft & fluffy steamed cake made of fermented rice & lentil batter.', '20.00', 'Food-Name-9839.jpg', 9, 'Yes', 'Yes'),
(11, 'Vada', 'Vada are a kind of deep fried savory snack mostly made with lentils, spices and herbs.', '10.00', 'Food-Name-3469.jpg', 9, 'No', 'Yes'),
(12, 'Plain Dosa', 'A dosa is a thin pancake or crepe made from a fermented batter consisting of lentils and rice.', '25.00', 'Food-Name-7392.jpg', 9, 'No', 'Yes'),
(13, 'Masala Dosa', 'Masala dosa is made from rice, lentils, potato,ghee served with chutneys and sambar.', '30.00', 'Food-Name-6736.jpg', 9, 'Yes', 'Yes'),
(14, 'Set Dosa', 'Set of three dosas served with saagu and coconut chutney.', '30.00', 'Food-Name-8912.jpg', 9, 'No', 'Yes'),
(15, 'Rava Dosa', 'These are crispy, netted and thin crepes made with rava, rice flour, all purpose flour and spices.', '25.00', 'Food-Name-6519.jpg', 9, 'No', 'Yes'),
(16, 'Onion Dosa', 'Regular set dosa topped with chopped onions, green chili and coriander leaves.', '30.00', 'Food-Name-6030.jpg', 9, 'No', 'Yes'),
(17, 'Poori-Sagu', 'Poori is deep-fried, puffy bread made with whole wheat flour served with saagu.', '30.00', 'Food-Name-6328.jpg', 9, 'No', 'Yes'),
(18, 'Veg Pulao', 'Veg Pulao is made with rice, vegetables, spices and herbs.', '35.00', 'Food-Name-8111.jpg', 9, 'No', 'Yes'),
(19, 'Tomato Rice', 'Tomato rice is made with lots of tomatoes & spices and rice.', '35.00', 'Food-Name-4033.jpg', 9, 'No', 'Yes'),
(20, 'Fried Rice', 'Fried rice is flavoured rice with lots of veggies and seasonings.', '40.00', 'Food-Name-6846.jpg', 10, 'Yes', 'Yes'),
(21, 'Gobi Manchurian', 'Gobi Manchurian is made with cauliflower,soya sauce,vinegar, chilli sauce, ginger & garlic.', '25.00', 'Food-Name-3340.jpg', 10, 'No', 'Yes'),
(22, 'Paneer Fried Rice', 'It is an Indian-Chinese fried rice variety made with rice, paneer and veggies.', '50.00', 'Food-Name-8246.jpg', 10, 'No', 'Yes'),
(23, 'Schezwan Fried Rice', 'Schezwan fried rice is hot and spicy with bursting flavours of ginger, garlic and red chilli.', '50.00', 'Food-Name-4160.jpg', 10, 'No', 'Yes'),
(24, 'Noodles', 'Veg Noodles are stir-fried vegetables with cooked noodles.', '40.00', 'Food-Name-7743.jpg', 10, 'No', 'Yes'),
(25, 'Tea', 'The spiced tea is typically brewed strong with milk and sweetened with sugar.', '10.00', 'Food-Name-6333.jpg', 11, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `ord_status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `ord_status`, `customer_name`, `customer_contact`, `customer_email`) VALUES
(12, 'Noodles', '40.00', 1, '40.00', '2022-01-17 08:14:25', 'Ordered', 'nn', '980292', 'asd@gmail.com'),
(13, 'Noodles', '40.00', 1, '40.00', '2022-01-17 08:23:54', 'Ordered', 'nnsds', '980292aa', 'asad@gmail.com'),
(14, 'Paneer Fried Rice', '50.00', 1, '50.00', '2022-01-17 08:25:26', 'Ordered', 'kl', '980', 'aksn@gmail.com'),
(15, 'Paneer Fried Rice', '50.00', 1, '50.00', '2022-01-17 08:29:44', 'Ordered', 'cj', '7669', 'cj@gmail.com'),
(16, 'Paneer Fried Rice', '50.00', 1, '50.00', '2022-01-17 08:35:23', 'Ordered', 'gmgl', '39922', 'aksn@gmail.com'),
(17, 'Paneer Fried Rice', '50.00', 1, '50.00', '2022-01-17 08:40:22', 'Ordered', 'nn', '2929', 'cj@gmail.com'),
(18, 'Paneer Fried Rice', '50.00', 1, '50.00', '2022-01-17 08:54:23', 'Ordered', 'asdf', '939', 'dljg@gmail.com'),
(19, 'Paneer Fried Rice', '50.00', 1, '50.00', '2022-01-17 08:55:24', 'Ordered', 'lsdkfl', '923', 'aslfj@gmail.com'),
(20, 'Paneer Fried Rice', '50.00', 1, '50.00', '2022-01-17 09:01:54', 'Ordered', '324', '94', 'asd@gmail.com'),
(21, 'Idli', '20.00', 1, '20.00', '2022-01-17 09:04:26', 'Ordered', 'kdsjfk', '012093', 'askjd@gmail.com'),
(22, 'Idli', '20.00', 1, '20.00', '2022-01-17 09:05:58', 'Ordered', 'ksadhfk', '971293', 'skdfjk@gmail.com'),
(23, 'Idli', '20.00', 1, '20.00', '2022-01-17 09:06:35', 'Ordered', 'askdn', '7669', '23@gmail.com'),
(24, 'Masala Dosa', '30.00', 1, '30.00', '2022-01-17 09:17:43', 'Ordered', 'asd', '83792', 'asad@gmail.com'),
(25, 'Tomato Rice', '35.00', 1, '35.00', '2022-01-17 09:25:26', 'Ordered', 'cj', '9101', 'asad@gmail.com'),
(26, 'Gobi Manchurian', '25.00', 1, '25.00', '2022-01-17 10:04:15', 'Ordered', 'asd', '8989', 'cj@gmail.com'),
(27, 'Gobi Manchurian', '25.00', 1, '25.00', '2022-01-17 10:11:48', 'Delivered', 'drushya', '98965', 'dljg@gmail.com'),
(28, 'Idli', '20.00', 1, '20.00', '2022-01-17 06:18:08', 'Delivered', 'abc', 'ashd22', 'as@gmail.com'),
(30, 'Samosa', '10.00', 1, '10.00', '2022-01-18 05:58:52', 'Delivered', 'xyz', '123456', 'as@gmail.com'),
(31, 'Masala Dosa', '30.00', 1, '30.00', '2022-01-24 12:27:52', 'Ordered', 'abcd', '9999', 'as@gmail.com'),
(32, 'Idli', '20.00', 1, '20.00', '2022-01-24 12:46:27', 'Cancelled', 'lkl', '923804', 'skdfjk@gmail.com'),
(33, 'Noodles', '40.00', 1, '40.00', '2022-01-24 12:57:52', 'Ordered', 'asf', '34', 'asad@gmail.com'),
(34, 'Tea', '10.00', 1, '10.00', '2022-01-25 05:29:49', 'Ordered', 'sadf', '32415', 'as@gmail.com');

--
-- Triggers `tbl_order`
--
DELIMITER $$
CREATE TRIGGER `insertBill` AFTER INSERT ON `tbl_order` FOR EACH ROW BEGIN
INSERT INTO tbl_bill VALUES(null, NEW.price, NEW.order_date, NEW.id);
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`bill_id`,`ord_id`),
  ADD KEY `order_has_bill` (`ord_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_has_food` (`category_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `bill_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD CONSTRAINT `order_has_bill` FOREIGN KEY (`ord_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD CONSTRAINT `category_has_food` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
