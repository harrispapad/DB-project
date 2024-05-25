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
  KEY `a_recipe_id_index` (`recipe_id`),
  CONSTRAINT `fk_assignment_chef` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_assignment_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignment_rating`
--

DROP TABLE IF EXISTS `assignment_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_rating` (
  `judge_id` int NOT NULL,
  `chef_id` int NOT NULL,
  `assignment_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  KEY `judge_id` (`judge_id`),
  KEY `assignment_id` (`assignment_id`),
  CONSTRAINT `fk_assignment` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`assignment_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_assignment_judge` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef` (
  `chef_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` int NOT NULL,
  `image` blob,
  `image_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `experience` int NOT NULL,
  `title` enum('C cook','B cook','A cook','sous chef','chef') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `ethnicity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expertise_level` int DEFAULT NULL,
  PRIMARY KEY (`chef_id`),
  KEY `fk_chef_ethinicity` (`ethnicity`),
  KEY `idx_first_name` (`first_name`),
  KEY `idx_last_name` (`last_name`),
  CONSTRAINT `fk_chef_ethnicity` FOREIGN KEY (`ethnicity`) REFERENCES `ethnicity` (`name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chef_chk_1` CHECK ((`experience` >= 0)),
  CONSTRAINT `chef_chk_2` CHECK ((`expertise_level` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `chef_view`
--

DROP TABLE IF EXISTS `chef_view`;
/*!50001 DROP VIEW IF EXISTS `chef_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `chef_view` AS SELECT 
 1 AS `chef_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `phone`,
 1 AS `date_of_birth`,
 1 AS `age`,
 1 AS `image`,
 1 AS `image_desc`,
 1 AS `experience`,
 1 AS `title`,
 1 AS `year`,
 1 AS `ethnicity`,
 1 AS `expertise_level`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episode` (
  `episode_id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  PRIMARY KEY (`episode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `episode_assignment`
--

DROP TABLE IF EXISTS `episode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episode_assignment` (
  `episode_id` int NOT NULL,
  `assignment_id` int NOT NULL,
  UNIQUE KEY `assignment_id_UNIQUE` (`assignment_id`),
  KEY `fk_episode_assignment_episode_id_idx` (`episode_id`),
  KEY `fk_episode_assignment_assignment_id_idx` (`assignment_id`),
  CONSTRAINT `fk_episode_assignment_assignment_id` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`assignment_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_episode_assignment_episode_id` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `episode_judge`
--

DROP TABLE IF EXISTS `episode_judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episode_judge` (
  `episode_id` int NOT NULL,
  `judge_id` int NOT NULL,
  KEY `fk_episode_judge_judge_id_idx` (`judge_id`),
  KEY `fk_episode_judge_episode_id_idx` (`episode_id`),
  CONSTRAINT `fk_episode_judge_episode_id` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_episode_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `ethnicity`
--

DROP TABLE IF EXISTS `ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ethnicity` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `food_group`
--

DROP TABLE IF EXISTS `food_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_group` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `calories` int NOT NULL,
  `protein` int NOT NULL,
  `carbs` int NOT NULL,
  `fats` int NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `food_group_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_ingredient_food_group` (`food_group_name`),
  CONSTRAINT `fk_ingredient_food_group` FOREIGN KEY (`food_group_name`) REFERENCES `food_group` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ingredient_chk_2` CHECK ((`calories` >= 0)),
  CONSTRAINT `ingredient_chk_3` CHECK ((`protein` >= 0)),
  CONSTRAINT `ingredient_chk_4` CHECK ((`carbs` >= 0)),
  CONSTRAINT `ingredient_chk_5` CHECK ((`fats` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `judge`
--

DROP TABLE IF EXISTS `judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge` (
  `judge_id` int NOT NULL AUTO_INCREMENT,
  `chef_id` int DEFAULT NULL,
  PRIMARY KEY (`judge_id`),
  KEY `chef_id` (`chef_id`),
  CONSTRAINT `fk_judge_chefid` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3781 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meals`
--

DROP TABLE IF EXISTS `meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals` (
  `meal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nutritional_information`
--

DROP TABLE IF EXISTS `nutritional_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutritional_information` (
  `recipe_id` int NOT NULL,
  `calories` int NOT NULL,
  `fats` int NOT NULL,
  `protein` int NOT NULL,
  `carbs` int NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `fk_nutr_info_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `nutritional_information_chk_1` CHECK ((`calories` >= 0)),
  CONSTRAINT `nutritional_information_chk_2` CHECK ((`fats` >= 0)),
  CONSTRAINT `nutritional_information_chk_3` CHECK ((`protein` >= 0)),
  CONSTRAINT `nutritional_information_chk_4` CHECK ((`carbs` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipe_id` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sweet` tinyint(1) NOT NULL,
  `ethnicity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `difficulty` int NOT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_steps` int NOT NULL,
  `main_ingredient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `theme_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `portions` int NOT NULL,
  `tip1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tip2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tip3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cooking_time` int NOT NULL,
  `preparation_time` int NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `idx_recipe_main_ingredient` (`main_ingredient`),
  KEY `idx_recipe_theme_name` (`theme_name`),
  KEY `fk_ehtnicity_idx` (`ethnicity`),
  KEY `r_recipe_id_index` (`recipe_id`),
  CONSTRAINT `fk_recipe_ethnicity` FOREIGN KEY (`ethnicity`) REFERENCES `ethnicity` (`name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_recipe_main_ingredient` FOREIGN KEY (`main_ingredient`) REFERENCES `ingredient` (`name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_recipe_theme` FOREIGN KEY (`theme_name`) REFERENCES `theme` (`name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `recipe_chk_1` CHECK (((`difficulty` >= 1) and (`difficulty` <= 5))),
  CONSTRAINT `recipe_chk_2` CHECK ((`portions` >= 0)),
  CONSTRAINT `recipe_chk_3` CHECK ((`portions` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recipe_equipment`
--

DROP TABLE IF EXISTS `recipe_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_equipment` (
  `recipe_id` int NOT NULL,
  `equipment_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `recipe_id` (`recipe_id`),
  KEY `equipment_name` (`equipment_name`),
  CONSTRAINT `recipe_equipment_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `recipe_equipment_ibfk_2` FOREIGN KEY (`equipment_name`) REFERENCES `equipment` (`name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `recipe_equipment_view`
--

DROP TABLE IF EXISTS `recipe_equipment_view`;
/*!50001 DROP VIEW IF EXISTS `recipe_equipment_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recipe_equipment_view` AS SELECT 
 1 AS `recipe_id`,
 1 AS `equipment_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `recipe_ingredient`
--

DROP TABLE IF EXISTS `recipe_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_ingredient` (
  `recipe_id` int NOT NULL,
  `ingredient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grams` int NOT NULL,
  KEY `recipe_id` (`recipe_id`),
  KEY `ingredient` (`ingredient`),
  CONSTRAINT `recipe_ingredient_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `recipe_ingredient_ibfk_2` FOREIGN KEY (`ingredient`) REFERENCES `ingredient` (`name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `recipe_ingredient_view`
--

DROP TABLE IF EXISTS `recipe_ingredient_view`;
/*!50001 DROP VIEW IF EXISTS `recipe_ingredient_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recipe_ingredient_view` AS SELECT 
 1 AS `recipe_id`,
 1 AS `ingredient`,
 1 AS `amount`,
 1 AS `grams`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `recipe_meal_view`
--

DROP TABLE IF EXISTS `recipe_meal_view`;
/*!50001 DROP VIEW IF EXISTS `recipe_meal_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recipe_meal_view` AS SELECT 
 1 AS `recipe_id`,
 1 AS `meal`*/;
SET character_set_client = @saved_cs_client;

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
  KEY `rt_recipe_id_index` (`recipe_id`),
  CONSTRAINT `recipe_tag_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `recipe_tag_ibfk_2` FOREIGN KEY (`tag`) REFERENCES `tags` (`tag`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `recipe_tag_view`
--

DROP TABLE IF EXISTS `recipe_tag_view`;
/*!50001 DROP VIEW IF EXISTS `recipe_tag_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recipe_tag_view` AS SELECT 
 1 AS `recipe_id`,
 1 AS `tag`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `recipe_view`
--

DROP TABLE IF EXISTS `recipe_view`;
/*!50001 DROP VIEW IF EXISTS `recipe_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recipe_view` AS SELECT 
 1 AS `recipe_id`,
 1 AS `name`,
 1 AS `sweet`,
 1 AS `ethnicity`,
 1 AS `difficulty`,
 1 AS `brief`,
 1 AS `number_steps`,
 1 AS `main_ingredient`,
 1 AS `img`,
 1 AS `img_descr`,
 1 AS `theme_name`,
 1 AS `portions`,
 1 AS `tip1`,
 1 AS `tip2`,
 1 AS `tip3`,
 1 AS `cooking_time`,
 1 AS `preparation_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `step`
--

DROP TABLE IF EXISTS `step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `step` (
  `series` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `recipe_id` int NOT NULL,
  KEY `fk_step_1_idx` (`recipe_id`),
  CONSTRAINT `fk_step_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `step_chk_1` CHECK ((`series` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `tag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` blob,
  `img_descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`tag`),
  KEY `idx_tags_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_theme_name` (`name`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'masterchef'
--

--
-- Dumping routines for database 'masterchef'
--

--
-- Final view structure for view `chef_view`
--

/*!50001 DROP VIEW IF EXISTS `chef_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`harris`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `chef_view` AS select `chef`.`chef_id` AS `chef_id`,`chef`.`first_name` AS `first_name`,`chef`.`last_name` AS `last_name`,`chef`.`phone` AS `phone`,`chef`.`date_of_birth` AS `date_of_birth`,`chef`.`age` AS `age`,`chef`.`image` AS `image`,`chef`.`image_desc` AS `image_desc`,`chef`.`experience` AS `experience`,`chef`.`title` AS `title`,`chef`.`year` AS `year`,`chef`.`ethnicity` AS `ethnicity`,`chef`.`expertise_level` AS `expertise_level` from `chef` where (`chef`.`chef_id` = 105) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recipe_equipment_view`
--

/*!50001 DROP VIEW IF EXISTS `recipe_equipment_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`harris`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recipe_equipment_view` AS select `recipe_equipment`.`recipe_id` AS `recipe_id`,`recipe_equipment`.`equipment_name` AS `equipment_name` from `recipe_equipment` where `recipe_equipment`.`recipe_id` in (select `recipe_view`.`recipe_id` from `recipe_view`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recipe_ingredient_view`
--

/*!50001 DROP VIEW IF EXISTS `recipe_ingredient_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`harris`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recipe_ingredient_view` AS select `recipe_ingredient`.`recipe_id` AS `recipe_id`,`recipe_ingredient`.`ingredient` AS `ingredient`,`recipe_ingredient`.`amount` AS `amount`,`recipe_ingredient`.`grams` AS `grams` from `recipe_ingredient` where `recipe_ingredient`.`recipe_id` in (select `recipe_view`.`recipe_id` from `recipe_view`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recipe_meal_view`
--

/*!50001 DROP VIEW IF EXISTS `recipe_meal_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`harris`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recipe_meal_view` AS select `recipe_meal`.`recipe_id` AS `recipe_id`,`recipe_meal`.`meal` AS `meal` from `recipe_meal` where `recipe_meal`.`recipe_id` in (select `recipe_view`.`recipe_id` from `recipe_view`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recipe_tag_view`
--

/*!50001 DROP VIEW IF EXISTS `recipe_tag_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`harris`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recipe_tag_view` AS select `recipe_tag`.`recipe_id` AS `recipe_id`,`recipe_tag`.`tag` AS `tag` from `recipe_tag` where `recipe_tag`.`recipe_id` in (select `recipe_view`.`recipe_id` from `recipe_view`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recipe_view`
--

/*!50001 DROP VIEW IF EXISTS `recipe_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`harris`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recipe_view` AS select `recipe`.`recipe_id` AS `recipe_id`,`recipe`.`name` AS `name`,`recipe`.`sweet` AS `sweet`,`recipe`.`ethnicity` AS `ethnicity`,`recipe`.`difficulty` AS `difficulty`,`recipe`.`brief` AS `brief`,`recipe`.`number_steps` AS `number_steps`,`recipe`.`main_ingredient` AS `main_ingredient`,`recipe`.`img_url` AS `img`,`recipe`.`img_descr` AS `img_descr`,`recipe`.`theme_name` AS `theme_name`,`recipe`.`portions` AS `portions`,`recipe`.`tip1` AS `tip1`,`recipe`.`tip2` AS `tip2`,`recipe`.`tip3` AS `tip3`,`recipe`.`cooking_time` AS `cooking_time`,`recipe`.`preparation_time` AS `preparation_time` from `recipe` where `recipe`.`recipe_id` in (select `assignment`.`recipe_id` from `assignment` where (`assignment`.`chef_id` = 105)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-25  4:06:48
