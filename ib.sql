-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2018 at 02:51 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ib`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `price` int(11) NOT NULL,
  `details` text NOT NULL,
  `brand` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `quantity` varchar(11) NOT NULL,
  `img0` varchar(200) NOT NULL,
  `img1` varchar(250) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `details`, `brand`, `model`, `quantity`, `img0`, `img1`, `created`) VALUES
(45, 'Archer C7', 500, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 450Mbps and 5GHz 1300Mbps connections for1.75Gbps of total available bandwidth\r\nDual USB Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network ', 'Tp-link', 'AC1750', '5', 'img/Archer-C7-01_1482134737983f.jpg', 'img/Archer_C7_EU_3.0_normal_1511831573267n.jpg', '2018-01-21 19:06:06'),
(46, 'AC1900 Wireless Dual Band Gigabit Router', 2500, 'Supports 802.11ac standard-the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 600Mbps and 5GHz 1300Mbps connections for 1.9Gbps of total available bandwidth\r\n3 dual band detachable antennas provide maximum omni-directional wireless coverage and reliability\r\nBeamforming technology delivers highly efficient wireless connection\r\n1GHz dual-core processor ensures no interruption when simultaneously processing multiple wireless or wired tasks\r\nUSB 3.0 + USB 2.0 Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'AC1900', '5', 'img/Archer-C9-03.jpg', 'img/762_normal_4_20160122134149.jpg', '2018-01-21 19:06:06'),
(48, 'AC1200 Wireless Dual Band Router', 1500, 'Supports 802.11ac standard - the next generation of Wi-Fi Simultaneous 2.4GHz 300Mbps and 5GHz 867Mbps connections for 1.2Gbps of total available bandwidth 2 dual band external antennas provide stable wireless connections and optimal coverage USB Port - easily share a printer locally and files & media with networked devices or remotely via FTP server Easy network management at your fingertips with TP-LINK Tether\r\n', 'Tp-link	', 'Archer C50	', '5', 'img/Archer-C50(EU)-3_normal_1512396146003o.jpg', 'img/Archer-C50-01_1492996514367t.jpg', '2018-01-21 19:06:06'),
(49, 'AC750 Wireless Dual Band Router', 5000, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections for 733Mbps of total available bandwidth\r\nStable omnidirectional signal and superior wireless coverage\r\nUSB port - share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'Archer C20i', '5', 'img/Archer-C20i-02.jpg', 'img/Archer-C20i-05.jpg', '2018-01-21 19:06:06'),
(50, 'N750 Wireless Dual Band Gigabit Router', 6000, 'Simultaneous 2.4GHz 300Mbps and 5GHz 450Mbps connections for 750Mbps of total available bandwidth\r\n2*USB Ports - Easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nFull gigabit ports ensure ultimate transfer speeds\r\nAchieves blazing WAN to LAN throughput of over 800Mbps with hardware NAT\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network*', 'Tp-link', 'TL-WDR4300', '5', 'img/TL-WDR4300-04.jpg', 'img/TL-WDR4300-06.jpg', '2018-01-21 19:06:06'),
(52, 'AC750 Wireless Dual Band Gigabit Router', 9000, '1. Supports 802.11ac standard - the next generation of Wi-Fi<br> \n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections<br>\nfor 733Mbps of total available bandwidth 2 detachable <br>\nexternal antennas provide stable omnidirectional signal and<br>\nsuperior wireless coverage <br> \n3. Full gigabit ports ensure ultrafast data transfer speeds<br>\nUSB port - share a printer locally and files & media with <br>\nnetworked devices or remotely via FTP server\n', 'Tp-link	', 'Archer C2	', '10', 'img/Archer_C2_UN_3.0_01_normal_1512115360062w.jpg', 'img/Archer_C2_UN_3.0_04_normal_1512122986948u.jpg', '2018-01-21 19:06:06'),
(53, 'Archer C7', 500, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 450Mbps and 5GHz 1300Mbps connections for1.75Gbps of total available bandwidth\r\nDual USB Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network ', 'Tp-link', 'AC1750', '5', 'img/Archer-C7-01_1482134737983f.jpg', 'img/Archer_C7_EU_3.0_normal_1511831573267n.jpg', '2018-01-21 19:06:06'),
(54, 'AC1900 Wireless Dual Band Gigabit Router', 2500, 'Supports 802.11ac standard-the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 600Mbps and 5GHz 1300Mbps connections for 1.9Gbps of total available bandwidth\r\n3 dual band detachable antennas provide maximum omni-directional wireless coverage and reliability\r\nBeamforming technology delivers highly efficient wireless connection\r\n1GHz dual-core processor ensures no interruption when simultaneously processing multiple wireless or wired tasks\r\nUSB 3.0 + USB 2.0 Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'AC1900', '5', 'img/Archer-C9-03.jpg', 'img/762_normal_4_20160122134149.jpg', '2018-01-21 19:06:06'),
(55, 'AC1200 Wireless Dual Band Router', 1500, 'Supports 802.11ac standard - the next generation of Wi-Fi Simultaneous 2.4GHz 300Mbps and 5GHz 867Mbps connections for 1.2Gbps of total available bandwidth 2 dual band external antennas provide stable wireless connections and optimal coverage USB Port - easily share a printer locally and files & media with networked devices or remotely via FTP server Easy network management at your fingertips with TP-LINK Tether\r\n', 'Tp-link	', 'Archer C50	', '5', 'img/Archer-C50(EU)-3_normal_1512396146003o.jpg', 'img/Archer-C50-01_1492996514367t.jpg', '2018-01-21 19:06:06'),
(56, 'AC750 Wireless Dual Band Router', 5000, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections for 733Mbps of total available bandwidth\r\nStable omnidirectional signal and superior wireless coverage\r\nUSB port - share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'Archer C20i', '5', 'img/Archer-C20i-02.jpg', 'img/Archer-C20i-05.jpg', '2018-01-21 19:06:06'),
(57, 'N750 Wireless Dual Band Gigabit Router', 6000, 'Simultaneous 2.4GHz 300Mbps and 5GHz 450Mbps connections for 750Mbps of total available bandwidth\r\n2*USB Ports - Easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nFull gigabit ports ensure ultimate transfer speeds\r\nAchieves blazing WAN to LAN throughput of over 800Mbps with hardware NAT\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network*', 'Tp-link', 'TL-WDR4300', '5', 'img/TL-WDR4300-04.jpg', 'img/TL-WDR4300-06.jpg', '2018-01-21 19:06:06'),
(58, 'AC750 Wireless Dual Band Gigabit Router', 9000, '1. Supports 802.11ac standard - the next generation of Wi-Fi<br> \n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections<br>\nfor 733Mbps of total available bandwidth 2 detachable <br>\nexternal antennas provide stable omnidirectional signal and<br>\nsuperior wireless coverage <br> \n3. Full gigabit ports ensure ultrafast data transfer speeds<br>\nUSB port - share a printer locally and files & media with <br>\nnetworked devices or remotely via FTP server\n', 'Tp-link	', 'Archer C2	', '10', 'img/Archer_C2_UN_3.0_01_normal_1512115360062w.jpg', 'img/Archer_C2_UN_3.0_04_normal_1512122986948u.jpg', '2018-01-21 19:06:06'),
(59, 'Archer C7', 500, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 450Mbps and 5GHz 1300Mbps connections for1.75Gbps of total available bandwidth\r\nDual USB Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network ', 'Tp-link', 'AC1750', '5', 'img/Archer-C7-01_1482134737983f.jpg', 'img/Archer_C7_EU_3.0_normal_1511831573267n.jpg', '2018-01-21 19:06:06'),
(60, 'AC1900 Wireless Dual Band Gigabit Router', 2500, 'Supports 802.11ac standard-the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 600Mbps and 5GHz 1300Mbps connections for 1.9Gbps of total available bandwidth\r\n3 dual band detachable antennas provide maximum omni-directional wireless coverage and reliability\r\nBeamforming technology delivers highly efficient wireless connection\r\n1GHz dual-core processor ensures no interruption when simultaneously processing multiple wireless or wired tasks\r\nUSB 3.0 + USB 2.0 Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'AC1900', '5', 'img/Archer-C9-03.jpg', 'img/762_normal_4_20160122134149.jpg', '2018-01-21 19:06:06'),
(61, 'AC1200 Wireless Dual Band Router', 1500, 'Supports 802.11ac standard - the next generation of Wi-Fi Simultaneous 2.4GHz 300Mbps and 5GHz 867Mbps connections for 1.2Gbps of total available bandwidth 2 dual band external antennas provide stable wireless connections and optimal coverage USB Port - easily share a printer locally and files & media with networked devices or remotely via FTP server Easy network management at your fingertips with TP-LINK Tether\r\n', 'Tp-link	', 'Archer C50	', '5', 'img/Archer-C50(EU)-3_normal_1512396146003o.jpg', 'img/Archer-C50-01_1492996514367t.jpg', '2018-01-21 19:06:06'),
(62, 'AC750 Wireless Dual Band Router', 5000, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections for 733Mbps of total available bandwidth\r\nStable omnidirectional signal and superior wireless coverage\r\nUSB port - share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'Archer C20i', '5', 'img/Archer-C20i-02.jpg', 'img/Archer-C20i-05.jpg', '2018-01-21 19:06:06'),
(63, 'N750 Wireless Dual Band Gigabit Router', 6000, 'Simultaneous 2.4GHz 300Mbps and 5GHz 450Mbps connections for 750Mbps of total available bandwidth\r\n2*USB Ports - Easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nFull gigabit ports ensure ultimate transfer speeds\r\nAchieves blazing WAN to LAN throughput of over 800Mbps with hardware NAT\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network*', 'Tp-link', 'TL-WDR4300', '5', 'img/TL-WDR4300-04.jpg', 'img/TL-WDR4300-06.jpg', '2018-01-21 19:06:06'),
(64, 'AC750 Wireless Dual Band Gigabit Router', 9000, '1. Supports 802.11ac standard - the next generation of Wi-Fi<br> \n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections<br>\nfor 733Mbps of total available bandwidth 2 detachable <br>\nexternal antennas provide stable omnidirectional signal and<br>\nsuperior wireless coverage <br> \n3. Full gigabit ports ensure ultrafast data transfer speeds<br>\nUSB port - share a printer locally and files & media with <br>\nnetworked devices or remotely via FTP server\n', 'Tp-link	', 'Archer C2	', '10', 'img/Archer_C2_UN_3.0_01_normal_1512115360062w.jpg', 'img/Archer_C2_UN_3.0_04_normal_1512122986948u.jpg', '2018-01-21 19:06:06'),
(65, 'Archer C7', 500, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 450Mbps and 5GHz 1300Mbps connections for1.75Gbps of total available bandwidth\r\nDual USB Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network ', 'Tp-link', 'AC1750', '5', 'img/Archer-C7-01_1482134737983f.jpg', 'img/Archer_C7_EU_3.0_normal_1511831573267n.jpg', '2018-01-21 19:06:06'),
(66, 'AC1900 Wireless Dual Band Gigabit Router', 2500, 'Supports 802.11ac standard-the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 600Mbps and 5GHz 1300Mbps connections for 1.9Gbps of total available bandwidth\r\n3 dual band detachable antennas provide maximum omni-directional wireless coverage and reliability\r\nBeamforming technology delivers highly efficient wireless connection\r\n1GHz dual-core processor ensures no interruption when simultaneously processing multiple wireless or wired tasks\r\nUSB 3.0 + USB 2.0 Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'AC1900', '5', 'img/Archer-C9-03.jpg', 'img/762_normal_4_20160122134149.jpg', '2018-01-21 19:06:06'),
(67, 'AC1200 Wireless Dual Band Router', 1500, 'Supports 802.11ac standard - the next generation of Wi-Fi Simultaneous 2.4GHz 300Mbps and 5GHz 867Mbps connections for 1.2Gbps of total available bandwidth 2 dual band external antennas provide stable wireless connections and optimal coverage USB Port - easily share a printer locally and files & media with networked devices or remotely via FTP server Easy network management at your fingertips with TP-LINK Tether\r\n', 'Tp-link	', 'Archer C50	', '5', 'img/Archer-C50(EU)-3_normal_1512396146003o.jpg', 'img/Archer-C50-01_1492996514367t.jpg', '2018-01-21 19:06:06'),
(68, 'AC750 Wireless Dual Band Router', 5000, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections for 733Mbps of total available bandwidth\r\nStable omnidirectional signal and superior wireless coverage\r\nUSB port - share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'Archer C20i', '5', 'img/Archer-C20i-02.jpg', 'img/Archer-C20i-05.jpg', '2018-01-21 19:06:06'),
(69, 'N750 Wireless Dual Band Gigabit Router', 6000, 'Simultaneous 2.4GHz 300Mbps and 5GHz 450Mbps connections for 750Mbps of total available bandwidth\r\n2*USB Ports - Easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nFull gigabit ports ensure ultimate transfer speeds\r\nAchieves blazing WAN to LAN throughput of over 800Mbps with hardware NAT\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network*', 'Tp-link', 'TL-WDR4300', '5', 'img/TL-WDR4300-04.jpg', 'img/TL-WDR4300-06.jpg', '2018-01-21 19:06:06'),
(70, 'AC750 Wireless Dual Band Gigabit Router', 9000, '1. Supports 802.11ac standard - the next generation of Wi-Fi<br> \n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections<br>\nfor 733Mbps of total available bandwidth 2 detachable <br>\nexternal antennas provide stable omnidirectional signal and<br>\nsuperior wireless coverage <br> \n3. Full gigabit ports ensure ultrafast data transfer speeds<br>\nUSB port - share a printer locally and files & media with <br>\nnetworked devices or remotely via FTP server\n', 'Tp-link	', 'Archer C2	', '10', 'img/Archer_C2_UN_3.0_01_normal_1512115360062w.jpg', 'img/Archer_C2_UN_3.0_04_normal_1512122986948u.jpg', '2018-01-21 19:06:06'),
(71, 'Archer C7', 500, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 450Mbps and 5GHz 1300Mbps connections for1.75Gbps of total available bandwidth\r\nDual USB Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network ', 'Tp-link', 'AC1750', '5', 'img/Archer-C7-01_1482134737983f.jpg', 'img/Archer_C7_EU_3.0_normal_1511831573267n.jpg', '2018-01-21 19:06:06'),
(72, 'AC1900 Wireless Dual Band Gigabit Router', 2500, 'Supports 802.11ac standard-the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 600Mbps and 5GHz 1300Mbps connections for 1.9Gbps of total available bandwidth\r\n3 dual band detachable antennas provide maximum omni-directional wireless coverage and reliability\r\nBeamforming technology delivers highly efficient wireless connection\r\n1GHz dual-core processor ensures no interruption when simultaneously processing multiple wireless or wired tasks\r\nUSB 3.0 + USB 2.0 Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'AC1900', '5', 'img/Archer-C9-03.jpg', 'img/762_normal_4_20160122134149.jpg', '2018-01-21 19:06:06'),
(73, 'AC1200 Wireless Dual Band Router', 1500, 'Supports 802.11ac standard - the next generation of Wi-Fi Simultaneous 2.4GHz 300Mbps and 5GHz 867Mbps connections for 1.2Gbps of total available bandwidth 2 dual band external antennas provide stable wireless connections and optimal coverage USB Port - easily share a printer locally and files & media with networked devices or remotely via FTP server Easy network management at your fingertips with TP-LINK Tether\r\n', 'Tp-link	', 'Archer C50	', '5', 'img/Archer-C50(EU)-3_normal_1512396146003o.jpg', 'img/Archer-C50-01_1492996514367t.jpg', '2018-01-21 19:06:06'),
(74, 'AC750 Wireless Dual Band Router', 5000, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections for 733Mbps of total available bandwidth\r\nStable omnidirectional signal and superior wireless coverage\r\nUSB port - share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'Archer C20i', '5', 'img/Archer-C20i-02.jpg', 'img/Archer-C20i-05.jpg', '2018-01-21 19:06:06'),
(75, 'N750 Wireless Dual Band Gigabit Router', 6000, 'Simultaneous 2.4GHz 300Mbps and 5GHz 450Mbps connections for 750Mbps of total available bandwidth\r\n2*USB Ports - Easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nFull gigabit ports ensure ultimate transfer speeds\r\nAchieves blazing WAN to LAN throughput of over 800Mbps with hardware NAT\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network*', 'Tp-link', 'TL-WDR4300', '5', 'img/TL-WDR4300-04.jpg', 'img/TL-WDR4300-06.jpg', '2018-01-21 19:06:06'),
(76, 'AC750 Wireless Dual Band Gigabit Router', 9000, '1. Supports 802.11ac standard - the next generation of Wi-Fi<br> \n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections<br>\nfor 733Mbps of total available bandwidth 2 detachable <br>\nexternal antennas provide stable omnidirectional signal and<br>\nsuperior wireless coverage <br> \n3. Full gigabit ports ensure ultrafast data transfer speeds<br>\nUSB port - share a printer locally and files & media with <br>\nnetworked devices or remotely via FTP server\n', 'Tp-link	', 'Archer C2	', '10', 'img/Archer_C2_UN_3.0_01_normal_1512115360062w.jpg', 'img/Archer_C2_UN_3.0_04_normal_1512122986948u.jpg', '2018-01-21 19:06:06'),
(77, 'Archer C7', 500, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 450Mbps and 5GHz 1300Mbps connections for1.75Gbps of total available bandwidth\r\nDual USB Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network ', 'Tp-link', 'AC1750', '5', 'img/Archer-C7-01_1482134737983f.jpg', 'img/Archer_C7_EU_3.0_normal_1511831573267n.jpg', '2018-01-21 19:06:06'),
(78, 'AC1900 Wireless Dual Band Gigabit Router', 2500, 'Supports 802.11ac standard-the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 600Mbps and 5GHz 1300Mbps connections for 1.9Gbps of total available bandwidth\r\n3 dual band detachable antennas provide maximum omni-directional wireless coverage and reliability\r\nBeamforming technology delivers highly efficient wireless connection\r\n1GHz dual-core processor ensures no interruption when simultaneously processing multiple wireless or wired tasks\r\nUSB 3.0 + USB 2.0 Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'AC1900', '5', 'img/Archer-C9-03.jpg', 'img/762_normal_4_20160122134149.jpg', '2018-01-21 19:06:06'),
(79, 'AC1200 Wireless Dual Band Router', 1500, 'Supports 802.11ac standard - the next generation of Wi-Fi Simultaneous 2.4GHz 300Mbps and 5GHz 867Mbps connections for 1.2Gbps of total available bandwidth 2 dual band external antennas provide stable wireless connections and optimal coverage USB Port - easily share a printer locally and files & media with networked devices or remotely via FTP server Easy network management at your fingertips with TP-LINK Tether\r\n', 'Tp-link	', 'Archer C50	', '5', 'img/Archer-C50(EU)-3_normal_1512396146003o.jpg', 'img/Archer-C50-01_1492996514367t.jpg', '2018-01-21 19:06:06'),
(80, 'AC750 Wireless Dual Band Router', 5000, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections for 733Mbps of total available bandwidth\r\nStable omnidirectional signal and superior wireless coverage\r\nUSB port - share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'Archer C20i', '5', 'img/Archer-C20i-02.jpg', 'img/Archer-C20i-05.jpg', '2018-01-21 19:06:06'),
(81, 'N750 Wireless Dual Band Gigabit Router', 6000, 'Simultaneous 2.4GHz 300Mbps and 5GHz 450Mbps connections for 750Mbps of total available bandwidth\r\n2*USB Ports - Easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nFull gigabit ports ensure ultimate transfer speeds\r\nAchieves blazing WAN to LAN throughput of over 800Mbps with hardware NAT\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network*', 'Tp-link', 'TL-WDR4300', '5', 'img/TL-WDR4300-04.jpg', 'img/TL-WDR4300-06.jpg', '2018-01-21 19:06:06'),
(82, 'AC750 Wireless Dual Band Gigabit Router', 9000, '1. Supports 802.11ac standard - the next generation of Wi-Fi<br> \n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections<br>\nfor 733Mbps of total available bandwidth 2 detachable <br>\nexternal antennas provide stable omnidirectional signal and<br>\nsuperior wireless coverage <br> \n3. Full gigabit ports ensure ultrafast data transfer speeds<br>\nUSB port - share a printer locally and files & media with <br>\nnetworked devices or remotely via FTP server\n', 'Tp-link	', 'Archer C2	', '10', 'img/Archer_C2_UN_3.0_01_normal_1512115360062w.jpg', 'img/Archer_C2_UN_3.0_04_normal_1512122986948u.jpg', '2018-01-21 19:06:06'),
(83, 'Archer C7', 500, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 450Mbps and 5GHz 1300Mbps connections for1.75Gbps of total available bandwidth\r\nDual USB Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network ', 'Tp-link', 'AC1750', '5', 'img/Archer-C7-01_1482134737983f.jpg', 'img/Archer_C7_EU_3.0_normal_1511831573267n.jpg', '2018-01-21 19:06:06'),
(84, 'AC1900 Wireless Dual Band Gigabit Router', 2500, 'Supports 802.11ac standard-the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 600Mbps and 5GHz 1300Mbps connections for 1.9Gbps of total available bandwidth\r\n3 dual band detachable antennas provide maximum omni-directional wireless coverage and reliability\r\nBeamforming technology delivers highly efficient wireless connection\r\n1GHz dual-core processor ensures no interruption when simultaneously processing multiple wireless or wired tasks\r\nUSB 3.0 + USB 2.0 Ports - easily share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'AC1900', '5', 'img/Archer-C9-03.jpg', 'img/762_normal_4_20160122134149.jpg', '2018-01-21 19:06:06'),
(85, 'AC1200 Wireless Dual Band Router', 1500, 'Supports 802.11ac standard - the next generation of Wi-Fi Simultaneous 2.4GHz 300Mbps and 5GHz 867Mbps connections for 1.2Gbps of total available bandwidth 2 dual band external antennas provide stable wireless connections and optimal coverage USB Port - easily share a printer locally and files & media with networked devices or remotely via FTP server Easy network management at your fingertips with TP-LINK Tether\r\n', 'Tp-link	', 'Archer C50	', '5', 'img/Archer-C50(EU)-3_normal_1512396146003o.jpg', 'img/Archer-C50-01_1492996514367t.jpg', '2018-01-21 19:06:06'),
(86, 'AC750 Wireless Dual Band Router', 5000, 'Supports 802.11ac standard - the next generation of Wi-Fi\r\nSimultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections for 733Mbps of total available bandwidth\r\nStable omnidirectional signal and superior wireless coverage\r\nUSB port - share a printer locally and files & media with networked devices or remotely via FTP server', 'Tp-link', 'Archer C20i', '5', 'img/Archer-C20i-02.jpg', 'img/Archer-C20i-05.jpg', '2018-01-21 19:06:06'),
(87, 'N750 Wireless Dual Band Gigabit Router', 6000, 'Simultaneous 2.4GHz 300Mbps and 5GHz 450Mbps connections for 750Mbps of total available bandwidth\r\n2*USB Ports - Easily share a printer locally and files & media with networked devices or remotely via FTP server\r\nFull gigabit ports ensure ultimate transfer speeds\r\nAchieves blazing WAN to LAN throughput of over 800Mbps with hardware NAT\r\nGuest Network Access provides secure Wi-Fi access for guests sharing your home or office network*', 'Tp-link', 'TL-WDR4300', '5', 'img/TL-WDR4300-04.jpg', 'img/TL-WDR4300-06.jpg', '2018-01-21 19:06:06'),
(88, 'AC750 Wireless Dual Band Gigabit Router', 9000, '1. Supports 802.11ac standard - the next generation of Wi-Fi<br> \n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections<br>\nfor 733Mbps of total available bandwidth 2 detachable <br>\nexternal antennas provide stable omnidirectional signal and<br>\nsuperior wireless coverage <br> \n3. Full gigabit ports ensure ultrafast data transfer speeds<br>\nUSB port - share a printer locally and files & media with <br>\nnetworked devices or remotely via FTP server\n', 'Tp-link	', 'Archer C2	', '10', 'img/Archer_C2_UN_3.0_01_normal_1512115360062w.jpg', 'img/Archer_C2_UN_3.0_04_normal_1512122986948u.jpg', '2018-01-21 19:06:06'),
(89, 'AC750 Wireless Dual Band Gigabit Router', 1500, '1. Supports 802.11ac standard - the next generation of Wi-Fi\r\n2. Simultaneous 2.4GHz 300Mbps and 5GHz 433Mbps connections\r\nfor 733Mbps of total available bandwidth 2 detachable \r\nexternal antennas provide stable omnidirectional signal and\r\nsuperior wireless coverage \r\n3. Full gigabit ports ensure ultrafast data transfer speeds\r\nUSB port - share a printer locally and files & media with \r\nnetworked devices or remotely via FTP server', 'Tp-link	', 'Archer C2	', '10', 'img/5.jpg', 'img/2.jpg', '2018-01-21 19:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(50) NOT NULL,
  `address` text NOT NULL,
  `A_I` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `created`, `product_name`, `price`, `quantity`, `fullname`, `email`, `mobile`, `address`, `A_I`) VALUES
(48, '2018-01-21 19:11:28', 'AC1200 Wireless Dual Band Router', '1500', '1', 'Shohel Kowser', 'alifhamza@ymail.com', 1813905697, '1272 Pretty View Lane', 1),
(52, '2018-01-21 19:11:28', 'AC750 Wireless Dual Band Gigabit Router', '18000', '2', 'Shohel Kowser', 'shohel_kowser@yahoo.com', 1813905697, '1272 Pretty View Lane', 2),
(45, '2018-01-21 19:11:28', 'Archer C7', '500', '1', 'Shohel Kowser', 'alifhamza@ymail.com', 1813905697, '1272 Pretty View Lane', 3),
(45, '2018-01-21 19:11:28', 'Archer C7', '500', '1', 'Shohel Kowser', 'alifhamza@ymail.com', 1813905697, '1272 Pretty View Lane', 4),
(46, '2018-01-21 19:11:28', 'AC1900 Wireless Dual Band Gigabit Router', '2500', '1', 'Shohel Kowser', '', 1813905697, '1272 Pretty View Lane', 5),
(46, '2018-01-21 19:11:28', 'AC1900 Wireless Dual Band Gigabit Router', '2500', '1', '', '', 0, '', 6),
(70, '2018-01-21 19:34:44', 'AC750 Wireless Dual Band Gigabit Router', '9000', '1', 'Shohel Kowser', '', 1813905697, '1272 Pretty View Lane', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`A_I`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `A_I` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
