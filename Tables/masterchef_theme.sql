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
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES ('homemade favorites','Comforting dishes that evoke a sense of homemade goodness and nostalgia.'),('sweet indulgences','Decadent desserts and treats that satisfy the sweet tooth and bring joy.'),('classic comfort','Timeless recipes that provide warmth, familiarity, and a sense of satisfaction.'),('gourmet eats','Sophisticated and elevated dishes that showcase culinary expertise and luxury ingredients.'),('flavorful treats','Dishes bursting with bold and delicious flavors that tantalize the taste buds.'),('fusion delights','Culinary creations that blend diverse culinary traditions and ingredients for unique and innovative flavors.'),('quick & tasty','Convenient and easy-to-make recipes perfect for busy lifestyles without sacrificing flavor.'),('comforting classics','Traditional dishes that offer comfort, nostalgia, and a feeling of home.'),('international flavors','Dishes that highlight the diverse and vibrant flavors of cuisines from around the world.'),('traditional delicacies','Authentic recipes passed down through generations, preserving cultural heritage and tradition.'),('hearty dinners','Comforting, substantial meals packed with robust flavors and wholesome ingredients, perfect for satisfying appetites and warming souls.');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-25  4:08:17
