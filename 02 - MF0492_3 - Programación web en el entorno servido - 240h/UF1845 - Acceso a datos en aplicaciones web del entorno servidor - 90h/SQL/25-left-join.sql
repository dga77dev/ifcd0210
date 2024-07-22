-- obtener todos los jugadores con sus equios (mas los jugadores que no tienen equipo asignado)
use ligafutboldb;

select J.nombreJugador, J.apellidosJugador, E.nombreEquipo
from jugador J
left join equipo E
on E.idEquipo = J.idEquipoJugador
;