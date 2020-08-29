-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `ID` int NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `FAMILYNAME` varchar(45) DEFAULT NULL,
  `PROFESSION` varchar(45) DEFAULT NULL,
  `HOURSINHOSPITAL` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Larissa','Winters','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','LarWin123'),(2,'Cyrus','Pollard','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','CP1987'),(3,'Kermit','Ferguson','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','KERFER1989'),(4,'Trevor','Patrick','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','TREVORPATRICK'),(5,'Valentine','Norton','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','VALENTINE1981'),(6,'Myra','Austin','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','AUSTINMYRA'),(7,'Colby','Bullock',' EMERGENCY MEDICINE','FROM 11:00 TILL 7:00','COL@BULL'),(8,'Kennan','Wall',' EMERGENCY MEDICINE','FROM 11:00 TILL 7:00','KENwALL'),(9,'Jamal','Savage','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','JAMAL123'),(10,'Blake','Mcclure','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','BLAKEMC');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `ID` int NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `FAMILYNAME` varchar(45) DEFAULT NULL,
  `BLOODTYPE` varchar(45) DEFAULT NULL,
  `APPOINTMENTHOUR` varchar(45) DEFAULT NULL,
  `OPERATIONHOUR` varchar(45) DEFAULT NULL,
  `OPERATIONNAME` varchar(45) DEFAULT NULL,
  `MYROOM` varchar(45) DEFAULT NULL,
  `PHONENB` varchar(45) DEFAULT NULL,
  `MYDOCTOR` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (201,'Vivian','Hendrix','B-','4:00 till 4:20','2:00 till 3:00','Appendectomy','1','71044720','Larissa Winters','123456'),(202,'Summer','Kennedy','A-','3:00 till 3:15','12:00 till 1:00','Hemorrhoidectomy','2','71104886','Cyrus Pollard','SUMMER123'),(203,'Jaden','Bailey','O-','5:15 till 5:30','3:00 till 4:00','Appendectomy','3','71809574','Larissa Winters','JADENBAILEY'),(204,'Ori','Fitzgerald','AB+','1:00 till 2:00','1:00 till 2:00','Breast biopsy','4','71693491','Kermit Ferguson','ORI987'),(205,'Phillip','Davis','A-','3:00 till 3:25','3:00 till 4:00','Breast biopsy','5','71672110','Trevor Patrick','PHILLIP1987'),(206,'Cameran','Torres','O-','12:00 till 12:30','5:00 till 6:00','Carotid endarterectomy','6','71037687','Cyrus Pollard','CAMERAN7'),(207,'Naomi','Dillard','B+','4:00 till 4:15','3:00 till 4:00','Hysterectomy','7','71026730','Kermit Ferguson','NAOMIdillard'),(208,'Brianna','Miranda','O-','3:00 till 3:25','3:00 till 4:00','Hemorrhoidectomy','8','70887810','Trevor Patrick','564685'),(209,'Avye','Baird','AB-','4:00 till 4:15','2:00 till 3:00','Carotid endarterectomy','9','71593538','Trevor Patrick','58654'),(210,'Daquan','Sweet','B-','4:00 till 4:15','3:00 till 4:00','Carotid endarterectomy','10','71522860','Kermit Ferguson','FDHHFD'),(211,'Kelly','Daugherty','O-','5:15 till 5:30','2:00 till 3:00','Hysterectomy','11','70859217','Valentine Norton','8FDH5FH2'),(212,'Alfonso','Myers','A-','3:00 till 3:25','5:00 till 6:00','Appendectomy','12','71229014','Valentine Norton','DFH84FD/'),(213,'Uta','Cook','O-','4:00 till 4:15','1:00 till 2:00','Hemorrhoidectomy','13','70885235','Valentine Norton','15HDF/*4*DF'),(214,'Justin','Petersen','B+','3:00 till 3:35','5:00 till 6:00','Hysterectomy','14','71510813','Myra Austin','R58H/'),(215,'Inga','Garcia','B+','4:00 till 4:15','4:00 till 5:00','Hemorrhoidectomy','15','71182165','Jamal Savage','2DGS98*/'),(216,'Callum','Cameron','O+','2:00 till 3:00','12:00 till 1:00','Appendectomy','16','71582409','Myra Austin','SDG5/*'),(217,'Brennan','Green','B+','1:00 till 1:40','2:00 till 3:00','Breast biopsy','17','71086906','Colby Bullock','DGS6295'),(218,'Farrah','Mcdaniel','O+','4:00 till 4:15','4:00 till 5:00','Hysterectomy','18','71536962','Colby Bullock','J7/H*'),(219,'Graiden','Kinney','AB+','1:00 till 2:00','12:00 till 1:00','Carotid endarterectomy','19','70920012','Myra Austin','8R15'),(220,'Howard','Gutierrez','O-','4:00 till 4:15','5:00 till 6:00','Breast biopsy','20','70879072','Colby Bullock','DSG'),(221,'Brent','Patterson','B+','5:00 till 6:00','1:00 till 2:00','Carotid endarterectomy','21','71727533','Kennan Wall','YJYYT'),(222,'Ayanna','Garrison','O-','1:00 till 1:40','5:00 till 6:00','Hysterectomy','22','71065544','Larissa Winters','YJYJ'),(223,'Chadwick','Harris','B+','4:00 till 5:00','5:00 till 6:00','Hemorrhoidectomy','23','71071310','Kennan Wall','554+587'),(224,'Nita','Guy','AB-','4:00 till 4:20','1:00 till 2:00','Hysterectomy','24','71591142','Jamal Savage','3YJFH'),(225,'Melyssa','Barton','A-','12:00 till 12:30','4:00 till 5:00','Appendectomy','25','71463535','Cyrus Pollard','3454DF'),(226,'Hop','Smith','O-','3:00 till 3:20','5:00 till 6:00','Hemorrhoidectomy','26','71128515','Blake Mcclure','F4343'),(227,'Quynn','Fischer','AB-','4:00 till 4:15','2:00 till 3:00','Hemorrhoidectomy','27','71468733','Jamal Savage','FDWE'),(228,'Matthew','Ashley','B-','4:00 till 4:15','1:00 till 2:00','Hemorrhoidectomy','28','71168468','Blake Mcclure','EW5'),(229,'Hadi','Hajj','B+','4:00 till 4:15',NULL,NULL,'0','71232323','Larissa Winters','123456'),(230,'Chadi','Fred','B+',NULL,NULL,NULL,'0','71245632',NULL,'12222'),(231,'youssef','dirani','O-',NULL,NULL,NULL,'0','81456789',NULL,'456789');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `PRODUCTNAME` varchar(45) NOT NULL,
  `EXPDATE` varchar(45) DEFAULT NULL,
  `NBOFPRODUCTLEFT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PRODUCTNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (' Morphine','2/4/2022','15'),('Abacavir','5/2/2021','25'),('FLUDARABINE','2/4/2022','58'),('LOMUSTINE','7/72022','12');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weeklyfreecalendar`
