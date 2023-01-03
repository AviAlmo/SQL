-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exercisetwo
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `projects_q4`
--

DROP TABLE IF EXISTS `projects_q4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_q4` (
  `code_pro` varchar(4) NOT NULL,
  `name_pro` tinytext NOT NULL,
  `hours_pro` int NOT NULL,
  PRIMARY KEY (`code_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_q4`
--

LOCK TABLES `projects_q4` WRITE;
/*!40000 ALTER TABLE `projects_q4` DISABLE KEYS */;
INSERT INTO `projects_q4` VALUES ('AeH1','Winds: Studying Bernoullis Principle',156),('AeH2','Aerodynamics and Bridge Design',189),('AeH3','Aerodynamics and Gas Mileage',256),('AeH4','Aerodynamics and Ice Hockey',789),('AeH5','Aerodynamics of a Football',98),('AeH6','Aerodynamics of Air Hockey',89),('Ast1','A Matter of Time',112),('Ast2','A Puzzling Parallax',299),('Ast3','Build Your Own Telescope',6546),('Bte1','Juicy: Extracting Apple Juice with Pectinase',321),('Bte2','A Magnetic Primer Designer',9684),('Bte3','Bacterial Transformation Efficiency',321),('Che1','A Silver-Cleaning Battery',545),('Che2','A Soluble Separation Solution',778);
/*!40000 ALTER TABLE `projects_q4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 20:10:47
