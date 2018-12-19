-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema porschedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `porschedb` ;

-- -----------------------------------------------------
-- Schema porschedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `porschedb` DEFAULT CHARACTER SET utf8 ;
USE `porschedb` ;

-- -----------------------------------------------------
-- Table `porsche_auto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `porsche_auto` ;

CREATE TABLE IF NOT EXISTS `porsche_auto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `model` VARCHAR(40) NULL,
  `engine_size` INT NULL,
  `horsepower` INT NULL,
  `torque` INT NULL,
  PRIMARY KEY (`id`))
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
-- Data for table `porsche_auto`
-- -----------------------------------------------------
START TRANSACTION;
USE `porschedb`;
INSERT INTO `porsche_auto` (`id`, `model`, `engine_size`, `horsepower`, `torque`) VALUES (1, '996', 3.6, 320, 345);
INSERT INTO `porsche_auto` (`id`, `model`, `engine_size`, `horsepower`, `torque`) VALUES (2, '456', 2.8, 220, 190);

COMMIT;

