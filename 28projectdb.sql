CREATE DATABASE  IF NOT EXISTS `projectdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projectdb`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: projectdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `administrative_staff`
--

DROP TABLE IF EXISTS `administrative_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrative_staff` (
  `staff_ID` int NOT NULL,
  `sales_report` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`),
  CONSTRAINT `administrative_staff_ibfk_1` FOREIGN KEY (`staff_ID`) REFERENCES `staff` (`staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrative_staff`
--

LOCK TABLES `administrative_staff` WRITE;
/*!40000 ALTER TABLE `administrative_staff` DISABLE KEYS */;
INSERT INTO `administrative_staff` VALUES (1001,NULL);
/*!40000 ALTER TABLE `administrative_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bids` (
  `email_address` varchar(30) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  `item_ID` varchar(20) NOT NULL,
  `price` int DEFAULT NULL,
  `upper_limit` int DEFAULT NULL,
  PRIMARY KEY (`email_address`,`passwords`,`item_ID`),
  KEY `item_ID` (`item_ID`),
  CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`email_address`, `passwords`) REFERENCES `user` (`email_address`, `passwords`),
  CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`item_ID`) REFERENCES `item` (`item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
INSERT INTO `bids` VALUES ('cs336@rutgers.edu','principles','583',484,800),('cs336@rutgers.edu','principles','875',1000,2000),('project@rutgers.edu','project336','10',200,500),('project@rutgers.edu','project336','101',1200,2500),('project@rutgers.edu','project336','109',200,2000),('project@rutgers.edu','project336','583',500,1000),('project@rutgers.edu','project336','735',1500,2000),('project@rutgers.edu','project336','875',100,10);
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyers` (
  `email_address` varchar(30) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  `alerts` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`email_address`,`passwords`),
  CONSTRAINT `buyers_ibfk_1` FOREIGN KEY (`email_address`, `passwords`) REFERENCES `user` (`email_address`, `passwords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES ('cs336@rutgers.edu','principles',NULL),('project@rutgers.edu','project336',NULL);
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_representative_staff`
--

DROP TABLE IF EXISTS `customer_representative_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_representative_staff` (
  `staff_ID` int NOT NULL,
  PRIMARY KEY (`staff_ID`),
  CONSTRAINT `customer_representative_staff_ibfk_1` FOREIGN KEY (`staff_ID`) REFERENCES `staff` (`staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_representative_staff`
--

LOCK TABLES `customer_representative_staff` WRITE;
/*!40000 ALTER TABLE `customer_representative_staff` DISABLE KEYS */;
INSERT INTO `customer_representative_staff` VALUES (1002),(1003),(2001),(2002);
/*!40000 ALTER TABLE `customer_representative_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `dates` date DEFAULT NULL,
  `times` time DEFAULT NULL,
  `initial_price` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `item_ID` varchar(20) NOT NULL,
  `names` char(50) DEFAULT NULL,
  `increment_of_bids` double DEFAULT NULL,
  `categories` char(20) DEFAULT NULL,
  PRIMARY KEY (`item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('2022-12-18','13:50:00',100,200,'10','Cello',1,'personalUse'),('2022-12-19','14:48:00',1000,0,'101','Bed',100,'personalUse'),('2022-10-05','12:01:00',1900,0,'109','Sink',1,'personalUse'),('2022-12-31','14:30:00',10,0,'347','Desk',10,'personalUse'),('2022-12-23','12:00:00',485,500,'583','Couch',10,'personalUse'),('2022-12-24','20:55:00',100,80,'648','Cooker',10,'kitchen'),('2022-12-17','09:30:00',10,1500,'735','Basket',10,'personalUse'),('2022-12-20','19:28:00',1463,0,'749','Fridge',54,'kitchen'),('2022-12-24','17:30:00',100,1000,'875','Laptop',10,'personalUse'),('2022-12-27','21:34:00',200,0,'900','Dresser',50,'personalUse');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q_a`
--

DROP TABLE IF EXISTS `q_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q_a` (
  `question` varchar(200) NOT NULL,
  `answer` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q_a`
--

LOCK TABLES `q_a` WRITE;
/*!40000 ALTER TABLE `q_a` DISABLE KEYS */;
INSERT INTO `q_a` VALUES ('Where can I find the search page?','You can find the search page on the Buyer Home Page'),('Can I set alerts on auctions I want?',NULL),('Where can I find the history of an auction?','Yes, you can set alerts on auctions you want. ');
/*!40000 ALTER TABLE `q_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `email_address` varchar(30) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  PRIMARY KEY (`email_address`,`passwords`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`email_address`, `passwords`) REFERENCES `user` (`email_address`, `passwords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES ('ms3114@rutgers.edu','rutgers336');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_ID` int NOT NULL,
  PRIMARY KEY (`staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1001),(1002),(1003),(2001),(2002);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email_address` varchar(30) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  PRIMARY KEY (`email_address`,`passwords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('cs336@rutgers.edu','principles'),('ms3114@rutgers.edu','rutgers336'),('project@rutgers.edu','project336');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-23 22:35:44
