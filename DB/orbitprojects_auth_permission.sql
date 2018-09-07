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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add editorial book',7,'add_editorialbook'),(20,'Can change editorial book',7,'change_editorialbook'),(21,'Can delete editorial book',7,'delete_editorialbook'),(22,'Can add autor book',8,'add_autorbook'),(23,'Can change autor book',8,'change_autorbook'),(24,'Can delete autor book',8,'delete_autorbook'),(25,'Can add book genre',9,'add_bookgenre'),(26,'Can change book genre',9,'change_bookgenre'),(27,'Can delete book genre',9,'delete_bookgenre'),(28,'Can add contact',10,'add_contact'),(29,'Can change contact',10,'change_contact'),(30,'Can delete contact',10,'delete_contact'),(31,'Can add book user',11,'add_bookuser'),(32,'Can change book user',11,'change_bookuser'),(33,'Can delete book user',11,'delete_bookuser'),(34,'Can add process trade',12,'add_processtrade'),(35,'Can change process trade',12,'change_processtrade'),(36,'Can delete process trade',12,'delete_processtrade'),(37,'Can add country',13,'add_country'),(38,'Can change country',13,'change_country'),(39,'Can delete country',13,'delete_country'),(40,'Can add group',14,'add_group'),(41,'Can change group',14,'change_group'),(42,'Can delete group',14,'delete_group'),(43,'Can add currency',15,'add_currency'),(44,'Can change currency',15,'change_currency'),(45,'Can delete currency',15,'delete_currency'),(46,'Can add group member',16,'add_groupmember'),(47,'Can change group member',16,'change_groupmember'),(48,'Can delete group member',16,'delete_groupmember'),(49,'Can add year',17,'add_year'),(50,'Can change year',17,'change_year'),(51,'Can delete year',17,'delete_year'),(52,'Can add close trade',18,'add_closetrade'),(53,'Can change close trade',18,'change_closetrade'),(54,'Can delete close trade',18,'delete_closetrade'),(55,'Can add editorial',19,'add_editorial'),(56,'Can change editorial',19,'change_editorial'),(57,'Can delete editorial',19,'delete_editorial'),(58,'Can add language',20,'add_language'),(59,'Can change language',20,'change_language'),(60,'Can delete language',20,'delete_language'),(61,'Can add genre',21,'add_genre'),(62,'Can change genre',21,'change_genre'),(63,'Can delete genre',21,'delete_genre'),(64,'Can add currency exchange',22,'add_currencyexchange'),(65,'Can change currency exchange',22,'change_currencyexchange'),(66,'Can delete currency exchange',22,'delete_currencyexchange'),(67,'Can add score',23,'add_score'),(68,'Can change score',23,'change_score'),(69,'Can delete score',23,'delete_score'),(70,'Can add book',24,'add_book'),(71,'Can change book',24,'change_book'),(72,'Can delete book',24,'delete_book'),(73,'Can add rule',25,'add_rule'),(74,'Can change rule',25,'change_rule'),(75,'Can delete rule',25,'delete_rule'),(76,'Can add open trade',26,'add_opentrade'),(77,'Can change open trade',26,'change_opentrade'),(78,'Can delete open trade',26,'delete_opentrade'),(79,'Can add autor',27,'add_autor'),(80,'Can change autor',27,'change_autor'),(81,'Can delete autor',27,'delete_autor'),(82,'Can add group genre',28,'add_groupgenre'),(83,'Can change group genre',28,'change_groupgenre'),(84,'Can delete group genre',28,'delete_groupgenre'),(85,'Can add sponsor',29,'add_sponsor'),(86,'Can change sponsor',29,'change_sponsor'),(87,'Can delete sponsor',29,'delete_sponsor'),(88,'Can add online user activity',30,'add_onlineuseractivity'),(89,'Can change online user activity',30,'change_onlineuseractivity'),(90,'Can delete online user activity',30,'delete_onlineuseractivity'),(91,'Can add session',31,'add_session'),(92,'Can change session',31,'change_session'),(93,'Can delete session',31,'delete_session'),(94,'Can add association',32,'add_association'),(95,'Can change association',32,'change_association'),(96,'Can delete association',32,'delete_association'),(97,'Can add user social auth',33,'add_usersocialauth'),(98,'Can change user social auth',33,'change_usersocialauth'),(99,'Can delete user social auth',33,'delete_usersocialauth'),(100,'Can add nonce',34,'add_nonce'),(101,'Can change nonce',34,'change_nonce'),(102,'Can delete nonce',34,'delete_nonce'),(103,'Can add partial',35,'add_partial'),(104,'Can change partial',35,'change_partial'),(105,'Can delete partial',35,'delete_partial'),(106,'Can add code',36,'add_code'),(107,'Can change code',36,'change_code'),(108,'Can delete code',36,'delete_code');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 13:25:26
