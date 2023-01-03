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
-- Table structure for table `products_q1`
--

DROP TABLE IF EXISTS `products_q1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_q1` (
  `Code_Product` int NOT NULL,
  `Name_Product` text NOT NULL,
  `price_Product` double NOT NULL,
  `Manufacturer` int NOT NULL,
  PRIMARY KEY (`Code_Product`),
  KEY `FK_Manufacturers_q1` (`Manufacturer`),
  CONSTRAINT `FK_Manufacturers_q1` FOREIGN KEY (`Manufacturer`) REFERENCES `manufacturers_q1` (`Code_Manufactuer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_q1`
--

LOCK TABLES `products_q1` WRITE;
/*!40000 ALTER TABLE `products_q1` DISABLE KEYS */;
INSERT INTO `products_q1` VALUES (1,'Hard drive',194.4,5),(2,'Memory',108,6),(3,'Zip drive',121.5,4),(4,'Floppy disk',4.5,6),(5,'Moitor',194.4,1),(6,'DVD drive',145.8,2),(7,'CD drive',81,2),(8,'Printer',218.7,3),(9,'Toner Cartage',59.4,3),(10,'DVD burner',145.8,2);
/*!40000 ALTER TABLE `products_q1` ENABLE KEYS */;
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
