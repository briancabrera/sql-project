CREATE DATABASE IF NOT EXISTS `coderhouse_project`
USE `coderhouse_project`;

DROP TABLE IF EXISTS `assignments`;

CREATE TABLE `assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `task` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(25) NOT NULL,
  `period_id` int NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `period_id` (`period_id`),
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`period_id`) REFERENCES `period` (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `class_name` varchar(25) NOT NULL,
  `class_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `professor_id` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `group_id` (`group_id`),
  KEY `professor_id` (`professor_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`),
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  CONSTRAINT `class_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `student_id` int NOT NULL,
  `assignment_id` int NOT NULL,
  `grade` int NOT NULL,
  KEY `student_id` (`student_id`),
  KEY `assignment_id` (`assignment_id`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `mutualist`;

CREATE TABLE `mutualist` (
  `mutualist_id` int NOT NULL AUTO_INCREMENT,
  `mutualist_name` varchar(32) NOT NULL,
  PRIMARY KEY (`mutualist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `period`;

CREATE TABLE `period` (
  `period_id` int NOT NULL AUTO_INCREMENT,
  `period_name` varchar(32) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `professor`;

CREATE TABLE `professor` (
  `user_id` int NOT NULL,
  `professor_id` int NOT NULL AUTO_INCREMENT,
  `mutualist_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `phone_number` char(9) NOT NULL,
  PRIMARY KEY (`professor_id`),
  KEY `user_id` (`user_id`),
  KEY `mutualist_id` (`mutualist_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `professor_ibfk_2` FOREIGN KEY (`mutualist_id`) REFERENCES `mutualist` (`mutualist_id`),
  CONSTRAINT `professor_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `report_card`;

CREATE TABLE `report_card` (
  `student_id` int NOT NULL,
  `period_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `grade` int NOT NULL,
  KEY `student_id` (`student_id`),
  KEY `period_id` (`period_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `report_card_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `report_card_ibfk_2` FOREIGN KEY (`period_id`) REFERENCES `period` (`period_id`),
  CONSTRAINT `report_card_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `user_id` int NOT NULL,
  `student_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `mutualist_id` int NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`),
  KEY `tutor_id` (`tutor_id`),
  KEY `mutualist_id` (`mutualist_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`),
  CONSTRAINT `student_ibfk_3` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`),
  CONSTRAINT `student_ibfk_4` FOREIGN KEY (`mutualist_id`) REFERENCES `mutualist` (`mutualist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(20) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `tutor`;

CREATE TABLE `tutor` (
  `user_id` int NOT NULL,
  `tutor_id` int NOT NULL AUTO_INCREMENT,
  `phone_number` char(9) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`tutor_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tutor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `user_type`;

CREATE TABLE `user_type` (
  `user_type_id` int NOT NULL AUTO_INCREMENT,
  `user_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `cedula` varchar(8) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `birthdate` date NOT NULL,
  `user_type_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_type_id` (`user_type_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
