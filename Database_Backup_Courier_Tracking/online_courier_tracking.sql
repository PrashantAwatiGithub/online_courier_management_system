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
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consignmentno` varchar(50) DEFAULT NULL,
  `bookingdate` varchar(50) DEFAULT NULL,
  `bookingmode` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `parceltype` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `branchid` varchar(50) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,'101','2022-06-05','online','21','2','Commercial','2100',NULL,NULL,'2022-06-05','pending',1),(2,'101','2022-06-05','online','21','2','Commercial','2100',NULL,'islampur','2022-06-06','Confirm',1),(3,'102','2022-06-06','online','5','2','Commercial','500',NULL,NULL,'2022-06-06','pending',2),(4,'103','2022-06-07','online','5','10','Non-Commercial','2500',NULL,NULL,'2022-06-07','pending',2),(5,'103','2022-06-07','online','5','10','Non-Commercial','2500',NULL,NULL,'2022-06-07','pending',2),(6,'104','2022-06-07','online','5','10','Non-Commercial','2500',NULL,NULL,'2022-06-07','pending',2),(7,'105','2022-06-07','online','21','12','Commercial','12600',NULL,NULL,'2022-06-07','pending',2),(8,'105','2022-06-07','online','21','12','Commercial','12600',NULL,NULL,'2022-06-07','pending',2),(9,'106','2022-06-07','online','dfwfe','2','Commercial','12',NULL,NULL,'2022-06-07','pending',2),(10,'107','2022-06-07','fwff','21','2','Commercial','2100',NULL,NULL,'2022-06-07','pending',2),(11,'108','2022-06-07','fwff','dfwfe','2','Non-Commercial','12',NULL,NULL,'2022-06-07','pending',2),(12,'108','2022-06-07','fwff','1','2','Non-Commercial','12',NULL,NULL,'2022-06-07','pending',2),(13,'102','2022-06-06','online','5','2','Commercial','500',NULL,'yedenipani','2022-06-07','pending',2);
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07  6:15:24
