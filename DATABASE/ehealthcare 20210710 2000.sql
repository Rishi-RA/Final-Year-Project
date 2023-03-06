-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ehealthcare
--

CREATE DATABASE IF NOT EXISTS ehealthcare;
USE ehealthcare;

--
-- Definition of table `data_files`
--

DROP TABLE IF EXISTS `data_files`;
CREATE TABLE `data_files` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `enc_data` longblob NOT NULL,
  `dkey` longtext NOT NULL,
  `time` varchar(45) NOT NULL,
  `filename` longtext NOT NULL,
  `data` longblob NOT NULL,
  `enc_time` varchar(85) NOT NULL,
  `age` varchar(45) NOT NULL,
  `blood_group` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `blood_pressure` varchar(45) NOT NULL,
  `blood_sugar` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_files`
--


--
-- Definition of table `doctor_reg`
--

DROP TABLE IF EXISTS `doctor_reg`;
CREATE TABLE `doctor_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL default 'waiting',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_reg`
--


--
-- Definition of table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `did` varchar(45) NOT NULL,
  `dname` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `fileid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `pid` varchar(45) NOT NULL,
  `decrypt_time` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

--
-- Definition of table `encrypted_details`
--

DROP TABLE IF EXISTS `encrypted_details`;
CREATE TABLE `encrypted_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `blood_group` varchar(45) NOT NULL,
  `heart_rate` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `blood_pressure` varchar(45) NOT NULL,
  `blood_sugar` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `dkey` varchar(85) NOT NULL,
  `filename` varchar(85) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encrypted_details`
--


--
-- Definition of table `patient_reg`
--

DROP TABLE IF EXISTS `patient_reg`;
CREATE TABLE `patient_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_reg`
--


--
-- Definition of table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `did` varchar(45) NOT NULL,
  `dname` varchar(45) NOT NULL,
  `dmail` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `pid` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `dkey` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `utime` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--


--
-- Definition of table `search_token`
--

DROP TABLE IF EXISTS `search_token`;
CREATE TABLE `search_token` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `did` varchar(45) NOT NULL,
  `dname` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `search_token` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_token`
--




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
