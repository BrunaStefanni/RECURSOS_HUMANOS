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
-- Table structure for table `candidatura`
--

DROP TABLE IF EXISTS `candidatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatura` (
  `id_candidatura` int NOT NULL AUTO_INCREMENT,
  `data_candidatura` date DEFAULT NULL,
  `salario_pretendido` decimal(10,2) DEFAULT NULL,
  `carta_apresentacao` varchar(500) DEFAULT NULL,
  `id_candidato` int DEFAULT NULL,
  `id_vaga` int DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  PRIMARY KEY (`id_candidatura`),
  KEY `id_candidato` (`id_candidato`),
  KEY `id_vaga` (`id_vaga`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `candidatura_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`),
  CONSTRAINT `candidatura_ibfk_2` FOREIGN KEY (`id_vaga`) REFERENCES `vaga` (`id_vaga`),
  CONSTRAINT `candidatura_ibfk_3` FOREIGN KEY (`id_estado`) REFERENCES `estado_candidatura` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatura`
--

LOCK TABLES `candidatura` WRITE;
/*!40000 ALTER TABLE `candidatura` DISABLE KEYS */;
INSERT INTO `candidatura` VALUES (1,'2026-08-05',2800.00,'Tenho sólida experiência em desenvolvimento C# e bases de dados SQL Server, com interesse em arquiteturas orientadas a objetos.',1,1,1),(2,'2026-08-08',2100.00,'Tenho grande interesse em aplicar modelação preditiva e análise de dados para otimização de processos de negócio.',2,2,2),(3,'2026-08-10',2300.00,'Apresento vasta experiência no processamento e análise estatística de dados complexos em R, além de metodologia rigorosa.',3,2,3),(4,'2026-08-11',1250.00,'Procuro uma oportunidade para aplicar os meus conhecimentos na administração de sistemas Linux e redes em ambiente fabril.',4,3,4),(5,'2026-08-23',2000.00,'Com formação na área ambiental e anos de gestão de equipas, posso acrescentar rigor e planeamento aos projetos da empresa.',5,8,5),(6,'2026-08-15',3200.00,'Lidero equipas multidisciplinares no setor da saúde há vários anos e tenho interesse em impulsionar o projeto HealthTech.',6,4,4),(7,'2026-08-21',1100.00,'Entusiasta pelo contacto humano e recrutamento técnico, gostaria de integrar a equipa de RH para dinamizar triagens de perfis.',7,7,2),(8,'2026-08-26',2500.00,'Possuo forte bagagem técnica em sistemas automatizados e procura constante por otimização de processos industriais.',8,9,3),(9,'2026-08-29',1900.00,'Foco a minha atuação na criação de protótipos funcionais e na melhoria contínua da experiência do utilizador.',9,10,4),(10,'2026-08-14',3000.00,'Apresento sólidos conhecimentos de engenharia de software e interesse em evoluir na criação de serviços de alto desempenho.',10,1,5);
/*!40000 ALTER TABLE `candidatura` ENABLE KEYS */;
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
