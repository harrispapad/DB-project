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
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (105,'Eirinis','Stroubakos','306940000004','2003-11-16',21,NULL,NULL,9,'C cook',1,'french',1),(108,'Anastasis','Board','306940000007','2000-08-14',24,NULL,NULL,8,'A cook',1,'greek',3),(109,'Vicky','Polyplaces','306940000008','2001-05-10',23,NULL,NULL,5,'chef',1,'italian',5),(114,'Foteini','Sergi','306940000013','1998-07-29',26,NULL,NULL,6,'B cook',1,'spanish',2),(120,'Leonardo','Robbie','306940000019','2002-11-11',22,NULL,NULL,7,'C cook',1,'mexican',1),(123,'Martin','Tarantino','306940000022','2004-04-15',20,NULL,NULL,15,'A cook',1,'japanese',3),(126,'Ron','Potter','306940000025','1988-08-24',36,NULL,NULL,14,'chef',1,'english',5),(127,'Adam','Ford','306940000026','1995-12-19',29,NULL,NULL,11,'sous chef',1,'italian',4),(132,'Freddie','Bowie','306940000031','1996-09-05',28,NULL,NULL,7,'sous chef',1,'greek',4),(134,'Alfredo','Deniro','306940000033','2000-04-25',24,NULL,NULL,11,'B cook',1,'chinese',2),(138,'Mia','Keaton','306940000037','1985-02-09',39,NULL,NULL,13,'A cook',1,'american',3),(141,'Susan','Lawrence','306940000040','2002-10-04',22,NULL,NULL,14,'chef',1,'american',5),(144,'Ryan','Nicholson','306940000043','1980-11-12',44,NULL,NULL,8,'B cook',1,'chinese',2),(147,'Kevin','Johansson','306940000046','1989-07-26',35,NULL,NULL,11,'sous chef',1,'japanese',4),(150,'John','Sellers','306940000049','1989-10-27',35,NULL,NULL,8,'C cook',1,'english',1),(151,'Socrates','Papakon','306940000050','1977-09-29',47,NULL,NULL,14,'chef',1,'turkish',5),(152,'Thanasis','Malamas','306940000051','1999-04-26',25,NULL,NULL,15,'B cook',1,'turkish',2),(155,'Alkinoos','Papazoglou','306940000054','2003-09-19',21,NULL,NULL,6,'C cook',1,'cypriot',1),(160,'Anna','Alexiou','306940000059','2002-12-20',22,NULL,NULL,13,'C cook',1,'cypriot',1),(161,'Anthony','Cobain','306940000060','1992-11-01',32,NULL,NULL,5,'sous chef',1,'portugal',4),(165,'Pavlos','Ironbird','306940000064','1990-12-06',34,NULL,NULL,14,'B cook',1,'portugal',2),(167,'Jean','Dupont','330100000000','1975-12-20',49,NULL,NULL,10,'A cook',1,'french',3),(169,'Miguel','Lopez','349110000001','1991-05-03',33,NULL,NULL,9,'chef',1,'spanish',5),(170,'Luis','Hernandez','525510000000','1978-07-30',46,NULL,NULL,15,'chef',1,'mexican',5),(173,'Wei','Lim','6590123456','1995-08-15',29,NULL,NULL,8,'A cook',1,'singaporean',3),(174,'Jia','Yong','6590123457','1990-11-27',34,NULL,NULL,11,'C cook',1,'singaporean',1),(202,'Kiriaki','Frago','306940000001','2003-06-23',21,NULL,NULL,8,'sous chef',2,'greek',4),(204,'Anna','Oiko','306940000003','2003-04-01',21,NULL,NULL,9,'B cook',2,'chinese',2),(210,'Stefanos','Timeos','306940000009','1996-04-16',28,NULL,NULL,11,'C cook',2,'english',1),(213,'Olga','Jones','306940000012','1993-10-16',31,NULL,NULL,10,'A cook',2,'french',3),(215,'Elli','Smith','306940000014','2003-05-28',21,NULL,NULL,9,'C cook',2,'italian',1),(216,'Athanasia','Jolie','306940000015','1990-09-24',34,NULL,NULL,13,'chef',2,'american',5),(222,'Quentin','Scorcese','306940000021','1998-03-27',26,NULL,NULL,8,'sous chef',2,'chinese',4),(225,'Brad','Watson','306940000024','1973-12-18',51,NULL,NULL,12,'C cook',2,'mexican',1),(228,'Harrison','Driver','306940000027','1992-07-13',32,NULL,NULL,9,'A cook',2,'japanese',3),(229,'Anne','Streep','306940000028','1982-11-12',42,NULL,NULL,13,'B cook',2,'greek',2),(231,'David','Mercury','306940000030','1997-01-08',27,NULL,NULL,10,'chef',2,'american',5),(235,'Marlon','Duvall','306940000034','1974-04-03',50,NULL,NULL,9,'C cook',2,'french',1),(237,'Diane','Farrow','306940000036','2003-02-05',21,NULL,NULL,8,'sous chef',2,'japanese',4),(240,'Courteney','Perry','306940000039','1994-06-15',30,NULL,NULL,7,'C cook',2,'english',1),(243,'Jack','Gosling','306940000042','1977-04-22',47,NULL,NULL,12,'A cook',2,'spanish',3),(246,'Javier','Cruz','306940000045','1999-03-01',25,NULL,NULL,13,'chef',2,'mexican',5),(249,'Peter','Cleese','306940000048','1975-09-08',49,NULL,NULL,9,'B cook',2,'italian',2),(253,'John','Pavlidis','306940000052','1989-10-30',35,NULL,NULL,9,'C cook',2,'turkish',1),(254,'Pavlos','Angelakas','306940000053','1984-10-13',40,NULL,NULL,7,'sous chef',2,'turkish',4),(257,'Miltos','Kotsiras','306940000056','1975-07-31',49,NULL,NULL,4,'chef',2,'cypriot',5),(259,'Xaris','Vissi','306940000058','2000-12-27',24,NULL,NULL,10,'sous chef',2,'cypriot',4),(262,'Kurt','Kiedis','306940000061','1977-02-20',47,NULL,NULL,10,'C cook',2,'portugal',1),(264,'Lefteris','Rouvas','306940000063','1994-03-27',30,NULL,NULL,5,'A cook',2,'portugal',3),(266,'Pedro','Rodriguez','351910000001','1989-09-18',35,NULL,NULL,8,'A cook',2,'singaporean',3),(268,'Manuel','Garcia','349110000000','1986-02-14',38,NULL,NULL,7,'B cook',2,'spanish',2),(275,'Li','Chen','6590123458','1988-03-10',36,NULL,NULL,10,'chef',2,'singaporean',5),(301,'Jamie','Oliver','306940000000','2000-09-09',24,NULL,NULL,10,'chef',3,'american',5),(303,'Haris','Papado','306940000002','2002-04-08',22,NULL,NULL,12,'A cook',3,'spanish',3),(306,'George','Striftis','306940000005','2002-04-28',22,NULL,NULL,12,'chef',3,'mexican',5),(307,'Dimitra','Angel','306940000006','2002-06-06',22,NULL,NULL,9,'sous chef',3,'japanese',4),(311,'Kostas','Samlis','306940000010','1998-10-10',26,NULL,NULL,7,'chef',3,'japanese',5),(312,'Dionysis','Allen','306940000011','1988-03-26',36,NULL,NULL,14,'sous chef',3,'greek',4),(317,'Emma','Dafoe','306940000016','1988-07-22',36,NULL,NULL,15,'sous chef',3,'greek',4),(318,'Willem','Stone','306940000017','1988-11-06',36,NULL,NULL,11,'A cook',3,'english',3),(319,'Woody','Marx','306940000018','1974-11-30',50,NULL,NULL,9,'B cook',3,'chinese',2),(321,'Margot','Dicaprio','306940000020','1990-07-02',34,NULL,NULL,12,'chef',3,'french',5),(324,'Emma','Pitt','306940000023','2003-07-30',21,NULL,NULL,10,'B cook',3,'chinese',2),(330,'Meryl','Hathaway','306940000029','2004-06-22',20,NULL,NULL,8,'C cook',3,'american',1),(333,'Robert','Pacino','306940000032','1973-08-17',51,NULL,NULL,15,'A cook',3,'spanish',3),(336,'Robert','Brando','306940000035','2001-01-05',23,NULL,NULL,12,'chef',3,'mexican',5),(339,'Matthew','Cox','306940000038','1979-08-19',45,NULL,NULL,10,'B cook',3,'italian',2),(342,'Jennifer','Sarandon','306940000041','1990-08-15',34,NULL,NULL,9,'sous chef',3,'italian',4),(345,'Penelope','Bardem','306940000044','2004-04-28',20,NULL,NULL,10,'C cook',3,'french',1),(348,'Scarlett','Spacey','306940000047','1984-11-22',40,NULL,NULL,15,'A cook',3,'english',3),(356,'Nick','Johnidis','306940000055','1988-03-20',36,NULL,NULL,9,'sous chef',3,'turkish',4),(358,'Johnny','Pascha','306940000057','1983-10-05',41,NULL,NULL,8,'B cook',3,'cypriot',2),(363,'Sakis','Pantazis','306940000062','1972-01-05',52,NULL,NULL,9,'chef',3,'portugal',5),(371,'Aylin','Yılmaz','905310000000','1994-10-22',30,NULL,NULL,10,'A cook',3,'turkish',3),(372,'Nicos','Georgiou','357220000000','1980-04-17',44,NULL,NULL,11,'sous chef',3,'cypriot',4),(376,'Carlos','Silva','351910000000','1983-06-05',41,NULL,NULL,7,'B cook',3,'portugal',2),(377,'Siew','Heng','6590123459','1992-05-20',32,NULL,NULL,12,'B cook',3,'Singaporean',2),(378,'Liang','Tang','6590123460','1987-11-12',37,NULL,NULL,9,'A cook',3,'Singaporean',3);
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`harris`@`localhost`*/ /*!50003 TRIGGER `calculate_age` BEFORE INSERT ON `chef` FOR EACH ROW BEGIN
    DECLARE current_year INT;
    DECLARE birth_year INT;
    
    SET current_year = YEAR(CURDATE());
    SET birth_year = YEAR(NEW.date_of_birth);
    
    SET NEW.age = current_year - birth_year;
END */;;
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

-- Dump completed on 2024-05-24  9:01:29
