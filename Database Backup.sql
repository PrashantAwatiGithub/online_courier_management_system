

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
-- Table structure for table `admin_add_branch`
--

DROP TABLE IF EXISTS `admin_add_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_add_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `branchname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_add_branch`
--

LOCK TABLES `admin_add_branch` WRITE;
/*!40000 ALTER TABLE `admin_add_branch` DISABLE KEYS */;
INSERT INTO `admin_add_branch` VALUES (1,1,'Ashwagandha Courires','Sangli','Sangli','9876543210','asdf');
/*!40000 ALTER TABLE `admin_add_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_courier_details`
--

DROP TABLE IF EXISTS `admin_courier_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_courier_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `rname` varchar(100) DEFAULT NULL,
  `rcontact` varchar(50) DEFAULT NULL,
  `raddress` varchar(100) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `ctype` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_courier_details`
--

LOCK TABLES `admin_courier_details` WRITE;
/*!40000 ALTER TABLE `admin_courier_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_courier_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_forgot_password`
--

DROP TABLE IF EXISTS `admin_forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_forgot_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `newpass` varchar(100) DEFAULT NULL,
  `confirmpass` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_forgot_password`
--

LOCK TABLES `admin_forgot_password` WRITE;
/*!40000 ALTER TABLE `admin_forgot_password` DISABLE KEYS */;
INSERT INTO `admin_forgot_password` VALUES (1,NULL,'akanksha','ashu','ashu');
/*!40000 ALTER TABLE `admin_forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_signup`
--

DROP TABLE IF EXISTS `admin_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_signup` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `fristname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `passaword` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_signup`
--

LOCK TABLES `admin_signup` WRITE;
/*!40000 ALTER TABLE `admin_signup` DISABLE KEYS */;
INSERT INTO `admin_signup` VALUES (1,'Akanksha','Patil','2022-05-30','9876543210','akankshagmail.com','Akanksha','Akanksha'),(2,'Akanksha','Patil','2022-05-30','9876543210','akankshagmail.com','Akanksha','Akanksha');
/*!40000 ALTER TABLE `admin_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_tracking`
--

DROP TABLE IF EXISTS `admin_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `conssignmentno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tracking`
--

