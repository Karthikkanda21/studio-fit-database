CREATE DATABASE  IF NOT EXISTS `studio_fit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studio_fit`;
-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: localhost    Database: studio_fit
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int NOT NULL,
  `member_id` int NOT NULL,
  `booking_date` datetime NOT NULL,
  `booking_status` enum('Confirmed','Cancelled','Attended','No-Show') NOT NULL,
  `payment_status` enum('Paid','Pending','Refunded') NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `idx_bookings_date` (`booking_date`),
  KEY `idx_schedule_id` (`schedule_id`),
  KEY `idx_member_id` (`member_id`),
  KEY `idx_booking_date` (`booking_date`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `class_schedule` (`schedule_id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,1,'2025-11-25 10:00:00','Attended','Paid'),(2,2,2,'2025-11-25 11:00:00','Attended','Paid'),(3,3,3,'2025-11-25 12:00:00','Attended','Paid'),(4,4,4,'2025-11-25 13:00:00','Attended','Paid'),(5,5,5,'2025-11-25 14:00:00','Cancelled','Refunded'),(6,6,6,'2025-11-25 15:00:00','Attended','Paid'),(7,7,7,'2025-11-25 16:00:00','Attended','Paid'),(8,8,8,'2025-11-25 17:00:00','Attended','Paid'),(9,9,9,'2025-11-25 18:00:00','Attended','Paid'),(10,10,10,'2025-11-25 19:00:00','Cancelled','Refunded'),(11,11,11,'2025-11-25 20:00:00','Attended','Paid'),(12,12,12,'2025-11-25 21:00:00','Attended','Paid'),(13,13,13,'2025-11-25 22:00:00','Attended','Paid'),(14,14,14,'2025-11-25 23:00:00','Attended','Paid'),(15,15,15,'2025-11-26 00:00:00','Cancelled','Refunded'),(16,16,16,'2025-11-26 01:00:00','Attended','Paid'),(17,17,17,'2025-11-26 02:00:00','Attended','Paid'),(18,18,18,'2025-11-26 03:00:00','Attended','Paid'),(19,19,19,'2025-11-26 04:00:00','Attended','Paid'),(20,20,20,'2025-11-26 05:00:00','Cancelled','Refunded'),(21,21,21,'2025-11-26 06:00:00','Attended','Paid'),(22,22,22,'2025-11-26 07:00:00','Attended','Paid'),(23,23,23,'2025-11-26 08:00:00','Attended','Paid'),(24,24,24,'2025-11-26 09:00:00','Attended','Paid'),(25,25,25,'2025-11-26 10:00:00','Cancelled','Refunded'),(26,26,26,'2025-11-26 11:00:00','Attended','Paid'),(27,27,27,'2025-11-26 12:00:00','Attended','Paid'),(28,28,28,'2025-11-26 13:00:00','Attended','Paid'),(29,29,29,'2025-11-26 14:00:00','Attended','Paid'),(30,30,30,'2025-11-26 15:00:00','Cancelled','Refunded'),(31,31,31,'2025-11-26 16:00:00','Attended','Paid'),(32,32,32,'2025-11-26 17:00:00','Attended','Paid'),(33,33,33,'2025-11-26 18:00:00','Attended','Paid'),(34,34,34,'2025-11-26 19:00:00','Attended','Paid'),(35,35,35,'2025-11-26 20:00:00','Cancelled','Refunded'),(36,36,36,'2025-11-26 21:00:00','Attended','Paid'),(37,37,37,'2025-11-26 22:00:00','Attended','Paid'),(38,38,38,'2025-11-26 23:00:00','Attended','Paid'),(39,39,39,'2025-11-27 00:00:00','Attended','Paid'),(40,40,40,'2025-11-27 01:00:00','Cancelled','Refunded'),(41,41,41,'2025-11-27 02:00:00','Attended','Paid'),(42,42,42,'2025-11-27 03:00:00','Attended','Paid'),(43,43,43,'2025-11-27 04:00:00','Attended','Paid'),(44,44,44,'2025-11-27 05:00:00','Attended','Paid'),(45,45,45,'2025-11-27 06:00:00','Cancelled','Refunded'),(46,46,46,'2025-11-27 07:00:00','Attended','Paid'),(47,47,47,'2025-11-27 08:00:00','Attended','Paid'),(48,48,48,'2025-11-27 09:00:00','Attended','Paid'),(49,49,49,'2025-11-27 10:00:00','Attended','Paid'),(50,50,50,'2025-11-27 11:00:00','Cancelled','Refunded'),(51,1,51,'2025-11-27 12:00:00','Attended','Paid'),(52,2,52,'2025-11-27 13:00:00','Attended','Paid'),(53,3,53,'2025-11-27 14:00:00','Attended','Paid'),(54,4,54,'2025-11-27 15:00:00','Attended','Paid'),(55,5,55,'2025-11-27 16:00:00','Cancelled','Refunded'),(56,6,56,'2025-11-27 17:00:00','Attended','Paid'),(57,7,57,'2025-11-27 18:00:00','Attended','Paid'),(58,8,58,'2025-11-27 19:00:00','Attended','Paid'),(59,9,59,'2025-11-27 20:00:00','Attended','Paid'),(60,10,60,'2025-11-27 21:00:00','Cancelled','Refunded'),(61,11,61,'2025-11-27 22:00:00','Attended','Paid'),(62,12,62,'2025-11-27 23:00:00','Attended','Paid'),(63,13,63,'2025-11-28 00:00:00','Attended','Paid'),(64,14,64,'2025-11-28 01:00:00','Attended','Paid'),(65,15,65,'2025-11-28 02:00:00','Cancelled','Refunded'),(66,16,66,'2025-11-28 03:00:00','Attended','Paid'),(67,17,67,'2025-11-28 04:00:00','Attended','Paid'),(68,18,68,'2025-11-28 05:00:00','Attended','Paid'),(69,19,69,'2025-11-28 06:00:00','Attended','Paid'),(70,20,70,'2025-11-28 07:00:00','Cancelled','Refunded'),(71,21,71,'2025-11-28 08:00:00','Attended','Paid'),(72,22,72,'2025-11-28 09:00:00','Attended','Paid'),(73,23,73,'2025-11-28 10:00:00','Attended','Paid'),(74,24,74,'2025-11-28 11:00:00','Attended','Paid'),(75,25,75,'2025-11-28 12:00:00','Cancelled','Refunded'),(76,26,76,'2025-11-28 13:00:00','Attended','Paid'),(77,27,77,'2025-11-28 14:00:00','Attended','Paid'),(78,28,78,'2025-11-28 15:00:00','Attended','Paid'),(79,29,79,'2025-11-28 16:00:00','Attended','Paid'),(80,30,80,'2025-11-28 17:00:00','Cancelled','Refunded'),(81,31,81,'2025-11-28 18:00:00','Attended','Paid'),(82,32,82,'2025-11-28 19:00:00','Attended','Paid'),(83,33,83,'2025-11-28 20:00:00','Attended','Paid'),(84,34,84,'2025-11-28 21:00:00','Attended','Paid'),(85,35,85,'2025-11-28 22:00:00','Cancelled','Refunded'),(86,36,86,'2025-11-28 23:00:00','Attended','Paid'),(87,37,87,'2025-11-29 00:00:00','Attended','Paid'),(88,38,88,'2025-11-29 01:00:00','Attended','Paid'),(89,39,89,'2025-11-29 02:00:00','Attended','Paid'),(90,40,90,'2025-11-29 03:00:00','Cancelled','Refunded'),(91,41,91,'2025-11-29 04:00:00','Attended','Paid'),(92,42,92,'2025-11-29 05:00:00','Attended','Paid'),(93,43,93,'2025-11-29 06:00:00','Attended','Paid'),(94,44,94,'2025-11-29 07:00:00','Attended','Paid'),(95,45,95,'2025-11-29 08:00:00','Cancelled','Refunded'),(96,46,96,'2025-11-29 09:00:00','Attended','Paid'),(97,47,97,'2025-11-29 10:00:00','Attended','Paid'),(98,48,98,'2025-11-29 11:00:00','Attended','Paid'),(99,49,99,'2025-11-29 12:00:00','Attended','Paid'),(100,50,100,'2025-11-29 13:00:00','Cancelled','Refunded'),(101,1,101,'2025-11-29 14:00:00','Attended','Paid'),(102,2,102,'2025-11-29 15:00:00','Attended','Paid'),(103,3,103,'2025-11-29 16:00:00','Attended','Paid'),(104,4,104,'2025-11-29 17:00:00','Attended','Paid'),(105,5,105,'2025-11-29 18:00:00','Cancelled','Refunded'),(106,6,106,'2025-11-29 19:00:00','Attended','Paid'),(107,7,107,'2025-11-29 20:00:00','Attended','Paid'),(108,8,108,'2025-11-29 21:00:00','Attended','Paid'),(109,9,109,'2025-11-29 22:00:00','Attended','Paid'),(110,10,110,'2025-11-29 23:00:00','Cancelled','Refunded'),(111,11,1,'2025-11-30 00:00:00','Attended','Paid'),(112,12,2,'2025-11-30 01:00:00','Attended','Paid'),(113,13,3,'2025-11-30 02:00:00','Attended','Paid'),(114,14,4,'2025-11-30 03:00:00','Attended','Paid'),(115,15,5,'2025-11-30 04:00:00','Cancelled','Refunded'),(116,16,6,'2025-11-30 05:00:00','Attended','Paid'),(117,17,7,'2025-11-30 06:00:00','Attended','Paid'),(118,18,8,'2025-11-30 07:00:00','Attended','Paid'),(119,19,9,'2025-11-30 08:00:00','Attended','Paid'),(120,20,10,'2025-11-30 09:00:00','Cancelled','Refunded'),(121,21,11,'2025-11-30 10:00:00','Attended','Paid'),(122,22,12,'2025-11-30 11:00:00','Attended','Paid'),(123,23,13,'2025-11-30 12:00:00','Attended','Paid'),(124,24,14,'2025-11-30 13:00:00','Attended','Paid'),(125,25,15,'2025-11-30 14:00:00','Cancelled','Refunded'),(126,26,16,'2025-11-30 15:00:00','Attended','Paid'),(127,27,17,'2025-11-30 16:00:00','Attended','Paid'),(128,28,18,'2025-11-30 17:00:00','Attended','Paid'),(129,29,19,'2025-11-30 18:00:00','Attended','Paid'),(130,30,20,'2025-11-30 19:00:00','Cancelled','Refunded'),(131,31,21,'2025-11-30 20:00:00','Attended','Paid'),(132,32,22,'2025-11-30 21:00:00','Attended','Paid'),(133,33,23,'2025-11-30 22:00:00','Attended','Paid'),(134,34,24,'2025-11-30 23:00:00','Attended','Paid'),(135,35,25,'2025-12-01 00:00:00','Cancelled','Refunded'),(136,36,26,'2025-12-01 01:00:00','Attended','Paid'),(137,37,27,'2025-12-01 02:00:00','Attended','Paid'),(138,38,28,'2025-12-01 03:00:00','Attended','Paid'),(139,39,29,'2025-12-01 04:00:00','Attended','Paid'),(140,40,30,'2025-12-01 05:00:00','Cancelled','Refunded'),(141,41,31,'2025-12-01 06:00:00','Attended','Paid'),(142,42,32,'2025-12-01 07:00:00','Attended','Paid'),(143,43,33,'2025-12-01 08:00:00','Attended','Paid'),(144,44,34,'2025-12-01 09:00:00','Attended','Paid'),(145,45,35,'2025-12-01 10:00:00','Cancelled','Refunded'),(146,46,36,'2025-12-01 11:00:00','Attended','Paid'),(147,47,37,'2025-12-01 12:00:00','Attended','Paid'),(148,48,38,'2025-12-01 13:00:00','Attended','Paid'),(149,49,39,'2025-12-01 14:00:00','Attended','Paid'),(150,50,40,'2025-12-01 15:00:00','Cancelled','Refunded');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule`
--

DROP TABLE IF EXISTS `class_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `class_type_id` int NOT NULL,
  `trainer_id` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` enum('Scheduled','Cancelled') NOT NULL DEFAULT 'Scheduled',
  PRIMARY KEY (`schedule_id`),
  KEY `trainer_id` (`trainer_id`),
  KEY `idx_class_type_id` (`class_type_id`),
  CONSTRAINT `class_schedule_ibfk_1` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`class_type_id`),
  CONSTRAINT `class_schedule_ibfk_2` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`trainer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_schedule`
--

LOCK TABLES `class_schedule` WRITE;
/*!40000 ALTER TABLE `class_schedule` DISABLE KEYS */;
INSERT INTO `class_schedule` VALUES (1,1,2,'2025-12-01 10:00:00','2025-12-01 11:00:00','Scheduled'),(2,2,3,'2025-12-01 13:00:00','2025-12-01 14:00:00','Scheduled'),(3,3,4,'2025-12-01 16:00:00','2025-12-01 17:00:00','Scheduled'),(4,4,15,'2025-12-01 19:00:00','2025-12-01 20:00:00','Scheduled'),(5,5,16,'2025-12-02 07:00:00','2025-12-02 08:00:00','Scheduled'),(6,6,17,'2025-12-02 10:00:00','2025-12-02 11:00:00','Scheduled'),(7,7,28,'2025-12-02 13:00:00','2025-12-02 14:00:00','Scheduled'),(8,8,21,'2025-12-02 16:00:00','2025-12-02 17:00:00','Scheduled'),(9,9,22,'2025-12-02 19:00:00','2025-12-02 20:00:00','Scheduled'),(10,10,33,'2025-12-03 07:00:00','2025-12-03 08:00:00','Scheduled'),(11,11,34,'2025-12-03 10:00:00','2025-12-03 11:00:00','Scheduled'),(12,12,29,'2025-12-03 13:00:00','2025-12-03 14:00:00','Scheduled'),(13,13,36,'2025-12-03 16:00:00','2025-12-03 17:00:00','Scheduled'),(14,14,37,'2025-12-03 19:00:00','2025-12-03 20:00:00','Scheduled'),(15,15,38,'2025-12-04 07:00:00','2025-12-04 08:00:00','Cancelled'),(16,16,41,'2025-12-04 10:00:00','2025-12-04 11:00:00','Scheduled'),(17,17,42,'2025-12-04 13:00:00','2025-12-04 14:00:00','Scheduled'),(18,18,43,'2025-12-04 16:00:00','2025-12-04 17:00:00','Scheduled'),(19,19,48,'2025-12-04 19:00:00','2025-12-04 20:00:00','Scheduled'),(20,20,45,'2025-12-05 07:00:00','2025-12-05 08:00:00','Scheduled'),(21,21,46,'2025-12-05 10:00:00','2025-12-05 11:00:00','Scheduled'),(22,22,49,'2025-12-05 13:00:00','2025-12-05 14:00:00','Scheduled'),(23,23,50,'2025-12-05 16:00:00','2025-12-05 17:00:00','Scheduled'),(24,24,49,'2025-12-05 19:00:00','2025-12-05 20:00:00','Scheduled'),(25,25,6,'2025-12-06 07:00:00','2025-12-06 08:00:00','Scheduled'),(26,26,7,'2025-12-06 10:00:00','2025-12-06 11:00:00','Scheduled'),(27,27,8,'2025-12-06 13:00:00','2025-12-06 14:00:00','Scheduled'),(28,28,9,'2025-12-06 16:00:00','2025-12-06 17:00:00','Scheduled'),(29,29,20,'2025-12-06 19:00:00','2025-12-06 20:00:00','Scheduled'),(30,30,11,'2025-12-07 07:00:00','2025-12-07 08:00:00','Cancelled'),(31,31,12,'2025-12-07 10:00:00','2025-12-07 11:00:00','Scheduled'),(32,32,13,'2025-12-07 13:00:00','2025-12-07 14:00:00','Scheduled'),(33,33,22,'2025-12-07 16:00:00','2025-12-07 17:00:00','Scheduled'),(34,34,23,'2025-12-07 19:00:00','2025-12-07 20:00:00','Scheduled'),(35,35,24,'2025-12-08 07:00:00','2025-12-08 08:00:00','Scheduled'),(36,36,25,'2025-12-08 10:00:00','2025-12-08 11:00:00','Scheduled'),(37,37,30,'2025-12-08 13:00:00','2025-12-08 14:00:00','Scheduled'),(38,38,31,'2025-12-08 16:00:00','2025-12-08 17:00:00','Scheduled'),(39,39,32,'2025-12-08 19:00:00','2025-12-08 20:00:00','Scheduled'),(40,40,33,'2025-12-09 07:00:00','2025-12-09 08:00:00','Scheduled'),(41,41,40,'2025-12-09 10:00:00','2025-12-09 11:00:00','Scheduled'),(42,42,35,'2025-12-09 13:00:00','2025-12-09 14:00:00','Scheduled'),(43,43,36,'2025-12-09 16:00:00','2025-12-09 17:00:00','Scheduled'),(44,44,37,'2025-12-09 19:00:00','2025-12-09 20:00:00','Scheduled'),(45,45,42,'2025-12-10 07:00:00','2025-12-10 08:00:00','Cancelled'),(46,46,43,'2025-12-10 10:00:00','2025-12-10 11:00:00','Scheduled'),(47,47,44,'2025-12-10 13:00:00','2025-12-10 14:00:00','Scheduled'),(48,48,41,'2025-12-10 16:00:00','2025-12-10 17:00:00','Scheduled'),(49,49,46,'2025-12-10 19:00:00','2025-12-10 20:00:00','Scheduled'),(50,50,47,'2025-12-11 07:00:00','2025-12-11 08:00:00','Scheduled'),(51,51,48,'2025-12-11 10:00:00','2025-12-11 11:00:00','Scheduled'),(52,52,45,'2025-12-11 13:00:00','2025-12-11 14:00:00','Scheduled'),(53,53,50,'2025-12-11 16:00:00','2025-12-11 17:00:00','Scheduled'),(54,54,49,'2025-12-11 19:00:00','2025-12-11 20:00:00','Scheduled'),(55,55,50,'2025-12-12 07:00:00','2025-12-12 08:00:00','Scheduled'),(56,1,7,'2025-12-12 10:00:00','2025-12-12 11:00:00','Scheduled'),(57,2,8,'2025-12-12 13:00:00','2025-12-12 14:00:00','Scheduled'),(58,3,9,'2025-12-12 16:00:00','2025-12-12 17:00:00','Scheduled'),(59,4,20,'2025-12-12 19:00:00','2025-12-12 20:00:00','Scheduled'),(60,5,11,'2025-12-13 07:00:00','2025-12-13 08:00:00','Cancelled'),(61,6,12,'2025-12-13 10:00:00','2025-12-13 11:00:00','Scheduled'),(62,7,27,'2025-12-13 13:00:00','2025-12-13 14:00:00','Scheduled'),(63,8,28,'2025-12-13 16:00:00','2025-12-13 17:00:00','Scheduled'),(64,9,21,'2025-12-13 19:00:00','2025-12-13 20:00:00','Scheduled'),(65,10,34,'2025-12-14 07:00:00','2025-12-14 08:00:00','Scheduled'),(66,11,29,'2025-12-14 10:00:00','2025-12-14 11:00:00','Scheduled'),(67,12,30,'2025-12-14 13:00:00','2025-12-14 14:00:00','Scheduled'),(68,13,37,'2025-12-14 16:00:00','2025-12-14 17:00:00','Scheduled'),(69,14,38,'2025-12-14 19:00:00','2025-12-14 20:00:00','Scheduled'),(70,15,39,'2025-12-15 07:00:00','2025-12-15 08:00:00','Scheduled'),(71,16,44,'2025-12-15 10:00:00','2025-12-15 11:00:00','Scheduled'),(72,17,41,'2025-12-15 13:00:00','2025-12-15 14:00:00','Scheduled'),(73,18,42,'2025-12-15 16:00:00','2025-12-15 17:00:00','Scheduled'),(74,19,47,'2025-12-15 19:00:00','2025-12-15 20:00:00','Scheduled'),(75,20,48,'2025-12-16 07:00:00','2025-12-16 08:00:00','Cancelled');
/*!40000 ALTER TABLE `class_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_types`
--

DROP TABLE IF EXISTS `class_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_types` (
  `class_type_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `difficulty` varchar(20) NOT NULL,
  `required_specialty` varchar(50) NOT NULL,
  PRIMARY KEY (`class_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_types`
--

LOCK TABLES `class_types` WRITE;
/*!40000 ALTER TABLE `class_types` DISABLE KEYS */;
INSERT INTO `class_types` VALUES (1,'Morning Vinyasa','Yoga','Beginner','Yoga'),(2,'Power Vinyasa','Yoga','Advanced','Yoga'),(3,'Yin Yoga','Yoga','Beginner','Yoga'),(4,'Lunchtime HIIT','HIIT','Beginner','HIIT'),(5,'Evening HIIT Blast','HIIT','Advanced','HIIT'),(6,'Saturday Bootcamp HIIT','HIIT','Advanced','HIIT'),(7,'Core Pilates','Pilates','Beginner','Pilates'),(8,'Reformer Pilates','Pilates','Advanced','Pilates'),(9,'Mat Pilates','Pilates','Beginner','Pilates'),(10,'Spin Express','Cycling','Beginner','Cycling'),(11,'Endurance Spin','Cycling','Advanced','Cycling'),(12,'Power Cycling','Cycling','Advanced','Cycling'),(13,'Full-Body Strength','Strength','Beginner','Strength'),(14,'Barbell Basics','Strength','Beginner','Strength'),(15,'Kettlebell Strength','Strength','Advanced','Strength'),(16,'Zumba Fitness','Dance','Beginner','Dance'),(17,'Latin Dance Cardio','Dance','Advanced','Dance'),(18,'Hip-Hop Dance','Dance','Advanced','Dance'),(19,'Morning Mobility','Mobility','Beginner','Mobility'),(20,'Stretch and Release','Mobility','Beginner','Mobility'),(21,'Functional Mobility','Mobility','Advanced','Mobility'),(22,'Aerial Silks Beginner','Aerial','Beginner','Aerial'),(23,'Aerial Hoop','Aerial','Advanced','Aerial'),(24,'Aerial Conditioning','Aerial','Advanced','Aerial'),(25,'Sunrise Hatha Yoga','Yoga','Beginner','Yoga'),(26,'Gentle Evening Yoga','Yoga','Beginner','Yoga'),(27,'Hot Yoga Flow','Yoga','Advanced','Yoga'),(28,'Dynamic Yoga Sculpt','Yoga','Advanced','Yoga'),(29,'HIIT Circuit 30','HIIT','Beginner','HIIT'),(30,'HIIT Strength Mix','HIIT','Advanced','HIIT'),(31,'Cardio HIIT Burn','HIIT','Beginner','HIIT'),(32,'Tabata HIIT','HIIT','Advanced','HIIT'),(33,'Pilates Stretch','Pilates','Beginner','Pilates'),(34,'Pilates Power Core','Pilates','Advanced','Pilates'),(35,'Lunchtime Pilates','Pilates','Beginner','Pilates'),(36,'Pilates Sculpt','Pilates','Advanced','Pilates'),(37,'Spin and Climb','Cycling','Advanced','Cycling'),(38,'Low-Impact Cycling','Cycling','Beginner','Cycling'),(39,'Rhythm Ride','Cycling','Beginner','Cycling'),(40,'City Night Ride','Cycling','Advanced','Cycling'),(41,'Strength Fundamentals','Strength','Beginner','Strength'),(42,'Upper Body Strength','Strength','Advanced','Strength'),(43,'Lower Body Strength','Strength','Advanced','Strength'),(44,'Strength and Core','Strength','Advanced','Strength'),(45,'Dance Cardio Party','Dance','Beginner','Dance'),(46,'Bollywood Dance','Dance','Advanced','Dance'),(47,'Street Dance Basics','Dance','Beginner','Dance'),(48,'Contemporary Dance','Dance','Advanced','Dance'),(49,'Desk Detox Mobility','Mobility','Beginner','Mobility'),(50,'Evening Stretch','Mobility','Beginner','Mobility'),(51,'Athletic Mobility','Mobility','Advanced','Mobility'),(52,'Weekend Mobility Flow','Mobility','Advanced','Mobility'),(53,'Aerial Strength Flow','Aerial','Advanced','Aerial'),(54,'Aerial Skills Lab','Aerial','Advanced','Aerial'),(55,'Aerial Basics Workshop','Aerial','Beginner','Aerial');
/*!40000 ALTER TABLE `class_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `join_date` date NOT NULL,
  `membership_type` enum('Monthly','Annual') NOT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Amelia','Smith','amelia.smith@studiofit.co.uk','+44770090001','2025-01-01','Monthly'),(2,'George','Jones','george.jones@studiofit.co.uk','+44770090002','2025-01-02','Annual'),(3,'Isla','Taylor','isla.taylor@studiofit.co.uk','+44770090003','2025-01-03','Monthly'),(4,'Harry','Brown','harry.brown@studiofit.co.uk','+44770090004','2025-01-04','Monthly'),(5,'Emily','Wilson','emily.wilson@studiofit.co.uk','+44770090005','2025-01-05','Annual'),(6,'Jack','Davies','jack.davies@studiofit.co.uk','+44770090006','2025-01-06','Monthly'),(7,'Sophie','Evans','sophie.evans@studiofit.co.uk','+44770090007','2025-01-07','Monthly'),(8,'Jacob','Thomas','jacob.thomas@studiofit.co.uk','+44770090008','2025-01-08','Annual'),(9,'Chloe','Johnson','chloe.johnson@studiofit.co.uk','+44770090009','2025-01-09','Monthly'),(10,'Liam','Roberts','liam.roberts@studiofit.co.uk','+44770090010','2025-01-10','Annual'),(11,'Emma','Miller','emma.miller@studiofit.co.uk','+44770090011','2025-01-11','Monthly'),(12,'Noah','Anderson','noah.anderson@studiofit.co.uk','+44770090012','2025-01-12','Monthly'),(13,'Ava','Clark','ava.clark@studiofit.co.uk','+44770090013','2025-01-13','Annual'),(14,'William','Thompson','william.thompson@studiofit.co.uk','+44770090014','2025-01-14','Monthly'),(15,'Mia','Moore','mia.moore@studiofit.co.uk','+44770090015','2025-01-15','Monthly'),(16,'James','Martin','james.martin@studiofit.co.uk','+44770090016','2025-01-16','Annual'),(17,'Charlotte','Lee','charlotte.lee@studiofit.co.uk','+44770090017','2025-01-17','Monthly'),(18,'Benjamin','Perez','benjamin.perez@studiofit.co.uk','+44770090018','2025-01-18','Monthly'),(19,'Harper','White','harper.white@studiofit.co.uk','+44770090019','2025-01-19','Annual'),(20,'Lucas','Harris','lucas.harris@studiofit.co.uk','+44770090020','2025-01-20','Monthly'),(21,'Evelyn','Sanchez','evelyn.sanchez@studiofit.co.uk','+44770090021','2025-01-21','Monthly'),(22,'Henry','Hall','henry.hall@studiofit.co.uk','+44770090022','2025-01-22','Annual'),(23,'Abigail','Young','abigail.young@studiofit.co.uk','+44770090023','2025-01-23','Monthly'),(24,'Alexander','King','alexander.king@studiofit.co.uk','+44770090024','2025-01-24','Monthly'),(25,'Ella','Wright','ella.wright@studiofit.co.uk','+44770090025','2025-01-25','Annual'),(26,'Michael','Scott','michael.scott@studiofit.co.uk','+44770090026','2025-01-26','Monthly'),(27,'Elizabeth','Green','elizabeth.green@studiofit.co.uk','+44770090027','2025-01-27','Monthly'),(28,'Daniel','Baker','daniel.baker@studiofit.co.uk','+44770090028','2025-01-28','Annual'),(29,'Sofia','Hill','sofia.hill@studiofit.co.uk','+44770090029','2025-01-29','Monthly'),(30,'Matthew','Adams','matthew.adams@studiofit.co.uk','+44770090030','2025-01-30','Annual'),(31,'Madison','Ward','madison.ward@studiofit.co.uk','+44770090031','2025-01-31','Monthly'),(32,'Samuel','Cooper','samuel.cooper@studiofit.co.uk','+44770090032','2025-02-01','Monthly'),(33,'Scarlett','Morris','scarlett.morris@studiofit.co.uk','+44770090033','2025-02-02','Annual'),(34,'David','Reed','david.reed@studiofit.co.uk','+44770090034','2025-02-03','Monthly'),(35,'Victoria','Hughes','victoria.hughes@studiofit.co.uk','+44770090035','2025-02-04','Monthly'),(36,'Joseph','Foster','joseph.foster@studiofit.co.uk','+44770090036','2025-02-05','Annual'),(37,'Aria','Rogers','aria.rogers@studiofit.co.uk','+44770090037','2025-02-06','Monthly'),(38,'Carter','Simmons','carter.simmons@studiofit.co.uk','+44770090038','2025-02-07','Monthly'),(39,'Grace','Price','grace.price@studiofit.co.uk','+44770090039','2025-02-08','Annual'),(40,'Owen','Butler','owen.butler@studiofit.co.uk','+44770090040','2025-02-09','Monthly'),(41,'Leo','Gibson','leo.gibson@studiofit.co.uk','+44770090041','2025-02-10','Monthly'),(42,'Hannah','Matthews','hannah.matthews@studiofit.co.uk','+44770090042','2025-02-11','Annual'),(43,'Ryan','Webb','ryan.webb@studiofit.co.uk','+44770090043','2025-02-12','Monthly'),(44,'Zara','Harvey','zara.harvey@studiofit.co.uk','+44770090044','2025-02-13','Monthly'),(45,'Ellie','Fox','ellie.fox@studiofit.co.uk','+44770090045','2025-02-14','Annual'),(46,'Harvey','Murray','harvey.murray@studiofit.co.uk','+44770090046','2025-02-15','Monthly'),(47,'Poppy','Knight','poppy.knight@studiofit.co.uk','+44770090047','2025-02-16','Monthly'),(48,'Aaron','Graham','aaron.graham@studiofit.co.uk','+44770090048','2025-02-17','Annual'),(49,'Megan','Wallace','megan.wallace@studiofit.co.uk','+44770090049','2025-02-18','Monthly'),(50,'Jasmine','Cole','jasmine.cole@studiofit.co.uk','+44770090050','2025-02-19','Annual'),(51,'Theo','Carpenter','theo.carpenter@studiofit.co.uk','+44770090051','2025-02-20','Monthly'),(52,'Holly','George','holly.george@studiofit.co.uk','+44770090052','2025-02-21','Monthly'),(53,'Ethan','Jennings','ethan.jennings@studiofit.co.uk','+44770090053','2025-02-22','Annual'),(54,'Layla','Stephens','layla.stephens@studiofit.co.uk','+44770090054','2025-02-23','Monthly'),(55,'Tom','Barlow','tom.barlow@studiofit.co.uk','+44770090055','2025-02-24','Monthly'),(56,'Aisha','Fraser','aisha.fraser@studiofit.co.uk','+44770090056','2025-02-25','Annual'),(57,'Connor','Read','connor.read@studiofit.co.uk','+44770090057','2025-02-26','Monthly'),(58,'Sienna','Hayes','sienna.hayes@studiofit.co.uk','+44770090058','2025-02-27','Monthly'),(59,'Jamie','Carr','jamie.carr@studiofit.co.uk','+44770090059','2025-02-28','Annual'),(60,'Mollie','Carter','mollie.carter@studiofit.co.uk','+44770090060','2025-03-01','Monthly'),(61,'Oscar','Fletcher','oscar.fletcher@studiofit.co.uk','+44770090061','2025-03-02','Annual'),(62,'Nancy','Pearson','nancy.pearson@studiofit.co.uk','+44770090062','2025-03-03','Monthly'),(63,'Blake','Barnett','blake.barnett@studiofit.co.uk','+44770090063','2025-03-04','Monthly'),(64,'Eliza','Riley','eliza.riley@studiofit.co.uk','+44770090064','2025-03-05','Annual'),(65,'Harrison','Burns','harrison.burns@studiofit.co.uk','+44770090065','2025-03-06','Monthly'),(66,'Willow','Nichols','willow.nichols@studiofit.co.uk','+44770090066','2025-03-07','Monthly'),(67,'Reuben','Bates','reuben.bates@studiofit.co.uk','+44770090067','2025-03-08','Annual'),(68,'Georgia','Holmes','georgia.holmes@studiofit.co.uk','+44770090068','2025-03-09','Monthly'),(69,'Caleb','Atkins','caleb.atkins@studiofit.co.uk','+44770090069','2025-03-10','Monthly'),(70,'Summer','Holt','summer.holt@studiofit.co.uk','+44770090070','2025-03-11','Annual'),(71,'Elliot','Jarvis','elliot.jarvis@studiofit.co.uk','+44770090071','2025-03-12','Monthly'),(72,'Maya','Horton','maya.horton@studiofit.co.uk','+44770090072','2025-03-13','Annual'),(73,'Roman','Flynn','roman.flynn@studiofit.co.uk','+44770090073','2025-03-14','Monthly'),(74,'Imogen','Cooke','imogen.cooke@studiofit.co.uk','+44770090074','2025-03-15','Monthly'),(75,'Brody','Parr','brody.parr@studiofit.co.uk','+44770090075','2025-03-16','Annual'),(76,'Phoebe','Nicholson','phoebe.nicholson@studiofit.co.uk','+44770090076','2025-03-17','Monthly'),(77,'Archie','Benson','archie.benson@studiofit.co.uk','+44770090077','2025-03-18','Annual'),(78,'Tilly','Barker','tilly.barker@studiofit.co.uk','+44770090078','2025-03-19','Monthly'),(79,'Evan','Hammond','evan.hammond@studiofit.co.uk','+44770090079','2025-03-20','Monthly'),(80,'Lola','Dawson','lola.dawson@studiofit.co.uk','+44770090080','2025-03-21','Annual'),(81,'Harley','Rowe','harley.rowe@studiofit.co.uk','+44770090081','2025-03-22','Monthly'),(82,'Ariana','Kerr','ariana.kerr@studiofit.co.uk','+44770090082','2025-03-23','Monthly'),(83,'Joel','Norton','joel.norton@studiofit.co.uk','+44770090083','2025-03-24','Annual'),(84,'Faith','Bond','faith.bond@studiofit.co.uk','+44770090084','2025-03-25','Monthly'),(85,'Declan','Reeve','declan.reeve@studiofit.co.uk','+44770090085','2025-03-26','Annual'),(86,'Caitlin','Hope','caitlin.hope@studiofit.co.uk','+44770090086','2025-03-27','Monthly'),(87,'Spencer','Shaw','spencer.shaw@studiofit.co.uk','+44770090087','2025-03-28','Monthly'),(88,'Sasha','Briggs','sasha.briggs@studiofit.co.uk','+44770090088','2025-03-29','Annual'),(89,'Finley','Sanders','finley.sanders@studiofit.co.uk','+44770090089','2025-03-30','Monthly'),(90,'Nina','Goodwin','nina.goodwin@studiofit.co.uk','+44770090090','2025-03-31','Annual'),(91,'Alfie','Dixon','alfie.dixon@studiofit.co.uk','+44770090091','2025-04-01','Monthly'),(92,'Elise','Gallagher','elise.gallagher@studiofit.co.uk','+44770090092','2025-04-02','Monthly'),(93,'Kieran','Henderson','kieran.henderson@studiofit.co.uk','+44770090093','2025-04-03','Annual'),(94,'Riley','Walters','riley.walters@studiofit.co.uk','+44770090094','2025-04-04','Monthly'),(95,'Serena','Porter','serena.porter@studiofit.co.uk','+44770090095','2025-04-05','Monthly'),(96,'Marcus','Todd','marcus.todd@studiofit.co.uk','+44770090096','2025-04-06','Annual'),(97,'Elena','Frost','elena.frost@studiofit.co.uk','+44770090097','2025-04-07','Monthly'),(98,'Grayson','Blair','grayson.blair@studiofit.co.uk','+44770090098','2025-04-08','Monthly'),(99,'Rosie','Kent','rosie.kent@studiofit.co.uk','+44770090099','2025-04-09','Annual'),(100,'Callum','Brady','callum.brady@studiofit.co.uk','+44770090100','2025-04-10','Monthly'),(101,'Paige','McCarthy','paige.mccarthy@studiofit.co.uk','+44770090101','2025-04-11','Monthly'),(102,'Jonah','Little','jonah.little@studiofit.co.uk','+44770090102','2025-04-12','Annual'),(103,'April','Milton','april.milton@studiofit.co.uk','+44770090103','2025-04-13','Monthly'),(104,'Ronan','Foley','ronan.foley@studiofit.co.uk','+44770090104','2025-04-14','Monthly'),(105,'Tessa','Reynolds','tessa.reynolds@studiofit.co.uk','+44770090105','2025-04-15','Annual'),(106,'Clay','Gilbert','clay.gilbert@studiofit.co.uk','+44770090106','2025-04-16','Monthly'),(107,'Kayla','Jennings','kayla.jennings@studiofit.co.uk','+44770090107','2025-04-17','Monthly'),(108,'Mason','Faulkner','mason.faulkner@studiofit.co.uk','+44770090108','2025-04-18','Annual'),(109,'Bella','Farmer','bella.farmer@studiofit.co.uk','+44770090109','2025-04-19','Monthly'),(110,'Tristan','Baldwin','tristan.baldwin@studiofit.co.uk','+44770090110','2025-04-20','Annual');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `method` enum('Card','Cash','Online','Transfer') NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `idx_payment_date` (`payment_date`),
  KEY `idx_payment_booking_id` (`booking_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,20.00,'2025-11-26 11:00:00','Transfer'),(2,2,15.00,'2025-11-26 12:00:00','Cash'),(3,3,15.00,'2025-11-26 13:00:00','Cash'),(4,4,20.00,'2025-11-26 14:00:00','Card'),(5,5,20.00,'2025-11-26 15:00:00','Cash'),(6,6,20.00,'2025-11-26 16:00:00','Cash'),(7,7,15.00,'2025-11-26 17:00:00','Online'),(8,8,20.00,'2025-11-26 18:00:00','Online'),(9,9,10.00,'2025-11-26 19:00:00','Card'),(10,10,20.00,'2025-11-26 20:00:00','Transfer'),(11,11,20.00,'2025-11-26 21:00:00','Transfer'),(12,12,15.00,'2025-11-26 22:00:00','Cash'),(13,13,10.00,'2025-11-26 23:00:00','Online'),(14,14,10.00,'2025-11-27 00:00:00','Card'),(15,15,10.00,'2025-11-27 01:00:00','Transfer'),(16,16,10.00,'2025-11-27 02:00:00','Card'),(17,17,10.00,'2025-11-27 03:00:00','Online'),(18,18,10.00,'2025-11-27 04:00:00','Card'),(19,19,20.00,'2025-11-27 05:00:00','Transfer'),(20,20,10.00,'2025-11-27 06:00:00','Cash'),(21,21,10.00,'2025-11-27 07:00:00','Online'),(22,22,20.00,'2025-11-27 08:00:00','Online'),(23,23,10.00,'2025-11-27 09:00:00','Cash'),(24,24,10.00,'2025-11-27 10:00:00','Transfer'),(25,25,20.00,'2025-11-27 11:00:00','Card'),(26,26,15.00,'2025-11-27 12:00:00','Online'),(27,27,15.00,'2025-11-27 13:00:00','Card'),(28,28,15.00,'2025-11-27 14:00:00','Cash'),(29,29,10.00,'2025-11-27 15:00:00','Card'),(30,30,15.00,'2025-11-27 16:00:00','Transfer'),(31,31,10.00,'2025-11-27 17:00:00','Transfer'),(32,32,15.00,'2025-11-27 18:00:00','Card'),(33,33,10.00,'2025-11-27 19:00:00','Online'),(34,34,15.00,'2025-11-27 20:00:00','Card'),(35,35,15.00,'2025-11-27 21:00:00','Card'),(36,36,15.00,'2025-11-27 22:00:00','Card'),(37,37,15.00,'2025-11-27 23:00:00','Online'),(38,38,15.00,'2025-11-28 00:00:00','Card'),(39,39,20.00,'2025-11-28 01:00:00','Transfer'),(40,40,20.00,'2025-11-28 02:00:00','Transfer'),(41,41,15.00,'2025-11-28 03:00:00','Cash'),(42,42,20.00,'2025-11-28 04:00:00','Online'),(43,43,15.00,'2025-11-28 05:00:00','Online'),(44,44,20.00,'2025-11-28 06:00:00','Transfer'),(45,45,15.00,'2025-11-28 07:00:00','Cash'),(46,46,20.00,'2025-11-28 08:00:00','Transfer'),(47,47,20.00,'2025-11-28 09:00:00','Transfer'),(48,48,20.00,'2025-11-28 10:00:00','Online'),(49,49,10.00,'2025-11-28 11:00:00','Cash'),(50,50,20.00,'2025-11-28 12:00:00','Cash'),(51,51,15.00,'2025-11-28 13:00:00','Card'),(52,52,10.00,'2025-11-28 14:00:00','Card'),(53,53,20.00,'2025-11-28 15:00:00','Transfer'),(54,54,15.00,'2025-11-28 16:00:00','Transfer'),(55,55,20.00,'2025-11-28 17:00:00','Card'),(56,56,15.00,'2025-11-28 18:00:00','Transfer'),(57,57,15.00,'2025-11-28 19:00:00','Transfer'),(58,58,15.00,'2025-11-28 20:00:00','Card'),(59,59,20.00,'2025-11-28 21:00:00','Online'),(60,60,20.00,'2025-11-28 22:00:00','Transfer'),(61,61,15.00,'2025-11-28 23:00:00','Cash'),(62,62,15.00,'2025-11-29 00:00:00','Card'),(63,63,15.00,'2025-11-29 01:00:00','Online'),(64,64,20.00,'2025-11-29 02:00:00','Card'),(65,65,15.00,'2025-11-29 03:00:00','Cash'),(66,66,15.00,'2025-11-29 04:00:00','Card'),(67,67,20.00,'2025-11-29 05:00:00','Online'),(68,68,10.00,'2025-11-29 06:00:00','Transfer'),(69,69,15.00,'2025-11-29 07:00:00','Card'),(70,70,10.00,'2025-11-29 08:00:00','Online'),(71,71,10.00,'2025-11-29 09:00:00','Transfer'),(72,72,15.00,'2025-11-29 10:00:00','Transfer'),(73,73,15.00,'2025-11-29 11:00:00','Cash'),(74,74,15.00,'2025-11-29 12:00:00','Transfer'),(75,75,10.00,'2025-11-29 13:00:00','Transfer'),(76,76,20.00,'2025-11-29 14:00:00','Transfer'),(77,77,15.00,'2025-11-29 15:00:00','Online'),(78,78,15.00,'2025-11-29 16:00:00','Cash'),(79,79,20.00,'2025-11-29 17:00:00','Cash'),(80,80,10.00,'2025-11-29 18:00:00','Cash'),(81,81,15.00,'2025-11-29 19:00:00','Transfer'),(82,82,20.00,'2025-11-29 20:00:00','Online'),(83,83,15.00,'2025-11-29 21:00:00','Cash'),(84,84,20.00,'2025-11-29 22:00:00','Online'),(85,85,10.00,'2025-11-29 23:00:00','Online'),(86,86,10.00,'2025-11-30 00:00:00','Cash'),(87,87,10.00,'2025-11-30 01:00:00','Online'),(88,88,15.00,'2025-11-30 02:00:00','Online'),(89,89,15.00,'2025-11-30 03:00:00','Cash'),(90,90,20.00,'2025-11-30 04:00:00','Cash'),(91,91,10.00,'2025-11-30 05:00:00','Online'),(92,92,10.00,'2025-11-30 06:00:00','Card'),(93,93,10.00,'2025-11-30 07:00:00','Card'),(94,94,15.00,'2025-11-30 08:00:00','Online'),(95,95,15.00,'2025-11-30 09:00:00','Card'),(96,96,15.00,'2025-11-30 10:00:00','Card'),(97,97,10.00,'2025-11-30 11:00:00','Online'),(98,98,15.00,'2025-11-30 12:00:00','Online'),(99,99,10.00,'2025-11-30 13:00:00','Transfer'),(100,100,10.00,'2025-11-30 14:00:00','Card'),(101,101,15.00,'2025-11-30 15:00:00','Online'),(102,102,15.00,'2025-11-30 16:00:00','Online'),(103,103,15.00,'2025-11-30 17:00:00','Card'),(104,104,20.00,'2025-11-30 18:00:00','Online'),(105,105,20.00,'2025-11-30 19:00:00','Online'),(106,106,20.00,'2025-11-30 20:00:00','Card'),(107,107,15.00,'2025-11-30 21:00:00','Card'),(108,108,15.00,'2025-11-30 22:00:00','Online'),(109,109,20.00,'2025-11-30 23:00:00','Transfer'),(110,110,15.00,'2025-12-01 00:00:00','Transfer'),(111,111,15.00,'2025-12-01 01:00:00','Cash'),(112,112,15.00,'2025-12-01 02:00:00','Cash'),(113,113,10.00,'2025-12-01 03:00:00','Cash'),(114,114,20.00,'2025-12-01 04:00:00','Cash'),(115,115,10.00,'2025-12-01 05:00:00','Transfer'),(116,116,15.00,'2025-12-01 06:00:00','Card'),(117,117,20.00,'2025-12-01 07:00:00','Card'),(118,118,15.00,'2025-12-01 08:00:00','Card'),(119,119,15.00,'2025-12-01 09:00:00','Cash'),(120,120,15.00,'2025-12-01 10:00:00','Transfer'),(121,121,20.00,'2025-12-01 11:00:00','Transfer'),(122,122,20.00,'2025-12-01 12:00:00','Transfer'),(123,123,10.00,'2025-12-01 13:00:00','Online'),(124,124,10.00,'2025-12-01 14:00:00','Cash'),(125,125,15.00,'2025-12-01 15:00:00','Online'),(126,126,20.00,'2025-12-01 16:00:00','Transfer'),(127,127,15.00,'2025-12-01 17:00:00','Cash'),(128,128,15.00,'2025-12-01 18:00:00','Cash'),(129,129,20.00,'2025-12-01 19:00:00','Transfer'),(130,130,15.00,'2025-12-01 20:00:00','Transfer'),(131,131,20.00,'2025-12-01 21:00:00','Card'),(132,132,20.00,'2025-12-01 22:00:00','Online'),(133,133,10.00,'2025-12-01 23:00:00','Transfer'),(134,134,10.00,'2025-12-02 00:00:00','Cash'),(135,135,20.00,'2025-12-02 01:00:00','Card'),(136,136,20.00,'2025-12-02 02:00:00','Online'),(137,137,10.00,'2025-12-02 03:00:00','Card'),(138,138,20.00,'2025-12-02 04:00:00','Online'),(139,139,20.00,'2025-12-02 05:00:00','Cash'),(140,140,15.00,'2025-12-02 06:00:00','Cash'),(141,141,15.00,'2025-12-02 07:00:00','Transfer'),(142,142,20.00,'2025-12-02 08:00:00','Card'),(143,143,10.00,'2025-12-02 09:00:00','Card'),(144,144,10.00,'2025-12-02 10:00:00','Online'),(145,145,20.00,'2025-12-02 11:00:00','Transfer'),(146,146,10.00,'2025-12-02 12:00:00','Card'),(147,147,10.00,'2025-12-02 13:00:00','Transfer'),(148,148,15.00,'2025-12-02 14:00:00','Transfer'),(149,149,20.00,'2025-12-02 15:00:00','Online'),(150,150,20.00,'2025-12-02 16:00:00','Card');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainers` (
  `trainer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `specialty` varchar(50) NOT NULL,
  `employment_type` enum('Full-Time','Freelance') NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
INSERT INTO `trainers` VALUES (1,'Olivia','Carter','Yoga','Full-Time','olivia.carter@studiofit.co.uk'),(2,'James','Miller','Yoga','Full-Time','james.miller@studiofit.co.uk'),(3,'Sophie','Turner','Yoga','Full-Time','sophie.turner@studiofit.co.uk'),(4,'Daniel','Wright','Yoga','Full-Time','daniel.wright@studiofit.co.uk'),(5,'Emily','Harris','Yoga','Full-Time','emily.harris@studiofit.co.uk'),(6,'Thomas','Clark','Yoga','Freelance','thomas.clark@studiofit.co.uk'),(7,'Grace','Lewis','Yoga','Freelance','grace.lewis@studiofit.co.uk'),(8,'Benjamin','Walker','Yoga','Freelance','benjamin.walker@studiofit.co.uk'),(9,'Lucy','Hall','Yoga','Freelance','lucy.hall@studiofit.co.uk'),(10,'William','King','Yoga','Freelance','william.king@studiofit.co.uk'),(11,'Ethan','Scott','HIIT','Full-Time','ethan.scott@studiofit.co.uk'),(12,'Mia','Green','HIIT','Full-Time','mia.green@studiofit.co.uk'),(13,'Noah','Baker','HIIT','Full-Time','noah.baker@studiofit.co.uk'),(14,'Ava','Hill','HIIT','Full-Time','ava.hill@studiofit.co.uk'),(15,'Leo','Adams','HIIT','Full-Time','leo.adams@studiofit.co.uk'),(16,'Holly','Ward','HIIT','Freelance','holly.ward@studiofit.co.uk'),(17,'Archie','Cooper','HIIT','Freelance','archie.cooper@studiofit.co.uk'),(18,'Ruby','Morris','HIIT','Freelance','ruby.morris@studiofit.co.uk'),(19,'Isaac','Reed','HIIT','Freelance','isaac.reed@studiofit.co.uk'),(20,'Poppy','Hughes','HIIT','Freelance','poppy.hughes@studiofit.co.uk'),(21,'Hannah','Foster','Pilates','Full-Time','hannah.foster@studiofit.co.uk'),(22,'Liam','Rogers','Pilates','Full-Time','liam.rogers@studiofit.co.uk'),(23,'Ella','Simmons','Pilates','Full-Time','ella.simmons@studiofit.co.uk'),(24,'Max','Price','Pilates','Freelance','max.price@studiofit.co.uk'),(25,'Daisy','Butler','Pilates','Freelance','daisy.butler@studiofit.co.uk'),(26,'Harvey','Barnes','Pilates','Freelance','harvey.barnes@studiofit.co.uk'),(27,'Megan','Brooks','Pilates','Freelance','megan.brooks@studiofit.co.uk'),(28,'Oliver','Powell','Pilates','Freelance','oliver.powell@studiofit.co.uk'),(29,'Charlotte','Warren','Cycling','Full-Time','charlotte.warren@studiofit.co.uk'),(30,'Jacob','Rose','Cycling','Full-Time','jacob.rose@studiofit.co.uk'),(31,'Millie','Coleman','Cycling','Freelance','millie.coleman@studiofit.co.uk'),(32,'Ryan','Hart','Cycling','Freelance','ryan.hart@studiofit.co.uk'),(33,'Evelyn','Stone','Cycling','Freelance','evelyn.stone@studiofit.co.uk'),(34,'Luke','Barrett','Cycling','Freelance','luke.barrett@studiofit.co.uk'),(35,'Aaron','Chapman','Strength','Full-Time','aaron.chapman@studiofit.co.uk'),(36,'Freya','Hudson','Strength','Full-Time','freya.hudson@studiofit.co.uk'),(37,'Dylan','Spencer','Strength','Full-Time','dylan.spencer@studiofit.co.uk'),(38,'Phoebe','Kirk','Strength','Freelance','phoebe.kirk@studiofit.co.uk'),(39,'Jayden','Hunt','Strength','Freelance','jayden.hunt@studiofit.co.uk'),(40,'Matilda','Doyle','Strength','Freelance','matilda.doyle@studiofit.co.uk'),(41,'Sofia','Parsons','Dance','Full-Time','sofia.parsons@studiofit.co.uk'),(42,'Leo','Gallagher','Dance','Full-Time','leo.gallagher@studiofit.co.uk'),(43,'Erin','Kemp','Dance','Freelance','erin.kemp@studiofit.co.uk'),(44,'Harry','Bowen','Dance','Freelance','harry.bowen@studiofit.co.uk'),(45,'Imogen','Sutton','Mobility','Full-Time','imogen.sutton@studiofit.co.uk'),(46,'Reece','Hammond','Mobility','Freelance','reece.hammond@studiofit.co.uk'),(47,'Zara','Bishop','Mobility','Freelance','zara.bishop@studiofit.co.uk'),(48,'Callum','Yates','Mobility','Freelance','callum.yates@studiofit.co.uk'),(49,'Talia','Norris','Aerial','Freelance','talia.norris@studiofit.co.uk'),(50,'Finn','Porter','Aerial','Freelance','finn.porter@studiofit.co.uk');
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'studio_fit'
--
/*!50003 DROP PROCEDURE IF EXISTS `populate_bookings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `populate_bookings`()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE sched_id INT;
    DECLARE mem_id INT;
    DECLARE bk_date DATETIME;
    DECLARE bk_status ENUM('Confirmed','Cancelled','Attended','No-Show');
    DECLARE pay_status ENUM('Paid','Pending','Refunded');

    -- Increased to 150 bookings to cover all 110 members
    WHILE i <= 150 DO
        SET sched_id = MOD(i-1,50) + 1;
        SET mem_id = MOD(i-1,110) + 1; -- Matches your 110 manual members
        SET bk_date = DATE_ADD('2025-11-25 09:00:00', INTERVAL i HOUR);

        IF MOD(i,5) = 0 THEN
            SET bk_status = 'Cancelled';
            SET pay_status = 'Refunded';
        ELSE
            SET bk_status = 'Attended';
            SET pay_status = 'Paid';
        END IF;

        INSERT INTO bookings (schedule_id, member_id, booking_date, booking_status, payment_status)
        VALUES (sched_id, mem_id, bk_date, bk_status, pay_status);

        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `populate_class_schedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `populate_class_schedule`()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE ct_id INT;
    DECLARE tr_id INT;
    DECLARE st DATETIME;
    DECLARE et DATETIME;

    -- Loop 75 times to ensure all 55 classes get scheduled
    WHILE i <= 75 DO
        SET ct_id = MOD(i-1,55) + 1;

        -- MATCHING LOGIC FOR ALL 55 CLASSES
        SET tr_id = CASE
            WHEN (ct_id BETWEEN 1 AND 3) OR (ct_id BETWEEN 25 AND 28) THEN 1 + MOD(i,10)
            WHEN (ct_id BETWEEN 4 AND 6) OR (ct_id BETWEEN 29 AND 32) THEN 11 + MOD(i,10)
            WHEN (ct_id BETWEEN 7 AND 9) OR (ct_id BETWEEN 33 AND 36) THEN 21 + MOD(i,8)
            WHEN (ct_id BETWEEN 10 AND 12) OR (ct_id BETWEEN 37 AND 40) THEN 29 + MOD(i,6)
            WHEN (ct_id BETWEEN 13 AND 15) OR (ct_id BETWEEN 41 AND 44) THEN 35 + MOD(i,6)
            WHEN (ct_id BETWEEN 16 AND 18) OR (ct_id BETWEEN 45 AND 48) THEN 41 + MOD(i,4)
            WHEN (ct_id BETWEEN 19 AND 21) OR (ct_id BETWEEN 49 AND 52) THEN 45 + MOD(i,4)
            ELSE 49 + MOD(i,2)
        END;

        SET st = DATE_ADD(DATE_ADD('2025-12-01 07:00:00', INTERVAL (i DIV 5) DAY), INTERVAL (MOD(i,5)*3) HOUR);
        SET et = DATE_ADD(st, INTERVAL 1 HOUR);

        INSERT INTO class_schedule (class_type_id, trainer_id, start_time, end_time, status)
        VALUES (ct_id, tr_id, st, et, CASE WHEN MOD(i,15) = 0 THEN 'Cancelled' ELSE 'Scheduled' END);

        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-09  0:50:47
