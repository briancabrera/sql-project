-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: coderhouse_project
-- ------------------------------------------------------
-- Server version	8.0.31

/*
TABLES:
- assignment
- assignment_log
- class
- class_group
- grade
- mutualist
- period
- professor
- student
- subject
- tutor
- users
- user_type

VIEWS:
- avg_grade_per_class
- vw_assignments_per_class
- vw_avg_grade_per_student
- vw_students_per_group
- vw_students_per_mutualist
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `task` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `FK_ASSIGNMENT_CLASS` (`class_id`),
  CONSTRAINT `FK_ASSIGNMENT_CLASS` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,1,'Tarea 1','2022-03-15','2022-04-18'),(2,1,'Tarea 2','2022-04-19','2022-05-25'),(3,1,'Tarea 3','2022-05-28','2022-06-05'),(4,1,'Tarea 4','2022-06-15','2022-07-01'),(5,1,'Tarea 6','2022-07-02','2022-07-20'),(6,1,'Tarea 7','2022-07-22','2022-08-18'),(7,1,'Tarea 8','2022-08-26','2022-09-18'),(8,1,'Tarea 9','2022-10-01','2022-10-10'),(9,1,'Tarea 10','2022-10-15','2022-11-12'),(10,2,'Tarea 1','2022-03-15','2022-04-18'),(11,2,'Tarea 2','2022-04-19','2022-05-25'),(12,2,'Tarea 3','2022-05-28','2022-06-05'),(13,2,'Tarea 4','2022-06-15','2022-07-01'),(14,2,'Tarea 6','2022-07-02','2022-07-20'),(15,2,'Tarea 7','2022-07-22','2022-08-18'),(16,2,'Tarea 8','2022-08-26','2022-09-18'),(17,2,'Tarea 9','2022-10-01','2022-10-10'),(18,2,'Tarea 10','2022-10-15','2022-11-12'),(19,3,'Tarea 1','2022-03-15','2022-04-18'),(20,3,'Tarea 2','2022-04-19','2022-05-25'),(21,3,'Tarea 3','2022-05-28','2022-06-05'),(22,3,'Tarea 4','2022-06-15','2022-07-01'),(23,3,'Tarea 6','2022-07-02','2022-07-20'),(24,3,'Tarea 7','2022-07-22','2022-08-18'),(25,3,'Tarea 8','2022-08-26','2022-09-18'),(26,3,'Tarea 9','2022-10-01','2022-10-10'),(27,3,'Tarea 10','2022-10-15','2022-11-12'),(28,4,'Tarea 1','2022-03-15','2022-04-18'),(29,4,'Tarea 2','2022-04-19','2022-05-25'),(30,4,'Tarea 3','2022-05-28','2022-06-05'),(31,4,'Tarea 4','2022-06-15','2022-07-01'),(32,4,'Tarea 6','2022-07-02','2022-07-20'),(33,4,'Tarea 7','2022-07-22','2022-08-18'),(34,4,'Tarea 8','2022-08-26','2022-09-18'),(35,4,'Tarea 9','2022-10-01','2022-10-10'),(36,4,'Tarea 10','2022-10-15','2022-11-12'),(37,5,'Tarea 1','2022-03-15','2022-04-18'),(38,5,'Tarea 2','2022-04-19','2022-05-25'),(39,5,'Tarea 3','2022-05-28','2022-06-05'),(40,5,'Tarea 4','2022-06-15','2022-07-01'),(41,5,'Tarea 6','2022-07-02','2022-07-20'),(42,5,'Tarea 7','2022-07-22','2022-08-18'),(43,5,'Tarea 8','2022-08-26','2022-09-18'),(44,5,'Tarea 9','2022-10-01','2022-10-10'),(45,5,'Tarea 10','2022-10-15','2022-11-12'),(46,6,'Tarea 1','2022-03-15','2022-04-18'),(47,6,'Tarea 2','2022-04-19','2022-05-25'),(48,6,'Tarea 3','2022-05-28','2022-06-05'),(49,6,'Tarea 4','2022-06-15','2022-07-01'),(50,6,'Tarea 6','2022-07-02','2022-07-20'),(51,6,'Tarea 7','2022-07-22','2022-08-18'),(52,6,'Tarea 8','2022-08-26','2022-09-18'),(53,6,'Tarea 9','2022-10-01','2022-10-10'),(54,6,'Tarea 10','2022-10-15','2022-11-12'),(55,7,'Tarea 1','2022-03-15','2022-04-18'),(56,7,'Tarea 2','2022-04-19','2022-05-25'),(57,7,'Tarea 3','2022-05-28','2022-06-05'),(58,7,'Tarea 4','2022-06-15','2022-07-01'),(59,7,'Tarea 6','2022-07-02','2022-07-20'),(60,7,'Tarea 7','2022-07-22','2022-08-18'),(61,7,'Tarea 8','2022-08-26','2022-09-18'),(62,7,'Tarea 9','2022-10-01','2022-10-10'),(63,7,'Tarea 10','2022-10-15','2022-11-12'),(64,8,'Tarea 1','2022-03-15','2022-04-18'),(65,8,'Tarea 2','2022-04-19','2022-05-25'),(66,8,'Tarea 3','2022-05-28','2022-06-05'),(67,8,'Tarea 4','2022-06-15','2022-07-01'),(68,8,'Tarea 6','2022-07-02','2022-07-20'),(69,8,'Tarea 7','2022-07-22','2022-08-18'),(70,8,'Tarea 8','2022-08-26','2022-09-18'),(71,8,'Tarea 9','2022-10-01','2022-10-10'),(72,8,'Tarea 10','2022-10-15','2022-11-12'),(73,9,'Tarea 1','2022-03-15','2022-04-18'),(74,9,'Tarea 2','2022-04-19','2022-05-25'),(75,9,'Tarea 3','2022-05-28','2022-06-05'),(76,9,'Tarea 4','2022-06-15','2022-07-01'),(77,9,'Tarea 6','2022-07-02','2022-07-20'),(78,9,'Tarea 7','2022-07-22','2022-08-18'),(79,9,'Tarea 8','2022-08-26','2022-09-18'),(80,9,'Tarea 9','2022-10-01','2022-10-10'),(81,9,'Tarea 10','2022-10-15','2022-11-12'),(82,10,'Tarea 1','2022-03-15','2022-04-18'),(83,10,'Tarea 2','2022-04-19','2022-05-25'),(84,10,'Tarea 3','2022-05-28','2022-06-05'),(85,10,'Tarea 4','2022-06-15','2022-07-01'),(86,10,'Tarea 6','2022-07-02','2022-07-20'),(87,10,'Tarea 7','2022-07-22','2022-08-18'),(88,10,'Tarea 8','2022-08-26','2022-09-18'),(89,10,'Tarea 9','2022-10-01','2022-10-10'),(90,10,'Tarea 10','2022-10-15','2022-11-12'),(100,11,'Tarea 1','2022-03-15','2022-04-18'),(102,11,'Tarea 2','2022-04-19','2022-05-25'),(103,11,'Tarea 3','2022-05-28','2022-06-05'),(104,11,'Tarea 4','2022-06-15','2022-07-01'),(105,11,'Tarea 6','2022-07-02','2022-07-20'),(106,11,'Tarea 7','2022-07-22','2022-08-18'),(107,11,'Tarea 8','2022-08-26','2022-09-18'),(108,11,'Tarea 9','2022-10-01','2022-10-10'),(111,11,'Tarea 10','2022-10-15','2022-11-12'),(112,12,'Tarea 1','2022-03-15','2022-04-18'),(113,12,'Tarea 2','2022-04-19','2022-05-25'),(114,12,'Tarea 3','2022-05-28','2022-06-05'),(115,12,'Tarea 4','2022-06-15','2022-07-01'),(116,12,'Tarea 6','2022-07-02','2022-07-20'),(117,12,'Tarea 7','2022-07-22','2022-08-18'),(118,12,'Tarea 8','2022-08-26','2022-09-18'),(119,12,'Tarea 9','2022-10-01','2022-10-10'),(120,12,'Tarea 10','2022-10-15','2022-11-12'),(121,13,'Tarea 1','2022-03-15','2022-04-18'),(122,13,'Tarea 2','2022-04-19','2022-05-25'),(123,13,'Tarea 3','2022-05-28','2022-06-05'),(124,13,'Tarea 4','2022-06-15','2022-07-01'),(125,13,'Tarea 6','2022-07-02','2022-07-20'),(126,13,'Tarea 7','2022-07-22','2022-08-18'),(127,13,'Tarea 8','2022-08-26','2022-09-18'),(128,13,'Tarea 9','2022-10-01','2022-10-10'),(129,13,'Tarea 10','2022-10-15','2022-11-12'),(130,14,'Tarea 1','2022-03-15','2022-04-18'),(131,14,'Tarea 2','2022-04-19','2022-05-25'),(132,14,'Tarea 3','2022-05-28','2022-06-05'),(133,14,'Tarea 4','2022-06-15','2022-07-01'),(134,14,'Tarea 6','2022-07-02','2022-07-20'),(135,14,'Tarea 7','2022-07-22','2022-08-18'),(136,14,'Tarea 8','2022-08-26','2022-09-18'),(137,14,'Tarea 9','2022-10-01','2022-10-10'),(138,14,'Tarea 10','2022-10-15','2022-11-12'),(139,15,'Tarea 1','2022-03-15','2022-04-18'),(140,15,'Tarea 2','2022-04-19','2022-05-25'),(141,15,'Tarea 3','2022-05-28','2022-06-05'),(142,15,'Tarea 4','2022-06-15','2022-07-01'),(143,15,'Tarea 6','2022-07-02','2022-07-20'),(144,15,'Tarea 7','2022-07-22','2022-08-18'),(145,15,'Tarea 8','2022-08-26','2022-09-18'),(146,15,'Tarea 9','2022-10-01','2022-10-10'),(147,15,'Tarea 10','2022-10-15','2022-11-12'),(148,16,'Tarea 1','2022-03-15','2022-04-18'),(149,16,'Tarea 2','2022-04-19','2022-05-25'),(150,16,'Tarea 3','2022-05-28','2022-06-05'),(151,16,'Tarea 4','2022-06-15','2022-07-01'),(152,16,'Tarea 6','2022-07-02','2022-07-20'),(153,16,'Tarea 7','2022-07-22','2022-08-18'),(154,16,'Tarea 8','2022-08-26','2022-09-18'),(155,16,'Tarea 9','2022-10-01','2022-10-10'),(156,16,'Tarea 10','2022-10-15','2022-11-12'),(157,17,'Tarea 1','2022-03-15','2022-04-18'),(158,17,'Tarea 2','2022-04-19','2022-05-25'),(159,17,'Tarea 3','2022-05-28','2022-06-05'),(160,17,'Tarea 4','2022-06-15','2022-07-01'),(161,17,'Tarea 6','2022-07-02','2022-07-20'),(170,17,'Tarea 7','2022-07-22','2022-08-18'),(171,17,'Tarea 8','2022-08-26','2022-09-18'),(172,17,'Tarea 9','2022-10-01','2022-10-10'),(173,17,'Tarea 10','2022-10-15','2022-11-12'),(174,18,'Tarea 1','2022-03-15','2022-04-18'),(175,18,'Tarea 2','2022-04-19','2022-05-25'),(176,18,'Tarea 3','2022-05-28','2022-06-05'),(177,18,'Tarea 4','2022-06-15','2022-07-01'),(178,18,'Tarea 6','2022-07-02','2022-07-20'),(179,18,'Tarea 7','2022-07-22','2022-08-18'),(180,18,'Tarea 8','2022-08-26','2022-09-18'),(181,18,'Tarea 9','2022-10-01','2022-10-10'),(182,18,'Tarea 10','2022-10-15','2022-11-12'),(183,19,'Tarea 1','2022-03-15','2022-04-18'),(184,19,'Tarea 2','2022-04-19','2022-05-25'),(185,19,'Tarea 3','2022-05-28','2022-06-05'),(186,19,'Tarea 4','2022-06-15','2022-07-01'),(187,19,'Tarea 6','2022-07-02','2022-07-20'),(188,19,'Tarea 7','2022-07-22','2022-08-18'),(189,19,'Tarea 8','2022-08-26','2022-09-18'),(190,19,'Tarea 9','2022-10-01','2022-10-10'),(191,19,'Tarea 10','2022-10-15','2022-11-12'),(192,20,'Tarea 1','2022-03-15','2022-04-18'),(193,20,'Tarea 2','2022-04-19','2022-05-25'),(194,20,'Tarea 3','2022-05-28','2022-06-05'),(195,20,'Tarea 4','2022-06-15','2022-07-01'),(196,20,'Tarea 6','2022-07-02','2022-07-20'),(197,20,'Tarea 7','2022-07-22','2022-08-18'),(198,20,'Tarea 8','2022-08-26','2022-09-18'),(199,20,'Tarea 9','2022-10-01','2022-10-10'),(200,20,'Tarea 10','2022-10-15','2022-11-12'),(201,21,'Tarea 1','2022-03-15','2022-04-18'),(202,21,'Tarea 2','2022-04-19','2022-05-25'),(203,21,'Tarea 3','2022-05-28','2022-06-05'),(204,21,'Tarea 4','2022-06-15','2022-07-01'),(205,21,'Tarea 6','2022-07-02','2022-07-20'),(206,21,'Tarea 7','2022-07-22','2022-08-18'),(207,21,'Tarea 8','2022-08-26','2022-09-18'),(208,21,'Tarea 9','2022-10-01','2022-10-10'),(209,21,'Tarea 10','2022-10-15','2022-11-12'),(210,22,'Tarea 1','2022-03-15','2022-04-18'),(211,22,'Tarea 2','2022-04-19','2022-05-25'),(212,22,'Tarea 3','2022-05-28','2022-06-05'),(213,22,'Tarea 4','2022-06-15','2022-07-01'),(214,22,'Tarea 6','2022-07-02','2022-07-20'),(215,22,'Tarea 7','2022-07-22','2022-08-18'),(216,22,'Tarea 8','2022-08-26','2022-09-18'),(217,22,'Tarea 9','2022-10-01','2022-10-10'),(218,22,'Tarea 10','2022-10-15','2022-11-12'),(219,23,'Tarea 1','2022-03-15','2022-04-18'),(220,23,'Tarea 2','2022-04-19','2022-05-25'),(221,23,'Tarea 3','2022-05-28','2022-06-05'),(222,23,'Tarea 4','2022-06-15','2022-07-01'),(223,23,'Tarea 6','2022-07-02','2022-07-20'),(224,23,'Tarea 7','2022-07-22','2022-08-18'),(225,23,'Tarea 8','2022-08-26','2022-09-18'),(226,23,'Tarea 9','2022-10-01','2022-10-10'),(227,23,'Tarea 10','2022-10-15','2022-11-12'),(228,24,'Tarea 1','2022-03-15','2022-04-18'),(229,24,'Tarea 2','2022-04-19','2022-05-25'),(230,24,'Tarea 3','2022-05-28','2022-06-05'),(231,24,'Tarea 4','2022-06-15','2022-07-01'),(232,24,'Tarea 6','2022-07-02','2022-07-20'),(233,24,'Tarea 7','2022-07-22','2022-08-18'),(234,24,'Tarea 8','2022-08-26','2022-09-18'),(235,24,'Tarea 9','2022-10-01','2022-10-10'),(236,24,'Tarea 10','2022-10-15','2022-11-12'),(237,25,'Tarea 1','2022-03-15','2022-04-18'),(238,25,'Tarea 2','2022-04-19','2022-05-25'),(239,25,'Tarea 3','2022-05-28','2022-06-05'),(240,25,'Tarea 4','2022-06-15','2022-07-01'),(241,25,'Tarea 6','2022-07-02','2022-07-20'),(242,25,'Tarea 7','2022-07-22','2022-08-18'),(243,25,'Tarea 8','2022-08-26','2022-09-18'),(244,25,'Tarea 9','2022-10-01','2022-10-10'),(245,25,'Tarea 10','2022-10-15','2022-11-12'),(246,26,'Tarea 1','2022-03-15','2022-04-18'),(247,26,'Tarea 2','2022-04-19','2022-05-25'),(248,26,'Tarea 3','2022-05-28','2022-06-05'),(249,26,'Tarea 4','2022-06-15','2022-07-01'),(250,26,'Tarea 6','2022-07-02','2022-07-20'),(251,26,'Tarea 7','2022-07-22','2022-08-18'),(252,26,'Tarea 8','2022-08-26','2022-09-18'),(253,26,'Tarea 9','2022-10-01','2022-10-10'),(254,26,'Tarea 10','2022-10-15','2022-11-12'),(255,27,'Tarea 1','2022-03-15','2022-04-18'),(256,27,'Tarea 2','2022-04-19','2022-05-25'),(257,27,'Tarea 3','2022-05-28','2022-06-05'),(258,27,'Tarea 4','2022-06-15','2022-07-01'),(259,27,'Tarea 6','2022-07-02','2022-07-20'),(260,27,'Tarea 7','2022-07-22','2022-08-18'),(261,27,'Tarea 8','2022-08-26','2022-09-18'),(262,27,'Tarea 9','2022-10-01','2022-10-10'),(263,27,'Tarea 10','2022-10-15','2022-11-12');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments_log`
--

DROP TABLE IF EXISTS `assignments_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `time` datetime NOT NULL,
  `assignment_id` int NOT NULL,
  `professor_id` int NOT NULL,
  `action` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments_log`
--

LOCK TABLES `assignments_log` WRITE;
/*!40000 ALTER TABLE `assignments_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `avg_grade_per_class`
--

DROP TABLE IF EXISTS `avg_grade_per_class`;
/*!50001 DROP VIEW IF EXISTS `avg_grade_per_class`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_grade_per_class` AS SELECT 
 1 AS `classname`,
 1 AS `avg_grade`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_name` varchar(25) NOT NULL,
  `class_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `professor_id` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `FK_CLASS_GROUP` (`group_id`),
  KEY `FK_CLASS_PROFESSOR` (`professor_id`),
  KEY `FK_CLASS_SUBJECT` (`subject_id`),
  CONSTRAINT `FK_CLASS_GROUP` FOREIGN KEY (`group_id`) REFERENCES `class_group` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CLASS_PROFESSOR` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  CONSTRAINT `FK_CLASS_SUBJECT` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('Español 1',1,1,1,1),('Matematica 1',2,1,2,2),('Ingles 1',3,1,4,4),('Historia 1',4,1,5,5),('Geografia 1',5,1,6,6),('Biologia 1',6,1,7,7),('Dibujo 1',7,1,10,10),('Literatura 1',8,2,3,3),('Matematica 2',9,2,2,2),('Ingles 2',10,2,14,4),('Matematica 2',11,2,2,2),('Historia 2',12,2,5,5),('Geografia 2',13,2,6,6),('Biologia 2',14,2,7,7),('Dibujo 2',15,2,10,10),('Quimica 1',16,2,9,9),('Fisica 1',17,2,8,8),('Literatura 2',18,3,3,3),('Matematica 3',19,3,2,2),('Ingles 3',20,3,14,4),('Matematica 3',21,3,2,2),('Historia 3',22,3,5,5),('Geografia 3',23,3,6,6),('Biologia 3',24,3,7,7),('Dibujo 3',25,3,10,10),('Quimica 2',26,3,9,9),('Fisica 2',27,3,8,8);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_group`
--

DROP TABLE IF EXISTS `class_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_group` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(25) NOT NULL,
  `period_id` int NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `FK_GROUPS_PERIOD` (`period_id`),
  CONSTRAINT `FK_GROUPS_PERIOD` FOREIGN KEY (`period_id`) REFERENCES `period` (`period_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_group`
--

LOCK TABLES `class_group` WRITE;
/*!40000 ALTER TABLE `class_group` DISABLE KEYS */;
INSERT INTO `class_group` VALUES (1,'Primero 1',1),(2,'Segundo 1',1),(3,'Tercero 1',1);
/*!40000 ALTER TABLE `class_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `student_id` int NOT NULL,
  `assignment_id` int NOT NULL,
  `grade` int NOT NULL,
  KEY `FK_GRADE_STUDENT` (`student_id`),
  KEY `FK_GRADE_ASSIGNMENT` (`assignment_id`),
  CONSTRAINT `FK_GRADE_ASSIGNMENT` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`assignment_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_GRADE_STUDENT` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,1,12),(1,2,8),(1,3,4),(1,4,6),(1,5,7),(1,6,8),(1,7,2),(1,8,6),(1,9,2),(1,10,3),(1,11,10),(1,12,9),(1,13,6),(1,14,7),(1,15,7),(1,16,7),(1,17,7),(1,18,8),(1,19,10),(1,20,12),(1,21,11),(1,22,12),(1,23,9),(1,24,5),(1,25,2),(1,26,1),(1,27,8),(1,28,10),(1,29,6),(1,30,4),(1,31,6),(1,32,6),(1,33,4),(1,34,6),(1,35,4),(1,36,5),(1,37,10),(1,38,9),(1,39,2),(1,40,7),(1,41,8),(1,42,10),(1,43,11),(1,44,11),(1,45,6),(1,46,4),(1,47,6),(1,48,6),(1,49,9),(1,50,9),(1,51,9),(1,52,9),(1,53,9),(1,54,6),(1,55,9),(1,56,9),(1,57,9),(1,58,4),(1,59,10),(1,60,12),(1,61,12),(1,62,12),(1,63,12),(2,1,12),(2,2,8),(2,3,4),(2,4,6),(2,5,7),(2,6,8),(2,7,2),(2,8,6),(2,9,2),(2,10,3),(2,11,10),(2,12,9),(2,13,6),(2,14,7),(2,15,7),(2,16,7),(2,17,7),(2,18,8),(2,19,10),(2,20,12),(2,21,11),(2,22,12),(2,23,9),(2,24,5),(2,25,2),(2,26,1),(2,27,8),(2,28,10),(2,29,6),(2,30,4),(2,31,6),(2,32,6),(2,33,4),(2,34,6),(2,35,4),(2,36,5),(2,37,10),(2,38,9),(2,39,2),(2,40,7),(2,41,8),(2,42,10),(2,43,11),(2,44,11),(2,45,6),(2,46,4),(2,47,6),(2,48,6),(2,49,9),(2,50,9),(2,51,9),(2,52,9),(2,53,9),(2,54,6),(2,55,9),(2,56,9),(2,57,9),(2,58,4),(2,59,10),(2,60,12),(2,61,12),(2,62,12),(2,63,12),(3,1,12),(3,2,8),(3,3,4),(3,4,6),(3,5,7),(3,6,8),(3,7,2),(3,8,6),(3,9,2),(3,10,3),(3,11,10),(3,12,9),(3,13,6),(3,14,7),(3,15,7),(3,16,7),(3,17,7),(3,18,8),(3,19,10),(3,20,12),(3,21,11),(3,22,12),(3,23,9),(3,24,5),(3,25,2),(3,26,1),(3,27,8),(3,28,10),(3,29,6),(3,30,4),(3,31,6),(3,32,6),(3,33,4),(3,34,6),(3,35,4),(3,36,5),(3,37,10),(3,38,9),(3,39,2),(3,40,7),(3,41,8),(3,42,10),(3,43,11),(3,44,11),(3,45,6),(3,46,4),(3,47,6),(3,48,6),(3,49,9),(3,50,9),(3,51,9),(3,52,9),(3,53,9),(3,54,6),(3,55,9),(3,56,9),(3,57,9),(3,58,4),(3,59,10),(3,60,12),(3,61,12),(3,62,12),(3,63,12),(4,1,12),(4,2,8),(4,3,4),(4,4,6),(4,5,7),(4,6,8),(4,7,2),(4,8,6),(4,9,2),(4,10,3),(4,11,10),(4,12,9),(4,13,6),(4,14,7),(4,15,7),(4,16,7),(4,17,7),(4,18,8),(4,19,10),(4,20,12),(4,21,11),(4,22,12),(4,23,9),(4,24,5),(4,25,2),(4,26,1),(4,27,8),(4,28,10),(4,29,6),(4,30,4),(4,31,6),(4,32,6),(4,33,4),(4,34,6),(4,35,4),(4,36,5),(4,37,10),(4,38,9),(4,39,2),(4,40,7),(4,41,8),(4,42,10),(4,43,11),(4,44,11),(4,45,6),(4,46,4),(4,47,6),(4,48,6),(4,49,9),(4,50,9),(4,51,9),(4,52,9),(4,53,9),(4,54,6),(4,55,9),(4,56,9),(4,57,9),(4,58,4),(4,59,10),(4,60,12),(4,61,12),(4,62,12),(4,63,12),(5,1,12),(5,2,8),(5,3,4),(5,4,6),(5,5,7),(5,6,8),(5,7,2),(5,8,6),(5,9,2),(5,10,3),(5,11,10),(5,12,9),(5,13,6),(5,14,7),(5,15,7),(5,16,7),(5,17,7),(5,18,8),(5,19,10),(5,20,12),(5,21,11),(5,22,12),(5,23,9),(5,24,5),(5,25,2),(5,26,1),(5,27,8),(5,28,10),(5,29,6),(5,30,4),(5,31,6),(5,32,6),(5,33,4),(5,34,6),(5,35,4),(5,36,5),(5,37,10),(5,38,9),(5,39,2),(5,40,7),(5,41,8),(5,42,10),(5,43,11),(5,44,11),(5,45,6),(5,46,4),(5,47,6),(5,48,6),(5,49,9),(5,50,9),(5,51,9),(5,52,9),(5,53,9),(5,54,6),(5,55,9),(5,56,9),(5,57,9),(5,58,4),(5,59,10),(5,60,12),(5,61,12),(5,62,12),(5,63,12),(6,1,12),(6,2,8),(6,3,4),(6,4,6),(6,5,7),(6,6,8),(6,7,2),(6,8,6),(6,9,2),(6,10,3),(6,11,10),(6,12,9),(6,13,6),(6,14,7),(6,15,7),(6,16,7),(6,17,7),(6,18,8),(6,19,10),(6,20,12),(6,21,11),(6,22,12),(6,23,9),(6,24,5),(6,25,2),(6,26,1),(6,27,8),(6,28,10),(6,29,6),(6,30,4),(6,31,6),(6,32,6),(6,33,4),(6,34,6),(6,35,4),(6,36,5),(6,37,10),(6,38,9),(6,39,2),(6,40,7),(6,41,8),(6,42,10),(6,43,11),(6,44,11),(6,45,6),(6,46,4),(6,47,6),(6,48,6),(6,49,9),(6,50,9),(6,51,9),(6,52,9),(6,53,9),(6,54,6),(6,55,9),(6,56,9),(6,57,9),(6,58,4),(6,59,10),(6,60,12),(6,61,12),(6,62,12),(6,63,12),(7,1,12),(7,2,8),(7,3,4),(7,4,6),(7,5,7),(7,6,8),(7,7,2),(7,8,6),(7,9,2),(7,10,3),(7,11,10),(7,12,9),(7,13,6),(7,14,7),(7,15,7),(7,16,7),(7,17,7),(7,18,8),(7,19,10),(7,20,12),(7,21,11),(7,22,12),(7,23,9),(7,24,5),(7,25,2),(7,26,1),(7,27,8),(7,28,10),(7,29,6),(7,30,4),(7,31,6),(7,32,6),(7,33,4),(7,34,6),(7,35,4),(7,36,5),(7,37,10),(7,38,9),(7,39,2),(7,40,7),(7,41,8),(7,42,10),(7,43,11),(7,44,11),(7,45,6),(7,46,4),(7,47,6),(7,48,6),(7,49,9),(7,50,9),(7,51,9),(7,52,9),(7,53,9),(7,54,6),(7,55,9),(7,56,9),(7,57,9),(7,58,4),(7,59,10),(7,60,12),(7,61,12),(7,62,12),(7,63,12),(8,1,12),(8,2,8),(8,3,4),(8,4,6),(8,5,7),(8,6,8),(8,7,2),(8,8,6),(8,9,2),(8,10,3),(8,11,10),(8,12,9),(8,13,6),(8,14,7),(8,15,7),(8,16,7),(8,17,7),(8,18,8),(8,19,10),(8,20,12),(8,21,11),(8,22,12),(8,23,9),(8,24,5),(8,25,2),(8,26,1),(8,27,8),(8,28,10),(8,29,6),(8,30,4),(8,31,6),(8,32,6),(8,33,4),(8,34,6),(8,35,4),(8,36,5),(8,37,10),(8,38,9),(8,39,2),(8,40,7),(8,41,8),(8,42,10),(8,43,11),(8,44,11),(8,45,6),(8,46,4),(8,47,6),(8,48,6),(8,49,9),(8,50,9),(8,51,9),(8,52,9),(8,53,9),(8,54,6),(8,55,9),(8,56,9),(8,57,9),(8,58,4),(8,59,10),(8,60,12),(8,61,12),(8,62,12),(8,63,12),(9,1,12),(9,2,8),(9,3,4),(9,4,6),(9,5,7),(9,6,8),(9,7,2),(9,8,6),(9,9,2),(9,10,3),(9,11,10),(9,12,9),(9,13,6),(9,14,7),(9,15,7),(9,16,7),(9,17,7),(9,18,8),(9,19,10),(9,20,12),(9,21,11),(9,22,12),(9,23,9),(9,24,5),(9,25,2),(9,26,1),(9,27,8),(9,28,10),(9,29,6),(9,30,4),(9,31,6),(9,32,6),(9,33,4),(9,34,6),(9,35,4),(9,36,5),(9,37,10),(9,38,9),(9,39,2),(9,40,7),(9,41,8),(9,42,10),(9,43,11),(9,44,11),(9,45,6),(9,46,4),(9,47,6),(9,48,6),(9,49,9),(9,50,9),(9,51,9),(9,52,9),(9,53,9),(9,54,6),(9,55,9),(9,56,9),(9,57,9),(9,58,4),(9,59,10),(9,60,12),(9,61,12),(9,62,12),(9,63,12),(10,1,12),(10,2,8),(10,3,4),(10,4,6),(10,5,7),(10,6,8),(10,7,2),(10,8,6),(10,9,2),(10,10,3),(10,11,10),(10,12,9),(10,13,6),(10,14,7),(10,15,7),(10,16,7),(10,17,7),(10,18,8),(10,19,10),(10,20,12),(10,21,11),(10,22,12),(10,23,9),(10,24,5),(10,25,2),(10,26,1),(10,27,8),(10,28,10),(10,29,6),(10,30,4),(10,31,6),(10,32,6),(10,33,4),(10,34,6),(10,35,4),(10,36,5),(10,37,10),(10,38,9),(10,39,2),(10,40,7),(10,41,8),(10,42,10),(10,43,11),(10,44,11),(10,45,6),(10,46,4),(10,47,6),(10,48,6),(10,49,9),(10,50,9),(10,51,9),(10,52,9),(10,53,9),(10,54,6),(10,55,9),(10,56,9),(10,57,9),(10,58,4),(10,59,10),(10,60,12),(10,61,12),(10,62,12),(10,63,12);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mutualist`
--

DROP TABLE IF EXISTS `mutualist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mutualist` (
  `mutualist_id` int NOT NULL AUTO_INCREMENT,
  `mutualist_name` varchar(32) NOT NULL,
  PRIMARY KEY (`mutualist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutualist`
--

LOCK TABLES `mutualist` WRITE;
/*!40000 ALTER TABLE `mutualist` DISABLE KEYS */;
INSERT INTO `mutualist` VALUES (1,'CRAME'),(2,'COSEM'),(3,'CASMU'),(4,'BLUE CROSS'),(5,'HOSPITAL BRITANICO');
/*!40000 ALTER TABLE `mutualist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `period` (
  `period_id` int NOT NULL AUTO_INCREMENT,
  `period_name` varchar(32) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`period_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
INSERT INTO `period` VALUES (1,'2022','2022-03-01','2022-11-15');
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `user_id` int NOT NULL,
  `professor_id` int NOT NULL AUTO_INCREMENT,
  `mutualist_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `phone_number` char(9) NOT NULL,
  PRIMARY KEY (`professor_id`),
  KEY `FK_PROFESSOR_USER` (`user_id`),
  KEY `FK_PROFESSOR_MUTUALIST` (`mutualist_id`),
  KEY `FK_PROFESSOR_SUBJECT` (`subject_id`),
  CONSTRAINT `FK_PROFESSOR_MUTUALIST` FOREIGN KEY (`mutualist_id`) REFERENCES `mutualist` (`mutualist_id`),
  CONSTRAINT `FK_PROFESSOR_SUBJECT` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_PROFESSOR_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (45,1,2,1,'096345824'),(46,2,3,2,'096342783'),(47,3,4,3,'098267348'),(48,4,2,4,'092862398'),(49,5,1,5,'091740265'),(50,6,2,6,'092837402'),(51,7,5,7,'094012649'),(52,8,3,8,'097263920'),(53,9,4,9,'091549323'),(54,10,2,10,'092375037'),(55,11,1,11,'096591434'),(56,12,5,12,'094915345'),(57,13,3,13,'091619363'),(45,14,2,4,'091630274'),(59,15,1,1,'099199182'),(61,16,1,1,'099191932'),(62,17,2,2,'092918495'),(63,18,3,3,'099193743'),(64,19,4,4,'091833424'),(65,20,5,5,'091334492');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `user_id` int NOT NULL,
  `student_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `mutualist_id` int NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `FK_STUDENT_USER` (`user_id`),
  KEY `FK_STUDENT_GROUP` (`group_id`),
  KEY `FK_STUDENT_TUTOR` (`tutor_id`),
  KEY `FK_STUDENT_MUTUALIST` (`mutualist_id`),
  CONSTRAINT `FK_STUDENT_GROUP` FOREIGN KEY (`group_id`) REFERENCES `class_group` (`group_id`),
  CONSTRAINT `FK_STUDENT_MUTUALIST` FOREIGN KEY (`mutualist_id`) REFERENCES `mutualist` (`mutualist_id`),
  CONSTRAINT `FK_STUDENT_TUTOR` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`),
  CONSTRAINT `FK_STUDENT_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,1,3,1,1),(2,2,3,2,2),(3,3,3,3,3),(4,4,3,4,4),(5,5,3,5,5),(6,6,3,6,1),(7,7,3,7,2),(8,8,3,8,3),(9,9,3,9,4),(10,10,3,10,5),(11,11,2,11,1),(12,12,2,12,2),(13,13,2,13,3),(14,14,2,14,4),(15,15,2,1,5),(16,16,2,2,1),(17,17,2,3,2),(18,18,2,4,3),(19,19,2,5,4),(20,20,2,6,5),(21,21,1,7,1),(22,22,1,8,2),(23,23,1,9,3),(24,24,1,10,4),(25,25,1,11,5),(26,26,1,12,1),(27,27,1,13,2),(28,28,1,15,3);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'idioma español'),(2,'matematica'),(3,'literatura'),(4,'ingles'),(5,'historia'),(6,'geografia'),(7,'biologia'),(8,'fisica'),(9,'quimica'),(10,'dibujo'),(11,'musica'),(12,'educacion fisica'),(13,'educacion social y civica');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor` (
  `user_id` int NOT NULL,
  `tutor_id` int NOT NULL AUTO_INCREMENT,
  `phone_number` char(9) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`tutor_id`),
  KEY `FK_TUTOR_USER` (`user_id`),
  CONSTRAINT `FK_TUTOR_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
INSERT INTO `tutor` VALUES (29,1,'099296437','calle abc 123'),(30,2,'094294437','calle abc 213'),(31,3,'099292562','calle acd 123'),(32,4,'099223873','calle aef 233'),(33,5,'092385763','calle jsg 998'),(34,6,'098353432','calle ccs 293'),(35,7,'096916458','calle dsf 138'),(36,8,'095103524','calle dkl 439'),(37,9,'095953286','calle sad 123'),(38,10,'096438062','calle ubd 876'),(39,11,'098654134','calle shv 837'),(40,12,'096925425','calle gjd 394'),(42,13,'096519562','calle sak 928'),(43,14,'096091530','calle pad 158'),(44,15,'091846404','calle asd 872');
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `user_type_id` int NOT NULL AUTO_INCREMENT,
  `user_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'student'),(2,'tutor'),(3,'professor');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `cedula` varchar(8) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `birthdate` date NOT NULL,
  `user_type_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_USER_USERTYPE` (`user_type_id`),
  CONSTRAINT `FK_USER_USERTYPE` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Emilia','Rodriguez','56464412','emi.rodriguez1@gmail.com','emirodri123','2007-01-01',1),(2,'Florencia','Gonzalez','54644413','flor.gonzalez2@gmail.com','florgonz123','2007-01-02',1),(3,'Augusto','Rodriguez','56400412','aug.rodriguez7@gmail.com','augrodri123','2007-01-03',1),(4,'Franco','Martinez','56825012','fran.martinez98@gmail.com','franmart123','2007-01-04',1),(5,'Vicente','Diaz','52804412','vi.diaz34@gmail.com','vicentediaz123','2007-01-05',1),(6,'Cristian','Fernandez','66455412','cris.fernandez88@gmail.com','crisfer123','2007-01-01',1),(7,'Ambar','Olivera','56465677','ambar.oli56@gmail.com','ambaroli123','2007-03-25',1),(8,'Sofia','Sosa','56984428','sofi.sosa34@gmail.com','sofisosa123','2007-02-15',1),(9,'Riquelme','Alvarez','57334900','riq.alvarez90@gmail.com','ralvarez123','2007-04-09',1),(10,'Franco','Fernandez','52845735','franfer8889@gmail.com','ffernan123','2007-02-02',1),(11,'Adrian','Gomez','65446421','adrian.g345t@gmail.com','adrigomez123','2008-02-01',1),(12,'Joaquin','Suarez','55661224','jsuarrr863@gmail.com','suarezjoak123','2007-12-03',1),(13,'Emiliano','Rodriguez','63422112','emicapo77@gmail.com','emirodri123','2007-11-10',1),(14,'Gerardo','Garcia','57771412','ger.garcia22@gmail.com','gergarcia123','2008-02-14',1),(15,'Ana','Perez','56991572','ana11perez@gmail.com','anaperez123','2007-12-17',1),(16,'Abigail','Vera','58896145','vera00abigail@gmail.com','abivera123','2008-01-19',1),(17,'Maite','Fernandez','53065813','maiifeerrr234@gmail.com','maiifer433','2007-03-04',1),(18,'Benjamin','Sosa','51047523','benjadelcap444@gmail.com','benjasosa656','2008-03-07',1),(19,'Mateo','Cabrera','62065781','bolsoreydecopas1899@gmail.com','matcabrera999','2008-04-01',1),(20,'Pedro','Martinez','59274771','pedritogamer2@gmail.com','pedromart12321','2008-02-01',1),(21,'Victor','Acuña','72345562','victorelcrack@gmail.com','vicacuña22','2009-12-03',1),(22,'Isidora','Bonino','78858143','isidora.bonino331948@gmail.com','isiibonino346','2009-10-21',1),(23,'Sofia','Hernandez','71045961','sofihernand3z@gmail.com','sofihernan124r','2010-02-22',1),(24,'Florencia','Cabrera','72647302','cabrerafl0r@gmail.com','florcabrr22','2010-01-24',1),(25,'Ambar','Silva','70988615','silvambar@gmail.com','ambarsilva67878','2009-09-22',1),(26,'Jose','Ferreira','78278631','ferreirajoselit0@gmail.com','joseito223','2010-04-16',1),(27,'Jose','Martinez','79143895','martinezj0s3@gmail.com','martjose753','2010-01-11',1),(28,'Joaquin','Lopez','71123186','kapodelcap33@gmail.com','juakokapo45','2009-08-04',1),(29,'Emilia','Rodriguez','39067871','e.rodriguez@gmail.com','emiliar998','1980-01-01',2),(30,'Jose Luis','Garcia','41043241','dr.joseluisgarcia@gmail.com','joseluis23','1985-10-10',2),(31,'Pedro','Gimenez','47816232','pepedrogimenez@gmail.com','pepedrito998','1989-05-02',2),(32,'Mariana','Santos','49971034','santosmariana@gmail.com','marianasantos22','1990-07-01',2),(33,'Alfonso','Romano','40001348','romano.a@gmail.com','alfonsoromano222','1982-05-08',2),(34,'Eliza','Imperial','39991764','elizaimperial@gmail.com','impeliza43','1981-12-12',2),(35,'Alfredo','Kelmann','40921424','alfredokelmann@gmail.com','kelmann23454','1987-01-01',2),(36,'Daniel','Alvarez','49912482','danielalvarez11@gmail.com','danialva767','1995-08-12',2),(37,'Hernan','Justo','39399713','j.hernan@gmail.com','hernanjusto123','1986-05-13',2),(38,'Sofia','Baz','39278410','sofi.baz@gmail.com','sofiabaz23','1980-06-23',2),(39,'Maria','Fernandez','38786431','marifer45@gmail.com','marifer44','1983-06-06',2),(40,'German','Cabrera','38614492','cabrera.german@gmail.com','germancabr3r4','1981-03-05',2),(41,'Jairo','Martinez','37891632','jaimartinez@gmail.com','jairomartine','1980-03-07',2),(42,'Pedro','Pastilla','39187732','pepe.pastilla@gmail.com','pepepastilla','1980-06-01',2),(43,'Manuel','Olivo','40018635','olivomanu84@gmail.com','manuelolivo22','1984-03-03',2),(44,'Josefina','Moncler','39178346','m.josefina@gmail.com','josefinam45','1980-10-01',2),(45,'Felicia','Juarez','42349872','feli.juarez@gmail.com','fjuarez1992','1992-01-01',3),(46,'Humberto','Garcia','43871034','prof.hgarcia@gmail.com','humbertogarcia888','1993-02-04',3),(47,'William','Bert','40183645','w.bert87@gmail.com','williambert982','1991-04-03',3),(48,'Marta','Hernandez','40001839','hernandezmar@gmail.com','martah19293','1989-10-02',3),(49,'Mirta','Fernandez','29783672','mirtafernan67@gmail.com','mirtaf234','1967-02-10',3),(50,'Alfredo','Camacho','39990147','alfredocamachoprof@gmail.com','alfredoc134','1978-03-11',3),(51,'Carmen','De los Santos','34992883','carmendlossantos@gmail.com','carmen76781','1976-11-05',3),(52,'Beto','Girasoles','41797532','girasoles.beto@gmail.com','betogirasoles98673','1989-09-09',3),(53,'Belen','Cruz','30001176','prof.belencruz@gmail.com','bcruz1293','1969-04-10',3),(54,'Javier','Gomez','39998163','javiergomezprofesor@gmail.com','gomezjavi9192','1977-07-02',3),(55,'Javier','Perez','45615231','javiperezp@gmail.com','javierperez1132','1991-11-04',3),(56,'Jose','Montiel','47012745','montieljose@gmail.com','josemontiel293','1988-01-01',3),(57,'Joaquin','Garcia','43422978','profjgarcia@gmail.com','joaquingarcia24421','1992-11-10',3),(58,'Vincent','Vango','47194623','vangovincent@gmail.com','vincentvg990','1990-12-12',3),(59,'Jose','Giménez','39176482','prof.g.jose@gmail.com','joselitoprofe','1979-05-04',3),(60,'Jose','Giménez','39176482','prof.g.jose@gmail.com','joselitoprofe','1979-05-04',3),(61,'Pedro','Giménez','39116482','prof.g.pedro@gmail.com','pedritoprofe','1979-05-04',3),(62,'Juan','Sosa','37916841','prof.s.juan@gmail.com','juansosa111','1979-04-05',3),(63,'Juan Pablo','Romero','41176482','jp.romerop@gmail.com','juanparomero','1989-03-03',3),(64,'Roman','Chelsea','38116412','romanchelsea@gmail.com','romanchelsea','1978-10-08',3),(65,'Josefina','Giménez','40019234','josefinagimenezp@gmail.com','josefagprofe','1985-01-20',3),(66,'Jose','Cabrera','38173092','prof.cabreraj@gmail.com','cabrerajose9183','1975-12-02',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_assignments_per_class`
--

DROP TABLE IF EXISTS `vw_assignments_per_class`;
/*!50001 DROP VIEW IF EXISTS `vw_assignments_per_class`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_assignments_per_class` AS SELECT 
 1 AS `class`,
 1 AS `assignments`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_avg_grade_per_student`
--

DROP TABLE IF EXISTS `vw_avg_grade_per_student`;
/*!50001 DROP VIEW IF EXISTS `vw_avg_grade_per_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_avg_grade_per_student` AS SELECT 
 1 AS `student`,
 1 AS `average`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_students_per_group`
--

DROP TABLE IF EXISTS `vw_students_per_group`;
/*!50001 DROP VIEW IF EXISTS `vw_students_per_group`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_students_per_group` AS SELECT 
 1 AS `group_name`,
 1 AS `student_qty`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_students_per_mutualist`
--

DROP TABLE IF EXISTS `vw_students_per_mutualist`;
/*!50001 DROP VIEW IF EXISTS `vw_students_per_mutualist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_students_per_mutualist` AS SELECT 
 1 AS `mutualist`,
 1 AS `students`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'coderhouse_project'
--

--
-- Dumping routines for database 'coderhouse_project'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calculate_student_final_grade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `fn_calculate_student_final_grade`(_student_id INT) RETURNS int
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_user_qty_by_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `fn_get_user_qty_by_type`(_user_type_id INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE user_count INT;
    SELECT COUNT(users.user_type_id) INTO user_count FROM users WHERE user_type_id = _user_type_id;
    RETURN user_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_professor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_create_professor`(
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
	CALL sp_create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 3, @_user_id);

	INSERT INTO professor(user_id, mutualist_id, subject_id, phone_number) 
    VALUES (@_user_id, _mutualist_id, _subject_id, _phone_number);
    
    SELECT * FROM professor, users WHERE users.user_id = @_user_id AND professor.user_id = @_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_create_student`(
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
	CALL sp_create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 1, @_user_id);

	INSERT INTO student(user_id, group_id, tutor_id, mutualist_id) 
    VALUES (@_user_id, _group_id, _tutor_id, _mutualist_id);
    
    SELECT * FROM users WHERE user_id = @_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_tutor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_create_tutor`(
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
	CALL sp_create_user(_f_name, _l_name, _cedula, _email, _password, _birthdate, 2, @_user_id);

	INSERT INTO tutor(user_id, phone_number, address) 
    VALUES (@_user_id, _phone_number, _address);
    
    SELECT * FROM users WHERE user_id = @_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_create_user`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_get_users`(IN _order_field VARCHAR(50), IN _order_by VARCHAR(4))
BEGIN

	DECLARE myQuery VARCHAR(150) DEFAULT '';
    
	SET @myQuery = CONCAT('SELECT * FROM users ORDER BY ', _order_field, ' ', _order_by);
    
    PREPARE runQuery FROM @myQuery;
    EXECUTE runQuery;
	DEALLOCATE PREPARE runQuery;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_users_by_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_get_users_by_type`(
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

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `avg_grade_per_class`
--

/*!50001 DROP VIEW IF EXISTS `avg_grade_per_class`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_grade_per_class` AS select `c`.`class_name` AS `classname`,round(avg(`g`.`grade`),0) AS `avg_grade` from ((`class` `c` join `assignment` `a` on((`a`.`class_id` = `c`.`class_id`))) join `grade` `g` on((`a`.`assignment_id` = `g`.`assignment_id`))) group by `c`.`class_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_assignments_per_class`
--

/*!50001 DROP VIEW IF EXISTS `vw_assignments_per_class`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_assignments_per_class` AS select `c`.`class_name` AS `class`,count(`a`.`class_id`) AS `assignments` from (`class` `c` join `assignment` `a` on((`a`.`class_id` = `c`.`class_id`))) group by `c`.`class_id` order by `c`.`class_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_avg_grade_per_student`
--

/*!50001 DROP VIEW IF EXISTS `vw_avg_grade_per_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_avg_grade_per_student` AS select `s`.`student_id` AS `student`,round(avg(`g`.`grade`),0) AS `average` from (`grade` `g` left join `student` `s` on((`s`.`student_id` = `g`.`student_id`))) group by `s`.`student_id` order by `s`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_students_per_group`
--

/*!50001 DROP VIEW IF EXISTS `vw_students_per_group`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_students_per_group` AS select `g`.`group_name` AS `group_name`,count(`s`.`student_id`) AS `student_qty` from (`student` `s` left join `class_group` `g` on((`g`.`group_id` = `s`.`group_id`))) group by `g`.`group_id` order by `g`.`group_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_students_per_mutualist`
--

/*!50001 DROP VIEW IF EXISTS `vw_students_per_mutualist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_students_per_mutualist` AS select `m`.`mutualist_name` AS `mutualist`,count(`s`.`mutualist_id`) AS `students` from (`mutualist` `m` join `student` `s` on((`s`.`mutualist_id` = `m`.`mutualist_id`))) group by `m`.`mutualist_id` order by `m`.`mutualist_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 19:25:51
