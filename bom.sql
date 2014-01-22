-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: 192.237.246.191    Database: bndr_s003
-- ------------------------------------------------------
-- Server version	5.1.69

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bom`
--

DROP TABLE IF EXISTS `bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bom` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `part` varchar(16) DEFAULT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `parent_pn` varchar(16) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `qty` int(10) unsigned DEFAULT NULL,
  `unit` varchar(4) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `manufacturer` varchar(64) DEFAULT NULL,
  `manufacturer_pn` varchar(64) DEFAULT NULL,
  `supplier` varchar(64) DEFAULT NULL,
  `supplier_pn` varchar(64) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `cost_u` float DEFAULT NULL,
  `cost_e` float DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `tuples` varchar(255) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  `chksum` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`item`),
  KEY `item` (`item`),
  KEY `part` (`part`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom`
--

LOCK TABLES `bom` WRITE;
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
INSERT INTO `bom` VALUES (1,'ASSY001',0,'','Sensor Head',1,'each','','','','','','','','',0,0,NULL,NULL,1,'f55bad537dbad014d4c7e530a699f3f3fe1320a0');
INSERT INTO `bom` VALUES (2,'ASSY002',0,'','Device Handle',1,'each','','','','','','','','',0,0,NULL,NULL,1,'db529f136c37daac92cc90233b5d4c946cbf6a62');
INSERT INTO `bom` VALUES (3,'',1,'','IR Range-Finder 2',1,'','','','','','','','','',0,0,NULL,NULL,0,'513adc3fc24b814472b0f2baa539ed2c9eaeb61a');
INSERT INTO `bom` VALUES (4,'',1,'','Ultra-Sonic Range-Finder',1,'','','','','','','','','',0,0,NULL,NULL,0,'4728866f974917703fe48c62575fb9959f62a803');
INSERT INTO `bom` VALUES (5,'',2,'','On-Off Switch',1,'','','','','','','','','',0,0,NULL,NULL,0,'33023ab892d15abc69bb60775328409faaf6b04d');
INSERT INTO `bom` VALUES (6,'',2,'','Micro Vibrating Motors',5,'','','','','','','','','',0,0,NULL,NULL,0,'7c291f6d1e076d7ce41013d62ff9b966b65f07a3');
INSERT INTO `bom` VALUES (7,'ASSY003',NULL,NULL,'Embedded Controller',1,'each',NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,1,'94679d79f83b587a7e4fb1dc4c9c8fec3442b736');
INSERT INTO `bom` VALUES (8,'PART001',1,NULL,'Bezel ',1,'each',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Modified from PVC Reducing Coupling, 2\\\" x 1 1/2\\\"',NULL,NULL,NULL,NULL,NULL,'2bcc4bf0acfc5e842a26e25ceb19f1370201adf2');
INSERT INTO `bom` VALUES (11,'McGumps',7,NULL,'McGill McGumps Development Board',1,'each',NULL,NULL,NULL,NULL,NULL,'http://crasseux.com/embedded/MP_EVB_manual.pdf',NULL,'TI MSP430 MCU and the Altera MAX7128AE PLD',NULL,NULL,NULL,NULL,0,'22d6690a24d5cd21e2a5c089dca814932e105f4d');
INSERT INTO `bom` VALUES (10,'',8,NULL,'Reducing Coupling, PVC, 2\" x 1 1/2\"',1,'each',NULL,'Genova Products','70121','Aubuchon Hardware','244350','http://www.hardwarestore.com/reducing-coupling-244350.aspx',NULL,'',NULL,NULL,NULL,NULL,0,'f370092a57c4c139d211818533136018e22e472c');
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-22 10:28:31
