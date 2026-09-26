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
-- Table structure for table `experiencia_profissional`
--

DROP TABLE IF EXISTS `experiencia_profissional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_profissional` (
  `id_experiencia` int NOT NULL AUTO_INCREMENT,
  `id_candidato` int DEFAULT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_experiencia`),
  KEY `id_candidato` (`id_candidato`),
  CONSTRAINT `experiencia_profissional_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_profissional`
--

LOCK TABLES `experiencia_profissional` WRITE;
/*!40000 ALTER TABLE `experiencia_profissional` DISABLE KEYS */;
INSERT INTO `experiencia_profissional` VALUES (1,1,'SoftSystems Portugal','2022-03-01','2024-05-31','Desenvolvimento de APIs RESTful e manutenção de bases de dados SQL Server.'),(2,2,'Inovação Digital Tech','2024-06-01',NULL,'Construção de arquiteturas orientadas a objetos e otimização de consultas SQL.'),(3,3,'DataCorp Consultoria','2018-01-15','2022-12-31','Tratamento de dados, criação de dashboards e modelação preditiva.'),(4,4,'Instituto BioSaúde','2019-09-01','2024-08-31','Análise estatística de dados biológicos utilizando R e processamento de dados experimentais.'),(5,5,'Rede Global Serviços','2023-01-10',NULL,'Administração básica de servidores Linux, redes e atendimento ao utilizador.'),(6,6,'Consultoria Sustentável','2016-04-01','2023-11-30','Coordenação de equipas multidisciplinares e submissão de relatórios ambientais.'),(7,7,'HealthTech Solutions','2015-02-01',NULL,'Planeamento e liderança de projetos tecnológicos focados na área da saúde.'),(8,8,'RH Conecta','2021-05-15','2024-01-31','Triagem de perfis técnicos, agendamento de entrevistas e contacto com candidatos.'),(9,9,'Logística & Automação S.A.','2020-10-01',NULL,'Implementação de sistemas automatizados e controlo de qualidade fabril.'),(10,10,'Estúdio Criativo Web','2022-07-01','2024-06-30','Criação de wireframes, prototipagem de interfaces e condução de testes de usabilidade.');
/*!40000 ALTER TABLE `experiencia_profissional` ENABLE KEYS */;
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
