-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2019 at 09:38 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apace`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `serial number` int(11) NOT NULL,
  `time stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `table name` varchar(255) NOT NULL,
  `query type` varchar(255) NOT NULL,
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`serial number`, `time stamp`, `table name`, `query type`, `query`) VALUES
(1, '2019-07-29 14:14:33', 'xyz', '', 'hello\'\''),
(2, '2019-07-29 14:57:04', 'order details', '', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 108'),
(3, '2019-07-29 15:01:24', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 110'),
(4, '2019-07-29 15:08:31', 'material master', 'delete', 'DELETE FROM `material master` WHERE `material master`.`serial number` = 167'),
(5, '2019-07-29 15:08:50', 'material type master', 'delete', 'DELETE FROM `material type master` WHERE `material type master`.`serial number` = 43'),
(6, '2019-07-29 15:08:52', 'product master', 'delete', 'DELETE FROM `product master` WHERE `product master`.`serial number` = 37'),
(7, '2019-07-29 15:08:56', 'uom master', 'delete', 'DELETE FROM `uom master` WHERE `uom master`.`serial number` = 10'),
(8, '2019-07-29 15:09:30', 'vendor master', 'delete', 'DELETE FROM `vendor master` WHERE `vendor master`.`serial number` = 30'),
(9, '2019-07-29 15:09:34', 'vendor type master', 'delete', 'DELETE FROM `vendor type master` WHERE `vendor type master`.`serial number` = 16'),
(10, '2019-07-29 15:11:00', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 20'),
(11, '2019-07-29 15:13:01', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `date issued` = \'2019-07-23\', `promised delivery date` = \'2019-07-23\', `vendor` = \'Orthofit\', `folder reference` = \'/test\', `product` = \'Singlet-Mens\', `pattern` = \'MSGLT01\', `order code` = \'test order-Singlet-Mens\', `product related instructions` = \'12\', `product notes` = \'23\', `printing details` = \'31\', `printing notes` = \'42\', `flag` = \'1\' WHERE `sub/order master`.`serial number` = 19;'),
(12, '2019-07-29 15:16:50', 'sub/order master', 'insert', 'INSERT INTO `sub/order master` (`order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES (\'\', \'719000\', \'719005\', \'719005-1\', \'2019-07-29\', \'2019-07-29\', \'2019-07-29\', \'Select vendor\', \'\', \'Chase-Mens\', \'M0006\', \'-Chase-Mens\', \'0\', \'\', \'\', \'\', \'\', \'1\')'),
(13, '2019-07-29 15:17:02', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 21'),
(14, '2019-07-29 15:19:57', 'order details', 'delete', '1'),
(15, '2019-07-29 15:19:57', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'1\' WHERE `sub/order master`.`serial number` = 19;'),
(16, '2019-07-29 15:19:57', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'M\', \'1\')'),
(17, '2019-07-29 15:20:38', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'27\' WHERE `sub/order master`.`serial number` = 19;'),
(18, '2019-07-29 15:20:39', 'order details', 'delete', '1'),
(19, '2019-07-29 15:20:39', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'L\', \'14\')'),
(20, '2019-07-29 15:23:14', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'29\' WHERE `sub/order master`.`serial number` = 19;'),
(21, '2019-07-29 15:23:15', 'order details', 'delete', 'DELETE FROM `order details` WHERE `suborder id` = \'719004-2\''),
(22, '2019-07-29 15:23:15', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'L\', \'14\')'),
(23, '2019-07-29 15:23:15', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'M\', \'1\')'),
(24, '2019-07-29 15:23:15', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'S\', \'12\')'),
(25, '2019-07-29 15:23:15', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'XL\', \'2\')'),
(26, '2019-07-29 15:26:43', 'material issue', 'insert', 'INSERT INTO `material issue` (`date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `order id`, `suborder id`, `material id`, `quantity issued`, `quantity returned`, `net usage`, `material code`) VALUES (\'2019-07-29\', \'rhishabh - test\', \'rhishabh - test\', \'ColorCraft-SonaliScreens\', \'ColorCraft-SonaliScreens\', \'ColorCraft-SonaliScreens\', \'719002\', \'719002-1\', \'F18\', \'1\', \'0\', \'1\', \'Fabric - Lycra 100X40-Black-220gsm-60inch-Roll--GVijay\')'),
(27, '2019-07-29 15:26:43', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'17\', `stock value` = \'9350\' WHERE `raw material stock`.`material id` = \'F15\';'),
(28, '2019-07-29 15:26:43', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'34\', `stock value` = \'17000\' WHERE `raw material stock`.`material id` = \'F18\';'),
(29, '2019-07-29 15:26:43', 'material issue', 'insert', 'INSERT INTO `material issue` (`date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `order id`, `suborder id`, `material id`, `quantity issued`, `quantity returned`, `net usage`, `material code`) VALUES (\'2019-07-29\', \'rhishabh - test\', \'rhishabh - test\', \'ColorCraft-SonaliScreens\', \'ColorCraft-SonaliScreens\', \'ColorCraft-SonaliScreens\', \'719002\', \'719002-1\', \'F15\', \'0\', \'1\', \'-1\', \'Fabric - Spandex-Navy-240gsm-60inch-Roll-POS1281-Pashupati\')'),
(30, '2019-07-30 13:50:35', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'test\', \'1234\', \'\')'),
(31, '2019-07-30 13:50:39', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 119'),
(32, '2019-07-30 13:54:34', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'test\', \'1234\', \'\')'),
(33, '2019-07-30 13:54:46', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 120'),
(34, '2019-07-30 13:57:48', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'test\', \'1234\', \'\')'),
(35, '2019-07-30 13:57:52', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 121'),
(36, '2019-07-30 14:03:55', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'test\', \'1234\', \'\')'),
(37, '2019-07-30 14:03:59', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 122'),
(38, '2019-07-30 14:38:26', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'test\', \'\', \'\')'),
(39, '2019-07-30 14:38:31', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 123'),
(40, '2019-07-30 14:39:03', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'test\', \'\', \'\')'),
(41, '2019-07-31 01:07:51', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 124'),
(42, '2019-07-31 01:09:00', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'test\', \'\', \'\')'),
(43, '2019-07-31 01:09:21', 'order details', 'delete', 'DELETE FROM `order details` WHERE `order details`.`serial number` = 125'),
(44, '2019-07-31 01:20:52', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `date issued` = \'2019-07-22\', `promised delivery date` = \'2019-07-22\', `vendor` = \'Pioneer\', `folder reference` = \'qwer\', `product` = \'Raglan-RN-Mens\', `pattern` = \'M0002\', `order code` = \'test 4-Raglan-RN-Mens\', `product related instructions` = \'1234\\\'test\\\'\', `product notes` = \'123\\\'hello\\\'\', `printing details` = \'1234\', `printing notes` = \'1\', `flag` = \'1\' WHERE `sub/order master`.`serial number` = 17;'),
(45, '2019-07-31 01:22:35', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `date issued` = \'2019-07-22\', `promised delivery date` = \'2019-07-22\', `vendor` = \'krishnile\', `folder reference` = \'dffadfasfd\', `product` = \'Tri suit-Womens\', `pattern` = \'WTST01\', `order code` = \'test 4-Tri suit-Womens\', `product related instructions` = \'12\', `product notes` = \'341\', `printing details` = \'56\', `printing notes` = \'78\', `flag` = \'1\' WHERE `sub/order master`.`serial number` = 16;'),
(46, '2019-07-31 01:29:15', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `date issued` = \'2019-07-22\', `promised delivery date` = \'2019-07-22\', `vendor` = \'Local\', `folder reference` = \'/something/something\', `product` = \'Breakaway-Womens\', `pattern` = \'W0004\', `order code` = \'\', `product related instructions` = \'123\', `product notes` = \'456\', `printing details` = \'789\', `printing notes` = \'qwe\', `flag` = \'127\' WHERE `sub/order master`.`serial number` = 11;'),
(47, '2019-07-31 01:30:18', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `date issued` = \'2019-07-22\', `promised delivery date` = \'2019-07-22\', `vendor` = \'Local\', `folder reference` = \'/something/something\', `product` = \'Breakaway-Womens\', `pattern` = \'W0004\', `order code` = \'test 5-Breakaway-Womens\', `product related instructions` = \'123\', `product notes` = \'456\', `printing details` = \'789\', `printing notes` = \'qwe\', `flag` = \'1\' WHERE `sub/order master`.`serial number` = 11;'),
(48, '2019-07-31 01:41:27', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'18\' WHERE `sub/order master`.`serial number` = 9;'),
(49, '2019-07-31 01:41:27', 'order details', 'delete', 'DELETE FROM `order details` WHERE `suborder id` = \'719001-1\''),
(50, '2019-07-31 01:41:27', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719001-1\', \'M\', \'6\')'),
(51, '2019-07-31 01:41:27', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719001-1\', \'S\', \'12\')'),
(52, '2019-07-31 01:42:53', 'order details', 'delete', 'DELETE FROM `order details` WHERE `suborder id` = \'719001-1\''),
(53, '2019-07-31 01:42:53', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'19\' WHERE `sub/order master`.`serial number` = 9;'),
(54, '2019-07-31 01:42:53', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719001-1\', \'M\', \'6\')'),
(55, '2019-07-31 01:42:53', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719001-1\', \'S\', \'12\')'),
(56, '2019-07-31 01:42:53', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719001-1\', \'L\', \'1\')'),
(57, '2019-07-31 01:46:18', 'sub/order master', 'insert', 'INSERT INTO `sub/order master` (`order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES (\'\', \'719000\', \'719005\', \'719005-1\', \'2019-07-31\', \'2019-07-31\', \'2019-07-31\', \'Select vendor\', \'\', \'Transition-Mens\', \'M0011\', \'-Transition-Mens\', \'0\', \'\', \'\', \'\', \'\', \'1\')'),
(58, '2019-07-31 01:46:44', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 22'),
(59, '2019-07-31 01:54:43', 'material issue', 'insert', 'INSERT INTO `material issue` (`date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `order id`, `suborder id`, `material id`, `quantity issued`, `quantity returned`, `net usage`, `material code`) VALUES (\'2019-07-31\', \'rhishabh\', \'rhishabh\', \'Berenis\', \'Berenis\', \'Berenis\', \'719001\', \'719001-1\', \'F12\', \'0\', \'0.9\', \'-0.9\', \'Fabric - Spandex-Black-240gsm-60inch-Roll-POS1281-Pashupati\')'),
(60, '2019-07-31 01:54:43', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'23\', `stock value` = \'12650\' WHERE `raw material stock`.`material id` = \'F12\';'),
(61, '2019-07-31 01:54:43', 'material issue', 'insert', 'INSERT INTO `material issue` (`date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `order id`, `suborder id`, `material id`, `quantity issued`, `quantity returned`, `net usage`, `material code`) VALUES (\'2019-07-31\', \'rhishabh\', \'rhishabh\', \'Berenis\', \'Berenis\', \'Berenis\', \'719001\', \'719001-1\', \'F14\', \'2\', \'0\', \'2\', \'Fabric - Spandex-DarkGrey-240gsm-60inch-Roll-POS1281-Pashupati\')'),
(62, '2019-07-31 01:54:43', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'3\', `stock value` = \'1650\' WHERE `raw material stock`.`material id` = \'F14\';'),
(63, '2019-07-31 01:55:39', 'material issue', 'insert', 'INSERT INTO `material issue` (`date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `order id`, `suborder id`, `material id`, `quantity issued`, `quantity returned`, `net usage`, `material code`) VALUES (\'2019-07-31\', \'rhishabh\', \'rhishabh\', \'Berenis\', \'Berenis\', \'Berenis\', \'719001\', \'719001-1\', \'F1\', \'0\', \'0\', \'0\', \'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal\')'),
(64, '2019-07-31 01:55:39', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'10\', `stock value` = \'2750\' WHERE `raw material stock`.`material id` = \'F1\';'),
(65, '2019-07-31 01:56:02', 'material issue', 'insert', 'INSERT INTO `material issue` (`date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `order id`, `suborder id`, `material id`, `quantity issued`, `quantity returned`, `net usage`, `material code`) VALUES (\'2019-07-31\', \'tommy\', \'tommy\', \'Pashupati\', \'Pashupati\', \'Pashupati\', \'719001\', \'719001-1\', \'F20\', \'1\', \'3\', \'-2\', \'Fabric - Mesh-White-180gsm-72inch-Tube--GVijay\')'),
(66, '2019-07-31 01:56:02', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'13\', `stock value` = \'4680\' WHERE `raw material stock`.`material id` = \'F20\';'),
(67, '2019-07-31 02:01:06', 'uom master', 'delete', 'DELETE FROM `uom master` WHERE `uom master`.`serial number` = 9'),
(68, '2019-07-31 02:01:15', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `date issued` = \'2019-07-23\', `promised delivery date` = \'2019-07-23\', `vendor` = \'Orthofit\', `folder reference` = \'/test\', `product` = \'Singlet-Mens\', `pattern` = \'MSGLT01\', `order code` = \'test order-Singlet-Mens\', `product related instructions` = \'121\', `product notes` = \'23\', `printing details` = \'31\', `printing notes` = \'42\', `flag` = \'1\' WHERE `sub/order master`.`serial number` = 19;'),
(69, '2019-07-31 02:01:25', 'sub/order master', 'insert', 'INSERT INTO `sub/order master` (`order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES (\'\', \'719000\', \'719005\', \'719005-1\', \'2019-07-31\', \'2019-07-31\', \'2019-07-31\', \'Select vendor\', \'\', \'Transition-Mens\', \'M0011\', \'-Transition-Mens\', \'0\', \'\', \'\', \'\', \'\', \'1\')'),
(70, '2019-07-31 02:01:34', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 23'),
(71, '2019-07-31 02:01:48', 'order details', 'delete', 'DELETE FROM `order details` WHERE `suborder id` = \'719004-2\''),
(72, '2019-07-31 02:01:48', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'27\' WHERE `sub/order master`.`serial number` = 19;'),
(73, '2019-07-31 02:01:48', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'L\', \'14\')'),
(74, '2019-07-31 02:01:48', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'M\', \'1\')'),
(75, '2019-07-31 02:01:48', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'S\', \'12\')'),
(76, '2019-07-31 02:02:26', 'material issue', 'insert', 'INSERT INTO `material issue` (`date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `order id`, `suborder id`, `material id`, `quantity issued`, `quantity returned`, `net usage`, `material code`) VALUES (\'2019-07-31\', \'rhishabh\', \'rhishabh\', \'AakashEnt\', \'AakashEnt\', \'AakashEnt\', \'719004\', \'719004-2\', \'F2\', \'0\', \'1\', \'-1\', \'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal\')'),
(77, '2019-07-31 02:02:26', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'70\', `stock value` = \'17990\' WHERE `raw material stock`.`material id` = \'F2\';'),
(78, '2019-07-31 02:06:22', 'material issue', 'insert', 'INSERT INTO `material issue` (`material id`, `material code`, `quantity issued`, `quantity returned`, `net usage`, `date issued`, `material issued by`, `material inward by`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`) VALUES (\'F2\', \'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal\', \'1\', \'0\', \'1\', \'2019-07-31\', \'\', \'\', \'Select vendor\', \'Select vendor\', \'Select vendor\')'),
(79, '2019-07-31 02:06:22', 'raw material stock', 'update', 'UPDATE `raw material stock` SET `stock` = \'69\', `stock value` = \'17733\' WHERE `raw material stock`.`material id` = \'F2\';'),
(80, '2019-07-31 02:08:55', 'sub/order master', 'insert', 'INSERT INTO `sub/order master` (`order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES (\'\', \'719000\', \'719005\', \'719005-1\', \'2019-07-31\', \'2019-07-31\', \'2019-07-31\', \'Select vendor\', \'\', \'Breakaway-Mens\', \'M0016\', \'-Breakaway-Mens\', \'0\', \'\', \'\', \'\', \'\', \'1\')'),
(81, '2019-07-31 02:09:15', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 24'),
(82, '2019-07-31 02:15:29', 'sub/order master', 'insert', 'INSERT INTO `sub/order master` (`order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES (\'\', \'719000\', \'719005\', \'719005-1\', \'2019-07-31\', \'2019-07-31\', \'2019-07-31\', \'Select vendor\', \'\', \'Chase-Mens\', \'M0006\', \'-Chase-Mens\', \'0\', \'\', \'\', \'\', \'\', \'1\')'),
(83, '2019-07-31 02:15:41', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 25'),
(84, '2019-07-31 02:16:09', 'sub/order master', 'insert', 'INSERT INTO `sub/order master` (`order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES (\'\', \'719000\', \'719005\', \'719005-1\', \'2019-07-31\', \'2019-07-31\', \'2019-07-31\', \'Select vendor\', \'\', \'Chase-Mens\', \'M0006\', \'-Chase-Mens\', \'0\', \'\', \'\', \'\', \'\', \'1\')'),
(85, '2019-07-31 02:16:16', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 26'),
(86, '2019-08-02 05:58:55', 'order details', 'delete', 'DELETE FROM `order details` WHERE `suborder id` = \'719004-2\''),
(87, '2019-08-02 05:58:55', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'31\' WHERE `sub/order master`.`serial number` = 19;'),
(88, '2019-08-02 05:58:56', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'L\', \'14\')'),
(89, '2019-08-02 05:58:56', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'M\', \'1\')'),
(90, '2019-08-02 05:58:56', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'S\', \'12\')'),
(91, '2019-08-02 05:58:56', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'XL\', \'4\')'),
(92, '2019-08-02 06:01:50', 'sub/order master', 'insert', 'INSERT INTO `sub/order master` (`order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES (\'\', \'819000\', \'819001\', \'819001-1\', \'2019-08-02\', \'2019-08-02\', \'2019-08-02\', \'Select vendor\', \'\', \'Transition-Mens\', \'M0011\', \'-Transition-Mens\', \'0\', \'\', \'\', \'\', \'\', \'1\')'),
(93, '2019-08-02 06:02:15', 'sub/order master', 'delete', 'DELETE FROM `sub/order master` WHERE `sub/order master`.`serial number` = 20'),
(94, '2019-08-02 06:10:49', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `date issued` = \'2019-07-23\', `promised delivery date` = \'2019-07-23\', `vendor` = \'Orthofit\', `folder reference` = \'/test\', `product` = \'Singlet-Mens\', `pattern` = \'MSGLT01\', `order code` = \'test order-Singlet-Mens\', `product related instructions` = \'121\nhello\', `product notes` = \'23\', `printing details` = \'31\', `printing notes` = \'42\', `flag` = \'1\' WHERE `sub/order master`.`serial number` = 19;'),
(95, '2019-08-02 06:51:34', 'order details', 'delete', 'DELETE FROM `order details` WHERE `suborder id` = \'719004-2\''),
(96, '2019-08-02 06:51:34', 'sub/order master', 'update', 'UPDATE `sub/order master` SET `total` = \'33\' WHERE `sub/order master`.`serial number` = 19;'),
(97, '2019-08-02 06:51:34', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'L\', \'14\')'),
(98, '2019-08-02 06:51:34', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'M\', \'1\')'),
(99, '2019-08-02 06:51:34', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'S\', \'12\')'),
(100, '2019-08-02 06:51:35', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'XL\', \'4\')'),
(101, '2019-08-02 06:51:35', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'XXL\', \'1\')'),
(102, '2019-08-02 06:51:35', 'order details', 'insert', 'INSERT INTO `order details` (`suborder id`, `size`, `quantity`) VALUES (\'719004-2\', \'XXXL\', \'1\')');

-- --------------------------------------------------------

--
-- Table structure for table `material issue`
--

CREATE TABLE `material issue` (
  `serial number` int(11) NOT NULL,
  `order id` int(11) NOT NULL,
  `suborder id` varchar(255) NOT NULL,
  `material id` varchar(255) NOT NULL,
  `material code` varchar(255) NOT NULL,
  `quantity issued` float NOT NULL,
  `quantity returned` float NOT NULL,
  `net usage` float NOT NULL,
  `material issued by` varchar(255) NOT NULL,
  `material inward by` varchar(255) NOT NULL,
  `date issued` date NOT NULL,
  `vendor (stitching)` varchar(255) NOT NULL,
  `vendor (printing)` varchar(255) NOT NULL,
  `vendor (packing)` varchar(255) NOT NULL,
  `out-of-state` varchar(255) NOT NULL,
  `delivery method` varchar(255) NOT NULL,
  `flag` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material issue`
--

INSERT INTO `material issue` (`serial number`, `order id`, `suborder id`, `material id`, `material code`, `quantity issued`, `quantity returned`, `net usage`, `material issued by`, `material inward by`, `date issued`, `vendor (stitching)`, `vendor (printing)`, `vendor (packing)`, `out-of-state`, `delivery method`, `flag`) VALUES
(1, 619010, '619010-1', 'F11', 'Fabric - Dotknit-Dark Grey-140gsm-72inch-Roll-CE3232-Goyal', 25, 0, 0, 'Aditya', 'Aditya', '2019-06-13', '', '', '', '', '', 1),
(2, 619010, '619010-2', 'F8', 'Fabric - Dotknit-ElectricBlue-140gsm-72inch-Roll-CE3232-Goyal', 12.7, 0, 0, 'Aditya', 'Aditya', '2019-06-13', '', '', '', '', '', 1),
(5, 0, '', 'F21', 'Fabric - Mesh-Navy-180gsm-72inch-Tube--GVijay', 5.3, 2.3, 3, '', '', '2019-07-09', '', '', '', '', '', 1),
(20, 0, '', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 1, 3, -2, '', '', '2019-07-13', '', '', '', '', '', 1),
(21, 0, '', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, 'Rhishabh Hattarki', 'Rhishabh Hattarki', '2019-07-13', 'test', 'test', 'test', '', '', 1),
(22, 0, '', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 0, 1, -1, 'Rhishabh', 'Rhishabh', '2019-07-15', 'Goyal', 'Goyal', 'Goyal', '', '', 1),
(24, 619010, '619010-1', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 0, 0, 0, 'test', 'test', '2019-07-15', 'Bathija', 'Bathija', 'Bathija', '', '', 1),
(28, 619010, '619010-1', 'F1', '', 1, -1, 0, 'xvcx', 'xvcx', '2019-07-16', 'Berenis', 'Berenis', 'Berenis', '', '', 1),
(29, 619010, '619010-1', 'F11', '', 2, -2, 4, 'fgdf', 'fgdf', '2019-07-16', 'ShreePoly', 'ShreePoly', 'ShreePoly', '', '', 1),
(30, 619010, '619010-1', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 1, -1, 2, 'qwer', 'qwer', '2019-07-16', 'ShreePoly', 'ShreePoly', 'ShreePoly', '', '', 1),
(31, 619010, '619010-1', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 1.5, -1, 2.5, 'qwer', 'qwer', '2019-07-16', 'ShreePoly', 'ShreePoly', 'ShreePoly', '', '', 1),
(32, 619010, '619010-1', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 4, 2, 2, 'qwer', 'qwer', '2019-07-16', 'ShreePoly', 'ShreePoly', 'ShreePoly', '', '', 1),
(33, 619010, '619010-1', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 5, 2, 3, 'rhishabh', 'rhishabh', '2019-07-16', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', '', '', 1),
(34, 619010, '619010-1', 'F3', 'Fabric - Dotknit-White-140gsm-72inch-Roll-CE3232-Goyal', 24, 9, 15, 'rhishabh', 'rhishabh', '2019-07-16', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', '', '', 1),
(35, 619010, '619010-2', 'F3', 'Fabric - Dotknit-White-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, 'rhishabh hattarki', 'rhishabh hattarki', '2019-07-17', 'OmkarArts', 'OmkarArts', 'OmkarArts', '', '', 1),
(36, 619010, '619010-2', 'F5', 'Fabric - Dotknit-Aqua-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, 'rhishabh hattarki', 'rhishabh hattarki', '2019-07-17', 'OmkarArts', 'OmkarArts', 'OmkarArts', '', '', 1),
(37, 619010, '619010-2', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 4, 0, 4, 'sdfsfs', 'sdfsfs', '2019-07-17', 'Goyal', 'Goyal', 'Goyal', '', '', 1),
(38, 619010, '619010-2', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 9, 2, 7, 'sdfsfs', 'sdfsfs', '2019-07-17', 'Goyal', 'Goyal', 'Goyal', '', '', 1),
(39, 619010, '619010-2', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 0, 9, -9, '', '', '2019-07-17', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(40, 619010, '619010-2', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 2, 0, 2, '', '', '2019-07-17', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(41, 619010, '619010-2', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 0, 2, -2, '', '', '2019-07-17', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(42, 719003, '719003-1', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 2, 1, 1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(43, 719003, '719003-1', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(44, 719003, '719003-1', 'F3', 'Fabric - Dotknit-White-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(45, 719003, '719003-1', 'F5', 'Fabric - Dotknit-Aqua-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(46, 719003, '719003-1', 'F14', 'Fabric - Spandex-DarkGrey-240gsm-60inch-Roll-POS1281-Pashupati', 0, 0, 0, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(47, 719003, '719003-1', 'Z29', 'Zipper - YKK - molded-Black-56cm-Open---Bathija', 0, 1, -1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(48, 719003, '719003-1', 'F7', 'Fabric - Dotknit-Flouro-orange-140gsm-72inch-Roll-CE3232-Goyal', 0, 1, -1, 'asdfa', 'asdfa', '2019-07-22', 'Kushal', 'Kushal', 'Kushal', '', '', 1),
(49, 719003, '719003-1', 'F17', 'Fabric - Lycra 100X20-Black-180gsm-60inch-Roll--GVijay', 0, 1, -1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(50, 719001, '719001-2', 'F19', 'Fabric - Mesh-Black-180gsm-72inch-Tube--GVijay', 0, 1, -1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(51, 719001, '719001-2', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(52, 719001, '719001-2', 'F8', 'Fabric - Dotknit-ElectricBlue-140gsm-72inch-Roll-CE3232-Goyal', 0, 0, 0, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(53, 719001, '719001-3', 'F10', 'Fabric - Dotknit-Lime-140gsm-72inch-Roll-CE3232-Goyal', 0, 0, 0, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(54, 719001, '719001-3', 'F11', 'Fabric - Dotknit-Dark Grey-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, 'rhishabh', 'rhishabh', '2019-07-22', 'Sonatapes', 'Sonatapes', 'Sonatapes', '', '', 1),
(55, 719001, '719001-4', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(56, 719001, '719001-4', 'F11', 'Fabric - Dotknit-Dark Grey-140gsm-72inch-Roll-CE3232-Goyal', 0, 1, -1, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(57, 719001, '719001-4', 'F15', 'Fabric - Spandex-Navy-240gsm-60inch-Roll-POS1281-Pashupati', 0, 0, 0, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(58, 719001, '719001-4', 'F20', 'Fabric - Mesh-White-180gsm-72inch-Tube--GVijay', 0, 0, 0, '', '', '2019-07-22', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(59, 719001, '719001-3', 'F9', 'Fabric - Dotknit-Lemon Yellow-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, 'sadsdfa', 'sadsdfa', '2019-07-22', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', '', '', 1),
(60, 719001, '719001-4', 'F20', 'Fabric - Mesh-White-180gsm-72inch-Tube--GVijay', 0, 1, -1, 'asdfas', 'asdfas', '2019-07-22', 'GVijay', 'GVijay', 'GVijay', '', '', 1),
(61, 619001, '619001-1', 'F15', 'Fabric - Spandex-Navy-240gsm-60inch-Roll-POS1281-Pashupati', 1, 0, 1, 'rhishabh-double test', 'rhishabh-double test', '2019-07-22', 'GVijay', 'GVijay', 'GVijay', '', '', 1),
(62, 619001, '619001-1', 'F16', 'Fabric - Lycra 100X20-White-180gsm-60inch-Roll--GVijay', 0, 1, -1, 'rhishabh-double test', 'rhishabh-double test', '2019-07-22', 'GVijay', 'GVijay', 'GVijay', '', '', 1),
(63, 719004, '719004-2', 'S53', 'Sizing Labels-White-L----Kushal', 67, 1, 66, 'rhishabh doing the test', 'rhishabh doing the test', '2019-07-23', 'Rushabh Ent', 'Rushabh Ent', 'Rushabh Ent', '', '', 1),
(64, 719004, '719004-2', 'T69', 'Threads - unspun-Lemon Yellow-A-star----ShreePoly', 0, 1, -1, 'rhishabh doing the test', 'rhishabh doing the test', '2019-07-23', 'Rushabh Ent', 'Rushabh Ent', 'Rushabh Ent', '', '', 1),
(65, 719004, '719004-2', 'P116', 'Pad - Cycling-Red-Mens-Gel---Bestway', 1, 0, 1, 'rhishabh doing the test', 'rhishabh doing the test', '2019-07-23', 'Rushabh Ent', 'Rushabh Ent', 'Rushabh Ent', '', '', 1),
(66, 719004, '719004-2', 'S53', 'Sizing Labels-White-L----Kushal', 50, 0, 50, 'rhishabh doing the test', 'rhishabh doing the test', '2019-07-23', 'Rushabh Ent', 'Rushabh Ent', 'Rushabh Ent', '', '', 1),
(67, 719004, '719004-2', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 0, 1.25, -1.25, 'rhishabh doing the test', 'rhishabh doing the test', '2019-07-23', 'Rushabh Ent', 'Rushabh Ent', 'Rushabh Ent', '', '', 1),
(68, 719004, '719004-2', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 0, 4.22, -4.22, 'rhishabh doing the test', 'rhishabh doing the test', '2019-07-23', 'Rushabh Ent', 'Rushabh Ent', 'Rushabh Ent', '', '', 1),
(69, 719004, '719004-1', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, '', '', '2019-07-23', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(70, 719004, '719004-1', 'F14', 'Fabric - Spandex-DarkGrey-240gsm-60inch-Roll-POS1281-Pashupati', 0, 0, 0, '', '', '2019-07-23', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1),
(71, 719002, '719002-1', 'F18', 'Fabric - Lycra 100X40-Black-220gsm-60inch-Roll--GVijay', 1, 0, 1, 'rhishabh - test', 'rhishabh - test', '2019-07-29', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', '', '', 1),
(72, 719002, '719002-1', 'F15', 'Fabric - Spandex-Navy-240gsm-60inch-Roll-POS1281-Pashupati', 0, 1, -1, 'rhishabh - test', 'rhishabh - test', '2019-07-29', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', 'ColorCraft-SonaliScreens', '', '', 1),
(73, 719001, '719001-1', 'F12', 'Fabric - Spandex-Black-240gsm-60inch-Roll-POS1281-Pashupati', 0, 0.9, -0.9, 'rhishabh', 'rhishabh', '2019-07-31', 'Berenis', 'Berenis', 'Berenis', '', '', 1),
(74, 719001, '719001-1', 'F14', 'Fabric - Spandex-DarkGrey-240gsm-60inch-Roll-POS1281-Pashupati', 2, 0, 2, 'rhishabh', 'rhishabh', '2019-07-31', 'Berenis', 'Berenis', 'Berenis', '', '', 1),
(75, 719001, '719001-1', 'F1', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 0, 0, 0, 'rhishabh', 'rhishabh', '2019-07-31', 'Berenis', 'Berenis', 'Berenis', '', '', 1),
(76, 719001, '719001-1', 'F20', 'Fabric - Mesh-White-180gsm-72inch-Tube--GVijay', 1, 3, -2, 'tommy', 'tommy', '2019-07-31', 'Pashupati', 'Pashupati', 'Pashupati', '', '', 1),
(77, 719004, '719004-2', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 0, 1, -1, 'rhishabh', 'rhishabh', '2019-07-31', 'AakashEnt', 'AakashEnt', 'AakashEnt', '', '', 1),
(78, 0, '', 'F2', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 1, 0, 1, '', '', '2019-07-31', 'Select vendor', 'Select vendor', 'Select vendor', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `material master`
--

CREATE TABLE `material master` (
  `serial number` int(11) NOT NULL,
  `material id` varchar(255) NOT NULL,
  `material type` varchar(255) NOT NULL,
  `material code` varchar(255) NOT NULL,
  `unit of measurement - purchase` varchar(255) NOT NULL,
  `unit of measurement - usage` varchar(255) NOT NULL,
  `uom conversion` float NOT NULL,
  `main attrib1` varchar(255) NOT NULL,
  `main attrib2` varchar(255) NOT NULL,
  `main attrib3` varchar(255) NOT NULL,
  `main attrib4` varchar(255) NOT NULL,
  `main attrib5` varchar(255) NOT NULL,
  `vendor id` varchar(255) NOT NULL,
  `vendor name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `minimum order quantity` int(11) NOT NULL,
  `lead time to reorder` int(11) NOT NULL,
  `safety stock/reorder level` int(11) NOT NULL,
  `monthly burnrate` float NOT NULL,
  `attrib1` varchar(255) NOT NULL,
  `attrib2` varchar(255) NOT NULL,
  `attrib3` varchar(255) NOT NULL,
  `attrib4` varchar(255) NOT NULL,
  `attrib5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material master`
--

INSERT INTO `material master` (`serial number`, `material id`, `material type`, `material code`, `unit of measurement - purchase`, `unit of measurement - usage`, `uom conversion`, `main attrib1`, `main attrib2`, `main attrib3`, `main attrib4`, `main attrib5`, `vendor id`, `vendor name`, `active`, `minimum order quantity`, `lead time to reorder`, `safety stock/reorder level`, `monthly burnrate`, `attrib1`, `attrib2`, `attrib3`, `attrib4`, `attrib5`) VALUES
(1, 'F1', 'Fabric - Dotknit', 'Fabric - Dotknit-Red-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'Red', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 10, 0, 4, 0, 'updated', 'updated', 'updated', 'updated', 'qwertyupdated'),
(2, 'F2', 'Fabric - Dotknit', 'Fabric - Dotknit-Black-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'Black', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(3, 'F3', 'Fabric - Dotknit', 'Fabric - Dotknit-White-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'White', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(5, 'F5', 'Fabric - Dotknit', 'Fabric - Dotknit-Aqua-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'Aqua', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(7, 'F7', 'Fabric - Dotknit', 'Fabric - Dotknit-Flouro-orange-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'Flouro-orange', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(8, 'F8', 'Fabric - Dotknit', 'Fabric - Dotknit-ElectricBlue-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'ElectricBlue', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(9, 'F9', 'Fabric - Dotknit', 'Fabric - Dotknit-Lemon Yellow-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'Lemon Yellow', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(10, 'F10', 'Fabric - Dotknit', 'Fabric - Dotknit-Lime-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'Lime', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(11, 'F11', 'Fabric - Dotknit', 'Fabric - Dotknit-Dark Grey-140gsm-72inch-Roll-CE3232-Goyal', 'Kilo', 'Kilo', 1, 'Dark Grey', '140gsm', '72inch', 'Roll', 'CE3232', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(12, 'F12', 'Fabric - Spandex', 'Fabric - Spandex-Black-240gsm-60inch-Roll-POS1281-Pashupati', 'Kilo', 'Kilo', 1, 'Black', '240gsm', '60inch', 'Roll', 'POS1281', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(13, 'F13', 'Fabric - Spandex', 'Fabric - Spandex-White-240gsm-60inch-Roll-POS1281-Pashupati', 'Kilo', 'Kilo', 1, 'White', '240gsm', '60inch', 'Roll', 'POS1281', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(14, 'F14', 'Fabric - Spandex', 'Fabric - Spandex-DarkGrey-240gsm-60inch-Roll-POS1281-Pashupati', 'Kilo', 'Kilo', 1, 'DarkGrey', '240gsm', '60inch', 'Roll', 'POS1281', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(15, 'F15', 'Fabric - Spandex', 'Fabric - Spandex-Navy-240gsm-60inch-Roll-POS1281-Pashupati', 'Kilo', 'Kilo', 1, 'Navy', '240gsm', '60inch', 'Roll', 'POS1281', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(16, 'F16', 'Fabric - Lycra 100X20', 'Fabric - Lycra 100X20-White-180gsm-60inch-Roll--GVijay', 'Kilo', 'Kilo', 1, 'White', '180gsm', '60inch', 'Roll', '', '', 'GVijay', 1, 0, 0, 0, 0, '', '', '', '', ''),
(17, 'F17', 'Fabric - Lycra 100X20', 'Fabric - Lycra 100X20-Black-180gsm-60inch-Roll--GVijay', 'Kilo', 'Kilo', 1, 'Black', '180gsm', '60inch', 'Roll', '', '', 'GVijay', 1, 0, 0, 0, 0, '', '', '', '', ''),
(18, 'F18', 'Fabric - Lycra 100X40', 'Fabric - Lycra 100X40-Black-220gsm-60inch-Roll--GVijay', 'Kilo', 'Kilo', 1, 'Black', '220gsm', '60inch', 'Roll', '', '', 'GVijay', 1, 0, 0, 0, 0, '', '', '', '', ''),
(19, 'F19', 'Fabric - Mesh', 'Fabric - Mesh-Black-180gsm-72inch-Tube--GVijay', 'Kilo', 'Kilo', 1, 'Black', '180gsm', '72inch', 'Tube', '', '', 'GVijay', 1, 0, 0, 0, 0, '', '', '', '', ''),
(20, 'F20', 'Fabric - Mesh', 'Fabric - Mesh-White-180gsm-72inch-Tube--GVijay', 'Kilo', 'Kilo', 1, 'White', '180gsm', '72inch', 'Tube', '', '', 'GVijay', 1, 0, 0, 0, 0, '', '', '', '', ''),
(21, 'F21', 'Fabric - Mesh', 'Fabric - Mesh-Navy-180gsm-72inch-Tube--GVijay', 'Kilo', 'Kilo', 1, 'Navy', '180gsm', '72inch', 'Tube', '', '', 'GVijay', 1, 0, 0, 0, 0, '', '', '', '', ''),
(22, 'F22', 'Fabric - Mesh', 'Fabric - Mesh-Red-180gsm-72inch-Tube--GVijay', 'Kilo', 'Kilo', 1, 'Red', '180gsm', '72inch', 'Tube', '', '', 'GVijay', 1, 0, 0, 0, 0, '', '', '', '', ''),
(23, 'F23', 'Fabric - JC011', 'Fabric - JC011-White-180gsm-60inch-Roll--China', 'Kilo', 'Kilo', 1, 'White', '180gsm', '60inch', 'Roll', '', '', 'China', 1, 0, 0, 0, 0, '', '', '', '', ''),
(24, 'F24', 'Fabric - Polywoven Spandex', 'Fabric - Polywoven Spandex-Black-130gsm-60inch-Roll-POS1645-Pashupati', 'Kilo', 'Kilo', 1, 'Black', '130gsm', '60inch', 'Roll', 'POS1645', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(25, 'F25', 'Fabric - Polywoven Spandex', 'Fabric - Polywoven Spandex-Navy-130gsm-60inch-Roll-POS1645-Pashupati', 'Kilo', 'Kilo', 1, 'Navy', '130gsm', '60inch', 'Roll', 'POS1645', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(26, 'F26', 'Fabric - Dotknit', 'Fabric - Dotknit-DarkGrey-140gsm-60inch-Roll-POS1707-Pashupati', 'Kilo', 'Kilo', 1, 'DarkGrey', '140gsm', '60inch', 'Roll', 'POS1707', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(27, 'F27', 'Fabric - Dotknit', 'Fabric - Dotknit-Aubergine-140gsm-60inch-Roll-POS1707-Pashupati', 'Kilo', 'Kilo', 1, 'Aubergine', '140gsm', '60inch', 'Roll', 'POS1707', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(28, 'F28', 'Fabric - Dotknit', 'Fabric - Dotknit-Scuba-140gsm-60inch-Roll-POS1707-Pashupati', 'Kilo', 'Kilo', 1, 'Scuba', '140gsm', '60inch', 'Roll', 'POS1707', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(29, 'Z29', 'Zipper - YKK - molded', 'Zipper - YKK - molded-Black-56cm-Open---Bathija', 'Count', 'Count', 1, 'Black', '56cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(30, 'Z30', 'Zipper - YKK - molded', 'Zipper - YKK - molded-Black-60cm-Open---Bathija', 'Count', 'Count', 1, 'Black', '60cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(31, 'Z31', 'Zipper - YKK - molded', 'Zipper - YKK - molded-Black-70cm-Open---Bathija', 'Count', 'Count', 1, 'Black', '70cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(32, 'Z32', 'Zipper - YKK - molded', 'Zipper - YKK - molded-Black-50.5cm-Open---Bathija', 'Count', 'Count', 1, 'Black', '50.5cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(33, 'Z33', 'Zipper - YKK - molded', 'Zipper - YKK - molded-White-56cm-Open---Bathija', 'Count', 'Count', 1, 'White', '56cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(34, 'Z34', 'Zipper - YKK - molded', 'Zipper - YKK - molded-White-60cm-Open---Bathija', 'Count', 'Count', 1, 'White', '60cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(35, 'Z35', 'Zipper - YKK - molded', 'Zipper - YKK - molded-White-70cm-Open---Bathija', 'Count', 'Count', 1, 'White', '70cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(36, 'Z36', 'Zipper - YKK - molded', 'Zipper - YKK - molded-White-50.5cm-Open---Bathija', 'Count', 'Count', 1, 'White', '50.5cm', 'Open', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(37, 'Z37', 'Zipper - YKK - coil', 'Zipper - YKK - coil-Black-65cm-Closed---Bathija', 'Count', 'Count', 1, 'Black', '65cm', 'Closed', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(38, 'Z38', 'Zipper - YKK - coil', 'Zipper - YKK - coil-White-65cm-Closed---Bathija', 'Count', 'Count', 1, 'White', '65cm', 'Closed', '', '', '', 'Bathija', 1, 0, 0, 0, 0, '', '', '', '', ''),
(39, 'P39', 'Pad - Cycling', 'Pad - Cycling-Red-Mens-Gel---China', 'Count', 'Count', 1, 'Red', 'Mens', 'Gel', '', '', '', 'China', 1, 0, 0, 0, 0, '', '', '', '', ''),
(40, 'P40', 'Pad - Cycling', 'Pad - Cycling-Pink-Womens-Gel---China', 'Count', 'Count', 1, 'Pink', 'Womens', 'Gel', '', '', '', 'China', 1, 0, 0, 0, 0, '', '', '', '', ''),
(41, 'P41', 'Pad - Triathlon', 'Pad - Triathlon-Grey-Mens-Foam---Berenis', 'Count', 'Count', 1, 'Grey', 'Mens', 'Foam', '', '', '', 'Berenis', 1, 0, 0, 0, 0, '', '', '', '', ''),
(42, 'P42', 'Pad - Cycling', 'Pad - Cycling-Brown-Mens-Foam---Berenis', 'Count', 'Count', 1, 'Brown', 'Mens', 'Foam', '', '', '', 'Berenis', 1, 0, 0, 0, 0, '', '', '', '', ''),
(43, 'E43', 'Elastic - Silicon Gripper', 'Elastic - Silicon Gripper-White-28mm-10mmsilicongripper---China', 'Meter', 'Meter', 1, 'White', '28mm', '10mmsilicongripper', '', '', '', 'China', 1, 0, 0, 0, 0, '', '', '', '', ''),
(44, 'E44', 'Elastic - waistband', 'Elastic - waistband-Black-45mm----Sonatapes', 'Meter', 'Meter', 1, 'Black', '45mm', '', '', '', '', 'Sonatapes', 1, 0, 0, 0, 0, '', '', '', '', ''),
(45, 'E45', 'Elastic - tape', 'Elastic - tape-White-8mm----Sonatapes', 'Meter', 'Meter', 1, 'White', '8mm', '', '', '', '', 'Sonatapes', 1, 0, 0, 0, 0, '', '', '', '', ''),
(46, 'R46', 'Reflective piping', 'Reflective piping-Grey reflective-----Rushabh Ent', 'Meter', 'Meter', 1, 'Grey reflective', '', '', '', '', '', 'Rushabh Ent', 1, 0, 0, 0, 0, '', '', '', '', ''),
(47, 'R47', 'Reflective tape', 'Reflective tape-Grey reflective-2inch----Rushabh Ent', 'Roll', 'Roll', 1, 'Grey reflective', '2inch', '', '', '', '', 'Rushabh Ent', 1, 0, 0, 0, 0, '', '', '', '', ''),
(48, 'W48', 'Washcare Labels', 'Washcare Labels-White-Standard----Kushal', 'Count', 'Count', 1, 'White', 'Standard', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(49, 'S49', 'Sizing Labels', 'Sizing Labels-White-2XS----Kushal', 'Count', 'Count', 1, 'White', '2XS', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(50, 'S50', 'Sizing Labels', 'Sizing Labels-White-XS----Kushal', 'Count', 'Count', 1, 'White', 'XS', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(51, 'S51', 'Sizing Labels', 'Sizing Labels-White-S----Kushal', 'Count', 'Count', 1, 'White', 'S', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(52, 'S52', 'Sizing Labels', 'Sizing Labels-White-M----Kushal', 'Count', 'Count', 1, 'White', 'M', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(53, 'S53', 'Sizing Labels', 'Sizing Labels-White-L----Kushal', 'Count', 'Count', 1, 'White', 'L', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(54, 'S54', 'Sizing Labels', 'Sizing Labels-White-XL----Kushal', 'Count', 'Count', 1, 'White', 'XL', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(55, 'S55', 'Sizing Labels', 'Sizing Labels-White-XXL----Kushal', 'Count', 'Count', 1, 'White', 'XXL', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(56, 'S56', 'Sizing Labels', 'Sizing Labels-White-Blank----Kushal', 'Count', 'Count', 1, 'White', 'Blank', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(57, 'G57', 'Gender Labels', 'Gender Labels-White-Mens----Kushal', 'Count', 'Count', 1, 'White', 'Mens', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(58, 'G58', 'Gender Labels', 'Gender Labels-White-Womens----Kushal', 'Count', 'Count', 1, 'White', 'Womens', '', '', '', '', 'Kushal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(59, 'E59', 'Elastic - local', 'Elastic - local-White-0.5inch----Vishal', 'Meter', 'Meter', 1, 'White', '0.5inch', '', '', '', '', 'Vishal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(60, 'E60', 'Elastic - local', 'Elastic - local-White-0.25inch----Vishal', 'Meter', 'Meter', 1, 'White', '0.25inch', '', '', '', '', 'Vishal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(61, 'P61', 'Polybags - ziplock', 'Polybags - ziplock-Clear-11X14----ExcelPoly', 'Count', 'Count', 1, 'Clear', '11X14', '', '', '', '', 'ExcelPoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(62, 'P62', 'Polybag - standard', 'Polybag - standard-Clear-10x16----JaiPlastic', 'Count', 'Count', 1, 'Clear', '10x16', '', '', '', '', 'JaiPlastic', 1, 0, 0, 0, 0, '', '', '', '', ''),
(63, 'T63', 'Threads - unspun', 'Threads - unspun-Red-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Red', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(64, 'T64', 'Threads - unspun', 'Threads - unspun-Black-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Black', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(65, 'T65', 'Threads - unspun', 'Threads - unspun-White-A-star----ShreePoly', 'Cones', 'Cones', 1, 'White', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(66, 'T66', 'Threads - unspun', 'Threads - unspun-Navy-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Navy', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(67, 'T67', 'Threads - unspun', 'Threads - unspun-Aqua-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Aqua', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(68, 'T68', 'Threads - unspun', 'Threads - unspun-Seagreen-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Seagreen', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(69, 'T69', 'Threads - unspun', 'Threads - unspun-Lemon Yellow-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Lemon Yellow', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(70, 'T70', 'Threads - unspun', 'Threads - unspun-Lime-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Lime', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(71, 'T71', 'Threads - unspun', 'Threads - unspun-Dark Grey-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Dark Grey', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(72, 'T72', 'Threads - unspun', 'Threads - unspun-Light Grey-A-star----ShreePoly', 'Cones', 'Cones', 1, 'Light Grey', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(73, 'T73', 'Threads - unspun', 'Threads - unspun-ElectricBlue-A-star----ShreePoly', 'Cones', 'Cones', 1, 'ElectricBlue', 'A-star', '', '', '', '', 'ShreePoly', 1, 0, 0, 0, 0, '', '', '', '', ''),
(74, 'F74', 'Fabric - Dotknit', 'Fabric - Dotknit-Red-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Red', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(75, 'F75', 'Fabric - Dotknit', 'Fabric - Dotknit-Black-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Black', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(76, 'F76', 'Fabric - Dotknit', 'Fabric - Dotknit-White-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'White', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(77, 'F77', 'Fabric - Dotknit', 'Fabric - Dotknit-Navy-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Navy', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(78, 'F78', 'Fabric - Dotknit', 'Fabric - Dotknit-Aqua-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Aqua', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(79, 'F79', 'Fabric - Dotknit', 'Fabric - Dotknit-Seagreen-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Seagreen', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(80, 'F80', 'Fabric - Dotknit', 'Fabric - Dotknit-Flouro-orange-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Flouro-orange', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(81, 'F81', 'Fabric - Dotknit', 'Fabric - Dotknit-ElectricBlue-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'ElectricBlue', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(82, 'F82', 'Fabric - Dotknit', 'Fabric - Dotknit-Lemon Yellow-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Lemon Yellow', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(83, 'F83', 'Fabric - Dotknit', 'Fabric - Dotknit-Lime-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Lime', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(84, 'F84', 'Fabric - Dotknit', 'Fabric - Dotknit-Dark Grey-140gsm-60inch-Roll--Goyal', 'Kilo', 'Kilo', 1, 'Dark Grey', '140gsm', '60inch', 'Roll', '', '', 'Goyal', 1, 0, 0, 0, 0, '', '', '', '', ''),
(85, 'F85', 'Fabric - Spandex', 'Fabric - Spandex-Navy Blue Melange-220gsm-60inch-Roll--Pashupati', 'Kilo', 'Kilo', 1, 'Navy Blue Melange', '220gsm', '60inch', 'Roll', '', '', 'Pashupati', 1, 0, 0, 0, 0, '', '', '', '', ''),
(86, 'None', 'None', 'None------', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(87, 'F87', 'Fabric - rollsublimated', 'Fabric - rollsublimated-Lime-print1-140gsm-72inch-Roll--Goyal', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(88, 'F88', 'Fabric - rollsublimated', 'Fabric - rollsublimated-Lime-print2-140gsm-72inch-Roll--Goyal', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(89, 'F89', 'Fabric - rollsublimated', 'Fabric - rollsublimated-Red-print1-140gsm-72inch-Roll--Goyal', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(90, 'R90', 'Reflective Tabs Cut', 'Reflective Tabs Cut-Grey reflective-----Rushabh Ent', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(91, 'F91', 'Fabric - Melange', 'Fabric - Melange-Rust-180gsm-60inch---', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(92, 'F92', 'Fabric - Melange', 'Fabric - Melange-Moss-180gsm-60inch---', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(93, 'F93', 'Fabric - Melange', 'Fabric - Melange-DirtyBlue-180gsm-60inch---', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(94, 'F94', 'Fabric - Melange', 'Fabric - Melange-Denim-180gsm-60inch---', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(95, 'F95', 'Fabric - Melange', 'Fabric - Melange-Citrus-180gsm-60inch---', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(96, 'F96', 'Fabric - Melange', 'Fabric - Melange-Slate-180gsm-60inch---', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(97, 'F97', 'Fabric - Melange', 'Fabric - Melange-Sky-180gsm-60inch---', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(98, 'F98', 'Fabric - Mesh', 'Fabric - Mesh-Black-Shoebag----', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(99, 'E99', 'Elastic - Silicon Gripper', 'Elastic - Silicon Gripper-Black-Green-20mm----', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(100, 'F100', 'Fabric - Plainknit', 'Fabric - Plainknit-Orange-160gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(101, 'F101', 'Fabric - LRK', 'Fabric - LRK-Dark Grey-160gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(102, 'F102', 'Fabric - RK', 'Fabric - RK-Dark Grey-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(103, 'F103', 'Fabric - RK', 'Fabric - RK-Red-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(104, 'F104', 'Fabric - RK', 'Fabric - RK-Black-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(105, 'F105', 'Fabric - RK', 'Fabric - RK-Apple Green-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(106, 'Z106', 'Zippers Local - 6 inch', 'Zippers Local - 6 inch-Navy-Local-6inch---Local', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(107, 'T107', 'Threads - unspun', 'Threads - unspun-Aubergine-A-star----ShreePoly', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(108, 'Z108', 'Zippers invisible - 8 inch', 'Zippers invisible - 8 inch-Aubergine-Invisible-8inch---Local', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(109, 'Z109', 'Zippers invisible - 8 inch', 'Zippers invisible - 8 inch-Scuba-Invisible-8inch---Local', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(110, 'Z110', 'Zippers invisible - 8 inch', 'Zippers invisible - 8 inch-Black-Invisible-8inch---Local', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(111, 'Z111', 'Zippers Local - 8 inch', 'Zippers Local - 8 inch-Aubergine-Local-8inch---Local', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(112, 'Z112', 'Zippers Local - 8 inch', 'Zippers Local - 8 inch-Black-Local-8inch---Local', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(113, 'F113', 'Fabric - Plainknit', 'Fabric - Plainknit-Black-160gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(114, 'F114', 'Fabric - Plainknit', 'Fabric - Plainknit-Brown-160gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(115, 'F115', 'Fabric-PointelleMesh', 'Fabric-PointelleMesh-White-140gsm-60inch-Roll-POS2901-Pashupati', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(116, 'P116', 'Pad - Cycling', 'Pad - Cycling-Red-Mens-Gel---Bestway', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(117, 'E117', 'Elastic - Silicon Gripper', 'Elastic - Silicon Gripper-White-40cm-Powerband-Roll--Bestway', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(118, 'F118', 'Fabric - Spandex', 'Fabric - Spandex-Black-240gsm-60inch-Roll-POS2922-Pashupati', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(119, 'F119', 'Fabric - Popcorn', 'Fabric - Popcorn-Purple-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(120, 'F120', 'Fabric - Popcorn', 'Fabric - Popcorn-Yellow-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(121, 'F121', 'Fabric - Popcorn', 'Fabric - Popcorn-DarkGrey-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(122, 'F122', 'Fabric - Popcorn', 'Fabric - Popcorn-Red-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(123, 'F123', 'Fabric - Popcorn', 'Fabric - Popcorn-LightGrey-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(124, 'F124', 'Fabric - Popcorn', 'Fabric - Popcorn-AppleGreen-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(125, 'F125', 'Fabric - Popcorn', 'Fabric - Popcorn-NavyBlue-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(126, 'F126', 'Fabric - Popcorn', 'Fabric - Popcorn-Black-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(127, 'F127', 'Fabric - RK', 'Fabric - RK-RoyalBlue-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(128, 'F128', 'Fabric - RK', 'Fabric - RK-MojoBlue-180gsm-72inch-Tube--GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(129, 'C129', 'Collar', 'Collar-Yellow-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(130, 'C130', 'Collar', 'Collar-Red-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(131, 'C131', 'Collar', 'Collar-AppleGreen-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(132, 'C132', 'Collar', 'Collar-DarkGrey-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(133, 'C133', 'Collar', 'Collar-NavyBlue-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(134, 'C134', 'Collar', 'Collar-Black-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(135, 'C135', 'Collar', 'Collar-Purple-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(136, 'C136', 'Collar', 'Collar-White-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(137, 'C137', 'Collar', 'Collar-LightGrey-Polyester----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(138, 'C138', 'Collar', 'Collar-NavyBlue-Cotton----GVijay', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(139, 'F139', 'Fabric - AeroKnit', 'Fabric - AeroKnit-White-130gsm-60inch-Roll-POS1884-Pashupati', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(140, 'F140', 'Fabric - Dotknit', 'Fabric - Dotknit-Pink-140gsm-60inch-Roll-POS1707-Pashupati', '', '', 1, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(141, 'E141', 'Elastic - Silicon Gripper', 'Elastic - Silicon Gripper-White-25mm-10mmsilicongripper-Open-BWE03-Bestway', '', '', 0.0110705, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(151, 'undefinedtest1', 'test', '', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(152, 'testtest1', 'test', '', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(153, 'Fs.no.', 'fat', '', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(154, 'Tundefined', 'test', '', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(155, 'T154', 'test22', '', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(156, 'T1551', 'test44', '', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(157, 'T157', 'test55', '', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(158, 'T158', 'test1', '', 'test2', 'test3', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(159, '1159', '1', '', '2', '3', 4, '5', '6', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(160, 'T160', 't1', '', '2', '3', 4, '5', '6', '7', '8', '9', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(161, 'Q161', 'q1', '', '2', '3', 4, '5', '6', '7', '8', '9', '10', '11', 1, 0, 0, 0, 0, '', '', '', '', ''),
(162, 'Q162', 'q1', '', '2', '3', 4, '5', '6', '7', '8', '9', '10', '11', 1, 12, 0, 13, 0, '14', '', '', '', ''),
(163, 'Q163', 'q1', '', '2', '3', 4, '5', '6', '7', '8', '9', '10', '11', 1, 12, 0, 13, 0, '14', '15', '16', '17', '18'),
(164, 'L164', 'last test', 'last test-shirt-white-patchy-shiny-fancy-Crazy vendor', 'kilo', 'gram', 1000, 'shirt', 'white', 'patchy', 'shiny', 'fancy', 'V233', 'Crazy vendor', 1, 34, 0, 50, 0, 'shade', 'light', 'low opaque', 'bluish', 'long'),
(165, 'A165', 'as', 'as', '', '', 0, '', '', '', '', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', ''),
(166, 'T166', 'test', 'test-sdf-sas-sfd-sdf', '', '', 0, 'sdf', 'sas', 'sfd', 'sdf', '', '', '', 1, 0, 0, 0, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `material type master`
--

CREATE TABLE `material type master` (
  `serial number` int(11) NOT NULL,
  `material type` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material type master`
--

INSERT INTO `material type master` (`serial number`, `material type`, `active`) VALUES
(1, 'Fabric - Dotknit', 1),
(2, 'Fabric - Spandex', 1),
(3, 'Fabric - Lycra 100X20', 1),
(4, 'Fabric - Lycra 100X40', 1),
(5, 'Fabric - JC011', 1),
(6, 'Fabric - Mesh', 1),
(7, 'Fabric - Polywoven Spandex', 1),
(8, 'Zipper - YKK - molded', 1),
(9, 'Zipper - YKK - coil', 1),
(10, 'Zipper - Local - coil', 1),
(11, 'Pad - Triathlon', 1),
(12, 'Pad - Cycling', 1),
(13, 'Elastic - Silicon Gripper', 1),
(14, 'Elastic - tape', 1),
(15, 'Elastic - waistband', 1),
(16, 'Elastic - local', 1),
(17, 'Reflective piping', 1),
(18, 'Reflective tape', 1),
(19, 'Washcare Labels', 1),
(20, 'Sizing Labels', 1),
(21, 'Gender Labels', 1),
(22, 'Polybags - ziplock', 1),
(23, 'Polybag - standard', 1),
(24, 'Threads - unspun', 1),
(25, 'Fabric - NirmalKnit', 1),
(26, 'Fabric - RK', 1),
(27, 'Fabric - LRK', 1),
(29, 'Fabric - rollsublimated', 1),
(30, 'Reflective Tabs Cut', 1),
(31, 'Fabric - Plainknit', 1),
(32, 'Zippers Local - 6 inch', 1),
(33, 'Zippers invisible - 8 inch', 1),
(34, 'Zippers Local - 8 inch', 1),
(35, 'Fabric - PointelleMesh', 1),
(36, 'Fabric - Popcorn', 1),
(37, 'Collar', 1),
(38, 'Fabric - AeroKnit', 1),
(42, 'test2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order details`
--

CREATE TABLE `order details` (
  `serial number` int(11) NOT NULL,
  `suborder id` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order details`
--

INSERT INTO `order details` (`serial number`, `suborder id`, `size`, `quantity`) VALUES
(84, '619010-1', 'S', 8),
(85, '619010-1', 'L', 14),
(86, '619010-1', 'XL', 10),
(87, '619010-1', '2XL', 4),
(88, '619010-1', 'M', 1),
(89, '619010-2', 'S', 10),
(90, '619010-2', 'M', 14),
(91, '619010-2', 'L', 14),
(92, '619010-2', 'XL', 10),
(93, '619010-2', '2XL', 4),
(95, '719004-1', 'M', 1),
(96, '719004-1', 'S', 5),
(97, '719004-1', 'L', 10),
(100, '719001-3', 'test', 1),
(101, '719001-3', 'test5', 3),
(102, '719001-3', 'tes', 4),
(104, '719001-4', '\'hello\'', 0),
(128, '719001-1', 'M', 6),
(129, '719001-1', 'S', 12),
(130, '719001-1', 'L', 1),
(138, '719004-2', 'L', 14),
(139, '719004-2', 'M', 1),
(140, '719004-2', 'S', 12),
(141, '719004-2', 'XL', 4),
(142, '719004-2', 'XXL', 1),
(143, '719004-2', 'XXXL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product master`
--

CREATE TABLE `product master` (
  `serial number` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product master`
--

INSERT INTO `product master` (`serial number`, `product`, `gender`, `pattern`, `active`) VALUES
(1, 'Breakaway', 'Mens', 'M0016', 1),
(2, 'Chase', 'Mens', 'M0006', 1),
(3, 'Peleton', 'Mens', 'M0013', 1),
(4, 'Transition', 'Mens', 'M0011', 1),
(5, 'Transition-Full', 'Mens', 'M0011', 1),
(6, 'VergeTop', 'Mens', 'MTJ02', 1),
(7, 'VergeShorts', 'Mens', 'MCS02', 1),
(8, 'Slingshot', 'Mens', 'MCS02', 1),
(9, 'Tri suit', 'Mens', 'MTST1', 1),
(10, 'Regular-RN', 'Mens', 'M0001', 1),
(11, 'Raglan-RN', 'Mens', 'M0002', 1),
(12, 'Echelon', 'Mens', 'MCBS01', 1),
(13, 'Singlet', 'Mens', 'MSGLT01', 1),
(14, 'Tempo', 'Mens', 'MRS01', 1),
(15, 'Regular-Polo', 'Mens', 'M0003', 1),
(16, 'Raglan-Polo', 'Mens', 'M0003A', 1),
(17, 'Breakaway', 'Womens', 'W0004', 1),
(18, 'Chase', 'Womens', 'W0004', 1),
(19, 'Peleton', 'Womens', 'W0010', 1),
(20, 'Transition', 'Womens', 'W0009', 1),
(21, 'VergeTop', 'Womens', 'WTJ01', 1),
(22, 'VergeShorts', 'Womens', 'WTS01', 1),
(23, 'Slingshot', 'Womens', 'CSW1', 1),
(24, 'Tri suit', 'Womens', 'WTST01', 1),
(25, 'Regular-RN', 'Womens', 'W0001', 1),
(26, 'Raglan-RN', 'Womens', 'W0002', 1),
(27, 'Regular-VN', 'Womens', 'W0001', 1),
(28, 'Raglan-VN', 'Womens', 'W0002', 1),
(29, 'Echelon', 'Womens', 'WCBS', 1),
(30, 'Singlet', 'Womens', 'WSGLT01', 1),
(31, 'Tempo', 'Womens', 'WRS01', 1),
(32, 'Regular-Polo', 'Womens', 'W0005', 1),
(33, 'CyclingTshirt', 'Womens', 'W0015', 1),
(34, 'Echelon2.0', 'Mens', 'MCBS02', 1),
(35, 'CyclingTshirt', 'Mens', 'M0018', 1),
(36, 'test2', 'female', 'M0018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `raw material stock`
--

CREATE TABLE `raw material stock` (
  `serial number` int(11) NOT NULL,
  `material id` varchar(255) NOT NULL,
  `stock` float NOT NULL,
  `purchase price` float NOT NULL,
  `stock value` float NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw material stock`
--

INSERT INTO `raw material stock` (`serial number`, `material id`, `stock`, `purchase price`, `stock value`, `active`) VALUES
(1, 'F1', 10, 275, 2750, 1),
(2, 'F2', 69, 257, 17733, 1),
(3, 'F3', 121.24, 257, 31158.7, 1),
(4, 'F4', 0.8, 257, 205.6, 1),
(5, 'F5', 136.53, 257, 35088.2, 1),
(6, 'F6', 76.8, 257, 19737.6, 1),
(7, 'F7', 3.73, 257, 958.61, 1),
(8, 'F8', 126.22, 257, 32438.5, 1),
(9, 'F9', 62.05, 257, 15946.8, 1),
(10, 'F10', 63.9, 257, 16422.3, 1),
(11, 'F11', 81.4, 257, 20919.8, 1),
(12, 'F12', 23, 550, 12650, 1),
(13, 'F13', 6.1, 550, 3355, 1),
(14, 'F14', 3, 550, 1650, 1),
(15, 'F15', 17, 550, 9350, 1),
(16, 'F16', 9.3, 500, 4650, 1),
(17, 'F17', 1, 500, 500, 1),
(18, 'F18', 34, 500, 17000, 1),
(19, 'F19', 9.5, 360, 3420, 1),
(20, 'F20', 13, 360, 4680, 1),
(21, 'F21', 9.7, 360, 3492, 1),
(22, 'F22', 23, 360, 8280, 1),
(23, 'F23', 71.63, 1000, 71630, 1),
(24, 'F24', 20, 550, 11000, 1),
(25, 'F25', 30, 550, 16500, 1),
(26, 'F26', 26, 370, 9620, 1),
(27, 'F27', 4.15, 370, 1535.5, 1),
(28, 'F28', 9.73, 370, 3600.1, 1),
(29, 'Z29', 1, 37, 37, 1),
(30, 'Z30', 0, 37, 0, 1),
(31, 'Z31', 67, 37, 2479, 1),
(32, 'Z32', 33, 37, 1221, 1),
(33, 'Z33', 53, 37, 1961, 1),
(34, 'Z34', 46, 37, 1702, 1),
(35, 'Z35', 42, 37, 1554, 1),
(36, 'Z36', 70, 37, 2590, 1),
(37, 'Z37', 50, 37, 1850, 1),
(38, 'Z38', 28, 37, 1036, 1),
(39, 'P39', 0, 200, 0, 1),
(40, 'P40', 60, 200, 12000, 1),
(41, 'P41', 46, 250, 11500, 1),
(42, 'P42', 220, 300, 66000, 1),
(43, 'E43', 45, 40, 1800, 1),
(44, 'E44', 351, 20, 7020, 1),
(45, 'E45', 1380, 8, 11040, 1),
(46, 'R46', -24, 5, -120, 1),
(47, 'R47', 260, 5, 1300, 1),
(48, 'W48', -64, 1, -64, 1),
(49, 'S49', 6000, 1, 6000, 1),
(50, 'S50', 4000, 1, 4000, 1),
(51, 'S51', 9444, 1, 9444, 1),
(52, 'S52', 5916, 1, 5916, 1),
(53, 'S53', 7800, 1, 7800, 1),
(54, 'S54', 12958, 1, 12958, 1),
(55, 'S55', 4980, 1, 4980, 1),
(56, 'S56', 1000, 1, 1000, 1),
(57, 'G57', 9686, 1, 9686, 1),
(58, 'G58', 14000, 1, 14000, 1),
(59, 'E59', -26, 10, -260, 1),
(60, 'E60', 0, 10, 0, 1),
(61, 'P61', 3700, 0, 0, 1),
(62, 'P62', 0, 2, 0, 1),
(63, 'T63', 8, 125, 1000, 1),
(64, 'T64', 24, 125, 3000, 1),
(65, 'T65', 50, 125, 6250, 1),
(66, 'T66', 20, 125, 2500, 1),
(67, 'T67', 15, 125, 1875, 1),
(68, 'T68', 32, 125, 4000, 1),
(69, 'T69', 34, 125, 4250, 1),
(70, 'T70', 24, 125, 3000, 1),
(71, 'T71', 20, 125, 2500, 1),
(72, 'T72', 18, 125, 2250, 1),
(73, 'T73', 31, 125, 3875, 1),
(74, 'F74', 0, 0, 0, 1),
(75, 'F75', 0, 0, 0, 1),
(76, 'F76', 0, 0, 0, 1),
(77, 'F77', 0, 0, 0, 1),
(78, 'F78', 0, 0, 0, 1),
(79, 'F79', 0, 0, 0, 1),
(80, 'F80', 0, 0, 0, 1),
(81, 'F81', 0, 0, 0, 1),
(82, 'F82', 0, 0, 0, 1),
(83, 'F83', 0, 0, 0, 1),
(84, 'F84', 0, 0, 0, 1),
(85, 'F85', 0, 550, 0, 1),
(86, 'None', 0, 0, 0, 1),
(87, 'F87', 5.7, 600, 3420, 1),
(88, 'F88', 12.6, 600, 7560, 1),
(89, 'F89', 8, 600, 4800, 1),
(90, 'R90', -100, 0, 0, 1),
(91, 'F91', 8, 250, 2000, 1),
(92, 'F92', 21, 250, 5250, 1),
(93, 'F93', 15.9, 250, 3975, 1),
(94, 'F94', 23.7, 250, 5925, 1),
(95, 'F95', 4.2, 250, 1050, 1),
(96, 'F96', 5.2, 250, 1300, 1),
(97, 'F97', 5.4, 250, 1350, 1),
(98, 'F98', 8.7, 150, 1305, 1),
(99, 'E99', 3.6, 40, 144, 1),
(100, 'F100', 5, 300, 1500, 1),
(101, 'F101', 4.3, 300, 1290, 1),
(102, 'F102', 4.4, 300, 1320, 1),
(103, 'F103', 16, 300, 4800, 1),
(104, 'F104', 10, 300, 3000, 1),
(105, 'F105', 6.5, 300, 1950, 1),
(106, 'Z106', 5, 125, 625, 1),
(107, 'T107', 8, 5, 40, 1),
(108, 'Z108', 150, 5, 750, 1),
(109, 'Z109', 100, 5, 500, 1),
(110, 'Z110', 150, 5, 750, 1),
(111, 'Z111', 5, 5, 25, 1),
(112, 'Z112', 5, 5, 25, 1),
(113, 'F113', 29.7, 300, 8910, 1),
(114, 'F114', 29, 300, 8700, 1),
(115, 'F115', 19.6, 230, 4508, 1),
(116, 'P116', 93, 141, 13113, 1),
(117, 'E117', 420, 86, 36120, 1),
(118, 'F118', 25.5, 560, 14280, 1),
(119, 'F119', 21.24, 360, 7646.4, 1),
(120, 'F120', 4.8, 360, 1728, 1),
(121, 'F121', 3.2, 360, 1152, 1),
(122, 'F122', 6.3, 360, 2268, 1),
(123, 'F123', 21.1, 360, 7596, 1),
(124, 'F124', 3.9, 360, 1404, 1),
(125, 'F125', 1, 360, 360, 1),
(126, 'F126', 3, 360, 1080, 1),
(127, 'F127', 3, 360, 1080, 1),
(128, 'F128', 10, 360, 3600, 1),
(129, 'C129', 9.5, 320, 3040, 1),
(130, 'C130', 2.5, 320, 800, 1),
(131, 'C131', 17.5, 320, 5600, 1),
(132, 'C132', 13.5, 320, 4320, 1),
(133, 'C133', 12.7, 320, 4064, 1),
(134, 'C134', 7, 320, 2240, 1),
(135, 'C135', 9.5, 320, 3040, 1),
(136, 'C136', 10.9, 320, 3488, 1),
(137, 'C137', 1.9, 320, 608, 1),
(138, 'C138', 2.3, 320, 736, 1),
(139, 'F139', -19.95, 335, -6683.25, 1),
(140, 'F140', 20.1, 330, 6633, 1),
(141, 'E141', 820, 30, 24600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub/order master`
--

CREATE TABLE `sub/order master` (
  `serial number` int(11) NOT NULL,
  `order name` varchar(255) NOT NULL,
  `month-year` int(11) NOT NULL,
  `order id` int(11) NOT NULL,
  `sub-order id` varchar(255) NOT NULL,
  `date order received` date NOT NULL,
  `date issued` date NOT NULL,
  `promised delivery date` date NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `folder reference` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `order code` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `product related instructions` text NOT NULL,
  `product notes` text NOT NULL,
  `printing details` text NOT NULL,
  `printing notes` text NOT NULL,
  `flag` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub/order master`
--

INSERT INTO `sub/order master` (`serial number`, `order name`, `month-year`, `order id`, `sub-order id`, `date order received`, `date issued`, `promised delivery date`, `vendor`, `folder reference`, `product`, `pattern`, `order code`, `total`, `product related instructions`, `product notes`, `printing details`, `printing notes`, `flag`) VALUES
(1, 'Men\'s Cycling T-shirt-2019-Dark Grey', 619000, 619010, '619010-1', '2019-06-10', '2019-06-10', '2019-06-30', 'Orthofit', '\\apace-retail', 'CyclingTshirt-Mens', 'M0018', 'Men\'s Cycling T-shirt-2019-Dark Grey-CyclingTshirt', 37, 'standard product', '6 inch zipper, open pockets', 'print as per design', '', 1),
(2, 'Men\'s Cycling T-shirt-2019-Ele Blue', 619000, 619010, '619010-2', '2019-06-10', '2019-06-10', '2019-06-30', 'Orthofit', '\\apace-retail', 'CyclingTshirt-Mens', 'M0018', 'Men\'s Cycling T-shirt-2019-Ele Blue-CyclingTshirt', 52, 'standard product', '6 inch zipper, open pockets', 'print as per design', '', 1),
(3, 'puneWolfpack', 619000, 619001, '619001-1', '2019-06-04', '2019-06-05', '2019-06-06', 'goyal', '/something', 't-shirt', 'M0001', 'puneWolfpack-t-shirt', 20, 'dfsdf', 'sdfsaf', 'sdfasfd', 'sadfasf', 1),
(9, 'test 4', 719000, 719001, '719001-1', '2019-07-22', '2019-07-22', '2019-07-22', 'Orthofit', 'ddsfasdf', 'CyclingTshirt-Mens', 'M0018', 'test 4-CyclingTshirt-Mens', 19, 'sadfasdf', 'sadfas', 'dfsdfs', 'dfsdfsd', 1),
(11, 'test 5', 719000, 719002, '719002-1', '2019-07-22', '2019-07-22', '2019-07-22', 'Local', '/something/something', 'Breakaway-Womens', 'W0004', 'test 5-Breakaway-Womens', 0, '123', '456', '789', 'qwe', 1),
(12, 'test 6', 719000, 719003, '719003-1', '2019-07-22', '2019-07-23', '2019-07-24', 'krishnile', '/something/test', 'CyclingTshirt-Womens', 'W0015', 'test 6-CyclingTshirt-Womens', 0, '123', 'asd', 'xzc', '456', 0),
(15, 'test 4', 719000, 719001, '719001-2', '2019-07-22', '2019-07-22', '2019-07-22', 'Goyal', 'sdafads', 'Peleton-Mens', 'M0013', 'test 4-Peleton-Mens', 0, 'sdafds', 'asdfas', 'fdfasd', 'fasdfdf', 1),
(16, 'test 4', 719000, 719001, '719001-3', '2019-07-22', '2019-07-22', '2019-07-22', 'krishnile', 'dffadfasfd', 'Tri suit-Womens', 'WTST01', 'test 4-Tri suit-Womens', 8, '12', '341', '56', '78', 1),
(17, 'test 4', 719000, 719001, '719001-4', '2019-07-22', '2019-07-22', '2019-07-22', 'Pioneer', 'qwer', 'Raglan-RN-Mens', 'M0002', 'test 4-Raglan-RN-Mens', 0, '1234\'test\'', '123\'hello\'', '1234', '1', 1),
(18, 'test order', 719000, 719004, '719004-1', '2019-07-22', '2019-07-23', '2019-07-24', 'ColorCraft-SonaliScreens', '/test/test/supertest/updated/reupdated', 'Echelon-Mens', 'MCBS01', 'test order-Echelon-Mens', 16, '12t', '34t', '56t', '78t', 1),
(19, 'test order', 719000, 719004, '719004-2', '2019-07-23', '2019-07-23', '2019-07-23', 'Orthofit', '/test', 'Singlet-Mens', 'MSGLT01', 'test order-Singlet-Mens', 33, '121\nhello', '23', '31', '42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uom master`
--

CREATE TABLE `uom master` (
  `serial number` int(11) NOT NULL,
  `uom` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uom master`
--

INSERT INTO `uom master` (`serial number`, `uom`, `active`) VALUES
(1, 'Kilo', 1),
(2, 'Meter', 1),
(3, 'Count', 1),
(4, 'Cone', 1),
(5, 'Roll', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor master`
--

CREATE TABLE `vendor master` (
  `serial number` int(11) NOT NULL,
  `vendor id` int(11) NOT NULL,
  `vendor type` varchar(255) NOT NULL,
  `vendor name` varchar(255) NOT NULL,
  `vendor address` text NOT NULL,
  `vendor contact` bigint(20) NOT NULL,
  `vendor email` varchar(255) NOT NULL,
  `vendor gst#` varchar(255) NOT NULL,
  `vendor pan#` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor master`
--

INSERT INTO `vendor master` (`serial number`, `vendor id`, `vendor type`, `vendor name`, `vendor address`, `vendor contact`, `vendor email`, `vendor gst#`, `vendor pan#`, `other`, `active`) VALUES
(1, 1, 'fabric', 'Goyal', 'Surat', 0, '', '', '', '', 1),
(2, 2, 'fabric', 'GVijay', 'Mumbai', 0, '', '', '', '', 1),
(3, 3, 'fabric', 'Pashupati', 'Gurgaon', 0, '', '', '', '', 1),
(4, 4, 'accessories', 'Bathija', 'Mumbai', 0, '', '', '', '', 1),
(5, 5, 'accessories', 'Berenis', 'Italy', 0, '', '', '', '', 1),
(6, 6, 'accessories', 'Sonatapes', 'Goa', 0, '', '', '', '', 1),
(7, 7, 'accessories', 'Rushabh Ent', 'Mumbai', 0, '', '', '', '', 1),
(8, 8, 'accessories', 'Kushal', 'Pune', 0, '', '', '', '', 1),
(9, 9, 'accessories', 'Vishal', 'Pune', 0, '', '', '', '', 1),
(10, 10, 'packaging', 'ExcelPoly', 'Pune', 0, '', '', '', '', 1),
(11, 11, 'packaging', 'JaiPlastic', 'Pune', 0, '', '', '', '', 1),
(12, 12, 'thread', 'ShreePoly', 'Pune', 0, '', '', '', '', 1),
(13, 13, 'accessories', 'Local', 'Pune', 0, '', '', '', '', 1),
(14, 14, 'stitching', 'SaiSports', 'Pune', 0, '', '', '', '', 1),
(15, 15, 'stitching', 'Orthofit', 'Pune', 0, '', '', '', '', 1),
(16, 16, 'stitching', 'AakashEnt', 'Pune', 0, '', '', '', '', 1),
(17, 17, 'stitching', 'Vaishvik', 'Mumbai', 0, '', '', '', '', 1),
(18, 18, 'printing', 'ColorCraft-SonaliScreens', 'Pune', 0, '', '', '', '', 1),
(19, 19, 'printing', 'OmkarArts', 'Pune', 0, '', '', '', '', 1),
(20, 20, 'printing', 'Pioneer', 'Pune', 0, '', '', '', '', 1),
(21, 21, 'packing', 'Bhavesh', 'Pune', 0, '', '', '', '', 1),
(22, 22, 'other', 'Pawar-KajiButton', 'Pune', 0, '', '', '', '', 1),
(23, 23, 'accessories', 'Bestway', 'Guangzhou', 0, '', '', '', '', 1),
(24, 24, 'readymade', 'Onkar-Lale', 'Pune', 0, '', '', '', '', 1),
(25, 25, 'readymade', 'krishnile', 'Pune', 0, '', '', '', '', 1),
(26, 26, 'readymade', 'ramesh rumal house', 'Mumbai', 0, '', '', '', '', 1),
(27, 27, 'readymade', 'maheshverma', 'Pune', 0, '', '', '', '', 1),
(28, 0, 'testupd', 'test', 'pune', 99999321231, 'test@gmail.com', 'test', 'test', 'test', 1),
(29, 0, 'test', 'etst', '', 0, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor type master`
--

CREATE TABLE `vendor type master` (
  `serial number` int(11) NOT NULL,
  `vendor type` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor type master`
--

INSERT INTO `vendor type master` (`serial number`, `vendor type`, `active`) VALUES
(1, 'stitching', 1),
(2, 'printing', 1),
(3, 'packing', 1),
(4, 'shipping', 1),
(5, 'fabric', 1),
(6, 'accessories', 1),
(7, 'packaging', 1),
(8, 'thread', 1),
(9, 'other', 1),
(10, 'readymade', 1),
(15, 'test', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`serial number`);

--
-- Indexes for table `material issue`
--
ALTER TABLE `material issue`
  ADD PRIMARY KEY (`serial number`);

--
-- Indexes for table `material master`
--
ALTER TABLE `material master`
  ADD PRIMARY KEY (`serial number`),
  ADD UNIQUE KEY `material id` (`material id`);

--
-- Indexes for table `material type master`
--
ALTER TABLE `material type master`
  ADD PRIMARY KEY (`serial number`),
  ADD UNIQUE KEY `material type` (`material type`);

--
-- Indexes for table `order details`
--
ALTER TABLE `order details`
  ADD PRIMARY KEY (`serial number`),
  ADD UNIQUE KEY `suborder id` (`suborder id`,`size`);

--
-- Indexes for table `product master`
--
ALTER TABLE `product master`
  ADD PRIMARY KEY (`serial number`),
  ADD UNIQUE KEY `product` (`product`,`gender`);

--
-- Indexes for table `raw material stock`
--
ALTER TABLE `raw material stock`
  ADD PRIMARY KEY (`serial number`);

--
-- Indexes for table `sub/order master`
--
ALTER TABLE `sub/order master`
  ADD PRIMARY KEY (`serial number`),
  ADD UNIQUE KEY `sub-order id` (`sub-order id`);

--
-- Indexes for table `uom master`
--
ALTER TABLE `uom master`
  ADD PRIMARY KEY (`serial number`),
  ADD UNIQUE KEY `uom` (`uom`);

--
-- Indexes for table `vendor master`
--
ALTER TABLE `vendor master`
  ADD PRIMARY KEY (`serial number`);

--
-- Indexes for table `vendor type master`
--
ALTER TABLE `vendor type master`
  ADD PRIMARY KEY (`serial number`),
  ADD UNIQUE KEY `vendor type` (`vendor type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `material issue`
--
ALTER TABLE `material issue`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `material master`
--
ALTER TABLE `material master`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `material type master`
--
ALTER TABLE `material type master`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order details`
--
ALTER TABLE `order details`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `product master`
--
ALTER TABLE `product master`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `raw material stock`
--
ALTER TABLE `raw material stock`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `sub/order master`
--
ALTER TABLE `sub/order master`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uom master`
--
ALTER TABLE `uom master`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor master`
--
ALTER TABLE `vendor master`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vendor type master`
--
ALTER TABLE `vendor type master`
  MODIFY `serial number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
