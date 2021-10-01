-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema inventory_management
--

CREATE DATABASE IF NOT EXISTS inventory_management;
USE inventory_management;

--
-- Definition of table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id`,`name`,`phone`,`email`,`address`) VALUES 
 (5,'Unilever Bangladesh','01715412675','unilever@gmail.com','Dhaka'),
 (6,'Keya Cosmatic Ltd','018903403434','keyacosmatic@gmail.com','Dhaka'),
 (7,'Nestle Ltd','01984843384','nestleltd@gmail.com','Gajipur'),
 (8,'Bombay Swetes Ltd','0173339933','bombay@yahoo.com','Narayangonj');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `product_code` varchar(45) NOT NULL,
  `cost_price` varchar(45) NOT NULL,
  `retail_price` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `reodr_level` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`,`pname`,`description`,`product_code`,`cost_price`,`retail_price`,`qty`,`reodr_level`) VALUES 
 (8,'Close Up Toothpast','Toothpast','100','140','115','150','20'),
 (9,'Keya Laundry soap','soap','200','30','28','400','50'),
 (10,'Bombay potato Chips','Potato Chips','300','20','18','800','100'),
 (11,'Bombay Chanachur','Chanachur','301','40','35','100','30'),
 (12,'Nescafe','Cofe','400','500','465','60','5'),
 (13,'Kitkat','Chocolate','401','60','50','700','100');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier` varchar(45) NOT NULL,
  `subtotal` int(11) unsigned NOT NULL,
  `pay` int(10) unsigned NOT NULL,
  `balance` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`id`,`supplier`,`subtotal`,`pay`,`balance`) VALUES 
 (1,'Unini Liver',4875,22,4853),
 (2,'Unini Liver',23995,0,23995),
 (3,'Unini Liver',7500,0,7500),
 (4,'Unini Liver',7500,0,7500),
 (5,'Unini Liver',7500,0,7500),
 (6,'Unini Liver',7500,0,7500),
 (7,'Unini Liver',7500,0,7500),
 (8,'Unini Liver',750,0,750),
 (9,'Unini Liver',750,0,750),
 (10,'Unini Liver',750,0,750),
 (11,'Unini Liver',2250,10,2240),
 (12,'Unini Liver',750,0,750),
 (13,'Unini Liver',750,0,750),
 (14,'Unini Liver',1875,0,1875),
 (15,'Unini Liver',2250,0,2250),
 (16,'Keya Cosmatic Ltd',59350,55000,4350);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `purchase_item`
--

DROP TABLE IF EXISTS `purchase_item`;
CREATE TABLE `purchase_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `rprice` int(10) unsigned NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_item`
--

/*!40000 ALTER TABLE `purchase_item` DISABLE KEYS */;
INSERT INTO `purchase_item` (`id`,`purid`,`pid`,`rprice`,`qty`,`total`) VALUES 
 (1,12,200,75,10,750),
 (2,13,200,75,10,750),
 (3,14,200,75,10,750),
 (4,14,200,75,15,1125),
 (5,15,200,75,30,2250),
 (6,16,100,115,100,11500),
 (7,16,300,18,500,9000),
 (8,16,200,28,200,5600),
 (9,16,400,465,50,23250),
 (10,16,401,50,200,10000);
/*!40000 ALTER TABLE `purchase_item` ENABLE KEYS */;


--
-- Definition of table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subtotal` int(10) unsigned NOT NULL,
  `pay` int(10) unsigned NOT NULL,
  `balance` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`id`,`subtotal`,`pay`,`balance`) VALUES 
 (1,1125,1200,75);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;


--
-- Definition of table `sales_product`
--

DROP TABLE IF EXISTS `sales_product`;
CREATE TABLE `sales_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_product`
--

/*!40000 ALTER TABLE `sales_product` DISABLE KEYS */;
INSERT INTO `sales_product` (`id`,`sales_id`,`pid`,`price`,`qty`,`total`) VALUES 
 (1,1,200,75,15,1125);
/*!40000 ALTER TABLE `sales_product` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
