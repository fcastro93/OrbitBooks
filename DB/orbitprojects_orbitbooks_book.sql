-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: orbitprojects
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orbitbooks_book`
--

DROP TABLE IF EXISTS `orbitbooks_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orbitbooks_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `year_id` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OrbitBooks_book_year_id_af738608_fk_OrbitBooks_year_id` (`year_id`),
  CONSTRAINT `OrbitBooks_book_year_id_af738608_fk_OrbitBooks_year_id` FOREIGN KEY (`year_id`) REFERENCES `orbitbooks_year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orbitbooks_book`
--

LOCK TABLES `orbitbooks_book` WRITE;
/*!40000 ALTER TABLE `orbitbooks_book` DISABLE KEYS */;
INSERT INTO `orbitbooks_book` VALUES (1,'The Immortalists',1,'cover/91X4ZCruKNL_cf4mI0Z.jpg'),(2,'So You Want to Talk About Race',1,'cover/35099718.jpg'),(3,'Brave',1,'cover/220px-Brave_book_cover.jpg'),(4,'Feel Free',1,'cover/9781594206252.jpeg'),(5,'The Female Persuasion',1,'cover/9781594488405.jpeg'),(6,'The Elizas',1,'cover/the-elizas-9781501162770_hr.jpg'),(7,'Not That Bad: Dispatches from Rape Culture',1,'cover/y648.jpg'),(8,'The 7 1/2 Deaths of Evelyn Hardcastle',1,'cover/35967101.jpg'),(9,'The Hobbit',3,'cover/91b0C2YNSrL.jpg');
/*!40000 ALTER TABLE `orbitbooks_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 13:25:27
