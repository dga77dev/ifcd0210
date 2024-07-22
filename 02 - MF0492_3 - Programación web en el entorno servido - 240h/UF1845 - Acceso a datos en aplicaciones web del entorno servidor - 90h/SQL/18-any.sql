use prueba;
SELECT Provincia
FROM provincias
WHERE idProvincia = ANY
  (SELECT idProvincia
  FROM municipios
  WHERE codMunicipio = 4);