LOCK TABLES `admin_tracking` WRITE;
/*!40000 ALTER TABLE `admin_tracking` DISABLE KEYS */;
INSERT INTO `admin_tracking` VALUES (1,NULL,'123'),(2,NULL,'1');
/*!40000 ALTER TABLE `admin_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_courier_details`
--

DROP TABLE IF EXISTS `branch_courier_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_courier_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) DEFAULT NULL,
  `sendername` varchar(100) DEFAULT NULL,
  `recivername` varchar(100) DEFAULT NULL,
  `recivercontact` varchar(50) DEFAULT NULL,
  `reciveraddress` varchar(100) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `couriertype` varchar(100) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_courier_details`
--

LOCK TABLES `branch_courier_details` WRITE;
/*!40000 ALTER TABLE `branch_courier_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_courier_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_tracking`
--

DROP TABLE IF EXISTS `branch_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) DEFAULT NULL,
  `conssignmentno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_tracking`
--

LOCK TABLES `branch_tracking` WRITE;
/*!40000 ALTER TABLE `branch_tracking` DISABLE KEYS */;
INSERT INTO `branch_tracking` VALUES (1,NULL,'123');
/*!40000 ALTER TABLE `branch_tracking` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,'1','2022-12-31','Online','12','12','Commercial','144',NULL,NULL,NULL,'pending',1),(2,'1','2022-12-31','Online','12','12','Commercial','144',NULL,NULL,'2022-05-11','pending',1),(3,'1','2022-05-11','Online','12','12','Commercial','144',NULL,NULL,'2022-05-11','pending',1),(4,'1','2022-05-11','Online','12','12','Commercial','144',NULL,NULL,'2022-05-11','pending',1),(5,'1','2022-05-11','Online','12','12','Commercial','144',NULL,NULL,'2022-05-11','pending',1),(6,'1','2022-05-11','Online','12','12','Commercial','144',NULL,NULL,'2022-05-11','pending',1),(7,'1','2022-05-11','Online','12','12','Commercial','144',NULL,NULL,'2022-05-11','Confirm',1),(8,'1','2022-05-11','Online','12','12','Commercial','144',NULL,'sangli','2022-05-11','Confirm',1),(9,'1','2022-05-11','Online','12','12','Commercial','144',NULL,'sangli','2022-05-11','Confirm',1),(10,'1','2022-05-11','Online','12','12','Commercial','144',NULL,'sangli','2022-05-11','Confirm',1),(11,'1','2022-05-11','Online','12','12','Commercial','144',NULL,'Islampur','2022-05-11','Cancel',1),(12,'123','2022-05-14','Online','12','12','Non-Commercial','144',NULL,NULL,'2022-05-14','pending',1);
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_courier_information`
--

DROP TABLE IF EXISTS `user_courier_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_courier_information` (
  `consignmentno` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_courier_information`
--

LOCK TABLES `user_courier_information` WRITE;
/*!40000 ALTER TABLE `user_courier_information` DISABLE KEYS */;
INSERT INTO `user_courier_information` VALUES (1,1,'123','2022-05-11','Online','12','12','Commercial','144','Cancel','2022-05-11','Ashwagandha Courires','Islampur'),(123,1,'123','2022-05-14','Online','12','12','Non-Commercial','144','pending','2022-05-14',NULL,NULL);
/*!40000 ALTER TABLE `user_courier_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_feedback`
--

LOCK TABLES `user_feedback` WRITE;
/*!40000 ALTER TABLE `user_feedback` DISABLE KEYS */;
INSERT INTO `user_feedback` VALUES (1,NULL,'ashu','akankshagmail.com','mast');
/*!40000 ALTER TABLE `user_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_forgot_password`
--

DROP TABLE IF EXISTS `user_forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_forgot_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `newpass` varchar(100) DEFAULT NULL,
  `confirmpass` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_forgot_password`
--

LOCK TABLES `user_forgot_password` WRITE;
/*!40000 ALTER TABLE `user_forgot_password` DISABLE KEYS */;
INSERT INTO `user_forgot_password` VALUES (1,NULL,'akanksha','ashu','ashu');
/*!40000 ALTER TABLE `user_forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pmode` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `tax` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
INSERT INTO `user_payment` VALUES (1,NULL,'Credit Card','12','144','13','234');
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reciver_information`
--

DROP TABLE IF EXISTS `user_reciver_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_reciver_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mob` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reciver_information`
--

LOCK TABLES `user_reciver_information` WRITE;
/*!40000 ALTER TABLE `user_reciver_information` DISABLE KEYS */;
INSERT INTO `user_reciver_information` VALUES (1,NULL,'Akanksha','9876543210','akankshagmail.com','sangli','Sangli','maharashtra','india','1234');
/*!40000 ALTER TABLE `user_reciver_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_signup`
--

DROP TABLE IF EXISTS `user_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_signup` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `mob` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `conf` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signup`
--

LOCK TABLES `user_signup` WRITE;
/*!40000 ALTER TABLE `user_signup` DISABLE KEYS */;
INSERT INTO `user_signup` VALUES (1,'Akanksha','Patil','2022-12-30','9876543210','akankshagmail.com','Akanksha','Akanksha'),(2,'Akanksha','Patil','2022-05-30','9876543210','akankshagmail.com','Akanksha','Akanksha'),(3,'Akanksha','Patil','2022-05-30','9876543210','akankshagmail.com','Akanksha','Akanksha'),(4,'Akanksha','Patil','2022-05-30','9876543210','akankshagmail.com','Akanksha','Akanksha');
/*!40000 ALTER TABLE `user_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tracking`
--

DROP TABLE IF EXISTS `user_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `consignmentno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tracking`
--

LOCK TABLES `user_tracking` WRITE;
/*!40000 ALTER TABLE `user_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tracking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14  5:14:54
