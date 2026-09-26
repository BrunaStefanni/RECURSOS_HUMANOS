-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: next_people
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `candidato_qualificacao`
--

DROP TABLE IF EXISTS `candidato_qualificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidato_qualificacao` (
  `id_candidato_qualificacao` int NOT NULL AUTO_INCREMENT,
  `id_candidato` int DEFAULT NULL,
  `id_qualificacao` int DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_candidato_qualificacao`),
  KEY `id_candidato` (`id_candidato`),
  KEY `id_qualificacao` (`id_qualificacao`),
  CONSTRAINT `candidato_qualificacao_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`),
  CONSTRAINT `candidato_qualificacao_ibfk_2` FOREIGN KEY (`id_qualificacao`) REFERENCES `qualificacao` (`id_qualificacao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato_qualificacao`
--

LOCK TABLES `candidato_qualificacao` WRITE;
/*!40000 ALTER TABLE `candidato_qualificacao` DISABLE KEYS */;
INSERT INTO `candidato_qualificacao` VALUES (1,1,1,'Avançado'),(2,2,2,'Intermediário'),(3,3,3,'Avançado'),(4,4,4,'Avançado'),(5,5,5,'Avançado'),(6,6,6,'Intermediário'),(7,7,7,'Avançado'),(8,8,8,'Avançado'),(9,9,9,'Intermediário'),(10,10,10,'Iniciante');
/*!40000 ALTER TABLE `candidato_qualificacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-26 19:08:39
