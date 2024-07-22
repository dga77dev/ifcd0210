-- jugadores que pertenecen a un equipo

use ligafutboldb;
select j.idJugador, j.nombreJugador, j.apellidosJugador
from jugador j
where exists (
	select 1
    from equipo e
    where j.idEquipoJugador = e.idEquipo AND e.nombreEquipo = "FC Barcelona"
); 