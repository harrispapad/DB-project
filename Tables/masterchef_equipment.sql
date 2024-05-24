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
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES ('baking dish','bake but deep',NULL,NULL),('baking pan','bakes things',NULL,NULL),('baking sheet','bake',NULL,NULL),('baking tray','bake',NULL,NULL),('big bowl','put many things inside',NULL,NULL),('blender','blend',NULL,NULL),('board','chopping',NULL,NULL),('bowl','put things inside',NULL,NULL),('brush','brushes things',NULL,NULL),('casserole pan','casserole things',NULL,NULL),('cookie ring','to shape cookies and other food',NULL,NULL),('cutting board','cut things',NULL,NULL),('drainer','drain',NULL,NULL),('food processor','turn things into cream',NULL,NULL),('frying pan','fry things',NULL,NULL),('grater','grate',NULL,NULL),('mixer','mixes things',NULL,NULL),('muffin cup','to make muffins',NULL,NULL),('muffin pan','to cook muffins or tortillas on the crevishes',NULL,NULL),('palette knife','smooth things',NULL,NULL),('pan','things',NULL,NULL),('peeler','peel',NULL,NULL),('plastic wrap','wrap',NULL,NULL),('pot','things again',NULL,NULL),('potato masher','mashes things like potatoes',NULL,NULL),('roasting tray','roast',NULL,NULL),('rolling pin','rolls things',NULL,NULL),('scale','weigh',NULL,NULL),('shredes things','shredes things',NULL,NULL),('sieve','to make things \"finer\"',NULL,NULL),('skillet pan','skill things',NULL,NULL),('small bowl','put some things inside',NULL,NULL),('spatula','spread',NULL,NULL),('steamer','steams things',NULL,NULL),('towel','many uses like absorbs moisture',NULL,NULL),('tray','put things',NULL,NULL),('whisk','stir mixtures',NULL,NULL),('wok','cooks things',NULL,NULL),('wooden skewers','pierce things',NULL,NULL),('wooden spoon','stir',NULL,NULL);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
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
