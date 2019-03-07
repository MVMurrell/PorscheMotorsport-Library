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
  `model` VARCHAR(40) NULL,
  `engine_size` INT NULL,
  `horsepower` INT NULL,
  `torque` INT NULL,
  `first_year_of_production` INT NULL,
  `top_speed` INT NULL,
  `engine_position` VARCHAR(45) NULL,
  `weight` DOUBLE NULL,
  `sub_models` VARCHAR(100) NOT NULL DEFAULT 'None',
  `drivetrain` VARCHAR(45) NULL,
  `engine_type` VARCHAR(100) NULL,
  `production_run` INT NULL,
  `designer` VARCHAR(45) NULL,
  `transmission` VARCHAR(45) NULL,
  `cylinders` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `race_info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `race_info` ;

CREATE TABLE IF NOT EXISTS `race_info` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `wins` INT NULL,
  `losses` INT NULL,
  `championships` INT NULL,
  `races` INT NULL,
  `category` VARCHAR(30) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_race_info_racecars`
    FOREIGN KEY (`id`)
    REFERENCES `racecars` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS porschego@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'porschego'@'localhost' IDENTIFIED BY 'porsche';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'porschego'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `racecars`
-- -----------------------------------------------------
START TRANSACTION;
USE `porscheracecars`;
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (1, '64', 1.1, 50, 39, 1938, 99, 'Rear Engine', 1289.7, DEFAULT, 'Rear Wheel Drive', 'Type 369 B4 Flat 4', 3, 'Porsche Büro', '4 Speed Manual', 4);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (2, '360', 1.5, 385, 274, 1949, 185, 'Mid Engine', 1598, DEFAULT, 'All Wheel Drive', 'Two Stage Roots Supercharged Flat 12', 1, 'Ferdinand Porsche', '5 Speed Sequential', 12);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (3, '550', 1.5, 110, 89, 1953, 140, 'Mid Engine', 1212, DEFAULT, 'Rear Wheel Drive', 'Type 547 Flat 4', 2, NULL, '5 Speed Manual', 4);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (4, '718', NULL, NULL, NULL, 1964, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (5, '787', NULL, NULL, NULL, 1964, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (6, '804', NULL, NULL, NULL, 1964, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (7, '904', NULL, NULL, NULL, 1965, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (8, '906', NULL, NULL, NULL, 1970, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (9, '907', NULL, NULL, NULL, 1970, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (10, '908', NULL, NULL, NULL, 1974, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (11, '909', NULL, NULL, NULL, 1974, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (12, '910', NULL, NULL, NULL, 1984, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (13, '911 GT1', NULL, NULL, NULL, 1978, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (14, '911 GT2', NULL, NULL, NULL, 1976, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (15, '911 Turbo', NULL, NULL, NULL, 1974, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (16, '924', NULL, NULL, NULL, 1976, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (17, '924 Turbo', NULL, NULL, NULL, 1979, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (18, '928', NULL, NULL, NULL, 1978, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (19, '928 GT/GTS', NULL, NULL, NULL, 1989, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (20, '944', NULL, NULL, NULL, 1982, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (21, '944 Turbo', NULL, NULL, NULL, 1985, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (22, '959', NULL, NULL, NULL, 1987, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (23, '964', NULL, NULL, NULL, 1989, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (24, '964 Turbo', NULL, NULL, NULL, 1991, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (25, '968', NULL, NULL, NULL, 1992, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (26, '993', NULL, NULL, NULL, 1994, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (27, '993 Turbo', NULL, NULL, NULL, 1995, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (28, '986', NULL, NULL, NULL, 1997, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (29, '996', NULL, NULL, NULL, 1998, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (30, '980', NULL, NULL, NULL, 2003, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (31, 'No. 1', 1.1, 40, NULL, 1948, NULL, 'Mid Engine', 1290, 'None', 'Rear Wheel Drive', 'VW369 B4', 1, 'Erwin Komenda', NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `first_year_of_production`, `top_speed`, `engine_position`, `weight`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

