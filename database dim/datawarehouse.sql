-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 12:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datawarehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_customer`
--

CREATE TABLE `dim_customer` (
  `id` int(11) NOT NULL,
  `nomer_customer` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `negara` varchar(50) NOT NULL,
  `kode_pos` varchar(50) DEFAULT NULL,
  `limit_kridit` varchar(50) NOT NULL,
  `nomer_sales` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_customer`
--

INSERT INTO `dim_customer` (`id`, `nomer_customer`, `nama`, `no_hp`, `negara`, `kode_pos`, `limit_kridit`, `nomer_sales`, `kota`) VALUES
(1, '148', 'Dragon Souveniers, Ltd.', '+65 221 7555', 'Singapore', '079903', '103800.0', '1621', 'Singapore'),
(2, '177', 'Osaka Souveniers Co.', '+81 06 6342 5555', 'Japan', ' 530-0003', '81200.0', '1621', 'Kita-ku'),
(3, '211', 'King Kong Collectables, Co.', '+852 2251 1555', 'Hong Kong', NULL, '58600.0', '1621', 'Central Hong Kong'),
(4, '385', 'Cruz & Sons Co.', '+63 2 555 3587', 'Philippines', '1227 MM', '81500.0', '1621', 'Makati City'),
(5, '398', 'Tokyo Collectables, Ltd', '+81 3 3584 0555', 'Japan', '106-0032', '94400.0', '1621', 'Minato-ku'),
(6, '114', 'Australian Collectors, Co.', '03 9520 4555', 'Australia', '3004', '117300.0', '1611', 'Melbourne'),
(7, '276', 'Anna\'s Decorations, Ltd', '02 9936 8555', 'Australia', '2060', '107800.0', '1611', 'North Sydney'),
(8, '282', 'Souveniers And Things Co.', '+61 2 9495 8555', 'Australia', '2067', '93300.0', '1611', 'Chatswood'),
(9, '333', 'Australian Gift Network, Co', '61-7-3844-6555', 'Australia', '4101', '51600.0', '1611', 'South Brisbane'),
(10, '471', 'Australian Collectables, Ltd', '61-9-3844-6555', 'Australia', '3150', '60300.0', '1611', 'Glen Waverly'),
(11, '166', 'Handji Gifts& Co', '+65 224 1555', 'Singapore', '069045', '97900.0', '1612', 'Singapore'),
(12, '323', 'Down Under Souveniers, Inc', '+64 9 312 5555', 'New Zealand', NULL, '88000.0', '1612', 'Auckland  '),
(13, '357', 'GiftsForHim.com', '64-9-3763555', 'New Zealand', NULL, '77700.0', '1612', 'Auckland'),
(14, '412', 'Extreme Desk Decorations, Ltd', '04 499 9555', 'New Zealand', NULL, '86800.0', '1612', 'Wellington'),
(15, '496', 'Kelly\'s Gift Shop', '+64 9 5555500', 'New Zealand', NULL, '110000.0', '1612', 'Auckland  '),
(16, '146', 'Saveley & Henriot, Co.', '78.32.5555', 'France', '69004', '123900.0', '1337', 'Lyon'),
(17, '172', 'La Corne D\'abondance, Co.', '(1) 42.34.2555', 'France', '75012', '84300.0', '1337', 'Paris'),
(18, '250', 'Lyon Souveniers', '+33 1 46 62 7555', 'France', '75508', '68100.0', '1337', 'Paris'),
(19, '350', 'Marseille Mini Autos', '91.24.4555', 'France', '13008', '65000.0', '1337', 'Marseille'),
(20, '353', 'Reims Collectables', '26.47.1555', 'France', '51100', '81100.0', '1337', 'Reims'),
(21, '406', 'Auto Canal+ Petit', '(1) 47.55.6555', 'France', '75016', '95000.0', '1337', 'Paris'),
(22, '103', 'Atelier graphique', '40.32.2555', 'France', '44000', '21000.0', '1370', 'Nantes'),
(23, '119', 'La Rochelle Gifts', '40.67.8555', 'France', '44000', '118200.0', '1370', 'Nantes'),
(24, '141', 'Euro+ Shopping Channel', '(91) 555 94 44', 'Spain', '28034', '227600.0', '1370', 'Madrid'),
(25, '171', 'Daedalus Designs Imports', '20.16.1555', 'France', '59000', '82900.0', '1370', 'Lille'),
(26, '209', 'Mini Caravy', '88.60.1555', 'France', '67000', '53800.0', '1370', 'Strasbourg'),
(27, '242', 'Alpha Cognac', '61.77.6555', 'France', '31000', '61100.0', '1370', 'Toulouse'),
(28, '256', 'Auto Associés & Cie.', '30.59.8555', 'France', '78000', '77900.0', '1370', 'Versailles'),
(29, '145', 'Danish Wholesale Imports', '31 12 3555', 'Denmark', '1734', '83400.0', '1401', 'Kobenhavn'),
(30, '227', 'Heintze Collectables', '86 21 3555', 'Denmark', '8200', '120800.0', '1401', 'Århus'),
(31, '249', 'Amica Models & Co.', '011-4988555', 'Italy', '10100', '113000.0', '1401', 'Torino'),
(32, '278', 'Rovelli Gifts', '035-640555', 'Italy', '24100', '119600.0', '1401', 'Bergamo'),
(33, '314', 'Petit Auto', '(02) 5554 67', 'Belgium', 'B-1180', '79900.0', '1401', 'Bruxelles'),
(34, '381', 'Royale Belge', '(071) 23 67 2555', 'Belgium', 'B-6000', '23500.0', '1401', 'Charleroi'),
(35, '382', 'Salzburg Collectables', '6562-9555', 'Austria', '5020', '71700.0', '1401', 'Salzburg'),
(36, '386', 'L\'ordine Souveniers', '0522-556555', 'Italy', '42100', '121400.0', '1401', 'Reggio Emilia'),
(37, '452', 'Mini Auto Werke', '7675-3555', 'Austria', '8010', '45300.0', '1401', 'Graz'),
(38, '473', 'Frau da Collezione', '+39 022515555', 'Italy', NULL, '34800.0', '1401', 'Milan'),
(39, '186', 'Toys of Finland, Co.', '90-224 8555', 'Finland', '21240', '96500.0', '1501', 'Helsinki'),
(40, '187', 'AV Stores, Co.', '(171) 555-1555', 'UK', 'EC2 5NT', '136800.0', '1501', 'Manchester'),
(41, '201', 'UK Collectables, Ltd.', '(171) 555-2282', 'UK', 'WX1 6LT', '92700.0', '1501', 'Liverpool'),
(42, '240', 'giftsbymail.co.uk', '(198) 555-8888', 'UK', 'PO31 7PJ', '93900.0', '1501', 'Cowes'),
(43, '311', 'Oulu Toy Supplies, Inc.', '981-443655', 'Finland', '90110', '90500.0', '1501', 'Oulu'),
(44, '324', 'Stylish Desk Decors, Co.', '(171) 555-0297', 'UK', 'WX3 6FW', '77000.0', '1501', 'London'),
(45, '334', 'Suominen Souveniers', '+358 9 8045 555', 'Finland', 'FIN-02271', '98800.0', '1501', 'Espoo'),
(46, '489', 'Double Decker Gift Stores, Ltd', '(171) 555-7555', 'UK', 'WA1 1DP', '43300.0', '1501', 'London'),
(47, '121', 'Baane Mini Imports', '07-98 9555', 'Norway', '4110', '81700.0', '1504', 'Stavern'),
(48, '128', 'Blauer See Auto, Co.', '+49 69 66 90 2555', 'Germany', '60528', '59700.0', '1504', 'Frankfurt'),
(49, '144', 'Volvo Model Replicas, Co', '0921-12 3555', 'Sweden', 'S-958 22', '53100.0', '1504', 'Luleå'),
(50, '167', 'Herkku Gifts', '+47 2267 3215', 'Norway  ', 'N 5804', '96800.0', '1504', 'Bergen'),
(51, '189', 'Clover Collections, Co.', '+353 1862 1555', 'Ireland', '2', '69400.0', '1504', 'Dublin'),
(52, '259', 'Toms Spezialitäten, Ltd', '0221-5554327', 'Germany', '50739', '120400.0', '1504', 'Köln'),
(53, '299', 'Norway Gifts By Mail, Co.', '+47 2212 1555', 'Norway  ', 'N 0106', '95100.0', '1504', 'Oslo'),
(54, '415', 'Bavarian Collectables Imports, Co.', ' +49 89 61 08 9555', 'Germany', '80686', '77000.0', '1504', 'Munich'),
(55, '448', 'Scandinavian Gift Ideas', '0695-34 6555', 'Sweden', 'S-844 67', '116400.0', '1504', 'Bräcke'),
(56, '216', 'Enaco Distributors', '(93) 203 4555', 'Spain', '08022', '60300.0', '1702', 'Barcelona'),
(57, '298', 'Vida Sport, Ltd', '0897-034555', 'Switzerland', '1203', '141300.0', '1702', 'Genève'),
(58, '344', 'CAF Imports', '+34 913 728 555', 'Spain', '28023', '59600.0', '1702', 'Madrid'),
(59, '376', 'Precious Collectables', '0452-076555', 'Switzerland', '3012', '0.0', '1702', 'Bern'),
(60, '458', 'Corrida Auto Replicas, Ltd', '(91) 555 22 82', 'Spain', '28023', '104600.0', '1702', 'Madrid'),
(61, '484', 'Iberia Gift Imports, Corp.', '(95) 555 82 82', 'Spain', '41101', '65700.0', '1702', 'Sevilla'),
(62, '124', 'Mini Gifts Distributors Ltd.', '4155551450', 'USA', '97562', '210500.0', '1165', 'San Rafael'),
(63, '129', 'Mini Wheels Co.', '6505555787', 'USA', '94217', '64600.0', '1165', 'San Francisco'),
(64, '161', 'Technics Stores Inc.', '6505556809', 'USA', '94217', '84600.0', '1165', 'Burlingame'),
(65, '321', 'Corporate Gift Ideas Co.', '6505551386', 'USA', '94217', '105000.0', '1165', 'San Francisco'),
(66, '450', 'The Sharp Gifts Warehouse', '4085553659', 'USA', '94217', '77600.0', '1165', 'San Jose'),
(67, '487', 'Signal Collectibles Ltd.', '4155554312', 'USA', '94217', '60300.0', '1165', 'Brisbane'),
(68, '112', 'Signal Gift Stores', '7025551838', 'USA', '83030', '71800.0', '1166', 'Las Vegas'),
(69, '205', 'Toys4GrownUps.com', '6265557265', 'USA', '90003', '90700.0', '1166', 'Pasadena'),
(70, '219', 'Boards & Toys Co.', '3105552373', 'USA', '92561', '11000.0', '1166', 'Glendale'),
(71, '239', 'Collectable Mini Designs Co.', '7605558146', 'USA', '91217', '105000.0', '1166', 'San Diego'),
(72, '347', 'Men \'R\' US Retailers, Ltd.', '2155554369', 'USA', '91003', '57700.0', '1166', 'Los Angeles'),
(73, '475', 'West Coast Collectables Co.', '3105553722', 'USA', '94019', '55400.0', '1166', 'Burbank'),
(74, '173', 'Cambridge Collectables Co.', '6175555555', 'USA', '51247', '43400.0', '1188', 'Cambridge'),
(75, '204', 'Online Mini Collectables', '6175557555', 'USA', '58339', '68700.0', '1188', 'Brickhaven'),
(76, '320', 'Mini Creations Ltd.', '5085559555', 'USA', '50553', '94500.0', '1188', 'New Bedford'),
(77, '339', 'Classic Gift Ideas, Inc', '2155554695', 'USA', '71270', '81100.0', '1188', 'Philadelphia'),
(78, '379', 'Collectables For Less Inc.', '6175558555', 'USA', '58339', '70700.0', '1188', 'Brickhaven'),
(79, '495', 'Diecast Collectables', '6175552555', 'USA', '51003', '85100.0', '1188', 'Boston'),
(80, '157', 'Diecast Classics Inc.', '2155551555', 'USA', '70267', '100600.0', '1216', 'Allentown'),
(81, '198', 'Auto-Moto Classics Inc.', '6175558428', 'USA', '58339', '23000.0', '1216', 'Brickhaven'),
(82, '286', 'Marta\'s Replicas Co.', '6175558555', 'USA', '51247', '123700.0', '1216', 'Cambridge'),
(83, '362', 'Gifts4AllAges.com', '6175559555', 'USA', '51003', '41900.0', '1216', 'Boston'),
(84, '363', 'Online Diecast Creations Co.', '6035558647', 'USA', '62005', '114200.0', '1216', 'Nashua'),
(85, '462', 'FunGiftIdeas.com', '5085552555', 'USA', '50553', '85800.0', '1216', 'New Bedford'),
(86, '151', 'Muscle Machine Inc', '2125557413', 'USA', '10022', '138500.0', '1286', 'NYC'),
(87, '168', 'American Souvenirs Inc', '2035557845', 'USA', '97823', '0.0', '1286', 'New Haven'),
(88, '181', 'Vitachrome Inc.', '2125551500', 'USA', '10022', '76400.0', '1286', 'NYC'),
(89, '233', 'Québec Home Shopping Network', '(514) 555-8054', 'Canada', 'H1J 1C3', '48700.0', '1286', 'Montréal'),
(90, '424', 'Classic Legends Inc.', '2125558493', 'USA', '10022', '67500.0', '1286', 'NYC'),
(91, '455', 'Super Scale Inc.', '2035559545', 'USA', '97823', '95400.0', '1286', 'New Haven'),
(92, '456', 'Microscale Inc.', '2125551957', 'USA', '10022', '39800.0', '1286', 'NYC'),
(93, '131', 'Land of Toys Inc.', '2125557818', 'USA', '10022', '114900.0', '1323', 'NYC'),
(94, '175', 'Gift Depot Inc.', '2035552570', 'USA', '97562', '84300.0', '1323', 'Bridgewater'),
(95, '202', 'Canadian Gift Exchange Network', '(604) 555-3392', 'Canada', 'V3F 2K1', '90300.0', '1323', 'Vancouver'),
(96, '260', 'Royal Canadian Collectables, Ltd.', '(604) 555-4555', 'Canada', 'T2F 8M4', '89600.0', '1323', 'Tsawassen'),
(97, '319', 'Mini Classics', '9145554562', 'USA', '24067', '102700.0', '1323', 'White Plains'),
(98, '328', 'Tekni Collectables Inc.', '2015559350', 'USA', '94019', '43000.0', '1323', 'Newark'),
(99, '447', 'Gift Ideas Corp.', '2035554407', 'USA', '97561', '49700.0', '1323', 'Glendale'),
(100, '486', 'Motor Mint Distributors Inc.', '2155559857', 'USA', '71270', '72600.0', '1323', 'Philadelphia');

