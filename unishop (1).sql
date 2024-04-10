-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Feb 14, 2024 at 08:34 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `firstname`, `lastname`, `email`, `phonenumber`, `category`, `status`, `password`) VALUES
(50, 'Mark', 'Muthomi ', 'mark@gmail.com', '0743278611', 'vendor', 'active', '$2y$10$IUxYkJ1.HhFd.MBVJ7buIO9KKflPoPla.UTT/TzgBwca8F3V4.D4q'),
(51, 'Emily', 'Mukerira', 'emily@gmail.com', '0743278611', 'customer', 'active', '$2y$10$h0eurIaVfPCHzUWArm2bC.F4FLFDt40yMrvd9DPI3uqqTE3bWiBEC'),
(54, 'Emmanuel', 'Muthomi', 'muthomi804@gmail.com', '0705754097', 'customer', 'active', '$2y$10$KIwosfXQrRMyh2WkVF6Sw.Wt4JC4YPiineBcEhg1tRGXWrmpRIwIq'),
(55, 'Shaul', 'Ratemo', 'gameriot55@gmail.com', '0797816820', 'vendor', 'active', '$2y$10$gKM1YWgbA/tVmnPF5KJ3pO.I0iXVwAY0OS4.T99mLDAsSE0L4fdIS'),
(56, 'Scott', 'Njau', 'scott@gmail.com', '0729326633', 'customer', 'active', '$2y$10$MmL2z0MincKm7SuSddDVsOV1W/sHw5/iI0NMaORabf8TqmRdqdLFq'),
(57, 'Bill', 'Humphrey', 'bill@gmail.com', '0724567980', 'vendor', 'active', '$2y$10$X9oKX4YRu.zEXfExzZVt2.YX1n0fUaE.IuvFVkY5FvZTH791864iK'),
(58, 'Missy', 'Makena', 'missy@gmail.com', '0789655673', 'vendor', 'active', '$2y$10$scfrXST6q93FZdGwtF96keDK.v0J4qM0o3a.yHW2Coe3mgO7deyLC');

-- --------------------------------------------------------

--
-- Table structure for table `new_business`
--

