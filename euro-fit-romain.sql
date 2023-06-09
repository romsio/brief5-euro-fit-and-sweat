-- MySQL Script generated by MySQL Workbench
-- Tue May  9 10:22:06 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema euro_fit_romain_cilia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema euro_fit_romain_cilia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `euro_fit_romain_cilia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `euro_fit_romain_cilia` ;

-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`adresse` (
  `id_adress` INT NOT NULL AUTO_INCREMENT,
  `name_adress` VARCHAR(45) NOT NULL,
  `number_voie` INT NOT NULL,
  `name_builder` VARCHAR(45) NOT NULL,
  `stair` INT NOT NULL,
  `id_code_postal` INT NOT NULL,
  PRIMARY KEY (`id_adress`),
  INDEX `fk_id_code_postal_idx` (`id_code_postal` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`client` (
  `id_client` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `date_de_naissance` DATE NOT NULL,
  `number_phone` INT NOT NULL,
  PRIMARY KEY (`id_client`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`planing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`planing` (
  `id_planing` INT NOT NULL AUTO_INCREMENT,
  `date_de_programme_a/m/j` DATE NOT NULL,
  `heure_de_debut` VARCHAR(45) NOT NULL,
  `name_plan` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_planing`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`salaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`salaire` (
  `id_salaire` INT NOT NULL AUTO_INCREMENT,
  `ref_employed` VARCHAR(30) NOT NULL,
  `paiement` INT NOT NULL,
  PRIMARY KEY (`id_salaire`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`personnel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`personnel` (
  `id_personnel` INT NOT NULL AUTO_INCREMENT,
  `statut` VARCHAR(30) NOT NULL,
  `number_empl` INT NOT NULL,
  `name_badge` VARCHAR(45) NOT NULL,
  `id_salaire` INT NOT NULL,
  `id_planing` INT NOT NULL,
  PRIMARY KEY (`id_personnel`),
  INDEX `fk_id_salaire_idx` (`id_salaire` ASC) VISIBLE,
  INDEX `fk_id_planing_idx` (`id_planing` ASC) VISIBLE,
  CONSTRAINT `fk_id_planing`
    FOREIGN KEY (`id_planing`)
    REFERENCES `euro_fit_romain_cilia`.`planing` (`id_planing`),
  CONSTRAINT `fk_id_salaire`
    FOREIGN KEY (`id_salaire`)
    REFERENCES `euro_fit_romain_cilia`.`salaire` (`id_salaire`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`equipement_cardio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`equipement_cardio` (
  `id_equipement_cardio` INT NOT NULL AUTO_INCREMENT,
  `name_appareil_elec` VARCHAR(15) NOT NULL,
  `number_apar_elec` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_equipement_cardio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`infrastructure_ecologique`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`infrastructure_ecologique` (
  `id_infrastructure_ecologique` INT NOT NULL AUTO_INCREMENT,
  `name_equip_eco` VARCHAR(30) NOT NULL,
  `capteur_temperature` FLOAT NOT NULL,
  `capteur_hygrometrie` FLOAT NOT NULL,
  `capteur_pression` FLOAT NOT NULL,
  `capteur_qualite_de_l'air` FLOAT NOT NULL,
  `number_equipement` INT NOT NULL,
  PRIMARY KEY (`id_infrastructure_ecologique`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`salle_hygiene_&_equipement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`salle_hygiene_&_equipement` (
  `id_salle_hyg_&_equip` INT NOT NULL AUTO_INCREMENT,
  `piece_de_nettoyage` VARCHAR(15) NOT NULL,
  `name_intervenant` VARCHAR(45) NOT NULL,
  `number_p` INT NOT NULL,
  PRIMARY KEY (`id_salle_hyg_&_equip`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`salle_de_sport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`salle_de_sport` (
  `idsalle_de_sport` INT NOT NULL AUTO_INCREMENT,
  `name_activite` VARCHAR(30) NOT NULL,
  `reference_salle` VARCHAR(45) NOT NULL,
  `name_coach` VARCHAR(45) NOT NULL,
  `id_salle_hyg_&_equip` INT NOT NULL,
  `id_infrastructure_ecologique` INT NOT NULL,
  `id_equipement_cardio` INT NOT NULL,
  PRIMARY KEY (`idsalle_de_sport`),
  INDEX `fk_id_salle_hyg_&_equip_idx` (`id_salle_hyg_&_equip` ASC) VISIBLE,
  INDEX `fk_id_infrastructure_ecologique_idx` (`id_infrastructure_ecologique` ASC) VISIBLE,
  INDEX `fk_id_equipement_cardio_idx` (`id_equipement_cardio` ASC) VISIBLE,
  CONSTRAINT `fk_id_equipement_cardio`
    FOREIGN KEY (`id_equipement_cardio`)
    REFERENCES `euro_fit_romain_cilia`.`equipement_cardio` (`id_equipement_cardio`),
  CONSTRAINT `fk_id_infrastructure_ecologique`
    FOREIGN KEY (`id_infrastructure_ecologique`)
    REFERENCES `euro_fit_romain_cilia`.`infrastructure_ecologique` (`id_infrastructure_ecologique`),
  CONSTRAINT `fk_id_salle_hyg_&_equip`
    FOREIGN KEY (`id_salle_hyg_&_equip`)
    REFERENCES `euro_fit_romain_cilia`.`salle_hygiene_&_equipement` (`id_salle_hyg_&_equip`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`type_abonnement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`type_abonnement` (
  `id_type_abonnement` INT NOT NULL,
  `name_abonnement` VARCHAR(30) NOT NULL,
  `prix_pass_park` VARCHAR(30) NOT NULL,
  `prix_abonnement` INT NOT NULL,
  `prix_en_supplement` INT NOT NULL,
  PRIMARY KEY (`id_type_abonnement`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`club_sportif`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`club_sportif` (
  `id_club_sportif` INT NOT NULL AUTO_INCREMENT,
  `name_part` VARCHAR(45) NOT NULL,
  `number_club` INT NOT NULL,
  `id_adress` INT NOT NULL,
  `id_assurance` INT NOT NULL,
  `id_client` INT NOT NULL,
  `id_personnel` INT NOT NULL,
  `id_type_abonnement` INT NOT NULL,
  `id_salle_de_sport` INT NOT NULL,
  PRIMARY KEY (`id_club_sportif`),
  INDEX `fk_id_adress_idx` (`id_adress` ASC) VISIBLE,
  INDEX `fk_id_assurance_idx` (`id_assurance` ASC) VISIBLE,
  INDEX `fk_id_client_idx` (`id_client` ASC) VISIBLE,
  INDEX `fk_id_personnel_idx` (`id_personnel` ASC) VISIBLE,
  INDEX `fk_id_type_abonnement_idx` (`id_type_abonnement` ASC) VISIBLE,
  INDEX `fk_id_salle_de_sport_idx` (`id_salle_de_sport` ASC) VISIBLE,
  CONSTRAINT `fk_id_adress`
    FOREIGN KEY (`id_adress`)
    REFERENCES `euro_fit_romain_cilia`.`adresse` (`id_adress`),
  CONSTRAINT `fk_id_assurance`
    FOREIGN KEY (`id_assurance`)
    REFERENCES `euro_fit_romain_cilia`.`assurance` (`id_assurance`),
  CONSTRAINT `fk_id_client`
    FOREIGN KEY (`id_client`)
    REFERENCES `euro_fit_romain_cilia`.`client` (`id_client`),
  CONSTRAINT `fk_id_personnel`
    FOREIGN KEY (`id_personnel`)
    REFERENCES `euro_fit_romain_cilia`.`personnel` (`id_personnel`),
  CONSTRAINT `fk_id_salle_de_sport`
    FOREIGN KEY (`id_salle_de_sport`)
    REFERENCES `euro_fit_romain_cilia`.`salle_de_sport` (`idsalle_de_sport`),
  CONSTRAINT `fk_id_type_abonnement`
    FOREIGN KEY (`id_type_abonnement`)
    REFERENCES `euro_fit_romain_cilia`.`type_abonnement` (`id_type_abonnement`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`assurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`assurance` (
  `id_assurance` INT NOT NULL AUTO_INCREMENT,
  `name_license` VARCHAR(30) NOT NULL,
  `reference client` VARCHAR(45) NOT NULL,
  `id_club_sportif` INT NOT NULL,
  `id_client` INT NOT NULL,
  PRIMARY KEY (`id_assurance`),
  INDEX `fk_id_club_sportif_idx` (`id_club_sportif` ASC) VISIBLE,
  INDEX `fk_id_client_idx` (`id_client` ASC) VISIBLE,
  CONSTRAINT `fk_id_club_sportif`
    FOREIGN KEY (`id_club_sportif`)
    REFERENCES `euro_fit_romain_cilia`.`club_sportif` (`id_club_sportif`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`code_postal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`code_postal` (
  `id_code_postal` INT NOT NULL AUTO_INCREMENT,
  `code_postalcol` INT NOT NULL,
  PRIMARY KEY (`id_code_postal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`pay_origine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`pay_origine` (
  `id_pay` INT NOT NULL AUTO_INCREMENT,
  `name_nat` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_pay`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `euro_fit_romain_cilia`.`ville`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `euro_fit_romain_cilia`.`ville` (
  `id_ville` INT NOT NULL AUTO_INCREMENT,
  `name_vil` VARCHAR(30) NOT NULL,
  `id_club_sportif` INT NOT NULL,
  PRIMARY KEY (`id_ville`),
  INDEX `fk_id_club_sportif_idx` (`id_club_sportif` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