-- --------------------------------------------------------

--
-- Table structure for table `dim_kantor`
--

CREATE TABLE `dim_kantor` (
  `id` int(11) NOT NULL,
  `kode_kantor` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `no_kantor` varchar(50) NOT NULL,
  `negara` varchar(50) NOT NULL,
  `kode_pos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_kantor`
--

INSERT INTO `dim_kantor` (`id`, `kode_kantor`, `kota`, `no_kantor`, `negara`, `kode_pos`) VALUES
(1, '1', 'San Francisco', '+1 650 219 4782', 'USA', '94080'),
(2, '2', 'Boston', '+1 215 837 0825', 'USA', '02107'),
(3, '3', 'NYC', '+1 212 555 3000', 'USA', '10022'),
(4, '4', 'Paris', '+33 14 723 4404', 'France', '75017'),
(5, '5', 'Tokyo', '+81 33 224 5000', 'Japan', '102-8578'),
(6, '6', 'Sydney', '+61 2 9264 2451', 'Australia', 'NSW 2010'),
(7, '7', 'London', '+44 20 7877 2041', 'UK', 'EC2N 1HN');

-- --------------------------------------------------------

--
-- Table structure for table `dim_karyawan`
--

CREATE TABLE `dim_karyawan` (
  `id` int(11) NOT NULL,
  `no_karyawan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kode_kantor` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `negara` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dim_karyawan`
--

INSERT INTO `dim_karyawan` (`id`, `no_karyawan`, `email`, `kode_kantor`, `job`, `no_hp`, `kota`, `negara`) VALUES
(1, '1002', 'dmurphy@classicmodelcars.com', '1', 'President', '+1 650 219 4782', 'San Francisco', 'USA'),
(2, '1056', 'mpatterso@classicmodelcars.com', '1', 'VP Sales', '+1 650 219 4782', 'San Francisco', 'USA'),
(3, '1076', 'jfirrelli@classicmodelcars.com', '1', 'VP Marketing', '+1 650 219 4782', 'San Francisco', 'USA'),
(4, '1143', 'abow@classicmodelcars.com', '1', 'Sales Manager (NA)', '+1 650 219 4782', 'San Francisco', 'USA'),
(5, '1165', 'ljennings@classicmodelcars.com', '1', 'Sales Rep', '+1 650 219 4782', 'San Francisco', 'USA'),
(6, '1166', 'lthompson@classicmodelcars.com', '1', 'Sales Rep', '+1 650 219 4782', 'San Francisco', 'USA'),
(7, '1188', 'jfirrelli@classicmodelcars.com', '2', 'Sales Rep', '+1 215 837 0825', 'Boston', 'USA'),
(8, '1216', 'spatterson@classicmodelcars.com', '2', 'Sales Rep', '+1 215 837 0825', 'Boston', 'USA'),
(9, '1286', 'ftseng@classicmodelcars.com', '3', 'Sales Rep', '+1 212 555 3000', 'NYC', 'USA'),
(10, '1323', 'gvanauf@classicmodelcars.com', '3', 'Sales Rep', '+1 212 555 3000', 'NYC', 'USA'),
(11, '1102', 'gbondur@classicmodelcars.com', '4', 'Sale Manager (EMEA)', '+33 14 723 4404', 'Paris', 'France'),
(12, '1337', 'lbondur@classicmodelcars.com', '4', 'Sales Rep', '+33 14 723 4404', 'Paris', 'France'),
(13, '1370', 'ghernande@classicmodelcars.com', '4', 'Sales Rep', '+33 14 723 4404', 'Paris', 'France'),
(14, '1401', 'pcastillo@classicmodelcars.com', '4', 'Sales Rep', '+33 14 723 4404', 'Paris', 'France'),
(15, '1702', 'mgerard@classicmodelcars.com', '4', 'Sales Rep', '+33 14 723 4404', 'Paris', 'France'),
(16, '1621', 'mnishi@classicmodelcars.com', '5', 'Sales Rep', '+81 33 224 5000', 'Tokyo', 'Japan'),
(17, '1625', 'ykato@classicmodelcars.com', '5', 'Sales Rep', '+81 33 224 5000', 'Tokyo', 'Japan'),
(18, '1088', 'wpatterson@classicmodelcars.com', '6', 'Sales Manager (APAC)', '+61 2 9264 2451', 'Sydney', 'Australia'),
(19, '1611', 'afixter@classicmodelcars.com', '6', 'Sales Rep', '+61 2 9264 2451', 'Sydney', 'Australia'),
(20, '1612', 'pmarsh@classicmodelcars.com', '6', 'Sales Rep', '+61 2 9264 2451', 'Sydney', 'Australia'),
(21, '1619', 'tking@classicmodelcars.com', '6', 'Sales Rep', '+61 2 9264 2451', 'Sydney', 'Australia'),
(22, '1501', 'lbott@classicmodelcars.com', '7', 'Sales Rep', '+44 20 7877 2041', 'London', 'UK'),
(23, '1504', 'bjones@classicmodelcars.com', '7', 'Sales Rep', '+44 20 7877 2041', 'London', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `fakta`
--

CREATE TABLE `fakta` (
  `id` int(50) NOT NULL,
  `nomer_customer` varchar(50) NOT NULL,
  `kode_kantor` varchar(50) DEFAULT NULL,
  `no_karyawan` varchar(50) NOT NULL,
  `seles` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakta`
--

INSERT INTO `fakta` (`id`, `nomer_customer`, `kode_kantor`, `no_karyawan`, `seles`) VALUES
(1, '62', NULL, '5', '1165'),
(2, '63', NULL, '5', '1165'),
(3, '64', NULL, '5', '1165'),
(4, '65', NULL, '5', '1165'),
(5, '66', NULL, '5', '1165'),
(6, '67', NULL, '5', '1165'),
(7, '68', NULL, '6', '1166'),
(8, '69', NULL, '6', '1166'),
(9, '70', NULL, '6', '1166'),
(10, '71', NULL, '6', '1166'),
(11, '72', NULL, '6', '1166'),
(12, '73', NULL, '6', '1166'),
(13, '74', NULL, '7', '1188'),
(14, '75', NULL, '7', '1188'),
(15, '76', NULL, '7', '1188'),
(16, '77', NULL, '7', '1188'),
(17, '78', NULL, '7', '1188'),
(18, '79', NULL, '7', '1188'),
(19, '80', NULL, '8', '1216'),
(20, '81', NULL, '8', '1216'),
(21, '82', NULL, '8', '1216'),
(22, '83', NULL, '8', '1216'),
(23, '84', NULL, '8', '1216'),
(24, '85', NULL, '8', '1216'),
(25, '86', NULL, '9', '1286'),
(26, '87', NULL, '9', '1286'),
(27, '88', NULL, '9', '1286'),
(28, '89', NULL, '9', '1286'),
(29, '90', NULL, '9', '1286'),
(30, '91', NULL, '9', '1286'),
(31, '92', NULL, '9', '1286'),
(32, '93', NULL, '10', '1323'),
(33, '94', NULL, '10', '1323'),
(34, '95', NULL, '10', '1323'),
(35, '96', NULL, '10', '1323'),
(36, '97', NULL, '10', '1323'),
(37, '98', NULL, '10', '1323'),
(38, '99', NULL, '10', '1323'),
(39, '100', NULL, '10', '1323'),
(40, '16', NULL, '12', '1337'),
(41, '17', NULL, '12', '1337'),
(42, '18', NULL, '12', '1337'),
(43, '19', NULL, '12', '1337'),
(44, '20', NULL, '12', '1337'),
(45, '21', NULL, '12', '1337'),
(46, '22', NULL, '13', '1370'),
(47, '23', NULL, '13', '1370'),
(48, '24', NULL, '13', '1370'),
(49, '25', NULL, '13', '1370'),
(50, '26', NULL, '13', '1370'),
(51, '27', NULL, '13', '1370'),
(52, '28', NULL, '13', '1370'),
(53, '29', NULL, '14', '1401'),
(54, '30', NULL, '14', '1401'),
(55, '31', NULL, '14', '1401'),
(56, '32', NULL, '14', '1401'),
(57, '33', NULL, '14', '1401'),
(58, '34', NULL, '14', '1401'),
(59, '35', NULL, '14', '1401'),
(60, '36', NULL, '14', '1401'),
(61, '37', NULL, '14', '1401'),
(62, '38', NULL, '14', '1401'),
(63, '56', NULL, '15', '1702'),
(64, '57', NULL, '15', '1702'),
(65, '58', NULL, '15', '1702'),
(66, '59', NULL, '15', '1702'),
(67, '60', NULL, '15', '1702'),
(68, '61', NULL, '15', '1702'),
(69, '1', NULL, '16', '1621'),
(70, '2', NULL, '16', '1621'),
(71, '3', NULL, '16', '1621'),
(72, '4', NULL, '16', '1621'),
(73, '5', NULL, '16', '1621'),
(74, '6', NULL, '19', '1611'),
(75, '7', NULL, '19', '1611'),
(76, '8', NULL, '19', '1611'),
(77, '9', NULL, '19', '1611'),
(78, '10', NULL, '19', '1611'),
(79, '11', NULL, '20', '1612'),
(80, '12', NULL, '20', '1612'),
(81, '13', NULL, '20', '1612'),
(82, '14', NULL, '20', '1612'),
(83, '15', NULL, '20', '1612'),
(84, '39', NULL, '22', '1501'),
(85, '40', NULL, '22', '1501'),
(86, '41', NULL, '22', '1501'),
(87, '42', NULL, '22', '1501'),
(88, '43', NULL, '22', '1501'),
(89, '44', NULL, '22', '1501'),
(90, '45', NULL, '22', '1501'),
(91, '46', NULL, '22', '1501'),
(92, '47', NULL, '23', '1504'),
(93, '48', NULL, '23', '1504'),
(94, '49', NULL, '23', '1504'),
(95, '50', NULL, '23', '1504'),
(96, '51', NULL, '23', '1504'),
(97, '52', NULL, '23', '1504'),
(98, '53', NULL, '23', '1504'),
(99, '54', NULL, '23', '1504'),
(100, '55', NULL, '23', '1504');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
