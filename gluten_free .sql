-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2017 at 02:15 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
DROP DATABASE IF EXISTS gluten_free;
CREATE DATABASE gluten_free;
--

use database gluten_free;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `food_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `food_name` varchar(150) NOT NULL,
  `wheretobuy` varchar(300) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `wheretobuy`) VALUES
(1, 'Quorn Hot Dogs', 'Supermarket'),
(2, 'Medium Roast Decaf Organic Arabica Coffee', 'Supermarket'),
(3, 'Warburtons Gluten & Wheat Free Seeded Sandwich Thins', 'Supermarket'),
(4, 'Quorn Meat Free Chicken Pieces', 'Supermarket'),
(5, 'McCain Oven Chips, Crinkle Cut', 'Supermarket'),
(6, 'Nimbus Late Harvest Dessert 2012 Wine', 'Supermarket'),
(7, 'Encona Farina Potato Starch Packets', 'Supermarket'),
(8, 'McCain Hash Browns', 'Supermarket'),
(9, 'Dunns River Gungo Peas Packets', 'Supermarket'),
(10, 'Raw Health Organic Raw Whole Cashew Butter', 'Supermarket'),
(11, 'Grilled Free Range Irish Pork T-Bone', 'Cafe'),
(12, 'Grilled Irish Premium Beef Fillet', 'Cafe'),
(13, 'Organic Irish Beef Burger', 'Cafe'),
(14, 'Organic Cottage Pie', 'Cafe'),
(15, 'Free Range Irish Chicken Wings', 'Cafe'),
(16, 'Thai Beef Salad', 'Cafe\r\n'),
(17, 'Gluten Free Seared Scallops', 'Cafe'),
(18, 'Hummus,Taboulleh & Tapenade', 'Cafe'),
(19, 'Mediterranean Chicken Sandwich', 'Cafe'),
(20, 'Deep Fried Calamari', 'Cafe'),
(21, ' Croquetas de Jamon', 'Restaurant'),
(22, 'Seafood Rigatoni', 'Restaurant'),
(23, 'Fillet Of Beef With Mushrooms & Tarragon', 'Restaurant'),
(24, 'Monkfish On The Bone', 'Restaurant'),
(25, 'Halibut With Walnut Relish', 'Restaurant'),
(26, 'Slow Roast Lamb Belly', 'Restaurant'),
(27, 'Baked Portobello Mushroom', 'Restaurant'),
(28, ' Mixed Thai Dim Sum', 'Restaurant'),
(29, ' Honey Crumbed Prawns', 'Restaurant'),
(30, 'Duck Spring Rolls', 'Restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
  `location_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `foodtype` varchar(60) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `long` float(10,6) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`location_id`, `name`, `address`, `type`, `foodtype`, `lat`, `long`) VALUES
