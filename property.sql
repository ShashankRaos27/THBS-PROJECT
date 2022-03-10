-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 01:39 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(50) NOT NULL,
  `USER_NAME` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ACTIVE` bit(1) DEFAULT b'1',
  `ENCRYTED_PASSWORD` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `USER_ROLE` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `USER_NAME`, `ACTIVE`, `ENCRYTED_PASSWORD`, `USER_ROLE`) VALUES
(1, 'admin', b'1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 'ROLE_EMPLOYEE'),
(2, 'seller', b'1', '$2a$10$hHZJOVZClpz2Y4NZ28jIx.Ll898Dubz5EAeUx8Slu57OqGVlRjmHK', 'ROLE_MANAGER'),
(3, 'fdg', b'1', '$2a$10$5kVdcGDWU0eiltfDqlbW4.Px.NSuo4rPwhxr3/hx1aJEqxQCRYKjm', 'ROLE_MANAGER'),
(4, 'lkkjjhh', b'1', '$2a$10$bEtDOD925qqypBTuypVR8ODPw7zvGScvmpeHGp9/fuX19.4zyPrtq', 'ROLE_MANAGER'),
(5, 'Ravi', b'1', '$2a$10$KiLthDW.gA55hgDihxaJlubaTi3x4GEt80nlP9EpBc48.ABVxMAay', 'ROLE_MANAGER'),
(6, 'Ravi11', b'1', '$2a$10$1s2cIU83PXnVc2MCeskMx.IMiwFlaJu/F.VSvwA30SlOH4AVogmmy', 'ROLE_MANAGER'),
(7, 'testfinal', b'1', '$2a$10$FDHc8KSJ/mg0.rzPPpAR0eJWe2PtGn/rcuVLxQxLJy5/.FrhXugjq', 'ROLE_MANAGER'),
(8, 'priya', b'1', '$2a$10$tTyE3TnPjZZdj/GEzHOYPuGO/8dQNbcDlJ1FKO8JP1dRr7hnvMrW2', 'ROLE_MANAGER'),
(9, 'test456', b'1', '$2a$10$CDezv7z3FvV6eka3bYoZFe1tZBQqmF4iDHxGQtb2gYxDdOogALuNG', 'ROLE_MANAGER'),
(10, 'shwetha', b'1', '$2a$10$D9H8mwPumZkSpbpbu7EWNOjH.KYhMJyh5RknytzB/lPzjcXaYJf0y', 'ROLE_MANAGER');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `AMOUNT` double NOT NULL,
  `CUSTOMER_ADDRESS` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CUSTOMER_EMAIL` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `CUSTOMER_NAME` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CUSTOMER_PHONE` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `ORDER_DATE` datetime NOT NULL,
  `ORDER_NUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `AMOUNT`, `CUSTOMER_ADDRESS`, `CUSTOMER_EMAIL`, `CUSTOMER_NAME`, `CUSTOMER_PHONE`, `ORDER_DATE`, `ORDER_NUM`) VALUES
('a4188112-0794-4439-bcaf-81ce22ad8b70', 20000, 'test', 'test@test.com', 'Test', '9164444625', '2022-02-25 17:55:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `ID` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `AMOUNT` double NOT NULL,
  `PRICE` double NOT NULL,
  `QUANITY` int(11) NOT NULL,
  `ORDER_ID` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `PRODUCT_ID` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`ID`, `AMOUNT`, `PRICE`, `QUANITY`, `ORDER_ID`, `PRODUCT_ID`) VALUES
('7684448f-9f9c-44bf-8e4e-f66f19ac5433', 20000, 20000, 1, 'a4188112-0794-4439-bcaf-81ce22ad8b70', '86203812');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `code` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `image` longtext NOT NULL,
  `image1` longtext NOT NULL,
  `image2` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`code`, `create_date`, `image`, `image1`, `image2`, `name`, `price`) VALUES
('862038', '2022-02-25 05:47:36', '$2a$10$BOcZhY73tgXUJyBcisdiF.oC3xbZPOP4lCEgdL3N8BJMOKsIYMwra', 'img/4.png', 'img/6.png', 'Test', 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK2nexgjt86hiehn3dguc3aeari` (`USER_NAME`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ORDER_UK` (`ORDER_NUM`),
  ADD UNIQUE KEY `UK8n31uf3gf4m7igyc5r8cc56q4` (`ORDER_NUM`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ORDER_DETAIL_ORD_FK` (`ORDER_ID`),
  ADD KEY `ORDER_DETAIL_PROD_FK` (`PRODUCT_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
