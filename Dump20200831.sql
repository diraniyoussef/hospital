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
  `HASHEDPASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Larissa','Winters','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','LarWin123','a045a878be06299a7053237f444b6a405553487b1732716281f3d89497e04f41'),(2,'Cyrus','Pollard','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','CP1987','ffee319d512111167a14a335e74789747b80bde91c214962dff01a6fbdcaaf70'),(3,'Kermit','Ferguson','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','KERFER1989','75122bed7231d96dab8cf5e0e3881f45666ac04889f450acf6690c99bb2a881c'),(4,'Trevor','Patrick','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','TREVORPATRICK','db730301a6c31c7af0dd4944d229eefbcebed474efa9ddf0d29df7691067e239'),(5,'Valentine','Norton','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','VALENTINE1981','1c5cae1f7eedc809764a264d86e4cba1ef79c337f051dd89f71b19f33e3d3ce1'),(6,'Myra','Austin','DIAGNOSTIC RADIOLOGY','FROM 11:00 TILL 7:00','AUSTINMYRA','07d7376f17712dad6d408deef903e696fd0f65d5fa3360e075d3511e940f8e5e'),(7,'Colby','Bullock',' EMERGENCY MEDICINE','FROM 11:00 TILL 7:00','COL@BULL','b16914ec59b581a3eb6c7db87c1ad54f3e798bddbf8c9096daa8a0dad02fec86'),(8,'Kennan','Wall',' EMERGENCY MEDICINE','FROM 11:00 TILL 7:00','KENwALL','e2d02c27123d5dccf4a6948b032d920c000bdedcdb8f8d95ca93c51da2a535a2'),(9,'Jamal','Savage','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','JAMAL123','6f0b5407e544186a43da034b6851aad72ea8b30d696ea3b703e3f8821d8a1750'),(10,'Blake','Mcclure','ANESTHESIOLOGY','FROM 11:00 TILL 7:00','BLAKEMC','f92f9d1b6bbaf1f8af6bc3f33e22dfeb198f8b0b3fe652839f10d4e821f95660');
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
  `HASHEDPASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (201,'Vivian','Hendrix','B-','4:00 till 4:20','2:00 till 3:00','Appendectomy','1','71044720','Larissa Winters','123456','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),(202,'Summer','Kennedy','A-','3:00 till 3:15','12:00 till 1:00','Hemorrhoidectomy','2','71104886','Cyrus Pollard','SUMMER123','2c85d7d3124edf56cb9d4432735b6d94836e5f78b972d6eb0a3c170e5ee95393'),(203,'Jaden','Bailey','O-','5:15 till 5:30','3:00 till 4:00','Appendectomy','3','71809574','Larissa Winters','JADENBAILEY','75346c66cdade47bee1b7ccb961368a227af00df6d2cf31708ef8a238bdd211e'),(204,'Ori','Fitzgerald','AB+','1:00 till 2:00','1:00 till 2:00','Breast biopsy','4','71693491','Kermit Ferguson','ORI987','068a14f03f1b01f5ff009c0f68c66e474586df73c813f0c639038a5e275c959d'),(205,'Phillip','Davis','A-','3:00 till 3:25','3:00 till 4:00','Breast biopsy','5','71672110','Trevor Patrick','PHILLIP1987','da3549c4c3d93609d5c75288ee59513d3c3622d5bedeceea1c684ee1fa3dad89'),(206,'Cameran','Torres','O-','12:00 till 12:30','5:00 till 6:00','Carotid endarterectomy','6','71037687','Cyrus Pollard','CAMERAN7','cc219f72c52a08fbf96758a8071571703adf6812048fff983a51cf09eb7578f3'),(207,'Naomi','Dillard','B+','4:00 till 4:15','3:00 till 4:00','Hysterectomy','7','71026730','Kermit Ferguson','NAOMIdillard','c5c430e97f8fc5f8aaed67d978302d8ba585e197224b2ca79381a2603f75a1c5'),(208,'Brianna','Miranda','O-','3:00 till 3:25','3:00 till 4:00','Hemorrhoidectomy','8','70887810','Trevor Patrick','564685','fc3f8518c92f06c352f2bccd76758908283e1b827f537188025bb7ff1322eb45'),(209,'Avye','Baird','AB-','4:00 till 4:15','2:00 till 3:00','Carotid endarterectomy','9','71593538','Trevor Patrick','58654','fc595889b32c31df02386503138bc72b47e7429b892d5e895cff327ecd416aff'),(210,'Daquan','Sweet','B-','4:00 till 4:15','3:00 till 4:00','Carotid endarterectomy','10','71522860','Kermit Ferguson','FDHHFD','cd2b6885c5ec5b953a4d9730607bc475ba7d989c8074cdf6dab0b7a3ff242be8'),(211,'Kelly','Daugherty','O-','5:15 till 5:30','2:00 till 3:00','Hysterectomy','11','70859217','Valentine Norton','8FDH5FH2','e914fede50187a3bdb308674c37353113c95c75f32604cb6f031a45b65e924e3'),(212,'Alfonso','Myers','A-','3:00 till 3:25','5:00 till 6:00','Appendectomy','12','71229014','Valentine Norton','DFH84FD/','67f03611f79a0c7a9aa05916437f8e643fbd7913b5b2ef19f44516c78f1d8ed5'),(213,'Uta','Cook','O-','4:00 till 4:15','1:00 till 2:00','Hemorrhoidectomy','13','70885235','Valentine Norton','15HDF/*4*DF','07587093ca2bf72a52dc10f2ddba83bf77a3df9db3860a40bbb9f49f7e89062a'),(214,'Justin','Petersen','B+','3:00 till 3:35','5:00 till 6:00','Hysterectomy','14','71510813','Myra Austin','R58H/','3dc6f47b49584e6a51a1d574f322de679226637430a78fc3c8426f4a6af05b1b'),(215,'Inga','Garcia','B+','4:00 till 4:15','4:00 till 5:00','Hemorrhoidectomy','15','71182165','Jamal Savage','2DGS98*/','e065feebb9e78131d5a462b6870c157aea164bf95bd41dd3e9fb9668e7720618'),(216,'Callum','Cameron','O+','2:00 till 3:00','12:00 till 1:00','Appendectomy','16','71582409','Myra Austin','SDG5/*','ec8a1bd2be3aa56142658e8b00903102766e2c039ad8aa67cd55d63e83d40cd5'),(217,'Brennan','Green','B+','1:00 till 1:40','2:00 till 3:00','Breast biopsy','17','71086906','Colby Bullock','DGS6295','68553108b91632e35c3a70b8f747ad9d2ea3d0c8777ff2de06a652e0f96fc3bc'),(218,'Farrah','Mcdaniel','O+','4:00 till 4:15','4:00 till 5:00','Hysterectomy','18','71536962','Colby Bullock','J7/H*','a03d71b939e4ca5b781496f82b852ac7d771d926092998a37007ae231848527b'),(219,'Graiden','Kinney','AB+','1:00 till 2:00','12:00 till 1:00','Carotid endarterectomy','19','70920012','Myra Austin','8R15','a1e54aa42d56fa456950ced83d48a8a24b21806f49d5986f9f3f16698df8a7d5'),(220,'Howard','Gutierrez','O-','4:00 till 4:15','5:00 till 6:00','Breast biopsy','20','70879072','Colby Bullock','DSG','769fcc3beb76dee780f6a65dce1f8c13081e44f057e3bcc27287311e01c4511a'),(221,'Brent','Patterson','B+','5:00 till 6:00','1:00 till 2:00','Carotid endarterectomy','21','71727533','Kennan Wall','YJYYT','c1bba54b625b920b883455bbaef80ec9275a7bc9462337e7b6fd8ec9b06510e6'),(222,'Ayanna','Garrison','O-','1:00 till 1:40','5:00 till 6:00','Hysterectomy','22','71065544','Larissa Winters','YJYJ','a54c64204689292d7a6322e595249a82745bb886910e111fb2aa8cfbfd78c4fb'),(223,'Chadwick','Harris','B+','4:00 till 5:00','5:00 till 6:00','Hemorrhoidectomy','23','71071310','Kennan Wall','554+587','1e2252fd0e3856d83285cdd0aa9a6a1146512908960ef5b49013132582673aec'),(224,'Nita','Guy','AB-','4:00 till 4:20','1:00 till 2:00','Hysterectomy','24','71591142','Jamal Savage','3YJFH','53ebc3f3bf90266070c7f6aea1c4728ed7940e49a0e4ed12bf709ca85c533fe0'),(225,'Melyssa','Barton','A-','12:00 till 12:30','4:00 till 5:00','Appendectomy','25','71463535','Cyrus Pollard','3454DF','01cd214a51691ee6651a4aa5102d8e5a3836012e57ab1a8b2cd489ab2a5800df'),(226,'Hop','Smith','O-','3:00 till 3:20','5:00 till 6:00','Hemorrhoidectomy','26','71128515','Blake Mcclure','F4343','6959dcd59657b4687978180861841e2f9327e60b0314c8add70a8162300a664c'),(227,'Quynn','Fischer','AB-','4:00 till 4:15','2:00 till 3:00','Hemorrhoidectomy','27','71468733','Jamal Savage','FDWE','1ed624222097579a81f62e27427723762455a3e16b9b5e4139adc3aeb34533bb'),(228,'Matthew','Ashley','B-','4:00 till 4:15','1:00 till 2:00','Hemorrhoidectomy','28','71168468','Blake Mcclure','EW5','f8bf2fff2824a1ba67a4796a6ff27a44d3d4d9fbfaec9b577c39b70696d7254d'),(229,'Hadi','Hajj','B+','4:00 till 4:15',NULL,NULL,'0','71232323','Larissa Winters','123456','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),(230,'Chadi','Fred','B+',NULL,NULL,NULL,'0','71245632',NULL,'12222','fe9036dfac21956345742357dac23959170eecdc7e3d9630b14a369624de7ec7'),(231,'youssef','dirani','O-',NULL,NULL,NULL,'0','81456789',NULL,'456789','472bbe83616e93d3c09a79103ae47d8f71e3d35a966d6e8b22f743218d04171d'),(232,'Rami','Saad','O-',NULL,NULL,NULL,'0','76123456',NULL,'123456+','2a2a54b7643123c4502c8b61f553aada36d573354923a3990a4f19f0f72c0593'),(233,'Samir','Wajdi','961',NULL,NULL,NULL,'0','03159753',NULL,'samirpasswod',NULL),(234,'Amjad','Hajjar','1',NULL,NULL,NULL,'0','03789456',NULL,'anypass',NULL);
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

-- Dump completed on 2020-08-31 20:50:09
