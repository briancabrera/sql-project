CREATE OR REPLACE VIEW students_per_group AS
SELECT g.group_name AS group_name, COUNT(s.student_id) as student_qty
FROM class_group AS g
RIGHT JOIN student AS s ON g.group_id = s.group_id
GROUP BY g.group_id
ORDER BY g.group_id ASC;

CREATE OR REPLACE VIEW avg_grade_per_student AS
SELECT s.student_id AS student, ROUND(AVG(g.grade)) AS average
FROM student AS s
RIGHT JOIN grade AS g ON s.student_id = g.student_id
GROUP BY s.student_id
ORDER BY s.student_id;

CREATE OR REPLACE VIEW mutualist_users AS
SELECT m.mutualist_name AS mutualist, COUNT(s.mutualist_id) AS students
FROM mutualist AS m
INNER JOIN student AS s ON s.mutualist_id = m.mutualist_id
GROUP BY m.mutualist_id
ORDER BY m.mutualist_id ASC;

CREATE OR REPLACE VIEW assignments_per_class AS
SELECT c.class_name AS class, COUNT(a.class_id) AS assignments
FROM class AS c
INNER JOIN assignment AS a ON a.class_id = c.class_id
GROUP BY c.class_id
ORDER BY c.class_name ASC;

CREATE OR REPLACE VIEW avg_grade_per_class AS
SELECT c.class_name AS classname, ROUND(AVG(g.grade)) AS avg_grade
FROM class AS c
INNER JOIN assignment AS a ON a.class_id = c.class_id
INNER JOIN grade AS g ON a.assignment_id = g.assignment_id
GROUP BY c.class_id;

