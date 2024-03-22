-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 01:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photographer_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `aid` int(11) NOT NULL,
  `atitle` varchar(255) NOT NULL,
  `adate` varchar(255) NOT NULL,
  `atype` varchar(255) NOT NULL,
  `aimg` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`aid`, `atitle`, `adate`, `atype`, `aimg`, `userId`, `active_record`) VALUES
(533, 'VIP Auto Tires & Service', '2024-03-16 ', 'Gallery', '13_Mar_2024_08_26_16am_schoolLogo.jpg', 'admin', 'no'),
(534, 'VIP Auto Tires & Service', '2024-03-06', 'Event Location', '20_Mar_2024_11_34_16am_event-3.jpg', 'admin', 'Yes'),
(535, 'VIP Auto Tires & Service', '2024-03-23', 'Jabalpur', '20_Mar_2024_01_39_59pm_event-2.jpg.webp', 'admin', 'Yes'),
(536, 'VIP Auto Tires & Service', '2024-03-16', 'Jabalpur', '20_Mar_2024_01_40_15pm_event-1.jpg.webp', 'admin', 'Yes'),
(537, 'VIP Auto Tires & Service', '2024-03-21', 'Local', '20_Mar_2024_04_26_25pm_youtube-2.jpg.webp', 'admin', 'Yes'),
(538, 'VIP Auto Tires & Service', '2024-03-23', '', '22_Mar_2024_06_20_02am_portfolio-1.jpg.webp', 'admin', 'Yes'),
(539, 'VIP Auto Tires & Service', '2024-03-27', '', '22_Mar_2024_12_09_58pm_blog-2.jpg.webp', 'admin', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `aid` int(11) NOT NULL,
  `atitle` varchar(255) NOT NULL,
  `adate` varchar(255) NOT NULL,
  `ades` text NOT NULL,
  `aimg` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`aid`, `atitle`, `adate`, `ades`, `aimg`, `userId`, `active_record`) VALUES
