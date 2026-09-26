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
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `nome_empresa` varchar(50) DEFAULT NULL,
  `nif` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `morada` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'TechVision Soluções Digitais',501234567,'contacto@techvision.pt',213456789,NULL,'www.techvision.pt'),(2,'Inovação & Logística Global',502345678,'geral@inovacaolog.pt',224567890,NULL,'www.inovacaolog.pt'),(3,'Sustentável Consultoria',503456789,'info@sustentavel.pt',239123456,NULL,'www.sustentavel.pt'),(4,'DataPulse Analytics',504567890,'comercial@datapulse.pt',218901234,NULL,'www.datapulse.pt'),(5,'Norte Saúde Integrada',505678901,'atendimento@nortesaude.pt',229012345,NULL,'www.nortesaude.pt'),(6,'Vanguarda Engenharia',506789012,'projetos@vanguardaeng.pt',234567890,NULL,'www.vanguardaeng.pt'),(7,'EcoEnergia do Futuro',507890123,'suporte@ecoenergia.pt',217654321,NULL,'www.ecoenergia.pt'),(8,'Lumina Design Studio',508901234,'hello@luminadesign.pt',223456789,NULL,'www.luminadesign.pt'),(9,'Atlas Recursos Humanos',509012345,'recrutamento@atlasrh.pt',210123456,NULL,'www.atlasrh.pt'),(10,'Horizonte Varejo e Distribuição',510123456,'vendas@horizontevd.pt',221234567,NULL,'www.horizontevd.pt');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
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
