-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2025 at 11:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Programming Languages', 'testinngq', '2025-07-10 14:07:04', '11-07-2025 08:33:05 PM'),
(2, 'Web Dev', 'web dev', '2025-07-10 14:07:29', '10-07-2025 07:57:02 PM'),
(3, ' Mobile App ', 'mob dev', '2025-07-10 14:07:49', '10-07-2025 07:57:23 PM'),
(11, 'Database', 'test1', '2025-07-12 07:27:33', '12-07-2025 12:57:42 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '2', 1, '2025-07-12 07:46:02', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'Delivered', 's', '2025-07-12 07:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'PYTHON', 'PYTHON INC.', 100, 15, 'TESTING&nbsp;', '717UhSg69OL._UF1000,1000_QL80_.jpg', '810g00EIY8L._UF1000,1000_QL80_.jpg', '71wvDBsPRSL.jpg', 12, 'Out of Stock', '2025-07-10 14:24:33', NULL),
(2, 1, 2, 'Modern javascript', 'Javacript inc.', 700, 15, 'A beginner-friendly, project-based intro to JS.', 'javascrithr.jpg', 'js2_.jpg', 'js3.jpg', 15, 'In Stock', '2025-07-11 23:12:40', NULL),
(3, 1, 3, 'Murach’s Java Programming (6th Edition)', 'Mike Murach & Associates', 600, 15, 'A self?paced, exercise-rich guide ideal for complete beginners and practical learners', 'java3.jpg', 'java2.jpg', 'java1jpg.jpg', 50, 'In Stock', '2025-07-11 23:21:03', NULL),
(4, 1, 4, 'The C++ Programming Language (4th Edition', 'Addison–Wesley', 500, 15, 'Comprehensive reference and tutorial on modern C++, covering C++11 and beyond—written by the language’s creator.', 'c++1.jpg', 'c++2jpg.jpg', 'c++3.jpg', 15, 'In Stock', '2025-07-11 23:33:47', NULL),
(5, 1, 6, 'PHP & MySQL Novice to Ninja (7th Edition)', 'SitePoint', 500, 15, 'Hands?on guide using PHP 8.1 and MySQL to build a CMS from scratch—ideal for practical learners.', 'php1.jpg', 'php2_.jpg', 'php33.jpg', 18, 'In Stock', '2025-07-11 23:37:47', NULL),
(6, 2, 13, 'HTML, CSS & JavaScript Mastery (All?in?One Guide)', 'WebDev Publications', 500, 15, 'An integrated, project-based guide covering HTML, CSS, and JavaScript fundamentals—ideal for frontend learners. Includes chapters on responsive design, DOM manipulation, and modern tooling.', 'Frontend_.jpg', 'Front2_.jpg', 'Front1_.jpg', 50, 'In Stock', '2025-07-11 23:52:25', NULL),
(7, 2, 14, 'Mastering Back-End Development: A Comprehensive Guide', 'Cybellium Ltd. (Kris Hermans)', 600, 15, 'An all-in-one guide for backend developers: covers APIs, databases, auth, scalability, and architecture with practical examples.', 'backend.jpg', 'Backedn2_.jpg', 'backend1.jpg', 15, 'In Stock', '2025-07-11 23:58:47', NULL),
(8, 2, 15, 'The Full Stack Developer: Mastering End?to?End Web Development', 'Chris Northwood', 500, 515, 'A full?stack guide—from frontend basics to backend architecture, APIs, databases, and deployment best practices. Includes hands?on projects and CI/CD workflows.', 'Fullstack1_.jpg', 'Fullstack2_.jpg', 'Fullstack3_.jpg', 50, 'In Stock', '2025-07-12 00:22:23', NULL),
(9, 3, 17, 'Android Programming with Kotlin for Beginners', 'John Horton', 500, 510, 'Learn Android app development from scratch using Kotlin. Covers UI, data, animation, networking, and more through hands?on project-building.', 'Android_.jpg', 'android1.jpg', 'Android2_.jpg', 50, 'In Stock', '2025-07-12 00:31:00', NULL),
(10, 3, 18, 'Flutter for Beginners – Third Edition\"', 'Packt Publishing (Thomas Bailey & Alessandro Biessek)', 200, 210, '&nbsp;step?by?step guide from Hello World to full-fledged cross?platform Flutter apps using Flutter 3.10+ and Dart 3.x. Covers UI, state, animation, testing, and deployment.', 'flutter1.jpg', 'flutterjpg.jpg', 'flutter2jpg.jpg', 0, 'In Stock', '2025-07-12 04:58:14', NULL),
(11, 3, 19, 'React Native in Action', 'Manning Publications (Nader Dabit)', 200, 210, 'A practical guide to building cross?platform mobile apps with React Native, covering UI, navigation, state, REST APIs, animations, and deployment through real?world projects.', 'react1.jpg', 'react2.jpg', 'react3_.jpg', 50, 'In Stock', '2025-07-12 06:45:43', NULL),
(13, 11, 20, 'High Performance MySQL – Optimization, Backups & Replication (4th Ed.)', 'Reilly Media', 200, 210, 'An authoritative, example-rich guide to scaling MySQL', 'mysql1_.jpg', 'mysql2.jpg', 'mysql3_.jpg', 20, 'In Stock', '2025-07-12 08:53:52', NULL),
(14, 11, 21, 'Learning SQL: Generate, Manipulate, and Retrieve Data', 'Reilly Media (Alan Beaulieu)', 200, 250, 'An essential beginner’s guide to SQL: covers SELECT, INSERT, UPDATE, DELETE, JOINs, schema creation, and data manipulation with clear examples across major SQL platforms.', 'sql1.jpg', 'sql2.jpg', 'sql3_.jpg', 50, 'In Stock', '2025-07-12 08:59:21', NULL),
(15, 11, 22, 'Database Design for Mere Mortals, 4th Edition', 'Addison?Wesley Professional (Michael J. Hernandez)', 200, 260, '<div style=\"background-color: rgb(1, 22, 39); line-height: 20px;\"><font color=\"#a7dbf7\" face=\"Fira Code, Consolas, Courier New, monospace, Consolas, Courier New, monospace\"><span style=\"font-size: 15px; white-space: pre;\">A practical, step?by?step guide to relational database design—from modeling and normalization to ensuring data integrity and avoiding common pitfalls. Updated for modern relational DBMS.</span></font></div>', 'data1.jpg', 'data2.jpg', 'data3r.jpg', 40, 'In Stock', '2025-07-12 09:06:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Python', '2025-07-10 14:09:11', NULL),
(2, 1, 'JavaScript', '2025-07-10 14:09:23', NULL),
(3, 1, 'Java', '2025-07-10 14:09:38', NULL),
(4, 1, 'C++', '2025-07-10 14:10:19', NULL),
(6, 1, 'PHP', '2025-07-10 14:11:23', NULL),
(13, 2, 'Frontend Dev', '2025-07-11 23:43:33', '12-07-2025 05:49:51 AM'),
(14, 2, 'Backend Dev', '2025-07-11 23:43:44', '12-07-2025 05:49:37 AM'),
(15, 2, 'Full Stack dev', '2025-07-11 23:44:01', '12-07-2025 05:49:25 AM'),
(17, 3, 'Android (Java/Kotlin)', '2025-07-12 00:27:16', NULL),
(18, 3, 'Flutter', '2025-07-12 00:27:32', NULL),
(19, 3, 'React Native', '2025-07-12 00:27:48', NULL),
(20, 11, 'MySQL', '2025-07-12 07:28:38', NULL),
(21, 11, 'SQL for Beginners', '2025-07-12 07:29:01', NULL),
(22, 11, 'Database Design', '2025-07-12 07:29:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-10 14:28:12', NULL, 0),
(2, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-10 14:28:16', NULL, 0),
(3, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-10 14:28:34', NULL, 1),
(4, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-11 14:01:50', '11-07-2025 07:45:49 PM', 1),
(5, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-11 14:15:55', NULL, 1),
(6, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-11 22:05:04', '12-07-2025 04:14:10 AM', 1),
(7, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-11 22:54:57', '12-07-2025 04:44:08 AM', 1),
(8, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-11 23:14:12', '12-07-2025 10:38:23 AM', 1),
(9, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-12 05:08:30', '12-07-2025 11:35:07 AM', 1),
(10, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-12 06:05:25', NULL, 1),
(11, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-12 06:21:49', '12-07-2025 12:01:07 PM', 1),
(12, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-12 07:36:44', NULL, 1),
(13, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-12 07:48:04', NULL, 1),
(14, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-12 08:14:30', NULL, 1),
(15, 'Full@gmail.com', 0x3a3a3100000000000000000000000000, '2025-07-12 09:00:23', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Full name', 'Full@gmail.com', 123, '202cb962ac59075b964b07152d234b70', 'magsaysay, naguilian isabela\r\nquezon,naguilian,isabela', 'nagulian', 'naguilian', 3302, 'magsaysay, naguilian isabela\r\nquezon,naguilian,isabela', 'nagulian', 'naguilian', 3302, '2025-07-10 14:28:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
