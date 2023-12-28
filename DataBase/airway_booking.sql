-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: airway
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `passenger_age` varchar(10) DEFAULT NULL,
  `passenger_name` varchar(5) DEFAULT NULL,
  `seatstobook` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FK546eybei9q7dsna94vryofrbr` (`flight_id`),
  KEY `FKnhy4fxk40anincqynrd8dr8d8` (`userid`),
  CONSTRAINT `FK546eybei9q7dsna94vryofrbr` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  CONSTRAINT `FKnhy4fxk40anincqynrd8dr8d8` FOREIGN KEY (`userid`) REFERENCES `userair` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,36000,'2023-12-24',NULL,NULL,12,'paid',12,1),(2,0,'2023-12-24',NULL,NULL,18,'Not Paid',18,1),(3,0,'2023-12-24',NULL,NULL,2,'Not Paid',18,1),(4,33000,'2023-12-24',NULL,NULL,11,'paid',12,1),(7,195000,'2023-12-24',NULL,NULL,13,'Not Paid',22,1),(8,36000,'2023-12-24',NULL,NULL,12,'Not Paid',12,1),(9,88000,'2023-12-25',NULL,NULL,11,'Not Paid',21,1),(10,54000,'2023-12-26',NULL,NULL,18,'Not Paid',12,1),(11,36000,'2023-12-26',NULL,NULL,12,'Not Paid',12,9),(12,100000,'2023-12-26',NULL,NULL,20,'Not Paid',18,1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 11:24:58
