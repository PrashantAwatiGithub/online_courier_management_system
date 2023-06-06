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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reciver_information`
--

LOCK TABLES `user_reciver_information` WRITE;
/*!40000 ALTER TABLE `user_reciver_information` DISABLE KEYS */;
INSERT INTO `user_reciver_information` VALUES (1,NULL,'vishawajit','9325383033','vishawajit26@gmail.com','A/P Borgaon','islampur','maharashtra','india','415413'),(2,NULL,'shivam chenadke','9021600400','Shivam12@gmail.com','Aitavade','islampur','maharashtra','india','415413'),(3,NULL,'vishawajit','+449325383','prashantawati8661@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413'),(4,NULL,'vishawajit','+449325383','vishawajit26@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413'),(5,NULL,'vishawajit','+449325383','vishawajit26@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413'),(6,NULL,'vishawajit','+449325383','prashantawati8661@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413'),(7,NULL,'vishawajit','+449325383','prashantawati8661@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413'),(8,NULL,'vishawajit','+449325383','prashantawati8661@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413'),(9,NULL,'afs','+449325383','vishawajit26@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413'),(10,NULL,'vishawajit','+449325383','prashantawati8661@gmail.com','A/P Borgaon','islampur','maharashtra','dsfafs','415413');
/*!40000 ALTER TABLE `user_reciver_information` ENABLE KEYS */;
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
