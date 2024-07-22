-- obtener jugadores y equipos

use ligafutboldb;
select * 
from jugador
inner join equipo
on jugador.idEquipoJugador = equipo.idEquipo;