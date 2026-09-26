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
-- Temporary view structure for view `empresas_nao_publicadas`
--

DROP TABLE IF EXISTS `empresas_nao_publicadas`;
/*!50001 DROP VIEW IF EXISTS `empresas_nao_publicadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empresas_nao_publicadas` AS SELECT 
 1 AS `nome_empresa`,
 1 AS `email`,
 1 AS `telefone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vagas_com_contrato_termo_certo`
--

DROP TABLE IF EXISTS `vagas_com_contrato_termo_certo`;
/*!50001 DROP VIEW IF EXISTS `vagas_com_contrato_termo_certo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vagas_com_contrato_termo_certo` AS SELECT 
 1 AS `titulo`,
 1 AS `tipo_contrato`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vagas_multiplas_candidaturas`
--

DROP TABLE IF EXISTS `vagas_multiplas_candidaturas`;
/*!50001 DROP VIEW IF EXISTS `vagas_multiplas_candidaturas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vagas_multiplas_candidaturas` AS SELECT 
 1 AS `id_vaga`,
 1 AS `titulo`,
 1 AS `total_candidaturas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vagas_contrato_sem_termo_por_distrito`
--

DROP TABLE IF EXISTS `vagas_contrato_sem_termo_por_distrito`;
/*!50001 DROP VIEW IF EXISTS `vagas_contrato_sem_termo_por_distrito`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vagas_contrato_sem_termo_por_distrito` AS SELECT 
 1 AS `titulo`,
 1 AS `distrito`,
 1 AS `tipo_contrato`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `candidatos_por_vaga`
--

DROP TABLE IF EXISTS `candidatos_por_vaga`;
/*!50001 DROP VIEW IF EXISTS `candidatos_por_vaga`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `candidatos_por_vaga` AS SELECT 
 1 AS `id_vaga`,
 1 AS `titulo`,
 1 AS `total_candidatos_distintos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vagas_pendentes_porto_ines_pereira`
--

DROP TABLE IF EXISTS `vagas_pendentes_porto_ines_pereira`;
/*!50001 DROP VIEW IF EXISTS `vagas_pendentes_porto_ines_pereira`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vagas_pendentes_porto_ines_pereira` AS SELECT 
 1 AS `nome_candidato`,
 1 AS `titulo`,
 1 AS `estado`,
 1 AS `situacao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `concorrencia_ana_beatriz`
--

DROP TABLE IF EXISTS `concorrencia_ana_beatriz`;
/*!50001 DROP VIEW IF EXISTS `concorrencia_ana_beatriz`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `concorrencia_ana_beatriz` AS SELECT 
 1 AS `nome_candidato`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vagas_salario_max`
--

DROP TABLE IF EXISTS `vagas_salario_max`;
/*!50001 DROP VIEW IF EXISTS `vagas_salario_max`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vagas_salario_max` AS SELECT 
 1 AS `id_vaga`,
 1 AS `titulo`,
 1 AS `salario_max`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `salario_baixo_alto`
--

DROP TABLE IF EXISTS `salario_baixo_alto`;
/*!50001 DROP VIEW IF EXISTS `salario_baixo_alto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salario_baixo_alto` AS SELECT 
 1 AS `salario_mais_baixo`,
 1 AS `salario_mais_alto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `situacao_candidatos_nota`
--

DROP TABLE IF EXISTS `situacao_candidatos_nota`;
/*!50001 DROP VIEW IF EXISTS `situacao_candidatos_nota`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `situacao_candidatos_nota` AS SELECT 
 1 AS `nome_candidato`,
 1 AS `titulo`,
 1 AS `tipo_entrevista`,
 1 AS `avaliacao`,
 1 AS `resultado_entrevista`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `empresas_nao_publicadas`
--

/*!50001 DROP VIEW IF EXISTS `empresas_nao_publicadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empresas_nao_publicadas` AS select `e`.`nome_empresa` AS `nome_empresa`,`e`.`email` AS `email`,`e`.`telefone` AS `telefone` from `empresa` `e` where `e`.`id_empresa` in (select `v`.`id_empresa` from `vaga` `v`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vagas_com_contrato_termo_certo`
--

/*!50001 DROP VIEW IF EXISTS `vagas_com_contrato_termo_certo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vagas_com_contrato_termo_certo` AS select `vaga`.`titulo` AS `titulo`,`vaga`.`tipo_contrato` AS `tipo_contrato` from `vaga` where (`vaga`.`tipo_contrato` = 'A Termo Certo') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vagas_multiplas_candidaturas`
--

/*!50001 DROP VIEW IF EXISTS `vagas_multiplas_candidaturas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vagas_multiplas_candidaturas` AS select `v`.`id_vaga` AS `id_vaga`,`v`.`titulo` AS `titulo`,count(`c`.`id_candidatura`) AS `total_candidaturas` from (`vaga` `v` join `candidatura` `c` on((`c`.`id_vaga` = `v`.`id_vaga`))) group by `v`.`id_vaga`,`v`.`titulo` having (count(`c`.`id_candidatura`) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vagas_contrato_sem_termo_por_distrito`
--

/*!50001 DROP VIEW IF EXISTS `vagas_contrato_sem_termo_por_distrito`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vagas_contrato_sem_termo_por_distrito` AS select `v`.`titulo` AS `titulo`,`l`.`distrito` AS `distrito`,`v`.`tipo_contrato` AS `tipo_contrato` from (`vaga` `v` join `localizacao` `l` on((`v`.`id_localizacao` = `l`.`id_localizacao`))) where (`v`.`tipo_contrato` = 'Sem Termo') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidatos_por_vaga`
--

/*!50001 DROP VIEW IF EXISTS `candidatos_por_vaga`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidatos_por_vaga` AS select `v`.`id_vaga` AS `id_vaga`,`v`.`titulo` AS `titulo`,count(distinct `c`.`id_candidato`) AS `total_candidatos_distintos` from (`vaga` `v` join `candidatura` `c` on((`c`.`id_vaga` = `v`.`id_vaga`))) group by `v`.`id_vaga`,`v`.`titulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vagas_pendentes_porto_ines_pereira`
--

/*!50001 DROP VIEW IF EXISTS `vagas_pendentes_porto_ines_pereira`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vagas_pendentes_porto_ines_pereira` AS select `c`.`nome_candidato` AS `nome_candidato`,`v`.`titulo` AS `titulo`,`ec`.`descricao` AS `estado`,'Candidatura em aberto' AS `situacao` from (((((`candidatura` `ca` join `candidato` `c` on((`ca`.`id_candidato` = `c`.`id_candidato`))) join `vaga` `v` on((`ca`.`id_vaga` = `v`.`id_vaga`))) join `estado_candidatura` `ec` on((`ca`.`id_estado` = `ec`.`id_estado`))) join `localizacao` `l` on((`v`.`id_localizacao` = `l`.`id_localizacao`))) join `recrutador` `r` on((`v`.`id_recrutador` = `r`.`id_recrutador`))) where ((`l`.`distrito` = 'Porto') and (`r`.`nome_recrutador` = 'Inês Filipa Pereira') and (`ec`.`descricao` not in ('Aprovada / Contratado','Rejeitada','Candidato Desistiu'))) union select NULL AS `nome_candidato`,`v`.`titulo` AS `titulo`,NULL AS `estado`,'Vaga sem candidaturas' AS `situacao` from ((`vaga` `v` join `localizacao` `l` on((`v`.`id_localizacao` = `l`.`id_localizacao`))) join `recrutador` `r` on((`v`.`id_recrutador` = `r`.`id_recrutador`))) where ((`l`.`distrito` = 'Porto') and (`r`.`nome_recrutador` = 'Inês Filipa Pereira') and `v`.`id_vaga` in (select `candidatura`.`id_vaga` from `candidatura`) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `concorrencia_ana_beatriz`
--

/*!50001 DROP VIEW IF EXISTS `concorrencia_ana_beatriz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `concorrencia_ana_beatriz` AS select `c`.`nome_candidato` AS `nome_candidato`,`v`.`titulo` AS `titulo` from ((`candidatura` `ca` join `candidato` `c` on((`ca`.`id_candidato` = `c`.`id_candidato`))) join `vaga` `v` on((`ca`.`id_vaga` = `v`.`id_vaga`))) where (`ca`.`id_vaga` in (select `ca2`.`id_vaga` from (`candidatura` `ca2` join `candidato` `c2` on((`ca2`.`id_candidato` = `c2`.`id_candidato`))) where (`c2`.`nome_candidato` = 'Ana Beatriz Silva')) and (`c`.`nome_candidato` <> 'Ana Beatriz Silva')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vagas_salario_max`
--

/*!50001 DROP VIEW IF EXISTS `vagas_salario_max`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vagas_salario_max` AS select `vaga`.`id_vaga` AS `id_vaga`,`vaga`.`titulo` AS `titulo`,`vaga`.`salario_max` AS `salario_max` from `vaga` where (`vaga`.`salario_max` > (select avg(`vaga`.`salario_max`) from `vaga`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salario_baixo_alto`
--

/*!50001 DROP VIEW IF EXISTS `salario_baixo_alto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salario_baixo_alto` AS select min(`v`.`salario_min`) AS `salario_mais_baixo`,max(`v`.`salario_max`) AS `salario_mais_alto` from `vaga` `v` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `situacao_candidatos_nota`
--

/*!50001 DROP VIEW IF EXISTS `situacao_candidatos_nota`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `situacao_candidatos_nota` AS select `c`.`nome_candidato` AS `nome_candidato`,`v`.`titulo` AS `titulo`,`e`.`tipo` AS `tipo_entrevista`,`e`.`avaliacao` AS `avaliacao`,if((`e`.`avaliacao` >= 4),'Aprovado','A reavaliar') AS `resultado_entrevista` from (((`entrevista` `e` join `candidatura` `ca` on((`e`.`id_candidatura` = `ca`.`id_candidatura`))) join `candidato` `c` on((`ca`.`id_candidato` = `c`.`id_candidato`))) join `vaga` `v` on((`ca`.`id_vaga` = `v`.`id_vaga`))) order by `e`.`avaliacao` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-26 19:08:42
