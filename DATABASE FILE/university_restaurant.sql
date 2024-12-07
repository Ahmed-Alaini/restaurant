-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 03:05 AM
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
-- Database: `university_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52'),
(2, 'shehab', '123456', 'shehab@gmail.com', '', '2024-11-17 01:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(13, 15, 'in process', 'thanks', '2024-11-12 22:43:54'),
(14, 14, 'closed', 'done', '2024-11-12 22:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 8.00, '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 11.00, '606d752a209c3.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 7.00, '606d75a7e21ec.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 11.00, '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 11.00, '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 9.00, '606d768a1b2a1.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 10.00, '606d76eedbb99.jpg'),
(17, 2, 'Lamb Kabsa', 'Rice cooked with lamb, spices, and nuts.', 200.00, '673154486ceae.png'),
(19, 8, ' Arabic burger meal', ' Contains soy, wheat, eggs, celery, mustard, milk', 30.00, '6733e6c9c9f7d.png'),
(20, 8, 'Tasty grilled meal', 'Contains soy, wheat, eggs, celery, milk', 20.00, '6733e72842cbc.png'),
(21, 8, 'Fresh Burger Meal', 'Contains soy, wheat, eggs, mustard, milk', 30.00, '6733e75dec580.png'),
(23, 8, 'Chicken roll meal', 'Chicken roll meal', 30.00, '67394c2900f14.png');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 11, ' ALBAIK', ' info@albaik.com', '800-244-2245', 'www.albaik.com', '10am', '3pm', '24hr-x7', ' King Abdullah Road, Jeddah', '6733e29adf135.jpeg', '2024-11-12 23:19:54'),
(6, 6, 'Mandi Al-Madina', 'contact@mandi.com', '014-838-6090', 'www.mandi.com', '12pm', '12am', '24hr-x7', 'Al-Madina Al-Munawwara', '67329ac627d3b.jpg', '2024-11-12 00:01:10'),
(7, 0, 'King Shawarma', 'info@kingshawarma.com', '011-234-5678', 'www.kingshawarma.com', '--Select your Hours--', '--Select your Hours--', '--Select your Days--', ' Al-Madina Al-Munawwara ', '67329cd79cb52.jpg', '2024-11-12 00:09:59'),
(8, 12, 'Al-Tazaj', 'support@tazaj.com', '013-123-4567', 'www.tazaj.com', '9am', '12am', '24hr-x7', 'Prince Muhammad bin Fahd Street, Dammam', '6733dd52ba157.jpg', '2024-11-12 22:57:22'),
(9, 12, 'Popular Foods', ' info@popularfood.com', '013-555-1212', 'www.popularfood.com', '11am', '11pm', '24hr-x7', 'King Salman Street, Khobar', '6733e009eda6e.jpg', '2024-11-12 23:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(6, 'Snacks', '2024-11-11 00:04:03'),
(7, 'Beverages', '2024-11-11 00:04:13'),
(8, 'Salads and Soups', '2024-11-11 00:04:25'),
(9, 'Vegetarian or Gluten-Free Options', '2024-11-11 00:04:43'),
(10, 'Meals for Athletes or Special Diets', '2024-11-11 00:05:06'),
(11, 'Fast Food', '2024-11-12 22:49:24'),
(12, 'Traditional Cuisine', '2024-11-12 22:49:59'),
(13, 'Shawarma', '2024-11-12 22:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `unv_id` varchar(222) DEFAULT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

-- INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
-- -- (7, 'shehab2024', 'shehab', 'alqahtani', 'shehabalqahtani704@gmail.com', '0772688189', 'e10adc3949ba59abbe56e057f20f883e', 'sanaa', 1, '2024-11-09 03:33:22'),
-- -- (8, 'Ghadi Ali', 'Ghadi', 'Ali', 'Ghadi_Ali@gmail.com', '96656575767', '25d55ad283aa400af464c76d713c07ad', 'medina', 1, '2024-11-13 02:07:58'),
-- -- (9, 'Mariam Al-Rashidi', 'Mariam ', 'Al-Rashidi', 'Mariam_Al-Rashidi@gmail.com', '966565757672', '25d55ad283aa400af464c76d713c07ad', 'medina', 1, '2024-11-13 02:11:31'),
-- -- (10, 'Ghada Al-Anzi', 'Ghada ', 'Al-Anzi', 'Ghada_Al-Anzi@gmail.com', '966565757673', '25d55ad283aa400af464c76d713c07ad', 'medina', 1, '2024-11-13 02:14:52'),
-- -- (11, 'Amal Abdel Rahman', 'Amal ', 'Abdel_Rahman', 'Amal22@gmail.com', '9665657576725', '25d55ad283aa400af464c76d713c07ad', 'medina', 1, '2024-11-13 02:18:05'),
-- -- (12, 'Rabia_Al-Rashidi', 'Rabia', 'Al-Rashidi', 'Rabia23@gmail.com', '9665657576745', '25d55ad283aa400af464c76d713c07ad', 'medina', 1, '2024-11-13 02:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(15, 7, 'Yorkshire Lamb Patties', 3, 14.00, 'in process', '2024-11-12 22:43:54'),
(16, 7, 'Stuffed Jacket Potatoes', 1, 8.00, NULL, '2024-11-11 18:06:55'),
(17, 7, 'Cheesy Mashed Potato', 1, 5.00, NULL, '2024-11-11 19:13:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
