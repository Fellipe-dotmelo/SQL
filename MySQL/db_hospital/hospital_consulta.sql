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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `especialidade_id` int(11) DEFAULT NULL,
  `id_medico` varchar(255) DEFAULT NULL,
  `id_paciente` varchar(255) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `data_consulta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hora_consulta` time DEFAULT NULL,
  `id_convenio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `especialidade_id` (`especialidade_id`),
  KEY `id_convenio` (`id_convenio`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidade` (`id_especialidade`),
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id_convenio`),
  CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id_convenio`),
  CONSTRAINT `consulta_ibfk_4` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id_convenio`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,NULL,'1','1',249,'2016-02-15 03:00:00','09:30:00',1),(2,NULL,'2','2',120,'2017-05-22 03:00:00','15:45:00',2),(3,NULL,'3','3',504,'2018-01-10 03:00:00','11:15:00',3),(4,NULL,'4','4',532,'2019-03-03 03:00:00','14:30:00',4),(5,NULL,'5','5',756,'2016-07-12 03:00:00','10:00:00',4),(6,NULL,'6','6',213,'2017-08-21 03:00:00','11:45:00',3),(7,NULL,'7','7',234,'2018-06-09 03:00:00','16:15:00',1),(8,NULL,'8','8',153,'2019-10-30 03:00:00','08:30:00',2),(9,NULL,'9','9',563,'2020-02-18 03:00:00','09:30:00',1),(10,NULL,'1','10',231,'2016-05-05 03:00:00','11:00:00',4),(11,NULL,'2','11',643,'2017-04-18 03:00:00','12:30:00',2),(12,NULL,'3','12',876,'2018-07-07 03:00:00','15:00:00',1),(13,NULL,'4','13',504,'2019-11-02 03:00:00','09:00:00',2),(14,NULL,'5','14',121,'2020-12-10 03:00:00','14:30:00',3),(15,NULL,'6','15',504,'2016-09-25 03:00:00','08:15:00',4),(16,NULL,'7','16',504,'2017-07-11 03:00:00','10:45:00',4),(17,NULL,'1','1',249,'2016-02-15 03:00:00','09:30:00',1),(18,NULL,'2','2',120,'2017-05-22 03:00:00','15:45:00',2),(19,NULL,'3','3',504,'2018-01-10 03:00:00','11:15:00',3),(20,NULL,'4','4',532,'2019-03-03 03:00:00','14:30:00',4),(21,NULL,'5','5',756,'2016-07-12 03:00:00','10:00:00',4),(22,NULL,'6','6',213,'2017-08-21 03:00:00','11:45:00',3),(23,NULL,'7','7',234,'2018-06-09 03:00:00','16:15:00',1),(24,NULL,'8','8',153,'2019-10-30 03:00:00','08:30:00',2),(25,NULL,'9','9',563,'2020-02-18 03:00:00','09:30:00',1),(26,NULL,'1','10',231,'2016-05-05 03:00:00','11:00:00',4),(27,NULL,'2','11',643,'2017-04-18 03:00:00','12:30:00',2),(28,NULL,'3','12',876,'2018-07-07 03:00:00','15:00:00',1),(29,NULL,'4','13',504,'2019-11-02 03:00:00','09:00:00',2),(30,NULL,'5','14',121,'2020-12-10 03:00:00','14:30:00',3),(31,NULL,'6','15',504,'2016-09-25 03:00:00','08:15:00',4),(32,NULL,'7','16',504,'2017-07-11 03:00:00','10:45:00',4);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 14:36:35
