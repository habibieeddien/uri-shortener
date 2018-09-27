-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2018 at 04:21 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_log`
--

CREATE TABLE `my_log` (
  `click_id` int(11) NOT NULL,
  `click_time` datetime NOT NULL,
  `shorturl` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `referrer` varchar(200) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` varchar(41) NOT NULL,
  `country_code` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_log`
--

INSERT INTO `my_log` (`click_id`, `click_time`, `shorturl`, `referrer`, `user_agent`, `ip_address`, `country_code`) VALUES
(1, '2018-09-27 01:44:50', 'coba', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '::1', ''),
(2, '2018-09-27 02:15:36', 'coba1', 'http://localhost/uri/admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '::1', ''),
(3, '2018-09-27 02:15:37', 'coba1', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '::1', ''),
(4, '2018-09-27 02:15:42', 'coba1', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '::1', ''),
(5, '2018-09-27 02:16:00', 'coba1', 'direct', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `my_options`
--

CREATE TABLE `my_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_options`
--

INSERT INTO `my_options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'version', '1.7.2'),
(2, 'db_version', '482'),
(3, 'next_id', '1'),
(4, 'core_version_checks', 'O:8:\"stdClass\":4:{s:15:\"failed_attempts\";i:0;s:12:\"last_attempt\";i:1538013048;s:11:\"last_result\";O:8:\"stdClass\":2:{s:6:\"latest\";s:5:\"1.7.2\";s:6:\"zipurl\";s:56:\"https://api.github.com/repos/YOURLS/YOURLS/zipball/1.7.2\";}s:15:\"version_checked\";s:5:\"1.7.2\";}');

-- --------------------------------------------------------

--
-- Table structure for table `my_url`
--

CREATE TABLE `my_url` (
  `keyword` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `url` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `title` text CHARACTER SET utf8,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(41) NOT NULL,
  `clicks` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_url`
--

INSERT INTO `my_url` (`keyword`, `url`, `title`, `timestamp`, `ip`, `clicks`) VALUES
('coba', 'https://twitter.com/sugengtigefa', 'https://twitter.com/sugengtigefa', '2018-09-26 18:44:19', '::1', 1),
('coba1', 'file:///C:/xampp/htdocs/uri/readme.html#Install', 'file:///C:/xampp/htdocs/uri/readme.html#Install', '2018-09-26 19:15:18', '::1', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_log`
--
ALTER TABLE `my_log`
  ADD PRIMARY KEY (`click_id`),
  ADD KEY `shorturl` (`shorturl`);

--
-- Indexes for table `my_options`
--
ALTER TABLE `my_options`
  ADD PRIMARY KEY (`option_id`,`option_name`),
  ADD KEY `option_name` (`option_name`);

--
-- Indexes for table `my_url`
--
ALTER TABLE `my_url`
  ADD PRIMARY KEY (`keyword`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `ip` (`ip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_log`
--
ALTER TABLE `my_log`
  MODIFY `click_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `my_options`
--
ALTER TABLE `my_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