CREATE TABLE `new_business` (
  `business_id` int(225) NOT NULL,
  `regnumber` varchar(255) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `bcategory` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_business`
--

INSERT INTO `new_business` (`business_id`, `regnumber`, `bname`, `bcategory`, `description`, `email`, `created`) VALUES
(21, 'BSSEC01/1550/2022', 'Practice Work', 'product', 'This is a test input to see if the system is working well.Hope to see you soon', 'mark@gmail.com', '2023-11-18 17:31:23'),
(22, 'BSSEC01/1560/2022', 'Fifa Gaming Zone', 'service', 'Level up your excitement at our gaming paradise! Immerse yourself in a world of thrill and competition. From cutting-edge consoles to classic favorites, every game enthusiast finds their haven here. Join the fun, fuel the adrenaline, and redefine entertainment at Fifa Gaming Zone where the game never ends!', 'gameriot55@gmail.com', '2023-11-21 20:04:05'),
(23, 'BSSEC01/1234/2022', 'Shoes Mark Enterprise', 'product', 'Step into style with Shoes Mark Enterprise! Discover the perfect pair to elevate every stride. From chic elegance to sporty comfort, our collection caters to every taste. Embrace quality, craftsmanship, and the confidence of walking in trendsetting footwear. Find your signature style at Shoes Mark Enterprise—where every step speaks volumes.', 'bill@gmail.com', '2023-11-21 20:13:40'),
(24, 'BSSEC01/1450/2022', 'Glory shop', 'service', 'Indulge in Radiance. Step into our oasis of beauty. Experience the artistry of transformation in our sanctuary. From luxurious treatments to personalized care, let us craft the elegance you deserve. Unveil your inner glow at Glory shop—where beauty meets serenity.', 'missy@gmail.com', '2023-11-21 20:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `merchantRequestID` varchar(254) NOT NULL,
  `checkoutRequestID` varchar(254) NOT NULL,
  `resultCode` varchar(254) NOT NULL,
  `resultDesc` varchar(254) NOT NULL,
  `amount` varchar(11) NOT NULL,
  `mpesaReceiptNumber` varchar(254) NOT NULL,
  `transactionDate` varchar(254) NOT NULL,
  `phoneNumber` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `merchantRequestID`, `checkoutRequestID`, `resultCode`, `resultDesc`, `amount`, `mpesaReceiptNumber`, `transactionDate`, `phoneNumber`) VALUES
(33, '73207-5138861-1', 'ws_CO_190420210211223885', '0', 'The service request is processed successfully.', '1', 'PDJ4Z0VD5A', '20210419021147', '254700711233'),
(34, '106626-297109-1', 'ws_CO_190420210213152994', '0', 'The service request is processed successfully.', '1', 'PDJ9Z0VBB1', '20210419021329', '254700711233'),
(35, '3118-27715562-1', 'ws_CO_190420210240121533', '0', 'The service request is processed successfully.', '1', 'PDJ5Z0WQ07', '20210419024025', '254700711233'),
(0, '22250-15592488-1', 'ws_CO_070520211722413639', '0', 'The service request is processed successfully.', '1', 'PE73OJNTHB', '20210507172318', '254700711233'),
(0, '14371-18050755-1', 'ws_CO_070520211755088373', '0', 'The service request is processed successfully.', '1', 'PE72OLRHYE', '20210507175536', '254700711233'),
(0, '31786-22416694-1', 'ws_CO_22112023011312094722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666'),
(0, '31763-22439789-1', 'ws_CO_22112023013649293722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666'),
(0, '12623-16825633-1', 'ws_CO_22112023013731950722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666'),
(0, '9455-46186705-1', 'ws_CO_22112023014603122722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666'),
(0, '82181-121410831-1', 'ws_CO_22112023014700324722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666'),
(0, '98213-118608626-1', 'ws_CO_22112023014736235722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666'),
(0, '93951-51900773-1', 'ws_CO_22112023014947965722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666'),
(0, '38706-123247403-1', 'ws_CO_22112023015325489722527666', 'example_result_code', 'example_result_desc', '', '', 'example_transaction_date', '254722527666');

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `subtotal` float NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_cart`
--

INSERT INTO `product_cart` (`cart_id`, `customer_id`, `product_id`, `quantity`, `price`, `subtotal`, `date_added`) VALUES
(11, 54, 14, 1, 2400, 2400, '2023-11-21 22:15:49'),
(14, 51, 16, 1, 3500, 3500, '2023-11-22 11:36:01'),
(15, 51, 15, 1, 250, 250, '2023-11-29 09:42:56'),
(16, 51, 19, 1, 120, 120, '2023-11-29 09:43:14'),
(17, 50, 18, 6, 4500, 27000, '2024-01-16 11:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `product_id` int(11) NOT NULL,
  `vendor_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(15) NOT NULL,
  `product_price` float NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_status` text NOT NULL,
  `first_image_name` varchar(255) DEFAULT NULL,
  `second_image_name` varchar(255) NOT NULL,
  `third_image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`product_id`, `vendor_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_status`, `first_image_name`, `second_image_name`, `third_image_name`) VALUES
(14, 50, 'Nike Air Max 80 Shoes', 'Shoes', 2400, 'Buy these high quality Nike Air Max 90 shoes in Kenya at affordable price.\r\nClassic design that has stood the test of time.\r\nHave a visible air cushioning in the heel for comfort.\r\nDurable leather and mesh construction for long-lasting wear.', 'In stock', '655b8c83175274.25630513.jpeg', '655b9bd81624a4.00398126.jpeg', '655b9b9bcc9075.60753945.jpeg'),
(15, 50, 'Layered Necklase', 'Jewellery', 250, '\"Enhance your elegance with our exquisite Layered Necklace collection! Elevate every outfit effortlessly with these delicately crafted layers, designed to accentuate your style. Embrace sophistication and grace with our Layered Necklaces today!\"', 'In stock', '655cdce6c99c70.96033837.jpeg', '655cdce6c99d15.50525112.jpeg', '655cdce6c99d29.68597859.jpg'),
(16, 55, 'Yeezy 450 dark slate', 'Shoes', 2500, 'Introducing Yeezy 450 Dark Slate - the epitome of modern style and comfort. Elevate your fashion game with this sleek, innovative design. Its futuristic silhouette and unparalleled comfort redefine sneaker culture. Join the trendsetters, step into Yeezy 4', 'In stock', '655ce99a918164.49654192.jpg', '655ce99a9181e2.57464200.jpeg', '655ce99a918201.47896868.jpeg'),
(17, 55, 'Denim Jacket', 'Clothing', 1500, 'Wrap yourself in timeless style with our Denim Jacket Collection. Effortlessly cool and endlessly versatile, our jackets are crafted for every adventure. From street-smart to chic sophistication, embrace the iconic denim vibe that never goes out of fashio', 'In stock', '655ced5983a5f0.65404321.jpg', '655ced5983a657.07640996.jpg', '655ced5983a661.06895356.jpg'),
(18, 58, 'Dexe Black Hair shampoo', 'Hygiene product', 4500, 'Unlock the secret to luscious black hair with Dexe Black Hair Shampoo! Say hello to vibrant, glossy locks in just minutes. Our advanced formula enriches your hair, offering a natural-looking black hue while nourishing every strand. Embrace confidence and ', 'In stock', '655cf15c98da30.10716648.jpeg', '655cf15c98dac8.87376281.jpeg', '655cf15c98dae5.94552881.jpeg'),
(19, 57, 'Bill Fries', 'Food and Bevera', 120, 'Do you have a taste sensitivity? Savor our golden-crusted fries! Every bite is bursting with flavor—the surface is irresistibly crispy, and the center is deliciously fluffy. With our fries, you can up your snack game. Prepare yourself for a delectable enc', 'In stock', '655cf6ff122242.81642681.jpeg', '655cf6ff1222b9.70194585.jpg', '655cf6ff1222c4.66283768.jpeg'),
(20, 57, 'Cargo pants', 'Clothing', 1000, 'Take advantage of our Cargo Pants assortment to travel in style! With their adaptability, toughness, and simple style, these pants are the ideal travel partner. With lots of pockets and sturdy material, you can be utilitarian without sacrificing fashionab', 'In stock', '655cf9ec4d9dc9.54640396.jpg', '655cf9ec4d9e33.65546926.jpeg', '655cf9ec4d9e45.44813486.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `sales_table`
--

CREATE TABLE `sales_table` (
  `sales_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `transaction_code` varchar(25) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_cart`
--

CREATE TABLE `service_cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_cart`
--

INSERT INTO `service_cart` (`cart_id`, `customer_id`, `service_id`, `price`, `date_added`) VALUES
(4, 51, 5, 1000, '2023-11-21 18:50:32'),
(6, 54, 8, 120, '2023-11-21 23:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `service_table`
--

CREATE TABLE `service_table` (
  `service_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_category` text NOT NULL,
  `service_price` float NOT NULL,
  `service_description` varchar(500) NOT NULL,
  `schedule` varchar(20) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `status` text NOT NULL,
  `first_image_name` varchar(255) NOT NULL,
  `second_image_name` varchar(255) NOT NULL,
  `third_image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_table`
--

INSERT INTO `service_table` (`service_id`, `vendor_id`, `service_name`, `service_category`, `service_price`, `service_description`, `schedule`, `time_start`, `time_end`, `status`, `first_image_name`, `second_image_name`, `third_image_name`) VALUES
(5, 50, 'Beautiful Dynasty ', 'Hair dressing', 1000, 'Indulge in Radiance. Step into our oasis of beauty. Experience the artistry of transformation in our sanctuary. From luxurious treatments to personalized care, let us craft the elegance you deserve. Unveil your inner glow at Beauty Dynasty—where beauty meets serenity.', 'Monday to Friday', '08:07:00', '08:07:00', 'Active', '655bbe4a41d629.96928227.jpeg', '655bbe79523ab0.72390548.jpeg', '655bbe3a60c710.35071632.jpg'),
(6, 50, 'PrintCraft Studios', 'Printing', 100, 'Print perfection awaits! Unleash your creativity with our top-notch printing services. From vibrant posters to sleek business cards, we bring your vision to life in stunning detail. Quality, precision, and your satisfaction – our print journey begins where your imagination thrives!', 'Monday to Friday', '08:00:00', '17:40:00', 'Active', '655cdf4295e446.96767497.jpeg', '655cdf4295e496.28078612.jpg', '655cdf4295e4a6.23503261.jpg'),
(7, 55, 'Gaming Zone', 'Others', 100, 'Level up your excitement at our gaming paradise! Immerse yourself in a world of thrill and competition. From cutting-edge consoles to classic favorites, every game enthusiast finds their haven here. Join the fun, fuel the adrenaline, and redefine entertainment at [Gaming Zone Name]—where the game never ends!', 'Monday to Friday', '09:03:00', '09:03:00', 'Active', '655ce86b5f20d9.82726517.png', '655ce86b5f2131.73322290.jpg', '655ce86b5f2148.74403293.jpg'),
(8, 55, 'My Prints Enterprise ', 'Printing', 120, '\r\nPrint perfection awaits! Unleash your creativity with our top-notch printing services. From vibrant posters to sleek business cards, we bring your vision to life in stunning detail. Quality, precision, and your satisfaction – our print journey begins where your imagination thrives!', 'Monday to Friday', '09:30:00', '09:30:00', 'Active', '655cef6dbba281.25675112.jpeg', '655cef6dbba2e9.67723748.jpeg', '655cef6dbba2f3.52034179.jpeg'),
(9, 58, 'NailSymphony Studio', 'Manicure/Pedicure', 1500, 'Polished Perfection Awaits at GlamTouch Manicures! Treat your fingertips to a world of luxury and precision. Our expert artisans sculpt, paint, and pamper, ensuring your nails steal the spotlight. From classic elegance to bold trends, experience the artistry of flawless nails. Step into GlamTouch Manicures—where beauty meets fingertips.', 'Monday to Friday', '09:30:00', '09:30:00', 'Active', '655cf3890c9d57.31661730.jpeg', '655cf3890c9db1.23586981.jpeg', '655cf3890c9dd3.63818403.jpg'),
(10, 58, 'Elegance Hair Salon', 'Hair dressing', 1500, 'Unveil Your Elegance at Elegance Hair Salon! Step into a realm of beauty where trends meet sophistication. Our skilled stylists sculpt masterpieces tailored to your unique style. From classic cuts to avant-garde transformations, embrace the allure of exquisite hair care. Indulge in luxury, revel in confidence, only at Elegance Hair Salon—where elegance is crafted.', 'Monday to Friday', '09:20:00', '09:20:00', 'Active', '655cf4f43bfe12.82500960.jpeg', '655cf4f43bfec9.28110503.jpeg', '655cf4f43bfed4.31255420.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_table`
--

CREATE TABLE `subscription_table` (
  `subscription_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription_table`
--

INSERT INTO `subscription_table` (`subscription_id`, `customer_id`, `goods_id`, `vendor_id`, `category`) VALUES
(14, 51, 14, 50, 'product'),
(19, 51, 5, 50, 'service'),
(36, 50, 7, 55, 'service'),
(37, 50, 17, 55, 'product');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `new_business`
--
ALTER TABLE `new_business`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales_table`
--
ALTER TABLE `sales_table`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `service_cart`
--
ALTER TABLE `service_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `service_table`
--
ALTER TABLE `service_table`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `subscription_table`
--
ALTER TABLE `subscription_table`
  ADD PRIMARY KEY (`subscription_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `new_business`
--
ALTER TABLE `new_business`
  MODIFY `business_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales_table`
--
ALTER TABLE `sales_table`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_cart`
--
ALTER TABLE `service_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_table`
--
ALTER TABLE `service_table`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscription_table`
--
ALTER TABLE `subscription_table`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
