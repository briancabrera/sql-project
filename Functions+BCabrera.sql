DELIMITER $$
CREATE FUNCTION `fn_calculate_student_final_grade` (_student_id INT)
RETURNS INT
READS SQL DATA
DETERMINISTIC
BEGIN
	DECLARE average INT;
    DECLARE approved INT;
    SELECT AVG(grade.grade) INTO average FROM grade WHERE student_id = _student_id;
    
    IF average >= 7 THEN
		SET approved = 1;
	ELSE
		SET approved = 0;
	END IF;
    
    RETURN approved;
END
$$

DELIMITER $$
CREATE FUNCTION `fn_get_user_qty_by_type` (_user_type_id INT)
RETURNS INT
READS SQL DATA
DETERMINISTIC
BEGIN
	DECLARE user_count INT;
    SELECT COUNT(users.user_type_id) INTO user_count FROM users WHERE user_type_id = _user_type_id;
    RETURN user_count;
END
$$
