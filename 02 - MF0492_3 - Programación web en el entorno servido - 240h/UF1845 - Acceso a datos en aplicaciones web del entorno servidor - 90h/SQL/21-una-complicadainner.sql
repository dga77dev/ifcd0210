-- jugadores con sus posicines utiliza tres tablas.
use ligafutboldb;
select jugador.idJugador, jugador.nombreJugador, jugador.apellidosJugador, JP.idJugador, JP.idPosicion, PO.idPosicion, PO.nombrePosicion
from jugador
inner join jugadorposicion AS JP 
	ON jugador.idJugador = JP.idJugador
inner join posicion AS PO
	ON JP.idPosicion = PO.idPosicion
order by jugador.nombreJugador, jugador.apellidosJugador;

