CREATE DATABASE  IF NOT EXISTS `euro_fit_romain_cilia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `euro_fit_romain_cilia`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: euro_fit_romain_cilia
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `id_adress` int NOT NULL AUTO_INCREMENT,
  `name_adress` varchar(45) NOT NULL,
  PRIMARY KEY (`id_adress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assurance`
--

DROP TABLE IF EXISTS `assurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assurance` (
  `id_assurance` int NOT NULL AUTO_INCREMENT,
  `name_license` varchar(30) NOT NULL,
  PRIMARY KEY (`id_assurance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assurance`
--

LOCK TABLES `assurance` WRITE;
/*!40000 ALTER TABLE `assurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `assurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `number_phone` int NOT NULL,
  PRIMARY KEY (`id_client`),
  CONSTRAINT `fk_pay_origine` FOREIGN KEY (`id_client`) REFERENCES `pay_origine` (`id_pay`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_sportif`
--

DROP TABLE IF EXISTS `club_sportif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_sportif` (
  `id_club_sportif` int NOT NULL AUTO_INCREMENT,
  `name_part` varchar(45) NOT NULL,
  `number_club` int NOT NULL,
  PRIMARY KEY (`id_club_sportif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_sportif`
--

LOCK TABLES `club_sportif` WRITE;
/*!40000 ALTER TABLE `club_sportif` DISABLE KEYS */;
/*!40000 ALTER TABLE `club_sportif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code_postal`
--

DROP TABLE IF EXISTS `code_postal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code_postal` (
  `id_code_postal` int NOT NULL AUTO_INCREMENT,
  `code_postalcol` int NOT NULL,
  PRIMARY KEY (`id_code_postal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_postal`
--

LOCK TABLES `code_postal` WRITE;
/*!40000 ALTER TABLE `code_postal` DISABLE KEYS */;
/*!40000 ALTER TABLE `code_postal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipement_cardio`
--

DROP TABLE IF EXISTS `equipement_cardio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipement_cardio` (
  `id_equipement_cardio` int NOT NULL AUTO_INCREMENT,
  `name_appareil_elec` varchar(15) NOT NULL,
  `number_apar_elec` varchar(45) NOT NULL,
  PRIMARY KEY (`id_equipement_cardio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipement_cardio`
--

LOCK TABLES `equipement_cardio` WRITE;
/*!40000 ALTER TABLE `equipement_cardio` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipement_cardio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructure_ecologique`
--

DROP TABLE IF EXISTS `infrastructure_ecologique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrastructure_ecologique` (
  `id_infrastructure_ecologique` int NOT NULL AUTO_INCREMENT,
  `name_equip_eco` varchar(30) NOT NULL,
  `capteur_temperature` float NOT NULL,
  `capteur_hygrometrie` float NOT NULL,
  `capteur_pression` float NOT NULL,
  `capteur_qualite_de_l'air` float NOT NULL,
  `number_equipement` int NOT NULL,
  PRIMARY KEY (`id_infrastructure_ecologique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructure_ecologique`
--

LOCK TABLES `infrastructure_ecologique` WRITE;
/*!40000 ALTER TABLE `infrastructure_ecologique` DISABLE KEYS */;
/*!40000 ALTER TABLE `infrastructure_ecologique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_euro_fit_and_sweat`
--

DROP TABLE IF EXISTS `member_euro_fit_and_sweat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_euro_fit_and_sweat` (
  `id_member_euro_fit_and_sweat` int NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `id_type_abonnement` int NOT NULL,
  `id_personnel` int NOT NULL,
  `id_club_sportif` int NOT NULL,
  `id_salaire` int NOT NULL,
  `id_infrastructure_ecologique` int NOT NULL,
  `id_adresse` int NOT NULL,
  `id_ville` int NOT NULL,
  `id_pay_origine` int NOT NULL,
  `id_salle_de_sport` int NOT NULL,
  `id_salle_hygiene_&_equipement` int NOT NULL,
  `id_equipement_musculation` int NOT NULL,
  `id_equipement_cardio` int NOT NULL,
  PRIMARY KEY (`id_member_euro_fit_and_sweat`,`id_client`,`id_type_abonnement`,`id_personnel`,`id_club_sportif`,`id_salaire`,`id_infrastructure_ecologique`,`id_adresse`,`id_ville`,`id_pay_origine`,`id_salle_de_sport`,`id_salle_hygiene_&_equipement`,`id_equipement_musculation`,`id_equipement_cardio`),
  KEY `fk_personnel_idx` (`id_club_sportif`),
  KEY `fk_salaire_idx` (`id_salaire`),
  CONSTRAINT `fk_client` FOREIGN KEY (`id_member_euro_fit_and_sweat`) REFERENCES `client` (`id_client`),
  CONSTRAINT `fk_personnel` FOREIGN KEY (`id_club_sportif`) REFERENCES `personnel` (`id_personnel`),
  CONSTRAINT `fk_salaire` FOREIGN KEY (`id_salaire`) REFERENCES `personnel` (`id_personnel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_euro_fit_and_sweat`
--

LOCK TABLES `member_euro_fit_and_sweat` WRITE;
/*!40000 ALTER TABLE `member_euro_fit_and_sweat` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_euro_fit_and_sweat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_origine`
--

DROP TABLE IF EXISTS `pay_origine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_origine` (
  `id_pay` int NOT NULL AUTO_INCREMENT,
  `name_nat` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_origine`
--

LOCK TABLES `pay_origine` WRITE;
/*!40000 ALTER TABLE `pay_origine` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_origine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel` (
  `id_personnel` int NOT NULL AUTO_INCREMENT,
  `statut` varchar(30) NOT NULL,
  `number_empl` int NOT NULL,
  `name_badge` varchar(45) NOT NULL,
  PRIMARY KEY (`id_personnel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planing`
--

DROP TABLE IF EXISTS `planing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planing` (
  `id_planing` int NOT NULL AUTO_INCREMENT,
  `date_de_programme_a/m/j` date NOT NULL,
  `heure_de_debut` varchar(45) NOT NULL,
  `name_plan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_planing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planing`
--

LOCK TABLES `planing` WRITE;
/*!40000 ALTER TABLE `planing` DISABLE KEYS */;
/*!40000 ALTER TABLE `planing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaire`
--

DROP TABLE IF EXISTS `salaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaire` (
  `id_salaire` int NOT NULL AUTO_INCREMENT,
  `ref_employed` varchar(30) NOT NULL,
  `paiement` int NOT NULL,
  PRIMARY KEY (`id_salaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaire`
--

LOCK TABLES `salaire` WRITE;
/*!40000 ALTER TABLE `salaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle_de_sport`
--

DROP TABLE IF EXISTS `salle_de_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle_de_sport` (
  `idsalle_de_sport` int NOT NULL AUTO_INCREMENT,
  `name_activite` varchar(30) NOT NULL,
  `reference_salle` varchar(45) NOT NULL,
  `name_coach` varchar(45) NOT NULL,
  PRIMARY KEY (`idsalle_de_sport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle_de_sport`
--

LOCK TABLES `salle_de_sport` WRITE;
/*!40000 ALTER TABLE `salle_de_sport` DISABLE KEYS */;
/*!40000 ALTER TABLE `salle_de_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle_hygiene_&_equipement`
--

DROP TABLE IF EXISTS `salle_hygiene_&_equipement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle_hygiene_&_equipement` (
  `id_salle_hyg_&_equip` int NOT NULL AUTO_INCREMENT,
  `piece_de_nettoyage` varchar(15) NOT NULL,
  `name_intervenant` varchar(45) NOT NULL,
  `number_p` int NOT NULL,
  PRIMARY KEY (`id_salle_hyg_&_equip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle_hygiene_&_equipement`
--

LOCK TABLES `salle_hygiene_&_equipement` WRITE;
/*!40000 ALTER TABLE `salle_hygiene_&_equipement` DISABLE KEYS */;
/*!40000 ALTER TABLE `salle_hygiene_&_equipement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_abonnement`
--

DROP TABLE IF EXISTS `type_abonnement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_abonnement` (
  `id_type_abonnement` int NOT NULL,
  `name_abonnement` varchar(30) NOT NULL,
  `prix_pass_park` varchar(30) NOT NULL,
  `prix_abonnement` int NOT NULL,
  `prix_en_supplement` int NOT NULL,
  PRIMARY KEY (`id_type_abonnement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_abonnement`
--

LOCK TABLES `type_abonnement` WRITE;
/*!40000 ALTER TABLE `type_abonnement` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_abonnement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ville`
--

DROP TABLE IF EXISTS `ville`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ville` (
  `id_ville` int NOT NULL AUTO_INCREMENT,
  `name_vil` varchar(30) NOT NULL,
  PRIMARY KEY (`id_ville`,`name_vil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ville`
--

LOCK TABLES `ville` WRITE;
/*!40000 ALTER TABLE `ville` DISABLE KEYS */;
/*!40000 ALTER TABLE `ville` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17 16:47:23
