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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ful_name` varchar(50) NOT NULL,
  `dr` date NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(45) NOT NULL,
  `st_group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studets_st_group_idx` (`st_group_id`),
  CONSTRAINT `studets_st_group` FOREIGN KEY (`st_group_id`) REFERENCES `st_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Михайлов Михаил Михайлович','1987-02-13','+79013042136','miha@mail.ru',1),(2,'Грин Марк Евгеньевич','2000-11-21','+79451235674','gri@mail.ru',1),(3,'Титов Герман Петрович','1980-03-03','+79318945566','titov@mail.ru',1),(4,'Ефимов Александр Маркович','1995-07-23','+79501234554','alex@mail.ru',1),(5,'Гринев Глеб Егорович','2002-09-14','+79119401213','gleb@mail.ru',1),(6,'Терешкова Ева Сергеевна','2005-08-11','+79213002121','eva@mail.ru',2),(7,'Хоменко Олег Алексеевич','1990-09-09','+78119001122','oleg@mail.ru',2),(8,'Фомин Юрий Петрович','2005-07-07','+79119111011','foma@mail.ru',2),(9,'Горин Дмитри Юрьевич','2004-09-09','+79017002121','gorin@mail.ru',2);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
