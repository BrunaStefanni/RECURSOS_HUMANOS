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
-- Table structure for table `recrutador`
--

DROP TABLE IF EXISTS `recrutador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recrutador` (
  `id_recrutador` int NOT NULL AUTO_INCREMENT,
  `nome_recrutador` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  PRIMARY KEY (`id_recrutador`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `recrutador_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recrutador`
--

LOCK TABLES `recrutador` WRITE;
/*!40000 ALTER TABLE `recrutador` DISABLE KEYS */;
INSERT INTO `recrutador` VALUES (1,'Sofia Isabel Martins','sofia.martins@atlasrh.pt',210123488,1),(2,'Gonçalo Maria Santos','goncalo.santos@techvision.pt',213456711,2),(3,'Inês Filipa Pereira','ines.pereira@datapulse.pt',218901299,4),(4,'João Pedro Costa','joao.costa@inovacaolog.pt',224567833,2),(5,'Mariana Fonseca Silva','mariana.silva@sustentavel.pt',239123477,3),(6,'Diogo Alexandre Neves','diogo.neves@nortesaude.pt',229012388,5),(7,'Catarina Beatriz Lima','catarina.lima@vanguardaeng.pt',234567811,6),(8,'Tiago Emanuel Rocha','tiago.rocha@ecoenergia.pt',217654399,7),(9,'Beatriz Alexandra Carvalho','beatriz.carvalho@luminadesign.pt',223456722,8),(10,'Rui Miguel Ferreira','rui.ferreira@horizontevd.pt',221234544,10);
/*!40000 ALTER TABLE `recrutador` ENABLE KEYS */;
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
