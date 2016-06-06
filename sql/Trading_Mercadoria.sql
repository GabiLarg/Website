-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Trading
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1

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
-- Table structure for table `Mercadoria`
--

DROP TABLE IF EXISTS `Mercadoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mercadoria` (
  `codigoMerc` int(11) NOT NULL AUTO_INCREMENT,
  `tipoMerc` varchar(50) NOT NULL,
  `nomeMerc` varchar(100) NOT NULL,
  `qtdMerc` float NOT NULL,
  `precoMerc` float NOT NULL,
  `tipoNegocMerc` char(1) NOT NULL,
  `imagempath` varchar(100) NOT NULL,
  PRIMARY KEY (`codigoMerc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mercadoria`
--

LOCK TABLES `Mercadoria` WRITE;
/*!40000 ALTER TABLE `Mercadoria` DISABLE KEYS */;
INSERT INTO `Mercadoria` VALUES (1,'matéria prima','algodão',300,2,'C','images/cotton-branch-1271038_640.jpg'),(2,'especiarias','cacau',500,300,'C','images/cocoa-bean-1282894_640.jpg'),(3,'especiarias','gengibre',500,250,'V','images/ginger-1388002_640.jpg'),(4,'utensilios','porcelana portuguesa',1,250,'V','images/builds-982587_640.jpg'),(5,'utensilios','tigela chinesa',1,340,'V','images/fluted-bowl-942722_640.png'),(6,'especiarias','pimenta branca',500,200,'C','images/pepper-525696_640.jpg');
/*!40000 ALTER TABLE `Mercadoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-06 16:51:42