(1, 'Marks & Spencers', '31, 3b-4a Excise Walk, Clarion Quay Dublin 1', 'Supermarket', 'General', 53.348858, -6.243628),
(2, 'Tesco Express', 'Moland House, Talbot St, North City, Dublin 1', 'Supermarket', 'General', 53.350552, -6.256160),
(3, 'Musashi IFSC', 'Unit 2, Burton Hall, Custome House Square, Mayor Street Lower, North Dock, Dublin 1', 'Restaurant', 'Sushi', 53.349541, -6.243356),
(4, 'Seven Wonders', 'Excise Walk, IFSC, Dublin 1', 'Cafe', 'Sandwiches,soups', 53.348526, -6.243672),
(5, 'Milanos', '6 Excise Walk, North Wall, Clarion Quay, Dublin', 'Restaurant', 'Italians', 53.347912, -6.243787),
(6, 'Starbucks Coffee', 'Unit 32/33, IFSC, The Custom House Quay Building, Custom House Quay, North Dock, Dublin 1', 'Cafe', 'Sandwiches', 53.349403, -6.247959),
(7, 'Caffe Nero', 'Unit 5, Excise Walk, North Dock, Dublin 1', 'Cafe', 'Confectionaries and soups', 53.348217, -6.243672),
(8, 'Iceland', '34 Talbot St., Mountjoy, Dublin 1', 'Supermarket', 'General', 53.351154, -6.252338),
(9, 'Madina Desi Curry Co', '60 Mary St, North City, Dublin 1', 'Restaurant', 'Indian food', 53.348595, -6.268217),
(10, 'Starbucks', '32 O''Connell Street Lower, North City, Dublin 1', 'Cafe', 'Sandwiches', 53.347595, -6.259677),
(11, 'The Drunken Fish', 'The Excise Building, Mayor Street Lower, IFSC, Dublin 1', 'Restaurant', 'Korean food', 53.349159, -6.243510),
(12, 'Supervalu', '27 - 32 Talbot St, Dublin, Dublin 1', 'Supermarket', 'General', 53.351151, -6.252703),
(13, 'Beshoff Bros', '71 Dame Street, Temple Bar, Dublin 2', 'Restaurant', 'Chipper (only gluten free chipper in dublin)', 53.344307, -6.265997),
(14, 'Cornucopia', '19-20 Wicklow St, Dublin 2', 'Restaurant', 'Vegetarian', 53.343094, -6.261418),
(15, 'Supermacs', '45/46 O''Connell St, North City, Dublin', 'Restaurant', 'Fast food (chips are gluten free)', 53.348171, -6.260002),
(16, 'Supermacs', '47-49 Talbot Street, Mountjoy, Dublin 1', 'Restaurant', 'Fast food (chips are gluten free)', 53.351418, -6.250362),
(17, 'O''Briens Sandwich bar', 'Ilac Shopping Centre, Henry St, North City, Dublinn', 'Cafe', 'Sandwiches and salads', 53.350559, -6.264071),
(18, 'Dunnes Stores', '48-50 Henry Street, North City, Dublin 1', 'Supermarket', 'General', 53.349888, -6.265444),
(19, 'Aldi', '38-41 Parnell St, North City, Dublin 1', 'Supermarket', 'General', 53.350315, -6.265975),
(20, 'Marks and Spencers', '24-29 Mary Street, North City, Dublin', 'Supermarket', 'General', 53.348915, -6.264683),
(21, 'ITSA', 'Arnotts, Abbey Street', 'Cafe', 'Bagels', 53.348156, -6.262661),
(22, 'Butlers Chocolate Cafe', '4 Liffey Street Lower, North City, Dublin 1', 'Cafe', 'Conectionaries', 53.347050, -6.263205),
(23, 'Foodie', 'North Dock, Dublin', 'Cafe', 'Breakfasts', 53.349163, -6.243826),
(24, 'Bunsen', '22 Essex St E, Temple Bar, Dublin 2', 'Restaurant', 'Burgers and chips', 53.345577, -6.264364),
(25, 'Pablo Picante', '22 Fleet St, Temple Bar, Dublin', 'Restaurant', 'Burrito bowls', 53.345676, -6.261448),
(26, 'Tesco Metro', '40-47 Fleet St, Temple Bar, Dublin 2', 'Supermarket', 'General', 53.345699, -6.259986),
(27, 'Super/Valu Aston Quay', '14-18 Aston Quay, Temple Bar, Dublin 2', 'Supermarket', 'General', 53.346527, -6.260260),
(28, 'Costa Coffee', 'North Dock, Dublin', 'Cafe', 'Coffees and certain foods', 53.348972, -6.227762),
(29, 'Lidl', '1 Moore St, North City, Dublin 1', 'Supermarket', 'General', 53.351135, -6.263256),
(30, 'Cafe Azteca', '19 Lord Edward St, Dublin', 'Cafe', 'Mexican foods', 53.343719, -6.269084),
(31, 'Captain Americas', '44 Grafton Street, Dublin 2', 'Restaurant', 'Fast food', 53.340488, -6.260619),
(32, 'The Brew Dock', '1 Amiens St, Mountjoy, Dublin 1', 'Restaurant', 'Beers', 53.350090, -6.251070),
(33, 'Caffe Nero', '9 O''Connell Street Lower, North City, Dublin 1', 'Cafe', 'Confectionaries and soups', 53.348244, -6.259053),
(34, 'The Oriental Emporium', '30/32 Abbey Street Upper, North City, Dublin', 'Supermarket', 'General', 53.347633, -6.264946),
(35, 'The Bagel Bar Coffee House', '18 Liffey Street Lower, North City, Dublin', 'Cafe', 'Bagels', 53.347862, -6.263736),
(36, 'Tesco', 'Jervis Street, Dublin', 'Supermarket', 'General', 53.347958, -6.265229);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
