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
-- Table structure for table `orbitbooks_opentrade`
--

DROP TABLE IF EXISTS `orbitbooks_opentrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orbitbooks_opentrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` bigint(20) NOT NULL,
  `book_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OrbitBooks_opentrade_book_id_0021e9ee_fk_OrbitBooks_book_id` (`book_id`),
  KEY `OrbitBooks_opentrade_currency_id_3322dbce_fk_OrbitBook` (`currency_id`),
  KEY `OrbitBooks_opentrade_user_id_6a57cf1e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `OrbitBooks_opentrade_book_id_0021e9ee_fk_OrbitBooks_book_id` FOREIGN KEY (`book_id`) REFERENCES `orbitbooks_book` (`id`),
  CONSTRAINT `OrbitBooks_opentrade_currency_id_3322dbce_fk_OrbitBook` FOREIGN KEY (`currency_id`) REFERENCES `orbitbooks_currency` (`id`),
  CONSTRAINT `OrbitBooks_opentrade_user_id_6a57cf1e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orbitbooks_opentrade`
--

LOCK TABLES `orbitbooks_opentrade` WRITE;
/*!40000 ALTER TABLE `orbitbooks_opentrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `orbitbooks_opentrade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 13:25:28
