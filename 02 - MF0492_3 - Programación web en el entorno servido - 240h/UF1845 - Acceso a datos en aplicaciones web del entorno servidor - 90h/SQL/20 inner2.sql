-- obtener los partidos con nombre de equipo

use ligafutboldb;
select idPartido, partido.fechapartido, partido.equipoLocalPartido, E1.nombreEquipo,  partido.equipoVisitantePartido, E2.nombreequipo
from partido
inner join equipo AS E1
on partido.equipoLocalPartido = E1.idEquipo
inner join equipo AS E2
on partido.equipoVisitantePartido = E2.idEquipo;