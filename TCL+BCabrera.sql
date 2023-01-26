SET SQL_SAFE_UPDATES = 0;
/*
SET SQL_SAFE_UPDATES = 1;
*/

START TRANSACTION;

SAVEPOINT savepoint1;

DELETE FROM student;

SELECT * FROM student;

/*
COMMIT;
ROLLBACK TO savepoint1;
SELECT * FROM student;
*/
/*
INSERT INTO student (user_id, student_id, group_id, tutor_id, mutualist_id) VALUES
	(1, 1, 3, 1, 1),
    (2, 2, 3, 2, 2),
    (3, 3, 3, 3, 3),
    (4, 4, 3, 4, 4),
    (5, 5, 3, 5, 5),
    (6, 6, 3, 6, 1),
    (7, 7, 3, 7, 2),
    (8, 8, 3, 8, 3),
    (9, 9, 3, 9, 4),
    (10, 10, 3, 10, 5),
    (11, 11, 2, 11, 1),
	(12, 12, 2, 12, 2),
    (13, 13, 2, 13, 3),
    (14, 14, 2, 14, 4),
    (15, 15, 2, 1, 5),
    (16, 16, 2, 2, 1),
    (17, 17, 2, 3, 2),
    (18, 18, 2, 4, 3),
    (19, 19, 2, 5, 4),
    (20, 20, 2, 6, 5),
    (21, 21, 1, 7, 1),
    (22, 22, 1, 8, 2),
    (23, 23, 1, 9, 3),
    (24, 24, 1, 10, 4),
    (25, 25, 1, 11, 5),
    (26, 26, 1, 12, 1),
    (27, 27, 1, 13, 2),
    (28, 28, 1, 15, 3);
*/

START TRANSACTION;

CALL sp_create_professor('Pedro', 'Giménez', '39116482', 'prof.g.pedro@gmail.com', 'pedritoprofe', DATE('1979-05-04'), 1, 1, '099191932');
CALL sp_create_professor('Juan', 'Sosa', '37916841', 'prof.s.juan@gmail.com', 'juansosa111', DATE('1979-04-05'), 2, 2, '092918495');
CALL sp_create_professor('Juan Pablo', 'Romero', '41176482', 'jp.romerop@gmail.com', 'juanparomero', DATE('1989-03-03'), 3, 3, '099193743');
CALL sp_create_professor('Roman', 'Chelsea', '38116412', 'romanchelsea@gmail.com', 'romanchelsea', DATE('1978-10-08'), 4, 4, '091833424');
SAVEPOINT svp_1;
CALL sp_create_professor('Josefina', 'Giménez', '40019234', 'josefinagimenezp@gmail.com', 'josefagprofe', DATE('1985-01-20'), 5, 5, '091334492');
CALL sp_create_professor('Jose', 'Cabrera', '38173092', 'prof.cabreraj@gmail.com', 'cabrerajose9183', DATE('1975-12-02'), 1, , '092392743');
CALL sp_create_professor('Marcos', 'Da Silva', '35910394', 'marcos.dasilva@gmail.com', 'marcosdasilva123', DATE('1972-11-05'), 2, 7, '091749372');
CALL sp_create_professor('Carlos', 'Di María', '31039223', 'dimariacarlos@gmail.com', 'carlosdimaria', DATE('1970-01-07'), 3, 8, '094629465');
SAVEPOINT svp_2;

/*
COMMIT;
ROLLBACK;
RELEASE SAVEPOINT svp_1;
/*