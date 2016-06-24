-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.16


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema rajnish
--

CREATE DATABASE IF NOT EXISTS rajnish;
USE rajnish;

--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `sub_category_id` int(10) unsigned DEFAULT NULL,
  `sub_sub_category_id` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '1',
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `modified_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '1',
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `modified_by` int(10) unsigned DEFAULT NULL,
  `rating` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;


--
-- Definition of table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pin_code` varchar(15) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `std_code` varchar(10) DEFAULT NULL,
  `telephone_number` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `mobile_2` varchar(15) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `refered_by` varchar(45) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `modified_by` int(10) unsigned DEFAULT NULL,
  `login_id` varchar(100) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`,`first_name`,`last_name`,`dob`,`gender`,`address`,`city`,`state`,`pin_code`,`country`,`region`,`std_code`,`telephone_number`,`mobile`,`mobile_2`,`email_id`,`refered_by`,`status`,`created_on`,`modified_on`,`created_by`,`modified_by`,`login_id`,`password`) VALUES 
 (1,'Ravindra','','','','','','','','','','','','','','ravindra.dahiya@yahoo.com','',1,'2014-01-26 22:02:54',NULL,0,NULL,'ravindra.dahiya@yahoo.com','12345');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Definition of table `home_snap`
--

DROP TABLE IF EXISTS `home_snap`;
CREATE TABLE `home_snap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snap` varchar(250) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `modified_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_snap`
--

/*!40000 ALTER TABLE `home_snap` DISABLE KEYS */;
INSERT INTO `home_snap` (`id`,`snap`,`status`,`created_on`,`modified_on`,`created_by`,`modified_by`) VALUES 
 (5,'1393487995288-IMG_20140218_155041.jpg',1,'2014-02-27 13:29:55',NULL,1,NULL),
 (6,'1393488150701-IMG_20140218_155041.jpg',1,'2014-02-27 13:32:30',NULL,1,NULL);
/*!40000 ALTER TABLE `home_snap` ENABLE KEYS */;


--
-- Definition of table `home_snap_content`
--

DROP TABLE IF EXISTS `home_snap_content`;
CREATE TABLE `home_snap_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snap_id` varchar(150) NOT NULL,
  `content` varchar(150) NOT NULL,
  `status` int(10) NOT NULL COMMENT '0 Inactive 1 Home Page',
  `slider_name` varchar(150) DEFAULT NULL,
  `topa` varchar(45) DEFAULT NULL,
  `lefta` varchar(45) DEFAULT NULL,
  `widtha` varchar(45) DEFAULT NULL,
  `heighta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_snap_content`
--

/*!40000 ALTER TABLE `home_snap_content` DISABLE KEYS */;
INSERT INTO `home_snap_content` (`id`,`snap_id`,`content`,`status`,`slider_name`,`topa`,`lefta`,`widtha`,`heighta`) VALUES 
 (5,'5','Ravi',1,'RTT|360','20','20','20','20'),
 (6,'6','Ravi',1,'RTT|360','20','20','50','40');
/*!40000 ALTER TABLE `home_snap_content` ENABLE KEYS */;


--
-- Definition of table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(10) unsigned DEFAULT NULL,
  `brand` varchar(150) DEFAULT NULL,
  `launch` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'new or old',
  `color` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `group_no` int(10) unsigned DEFAULT '0' COMMENT 'If found some other',
  `quantity` int(10) unsigned DEFAULT '0' COMMENT 'over all stock starting',
  `stock` int(10) unsigned DEFAULT '0' COMMENT 'remain stock',
  `rating` int(10) unsigned DEFAULT NULL,
  `weigth` varchar(45) DEFAULT NULL,
  `image_1` varchar(250) DEFAULT NULL,
  `image_2` varchar(250) DEFAULT NULL,
  `image_3` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '1',
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `modified_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


--
-- Definition of table `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hole_sale_price` int(10) unsigned DEFAULT NULL,
  `retail_price` int(10) unsigned DEFAULT NULL COMMENT 'purchase price',
  `discount` int(10) unsigned DEFAULT NULL,
  `sale_price` int(10) unsigned DEFAULT NULL,
  `dis_start_from` datetime DEFAULT NULL,
  `dis_end_date` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  `modified_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

/*!40000 ALTER TABLE `price` DISABLE KEYS */;
/*!40000 ALTER TABLE `price` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
