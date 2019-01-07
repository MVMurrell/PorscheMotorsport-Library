-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema porscheracecars
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `porscheracecars` ;

-- -----------------------------------------------------
-- Schema porscheracecars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `porscheracecars` DEFAULT CHARACTER SET utf8 ;
USE `porscheracecars` ;

-- -----------------------------------------------------
-- Table `racecars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `racecars` ;

CREATE TABLE IF NOT EXISTS `racecars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `model` VARCHAR(40) NULL DEFAULT NULL,
  `engine_size` DOUBLE NULL DEFAULT 0.0,
  `horsepower` INT NULL DEFAULT 0,
  `torque` INT NULL DEFAULT 0,
  `top_speed` INT NULL DEFAULT 0,
  `engine_position` VARCHAR(45) NULL DEFAULT NULL,
  `weight` INT NULL DEFAULT 0,
  `sub_models` VARCHAR(100) NULL DEFAULT NULL,
  `drivetrain` VARCHAR(45) NULL DEFAULT NULL,
  `engine_type` VARCHAR(100) NULL DEFAULT NULL,
  `production_run` INT NULL DEFAULT 0,
  `designer` VARCHAR(45) NULL DEFAULT NULL,
  `transmission` VARCHAR(45) NULL DEFAULT NULL,
  `cylinders` INT NULL DEFAULT 0,
  `value` INT NULL DEFAULT 0,
  `first_year_of_production` INT NULL DEFAULT 0,
  `race_id` INT NULL DEFAULT 0,
  `location` VARCHAR(45) NULL DEFAULT 'null',
  PRIMARY KEY (`id`),
  INDEX `race_id` (`race_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `race_info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `race_info` ;

CREATE TABLE IF NOT EXISTS `race_info` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `racetrack_id` INT NULL DEFAULT NULL,
  `wins` INT NULL DEFAULT 0,
  `losses` INT NULL DEFAULT 0,
  `championships` INT NULL DEFAULT 0,
  `car_id` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `car_id_idx` (`car_id` ASC),
  CONSTRAINT `car_id`
    FOREIGN KEY (`car_id`)
    REFERENCES `racecars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS admin@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin1';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'admin'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `racecars`
-- -----------------------------------------------------
START TRANSACTION;
USE `porscheracecars`;
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `value`, `first_year_of_production`, `race_id`, `location`) VALUES (1, '65', 1.1, 85, 30, 90, 'Rear Mounted', 1356, 'None', 'Rear wheel drive', '1.1L Type 369 B4', 3, 'Ferry Porsche', '4 Speed', 4, 1000000, 1943, 1, 'LA');

COMMIT;


-- -----------------------------------------------------
-- Data for table `race_info`
-- -----------------------------------------------------
START TRANSACTION;
USE `porscheracecars`;
INSERT INTO `race_info` (`id`, `racetrack_id`, `wins`, `losses`, `championships`, `car_id`) VALUES (1, 1, 3, 4, 2, 1);
INSERT INTO `race_info` (`id`, `racetrack_id`, `wins`, `losses`, `championships`, `car_id`) VALUES (2, 2, 2, 3, 2, 1);

COMMIT;

