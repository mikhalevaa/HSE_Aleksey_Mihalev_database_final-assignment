-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `diary_id` int NOT NULL,
  `studentes_id` int NOT NULL,
  `val` int NOT NULL,
  `source_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grades_source_idx` (`source_id`),
  KEY `grades_students_idx` (`studentes_id`),
  KEY `grades_diary_idx` (`diary_id`),
  CONSTRAINT `grades_diary` FOREIGN KEY (`diary_id`) REFERENCES `diary` (`id`),
  CONSTRAINT `grades_source` FOREIGN KEY (`source_id`) REFERENCES `source` (`id`),
  CONSTRAINT `grades_students` FOREIGN KEY (`studentes_id`) REFERENCES `students` (`id`),
  CONSTRAINT `grades_val` CHECK ((`val` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,1,1,5,2),(2,1,2,2,2),(3,1,3,5,2),(4,1,4,3,2),(20,1,5,5,2),(21,1,6,3,2),(22,1,7,3,2),(23,1,8,3,2),(24,1,9,3,2),(25,2,1,5,2),(26,2,2,1,2),(27,2,3,5,2),(28,2,4,5,2),(29,2,5,3,2),(30,2,6,5,2),(31,2,7,4,2),(32,2,8,5,2),(33,2,9,3,2),(34,3,1,5,2),(35,3,2,3,2),(36,3,4,2,2),(37,3,5,5,2),(38,3,6,4,2),(39,3,7,5,2),(40,3,8,5,2),(41,3,9,5,2),(42,1,1,5,1),(43,1,2,5,1),(44,1,3,3,1),(45,1,4,5,1),(46,1,5,5,1),(47,1,6,2,1),(48,1,7,3,1),(49,1,8,5,1),(50,1,9,4,1),(51,2,1,5,1),(52,2,2,5,1),(53,2,3,5,1),(54,2,4,5,1),(55,2,5,5,1),(56,2,6,5,1),(57,2,7,5,1),(58,2,8,5,1),(59,2,9,5,1),(60,3,1,2,1),(61,3,2,3,1),(62,3,3,2,1),(63,3,4,3,1),(64,3,5,3,1),(65,3,6,3,1),(66,3,7,1,1),(67,3,8,1,1),(68,3,9,1,1),(69,4,1,5,2),(70,4,2,5,2),(71,4,3,4,2),(72,4,4,5,2),(73,4,5,5,2),(74,4,6,5,2),(75,4,7,5,2),(76,4,8,5,2),(77,4,9,5,2),(78,6,1,5,2),(79,6,2,4,2),(80,6,3,4,2),(81,6,4,5,2),(82,6,5,5,2),(83,6,6,5,2),(84,6,7,4,2),(85,6,8,3,2),(86,6,9,5,2),(87,7,1,5,2),(88,7,2,5,2),(89,7,3,5,2),(90,7,4,4,2),(91,7,5,5,2),(92,7,6,5,2),(93,7,7,5,2),(94,7,8,4,2),(95,7,9,5,2),(96,8,1,1,2),(97,8,2,5,2),(98,8,3,5,2),(99,8,4,5,2),(100,8,5,3,2),(101,8,6,3,2),(102,8,7,5,2),(103,8,8,5,2),(104,8,9,5,2),(105,5,1,1,2),(106,5,2,4,2),(107,5,3,4,2),(108,5,4,4,2),(109,5,5,5,2),(110,5,6,5,2),(111,5,7,2,2),(112,5,8,2,2),(113,5,9,3,2),(114,4,1,5,1),(115,4,2,4,1),(116,4,3,5,1),(117,4,4,5,1),(118,4,5,5,1),(119,4,6,5,1),(120,4,7,5,1),(121,4,8,5,1),(122,4,9,5,1),(123,5,1,5,1),(124,5,2,5,1),(125,5,3,5,1),(126,5,4,5,1),(127,5,5,5,1),(128,5,6,5,1),(129,5,7,5,1),(130,5,8,5,1),(131,5,9,5,1),(132,6,1,5,1),(133,6,2,5,1),(134,6,3,5,1),(135,6,4,3,1),(136,6,5,3,1),(137,6,6,3,1),(138,6,7,5,1),(139,6,8,5,1),(140,6,9,2,1),(141,7,1,5,1),(142,7,2,5,1),(143,7,3,5,1),(144,7,4,4,1),(145,7,5,4,1),(146,7,6,4,1),(147,7,7,5,1),(148,7,8,5,1),(149,7,9,5,1),(150,8,1,1,1),(151,8,2,5,1),(152,8,3,2,1),(153,8,4,5,1),(154,8,5,5,1),(155,8,6,5,1),(156,8,7,5,1),(157,8,8,5,1),(158,8,9,5,1);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-20 21:30:15
