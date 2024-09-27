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
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `id_medico` int(11) NOT NULL AUTO_INCREMENT,
  `especialidade` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `CPF` varchar(255) DEFAULT NULL,
  `CRM` int(11) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `em_atividade` varchar(20) DEFAULT 'Em atividade',
  PRIMARY KEY (`id_medico`),
  KEY `especialidade` (`especialidade`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`especialidade`) REFERENCES `especialidade` (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,NULL,'Rebeca',NULL,NULL,NULL,'Inativo'),(2,NULL,'Carlos',NULL,NULL,NULL,'Em atividade'),(3,NULL,'João',NULL,NULL,NULL,'Inativo'),(4,NULL,'Maria',NULL,NULL,NULL,'Em atividade'),(5,NULL,'Rodolfo',NULL,NULL,NULL,'Em atividade'),(6,NULL,'Sofia',NULL,NULL,NULL,'Em atividade'),(7,NULL,'Lucas',NULL,NULL,NULL,'Em atividade'),(8,NULL,'Gabriel',NULL,NULL,NULL,'Em atividade'),(9,NULL,'Mariana',NULL,NULL,NULL,'Em atividade'),(10,NULL,'Julia',NULL,NULL,NULL,'Em atividade');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
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
