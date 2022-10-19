-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2022 at 09:47 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(200) NOT NULL,
  `brand_tagline` varchar(200) NOT NULL,
  `brand_desc` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_tagline`, `brand_desc`) VALUES
(1, 'ThermoSecurity™ by HouseCom™', 'Protected peace & optimized comfort.', 'HouseCom™ ThermoSecurity™ System is a fully digital, hardwired and wireless (WiFi, Bluetooth) enabled home personal and secure environment control system. All communications with the central system are accessible and controlled through the wall unit, product app. and the secured portal on the parent website. The HouseCom™ ThermoSecurity™ System App. is available on both iOS and Android devices.\r\n\r\nWhether you wish to adjust the temperature of your home from your Android or iPhone watch or access the home security system on your phone to check in on the house occupancy through the remote, portable cameras. You may wish to look for independent room temperatures, smoke and carbon monoxide status or just open windows and unlocked doors for your return home. All of this functionality and more are part of the capabilities of the HouseCom™ ThermoSecurity™ security and environment system.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature`
--

DROP TABLE IF EXISTS `tbl_feature`;
CREATE TABLE IF NOT EXISTS `tbl_feature` (
  `feature_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `feature_title` varchar(50) NOT NULL,
  `feature_img` varchar(200) NOT NULL,
  `feature_text` varchar(200) NOT NULL,
  PRIMARY KEY (`feature_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feature`
--

INSERT INTO `tbl_feature` (`feature_id`, `feature_title`, `feature_img`, `feature_text`) VALUES
(1, 'Compact', 'feather.svg', 'Sleek wireless capsule design which fits almost everywhere.'),
(2, 'Smart', 'light_bulb.svg', 'Controlled with Android and iOS from anywhere using smartphone, tablet or apple watch.'),
(3, 'Advanced', '', 'Updates current weather & time with independent room temperature, humidity and air quality sensing.'),
(4, 'Secure', 'lock.svg', 'Home security check with smart lock and camera system.'),
(5, 'Eco-friendly', 'leaf.svg', 'Saves up energy by controlling heating and cooling levels.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

DROP TABLE IF EXISTS `tbl_media`;
CREATE TABLE IF NOT EXISTS `tbl_media` (
  `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `media_name` varchar(200) NOT NULL,
  `media_type` varchar(200) NOT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`media_id`, `media_name`, `media_type`) VALUES
(1, 'Smart_Thermostat.mp4', 'video'),
(2, 'desktop_mock_up.jpg', 'image'),
(3, 'device_GUI.png', 'image'),
(4, 'lifestyle_mock_up1.jpg', 'image'),
(5, 'lifestyle_mock_up2.jpg', 'image'),
(6, 'phone_mock_up.jpg', 'image'),
(7, 'tablet_mock_up.jpg', 'image'),
(8, 'thermosecure_logo.svg', 'image'),
(9, 'watch_mock_up.jpg', 'image'),
(10, 'ac.svg', 'image'),
(11, 'cart.svg', 'image'),
(12, 'face.svg', 'image'),
(13, 'feather.svg\r\n', 'image'),
(14, 'insta.svg', 'image'),
(15, 'leaf.svg', 'image'),
(16, 'light_bulb.svg', 'image'),
(17, 'lock.svg', 'image'),
(18, 'mini_logo.svg', 'image'),
(19, 'rain_2.svg', 'image'),
(20, 'rain.svg', 'image'),
(21, 'twitter.svg', 'image'),
(22, 'yt.svg', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `product_color` varchar(50) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_color`, `product_price`) VALUES
(1, 'ThermoSecurity™', 'Metallic', '$150'),
(2, 'ThermoSecurity™', 'Black', '$150'),
(3, 'ThermoSecurity™', 'White', '$155'),
(4, 'ThermoSecurity™', 'Rose gold', '$160');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_updates`
--

DROP TABLE IF EXISTS `tbl_updates`;
CREATE TABLE IF NOT EXISTS `tbl_updates` (
  `updates_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `updates_weather` varchar(200) NOT NULL,
  `updates_date` varchar(20) NOT NULL,
  `updates_location` varchar(50) NOT NULL,
  `updates_temp_min` int(4) NOT NULL,
  `updates_temp_max` int(4) NOT NULL,
  `updates_report` varchar(50) NOT NULL,
  `updates_temp_set` int(4) NOT NULL,
  PRIMARY KEY (`updates_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_updates`
--

INSERT INTO `tbl_updates` (`updates_id`, `updates_weather`, `updates_date`, `updates_location`, `updates_temp_min`, `updates_temp_max`, `updates_report`, `updates_temp_set`) VALUES
(1, 'Thunderstorm', '18 October 2022', 'London, Ontario', 4, 15, 'Chances of rain 90%', 25);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
