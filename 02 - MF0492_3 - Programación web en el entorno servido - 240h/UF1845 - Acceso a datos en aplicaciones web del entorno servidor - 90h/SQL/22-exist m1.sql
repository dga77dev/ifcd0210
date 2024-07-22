-- jugadores que pertenecen a un equipo

USE ligafutboldb;
SELECT idJugador, nombreJugador, apellidosJugador
FROM jugador
WHERE EXISTS (
	SELECT 1
    FROM equipo
    WHERE idEquipoJugador = idEquipo AND nombreEquipo = "FC Barcelona"
); 