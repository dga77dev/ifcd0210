-- Eliminar la base de datos si existe
-- DROP SCHEMA IF EXISTS `ligafutbolDB`;


-- Crea una base de datos si no existe con sistema de caracteres caracter utf8
-- CREATE SCHEMA IF NOT EXISTS `ligafutbolDB` DEFAULT CHARACTER SET utf8;

-- abrir base de datos
use ligafutboldb;

DROP TABLE IF EXISTS `ligafutbolDB`.`Equipo`;

-- Crear la tabla equipo

CREATE TABLE IF NOT EXISTS `ligafutbolDB`.`Equipo` (
	`idEquipo` INT(5) NOT NULL,
    `nombreEquipo` VARCHAR(45) NULL,
PRIMARY KEY (`idEquipo`))
ENGINE = innoDB;

CREATE  UNIQUE INDEX `idEquipo_UNIQUE`ON `ligafutbolDB`.`Equipo` (`idEquipo` ASC) VISIBLE;

-- Crear la tabla 

