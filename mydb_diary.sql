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
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subjects_id` int NOT NULL,
  `teachers_id` int NOT NULL,
  `st_group_id` int NOT NULL,
  `year_o_study` int NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `diary_subjects_idx` (`subjects_id`),
  KEY `diary_techers_idx` (`teachers_id`),
  KEY `diary_subjects_st_group_idx` (`st_group_id`),
  CONSTRAINT `diary_subjects` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `diary_subjects_st_group` FOREIGN KEY (`st_group_id`) REFERENCES `st_group` (`id`),
  CONSTRAINT `diary_techers` FOREIGN KEY (`teachers_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (1,1,2,1,1,'2022-09-10'),(2,1,2,1,1,'2022-09-11'),(3,1,2,1,1,'2022-09-15'),(4,1,2,2,1,'2022-09-16'),(5,1,2,2,1,'2022-09-17'),(6,1,2,2,1,'2022-09-19'),(7,1,1,1,2,'2024-09-10'),(8,2,1,1,2,'2024-09-11'),(9,3,1,1,2,'2024-09-12'),(10,4,1,2,2,'2024-09-17'),(11,2,1,2,2,'2023-09-18'),(12,2,1,2,2,'2023-09-18'),(13,3,3,1,1,'2022-10-01'),(14,3,3,1,1,'2022-10-02'),(15,3,3,1,1,'2022-10-03'),(16,3,3,2,1,'2022-10-15'),(17,3,3,2,1,'2022-10-16'),(18,3,3,2,1,'2022-10-17');
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
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
