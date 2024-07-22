-- obener todos los jugadores junto con los nombres de sus equipos,
-- incluyendo aquellos jugadores que no tienen equipo
-- y aquiellos equipos que no tienen jugadores asgnados

select *
FROM jugadores j
	LEFT JOIN equipo as e
    on j.idEquipoJugador = e.idEquipo
    
    UNION ALL
    
    RIGHT JOIN equipo as e
    on j.idEquipoJugador = e.idEquipo
    where j.Idjugador = null
;
 