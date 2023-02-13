/*
	sp_create_user
    
    Crea un usuario.
    Es invocado en cualquiera de los tres siguientes SPs.
*/

DELIMITER $$
CREATE PROCEDURE sp_create_user(
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

/*
	sp_create_tutor
    
	Crea un tutor.
    Invoca el SP sp_create_user como primer paso para crear un usuario.
    Una vez creado el usuario, inserta los datos correspondientes en la tabla Tutor.
*/

CREATE PROCEDURE sp_create_tutor(
IN _f_name VARCHAR(15),
IN _l_name VARCHAR(25),
IN _cedula VARCHAR(8),
IN _email VARCHAR(255),
IN _password VARCHAR(32),
IN _birthdate DATE,
IN _phone_number CHAR(9),
IN _address VARCHAR(255)
)
BEGIN
	START TRANSACTION;

	CALL sp_create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 2, @_user_id);

	INSERT INTO tutor(user_id, phone_number, address) 
    VALUES (@_user_id, _phone_number, _address);
    
    SELECT * FROM users WHERE user_id = @_user_id;
END
$$

/*
	sp_create_student
    
	Crea un estudiante.
    Invoca el SP sp_create_user como primer paso para crear un usuario.
    Una vez creado el usuario, inserta los datos correspondientes en la tabla Student.
*/

DELIMITER $$
CREATE PROCEDURE sp_create_student(
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
	START TRANSACTION;
    
	CALL sp_create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 1, @_user_id);

	INSERT INTO student(user_id, group_id, tutor_id, mutualist_id) 
    VALUES (@_user_id, _group_id, _tutor_id, _mutualist_id);
    
    SELECT * FROM users WHERE user_id = @_user_id;
END
$$

/*
	sp_create_professor
    
	Crea un profesor.
    Invoca el SP sp_create_user como primer paso para crear un usuario.
    Una vez creado el usuario, inserta los datos correspondientes en la tabla Professor.
*/

DELIMITER $$
CREATE PROCEDURE sp_create_professor(
IN _f_name VARCHAR(15),
IN _l_name VARCHAR(25),
IN _cedula VARCHAR(8),
IN _email VARCHAR(255),
IN _password VARCHAR(32),
IN _birthdate DATE,
IN _mutualist_id INT,
IN _subject_id INT,
IN _phone_number CHAR(9)
)
BEGIN
	START TRANSACTION;

	CALL sp_create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 3, @_user_id);

	INSERT INTO professor(user_id, mutualist_id, subject_id, phone_number) 
    VALUES (@_user_id, _mutualist_id, _subject_id, _phone_number);
    
    SELECT * FROM professor, users WHERE users.user_id = @_user_id AND professor.user_id = @_user_id;
END
$$