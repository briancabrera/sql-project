/*
	USERS TRIGGERS
*/

DELIMITER $$
CREATE TRIGGER tg_after_user_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO users_log(date, time, user_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.user_id, 'create');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_user_delete BEFORE DELETE ON users
FOR EACH ROW
BEGIN
	INSERT INTO users_log(date, time, user_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.user_id, 'delete');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_user_update AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	INSERT INTO users_log(date, time, user_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.user_id, 'update');
END
$$

/*
	STUDENT TRIGGERS
*/

DELIMITER $$
CREATE TRIGGER tg_after_student_insert AFTER INSERT ON student
FOR EACH ROW
BEGIN
	INSERT INTO student_log(date, time, student_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.student_id, 'create');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_student_delete BEFORE DELETE ON student
FOR EACH ROW
BEGIN
	INSERT INTO student_log(date, time, student_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.student_id, 'delete');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_student_update AFTER UPDATE ON student
FOR EACH ROW
BEGIN
	INSERT INTO users_log(date, time, student_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.student_id, 'update');
END
$$

/*
	TUTOR TRIGGERS
*/

DELIMITER $$
CREATE TRIGGER tg_after_tutor_insert AFTER INSERT ON tutor
FOR EACH ROW
BEGIN
	INSERT INTO tutor_log(date, time, tutor_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.tutor_id, 'create');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_tutor_delete BEFORE DELETE ON tutor
FOR EACH ROW
BEGIN
	INSERT INTO tutor_log(date, time, tutor_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.tutor_id, 'delete');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_tutor_update AFTER UPDATE ON tutor
FOR EACH ROW
BEGIN
	INSERT INTO tutor_log(date, time, tutor_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.tutor_id, 'update');
END
$$

/*
	PROFESSOR TRIGGERS
*/

DELIMITER $$
CREATE TRIGGER tg_after_professor_insert AFTER INSERT ON professor
FOR EACH ROW
BEGIN
	INSERT INTO professor_log(date, time, professor_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.professor_id, 'create');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_professor_delete BEFORE DELETE ON professor
FOR EACH ROW
BEGIN
	INSERT INTO professor_log(date, time, professor_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.professor_id, 'delete');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_professor_update AFTER UPDATE ON professor
FOR EACH ROW
BEGIN
	INSERT INTO professor_log(date, time, professor_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.professor_id, 'update');
END
$$

/*
	CLASS_GROUP TRIGGERS
*/

DELIMITER $$
CREATE TRIGGER tg_after_class_group_insert AFTER INSERT ON class_group
FOR EACH ROW
BEGIN
	INSERT INTO class_group_log(date, time, group_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.group_id, 'create');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_class_group_delete BEFORE DELETE ON class_group
FOR EACH ROW
BEGIN
	INSERT INTO class_group_log(date, time, group_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.group_id, 'delete');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_class_group_update AFTER UPDATE ON class_group
FOR EACH ROW
BEGIN
	INSERT INTO class_group_log(date, time, group_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.group_id, 'update');
END
$$

/*
	CLASS TRIGGERS
*/

DELIMITER $$
CREATE TRIGGER tg_after_class_insert AFTER INSERT ON class
FOR EACH ROW
BEGIN
	INSERT INTO class_log(date, time, class_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.class_id, 'create');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_class_delete BEFORE DELETE ON class
FOR EACH ROW
BEGIN
	INSERT INTO class_log(date, time, class_, action)
    VALUES (CURDATE(), CURTIME(), OLD.class_id, 'delete');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_class_update AFTER UPDATE ON class
FOR EACH ROW
BEGIN
	INSERT INTO class_log(date, time, class_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.class_id, 'update');
END
$$

/*
	ASSIGNMENT TRIGGERS
*/

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

/*
	GRADE TRIGGERS
*/

DELIMITER $$
CREATE TRIGGER tg_after_grade_insert AFTER INSERT ON grade
FOR EACH ROW
BEGIN
		INSERT INTO grade_log(date, time, assignment_id, student_id, action)
    VALUES (CURDATE(), CURTIME(), NEW.assignment_id, NEW.student_id, 'update');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_grade_delete BEFORE DELETE ON grade
FOR EACH ROW
BEGIN
	INSERT INTO grade_log(date, time, assignment_id, student_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.assignment_id, OLD.student_id, 'delete');
END
$$

DELIMITER $$
CREATE TRIGGER tg_after_grade_update AFTER UPDATE ON grade
FOR EACH ROW
BEGIN
	INSERT INTO grade_log(date, time, assignment_id, student_id, action)
    VALUES (CURDATE(), CURTIME(), OLD.assignment_id, OLD.student_id, 'update');
END
$$