drop trigger if exists before_insert_equipo;
drop trigger if exists after_insert_equipo;
drop trigger if exists before_update_equipo;

DELIMITER //
CREATE TRIGGER after_insert_equipo
AFTER INSERT ON equipo
FOR EACH ROW
BEGIN
    INSERT INTO log (table_name, operation, record_id, new_data, change_time)
    VALUES ('equipo', 'INSERT', NEW.idEquipo, CONCAT('Nombre: ', NEW.nombreEquipo), CURRENT_TIMESTAMP);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER after_update_equipo
AFTER UPDATE ON equipo
FOR EACH ROW
BEGIN
    INSERT INTO log (table_name, operation, record_id, old_data, new_data, change_time)
    VALUES ('equipo', 'UPDATE', NEW.idEquipo, CONCAT('Nombre anterior: ', OLD.nombreEquipo), CONCAT('Nuevo nombre: ', NEW.nombreEquipo), CURRENT_TIMESTAMP);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER after_delete_equipo
AFTER DELETE ON equipo
FOR EACH ROW
BEGIN
    INSERT INTO log (table_name, operation, record_id, old_data, change_time)
    VALUES ('equipo', 'DELETE', OLD.idEquipo, CONCAT('Nombre eliminado: ', OLD.nombreEquipo), CURRENT_TIMESTAMP);
END 
// DELIMITER ;

