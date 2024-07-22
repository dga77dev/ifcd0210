select 	p.fechaPartido as partido, 
		es.nombreEstadio as estadio, 
        eq.nombreEquipo as equipo, 
        concat(j.apellidosJugador, ", ", j.nombreJugador) as jugador,
        (
        select po.nombrePosicion
		from jugadorposicion jp
		inner join posicion po on jp.idPosicion = po.idPosicion
        where jp.idJugador = j.idJugador
		limit 1
        ) as posicion
from partido p
inner join estadio es on p.estadioPartido = es.idEstadio
inner join equipo eq on  p.equipoLocalPartido = eq.idEquipo
inner join jugador j on p.equipoLocalPartido = j.idEquipoJugador

union

select 	p.fechaPartido as partido, 
		es.nombreEstadio as estadio, 
        eq.nombreEquipo as equipo, 
        concat(j.apellidosJugador, ", ", j.nombreJugador) as jugador,
        (
        select po.nombrePosicion
		from jugadorposicion jp
		inner join posicion po on jp.idPosicion = po.idPosicion
        where jp.idJugador = j.idJugador
		limit 1
        ) as posicion


from partido p
inner join estadio es on p.estadioPartido = es.idEstadio
inner join equipo eq on  p.equipoVisitantePartido = eq.idEquipo
inner join jugador j on p.equipoVisitantePartido = j.idEquipoJugador

order by partido
;

-- PD SE PUEDE AHORRAR EL UNION CON UN OR EN Los INNER JOIN DE EQUIPOLOCAL Y PONERMO OR QUIPOVISTANTE TAMBIEN