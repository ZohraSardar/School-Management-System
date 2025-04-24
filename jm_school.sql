-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 07:22 PM
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
-- Database: `jm_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'mina', '1234'),
(2, 'javairia', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `help` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `subject`, `email`, `help`) VALUES
(1, 'javairia', 'remarks', 'javairia@gmail.com', 'i like your website frontend'),
(2, 'mina', 'remarks', '123@gmail.com', 'ur website is nice');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL,
  `course_duration` text COLLATE utf8_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_orignal_price` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_orignal_price`, `stu_id`) VALUES
(1, 'Statistics', 'maths and all formula including mean median mode standard deviation and all important formulas with proofs', 'irum', '../images/courseimgdownload.jpg', '4months', 15000, 20000, 1),
(2, 'flutter', 'A reponsive website through FLUTTER.it will be highly responsive and supported to any os like windows android mac etc', 'abc', '../images/courseimg2.jpg', '4months', 25000, 30000, 21),
(3, 'MERN STACK', 'We will make updated and responsive websites through MERN stack .it includes MONGO DB,EXPRESS ,REAT,NODEJS.', 'MR GIGLLE', '../images/courseimgmern.jpg', '1 year', 58000, 60000, 21),
(4, 'HTML CSS JS STACK', 'this stack includes HTML,CSS ,JS for frontend ,mysql for database and PHP as backend .We will also use some libraries to make our work easy like JQuery and bootstrap', 'MISS ROSE', '../images/courseimghtml,css,js.jpg', '6months', 45000, 50000, 21),
(5, 'Learn Java for android development', 'Java is a multi-platform, object-oriented, and network-centric language. It is among the most used programming language.It is considered as one of the fast, secure, and reliable programming languages preferred by most organizations to build their projects.', 'MR EXPO', '../images/courseimgjava.jpeg', '1 year', 58000, 60000, 0),
(6, 'Learn Python backened', 'Python is a high-level, interpreted, interactive and object-oriented scripting language. Python is designed to be highly readable. It uses English keywords frequently where as other languages use punctuation, and it has fewer syntactical constructions than other languages. Paradigms: Object-oriented programming', 'MR YAR', '../images/courseimgpython.jpg', '3 MONTHS', 19000, 20000, 0),
(7, 'Learn C++ with us', 'C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs. C++ is portable and can be used to develop applications that can be adapted to multiple platforms. Paradigms: Object-oriented programming Designed by: Bjarne Stroustrup', 'Bjarne Stroustrup', '../images/courseimgc++.png', '2 MONTHS', 19000, 20000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(1, 'nice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`) VALUES
(7, 'lesson 2', 'start up', '../lessonvid/lesson2.mp4', 0),
(9, 'lesson 2', 'introduction', '../lessonvid/lesson2.mp4', 4),
(10, 'lesson 1', 'start', '../lessonvid/lesson1.mp4', 4),
(11, 'lesson 1', 'introduction', '../lessonvid/lesson1.mp4', 1),
(12, 'lesson 2', 'chapter 1', '../lessonvid/lesson2.mp4', 1),
(13, 'introduction to programming', 'strat up', '../lessonvid/programming.mp4', 6),
(14, 'typing', '1234', '../lessonvid/programming1.mp4', 6);

-- --------------------------------------------------------

--
-- Table structure for table `my`
--

CREATE TABLE `my` (
  `id` int(11) NOT NULL,
  `stu_email` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `my`
--

INSERT INTO `my` (`id`, `stu_email`, `course_id`) VALUES
(1, 'mina@gmail.com', 2),
(2, 'mina@gmail.com', 3),
(3, 'jiya@gmail.com', 1),
(4, 'mina@gmail.com', 6),
(5, 'jiya@gmail.com', 5),
(6, 'jiya@gmail.com', 5),
(7, 'jiya@gmail.com', 5),
(8, 'jiya@gmail.com', 5),
(9, 'jiya@gmail.com', 5),
(10, 'jiya@gmail.com', 5),
(11, 'jiya@gmail.com', 5),
(12, 'jiya@gmail.com', 5),
(13, 'jiya@gmail.com', 5),
(14, 'jiya@gmail.com', 5),
(15, 'jiya@gmail.com', 5),
(16, 'jiya@gmail.com', 5),
(17, 'jiya@gmail.com', 5),
(18, 'jiya@gmail.com', 5),
(19, 'jiya@gmail.com', 5),
(20, 'jiya@gmail.com', 5),
(21, 'mina@gmail.com', 2),
(22, 'mina@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(1, 'jiya', 'jiya@gmail.com', '12345', 's', '../images/javairia rehman1.jpg'),
(21, 'mina', 'mina@gmail.com', '1234', 'doctor', ''),
(22, 'ayesha', '123@gmail.com', '1234', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `my`
--
ALTER TABLE `my`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `my`
--
ALTER TABLE `my`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
