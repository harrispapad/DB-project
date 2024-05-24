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
-- Table structure for table `recipe_tag`
--

DROP TABLE IF EXISTS `recipe_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_tag` (
  `recipe_id` int NOT NULL,
  `tag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `c1` (`recipe_id`,`tag`),
  KEY `tag` (`tag`),
  CONSTRAINT `recipe_tag_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `recipe_tag_ibfk_2` FOREIGN KEY (`tag`) REFERENCES `tags` (`tag`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_tag`
--

LOCK TABLES `recipe_tag` WRITE;
/*!40000 ALTER TABLE `recipe_tag` DISABLE KEYS */;
INSERT INTO `recipe_tag` VALUES (8,'30-minute-meals'),(15,'alternative pizza'),(14,'appetizer'),(3,'brunch'),(10,'brunch'),(12,'brunch'),(13,'christmas'),(26,'christmas'),(35,'christmas'),(39,'christmas'),(13,'comfort'),(16,'comfort'),(17,'comfort'),(24,'comfort'),(27,'comfort'),(30,'comfort'),(49,'comfort'),(50,'comfort'),(52,'comfort'),(56,'comfort'),(62,'comfort'),(64,'comfort'),(69,'comfort'),(40,'dairy free'),(42,'dairy free'),(50,'dairy free'),(2,'desserts'),(4,'desserts'),(16,'desserts'),(17,'desserts'),(23,'desserts'),(29,'desserts'),(30,'desserts'),(39,'desserts'),(45,'desserts'),(48,'desserts'),(53,'desserts'),(54,'desserts'),(56,'desserts'),(57,'desserts'),(58,'desserts'),(59,'desserts'),(61,'desserts'),(2,'dinner for 2'),(21,'dinner for 2'),(22,'dinner for 2'),(26,'dinner for 2'),(67,'dinner for 2'),(25,'dinner party'),(35,'dinner party'),(37,'dinner party'),(13,'exotic'),(18,'exotic'),(34,'exotic'),(36,'exotic'),(38,'exotic'),(40,'exotic'),(41,'exotic'),(42,'exotic'),(44,'exotic'),(45,'exotic'),(53,'exotic'),(54,'exotic'),(55,'exotic'),(59,'exotic'),(62,'exotic'),(65,'exotic'),(5,'family classics'),(7,'family classics'),(9,'family classics'),(32,'family classics'),(45,'family classics'),(62,'family classics'),(63,'family classics'),(64,'family classics'),(68,'family classics'),(6,'finger food'),(14,'finger food'),(38,'finger food'),(43,'finger food'),(44,'finger food'),(46,'finger food'),(47,'finger food'),(27,'gourmet'),(3,'healthy'),(9,'healthy'),(10,'healthy'),(11,'healthy'),(12,'healthy'),(19,'healthy'),(20,'healthy'),(21,'healthy'),(31,'healthy'),(36,'healthy'),(38,'healthy'),(41,'healthy'),(42,'healthy'),(59,'healthy'),(60,'healthy'),(65,'healthy'),(66,'healthy'),(68,'healthy'),(27,'homemade'),(24,'kid-friendly'),(43,'kid-friendly'),(46,'kid-friendly'),(47,'kid-friendly'),(3,'kosher'),(15,'light'),(23,'light'),(40,'light'),(60,'light'),(66,'light'),(9,'mains'),(11,'mains'),(19,'mains'),(35,'mains'),(37,'mains'),(64,'mains'),(67,'mains'),(69,'mains'),(33,'night'),(55,'nuts-free diet'),(57,'nuts-free diet'),(14,'party food'),(16,'party food'),(38,'party food'),(39,'party food'),(41,'party food'),(43,'party food'),(44,'party food'),(46,'party food'),(47,'party food'),(8,'pies and pastries'),(4,'puddings and desserts'),(3,'quick'),(10,'quick'),(11,'quick'),(12,'quick'),(14,'quick'),(16,'quick'),(17,'quick'),(24,'quick'),(28,'quick'),(31,'quick'),(32,'quick'),(34,'quick'),(36,'quick'),(46,'quick'),(47,'quick'),(52,'quick'),(53,'quick'),(58,'quick'),(2,'romantic meals'),(21,'romantic meals'),(20,'side dish'),(49,'side dish'),(18,'spicy'),(10,'summer'),(19,'vegan'),(34,'vegan'),(41,'vegan'),(11,'vegetarian'),(12,'vegetarian'),(15,'vegetarian'),(18,'vegetarian'),(19,'vegetarian'),(20,'vegetarian'),(21,'vegetarian'),(24,'vegetarian'),(25,'vegetarian'),(34,'vegetarian'),(42,'vegetarian'),(44,'vegetarian'),(49,'vegetarian'),(54,'vegetarian'),(57,'vegetarian'),(60,'vegetarian'),(33,'winter warmer');
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

-- Dump completed on 2024-05-24  9:01:30
