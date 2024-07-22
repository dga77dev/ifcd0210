USE prueba;
-- En mySql Workbech si esta en modo seguro el where solo acepta campo clave. 
-- Para usar otro campo desactivar modo seguro de workbench en preferencias->Sql Editor (abajo del todo).
UPDATE alumnos SET alumno_edad = 33, alumno_email="elnuevo@vi.es" WHERE alumno_nombre = "Lucho Trucho";
