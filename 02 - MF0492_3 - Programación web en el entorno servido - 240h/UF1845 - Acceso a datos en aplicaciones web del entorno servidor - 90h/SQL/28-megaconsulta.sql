use ligafutboldb;

select PA.fecha, ES.nombreEstadio, EQ.nombreEquipo, nombre de jugadores locales y visitantes y su/S posicion
	FROM partido AS PA
    INNER JOIN estadio AS ES ON ES.idEstadio = PA.estadioPartido
    INNER JOIN equipo  AS EQ ON EQ.idEquipo = PA.equipoLocalPartido
		UNION ALL
	INNER JOIN equipo  AS EQ ON EQ.IDequipo = PA.equipoLocalVisitante
    -- INNER JOIN JUGADORR
    
    
    