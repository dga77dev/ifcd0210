
use ligafutboldb;

DROP TABLE IF EXISTS `ligafutbolDB`.`Estadio`;

-- Crear la tabla equipo

CREATE TABLE IF NOT EXISTS `ligafutbolDB`.`Estadio` (
	`idEstadio` INT(5) NOT NULL,
    `nombreEstadio` VARCHAR(45) NULL,
PRIMARY KEY (`idEstadio`))
ENGINE = innoDB;

CREATE  UNIQUE INDEX `idEstadio_UNIQUE`ON `ligafutbolDB`.`Estadio` (`idestadio` ASC) VISIBLE;