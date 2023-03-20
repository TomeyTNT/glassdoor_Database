-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 10, 2023 at 09:25 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woodendoor`
--

-- --------------------------------------------------------

--
-- Table structure for table `analyze-a`
--

CREATE TABLE `analyze-a` (
  `request-id` int(11) NOT NULL,
  `ip-address` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL,
  `company-id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `analyze-a`
--

INSERT INTO `analyze-a` (`request-id`, `ip-address`, `phone-number`, `company-id`, `status`) VALUES
(5, 2, 911134009, 7, 'FALSE'),
(3, 6, 914980321, 3, 'TRUE'),
(6, 4, 915556345, 1, 'FALSE'),
(20, 3, 918789001, 15, 'TRUE'),
(2, 8, 918901902, 6, 'FALSE'),
(4, 5, 919233007, 4, 'TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `phone-number` int(11) NOT NULL,
  `ip-address` int(11) NOT NULL,
  `author-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`phone-number`, `ip-address`, `author-id`) VALUES
(912699111, 32, 1),
(917345679, 1, 10),
(918350555, 20, 2),
(918394139, 21, 3),
(918819457, 30, 4),
(918881045, 22, 6),
(937401229, 25, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `com-id` int(11) NOT NULL,
  `COMMENT` varchar(1000) NOT NULL,
  `post-id` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment-reply-user`
--

CREATE TABLE `comment-reply-user` (
  `PHONE_NUMBER` int(11) NOT NULL,
  `IP_ADDress` int(11) NOT NULL,
  `COMMENT-id` int(11) NOT NULL,
  `REPly-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_employer`
--

CREATE TABLE `company_employer` (
  `phone-number` int(11) NOT NULL,
  `ip-address` int(11) NOT NULL,
  `company-id` int(11) NOT NULL,
  `company-name` varchar(100) NOT NULL,
  `Language-program` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_employer`
--

INSERT INTO `company_employer` (`phone-number`, `ip-address`, `company-id`, `company-name`, `Language-program`) VALUES
(915556345, 4, 1, 'Novin', 'Python'),
(912324454, 31, 2, 'AtiNet', 'C++'),
(914980321, 6, 3, 'Shatel', 'PHP'),
(919233007, 5, 4, 'Irancell', 'C#'),
(919201376, 27, 5, 'Snapp', 'ASP.net'),
(918901902, 8, 6, 'Digikala', 'Python'),
(911134009, 2, 7, 'faradars', 'DBMS'),
(918789001, 3, 15, 'Techit', 'network+');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `phone-n` int(11) NOT NULL,
  `ip-add` int(11) NOT NULL,
  `skill` varchar(200) NOT NULL,
  `job-his` tinyint(2) NOT NULL,
  `expected-salary` int(100) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`phone-n`, `ip-add`, `skill`, `job-his`, `expected-salary`, `location`) VALUES
(911345678, 33, 'PHP', 36, 14300000, 'Hamedan'),
(912222093, 35, 'C#', 48, 14300000, 'Mashhad'),
(912699111, 32, 'network+', 60, 16000000, 'San Feransisco'),
(915689940, 26, 'network+', 72, 13800000, 'San Feransisco'),
(917345679, 1, 'network+', 48, 13500000, 'San Feransisco'),
(918350555, 20, 'database', 24, 20000000, 'New York'),
(937401229, 25, 'Data mining', 60, 15400000, 'Hamedan'),
(942512222, 23, 'CISCO', 36, 15000000, 'San Feransisco'),
(992041403, 28, 'objective-c', 12, 14300000, 'Hamedan'),
(993140572, 29, 'objective-c', 12, 15400000, 'Tehran');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `ip-address` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL,
  `post-id` int(11) NOT NULL,
  `like-dislike` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job-ad`
--

CREATE TABLE `job-ad` (
  `id-num` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL,
  `ip-add` int(11) NOT NULL,
  `company-id` int(11) NOT NULL,
  `proposed salary` int(100) NOT NULL,
  `pub-status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job-ad`
--

INSERT INTO `job-ad` (`id-num`, `phone-number`, `ip-add`, `company-id`, `proposed salary`, `pub-status`) VALUES
(1, 918789001, 3, 15, 20000000, 1),
(2, 918901902, 8, 6, 17000000, 1),
(3, 919201376, 27, 5, 10000000, 1),
(4, 912324454, 31, 2, 15000000, 1),
(5, 919233007, 5, 4, 15300000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job-application`
--

CREATE TABLE `job-application` (
  `request-id` int(11) NOT NULL,
  `programming language` varchar(100) NOT NULL,
  `ip-address` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job-application`
--

INSERT INTO `job-application` (`request-id`, `programming language`, `ip-address`, `phone-number`) VALUES
(1, 'C++', 32, 912699111),
(2, 'Python', 1, 917345679),
(3, 'PHP', 33, 911345678),
(4, 'C#', 35, 912222093),
(5, 'DBMS', 20, 918350555),
(6, 'Python', 1, 917345679),
(10, 'Python', 1, 917345679),
(20, 'network+', 26, 915689940);

-- --------------------------------------------------------

--
-- Table structure for table `not-user`
--

CREATE TABLE `not-user` (
  `ip-addreSS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `not-user`
--

INSERT INTO `not-user` (`ip-addreSS`) VALUES
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(36),
(37);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `ip-add` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ip-add`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37);

-- --------------------------------------------------------

--
-- Table structure for table `Post`
--

CREATE TABLE `Post` (
  `post-id` int(11) NOT NULL,
  `post-status` tinyint(1) NOT NULL,
  `ip-address` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL,
  `post-title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Post`
--

INSERT INTO `Post` (`post-id`, `post-status`, `ip-address`, `phone-number`, `post-title`) VALUES
(1, 1, 20, 918350555, 'computers system'),
(2, 0, 21, 918394139, 'VHDL'),
(3, 1, 22, 918881045, 'XNU'),
(4, 0, 25, 937401229, 'star topology'),
(5, 1, 30, 918819457, 'bus topology'),
(6, 0, 32, 912699111, 'hybrid topology'),
(10, 1, 1, 917345679, 'sequential VHDL'),
(11, 1, 1, 917345679, 'concurrency VHDL');

-- --------------------------------------------------------

--
-- Table structure for table `post-user-comment`
--

CREATE TABLE `post-user-comment` (
  `COmment-id` int(11) NOT NULL,
  `POst_id` int(11) NOT NULL,
  `IP-address` int(11) NOT NULL,
  `PHONE-NUMBEr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Reply`
--

CREATE TABLE `Reply` (
  `reply-id` int(11) NOT NULL,
  `post-id` int(11) NOT NULL,
  `comment-id` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL,
  `REPLY` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `See`
--

CREATE TABLE `See` (
  `id-number` int(11) NOT NULL,
  `phone-number` int(11) NOT NULL,
  `ip-address` int(11) NOT NULL,
  `accept-status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `See`
--

INSERT INTO `See` (`id-number`, `phone-number`, `ip-address`, `accept-status`) VALUES
(1, 915689940, 26, 1),
(4, 912222093, 35, 1),
(4, 992041403, 28, 1),
(4, 993140572, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Store`
--

CREATE TABLE `Store` (
  `post-ID` int(11) NOT NULL,
  `IP_ADDress` int(11) NOT NULL,
  `PHOne-number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `phone` int(11) NOT NULL,
  `ip-address` int(11) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` tinytext NOT NULL,
  `lname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`phone`, `ip-address`, `age`, `sex`, `lname`, `fname`) VALUES
(910201994, 7, 39, 'm', 'Modiri', 'Mehran'),
(911134009, 2, 22, 'f', 'Hashemi', 'Sara'),
(911224455, 34, 22, 'm', 'Lotfi', 'Hossein'),
(911345678, 33, 25, 'f', 'Jooya', 'Elham'),
(912222093, 35, 43, 'm', 'Karimi', 'Ali'),
(912324454, 31, 45, 'f', 'Mohammadi', 'Fateme'),
(912699111, 32, 19, 'm', 'Pooya', 'Pedram'),
(914980321, 6, 40, 'm', 'Shoopa', 'Bahram'),
(915556345, 4, 45, 'm', 'Sadeghi', 'Mohammad'),
(915689940, 26, 30, 'f', 'Ganji', 'Mona'),
(917345679, 1, 26, 'f', 'Bidy', 'Nahid'),
(918350555, 20, 20, 'm', 'Akbari', 'Ali'),
(918394139, 21, 18, 'm', 'Motamedi', 'Mohammad'),
(918789001, 3, 28, 'm', 'Rezvan', 'Ali'),
(918814493, 24, 21, 'm', 'Feyzi', 'Reza'),
(918819457, 30, 21, 'm', 'Rastande', 'Javad'),
(918881045, 22, 20, 'm', 'Gharaei', 'Mohammad Hossein'),
(918901902, 8, 43, 'f', 'Torabi', 'Zahra'),
(919201376, 27, 40, 'm', 'Ranjbaran', 'Amin'),
(919233007, 5, 43, 'm', 'Moradi', 'Reza'),
(937401229, 25, 19, 'm', 'Shahi', 'Akbar'),
(937412566, 25, 23, 'm', 'Rostami', 'Sadegh'),
(942512222, 23, 25, 'f', 'Falah', 'Zahra'),
(992041403, 28, 23, 'm', 'Ranjbaran', 'Matin'),
(993140572, 29, 25, 'm', 'Gholami', 'Mobin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analyze-a`
--
ALTER TABLE `analyze-a`
  ADD PRIMARY KEY (`phone-number`,`company-id`,`ip-address`,`request-id`),
  ADD KEY `ip-address` (`ip-address`),
  ADD KEY `analyze-a-ereq121` (`request-id`),
  ADD KEY `analyze-a-id` (`company-id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`phone-number`,`ip-address`),
  ADD KEY `ip-address` (`ip-address`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`com-id`,`post-id`,`phone-number`),
  ADD KEY `phone-number` (`phone-number`),
  ADD KEY `post-id` (`post-id`);

--
-- Indexes for table `comment-reply-user`
--
ALTER TABLE `comment-reply-user`
  ADD PRIMARY KEY (`REPly-id`),
  ADD KEY `comment-reply-user-ip-add` (`IP_ADDress`),
  ADD KEY `comment-reply-user-phone-number` (`PHONE_NUMBER`),
  ADD KEY `comment-reply-user-commentid` (`COMMENT-id`);

--
-- Indexes for table `company_employer`
--
ALTER TABLE `company_employer`
  ADD PRIMARY KEY (`company-id`,`ip-address`,`phone-number`),
  ADD KEY `ip-address` (`ip-address`),
  ADD KEY `phone-number` (`phone-number`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`phone-n`,`ip-add`),
  ADD KEY `ip-add` (`ip-add`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`ip-address`,`phone-number`,`post-id`),
  ADD KEY `phone-number` (`phone-number`),
  ADD KEY `post-id` (`post-id`);

--
-- Indexes for table `job-ad`
--
ALTER TABLE `job-ad`
  ADD PRIMARY KEY (`id-num`),
  ADD KEY `phone-number` (`phone-number`),
  ADD KEY `ip-add` (`ip-add`),
  ADD KEY `job-ad-com-id` (`company-id`);

--
-- Indexes for table `job-application`
--
ALTER TABLE `job-application`
  ADD PRIMARY KEY (`request-id`),
  ADD KEY `ip-address` (`ip-address`),
  ADD KEY `phone-number` (`phone-number`);

--
-- Indexes for table `not-user`
--
ALTER TABLE `not-user`
  ADD PRIMARY KEY (`ip-addreSS`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ip-add`);

--
-- Indexes for table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`post-id`),
  ADD KEY `ip-address` (`ip-address`),
  ADD KEY `phone-number` (`phone-number`);

--
-- Indexes for table `post-user-comment`
--
ALTER TABLE `post-user-comment`
  ADD PRIMARY KEY (`COmment-id`),
  ADD KEY `post-user-comment-post-id1` (`POst_id`),
  ADD KEY `post-user-comment-ip-add` (`IP-address`),
  ADD KEY `post-user-comment-phone` (`PHONE-NUMBEr`);

--
-- Indexes for table `Reply`
--
ALTER TABLE `Reply`
  ADD PRIMARY KEY (`reply-id`,`post-id`,`comment-id`,`phone-number`),
  ADD KEY `comment-id` (`comment-id`),
  ADD KEY `phone-number` (`phone-number`),
  ADD KEY `post-id` (`post-id`);

--
-- Indexes for table `See`
--
ALTER TABLE `See`
  ADD PRIMARY KEY (`id-number`,`phone-number`,`ip-address`),
  ADD KEY `phone-number` (`phone-number`),
  ADD KEY `ip-address` (`ip-address`);

--
-- Indexes for table `Store`
--
ALTER TABLE `Store`
  ADD PRIMARY KEY (`post-ID`),
  ADD KEY `IP_ADDress` (`IP_ADDress`),
  ADD KEY `PHOne-number` (`PHOne-number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`phone`,`ip-address`) USING BTREE,
  ADD KEY `ip-address` (`ip-address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job-application`
--
ALTER TABLE `job-application`
  MODIFY `request-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `ip-add` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `Post`
--
ALTER TABLE `Post`
  MODIFY `post-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Reply`
--
ALTER TABLE `Reply`
  MODIFY `reply-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analyze-a`
--
ALTER TABLE `analyze-a`
  ADD CONSTRAINT `analyze-a-ereq121` FOREIGN KEY (`request-id`) REFERENCES `job-application` (`request-id`),
  ADD CONSTRAINT `analyze-a-id` FOREIGN KEY (`company-id`) REFERENCES `company_employer` (`company-id`),
  ADD CONSTRAINT `analyze-a-phone` FOREIGN KEY (`phone-number`) REFERENCES `company_employer` (`phone-number`),
  ADD CONSTRAINT `analyze-a_ibfk_1` FOREIGN KEY (`ip-address`) REFERENCES `company_employer` (`ip-address`);

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`ip-address`) REFERENCES `user` (`ip-address`),
  ADD CONSTRAINT `author_ibfk_2` FOREIGN KEY (`phone-number`) REFERENCES `user` (`phone`);

--
-- Constraints for table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`phone-number`) REFERENCES `user` (`phone`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post-id`) REFERENCES `Post` (`post-id`);

--
-- Constraints for table `comment-reply-user`
--
ALTER TABLE `comment-reply-user`
  ADD CONSTRAINT `comment-reply-user-commentid` FOREIGN KEY (`COMMENT-id`) REFERENCES `Comment` (`com-id`),
  ADD CONSTRAINT `comment-reply-user-ip-add` FOREIGN KEY (`IP_ADDress`) REFERENCES `user` (`ip-address`),
  ADD CONSTRAINT `comment-reply-user-phone-number` FOREIGN KEY (`PHONE_NUMBER`) REFERENCES `user` (`phone`),
  ADD CONSTRAINT `comment-reply-user_ibfk_1` FOREIGN KEY (`REPly-id`) REFERENCES `Reply` (`reply-id`);

--
-- Constraints for table `company_employer`
--
ALTER TABLE `company_employer`
  ADD CONSTRAINT `company_employer_ibfk_1` FOREIGN KEY (`ip-address`) REFERENCES `user` (`ip-address`),
  ADD CONSTRAINT `company_employer_ibfk_2` FOREIGN KEY (`phone-number`) REFERENCES `user` (`phone`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`phone-n`) REFERENCES `user` (`phone`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`ip-add`) REFERENCES `user` (`ip-address`);

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`ip-address`) REFERENCES `user` (`ip-address`),
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`phone-number`) REFERENCES `user` (`phone`),
  ADD CONSTRAINT `favorite_ibfk_3` FOREIGN KEY (`post-id`) REFERENCES `Post` (`post-id`);

--
-- Constraints for table `job-ad`
--
ALTER TABLE `job-ad`
  ADD CONSTRAINT `job-ad-com-id` FOREIGN KEY (`company-id`) REFERENCES `company_employer` (`company-id`),
  ADD CONSTRAINT `job-ad-ipadd` FOREIGN KEY (`ip-add`) REFERENCES `company_employer` (`ip-address`),
  ADD CONSTRAINT `job-ad_ibfk_1` FOREIGN KEY (`phone-number`) REFERENCES `company_employer` (`phone-number`);

--
-- Constraints for table `job-application`
--
ALTER TABLE `job-application`
  ADD CONSTRAINT `job-application-phon-3` FOREIGN KEY (`phone-number`) REFERENCES `employee` (`phone-n`),
  ADD CONSTRAINT `job-application_ibfk_1` FOREIGN KEY (`ip-address`) REFERENCES `employee` (`ip-add`);

--
-- Constraints for table `not-user`
--
ALTER TABLE `not-user`
  ADD CONSTRAINT `not-user_ibfk_1` FOREIGN KEY (`ip-addreSS`) REFERENCES `person` (`ip-add`);

--
-- Constraints for table `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`ip-address`) REFERENCES `author` (`ip-address`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`phone-number`) REFERENCES `author` (`phone-number`);

--
-- Constraints for table `post-user-comment`
--
ALTER TABLE `post-user-comment`
  ADD CONSTRAINT `post-user-comment-ip-add` FOREIGN KEY (`IP-address`) REFERENCES `user` (`ip-address`),
  ADD CONSTRAINT `post-user-comment-phone` FOREIGN KEY (`PHONE-NUMBEr`) REFERENCES `user` (`phone`),
  ADD CONSTRAINT `post-user-comment-post-id1` FOREIGN KEY (`POst_id`) REFERENCES `Post` (`post-id`),
  ADD CONSTRAINT `post-user-comment_ibfk_1` FOREIGN KEY (`COmment-id`) REFERENCES `Comment` (`com-id`);

--
-- Constraints for table `Reply`
--
ALTER TABLE `Reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`comment-id`) REFERENCES `Comment` (`com-id`),
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`phone-number`) REFERENCES `user` (`phone`),
  ADD CONSTRAINT `reply_ibfk_3` FOREIGN KEY (`post-id`) REFERENCES `Comment` (`post-id`);

--
-- Constraints for table `See`
--
ALTER TABLE `See`
  ADD CONSTRAINT `see_ibfk_1` FOREIGN KEY (`phone-number`) REFERENCES `employee` (`phone-n`),
  ADD CONSTRAINT `see_ibfk_2` FOREIGN KEY (`ip-address`) REFERENCES `employee` (`ip-add`),
  ADD CONSTRAINT `see_ibfk_3` FOREIGN KEY (`id-number`) REFERENCES `job-ad` (`id-num`);

--
-- Constraints for table `Store`
--
ALTER TABLE `Store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`post-ID`) REFERENCES `Post` (`post-id`),
  ADD CONSTRAINT `store_ibfk_2` FOREIGN KEY (`IP_ADDress`) REFERENCES `user` (`ip-address`),
  ADD CONSTRAINT `store_ibfk_3` FOREIGN KEY (`PHOne-number`) REFERENCES `user` (`phone`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ip-address`) REFERENCES `person` (`ip-add`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
