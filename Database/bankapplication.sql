-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bankapplication
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `register1`
--

DROP TABLE IF EXISTS `register1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register1` (
  `account_number` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_naame` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account_number`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register1`
--

LOCK TABLES `register1` WRITE;
/*!40000 ALTER TABLE `register1` DISABLE KEYS */;
INSERT INTO `register1` VALUES (181018,'reuben','coutinho','985212','1999-10-21','MALE','kandivali','Mumbai','Maharashtra','Joslin','1234'),(181047,'mg','we','88796','1999-10-21','MALE','db realty','mira road','maharashtra','mg01','mg01'),(191019,'sadasd','asdas','7123456789','2000-10-19','FEMALE','goregoan','Mumbai','Maas','rerere','1234'),(366366366,'Test','Tests','255266','2022-05-05','MALE','Mumbai','Mumbai','Maharashtra','test','test@123');
/*!40000 ALTER TABLE `register1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register2`
--

DROP TABLE IF EXISTS `register2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register2` (
  `nominee` varchar(100) DEFAULT NULL,
  `acc_number` int NOT NULL,
  `account_pin` smallint DEFAULT NULL,
  `addharnumber` bigint DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `Balance` float DEFAULT NULL,
  PRIMARY KEY (`acc_number`),
  CONSTRAINT `account_no` FOREIGN KEY (`acc_number`) REFERENCES `register1` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register2`
--

LOCK TABLES `register2` WRITE;
/*!40000 ALTER TABLE `register2` DISABLE KEYS */;
INSERT INTO `register2` VALUES ('ABC',366366366,201,101,'Savings Account',116500);
/*!40000 ALTER TABLE `register2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-04 12:44:49
