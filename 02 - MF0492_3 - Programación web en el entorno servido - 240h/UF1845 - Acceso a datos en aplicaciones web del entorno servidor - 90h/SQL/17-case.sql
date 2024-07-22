USE prueba;
SELECT *,
CASE
    WHEN aprobadas > 5 THEN 'Matrícula de honor.'
    WHEN aprobadas = 0 THEN 'Super muy deficiente.'
    ELSE 'Ni fu ni fa'
END AS mensaje
FROM alumnos;