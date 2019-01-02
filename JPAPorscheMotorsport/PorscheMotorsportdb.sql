-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
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
  `id` INT NOT NULL,
  `model` VARCHAR(40) NULL DEFAULT NULL,
  `engine_size` DECIMAL(3,1) ZEROFILL NULL,
  `horsepower` INT ZEROFILL NULL,
  `torque` INT ZEROFILL NULL,
  `top_speed` INT ZEROFILL NULL,
  `engine_position` VARCHAR(45) NULL DEFAULT NULL,
  `weight` INT ZEROFILL NULL,
  `value` INT ZEROFILL NULL,
  `sub_models` VARCHAR(100) NULL DEFAULT NULL,
  `drivetrain` VARCHAR(45) NULL DEFAULT NULL,
  `engine_type` VARCHAR(40) NULL DEFAULT NULL,
  `production_run` INT ZEROFILL NULL,
  `designer` VARCHAR(45) NULL DEFAULT NULL,
  `transmission` VARCHAR(45) NULL DEFAULT NULL,
  `cylinders` INT ZEROFILL NULL,
  `location` VARCHAR(45) NULL,
  `first_year_of_production` INT ZEROFILL NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS admin;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'admin' IDENTIFIED BY 'admin1';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'admin';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'admin';

-- -----------------------------------------------------
-- Data for table `racecars`
-- -----------------------------------------------------
START TRANSACTION;
USE `porscheracecars`;
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (1, '64', 1.1, 50, NULL, 90, 'Rear Mounted', 1356, NULL, NULL, 'Rear Wheel Drive', '1.1L Type 369 B4', 3, 'Porsche Büro', '4 Speed Manual', 4, 'Peterson Automotive Museum Los Angeles CA', 1937);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (2, '360', 1.5, 385, 274, 144, 'Mid Mounted', 1598, NULL, NULL, 'All Wheel Drive', '1.5L Supercharged Flat 12', 2, 'Ferdinand Porsche', '5 Speed Sequential', 12, 'Porsche Museum Sutttgart Germany', 1947);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (3, '550', 1.5, 108, 89, 140, 'Mid Mounted', 1212, 5350000, '550A', 'Rear Wheel Drive', '1.4L Type 547', 90, 'Porsche Büro', '4 Speed Manual', 4, 'Multiple', 1953);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (4, '718', 1.5, 142, 100, 161, 'Mid Mounted', 1260, 3000000, 'RS 60\nRS 61\nW-RS\n718 GTR Coupé\nFormula Two Formula One', 'Rear Wheel Drive', '1.5L Type 547', 37, NULL, '5 Speed Manual', 4, 'Multiple', 1957);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (5, '787', 1.5, 190, 108, 155, 'Mid Mounted', 992, NULL, NULL, 'Rear Wheel Drive', '1.5L Flat 4', NULL, NULL, '6 Speed Manual', 4, NULL, 1960);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (6, '804', 1.5, 180, 113, 168, 'Mid Mounted', 996, NULL, NULL, 'Rear Wheel Drive', '1.5L Flat 8', 4, NULL, '6 Speed Manual', 8, NULL, 1962);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (7, '904', 2.0, 180, 144, 163, 'Mid Mounted', 1400, 2250000, 'H6, H8, Bergspyder', 'Rear Wheel Drive', '2.0L Type 587/3', 34, 'Ferdinand Porsche', '5 Speed Manual', 4, NULL, 1964);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (8, '906', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (9, '907', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (10, '908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (11, '909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `racecars` (`id`, `model`, `engine_size`, `horsepower`, `torque`, `top_speed`, `engine_position`, `weight`, `value`, `sub_models`, `drivetrain`, `engine_type`, `production_run`, `designer`, `transmission`, `cylinders`, `location`, `first_year_of_production`) VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
