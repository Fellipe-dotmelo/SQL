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
-- Table structure for table `internacao`
--

DROP TABLE IF EXISTS `internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internacao` (
  `id_internacao` int(11) NOT NULL AUTO_INCREMENT,
  `data_entrada` datetime DEFAULT NULL,
  `data_prev_alta` datetime DEFAULT NULL,
  `data_alta` datetime DEFAULT NULL,
  `procedimento` varchar(255) DEFAULT NULL,
  `enfermeiro_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_internacao`),
  KEY `enfermeiro_id` (`enfermeiro_id`),
  CONSTRAINT `internacao_ibfk_1` FOREIGN KEY (`enfermeiro_id`) REFERENCES `enfermeiro` (`id_enfermeiro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao`
--

LOCK TABLES `internacao` WRITE;
/*!40000 ALTER TABLE `internacao` DISABLE KEYS */;
INSERT INTO `internacao` VALUES (1,'2022-01-01 10:00:00','2022-01-03 10:00:00','2022-01-04 14:00:00','Cirurgia de apendicite',1),(2,'2022-01-02 10:00:00','2022-01-06 10:00:00','2022-01-07 13:00:00','Cirurgia de vesícula',2),(3,'2022-01-03 10:00:00','2022-01-07 10:00:00','2022-01-08 15:00:00','Cirurgia de hérnia',3),(4,'2022-01-04 10:00:00','2022-01-09 10:00:00','2022-01-10 12:00:00','Cirurgia de tireoide',4),(5,'2022-01-05 10:00:00','2022-01-08 10:00:00','2022-01-09 11:00:00','Cirurgia de próstata',5),(6,'2022-01-06 10:00:00','2022-01-10 10:00:00','2022-01-11 16:00:00','Cirurgia de joelho',6),(7,'2022-01-07 10:00:00','2022-01-11 10:00:00','2022-01-12 14:00:00','Cirurgia de coluna',7),(8,'2022-01-08 10:00:00','2022-01-12 10:00:00','2022-01-13 12:00:00','Cirurgia de coração',8),(9,'2022-01-09 10:00:00','2022-01-13 10:00:00','2022-01-14 15:00:00','Cirurgia de pulmão',9),(10,'2022-01-10 10:00:00','2022-01-14 10:00:00','2022-01-15 11:00:00','Cirurgia de rim',10);
/*!40000 ALTER TABLE `internacao` ENABLE KEYS */;
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
