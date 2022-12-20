CREATE SCHEMA coderhouse_project;

USE coderhouse_project;

CREATE TABLE user_type (
user_type_id INT NOT NULL auto_increment,
user_type varchar(15),
PRIMARY KEY (user_type_id)
);

CREATE TABLE mutualist (
mutualist_id INT NOT NULL AUTO_INCREMENT,
mutualist_name VARCHAR(32) NOT NULL,
PRIMARY KEY (mutualist_id)
);

CREATE TABLE subject (
subject_id INT NOT NULL AUTO_INCREMENT,
subject_name varchar(20) NOT NULL,
PRIMARY KEY (subject_id)
);

CREATE TABLE period (
period_id INT NOT NULL AUTO_INCREMENT,
period_name VARCHAR(32),
start_date DATE NOT NULL,
end_date DATE NOT NULL,
PRIMARY KEY (period_id)
);

CREATE TABLE users (
user_id INT NOT NULL auto_increment,
first_name varchar(15) NOT NULL,
last_name varchar(25) NOT NULL,
cedula varchar(8) NOT NULL,
user_email varchar(255) NOT NULL,
user_password varchar(32) NOT NULL,
birthdate date NOT NULL,
user_type_id int NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE student (
user_id INT NOT NULL,
student_id INT NOT NULL auto_increment,
group_id INT NOT NULL,
tutor_id INT NOT NULL,
mutualist_id INT NOT NULL,
PRIMARY KEY (student_id)
);

CREATE TABLE tutor (
user_id INT NOT NULL,
tutor_id INT NOT NULL auto_increment,
phone_number char(9) NOT NULL,
address varchar(255) NOT NULL,
PRIMARY KEY (tutor_id)
);

CREATE TABLE professor (
user_id INT NOT NULL,
professor_id INT NOT NULL AUTO_INCREMENT,
mutualist_id int NOT NULL,
subject_id INT NOT NULL,
phone_number char(9) NOT NULL,
PRIMARY KEY (professor_id)
);

CREATE TABLE groups (
group_id INT NOT NULL AUTO_INCREMENT,
group_name varchar(25) NOT NULL,
period_id INT NOT NULL,
PRIMARY KEY (group_id)
);

CREATE TABLE class (
class_name varchar(25) NOT NULL,
class_id INT NOT NULL AUTO_INCREMENT,
group_id INT NOT NULL,
professor_id INT NOT NULL,
subject_id INT NOT NULL,
PRIMARY KEY (class_id)
);

CREATE TABLE assignment (
assignment_id INT NOT NULL AUTO_INCREMENT,
class_id INT NOT NULL,
task VARCHAR(255) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
PRIMARY KEY (assignment_id)
);

CREATE TABLE grade (
student_id INT NOT NULL,
assignment_id INT NOT NULL,
grade INT NOT NULL
);

CREATE TABLE report_card (
student_id INT NOT NULL,
period_id INT NOT NULL,
subject_id INT NOT NULL,
grade INT NOT NULL
);

ALTER TABLE users
ADD FOREIGN KEY (user_type_id) REFERENCES user_type(user_type_id);

ALTER TABLE student
ADD FOREIGN KEY (user_id) REFERENCES users(user_id),
ADD FOREIGN KEY (group_id) REFERENCES groups(group_id),
ADD FOREIGN KEY (tutor_id) REFERENCES tutor(tutor_id),
ADD FOREIGN KEY (mutualist_id) REFERENCES mutualist(mutualist_id);

ALTER TABLE tutor
ADD FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE professor
ADD FOREIGN KEY (user_id) REFERENCES users(user_id),
ADD FOREIGN KEY (mutualist_id) REFERENCES mutualist(mutualist_id),
ADD FOREIGN KEY (subject_id) REFERENCES subject(subject_id);

ALTER TABLE groups
ADD FOREIGN KEY (period_id) REFERENCES period(period_id);

ALTER TABLE class
ADD FOREIGN KEY (group_id) REFERENCES groups(group_id),
ADD FOREIGN KEY (professor_id) REFERENCES professor(professor_id),
ADD FOREIGN KEY (subject_id) REFERENCES subject(subject_id);

ALTER TABLE assignment
ADD FOREIGN KEY (class_id) REFERENCES class(class_id);

ALTER TABLE grade
ADD FOREIGN KEY (student_id) REFERENCES student(student_id),
ADD FOREIGN KEY (assignment_id) REFERENCES assignment(assignment_id);

ALTER TABLE report_card
ADD FOREIGN KEY (student_id) REFERENCES student(student_id),
ADD FOREIGN KEY (period_id) REFERENCES period(period_id),
ADD FOREIGN KEY (subject_id) REFERENCES subject(subject_id);