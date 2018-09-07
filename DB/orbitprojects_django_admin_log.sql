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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-09-07 00:31:54.753000','1','Year object',1,'[{\"added\": {}}]',17,1),(2,'2018-09-07 00:37:30.715000','1','The Immortalists',1,'[{\"added\": {}}]',24,1),(3,'2018-09-07 01:25:48.799000','1','The Immortalists',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',24,1),(4,'2018-09-07 01:25:58.790000','1','The Immortalists',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',24,1),(5,'2018-09-07 01:37:44.717000','2','2017',1,'[{\"added\": {}}]',17,1),(6,'2018-09-07 01:40:46.793000','2','So You Want to Talk About Race',1,'[{\"added\": {}}]',24,1),(7,'2018-09-07 02:00:36.000000','3','Brave',1,'[{\"added\": {}}]',24,1),(8,'2018-09-07 02:01:29.470000','4','Feel Free',1,'[{\"added\": {}}]',24,1),(9,'2018-09-07 02:02:29.138000','5','The Female Persuasion',1,'[{\"added\": {}}]',24,1),(10,'2018-09-07 02:02:56.135000','6','The Elizas',1,'[{\"added\": {}}]',24,1),(11,'2018-09-07 02:03:16.305000','7','Not That Bad: Dispatches from Rape Culture',1,'[{\"added\": {}}]',24,1),(12,'2018-09-07 02:03:49.841000','8','The 7 1/2 Deaths of Evelyn Hardcastle',1,'[{\"added\": {}}]',24,1),(13,'2018-09-07 02:05:27.845000','3','1937',1,'[{\"added\": {}}]',17,1),(14,'2018-09-07 02:06:09.701000','9','The Hobbit',1,'[{\"added\": {}}]',24,1),(15,'2018-09-07 04:15:21.233000','2','charfire',1,'[{\"added\": {}}]',4,1),(16,'2018-09-07 04:15:30.357000','3','fcastro93',1,'[{\"added\": {}}]',4,1),(17,'2018-09-07 04:16:13.822000','1','New Age Books',1,'[{\"added\": {}}]',14,1),(18,'2018-09-07 04:16:35.376000','2','US Girls',1,'[{\"added\": {}}]',14,1),(19,'2018-09-07 04:23:02.738000','2','US Girls',2,'[{\"changed\": {\"fields\": [\"member\"]}}]',14,1),(20,'2018-09-07 04:23:32.630000','2','US Girls',2,'[{\"changed\": {\"fields\": [\"member\"]}}]',14,1),(21,'2018-09-07 04:23:43.188000','1','New Age Books',2,'[{\"changed\": {\"fields\": [\"member\"]}}]',14,1),(22,'2018-09-07 04:26:59.699000','1','Recommendations',1,'[{\"added\": {}}]',28,1),(23,'2018-09-07 04:27:05.078000','2','Social',1,'[{\"added\": {}}]',28,1),(24,'2018-09-07 04:27:12.354000','3','Debating',1,'[{\"added\": {}}]',28,1),(25,'2018-09-07 04:28:02.194000','2','US Girls',2,'[{\"changed\": {\"fields\": [\"genre\"]}}]',14,1),(26,'2018-09-07 04:28:08.062000','1','New Age Books',2,'[{\"changed\": {\"fields\": [\"genre\"]}}]',14,1),(27,'2018-09-07 04:31:11.904000','2','US Girls',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',14,1),(28,'2018-09-07 04:31:31.817000','1','New Age Books',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',14,1),(29,'2018-09-07 04:32:33.339000','2','US Girls',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',14,1),(30,'2018-09-07 04:32:37.685000','2','US Girls',2,'[]',14,1),(31,'2018-09-07 04:32:43.656000','1','New Age Books',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',14,1),(32,'2018-09-07 04:33:27.160000','3','Oprah\'s Book Club',1,'[{\"added\": {}}]',14,1),(33,'2018-09-07 04:33:40.765000','4','Teen Books',1,'[{\"added\": {}}]',14,1),(34,'2018-09-07 04:34:05.110000','5','Take Me Somewhere I\'ve Never Been Before',1,'[{\"added\": {}}]',14,1),(35,'2018-09-07 04:34:20.786000','6','Fabulous Reads for Upper Teens and New Adult',1,'[{\"added\": {}}]',14,1),(36,'2018-09-07 04:58:59.698000','2','Spanish',1,'[{\"added\": {}}]',20,1),(37,'2018-09-07 04:59:07.196000','1','Costa Rica',1,'[{\"added\": {}}]',13,1),(38,'2018-09-07 05:03:49.274000','1','Los Patitos Bookstore',1,'[{\"added\": {}}]',29,1),(39,'2018-09-07 05:04:58.672000','2','Salvatandas Bookstore',1,'[{\"added\": {}}]',29,1),(40,'2018-09-07 05:10:02.601000','2','Salvatandas Bookstore',2,'[{\"changed\": {\"fields\": [\"logo\"]}}]',29,1),(41,'2018-09-07 05:10:10.809000','1','Los Patitos Bookstore',2,'[{\"changed\": {\"fields\": [\"logo\"]}}]',29,1),(42,'2018-09-07 16:21:46.497000','4','admin2',1,'[{\"added\": {}}]',4,1),(43,'2018-09-07 16:21:52.434000','4','admin2',2,'[{\"changed\": {\"fields\": [\"is_superuser\"]}}]',4,1),(44,'2018-09-07 16:22:17.881000','4','admin2',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',4,1),(45,'2018-09-07 17:12:37.398000','z9j216ncdklj4zj747igjim2xccefk11','Session object',3,'',31,1),(46,'2018-09-07 17:12:37.497000','xckjzrkvx6mfmox2jggb2sxuo03dq2id','Session object',3,'',31,1),(47,'2018-09-07 17:12:37.505000','qra6jmii1ghn9jbehqp478juioynlycj','Session object',3,'',31,1),(48,'2018-09-07 17:12:37.515000','n510ab8anb54tjegxdrrz6b16jvtxc6b','Session object',3,'',31,1),(49,'2018-09-07 17:12:37.524000','jl5cscf4hfv55c7zx69hkqi1mjtask8q','Session object',3,'',31,1),(50,'2018-09-07 17:12:37.531000','iufufw5dtznkhh25qv0sfvnw2pllzt5w','Session object',3,'',31,1),(51,'2018-09-07 17:12:37.538000','2qa9bl3xj5afxgyeumnfrrjdsueouoyc','Session object',3,'',31,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
