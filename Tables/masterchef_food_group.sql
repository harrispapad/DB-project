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
-- Dumping data for table `food_group`
--

LOCK TABLES `food_group` WRITE;
/*!40000 ALTER TABLE `food_group` DISABLE KEYS */;
INSERT INTO `food_group` VALUES ('aromatic substances and essential oils','This category includes substances and essential oils known for their distinct fragrances and often used in aromatherapy or for adding aroma to various products.','aromatic',NULL,NULL),('cereal and their products','Cereal and cereal-based products, such as bread, pasta, rice, and breakfast cereals, are included in this category.','cereal',NULL,NULL),('coffee, tea and other products','Products in this category contain caffeine, a natural stimulant found in items like coffee, tea, and other caffeinated beverages or foods.','caffeinated',NULL,NULL),('fats and oils','Fats and oils, both natural and processed, are grouped in this category, including cooking oils, butter, margarine, and other oily substances.','oily',NULL,NULL),('fish and their products','Products in this category include various types of fish and seafood, either fresh, frozen, or preserved.','fish',NULL,NULL),('meat and their products','This category encompasses various types of meat and meat products derived from animals like beef, pork, poultry, and game.','meat',NULL,NULL),('milk, eggs and their products','Milk, eggs, cheese, yogurt, and other products derived from animals like cows, goats, and sheep are classified under dairy.','dairy',NULL,NULL),('preserved foods','Preserved foods that have been frozen to extend their shelf life fall into this category, ranging from fruits and vegetables to ready-to-eat meals.','frozen',NULL,NULL),('products with sweeteners','This category includes a wide range of beverages, such as water, juices, sodas, energy drinks, and alcoholic beverages.','sweet',NULL,NULL),('sweeteners','Sweeteners such as sugar, honey, and artificial sweeteners are categorized here, adding sweetness to foods and beverages.','sweet',NULL,NULL),('various beverages','Beverages of various kinds, including alcoholic and non-alcoholic options.','drink',NULL,NULL),('various plant based foods','Various plant-based foods, including fruits, vegetables, legumes, nuts, seeds, and meat substitutes like tofu, fall into this category.','vegetarian',NULL,NULL);
/*!40000 ALTER TABLE `food_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-25  4:08:16
