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
-- Table structure for table `candidato`
--

DROP TABLE IF EXISTS `candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidato` (
  `id_candidato` int NOT NULL AUTO_INCREMENT,
  `nome_candidato` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_registro` date DEFAULT NULL,
  `morada` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_candidato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato`
--

LOCK TABLES `candidato` WRITE;
/*!40000 ALTER TABLE `candidato` DISABLE KEYS */;
INSERT INTO `candidato` VALUES (1,'Ana Beatriz Silva','ana.silva@emailficticio.com','(11) 98765-4321','1992-04-15','2026-01-10',NULL),(2,'Carlos Eduardo Santos','carlos.santos@emailficticio.com','(21) 97123-8901','1988-11-23','2026-01-12',NULL),(3,'Mariana Rocha Oliveira','mariana.rocha@emailficticio.com','(31) 99812-3456','1995-08-03','2026-01-15',NULL),(4,'Lucas Gabriel Pereira','lucas.pereira@emailficticio.com','(41) 98456-7890','2001-02-19','2026-01-18',NULL),(5,'Fernanda Lima Costa','fernanda.costa@emailficticio.com','(51) 99321-6547','1990-12-30','2026-01-20',NULL),(6,'Rafael Ribeiro Alves','rafael.alves@emailficticio.com','(61) 98111-2233','1985-06-12','2026-02-01',NULL),(7,'Camila Rodrigues Martins','camila.martins@emailficticio.com','(71) 99222-3344','1998-09-27','2026-02-03',NULL),(8,'Rodrigo Ferreira Lima','rodrigo.lima@emailficticio.com','(81) 98333-4455','1993-01-08','2026-02-05',NULL),(9,'Beatriz Mendes Castro','beatriz.castro@emailficticio.com','(85) 99444-5566','1997-05-14','2026-02-10',NULL),(10,'Thiago Henrique Souza','thiago.souza@emailficticio.com','(19) 98555-6677','1989-10-02','2026-02-12',NULL);
/*!40000 ALTER TABLE `candidato` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-26 19:08:42
