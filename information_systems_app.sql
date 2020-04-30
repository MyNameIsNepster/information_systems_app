CREATE DATABASE  IF NOT EXISTS `information_systems_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `information_systems_app`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: information_systems_app
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `Nev` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Telefon` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Szig_szam` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Lakcim` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Id` int NOT NULL AUTO_INCREMENT,
  `Aktiv` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('Rácz Zita','36-30-374-53-83','234232GW','5840 Budapest, Faragó átjáró 705.',14,1),('Biró Szervác','36-90-189-25-72','634525HJ','3496 Érd, Halász liget 85. 12. emelet',15,1),('Soós Botond','36-88-023-11-39','325234HJ','1491 Budapest, Csenge rakpart 10.',16,1),('Novák Bendegúz','36-55-029-26-94','823411KJ','5606 Budapest, Kerekes határsor 7.',17,1),('Bodnár Kristóf','36-32-312-33-16','341945WE','6539 Budapest, Pap gát 64.',18,1),('Prof. Simon Áronné','36-80-605-98-53','523412ER','5488 Budapest, Mátyás határsor 12.',19,1),('Balla Richárdné','36-28-681-53-78','734123GG','7918 Budapest, Somogyi orom 75. 15. ajtó',20,1),('ifj. Bálint Sándor','36-39-448-46-72','476213KK','0716 Budapest, Pásztor turistaút 091.',21,1),('Bognár Zsoltné','36-30-767-23-66','263423PO','3600 Miskolc, Szőke lejtő 7. 44. emelet',22,1),('Vörös Richárdné','36-23-065-91-22','763453TT','8445 Szekszárd, Klaudia lépcső 7.',23,1),('ifj. Vincze Balázs','36-88-449-84-22','236223PP','9309 Budapest, Ottó körút 835. 53. ajtó',24,1),('Török Géza','36-28-063-75-62','222331UH','7753 Dunaújváros, Lengyel kert 480.',25,1),('Gulyás Kata','36-08-022-00-34','652433RR','8751 Szeged, Nagy dűlősor 01.',26,1);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Cim` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Datum` date NOT NULL,
  `Sorszam` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Tipus` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Status` varchar(512) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (17,'Joker','2019-10-04','100','DVD','Elérhető'),(18,'1917','2020-01-10','101','DVD','Elérhető'),(19,'Úriemberek','2020-01-24','102','DVD','Elérhető'),(20,'Bosszúállók: Végjáték','2019-04-26','104','DVD','Elérhető'),(21,'Csillagok között','2014-11-07','106','DVD','Elérhető'),(22,'A remény rabjai','1994-10-14','200','VHS','Selejtezett'),(23,'A keresztapa','1972-03-27','201','VHS','Elérhető'),(24,'Eredet','2010-07-26','107','DVD','Elérhető'),(25,'Az aszfalt királyai','2019-11-15','108','DVD','Selejtezett'),(26,'Ponyvaregény','1994-10-14','202','VHS','Elérhető'),(27,'Forrest Gump','1994-07-06','203','VHS','Elérhető');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renting`
--

DROP TABLE IF EXISTS `renting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renting` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ClientId` int NOT NULL,
  `MoviesId` int NOT NULL,
  `Kezdes` date NOT NULL,
  `Lejarat` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ClientId` (`ClientId`),
  KEY `MoviesId` (`MoviesId`),
  CONSTRAINT `renting_ibfk_1` FOREIGN KEY (`ClientId`) REFERENCES `clients` (`Id`),
  CONSTRAINT `renting_ibfk_2` FOREIGN KEY (`MoviesId`) REFERENCES `movies` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renting`
--

LOCK TABLES `renting` WRITE;
/*!40000 ALTER TABLE `renting` DISABLE KEYS */;
/*!40000 ALTER TABLE `renting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 22:56:04
