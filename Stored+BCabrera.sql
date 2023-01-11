DELIMITER $$
CREATE PROCEDURE get_users_by_type (
IN _user_type VARCHAR(20), 
IN _order_by VARCHAR(4))

BEGIN

 DECLARE type_id INT DEFAULT 0;
 DECLARE myQuery CHAR DEFAULT '';
 
 SELECT user_type_id INTO type_id FROM user_type WHERE user_type = _user_type;
 
 SET @myQuery = CONCAT(
 'SELECT d.* FROM ', _user_type, ' AS d', 
 ' INNER JOIN users AS u ON u.user_type_id = ', type_id, 
 ' GROUP BY d.', _user_type, '_id', ' ORDER BY d.', _user_type, '_id ', _order_by);
 
 PREPARE runQuery FROM @myQuery;
 EXECUTE runQuery;
 DEALLOCATE PREPARE runQuery;

END
$$

DELIMITER $$
CREATE PROCEDURE get_users(IN _order_field VARCHAR(50), IN _order_by VARCHAR(4))
BEGIN

	DECLARE myQuery VARCHAR(150) DEFAULT '';
    
	SET @myQuery = CONCAT('SELECT * FROM users ORDER BY ', _order_field, ' ', _order_by);
    
    PREPARE runQuery FROM @myQuery;
    EXECUTE runQuery;
	DEALLOCATE PREPARE runQuery;
    
END
$$

DELIMITER $$
CREATE PROCEDURE create_user(
IN _f_name VARCHAR(15),
IN _l_name VARCHAR(25),
IN _cedula VARCHAR(8),
IN _email VARCHAR(255),
IN _password VARCHAR(32),
IN _birthdate DATE,
IN _type_id INT,
OUT _user_id INT)
BEGIN
	INSERT INTO users(first_name, last_name, cedula, user_email, user_password, birthdate, user_type_id) 
    VALUES (_f_name, _l_name, _cedula, _email, _password, _birthdate, _type_id);
    
    SELECT user_id
    INTO _user_id
    FROM users
    WHERE cedula = _cedula;
END
$$

DELIMITER $$
CREATE PROCEDURE create_tutor(
IN _f_name VARCHAR(15),
IN _l_name VARCHAR(25),
IN _cedula VARCHAR(8),
IN _email VARCHAR(255),
IN _password VARCHAR(32),
IN _birthdate DATE,
IN _phone CHAR(9),
IN _address VARCHAR(255)
)
BEGIN
	CALL create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 2, @_user_id);

	INSERT INTO tutor(user_id, phone_number, address) 
    VALUES (@_user_id, _phone, _address);
END
$$

DELIMITER $$
CREATE PROCEDURE create_student(
IN _f_name VARCHAR(15),
IN _l_name VARCHAR(25),
IN _cedula VARCHAR(8),
IN _email VARCHAR(255),
IN _password VARCHAR(32),
IN _birthdate DATE,
IN _group_id INT,
IN _tutor_id INT,
IN _mutualist_id INT
)
BEGIN
	CALL create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 1, @_user_id);

	INSERT INTO student(user_id, group_id, tutor_id, mutualist_id) 
    VALUES (@_user_id, _group_id, _tutor_id, _mutualist_id);
END
$$

DELIMITER $$
CREATE PROCEDURE create_professor(
IN _f_name VARCHAR(15),
IN _l_name VARCHAR(25),
IN _cedula VARCHAR(8),
IN _email VARCHAR(255),
IN _password VARCHAR(32),
IN _birthdate DATE,
IN _mutualist_id INT,
IN _subject_id INT,
IN _phone CHAR(9)
)
BEGIN
	CALL create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 3, @_user_id);

	INSERT INTO professor(user_id, mutualist_id, subject_id, phone) 
    VALUES (@_user_id, _mutualist_id, _subject_id, _phone);
END
$$







CALL get_users_by_type('professor', 'DESC')