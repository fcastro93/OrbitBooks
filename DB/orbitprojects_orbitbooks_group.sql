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
-- Table structure for table `orbitbooks_group`
--

DROP TABLE IF EXISTS `orbitbooks_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orbitbooks_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `cover` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OrbitBooks_group_genre_id_ef6605d5_fk_OrbitBooks_groupgenre_id` (`genre_id`),
  CONSTRAINT `OrbitBooks_group_genre_id_ef6605d5_fk_OrbitBooks_groupgenre_id` FOREIGN KEY (`genre_id`) REFERENCES `orbitbooks_groupgenre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orbitbooks_group`
--

LOCK TABLES `orbitbooks_group` WRITE;
/*!40000 ALTER TABLE `orbitbooks_group` DISABLE KEYS */;
INSERT INTO `orbitbooks_group` VALUES (1,'New Age Books',1,'cover/blog_slider-1_0gUjlQr.jpg'),(2,'US Girls',2,'cover/blog_slider-1.jpg'),(3,'Oprah\'s Book Club',1,'cover/blog_slider-1_AM2ux7D.jpg'),(4,'Teen Books',1,'cover/blog_slider-1_piOLqY7.jpg'),(5,'Take Me Somewhere I\'ve Never Been Before',2,'cover/blog_slider-1_2xTEB7i.jpg'),(6,'Fabulous Reads for Upper Teens and New Adult',3,'cover/blog_slider-1_xh3jqbO.jpg');
/*!40000 ALTER TABLE `orbitbooks_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 13:25:29
