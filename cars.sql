-- MySQL Script generated by MySQL Workbench
-- Wed Nov 14 18:33:37 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cars` ;

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8 ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`make`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cars`.`make` ;

CREATE TABLE IF NOT EXISTS `cars`.`make` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`model`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cars`.`model` ;

CREATE TABLE IF NOT EXISTS `cars`.`model` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `make_id` INT NOT NULL,
  `image` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_model_make1_idx` (`make_id` ASC) VISIBLE,
  CONSTRAINT `fk_model_make1`
    FOREIGN KEY (`make_id`)
    REFERENCES `cars`.`make` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
