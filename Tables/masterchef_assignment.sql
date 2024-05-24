CREATE DATABASE  IF NOT EXISTS `masterchef` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `masterchef`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: masterchef
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.23.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `assignment_id` int NOT NULL,
  `chef_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `result` int DEFAULT NULL,
  `year` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `chef_id` (`chef_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `fk_assignment_chef` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_assignment_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (100,109,12,2,'1'),(101,123,34,3,'1'),(102,138,17,1,'1'),(103,150,19,5,'1'),(104,160,58,3,'1'),(105,126,64,4,'1'),(106,138,29,4,'1'),(107,141,16,2,'1'),(108,147,34,4,'1'),(109,141,6,3,'1'),(110,134,36,3,'1'),(111,109,27,2,'1'),(112,155,61,4,'1'),(113,141,29,2,'1'),(114,170,47,1,'1'),(115,141,29,3,'1'),(116,127,27,4,'1'),(117,165,69,4,'1'),(118,108,11,3,'1'),(119,108,1,2,'1'),(120,141,32,3,'1'),(121,108,11,4,'1'),(122,144,36,2,'1'),(123,147,41,3,'1'),(124,169,66,2,'1'),(125,138,16,4,'1'),(126,126,9,2,'1'),(127,150,19,2,'1'),(128,151,56,3,'1'),(129,170,7,3,'1'),(130,134,13,4,'1'),(131,123,34,3,'1'),(132,114,49,2,'1'),(133,161,67,3,'1'),(134,161,63,5,'1'),(135,132,8,3,'1'),(136,109,12,3,'1'),(137,105,31,3,'1'),(138,109,14,3,'1'),(139,170,24,4,'1'),(140,114,20,4,'1'),(141,144,35,2,'1'),(142,105,21,3,'1'),(143,123,40,2,'1'),(144,173,44,3,'1'),(145,105,23,2,'1'),(146,151,56,4,'1'),(147,109,26,2,'1'),(148,170,24,5,'1'),(149,114,10,3,'1'),(150,126,64,3,'1'),(151,127,3,2,'1'),(152,165,67,2,'1'),(153,123,34,3,'1'),(154,108,5,4,'1'),(155,138,17,3,'1'),(156,160,61,3,'1'),(157,108,1,2,'1'),(158,127,3,1,'1'),(159,141,32,2,'1'),(160,127,12,3,'1'),(161,167,23,4,'1'),(162,127,12,3,'1'),(163,114,20,2,'1'),(164,132,1,3,'1'),(165,126,50,4,'1'),(166,126,50,2,'1'),(167,170,45,1,'1'),(168,174,51,2,'1'),(169,147,39,3,'1'),(170,105,2,4,'1'),(171,134,35,3,'1'),(172,138,6,4,'1'),(173,147,42,4,'1'),(174,108,11,4,'1'),(175,134,37,2,'1'),(176,169,66,3,'1'),(177,173,18,4,'1'),(178,105,4,3,'1'),(179,105,4,3,'1'),(180,151,54,4,'1'),(181,120,46,2,'1'),(182,114,49,2,'1'),(183,132,1,2,'1'),(184,138,29,4,'1'),(185,105,2,4,'1'),(186,105,31,2,'1'),(187,105,23,3,'1'),(188,144,36,2,'1'),(189,173,43,3,'1'),(190,170,7,3,'1'),(191,165,62,3,'1'),(192,174,65,3,'1'),(193,141,15,3,'1'),(194,138,32,3,'1'),(195,105,4,3,'1'),(196,152,53,4,'1'),(197,105,30,2,'1'),(198,123,40,3,'1'),(199,165,62,4,'1'),(200,231,17,3,'2'),(201,229,8,1,'2'),(202,213,4,3,'2'),(203,235,30,4,'2'),(204,216,15,3,'2'),(205,215,3,3,'2'),(206,264,68,4,'2'),(207,225,47,3,'2'),(208,202,1,4,'2'),(209,231,17,4,'2'),(210,243,49,4,'2'),(211,240,28,3,'2'),(212,264,68,2,'2'),(213,225,7,4,'2'),(214,215,27,3,'2'),(215,231,6,4,'2'),(216,240,64,4,'2'),(217,240,28,4,'2'),(218,259,59,4,'2'),(219,202,11,3,'2'),(220,210,19,3,'2'),(221,264,68,3,'2'),(222,213,2,2,'2'),(223,275,51,3,'2'),(224,213,30,3,'2'),(225,259,52,3,'2'),(226,264,68,4,'2'),(227,216,17,4,'2'),(228,215,12,3,'2'),(229,257,61,3,'2'),(230,240,28,3,'2'),(231,249,26,1,'2'),(232,216,6,3,'2'),(233,243,10,3,'2'),(234,268,33,2,'2'),(235,235,23,3,'2'),(236,204,36,4,'2'),(237,254,53,2,'2'),(238,213,2,3,'2'),(239,253,55,3,'2'),(240,253,57,3,'2'),(241,262,63,3,'2'),(242,253,57,3,'2'),(243,240,19,3,'2'),(244,262,63,3,'2'),(245,228,42,2,'2'),(246,213,23,3,'2'),(247,213,31,3,'2'),(248,213,21,3,'2'),(249,257,58,3,'2'),(250,213,30,2,'2'),(251,243,33,3,'2'),(252,275,51,3,'2'),(253,275,18,2,'2'),(254,215,3,2,'2'),(255,259,58,1,'2'),(256,235,30,1,'2'),(257,254,54,3,'2'),(258,262,62,2,'2'),(259,249,26,5,'2'),(260,257,60,3,'2'),(261,259,59,3,'2'),(262,235,30,3,'2'),(263,268,10,3,'2'),(264,225,45,4,'2'),(265,225,24,2,'2'),(266,225,22,3,'2'),(267,257,59,3,'2'),(268,216,32,3,'2'),(269,213,23,4,'2'),(270,246,47,3,'2'),(271,262,68,3,'2'),(272,249,12,3,'2'),(273,222,38,3,'2'),(274,268,66,3,'2'),(275,222,13,4,'2'),(276,222,13,3,'2'),(277,235,21,3,'2'),(278,268,33,3,'2'),(279,264,62,4,'2'),(280,204,35,3,'2'),(281,222,37,2,'2'),(282,240,28,4,'2'),(283,216,32,2,'2'),(284,231,6,4,'2'),(285,266,65,4,'2'),(286,268,33,3,'2'),(287,225,22,2,'2'),(288,216,6,4,'2'),(289,249,27,3,'2'),(290,262,63,2,'2'),(291,243,49,4,'2'),(292,210,9,4,'2'),(293,275,18,3,'2'),(294,228,40,2,'2'),(295,254,55,3,'2'),(296,253,53,5,'2'),(297,202,1,3,'2'),(298,243,20,3,'2'),(299,262,67,4,'2');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24  9:01:28