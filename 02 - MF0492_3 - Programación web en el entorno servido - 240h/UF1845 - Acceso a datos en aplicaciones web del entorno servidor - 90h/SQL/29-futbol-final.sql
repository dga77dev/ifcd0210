use ligafutboldb;
SELECT 
	p.fechaPartido as partido,
	es.nombreEstadio as estadio,
    eq.nombreEquipo as equipo,
    j.nombreJugador as jugadornombre,
    j.apellidosJugador as jugadorapellido,
    (
     select po.nombrePosicion
     from jugadorposicion jp
     inner join posicion po on jp.idPosicion = po.idPosicion
     WHERE jp.idJugador = j.idJugador
     limit 1
     ) as posicion  
     
FROM  partido p
INNER JOIN estadio AS es ON es.idEstadio = p.estadioPartido
INNER JOIN equipo  AS eq ON eq.idEquipo = p.equipoVisitantePartido
INNER JOIN jugador AS j ON  j.idEquipoJugador = p.equipoVisitantePartido

union

SELECT 
	p.fechaPartido as partido,
	es.nombreEstadio as estadio,
    eq.nombreEquipo as equipo,
    j.nombreJugador as jugadornombre,
    j.apellidosJugador as jugadorapellido,
    (
     select po.nombrePosicion
     from jugadorposicion jp
     inner join posicion po on jp.idPosicion = po.idPosicion
     WHERE jp.idJugador = j.idJugador
     limit 1
     ) as posicion  
     
FROM  partido p
INNER JOIN estadio AS es ON es.idEstadio = p.estadioPartido
INNER JOIN equipo  AS eq ON eq.idEquipo = p.equipoLocalPartido
INNER JOIN jugador AS j ON  j.idEquipoJugador = p.equipoLocalPartido




order by partido;