CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
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
-- Table structure for table `receita`
--

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receita` (
  `id_receita` int(11) NOT NULL AUTO_INCREMENT,
  `paciente` varchar(255) DEFAULT NULL,
  `medico` varchar(255) DEFAULT NULL,
  `consulta` varchar(255) DEFAULT NULL,
  `quantidade` varchar(255) DEFAULT NULL,
  `medicamento` varchar(255) DEFAULT NULL,
  `especialidade_id` int(11) DEFAULT NULL,
  `medico_id` int(11) DEFAULT NULL,
  `consulta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_receita`),
  KEY `especialidade_id` (`especialidade_id`),
  KEY `medico_id` (`medico_id`),
  KEY `consulta_id` (`consulta_id`),
  CONSTRAINT `receita_ibfk_1` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade` (`id_especialidade`),
  CONSTRAINT `receita_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id_medico`),
  CONSTRAINT `receita_ibfk_3` FOREIGN KEY (`consulta_id`) REFERENCES `consulta` (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 14:36:33
