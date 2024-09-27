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
-- Table structure for table `internacao_enfermeiro`
--

DROP TABLE IF EXISTS `internacao_enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internacao_enfermeiro` (
  `id_internacao` int(11) NOT NULL,
  `id_enfermeiro` int(11) NOT NULL,
  PRIMARY KEY (`id_internacao`,`id_enfermeiro`),
  KEY `id_enfermeiro` (`id_enfermeiro`),
  CONSTRAINT `internacao_enfermeiro_ibfk_1` FOREIGN KEY (`id_internacao`) REFERENCES `internacao` (`id_internacao`),
  CONSTRAINT `internacao_enfermeiro_ibfk_2` FOREIGN KEY (`id_enfermeiro`) REFERENCES `enfermeiro` (`id_enfermeiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao_enfermeiro`
--

LOCK TABLES `internacao_enfermeiro` WRITE;
/*!40000 ALTER TABLE `internacao_enfermeiro` DISABLE KEYS */;
/*!40000 ALTER TABLE `internacao_enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 14:36:34
