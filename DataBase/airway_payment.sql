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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `exp_year` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `name_on_card` varchar(255) DEFAULT NULL,
  `paid_amount` double NOT NULL,
  `paid_date` date DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `FKqewrl4xrv9eiad6eab3aoja65` (`booking_id`),
  KEY `FKksfrjqha8pgi138obgi61f68u` (`userid`),
  CONSTRAINT `FKksfrjqha8pgi138obgi61f68u` FOREIGN KEY (`userid`) REFERENCES `userair` (`userid`),
  CONSTRAINT `FKqewrl4xrv9eiad6eab3aoja65` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,36000,'8239561986191753','343','10/2028',NULL,'vyshnavibelde',36000,'2023-12-24',1,1),(2,33000,'8972536228239372','343','11/2028',NULL,'vyshnavibelde',33000,'2023-12-24',4,1),(3,33000,'8972536228239372','343','11/2028',NULL,'vyshnavibelde',33000,'2023-12-24',4,1),(4,33000,'8972536228239372','343','11/2028',NULL,'vyshnavibelde',33000,'2023-12-24',4,1),(5,33000,'8972536228239372','343','11/2028',NULL,'vyshnavibelde',33000,'2023-12-24',4,1),(21,195000,'3284298561962822','343','02/2028',NULL,'vyshnavibelde',195000,NULL,7,1),(22,36000,'8934693461767901','383','06/2028',NULL,'vyshnavibelde',36000,NULL,8,1),(23,54000,'3641976372829901','343','12/2028',NULL,'vyshnavibelde',54000,NULL,10,1),(24,36000,'3274619763416382','345','11/2026',NULL,'saikiran',36000,NULL,11,9),(25,100000,'2834286518292479','345','11/2028',NULL,'vyshnavibelde',100000,NULL,12,1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 11:24:57
