CREATE TABLE `coderhouse_project`.`assignments_log` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `time` DATETIME NOT NULL,
  `assignment_id` INT NOT NULL,
  `professor_id` INT NOT NULL,
  `action` VARCHAR(6) NOT NULL,
  PRIMARY KEY (`id`));
/*
	Maneja los inserts a la tabla 'assignments', busca el ID del profesor
    correspondiente y toma el id del nuevo assignment creado.
    Inserta un nuevo registro 'assignment_logs' con la fecha, la hora,
    el assignment_id del nuevo assignment, el ID del profesor que lo creó
    y el dato 'action' hardcodeado en 'create' para hacer referencia a la
    acción que sucedió en la tabla "padre".
*/
DELIMITER $$
CREATE TRIGGER tg_after_assignment_insert AFTER INSERT ON assignment
FOR EACH ROW
BEGIN
	DECLARE prof_id INT;
    
	SELECT class_id
    INTO prof_id
    FROM class 
    WHERE class_id = NEW.class_id;
    
	INSERT INTO assignments_log(date, time, assignment_id, professor_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.assignment_id, prof_id, 'create');
END
$$

/*
	Maneja los delete de la tabla 'assignments', busca el ID del profesor
    correspondiente y toma el id del nuevo assignment creado.
    Inserta un nuevo registro 'assignment_logs' con la fecha, la hora,
    el assignment_id del nuevo assignment, el ID del profesor que lo creó
    y el dato 'action' hardcodeado en 'delete' para hacer referencia a la
    acción que sucedió en la tabla "padre".
*/
DELIMITER $$
CREATE TRIGGER tg_after_assignment_delete BEFORE DELETE ON assignment
FOR EACH ROW
BEGIN
	DECLARE prof_id INT;
    
	SELECT class_id
    INTO prof_id
    FROM class 
    WHERE class_id = OLD.class_id;
    
	INSERT INTO assignments_log(date, time, assignment_id, professor_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.assignment_id, prof_id, 'delete');
END
$$


/*
	Maneja los updates a la tabla 'assignments', busca el ID del profesor
    correspondiente y toma el id del nuevo assignment creado.
    Inserta un nuevo registro 'assignment_logs' con la fecha, la hora,
    el assignment_id del nuevo assignment, el ID del profesor que lo creó
    y el dato 'action' hardcodeado en 'update' para hacer referencia a la
    acción que sucedió en la tabla "padre".
*/
DELIMITER $$
CREATE TRIGGER tg_after_assignment_update AFTER UPDATE ON assignment
FOR EACH ROW
BEGIN
	DECLARE prof_id INT;
    
	SELECT class_id
    INTO prof_id
    FROM class 
    WHERE class_id = NEW.class_id;
    
	INSERT INTO assignments_log(date, time, assignment_id, professor_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.assignment_id, prof_id, 'update');
END
$$

INSERT INTO assignment(class_id, task, start_date, end_date) VALUES (1, 'TEST 1', curdate(), curdate());
INSERT INTO assignment(class_id, task, start_date, end_date) VALUES (3, 'TEST 2', curdate(), curdate());
INSERT INTO assignment(class_id, task, start_date, end_date) VALUES (5, 'TEST 3', curdate(), curdate());
UPDATE assignment SET assignment.task = "task 2" WHERE assignment_id = 2;
UPDATE assignment SET assignment.task = "task 3" WHERE assignment_id = 3;
UPDATE assignment SET assignment.task = "task 4" WHERE assignment_id = 4;
DELETE FROM assignment WHERE assignment_id = 1;
DELETE FROM assignment WHERE assignment_id = 2;
DELETE FROM assignment WHERE assignment_id = 3;

