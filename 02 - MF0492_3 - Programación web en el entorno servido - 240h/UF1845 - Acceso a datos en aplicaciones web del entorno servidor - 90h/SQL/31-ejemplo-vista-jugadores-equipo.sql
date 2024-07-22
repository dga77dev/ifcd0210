use ligafutboldb;
CREATE VIEW VistaJugadores AS

SELECT *
	FROM jugador as j 
    JOIN equipo as e
    ON j.EquipoJugador = e.idEquipo;
