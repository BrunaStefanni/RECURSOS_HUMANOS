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
-- Table structure for table `historico_candidatura`
--

DROP TABLE IF EXISTS `historico_candidatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_candidatura` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `id_candidatura` int DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  `data_alteracao` date DEFAULT NULL,
  `observacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_historico`),
  KEY `id_candidatura` (`id_candidatura`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `historico_candidatura_ibfk_1` FOREIGN KEY (`id_candidatura`) REFERENCES `candidatura` (`id_candidatura`),
  CONSTRAINT `historico_candidatura_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado_candidatura` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_candidatura`
--

LOCK TABLES `historico_candidatura` WRITE;
/*!40000 ALTER TABLE `historico_candidatura` DISABLE KEYS */;
INSERT INTO `historico_candidatura` VALUES (1,1,1,'2026-08-05','Candidatura submetida com sucesso pelo portal de recrutamento.'),(2,2,2,'2026-08-06','CV validado pelos recursos humanos e encaminhado para a chefia técnica.'),(3,3,3,'2026-08-08','Candidatura registada e validada para triagem inicial.'),(4,4,4,'2026-08-10','Entrevista presencial agendada com o departamento de analítica.'),(5,5,1,'2026-08-10','Receção do processo e verificação de requisitos académicos e profissionais.'),(6,6,1,'2026-08-11','Submissão de candidatura recebida pelo sistema.'),(7,7,7,'2026-08-15','Candidato aprovado no processo seletivo e proposta de contrato emitida.'),(8,8,2,'2026-08-23','Candidatura inserida na base de dados para avaliação curricular.'),(9,9,1,'2026-08-15','Candidatura recebida para o projeto HealthTech.'),(10,10,5,'2026-08-18','Entrevista de liderança confirmada com a gestão de topo.');
/*!40000 ALTER TABLE `historico_candidatura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-26 19:08:41
