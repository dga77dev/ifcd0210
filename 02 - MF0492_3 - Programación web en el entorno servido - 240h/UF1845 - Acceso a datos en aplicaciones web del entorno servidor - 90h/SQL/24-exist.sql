-- equipos que han jugado algun partido

use ligafutboldb;

SELECT idEquipo, nombreEquipo
FROM equipo

WHERE EXISTS (
	select 1
    from partido
    WHERE (equipoLocalPartido = idEquipo) or (equipoVisitantePartido= idEquipo)
    )    ;