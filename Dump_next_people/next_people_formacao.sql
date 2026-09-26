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
-- Table structure for table `formacao`
--

DROP TABLE IF EXISTS `formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacao` (
  `id_formacao` int NOT NULL AUTO_INCREMENT,
  `id_candidato` int DEFAULT NULL,
  `instituicao` varchar(100) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `grau` varchar(100) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  PRIMARY KEY (`id_formacao`),
  KEY `id_candidato` (`id_candidato`),
  CONSTRAINT `formacao_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacao`
--

LOCK TABLES `formacao` WRITE;
/*!40000 ALTER TABLE `formacao` DISABLE KEYS */;
INSERT INTO `formacao` VALUES (1,1,'IEFP - Instituto do Emprego e Formação Profissional','Técnico/a de Desenvolvimento de Software','Nível 5 (CTeSP/Técnico)','2025-09-15',NULL),(2,2,'Universidade de Coimbra','Engenharia Informática','Licenciatura','2019-09-01','2022-06-30'),(3,3,'Universidade do Porto','Ciência de Dados e Estatística','Mestrado','2016-09-01','2018-07-15'),(4,4,'Universidade de Lisboa','Biologia','Doutoramento','2018-09-01','2022-11-20'),(5,5,'Instituto Politécnico de Leiria','Redes e Sistemas Informáticos','Licenciatura','2020-09-01','2023-06-30'),(6,6,'Universidade de Aveiro','Engenharia do Ambiente','Mestrado','2011-09-01','2016-06-25'),(7,7,'Universidade do Minho','Gestão de Sistemas de Informação','Licenciatura','2010-09-01','2014-06-30'),(8,8,'Universidade Católica Portuguesa','Gestão de Recursos Humanos','Licenciatura','2017-09-01','2020-07-10'),(9,9,'Instituto Superior Técnico','Engenharia Eletrotécnica e de Computadores','Mestrado Integrado','2014-09-01','2019-07-20'),(10,10,'Instituto Politécnico do Porto','Design de Comunicação e Multimédia','Licenciatura','2018-09-01','2021-06-30');
/*!40000 ALTER TABLE `formacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-26 19:08:40
