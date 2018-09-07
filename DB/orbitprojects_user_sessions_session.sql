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
-- Table structure for table `user_sessions_session`
--

DROP TABLE IF EXISTS `user_sessions_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sessions_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `last_activity` datetime(6) NOT NULL,
  `ip` char(39) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`session_key`),
  KEY `user_sessions_session_user_id_c6dc9ffa_fk_auth_user_id` (`user_id`),
  KEY `user_sessions_session_expire_date_48810852` (`expire_date`),
  CONSTRAINT `user_sessions_session_user_id_c6dc9ffa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sessions_session`
--

LOCK TABLES `user_sessions_session` WRITE;
/*!40000 ALTER TABLE `user_sessions_session` DISABLE KEYS */;
INSERT INTO `user_sessions_session` VALUES ('7pgcqh54ykp3tgyq16y3rdlaje36fb59','YjY1ZDNlNWQ2Y2FhYzEyMTRjOTljMWQxMWI2ODA2ZWQxYThkM2NkNjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0NzBkOTM1NTBlNjc4MzkwMGQ0MTM4NjI2MTMxNmVmY2Y1OTcxN2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-09-21 17:39:47.389000','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','2018-09-07 17:39:47.390000','192.168.1.100',1),('zcv4mr0670wmo9yd2w2meov4wv6ulv1q','YjY1ZDNlNWQ2Y2FhYzEyMTRjOTljMWQxMWI2ODA2ZWQxYThkM2NkNjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0NzBkOTM1NTBlNjc4MzkwMGQ0MTM4NjI2MTMxNmVmY2Y1OTcxN2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-09-21 17:12:43.670000','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','2018-09-07 17:12:43.670000','192.168.1.100',1);
/*!40000 ALTER TABLE `user_sessions_session` ENABLE KEYS */;
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
