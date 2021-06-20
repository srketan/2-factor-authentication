-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 12:21 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fine_grained`
--

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `file_name` varchar(45) NOT NULL,
  `request` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `size` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'No',
  `status2` varchar(45) NOT NULL DEFAULT 'No',
  `author` varchar(45) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`file_name`, `request`, `date`, `size`, `status`, `status2`, `author`) VALUES
('cc.txt', 'mgayathrideviece@gmail.com', '2020-02-25 10:36:46', '7', 'key request', 'yes', 'Issued');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_name` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `file` blob NOT NULL,
  `data` blob NOT NULL,
  `skey` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_name`, `size`, `date`, `file`, `data`, `skey`) VALUES
('cc.txt', '7', '2020-02-25 10:34:39', 0x48656c6c6f0d0a, 0x6168773946414f4f3275343d, '5567778');

-- --------------------------------------------------------

--
-- Table structure for table `f_download`
--

CREATE TABLE `f_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(45) NOT NULL,
  `down` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `phoneno` varchar(45) NOT NULL,
  `one_key` varchar(45) DEFAULT NULL,
  `file_name` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `image` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `name`, `password`, `mail`, `phoneno`, `one_key`, `file_name`, `size`, `image`) VALUES
('anup', 'anup', '1234', 'mgayathrideviece@gmail.com', '1234567890', '1695', 'arrows.png', '1756', 0x89504e470d0a1a0a0000000d49484452000000560000003a08060000002a60aed60000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000036669545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e302d633036312036342e3134303934392c20323031302f31322f30372d31303a35373a30312020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d704d4d3a4f726967696e616c446f63756d656e7449443d22786d702e6469643a35433430323745433945384245313131423832464445334138464530444245332220786d704d4d3a446f63756d656e7449443d22786d702e6469643a35333641373145463846434331314531413346324345313931343734423041372220786d704d4d3a496e7374616e636549443d22786d702e6969643a35333641373145453846434331314531413346324345313931343734423041372220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f70204353352e312057696e646f7773223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a3043383334354330434238464531313142434534443531393039374533373737222073745265663a646f63756d656e7449443d22786d702e6469643a3543343032374543394538424531313142383246444533413846453044424533222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3ed626b46c0000030c4944415478daec9bbf8f124114c7d7b9d533102eea85505c0c6049696c95024bd940087f020544ee8f31361474b6869f5710856473da5d4caea1328668acc8a9093f22e610e791b9488c9adb63e7edbe9d79c923bb40f2bef3d96176e73b8369fc0e93e7439ef779de13e75ec539cf0f3cdff13c16e70625add7c487b7783ee579d7f05f7ce2f99ce7374a5a99b8da873e156a085d87422719ad173fa903c3df7120741a54b402d807068da0a273ad15c02688884d10029b303dbea33a0993105893193aa48406abc16ab03a34d880804da7d3b753a954d88b86425da81f38b0994ce64ea7d3c90e06832c365ca80775a13ee8080c58684ca3d1781289446ec662b1bd66b3f918132cd483ba501f7460c0659850e17c32997c2f97cbc79860abd5ea1ba80bc758701936d47c3edfedf7fb5f30c1f67abdb362b178840997051daa5770990a5037e1820e0cb84c15a817013a30e03295a062c265aa41c582cb54848a0197a90a55365ca63254997099ea5065c1651aaa1cb84c43bd1c5ca79623730ab5d56a0516eaffe076bb5dcb095cd8bb55bbec9747a351211e8fefc3f17c3e5f5896d5091ad43f3b52bbddce8642a15dd1feb36432f9d2f51ebb5c2e578662b15aad368f7f4a190a2a958a3d9bcdd63f0fb88a58a6b157bd15da170e87d7bd753a9d2e4aa5922d052cb8438542e108db34f60aeae6bd2497cb391af61c3f1578611a7b0df52a37e82b3dc762fa9a14a16e35f3c2f2352942ddda2b080a5c19939eaddd2dea7065cd245df163a9c295393d776d05811a5cd99e87ab6b5e54e0621849aeafd2fa1d2e963b27655f815fe1625a9ed276c2b8e56b52842a15ecbfe0c2564a6cb85e98f3d2771bfe0d6ebd5e4f6382add56a8fb0cd7994fdb19b70c7e3f1c4b2ac579860a11ed4c55cf170b482b06dc010c01bf863381cceb0c758d8d51d8d466fd8b6fd15a31e2a589542ff6b4683d5607508b0e744b42e286905b01f8988fd4c492b803d2122f6849256006b8bdee0f7de6a53d2bac35f6077c7293c43f3dcf3a9d0673ce794b4ee8837601eff9627cc88aef3dcf781c8f73c5ff37c21a01a94b4fe126000181a497ea469b50c0000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `trustee`
--

CREATE TABLE `trustee` (
  `file_name` varchar(45) NOT NULL,
  `request` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `size` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `status1` varchar(45) NOT NULL DEFAULT 'No',
  `trust` varchar(45) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trustee`
--

INSERT INTO `trustee` (`file_name`, `request`, `date`, `size`, `status`, `status1`, `trust`) VALUES
('cc.txt', 'mgayathrideviece@gmail.com', '2020-02-25 10:36:21', '7', 'Request', 'yes', 'Issued');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`file_name`,`request`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_name`);

--
-- Indexes for table `f_download`
--
ALTER TABLE `f_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`mail`);

--
-- Indexes for table `trustee`
--
ALTER TABLE `trustee`
  ADD PRIMARY KEY (`file_name`,`request`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_download`
--
ALTER TABLE `f_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
