CREATE DATABASE  IF NOT EXISTS `bd_estudo_caso_vendas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_estudo_caso_vendas`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_estudo_caso_vendas
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `view_compra_produto_cliente_aa`
--

DROP TABLE IF EXISTS `view_compra_produto_cliente_aa`;
/*!50001 DROP VIEW IF EXISTS `view_compra_produto_cliente_aa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_compra_produto_cliente_aa` AS SELECT 
 1 AS `compra_cod`,
 1 AS `prod_desc`,
 1 AS `cli_nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_compra_produto_cliente_aa`
--

/*!50001 DROP VIEW IF EXISTS `view_compra_produto_cliente_aa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_compra_produto_cliente_aa` AS select `tb_compra`.`compra_cod` AS `compra_cod`,`tb_prod`.`prod_desc` AS `prod_desc`,`tb_cli`.`cli_nome` AS `cli_nome` from (((`tb_compra` join `tb_prod_comp` on((`tb_compra`.`compra_cod` = `tb_prod_comp`.`prod_cod`))) join `tb_prod` on((`tb_prod`.`prod_cod` = `tb_prod_comp`.`prod_cod`))) join `tb_cli` on((`tb_compra`.`compra_cli_cod` = `tb_cli`.`cli_cod`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'bd_estudo_caso_vendas'
--

--
-- Dumping routines for database 'bd_estudo_caso_vendas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 14:10:28
