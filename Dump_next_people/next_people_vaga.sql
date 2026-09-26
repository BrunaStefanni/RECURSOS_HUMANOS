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
-- Table structure for table `vaga`
--

DROP TABLE IF EXISTS `vaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaga` (
  `id_vaga` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `data_publicacao` date DEFAULT NULL,
  `data_limite` date DEFAULT NULL,
  `salario_min` decimal(10,2) DEFAULT NULL,
  `salario_max` decimal(10,2) DEFAULT NULL,
  `tipo_contrato` varchar(50) DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  `id_recrutador` int DEFAULT NULL,
  `id_localizacao` int DEFAULT NULL,
  PRIMARY KEY (`id_vaga`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_recrutador` (`id_recrutador`),
  KEY `id_localizacao` (`id_localizacao`),
  CONSTRAINT `vaga_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  CONSTRAINT `vaga_ibfk_2` FOREIGN KEY (`id_recrutador`) REFERENCES `recrutador` (`id_recrutador`),
  CONSTRAINT `vaga_ibfk_3` FOREIGN KEY (`id_localizacao`) REFERENCES `localizacao` (`id_localizacao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaga`
--

LOCK TABLES `vaga` WRITE;
/*!40000 ALTER TABLE `vaga` DISABLE KEYS */;
INSERT INTO `vaga` VALUES (1,'Desenvolvedor C# Senior','Desenvolvimento e manutenção de serviços backend utilizando .NET e SQL Server.','2026-08-01','2026-09-30',2500.00,3500.00,'Sem Termo',1,2,1),(2,'Analista de Dados','Análise de métricas, modelagem de dados e criação de relatórios em Python e R.','2026-08-05','2026-09-15',1800.00,2400.00,'Sem Termo',4,3,2),(3,'Técnico de Suporte TI','Configuração de sistemas Linux, suporte ao utilizador e resolução de incidentes.','2026-08-10','2026-09-20',1100.00,1400.00,'A Termo Certo',6,7,3),(4,'Gestor de Projeto HealthTech','Gestão de projetos de inovação em saúde, coordenação de equipas e prazos.','2026-08-12','2026-10-01',2800.00,3800.00,'Sem Termo',5,6,4),(5,'Engenheiro de Software Frontend','Criação de interfaces web responsivas utilizando JavaScript, HTML5 e CSS3.','2026-08-15','2026-09-25',2000.00,2800.00,'Sem Termo',1,2,1),(6,'Especialista em Segurança de Informação','Definição e aplicação de políticas de segurança, auditoria e hardening de redes.','2026-08-18','2026-10-05',2700.00,3600.00,'Sem Termo',7,8,10),(7,'Assistente de Recrutamento e Seleção','Triagem de currículos, agendamento de entrevistas e contacto com candidatos.','2026-08-20','2026-09-18',1000.00,1250.00,'Estágio Profissional',9,1,1),(8,'Consultor de Sustentabilidade Ambiental','Análise de impacto ambiental e elaboração de relatórios técnicos de conformidade.','2026-08-22','2026-10-10',1600.00,2200.00,'A Termo Certo',3,5,5),(9,'Engenheiro de Automação','Programação de PLCs e acompanhamento de processos industriais automatizados.','2026-08-25','2026-10-15',2200.00,3000.00,'Sem Termo',6,7,7),(10,'UX/UI Designer','Prototipagem de ecrãs, realização de testes de usabilidade e design de produto.','2026-08-28','2026-09-30',1700.00,2300.00,'A Termo Certo',8,9,2);
/*!40000 ALTER TABLE `vaga` ENABLE KEYS */;
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
