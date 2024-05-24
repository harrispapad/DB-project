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
/*!50001 VIEW `recipe_view` AS select `recipe`.`recipe_id` AS `recipe_id`,`recipe`.`name` AS `name`,`recipe`.`sweet` AS `sweet`,`recipe`.`ethnicity` AS `ethnicity`,`recipe`.`difficulty` AS `difficulty`,`recipe`.`brief` AS `brief`,`recipe`.`number_steps` AS `number_steps`,`recipe`.`main_ingredient` AS `main_ingredient`,`recipe`.`img` AS `img`,`recipe`.`img_descr` AS `img_descr`,`recipe`.`theme_name` AS `theme_name`,`recipe`.`portions` AS `portions`,`recipe`.`tip1` AS `tip1`,`recipe`.`tip2` AS `tip2`,`recipe`.`tip3` AS `tip3`,`recipe`.`cooking_time` AS `cooking_time`,`recipe`.`preparation_time` AS `preparation_time` from `recipe` where `recipe`.`recipe_id` in (select `assignment`.`recipe_id` from `assignment` where (`assignment`.`chef_id` = 105)) */;
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
-- Dumping events for database 'masterchef'
--

--
-- Dumping routines for database 'masterchef'
--
/*!50003 DROP PROCEDURE IF EXISTS `calculate_assignment_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`harris`@`localhost` PROCEDURE `calculate_assignment_rating`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE assignment_id_val INT;
    DECLARE rating_sum DECIMAL(5, 2);
    DECLARE rating_avg DECIMAL(5, 2);
    
    -- Declare cursor to fetch assignment IDs where rating is null
    DECLARE assignment_cursor CURSOR FOR 
        SELECT assignment_id FROM assignment WHERE result IS NULL;
    
    -- Declare continue handler for cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN assignment_cursor;
    
    assignment_loop:LOOP
        FETCH assignment_cursor INTO assignment_id_val;
        IF done THEN
            LEAVE assignment_loop;
        END IF;
        
        -- Calculate average rating for the assignment
        SELECT (SUM(rating) / 3) INTO rating_sum
        FROM assignment_rating
        WHERE assignment_id = assignment_id_val;
        
        SET rating_avg = IFNULL(rating_sum, 0);
        
        -- Update assignment table with the calculated average rating
        UPDATE assignment
        SET result = rating_avg
        WHERE assignment_id = assignment_id_val;
    END LOOP;
    
    CLOSE assignment_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateChefUserView` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`harris`@`localhost` PROCEDURE `CreateChefUserView`(IN given_chef_id INT)
BEGIN
    SET @view_sql = CONCAT('
        CREATE OR REPLACE VIEW chef_user_', given_chef_id, ' AS
        SELECT  
            r.name AS recipe_name, 
            r.recipe_id, 
            r.main_ingredient, 
            r.theme_name, 
            r.sweet, 
            r.ethnicity AS recipe_ethnicity, 
            r.difficulty,
            r.brief, 
            r.number_steps, 
            r.tip1, 
            r.tip2, 
            r.tip3, 
            r.portions, 
            r.preparation_time, 
            r.cooking_time,
            CONCAT(c.first_name, '' '', c.last_name) AS chef_name, 
            c.chef_id, 
            c.first_name, 
            c.last_name, 
            c.ethnicity AS chef_ethnicity, 
            c.phone, 
            c.date_of_birth, 
            c.title,
            c.experience, 
            c.year, 
            GROUP_CONCAT(DISTINCT re.equipment_name) AS equipment_names, 
            GROUP_CONCAT(DISTINCT rm.meal) AS meals, 
            GROUP_CONCAT(DISTINCT ri.ingredient) AS ingredients, 
            GROUP_CONCAT(DISTINCT ri.amount) AS ingredient_amounts, 
            GROUP_CONCAT(DISTINCT ri.grams) AS ingredient_grams, 
            GROUP_CONCAT(DISTINCT rt.tag) AS tags
        FROM 
            recipe r
        JOIN 
            assignment a ON r.recipe_id = a.recipe_id
        JOIN 
            recipe_equipment re ON r.recipe_id = re.recipe_id
        JOIN 
            recipe_meal rm ON r.recipe_id = rm.recipe_id
        JOIN 
            recipe_ingredient ri ON r.recipe_id = ri.recipe_id
        JOIN 
            recipe_tag rt ON r.recipe_id = rt.recipe_id
        JOIN 
            chef c ON a.chef_id = c.chef_id
        WHERE 
            c.chef_id = ', given_chef_id, '
        GROUP BY 
            r.recipe_id;
    ');

    PREPARE stmt FROM @view_sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTopRatingsForChef` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`harris`@`localhost` PROCEDURE `GetTopRatingsForChef`(IN chef_id_param INT)
BEGIN
    SELECT judge_id, chef_id, SUM(rating) AS total_rating 
    FROM assignment_rating 
    WHERE chef_id = chef_id_param
    GROUP BY judge_id, chef_id 
    ORDER BY total_rating DESC
    LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateChefExpertiseLevel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`harris`@`localhost` PROCEDURE `UpdateChefExpertiseLevel`()
BEGIN
    UPDATE chef
    SET expertise_level = CASE
        WHEN title = 'chef' THEN 5
        WHEN title = 'sous chef' THEN 4
        WHEN title = 'A cook' THEN 3
        WHEN title = 'B cook' THEN 2
        WHEN title = 'C cook' THEN 1
        ELSE NULL
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24  9:01:30