(1, 'What Makes Users Want to Share a Video on Social Media?', '2024-03-15', 'We recently launched a new website for a Vital client and wanted to share some of the                             cool features we were able...', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(2, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', '', 'Yes'),
(3, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(4, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(5, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(6, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(7, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(8, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(9, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(10, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(11, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(12, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(13, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes'),
(14, 'What Makes Users Want to Share a Video on Social Media? ', '', 'We recently launched a new website for a Vital client and wanted to share some of the cool features we were able... ', '22_Mar_2024_11_31_49am_blog-1.jpg', 'admin', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `aid` int(11) NOT NULL,
  `atitle` varchar(255) NOT NULL,
  `adate` varchar(255) NOT NULL,
  `aimg` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`aid`, `atitle`, `adate`, `aimg`, `userId`, `active_record`) VALUES
(1, 'Member One', '2024-03-26', '22_Mar_2024_06_32_03am_team-2.jpg.webp', 'admin', 'Yes'),
(2, 'Member Two', '2024-03-23', '22_Mar_2024_12_15_51pm_team-1.jpg.webp', 'admin', 'Yes'),
(3, 'Member Three', '2024-03-22', '22_Mar_2024_12_16_07pm_team-3.jpg.webp', 'admin', 'Yes'),
(4, 'Member Four', '2024-03-30', '22_Mar_2024_12_16_19pm_team-4.jpg.webp', 'admin', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `img` text NOT NULL,
  `otp` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`, `img`, `otp`, `active_record`) VALUES
(186, 'admin', 'admin', 'admin', '202cb962ac59075b964b07152d234b70', 1, '20_Mar_2024_12_04_15pm_music.png', '', 'Yes'),
(187, 'tmp', 'tmp', 'tmp', 'd9b1d7db4cd6e70935368a1efb10e377', 0, '20_Mar_2024_12_41_07pm_play-default.png.webp', '', 'no'),
(188, 'Tmpe', 'temp', 'abc', '202cb962ac59075b964b07152d234b70', 0, '20_Mar_2024_04_29_34pm_youtube-2.jpg.webp', '', 'no'),
(189, 'abc', 'abc', 'xyz', '202cb962ac59075b964b07152d234b70', 0, '20_Mar_2024_04_42_14pm_music.png.webp', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `log_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL,
  `log_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`log_id`, `user_id`, `username`, `user_role`, `log_time`, `log_date`) VALUES
(40, '186', 'admin', 'Admin', '09:15:20 AM', '12-03-2024'),
(41, '186', 'admin', 'Admin', '09:20:25 AM', '12-03-2024'),
(42, '186', 'admin', 'Admin', '09:23:42 AM', '12-03-2024'),
(43, '186', 'admin', 'Admin', '06:10:18 PM', '12-03-2024'),
(44, '186', 'admin', 'Admin', '06:40:40 PM', '12-03-2024'),
(45, '186', 'admin', 'Admin', '05:13:28 AM', '13-03-2024'),
(46, '186', 'admin', 'Admin', '08:25:24 AM', '13-03-2024'),
(47, '186', 'admin', 'Admin', '08:50:25 AM', '13-03-2024'),
(48, '186', 'admin', 'Admin', '11:19:31 AM', '20-03-2024'),
(49, '187', 'tmp', 'Local', '12:41:18 PM', '20-03-2024'),
(50, '187', 'tmp', 'Local', '12:42:31 PM', '20-03-2024'),
(51, '187', 'tmp', 'Local', '12:43:24 PM', '20-03-2024'),
(52, '187', 'tmp', 'Admin', '12:43:50 PM', '20-03-2024'),
(53, '186', 'admin', 'Admin', '01:39:39 PM', '20-03-2024'),
(54, '186', 'admin', 'Admin', '02:36:35 PM', '20-03-2024'),
(55, '186', 'admin', 'Admin', '04:25:45 PM', '20-03-2024'),
(56, '186', 'admin', 'Admin', '04:28:53 PM', '20-03-2024'),
(57, '188', 'abc', 'Local', '04:29:58 PM', '20-03-2024'),
(58, '186', 'admin', 'Admin', '04:38:43 PM', '20-03-2024'),
(59, '189', 'xyz', 'Local', '04:42:42 PM', '20-03-2024'),
(60, '186', 'admin', 'Admin', '06:13:25 AM', '22-03-2024'),
(61, '186', 'admin', 'Admin', '11:19:11 AM', '22-03-2024'),
(62, '186', 'admin', 'Admin', '11:24:17 AM', '22-03-2024');

-- --------------------------------------------------------

--
-- Table structure for table `youtube`
--

CREATE TABLE `youtube` (
  `aid` int(11) NOT NULL,
  `atitle` varchar(255) NOT NULL,
  `adate` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `active_record` varchar(255) NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube`
--

INSERT INTO `youtube` (`aid`, `atitle`, `adate`, `link`, `img`, `userId`, `active_record`) VALUES
(1, 'Youtube Link Title', '2024-03-13', 'Link', '20_Mar_2024_12_33_31pm_countdown-bg.jpg', 'admin', 'no'),
(2, 'Youtube Link Title', '2024-03-13', 'Link', '20_Mar_2024_12_34_47pm_countdown-bg.jpg', 'admin', 'Yes'),
(3, 'Title Test update', '2024-03-30', 'Link Test update', '20_Mar_2024_02_17_43pm_youtube-3.jpg', 'admin', 'Yes'),
(4, 'Title', '2024-03-29', 'Link', '20_Mar_2024_02_17_59pm_youtube-2.jpg', 'admin', 'Yes'),
(5, 'Title', '2024-03-23', 'Link', '20_Mar_2024_02_18_20pm_youtube-3.jpg', 'admin', 'Yes'),
(6, 'Title', '2024-03-26', 'Link', '20_Mar_2024_02_18_31pm_youtube-1.jpg', 'admin', 'Yes'),
(7, 'Title', '2024-03-22', 'Link', '20_Mar_2024_02_18_45pm_youtube-1.jpg', 'admin', 'Yes'),
(8, 'title', '2024-03-20', 'Youtube link', '20_Mar_2024_04_27_44pm_youtube-1.jpg', 'admin', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `youtube`
--
ALTER TABLE `youtube`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
