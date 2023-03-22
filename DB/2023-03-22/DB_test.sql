CREATE DATABASE  IF NOT EXISTS `delivery_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `delivery_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: delivery_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `delivery_mst`
--

DROP TABLE IF EXISTS `delivery_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_mst` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `delivery_company` varchar(20) NOT NULL,
  `delivery_man` varchar(15) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `consignee_name` varchar(15) NOT NULL,
  `consignee_phone` varchar(14) NOT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_mst`
--

LOCK TABLES `delivery_mst` WRITE;
/*!40000 ALTER TABLE `delivery_mst` DISABLE KEYS */;
INSERT INTO `delivery_mst` VALUES (1,'대한통운','김준일','부산광역시 연제구 중앙대로 1001 부산광역시청','김춘식','010-8282-5353');
/*!40000 ALTER TABLE `delivery_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_mst`
--

DROP TABLE IF EXISTS `product_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_mst` (
  `상품코드` int NOT NULL AUTO_INCREMENT,
  `상품명` varchar(45) NOT NULL,
  `수량` int NOT NULL,
  PRIMARY KEY (`상품코드`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_mst`
--

LOCK TABLES `product_mst` WRITE;
/*!40000 ALTER TABLE `product_mst` DISABLE KEYS */;
INSERT INTO `product_mst` VALUES (8,'딸기사탕',200),(11,'오렌지사탕',20);
/*!40000 ALTER TABLE `product_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `customer` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('John',100),('Jane',200),('John',150),('Jane',50),('Jim',300),('John',100),('Jane',200),('John',150),('Jane',50),('Jim',300);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_mst`
--

DROP TABLE IF EXISTS `st_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_mst` (
  `학번` int NOT NULL,
  `이름` varchar(45) NOT NULL,
  `전공` varchar(45) NOT NULL,
  PRIMARY KEY (`학번`),
  KEY `STUDENT_CODE_INDEX` (`학번`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_mst`
--

LOCK TABLES `st_mst` WRITE;
/*!40000 ALTER TABLE `st_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mst`
--

DROP TABLE IF EXISTS `student_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_mst` (
  `학번` int NOT NULL AUTO_INCREMENT,
  `이름` varchar(45) NOT NULL,
  PRIMARY KEY (`학번`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mst`
--

LOCK TABLES `student_mst` WRITE;
/*!40000 ALTER TABLE `student_mst` DISABLE KEYS */;
INSERT INTO `student_mst` VALUES (1,'김춘식'),(2,'손흥민');
/*!40000 ALTER TABLE `student_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_dtl`
--

DROP TABLE IF EXISTS `subject_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_dtl` (
  `순번` int NOT NULL AUTO_INCREMENT,
  `학번` int NOT NULL,
  `과목번호` int NOT NULL,
  `점수` int NOT NULL,
  PRIMARY KEY (`순번`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_dtl`
--

LOCK TABLES `subject_dtl` WRITE;
/*!40000 ALTER TABLE `subject_dtl` DISABLE KEYS */;
INSERT INTO `subject_dtl` VALUES (1,1,1,95),(2,2,1,84),(3,1,2,89),(4,2,2,92),(5,1,3,100),(6,2,3,88);
/*!40000 ALTER TABLE `subject_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_mst`
--

DROP TABLE IF EXISTS `subject_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_mst` (
  `과목번호` int NOT NULL AUTO_INCREMENT,
  `과목이름` varchar(45) NOT NULL,
  PRIMARY KEY (`과목번호`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_mst`
--

LOCK TABLES `subject_mst` WRITE;
/*!40000 ALTER TABLE `subject_mst` DISABLE KEYS */;
INSERT INTO `subject_mst` VALUES (1,'컴퓨터 구조'),(2,'데이터베이스'),(3,'인공지능');
/*!40000 ALTER TABLE `subject_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dtl`
--

DROP TABLE IF EXISTS `user_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_dtl` (
  `user_dtl_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `phone` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`user_dtl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dtl`
--

LOCK TABLES `user_dtl` WRITE;
/*!40000 ALTER TABLE `user_dtl` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mst`
--

DROP TABLE IF EXISTS `user_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_mst` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `id` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mst`
--

LOCK TABLES `user_mst` WRITE;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mst2`
--

DROP TABLE IF EXISTS `user_mst2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_mst2` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mst2`
--

LOCK TABLES `user_mst2` WRITE;
/*!40000 ALTER TABLE `user_mst2` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mst2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'delivery_db'
--

--
-- Dumping routines for database 'delivery_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-22 10:03:27
