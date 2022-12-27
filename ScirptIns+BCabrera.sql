INSERT INTO user_type (user_type_id, user_type) VALUES
	(1, 'student'), 
    (2, 'tutor'),
    (3, 'professor');

INSERT INTO mutualist (mutualist_id, mutualist_name) VALUES
	(1, 'CRAME'),
    (2, 'COSEM'),
    (3, 'CASMU'),
    (4, 'BLUE CROSS'),
    (5, 'HOSPITAL BRITANICO');

INSERT INTO subject (subject_id, subject_name) VALUES
	(1, 'idioma español'),
    (2, 'matematica'),
    (3, 'literatura'),
    (4, 'ingles'),
    (5, 'historia'),
    (6, 'geografia'),
    (7, 'biologia'),
    (8, 'fisica'),
    (9, 'quimica'),
    (10, 'dibujo'),
    (11, 'musica'),
    (12, 'educacion fisica'),
    (13, 'educacion social y civica');

INSERT INTO period (period_id, period_name, start_date, end_date) VALUES 
	(1, '2022', DATE '2022-03-01', DATE '2022-11-15');
    
INSERT INTO class_group (group_id, group_name, period_id) VALUES
	(1, 'Primero 1', 1),
    (2, 'Segundo 1', 1),
    (3, 'Tercero 1', 1);
    
