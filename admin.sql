-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bankingemail
--

CREATE DATABASE IF NOT EXISTS bankingemail;
USE bankingemail;

--
-- Definition of table `transactionhistory`
--

DROP TABLE IF EXISTS `transactionhistory`;
CREATE TABLE `transactionhistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `femail` varchar(45) DEFAULT NULL,
  `faccountl` varchar(45) DEFAULT NULL,
  `fbranch` varchar(45) DEFAULT NULL,
  `fifsc` varchar(45) DEFAULT NULL,
  `taccount` varchar(45) DEFAULT NULL,
  `tbranch` varchar(45) DEFAULT NULL,
  `tifsc` varchar(45) DEFAULT NULL,
  `amt` varchar(45) DEFAULT NULL,
  `tmail` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionhistory`
--

/*!40000 ALTER TABLE `transactionhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionhistory` ENABLE KEYS */;


--
-- Definition of table `userreg`
--

DROP TABLE IF EXISTS `userreg`;
CREATE TABLE `userreg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `image` longtext,
  `accountno` varchar(45) DEFAULT NULL,
  `ifsc` varchar(45) DEFAULT NULL,
  `upiid` varchar(45) DEFAULT NULL,
  `upipin` varchar(45) DEFAULT NULL,
  `balance` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `bankname` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `phash` longtext,
  `ahash` longtext,
  `type` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreg`
--

/*!40000 ALTER TABLE `userreg` DISABLE KEYS */;
INSERT INTO `userreg` (`id`,`name`,`email`,`mobile`,`password`,`image`,`accountno`,`ifsc`,`upiid`,`upipin`,`balance`,`branch`,`bankname`,`status`,`phash`,`ahash`,`type`,`location`,`address`) VALUES 
 (1,'dfds','embeddedspiro2021@gmail.com','1234567890','11','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '),
 (2,'dhinesh','embeddedspiro2021@gmail.com','54352352','11','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ');
/*!40000 ALTER TABLE `userreg` ENABLE KEYS */;


--
-- Definition of table `userregister`
--

DROP TABLE IF EXISTS `userregister`;
CREATE TABLE `userregister` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `gmail` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `accountno` varchar(45) DEFAULT NULL,
  `ifsc` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `image` longtext,
  `balance` varchar(45) DEFAULT NULL,
  `bankname` varchar(45) DEFAULT NULL,
  `upiid` varchar(45) DEFAULT NULL,
  `upipin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregister`
--

/*!40000 ALTER TABLE `userregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `userregister` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
