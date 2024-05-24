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
-- Table structure for table `recipe_meal`
--

DROP TABLE IF EXISTS `recipe_meal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_meal` (
  `recipe_id` int NOT NULL,
  `meal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `c1` (`recipe_id`,`meal`),
  KEY `meal` (`meal`),
  CONSTRAINT `recipe_meal_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `recipe_meal_ibfk_2` FOREIGN KEY (`meal`) REFERENCES `meals` (`meal`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_meal`
--

LOCK TABLES `recipe_meal` WRITE;
/*!40000 ALTER TABLE `recipe_meal` DISABLE KEYS */;
INSERT INTO `recipe_meal` VALUES (1,'breakfast'),(3,'breakfast'),(10,'breakfast'),(12,'breakfast'),(31,'breakfast'),(14,'brunch'),(1,'dinner'),(2,'dinner'),(4,'dinner'),(5,'dinner'),(6,'dinner'),(7,'dinner'),(8,'dinner'),(12,'dinner'),(13,'dinner'),(15,'dinner'),(19,'dinner'),(21,'dinner'),(22,'dinner'),(23,'dinner'),(25,'dinner'),(27,'dinner'),(30,'dinner'),(33,'dinner'),(34,'dinner'),(36,'dinner'),(37,'dinner'),(40,'dinner'),(41,'dinner'),(42,'dinner'),(43,'dinner'),(49,'dinner'),(55,'dinner'),(60,'dinner'),(62,'dinner'),(65,'dinner'),(66,'dinner'),(68,'dinner'),(1,'lunch'),(5,'lunch'),(6,'lunch'),(7,'lunch'),(8,'lunch'),(9,'lunch'),(11,'lunch'),(12,'lunch'),(13,'lunch'),(15,'lunch'),(18,'lunch'),(19,'lunch'),(20,'lunch'),(22,'lunch'),(24,'lunch'),(25,'lunch'),(26,'lunch'),(32,'lunch'),(33,'lunch'),(34,'lunch'),(35,'lunch'),(36,'lunch'),(37,'lunch'),(40,'lunch'),(41,'lunch'),(42,'lunch'),(46,'lunch'),(47,'lunch'),(49,'lunch'),(50,'lunch'),(52,'lunch'),(55,'lunch'),(58,'lunch'),(60,'lunch'),(62,'lunch'),(63,'lunch'),(64,'lunch'),(65,'lunch'),(67,'lunch'),(68,'lunch'),(69,'lunch'),(14,'snack'),(16,'snack'),(17,'snack'),(23,'snack'),(24,'snack'),(28,'snack'),(29,'snack'),(30,'snack'),(31,'snack'),(32,'snack'),(38,'snack'),(39,'snack'),(41,'snack'),(43,'snack'),(44,'snack'),(45,'snack'),(46,'snack'),(47,'snack'),(48,'snack'),(53,'snack'),(54,'snack'),(56,'snack'),(57,'snack'),(58,'snack'),(59,'snack'),(61,'snack');
/*!40000 ALTER TABLE `recipe_meal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24  9:01:29
