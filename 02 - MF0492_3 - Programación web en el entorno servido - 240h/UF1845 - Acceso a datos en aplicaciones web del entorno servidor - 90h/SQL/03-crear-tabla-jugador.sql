
use ligafutboldb;

DROP TABLE IF EXISTS `ligafutbolDB`.`Jugador`;

-- Crear la tabla equipo

CREATE TABLE IF NOT EXISTS `ligafutbolDB`.`Jugador` (
	`idJugador` INT(5) NOT NULL,
    `nombreJugador` VARCHAR(45) NULL,
    `apellidosJugador` VARCHAR(45) NULL,
    `edadJugador` INT(2),
    `IdEquipoJugador`INT(5) NOT NULL,
PRIMARY KEY (`idJugador`),
CONSTRAINT `fk_idEquipoJugador`
	FOREIGN KEY (`EquipoJugador`)
    REFERENCES `ligafutbolDB`.`Equipo` (`idEquipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

ENGINE = innoDB;

CREATE  UNIQUE INDEX `idJugador_UNIQUE`ON `ligafutbolDB`.`Jugador` (`idJugador` ASC) VISIBLE;