-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_courier
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `user_courier_information`
--

DROP TABLE IF EXISTS `user_courier_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_courier_information` (
  `consignmentno` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `deliveredid` varchar(50) DEFAULT NULL,
  `bookingdate` varchar(50) DEFAULT NULL,
  `bookingmode` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `parceltype` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` varchar(450) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`consignmentno`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_courier_information`
--

LOCK TABLES `user_courier_information` WRITE;
/*!40000 ALTER TABLE `user_courier_information` DISABLE KEYS */;
INSERT INTO `user_courier_information` VALUES (101,1,'1','2022-06-05','online','21','2','Commercial','2100','Confirm','2022-06-06','Pashant Couriers','islampur'),(102,2,'102','2022-06-06','online','5','2','Commercial','500','pending','2022-06-07','Pashant Couriers','yedenipani'),(103,2,'103','2022-06-07','online','5','10','Non-Commercial','2500','pending','2022-06-07',NULL,NULL),(104,2,'103','2022-06-07','online','5','10','Non-Commercial','2500','pending','2022-06-07',NULL,NULL),(105,2,'123','2022-06-07','online','21','12','Commercial','12600','pending','2022-06-07',NULL,NULL),(106,2,'123','2022-06-07','online','dfwfe','2','Commercial','12','pending','2022-06-07',NULL,NULL),(107,2,'123','2022-06-07','fwff','21','2','Commercial','2100','pending','2022-06-07',NULL,NULL),(108,2,'123','2022-06-07','fwff','dfwfe','2','Non-Commercial','12','pending','2022-06-07',NULL,NULL);
/*!40000 ALTER TABLE `user_courier_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07  6:15:26
