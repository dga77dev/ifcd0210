-- obtener todos los partidos con el nombre delos equipos locales y visitantes
   
    
use ligafutboldb;
select idPartido, partido.fechapartido, E1.nombreequipo, E2.nombreequipo, E1.idEquipo, E2.idEquipo
from partido
RIGHT join equipo AS E1
   on partido.equipoLocalPartido = E1.idEquipo
RIGHT join equipo AS E2
   on partido.equipoVisitantePartido = E2.idEquipo
order by fechapartido;