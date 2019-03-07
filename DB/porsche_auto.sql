-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema porsche_auto
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `porsche_auto` ;

-- -----------------------------------------------------
-- Schema porsche_auto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `porsche_auto` DEFAULT CHARACTER SET utf8 ;
USE `porsche_auto` ;

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
  `begin_production` INT NULL,
  `end_production` INT NULL,
  `top_speed` INT NULL,
  `engine_position` VARCHAR(45) NULL,
  `weight` INT NULL,
  `value` INT NULL,
  `sub_models` VARCHAR(100) NULL,
  `drivetrain` VARCHAR(45) NULL,
  `engine_type` VARCHAR(100) NULL,
  `production_run` INT NULL,
  `designer` VARCHAR(45) NULL,
  `transmission` VARCHAR(45) NULL,
  `cylinders` INT NULL,
  `features` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
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
USE `porsche_auto`;
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (1, '64', 1.1, 50, 35, 1938, 1939, 99, 'Rear Engine', 1290, NULL, NULL, 'Rear Wheel Drive', 'Type 369 B4 Flat 4', 3, 'Porsche Büro', '4 Speed Manual', 4, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (2, '360', 1.5, 385, 274, 1949, 1949, 185, 'Mid Engine', 1598, NULL, NULL, 'All Wheel Drive', 'Two Stage Roots Supercharged Flat 12', 1, 'Ferdinand Porsche', '5 Speed Sequential', 12, 'Chromoly tube chassis, on/off four wheel drive, Sequential Gear-Shift, Quad Camshafts, Twin Supercharged');
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (3, '550', 1.5, 110, 89, 1953, 1956, 140, 'Mid Engine', 1212, NULL, NULL, 'Rear Wheel Drive', 'Type 547 Flat 4', 2, NULL, '5 Speed Manual', 4, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (4, '718', NULL, NULL, NULL, 1964, 1965, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (5, '787', NULL, NULL, NULL, 1964, 1964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (6, '804', NULL, NULL, NULL, 1964, 1973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (7, '904', NULL, NULL, NULL, 1965, 1969, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (8, '906', NULL, NULL, NULL, 1970, 1976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (9, '907', NULL, NULL, NULL, 1970, 1972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (10, '908', NULL, NULL, NULL, 1974, 1977, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (11, '909', NULL, NULL, NULL, 1974, 1977, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (12, '910', NULL, NULL, NULL, 1984, 1989, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (13, '911 GT1', NULL, NULL, NULL, 1978, 1983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (14, '911 GT2', NULL, NULL, NULL, 1976, 1976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (15, '911 Turbo', NULL, NULL, NULL, 1974, 1989, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (16, '924', NULL, NULL, NULL, 1976, 1988, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (17, '924 Turbo', NULL, NULL, NULL, 1979, 1988, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (18, '928', NULL, NULL, NULL, 1978, 1991, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (19, '928 GT/GTS', NULL, NULL, NULL, 1989, 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (20, '944', NULL, NULL, NULL, 1982, 1991, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (21, '944 Turbo', NULL, NULL, NULL, 1985, 1991, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (22, '959', NULL, NULL, NULL, 1987, 1988, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (23, '964', NULL, NULL, NULL, 1989, 1993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (24, '964 Turbo', NULL, NULL, NULL, 1991, 1993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (25, '968', NULL, NULL, NULL, 1992, 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (26, '993', NULL, NULL, NULL, 1994, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (27, '993 Turbo', NULL, NULL, NULL, 1995, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (28, '986', NULL, NULL, NULL, 1997, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (29, '996', NULL, NULL, NULL, 1998, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (30, '980', NULL, NULL, NULL, 2003, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (31, 'No. 1', 1.1, 40, NULL, 1948, 1948, NULL, 'Mid Engine', 1290, NULL, 'None', 'Rear Wheel Drive', 'VW369 B4', 1, 'Erwin Komenda', NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `begin_production`, `end_production`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `features`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

