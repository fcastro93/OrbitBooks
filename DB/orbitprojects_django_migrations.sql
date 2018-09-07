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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-05 21:52:59.412000'),(2,'auth','0001_initial','2018-09-05 21:53:00.841000'),(3,'admin','0001_initial','2018-09-05 21:53:01.336000'),(4,'admin','0002_logentry_remove_auto_add','2018-09-05 21:53:01.353000'),(5,'contenttypes','0002_remove_content_type_name','2018-09-05 21:53:01.583000'),(6,'auth','0002_alter_permission_name_max_length','2018-09-05 21:53:01.743000'),(7,'auth','0003_alter_user_email_max_length','2018-09-05 21:53:01.778000'),(8,'auth','0004_alter_user_username_opts','2018-09-05 21:53:01.793000'),(9,'auth','0005_alter_user_last_login_null','2018-09-05 21:53:01.916000'),(10,'auth','0006_require_contenttypes_0002','2018-09-05 21:53:01.925000'),(11,'auth','0007_alter_validators_add_error_messages','2018-09-05 21:53:01.939000'),(12,'auth','0008_alter_user_username_max_length','2018-09-05 21:53:02.134000'),(13,'sessions','0001_initial','2018-09-05 21:53:02.228000'),(14,'OrbitBooks','0001_initial','2018-09-05 22:30:48.035000'),(15,'OrbitBooks','0002_book_cover','2018-09-07 00:18:28.398000'),(16,'OrbitBooks','0003_auto_20180906_2209','2018-09-07 04:09:15.225000'),(17,'OrbitBooks','0004_auto_20180906_2226','2018-09-07 04:26:21.203000'),(18,'OrbitBooks','0005_auto_20180906_2227','2018-09-07 04:27:43.300000'),(19,'OrbitBooks','0006_group_cover','2018-09-07 04:30:05.179000'),(20,'OrbitBooks','0007_sponsor','2018-09-07 04:55:06.484000'),(21,'OrbitBooks','0008_sponsor_country','2018-09-07 04:58:10.172000'),(22,'OrbitBooks','0009_sponsor_logo','2018-09-07 05:09:11.398000'),(23,'online_users','0001_initial','2018-09-07 16:14:37.516000'),(24,'user_sessions','0001_initial','2018-09-07 17:06:46.690000'),(25,'user_sessions','0002_auto_20151208_1536','2018-09-07 17:06:46.734000'),(26,'user_sessions','0003_auto_20161205_1516','2018-09-07 17:06:46.939000'),(27,'default','0001_initial','2018-09-07 17:50:11.082000'),(28,'social_auth','0001_initial','2018-09-07 17:50:11.091000'),(29,'default','0002_add_related_name','2018-09-07 17:50:11.332000'),(30,'social_auth','0002_add_related_name','2018-09-07 17:50:11.339000'),(31,'default','0003_alter_email_max_length','2018-09-07 17:50:11.431000'),(32,'social_auth','0003_alter_email_max_length','2018-09-07 17:50:11.438000'),(33,'default','0004_auto_20160423_0400','2018-09-07 17:50:11.460000'),(34,'social_auth','0004_auto_20160423_0400','2018-09-07 17:50:11.467000'),(35,'social_auth','0005_auto_20160727_2333','2018-09-07 17:50:11.506000'),(36,'social_django','0006_partial','2018-09-07 17:50:11.585000'),(37,'social_django','0007_code_timestamp','2018-09-07 17:50:11.714000'),(38,'social_django','0008_partial_timestamp','2018-09-07 17:50:11.845000'),(39,'social_django','0002_add_related_name','2018-09-07 17:50:11.854000'),(40,'social_django','0003_alter_email_max_length','2018-09-07 17:50:11.860000'),(41,'social_django','0001_initial','2018-09-07 17:50:11.867000'),(42,'social_django','0004_auto_20160423_0400','2018-09-07 17:50:11.874000'),(43,'social_django','0005_auto_20160727_2333','2018-09-07 17:50:11.880000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