--

DROP TABLE IF EXISTS `weeklyfreecalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weeklyfreecalendar` (
  `DOCTORNAME` varchar(45) NOT NULL,
  `MONDAY` varchar(255) DEFAULT NULL,
  `TUESDAY` varchar(255) DEFAULT NULL,
  `WEDNESDAY` varchar(255) DEFAULT NULL,
  `THURSDAY` varchar(255) DEFAULT NULL,
  `FRIDAY` varchar(255) DEFAULT NULL,
  `SATURDAY` varchar(255) DEFAULT NULL,
  `SUNDAY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weeklyfreecalendar`
--

LOCK TABLES `weeklyfreecalendar` WRITE;
/*!40000 ALTER TABLE `weeklyfreecalendar` DISABLE KEYS */;
INSERT INTO `weeklyfreecalendar` VALUES ('Myra Austin','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Larissa Winters','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Kermit Ferguson','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Kennan Wall','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Trevor Patrick','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Colby Bullock','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Jamal Savage','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Valentine Norton','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30'),('Cyrus Pollard','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30','11:00 TILL 11:15 - 1:30 TILL 2:00 - 5:20 TILL 6:00 - 6:00 TILL 6:15- 6:15 TILL 6:30');
/*!40000 ALTER TABLE `weeklyfreecalendar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-29 17:45:39
