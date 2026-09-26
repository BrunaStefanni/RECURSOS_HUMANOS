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
-- Table structure for table `entrevista`
--

DROP TABLE IF EXISTS `entrevista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrevista` (
  `id_entrevista` int NOT NULL AUTO_INCREMENT,
  `data_entrevista` date DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `observacoes` varchar(200) DEFAULT NULL,
  `avaliacao` int DEFAULT NULL,
  `id_candidatura` int DEFAULT NULL,
  PRIMARY KEY (`id_entrevista`),
  KEY `id_candidatura` (`id_candidatura`),
  CONSTRAINT `entrevista_ibfk_1` FOREIGN KEY (`id_candidatura`) REFERENCES `candidatura` (`id_candidatura`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrevista`
--

LOCK TABLES `entrevista` WRITE;
/*!40000 ALTER TABLE `entrevista` DISABLE KEYS */;
INSERT INTO `entrevista` VALUES (1,'2026-08-12','Técnica','Demonstrou forte domínio de Programação Orientada a Objetos em C# e boas práticas de arquitetura SQL.',5,1),(2,'2026-08-14','Presencial','Apresentou excelente raciocínio lógico e experiência sólida em análise preditiva de dados.',4,2),(3,'2026-08-18','Online','Perfil com rigor metodológico exemplar e grande autonomia em processamento estatístico de dados.',5,3),(4,'2026-08-19','Presencial','Bons conhecimentos em comandos e administração Linux. Demonstrou boa atitude e vontade de aprender.',4,4),(5,'2026-08-27','Online','Sólida experiência em gestão ambiental e facilidade de comunicação. Alinhada com a cultura da empresa.',4,5),(6,'2026-08-20','Presencial','Perfil lider e estruturado. Apresentou visões claras sobre gestão de equipas no setor da saúde.',5,6),(7,'2026-08-24','Online','Conhece bem os processos de RH, mas o perfil pretendido exige maior apetência para triagem técnica intensiva.',3,7),(8,'2026-08-28','Técnica','Conhecimentos práticos sólidos de automação e instrumentação industrial. Boa capacidade de resolução de problemas.',4,8),(9,'2026-09-02','Online','Apresentou um portfólio de UX/UI consistente, com boa fundamentação em testes de usabilidade.',4,9),(10,'2026-08-17','Técnica','Respondeu bem às questões teóricas de engenharia de software, contudo o perfil de pretensão salarial ficou desalinhado.',3,10);
/*!40000 ALTER TABLE `entrevista` ENABLE KEYS */;
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
