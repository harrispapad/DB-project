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
-- Dumping data for table `recipe_tag`
--

LOCK TABLES `recipe_tag` WRITE;
/*!40000 ALTER TABLE `recipe_tag` DISABLE KEYS */;
INSERT INTO `recipe_tag` VALUES (2,'desserts'),(2,'dinner for 2'),(2,'romantic meals'),(3,'brunch'),(3,'healthy'),(3,'kosher'),(3,'quick'),(4,'desserts'),(4,'puddings and desserts'),(5,'family classics'),(6,'finger food'),(7,'family classics'),(8,'30-minute-meals'),(8,'pies and pastries'),(9,'family classics'),(9,'healthy'),(9,'mains'),(10,'brunch'),(10,'healthy'),(10,'quick'),(10,'summer'),(11,'healthy'),(11,'mains'),(11,'quick'),(11,'vegetarian'),(12,'brunch'),(12,'healthy'),(12,'quick'),(12,'vegetarian'),(13,'christmas'),(13,'comfort'),(13,'exotic'),(14,'appetizer'),(14,'finger food'),(14,'party food'),(14,'quick'),(15,'alternative pizza'),(15,'light'),(15,'vegetarian'),(16,'comfort'),(16,'desserts'),(16,'party food'),(16,'quick'),(17,'comfort'),(17,'desserts'),(17,'quick'),(18,'exotic'),(18,'spicy'),(18,'vegetarian'),(19,'healthy'),(19,'mains'),(19,'vegan'),(19,'vegetarian'),(20,'healthy'),(20,'side dish'),(20,'vegetarian'),(21,'dinner for 2'),(21,'healthy'),(21,'romantic meals'),(21,'vegetarian'),(22,'dinner for 2'),(23,'desserts'),(23,'light'),(24,'comfort'),(24,'kid-friendly'),(24,'quick'),(24,'vegetarian'),(25,'dinner party'),(25,'vegetarian'),(26,'christmas'),(26,'dinner for 2'),(27,'comfort'),(27,'gourmet'),(27,'homemade'),(28,'quick'),(29,'desserts'),(30,'comfort'),(30,'desserts'),(31,'healthy'),(31,'quick'),(32,'family classics'),(32,'quick'),(33,'night'),(33,'winter warmer'),(34,'exotic'),(34,'quick'),(34,'vegan'),(34,'vegetarian'),(35,'christmas'),(35,'dinner party'),(35,'mains'),(36,'exotic'),(36,'healthy'),(36,'quick'),(37,'dinner party'),(37,'mains'),(38,'exotic'),(38,'finger food'),(38,'healthy'),(38,'party food'),(39,'christmas'),(39,'desserts'),(39,'party food'),(40,'dairy free'),(40,'exotic'),(40,'light'),(41,'exotic'),(41,'healthy'),(41,'party food'),(41,'vegan'),(42,'dairy free'),(42,'exotic'),(42,'healthy'),(42,'vegetarian'),(43,'finger food'),(43,'kid-friendly'),(43,'party food'),(44,'exotic'),(44,'finger food'),(44,'party food'),(44,'vegetarian'),(45,'desserts'),(45,'exotic'),(45,'family classics'),(46,'finger food'),(46,'kid-friendly'),(46,'party food'),(46,'quick'),(47,'finger food'),(47,'kid-friendly'),(47,'party food'),(47,'quick'),(48,'desserts'),(49,'comfort'),(49,'side dish'),(49,'vegetarian'),(50,'comfort'),(50,'dairy free'),(52,'comfort'),(52,'quick'),(53,'desserts'),(53,'exotic'),(53,'quick'),(54,'desserts'),(54,'exotic'),(54,'vegetarian'),(55,'exotic'),(55,'nuts-free diet'),(56,'comfort'),(56,'desserts'),(57,'desserts'),(57,'nuts-free diet'),(57,'vegetarian'),(58,'desserts'),(58,'quick'),(59,'desserts'),(59,'exotic'),(59,'healthy'),(60,'healthy'),(60,'light'),(60,'vegetarian'),(61,'desserts'),(62,'comfort'),(62,'exotic'),(62,'family classics'),(63,'family classics'),(64,'comfort'),(64,'family classics'),(64,'mains'),(65,'exotic'),(65,'healthy'),(66,'healthy'),(66,'light'),(67,'dinner for 2'),(67,'mains'),(68,'family classics'),(68,'healthy'),(69,'comfort'),(69,'mains');
/*!40000 ALTER TABLE `recipe_tag` ENABLE KEYS */;
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
