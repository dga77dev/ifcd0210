use ligafutboldb;

select idJugador, nombreJugador, apellidosJugador
FROM jugador
INNER JOIN equipo
on idEquipoJugador = idEquipo AND nombreEquipo = "FC Barcelona";