INSERT INTO users (user_id, first_name, last_name, cedula, user_email, user_password, birthdate, user_type_id) VALUES
	(1, 'Emilia', 'Rodriguez', '56464412', 'emi.rodriguez1@gmail.com', 'emirodri123', DATE ('2007-01-01'), 1),
    (2, 'Florencia', 'Gonzalez', '54644413', 'flor.gonzalez2@gmail.com', 'florgonz123', DATE ('2007-01-02'), 1),
    (3, 'Augusto', 'Rodriguez', '56400412', 'aug.rodriguez7@gmail.com', 'augrodri123', DATE ('2007-01-03'), 1),
    (4, 'Franco', 'Martinez', '56825012', 'fran.martinez98@gmail.com', 'franmart123', DATE ('2007-01-04'), 1),
    (5, 'Vicente', 'Diaz', '52804412', 'vi.diaz34@gmail.com', 'vicentediaz123', DATE ('2007-01-05'), 1),
	(6, 'Cristian', 'Fernandez', '66455412', 'cris.fernandez88@gmail.com', 'crisfer123', DATE ('2007-01-01'), 1),
    (7, 'Ambar', 'Olivera', '56465677', 'ambar.oli56@gmail.com', 'ambaroli123', DATE ('2007-03-25'), 1),
    (8, 'Sofia', 'Sosa', '56984428', 'sofi.sosa34@gmail.com', 'sofisosa123', DATE ('2007-02-15'), 1),
    (9, 'Riquelme', 'Alvarez', '57334900', 'riq.alvarez90@gmail.com', 'ralvarez123', DATE ('2007-04-09'), 1),
    (10, 'Franco', 'Fernandez', '52845735', 'franfer8889@gmail.com', 'ffernan123', DATE ('2007-02-02'), 1),
    (11, 'Adrian', 'Gomez', '65446421', 'adrian.g345t@gmail.com', 'adrigomez123', DATE ('2008-02-01'), 1),
    (12, 'Joaquin', 'Suarez', '55661224', 'jsuarrr863@gmail.com', 'suarezjoak123', DATE ('2007-12-03'), 1),
    (13, 'Emiliano', 'Rodriguez', '63422112', 'emicapo77@gmail.com', 'emirodri123', DATE ('2007-11-10'), 1),
    (14, 'Gerardo', 'Garcia', '57771412', 'ger.garcia22@gmail.com', 'gergarcia123', DATE ('2008-02-14'), 1),
    (15, 'Ana', 'Perez', '56991572', 'ana11perez@gmail.com', 'anaperez123', DATE ('2007-12-17'), 1),
    (16, 'Abigail', 'Vera', '58896145', 'vera00abigail@gmail.com', 'abivera123', DATE ('2008-01-19'), 1),
    (17, 'Maite', 'Fernandez', '53065813', 'maiifeerrr234@gmail.com', 'maiifer433', DATE ('2007-03-04'), 1),
    (18, 'Benjamin', 'Sosa', '51047523', 'benjadelcap444@gmail.com', 'benjasosa656', DATE ('2008-03-07'), 1),
    (19, 'Mateo', 'Cabrera', '62065781', 'bolsoreydecopas1899@gmail.com', 'matcabrera999', DATE ('2008-04-01'), 1),
    (20, 'Pedro', 'Martinez', '59274771', 'pedritogamer2@gmail.com', 'pedromart12321', DATE ('2008-02-01'), 1),
    (21, 'Victor', 'Acuña', '72345562', 'victorelcrack@gmail.com', 'vicacuña22', DATE ('2009-12-03'), 1),
    (22, 'Isidora', 'Bonino', '78858143', 'isidora.bonino331948@gmail.com', 'isiibonino346', DATE ('2009-10-21'), 1),
    (23, 'Sofia', 'Hernandez', '71045961', 'sofihernand3z@gmail.com', 'sofihernan124r', DATE ('2010-02-22'), 1),
    (24, 'Florencia', 'Cabrera', '72647302', 'cabrerafl0r@gmail.com', 'florcabrr22', DATE ('2010-01-24'), 1),
    (25, 'Ambar', 'Silva', '70988615', 'silvambar@gmail.com', 'ambarsilva67878', DATE ('2009-09-22'), 1),
    (26, 'Jose', 'Ferreira', '78278631', 'ferreirajoselit0@gmail.com', 'joseito223', DATE ('2010-04-16'), 1),
    (27, 'Jose', 'Martinez', '79143895', 'martinezj0s3@gmail.com', 'martjose753', DATE ('2010-01-11'), 1),
    (28, 'Joaquin', 'Lopez', '71123186', 'kapodelcap33@gmail.com', 'juakokapo45', DATE ('2009-08-04'), 1),
    
    (29, 'Emilia', 'Rodriguez', '39067871', 'e.rodriguez@gmail.com', 'emiliar998', DATE ('1980-01-01'), 2),
    (30, 'Jose Luis', 'Garcia', '41043241', 'dr.joseluisgarcia@gmail.com', 'joseluis23', DATE ('1985-10-10'), 2),
    (31, 'Pedro', 'Gimenez', '47816232', 'pepedrogimenez@gmail.com', 'pepedrito998', DATE ('1989-05-02'), 2),
    (32, 'Mariana', 'Santos', '49971034', 'santosmariana@gmail.com', 'marianasantos22', DATE ('1990-07-01'), 2),
    (33, 'Alfonso', 'Romano', '40001348', 'romano.a@gmail.com', 'alfonsoromano222', DATE ('1982-05-08'), 2),
    (34, 'Eliza', 'Imperial', '39991764', 'elizaimperial@gmail.com', 'impeliza43', DATE ('1981-12-12'), 2),
    (35, 'Alfredo', 'Kelmann', '40921424', 'alfredokelmann@gmail.com', 'kelmann23454', DATE ('1987-01-01'), 2),
    (36, 'Daniel', 'Alvarez', '49912482', 'danielalvarez11@gmail.com', 'danialva767', DATE ('1995-08-12'), 2),
    (37, 'Hernan', 'Justo', '39399713', 'j.hernan@gmail.com', 'hernanjusto123', DATE ('1986-05-13'), 2),
    (38, 'Sofia', 'Baz', '39278410', 'sofi.baz@gmail.com', 'sofiabaz23', DATE ('1980-06-23'), 2),
    (39, 'Maria', 'Fernandez', '38786431', 'marifer45@gmail.com', 'marifer44', DATE ('1983-06-06'), 2),
    (40, 'German', 'Cabrera', '38614492', 'cabrera.german@gmail.com', 'germancabr3r4', DATE ('1981-03-05'), 2),
    (41, 'Jairo', 'Martinez', '37891632', 'jaimartinez@gmail.com', 'jairomartine', DATE ('1980-03-07'), 2),
    (42, 'Pedro', 'Pastilla', '39187732', 'pepe.pastilla@gmail.com', 'pepepastilla', DATE ('1980-06-01'), 2),
    (43, 'Manuel', 'Olivo', '40018635', 'olivomanu84@gmail.com', 'manuelolivo22', DATE ('1984-03-03'), 2),
    (44, 'Josefina', 'Moncler', '39178346', 'm.josefina@gmail.com', 'josefinam45', DATE ('1980-10-01'), 2),
    
    (45, 'Felicia', 'Juarez', '42349872', 'feli.juarez@gmail.com', 'fjuarez1992', DATE ('1992-01-01'), 3),
    (46, 'Humberto', 'Garcia', '43871034', 'prof.hgarcia@gmail.com', 'humbertogarcia888', DATE ('1993-02-04'), 3),
    (47, 'William', 'Bert', '40183645', 'w.bert87@gmail.com', 'williambert982', DATE ('1991-04-03'), 3),
    (48, 'Marta', 'Hernandez', '40001839', 'hernandezmar@gmail.com', 'martah19293', DATE ('1989-10-02'), 3),
    (49, 'Mirta', 'Fernandez', '29783672', 'mirtafernan67@gmail.com', 'mirtaf234', DATE ('1967-02-10'), 3),
    (50, 'Alfredo', 'Camacho', '39990147', 'alfredocamachoprof@gmail.com', 'alfredoc134', DATE ('1978-03-11'), 3),
    (51, 'Carmen', 'De los Santos', '34992883', 'carmendlossantos@gmail.com', 'carmen76781', DATE ('1976-11-05'), 3),
    (52, 'Beto', 'Girasoles', '41797532', 'girasoles.beto@gmail.com', 'betogirasoles98673', DATE ('1989-09-09'), 3),
    (53, 'Belen', 'Cruz', '30001176', 'prof.belencruz@gmail.com', 'bcruz1293', DATE ('1969-04-10'), 3),
    (54, 'Javier', 'Gomez', '39998163', 'javiergomezprofesor@gmail.com', 'gomezjavi9192', DATE ('1977-07-02'), 3),
    (55, 'Javier', 'Perez', '45615231', 'javiperezp@gmail.com', 'javierperez1132', DATE ('1991-11-04'), 3),
    (56, 'Jose', 'Montiel', '47012745', 'montieljose@gmail.com', 'josemontiel293', DATE ('1988-01-01'), 3),
    (57, 'Joaquin', 'Garcia', '43422978', 'profjgarcia@gmail.com', 'joaquingarcia24421', DATE ('1992-11-10'), 3),
    (58, 'Vincent', 'Vango', '47194623', 'vangovincent@gmail.com', 'vincentvg990', DATE ('1990-12-12'), 3);