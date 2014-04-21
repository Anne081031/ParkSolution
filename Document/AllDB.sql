-- MySQL dump 10.13  Distrib 5.6.12, for Win32 (x86)
--
-- Host: localhost    Database: parkcustomercenter
-- ------------------------------------------------------
-- Server version	5.6.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `parkcustomercenter`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `parkcustomercenter` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `parkcustomercenter`;

--
-- Table structure for table `tabcommondatainfo`
--

DROP TABLE IF EXISTS `tabcommondatainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcommondatainfo` (
  `ValueID` smallint(5) unsigned NOT NULL COMMENT '0 1 2 3 4',
  `Value` varchar(45) NOT NULL,
  `DataType` varchar(45) NOT NULL COMMENT 'District\nCustomerSource\nAccountExcutive\nCustomerCategory\nMembershipClass\nServiceDepartment\nMaintanceman\n\nBrand\nSeries\nColor\nFeature\nInsurer\nVehicleState\n\nServiceCategory\nServiceSubCategory\nSettlementStyle\nMaintanceman',
  PRIMARY KEY (`ValueID`,`DataType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcommondatainfo`
--

LOCK TABLES `tabcommondatainfo` WRITE;
/*!40000 ALTER TABLE `tabcommondatainfo` DISABLE KEYS */;
INSERT INTO `tabcommondatainfo` VALUES (1,'çŽ‹åˆš','AccountExecutive'),(1,'é€šç”¨','Brand'),(1,'é»‘è‰²','Color'),(1,'ä¼šå‘˜å®¢æˆ·','CustomerCategory'),(1,'çº¿ä¸‹å¹¿å‘Š','CustomerSource'),(1,'é’ç¾ŠåŒº','District'),(1,'ä¼ä¸šå…¬è½¦','Feature'),(1,'å¤§åœ°','Insurer'),(1,'ç‹¬ç«‹','Maintanceman'),(1,'è¶…çº§ä¼šå‘˜','MembershipClass'),(1,'ç¾Žç³»','Series'),(1,'ä¿å…»','ServiceCategory'),(1,'æ£€ä¿®éƒ¨','ServiceDepartment'),(1,'ä¿å…»','ServiceSubCategory'),(1,'ä¼šå‘˜å¡','SettlementStyle'),(1,'ç ´æŸ','VehicleState'),(2,'æ¨±æ¡ƒ','AccountExecutive'),(2,'çŽ°ä»£','Brand'),(2,'ç™½è‰²','Color'),(2,'ä¸€æ¬¡æ€§æ¶ˆè´¹','CustomerCategory'),(2,'æœ‹å‹æŽ¨è','CustomerSource'),(2,'æˆåŽåŒº','District'),(2,'ç§å®¶è½¦','Feature'),(2,'äººä¿','Insurer'),(2,'é˜¿æœµ','Maintanceman'),(2,'æ™®é€šä¼šå‘˜','MembershipClass'),(2,'éŸ©ç³»','Series'),(2,'æ´—è½¦','ServiceCategory'),(2,'é”€å”®éƒ¨','ServiceDepartment'),(2,'å®šæœŸä¿å…»','ServiceSubCategory'),(2,'çŽ°é‡‘','SettlementStyle'),(2,'æŠ¥åºŸ','VehicleState'),(3,'å¼ åŠ›','AccountExecutive'),(3,'ä¸°ç”°','Brand'),(3,'é“¶ç°è‰²','Color'),(3,'åº—é¢å¼•å¯¼','CustomerSource'),(3,'æ­¦ä¾¯åŒº','District'),(3,'æ”¿åºœç”¨è½¦','Feature'),(3,'å¹³å®‰','Insurer'),(3,'æ—¥ç³»','Series'),(3,'å®¢æˆ·éƒ¨','ServiceDepartment'),(3,'å…ä¿','ServiceSubCategory'),(3,'å®Œå¥½','VehicleState'),(4,'æ ‡è‡´','Brand'),(4,'çº¢è‰²','Color'),(4,'æ­¦ä¾¯åŒº1','District'),(4,'æ³•ç³»','Series'),(4,'æ´—è½¦éƒ¨','ServiceDepartment'),(5,'å¤§ä¼—','Brand'),(5,'æ­¦ä¾¯åŒºwq','District'),(5,'å¾·ç³»','Series'),(6,'q','District');
/*!40000 ALTER TABLE `tabcommondatainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabcustomerinfo`
--

DROP TABLE IF EXISTS `tabcustomerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcustomerinfo` (
  `CustomerID` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT 'å®¢æˆ·å·',
  `Name` varchar(45) DEFAULT NULL COMMENT 'å®¢æˆ·å',
  `CredentialsID` varchar(256) DEFAULT NULL COMMENT 'è¯ä»¶å·',
  `Address` varchar(45) DEFAULT NULL COMMENT 'åœ°å€',
  `District` smallint(6) DEFAULT NULL COMMENT 'åŒºåŸŸ',
  `MobilePhone` varchar(45) DEFAULT NULL COMMENT 'ç§»åŠ¨ç”µè¯',
  `Landline` varchar(45) DEFAULT NULL COMMENT 'å›ºè¯',
  `EMail` varchar(45) DEFAULT NULL COMMENT 'ç”µé‚®',
  `CustomerSource` smallint(6) DEFAULT NULL COMMENT 'å®¢æˆ·æ¥æº',
  `CustomerDepartment` smallint(6) DEFAULT NULL COMMENT 'éƒ¨é—¨',
  `AccountExecutive` smallint(6) DEFAULT NULL COMMENT 'å®¢æˆ·ä¸“å‘˜',
  `VistFirstTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'é¦–æ¬¡åˆ°åº—æ—¶é—´',
  `EntryTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'å»ºæ¡£æ—¶é—´',
  `CustomerCategory` smallint(6) DEFAULT NULL COMMENT 'å®¢æˆ·åˆ†ç±»',
  `VistNewlyTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'æœ€è¿‘åˆ°åº—æ—¶é—´, å½“å‰å…¥åœºæ—¶é—´',
  `ConsumptionAmount` int(10) unsigned DEFAULT '0' COMMENT 'å®¢æˆ·åŽ†å²æ¶ˆè´¹æ€»é¢',
  `MembershipClass` smallint(6) DEFAULT NULL COMMENT 'ä¼šå‘˜å¡ç±»åˆ«',
  `MembershipCardSurplus` int(10) unsigned DEFAULT '0' COMMENT 'ä¼šå‘˜å¡å½“å‰ä½™é¢',
  `CustomerState` tinyint(1) DEFAULT NULL COMMENT '0 æ–°å®¢æˆ·\n1å¾…æ›´æ–°å®¢æˆ·',
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcustomerinfo`
--

LOCK TABLES `tabcustomerinfo` WRITE;
/*!40000 ALTER TABLE `tabcustomerinfo` DISABLE KEYS */;
INSERT INTO `tabcustomerinfo` VALUES (2,'æŽå››','123','åœ°å€2',2,'2413525','6567','b@163.com',2,-1,2,'2014-02-26 11:05:00','2014-02-26 11:05:00',-1,'2014-02-26 11:05:00',0,-1,0,NULL),(4,'1','2','3',2,'5','6','d@163.com',1,1,2,'2014-02-25 11:53:06','2014-02-26 11:53:06',0,'2014-03-26 17:02:43',15,1,0,1),(5,'1','7','5',0,'2','3','4',0,0,0,'2014-03-07 16:10:46','2014-03-07 16:10:46',0,'2014-03-07 16:10:46',9,0,0,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:19:09','2014-03-13 16:19:09',NULL,'2014-03-13 16:19:09',0,NULL,0,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:19:09','2014-03-13 16:19:09',NULL,'2014-03-13 16:19:09',0,NULL,0,NULL),(8,'Test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:21:58','2014-03-13 16:21:58',NULL,'2014-03-13 16:21:58',0,NULL,0,NULL),(9,'Test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:21:58','2014-03-13 16:21:58',NULL,'2014-03-13 16:21:58',0,NULL,0,NULL),(10,'èŒƒæ°',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(11,'æœ±æ±Ÿ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(12,'åˆ˜åŠ›',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(13,'åˆ˜é¢–',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(14,'ç½—äº‘å‹‡',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(15,'ä½•æ¶¦æž—',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(16,'é»„å¹¿è½©',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(17,'é»„å†°å®¹',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(18,'å½­æ°¸ä¹…',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(19,'åˆ˜æ´ªå…µ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(20,'é’Ÿè¯—è£',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(21,'å¶æ™ºå…¨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(22,'å·å¸ˆ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(23,'ä¾¯æ–‡å‡¯',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(24,'è°­å† æ°',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(25,'ä¸ä¸º',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(26,'æ— ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(27,'æ–‡å‹‡',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(28,'é»„ä¿ŠåŠ›',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(29,'å´å·§',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(30,'æ–¹å‘è¯ä¸š',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(31,'ä¼å¼€ä¿Š',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(32,'é¥¶çšŽ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:05','2014-03-19 13:09:39',NULL,'2014-03-27 17:45:55',0,NULL,0,1),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:10','2014-03-19 13:09:51',NULL,'2014-03-27 17:46:02',0,NULL,0,1),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:15','2014-03-19 13:09:51',NULL,'2014-03-27 17:46:05',0,NULL,0,1),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:21','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:11',0,NULL,0,1),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:31','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:21',0,NULL,0,1),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:39','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:29',0,NULL,0,1),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:44','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:34',0,NULL,0,1),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:49','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:40',0,NULL,0,1),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:55','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:47',0,NULL,0,1),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:02','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:52',0,NULL,0,1),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:10','2014-03-19 13:09:52',NULL,'2014-03-27 17:47:00',0,NULL,0,1),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:27','2014-03-19 13:09:53',NULL,'2014-03-27 17:44:30',0,NULL,0,1),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:31','2014-03-19 13:09:53',NULL,'2014-03-27 17:41:51',0,NULL,0,1),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:38','2014-03-19 13:09:53',NULL,'2014-03-27 17:41:57',0,NULL,0,1),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:43','2014-03-19 13:09:54',NULL,'2014-04-01 15:19:40',0,NULL,0,1),(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:50','2014-03-19 13:09:55',NULL,'2014-04-01 15:19:48',0,NULL,0,1),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:52','2014-03-19 13:09:55',NULL,'2014-03-27 17:42:12',0,NULL,0,1),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:01','2014-03-19 13:09:55',NULL,'2014-03-27 17:42:20',0,NULL,0,1),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:04','2014-03-19 13:09:55',NULL,'2014-03-27 17:42:23',0,NULL,0,1),(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:11','2014-03-19 13:09:55',NULL,'2014-03-27 17:45:14',0,NULL,0,1),(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:24','2014-03-19 13:09:55',NULL,'2014-03-27 17:45:29',0,NULL,0,1),(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:31','2014-03-19 13:09:56',NULL,'1970-02-12 10:58:48',0,NULL,0,1),(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:35','2014-03-19 13:09:56',NULL,'2014-03-27 17:45:39',0,NULL,0,1),(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:42','2014-03-19 13:09:56',NULL,'2014-03-27 17:45:46',0,NULL,0,1),(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:46','2014-03-19 13:09:56',NULL,'2014-03-27 17:45:50',0,NULL,0,1),(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:00','2014-03-19 13:11:00',NULL,'2014-03-27 17:45:19',0,NULL,0,1),(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:05','2014-03-19 13:11:04',NULL,'2014-03-27 17:45:24',0,NULL,0,1),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:16','2014-03-19 13:11:17',NULL,'2014-03-27 17:45:35',0,NULL,0,1),(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:56','2014-03-19 13:11:56',NULL,'2014-03-27 17:46:15',0,NULL,0,1),(62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:09:26','2014-03-19 13:12:26',NULL,'2014-03-27 16:43:22',0,NULL,0,1),(63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:09:50','2014-03-19 13:12:49',NULL,'2014-03-27 17:44:24',0,NULL,0,1),(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:49:28','2014-03-19 13:52:56',NULL,'2014-03-25 17:12:00',0,NULL,0,1),(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:50:23','2014-03-19 13:53:20',NULL,'2014-03-25 17:40:24',0,NULL,0,1),(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:54:20','2014-03-19 13:57:19',NULL,'1970-02-12 10:54:20',0,NULL,0,0),(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:58:20','2014-03-19 14:01:19',NULL,'1970-02-12 10:58:20',0,NULL,0,0),(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-14 06:43:50','2014-03-21 09:47:04',NULL,'1970-02-14 06:43:50',0,NULL,0,0),(70,'dsf','','',-1,'','','',-1,-1,-1,'2014-03-21 14:08:24','2014-03-21 14:08:24',-1,'2014-03-21 14:08:24',0,-1,0,NULL);
/*!40000 ALTER TABLE `tabcustomerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabinoutimageinfo`
--

DROP TABLE IF EXISTS `tabinoutimageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabinoutimageinfo` (
  `RecordID` bigint(19) unsigned NOT NULL,
  `EnterImage` longblob,
  `LeaveImage` longblob,
  `EnterImagePath` varchar(1024) DEFAULT NULL,
  `LeaveImagePath` varchar(1024) DEFAULT NULL,
  `AddedTime` date DEFAULT NULL,
  `StoreStyle` tinyint(1) DEFAULT NULL COMMENT '1 Image / 0 Path',
  PRIMARY KEY (`RecordID`),
  CONSTRAINT `Image_Record_ID` FOREIGN KEY (`RecordID`) REFERENCES `tabinoutrecordinfo` (`RecordID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabinoutimageinfo`
--

LOCK TABLES `tabinoutimageinfo` WRITE;
/*!40000 ALTER TABLE `tabinoutimageinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabinoutimageinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabinoutrecordinfo`
--

DROP TABLE IF EXISTS `tabinoutrecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabinoutrecordinfo` (
  `RecordID` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `EnterTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'è¿›å…¥æ—¶é—´',
  `LeaveTime` datetime DEFAULT NULL COMMENT 'ç¦»å¼€æ—¶é—´',
  `EnterPlate` varchar(45) DEFAULT NULL COMMENT 'è¿›å…¥è½¦ç‰Œ',
  `LeavePlate` varchar(45) DEFAULT NULL COMMENT 'ç¦»å¼€è½¦ç‰Œ',
  `State` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0è¿›å…¥è®°å½•\n1è¿›å‡ºå®Œæ•´è®°å½•',
  PRIMARY KEY (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabinoutrecordinfo`
--

LOCK TABLES `tabinoutrecordinfo` WRITE;
/*!40000 ALTER TABLE `tabinoutrecordinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabinoutrecordinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabservicerecord`
--

DROP TABLE IF EXISTS `tabservicerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabservicerecord` (
  `ServiceID` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `PlateID` varchar(45) NOT NULL,
  `SubCategory` smallint(6) DEFAULT NULL,
  `Category` smallint(6) DEFAULT NULL COMMENT 'æœåŠ¡ç±»åˆ«',
  `InsuranceAmount` int(10) unsigned DEFAULT '0' COMMENT 'ä¿é™©é‡‘é¢',
  `ClaimAmount` int(10) unsigned DEFAULT '0' COMMENT 'ç´¢èµ”é‡‘é¢',
  `SettlementStyle` smallint(6) DEFAULT NULL COMMENT 'ç»“ç®—æ–¹å¼',
  `MaintanceStartTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'ç»´ä¿®èµ·å§‹æ—¶é—´',
  `MaintanceEndTime` datetime DEFAULT NULL COMMENT 'ç»´ä¿®æˆªè‡³æ—¶é—´',
  `PickupTime` datetime DEFAULT NULL COMMENT 'å–è½¦æ—¶é—´',
  `ServiceDepartment` smallint(6) DEFAULT NULL,
  `Maintanceman` smallint(6) DEFAULT NULL,
  `ServiceConsumptionAmount` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`ServiceID`),
  UNIQUE KEY `ServiceID_UNIQUE` (`ServiceID`),
  KEY `Service_Vehicle_ID_idx` (`PlateID`),
  CONSTRAINT `Service_Vehicle_ID` FOREIGN KEY (`PlateID`) REFERENCES `tabvehicleinfo` (`PlateID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabservicerecord`
--

LOCK TABLES `tabservicerecord` WRITE;
/*!40000 ALTER TABLE `tabservicerecord` DISABLE KEYS */;
INSERT INTO `tabservicerecord` VALUES (1,'æ¸F12345',1,0,0,0,1,'2014-03-26 13:27:04','2014-06-11 10:07:38','2014-08-11 10:07:38',1,1,0),(2,'æ¸F12345',2,1,3,4,1,'2014-03-26 13:27:44','2014-04-11 10:23:52','2014-05-11 10:23:52',3,1,5),(3,'æ¸F12345',2,1,1,2,1,'2014-03-12 11:13:34','2014-03-13 11:13:34','2014-03-14 11:13:34',2,0,5),(4,'æ¸F12345',1,0,1,2,1,'2014-03-11 11:17:12','2014-03-11 11:17:12','2014-03-11 11:17:12',1,0,3),(5,'æ¸F12345',-1,0,0,0,-1,'2014-03-14 14:41:12','2014-03-14 14:41:12','2014-03-14 14:41:12',-1,-1,1),(6,'å·B56789',-1,0,0,0,-1,'2014-03-20 16:30:18','2014-03-20 16:30:18','2014-03-20 16:30:18',-1,-1,0),(7,'å·B56789',-1,-1,0,0,-1,'2014-03-21 14:10:30','2014-03-21 14:10:30','2014-03-21 14:10:30',-1,-1,0),(8,'ç²¤BMW208',-1,-1,0,0,-1,'2014-03-26 17:03:15','2014-03-26 17:03:15','2014-03-26 17:03:15',-1,-1,0),(9,'ç²¤BMW208',-1,-1,0,0,-1,'2014-03-26 17:03:39','2014-03-26 17:03:39','2014-03-26 17:03:39',-1,-1,0);
/*!40000 ALTER TABLE `tabservicerecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `TabServiceRecord_AINS` AFTER INSERT ON TabServiceRecord FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin
	update TabCustomerInfo a, TabVehicleInfo b
	set a.ConsumptionAmount = a.ConsumptionAmount + new.ServiceConsumptionAmount,
	a.MembershipCardSurplus = 
			IF( a.MembershipCardSurplus - new.ServiceConsumptionAmount >= 0, 
				a.MembershipCardSurplus - new.ServiceConsumptionAmount, 0 )
	where a.CustomerID = b.CustomerID and b.PlateID = new.PlateID;

/*
	update TabCustomerInfo a, TabVehicleInfo b
	set a.MembershipCardSurplus = a.MembershipCardSurplus + 1
	where a.CustomerID = b.CustomerID and b.PlateID = new.PlateID and new.SettlementStyle = 1;
*/
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `TabServiceRecord_AUPD` AFTER UPDATE ON TabServiceRecord FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin
	if ( new.ServiceConsumptionAmount <> old.ServiceConsumptionAmount ) then
		update TabCustomerInfo a, TabVehicleInfo b 
		set a.ConsumptionAmount = a.ConsumptionAmount - old.ServiceConsumptionAmount + new.ServiceConsumptionAmount,
			a.MembershipCardSurplus = 
			IF( a.MembershipCardSurplus + old.ServiceConsumptionAmount - new.ServiceConsumptionAmount >= 0, 
				a.MembershipCardSurplus + old.ServiceConsumptionAmount - new.ServiceConsumptionAmount, 0 )
		where a.CustomerID = b.CustomerID and b.PlateID = old.PlateID;
	end if;

/*
	if ( new.SettlementStyle <> old.SettlementStyle ) then
		if ( 1 = old.SettlementStyle ) then
			update TabCustomerInfo a, TabVehicleInfo b
			set a.MembershipCardSurplus = a.MembershipCardSurplus - 1
			where a.CustomerID = b.CustomerID and b.PlateID = new.PlateID;
		else if( 1 = new.SettlementStyle ) then
				update TabCustomerInfo a, TabVehicleInfo b
				set a.MembershipCardSurplus = a.MembershipCardSurplus + 1
				where a.CustomerID = b.CustomerID and b.PlateID = new.PlateID;
			end if;
		end if;
	end if;
*/
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `TabServiceRecord_ADEL` AFTER DELETE ON TabServiceRecord FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin
	update TabCustomerInfo a, TabVehicleInfo b 
	set a.ConsumptionAmount = a.ConsumptionAmount - old.ServiceConsumptionAmount,
	a.MembershipCardSurplus = a.MembershipCardSurplus + old.ServiceConsumptionAmount
	where a.CustomerID = b.CustomerID and b.PlateID = old.PlateID;

/*
	update TabCustomerInfo a, TabVehicleInfo b
	set a.MembershipCardSurplus = a.MembershipCardSurplus - 1
	where a.CustomerID = b.CustomerID and b.PlateID = old.PlateID and old.SettlementStyle = 1;
*/
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tabuserinfo`
--

DROP TABLE IF EXISTS `tabuserinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabuserinfo` (
  `UserID` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Telphone` varchar(45) DEFAULT NULL,
  `Right` bigint(19) unsigned DEFAULT NULL COMMENT 'æƒé™',
  `Class` smallint(5) unsigned DEFAULT NULL,
  `Comment` varchar(1024) DEFAULT NULL,
  `LoginPwd` varchar(256) DEFAULT NULL,
  `InDeviceIP` varchar(45) DEFAULT NULL,
  `OutDeviceIP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabuserinfo`
--

LOCK TABLES `tabuserinfo` WRITE;
/*!40000 ALTER TABLE `tabuserinfo` DISABLE KEYS */;
INSERT INTO `tabuserinfo` VALUES (1,'Test1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabuserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabvehicleifinside`
--

DROP TABLE IF EXISTS `tabvehicleifinside`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabvehicleifinside` (
  `RecordID` bigint(19) unsigned NOT NULL,
  `EnterTime` varchar(45) DEFAULT NULL,
  `PlateID` varchar(45) NOT NULL,
  PRIMARY KEY (`PlateID`),
  KEY `Inside_Record_ID_idx` (`RecordID`),
  CONSTRAINT `Inside_Record_ID` FOREIGN KEY (`RecordID`) REFERENCES `tabinoutrecordinfo` (`RecordID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabvehicleifinside`
--

LOCK TABLES `tabvehicleifinside` WRITE;
/*!40000 ALTER TABLE `tabvehicleifinside` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabvehicleifinside` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabvehicleinfo`
--

DROP TABLE IF EXISTS `tabvehicleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabvehicleinfo` (
  `PlateID` varchar(45) NOT NULL COMMENT 'è½¦ç‰Œ',
  `CustomerID` bigint(19) unsigned NOT NULL,
  `Brand` smallint(6) DEFAULT NULL COMMENT 'å“ç‰Œ',
  `Series` smallint(6) DEFAULT NULL COMMENT 'è½¦ç³»',
  `Color` smallint(6) DEFAULT NULL COMMENT 'é¢œè‰²',
  `Feature` smallint(6) DEFAULT NULL COMMENT 'ç‰¹æ€§ \næ”¿åºœç”¨è½¦ã€ä¼ä¸šå…¬è½¦ã€ç§å®¶è½¦ç­‰',
  `BuyDate` date DEFAULT NULL COMMENT 'è´­ä¹°æ—¥æœŸ',
  `MaintenanceFirstDate` date DEFAULT NULL COMMENT 'é¦–ä¿å…»æ—¥',
  `MaintenanceNextDate` date DEFAULT NULL COMMENT 'ä¸‹æ¬¡ä¿å…»æ—¥',
  `AannualSurveyDate` date DEFAULT NULL COMMENT 'å¹´æ£€æ—¥',
  `CommercialInsuranceExpiration` date DEFAULT NULL COMMENT 'å•†ä¸šé™©åˆ°æœŸæ—¥',
  `MandatoryInsuranceExpiration` date DEFAULT NULL COMMENT 'äº¤å¼ºé™©åˆ°æœŸæ—¥',
  `Insurer` smallint(6) DEFAULT NULL COMMENT 'ä¿é™©å…¬å¸',
  `VistCount` int(10) unsigned DEFAULT '0' COMMENT 'æ¥åº—æ¬¡æ•°',
  `VehicleState` smallint(6) DEFAULT NULL COMMENT 'è½¦è¾†çŠ¶æ€',
  `MotorID` varchar(45) DEFAULT NULL COMMENT 'å‘åŠ¨æœºå·',
  `FrameID` varchar(45) DEFAULT NULL COMMENT 'è½¦æž¶å·',
  `Odometer` int(10) unsigned DEFAULT '0' COMMENT 'é‡Œç¨‹æ•°',
  `VehicleID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PlateID`),
  UNIQUE KEY `VehicleID_UNIQUE` (`VehicleID`),
  UNIQUE KEY `CustomerID_UNIQUE` (`CustomerID`),
  KEY `Vehicle_Customer_ID_idx` (`CustomerID`),
  CONSTRAINT `Vehicle_Customer_ID` FOREIGN KEY (`CustomerID`) REFERENCES `tabcustomerinfo` (`CustomerID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabvehicleinfo`
--

LOCK TABLES `tabvehicleinfo` WRITE;
/*!40000 ALTER TABLE `tabvehicleinfo` DISABLE KEYS */;
INSERT INTO `tabvehicleinfo` VALUES ('å·A039TV',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,26),('å·A17T76',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12),('å·A1CL35',32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,32),('å·A561CK',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,16),('å·A622YN',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,11),('å·A66Z32',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,19),('å·A67E76',15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15),('å·A8QP62',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,10),('å·AA2051',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,31),('å·AA261T',29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,29),('å·AB0Z95',27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,27),('å·AB9572',30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,30),('å·ACS339',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,22),('å·AD942Y',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,25),('å·AEA366',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,21),('å·AHB573',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,17),('å·AJP987',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,14),('å·AM125Y',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13),('å·AQ1Q86',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,18),('å·AS817S',28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,28),('å·AST035',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,24),('å·B56789',2,1,1,1,1,'2012-12-12','2012-12-13','2012-12-14','2012-12-15','2012-12-16','2012-12-17',2,2,2,'2','2',2,2),('å·C12F34',70,-1,-1,-1,-1,'2014-03-21','2014-03-21','2014-03-21','2014-03-21','2014-03-21','2014-03-21',-1,0,-1,'',NULL,0,70),('å·FR5353',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,20),('æ™‹F12345',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,7),('æ™‹F12346',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,9),('æ¸A12345',5,0,0,0,0,'2014-03-07','2014-03-07','2014-03-07','2014-03-07','2014-03-07','2014-03-07',0,12,0,'10',NULL,11,5),('æ¸F12345',4,2,2,3,2,'2012-12-12','2012-12-13','2012-12-14','2012-12-15','2012-12-16','2012-12-17',1,85,2,'8','9',10,4),('ç²¤B14808',55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,0,55),('ç²¤B1D502',64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,0,64),('ç²¤B1D5D2',34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,0,34),('ç²¤B2C720',38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,NULL,NULL,NULL,0,38),('ç²¤B3S961',49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,0,49),('ç²¤B6Q757',43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,0,43),('ç²¤B7A634',58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,0,58),('ç²¤B7F152',61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,0,61),('ç²¤B7F793',59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,0,59),('ç²¤B8HH43',23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,23),('ç²¤BB0138',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,0,35),('ç²¤BBR575',42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,0,42),('ç²¤BC0959',36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,0,36),('ç²¤BC4693',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,0,39),('ç²¤BCJ537',37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,0,37),('ç²¤BCL781',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,0,48),('ç²¤BCS936',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,0,45),('ç²¤BD6457',53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,0,53),('ç²¤BE9620',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,0,44),('ç²¤BEM399',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,NULL,NULL,NULL,0,47),('ç²¤BES309',60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,0,60),('ç²¤BFS309',54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,0,54),('ç²¤BHX476',51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,0,51),('ç²¤BK72D6',57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,0,57),('ç²¤BKK895',63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,0,63),('ç²¤BM5920',50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,0,50),('ç²¤BM59Z0',68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,68),('ç²¤BMW208',66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,66),('ç²¤BMW2D8',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,0,46),('ç²¤BU7344',33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,NULL,NULL,NULL,0,33),('ç²¤GE9620',65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,0,65),('ç²¤L05838',56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,0,56),('ç²¤SU7918',52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,NULL,NULL,NULL,0,52),('ç²¤ZAW47æ¸¯',40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,0,40),('ç²¤ZDT57A',62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,0,62),('ç²¤ZDT57æ¸¯',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,0,41),('è´µB3S961',67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,67),('è¾½F12345',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,6),('è¾½F12346',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,8);
/*!40000 ALTER TABLE `tabvehicleinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `viwcutomerallinfo`
--

DROP TABLE IF EXISTS `viwcutomerallinfo`;
/*!50001 DROP VIEW IF EXISTS `viwcutomerallinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viwcutomerallinfo` (
  `CustomerID` tinyint NOT NULL,
  `Name` tinyint NOT NULL,
  `CredentialsID` tinyint NOT NULL,
  `Address` tinyint NOT NULL,
  `District` tinyint NOT NULL,
  `MobilePhone` tinyint NOT NULL,
  `Landline` tinyint NOT NULL,
  `EMail` tinyint NOT NULL,
  `CustomerSource` tinyint NOT NULL,
  `CustomerDepartment` tinyint NOT NULL,
  `AccountExecutive` tinyint NOT NULL,
  `VistFirstTime` tinyint NOT NULL,
  `EntryTime` tinyint NOT NULL,
  `CustomerCategory` tinyint NOT NULL,
  `VistNewlyTime` tinyint NOT NULL,
  `ConsumptionAmount` tinyint NOT NULL,
  `MembershipClass` tinyint NOT NULL,
  `MembershipCardSurplus` tinyint NOT NULL,
  `CustomerState` tinyint NOT NULL,
  `PlateID` tinyint NOT NULL,
  `Brand` tinyint NOT NULL,
  `Series` tinyint NOT NULL,
  `Color` tinyint NOT NULL,
  `Feature` tinyint NOT NULL,
  `BuyDate` tinyint NOT NULL,
  `MaintenanceFirstDate` tinyint NOT NULL,
  `MaintenanceNextDate` tinyint NOT NULL,
  `AannualSurveyDate` tinyint NOT NULL,
  `CommercialInsuranceExpiration` tinyint NOT NULL,
  `MandatoryInsuranceExpiration` tinyint NOT NULL,
  `Insurer` tinyint NOT NULL,
  `VistCount` tinyint NOT NULL,
  `VehicleState` tinyint NOT NULL,
  `MotorID` tinyint NOT NULL,
  `FrameID` tinyint NOT NULL,
  `Odometer` tinyint NOT NULL,
  `ServiceID` tinyint NOT NULL,
  `Category` tinyint NOT NULL,
  `InsuranceAmount` tinyint NOT NULL,
  `ClaimAmount` tinyint NOT NULL,
  `SettlementStyle` tinyint NOT NULL,
  `MaintanceStartTime` tinyint NOT NULL,
  `MaintanceEndTime` tinyint NOT NULL,
  `PickupTime` tinyint NOT NULL,
  `SubCategory` tinyint NOT NULL,
  `ServiceDepartment` tinyint NOT NULL,
  `Maintanceman` tinyint NOT NULL,
  `ServiceConsumptionAmount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viwnewcustomer`
--

DROP TABLE IF EXISTS `viwnewcustomer`;
/*!50001 DROP VIEW IF EXISTS `viwnewcustomer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viwnewcustomer` (
  `CustomerID` tinyint NOT NULL,
  `Name` tinyint NOT NULL,
  `CredentialsID` tinyint NOT NULL,
  `Address` tinyint NOT NULL,
  `District` tinyint NOT NULL,
  `MobilePhone` tinyint NOT NULL,
  `Landline` tinyint NOT NULL,
  `EMail` tinyint NOT NULL,
  `CustomerSource` tinyint NOT NULL,
  `CustomerDepartment` tinyint NOT NULL,
  `AccountExecutive` tinyint NOT NULL,
  `VistFirstTime` tinyint NOT NULL,
  `EntryTime` tinyint NOT NULL,
  `CustomerCategory` tinyint NOT NULL,
  `VistNewlyTime` tinyint NOT NULL,
  `ConsumptionAmount` tinyint NOT NULL,
  `MembershipClass` tinyint NOT NULL,
  `MembershipCardSurplus` tinyint NOT NULL,
  `CustomerState` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viwupdatingcustomer`
--

DROP TABLE IF EXISTS `viwupdatingcustomer`;
/*!50001 DROP VIEW IF EXISTS `viwupdatingcustomer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viwupdatingcustomer` (
  `CustomerID` tinyint NOT NULL,
  `Name` tinyint NOT NULL,
  `CredentialsID` tinyint NOT NULL,
  `Address` tinyint NOT NULL,
  `District` tinyint NOT NULL,
  `MobilePhone` tinyint NOT NULL,
  `Landline` tinyint NOT NULL,
  `EMail` tinyint NOT NULL,
  `CustomerSource` tinyint NOT NULL,
  `CustomerDepartment` tinyint NOT NULL,
  `AccountExecutive` tinyint NOT NULL,
  `VistFirstTime` tinyint NOT NULL,
  `EntryTime` tinyint NOT NULL,
  `CustomerCategory` tinyint NOT NULL,
  `VistNewlyTime` tinyint NOT NULL,
  `ConsumptionAmount` tinyint NOT NULL,
  `MembershipClass` tinyint NOT NULL,
  `MembershipCardSurplus` tinyint NOT NULL,
  `CustomerState` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `parkcenterdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `parkcenterdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `parkcenterdb`;

--
-- Table structure for table `tabcardinfo`
--

DROP TABLE IF EXISTS `tabcardinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcardinfo` (
  `CardID` varchar(45) NOT NULL COMMENT 'æ³¨å†Œå¡æ—¶ï¼Œé»˜è®¤æŽˆæ‰€æœ‰æƒé™ / è§¦å‘å™¨',
  `CardType` tinyint(4) NOT NULL COMMENT '0 Month 1 Save 2 Time 3 Other',
  `CardState` tinyint(4) NOT NULL COMMENT '0 Nornal 1 Lost',
  `CardSelfID` varchar(45) DEFAULT NULL,
  `CardCreator` int(10) unsigned NOT NULL,
  `CardComment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CardID`),
  KEY `Card_Operator_ID_idx` (`CardCreator`),
  CONSTRAINT `Card_Operator_ID` FOREIGN KEY (`CardCreator`) REFERENCES `taboperatorinfo` (`OperatorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcardinfo`
--

LOCK TABLES `tabcardinfo` WRITE;
/*!40000 ALTER TABLE `tabcardinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabcardinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabcardright`
--

DROP TABLE IF EXISTS `tabcardright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcardright` (
  `CardID` varchar(45) NOT NULL,
  `ChannelID` bigint(20) unsigned NOT NULL,
  `StartTime` time NOT NULL DEFAULT '00:00:00',
  `EndTime` time NOT NULL DEFAULT '23:59:59',
  PRIMARY KEY (`CardID`,`ChannelID`),
  KEY `Card_Right_ID_idx` (`CardID`),
  KEY `Channel_Right_ID_idx` (`ChannelID`),
  CONSTRAINT `Card_Right_ID` FOREIGN KEY (`CardID`) REFERENCES `tabcardinfo` (`CardID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Channel_Right_ID` FOREIGN KEY (`ChannelID`) REFERENCES `tabchannelinfo` (`NodeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcardright`
--

LOCK TABLES `tabcardright` WRITE;
/*!40000 ALTER TABLE `tabcardright` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabcardright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabchannelinfo`
--

DROP TABLE IF EXISTS `tabchannelinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabchannelinfo` (
  `NodeID` bigint(20) unsigned NOT NULL,
  `DeviceCanAddress` smallint(6) NOT NULL DEFAULT '0',
  `IpcIP` varchar(45) NOT NULL DEFAULT '127.0.0.1' COMMENT 'ç½‘ç»œç›¸æœº IP',
  `HostIP` varchar(45) NOT NULL DEFAULT '127.0.0.1' COMMENT 'æŽ§åˆ¶æœº IP',
  `AuxIpcIP` varchar(45) NOT NULL DEFAULT '127.0.0.1' COMMENT 'è¾…åŠ©ç½‘ç»œç›¸æœº IP',
  PRIMARY KEY (`NodeID`),
  CONSTRAINT `Tree_Channel_ID` FOREIGN KEY (`NodeID`) REFERENCES `tabparktreeinfo` (`NodeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabchannelinfo`
--

LOCK TABLES `tabchannelinfo` WRITE;
/*!40000 ALTER TABLE `tabchannelinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabchannelinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabcommondatainfo`
--

DROP TABLE IF EXISTS `tabcommondatainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcommondatainfo` (
  `ValueID` tinyint(4) NOT NULL,
  `Value` varchar(45) NOT NULL,
  `DataType` varchar(45) NOT NULL COMMENT 'Card / 0æœˆç§Ÿå¡ 1 å‚¨å€¼å¡ 2 è®¡æ—¶å¡ 3 å…¶ä»–å¡',
  PRIMARY KEY (`DataType`,`ValueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcommondatainfo`
--

LOCK TABLES `tabcommondatainfo` WRITE;
/*!40000 ALTER TABLE `tabcommondatainfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabcommondatainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabfeerateinfo`
--

DROP TABLE IF EXISTS `tabfeerateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabfeerateinfo` (
  `Rule` varchar(1024) DEFAULT NULL COMMENT 'XMLè¡¨è¾¾',
  `VehicleType` tinyint(3) unsigned NOT NULL,
  `FeeRateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`FeeRateID`),
  UNIQUE KEY `VehicleType_UNIQUE` (`VehicleType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabfeerateinfo`
--

LOCK TABLES `tabfeerateinfo` WRITE;
/*!40000 ALTER TABLE `tabfeerateinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabfeerateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabfeerecordinfo`
--

DROP TABLE IF EXISTS `tabfeerecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabfeerecordinfo` (
  `OperatorID` int(10) unsigned NOT NULL COMMENT 'ç™»é™†ç”¨æˆ·ID',
  `RecordID` bigint(20) unsigned NOT NULL COMMENT 'è¿›å‡ºè®°å½•ID',
  `FeeTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Payment` float NOT NULL DEFAULT '0' COMMENT 'åº”æ”¶è´¹',
  `FeeReceivable` varchar(45) NOT NULL DEFAULT '0.0' COMMENT 'å®žæ”¶è´¹',
  PRIMARY KEY (`RecordID`),
  KEY `Operator_Fee_ID_idx` (`OperatorID`),
  CONSTRAINT `Operator_Fee_ID` FOREIGN KEY (`OperatorID`) REFERENCES `taboperatorinfo` (`OperatorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Record_Fee_ID` FOREIGN KEY (`RecordID`) REFERENCES `tabinoutrecordinfo` (`RecordID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabfeerecordinfo`
--

LOCK TABLES `tabfeerecordinfo` WRITE;
/*!40000 ALTER TABLE `tabfeerecordinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabfeerecordinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabgarageingaragerecordinfo`
--

DROP TABLE IF EXISTS `tabgarageingaragerecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabgarageingaragerecordinfo` (
  `RecordID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `EnterChannel` smallint(5) unsigned NOT NULL,
  `LeaveChannel` smallint(5) unsigned DEFAULT NULL,
  `ParkID` varchar(45) DEFAULT NULL,
  `EnterPlate` varchar(45) DEFAULT NULL,
  `LeavePlate` varchar(45) DEFAULT NULL,
  `EnterTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LeaveTime` datetime DEFAULT NULL,
  `CardPlateID` varchar(45) DEFAULT NULL,
  `Level` tinyint(3) unsigned NOT NULL COMMENT 'å‡ çº§å†…åº“',
  `State` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabgarageingaragerecordinfo`
--

LOCK TABLES `tabgarageingaragerecordinfo` WRITE;
/*!40000 ALTER TABLE `tabgarageingaragerecordinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabgarageingaragerecordinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabinoutimageinfo`
--

DROP TABLE IF EXISTS `tabinoutimageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabinoutimageinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `EnterImage` longblob,
  `EnterImagePath` varchar(1024) DEFAULT NULL,
  `LeaveImage` longblob,
  `LeaveImagePath` varchar(1024) DEFAULT NULL,
  `AddedTime` date NOT NULL COMMENT 'Record Insert Date',
  `StoreStyle` tinyint(1) DEFAULT NULL COMMENT '1 Image / 0 Path',
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID_UNIQUE` (`RecordID`),
  CONSTRAINT `Record_Image_ID` FOREIGN KEY (`RecordID`) REFERENCES `tabinoutrecordinfo` (`RecordID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabinoutimageinfo`
--

LOCK TABLES `tabinoutimageinfo` WRITE;
/*!40000 ALTER TABLE `tabinoutimageinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabinoutimageinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabinoutrecordinfo`
--

DROP TABLE IF EXISTS `tabinoutrecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabinoutrecordinfo` (
  `RecordID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `EnterTime` datetime NOT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  `EnterPlate` varchar(45) DEFAULT NULL,
  `LeavePlate` varchar(45) DEFAULT NULL,
  `CardPlateID` varchar(45) DEFAULT NULL COMMENT 'æœ‰å¡æ¨¡å¼ å¡å·\næ— å¡æ¨¡å¼ è½¦ç‰Œå·',
  `State` tinyint(3) unsigned DEFAULT NULL COMMENT 'è¿›å‡ºé…å¯¹\n0è¡¨ç¤ºæ˜¯è¿›å…¥è®°å½• \n1è¡¨ç¤ºè¿›å‡ºå®Œæ•´è®°å½•\n\nè¿›å‡ºä¸é…å¯¹\n2æœˆç§Ÿå¡MIMOè¿›è®°å½•\n3æœˆç§Ÿå¡MIMOå‡ºè®°å½•',
  `EnterChannel` smallint(5) unsigned NOT NULL COMMENT 'ID OR Name ?',
  `LeaveChannel` smallint(5) unsigned DEFAULT NULL COMMENT 'ID OR Name ?',
  `ParkID` varchar(45) DEFAULT NULL COMMENT '51010700000001',
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID_UNIQUE` (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabinoutrecordinfo`
--

LOCK TABLES `tabinoutrecordinfo` WRITE;
/*!40000 ALTER TABLE `tabinoutrecordinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabinoutrecordinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabinternalinoutimageinfo`
--

DROP TABLE IF EXISTS `tabinternalinoutimageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabinternalinoutimageinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `EnterImage` longblob,
  `LeaveImage` longblob,
  `EnterImagePath` varchar(1024) DEFAULT NULL,
  `LeaveImagePath` varchar(1024) DEFAULT NULL,
  `AddedTime` date NOT NULL COMMENT 'Record Insert Date',
  `StoreStyle` tinyint(1) DEFAULT NULL COMMENT '0 Image / 1 Path',
  PRIMARY KEY (`RecordID`),
  UNIQUE KEY `RecordID_UNIQUE` (`RecordID`),
  CONSTRAINT `InternalRecord_Image_ID` FOREIGN KEY (`RecordID`) REFERENCES `tabgarageingaragerecordinfo` (`RecordID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabinternalinoutimageinfo`
--

LOCK TABLES `tabinternalinoutimageinfo` WRITE;
/*!40000 ALTER TABLE `tabinternalinoutimageinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabinternalinoutimageinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabmonthcardinfo`
--

DROP TABLE IF EXISTS `tabmonthcardinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabmonthcardinfo` (
  `CardID` varchar(45) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `MIMO` tinyint(1) DEFAULT '0',
  `EnterMustCard` tinyint(1) DEFAULT '0',
  `LeaveMustCard` tinyint(1) DEFAULT '0',
  `OwnerID` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`CardID`),
  KEY `Owner_Month_ID_idx` (`OwnerID`),
  CONSTRAINT `Card_Month_ID` FOREIGN KEY (`CardID`) REFERENCES `tabcardinfo` (`CardID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `Owner_Month_ID` FOREIGN KEY (`OwnerID`) REFERENCES `tabownerinfo` (`OwnerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabmonthcardinfo`
--

LOCK TABLES `tabmonthcardinfo` WRITE;
/*!40000 ALTER TABLE `tabmonthcardinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabmonthcardinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabnamelistinfo`
--

DROP TABLE IF EXISTS `tabnamelistinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabnamelistinfo` (
  `Plate` varchar(45) NOT NULL,
  `NamelistType` tinyint(3) unsigned NOT NULL COMMENT '0 Blacklist 1 Greylist 2 Whitelist ',
  `SubNamelistType` tinyint(3) unsigned DEFAULT NULL COMMENT 'NamelistType 0\n\n0 å‡è½¦ç‰Œè½¦ 1 é»‘è½¦ç‰Œè½¦ 2å¥—ç‰Œè½¦',
  PRIMARY KEY (`Plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabnamelistinfo`
--

LOCK TABLES `tabnamelistinfo` WRITE;
/*!40000 ALTER TABLE `tabnamelistinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabnamelistinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taboperatorinfo`
--

DROP TABLE IF EXISTS `taboperatorinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taboperatorinfo` (
  `OperatorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EmployeeID` varchar(45) DEFAULT NULL COMMENT 'å‘˜å·¥å¡ ä¸èƒ½ä½œä¸ºè½¦åœºç”¨æˆ·å¡å·',
  `OperatorName` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Telphone` varchar(45) DEFAULT NULL,
  `Identity` varchar(45) DEFAULT NULL,
  `Pwd` varchar(45) NOT NULL COMMENT 'åŠ å¯†',
  `Role` varchar(1024) DEFAULT NULL COMMENT '1,2,3,4,6,88,8999',
  PRIMARY KEY (`OperatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taboperatorinfo`
--

LOCK TABLES `taboperatorinfo` WRITE;
/*!40000 ALTER TABLE `taboperatorinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `taboperatorinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabownerinfo`
--

DROP TABLE IF EXISTS `tabownerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabownerinfo` (
  `OwnerID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `OwnerName` varchar(45) NOT NULL DEFAULT 'æœªçŸ¥',
  `OwnerTelphone` varchar(45) DEFAULT NULL,
  `OwnerDriverID` varchar(45) DEFAULT NULL,
  `OwnerIdentity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabownerinfo`
--

LOCK TABLES `tabownerinfo` WRITE;
/*!40000 ALTER TABLE `tabownerinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabownerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabparkinfo`
--

DROP TABLE IF EXISTS `tabparkinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabparkinfo` (
  `NodeID` bigint(20) unsigned NOT NULL,
  `ParkID` varchar(45) NOT NULL COMMENT '51010700000001 æ ¹æ®è¡Œæ”¿åŒºåŸŸç¼–å·',
  `ParkingNumber` int(10) unsigned DEFAULT '0',
  `UsedSpace` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`NodeID`),
  UNIQUE KEY `ParkID_UNIQUE` (`ParkID`),
  CONSTRAINT `Tree_Park_ID` FOREIGN KEY (`NodeID`) REFERENCES `tabparktreeinfo` (`NodeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabparkinfo`
--

LOCK TABLES `tabparkinfo` WRITE;
/*!40000 ALTER TABLE `tabparkinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabparkinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabparktreeinfo`
--

DROP TABLE IF EXISTS `tabparktreeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabparktreeinfo` (
  `NodeID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NodeName` varchar(45) NOT NULL COMMENT 'åœè½¦åœºå é€šé“å',
  `NodeType` tinyint(4) NOT NULL COMMENT '0 Park  1 Channel',
  `ParentNodeID` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`NodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabparktreeinfo`
--

LOCK TABLES `tabparktreeinfo` WRITE;
/*!40000 ALTER TABLE `tabparktreeinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabparktreeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabparkvehiclefeerateinfo`
--

DROP TABLE IF EXISTS `tabparkvehiclefeerateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabparkvehiclefeerateinfo` (
  `ParkNodeID` bigint(20) unsigned NOT NULL,
  `FeeRateID` int(10) unsigned NOT NULL,
  `Comment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ParkNodeID`,`FeeRateID`),
  KEY `Park_VehicleFeeRate_ID_idx` (`ParkNodeID`),
  KEY `Fee_VehicleFeeRate_ID_idx` (`FeeRateID`),
  CONSTRAINT `Fee_VehicleFeeRate_ID` FOREIGN KEY (`FeeRateID`) REFERENCES `tabfeerateinfo` (`FeeRateID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Park_VehicleFeeRate_ID` FOREIGN KEY (`ParkNodeID`) REFERENCES `tabparkinfo` (`NodeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabparkvehiclefeerateinfo`
--

LOCK TABLES `tabparkvehiclefeerateinfo` WRITE;
/*!40000 ALTER TABLE `tabparkvehiclefeerateinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabparkvehiclefeerateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabrebateinfo`
--

DROP TABLE IF EXISTS `tabrebateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabrebateinfo` (
  `RebateID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'æŠ˜æ‰£ID',
  `Name` varchar(45) NOT NULL COMMENT 'æŠ˜æ‰£å',
  `Flag` tinyint(3) unsigned NOT NULL COMMENT 'æŠ˜æ‰£æ–¹æ³• \n0åŠ  1å‡ 2ä¹˜ 3 é™¤ ',
  `Detail` varchar(1024) NOT NULL COMMENT 'æè¿°',
  `Value` float NOT NULL DEFAULT '0' COMMENT 'æŠ˜æ‰£å€¼',
  PRIMARY KEY (`RebateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabrebateinfo`
--

LOCK TABLES `tabrebateinfo` WRITE;
/*!40000 ALTER TABLE `tabrebateinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabrebateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabrechargerecordinfo`
--

DROP TABLE IF EXISTS `tabrechargerecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabrechargerecordinfo` (
  `RecordID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `FeeNumber` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CardID` varchar(45) NOT NULL,
  `OperatorID` int(10) unsigned NOT NULL,
  `TimeLength` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'ç»­è´¹æ—¶é•¿',
  `FeeTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ç»­è´¹æ—¶é—´',
  PRIMARY KEY (`RecordID`),
  KEY `Card_Recharge_ID_idx` (`CardID`),
  KEY `Operator_Recharge_ID_idx` (`OperatorID`),
  CONSTRAINT `Card_Recharge_ID` FOREIGN KEY (`CardID`) REFERENCES `tabcardinfo` (`CardID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Operator_Recharge_ID` FOREIGN KEY (`OperatorID`) REFERENCES `taboperatorinfo` (`OperatorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabrechargerecordinfo`
--

LOCK TABLES `tabrechargerecordinfo` WRITE;
/*!40000 ALTER TABLE `tabrechargerecordinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabrechargerecordinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabrolerightinfo`
--

DROP TABLE IF EXISTS `tabrolerightinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabrolerightinfo` (
  `RoleID` int(11) NOT NULL,
  `Right` bigint(20) unsigned NOT NULL COMMENT 'ä½è¡¨è¾¾',
  `Comment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabrolerightinfo`
--

LOCK TABLES `tabrolerightinfo` WRITE;
/*!40000 ALTER TABLE `tabrolerightinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabrolerightinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabsavecardinfo`
--

DROP TABLE IF EXISTS `tabsavecardinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabsavecardinfo` (
  `CardID` varchar(45) NOT NULL,
  `CardFee` smallint(5) unsigned DEFAULT '0' COMMENT 'Charge Value',
  `VehicleType` tinyint(4) DEFAULT NULL COMMENT 'Fee Standard\n\næ•°æ®å†—ä½™ä¸€ä¸‹ï¼Œä½†æ˜¯ä»¥åŽçš„å¤„ç†æ›´ç®€å•',
  `CardFeeSurplus` smallint(5) unsigned DEFAULT '0',
  `EnterMustCard` tinyint(1) DEFAULT '0',
  `LeaveMustCard` tinyint(1) DEFAULT '0',
  `OwnerID` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`CardID`),
  KEY `Owner_Save_ID_idx` (`OwnerID`),
  CONSTRAINT `Card_Save_ID` FOREIGN KEY (`CardID`) REFERENCES `tabcardinfo` (`CardID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Owner_Save_ID` FOREIGN KEY (`OwnerID`) REFERENCES `tabownerinfo` (`OwnerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabsavecardinfo`
--

LOCK TABLES `tabsavecardinfo` WRITE;
/*!40000 ALTER TABLE `tabsavecardinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabsavecardinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabsyslog`
--

DROP TABLE IF EXISTS `tabsyslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabsyslog` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `OperatorID` int(10) unsigned DEFAULT NULL,
  `LogImage` longblob,
  `LogInfo` varchar(1024) DEFAULT NULL,
  `LogType` tinyint(3) unsigned NOT NULL COMMENT '0 1 2 3 ',
  `LogTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LogImagePath` varchar(1024) DEFAULT NULL,
  `StoreStyle` tinyint(1) DEFAULT NULL COMMENT '1 Image 0 Path',
  PRIMARY KEY (`LogID`),
  KEY `Operator_Log_ID_idx` (`OperatorID`),
  CONSTRAINT `Operator_Log_ID` FOREIGN KEY (`OperatorID`) REFERENCES `taboperatorinfo` (`OperatorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabsyslog`
--

LOCK TABLES `tabsyslog` WRITE;
/*!40000 ALTER TABLE `tabsyslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabsyslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabtimecardinfo`
--

DROP TABLE IF EXISTS `tabtimecardinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabtimecardinfo` (
  `CardID` varchar(45) NOT NULL,
  `VehicleType` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`CardID`),
  CONSTRAINT `Card_Time_ID` FOREIGN KEY (`CardID`) REFERENCES `tabcardinfo` (`CardID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabtimecardinfo`
--

LOCK TABLES `tabtimecardinfo` WRITE;
/*!40000 ALTER TABLE `tabtimecardinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabtimecardinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabvehicleifinside`
--

DROP TABLE IF EXISTS `tabvehicleifinside`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabvehicleifinside` (
  `CardPlateID` varchar(45) NOT NULL COMMENT 'æœ‰å¡æ¨¡å¼ å¡å·\næ— å¡æ¨¡å¼ è½¦ç‰Œå·',
  `EnterTime` varchar(45) NOT NULL,
  `RecordID` bigint(20) unsigned NOT NULL COMMENT 'å¤–åº“è®°å½•ID',
  `InternalRecordID1` bigint(20) unsigned DEFAULT NULL COMMENT 'å†…åº“è®°å½•ID\n\næ•°å­—ä»£è¡¨å†…åº“çº§åˆ« è€ƒäº†6çº§å†…åº“',
  `InternalRecordID2` bigint(20) unsigned DEFAULT NULL COMMENT 'å†…åº“è®°å½•ID',
  `InternalRecordID3` bigint(20) unsigned DEFAULT NULL COMMENT 'å†…åº“è®°å½•ID',
  `InternalRecordID4` bigint(20) unsigned DEFAULT NULL COMMENT 'å†…åº“è®°å½•ID',
  `InternalRecordID5` bigint(20) unsigned DEFAULT NULL COMMENT 'å†…åº“è®°å½•ID',
  `InternalRecordID6` bigint(20) unsigned DEFAULT NULL COMMENT 'å†…åº“è®°å½•ID',
  PRIMARY KEY (`CardPlateID`),
  KEY `Record_Inside_ID_idx` (`RecordID`),
  CONSTRAINT `Record_Inside_ID` FOREIGN KEY (`RecordID`) REFERENCES `tabinoutrecordinfo` (`RecordID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabvehicleifinside`
--

LOCK TABLES `tabvehicleifinside` WRITE;
/*!40000 ALTER TABLE `tabvehicleifinside` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabvehicleifinside` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabvehicleinfo`
--

DROP TABLE IF EXISTS `tabvehicleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabvehicleinfo` (
  `CardID` varchar(45) NOT NULL,
  `OwnerID` bigint(20) unsigned NOT NULL,
  `PlateID` varchar(45) NOT NULL COMMENT 'ä¸€å¡å¤šè½¦æ—¶ï¼Œè¦è€ƒè™‘è½¦åž‹æ˜¯å¦ä¸€æ ·',
  `VehicleType` tinyint(3) unsigned NOT NULL COMMENT '0 å¤§åž‹è½¦ 1ä¸­åž‹è½¦ 2 å°åž‹è½¦  3å…è´¹è½¦ 4 ä¸‰è½®è½¦ 5 æ‘©æ‰˜è½¦ 6è‡ªè¡Œè½¦ 7 å…¶ä»–è½¦',
  `Displacement` tinyint(3) unsigned DEFAULT NULL COMMENT 'æŽ’é‡ç±»åž‹ 1.0ä¸‹ 1.0-2.0 2.0-3.0',
  PRIMARY KEY (`PlateID`),
  KEY `Card_Vehicle_ID_idx` (`CardID`),
  KEY `Owner_Vehicle_ID` (`OwnerID`),
  CONSTRAINT `Card_Vehicle_ID` FOREIGN KEY (`CardID`) REFERENCES `tabcardinfo` (`CardID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Owner_Vehicle_ID` FOREIGN KEY (`OwnerID`) REFERENCES `tabownerinfo` (`OwnerID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabvehicleinfo`
--

LOCK TABLES `tabvehicleinfo` WRITE;
/*!40000 ALTER TABLE `tabvehicleinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabvehicleinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `streetroadpark`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `streetroadpark` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `streetroadpark`;

--
-- Table structure for table `tabadministrativeinfo`
--

DROP TABLE IF EXISTS `tabadministrativeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabadministrativeinfo` (
  `AdministrativeID` varchar(6) NOT NULL,
  `AdministrativeName` varchar(45) NOT NULL,
  `AdministrativeComments` varchar(45) DEFAULT NULL,
  `AdministrativeParentID` varchar(6) NOT NULL,
  `AdministrativeType` enum('Province','City','District') NOT NULL,
  PRIMARY KEY (`AdministrativeID`),
  UNIQUE KEY `AdministrativeName_UNIQUE` (`AdministrativeName`),
  UNIQUE KEY `AdministrativeID_UNIQUE` (`AdministrativeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabadministrativeinfo`
--

LOCK TABLES `tabadministrativeinfo` WRITE;
/*!40000 ALTER TABLE `tabadministrativeinfo` DISABLE KEYS */;
INSERT INTO `tabadministrativeinfo` VALUES ('510000','å››å·çœ',NULL,'0','Province'),('510100','æˆéƒ½å¸‚',NULL,'510000','City'),('510107','æ­¦ä¾¯åŒº',NULL,'510100','District');
/*!40000 ALTER TABLE `tabadministrativeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabcarlocationinfo`
--

DROP TABLE IF EXISTS `tabcarlocationinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcarlocationinfo` (
  `LocationID` varchar(16) NOT NULL COMMENT '5101070001001001',
  `HaveCar` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'true false',
  `LocationName` varchar(45) NOT NULL COMMENT 'è½¦ä½å',
  `Comments` varchar(45) DEFAULT NULL,
  `InCount` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'è½¦ä½è¿›å…¥è½¦è¾†æ•°',
  `OutCount` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'è½¦ä½ç¦»å¼€è½¦è¾†æ•°',
  `EnterTime` datetime DEFAULT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  PRIMARY KEY (`LocationID`),
  UNIQUE KEY `LocationName_UNIQUE` (`LocationName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcarlocationinfo`
--

LOCK TABLES `tabcarlocationinfo` WRITE;
/*!40000 ALTER TABLE `tabcarlocationinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabcarlocationinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabcenteruserinfo`
--

DROP TABLE IF EXISTS `tabcenteruserinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcenteruserinfo` (
  `UserJobNumber` varchar(50) NOT NULL,
  `UserPwd` varchar(45) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `ParkID` varchar(10) NOT NULL,
  PRIMARY KEY (`UserJobNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcenteruserinfo`
--

LOCK TABLES `tabcenteruserinfo` WRITE;
/*!40000 ALTER TABLE `tabcenteruserinfo` DISABLE KEYS */;
INSERT INTO `tabcenteruserinfo` VALUES ('001','OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=','å…³ç¾½','5107010001'),('002','OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=','km','5107010001');
/*!40000 ALTER TABLE `tabcenteruserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabdetectorinfo`
--

DROP TABLE IF EXISTS `tabdetectorinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabdetectorinfo` (
  `ParkReceiverID` varchar(13) NOT NULL,
  `DetectorID` varchar(3) NOT NULL COMMENT 'æ¯ä¸ªæŽ¥å—ç®¡ç†çš„æŽ¢æµ‹å™¨IDç¼–å·å”¯ä¸€ï¼Œåˆ†æ®µç®¡ç†\nR0 1-30\nR1 31-50\nR2 51-75\nR3 76-99',
  `DetectorChannelID` tinyint(3) unsigned DEFAULT '0',
  `DetectorComments` varchar(45) DEFAULT NULL,
  `Threshold` smallint(5) unsigned DEFAULT '0',
  `DelayTime` smallint(6) DEFAULT '0',
  `DetectorReset` bit(1) NOT NULL DEFAULT b'0',
  `ReceiverDetectorID` varchar(16) NOT NULL COMMENT 'ParkID+ReceiverID+DetectorID\nTrigger==>ParkID ReceiverID DetectorID',
  PRIMARY KEY (`ReceiverDetectorID`),
  UNIQUE KEY `ReceiverDetectorID_UNIQUE` (`ReceiverDetectorID`),
  KEY `ReceiverDetector_idx` (`ParkReceiverID`),
  CONSTRAINT `ReceiverDetector` FOREIGN KEY (`ParkReceiverID`) REFERENCES `tabreceiverinfo` (`ParkReceiverID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabdetectorinfo`
--

LOCK TABLES `tabdetectorinfo` WRITE;
/*!40000 ALTER TABLE `tabdetectorinfo` DISABLE KEYS */;
INSERT INTO `tabdetectorinfo` VALUES ('5107010001001','001',0,NULL,0,0,'\0','5107010001001001'),('5107010001001','002',0,NULL,0,0,'\0','5107010001001002'),('5107010001001','003',0,NULL,0,0,'\0','5107010001001003'),('5107010001001','004',0,NULL,0,0,'\0','5107010001001004'),('5107010001001','005',0,NULL,0,0,'\0','5107010001001005'),('5107010001001','006',0,NULL,0,0,'\0','5107010001001006'),('5107010001001','007',0,NULL,0,0,'\0','5107010001001007'),('5107010001001','008',0,NULL,0,0,'\0','5107010001001008'),('5107010001001','009',0,NULL,0,0,'\0','5107010001001009'),('5107010001001','010',0,NULL,0,0,'\0','5107010001001010'),('5107010001001','011',0,NULL,0,0,'\0','5107010001001011'),('5107010001001','012',0,NULL,0,0,'\0','5107010001001012'),('5107010001001','013',0,NULL,0,0,'\0','5107010001001013'),('5107010001001','014',0,NULL,0,0,'\0','5107010001001014'),('5107010001001','015',0,NULL,0,0,'\0','5107010001001015'),('5107010001001','016',0,NULL,0,0,'\0','5107010001001016'),('5107010001001','017',0,NULL,0,0,'\0','5107010001001017'),('5107010001001','018',0,NULL,0,0,'\0','5107010001001018'),('5107010001001','019',0,NULL,0,0,'\0','5107010001001019'),('5107010001001','020',0,NULL,0,0,'\0','5107010001001020'),('5107010001001','021',0,NULL,0,0,'\0','5107010001001021'),('5107010001001','022',0,NULL,0,0,'\0','5107010001001022'),('5107010001001','023',0,NULL,0,0,'\0','5107010001001023'),('5107010001001','024',0,NULL,0,0,'\0','5107010001001024'),('5107010001001','025',0,NULL,0,0,'\0','5107010001001025'),('5107010001001','026',0,NULL,0,0,'\0','5107010001001026'),('5107010001001','027',0,NULL,0,0,'\0','5107010001001027'),('5107010001001','028',0,NULL,0,0,'\0','5107010001001028'),('5107010001001','029',0,NULL,0,0,'\0','5107010001001029'),('5107010001001','030',0,NULL,0,0,'\0','5107010001001030'),('5107010001001','031',0,NULL,0,0,'\0','5107010001001031'),('5107010001001','032',0,NULL,0,0,'\0','5107010001001032'),('5107010001001','033',0,NULL,0,0,'\0','5107010001001033'),('5107010001001','034',0,NULL,0,0,'\0','5107010001001034'),('5107010001001','035',0,NULL,0,0,'\0','5107010001001035'),('5107010001001','036',0,NULL,0,0,'\0','5107010001001036'),('5107010001001','037',0,NULL,0,0,'\0','5107010001001037'),('5107010001001','038',0,NULL,0,0,'\0','5107010001001038'),('5107010001001','039',0,NULL,0,0,'\0','5107010001001039'),('5107010001001','040',0,NULL,0,0,'\0','5107010001001040'),('5107010001001','041',0,NULL,0,0,'\0','5107010001001041'),('5107010001001','042',0,NULL,0,0,'\0','5107010001001042'),('5107010001001','043',0,NULL,0,0,'\0','5107010001001043'),('5107010001001','044',0,NULL,0,0,'\0','5107010001001044'),('5107010001001','045',0,NULL,0,0,'\0','5107010001001045'),('5107010001001','046',0,NULL,0,0,'\0','5107010001001046'),('5107010001001','047',0,NULL,0,0,'\0','5107010001001047'),('5107010001001','048',0,NULL,0,0,'\0','5107010001001048'),('5107010001001','049',0,NULL,0,0,'\0','5107010001001049'),('5107010001001','050',0,NULL,0,0,'\0','5107010001001050'),('5107010001001','051',0,NULL,0,0,'\0','5107010001001051'),('5107010001001','052',0,NULL,0,0,'\0','5107010001001052'),('5107010001001','053',0,NULL,0,0,'\0','5107010001001053'),('5107010001001','054',0,NULL,0,0,'\0','5107010001001054'),('5107010001001','055',0,NULL,0,0,'\0','5107010001001055'),('5107010001001','056',0,NULL,0,0,'\0','5107010001001056'),('5107010001001','057',0,NULL,0,0,'\0','5107010001001057'),('5107010001001','058',0,NULL,0,0,'\0','5107010001001058'),('5107010001001','059',0,NULL,0,0,'\0','5107010001001059'),('5107010001001','060',0,NULL,0,0,'\0','5107010001001060'),('5107010001001','061',0,NULL,0,0,'\0','5107010001001061'),('5107010001001','062',0,NULL,0,0,'\0','5107010001001062'),('5107010001001','063',0,NULL,0,0,'\0','5107010001001063'),('5107010001001','064',0,NULL,0,0,'\0','5107010001001064'),('5107010001001','065',0,NULL,0,0,'\0','5107010001001065'),('5107010001001','066',0,NULL,0,0,'\0','5107010001001066'),('5107010001001','067',0,NULL,0,0,'\0','5107010001001067'),('5107010001001','068',0,NULL,0,0,'\0','5107010001001068'),('5107010001001','069',0,NULL,0,0,'\0','5107010001001069'),('5107010001001','070',0,NULL,0,0,'\0','5107010001001070'),('5107010001001','071',0,NULL,0,0,'\0','5107010001001071'),('5107010001001','072',0,NULL,0,0,'\0','5107010001001072'),('5107010001001','073',0,NULL,0,0,'\0','5107010001001073'),('5107010001001','074',0,NULL,0,0,'\0','5107010001001074'),('5107010001001','075',0,NULL,0,0,'\0','5107010001001075'),('5107010001001','076',0,NULL,0,0,'\0','5107010001001076'),('5107010001001','077',0,NULL,0,0,'\0','5107010001001077'),('5107010001001','078',0,NULL,0,0,'\0','5107010001001078'),('5107010001001','079',0,NULL,0,0,'\0','5107010001001079'),('5107010001001','080',0,NULL,0,0,'\0','5107010001001080'),('5107010001001','081',0,NULL,0,0,'\0','5107010001001081'),('5107010001001','082',0,NULL,0,0,'\0','5107010001001082'),('5107010001001','083',0,NULL,0,0,'\0','5107010001001083'),('5107010001001','084',0,NULL,0,0,'\0','5107010001001084'),('5107010001001','085',0,NULL,0,0,'\0','5107010001001085'),('5107010001001','086',0,NULL,0,0,'\0','5107010001001086'),('5107010001001','087',0,NULL,0,0,'\0','5107010001001087'),('5107010001001','088',0,NULL,0,0,'\0','5107010001001088'),('5107010001001','089',0,NULL,0,0,'\0','5107010001001089'),('5107010001001','090',0,NULL,0,0,'\0','5107010001001090'),('5107010001001','091',0,NULL,0,0,'\0','5107010001001091'),('5107010001001','092',0,NULL,0,0,'\0','5107010001001092'),('5107010001001','093',0,NULL,0,0,'\0','5107010001001093'),('5107010001001','094',0,NULL,0,0,'\0','5107010001001094'),('5107010001001','095',0,NULL,0,0,'\0','5107010001001095'),('5107010001001','096',0,NULL,0,0,'\0','5107010001001096'),('5107010001001','097',0,NULL,0,0,'\0','5107010001001097'),('5107010001001','098',0,NULL,0,0,'\0','5107010001001098'),('5107010001001','099',0,NULL,0,0,'\0','5107010001001099'),('5107010001001','100',0,NULL,0,0,'\0','5107010001001100'),('5107010001001','101',0,NULL,0,0,'\0','5107010001001101'),('5107010001001','102',0,NULL,0,0,'\0','5107010001001102');
/*!40000 ALTER TABLE `tabdetectorinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabdeviceregisterinfo`
--

DROP TABLE IF EXISTS `tabdeviceregisterinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabdeviceregisterinfo` (
  `DeviceID` varchar(128) NOT NULL,
  `DeviceComments` varchar(45) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `DeviceState` enum('Available','Unavailable') NOT NULL DEFAULT 'Available',
  `UnitID` varchar(9) DEFAULT NULL COMMENT 'Company ID==>TabUnitInfo\nhttp://www.nacao.org.cn/ ä»£ç æŸ¥è¯¢',
  `SerialNumber` varchar(1024) DEFAULT NULL,
  `Register` varchar(45) DEFAULT NULL,
  `UnRegister` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DeviceID`),
  UNIQUE KEY `DeviceID_UNIQUE` (`DeviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabdeviceregisterinfo`
--

LOCK TABLES `tabdeviceregisterinfo` WRITE;
/*!40000 ALTER TABLE `tabdeviceregisterinfo` DISABLE KEYS */;
INSERT INTO `tabdeviceregisterinfo` VALUES ('357070002869859',NULL,'2013-01-01 00:00:00','2020-01-01 00:00:00','Available','771237583','1234567891',NULL,NULL),('359365002838583',NULL,'2013-01-01 00:00:00','2020-01-01 00:00:00','Available','771237583','1234567890',NULL,NULL),('860457022846720',NULL,'2013-01-01 00:00:00','2020-01-01 00:00:00','Available','771237583','1234567892',NULL,NULL),('860702021288287',NULL,'2013-01-01 00:00:00','2020-01-01 00:00:00','Available','771237583','1234567891',NULL,NULL),('99000216376401',NULL,'2013-01-01 00:00:00','2020-01-01 00:00:00','Available','771237583','1234567891',NULL,NULL),('99000316909329',NULL,'2013-01-01 00:00:00','2020-01-01 00:00:00','Available','771237583','1234567891',NULL,NULL);
/*!40000 ALTER TABLE `tabdeviceregisterinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabfeeinfo`
--

DROP TABLE IF EXISTS `tabfeeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabfeeinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `Prepayment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Payment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrepaymentOperator` varchar(45) NOT NULL,
  `PrepaymentTime` datetime NOT NULL,
  `PaymentTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PaymentOperator` varchar(45) DEFAULT NULL,
  `PrepaymentUserID` varchar(45) DEFAULT NULL,
  `PaymentUserID` varchar(45) DEFAULT NULL,
  `FeeReceivable` smallint(6) NOT NULL DEFAULT '0',
  `FreeType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabfeeinfo`
--

LOCK TABLES `tabfeeinfo` WRITE;
/*!40000 ALTER TABLE `tabfeeinfo` DISABLE KEYS */;
INSERT INTO `tabfeeinfo` VALUES (57,0,0,'æœªçŸ¥','2013-12-09 14:08:57','2013-12-09 14:08:59','æœªçŸ¥','002','002',0,0),(62,0,0,'æœªçŸ¥','2013-12-09 14:17:11','2013-12-09 14:17:14','æœªçŸ¥','002','002',0,0),(63,0,0,'','2013-12-03 12:19:57','3000-01-01 12:01:01','','1','1',0,0),(73,0,0,'æœªçŸ¥','2013-12-17 20:38:23','2013-12-17 20:38:39',NULL,'001',NULL,0,0),(74,0,0,'æœªçŸ¥','2013-12-17 20:44:01','2013-12-17 20:44:23','æœªçŸ¥','001','001',0,0);
/*!40000 ALTER TABLE `tabfeeinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `streetroadpark`.`TabFeeInfo_AINS`
AFTER INSERT ON `streetroadpark`.`tabfeeinfo`
FOR EACH ROW
begin
	insert into TabTmpFeeInfo( RecordID, Prepayment, PrepaymentOperator, PrepaymentTime, PrepaymentUserID, Payment, 
							   PaymentOperator, PaymentTime, PaymentUserID, FeeReceivable, FreeType ) 
						   VALUES( New.RecordID, New.Prepayment, New.PrepaymentOperator, New.PrepaymentTime, 
								   New.PrepaymentUserID, New.Payment, New.PaymentOperator, New.PaymentTime, 
								   New.PaymentUserID, New.FeeReceivable, New.FreeType );
/*
	-- è¿›å…¥æ—¶æ’å…¥ 0 è„±æœºå®Œæ•´æ’å…¥ 1
	insert into TabUploadFeeInfo( RecordID, Prepayment, PrepaymentOperator, PrepaymentTime, PrepaymentUserID, Payment, 
							   PaymentOperator, PaymentTime, PaymentUserID, FeeReceivable, FreeType, Type ) 
						   VALUES( New.RecordID, New.Prepayment, New.PrepaymentOperator, New.PrepaymentTime, 
								   New.PrepaymentUserID, New.Payment, New.PaymentOperator, New.PaymentTime, 
								   New.PaymentUserID, New.FeeReceivable, New.FreeType, IF( New.PaymentUserID is null, 0, 1 ) );
*/
	if ( New.PaymentUserID is not null ) then
		insert into TabUploadFeeInfo( RecordID, Prepayment, PrepaymentOperator, PrepaymentTime, PrepaymentUserID, Payment, 
									  PaymentOperator, PaymentTime, PaymentUserID, FeeReceivable, FreeType ) 
						   VALUES( New.RecordID, New.Prepayment, New.PrepaymentOperator, New.PrepaymentTime, 
								   New.PrepaymentUserID, New.Payment, New.PaymentOperator, New.PaymentTime, 
								   New.PaymentUserID, New.FeeReceivable, New.FreeType );
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `streetroadpark`.`TabFeeInfo_AUPD`
AFTER UPDATE ON `streetroadpark`.`tabfeeinfo`
FOR EACH ROW
begin
	update TabTmpFeeInfo set Payment = New.Payment, PaymentOperator = New.PaymentOperator, 
							 PaymentTime = New.PaymentTime, PaymentUserID = New.PaymentUserID,
							 FeeReceivable = New.FeeReceivable,	FreeType = New.FreeType
					where RecordID = Old.RecordID;

/*
	update TabUploadFeeInfo set Payment = New.Payment, PaymentOperator = New.PaymentOperator, 
							 PaymentTime = New.PaymentTime, PaymentUserID = New.PaymentUserID,
							 FeeReceivable = New.FeeReceivable,	FreeType = New.FreeType,
							 Type = 2
					where RecordID = Old.RecordID;
*/
	if ( New.PaymentUserID is not null ) then
		insert into TabUploadFeeInfo( RecordID, Prepayment, PrepaymentOperator, PrepaymentTime, PrepaymentUserID, Payment, 
									  PaymentOperator, PaymentTime, PaymentUserID, FeeReceivable, FreeType ) 
						   VALUES( New.RecordID, New.Prepayment, New.PrepaymentOperator, New.PrepaymentTime, 
								   New.PrepaymentUserID, New.Payment, New.PaymentOperator, New.PaymentTime, 
								   New.PaymentUserID, New.FeeReceivable, New.FreeType );
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tabfeerateinfo`
--

DROP TABLE IF EXISTS `tabfeerateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabfeerateinfo` (
  `ParkID` varchar(16) NOT NULL,
  `FeeRateCode` varchar(45) NOT NULL,
  `FreeTime` int(11) DEFAULT NULL,
  `DomainCode` varchar(45) DEFAULT NULL,
  `DomainName` varchar(45) DEFAULT NULL,
  `TimeSectionCode` varchar(45) DEFAULT NULL,
  `SectionStartTime` varchar(45) DEFAULT NULL,
  `SectionEndTime` varchar(45) DEFAULT NULL,
  `TimeSection` varchar(45) DEFAULT NULL,
  `StopType` varchar(45) DEFAULT NULL,
  `StopName` varchar(45) DEFAULT NULL,
  `ViehcleType` varchar(45) DEFAULT NULL,
  `ViehcleName` varchar(45) DEFAULT NULL,
  `StartPrice` int(11) DEFAULT NULL,
  `StartPriceTime` int(11) DEFAULT NULL,
  `ContinuePrice` int(11) DEFAULT NULL,
  `ContinuePriceTime` int(11) DEFAULT NULL,
  `IfSection` bit(1) DEFAULT NULL,
  `MaxFee` int(11) DEFAULT NULL,
  PRIMARY KEY (`ParkID`,`FeeRateCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabfeerateinfo`
--

LOCK TABLES `tabfeerateinfo` WRITE;
/*!40000 ALTER TABLE `tabfeerateinfo` DISABLE KEYS */;
INSERT INTO `tabfeerateinfo` VALUES ('5107010001','003',15,'1','ä¸€ç±»åŒºåŸŸ','3','00:00','23:59','23:59','1','ä¸´æ—¶åœæ”¾','1','å°è½¦',20,1440,0,0,'\0',0);
/*!40000 ALTER TABLE `tabfeerateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabfreetypeinfo`
--

DROP TABLE IF EXISTS `tabfreetypeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabfreetypeinfo` (
  `FreeID` varchar(10) NOT NULL,
  `FreeName` varchar(45) NOT NULL,
  PRIMARY KEY (`FreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabfreetypeinfo`
--

LOCK TABLES `tabfreetypeinfo` WRITE;
/*!40000 ALTER TABLE `tabfreetypeinfo` DISABLE KEYS */;
INSERT INTO `tabfreetypeinfo` VALUES ('0','ä¸å…è´¹'),('1','å†›è­¦è½¦è¾†'),('2','æ®‹ç–¾äººå‘˜'),('3','å…¬åŠ¡è½¦');
/*!40000 ALTER TABLE `tabfreetypeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabgroupinfo`
--

DROP TABLE IF EXISTS `tabgroupinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabgroupinfo` (
  `GroupID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(45) NOT NULL,
  `GroupComments` varchar(45) DEFAULT NULL,
  `GroupParentID` bigint(20) NOT NULL,
  `GroupRight` bigint(20) unsigned DEFAULT NULL COMMENT '64 right bits',
  `UnitID` varchar(9) NOT NULL,
  PRIMARY KEY (`GroupID`),
  UNIQUE KEY `GroupName_UNIQUE` (`GroupName`),
  UNIQUE KEY `GroupID_UNIQUE` (`GroupID`),
  KEY `GroupUnit_idx` (`UnitID`),
  CONSTRAINT `GroupUnit` FOREIGN KEY (`UnitID`) REFERENCES `tabunitinfo` (`UnitID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabgroupinfo`
--

LOCK TABLES `tabgroupinfo` WRITE;
/*!40000 ALTER TABLE `tabgroupinfo` DISABLE KEYS */;
INSERT INTO `tabgroupinfo` VALUES (1,'æµ‹è¯•1',NULL,0,1234,'771237583');
/*!40000 ALTER TABLE `tabgroupinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabhistoryfeeinfo`
--

DROP TABLE IF EXISTS `tabhistoryfeeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabhistoryfeeinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `Prepayment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Payment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrepaymentOperator` varchar(45) NOT NULL,
  `PrepaymentTime` datetime NOT NULL,
  `PaymentTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PaymentOperator` varchar(45) DEFAULT NULL,
  `PrepaymentUserID` varchar(45) DEFAULT NULL,
  `PaymentUserID` varchar(45) DEFAULT NULL,
  `FeeReceivable` smallint(6) NOT NULL DEFAULT '0',
  `FreeType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabhistoryfeeinfo`
--

LOCK TABLES `tabhistoryfeeinfo` WRITE;
/*!40000 ALTER TABLE `tabhistoryfeeinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabhistoryfeeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabhistoryinoutimageinfo`
--

DROP TABLE IF EXISTS `tabhistoryinoutimageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabhistoryinoutimageinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `EnterImage` longblob,
  `LeaveImage` longblob,
  `AddedTime` date NOT NULL,
  PRIMARY KEY (`RecordID`,`AddedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH(AddedTime))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabhistoryinoutimageinfo`
--

LOCK TABLES `tabhistoryinoutimageinfo` WRITE;
/*!40000 ALTER TABLE `tabhistoryinoutimageinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabhistoryinoutimageinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabhistoryinoutrecordinfo`
--

DROP TABLE IF EXISTS `tabhistoryinoutrecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabhistoryinoutrecordinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `LocationID` varchar(16) NOT NULL,
  `EnterTime` datetime NOT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  `EnterPlate` varchar(45) DEFAULT NULL,
  `LeavePlate` varchar(45) DEFAULT NULL,
  `State` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`RecordID`,`EnterTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH(EnterTime))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabhistoryinoutrecordinfo`
--

LOCK TABLES `tabhistoryinoutrecordinfo` WRITE;
/*!40000 ALTER TABLE `tabhistoryinoutrecordinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabhistoryinoutrecordinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabhistoryloginfo`
--

DROP TABLE IF EXISTS `tabhistoryloginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabhistoryloginfo` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LogInfo` longtext COMMENT 'IP@ClientID@Serial@Credit@Type@SQL',
  `LogDateTime` datetime NOT NULL,
  PRIMARY KEY (`LogID`,`LogDateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH( LogDateTime ))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabhistoryloginfo`
--

LOCK TABLES `tabhistoryloginfo` WRITE;
/*!40000 ALTER TABLE `tabhistoryloginfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabhistoryloginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabhistoryuserloginoutinfo`
--

DROP TABLE IF EXISTS `tabhistoryuserloginoutinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabhistoryuserloginoutinfo` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LogUserID` bigint(20) unsigned DEFAULT NULL,
  `LogTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LogType` enum('Login','Logout') DEFAULT NULL,
  `LogClientID` varchar(45) DEFAULT NULL,
  `LogIP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabhistoryuserloginoutinfo`
--

LOCK TABLES `tabhistoryuserloginoutinfo` WRITE;
/*!40000 ALTER TABLE `tabhistoryuserloginoutinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabhistoryuserloginoutinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabinoutimageinfo`
--

DROP TABLE IF EXISTS `tabinoutimageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabinoutimageinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `EnterImage` longblob,
  `LeaveImage` longblob,
  `AddedTime` date NOT NULL,
  PRIMARY KEY (`RecordID`,`AddedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH(AddedTime))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabinoutimageinfo`
--

LOCK TABLES `tabinoutimageinfo` WRITE;
/*!40000 ALTER TABLE `tabinoutimageinfo` DISABLE KEYS */;
INSERT INTO `tabinoutimageinfo` VALUES (62,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','2013-12-09'),(109,'ÿØÿá\0ßExif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\01\0\0\0\0J\0\0\02\0\0\0\0_\0\0\0\0\0\0\0\0\0\0i‡\0\0\0\0s\0\0\0\0\0\0\0ACD Systems ÊýÂë³ÉÏñ\02011:12:26 16:09:32\0\0\0\0\0\0\00220’\0\0\0\0108\0 \0\0\0\0`\0\0\0 \0\0\0\0Y\0\0\0 \0\0\0\0µ\0\0\0\0\0\0\0\0\0\0\0\0\0R98\0\0\0\0\0\00100\0\0\0\0\0\0\0\0ÿÀ\0\0Y\0`!\0ÿÛ\0„\0	\n	\n	\n\n\r\n\n\r\rÿÄ\0­\0\0\0\0\0\0\0\0\0\0	\0	\0\0\0\0\0\0!1A\"Qaq‘¡±#23BrÁRb‚²ð$56CS’á\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0!1aq2AQ±\"B‘Áð#3r‚¡áñ%4CR²ÑÿÚ\0\0\0?\0±¥ßs\'ç	²ê3htò…Íp¥%_²’lGr¶ƒ1Wðv‘Íˆ«mõ\'êåZ\n[ëŽA{ó61âG¶1¼ò§ÐÐÔb5ž•»Î9rQ*7ñæ<ªª[†œ?Be‰±žª>Jmß•nj·œOé´î5½-ÖÏãœ?&á:¢^•Ö¥#»µúj7¾LôhÞ!G†`ïú;¯4íâ\Z€µÉ·ŽœíB¥ÒË.vEŒ+‹¥ÙÕ.†W%2R?dæ)\'ÂÑÏƒºXà:†$VÆò3Ø.®Òº·>œÌ%cM\\\0Ì<c†WFë<dŸ§Á Æ)Ý6\Zâ$fnaÌó°¸ö+êŸ;/3(ÜÄ¬Âeä‡Zyµ…¥ÄŠHÐƒË¾Ú´IËm|ox…O- úW¾‰FXÔ€w±çKºÎÚyÂIa©gH7°“¦äÛH\\Ò¸h¹U‡øäh/=‡0„ÃjŸ,Äõ‚ÐÏxM÷WžÞ<«Îðê{‰¸ýÊ­jeõÈ6¾²raÂV^UõÉ·Ë”	{ÍDÁ½ËoÃ©[²Û<úé¦Xp¾ƒâ}‹aÑ$©t*TÊT¢%e[M’ÚÄ÷ù÷Þ•|Á*ç°7‚ýœ‚ÄI.;Ç]OÅ+,õÎªÔwéx­øçÁ*?0+•\nsLËb96¯+0H|«nwë{[ùµ#Ûbà˜“°¬B:€r¾c†…fÎqÏpC\ZšDÃnÍÑZ|·9FšUºµYE£þÚÁ¾›¸&ÊïcŒ=x{\'‰ðÍA3té¡õj\'¶Ù´…$}•¸ò;ÀïT«ÆÝà‘Á+qJqèK¯¨?™K¥ž³i²­µá&	PÊu‰K*ä°ÓÜ‹©6Øë*qx[¦ŸMw%N}*CdnÃ|×ç¸&™ý[•ƒgè>²Å\"§õoŸ!šÏ²ÒÏÔ+É²Jž™p$\\ÜÜIòÐÆËÀx~KpòN‹.”¥M¤HÝK\"ÿ\0BÝ\\´î’*„l‚ˆµ>ÍÂ]áqrIÆçxRYð\r÷Ø^\n¬LðI±0.	U‡Ÿ8R]å](gàóÓúùB\\:j²_KÎ³Bâ<¦:§0–å«wjm)ØL$oüI×Í&#=\ZøÕ1Â®4¦V£4¯ìÝaaš‹J]Ê¶Kâû}mºIçbHþ®uôU?²B\'vš2æÝÑ9gÁWaaB×ör0¤£ã(íûþAcâ¾v ´Øë¡æ°Ô»£&dªÖþ¯ékÆxÇõâ%NÔ3ÒZd_@ÚtÖV»u€-S£z^³’¡Þ«|Êw‚ôtÔøÚÄË©JÛ‘lÌ(_ñlÇá\Z†Vcµ|×¾§Æ=Q7v%¤	úÌ`3ýZ?T¤¬ÂvSµŒ+/3Ù¹Whi©‰Ë9HÊÌ fçß\nK>œæêÚ8tIBº@áæqODŠì²›Îí=‘PdÒPA6ó‚SÕŸ¶EŽš˜]”—_Atq7Y‡KýWy…ô/¢·ú#È58ñrz„¿¢¦JŽ«J@-ßõe)¿2ƒ{ŒÚ‘®º¼ œGybØå7Ðñ9¡ðq·\"°=n¤©ÔfÂ¬Z–^[ždX|LgÅ_2“©¼®ÎÁk}Ä¿ˆe[¼e¦ß«Nudm\0ž[ŸÒ/&n@Ïšúé)rˆ,÷lÞ_ŽMÂÁ\',úHý¯8NUñ—Cñ‰Jš“—xT!6\n@j4¾kZá¢¦ÛSø\Z¡OpæDÌ£ŸÅ™$GÍõ·ÕL)*Ð¤”€í«†…n\ZIq;|l~Ot¯9/qF.+«™”fq¾™¢…s‘²eßv¾€ßC©ÙIÛxÄXì¼lVÅª.p®¤‘©,^Ýö\")AöOtB­í·—Åh]\Ze?âJÞàbÂi5@åkŸ‚¢Ý•xicø`…7Ü…™íxþ»?4¤»à(vù÷ÂL>{ûWï‰\n •—˜ \r=aµ‚”2˜I$ý©”w5€CDïàcçTÚÒåeçtSŠ#ßëôjèÐXÏùUñÐÅE\'*ÙT¥¤ë§Þ6HÛRÓ	¾‹ÃR\"EÝ*®Þ‘õëù5aYô&w\rLÊŽ×ZÊ“êDRkJ’ñJ´!V#¸Äjñ¡VîŒçôg‹ðŸ‚±ø1:–+õ9.Ýs	q#Ÿd˜EÇ.øáFÇH—JoT½¸‹ªÇ$ãb’–²V›Xs„¥ÞIVši•¤[œe–ºÇßCi¶ëU„tIâ**Ò‰ª÷#ÚSò‡ŽÍ­^ö‰Ízã\Zâ(ü­ÕŠ†V)î­*Íp£”åûF6$kßP9^EÀo=\ZEjyä=ä¥zÒ–Ýoâ”†Û”mDs¹\'ô_.ñ½³ØlLM¦ˆ,ïlæc“p°X…‰€‘d¨k{kýk¼VX²ôn<}¤ õO‰gM\nIÔzHj±·`(ÇG•}F,b?äo–kÓÕUGâL”î¡¥/©vß²­Îþ‘}54Óduëm9NÊU­hóâ¦tMÕâ1ÍnÓ|—¹ÄTy)58õJZÉ×\"ŸH!ì[Z¬(³AvFžÉÐ?14€áò¾qh¡¤Œý½Hvçp\0Üü÷ðX½EM†äD_Æã%ãýÝ×k)ö™ÌHÄÚ•©%Õ:=ûGð÷\n«Í ™_d™’W”Ûž†-Pm\rCª1xÁñA$Âj¤Býóßû#&ä+Ôi)³âr^Uá‘Æ”µœÊb=9„(Ó§7ReœµÂØ°À£ky[ÎÄpJ,j,vî#ÿ\0?Dwf¶³ÙJ¯@“óaïâ>CôzkÐ8>Í\nUaú‚TÄÓz¥Ûdî-ç£Ài™$¤Øö£=’–J7u2‹Ôâ\rÅ&u[H³É<y!a÷\'åd$‹óo¶ÓiÝk;žá\\K_¯å%dT·\Z^t8åó‘Í!\0k}=Ñ>5¤õŽÝ`Ôüû”AŠK…JÉ ißó’ý¦aüHúG²ÊºÂH¶u(4Høª$x\n¨ñÍ3;/¡·ijY÷‘q\'´‘ßŽV÷êPÚçcì¦¢ºb\\Móîä4*Ï¦,j2çøLv\'\0T\nnÓòËðÔ”Nj`q³ÚáÊÈCðI@ô\\\nó^¬ÓOZ$Ý?&ä×XN•±-%àÛu%Ì!;µ2ºw\\ê ³£¡Æ#Þ³]ÿ\0C˜×Þ 5Õ8{÷t÷Ø©µ+ˆØv±*$qšd‹ƒ)R‡XÊ½m§¨õAÃ&^”úG¼…\'0d*éPýÕ\r=ÑY¯ÙêÇ›ÄííÝÇ‚4öÅ‹Ev‹<xëü*î`MS*ý[èzZe“qøV“Þþ£_Òy„øçˆ¨e¹Jú~˜”NkVWÛñ\n#µëcãZü>Væä}R>tAéjä¡“<Æ…PÒ´	º¤úgkók:%–Í²Ù¾ÀyoªT¬…5°Ô„»l&×&Ú“âFþ±TÕõ€CL\Zqâx«|á„ÊüÜ}Ã’a—µ9›Â­Às_Â/D„»Ãtî~Ð›!=“rN»ÇA²I	wS–ÚGó=‡©fH~]!Û\\8ƒb\"U-T”rÄâ˜šª\ZZñ’‡×0EN˜…?\"=­€.rh±çÐ1•sO•SfHd/·,à%¥ËÈøƒxÒ šŸ¦-v¾\n,2ásogodÈÕðG)È§UìR;7_hŸÜQ?-¼C±G\r+˜iõL%Ù&úÖÌ‘ûÂaõ2asš\Z£pMÁD* el_H‹µÞ«ÆœFL£/åòî@;|¢‡V…ÜÃÉÎ,­üc½‡@X²Œ$’2ÎÒBu¾‡XA‡Í³o¥¯	$Œ»Ý’9sÖ–|rµüá$—}%»64;ëxà¬àÊ\r}\nZš³º^n÷¿ŒK¥«’ŽA$]ß%1<¨ic¾…\0­àjÕ\r]bš3˜<É&Þ=ãÌk<!ÅZ­!´Óë­š”ˆs(ýkcÌŽÐüÖ>1¡K>=JÃgÇˆ>‚©1Òá“nœÚ^*¢k”vÊl<ã2WDƒl~cc—œ$’LïîŽÙ_½>p’JHla)O¼„’FZkîS™ªè]Så~QòŠZ¯þºÊ.;9Úr®bú±ÿÙ','ÿØÿá™Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0b\0\0\0\0\0\0\0j(\0\0\0\0\0\0\01\0\0\0\0\0\0\0r2\0\0\0\0\0\0\0Ž‡i\0\0\0\0\0\0\0¤\0\0\0Ð\0-ÆÀ\0\0\'\0-ÆÀ\0\0\'Adobe Photoshop CS5 Windows\02010:05:30 16:44:35\0\0\0\0 \0\0\0\0\0\0\0 \0\0\0\0\0\0Í \0\0\0\0\0\07\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0&(\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\nc\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0ÿØÿí\0Adobe_CM\0ÿî\0Adobe\0d€\0\0\0ÿÛ\0„\0			\n\r\r\rÿÀ\0\0l\0 \"\0ÿÝ\0\0\nÿÄ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"q2‘¡±B#$RÁb34r‚ÑC%’Sðáñcs5¢²ƒ&D“TdEÂ£t6ÒUâeò³„ÃÓuãóF\'”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö7GWgw‡—§·Ç×ç÷\05\0!1AQaq\"2‘¡±B#ÁRÑð3$bár‚’CScs4ñ%¢²ƒ&5ÂÒD“T£dEU6teâò³„ÃÓuãóF”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö\'7GWgw‡—§·ÇÿÚ\0\0\0?\0òÄ’I%)$’IJI%w¤tn¡ÖrÆ&~¥‘¹î$5Œlí6[c½¬f¿÷Êÿ\0H’šI.ÙŸâ«ª8\rÝO®î7[§þ\0ŠßñGÕ]ÇTéÿ\0çÙÿ\0¤’SÂ$»Ñþ\'úÁÿ\0½<óìÿ\0ÒIÿ\0ñë?ùeƒþuŸúI%<\nK¿ÿ\0Æo­ÿ\0åŽùÖé$¿ñ›ëŸùcƒþuŸúI%<K¿ÿ\0Æo®åŽùöéÇüMõèÓ¨`Oo}ŸúE%<\nKWëÕŽ±õo-¸ÝN ßTQ}guVµ§kUš}Î­û.gèÿ\0GúF,¤”¤’I%)$’IOÿÐòÄ’I%)$’IJ]ïÔ*èy¶°m²Ì€Ç¸rZÖ³kgù>µ¿ç®	w?R·êöWþ\Zÿ\0¾Ð’žª›“:¡~IÃÂcn½‚m±æ)¯úîg¾×ÁÖ²r³F%–0ÃÈÚÃà]ßüÔ_«Ím8!ãé\\âç&þ­ÿ\0«L2<B#·¼›xðDr³æ¦/Ö0a‡Ie1÷%9ÿ\0W?—ýcÒVüðÐk¶‡¿÷[˜Ãåê2ëWõÜËUž“ÖiÍ}´»3ÆF%„¶Òö=¾ÛªÝþ¿÷úÕ\nnX¿XòÓº¾WÇÒÒØ°~ÿ\0¦v9¯ÿ\0ŒÇ±´¥9pŽ.ƒurxcÌÌà:e”e,2ŸÖ@qûs/ãÅêýÐª·ÍYkär²©¹¦±ÐZ|¹¿ôQ¬Íô‹C÷H/oƒNœþÿ\0î\'µ	)IQ®ÆØÀö™k„‚¤’žüoÑSþª6Ç7ßF]N¬ønkØñýWn^*½»ünÿ\0âEÿ\0øjŸÈåâ))I$’JRI$’ŸÿÑòÄ’I%)$’IJ]—Õ6ô–øäøP¸ÕÔ}W·oJ½ž6¸þ$§k2lÄp\Z–ïûïýù]èöÎm˜\\Óñÿ\0÷õš×Øùh>›„À.#Ê}¬j=8Ø \0Z]¼OðÚ„x¸¥*Òª1ã?ô±¶4O&yn¬¾ü&eÂ>OnPùdí·>¶p,´ŽEL/‹‡³þ’ÌúÁ:ˆÆf3\\ãVýípÚàç–·iþ¢%xØúlÝQ9Ž!Nï´ÆK>Û@ÿ\0Ý.`þ·ç×=F+/–<R³ß‡ÿ\0Á¬sþï½¯Ëóyù\\ðÏBGÐ<S‡ª<‹‡ƒ$}2ýÉ½v15µ”}&5“äÆ†OýVÏ,žC‹¹ãw‡õ—!‡“Ô1™¿Á†ß¥S%£÷l¤ZŸëUú±GÖžŒkÜkhÉ\ZnÝ½£àæYÿ\0€¥.S ¾îû¿<|\'‹ùÈI„s5Äx	ýï–_ÝŸÉ\'§Ákéc˜ëÎÜØ=ßœåu¦W1‡×éºY†/Î¸ðÆW\roüe÷–1þ²×ÇWœÇ5\0N=DLkëßõâªetÿ\0á…±Ê?8àð–’ÿ\0ædå<^_/øÏ3þ7?ñ\"ÿ\0ü3Gäzñ%íŸãpÿ\0Ø‹ãþäÑù¼M1r’I$”¤’I%?ÿÒòÄ’I%)$’IJ[ßWlŒ{Yâ^óÒÁ[WÝï{|Zóÿ\0žÒSÐ1êÍV*ÐŒÇ¤§R›dÀÔø\r|ûU]¢ÒHÛ$DkçÙ¦çÕ^#i7š¬7~û˜µƒqk›¶¿}Ï³þÔV02±Z\\û-`q²Ò\Zâá¹®L¹Î©»Þßo§úoôß¡II>5¯m,°këTKþ{ÚñØïçîºð4-±â>ôÙ]Žÿ\0=T«.–Ó{¹î¹¯c™´Íkô÷{¿vÊ=?ðž®³2ªí´Ôïi¸:·™£Ô—m­ž§¹Îÿ\0Mïúé,O÷\'@qZýîþêÞÝÐ×7SÐÖ5Œ†±º5­Ñ£ú­\nõ6¬:o’LIæ~_Où*ý7&.qÆ»·}Oqÿ\0»TþG¯^Éþ3Ý»ê[ýÛ«þ¥ëÆÒR’I$”¤’I%?ÿÓòÄ’I%)$’IJZ\0þ´GüŸ÷Å–‹“f5Í¶³lÄ‰µÌpý×5%=ZvºKzõgéRïê4Võ¬SÈÛý¿ýF’ž·¢ÙˆÚGÚ×ºË¶VÌwÎÖ[mÅ¾µo¿ÒfÚ7úŽô½W×]áÑºHªÌ[òÅþÐæÔë=2.ý«u5î³&Ÿæë§þù¥É³ªôóô¬yÖïŠÕ}O¤§Ññ×þø’ž·áÓ™šÜM­­÷±¬@Ú,öÑS‹,ôkoøgÁUWé“ãÛP²ÍÏk[\'i`e¿šç~Œ{·û?ðÏû;OTèPÎk@í´ÿ\0äêz§ÕÏÏê¬8ÿ\0ßU;u]$ê ‚>Ïo·ý}êõ7,j:§Õ?Ïëloýmçþø®3¬}N`ŸÛ¬1È>~^Ô”Öÿ\0îÝõÇþîÕÿ\0Rõä¸ÿ\0_\\pú¦=¤²ÁŽÿ\0^Ü‹šXë¬‡1Žen\r{ik^ÿ\0ç?œø\Z½Òpé)I$’JRI$’ŸÿÔòÄ’I%)$’IJNÆîp¹L§WÓ”˜\08:dà$¥Ú	à#O‰‰Scéƒôyçø%[œÐHŽúÂ˜ß½ÇlÌ&{ÏÒIKl~í³®üSüIŸ	N×9¯Ýðþª™Ÿ‡t” _â~õ0_ûÇï* |~j`$¦MaÙ¿S\\9‡¸ÖR×È‰õˆY	)I$’JRI$’ŸÿÕòÄ’I%)$’IJD¤{¿×Í\r“þ¾))(R0R	)d4gXáI¤nžÅ@)ˆILÕßÊR\ZÌë\"ïÍ„íßü©óÛ	}T\rTÀLÞ5ç¼)ˆIHò‡ê—Wø…Œ¶²ÿ\0¢]ý_â*JRI$’”’I$§ÿÙÿíþPhotoshop 3.0\08BIM%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08BIM:\0\0\0\0\0“\0\0\0\0\0\0\0\0\0\0\0printOutput\0\0\0\0\0\0\0ClrSenum\0\0\0\0ClrS\0\0\0\0RGBC\0\0\0\0Inteenum\0\0\0\0Inte\0\0\0\0Img \0\0\0\0MpBlbool\0\0\0printSixteenBitbool\0\0\0\0printerNameTEXT\0\0\0\0\0\08BIM;\0\0\0\0²\0\0\0\0\0\0\0\0\0\0\0printOutputOptions\0\0\0\0\0\0\0Cptnbool\0\0\0\0\0Clbrbool\0\0\0\0\0RgsMbool\0\0\0\0\0CrnCbool\0\0\0\0\0CntCbool\0\0\0\0\0Lblsbool\0\0\0\0\0Ngtvbool\0\0\0\0\0EmlDbool\0\0\0\0\0Intrbool\0\0\0\0\0BckgObjc\0\0\0\0\0\0\0\0\0RGBC\0\0\0\0\0\0\0Rd  doub@oà\0\0\0\0\0\0\0\0\0Grn doub@oà\0\0\0\0\0\0\0\0\0Bl  doub@oà\0\0\0\0\0\0\0\0\0BrdTUntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Bld UntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0RsltUntF#Pxl@rÀ\0\0\0\0\0\0\0\0\nvectorDatabool\0\0\0\0PgPsenum\0\0\0\0PgPs\0\0\0\0PgPC\0\0\0\0LeftUntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Top UntF#Rlt\0\0\0\0\0\0\0\0\0\0\0\0Scl UntF#Prc@Y\0\0\0\0\0\08BIMí\0\0\0\0\0,\0\0\0\0,\0\0\0\08BIM&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?€\0\08BIM\r\0\0\0\0\0\0\0\0x8BIM\0\0\0\0\0\0\0\08BIMó\0\0\0\0\0	\0\0\0\0\0\0\0\0\08BIM\'\0\0\0\0\0\n\0\0\0\0\0\0\0\08BIMõ\0\0\0\0\0H\0/ff\0\0lff\0\0\0\0\0\0\0/ff\0\0¡™š\0\0\0\0\0\0\02\0\0\0\0Z\0\0\0\0\0\0\0\0\05\0\0\0\0-\0\0\0\0\0\0\0\08BIMø\0\0\0\0\0p\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè\0\08BIM\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0\08BIM0\0\0\0\0\0\08BIM-\0\0\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0@\0\0@\0\0\0\08BIM\0\0\0\0\0\0\0\0\08BIM\Z\0\0\0\0A\0\0\0\0\0\0\0\0\0\0\0\0\07\0\0Í\0\0\0hQÆ\0l\0o\0g\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Í\0\07\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\07\0\0\0\0Rghtlong\0\0Í\0\0\0slicesVlLs\0\0\0Objc\0\0\0\0\0\0\0\0slice\0\0\0\0\0\0sliceIDlong\0\0\0\0\0\0\0groupIDlong\0\0\0\0\0\0\0originenum\0\0\0ESliceOrigin\0\0\0\rautoGenerated\0\0\0\0Typeenum\0\0\0\nESliceType\0\0\0\0Img \0\0\0boundsObjc\0\0\0\0\0\0\0\0\0Rct1\0\0\0\0\0\0\0Top long\0\0\0\0\0\0\0\0Leftlong\0\0\0\0\0\0\0\0Btomlong\0\07\0\0\0\0Rghtlong\0\0Í\0\0\0urlTEXT\0\0\0\0\0\0\0\0\0nullTEXT\0\0\0\0\0\0\0\0\0MsgeTEXT\0\0\0\0\0\0\0\0altTagTEXT\0\0\0\0\0\0\0\0cellTextIsHTMLbool\0\0\0cellTextTEXT\0\0\0\0\0\0\0\0	horzAlignenum\0\0\0ESliceHorzAlign\0\0\0default\0\0\0	vertAlignenum\0\0\0ESliceVertAlign\0\0\0default\0\0\0bgColorTypeenum\0\0\0ESliceBGColorType\0\0\0\0None\0\0\0	topOutsetlong\0\0\0\0\0\0\0\nleftOutsetlong\0\0\0\0\0\0\0bottomOutsetlong\0\0\0\0\0\0\0rightOutsetlong\0\0\0\0\08BIM(\0\0\0\0\0\0\0\0?ð\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\08BIM\0\0\0\0\n\0\0\0\0\0\0 \0\0\0l\0\0à\0\0Ê€\0\0\nc\0\0ÿØÿí\0Adobe_CM\0ÿî\0Adobe\0d€\0\0\0ÿÛ\0„\0			\n\r\r\rÿÀ\0\0l\0 \"\0ÿÝ\0\0\nÿÄ?\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0	\n\03\0!1AQa\"q2‘¡±B#$RÁb34r‚ÑC%’Sðáñcs5¢²ƒ&D“TdEÂ£t6ÒUâeò³„ÃÓuãóF\'”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö7GWgw‡—§·Ç×ç÷\05\0!1AQaq\"2‘¡±B#ÁRÑð3$bár‚’CScs4ñ%¢²ƒ&5ÂÒD“T£dEU6teâò³„ÃÓuãóF”¤…´•ÄÔäô¥µÅÕåõVfv†–¦¶ÆÖæö\'7GWgw‡—§·ÇÿÚ\0\0\0?\0òÄ’I%)$’IJI%w¤tn¡ÖrÆ&~¥‘¹î$5Œlí6[c½¬f¿÷Êÿ\0H’šI.ÙŸâ«ª8\rÝO®î7[§þ\0ŠßñGÕ]ÇTéÿ\0çÙÿ\0¤’SÂ$»Ñþ\'úÁÿ\0½<óìÿ\0ÒIÿ\0ñë?ùeƒþuŸúI%<\nK¿ÿ\0Æo­ÿ\0åŽùÖé$¿ñ›ëŸùcƒþuŸúI%<K¿ÿ\0Æo®åŽùöéÇüMõèÓ¨`Oo}ŸúE%<\nKWëÕŽ±õo-¸ÝN ßTQ}guVµ§kUš}Î­û.gèÿ\0GúF,¤”¤’I%)$’IOÿÐòÄ’I%)$’IJ]ïÔ*èy¶°m²Ì€Ç¸rZÖ³kgù>µ¿ç®	w?R·êöWþ\Zÿ\0¾Ð’žª›“:¡~IÃÂcn½‚m±æ)¯úîg¾×ÁÖ²r³F%–0ÃÈÚÃà]ßüÔ_«Ím8!ãé\\âç&þ­ÿ\0«L2<B#·¼›xðDr³æ¦/Ö0a‡Ie1÷%9ÿ\0W?—ýcÒVüðÐk¶‡¿÷[˜Ãåê2ëWõÜËUž“ÖiÍ}´»3ÆF%„¶Òö=¾ÛªÝþ¿÷úÕ\nnX¿XòÓº¾WÇÒÒØ°~ÿ\0¦v9¯ÿ\0ŒÇ±´¥9pŽ.ƒurxcÌÌà:e”e,2ŸÖ@qûs/ãÅêýÐª·ÍYkär²©¹¦±ÐZ|¹¿ôQ¬Íô‹C÷H/oƒNœþÿ\0î\'µ	)IQ®ÆØÀö™k„‚¤’žüoÑSþª6Ç7ßF]N¬ønkØñýWn^*½»ünÿ\0âEÿ\0øjŸÈåâ))I$’JRI$’ŸÿÑòÄ’I%)$’IJ]—Õ6ô–øäøP¸ÕÔ}W·oJ½ž6¸þ$§k2lÄp\Z–ïûïýù]èöÎm˜\\Óñÿ\0÷õš×Øùh>›„À.#Ê}¬j=8Ø \0Z]¼OðÚ„x¸¥*Òª1ã?ô±¶4O&yn¬¾ü&eÂ>OnPùdí·>¶p,´ŽEL/‹‡³þ’ÌúÁ:ˆÆf3\\ãVýípÚàç–·iþ¢%xØúlÝQ9Ž!Nï´ÆK>Û@ÿ\0Ý.`þ·ç×=F+/–<R³ß‡ÿ\0Á¬sþï½¯Ëóyù\\ðÏBGÐ<S‡ª<‹‡ƒ$}2ýÉ½v15µ”}&5“äÆ†OýVÏ,žC‹¹ãw‡õ—!‡“Ô1™¿Á†ß¥S%£÷l¤ZŸëUú±GÖžŒkÜkhÉ\ZnÝ½£àæYÿ\0€¥.S ¾îû¿<|\'‹ùÈI„s5Äx	ýï–_ÝŸÉ\'§Ákéc˜ëÎÜØ=ßœåu¦W1‡×éºY†/Î¸ðÆW\roüe÷–1þ²×ÇWœÇ5\0N=DLkëßõâªetÿ\0á…±Ê?8àð–’ÿ\0ædå<^_/øÏ3þ7?ñ\"ÿ\0ü3Gäzñ%íŸãpÿ\0Ø‹ãþäÑù¼M1r’I$”¤’I%?ÿÒòÄ’I%)$’IJ[ßWlŒ{Yâ^óÒÁ[WÝï{|Zóÿ\0žÒSÐ1êÍV*ÐŒÇ¤§R›dÀÔø\r|ûU]¢ÒHÛ$DkçÙ¦çÕ^#i7š¬7~û˜µƒqk›¶¿}Ï³þÔV02±Z\\û-`q²Ò\Zâá¹®L¹Î©»Þßo§úoôß¡II>5¯m,°këTKþ{ÚñØïçîºð4-±â>ôÙ]Žÿ\0=T«.–Ó{¹î¹¯c™´Íkô÷{¿vÊ=?ðž®³2ªí´Ôïi¸:·™£Ô—m­ž§¹Îÿ\0Mïúé,O÷\'@qZýîþêÞÝÐ×7SÐÖ5Œ†±º5­Ñ£ú­\nõ6¬:o’LIæ~_Où*ý7&.qÆ»·}Oqÿ\0»TþG¯^Éþ3Ý»ê[ýÛ«þ¥ëÆÒR’I$”¤’I%?ÿÓòÄ’I%)$’IJZ\0þ´GüŸ÷Å–‹“f5Í¶³lÄ‰µÌpý×5%=ZvºKzõgéRïê4Võ¬SÈÛý¿ýF’ž·¢ÙˆÚGÚ×ºË¶VÌwÎÖ[mÅ¾µo¿ÒfÚ7úŽô½W×]áÑºHªÌ[òÅþÐæÔë=2.ý«u5î³&Ÿæë§þù¥É³ªôóô¬yÖïŠÕ}O¤§Ññ×þø’ž·áÓ™šÜM­­÷±¬@Ú,öÑS‹,ôkoøgÁUWé“ãÛP²ÍÏk[\'i`e¿šç~Œ{·û?ðÏû;OTèPÎk@í´ÿ\0äêz§ÕÏÏê¬8ÿ\0ßU;u]$ê ‚>Ïo·ý}êõ7,j:§Õ?Ïëloýmçþø®3¬}N`ŸÛ¬1È>~^Ô”Öÿ\0îÝõÇþîÕÿ\0Rõä¸ÿ\0_\\pú¦=¤²ÁŽÿ\0^Ü‹šXë¬‡1Žen\r{ik^ÿ\0ç?œø\Z½Òpé)I$’JRI$’ŸÿÔòÄ’I%)$’IJNÆîp¹L§WÓ”˜\08:dà$¥Ú	à#O‰‰Scéƒôyçø%[œÐHŽúÂ˜ß½ÇlÌ&{ÏÒIKl~í³®üSüIŸ	N×9¯Ýðþª™Ÿ‡t” _â~õ0_ûÇï* |~j`$¦MaÙ¿S\\9‡¸ÖR×È‰õˆY	)I$’JRI$’ŸÿÕòÄ’I%)$’IJD¤{¿×Í\r“þ¾))(R0R	)d4gXáI¤nžÅ@)ˆILÕßÊR\ZÌë\"ïÍ„íßü©óÛ	}T\rTÀLÞ5ç¼)ˆIHò‡ê—Wø…Œ¶²ÿ\0¢]ý_â*JRI$’”’I$§ÿÙ\08BIM!\0\0\0\0\0U\0\0\0\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0\0\0\0A\0d\0o\0b\0e\0 \0P\0h\0o\0t\0o\0s\0h\0o\0p\0 \0C\0S\05\0\0\0\08BIM \0\0\0\0maniIRFR\0\0\0ü8BIMAnDs\0\0\0Ü\0\0\0\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0\0AFStlong\0\0\0\0\0\0\0\0FrInVlLs\0\0\0Objc\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0\0FrIDlong\n\0`\0\0\0\0FrDllong\0\0è\0\0\0\0FStsVlLs\0\0\0Objc\0\0\0\0\0\0\0\0\0null\0\0\0\0\0\0\0FsIDlong\0\0\0\0\0\0\0\0AFrmlong\0\0\0\0\0\0\0\0FsFrVlLs\0\0\0long\n\0`\0\0\0\0LCntlong\0\0\0\0\08BIMRoll\0\0\0\0\0\0\0\0\0\0\08BIM¡\0\0\0\0\0mfri\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08BIM\0\0\0\0\0\0\0\0\0\0ÿáhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\" xmp:CreateDate=\"2010-05-30T14:12:36+08:00\" xmp:ModifyDate=\"2010-05-30T16:44:35+08:00\" xmp:MetadataDate=\"2010-05-30T16:44:35+08:00\" dc:format=\"image/jpeg\" photoshop:ColorMode=\"3\" photoshop:ICCProfile=\"sRGB IEC61966-2.1\" xmpMM:InstanceID=\"xmp.iid:85B02A92BF6BDF11A743ACBABA0F22B3\" xmpMM:DocumentID=\"xmp.did:83B02A92BF6BDF11A743ACBABA0F22B3\" xmpMM:OriginalDocumentID=\"xmp.did:83B02A92BF6BDF11A743ACBABA0F22B3\"> <photoshop:DocumentAncestors> <rdf:Bag> <rdf:li>adobe:docid:photoshop:f6aa8e7e-8519-11e0-bd88-93fef768c5b2</rdf:li> </rdf:Bag> </photoshop:DocumentAncestors> <xmpMM:History> <rdf:Seq> <rdf:li stEvt:action=\"created\" stEvt:instanceID=\"xmp.iid:83B02A92BF6BDF11A743ACBABA0F22B3\" stEvt:when=\"2010-05-30T14:12:36+08:00\" stEvt:softwareAgent=\"Adobe Photoshop CS5 Windows\"/> <rdf:li stEvt:action=\"saved\" stEvt:instanceID=\"xmp.iid:84B02A92BF6BDF11A743ACBABA0F22B3\" stEvt:when=\"2010-05-30T16:44:35+08:00\" stEvt:softwareAgent=\"Adobe Photoshop CS5 Windows\" stEvt:changed=\"/\"/> <rdf:li stEvt:action=\"converted\" stEvt:parameters=\"from application/vnd.adobe.photoshop to image/jpeg\"/> <rdf:li stEvt:action=\"derived\" stEvt:parameters=\"converted from application/vnd.adobe.photoshop to image/jpeg\"/> <rdf:li stEvt:action=\"saved\" stEvt:instanceID=\"xmp.iid:85B02A92BF6BDF11A743ACBABA0F22B3\" stEvt:when=\"2010-05-30T16:44:35+08:00\" stEvt:softwareAgent=\"Adobe Photoshop CS5 Windows\" stEvt:changed=\"/\"/> </rdf:Seq> </xmpMM:History> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:84B02A92BF6BDF11A743ACBABA0F22B3\" stRef:documentID=\"xmp.did:83B02A92BF6BDF11A743ACBABA0F22B3\" stRef:originalDocumentID=\"xmp.did:83B02A92BF6BDF11A743ACBABA0F22B3\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <?xpacket end=\"w\"?>ÿâXICC_PROFILE\0\0\0HLino\0\0mntrRGB XYZ Î\0\0	\0\01\0\0acspMSFT\0\0\0\0IEC sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-HP  \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0cprt\0\0P\0\0\03desc\0\0„\0\0\0lwtpt\0\0ð\0\0\0bkpt\0\0\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0,\0\0\0bXYZ\0\0@\0\0\0dmnd\0\0T\0\0\0pdmdd\0\0Ä\0\0\0ˆvued\0\0L\0\0\0†view\0\0Ô\0\0\0$lumi\0\0ø\0\0\0meas\0\0\0\0\0$tech\0\00\0\0\0rTRC\0\0<\0\0gTRC\0\0<\0\0bTRC\0\0<\0\0text\0\0\0\0Copyright (c) 1998 Hewlett-Packard Company\0\0desc\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0sRGB IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0óQ\0\0\0\0ÌXYZ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïdesc\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0IEC http://www.iec.ch\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0.IEC 61966-2.1 Default RGB colour space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0,Reference Viewing Condition in IEC61966-2.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0view\0\0\0\0\0¤þ\0_.\0Ï\0íÌ\0\0\\ž\0\0\0XYZ \0\0\0\0\0L	V\0P\0\0\0Wçmeas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0sig \0\0\0\0CRT curv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0\0†\0‹\0\0•\0š\0Ÿ\0¤\0©\0®\0²\0·\0¼\0Á\0Æ\0Ë\0Ð\0Õ\0Û\0à\0å\0ë\0ð\0ö\0û\r%+28>ELRY`gnu|ƒ‹’š¡©±¹ÁÉÑÙáéòú&/8AKT]gqz„Ž˜¢¬¶ÁËÕàëõ\0!-8COZfr~Š–¢®ºÇÓàìù -;HUcq~Œš¨¶ÄÓáðþ\r+:IXgw†–¦µÅÕåö\'7HYj{Œ¯ÀÑãõ+=Oat†™¬¿Òåø2FZn‚–ª¾Òçû		%	:	O	d	y		¤	º	Ï	å	û\n\n\'\n=\nT\nj\n\n˜\n®\nÅ\nÜ\nó\"9Qi€˜°Èáù*C\\uŽ§ÀÙó\r\r\r&\r@\rZ\rt\rŽ\r©\rÃ\rÞ\rø.Id›¶Òî	%A^z–³Ïì	&Ca~›¹×õ1OmŒªÉè&Ed„£Ãã#Ccƒ¤Åå\'Ij‹­Îð4Vx›½à&Il²ÖúAe‰®Ò÷@eŠ¯Õú Ek‘·Ý\Z\Z*\ZQ\Zw\Zž\ZÅ\Zì;cŠ²Ú*R{£ÌõGp™Ãì@j”¾é>i”¿ê  A l ˜ Ä ð!!H!u!¡!Î!û\"\'\"U\"‚\"¯\"Ý#\n#8#f#”#Â#ð$$M$|$«$Ú%	%8%h%—%Ç%÷&\'&W&‡&·&è\'\'I\'z\'«\'Ü(\r(?(q(¢(Ô))8)k))Ð**5*h*›*Ï++6+i++Ñ,,9,n,¢,×--A-v-«-á..L.‚.·.î/$/Z/‘/Ç/þ050l0¤0Û11J1‚1º1ò2*2c2›2Ô3\r3F33¸3ñ4+4e4ž4Ø55M5‡5Â5ý676r6®6é7$7`7œ7×88P8Œ8È99B99¼9ù:6:t:²:ï;-;k;ª;è<\'<e<¤<ã=\"=a=¡=à> >`> >à?!?a?¢?â@#@d@¦@çA)AjA¬AîB0BrBµB÷C:C}CÀDDGDŠDÎEEUEšEÞF\"FgF«FðG5G{GÀHHKH‘H×IIcI©IðJ7J}JÄKKSKšKâL*LrLºMMJM“MÜN%NnN·O\0OIO“OÝP\'PqP»QQPQ›QæR1R|RÇSS_SªSöTBTTÛU(UuUÂVV\\V©V÷WDW’WàX/X}XËY\ZYiY¸ZZVZ¦Zõ[E[•[å\\5\\†\\Ö]\']x]É^\Z^l^½__a_³``W`ª`üaOa¢aõbIbœbðcCc—cëd@d”dée=e’eçf=f’fèg=g“géh?h–hìiCišiñjHjŸj÷kOk§kÿlWl¯mm`m¹nnknÄooxoÑp+p†pàq:q•qðrKr¦ss]s¸ttptÌu(u…uáv>v›vøwVw³xxnxÌy*y‰yçzFz¥{{c{Â|!||á}A}¡~~b~Â#„å€G€¨\nkÍ‚0‚’‚ôƒWƒº„„€„ã…G…«††r†×‡;‡ŸˆˆiˆÎ‰3‰™‰þŠdŠÊ‹0‹–‹üŒcŒÊ1˜ÿŽfŽÎ6žnÖ‘?‘¨’’z’ã“M“¶” ”Š”ô•_•É–4–Ÿ—\n—u—à˜L˜¸™$™™üšhšÕ›B›¯œœ‰œ÷dÒž@ž®ŸŸ‹Ÿú i Ø¡G¡¶¢&¢–££v£æ¤V¤Ç¥8¥©¦\Z¦‹¦ý§n§à¨R¨Ä©7©©ªª««u«é¬\\¬Ð­D­¸®-®¡¯¯‹°\0°u°ê±`±Ö²K²Â³8³®´%´œµµŠ¶¶y¶ð·h·à¸Y¸Ñ¹J¹Âº;ºµ».»§¼!¼›½½¾\n¾„¾ÿ¿z¿õÀpÀìÁgÁãÂ_ÂÛÃXÃÔÄQÄÎÅKÅÈÆFÆÃÇAÇ¿È=È¼É:É¹Ê8Ê·Ë6Ë¶Ì5ÌµÍ5ÍµÎ6Î¶Ï7Ï¸Ð9ÐºÑ<Ñ¾Ò?ÒÁÓDÓÆÔIÔËÕNÕÑÖUÖØ×\\×àØdØèÙlÙñÚvÚûÛ€ÜÜŠÝÝ–ÞÞ¢ß)ß¯à6à½áDáÌâSâÛãcãëäsäüå„æ\ræ–çç©è2è¼éFéÐê[êåëpëûì†ííœî(î´ï@ïÌðXðåñrñÿòŒóó§ô4ôÂõPõÞömöû÷Šøø¨ù8ùÇúWúçûwüü˜ý)ýºþKþÜÿmÿÿÿî\0Adobe\0d@\0\0\0ÿÛ\0„\0ÿÀ\07Í\0ÿÝ\0\0:ÿÄ¢\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0	u!\"\01A2#	QBa$3Rqb‘%C¡±ð&4r\nÁÑ5\'áS6‚ñ’¢DTsEF7Gc(UVW\Z²ÂÒâòdƒt“„e£³ÃÓã)8fóu*9:HIJXYZghijvwxyz…†‡ˆ‰Š”•–—˜™š¤¥¦§¨©ª´µ¶·¸¹ºÄÅÆÇÈÉÊÔÕÖ×ØÙÚäåæçèéêôõö÷øùú\0m!1\0\"AQ2aqB#‘R¡b3	±$ÁÑCrðá‚4%’ScDñ¢²&5T6Ed\'\nsƒ“FtÂÒâòUeuV7„…£³ÃÓãó)\Z”¤´ÄÔäô•¥µÅÕåõ(GWf8v†–¦¶ÆÖæögw‡—§·Ç×ç÷HXhxˆ˜¨¸ÈØèø9IYiy‰™©¹ÉÙéù*:JZjzŠšªºÊÚêúÿÚ\0\0\0?\0Ð_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÐÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÑÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÒÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÓÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ(v¦ÒÝ[ïqbv†ÈÛYíáºóÕIC„Û{c]œÎe«$ýØü^6\nŠÊ©OôT6›~ëÜz¼Nˆÿ\0„éÿ\00~ßÄÑç·•7Wô>µXñ½Ÿºêj·zC\'(õ;ceã7$¸ç)ÉŠªx&SÃ 7öÙ•<zuasòèäÒÂRþEÕ¢‘òß¡crª]Òì†Ub9Å\0,úÿ\0Aî¾2ñ¡§VðÔtÿ\0Kÿ\0	*ù+WÄ/¾>)ÿ\0››O³GûN-¸÷±*Ÿ#ÕLLj:RQÿ\0Â@þRVÿ\0›ù‰ñÁM³í~Ôø.¾žî©¤ô¦ƒþ³òÎ¦%–/™H?ƒ¶{jãý{mÓîÝW‡YÇü#CåÉä|ÉøÉÿ\0 ×mÿ\0ö7ïÝ{¬Ãþ•òçùÌ¿Œ\\Ûþa®Ü·?ãýÛ÷î½Öeÿ\0„bü¸oûœßŒ€ÿ\0á¯Û‡ÿ\0•ÑïÝ{©©ÿ\0ºùpâÿ\0ìèüdù*vÙÿ\0ä\0÷î½Öeÿ\0„Zü¶6¿ÍOŒ¢ÿ\0ÓivÑÿ\0_þ\\cßº÷YWþeòÌ›³¯ñ äÛ?ýfý×ºèÂ+þ]§Í?Œú\nvßûùp~}û¯uËþ€­ùx~Ÿ4þ1~?æí¯Ïþ@}û¯ußýUóà³£ñ‡Ÿû5ûkÿ\0¬úû÷^ëÇþSóñó?âùÿ\0_löÐÿ\0åxû÷^ë¯ú£æ?ãægÅÒ?ðÜíÁþõ¶Ï¿uî¸øEOÌ°l>eüZ¿øà;pò®}û¯u×ýQó@ð¿2>+“þ8NÝüª~ëÝq?ðŠoš¿˜¿úøŽÞï[@û÷^ë¯ú›æÑý?0¾)ø¾/¸õÿ\0³0ÿ\0O~ëÝqÿ\0 )~pÓòÿ\0âqÿ\0^ƒ¸Wÿ\0”ƒïÝ{¯Ð_9Oéùyñ,ÿ\0¯GÜ#ýoùO¿uî¸·ü\"‡çf’cùqñ!›KhVƒ¸3\0l¥†ÁrªOÔØÛú~ëÝVOÌøL¯óiøƒ·³[â«¥p!:ûoÓÏ]•Ý?7… ÇSE$ó×Tõí~3ovd´ôÐÆ^g¥ÄUGz™‚‚Gº÷T4RÓÍ5=DRÁQM4”õóÆðÏO<.cš	á‘VHfŠE*ÊÀ2‘b/ïÝ{¬~ý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÿÔÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯t¬Ø{uvnõÚw±°õ9ýã½÷/lm¬5\ZŸ!˜ÌUÇGE\0 ^YuI#Y\"YØ…R}øã\'‡[\0’\0ã×Ðkùj.¾¤ø×˜äÄÐc·o}î\\e2öglÏH•Jºú…ŽJ½§²ä‘ø™Ž©>(¢ƒLÕì‚j†veDBò?ÑétqÅ¯VS_Ü[KlÖÉ5™ÜÍ,¦\nÜvÝ†š®<}Bê×I‘ËÕÖPaà­…—L´ñMQS	6’47Ô©V46Ó¨4Q^œ1Ÿ\"èµ)hfë.cé°¸c.ššÜ\0X_wã?³¦þ ÿ\0éwù&#³Å³+šÄ)›Æ­…‡ÔéúóÈúõ½ìD;ÏìëÞ9þ„LgÉúÈt´{\ZG !³ô€5‡*4ÂEýØFâé²õ?BV/å¾ZWG^Ã* ßsB¶-{þKÇü}ß½T’|ºXS|±ÍLÄ/]Q‹Zú·BnN«ý®ÞßQïxë]()¾Nn	Š¯ú< BB‘«sÚ÷°ÿ\0  †¿úÞýŽ½Óí7ÈÅ+\064Yuw9°¹4õ~?×÷ìzõìô¥¥ï­Í!+ýÆÄ+ú[tµÈâçŒ}¬û×¿c×­gÓ¥ÉºårƒdâTÝÿ\0¼²,×Ò ŒqIú·÷ì|úö~]=Sv†ï™\r›„N@÷<‰&ÀÅ¶Üý~¶·¿vúž½žžé÷öõ”\\mž\r¹æú’8¸Æpâ‡ß±Öúy§Ý»êcèÚ›lô-¹êžG7³¤þmzëÝ9&s°¥á6¾×@yª®GûQ?ò?ñ÷î½ÔèëûìFÚÚwàú·=ÒÀ’HÃ,¿uî³}÷f[þ=£o©tWž·ðŽEÏ¿uî»½š_î¾Ï$ÜýèÈÓÉÿ\0—?O~ëÝrþ!ÙàØm}«ÿ\0Œ‡Cø´[ßº÷]ÿ\0íÛ5·#tdmÍþ¿îãýçßº÷\\†W´A mm˜M®ßÕ‘ãýrpâÄŸ~ëÝsþ/Ú`ÿ\0Ç©²çþb¬•¸?×øG¿uî¹®oµ.-´öMùþõdì8\'›bOÔ‹®}û¯uÍwi“´¶c\0/¥w^AXý8ømçñïÝ{¥/|7ž\nÏ„ªÛ•±SO5E>CU;6…†Ÿ-M¥#–V>…™\"-p/¨é÷î½Öª¿ð£?øOÏ^|ÀêÝÿ\0óSâNÇÅìÿ\0˜]sÉîýùµ6¶:v+ä¾ÔÀÑOÍQ×bh!H¹(( yqyÐO˜)ö~WzY©½×ºù…®?B±pCÈ`x#ð}û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÕÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u{Èª1›¿åŽóí<µ4UKÒým5f	edûmÑ¾²mÒd#Ôn“Òa#È`.­%ø6öÄíD§¯J-”©òn+½·unÜÙêØº‰©2;“&6ý=};²Tã1ËC-và®¢•lÐWÉH!¢ŠU!àûÖ™’4!»u—>_áéÛ—!B>|EM=,0SC\ZÓÓÃ¡!H‚D°¤vU†(ô H€qÅÿ\0ª¾‘tº¢­Õ¤‚«X…\0”6ä¿¨SÈ’mïÝ{¥æ7 ÂÄ¾¥ ÙouHWHq`nõ÷î½Òã_©Eˆe”zýAì*‚–\ZØõ½û¯t½Çd[B¿\'Œ¢ãB°f¸\"ÃñÏ¿uî–Ô¹Xiiæ«­¨†–Ž–Í%UlËOIFÚÞ¦¦WH¢ENf[sý}øài¤q=m¤–8\"VyÜÑUA,ÇÑTIù\0OHŠŸ–_¶ý_ðì—yuºdbb\'¢ÇnJlõU8Sr²Ã·—-%*ÚÄ†çÙsîûR9Œî0™}?±jz•ìý‡÷®ûoMÞ/j·Ø¶–øg¸µ’Ò¯ðËv ¿Ú±éKŠù¥ñnYá§~ýëª¨Õ\r4ÙÌ¼ûr	À8+7\r.6…¤°[ÞArx·½çjR÷ÐŸâ:?ãÀØ{.`–çoöÃv½†1V6q-éQêËfó°2½]«»°;ŸclnæÄK`™l_ÆÊ P®ÆTTÓ½…„–þ–ÌD‘CÆêÈ|Á~ÑŽ¢ÝÇoÜ6{É6ÝãožÓrCFŠxÞWý4r*¸ü×¡C“\Z£P¥Ã§Ð#\0D€þCIãý‡»t“¥¾6¼ð‚šfÁ¶¡¤Å¨€õøÈ÷î½Òã]¨*†o\Z*×7R¥XŽ	\rr>¢÷÷î½ÒÒŠ¸–ãPIHúz]‰\'NŸø.“sbÓßº÷JÚ:„\"ÇMÂ‹¹€ÿ\0ª·ÔŽ.oôÿ\0~ëÝ)ij‡ –?° Þ¢4‹\0-{Ûýãßº÷O°»:óbH ^ÿ\0à\r¬=GŸöÞý×ºÎ=6ÔÂÄÿ\0O§ââÖõÅÿ\0#ßº÷^¸5o¡‘eþ·ðÖ÷î½×WÒlîHõiæäéÒ>§ëïÝ{¯ZÀpH\'DXnlTÜ~@¿¿uîº±6nmq}6¸#‚/pÖ?ï>ëÝweƒõ\r¤i7€×µ×ó{û÷^ëÊ5?–ô’M€*,E¿\Z?§¿uî°ÔSÃYÔ•QEQK*<sÓÊ¡¢–2ºJÈiq¤Ük}Çßº÷R¶L¿m]‰¨êfÁÖ\n(§™‹ÔÍŽžš\nÜd•.nÒM-@…œó#B\\òÇßº÷_ßç½ñ“ñ#ù³|ÍêŸ†ƒoìyû“³öV\ZDt½»Ü{oÙÑbñ¨	MŒÄd7=E%<KéŠé÷î½ÕF{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî¿ÿÖÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u±Ÿü\'~O`ü¤7 •ÖKþÇûÃ¹Hÿ\0zöžãá_·¥6Ü_ìëf>Ø¬hð0‡ÝÔ1!n1ûI®.mp/ïÖÿ\0}½zçâO³ü½”uÆC¢YÔ:•³j„:•ƒT{žçýºŽ“tºÇ×.°Áî5 ðËr\r¸:\0\"ßCïÝ{¥®:¸€}7{È—\Zïf¸V¹¿\0Ü/¿uî—”%Œ‡vQpLŽí¤Ñ/å½*ºnX’½½ûìëÄRN: _\"?™Ýë™«vKSc÷Æí¥×K]»+Œ’lü%bjŽHè!§hdÜõ”íÁd’:5oíÍb¾ãýÿ\0ž­¬\ZK]©V{¥¨g\'ôŽ9àt3å×R>ë_ÝŸÎ¾ëZm¼ïï5Õ×-ò$ê²CfŠëyP«‘Yl!q•iQîMD1‚²Ã¢ú¾>eÕÁØß${vÉ×Yæ¢ÁOVô”5áY‰ƒ	¶)¾Ó	J±_KIàXâ°Y<Òj‡Ú=§`Ý9ˆ&çÍ³5£e  `|ÙVTù/ÄFI\0Ó¡¿_y?e~ë7;‡³ßs^BÙ­ùÊÓT‡1<)y</lZÜ\\x¯utŒšy­`zÇR:“ËuoEt§WPÐcö[íz1J¡\"ÉUâh²ùJ…},Ò5^Bž¢8¥“ýØ”ë4 ´‰kgkcÁemP€Š!þ¹UÍüçÍþàîóïÜùÍ;†ó½JjÓ^Ï%Ëý€ÊÌG’ UQ…P1ÐçY´vç “¸öVÓÌÐLš†»nbê#hYDs&“H¬Ñ1F³\r‰çÛÒ\"J¦9QY@#ö\ZŽ‰6ËÛÝ–ö\rËe½šËr‰ƒ$ÐHÐÊŒ\rC$‘u äÀŽ«“¿—~Ok‡püÝ›“¥;3¯‘©Ù;OqäpX-Ò)Õdj\\bSTÅ>µÖ c§›ÉE1]úÔ¹r…šû–§{KÑRQ¬oæh¿\n±û\n“Ä=tSÙ¾ÞÛ¼}¶Ÿ|nY²çol¦\"%Ü¯m’ãtÛu`Jóéñî ZÕÜ0½ˆwÇ,¡|\"üXþqûÇjîºÇæfWû\nçÂÕv†	ü7ríü…4¿mP7öË¢Š\Z|”QM™ê1ÓUE¦æ–¥®Evžf»R-÷¨x\ZP‚<¤O*y²ý¤S¬†÷ûû¯ö×bÿ\0\\º—0Ý¶â¹jžáfŽâZ6Ù¸1î„âºvÓr¸S±ÆÌÞ»xàp›¯içñ[›mn\Z(3,Þºž\')CPš¡­¡ÈR»Å<N”`ÊÀ2É\"«ÆÀ¡d×7m§tØwMÃdß6Ùì÷›Iš)àž6ŠheCFŽHÜFSÄó ô)c+Èk0ãKÍ‚êÔ \'R€€?\'Ýº/òémAát·”¾¦G$Ho{ÿ\0@€Ø‚?ý×ºXÐU¨´‘³º1³ÞÅCõ$z¯Éÿ\0}>‡ßº÷K\Z:›…¿¤›z­wåŠ±{\r†úž.¿uï>”´Õ-{—PIP¤vúµ`¸üû÷^éî9QÔ-ôƒ{›\\ðÀcùúØÞÖý×ºË¨“É6â¶}H×ò}û¯uÑüÒF HQÍìºM¹,.>¶ãßº÷]Ü±°o©ãJ±·\0óÈ`·\"ßì}û¯uÓXñbM­pE­ar¿P¨qýÃßº÷]Ø\\Ü©µ‰¶®MÇ$Ÿ¡°ÿ\0mïÝ{®DIýlO$G#Q·Ðÿ\0Ä{÷^ë¾®#ýaÈ± 8à~ëÝBÛŒFåÞÿ\0óÍ×(à¥ø÷î½×Ê«þ•oøznë#óÔŸ	â×ÿ\0ŒeŠúÿ\0^=û¯u­—¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÿ×Ð_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u±Oü\'­´ï¿”Gúìî²_öùýÎâ=§¸øWíéM·Äÿ\0g[&öÝanl²nOñýÜ\0N/i7 òI[ý/ïvÿ\0}¿äëW?ýß^l|jîÇôý\0ÕôâÄÿ\0±çü}¿Ò~–Øêàr¼†Ú…“UõS°Pu2…RE¿·>ý×º\\Ðd.\0ú5“Äš–åSÒ¡té\"Fú_ésþ¿¿uìqê²þe|±®®Ÿ%Óq”jlU9’‹|n|Ì²å*µFÜÇÔÄÃÇŽ¦k¥cFGÜIª>#Vó§4;I.É¶ËD™ÁÉ>q©\0ügý¨óë·ÝÑ÷#±šÇeûÄû½³	d–“l{|éTTMÒæ6gsÝc\r(€]0,ðèþ\Zô î®Ë§›3‹³¶³G’ÍÌŠ‰#ex(cf²6›{3)*É«Ù\'&l)»nââ:íöÄ<™øª}ƒâaéAçÖLxßÞzïØÿ\0l-¹“·#¹|Ô’Å¨Ô’ËoZ%ÕÚ‘•–BÂÚÙø«´²©Õ\0ëdý¾ÔX¼m&3G\r:‚Ž\n:\Z\nhŠÃGKA@^ú@½Á,O¨W&oëæ¸\n\n„\\ua¼eôé[³<.¡bB†RG×ëõ·¿g­ô½Çd,<Œ÷±nF®”?¨·«‘ÏO~ëÝ.¨2%‚é`­ebEÓÕv ÞÄ€ªy·?OéïÝ{ª@þmßñÆ‚ŸåÄÆEOÜÒaûbŽ† ±Ï÷ip›´Åå…¥ª’ÇZ´llû	óšÄ¿¼ã\\Ÿg\0ß—}8ðë³ÿ\0Ýe÷ž»³Ýfû´ó–ä_k¸In6\'‘¿²•Ku·)?èr¦»«dàŽ—¿Ú\"‚ƒüº¿˜.ânö¥Ù[Úº¿1ñ÷wåc]Ëˆ/-Tû\'Xéß{Z\rLcð±+EÓ_L¥•MLqE¶s{lÁ&ñ=ßÐ?Æ=ñî­rÿ\0ïÓ÷-ÙþðœµyÏœa·½[m¹1¸u†5¯Ñ\\žm ‹9Û(ô‰Ï‚ÇFä˜\rÁA“  Ëâëèò˜ŒK‘ š:ŒvC_MU\ruTnéUKUO<rÅ\"›:0a{ÜÉ•€*ASJòõóMqoqiqqgwo$7pÈÉ$n¥^9Šº:št`U”€T‚GB?&¢ê^ ·³€ur·:M×JiŸ¨$þ=ï¦º[ÐV°G±\0\0ÌÁWR°„xÜsé¸?_§ý×ºYPÕþ–auÑeSô^U±ââÿ\0ãõ÷î½ÒÂŠ¬é@I,Úny+¦ïÈ<Xp.lH÷î½ÒŠš¤°±bl.è‚.òI^Gôþ¾ý×º~I–ü“þ €HP	Ž>¢ÿ\0QïÝ{®VàýI¹\rõ½¿³ÏõÕÇñ_~ëÝx¸Sp¶²ðªúµ\r?éý=û¯uÚqÈä›X?ì?\rïÝ{¯[ê8án,\0õjçémDÛýÇ¿uî»ú›MÇÐ›†<‚E#ýäóïÝ{®#Ó{ƒÇ¹6&Üˆ\0­ý}û¯tÝ·‰“x^ßM±ÇÔÿ\0Åªoñ?Óßº÷_*ÏøVGý¾—ºÿ\0Ã¨þ=ÿ\0ï²ÄŸøŸ~ëÝkgïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×ºÿÐÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u±\'ü\'ÌéÞŸ(Xqm§Öû^n£ÿ\0í=ÇûzQoÅþÎ¶*îº€6ÆÆ`ÅHÜ{Ç‘«éü\'f‚¾l‘ÍÇ½Ûü\röõë‰~ÎÚ…¬†@F©`ÅJ1IJÛƒÁúŸoôŸ¥µAy²‚ƒõé¹[k½µ\0yµ‡Óßº÷AÈ®Þ—«ºÏ#_‰«îLèþïíæ€’žZ¸¤z¼Š5‰òchA*@ä)ý}‡¹£w;.Ñ=ÄGümÎˆÿ\0Ó7âÿ\0j*ßë+~æÂ\'ÞßžZå\rÒÝŸ“,Tî¡£YÛ²RÜ‘ð›ÉÚ+_\räa”ê“ÝÞY\ZI¤’G.îìYÝØÝ™™‰ff&äžO¸\0!™‰<I>gÌ“ó<O_WAAkk\nGo\Zª\"(\n¨ªªªŒ*¨\0(\0\0:Øá–Æ§ë^šÀS/ºÑwb]*\\\Z•ÕGM))&\nv`.n¢ß^¼å}´m{%Œi3/ˆÿ\0éß\'ö\nË¯“ï¾»³{Ñ÷÷š#º2l6Wm¶Ø\nÕVÎÁšeÉ\0O0šäÓ‰›£Á¯:¢]`­‰¿\ZB·¡t¡\'ô^ž?×çÙÿ\0¯X·ÒóZœr<—ñ9· ²²¾×é,9[ž¿uî—4ò/ªä€ÌI!ˆ ,œÇ¨€	ü{÷^ésŽÉèeË¾ƒf6 -ÈÅÁ¹•úƒþßÝ{©»Ója{?`îÎ½Ü4«Q„Ýûs)·²=îÃ)K$*ŠH¦*Èl@qÇ¶§‚;˜&·”V)©û§òèAÊ\\Õ¼ò/4òß:òìæ-ûh¾‚òÝ¥%·‘e@¢Åt°óF#ëI\rý´ò}½÷nÆÌ£G•Ú1·kƒ£ÆZ£_=L©\"«ˆç‡[u`}ã­ÑžÖâæÎcú±HÈÚšWó?Ÿ_c|ƒÎ[g¸|Êù²0;Vó¶Û^EšÑn\"YB’?j(ÞŒ¤u²ÿ\0òSùQW¿zÏpüpÝ™#S¹:~³û\nz¹Éž¿¬²•ËKY„Õ+´’¦ÊÜ5ˆ\"Á(òPÄ %8÷\'òð×v“m3½f·\0¡>q1Àÿ\0h{Ò•ë‚ÿ\0Þ“÷}·ärvz9jÈEËœÔíê¢Ñ\"ÝbMM%\0\0}t\0Ê}f†w&²u}ØÜ€VW´f;*Zìˆý$ÜUînrG×ëî@ë•.¨+ÍÐ1°\n[U½(ZÇK,d’l.?\0Ç¿uî—Ÿ¥µjFUÃ%”XY®\nø¨úû÷^égAXAQP„4e¹CknmuàÚçò}û¯u‡qïúM›.Öþ$\ZÃ¹h°y:Ì”XêL\"VÆæ\nùþæ#©AX\"‹ÄZ#û·×u\nÞëÝ4Õ?CÖuW7RFUþ„r-­ÿ\0>ý×ºxÖ@:‡Ñ®Ö6\nˆ’l?­Í½û¯uÊÜd«\\0ç–:A±7ÿ\0c~/ïÝ{®Æ¯èÂÖçŸP<–àq{óþ>ý×ºð_¨½ÀQõ+§SõííïÝ{®¹\0è\0ð..­¸úX‹{÷^ë—¹¶M¿C{®}û¯tÓb7&ñ6ÿ\0ž\\[úáUéaïÝ{¯•oü+þßIÝvÿ\0ŸGñïÿ\0}†#ßº÷ZÚû÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî¿ÿÑÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u±ü\'í´nß”Oý6¿Wÿ\0ŸÚÞ-í=ÇûzQoÅþÁÖÁ}éSm±°lEÛtoN	#R.f—_¡¹aôŸõíïvÿ\0}½zãâ_³ .†¯Ö«{½š5*ç]¿†­BBI’=¿Ò³¥Æ?\" bS…á4FÀz®S(¸¹&À“þÛÝ{ü=W‡ÌÛ&cbvÜRG¶p³Æ®JËŸ¼«fNÈ”ëßü=ÃþáÞ4»¥ˆ=Å¨éHxÿ\0¼¨Ÿ]ÿ\0þèÿ\0níöi=À÷>xGï-óyú8ØQk·F0\Z=ÍÄÚ‡™}Egâpn½·ƒH„Ç-ÅcŒE´JÊè 3ÿ\0at9¹ü`»¬Ü,-?ß“\"þE…•zé¼|ÝýAö“Üîvi“jØ/îù‰\"¶‘£§ÏÄN¶FÀ´44”T0H«-=,*.Qš\0ÔOÑcþÖ’Ãü}ä¥\0ÀëãuZFPó9i›,OÇ$Ÿ™5\'çÐ…A[{xØ‰8;Iä^ê8üÛŸ~ë}.ñù/T^O¨)r»Þj\rÔ\\óÈ¿çßº÷K¬}}ÚÚùàCÀc`ÌÁ®°?Òäÿ\0¶÷^ésŽ¯r«ê£b4\r6@§S«©fÒX­Ççßº÷KìfH±P]ƒ+î9à’Y= IôÜ›{÷^ëVoæo´ Ú0;¢™R:}áA¶÷”q¡oD¹\\L4µºõ}$|†:Wkqv÷óµ·Óó%ã*Ñ%D“í$i?Ízúnþìþn“š~é|›e;–Ÿd¿¿Û‚;ƒqû˜Ô|…:K.þÜŸ¦>bôŽæ5oIˆÎn¨:ûr…/ã¨Àö\0;Zu¨T#TTuÙ\nz±{…’™\ZÞŸhù^ôØsÙ-hŽþ¥Sþ=¤ô>ûöûq¹Ÿu¯u6Ñl$Ý6Ë/Þ–¦•e›n?PÚ}À³Di’²çÖî¸úëûL5Í&’—\0ÿ\0h©úé÷|©\ZƒÒç^\n£]nRÊ¦rÁ~§éøµ¿¯¿u¾—45¾5A­N£ÿ\0îá	Õù“V’ƒ›Ž­ýû¯t²‡1<rMW,tôPFòÌò¼j‘Æ±ëg–Gô„ŒŽX‘ôâÞý×º)µ¾ë;?˜’…Z™·7†ÎÛX´–;ÏšÜ5,6_3”™Ø´´Êªiãúêžb×6î½Ð½Ò£]ƒ8ý›»j¤Ÿ,‘R`32^LLÒ‘>&¾i¯Pì	ÞÈŒŸº÷Gržr,‚Þ­*¶µ´ú®/Ïôÿ\0ëo~ëÝ<¬ìX1*¤XX%¬Hæäý=û¯uÌ›]	<Þä~ykaø?[û÷^ë­ôbWIúýx¹äÜ*Ø}û¯uÝþœ†`,O?ÔŸ¯6\0Ç>ý×ºóŸÔ\rù¿²5©PI$þy÷î½Ó6ÛromÏ÷^öþ¿Âj/øñïÝ{¯•ü+þßIÝø‰>=ï¯Ãû÷^ë[o~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÒÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u°Çò”C¹~P³q«ourýñMÜmþ±öžã‚ý½(·ø›ìêûûÞ¨t¶%Š÷õïER÷Ò	ÂlÆ+é!®Ö·è>÷Âßoù:õÇÄ¿g@\rn¦RŒÄ^ä\0Dê$ßKnúŸ¯·úOÒÂ‚´³FÈÊId`‹é¡®ZF\"Ä3®«^÷÷î½Õ`w­lµýµ¾&•µhÍIMÀŠ–)ãþA‹ÜÎ_™72|Š(û/ùúú•þï\r¶ßmûž{=ôè¹Šúáþo.ãvI?:—Xº:Ÿ·ºê& +n¼A$¢©óaÉ[´ü°¡¹e‡_Ø¬zýø®¥³û£û÷,&ŽÛ§å$ÐÆßñ–=_E\r{…“YUZá—Ò×kžyg(¤ÜÛ‹{È.¾P:\\ãò(ºX;-®«v,8\"ë¥ÕC9 þ“p¨÷î·Òß^)BÄùmp@mW·¨\0¯õ<\'ëïÝ{¥ö3$„á=ZµzŠk»Øßý~òëÝ.1Ù%º÷°*\'ƒqÁ{‘K)ÿ\0akÿ\0O~ùõî—Xê÷XÀº©P\nYÂ‚ZK¯¥îÞ¨Ôö÷î½Ö¿?ÍÞš5ù´2\0Þ£#ÕXV©k[SRg·*pY­dK{‡}ÄZo6MüVßàsþ~¾ƒÿ\0º2îY}‡÷ÍèÃÍ²ÿ\0››}‰oæU‹µ²Ï·2´’<5XÌö#K4fÒEQE§©‚T?‡ŽXâ=bb“[:üK*Øêzé·9mðnÜŸÍ»]ÊƒmsµÝÄÀù¬H„~ÃÖý˜Œ¿ÞRRÔ—]UtÔÕr17æª(¥7•»ý?ÛúûÉÃ“^¾-â]Æž€ÙŽ„~@9V/©4–Fa}%µ0V¿ 2­î~êý.±µ«eK—r,Í%®…½‹BiâäÛéøý×ºAïÝÓQ›˜mŒ|®¸¨&Oâr#ûÚ°ÜÀZæôÔõFð^}×ºiLp¤éN¾i#	&{Òîz¯QmRn\ráO§å€²¦1©Â¥ãßº÷N)L t‘chÙY]®Œe?Ô2ñïÝ{£YÑ„wN\n§’¨jŒîÒjjIæšFiòxJ¥˜árr3ORšJYßêÓS—<È=û¯tbéª5k©ÓeRMµ~\0#ÒA[ZÞý×ºsF Zä¸¿?ð¹n/cÇ¿uî²õ°þºE‰½ø<‚\'ßº÷\\¸¸äéÿ\0UpÁàXŸðþ–÷î½×ˆ³Xõõi…üžAëo¯¿uî™0÷—x‹i·÷\\é½íþâªmÍ‡¿uî¾Uÿ\0ð¬Oû}\'vâ$øóÿ\0¾·\rïÝ{­n=û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷_ÿÓÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u°ò˜Aœù:I°|\'W­ÿ\0ÖÈnóýGõöÄÿ\0\nô¢ßâo³«Õîúö“glk]ˆÞ;Õ8<…8’Ä‚³þ¼_~ƒáo·üzãâSòè¦­hô¯,Í¥ußS$;ˆÖäÿ\0“ÇûoôŸæzWãêãunÚ‚i¨j_©TÒ ›ßýo~ëÝWgxÑš>ÐÝdòµuÉ\\–7ª¦‚Scù\Z˜óî	çHŒ\\É^¨ÿ\0µ\0ÿ\0\nž¾Ÿÿ\0»s˜!ß¾èÛCý]¶ãq²qèÑßO*þØæŒý‡¦Î ®‡Ú]YPë1nì\nÈí}*³d©à»Ø‚9äqì»—¤oû4„ÑEÂ×óªÿ\0—©kïƒ²ËÌu¿~ö¸#/3rÍäŠmÓê1ÿ\08«ÕáQÖébª_‚·bÚG*l™€6“ô?ãý|’ƒPáÒòŠ¾òX\"îöñ}£P,>¿‹Íýû­ô´¢È:„efÔúŠ©W¹(¶`£…¿<Û‹[ßº÷KlvAF”ú)1¡Ü‚	 0°P+ô$“þÀû¯t¾ÇäƒHŠ¤k(šX{‹†S\ZßÇmž,>ýÖ¸t¹ÇVI\"*ÊÇC\"3£©Wò/é°¸æ×÷î·Õ\04ìúåþJÑÐ£«¦®v½ª°:**j2Ù)A\0›J´a~J°>áp%Wß¢ŒÇl ÿ\0¶f=}tÖÌö?vÞbÝž2?xs]ã)§Ä°ÛYÁQê£¯Úê¿¶^.\\ÞðÚ˜h?Ïå÷&	ÒX	kòt´±’«rÀ<¢à{ÚÄÓÝÙÀ‚¬óF?k¯ù:èG¹›ä±í¿¸<Érá`°Øïî“@6²ÉÇý¯[Öa*ÖŠH’›ÑÑQÓ;2…f0SÇ»\r#ÒdR>œ§¼˜<O§_ÔÅoˆ¨¯ÛLô cëËêÐÂO©Ô›}m(nÁH$Õ«ñï];Ò¶L£ÒÐÉ%;“SR>ÚÃ¤‘yj?¡0ÆAé­ÿ\0[Ý{¦Z\nM7³¯,ÌÇêOÔ’O×ßº÷Y3¹Xi:{­jj&ÒÐ\ræ•¤­ÀÓL_N£hÞ3ôý×ºò}·ëj™ïsdZ–ÿ\0\0„ÿ\0_~ëÝ>ô¯fQâûƒg}{Oåª©Ù¹(¢†²ÏO›ˆÏŒªsöÅ-AŸ¡¥k›ŽI	6\'ßº÷V§ITh>’Iô‘ê,ln~£’úÀ{÷^éIMRO:˜þué&ãý‚§×è>ý×ºtS¨A\"Ö²ÿ\0hqÍïôÿ\0~ëÝdv77\'“þ¨‹òztÜöþý×ºîú¿Mî8C¦ÆÇŸ¯<}y÷î½Ó%ˆÜûÂüÝv½ÇþBê‡õ?QÏ¿uî¾V?ð¬/û}vâ$øñÿ\0¾³}û¯u­×¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÿÔÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u|ÿ\0Èî§í²Ÿ%šö-‰ë1õ«wqöÄÿ\0\ný½(·ø›ìêî{#æØû)µ5†øÞ¨ÖÕÉ;oe$¯\"ãý¹÷¸>§¯^¸ø—ìèÇä¸[‘©€RÒt«kRN€¤Ø\\ý9ü{{¤ý+¨ªÎ¦O#ˆœ‚ 5´†ä$\0B»G×~ëÝ’xco	¸£RÑe(\Z†yF¢¿wŽbÊš‰7/I:‘þ}ÅžâØ0“oÝvbo·âB~Þáû:í×÷D{©Ó{¥ì¥ýÀ\"H÷›%$\rJÊ–—Ê¾d¡[I(<Ï‘è¸QUÏAYK]JÁ*hê!ª¦r.zyX\\ÈYqªÈÑ<s\'ÆŒ}ªCæ:ìÞ÷³ÙóË¼òþàµ°¿´šÚQëñ´Oÿ\0sÕÝímÕM¸p¸|ý,ºésXÊ,´¶”A]M¦;ZAx¦‘ØoÁ÷’öó¥Ý¼Qš¤ˆ¬>Æ\0ÿ\0—¯Œ®lå}Ã’9¯™ù3u‰“sÚ7‹9AÁ×m3ÂOç£Põ	ÚÝ\"Ú\0aé»\\…ô£-¹ã‘ñµ½½Ð¥bæ)q”ÏU[Y\r%4`ËU[<pSÀŠne‘¦)`…\"åùµøöõµµÅåÄ–vòMw#HÑK»À*¨,Çä=7,ÐÛÅ%ÅÄË*ÌÄ*¨õ,h\0ûOAv{å†ÆÀHôØ:\\–ëªŽÊd¥‘(1\"TÔ•ÕŠÓLŠG(Y~¶>òK“þêžæs$QÝïÏdÀ.5I9þJý’<gåÔ9ÌúrfÍ#[íæ]Æàcô¨±Wþj½5}¨¬>}\"Í-éå¾?fíjh®BÇS[•¬“AãN¨d¢PJýHQþÜËm÷0ØÒ oùêý¦¦LvÑ\"×äÜþÓÔw7Þ3syµå‹UÑ¦‘šŸíUGòèKÚß8§F7W^ƒ*‚§mgË\Zj»Ÿ²ËÀÍù©[Ÿéì9½ýÍo‘Yùkžb•©„º£¯ËÄ‰¤õO£·ïlÌyå—@OÅ¡éþÖE_øÿ\0U§òcº{‹··¿gàÒ\Zê-Å‚\\v&i# ËÒch¨h±ôtïDŸi<éP†y>¢¢Ö÷„Þì}Ù}ìåmËqÞï9I¯vƒOÕ³o¨UEP¥Q­xVU¥zú,þï¯ï)ûœò÷³Ü…ìŸ1sÏ.s]›Å—q€Çgqqss,îésH±ŠÈxëEXŒõ3à¯Qå÷ŸÊmƒŒÊã+¨iö}soÜU”ÓRKOOƒSQL%Y¡Õ–·Ç£PPÄXÛÜÉ»l·<Å/Ò#†HaÚ€‚+ñÚõ—_Þï‡.l_tíá9W˜¬ïŸœ¦‹l´šÖxçŽH‰ïdI\"fVU¶¢b¤Ñ§@xõ¶-KQ,®nÚ$–Òë¡˜¹\0‹6ãÜã×ÍgKüed’¼1D¹eTXã,ä”¨ESÁ³’,>¼ý>¾ý×ºü­†Jt«\0‘—™f°âóKvÿ\0ZßÓßº÷\\gªXÔ€G ÿ\0B,G‘ïÝ{¨û?*¿Âvî8Y?»}‹SŒd.â\nŒå&oÎ·,£øvf Þý×º4Ô)¯ÿ\0Û@ÒC›„]Ög$ƒ¤ôÔû÷^éiE•™‘ciã¾…Pòbl©o£·Çü=û¯t¬£Èý%šÊlÅ•N‚A\nè=J\0\0É\0ÿ\0^=û¯t¬¢¬lò}Á<»È?BÚx½ÿ\0¯¿uî”ÐTÙTkõx¹ÒM‡èô–¿úÿ\0QïÝ{§Ú¾ºM…‡?Õ¹þ–çóïÝ{®|ßô‘qõoÉ@Xß››õ½û¯tÅ5·6ï¿åv¾¯ø0ÅÔßý…ýû¯uò´ÿ\0…`ÿ\0Ûèû´N¤øð8ÿ\0ÄUƒ?ñ>ý×ºÖïßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uÿÕÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uxÉŠ³ìë~EµíäÇõºŸÇS»×ý¶fà¾?îo³«£ì¼Ÿ›¯¶“)$¤àŒÀ\\ª\r³²¿#Ieâö<ûô?cÏ¯\\|KëN‚*\ZÅåK±‰•If±°&ÈHõÙ¸ðGÓÛÝ1Òº–­—L.Êtz]ìB¡\nCiþÕÿ\0ƒþÛßº÷MÛ÷mó³«°ÈÐŒš4uøj™üž­m¢9¥6)M[x&apM\\‘ì·wÛ¡Ývë«Í×øXe[ò4üª:•½÷k~ö3ÝnL÷K—É{µÝ’\ZÐ]ZÈwV¬}\'8WÐüTtDéq^y:Š¸(Ú\'håŒ‰«\'ŽXØ¤°”¡ŠuÆà©,È„Õn}‡y3îíï/>¶®]ä›–±ÔGÔKHmÍ\r5,’WSÄ®:ï¹ßÞÉ÷%öÇj±½¹÷*mÛw¸¶Žaa·[IquˆÄW¼(!™+¢XÚRÈà‚¸èÞõ¿vÇ°ö¦?kC‰¯Ü-Œžµ©r5ÕPb#•sŠ¸èþÖ&ÌLÉOS,¶%Ðe\ZFžsC‘~å~åÛí–\\ÇÌ»]±JÓÃNÁI¨J*¢Ur*$\"”ëæÿ\0ï_÷Ûö—Þzy§Üÿ\0o=¾Ý¶ë=ÔDÓAs-¸/ub).AØ\'T™(ÄI­µT}/É­Ìöû=±€á|Õy\n­%Šú€ŒÒ®´#‚\0úû–lþåÛx\nw~¹cæ\"´Eþo+ÿ\0ƒ¬U¹ûÆÝ’~•¡ús³Çc_ðôÁ“ìœæëÈ-fè¤¡ÍÓ$šé°u9Jl5(\n¤¢¯§ißþnJÎÿ\0â=Ëü·ìÙÉvOÉüÉ{¶î.”–õ-íe¼“Ö“O‚ôŽŒsž£íãÝkÞdºñy‡h·¼´Vª[4³¥ºzV8Ý<FõyYÏ QŽ…m©Üœ(Tn£Øn–A®ˆTÓOÇÉ][É{Õ~yÿ\0abû¸ïÛë4’{ßÌHMipL‹û#š?%èÿ\0h÷kÚÂªûi´¢SŒ@)ý¯‡öž‡\'oôÆxGIºöxhÚE&FÃÑf1ÊÚÖòc–‚\"Éõµ4—_ÅýÅ‡ÝçßNUw¾äßpñÔpŽîâÚcòÑ+˜˜üŒ­}ÙöÃ}U¶æT[u>ooÑöÈ¡Çä	?èG¦;Õû¾Ž™•5=VÜ¯¥,Žd?îG1ih‡’À,ÐÆÅGú€½·¾^üû]¹G·óÕ¤×0×û-Â,àqð®£\n[äCLµâG“{eío;Ù½ß,\\G”øí$Ôÿ\0Ã rióŒú‹¶üèÝã°–J·¦Ì\"ê?Åq±3P^æ²Šï4:GÕ”ºÛ“§éï,½¶ûÁr\'¸o‚]³™KpÀk>Mˆåù/dŸð¾ ~qöŸš9Ie»hîÎ¹ñâéðØòÑüÏrO¦¾²íÍ×ÔÙïïÖ—4òÑÿ\0«¤ÌPÇ¤¬Æ4ñÕ=–ñWÐ£O°ji¡`Âæãfœûì_·>à}DûžÈ¶›ã÷.Ø,3×4ñ\0\Z&ÌJ„ú0ãÒ^V÷OœùR{=ÚIöHÜ°µ™šHjhÔšÄÌhÊ’\0Ô\0ufýKóc­7t”˜­ÜÑî~FŽ$\\ÍOŸkUÔ7¡E.áHáZ5/úR¹ ¨ÚG>ðoÜ?»O?rPžÿ\0j‹÷ÎÀ€“%ºŸÖ[j—ÀâÑÌéë%ùKÞ^UæC­ûþîÝZ€$¬<6?Ðšsä®ý½XÚÝX¼SÇ•ž)²¡gÀÑb¼3M˜«™?ÉÍ$*QÇII4•2È”ñ R[Q@ØíÀxƒCò>‡Ðõ.q\0Ž¥JnMá”uy„ÛÑJ©ã¤ÇãäÏ×D¬À6C!UEM+ªŸ¢Pª“ôf÷î½Ô)25Ò\r	Ù{Ji”²¼\\f1F¥-äV—žÆ4:l.|r7x÷î½×-­Èc7%T™\\†Ñ8ŠŠÝ«“9<.è‚¾®¡ÌÒPM=]LTU8˜¥ «KÉäT*¾Cp=û¯thèwæÓ¿înÍ²¡ÖìàÄ\0¬ëõ Õ{0Ò\r‰?Ÿ§º÷B&sb2¨ñbsX¬Á§xÞ¡ñ™\n:×„:È5J”ÓJ#º±RÖ¹‘Çº÷BF>´£_èUä°ZÄ±gP¥¯ïÝ{¥…s2€ª\rîK)ÃôÝ¬@{_‚8ßº÷JÚZF4€öf \0Å$¾’ÆÇÇøû÷^é»zönÉë\"n\r÷¸ipTÏ6YªòùüµCˆé0»sEùmÁœ­’É%3LæÖ[\\û3Ú6mÓ~»6[M“Í:¡v¥Ç\ZüRK#Q¨ËI#*3Ò-Ãq±Úà7÷E‚­jYØðDQVw>H€±ôênÈÌï-ÉùíÃ·ÿ\0¹8šÔA€Ú™#\rNï†ŸÊJä÷l´•Scquõ‰þoLÔªo4æbÑFÞáogi/ÓZÞ‹—_ŽDDO¤Z€gQþü!CþÓFkZMqpž4ÖÆo…\Z…ÀõzªOðÚ|ÚµÓÖÜû»úhÛêI¸ÆTÏ6öƒ¥}|­áW­«ùÑ÷€ÿ\0QÔÿ\0—ý{õ6ÿ\0è¯~ëÝkïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×ºÿÖÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯urŸÊ:¿ìfïâM„”|¿[~™÷Aÿ\0‰öÄüíéø8·ÙÕÇîì‡Üõ¾ÚnOdo¹\'Ó¯ilmø-sÇôþ‡ß øOÛ×§ø—ìéEYäŒ\\\'£û$þ«Zÿ\0¥QK\0mýy¿·úc¦íÇØx}Ÿ†iC&cF§ÆÓJ‘JŠàˆ_!Pá£ ˆIpš•åÛG·±ç#{uÌœÿ\0sp6˜âƒh¶ÍÍíÃ­-—e•±ªŸkWo@2ÜÏÍû?*Ã	¿w–þlCm\nø“Ì}1šW‹š(õ\'#’ƒ´;-µe&þïíùŒRŠJ¿¹ Ç˜Iº<xXÉÊeN“pÕ17P¾æ‹>cöÚb£aÚ_œyÂ>7S‚?Ÿƒ†àÂ9ñ£›£Ý|¯ïKõåî^ô‰{¦_øc)Zæ¥ÐzÆz6ÿ\0Hí:Aå«²Ù§HÑ™Xñ%¸Ô‘ÁDÆ¤D?£NÄ©·°÷1ýç}ÚßKEg»ÃµÙÒ-\"U*=<Y|I1ýŸ :6Ùý•ä-®qa-õÇÓÈH\'×BhLüÃ}½\rXm•±±KÚml\"ª‹	%¤ZùyÒVS=kO1e¸ÜØŸ¯çÜK¸sÏ;n®Òn\\áºNÇŽ»©ÈýšéùÐöÓ–9jÁBÙrõŒJ?†¿Ã¦¿Ï¡KG†cá±*¬4€(i4ðÖa\n«`Öo©ÿ\0¥ˆÎçºÕûÒçW¯%n®ŒþŠÆš~Š\r?óM)û4ô±¢ÄíÉ—Ç>2²è|%¤abä(HúÍçú\ZZs7mì\ZÇš÷8XpÑu:ÿ\0‚Jt†~_Ø.;”€ÿ\0ð¯Sfë}‹•²Ë„£¥r–3P– ”…:Ã)§hCÈWò×¸úóîFØ~ðžïòû\'…Î]À?ÐîÕ.üµ8ñGå =7_i½¿Ý•µòüpHÐ‘ó¢µHÜÏBÌ¦ÛO1õi¡È…kÙÓd(’),\rƒBö»~}ä_\'}ðìghmyó–šh\rÅ™.ŸéšÞC¬]H}¨‡˜~ïwQ,“ò¶ò²‘ÀßbÊƒA?é‘«t\rÕAºv&V*‡\\®ÜÊÓ9¹**‰é$¸%I¤ÉQÈ«*1¨sqõ[qï)6ÍëýÐØ¤vÎÈã¾6 ZùIƒ\\L?¤ŠÀð=B7»o4òVæ†î­»sSÚà”¯úIéuÿ\0JÄzŽŒ—^ü·ÈãÄXžÊÆG¸q¢3øÊZh³1Er	Èâí3/h…<öýÆ·¼b÷#î—¶Þ	÷Om/>’ó-ôs¹0±ãH&5xM~“ZWñ êjäï~o-¼+s·ñíø}DJ€p¬±Š,ƒÔ¦–þ‹t#n¾Ø=Ç‰—yôæo}F¹%¥¥.2¦§F¶¤­¦—ÅUˆÉêR\nJ‘µÍÍÅ¯rg¿^ã{Gº/\'{›µ]]íÐÑJO‹ÈSÉ¡™Ž›ˆ©ð‡fR>	Tc¡w1{[Êýby‡’¯ ‚òLê6ò7˜’1˜_Ô¨Š2sÑÝ{kslÜ¤ø]Ñ‰«Ä×Äì†*¨™c˜}5ÓÊT$ñ°øü{ÎÎOç~WçÍ­7žTÞ#ºµÆ ;e‰¿†h6ù0¡â¬Ã=c0rÖ÷Ê÷­·o¶þDån;\\}†£ÌŽ„Ž¨ù\rÛ½72.ÈÝ.¸• É¶s´Ðg¶Ì‰äY8±y“øp˜¯­©›êI Xî±žß{‹âÝn;_Òoÿ\0ítÇ)?ðÕ§‡0õñ·£Ž„¼§îw6r‡¥ïÔmƒýjºý]qÿ\0´:}Tõo_?˜Foß·Ú½ÿ\0Œ“«jëÖ:j½ÅAKW‘ÙU|®£=n(&áÀC![0t–-$†“I#Þó×Ý‡Ü^S3]ì°®õ´-N«pDê¿Ó¶c¨šqðšQöu’œ±ï_(ïÂ87)Û¸i˜Ö\"£0íû5„?o[õFÅé½ïµ¨3û?wíýó¶¾ÖK]´wgñ,\\Té\Z¬Q*a²!(–$²ˆÙc(8Ò>žñÚx\'µžKk¨+”4du(ê}XíK±Kñ¤ÐJ¯pe!”ýŒ*äzö÷Äõ6ß¦ž5ÆÈì•Ïgí :dA•\nãPÆâãúûk«ôI÷†äÛ‚¢XpX±@u®ÉJWÔt’e­}úþý×ºgÙÑn×Ìÿ\0ÆUMIS%+ãþàÆ&\"†Jˆjš\r5+,vûštpÚu©I˜uîF*¯7£YòÙ_3ª‡ýÊzU¹±¸\n°Ž6þœû÷^é	Qß¸}¿¾ðô»«zàvÎÑ¤Åî¬†à¬ÌVâ±tPGAŒ…ñæª¦£Å$gïd4Sªg:UXñí~×µn›åì{nË·Ow¸9 Ži×ú*	i g¤·×Ö;e³ÞnW‘[Ú(ËÈÁ~lE~ÁžÑüÐÝý×–«Øÿ\0ºöMÿ\0UM1£Íwvþ¦®Û½9´MÊµLM$qf·m}?-,H@!]	>æ¯õŸÛ¹&Ò\rãÞN`jºêlµ)>çp<0Ú¡ó’BÔô\rŽ£õÁ¼æ[‰vïnö£xTé{ÙÃGe©‚IØy\"¯©Î›øýE³s‘öWdîì¿tw]#G?bîÈ¢Š‹lÓU[î0½cµ\"cˆëü%ÔšuûÚ”ÿ\0=3ƒ§Ø™ùæMâÐì¿´Å³òj°+i	,Ò²ü2ÞÜ7êÝÍæ‡ÃŒÿ\0e\Zq\"—–o¸®í&áÌEhn$\0Áâ–ÑÈ#ò¢\rl>7n¥=I*=E”3[’ÜØêÃ›Zÿ\0ë`>…=3Ð÷ónÛÿ\0¨ÚÃúÜÿ\0©¿àßßº÷_+_øUÏý¾“½?ñütÿ\0ßC¶ýû¯u®¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÿ×Ð_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯ul_Êú¼PžïõXËÅñúrŸøŸlN*«NŸƒâ#«®È\Z®«ÁµÃûCwõémÜí’N“{ê^¿[ü\röõë‰kéÐ}]UŸû8éöÿ\0ÙýýTÆ­­u¸šW\r{Szž¶t*©( ¹ý û2±6+uîI+Y)«,d+½?\0v&®ô±QRH.¾¨Á\"Ù2-ÉVpJ¯ôŠ‚SˆZ­M`3ÔÝ«´°øI–´‰rùÁ,“Õçr»;T°I¨ãŸWÙj<ù\0i›M™Ê‹1s¶÷ÌVv›<Ž–¼³mý…¸1ÚÅý\"•-4Ç‹Ï;I+¶K\0Ÿhå­³h¸ŸpUi÷©¿µº”†þZ¨qŽa#QŠyô-ÑÕô™I¹ÔÀ9qkÔ9¹Ô\09öèAÒÆ–¸›]ƒ7+û~•fÒÚA7,5[“sý-ïÝ{¥eC@Q`¢Ä¤Ô@pÂÅµXòM\0}-Ïº÷K\n*Òl\n–bß ~Ð*öõÙn-b\0·>ý×ºXÑ×Æcf}B¨È4ò ©b‡úøÿ\0ïÝ{¥­p,ª%¾¦PÏ#\n– iVR\r\"Ö\0\0×ëïÝ{¥Ö>¿PþÃ<17ô\r6b£ÒÊ@ÿ\0[ü=û¯t ©Çâw#Pf(©²€\'J˜ÕÚ5#KioÖ·Õéþ¿³-£xÝ¶\rÂÛcÜç´Üã=²Âå|ª¤Tz©ªžÒ=Ãn°Ý­%°Üì¢¸²q”‘C)üèEò=Ýóñ®¬‰r[£Í38ÁV92ÚÚ‚QÔzµ•á¿Øy‘íÇÞÚæ§ÚýÌ°3C€/­Ð	Î{qE›Ã¥¿áLzÇ~pö<[ÞLºðäÉúi˜•?(¥5+òY*?¦:\00YÍûÕ[—ïq5Y]§Ÿ¦>*˜Ý4ÅY\n0&›!C:=R‰ïb²+¨¿O>ò£uÙ=¸÷£–b{k»l®…<L<HXŽ1È´’š0àèF:ƒlw.pöçzEãØnJF¸œvH£øÐöH‡É?ÑaÑòÙýõÕ½Ý‰ƒfwVÍJ‘ÓÒå&¼x\nºƒûi6?/35NÝ«v`|5,`,x•”aw7{îg³û«s¶›­ÕÞÛO‰n)wq+q\0ªÏ>\"ªèx´kÖGlçòg¸V#—ùÎÆ/ƒD¿Ø;p\r¦†\'ôU‡véØÿ\0÷\r§ËuåW÷£Ô®2VHóSXxŸ|Jœ†\rêêär‡¶ß{=ŸqX6¯rmEŽà;~²cnäb³D5Iz•|£yÇØmÂÌÉ}ÉÓ›«N?O#2ø[š$£Ð6—§ñŠÝf#…«z¾>³]zL…4Ô³†‚Ds*\0‚.·Sý}åÞ×ºm›Ý”{žÍ¸Áw·¸ªË¬ˆÛ!\"¾ Ð1Ô{e{¶Ü=žãg$KÅ$RŒ?&\0þ|K\r“½÷¯]äW1°·våÙy0y­Û¬†i>—}Œð¥B#‰‡É¹—’¹Gœ\"ðy£–ìï‡\0ÒÆ¦Aþ–QIý«ŽŒvneæ_dÞn-¢9\n~Ô5Cù©èÙb~ü™£‰ Îïx÷œ1£¥÷6:–¦±Á:•ä¯¦Jz‡xÉ°½î87úû÷Ïº_¶›<»TûŽÛ!òŽQ,cìIÕÚŸós©Gl÷ël‚¥ü6wŠ<ÝnÛFTÆz¶çó\ZÞÀ¯™ëm§š©R	–<ŽV†7?R|\nÒ$ÿ\0CÇ¸öëîcý¸l\"òY‚jNýƒ¡lxÇÒ>§””¿ô.±¢\'ùô)§óWì(Ì;w©v&§û5u™ÖIPÁûmtñ’õb=ÚÓîcl$_ÞáHcóYªŸÈ¼ì?ã\'­\\}â¦Óþ+ÊHúwØ±üúkÇü¡ù·òw&ø»¦©0Ô´pTs°°ãpøØÚèï‘ÜÕì´10{¿–]Vý+Ç³Ëïc¾ïž×[&ãÏÛä÷V;™ô´Ÿ$µ¶T–OÚWÔÓ¢Ë_s}ØçyšÓ•¶ÈâRhZªæÓÌYùAÑÐéåËCY[K»þPoZÞÉÍ¤‘U&ÇÇd«ÓjÁQhïc3!†¿.S…hé££­bd_q/3ýämö«)ù{ÙnU·ØvƒU7>båÇ\n¢()<CJÓIé ô<Ù}–úâ=ßÜ}òmÒüdCâ9…O£1£?úT§úaÕºm,flâqÛkla±›w‹§ûz>’ŸŒÇÀ‰fŽžŠ”EÙ¹b {’O>ñrúú÷s¼¸Ü7+Én/æmO$ŒÏ#±ófbXŸ´ü‡S}µµµ•¼V–vé\r¬bŠˆ¡QG Q@:hë›Ð51À”P]HâÄN…·óøçÚ^žéWGT¬U}A€6¸\"ÄzlÁ‹’ÍÈçóÅø÷î½×Dž]ÃºØ}6Ç6<‘ª·7½¿Þ}û¯uò¼ÿ\0…[ÿ\0:Nõÿ\0ÄWñÐ¯ÿ\0ƒmsïÝ{­q½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷_ÿÐÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯ufËº·ì“·ôù?¹¢ÿ\0NTn?Þýµ/ÕÐMVóA“Yú‡]Ž“Ú»¶\'åŽ­“²(\0­¿Ø_ß¡àßoV”’T×Ë¨0T©ýÞ5	\Z1“I½ì•P¤6¡ô6öïMt£¤ªq¨‡¶…{±°°*¤ E¬­Ç>ý×ºRQÔ/ª6Ã(k©\0/Èâï¤›òMþœû÷^éUK\\=	ä¹oDcAÓ­>–RÀ8àG›û÷[éeCWx—Öm¨‡ãBÞêÔmùâÜ~ë]*¨+@*­mV§Vµ±_M–æÀþáïÝ{¥{kYl@EÈJ\"€¡Q†›ª†$›~,n=û¯t¯ ­M½KrÎÁˆ\r\Zˆˆ{ÿ\0@“ù÷î½Òç\\ý² WZÈÊO7fu<ry·¿¿uî–´5öx®ÊŽÚY‰JØ¶¢Âö<­ÿ\0\'ß¿>½ÒÓ‘ô€´k*çÐ@:€k`Úµ€_ßº÷R³›Okoê)(÷&.š¸\r=iˆCWNHk”«@eÔ‹úI¸‹qìMÊœåÍ¹\rÛ•w©¬îñ«AªHá–6¬r/ÉÔÓÊ‡=ï¼¹²s5™±ßvèî-üµä>±¸£!ù©:ôW÷—Åüö4I]²ê{ú˜cj™!ÉD¿˜Ã$Æ×°`.-ø÷›¾ÞýíöMÄA·û‰aû¾ÿ\0ê V{f>¯Õ,\'Ô¯ŠŸéGXÕÍ¾ÁîVž-×(Ý}]¯R«0ŠøŽO°èoôÇ¦m‰ÝµÒµaŒ•O‰¥qm£»éêåÇBÏû‰˜Ë\rn,›Ü\ZI„$òcro4û;í/¼vm¿í’@·òä_mÏ,áÈµŠC^>\"¬ŸÓö?p¹÷ÛËµ^¬†Õ1ô×jà(ÿ\0…±£ ôÒJDônñ\'º±è—Ú›Ið•RÕ¤ÊcæÄ«‹ëj|¾.œea7¼Ô‹`m¨ý}ãMÿ\0ÝËÞoïdÜ}¹æspÖ³µ¤äzIºÆçä$p}:™m}àöç›-’Ï›öÓ\"x…ÄCý,Š¥×óE?>»¬ë_„Û¡·Ùø±ægv‹»\"£X™¹)öèuAdð<jNžßîOÞ¿—Ón\\Ÿw~ƒõöâíÿ\09m¼=Uõ%ºEwÉ¾ÄnãÇ³æ-IÏé]…ïk§ÙAÐK¹:³âNS¿ÉºÊž}4˜]¸75]ˆ$\"6.NïHÔésý=É›/ºy-Ú‰²0(¦^fšÕ©&iEÙZtÜyÙÝ¼orå>‹Žv?!áÆsû:wëŠKÛy\ngØîÇ‹f¼¥j;²¨±[+ñ~¯&nÑŒ¦?+ ô(’–\"H×*{CÌŸx}ó”\"–.b»åöß€Å–Üg½‘[Ò{¶’;X(~ ¢âOHüúS³{I¶oî’mn£k?ñ&ðEl„zÅ\0Vž_‘&$õn­¬¾|qÙ)A=vÔŸ{déãŽ)²;Âºl…<ÕÑ€^¥p±É\"–^Df9þžy\'¹“ïîç1™Ðs)°³riš$:Tð_1 ó2Tñùu4lþÐrÎ\"oÜßUp wÜ3ISëáÔF>Í&œ:>›v^\n†Ÿ…ÆãpØÊEXá¢ÅÑSc¨a‰\"ÇOGG0F¥$ÁáK«««ë™o/ndžñÍZIØú³1,2z’ ‚hRÞÚŽÝp*±@\0~C¡.‚¼–\nYJÙ¸K)Ô^æÁM‡ô>ØéÎ–ØúÀt±r²XŸÒÊÜª—[†¸ý<“Èú¯¿u¾–˜úÒ.Ü·,ªË£ÒMÊ˜_óõ±÷î½ÒÂ‡!q\Zù/{€·!tk³ä±+p	<ž¿uîžöô‚\\ÞèkZé·?¥‰`ÚÖ÷î½×Ëþhoüé;ßü:·ã¨ÿ\0Ø?¶â¾ý×º×\'ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uÿÑÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯tþW\Z{9®G’]¨¦Æ×3†ÖüŸmÉÀueóêÝv–@TtÝ–$ÝÝ+p	þãlv$‹sôú~Þ=ú?„ý½müº‘IQ£Óê\n¬8³Q:U•‡¦ãëþ·<ÛÛS¥\r<äŸÜbêc=\nÅ”€MÎ–“Çúþýé×ºRRUiÒI%”ª“ËhÇ/þ¤ Vÿ\0\0þ€{÷^éMM]*Y”*­ìm¥ê¼….X8µ­Åÿ\0ý×ºTÑV0eX‡Å´Ü©Õfà–öbE¿ý×ºUÑÖ*²¾ O¤ÝŸN¶%T€£è|v>’/aï]{¥sC¤ýÉ]\nKiUSépmq`Û{ëÝ+hk´ºÝü€]˜0ŽÚ^?K]UÈÿ\0ÖÀqo~ëÝ-(kYMõ©r\rÂ‡?U¿[üØŽ=û¯t»Æ×¯è\n?QbC ÝÛK‚\n•-ÉúØKû÷^éc¯ôé¸+À\nJÙ˜€\0ÔH#SrlHµø?_~ëÝ-ñùX#²…º»7PÌMím@T‹‚ô÷î½Òë_¦÷‘Ø7ékúÔÜ(›p¹¸?“ïÝ{§êŒ^ßÜ-6wŒÊÁ1-¢ºŽ*µ`Â«024‹¨Ü\\¯³-§yÞ6¡{±î×6wŸÇ¯~e\nÔ|GHïöí¿uƒé·Knmÿ\0†TW`iùS¤•WÆÞšË“¯l¾5ÌŒÎqy*Ê+) ¥$x4©?ÒÀ§å­»ïï.Úª‹ÎrNƒÊx`›þ4Ñê?ijô¼ö‡Û»ÒXòêÄÇýõ$±ÿ\0 ú—N8ï‡ýeŽYñ»Š²5*d‚mÍZ#(ÃÐXC2o­ÃÄû5›ïAï<ÈQy†Ú2|ÒÒÜÈ”aüºC²~Ý#†;DÏO&¸”äÃ£°z;¥ö=D5{s¯vâWÅf%_Iü^¹%ôÝâ©ÊšÉ  \\\r r~¿Ö7æ/s}ÂæÔhy‹œ¯îmÏÌ¥\"?lQèŒþjzlü—Ê[	6Ž]µ†aÁôÉßSÈŽ7&?lFK¢è\0ðl§…\0äû€\0 \n	®IÏK¬miCrÇC¯6°OH¨^YOûk~>»ë]/1y.·gV²ˆÈ$‚Ä…e,t°\"ãô¯>ý×º\\c«”ª+0:H*F¥Ò	\nÖ`“q{O~ëÝ/qÙè„°°!‘X\0\n×vcpoþ\'ßº÷K\\}w ™”ià7ë³8Ô«È½ÇÐÀý×ºZÑVêu \ná‹Ü\"Xòú¨\Z¿qøü{÷^éu´¦ä÷#†RíÛ¨¢¬\\ÛG×ò}û¯uòÒÿ\0…X6¯çGß?áÕÿ\0Aÿ\0Ñ;µÏüO¿uîµÌ÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝÿÒÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯tt¾\"Ö\nJmÿ\0sa%NÛÿ\0ÁbÌ}ÃŸmÉÀueóêÛºÚ¬ÍÒÈÂ.ãÜÄ5\0¸›ò¥XPüûô|Û×ŸˆéCIPÚDr3_MÔ¨Eq}Dÿ\0Ç2n¿×ë{ûs×ªô÷KPÒjôôUd696Èå8ä_ßº÷J\ZZ¦Lr\"ù	¶ ÈWÒXJ¨½È½¹úïÝ{¥,\'R‹¨²ÄÐØX¹UpH½ì8µ½û¯t¥£ªŠ÷JÆóé,ÌBWc+úˆ7ä{÷^éWIX<®¥U,×?º@[éÑ#ë6úÿ\0_~ëÝ+h+9vÔÊ\n.±¬ÿ\0EI7“X<}½û¯t­ ­Õ\"Æ…ßEÙP&¶ñÂš¤s 3i\nÞ¦ \09>ý×ºZQWLBêCâB‰åhßJÊÊ®‘\0F¤ßMõXê=û¯t²ÇVŒ–Ò-gK’z¯èg!‡ø9úßßº÷KLup¿„Â=*(fçO¥ÛÆÅVßŽ?­À÷î½Òî‚±Ú4‘–hã™TÃ9Ž@ÅHŒ±ñ›Ø“p~žý×º[c²•Ê,¢ÅÉ±\0ßës¥·Ð›ÛèAçßº÷K<}|*Ç\\«	m:•ÎlC*±Qvµ®9<XñïÝ{íéyŽ®,¨o§TweÔC9¥UÔI ²ÿ\0OÏ¿uãÒâ‚¼‚4±MFÅXpEìªÊ\0_Q ÂÞý×º^ã²…Xý,¤\0.­d‚KÖŠtß‹ò~¼{÷^é{‹ÉáÀ:ô³ƒZö*oÃ\0\rþ£‘ý=û¯t¾ÆäH	wá¬Íp¥Hb¨€‹ÿ\0¶¿¿uïN—T9®FS¥€±¾•àÙ¹%‡6ßéþëÝ-±uº€Fb¶¹PWI-Áz}FêÀ\\Üo¡>ý×º^â²t/—ó`mp9Òy¼õ?_¯¿uî—TU±EUR@ÍÏªà(k–¸%Té<[ëo~ëÝ.¨+ÅÐ…KžHIcèÆ¥õ®÷î½Ž…]‡0–£>ÿ\0ê†óqqIZ.\r–à€-õÿ\0_ßº÷_./øUcjþt]õýGXüuÿ\0DæÖ?ñ>ý×º×Cßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uÿÓÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯tk~5U}­ó¹°–¯?ÃÓO•ãúí¹@êËÄõn-Sçè¦%¯£¹w ¹€¾ÁØä\n¬Hü…ïïqü\'íëÍÄt«I­îáYZÆä¸)`KÀZÜZÂÃ“kõ^ža’5cmH, \\}ítsúEÿ\0<ûð¯^éæš{K¯ªîÂM2¨PšH],ƒxüþ,}×ºQRÕÞÆá€Rä)* ØX(é¸µÿ\0Ö½½ë¯t¢£ªTÒ.c¤m ²´œ_ÐoÈ?KZÇëï}{¥=5P+ÃPª‚4­ÕBÕfôÜrÇú_ß‡^é}´òØ*<Æ\"¿sâkó»vž¶–£9„ÄdàÂäò¸ÈäÕWŽÇf\'‚¦]]T.V9¤ŽDÍô0àû¯ut½9±²˜¥ŸŸ­¾w´Ûs¼ºîL­”ùMÑñåv¦è£ŠJ|¶— ¦z\\ÂÒJË˜Ae’#êý×ºAm>ÛØû¯«vÏÇ}…ñC¾©ºû{öUdPdè{ûfb[³7Ö>*•ªÛ™^Ï«Ú0aòÔ´«ž’žXQ’Ž%v13¬žëÝ=ÅW†ÊoÌ¾bìÖÒÆQ×Å·(6Åf÷¢í\rÃY¸±sÕãw%³›sE‹ÈÆù˜LðÒFþ˜IÖåëÝñš-Ùšê\r»ÙAñËoí]™º±{ë²»ƒØ;{sÇÎÇÆå6Ž\"\nj\\¦ìßqm¹g¥jaŽjÊ„F°5uîŽ†âƒ\r»výeg`ö§Alo†ø@û¡÷³öþssí-Éµhc£ ÌWŒzÉý÷Ïv;)U>w¥j11TSHfJ†uîŠž[	M€ßU›½¶ný©Çä°ØÈwfÓ¯§ÉlÚŠÌÅ=e\'/_8J†§‹\'Ö©šjZfo²*û¯ub£büˆ¦éYF/e|XÛ[Ó1¾¦Úù-É´0]e/ÖrìŒÀÉÔœÖâì]ÉŠMÑ‘Ý\"štÈGQ33GN,$ëÝ\0\r†§v|yÚçggÿ\0Žä÷æ&¯\rÙ˜èÇ÷W±:öº8`Ÿqeë²5´òA¸±;†„SRÃŠ¦zkL¢6†}>ëÝ%¶ÎJ/6Mwtã©£ß½…cpå…^Ah)âìMÑNR¹iÒ«%WO§@Ì‘«Ëã@±­ì¾ýþ½Ñ©Ý/Ô˜>®êïQßØ<þÇÄo.Ò¦’‡dííãQ¹»7567kÅÑØ˜¦ŽzÍÃ· idóe“Lr*ædVg÷î½Ò¾·yôÑéø2kŠù‰ÃSw†ÖÇÅ‚0õ¯÷§uîY¶®â¬Çbi^‡tÍ¶FÑŽŽžjºÃS]†ªŽ*×PÞëÝ$q{¡3YŒÔ˜½Ÿ»¶®Ø¥x°¾k¶¼»›9Q=$Óçgš“jes8Ê}WŠ*diÄ“nÊ÷^èOÇdnc—Yb~mã¸6Suc`~—±¿×ßº÷KŠ\nÿ\0d—\rÇ©Ë2i±±)`J±ckrH°÷î{¥æ; ¶ŽÄúŠ\\)bM¬úŸöÞý×º]Pd´<ŸƒËÚÀ.®‚9Rxü‘þßßº÷KÊ\níZIúTÈ´e®¨`¬Uç~ëÝk\'–<ãÜG\nn/Ïù5o$’y?ŸÅýûÓ¯zõòðÿ\0…T~ßñÖ‡ãøÃ[Sú{÷^ë]O~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÔÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯tbú.£ÁC¹ù¶ªü5ÉúqO“#þ\'ÝZ˜\'¯uo?ê>ã¡ªˆ²wNâM…ÁëýÀ-k~>œÛéõ÷å\0Nëd×¡$€NƒÕ©IeÒÈŠªØ3\\.~ºxíÖºåŒ¬\0ÒEìXzÅÕµWB\r‰7{÷^éÊž¦Ë£_×JÉêþ£ÔÁõ«©æÇÒ9÷î½Óü5:UÚä¢XXAI<†R~ Ÿ§×›{¯tÿ\0MV@	uúHUI{ËÏ¨¸\0¨\0Xÿ\0S{Ø{÷øz÷JZ:¢I	cuÕmCEÂëp\rƒþ?ï:ã×ºSGT&PZëÑk…\n./¥^Î9æâÿ\0áï}{­ƒz÷´æî„¹œž×ø«6ãNŠé¥ÃnnÆí\rÇCò\Z‡¸Ú*~¬ë\nÌ*Ô¥’¡¾Ò¦zIÍUDÓêkS®Ÿuî‹Æ•žh¿—Äw‘¢¨ùWò(ÃÜ!”cv!é2ªä¯>ëÝHó9<ðÜ¸œ~5ˆì=ùU‰Ëâj¤Çå15ÔÛëpIK[ŽÈDEE%léhÝJ•eãßº÷Vdÿ\0Þ}íGð[5¾w_d?¼]Kß™-ßØ?)ÈÞ;G€ÄöØÉäó•f÷.Ø›pîVKOVÕr”EE(×Ý{¡V§xPÃÒÿ\0\ZfÞ{OãþÊÚ=—ÞÝ©‡Ù{ïv|eÜ˜í™A´dÁc#Û;þ“¬fìx2›u7þRXÅfb®½þ×\Zªò@‚7#Ý{¢M˜Åægì­Õ²rô=UƒÎ®ô«ÙÕØMƒI€Ù½KÉCQ#CK§1”ÂÑâdÉ,µuõU²š¢w˜­Š/º÷V9¾3Ÿö/ÇÍ±Õ“uúTë¦ù(zŸvn\r¼ø¬N;3Ù2uvò®ì®ÝØø,|rRoª‰[U[Ž¡¢É\nh*ê(@‰ØA?º÷P~=a1ô]«ñçlîo”_\ZªñÛ3±%Êuÿ\0^íÍÝ_Ù½«Z›¦£Ôýq{j-~ÑÛ»cø\nlcøãÇdªêjœ›Ý{ cuM°v·en,.ÓÜ›‡³öþtï®æÎPízí‰O>n·²7lû‡clÙ·ÝKžªÁSF\"9eŒPOU\"ˆµ*1ëÝ~Ôí¹—éŽ—Û½O±r_ŒÜ]Ù‘ÑnÁ—\r¼»_…Ù“l\\öN§]‰ÊÔà6¶S²d’š%ªµ¦ÇÓÉ\0šPéî½Ò†›½·ÎZ–«¼·WhWÑu—Zmª÷wW`ðdÈvÖÛ§m¿–ÚÐÒÔí*ÝÍ=oeå²üŽ.¦†¶™6R(\")Æ¯uîƒm“W¸—OW»ªÞ»xæª²;£tÔ5\\µpÓîmÍ”©Îåñ´R½ÿ\0ÜV\Z¦¹¨¨•m\ZRSÆª \0£Ý{¡jƒ$5«°Ò5XM‚³&çýà[ßº÷K¼v@\rõb¯ê!š=:´]ÜkUÔ\r¾§ßº÷K¬~E…ÿ\0t\r	é>¢UASekik¨¸¿ô·>ý×º]ãò7UK0Œk—cÏ,BßWøZ×úû÷^éŽ®!4ŒÚ—Q7k7ÐÛ$ÛP·é{÷^èÏu$âz<Ü‚þ©1@_‹Ú\Zå€8 ¯ïgË­>¾_ðª6Õüè¾@‡[üw_ýƒHÿ\0Äû×[ë]Ÿ~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÕÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯t9uÆv|ƒbÙXÿ\0\\\n\\ï>ý×º·¯Œ’ýÇA×r…Sº³åƒo§`l[©‚ë\'é~=ïËóëÝ±Ù‚«°f:yS¤òn>œ)Aô÷®½×`°Ua¡¤S¦ÁJh×ù¸\'öÔ[óïÝ{®â•VÀ¹Ò+¦áY~«z®5Ü‹úA&ßáî½ÓÝ5E´ÝË^2ÿ\0Sþ¢Ök‹Z×óð÷î½ùtõ\rDfã*F HFÒ.lÈ\0@Ô}/n}û¯t¤¤ª³:±$éÔ†6Õq\0± é €@·Öÿ\0ì}û¯t£§©ŽÄDOî]\nÜ$ŸO)r~¶ü‹qô÷ìuîžÍù“I·;«¬»žN’Û»ª»©ú\'duØÄní’¦Ž-Ë²¨·\r-/cEÅ`ÐP».q—ød´ÕƒÆ[Lë.‰Ý{¦Ï‰}ý²¾<ïñÙÏ£¨;Ÿsá[ø®Â¬þúæ6TÛ+sÏ4Í¯¥)w]†¯†¡ÐÁ=óG$QJ$b¤uîƒ\\~é¬mÉ6íZ+dj·n[w	ÉP&oG_—Ï×î_ávJ5ƒ7ƒ§š¬Ã$R P©.ªXã×º8Ù›ýÇ¿ò¹©û{ntßqì,»Cö}½ö:ÅÕy\nÅK…‹©ßQˆÞû§MMbtÈÎÕ€™Ì~ëÝ.jþYlÍŒÚx]Óðã§óØ-—ˆ«Ám-¹?x|€ƒkíêŒòÕæ\'mM’Éb`«ÍTÎÆ¶¨«ÕÕ$’²*¨÷^è Ý·»óu»{¬ºû§ö`Çâp¸>³Ø2dr{wMEF\"ÈÔTås”ôù\\¶G7[<ÒH%OPèŠ1efuî—ôþ¢›¨¶ÿ\0Hc6Æ‹mà{:.É\\ÔIá¬aØ9ÍO¶(¶¬O°Z¹e¨5MVb}^ý×º_õcOÕ[÷fï¼~\Z<ëìÅÜT»heWoÓeŽ:Pæò‘ãòIIU®eûIôÊ-¯N½×^Z¢¶|†G\'K\rvoqnÅQEEZrTÔRî}Ï–Ü?aO[5&>ZãB¹U„ÊÐ@$(Í¡A°ß^èMÍvNíÝ×ËÀê¼>3ªh74˜­I’ÞU´¸÷7÷z<æWveá«6¥>R‡ãŽ*/¾jJŠŸ\'’h`Zy=×ºROØÉ¹r0æymý„”\nàzËeí,>C©±XýM2Pnz<Í&~WÊê¾LªÃË zX %ÌžëßáéO·3[Ë+_–Ìï(ön6jÊª*lVbSÕÁ·èq´4qC.Ni²´ôùiòùüœ“O,N^\Z8DDò’i}×ºqÙ0ÜùŠ¨ \'N’¿ cak§ûuî—xü‚†]]m¤‹\0Dš®Ç‚ûéþÃßº÷KœfE˜DLÒ1±:ˆÓcp¼³_O<ð? ÷î={¥ö6¼+f@Ëê#P$GtaÀ?F\0Ü[n}û¯t½ÆW®´eVPÒ«`	°bªÄGúì§¿uïðtp:Fo.0ÿ\0C÷8ñù?¥+ÔžGä§½Ÿ.´<úù†ÿ\0Â¨\rÿ\0È#ÿ\0~çã¿þù}¡ï]o­w=û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷_ÿÖÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯t.õ´Þ~`ÞÚ²XÑþÚ“!ÿ\0÷î½Õ¼|T˜ÉÐY;rvîÍÏ¤»Øæçû$~¿OÇ½ùuï>‡]5Ê…Î±¤ÛR­ô­ÀoÍ……ýë¯uŒ5jÕêÕ©®Þ2­¨(åµ¨ê[…çßº÷\\½,€è*o} ‚¾@=,€(@ŠVçP¸·¿uî¤Ð «ÛÖúõ8Cv¯^‘rmoõýû¯tíKTM“ƒ¥nKz•Ž“¢OõV`?×±æß_~ã×º}ŽGôZA¦èê50ú`ÂÄ´w?K}?§¿uî”pTˆƒ›«;K¥[õÙ$¸ÒlÀÛêx÷î½Õ®t?Å_…ùºÊØ_.»ŽMÓE²·øËÒæ~1ÖâpøìÕÃÿ\0ÜÍ.v³v¥%GðèÄ \0ÕD\0ŠK>ëÝ=íÏŒŸó½5¼;ÿ\0ò÷¹\'ë]º¶¶ÊÍä*¾.dh²ÓnMæ‚l..ìþ!”Ž¦Ë,@-:‹¹[‹û¯tKw“uåóÍPuFéÝ[ÛaÑ58Û¼vŸ÷7žgÇQVdf}«%fB£IK”žZhü“<“x–UuÜz÷F—¯þ;àsÝ=„ï\rñòªºsknãØ¸j=ÿ\0E¾\'¬­Ü8*q[S\"ílkîb’€4Þ€\Z8Ð—e:oî½Ñ‰ÜÝ+ñ3±·ÖÇÛß¾VôŽÝL¾km¯îæánèÏe77g×äkh²5XjêÍ­[(j¨á¡‚Y\"xœ9Z½û¯tW÷ÎÛ¨ëžÄßm]’ƒ1ëíãÙ9,\r5E5nSmWÉ®š‚:Á\rZQ=\\,\"yQ]£\0²‹ñî½Ñ”Ø?»ym|ñÅîþŒ¡Åg(–¾Š‡r÷¿\\mœÝ,M3Âñå°¬Ý6[Q@oÈ¦Ì.¿º÷F›º~æv÷få1½y˜éÝ±±aÂìù°TÛÛ¿6^/qdj«vÞ>§qå&¥Ý9ªL¬XÚÃ-JP8‰a––$‘j,}×º\'‘Ï-nCC’8Ì¶[rX<Œ9|]]^!WŒ¯8¬´¦ÉP}õ‹LDÇ*¨t%cî½ÐËHKKƒ‡?_òicñëSCŽ¬iöm4TYÚšJºÉ°yÌz¦R’\n\n†™(åœ*@ò_Çg>ëÝ{ƒýbwÎàÂÍÛ;?nEE‹Û™Œ^Ø£Û=™¸óXŠ±ŒÉM•ËVã0YØR£7STõt´Þc<tS@z«Ý{¦¬êÁææÊM¶ò³fp˜üµV“;6-‚§Îý5“×c¨7&?/ü9\'©hI É,24…\'Ý{¡# ¨$)P4jn\0±ôžuÅïïÝ{Ë¥î6»M¬Åü…u\0.Ýœ€Ê¼êüp}û¯t¼Å×ê(uŸÐAv%B™ô1°›‡¿}¼:÷Kú\nýBí%òˆõ¡fUýçék}û¯tºÆäuiMDþ–6j!\0úZÌx?›û÷^èñtí6ÝÊHòy_î¨~}EV¸¯6öx³­>¾dð©Òó ùGüû¯ûåö‡½u¾µß÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝÿ×Ð_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯t$l¹¼X¬—6×•¡í¨ëâ¾öOUlS«yø(›ãî`3Oxgt–\"Å‡]ìbªWûwæÃ“ïÞ_Ÿ^§òèÅ©gsfP¶@C ‹3\0›ð/o¯ø{×Vë‹+5Áô’C\rêáØ–à\\~Œ~ƒð=û¯uÉˆò\\†Rc»\r@]@P^Spd,ß›Þä}}û¯uÃò•]%¹Ô!µznHN\0.Mýû¯u’ÈU™®Î?Pptµ¢6™\0Õrmý}û¯tûd,nKi$]€&4Xô‡¨)qnn¶?N}ûü{¥^Þ­ÆÅ–ÃÍ›¦®­ÁÇ–ÇÍ¡ÅÍ\r.N·d\'\'KŽ©¨kª1êñA#‚©+©k€A÷^êø~îßƒØ=½º:—§þNìÑ²¾:öÞ|î®Êí¼Ü»×õˆ¨s”ñãðXÚ\nÆÜ¹X‡#»CÚ™×Hºû¯tß°·—ÂGøÛÒâz‡äÞ3§±ÝçÓÑgvöW³zò³±wòz\nh¶ÌØŒý-`p˜U<w®Š¢–Vb\"\'>ëÝVÇfgúw-¹i§èíØfÃ…¢†¦ƒ³wnxîJíÂjò_V•[r’ƒC‡ZJ‘G¡¦2‰Y´~ëÝ[¿Al=íº¾|yÛ{?¦z;»÷žöíîïÝ»oj÷ÎàÉmìm×ÚØuÆî=Ó¶ÿ\0†î©÷Õ°°Ô¼µ~i¥¸FfR=×ºvWTü™Û“¸6—Ãoå¥Ý8lµCm×ã;ŽzÌ•b	‘±õ8úSßu+5zT1¨ŽBdµ”Ÿ~ëÝV\'uI½©;ãºiÑíÚÌ©íMÝ’ì,6Ñ©š»máwNc&rù\\²jÜŒ•¸Ó\\°‰\rL÷eo[~ëÝ>€ëï†ß!w}vŒ=Å¶6æßÂVn¾Ïí=Ûß}lÛO¯öÆ>’I*÷ã©—aÒºÓTÉOã†R²º†mZ\"‘—Ý{£QóK¯>2ãw-gqOÔ;³¼òõ´{3¾dØ½«²p”=kƒÆìœ&3¬¥Îãr[opä¨±{·mcÄ”S•Zi¼M.µ >ëÝVíVàÛÙÝ|»7d×õþÏƒøu>le÷M&óÍ%44§)Y[–Æb°”I6E§ðSÀ‹vf$û÷^èÌllfÄìÄ©ë•Ù}ËK†›)ì\rÍ>êèúª\\&Ü]jä1™ì–ð¦Âmó±Õÿ\0­ªš9–ª”,H‹#yÝ{¡Oµñtc[¼÷E\'eo½¹wSâ¶‹VìN¦“}î&3	´6Öz¬>èÇn|jmLÆW…i©ê^æ‘|A8~ëÝ8lÎß’¾§³¨7u&ÓÀRáqøŠ½íƒ;o%’?aª²\Z<,õ¹\Zø¨°áb‡Ï4®õ­¿þëÝ	xÚýW,ÅUˆ*¡ìW*ˆ^BòÞ?>ý×Kœmp½•Ë#\"›Ü“b·¾‹X\\óÅÿ\0Þ}û¯tºÇd6/BK°u_©ú³5:H÷¯~ëÝ.±Ù¬L„[ÖÅ´ÂeŒ€…*mpy{÷^é}Éq‚J{‚oúu%“ÓêÎ²mþ°÷î½Õƒ|m—Ë´2qÿ\0i¿I$\nîo~n=ìùu¯^¾fð©“ç?òü:óãÈÿ\0mÒû?ÞºßZñ{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî¿ÿÐÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯t³Û³ñubüÿ\0£cý@û*Àûp}û¯qêß>ÕGQÐŠ ëæ¥îìœ“@ð¥_]íLìn\n‰Z†R§óãoéîÇ†Tùtg´»ãp¤¦•¸!\\éw)ý\0?ÖßOõý×«õä*Åõ2;j¥‡ëÒ/#)ý$‹–byú‹sïÝ{¯%TºÙœi¦0Ä“ :J±½Åíoñ÷î½×¹ô‚B”S©m`nâ5^,ÌYy\"çžO¿uî±†J*Äð¥@%Š†$¤(\r˜\\XóïÝ{©qÌSU´’ú…eÐm¨\0]9ü‚¥ýû¯t÷MPŒÑ«0TiK(¸5Œ‚2A`…®H¿\"öú{¯uc[ƒä?Eõ7ÅüŸÇ¿‹Ãxn}ÛÞøÜ%_Éîìß{qvvI±4$Ì:kbm¤­ÉÉ	šX«k¦¦	iæ˜¤ÕN¢Ý{¦-Ú›‹àoquNCuc ìÑò\'©wNÜÙ¬•òe²»oKf30h¦j4¢ÇÈÉ4OÇ¤7¿uî‹V>Zvž%¨¨4ÐK-<3UG	ª––‘VjØ(Ä´æ¦zx\\•ŒH†F\ZKÜ{¯uy=sòçãO»öæÌ§ÞùŽ±ø›ÓŸûG ¶^åÞ8*¼^ïÜ;Û±öö2£°w\'÷]V­åÝÙœŒ+IG£\rMU¬³\Zyãû¯t\\ú*/å°»G©·?`|¤¾ÎÞ›7;OW¼º\'¦0»f™ñJ\nªz­Í’ÆoÌžS‰¦zušªX)çª†%fÂ~ëÝŸ#»hoï”ß!·îÒÊSï“º{ŸwncYU¤Ü¸ê(ÊTã2xéªh ¬:¥CQÊRá¼mkuî„.Îù0Ûë¯±½!ÕuGÑ]JØìÆãØT[‡ûÛ¼»owRÇ²ç;g~5=î5-t\Z¨±qÂ”î±£Ô\0ª”{¯t»ìoµ¸ÿ\0“ûó¶z+zàr”õ»s¬v¦B Bsû|ã1=c´±ù½Ÿ»1k-,Yœ~;)ˆ)c«ÇÕh%–9=×ºDn^Â‡~nªíÇI×_«±òAƒû¥³³y*zêÈWËœÏ¬££¤¢þ/[)J:XqðÇKM4Ë$²I§Ý{¡wö.ñÙ°unÅÙN²êJ´£¯ì:=É•Åfû¸3´Ñ‡l~ìËa±TÝoŽœPxÿ\0Š Ó$ÔÍ4U~ëÝ>WvlkÜ=‡½ú·)·w¦ÚÈÒõÆÚÌí¼”•2õîüÆmî´ÚTòa]á§–Lwlå…BPåhà‘ègib’9ág}×ºP\rÙâËdò˜­•]×»}\r#næ3Ô›‡=%LP,¹Œ•Uf:¦³2\\„†*c–i\Z–œO3FÓˆ!÷^éiA]g.^ÌÖvcÃz€P°~I7ýo~õëÝ.±Ùd‹M˜‹]•%OøGJ§#ž?Øqìõïðt½Çd—Y>DçH¸¾€£èX~ ÀØ›‹B/ïÝ{¥Æ2»Qº˜#*²é[Ù‡\"ÃÒ~—¿ãßº÷KÜnD&‘åMlÅ‰ÒçJ§•V_É¸¿Óßº÷Vcñ…Ý¶5tÄ$‘ë6³¼?v$Hµ×Pú\\sõ7÷³å×ºùŸÿ\0Â¥ˆ?Î{ä)øÇßÁ±‚:ch\\5‰³èy÷®½Ö¼¾ý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯ÿÑÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯tÿ\0‚šÿ\0{D?ÎTÇE0ÿ\0WSBeâú¦¥–]?ÕÂ©÷î¼sÑÜø…ÝØŽ½Îg¶^ï¯³;b¥Š’~Çmo\'ÞÅƒËä4«4X|…Rª‚²Qÿ\0üÐÔ5ã‡½N´kÇ«R’&§ôÎ§Z§™Ht“Ëñ†¦9¢fŠ¢’H_\\r«²È­©IR/®·×MÙEØ¤$ZÚVú€Œ\05fçÓÅ½û¯uÈ^Ë§ÕË€—`\Z5Rl×c¡_ë¯úÞý×ºàOH×ÓÇ\ZART·ôüïÝ{¯icfµ‹\\®oÁkÝ{›ðúþ=×ºäî+*«xÑ„9ü´j€Ý?›ßuî²Ç(Ô§Y½Hªœ‡Õq-þ«û?¤“ÏÓßº÷OU­Òöcmkm\'Q[3)`5ÍŠƒc{§¿uïðôõMS¦Æú™4bRPÉw<j[~lm~¯^éKIQ®Ì²f!BøØ2ð¥‹)°+ë¿$Û~ëÝ)(*Ìz’êè¬ÐWS\r\'Q¸QÇ?áî½N•4UŒ‚ÍbÚµëôêr#O#N«ƒý~–ý×ºTcëêÌä5¹½Ô\rÜNGûÇøØ{÷^éeA[è<’D·¹T¡I\ZT…\"M$óõú~=û¯t­¤È‰†§:Šiõ™of\Z‚…½Ø)°‹qïÝ{¥mÔ)¿\0d)nZæËôØ‚ob>¿ëû¯t±Ç×’\\ Øú­ã \0–R~¶ä‚E¿Çßº÷KÊ\nævõÌãB)‡î<‡›ê<é\0þMˆÿ\0oïÝ{¥–; Õ³\\3ð¡½ý)¨YM‰µÿ\0â¾ý×º\\cëþ¦\0!e`Ä‚ö9€V·äþO¿uî—xúãª÷UhÂÝ_‰\ZàzB›7éã›Ä{÷^éqÈ1H¯{†PÌº-g\'’¶Ò/þ@=ûç×¿ÁÒûñ¯¡Î¢VÕ¤«31dÞ¥+Å½<1>ý×ºv.po,åÛÛtSär¹ÂŽ‘@_%utÜŠz*`IydàZÃ’÷^ùõqÛK¶úw­‚g³t}½³0Á»÷FRxèñxÜn&‚l®ãÜ\Z™JEKÇPÒË4²9\"Œ“ïg¯uñÎþg_+ ù¿ó÷åOÊkOýÙí×ÍO°Ò J“E×j:m¡×‹$zé¦“g`hä’>4Jì,=ë¯tD}û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷_ÿÒÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uÎ9\'IbvŽX$ŽD6xäFŽ§ðÊÀþ>ý×ºWÑUC‘`Ð˜¡¯{ùèIX£©“êÓã‹T¿V§¸ekøõ)\n¾ëG×£×?!»g­¨¢Á`·<²à©”¤krãè÷#‹ºãi2ÑKS…Vv$­$”ëv&×\'ÞÆqÖˆ<G‡š_™Ý§%„¸±k€\r©“B[‹±Ñ¹Ô?›\0/ïß—^óÏJZo—Ý‘5„»w¬È6½¶Æ]@úùê-{x÷ªõoÏ¥=Ê­õ1A.ÙëVïÜÌþ¯®¦ÞQÿ\0zbÔ¨­€+ž•Ô%wlÞ™6¯\\5íÀÛù¥úH\0nI\'ý¿¶¼Fùum#¥]gçkM´úñ™…¯ü<uø î¯ªÛÓýÓß¼Fùu½#¥}sä&*%Ùý~Ä/û‹Ü©úñýê7<{Ñ‘€òêé\Z7\Zô¶Çö¤³²yvfÂÕÅ­ŽÜ)Ç&Ö¨©½¿¯¶üwù~ÎðçÒóØPÍ¤I²ö-Á,¶¢Ü`Eµ(þõZàöýã¿Ë¯xüÿ\0oB3xãæ²É²¶Y [þî[‘Àµÿ\0½$ýû×\'Ëöu±?ÛÐ‹Ïá\'P$Ù4ÝB°ðn.GãþbcÏøýoþßÞ¼y>_³«}<_>„\\]^Ù™U_cí!Î«*îAÍ´Þÿ\0ÞcÁýãÈ=?g^úxþ·¡\'Ð›I}‘¶K]IýÍÌM×ú·#X{÷ÔIòý{éâô?·¡;\r†ØÒ€NÇÛªÄÁgÜëpH$Ÿ÷òÉ¿õß¼y>_³¯}<^‡öô\'á¶\\ÎŠbmàGÔ\nËùs¸Iüžëõ2ð4ýl[ÅèoB®¯zÂ`Œv>‚\r¿ˆnn±·9óÏûØ÷ï©ú~Îµôñ|ÿ\0oB¶ªz’p¥¶64† ²Œ®çÚÜ_>m¤}=ßÇ“åû:Ñ·çûzp½\'Ó*_bÐé$’©—ÜÀy?òüãëÇ½øò|¿gUðçÐ»…øõÑs¢jØ•kj=¹®y¾’NhúK{ðüé×¼ùô1`¾1üœF[cXX&ãÜê8âÇýÌ€8çéíÁ+SË¦ž ¼+N†Äó¬Aö$Á\0ªîÎ4óùÛÁ>ÞV+çÓeqƒž„êo†ŸB#C²*‚éünÌA\rõ¸þ)Ï»WåÕ:{§ø‹Ðî\Z=“9\0†³î=ÆÈÆáˆe9;0oÏõ{õ~]{¡-_Ò_\Z¶czn¬·]ô[`i³po=Û˜ÃìÝ¹GKL†F—+¹sõt©Pè€•GšIðŠI\0ê½{­\n?Ÿ×ü(Ëò›hnïƒÿ\0²Ù3Ð¹ÉF\'¼>@4C¹h(êI¶]ãªã£Êâú²¦®9\Zê¸âªÏ,bŠ*wî½Ö›>ý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÿÓÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝrT/p-aËú@þ§ëÿ\0>ý×ºPRæ²tñˆ’²YâPRµc¬DôXR¥&0¨€mïÝ{§÷6]ëo T\"ßú¯qï}hq4éÆ=áŸKi®ˆ‡ÚPØ·§úû×[éÒ-÷ºÁrŠ¶þ””ý·ù?½Puî!ì}ç´fÊÛéjZ?õ_ëîºW8êÕ>½;CÚ{õ-£qÌ¶úZ–‚ÿ\0áÿ\0(ßO~ ôëÕ<kÓ¼=ÁÙ1ÛFë©S¨¦ úÿ\0ç7¿i_áÇ^«Pzxƒ»{Q-£yW)µ ÇŽó—ÝJ\'\r#§5¿ñž ï¾àŒ®õ’[}-\r\0±ÿ\0ò_zÐŸÂ:÷ˆÿ\0Äz{§ùÝ±éñöamý# ÿ\0êO~ÐŸÂ:ö·þ#Óå?É®ûˆfç—ª­ÿ\0Qÿ\0_~ÐŸÂ:ß‰\'ñŸ©¾V|‰ŠÞ>×Ü‰aý“@?§ý1ý=ûÃOá{Ä“øÏOôß/¾LBk¸wBqn<ÿ\0½ÐŸ~ðãþÖüI?Œô¡¦ù£ò¢\"]×»c?Õ[\Z\r¿§ü\0÷¯\r?„uïOâ=(i~qü¸„ƒ{ïHÏÒë&3ýaÿ\0.óý=øÇð½âÉüg¥%\'Ï™0ŸÚù¾ãí3cÓÿ\0!Þõá§ðŽ½âIüg¥\'óùµ\r¼?#û\n1ÁôÔc\0ÿ\0ùvþ½øiü#­xüG¥=ó!ùÙ¼?&û&1øUŒOü†ûÞ„þ×¼Gþ#Ò¢ùœ|ÿ\0ƒüÏÊ~ÐŒ´Vãÿ\0#=ûBë^#ÿ\0éSEüÓÿ\0˜”ðüµíxÀ·éÈcGûo÷ïaph»–ÇJº/æÑüÉéÿ\0ÌüÂíøÿ\0à¹<hÿ\0ä_»€<‡T©éQMüß¿™ÄJ~gw2§úŸâ¸Ûöø¿ëîÝW®uÍëùšVÓMI7Í.îHgCµ&â‡P¸>\ZÊ\Z*jºwÿ\0jÕ‡õ÷î½Õy÷Öäßÿ\0(k£Ê|‚í¾çíü3Ë&>³±;w°·¨ÅK6¯$˜š\rÕ¸s8¬qmfâ\ZtS{ZÞý×º¯¾ÇèÎÒ¦Ÿ5·ªeÜ8:pd«‰¡	—ÆÂ9i¦†b¬¥Œ~©#\nÈ9dçßº÷Eëßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝÿÔÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝKÓkF?ÕnK?Ðÿ\0Á´“aÿ\0÷î½Ð‰ŠÛtô±¤¹(…EY3\\ÁK{¨óÔíƒtCÅ‰çßº×Jt˜ãŠ%ÙŽ‘mkp0¿_õ½û­õÌHÿ\0ÔsÏèAÿ\0DÜ}}û¯uá,€pßòj\0n?_ëïÝ{®üòŽ5›~8_ÏçôŽÃßº÷]ýÄÖÿ\0:ÿ\0ë‹[Ÿè\0ú{÷^ë—ÜÔ~&p?×úý8µ¿uî¹Šª«[î$úýoo÷¡ôßº÷Y–ª¯ß—úµ¾¿×ò¿uî³¥]g?å2ÅõÅÿ\0÷î½Öu¬¬üTËô?Û?_ÇøsïÝ{©	[Yø?#ýY°ÿ\0¯#ßº÷R¶·è*çãþn5ÿ\0Þýû¯u)++¸wQoÏî¿ûÍ¹ÿ\0{÷^êJV×ßŠº›ËY9ÿ\0Ï{÷^êRWWŸùL©¿Ôþóý?ÛŽ}û¯u-këÅ¿Ëj¿ê{ÿ\0±þ×¿uî¥Ç_ÿ\0•ê«}9žOøƒ~ëÝKJü•ÿ\0àu]‡ÖÓÊØ¯ßº÷S!‘þÖZÜÿ\0”Ëøÿ\0ø÷î½Ô´Èdx?Ä+\0ãþRfà~x×{Ÿ~ëÝLL†Jöþ!Zð&o÷_ý×º—~Dÿ\0Ê}e¿ê&[ŸÇú¿~ëÝ:Rf2”ÍqW,¢÷1Ô1•æÖs¬þ[ßº÷B/%F\"®‰RË<G¤¨$z£qôÿ\0l}û¯tCûï`SìíÑKƒ	¹–¢®ž¢¡ÈÂëüBŽ ’2¬±¢‡*8_~ëÝ>ý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯ÿÕÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u–ycíjÛÿ\0Ä{÷^éI¶ IóxÄ‘C ªX\\7ÚÃ-R©ZïÝ{¡3ëê$³©¿7nOøÜ“þ¿>ý×º÷<§ôüØ©ÿ\0ýû¯uáù½íþñÏÒßO¯¿uî»úz¿À[8?ï^ý×ºèþ\0âÿ\0áý~‚Üò\0ÿ\0x÷î½×‡çŸÍ®9þ ÿ\0R}û¯uÌ§ñ¯À÷î½Òƒ·r™zJê¬l0UA%E\"TÇüEã$ÞJz™fHÀ¹<^ö[·ý×ºÅ†ÆK™ÉQã –8d®“ÃÓ+˜ãmÁPjþÏÐr¿uî±<\r’ÂåYàšh’úKÃ+ÆÌ¡€`¬Rày÷î½Ó²ak›&u#‰±°VGA<‰:5DÊ/š˜ñÂÌUu±g[_’=×ºUÕuþz–uHdÅVFÐSÎ²Œ¥4BO”ù\n¨§V@UŠ°ä~ëÝBËí|Ž\nY_%\'û’–ª§§•*^µU`ïQO$´“$ŠxÐ×_¡÷î½Óx¤«Zo¿4•K@²ˆZ¿íäû5•¾‘µE¼`Ÿ¥ÿ\0H$n@>ëÝM3xÉ	#ŒŒx÷…‘ü¥å§–q*ÈF¢ÚJŸõýû¯uÁ/§Z¤­”@õ\"\'4ñÔ0%!z€¾$•ô›-ï~,./î½Ó€§¨Zw¬4•&‚&5r¨h!cÿ\0,LšS*—\Zˆû÷^êWÛÌ!Š­Z•‰FÑs)i)æ¨£†ñh!Å®o{û÷^ë$ERe§¨jC)ƒï–;Ò	ÚácÃ2•Ö ÆËªä~ëÝ8\"}>Ÿñ£þ¿>ý×º–‰oñú×ýçßº÷SR;ÛéþÇþ4oõ÷î½Ô´NE¿Þ>ƒßº÷SüN<ö?_õ½û¯t¦ÛÌc®[%]Ðƒ`¿ìEÏ¿uîƒ“T°Ë°1ÕN¿½G¹hÄ UQWG2’y!„cýˆý×º!þý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯ÿÖÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯ušŸüü_ðaïÝ{¥~Õ[gh?­«þ³êýû­|ú_ ¹½€ÿ\0`M¬Ã~ë}r?©úÿ\0ˆÿ\0cý=û¯uï¥È½ÿ\0üÛž?>ý×º÷çý¿¡þ¼_ßº÷\\n.mý>€xú_~ëÝd\0›}ûo­¿ì÷î½ÖP¤ð?ø¯õ÷î½ÒÇma÷`ž‹?Ä×Ô¥5IñÔSx|r˜œ-M;kš2QÐ”e\"Ä~ëÝßÝ\\¥/`Á—¤ÄÔ®\ZjÈrÎ‚\r•4ÄÖG2‰C¡Ž¨±`UÅýû¯tåöÎz‚L…uf&²\n®¨sVV&ƒEEkˆ\\4s3hÈ¶6üóïÝ{§ÍESgðs1û\\Î\n±X¾ššDóSN±‚I$‹r~žý×ºŸ•©Ù9úÄÉUä7%5T”TÓG‘á×GJy#ó»J¡Âý¿uî°fò8YðØ6§!Qü&£!3>FŽ:IdŠ­AôÆLR>„~ëÝeÛM¹iËÔbquÙ\\tŒiòiªÇU©Pd§ž\"ÚVSðÀ\\_›‹~ëÝ/eÓ¶\"X \\=¹sqâZW)O4²G6¦ýr3•É¼`sÁ÷î½Ò?)>m`Šž|=v©iéé\rAFœ4‘E,ƒ™$\"2nx,?¯>ý×ºë29« û/&:ˆªò0R¬èÞ9iåF2DTðéÈ÷î½ÓÉÃb•j\"Zë!OJ™\ZQEéM(ljWF?àÞâàªp¶Qo~ëÝ7Í&NHâ’hèÚ“È”áqù*jˆi–åE4†@	ü{÷^ë* 6ÿ\0xäößÓ~ëÝKHøþƒýo¯ûsý=û¯u1éôKÄ~ëÝKHÿ\0<X[ê?#ý¿¿uî¦FŸ›ð°üOÓñïÝ{§ì2Ú¶ äÐß×ý‡¿uîƒ“ó.`ÿ\0Ã—ÿ\0¸Ù~ëÝO~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿ×Ð_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uš›üü?òÑÞýû¯tµÚêr‡úé¬?úÏ«ãßº÷K¥¶Ÿ¯àõ¿Þ¿>ý×ºõÏç©úÛŸëkßßº÷^þ¿[Iï ÿ\0¾¿¿uî»ÿ\0ˆâßQþûŸÏ¿uîºüÿ\0ïþÇëÏÓëïÝ{©\n8ÿ\0zðmþÂþý×ºÌ«÷ž>¾ý×ºSb0y<­4’Ñä±”‘Ã)„Å_›Lc3”YE“ª2õÏý×ºä¢•÷–8™¬ðêZL\\U¨w\r0”IMK,5!`Õ¢pdn5‡¿uîƒ¬æ%’¦ªLŽ6²Ž§!PPf£­”G<µÄòÒ!Ô‘éIä+=û¯u+fÔÓPf–¢ª­(¡û*Ø–ªMDG,°”ˆ\Z³×~>¾ý×ºWÂÛ¡¨¦®NÄ£’Žá†¦¨&L$RNÉ>@i5j•Üpúû÷^êèÈ\nünÞ‚LÕ6nº…òb¶ªœT&¡PiþÜ‘QLÞˆÊ’?#ýo~ëÝ2âÒÝÖ¿)‘ÆÄª\Z&ÇÀµFY€!ãybTP¿Ú¹$ñïÝ{¥ºÁ‡þìÊ?ç^—øõ1ZßáñŠ¨*¾Î]0~à£SMÉ:Áý×ºMUÇL¢ËWä¡e2×R}£G d1ÂO2J¬^ö ý}û¯u\'N­<5MŽE¦š)5ÒU¡•”êVía˜2ÄÃV–àµ¿÷î½Ô¯áòG@ŠrXs1Ì¥Ts*Uý¬•[ºN<\ZÒYL¬à)e±\'ßº÷\\ª)¦Z×ªñV5êR‚Z¯DÉ\r…O‚¢ŒyŠ„mð¤¯¿uî¤ÆŸO¥þžý×º™wÿ\0ˆÿ\0ï­ïÝ{©ˆŸCoñçéþµíïÝ{©±Æxúßý‡éø÷î½Ô´K},Þ?Þ¹çßº÷OX¥µ\\<þWðÔ,}û¯tü˜ÿ\0™qønlOþãd‡¿uîˆ¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÿÐÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u\"—þÁÿ\0-ýàßßº÷K½´¶ÍQqôZËÛúÿ\0«÷î½ÒÇò-Àµÿ\0}ùçßº÷\\¹çƒöüÿ\0Cô÷î½×èÖçƒõ¿&çú‚=û¯uÌÏûÉÿ\0y÷î½ÖUáõçý·à~ëÝfÿ\0ìn9ú_þEïÝ{¬êŸÀ›ÿ\0_~ëÝKZy^)*¼˜’yÖ\'xai›DK,€‹Êü-ísïÝ{©\rK,R,3SOÌ±2E=<‘JÉ)&D‘%?¤‹†?O~ëÝMŸWC(‚ºŠª†bºÖ:ºy)¤xõÖ‚DPèJÜïÝ{®“Im\Z€!Kô°âçž¯sý./õ÷î½Ó;U´-8ÈIM-™¢‚\ZÙ)äúÌ£E!ôŽlý×ºËàš=5T\nì^¢ŽªgÒÌ¨²M\n bªM¾¼{÷^êLP<Œ8¥É6Ž¥žCÁ¾˜aW‘¬Íà{÷^êdNí\n¢Jþ	4È#Öâ\'$’4WUÕkrEýû¯u$FèÈ­ñùci!i!’8ç‰\\FÒSÈè#™Í‰RlM½û¯u˜²B¥¤Ö@i%LðÄ¤­<±£GN¤‹]ÊŽô>ý×º•TeþÐJËy=ºÈM,`y;°ÔM\rìÁ	e?[{÷^êBTÒùÖ—Ì†w%4¨g@\'‰äPbŽS\Z±Hb°>ý×ºu>†àöÜƒÇ¿uî¦$“ô~~¿áþóïÝ{©ˆ£ú[ü?Çý·¿uî¦¢~-þÄþ?¨¿äñïÝ{©iÓúNû÷^éß–ª‡Žu¯\'ñv‡¿uî‚¯’ÿ\0ó-âÿ\0Ã—ÿ\0¸ù~ëÝ/~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÑÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u\"“þSÿ\0Ëhÿ\0èa÷~ëÝ{mm˜¤ã¿ìÜ}W¿\"½{¥P½…É7à}Ô°\'ßº÷]ßüñÏ?ÓÏ¿uî»µÏõâßïï>ý×ºÊª-þ<¶ÿ\0_ßº÷Y‚ÿ\0Äÿ\0SÈãý€÷î½Öe_è?\"ÿ\0ìâ=û¯u!Rÿ\0Kÿ\0±âçüO7ÿ\0[ßº÷K|õ{rÅSQ5$>|†¢\n9kÞ&Ž±Ý	¥‰ÒGBà±\ZA¿ãßº÷Oy(>þ¿ï“«©’—gTÖÁ“^ŠªYè^¾h&dœM,,0±·×óïÝ{¦íÃU=u.Òš¦ig¨|­$²³<’1¬@K»]¸æþý×ºtÀW#b2Ô•¸üvB-\rVkµ”‘9§¯](X²…iãpAe}WÒÐ[ßº÷JnZj™ª “sUå“%„¬ª¥Zl‚ãk0õôI4”ïŽ¢pcñZ&FÒépÊG×Ý{¤Í^N²£†§rÉ—š¶!WU50ÖÒRª²š=2’eêC4£è—\0ZÆþëÝ(¶ž)Ú³•£žJŸUM.RŒ¬Qš’–V¢¬ˆë<¶¤ÞáŠØX}×ºe¥Å­=-;e²#4£SÃÆÔMÂƒË<OôNó!ÒÊ\0ÿ\0CÇº÷JlÞ=ãÆà&†·Z)1µ:ÓÔ<2ÔÃ>B*è`ž=uCªÒ)*Ëk‹û÷^ëØªl§ÚdtÒV©Æe“îÆôÓTEE Ttæ¨éC¢Ìnú~ëÝE¡¨Zª8©«\Z\nÌ2Á™fE©ýÙHŽ’\ZZ:†•YˆÒ±·Ðò=×º’àÅ4ø£:RÓ´5t	M$ÑJY©fQ¤‘<£#AÔº¸ÕïÝ{©Hœqõÿ\0aÿ\0#·¿uî¦\">–ú~?Þ8·×ßº÷RÑ>†ÜŸÉþŸñ«û÷^êdh-Àãè-þûñïÝ{©ˆœ_Í¾ŸñCÿ\0#÷î½Ó­Ú¢ýeý¨r×÷î½ÐCò_þe¼_ørâ÷#ïÝ{¢ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×ºÿÒÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u*‹þSËxÿ\0èqïÝ{¡3o¥²ô·ÿ\0Q[ÏýPU{Ð­G[üºPÓð?×ÿ\0ø{ë]v¢Ü¼ý?ãCßº÷YUyÿ\0[éÇüoù÷î½ÖUŸñ¸þ·ãè?ý×ºÎ«õ·ûþúçßº÷R~Ÿëž?§úß×þóïÝ{¬è¦ÿ\0Oñ·ÖßïGßº÷BÕ#OÈñ»£Å’jG¥Èíøaò§ÚK#?Žiä\nU›ÐÃI\\{÷^éÖµròÖÓW&s×$x*¬,òä¡‚*Éš¤Ô)©yéÌ±;ˆçúiSuý×ºcËRÖÇE‚3âòô‹¡þ<Õ”>\Zs4Ó‰¡hæYdáô‘êUæÞý×ºåIY8ÜŒaD³ÍŒª‹!‘ŠªQP´lÁ¤˜ÓÉ*ÓÚ\"TYF£oõýû¯t±¢ÉMŠ†ž¿%¹LøÚÈ\'¥¥4¸5V†¤SÙšE¼tÎo\ZÞeOñ÷î½Ó~n\nèâ†*ìý6Nd¨Y„cc¤ž8U©™Ñ]©ë—YVˆ°R¤ÿ\0jÞý×ºpÚ5XúL”HÙ\Z´®¬Šh8EIö’Æ¤‰¼¥þóÈ<Z…‡\rþ÷î½Ô\nz•–«ËŒž¿9SWŽûJ)rOUt2I‘Ï$³FòS4Qãý>IlÑÝ­Éý×º•VÂH6Úˆüa0µ€F@ÕûŒ²–Q¤qÁ#~ëÝ>àzv¨¨z:XŽ>»öÝµT9ŽªHÊšGî<–¹m#úŸ~ëÝHÅPÖÍzjÜV\'%Œ®®jÚ¼”+LôõLàÈkE=L±Õ¤‚goG‡ÒÄéàû÷^éºXk¢\\{ÖaV•iõcâ¨Ç5Ú,uR+Ø‚²GÆHTƒã	æ×>ý×º›génûÿ\0½ÿ\0­ïÝ{©ˆŸíÿ\0¯?í¿§¿uî¦FŸSøüxú½~ëÝLDÿ\0O×éýx>ý×º—ò?öÜ}}û¯tãJ¶šý%ˆù+ßº÷@ßÉqÿ\0Ú/ðÜ¸¯ýÇÈøŸ~ëÝ~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×ÿÓÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u.ƒþÒÔD#ý¼‹ïÝ{¡_²´ÇþmÖÿ\0ÿ\0€^ô<ºß—N‹ô·Ð[ýoñÿ\0ï}k¬Ê,¡?ñNH<ÿ\0¶÷î½ÖP¿K~?ßÛû÷^ë:øÿ\0[Ç^À“ïÝ{¬ê¿×ü/~~ŸŸñ÷î½Ô•Søþ¶ÿ\0où?Ÿ~ëÝgUâÃýqþ?Oõýû¯tãõ˜ÊI!XØM2ÄÚMô”ŽD:	ú€}û¯t£‡rä£ËÉšQžUÑ-(òý”‰àX4˜|º¬<a½Ã­½û¯tÜÒÉ#9ÑÆîÎ´é,íOc¨G\ZK,…cR}*I°à{÷^êdK54é£ÅX‹\r@hãfxÕÖEU©–1­A6 s~ëÝ;cr3ãÖhÒ\'ŠvŠCJQ*a7Š¦1uÓ<ÙoÁ·ä~ëÝ`E%‹3f$³±.ì×»3·%™Ôýn}û¯t÷È×ã×E$þ$fÖWÃ‚Ú@ÔÞHÙ‹i¹?O~ëÝd5=EEM£‚Z˜„&’$¦ŽhÀ*RH¢UÉ?ÔóïÝ{¬ÌL¿mt@iiä§G]whä•f`à’¤‰‚\0÷î½ÔÊv1²£‰!šž@÷±Ž¢3£ÒÊAdb/ø÷î½ÔÊ&jI!’%§°@÷e\ZT¨ÕÊÜ…ÿ\0õýû¯u–Xã\Z‘y ),tD’¢ü^þý×ºœ‘ñôÿ\0[ü}û¯u24äQù_ðú}y÷î½ÔÄŽÆÿ\0“þûëý-ïÝ{©ˆœö7?×‘Ç¿uî¥¢¶úqøüéþ·¿uî¦Ä¶’#ÿ\07âÿ\0¡úüqïÝ{ [ä¿üËTÿ\0Ã›ÿ\0¸ù~ëÝWÿ\0¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÿÔÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u3Í}þµTÿ\0õµ}û¯t2aâ¶JGÒ*ÛçWçÝG[òêR6°âÜýyç‹}}Û­uœ/ôÿ\0aÏÔÿ\0[¯¿uî³ªó~OçŸ÷ïÝ{¬ê¿Ak€ü~?¯Ôû÷^ë:©ÿ\0cÅ­ÿ\0}û¯u%Sñþ·ûßâß‹û÷^êB¯Óóþ6úoú>ý×º–ˆÐ}×·O¯Öþý×º•\ZØ½¶úÿ\0±¿¿uî¥F§úŸÅ¹úÛßº÷R‘9·úßñ_éù÷î½Ô´[¯Áÿ\0Mî>ý×º˜‰Çâçþ\'ßº÷RÑ8çŽ8ÿ\0ÿ\0ˆ÷î½Ô´éô\'žx±þ¿~ëÝLHïk}/Àæÿ\0Oø§áïU½{©i¹·û^.}ï¯u64àOðÿ\0ˆÿ\0ZÞý×º˜‰þÛýkÖÞý×º˜‰ ðçéþ?O~ëÝLHín9·ÓøŸõ‡¿uî¥Ç¿õÿ\0}o÷›û÷^êb§Óñþ·×þ)ô÷î½Ô´Kqþ?ï¹<ño~ëÝHQê‡ú\nˆ6Ô}û¯t	|˜ëXÇýœ¸’êFGßº÷UûïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×º÷¿uî½ïÝ{¯{÷^ëÞý×ºÿÕÐ_ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯u;ÿ\0\Zý>ò›ëÿ\0-“ßº÷C†1PWÅb§ö«~„ù@ªúsî¾}oÖv‚ÁI±ãð_¡\'Ýº×YÔ[ýãúÿ\0çéïÝ{¬ê\0½ÿ\0ß‡¿uî¤¨ã‹[üHÿ\0y·ëþÛßº÷R/+Ï#ýãü}û¯u%@ú>¿Ô}?ÄñïÝ{©(ŽGÓêHú_­ÿ\0â=û¯u)BþHÿ\0oc÷«~ëÝIP¿RGøaþßü}û¯u5~ãéÈúñý?6ý×º”€pn¶·ÐŸ÷Ãßº÷RÉë\\_ÏÓßº÷R¯k©®ÀÂ#kEýíT³©õ ÚhæzÑ!A\'‡íþC¦ºŒ¥gé£ÇTŸù»-<¶ÿ\0`š?§õ·³ûM¦È€÷»¤#ú(ë_Í‰§ìŸEW÷\"«mc!ù²·øùzmpUÉ§üª+ß—’%óë—Æçú“ìãO-Ù¦¯Òsöøû?äè¿VórÔ¤Š>ÍüL‹Tæóç)ao®‘U$¬\rþ—/ý§´ï¼X¨¤9eõ* €ôòm×Gû]Àòf?å;A€ËFQn5bÂ±‘£<}-ä™mþÃÚ	7]®BDû*ƒò äJ’Æõ\01nDý¢£ü\'§Šz­ÇBWø…98l{ªÔýM;ˆü‡ü\0ÚI!Ún3irðÉü2\n¯ûØ­?>ŸY/âþÞ‘=PçýäÒ¿—JúYc¨Ž9BÉ\Z¸¾Šˆžže?êZ)BÈ¤>–?en†7d$=#ò\" ôµX:†\0Ðú‚ì=8ª‹rEÿ\0À‹°çÝz·S#UâÅIüX‹ÿ\0…¹þžý×º™\Z¨PGçŸÉÿ\0[ú~ëÝLU[ýA?žGõý×º’€~ãër?ã~ý×ºÍÇìÛþV!¿úúÇ¿uî€ï“?ó-Sÿ\0LGýiÈ{÷^ê¾ýû¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷^÷î½×½û¯uï~ëÝ{ßº÷_ÿÙ','2013-12-09'),(165,NULL,'ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0„\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿÄ¢\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0	\n\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùú\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÀ\0Ð\0\"\0ÿÚ\0\0\0?\0ò:^Ô™ óJ*KÇZQA£½\0ŽôQ@Ïz^zÐ.(1ÁïHœæ—<qMhþôv tæÒŠ:R\'Þ¥)–È ½Fy¤?z”õâ„ëFh£µ\0”ñÒ›ÎÜRŽ´\0½NíIƒž(9 b5 >”7zEéš.!àðiAäSGJUûÔ\0þôå<šŒõæœi­@ÖÐÛþ&Ö¹ÏÞí^“	ùsêkÍ4»W¶\0tlŸ¥zZc\'‚x L”RŠLóK@…4P9¢˜‚”Ð(úÐKGJ(\0–ŠZ.\nZ:Pi\0ÖàTdñRIþ­¾•\\¶“\Z$W&¼Ó8§²RÔb‰8¥Y=*\"ë@Ï®ÛÅ=Nj¶jhºSLV$4\n)qT úÑ@ SsH:ÑJ)\0hw {æ›\0ïE(£½\0¨=(¥<R( Ði€´v¤¢ÂŠ)iˆCINíI@t£½ ô\Z;Òô úÐh#š)ŒJZNô½¨””´\n\0NÔcš;Ðh\0=);Ó©½é\0QKHzÐQÖŠ)€”v¥¤¡€”‡¥-!¤Ru§S{Ð1sHh Ð!1A¥4”:šCEè\04”¦“¥ \n;P)\r1IKIH¢ƒILaÚRÒP\0zÒ¦–ƒ@„4†”ÒP\0h<Š)(\0è(=x¥=)s@Ã·tàQëHh\0 ô£µ­ˆCH) ÐfƒIÖŠ\0	âšE/j\r\04ôÅFÝ*FéŠ\"€)Ýœ)#Ò¹{‘ûçú×Sr	Sß¶+™¹½ocÞ’+¡PŽ)¸æ¥aM\"«ÌDx¤#&¤\"ŒPÀÞõ.)1@-Í&9§âŒPfŽjLq@Ð}‡µò)1é@Æ!&) bŒSˆ£`N¤¡´”óI@\rÆi;Ó©	Š:})€j3(è¹\'Þ€$\"“?¥FÓ*ŽN~•\\ÏéLE“Msš§öí¿-<6ñÐŠ\0€zQÇc t©èX*AJ9lR(€0hÏ¥))Aâ“½\0š£špãð¤M0°áA¡Oò ÑÔ(O½ÅiW­\0\r÷¹¢Žô‹ÉäÐ\0:Rž”\n(G”RœÐ(¤üÔ½©¦œ:R¯H¡ùv¦!ÉÒ•FM\'Eã©š@…=sN_½IÜÒ¨æšØ\r\ru˜1“Ô×¤Gì1ßç^\'ûfà\0	æ½:“×\'4ÄÉ.)–\n){Rw¥¦ ¢ŽÔ\n\0ZZ1Í€\nZNÔ´\0R8ùOµ-¥™+ów¤òÆzT‚–•€j.;ÒâŠ@Fëž”Ò†¦Å¢É_aÏ<c— sB@Ø¢Š-P„¥ Ð:R\0¢ŽÔw¦ÑF9¢Žô½©€œÐiqÍ€PzQE \nP:Ó\0ëÒŠ(€AïE)£½\0v¤4PGj;ÒZ\0SÒŽÜRg#Žô¢˜ÂŠ(ô„\'QEè ½dûP(ï@&)M! µ4ÒÐzÓ(ïF(4\0””\ZZLšhw\n¹4Šw€WŸoJ\0\\ÒRç8 ÐÒRf–€\n(4„úPšCÖ–u Œó@¤íÖ€4†Žÿ\0ZJ-!ë@÷¤ Bö¤Íƒ@! Ò\Z[€§¥! t¤Í1Š}©;ÑÚŠ! t£½\0w ž3Iš\r\0/jO­âŽ”;qIÚŠ\r\nJ\r ë@ÞÒž´Þô\0R\ZQ×Öõ 5T‡¥1¸<ÐÀ§uÊ\Zçn×¿zé\'b±®mœ£ühC3\nÒb­µ³´Æ…Áû¦˜JÑ¶¦)Œû”…hÝµ>ÊiÐ2Rcš›R@ˆ€Å&3Rí¤ÛHdX¤ÅJFhÛLDDRRcŠM¸ dx¤ÅHEPdf“qO=iZ\0f)æžE4\n\0a¦ž•&ÚdÐw¸¨ÊU²´…}(ƒÂIâ«Ë­j²ñUä, óº>ƒƒSF[\07CÒŸ2Ÿ,c­<¯Ê¹àúzÑp+Í8u¦“Ï?þªq©)‡z(ô„Ð1)Gµ!éJ´v0);žiÇŠ»¡i7ºö«›¥AçÞÏ»Ëz¦íªXòÄÀ=é i=ù®×Pø_ã\r>ÂæöïHòí­âi¥´Âv¢‚IÀ|žjâ¦!Ã¡¥íH½êþ‡¤_kº¤\Zv“Ÿ{>í‘ïTÝµKXÐô¥ü?Z·|Qá-oÂËmý»eö_´îò¿z»n3÷Xãï¾µ‚¿J(ëF(y sH4¦Žô\0/z+¬Ðþø£]ÒàÔt­/Ï³›w—\'Ú\"LáŠžêjÐÿ\0…Kãoúÿ\0äÜü]\0pYùˆ¥/Ò¦Ô-\'°ÔnlîÓË¹·‘¡•2×RAAéPô cAè+WÃ^Õ<M|öz%¯Ú®R33\'˜‰„rÄ¬?:_xwTðÍôvzå¯Ù®dŒL©æ#å	 ©#ªŸÊš+S£<ÐG©ÔúP±Öž£pç­0jX¨@møN/ø™+Ç@Jïãêr9®Âç7ÑŽ¤0kÖ,ü%­Ü[E<6[¢•£y¨2¤d½T#t¥Ðë¿óãÿ\0‘£ÿ\0â«\0R\nZRknÛÂšÍÅ¼sCgº)T:·šƒ ŒƒÖ˜Œ1Ò–¬jsØ]Émvž\\ñãräddr8èEW\0¢”RVÀðÞ«ö¶ý“ýÊó·ù‰÷1œã9é@ÌŽý)E ¥1ëEoÿ\0Â®ÏþFOþ*™qámfÞ	&šÏlq©wo5\0=èƒÀ¥Ç<éHa¼~ToµhíÅO0X›pàÞ•]zâºèðkz¤¶×O*\"Âd\"ÈeÁõ4s-†Ñ)GZêEƒ¿è-}ÿ\0|þ7Nûƒ¿è+{ÿ\0|þ7M1­(é]@µðq8\Zµïìþ7[ö–úðìpÞÜ6˜Ó,¥Nål§åÿ\0w·zwç•-Ø…o\'[Wg·Â6n¬¹àŸÂ«–Ãb‹Œ“µwÃç:îÿ\0_1ÿ\0èB´|qÿ\0#Mïüÿ\0@ZaRWY§œ|9ÕëåœuOÂšM–©£6¡,ÑGhªäÆGNx?Ýí@ý-u_cð‡ýo?ïƒÿ\0ÆëGâzis,×®¤°¨Š>V]ç“ÇûÝûQqœ%ÝÀÕ‹Yïî’ÚÑ<ÉŸ;W g=O° D\'­§½n	ëyÿ\0üŠŸüUÂZßüùäTÿ\0\Z\0Â4Vïü\"zßüùäTÿ\0â¨ÿ\0„K[ÿ\0Ÿ/üŠŸã@Tbºé¼tº,C­©3‘,FDÚ«ór?ñÞýë‘\0P(úÑÚ˜é@¢ƒH\0ô¨™²qÜT¤ñVôíSÕÜXZù°«ìfóppBG¨ e\0p(WäŠ–xž	ä†eÛ,LQ†s‚\rG·š@.E&kZÇÃz¥ý¢\\ÚZù¾v·˜ƒ88<ê*Sàýp‹üŒŸüU\0b3LVÉÅ-ÌR[\\IË¶X˜£çL‡ŸzW»nÔQøRš¡x¤ïKÚ¯izEö«æ}‚7ÊÆÿ\0WÎ:‘èh…!­ÿ\0øDµ¿ùòÿ\0È©ÿ\0ÅVf©§]i—\rô^T¬»ÀÜŒ‘ØŸC@Èõ¤¥íW´½\"ûUó~Á›åcÎ«ŒçHô4Ï=)¤Ö®©¡j:]ºÏ}oåFÍ°êÙ8\'èk%¨WQp¶ÎÝÅrO«I²ƒƒž9®›V?èr`{W›ÝK¶GíÉÒ¸ú:x’â4Úd@FqVÄ’ePôè:ýk‡7ðô4ô‘qNÈV;Äñ/<ÅÔTëâY²Ñ•t¯?°Á·|1áÝsÄÆäèVjû>ß7÷¨›wgoÞ#?tôô¥d;Lzí“H2;v©Æ§hØÃ•Ï¯jàõ«KýS›NÔâò.áÛæG¹[PÃ•$t õ«>\ZÒõ_ß=¦ln®cŒÌÉæ*aA9bV+™Ü-Ý»–d#¦sR,‘‘Ä±óþÕd¯Ã\Zÿ\0 cõûT?ü]J¿<l£ ÿ\0àT9ÿ\0Ðè°µ4‰ü¬œdQƒž‡®+‰Õÿ\0´t=Jm?SF·½„\rñyŠÛrT‘ÐŠŠ=fté3{ô¢Á©ÞGPE0šã^¸S‘\'l\n²ž#”rv0ã¶sE˜^i3\\ä~$#“g=±Ò¦_!oš0>‚€¹½Ú“<VDzõ£7Ì®)ë­Z±;rmÔ˜\Z™õ¤5E5;f?ë0»·aÄË@\"sŠ*/><dH„àÓ‹¨8Þ9ô¢ãhíMpàgéA<ô¦“Fi3‘Fh§š&hÍ \n1úÑH:\0ZBh(4À)ZæŒûPšCE\'j\0\rè¤>Ô€Zcr)Ý©„Ð.8ªì š²ýêÉ¦m={ÓLc=Ji\r+´ õ£kd\'îŠ¸E ¦#ií€zûÔMd	ã<zV‰\0šB¼Ð2ÞÇÓŸ¥FÖL ä©­m´¢Ã¹Šm$žôÃlã·¹°g‘Ldë@\\Ãh˜Tà{SÏ¶Þ1Q4@Ž”ŽTã‘M#½k4\0ŽE5­—²Ð3(©¤+Åj5¢ç8¤ 	Í 2ÊäRlæ´ÚÈç©¦6ç§ãLF~ÚB¾•xÚ¸Ó\r»‚¦€*¤ÛÍY10ê§4ÖCÏßŠ\0®ËMÛšŸaÇµ&Þz­\0WeÈéPÊ>SúUÂ j½Á*¤¨Ë”€Ì”¸8g®jk`Y‡}½©Œ³ÈßêÇ•bÝ&Nv€M6†gŠwjhô§v©,4‡­*ÐzÐ»\0Ó@éHÝiTÐ!ç¥}/cáË„ž\n¿Õä·µÖïígÇ;@°J«!H¶ùÈ,}òE|ÎzWÖÿ\0ä–köÃÿ\0GÇ@]à/‰·W>+¾²ÕmfÔl¼A{1ÛÜÝ—ŽÒ9$`P+)¸| …ü›ñÛÀVº?ˆl%‚k»˜íÒÂa\ZCû£’8äÆN6½ù­ï‡t½ûá-æ™käÜêRÛÍtþc·˜ù·9Á$]ºc­v´¿üˆ–öÿ\0EK@Ï›+ê…z…<<¢Ò×[Ðõ­açy`¸ÊóÕJ\0QpÌØXðz_/Ž•Þ|\rÿ\0’£¢Ûý% ;¿Ú‡§†¿íçÿ\0iW„ÇÞ½×ö¢éáŸûzÿ\0ÚUáiŒ~	‹Œö¤^GJô/	ü\'×|K Ûjözdv×;ö,ÒÈmr§ !T÷­øQ>&Çühß÷ú_þ7@Ï&Å[Ò.£±Õ¬®î-’î\'I^Ýñ¶UV¡È<1Ðõ¯CÕþx‡KÒ¯u‹Í%¡´ç‘RYU,@Ìcœ\nóÖ›âŸŠòê>¶Òü;¦?‡Ä¡¬nÊ\r¸l¦ÔEÀ%·}EIðsÄšíÿ\0Ä}\"Úÿ\0ZÔî­ŸÎß×R:6!r2	ÁäøWà‹¿ÙêÒÉâë«ûXã¶b¬$Ü¸<:ñ€Ã¯~•ëŸ5O‡7>3ÓâðÞƒ©Új­æy3M#_Ý±lƒ+u]Ã¡ë@Ÿ´¦™ccq¡Ïeeko5Ë\\¼òE£JÙŒåˆ1É<ŸS^E¤[G}ªÙZ\\\\Çió$R\\>6Ä¬À9 `ž£¥zGÇ«OÛê¶²k÷ö×VOrÚtq(\r[—åo‘rpPun‡Ÿ_+ïšwõÃ\r/Ã:6Ÿ\r†©hÚ¦«oæÝÚù^|‘™7|ÛY›hÊŽIjòÚLgÇV?ö\rÿ\0FËIû5ÿ\0È÷ÿ\0`Ù?ôlT~Ò§þ+›ûGÿ\0£e G•çŠŠLñ^›£üñ©¤Ùj÷šJÃwNŠòÈ+¨`#<àÐÁf*X¿:õ!ð/Äßóý£ßéøÝfø›áN·á­\nçU¾ºÓd··Û½a‘ËÌ`«ôÀÌøwyâx.n­#»‚5|Ã!|©ä„ƒÓµzÆµâûB+DÓã—LŽ\0Wlq€1Ö¼kÂÜê£8a<×®x7@“[ºÜ<¯³ÛÉ]ˆ.¤œè¥³¦øw>«s©I-ì·ÒÚ4\r±åghËnQÁ<g¯ëXž<ûöÄ?Ù_eò<…Ýöm»wnn»xÎ1[Þ%×£Ða\Z>„%µšÚ@I*6°,@,IêÃµyõ0;?\0x~+ò5‡I\"†VŒÛ¼AƒürOû^©|Aâ™bÕà‚Ò\'¶ƒN‘£Šb«2«\0\0\0§=koáü€\'ÿ\0¯–ÿ\0Ð± Óm/n<_5Ô^d¶Í#ÄÛˆÚs!ìyè:Ð#v}6ßÆ\Z½âÇÄ²ibF!w.pO@\nòúõïÈ§cÿ\0m?ôcWÐUà½?M’U½Ô¯¬ÐDì†ÖãoÎ6ðy>§Óµz±åÂ3}ö}žGØßËòñ·nÃŒcŒb¼X\nõßù¿îÿ\0´¨ÈÇ\"´´+ø4ëÇ–êÆ+äd(#“ ç}1øÖm( gA®ø¢÷Q»Imd¸±@qÎpNIÏõý+£øws>¡¦—óËt˜vÌåÆüŒZæt+7]bÊââàÈJ´l@÷‡|×eáytÛ›MM|7o-¥ÆÀ7Lr7ÛVèsÿ\0×¤#‹ñœ[ø–ò+xÒ(×f(\"ö†ã*kSÄ±ÞE­\\¦¥*Mv6ïtåì;cµf\Z\0ƒa¸©€£•.%\\„¯$÷®Ãáwü‡î?ëÕ¿ô4®W½nø>JmNQ£ÜEoqä’Í È+¹xè{âŽP¹½ý¡ÿ\0R/þ@ÿ\0ítGþ¤oüÿ\0Úëþísþ¿ò\nñ5Ñxg]Ôotnk›òÛA¾&Ø£iÚç°ç ëK•…Êë¨sŸøAqŸúaÿ\0ÚêÎ©?àMIÿ\0²²±*\'fÝß2|ßt}?\nçá-×?çûÿ\0 Çÿ\0ÄÔ÷WZæ¯á‹»«›ØžÁG$e3©Âú‘ßµas–WïJ[4‚<\r6XÏ?\Zz†‡Ià½FÞÓRŽ¬£¹{‰¢Hä|f#œddP{t®·\\¼òµYÓþ·ãoúG•»Ê;ì=:uí^áåÿ\0‰öšéæ/ýW¥jÖž$—P•ôÍBÖCˆê	ÿ\0ïžô\\DPŠ^]O¡%´qÈ³u\n$åFîWßÓøkÂmöÍ?ÅmoÏ:\"c†1œdI……kkÐêpø\'Q]bâ+‹ƒ\"xÆ\0]éÐwÍcxY-´ŸÍm–8Ñ±œ²I°9±£j¿ô\r¾ÿ\0¿þÐ|M?ñ?ƒþ½—ÿ\0Bz |]¯ù~ÿ\0È1ÿ\0ñ5âpÎ¿oÿ\0^Ëÿ\0¡=9\ZÝðá,±ÏûúV·¼	ÿ\0#eüÿ\0Eµ ®jú”ZÞ¡z…âF—*ªÌÀ\0àšÜÔ5Äø¦\\­ÝÂÜ=ÁV”JÛ˜fN	Î{Ê¹_ÈRÿ\0¯™ô3]¥ÿ\0$ÛJÏüü·ó–‹€Ïj—÷>%³ŠâöêX›~QåfäcÐš¥®júŒZÖ ‘êj‹q\"ª¬Ì\0Ž\0æÿ\0È×eÿ\0ÿ\0ÑmT|Aÿ\0!íKþ¾eÿ\0Ðac¨Ô5Ôð›r—Wáî\n´‚B†dàœç°ü«‰WY©É6Ò¿ëå¿œµÈ\Zwo ¾*Ò€N(æabÁ|R\0¨Iã­%Â±±¡YÛjWo\rÍôVH¨\\I&0N@Ç$zþ•ëzgØ>ÎßÙeòwýŸnÝØÝã8Åx]z‡Ãù\0\\×Ëè	CìpÚö?·u/úù“ÿ\0B5^Îd†îdfHÝ]£nŽè~´ï’5ýOþ¾¥ÿ\0ÐPÝÅ;ŠÇ]ªø±®tøítëfÓUp0M·ŒŒ\0;œÔþ¹Õ®õ»i%žúk0]dfwhÁØpoOÒ¹ÝI¸Ö¯ÞÕâWHÌ„ÈHÀú×mâJÓÂÖriÚLrÛÝJtq‡Q–ÁÎâOE=©\\v2¾#­ž×ì_eó·Kçù;wnÊýìwÎzû×‰´Ô²Ï%ÌòM3n’F.çÉ\'$Ò•I-ÄkxgGþÛ¿{o?ÈÛ“vÍÙÁG­/‰tì[ä¶óüýÑ‰7lÛŒ’1ŒŸJ©¦ê7Zdí=Œ¾TŒ»m\rÆAÇ#ØQ©ê7Z•ÂÍ{/›\"®Àv…ã$öÔÓ¸Š†º‹_Ei¥5¥®šLðšâ)±`¸p½sÏZåÍKin×WpÛÆT<²,j[ $àf€/[j\ZÕÓ”µ»Ô¦p7ŽGb¯»Ÿ}‡ûãÍû/Ûö§—»o›·xéß{õ¨¬ílü¦Cw}IxäÁ$1lä–1¢ŽÕÀêzÖ§p³_KæÈ«°6Ð¸\'êhMOþÕÕ`³ó|¯7wÏ·v0¤ôÈô®ß_º‹ÂÚL––Èf¹¢kˆ±nU\09ÀÉ9lõ®[Àßò5Xÿ\0Àÿ\0ô®§Çp¥Æ­áøf]ÑI9GÆAhÁÀ‡Ášªë1.—©[-Ñ†6˜Í;y›Žî8#Ñ±œö®CÅ:7ö¡·ŸçïˆI»fÜd‘ŒdúWcáë8,<}©[Z\'—[\r«’qŸ,žO=I¬OŠ?òƒþ½Wÿ\0CzC<ÿ\0T ÚÉœŽJÉøàøNæÕq©‹±˜Ïü{ù»÷ïÿ\0iqžýk[U8µ“„W¤x»[ð´—g@¼û!¹+æþé$Ý·;~òœ}ãÓÖšcèGã]þ_ÞèßiûWÙv~ûËÙ»r+ýÜœcv:ö¬xÔÚ¾¯}¯êsêZ´Þ}ìÛ|É6*nÚ¡G\n\0èj­›Ô¥±ÖxÂÞ,Õ­íâK˜,$gI/…³IL¨[ð2xÈûÂ¾–ðU†‡¥X;F—MšòÎ8íï¤´TYÐÌ¡I!‰ÃsœûÔxaôO\n^éÞòt»Ù¤Y£y¤E| bwê‹ŽŸãY?<#­xjû_¼ñÕ•ÍÎ©$s¶,rÀÈXU@É~Þý(¸øÚqñ;Yÿ\0¶?ú\":Üýœ|m}ÿ\0`çÿ\0Ñ±Rü|ð¥õ¦¹wâi%¶6“Eq«7˜CŽFÜc÷g¿q\\ßÂOXø?Äw\Z†§Ì°ÉhÐ*Ûª³.ÜŽ0¦•ÂÇkñó^Õô¿ÙÃ¦ê—öpµ‚9ŽÞáãRÞdƒ8ð?*óQãù˜5ü\r—ÿ\0Š¯Kñ/~x–ú;ÍoAÖnn1¾vaA$,ÀucùÕ¿\rx{À~9Òµ¨ü1¢\\Ú_[C¶9/\'*Èêû6@+“‘ø\ZwÅo¯.oîd¹¾¹šæáñ¾Yœ»¶Iäð\0ªäóúV§Št;Ÿ\rk×ZMóÃ%Í¾ÝÍ‡r†$Ñ‡jÈ-Í+.óÇ=¨2Ùã¥EšMÔî+æ—Ï|õªÛ©Ù¢â±`\\·÷©Âé€ëœUMÜÐ[Š..‹ÆŒúÓÅùàçž (¸XÕ]E\0;d{Ô‰ª:ó½¿:Ç&“€iÜV:8u¹Ôü²œc‘ëVcñøûÀú®Oqõ4¡Îzž(’ø’BAe\rŽ•4~\"Áæ59® ;g©§	t4‚Çvºü%¾tÆx=*xu»VÎýùq^|&`y9úšp¸aš\ZAcÑV³~¬ÃÖ¤]BÕ‡úôü{Wœ­ÓÔÓ¾ÚÞ¦‹\nÇ¥,ð°š<~õ<X*º±>†¼ÕoØucÅJº“äsEƒSÑ†IÇSíIÎ:\Zà#ÕæR1+‚;æ¬.¹8$™XçûÆ‹\\5;bxãµ0µrkâŽì¬;f¦OÈ\nåc8çâ‹Ó¤-Í`/ˆ”õ‰1Þ¥\ZìÜ£Œú\Z5o4Ây¬¤Öm˜ççQœ{TËªÚó3zŒR³ëµuªçR·\'Ï=éé2Kþ­³ê=) Ú‚i	£Š6fƒIš3éL\0ÒRæu \0ÒA8 žx aõ¦ž”£ÞŠ0ÿ\0]4­=Ž(=(2£¿zi^jSM>Ô`^)À~”¸§t W¶‚¼{S»Q@í¤(\'­IÚ“€…£9^*39È«dãšiÓ¹OQIöe#‘VJÓ±Î(‰³L`¯­Bö\nÇž£ò­28¤Å“ýž\\úÒ}‡\rjíãŠB(ž|)ý©£ƒN&‚óKM\"€CZAéBõ ž•õ_Œnàø‰ðËX‹ÁÏý£#É*0aË¬‘»Þmè¼×Ê¸àWSà_øGX·¹‰î§°ä°[–Ž)Y®Häd|§$º(KáÇ„uË¯Ûy;¿±u(>ßûÔNÙyêß7Üo»žŸJô/Ú7ÄZUÎ‘ƒÖíZÖú9¦ƒËqµNs»Oß^‡½aÞ|dµû­•áhtËÍF\'Y/-®‚Iæ0lHJÆ0,Nsœçšò[ÛËBíî¯î\'º¹“å™Ë»``e\'€á@tÞ|ÿ\0’£¢Ûý%px¯a±ø·¡i÷QÜØxL¶¹;%†XÑ×#C‘Á#ñ \r_Ú‹§†¿íçÿ\0iW…ÇÒ½›VøÑ¦jÂ/íoY_yYòþÓp²ìÎ3Ñgòæ>)Õ-uzêþÃMƒL¶›fÛH1²< SŒ*ŽH\'§zÌÞŒü¿©ÏJùiE<{ÔÖ³ê\Z…½•šy—7,1¦@ÜÌpO’:Ô\"m4¶÷1Ío#Å<l$F*ÈÀäG ƒÞ€:/øÄ^±Ž÷[Ó¾Ím$‚>7ËHV\'¢ŸÊ¶>øº:/ý·ÿ\0ÑVÎ‘ñj(¼5g¤ø‹Ãéâ™Ì÷×BBìYˆ8tn@m¹ÏJ¹añkC°ºK›\0é–·)’Ã*#®F‡#‚GãC[öžÿ\0™kþÞö•xPâ¶üWâïê—w·/O,°[Í;J¶êí‹ž\0\0è8ª\ZUÌvZµÝÅ²]CÉ+Û¾6ÊªÀ”9`Ž‡¯J±é³gü7Þ¿Ù²èØ©?iOù¬ìþ–®i¿4}*v›Lð&Ÿg3)C%¼ÉÈ8%bd=¨Ô¾0hú­ÂÍªxO¼™T ’âd‘‚äœÑ2OôÅcÇGð8«Z½ÄWÚµíÝ½²ZÃ<Ï*[Ç±+1!\0àŽƒ¥UtÐÂÂT±u¨ªh±žÔ ;_…ztZ¿lì.ZE†TrLx0¥»‚:^ïã}B]G²ÓlÖ7‚kw·f”ÁUUA gö¯øg©cø¾ÎûÊó¼¨äÄ{¶ç*W®­{-ÏŽ­/‚½	ögo› }¹ëŒ§°ª9m+M»Õ\'h,aóeT.Wp^2r=E.§¦]éWô^T¬»ÀÜŒ‘ž	ô5ÔÚøÒÊÒC%§‡í r6–ÕI™	X^(Ö·5î|#dB=»÷gœçÖ‚N¯á¦¥i›iòK‹¹ggHöžFÁÎqá?•s~&Ñïâ×äó ÇÛ®¤û?Î¿>_Žü}á×k	¥·•e·’H¥^ŽŒU‡n¢»|kÙìÖïIK©í•BÍ, ¶àXeI‘š@tú,Éá¿Y¦´ßfefB1¿’ÌÃîçµy0éZ¾!Ö®5‹Ù%f–;v*VÜÊYP…Æ@àzöïY@sLbŠõÏùÿ\0îÿ\0´«€Ðµ«=:ÑáºÑíï]œ¸’M¹\0c•>Ÿ­nÿ\0Â{Ùüìtòvìòüá·n1ŒlÆ1ÚŽUÍ3M»Ôî\Z¼ÙUw‘¸.@îG¨­wY³Ôm+]\"ÞÉÖ@æHñ’0F8QëúVMµÍÅ¬…íf–#ihÜ©#Ó\"€%ÔôÛ­.u‚ú/*F]áwã$v\'Ð×eð·þböËÿ\0gª·^2³»=Öƒo3´4Ž¬@ôÉJcxÂ­.a°Ò\"³y§™H8 tÍ\0føïþF«ïøþ€µƒRO4·4³ÈòÈÝ]Ø±?‰¨èE\nQ@Eu¾ÿ\0‰<ŸÚºîl\'‰¡Ž_½¹÷02…»v®bÎT‚îdŒL‘º»FÝ’Ö·\"ñCR–Ytô’Á—Ø³ƒMÇÌÜg†ì>ñ ŸðžjóÂËþøoþ*·4Þj:n­q<Vêöù‘„R8cÏ?ìŠÃÿ\0„£Lÿ\0¡nËó_þ\"·t\rbÎïMÕ¥‡I··KxwÉ\Zc1ÁùG¡õë@_ðê™ÿ\0Qeÿ\0|7ÿ\0W5?kºdë\ríœr2ï‚ÜdŒðçÐÕCâ}3þ…»/ÍøŠM_Ä+¯BÖñhêo$RU>dŠÜ@ùsëùš\0æo\'k«¹®$\ngi/@IÏ9§º<r2H¥I¬0Aô\"“µ\0tz‡5A¦Þoôo29·ù‹÷2qœô«þ+ðî©¯Ý\\ÚÚù¾Í­æ ÎÁ9ê+L½Ôg»µ³Q»‰$t‰vÊØ@Höô«:åÆ§¥ê“Yÿ\0k^KåíùüÖ\\åAé“ë@–…¨Çà»û·ÅÔ³‡H÷¯#)ß8þNð¶q¦éºÊë›x&„e`Ä(¸Œg 5‹¬ÿ\0iØ¶ë=bòúÐ(/q±œm$1éß¸«Ú%åÒèzÇö½ÄÃÏ¶ÿ\0FûS‘æ|­›ºõ^ž¢€+‹ÿ\0ÐRóþù?ün‰_òƒ?óì¿úW*+«ø“ÿ\0!È?ëÙô&¢ÀrDdVïÇüU6_ð?ý«·¼ÿ\0#E—üÿ\0@j,2Ž±Üx’öWt²]º(Î2K+[[’;_\nYè÷n£o>ùaÆvƒ¼ŽG†z±,wvšŽ´WE¸¹yåsâ#˜Ž[§iõ Ž‚±\'Ó5{‰L“Ù_Ë#uw‰ØŸÄŠV@UÒodÓ5¯-Õ\ZXó€à‘È#±µÐ^ÿ\0¥_j7QÝÏûÙ’5;UÛ–ä<džæ±N©ãþA×¿÷á¿Âƒ£jô¼ÿ\0¿\rþX—ÄñYÅà}>=6WšÑn~Gq‚Ög°ïžÕÃ”çŠìõˆe·ø¦Å<o‹rw+©R9“±®@\n\\¡r”…\rOŠLbŽP¹Cš\n‘Ö§ïE¡r¶Òzõ†#\Zÿ\0õòßú\nW¡ÞÛé×o-ÕŒW¨ÈTG&0AÏ ú~µÒÛxÚHÊZèÑB„î+¡F}p—(îr>!ÿ\0ö§Ôÿ\0¥Kÿ\0¡š‡J¶[½NÎÚRÂ9¦HØ¯PÅtú‡‰l/-îWûÕ&™XyÙRÁˆ?6vg9æ¹Ë	þÉ¨[\\íßäÊ²mÎ3ƒœfŽP¹èúÝÃøCÃv©¦…”,ÞXûGÍÃncÓëÌl,çÔ.ÒÖÒ?2wÎÕÈÀ$òxè+¶ºñ¼qˆî´X§@w’PÀ\\¨müYao0–ßÃÖ±J½U‡âŽP¹Íj:=þ“å\rB\'ÍÎÏ[8Æzê*±­Ïëÿ\0ÛÆ×ýÈò7ËMÛ·cØzVTDÍ¿i0k\Z”¶÷O*\"Äd2È wÖ—ÅÚL\Z>¥½«ÊèÑ		‚rKÀzVMµÌö²µšX\\ŒÊ’=8¢ææ{©ÝM,Î7HåˆœÓ\rznƒa‰á¹õFwškE¸e‚¡‚\0`Œšó#]ŸV\r694Õ•#…amÓpà½ý(˜ÕoåÔïå¼Qe“\0ÿ\0J·áÝRÂÖK›«_.Ææóã\'€sÔŠ×ÿ\0„ŸLÇü‹v_šÿ\0ñšïŒ?µt©ìþÃåy»~;v0ÀôÚ=(#Â—Xkö·7oåÀ›÷6	ÆPÀç©®³ÇÖsê¶7–	æÛE“;ä.… ààô¼òºÄòéOÜOŠ¨±É)ÚŠ\0A ôö f·Ã}6ê+ÆÔ,ZK\"I¸rwŽ1œÿ\0	¬OêVš®¯Ö3y±,m+ƒ¹p=EZÕüZ÷:tvºm«ix0M·Žr0\0îs\\“t¤nªÑ_¥VøUà=/Æóë_Ú³ÞÃöCÏ³:®wïÎw)þèýjÆ¬OÙ\\m$“Šó¨µSH’ì­NöËÌoÞiÚ-øÎ3´Œã\'ó4ÐÒÐÒø… ÚøcÆzŽa$ò[[ù{fÎèÕŽH\0ucÚ°sKq{u¨]=ÍýÄ÷W2c|³È]Û$òx\0~ª?Z—¹]a^ãû1ÿ\0ÌÉÿ\0nßûV¼Gê¾ø·cáÍ.ÞÒÏÂvÉ2ÃSÜEp±µÃ\"ã{b>I9<“ÔÐ#žøáÿ\0%?Zÿ\0¶?ú\":æ¼5áíSÄ·Ïg¢Zý¦å#32yŠ˜@@\',@êÃó®£â7,|_f¢?[i÷þzË%êÈ¯,ŠªWa;#‘ßøEqº^¥}¦NÓé—·6s2”2[ÊÑ±\\ƒŒ‚8È{RkÄÞÔü5ž·kök—ˆL©æ+å	 ©#ªŸÊ½{öbéâOûvÿ\0Úµ›©ü_Ò5K…›Sð-…äÊ»—$Œ$àã$ñïP7ÅË}+Q´Ðü\'m£ÍyEö‹;…•Š¯òÆ2T±#ŸÊÿ\0Æÿ\0ù)ú×ý±ÿ\0Ñ×zñVo¯.u§¹¿¸šæåñ¾Y¤.í’y<\0*±¦€	¦Ž´ãÒš4\0¢”hàE™õ šCÍ/jaA4¹æš( “éHM!äŠFûÑq†y¤Ï‡­¥;ˆzµ)n*5ëJM O4¡ª\"y \ZƒHÝ)™â”ž8§pÚ“­5€ñEÀ~yâ“<Ó3Îhf§qE<HÝsPÉ¥Š.&8èi|öÇ9Ï^µhš×,“J.Nr}1U[“J½(¸£¸%¹\'>µÐèm½Éç§>õÊGŒóZ¶WMÄgŽ)±3±µGM•¥€9>¦®ŠB4†‚{Ð((ÍS:ûR“Ç„âÏZâ“ëKÛÚÐ0=i(=i	 Bö¦H>”½~¿J3Å°)sÇJC@ ŒÒ}AâŠNÜÑ°\n9¨\'4´\0\ZiéJh 6Ô‡§ïÖŒúÐ\0i\r)äR”\0†ÒšFëïÖ€<ó<ÒçhÚ‘Ô\ZCoÆqJÅÜ¬Oj\r:hY#¦y¦ì%h°Æ\Zx*9”e\ZÈ\\u¡¡\\žŠ€ÌGjE˜çõér°½ËTfaØqëM3¨õ¢Ìw\'íÅ)éQ	”ñšwšœPß Í*çùã´«SÐŠjýÞ)\\)ÅâÞƒÒ€HŸxçð§c­\"rzQqŽ>ô¼R‘É¥Š\n§#ŸZ\Z‘zPÆ€\ZxéH94­íJÄ/nJP>Zp1KÚÄ\"¤Œ|Ã<Ôxô©c3T„Î‡Â¼kOhÍwÑr+‚ð¶[Vÿ\0L‰®ò/jl–J)i/z@¨¢”\n6–ŽÔ¢€P9¢–˜\n;PŽ”R\nS@	J(¥4\0QE- %³0­Ü-tŒöáÔÈ«Õ—<øWOöïÿ\0Ð*÷þú?ür¹0)@¦Yößÿ\0Ð.óþú?ür­Ùëþ²‚ækÔŽåvJ:î#»ñÔô®#µ) °^øGþwŸ÷Ñÿ\0ã•=Ž³á‹¤¸µÓ¯#™3µ³œd`ð_Ð×:Ò‘@>%½Òï§I´Ëy¡‘ÙÞs!ûäF>cïéÖ±… PIoi‡aæ žeÍÌbkˆ“å8ÀêËëÐþ8w·sß]=ÍÓù“>76\0ÎØUzZ\0ét™4;‰ïdÐÖ\\\\[¯úÇl.<w)üC¡ürµ}JKù0Íö8-´l NÀ‘×€:“Ò³ûQHƒKÓ­u›¬ì\"òõXó$³JÄ#&HÀÁ<ò½‡CQx·UƒXÔ£¸¶I!\0rOb}kÒö ÖŸ‡/¢Óu›{¹ÕÚ8÷d ò¤wúÖuè¡»ñnª×s5µÓ$ØÆ­eW<Ç¥D<Y­ÏïþBOð¬3@¦çü%šßüþÿ\0ä$ÿ\0âhÿ\0„¯ZÏü~ÿ\0ä$ÿ\0âkŒf±âíO[ZÜ^ù%ó$ª…#æÆ1ìGjçH¥Š\0n3AsK@ hÅ)£½\0&)\r:ŒPhaJi(\0ƒKHE\0%é@¢€\nŠ\0)ZRx õ š¥}(´™¥4‡š\0iéQ9©Xb¢~”€ËÕ†md9ÇÆkË/ÏïŸ¸¯SÕÏú$„ušòÍC™œŽy§ˆmùéWîŽj¬¬Ç÷j^åôÔ\'ïTÃ…¨Þ¤HÇâ…¥n”‚˜Àõ u¢”RwäSOZu4õ bž¸¦÷§cŠC@£µ!¥CÒŠ>´\Z\0UéIÞ•zqH(´\Z^ôFà0õ£¾)O ¤§¨€u§”Þôï¥ \ZG4g¥\rA¡\0v ô>Ô””\\Ï”»ô¢Æ\'jF¥=hnØ¥q\roéGj\r©ÜÍ(¤´ÍBš­ ¡*\Zµn~j¦§š³mŸ3¿_Î©ëôsþˆ1ëZ#šÍÒ8¶é×­iE&H½©);Ržiˆ	â“>€ÒÒcž{S\ZLb”ûR\n@i;P\Z)ˆ\r\'~æŽ¦Š\0J(ã‡¥\0ô Phô ¢ŠJ\0)½éAïEjOj_zOÆ€¢ÉâƒÖ€`f“€)HæúP}h£½&s@¼jþhéVL ö«.Š¤1Çz|czäP6fÏlHÅe„Ù&Ö®™£ÏjÏ¹±ó\'ÈùAëAQ}›å• í<Š¦éåÉƒÇøV³ÂcÊž«ÓéP^E¾=ã¨•D³6T¸ÎN*&SœU¼oR=9¨™rjvÈTdSYp1R/¬(°î@FM&1œqR°æšÃš@Ig!ØTö>µm9ZÍ‰¼¹¹þ*Ò_»šÎJÅ§t/Eç­§‘J}Å \Z:\ZDëKÛ=©\0ù©XcÁàãš\\SGzxäSØ\nFäÒŒÐG4\0Æ¥^\r\rÍ­11ç¥\'ðÒ·šEåi\0f¦¨¨±SEÁëŠ`t^ÀÕÏýr5ÝÇÓ·á\\/„É\Z³tÏ•é]ÚqÒ˜‰-ŠdŠ)( R\0ëJ(b€—µ\'jQLih\"Š\0^ÜQŠ)i\0ÚQGz\\P\0)h¢˜	@¢@J:ó@ëF)\0QJzqIÞ€\n4á@	Ò–Š;Ó\0íIKKH ÑKLÅ´PÚ’—Ðh\04ƒ¥(¢€AKH(¤\0zÒw¥S)hÅ€;ÒRš(¦ŒqKŠ;PÊõ§v¤4\0™¢ŠZ\0(ihïL¤¥>ß•Å ƒ@ëAë@	HiM%\04ÔMÞ¥5Ò`ejÄi=ÇjòËõýóWªjÃýýÆ3^Y~?|ùþñ§ˆâ-OÝ¨cè*Tâ§©}	\"¢=jRx8¨Iæé¢”œÑLB7ZZŽ´´†)èi;Ó¦·Z\03šCÖ—½!ë@¤¥\"ŽüÐ\Z;Px\'PGZ\'ó C³Mn´½\r! cOZLÒšCLBŽ)E 4´€C×éEŠ=&9 ô ñAé@X¥.)§JQÅ\0\'zC×Ú—½=hI4SE)¦šQ@€Žh šJ\0zÕ«½íUTÕ«¼:žÕH»G?è£=sšÑ\rfé[9­hõ-ñÅ(b¨â@ P+¤=)M%\0gŠCÖƒÇµ\0&yïA£¿z(;Pii§ò¦ž”Ÿ­)¦š@Ž¢Ž‡Š\0 “ýzNhÏ\0gšJ\\Ò}h\0£µé(\0ÏjJ\r\'µ\0õ Ò\Z\0§\"nCÆN*½³4Ž€Ž•y\0ª·1ìbç¦{v k±1¨fN21Ú¬Dw çšzƒ­2Y›ue(éÖ©•\0=\rj0ÚYO9íYrîIŠžqÐûP†fÌ¦Žxô¨¥L}y£y™åäŽ~•Q@’2;Ž•k¸ŠN´«Ò¥eïÞ˜4ZÀˆÝi¤Täu¨\\`Ò‹ÇjÝ¼¢H€þ1ÁéM†x\"“W\Zv4)NsUà‡>µf)UÊžGQY´Zc±Å\"œ0¥4Šip§\nhéNŠ\0QŠCJ:Š(ÔÒ/,)xÏZ­4!æÓëKŠLq@\n:Ô±ŽzTB§C“ïé@ŽÂ+ÿ\0W$ÿ\0Ë.=«ºŒrsÔv®\'Áã:Œ¾¢,WoSßÞ˜™%QŠ;SRÒ\nQ@(¢@\n{cñ¢ŠQÒ\0¢Š(\0ŠQE)ëLïE”uæ€Râ{Ó…\0QKŠ1HŠ:RÐ\n\\QŠZ\0AKE˜Rý(4€\r ¥¢˜((¥ 4w¥4†j(¤PQJh¦RÑÔQ@	F(¥¤QEÀ;Ò\ZZ\r ŠZJ\0iRÑÚ€\ZzÑKŠ(éEæ€ŠJu%\0%\'zZ\r\04Ò\Zu%\01ºTmR°¨ÜR°š®Ñlû›nA¯+Ô†\'qÏ_Î½GYµpz^_¨Œ\\0ü)Ähz\nzÓGAŒæ¥QÇ5/rÃ;©äñLã<R5 ¥ozC@„j^h4¦€4ÎüÓû{ÓE	ˆP)§¯ñLn´†‚ŒÐ)€w t¤4½¨GR“Å\'S@\nG4Ò9§\niëH4ÓA<ÑÚ¨y4áH84¦¤=h õ£µ\0! óIKÚ˜\n8‚—µ% ô†ƒÉ õ¦[€h7=JJ”ñA£¨ ©­ã\0å«Vß}{UdéV­þøéL³F\'ì¤g Ê´‡lVvßè c¿SÖ´GZ}Hbö£¿µ-!äSwæü¨ÏÍ=Æ!éžÔ”´´\0”‡Ö—üâ“·4^´†Œw©é@ <Ru¥¤¦ßš(&Ò\0ÏjCôâŽôP\0zqAéFGzC@€óGz;RiŒ>´Gj;õÅ ÜÒœÑŸZ\r\0!ëHiOJCÍ\0W²9§È»ðÅQ°—Ì€nê:ÕøùâµfAÃmn‡ ©ÈùEA:lpÞùe~eÔP&Š·À`ES»‹8u\\ã­jºR0j–Ü)‡JhFfß˜©•žËäO·±ägÒµæM§·òªw‘†‹pê9ª‹R™Fr>ëUg]¿…\\|%OnEV‘X¨lŽôª¶‚#ÍFâšÇŸÔTŒ®çÒdæŸ\"õ¨Í-¯úãŽÂ˜iöÃ3{b¥ì4hVœ½i™âœœô™ ¨8çÖŸÚš¼Švi\0ƒ­y¤?xb†ëL°ãŠ·jSÒ‘OÍLLŸJ_áõ¦ž‚Õ9¤\0I*1ÍKËz¤YáÍì¶¥v‘ôÆø<bò^î“]š\n	c»RâŠ\\ÐZ)hÄ´bÒ€E-­\0@¥Å\0¥úÐ(ïI€„RÑÎh¦\0--\0P(Š1@.=h=(ëH¤£¢˜-  PŠ(¢€KIJ)AJh SQKIHƒFii€”´Q@	AéJ(&€¥´R\r-´ÀJ)h¤PiM%\0&){RRÐM¥ïI@óE-\0‡ò¢—½!ë@	ŠCN¤ öâ’œzÒ”\0ÃQ½Jj\'€ÌÕ¿ãÖNÿ\0-yn¢1;œf½OTæÞN:\nòíKþ>ž™Å42ºäŽµ2gÔ a~µ/VimjhëNn”ÑÖ…jni_ŠNô\0\Z Žhï@M4¢ŠZ\0M=iÇ¥4õ 4ŸJS×™¢à­(éHE€ŽiséJ:QÞÀZiâ–ŸJ@FG¯Z\\ÒÓMP‡´\ZU¢Ä¢‚h4\0†“¦ƒïH†”ž8¤\'\0Ó×¾¸¥Å\r×Þ˜4£¥#RŠ\0Z\0 Rš#Rv§56’½*Ý¶7fª¯½Z·ûÃÔsV&ušAÿ\0G8#…i\nÌÒãß<u­!A‡4R”´Ä­(¤è9£µ†š)Â’oz;RKLÆsIKÚ“ ùSiÇ§<R´\0IŽi{u¤ íGSíFhí@}ÿ\0\n#Þ”šJ\0O¥óGZ;Ó(ÍèçéH“©¥ïAäP!\r4ŸÂ”Ò1 g?g\'—8ù[­lÆÝ1Xr©F#‘ŠÓ³“ÌˆrGZf³]Kwh¾^}2ÖC’õíS&qU%·rOZ63]‹Ç±U;À–Aô>õmäÖ£™!RÅ2Lë9aœåTÆ2ËÔÅhÀ¡‹BÃæéÏ¥QnÊÃz}*­`ÜÌuògÏjáX€xqS]Æ$‹ròG5Z&Ý‚:\Z§Ü’…Ì%Ä8ëW®\0uSÜUFL\ZC[ˆÃ\"«0Áæ­ã\"¡•}¨YŽ*[!™ŸJ‰…If?zßJ™lTw/‘Å:T0ÅÖ“­*w¬‘c€â—·©Ã¥©¢—ø½©´\0Ó×ŠïRçšZb°â)ã•â™ŸZ}ÚCT‘çx¨úO™ryªB;.g—\'hÇ>õØ§Jãü¿¾œó ÕØÆ8¦K:QKŠ;Ð úÑÓ¥§­\0 ¥RŠ\01F(=ih:RÒ\0¥¤¤S\0\"t¥í@÷¤ôÅèïE\0-Š0\nZ;QÚ€\n´\0‚–RŠ\0)E%-\0bŽÔRh¤¥ïLƒE€Å\Z;P íE\nbŠ(\0\"ŠZJ\0( Žh ïKIKH Ž´\Z)€”bŠ)\0†Š;Ñ@Ú’–L Òö¤¤Pii\r\04Ò\Zy¦š\0oj‰êSÒ£zÚ˜Å³ûŒW–êC/ØgêzÍ¼„våÚ—7.9á¨‰H®F1NíMnÔáÒ¥îZØCMiÇõÑœÒ5\'zst¤Cí@ëA Ð0èi;ÒÒ´€ZkSâ˜y4\0ØühÅ¨\0RÍšÄ´À~x T^jãŠQ*ÿ\0zŠn)¯÷…(`{ŠC\ZÝi(È-Ö—¥;ƒQZAÒ–€ÖA£4ˆzÑAâŠ\00{t£µ/þtv ÿ\0ZZR9¤Ç4\0ÆæÈæ•½©@àãµ;€RšAÔ{Ó¨Ö¦Š{gÓ„‰ùÕ«\\—éU­Zýê¤&uš>~Î}3Ôö­!Ò³tõ$ã#5¤¢‚E£¥Šba¥%.zÑÚš1@¤¥4\0†Š¥€Žh9)O” sG¯v S\rx óšCÅ ´†”Òv¦zÑA¤)\0\ZCÖ”õ u¦QÒŠJ\0Z?¥“ÞŽ´˜ƒ½4ÒÓ[¯­2/¢ÚF çŽQPØLb à59Û y§qíT¤;\'Þ¼çÎ”®¬Î–†©ä‹XVm­Àx•³ÏJ¾÷U\rÐqAÌôcŽÔ2¾±â—v@\rQ°á£Áã‘B%”®Ç>þý*„÷%åùÇµj\\DZ&ÏP1XÓ©Ç9ÈàÖ°Iî-Q*JžCtªS)‚SŒõâ§FÊƒÔ¯JuÚo‹pëÖ–Ú)ÉŒðx<ý*»Žµ2ä¦Px¨J[I’N”æñL=)«*àÑbs+z\Z|£ÿ\0¯Ib?zÝÿ\0¥)lTKê8ãŠrœ\Znp(^sY<t§ö¦\'½<ôÍ”!äÒÎ})‹ð¥Å!µ*ši§ÇùÓ\0ïOíLÖßÖl¥ƒï©Ç4Ê’ûÁT€ìüŸ2àŽN8Ï§zëb¹/Žn8‘]rt£q1Ý¨¥¢™7—4ù¢€Ò”*­\0\0qJ(4\n\0)EéhJZ( ÒÒ´¢€KŠ( –’@\n(ïEèh¢”PQKI@ÚŒPzÑ@´”\0RÐh \0ÑE\0Rž””v Š)h\0¢@ë@	E)¤¤\0zPh Ó\0P(¤v£µ)éHy¦\Z)I¢•€JO¥-\0h¢@¤ïKIÞ€ô™´†€ƒA¤=h§¥Fõ)¨ž€3õ<}•ýpkËµ?øùPy¯QÕãÕý1^]ªÇÄ‡œæ„4WÏLS×¥0Œ\0iËÒ¥îh¶©9é óH@Ôƒ¯§¥ æ Ðx Ó°	A¸¤<Pc\'ŠBy§cšCí@\r=y¥Žôt¤\Z«\\>Þ§ã=ª”Í–ã‘T„Æ3\ZMÜSM!<ÕÚÄÜ~óŠ]þ¦¢íFh°y˜è}éÂVõ¨3Í¢ÁrÂÌÃ’ißij«š	æ•\\¸.Nx¥ûOµRÏ óE‚æ’HqNj¥£\rØçš¹Pô)\nzqFx (¤1;Ò\ZZ^”Ä5ºQÀ¡Žh¤1GJ):RŽžô\0\ZoJ{t¦SB$^•jÛï\n¨½*Ý¯ßÄuZGúƒïZKÒ³´¯øö<ZÑÅ2E=éx¤íE1Ž)( SJ>´\ZCÀ “4½¨í@	žhÍ­%\0õ t¥\"š8 \"›JhÅ¤ô´P)\r­¥\0 à{QßŠ=h=x \0Ð:Ò}hïïB\0\'¿”¤ò)Z\0æô£½&x lñøÓfá3MùˆàÔ£˜öž}éˆ“N1±ê+V¹6žÇÖYÁµ¯ØUuå{Ó¹hërú€QA9+I3uäƒŒSY„s.z8§*…wS÷HãŠg>Äpù*ß¥eÝÇ¶Lö<V±ä*ÄqÈª—h$ˆ:qô¦˜™ŽG<þ:œ=y¦8È<sÒ’3ò`‚x«–º‚}\n³¯—!ÆpiŒ2Ù8æ­Î»Ð•úÕEÁ?…Nã#eíøÔ-‘Vœ¹EW’\\¯\'\"‹!‡qÀ¡†h²ÿ\0Xãß­L¶.%Î´äSHzR¯JÈÐzŽ9§ (§Å&éAýiE#uö4{Ó“¥#)S¥0síN dsMŠQG XpëSC÷ÇÖ¡jÄë;ëT…¹Úø,b+¬p7ø×R½+–ðh.sÇÌ1é]RÓ%ŽRâŠ ¥¤¥4\0QÚŠQ@@£Ç4\0¸ãšJ1@é@/zLñKÖ€\n%\0îÔP)h)M!ëš3@Ú@äsK@-%-\0w¢Å \nZNô´À(¢Žô\0Ph¥ï@)MŽ´\0\n(¦	F)M%0\n)}i(\0¤¥¢	KE\0˜ ô¥¢˜„¢ƒGjCÒ\ZSÒƒÖš(ïJzQH”QLµ%-% \nCJh¦\ZCKHi\0ÃQ½JEDüÐ~¦qk ìG5åÚ§ü|¿Ö½GTÿ\0vú\ZòýK&å©Åh¬zS“‘HüŠrt©{—ÐFÆ8¤Óˆü©£­HSZyæŠc\ZzÒžzR\ZR})#rii\r\0 ¤>ô´†˜\r=i\"ŽüŠW8Uc¸Ð•ÄØù¥ÝÀüj³)Ç“M5¢D¶4ŠCNëïI@†ýi)Æ’€’ŠJ`/z\r%! ‘NÎ†–†Ñ¶\r_Ã(Á¬ÅàÔÑJPñÓ¸¨jå&i”\Z†9ÔðO509¨(CHi~´Ö€\ZzÐzÐh4À)Â›Ú”P!^š:sNz`ç­ $jØå…USVm›÷‚©Öi\'ýp0y´W¥féGý¿´â‚÷£·J@hïTÑœRzÐ=h\0<PiZCšbµé(>ô))IæšhØAùÑš	¤ÆM0Z…Š3Š;RZ(¤4ÀSICqÖŒóÍ+€”zÐh =8 t õ¤Ç\0QÞ“½Þ€IŠSíMÍ\0r6WéVPíéTal7Z½js*ñVÎ¨»«¸NAÅOe\'T=*Æ£mµw\0@x¬øÎÇRCkš67a@æÇ­M#‡Ì^ªpEW´|ìô=M[Q²B1ÃzÓ8Ú±§„›/CPLe#¢¿#Ú¬*ýøˆëÈÍBêZ9Ü§­FEÊùrsÐÕrv¶:ÑºŒK	`2Ý«3p#æ#ƒõ­ªÄì9ºU7[õÆjÂ6W\0ô¦Ì¥— t©µŠ#Û^eÚz~5a1ûŽÔÇ“Þ“ÐE\'Àÿ\0ëSlùwö4³qšeùß4žÅÄ¾~í8dŽ)½E9x¬M¯ÝëJx‚‘¸¥kŒQA u¡½¨†•yÎ;SAÉ4ôã4ÀjŒ*@8æ˜8àx¢Â:Õ‹~\\f«õ«6ßxT§ƒ2!¸=Œ€~•Õ/Jæ<1k1Q’d<ûbº„éL‘Ôèw AŠZ)h\0–E€´€ÑK@\0¥¤¥ µ¢”Š\0AGAF){P\0(ïA¥í@	Š\\qE€µQ@…”\n(Ç4RŠJ)ëEP0w¥4ƒ­\0-Š8ô£µ\0RÑ@	Ú—”´\0†”QEëE(£½µ´¹ ƒÖƒÒƒÖ£µ/jCÒ‰Š\r-\0ÑAéJh ’–Š,HiE% ÓiØ¤4Nô\ZZCÉ bu¤¥Å!éC§¥FÝ*Fu¤ÀÎÔ¿ãÚN¹#W—j™ûKg\rz~¯ÿ\0²uW—j<ÊÄõÍR\Z!=Hœ¯ëQžƒÓ“¥f÷4[\nÝ)˜ãéRÅ4u¤!¤4óL=i€†œ~õ\'zSH=i¥)¤<\n!‡§¾žô7µ1ÉŒ\Z£\'Þ5~Z¡\'.iÄL½!§\ZJ²Fž””úh BzCÅ:Ð1´ÓÒži´m!§‘IŠ`&(¥#4h\0§Í6—4€‘O5zÔå9æ³Ôò*ý¯ÜéS\"‘cÒ´´µ™C\rŒóAéLµ(\ZU<Ð>sINje\0ÉMnÛ\\UlœÔˆH#\'š²N³Kž%ƒ8ŠÐY£#;×ó®29ˆéÿ\0ê©–áëõ÷§bYØ¬¨H\0Î—xìÀý+l?‹š•od¡¢Àudã®G¦i:zúW,—Òc†?‰©SS˜[?ZvÒîÆsIº¹äÕdÎKdúÔ««¸Á*28é@ÍÌûÐMb®®{ 5 Õ”˜@bG^ý(ÏÖbjqîSÓP·\'–lj@hgŠN§Š¨·°‘ÔïµDNŠk°Ë&Š€N˜ûãó§«ä€æ‡÷ Ó7ÐŠ3úS<ÓsŠB}é3@<õ£¿>”Âh€zgó¢›šLÐ¨¤Ï4“@!ëô¥&šM\0q©×ŠÕ±PYNy÷¬Å5rÌã#8ÍhÕÍ)Ë[C hŽT—‘\\ÝÊl‘‡`p+zÑƒA‚ßAY:‚bcÜTÜ]>`\0^r9ü+eÉ0†ôæ¹¸¤òäWCg\'™¯ª9ëFÎè3l‘õsI\"ää÷ëN|¹py¬R9$P`fJžT…{Ed]§—9àíjè.0¯\"²u÷FxéT·±•÷pã=}ê`#ÍW“æZ|G)ÔäUIu1¾Gö4¼=êIä9ç½GÃ/¸©c*](}*\r?’ÄƒÖ®È¹Œçª¥»Ô=‹ŽåÀiàpiƒŠxíYHšý}©ý©ŽOÅZ1BŽiM\07\nSÀ£4ÄOÇËŠŒT€ñ@~sVm¾øªëÖ¬[g~Fi gwàÐ¦ÅÙIÏšr+¤QÅs^	Sý!Ïüµ&ºd÷ª%‹F9¥P!){ÐJP(´1ŒzÑKÚ’€\n^Ô\n(-¦€E.(\0½h¤isš\0(£ÒãŠ\01KÞƒE)i?Z^Ô\0”´P\n^ÔQ@­PŠ½(¢Š1@8£µ¢‰E–	E­-Ž”´h\0ÅQ@ƒ½!ëKÚŠ\0J\rPv¢”ÒP\ZZu4õ¤0è(v¥í@„íIÚ—½¥’–Š\0i£´ó@\rj‰úT¦¢z@dklE¤„nÆ9¯1¾½8ëÓµá›7ÇqŽ½ëÌ/²$n¼~´ÐÑ<\n‘IÛŽõè1RGÖ¥îh¶¶;R(æœzR\nBæ›É4ãIÞ	ÞŠZ;ÐÞ’”Ž}é¬(ZCíNÅ!â€\"“§5AÏÌEhI÷jƒ˜ÕD–ˆÉâÒµ&jÉðqGzJ(\Z1NASGb8ïI²”[+‘ÇÖ›¶¶VÍväŽ´æÓ‡–ƒéSÎ‘~É˜¸ -l®ž¬§å¦¶œsÏ^hçDºma@íJÀc¥ZžFù	#Þ¡)‘Tõ%Å­Ê­L5aÖ¡aÍ2D^µ¡kþ¯ëYã­_´Ç—S-Š‰du¤\'šQ×ñ¡¹&³(n9 ÑE6>´«×µ\'AÅ*Ð\0ýi¤qNn´†)ÀÒPzÕ\0àqO\rÍB4¤ûÕ\"Y6þ8¥ßPn¥ÏÄM¾€üÔ \Zc,4yžõïZ7P\"Ç˜}{Òù¤Š­º—u\0XóO©Í(œúñU‹Qº€-	ˆç·µ;ÏéÏoÊ©†Í.î(êÜ7sÇJp»|ýãùÕÜÑ¿Þ€4ÖõÀûäS×R—?x‘éY[¿JP+\\Ú]Rm¸Ü1éO\Z´€‡ë>\rù \Z:«p2®qN]UIå¥sÁøë@“&€±Ó\rN3€AÏ­Hº„$rOå\\¶óÇµ8ÌÝª[¸˜ãx§‹ˆñ÷×Þ¹?4ñžÔ¾y=s@a‘qËÏ½.áØƒÅrŸj`8$S–í×øçJÀ#RÆûHïíMÏcM\rï[fÕ¤¬NÑÎGj–îàp;Õ]uŽíw‚F1[2ìÝ\"·8b¢ÇJ•ÌT/…­£2	.qïY“IµŠ§cùÑm!ŠpÄ“ž(	®dt“E‡Ï4Öär\rKó#ÏQÚ”ªªö¤r=4*:+>î<qÖµ%p:µBë;sNý„s—ì‚>Süê»Í_¼MÀýj¡äV‹PTDì­JGE5ÇË“Ÿj@V˜mÞ«Y`)÷<Õ‰ŽQ‡ëPÙ©ØN;ÔObâXíR¨ã5æ¥wšÀÔ{u×ÀïO<Tr“½sé@\n¼~4¤sJƒ4Œ?Z\0oQŠ\0ã41Nåâ˜˜Î¦¤ÛÅ3·  b“ŠµnáU×­Y¶8aŠ¤&w>âÂ\\“Ÿ0âºTät®sÁà}ûŸ4þUÒ/Jd1OOZ)qH:ÐGzZ:S)E\0RŽ´„¤zRF)hP:ÑÚ”t È¥\"ŠZDXî>Ôdæ‚>cšî*o©CÔÒÓRLBŠQIJ)€Q@¥ µ(¤íÍ( ½\'zSÒŒPE¨ï@z:R÷ t @:Q@¥ ƒE†%( ÑÚ˜IÞŠ\r\0( QÞ‡zJ\rhP(¥úÐ\ZNô¦’€GJ(ÅÑKŽhï@	õ¤4½èúÐ!(ïKÚŽüÐ1\r%8ÒR””´P1¦‘¸¥úÒ´\0ÖéQ¿\"¥=*\'ëíHfF´¥­ŸhËb¼ÇQ¼lúò+ÓµÍÿ\0e}‡þæ:Í#Þš\ZØ®;\n•j%÷©”b¡î_AqÅ&)O\"“©âÜi´æ˜æ€½+u£½ùR>”†šku£`õ¤=)E(ËT©úÕù¿g¹Ë\Z¨’Æ\Zm)âÕ’4u4P=è)J¹m÷ª¬c‘š»n9¨“6¯{Ðž•n|)Ï5´N#\rÛÒ®£½:W$Ûèm}Ú £\n5Jdlœô5¡¸ž£ˆÄ| lÔ©;êgÌ`Ý®©•«}\nIVL€kª›ÐŠ…w\'<ŠŒÓØç5÷­Œ@Uûa„ÍgjÐ´æ1Š™l8–JZU¤jÌ¡½¨4§ÞŠ`œ´¨P\0ÔÃOsÍ0u C…1ºÓ³HzÓ´è\'šLÕ¢GA4ÜÐOÀp4gšm fŒúSIÅäP!Ùõ¥&™ß4f€Mâ˜M †âÔÌÐ\r\0?4n¦gÒ’€$ÎhÒ˜\r&i&êT`ñFh@Ô¹¨³Kžhû¸¥ÝQf€Ô€“4¨óÅ¦™ 6\rF\rÅ\0jÉnÈ§Çi$¬ª„zæ­qÒ¬ZådsZ¢YisÅ.Aù…i\"ÈˆK¡ÝÞ§ÞÀŽ3žµ:Íò•Æ3×#4ÚÔkCáO™Óó¦‚3Ö´õ;6lŒ7ViãµC6Ut7t¹7@ œš³rYWŒœ\ZçVEÂœzT‚êR:þTŒ^®æ«.q¸Õ+’\0Àü*±¸‘‡Þ>ÞÕ9n¤Ñ`#—š [ç#±«R cßéQ5°ÆsÇz¤&D¼7¯ïÐÔ†ž½ª)AP3M±t*\\ü ã½GaòÅÇ4·_qñE‡úZÎ{\Z@œõ©GÝ*\"\rJ£å«BCÖ¡˜dŠ—½5‡Íšt­Ö…dt¡¨§¦)qòæŒfü4ÀbŽ)ËéH:Óº­\0*ðjÅ¨;½jºõ&¬ÚŒóMï| ?â\\{bFãÑ/Jç¼!ÎžÜ9\'¥tKÒ™,p¤þ”½hÊ˜‚Š8Å Rö£\0QKE\nQÒŠ1@\\CJh)M\0Eü\\Ò¸âŽiÍÒ¥nP\'Jp‰N¦„cŠZ0KŠJQ@‚ŒRö¤=hP:Òö P!.9 Ð8;ÑŠR(Nô´(¥íE\n( ÐF(íA aEŠ©MÍRÑE\0%qAéEƒKŽhÅ\0%Ž”\n\0)\r-Z&8¢”Q@i1Ji‚’”PhÓÖŽiÇ“MÇ4\0†¢qR‘Q½\0eêª\ZÕÆ:Žy¯-Ô”,¯Ž@5êÚ‘ÿ\0Fqê1^Y«\r·ØÐ†ŠKÐTÉÐÔ+Ö¦N•2Ü¾ƒ­!ëJzRT€‡­ õ¥=))êP:Òw§¼)\0‡­0õ©¨ñÍ R´á×šCÖ‘MÒ³¤<œUù¹éÒ³¤áTHÜÓO‡¯½b:RŠh§\nL¤IÞ­Lnò¬øúÕëqƒš‰#h\ZÌ¾RíŸ½O‰ÁS‘Ta9ÛúÕ¡µZÅAu-¶‰qÆi\"ŠlJŽî@yŒiûlÌ¯rŽ¨Ãi\0+Æm^’Ñž+Vã5¥5m=ˆæ£j{Ôg­lb*u­o¹YÃƒZ6¿êÅDŠE…ëCrÔ´+;•a\r!¥¢˜j-\r\01úÒ”æÒ\Z	ý)Šu5©ÜDt\ZCÞóV‰cãšNô€ñFiŠÃ»ÑÞšxúRP³E4š c³Fi ÐO4\0î¦Ò›ŸZ3@‡gŠLóIšN?\n; £4ÜÐ\rŸZ:Sh\0ê)3IØÐ³@ëéMÍ/z)<qÖŒÓh\0.zRæ›A qHM 4¦€:_5=êÍœñ,¡˜¹¬¿SMšÕhC:ØïmYˆVù~•2Ü[2¸,3Ž+VÁ>ž•\"¹ÎGÚ©²yM›É76‚ tÍR8Áæ©—$rI¦³qP÷+bæ\0¥$cëT|Ò;Ñæ·­\0^¤Ç5If`=M8\\>IàP’Ÿ&*¹ºnãš\rÎz\0}©;(ÅT¸jS?û?ýj¯<»…1.Oî_=…-†\0c§4—C÷OJ[!^1Ú¦{Éö©Ý\0zÔDæ§QÀ¬¶4©¿ÅøSý© fCÍ-€Uû¼R?LS±Å1ø \Zs@¥aÅ¥9—*)‰ZwJE¥#š\0>µnÐ­UZµjZ¤á%Æ›Ï÷²=ë¡^œÖ…\Zbç¦ãÓ½o/Jh—¸½¸ ih B¼ÑKGj`§¥ ¥€;ñKÚŠ;P\0)M ¥¢ÂHx¢òp(u¤ Ž½è<\Zg!ºÖ}FNœ-<sMN”îµ¢ØAF)h1KŠAJxÅ\0¥ŠZ\0J)h bRÑJzP!(¥¤ bÐh¥í@	KE		@¥ õ ¢–Š\0Q@&)qGJ\0(¢ƒÖ€ƒKA ¤=)M1ÏS@¨ÁÀâ”TÜ	ÍâœzS¸”QL\0ÓM8Ðigj\r/z(†›N\"Š\0iäToR\ZcPv£“nã®A5åš¸ÌÇ~+Ôõ>-ä~RMyf«þ½½3‘M\rßµXN@½jen9¨{—ÐR8þtÞÚ›RzJVæ˜zÐŽ´áÁæš8\"ÔàPÆT}êNÔÎ¦\0¤4¤óIÚ€!—îóY²š´åéô¬ÉOÎ~µq&DdsIKGz²@S‡Z\0âœ­&R%ˆ|Â¯@>lvíT¢ëW­ÆXƒ½g#h›!1Ç ^8É4Õ@ `çŠr±_ºO<T)\ZÚâ(çŠq’@4ô°ÇzdªG<ú\ZÒR2QW3¯Û\nGjÅòkfýÃšÆuæˆŠ¦ÅfÔdsS2ÔdV†µ¥mŸ,VršÑ¶Š‰lR\'^´½é¥b ¡(=hô¢€µŒqGJ@4õ¦žE)ëM¦Šktæ—4M©¦ÖÕ¢X¨Í)¤¦\0}¨£´€m)xÅ%\0! žii\r0\nJ;ÑŠ\0J( æ€×Š\rŠ\0(P\0¨ Ð~´\0RÓzÒ¯^h\0 qKÍ\0P–—m(¤iqJi{P#Xð\r06­=úT9æ·D2@ôðx¨…=~ï4Xw\Z—4ÑNŠAq^i¬x¥a‚qM4\0­{¥74åt<Ó„Px4ã÷½i¤ÔÅã4ŽÔ†šO1nÛ·§Ùsn¾•ø>K`T–<[(ÅDö.$ÿ\0N*cü ÔD`Š”rWµdh=°AÇáL\0“šqëG­ \nkzO)Žy ‘Ò¤ÏÉŠŒõ§0ÀôÁ€ŠV(Šsÿ\0UC@ÃU»QŽ•TzÕÈÎzMh xLcIŒ™&·—¥aøT¥CŒò+uzU÷QF(#š¢KLŠ)h¤Š( u¦\n^´´b„¡ºRÐzP$óAÒŽ´§­fPõû´¤Ð½)kD ¥RŠ\'~)i\r/z%/j1F(QE-–A ŒQJ(”´Q@´\Z\01IJ( \0ûQE­\0P(>Ô\0\ZJZC@ŠN´´\Z\0LQKHzP\ZŽJyéQJi1ˆ4¯ÂñQ«sSc\"¦Ãev\'·Z–$àÓYpiÑõ¡0¥4‚–¨BRRš\0%éhïLž´„S% j7éÇ5)æ¢z,v©Å´‡8â¼·Vÿ\0\\ÿ\0ïW©ê‡²qWJò½T~õý=èCEœÔéP/$U…è*^æGÓÖœzSOZ‘i¤sO<\Zi4\0ƒ­;Ò_Ò•¾õÔÁÖÚÉ¤!¤dæšiýM5¹éL¦èk2_¼sZst¬ÇûÆª$²3Å/j\r ëVHð:âœ¢t§I”‰c\"®Ûpj”}jì-j–mkDûTñC•ÜXÜUxøQŽ¿J±À;ªÐ¶ÚZÝ°ð>”ù÷Ì¬FÜã â¢×pÚ)„¶9â‰\' £©Ÿu’„6z`dÖS(í[k•?JÄŽE\\H©±\0*ëR¹Ï¡¨[­Y€½WísåóT_¶ÿ\0WÍLŠDëA4¢ƒÅfPÚ(ïJiƒIKAã­\0ÃÉ¦ž´ãH:Ð´\0¤=)Üb‘©ˆˆhÅH‹“Å;eZ%c4cŠŸe&Ï¥\"ÇéIŠ—f(+íLH¤©¶ÓJó@‘A&ÚB)ÒâžE&ÓšbbŸ³š\nÐ \n“m&å@Æb”/ê3@\rÛF9§w¤1@ã¥ŒÐ\0M&h&Š\0ZJ3E\0ÐG4\ZZ\0×u;3Ú¢*jã ÆMBWšØ‚%^)à|¢žëOÚ6Ð208¤$ã­K¶Ži!gšI·š_,\n\0‡·4å9T¡ÐË€x\0žâ€  œŸz@¦¦Û…Æi¥zÐ1©<ÒP¹¤`Aâ˜A&ŸAßmXûÒYÜ&=8¦ß)ò*K3þŽ t²žÆ&ïR¯µëS–Õ‘b·Þãƒë@ÎãéŠEëKœ“ë@\n§ŠcÓÐ`qøÓXSØ æžÜŠEÎiÍ×Š.\nR=)9Ïêqƒœãµ\\ƒîp3ÅU_j·pqÔUè¾ñ\'¶ÇB3ŒVÒñXÞÿ\0,Ôd\nÙÉ{ŽÍhSQE(¤\nZ˜\0ëKÚ€(;ÒŠ(€J\r/jCÒ€#ÇÍJzÐ:Òžµ)ÔŠ)Â­l@¥¢˜„¥ ÑH½(¤Ç4PE( ÐE½¨)h¢€\nÒö ¢–ŒPŠ;QŠ(\r.(¢˜)MR\0¢ŠJ\0)ZZ((4½è4¨¤)¦H@ëÅ&2ºŽj|€£4€SŠäTì1ŽAQNi¬0y§Ä8æŽ H)ÀóIN«$m–Žô)\r8Ó{Ð)\r8õæÒ†¢z˜Š‰è™ªœ[?~1^Yªs#óÎkÕ5Qþ\'N‡­yNª1<ƒœƒÞ„R)\'j²*²~ub.•,µ±&8¦‘N=8¢¤ži»NjCMÇ<P1 |Ô½(ìzQ¸€sšwsHhzku§ŽM4ûv féÍfI÷ù­YESxC6jâDŠdR{U£\r4ÁÎGJ½	!SÅ<uñ	Å(ˆâ¤¤:#ÍhZ¨Ü;Š£\ZÜÕÛc†ö©’4NÆáaP\0ª0¬;~TëI\"Ú1’GlU¿;Ä`çŽ•’vÐÒå1ÇZcÈ*IýF@ô5.N®;UÝ=ÃÐ©påUˆÏ<V$€`ó[wjz¡Ï«\ZEÎx5Q×TDôEF¦ÔŒ‡°&£#x­X5z×ˆðjŠõ«öÃ)Q+\r¯\'Š\r*ñAö¨(J\r-\'ñRi&”pE˜š@)ÇšN†˜9¥&—¥N´·k•9>µ9·CŒ­2ÔµdU\"\\Ú¦IÅ!µL`f­\Zozb*µªäâšmxÎ\n¹Šoz\0¤mxëš‰á\"´O¥E0àæ˜Ìâ”Ò¢¦j½è„R\Zq¦ž”€J\r£ÀCIÖ”ÒR(úÐh)€IKÚ“·4€J\r(£½0ŒŠCÈ¥ïÍJ\0N‚”QKŽ)\0‚—¥}(£î<TMäÕà˜l¢šñõ®¥c)4Ê!9©M´Z‘d÷ÍIÈŠ‡¹¤u+l?trhdt?8æ¦…TÌ¹õÎ*{ 6ôàô¢Ä·gb’±üêM‡£Ž”¤ûÒAŠl™Ç§œšCÖ€#`qM*Hæ¤=(¦2,\ZaZŸqMaIˆÎ¾8¶síN´ÿ\0R¹9â“SP-Ï<žÔ¶ƒl	î+9liaÖ¦>•àšysÏAYt,@>lŠEêsN^z”Ày`zÐÁ¦¿9~í4õ ~ñæ†<Ð½èj`)àŠR1MëN¢Ât«Öü!èxª*9«ðÝŸ§5@z†Á\Zd\0á­•ÅeøÙvàdü½OzÕŠd€b–’˜…w u P ¸ \n(´¢ŠZ\0P(¢€\nFéKCt¤sAÒ­óR1ËNïH)GZ¡/j µ- ¥¦RE( (½è¤\0h¤¥ ÒŠ\0ÅúQ@£¥\0Š)h(¥¢€ÑÚ”QLRô¢€Ô”´R\0¢–’€BRS»R\Z\0cu¨œŒâ¥j¯/\rýi1¡â—8ëM‹¥6jL¶¥ŒqUùªÄ|Š]G±(¢’–¨ëJ))E\0‡­-Àm!§R@Æ•Š”Ž*&éI›ªólØÎpkÊµŒùîORy¯UÕÎ-XóÐ×”ê¤ùŽ88¢:Œ¡«1ûÕxÆX©{–¶%#Ž)N´­Ò‘*@R)¹çéæ˜zÒéM ëKÞ€\ngzçS;ûÑ¸\\^ôÓíOÓÅ\0Fã5^y©$>•U¤;ºÕ\"ZV¯¥0Èhóy÷« qm¦ù„õ¥ßÇ¥\0</\"Š…_òïNYyç¥4­·ñZÊìqX¶“ª6[ŠÕ[ÈÏR:zõ –ì2î\\)ù}«(ÈwuïZwFÑžœôÁ¬0þtX¨Éšvq	GÌúŠ™ì\"=UzSt¦RGä+O($TlT›1®,b\nÇhÎ8\"¹Û¸BÈp:\Zì®™vuü«—Ô@ó[Š¤Ä¶2±Í_µÈŽ©‘ó}\r]µN´H:ã‡¥.)+2„y¥=híEÒ”r)qEL§·Zh¦€p£ëŠAKßŠ~B/Û—œÕU­˜m«#¥YQÓšCïGjJbÇSIJySO\0QM¤sRž¼ÔRœŠC)¿ZˆÔÖ˜zS6ëIJxþ””\0˜Í!¥4†€õ¤\'Ö”ÒP\Z\r…!4\0´”v Ðß­&0(¥úPRÒ}h Š4J\0^h‡¥- ;\0óÏÒžÆR»|²@ïŠ³¦Æ­z‚F;VÒ…Y}N=+«šÚµs‘A’}ªTˆÈ§UÝRÝb½;hq¸T0#±ù=qQ\'}KIT¬Øô«¯ËA\\\\|Ãœóš}ÃaN:SÝ-M†6•ˆ=0*<óÓŠ›8ÓM™¤†§4b˜OqIæzñT)­A<SY©15LùëN€~å~”š§6øÍJv.Üc³ž†‘:Š”¼ûTh3 (å›¶+&X©×šERXçäæŠ\0Ý¦fŸÚ˜zÐ€CëÚ‚xÇ|QØâ†ê1LAÒ–ƒÀ£<â‹Œrrjô?êÏNê‚+F.š¡ äivÜ»ZƒÒ³t.4ËnÇf1ŠÓ)æŠZ)ˆJZ1J()h¢€ô¢H(\04w¥PÚ‘ºRÒ7J@5zÑŠU õ¥Ðc…(ë@¥B\0(¢”s@Rô ¥ëE€Nô´Q@\0ý(ïKE0zQÛŠ1@¤RÑŠZ`%-”Ò1Å©h £µ-\0”¢ŽÔPRÑE\0\'zZ( ¢ŠC@aU§ÈéëV›¥T˜\rù¤ö\Z\r$¿{½:1Š{.EN¶]FÖ¬G÷zb¡Ç5<cå¢;ÜáKJJQV!GZZAK@‚“½-Š\0i‡‘N¤4kt¨ž¦=*7¤#+VÏÙd¸ÅyNª1#gƒžkÕõlg<zf¼«UÏ˜ùõêiÄ¤PŽ¬F*¼G5b>œÔ=ËZ\"FåiS»R\rHM\'SJiàö¤0šw4ƒ­/C@†‘Å4iç¥4x¦CMÇööëL ¥éTØóWdëéTïÕDL	Èæ“4†ƒTH Ñž))\r\0;u87JZb&Ôÿ\08×Þ«“ëHM\0Nf8ã¥!~jiæ‹Æ„7F3òœTÇP}½k+w4…ò9¤Ñ\\ÅùoYÇSïTe”±9¦¦1üh²î(ëWmþçEO5~cÁâ¦cDëÈ¤íJ:QÚ ¡£ò§\ZLÑL\0Z3@ÒžÔŸÎPhPŠ^(RÍ1-Aõ«\"ªÚžµhU\"½±HÝiM4ÕZBy¥¤êh\0¨åèjJŽN”¤ýsQš{u¦5\07¾i†œM4ñ@	HzRÐh¦“½)¤ ‚x¤ Ðj\r-¥\0%Ph\0=“PŠ(ih\r/QIFy BÓŽÝKÓÓ²øó:cÒ²mF5NÛA8ÅkÈ1(>Ù­¥©ŸS\'[ÇÚc>©ß¶*œ{‰;N*þ¸ƒÍˆÿ\0³š£3ga>•=\n‰QÉk€[®y¤»<’ƒö§¨8§J¿{5¢ØÎ{”H9õÍOza©)\rSÅ!Íæ€1@Ä¦š“SqÍ\04zR=HWô0)j<À¿çRÁ÷°ïPê\\Æ>µ4å”ËŽÄ«Ë~ô™¸éLA†Í=3óf³,zt¤fâ–6ù\néøÐ†+*>†¤“¡¨‰äqKp:ÐÝE÷©HÓ\04†”ñM=è@>1’+F”çµgÇÃ\nÑµ=úâ©ô}Ä¶ß¿È1žµ¦½+;FãO·ÿ\0pV€¦CŠJQA¦@¢Š\0)(¥(ï@ PÞ—ƒ@¤ †éKÞ‘¸˜´‡©W¥4}î)”\n((ªRâJ:PE¨\0w¥RŠŠ;ÑHƒKE1‰Þ”QE \n)EÄ%éM†&)h¢€\n\Z`hí@¥¤QE(£P0 ô¢ƒ@½S—;Ï5rJ¥\'Þ&¢CAwpjÆãŠªƒŠŸæažÝ±I=ÄÎO52t¨>µ:p)Çq1Â–@«{RâŠJ ÑE\04ÑKHzÐ•Ô‡­FçšLÍ[þ=ŸÝ5åZ¸Ë¾~o›Šõ]X£?Ò¼«VÇšùõ¢%ÑýêµAU!ëÏcVãéS-ËèHzS{æœGžÕ!p<Ó<Šgz\0rõ¥ïBó@jC}Þi£ŠqSG_z.!izT„qLn?¥!”qT\\|Õ~^ESnµH–D9¤4ò9¤«ÞÔ”ãÖâ˜†æ’œG˜ 4™¥4Ò3@M4žx¥4Ó@…4„ÒI@Ã9gšC@ C—­_¶ÿ\0WTf¯Ûÿ\0«É¨‘H°:QÚ…éIÚ °¥=i;Ó¾”\0‚† ýiJbi­\rÖ… Dƒ§4œÒRB\\¶È^µdUKNþ¢­\nÐ†8ôâõ¢š)ˆ_­\'z	¤Î)\0¦¢—¥IÞ£—¥0)µFzÓÜóQ·Z!¦šSM4\0M4¦ÐIšZ\r\0\'z\r\Z\0N´Ph=h\0\"Š1Íè\0=(¤4P0úRýi;Q@…î)xÏ\"’”\Z\0ôhp5pž¯ŠØnpyãõ¬€\në¼¶E]–{¦º–8¶„õÍo#2¾²¤¬G±Y¨ÅrG­-@ÊÖÑÂ†ÎÚÎ sSÐq+JL	 ’rh¹Á.O~h~ð}i×,ÙïW‰žåM\"¬*f‚)ªÃša÷«f<óHSéùR¨4ƒ­Y(\"˜cÍr4ÂáV\0¨$8éM…ÌíD|¨ÚÅXŒ\0¿/aP_òç:ýÀ+šÃbX¾bJQÀnôØøÎ;Ôaˆ^y¬Ë,\'Ü&œ£Šjƒäç¡¥Oz@\rÒ£=jVäÓHù\0\"iØù¨N´½ø #ž)0}iOZAÀ¦—ƒšÑ¶\\­PQ‘ZÃ¡<U!3Ò´:ß§Ü}zU=7þ<àà…Ø\0«¢¨†w¥¤ BÒt¥£µ\0QK@	Ž(\nZ()E¢€ÜR7Ý¥¤n”˜:R´£¥\"Žy©%è–¬@)E%-¸´RRô AÛŠ)h ¥£µ\0QÞƒFy¤0£¥- ´QKL¢–’€\n(¥ Bu¥ Ž( ´QHaEPEPÖ’–Ð\"7éTd?1Å^“¡ª2rx¨–Å¡­M¿Jˆ.)ÀsÍJõäóSP¡©Ö©ÅêAKV ´‚–€\nCKAâ€Hii\r\05ª7â¥5”€ÌÕ³öYHùyö¯)Õ¿ÖÉ‘Þ½[VÏÙÒ¼¯V8•½3M\r±Ò­D*¬#ƒV¢¨–æ‹bSHiM!¥\0\Zo§74´\0«GzZ!éLiäS{Ó½©†M¥p#pj³ŽMZz‡5HL„ŠLT¥i¥N9ª$Œ¯¥4­JF) ±IŠ”ŠiÀˆÓMLTShDi‡­HÃ¹¦0¦M%/zCÒ€\n¤ P—­^¶á*ŠŽjí·Ü¨–Å\"È¥Ïƒ¥/j‚„ïKÞŒR÷ C{Ðßv”ñMn‡4h!âœ(Ü£ŒÒÓIÀ¦€µjzÕx¬Ô¸)’\0Ï­H/G\0®?­hˆeði	ªkz¤gR‹ÈóÎFzS$´O4™æ 1ã­;Ï»`ûÐ¹¨äû¦šgOï\nl’ eY:óëQ“Öœç$Ó:š\0CHzR“M4\0QœÐO¥&9 \0Òcñ¥íIœÐQÚŠ(\0=(4t”\0fŠ\rè\0 ÐzÐzÐ0½¾””´„Qš=\"èyz´NqØþuvîYmî_ËxÔ±c5RücQ¶cÏ\0Š³ª¡.Ë¾<7r9ÒÌ¶Qó\rªy˜ûß)›Œõ­kñþ„ƒ9 ‚éïYÑ ,w:Ô„Jÿ\0­Ïë€2ûyïR\\ IÀ`œŠ.rK¹ý*¢L·*\"å8ì*#žýªÂÝœThOZ,2óÖ±ŒÓÊá°G&ž!Ädžüý(°‰=¨.qÅHÊ6qÖ¡lÑ`˜çšÆFiàS\\|¼Rv›~y Ãqš°¹5_P4Yçæi~ïÖS4ŽÂ‚FhVÌxÀëÍ=\0ÚÙë@^\0ëÍe¹¡+«úÓS9§?	šH¹\r ä\ZB1œS›ïzR¦˜‚:pëK\ZŽÔ­ŒÒ‡­Ž¦—µÃõ¦Ö´,Û\rê+=G>•£l9LtÍRÓ4õÛi¸1ÎjàéTì\0°ã<¨&®/J¢€)i;Ð iqE\nÀ(£w aKF(í@ŠJ\0LR?îÔ×¤ö74)Ïµ!¥Nµ	ŒRÐ­/zQÒ’”t @h¥Å-\0%ŒzQ@Å˜¥£J)hGJ)h”RÑHŒQKLÅRö £´v Æ(¥PQKF)\0”RÑŠ\0JCN¦š\0ŽNER#æÆjãŽ9ªd|ÕœŠC€çà8¦§Z“T\0Š9â§J…y5akH‰Š) QV!h¢Š’–Ð0Å4Ó©Z\0aéQ7Z”ÔoHÍ[þ=ŸóÅyV®>w<òkÕuSþ õåš¿ÞaŒÓEpýãV¡ÏµU„U¨†*e¹}	M.3M=Fiâ 7ZhëOn´Ð(@*õ¤ïJ¼šP9¤\Z`êqR)ƒ­4ÛšiãÊšiéHõqRž•Õ!1¸¦öúÓÈâ“DŒ\"‚¼S¾´‡¥\00¯áI¶ŸHE0#+L+íÅLFi¤P\"Jˆ¯µYn”ÆÀ€§Ýœô«hÛÍ¶À:\n6dÕ‚¢€´‡r\0¸«vßv£\"¥·žÃEÒŠ\\|¼RVe¥¤ïKB¼Ó5!”ÖQÔiéÈ¦‘N_j`9ºTliøÏZ…\03·Ò“456ª$0 QIT!Ã”Ž)´1ùiˆnì\r(sëQw§\n\0”6h4ÁKœÐ1Ù¤¤íE ½!÷¤#\"—ëL¢Ñž(\0 \Z:Òv \0ÐN)i;Ð\0h t PÚÒŒP(\0éEè=xÆ(\0)i;sKJÀzn¬¥o-˜õÀÆ=*Þ¡µÁ1ÈÀÈJƒZ³[1céÀéW5g‚ª€H®­Œ›Ôn¡óiˆpTqÓ¥fÄï›ŠÔºV\ZxFt`b²ÑG¥JJ·Hn9Ï?JK…À=²23R\\Þt¤¸\\R&{”Àù­D	S*p	ð¢\0¸}Ýºf˜&\0Ç‚8ªÓÉÎÑÒ®avö¨®\0Ùœ\nVUÈÙïQz‘×ç9¨2sÇ4\0MqÅIÉ$\Zd Ži42µ±îãž\rZ_º>•[QÏ<ç‘VnÜv¬fm\r‰•9œq… —ÞŽI‘cØäsJ¼SXàP\r ¦pE<Ÿ—šbò),cGCH¹Í;¹¤!:ÒšãëA<Óõlž+JÏª~õ™\ZüÕ§g÷”sÔf©ôÛ/øôƒÙpOj´:Uk#›X1ýÌ\Z´*ˆ\n\r-%”QKLE€“£­çÚ€\nZ)E\0%1êJŽ^¼TÈö¢1ŠURÆ9æ¥!½hw«$Zp¤ PšCÖ–Š\0))@¢€\n\rP0¥¢@€ÑKE\ncÖ¸Í%\n(¥ BQKI@\0 RÑ@Q@Â’–×Ö	HE) õ¤2Ê}ê¦3ÐUÇ¨˜qRÕÆ´!UÁ§Ž”ìs@Ž¦Ã¸ÄäûU•¨Ñ1R\n¨«	Žêh¥ª´Qš(\0¤#šZ())OZCÒ€\Zj*cÞ¢~”†fjßñìù«Êõ“—~½kÕ5øõ|zs^Y¬™ˆé 2âÆ9ëVcéÇ5Z*µJ™-MÃéý…7špsP\Zn)OëÒ”t ­/zDëGñR1â˜:ñN?w¥ ëLB7Ja©§Ja wzp)¦žGÌñŽ´Ñ,JNœRæ’¨‘\r!ëŠSA¡êh¥éE\04Šiâ)JbzÓM<SM\07½/z( \0\nJ^Ô†€ô§ÁL&¤ƒš–ŠDØ8 ôúÒö¤íRPM-¥(ë@:w¤oºiM#t Ïµ\0qÍ¯”\0ìñLj~8Ö ­7ÓÚšzU\"Òhƒ@ö¦!{R•4´÷x¦b—½{ÓàiAæš\r.h´u¤4\Z\0SEÅ%\0GâŠC@\0qíA¤ï@ÞŠCÒŠ\0;RƒIÚŠ\0ZQÒ’Š\0_¥\0sIKž(r(¤úQÞ€=WZSåÁÉÁnÝªåÄÒ\Z@¹“h\'wz¯¬©1C†èÝ+Aã…¼¬À>ÌWL¶2z¤™¥·™%U äŽõ\n‚äƒZ·	E3#äsŽµ—÷7<w¤)Þ\0mÎ3O¸N;Ž(»Û¼õæ¥¸Så®1Óôªˆ§¹˜Wå<‘šj{­O&*¯$ñÜÓ\'Ê}y¦IÔŸéSÇ^O&¢¹“\0€\r!•j2Ž*IXÉÅDÌ(\rÄÆiŽjU<ô¨Ÿ¯µ&UñÍÌy$äóVÁ÷ª·¿ñ÷<U£‚k	îm\r‰9Ù‘O8ö¦¯àŠzŒ\ZÈ°~Ô(àÐí“JµFÃƒMAÅ=º\Zbv¡™FzRgšÁ¤ëE€Z\0†h(Ï\"€\rZÙ¤zYé÷Ï¿zÑ²ÿ\0Y:îjŸgÿ\0°gŒ â­•ZÌ\"21Ò¬Š£6éh u ”Q@ëLÖŠ(\0ïJ(¥Å \'zSIÞ–„éQ¿Z’™\'&“\ZzPx¤)R–ã4QGz¢@S‡JAN¦RÑE \n( Q°z)H¦÷ £¥–€\n(ïE¸w¢ŠZ`¤=)h4\0\n;ÑGz\0(¥¢€RÑE\0%´”\0RÑGzÓÒHzÒ\'Ž:Ó¦éPçÒ“ !¹Æ*|qP§/Šž„1@¥í@Ä\0RÐh ÅQ@\Z)i\r½!¥úRPOJ‰úTÇ¥Dô1™z·ÏÉ¥y~³Æâsïí^¥ªólùúýkËuƒó?Ö„ŽjÜCŽ*¬}\rZ‹¥L·4[©Jf>jwj†[­(è{ÓZ… \0qÞŒóíAûÔƒ­ßÃMïÅ8–‘}è\0íÅ1ªCQµ #cL8ÍHÝ*3T„ÄÍ”Ò•D	ÞŠ\r%\0\rIÚ—¨¤=»ÐHiÇ­6˜ÆšiëN4Ú\'z(èi{S´™ç¥8ÓHæzT°sQMn:ûÔ²¢OŽ\r!§v¦šÌ°hu£½-\0Æž”»JG­!àPmBÒži@¦jkRQ±¢â n´ÓO<æšjÑ,ojZ);Ð!Ô÷)iîóTbŠ;ÒP….y¦ŠZ\0RhúÒf@A¤?\n\r\0\n\0”v š(\0ïŠ?¥\n\0(\'Š>´w¦G¥Ò\n)Z;ñÍ\0(¢ŠZ\0ö\rZüØ\'¨¨®³ä«cwîÆ\0=êÆ¬Å­wx¨Ú_.ÞÙ¶Œ0ÆH®«hc\'©VCd¡(z*d\0oÉÆ1Š¶X7ð\'Ý8âªCãÒâõ+Þ\r¸ ÖŸrß»ºS/Jä˜Æ¥IvHIäãÒª+BjnfÊ~O§Ozu Ü¤‘ì)¯Âžÿ\0Z!W)Á gµ:q&1\ZŸ|U		ü}ªóÅ!Æ$#†¡š6XùpGëFÃ+Ë÷1PmÉ«”sPž4-@0\0â ~59éPÉÓëI“¨ÞDpyiF85Rè¶Çž}Å[^µÏSshlL>åH<zTxqêj@6õô¬¿J–¢/‘RgŒR6éÅ\"\nWéH”ú&8¤Î)Üâ›šEsô£·´\0øølzÖ•ŸúÅÆrVjw=yéZv?ë\"õ,?\n¤§ÛC^TjÀ¨-†!’~QŸoj°:Už´´P)ˆQÒ’Ö–	J:Ð8£½€½èïKIÞ„Gj)h*9;Ô•jd1£¥=)‹š|}jPÇÑKEY :Ó…\"Òý(\04\n)FGj\0Nô´QLÖƒIH=(ôv¢€QE\0Š( ”´PšAJ:Ñ@Š\r\0QK@	GjZJ\0)M%-\0%!§v¤ ž¢šTÂ¤4ÓÖÆæ–—½/AŸJ\0AJ(@	J)E\0PGz\riˆ)½.)Z\0CE/jJC\ZzTN*SQ?|Ðf¯Ÿ²¾:W–êäÞ½«Ôµoøöqê+Ëµ||øëB\Z2PŠµZ¬œšµL·4è<p}iÄRRÖ`1‡­¥+riJ`%%(éH4†8ô¤(cÇ‰žôn!O#ŠcT†˜h.qMèOò©t¨ÍR&B\Z(£µP„=i1KIL@z{Qô ÑH¦µ8ô¦ž”Àf)\r)¤úÐ(¢ŠbIKHh\rIoÅDÕ-¿|Ô2¢OÚô§v¦ž•ˆ:Òƒh¡F(`¥!éN¤n†€J½\rŠ`)éQ¿Jy¦7\"7ZiâœÝi¤Õ\"X„SOãMª£­+}ÃëH\r)û´ !4\Z\r!æ˜\n:ÒÒ\n^ô\0RçŠJNô\0¿Z(Í€Z;Q@ë@(¦ŽM Í)¤¢€<P)( £µ@ÖŽ)z\nÒ€üÐzzR\n^ôîúÐô˜Ù\0W^ŠË¬mÊÛxç¡«7¬ÒZ:±ãÒi }’<À®­‘Œ·+}’E}Ø\\<f³OqÒº9TñïY6¶Ë!|œÏ4“¸\'fdN¡—\rÒ¥»y(·¼TÚ˜KrÂLsÞ •B„v^IïVµ&¦æaË!½IÆ5Ú3Ò‰†5]‰Í;dÍt}Éd/NjZQŸ\'úPÐ‘¾@;Ô|¯_ÎŸ*î\nzSNIõÇz!ûµ¼%Hü­E7Ü¨\Z|›äçð«Ê0rEP”gQLÕ¢OJç¨tCaÃ¥H¼šaÇ^Ôô8>µ‘hho›Šs}ÑL–8ã4çè\00ž(QéJyª)ˆw;y¦õþvÓE bt¥z”ð¿J_â ^•©§ñ$YþøVjŒŠÓÓF.\"Ï÷…Z\rO„P3ž1SŠ†>c=;Ô£¥2w¢E1\n(¤)E\0¥”¢E”\0b”QGZ\0CQ·Z–£e$ð*d42¤ŒóLóÍH‹R“¸Þ–ŽôUˆ8SE8Sh¤¥ \0t£P(\04´\n)\0\n\\R\Z)€½¨¢Š@´”½é€QE€(¢Š\0SIE( íJ(íE\0”w£¥=@Z;ÑE \n( r(§­!§bŒÐ1;ÒS\0ÜRÑÞŽÔ€)ES†ŠZ)\0”\Z(=)ŒCIJi1@\r5ÔÇ¥Dýi›«gìÍôë^]¬cÏLæ½?Xÿ\0VÅy–®w+sÔÐ†ŒXêÔ&ªÄx«c=\n‡¹¢ØŸ©§Jgz\\ñÅHý)\"•…4Ž(\0ŒŠJUéõ¦ƒíH4+\n\0¦v¦´öéL>ôNÕpx©0j#ÔúSDÈ;ÒQÞŠ¢4c\Z;P1Z;RšJ4ð)×Šy¦c˜\rÏ”§­! “Þ”u£ÀJiëN?­% \ZG$i‡š}¿~¹˜Ñ`ô¦šSÀ¤5±ZwQÍ7½8R{S[¥/~(aÅ0#ïJ))E\0)éŠc—Š’˜ÿ\0wžž´YÏ>õ<ÔŽ*>´î-4ÞGZSHN)Ü9@R³|´”†Ã”iéIKÞ–‹‹”mâ”ŠF¢áÊÑž)	çô¥=(¸r‡~´gšCÍ!§Ì£³Å(¨Í8t¡jM‡QH\r-0\nPi(í@AàÑIÞ€ ¥¤ t v¤½M\0-ø QÚ€>¹MšSoE*ÊØ$s\\Å¥Ó[&#\nÝ°}k«ÔT®šˆd%~o—Ð×Àò8æ»\"¯¡Ï9\Zß´ˆÕV#œRé˜Û&1YÇúUý/î¾O°úÓ”RZvE¬Z9¸éTn@[h»îZ¿©çìòdãëU/<¶²·)’á0sÚ”6ŒyÊG¡Å-¬Jë–ÍG99zXÝ‘p¤ŒU5 Ñ+Â™àp*´ác\\/´é%eŒ1nIéTË—s“žiXl™ÎÍBÇzÔ€öô¤aÅ#näìaºÔSÊ3Ž)0F#ÈJ3Œã’*øûÀš NuDÝÏVŽ>ašå©¹Ñ\r‰AšrŒôô¦œg¥I\0¶zâ²,xü9¥aÆiLu§òŠ4)®)Ý¨^”sp¾ÔÑéëOsòÔcƒŽÔ\0¹ ýã@Íàçµ€qÛ©aÅÔÕÅfÆA5¡bGÚíÇ¬€U¡¥ÊŒTÂ£sdãš‘i¢P:Òõ¦\0(¢@€tâGjQ@ÅíEP ¥i-\0%¥ ÐQGzZ\0JJZ4\0\nwjAN(\0\n(é@ Q@ @h£¥\0\Z(4´Š;Òh¢–€Š;Ð8 µ¨¥4\0”´”¢€RŠ EÀ(¥¢%- \0ÒQÅ-\06ŠS@é@\rÅ©h ¢ŠZ.))i\rŽÔ´”CHiÆÒ¦¢z”ô¨ŸÚ€35øö¥y†¯®;ç­z~­ÿ\0®O@95åú¶pù¦†ŒxÇ<Uˆ>õAëV ûÆ¢F	»ÒâŒšu@ ô¥\'Ò‚8\0€qMšðæ… b5 §H0iJ5¦ž”æÒ7Ý “Q–©N*8ø“¥TI0Å78«.ªîv¶1Ubn4ûRS‡ZCÒ€IKÒÒ\0ïL4ñÞšÜ\n`Fi)Ç›@ò£é@é@é@!¥íIÜÓ­Oƒ½1ºSíÆIÅK\Z,v¤4¸¢³,hÎiG^i{ÒÏJ(¡ºQÐPOÄFzÐ(=iXfšý)M4ô ©ÅFjGÏ~µ¢à!éIž;QA¦\0i\r)¤ ?J\rJ\r0õ¥4\ZAaæ’”Òf€Ô†—µ\'Z`!â•O‡­\0Õ\"d;<Ðiàã½Ž´ÉS‡çMëÚ€Š(ŠNô\0´¿JJZ\0QE%­–“<RŠB>ñ%, l\0¥˜q\\Ã0z/ˆ.nwr²‘ƒï^yt1s(#£Wu3šc8èzÕý4\0²g9íYê+GKÆó*æ´\";jMºÒ^ýj…ÑÛcoÈåOó­Â\rœÃ¸äsÖ±¯[66¸cŒ{Vq)¢‰ùŽHéJªÌ29FGÐÔ¾`HI=*¼ŠE;­Â<ÀïéU£Æ<ÕÓ*È­·Ó¥Uaé@1 àÓ››Açµ ¸0È¨®8^:T¬p{â ¹sÓÒ“ÚöÏ¢>ð¬õê§§LäšÐNMrÔÜèŽÄƒ’9ëRŒGj=J¿q»gŠÉ–¶\"=)ÄñM=:Ó›¨À (\0dfƒÀ âI÷i„azS¤è)¹æÀãŠhç§j“½&88ëBC×½ji£7Öÿ\0ïŽ=»ÖlCæ¦µ4¯øþƒ\'xéV‰=E~÷9öÍH)®})õD\nh¢Š\0Q@¤¥¢À¥(¤£­bŠZNôP÷ ÑE\0\Z( ÚŠ( \0QE%\0(4 ñIÞ”Pö¢’”Ð ¢ƒ@é@Å¤¢@¢–Ò‹€RÒv¢€—Ú^Ô\0QA þt€¦’˜EPE-©\0¨(¥Å\0QÚLŽÔ\n\r ÒŠ\r€\nJZ\r\0\'z( Ð\Z)h bR´¤SMÒÑ@Ä¤=ii\r\04óQ½HEFô€ÊÖ@6Ž?ˆÿ\0*òý[£sÉæ½GYÿ\0VéÒ¼»W?+b„4dEœóV¡ëUaéW!äTKsE±*ÑÞiÝª@aëJ~é¤¥íCùh^)Àa9ëM^´!ˆýh4­Ö‘…!	õSqøÓ‡_jFÆ0Šb}ê’˜~õ\\Lä+·üÝjV^*!×&¬‘1ŠCNëŸ­!©cB\Z(¢•€Jn)ÄsM=(1ºÓqN4Ú`ŠZJZ\0CIKÚšM1\rn•-¿_¥DÕ-·~µ2*%ŒqHG4§­%fh\'~)zR½i¤žÔ\0ú¥*ô¡ºS¸ˆZ\0æ—ÒŽ”BxÅ#)M#t eyDjYBÝh\rRS\0ð ÒQšLaI@9 šb\nCE%\n(¤ @( ô£<P1­@¡©â­Ç¾Ô¹¦Ž”\ndŽ3J)¹£4\0ñGzLÑ@Ò”v¤¢€i\n\0QŒûÐ(ïKÞ€>›ñ%ÂF¥Ôù.à©pZœ^UìèyÚü^Ãyi&¥¢ZÇ$€Xëë^Wâ+,µ«˜%`Î§¨é]tÞ¶9§±›qz·§pÏCÍ@T˜ÀçØÕ­;åñ‘´Æµ–ÄGr½âbÒb¬	Æk\Zà§YŸ)#ïüÖÞ »mgú\ZÌbÏ¢Ù¡<ö÷¨R3ÙNÓŠ%}º€iòp^j&—h\0ŽZ«\rÁˆ79ÈÅE4eýjâÊ~\\qUn$óL\Z^ Tž)ê¥ºS$àã×­LƒäâÐÖÕ[¬n«ƒ©ªw#æ4˜ú™0€ú£’OÊ™«ñš¨[Ÿø˜ÊT€xôz,gÞ¹jntGbuæAúÔ„f3ZIÞsÖ¤\'œ÷¬™d Òšg^*B0(`!û££¤¥ÈÅ\0+óô¤iô÷¤œÒgÖ…<ÓsE€’,çŒõëZÚOüÛƒÓxÍdBNã“ŠÖÒëë|uóZê\0üÕ ¨Ãã9Çz”7DLÝ@<Ð”žôÝÔ›¨ =èÍ05(<ÐÁ¥£Ï4¹ æŒóLÍ.hÝè\'œSsIº€E7>ÆŒÐ€u%7uÐÅ8T`Ò† CÇZSLÝéFê:Šh<ÑšBJ)¹æ“<Óú3MÍ \nQÖš\ræ€šSL”\Z@8\Z)3Å\0½éi¹¥ ¥ÓK@\0¢Š(i)i(iE\'jZ\0\ZJ\0)i( ƒKHh:ÑÞK@	F(¢€M§RPIKA ž´†”Ñ@Æš‰êSQ½ 2µ‘þˆøãŠòýS8~ŸZõ`fÕºjòíW\0>:dsMÇ\'šµ\rV¯½[‡•÷¬å¹¢ØxÓÈ8¦¦\ny<T°Ji	âŒzÐwjAÉ¥þ\ZAÁ¤1’x¥íJÔƒ@†Ò´´Ö 4Ó×4êCœvÍ\\H6Ô\'Ú¥~c¨Eh@¹¤<Pi\ZîóIžhïHF:TŒSM\"”SM¦›N=i¦˜qJ)\0\Zm:ÓÆ©-z“LaÅ>ßƒRÞ…\"É¢JQY—q¸¤¥=iE0\0(jpéHÃŠ\0Š€iHæ“½AäsJ)Ú‹äoqÁÅFÖ¯ÆJŸ¥\\ÚŸŠh–Ìï³?|{RwíŠÒÇÒ´÷™ÆÝÇjo“ <­im£mÌÌÃáü©¾[÷CZdzRcÌ½­èi»?tãéZ›pi6Ð3#±ü©Lâ´ÂAK³¸¹•ß¡•§° R×ÐP.c,þt•¦Qs÷Fi<¥=…4Äõ3hà\ZÑòSÓŠ<„ÁÂŽiÜFq§\nº`LçÏ!G­°ëKD‰ƒÁ¨I`zñL	…(<STäÓ¨G½©£ŠZ\0p¢’”RëmQÙúzL¬6ásØŒ×ñ ž*¼	÷Kg?…jØÝ¼šdpm€{â²<n¯ý¾YÎwÆ	Ï^‚»cHç“ÐçØa:ô«69á¨˜/ô©,Ó÷ŸðqZKc(îCr3kqœp1T^%\Z\r£î;ÃWñ­)FcœÈ99ªsþÀ¶UÀù˜±õ¨‰r1æ\\ççQ2EÚêÅÀÛÇsŠlec7J Ew‰†\0­Aåc»\'ÛÖ´Ð±ÁÀýj¼Ìîô¥q™’ÿ\0¬äg`\0ª2\rE\"æ^˜«\r÷\0…EŽO^:UIÖqÚ­‚rsT.N×Êž•-Ü»cFQÜŒVŒIóÖ}¡Ý¨LxÎ9Íh¯\\×-MÎ˜lH¹ó4ù\"ÀõÍFŸÄsOsûµëøÖEôoJq4Ò>zRx HñJ\Z£\'4ÍÜ\Z;iTLü)7úPêÔ€ç<ÔJüu¤\rŠ`ZŒàšÓÑüLm‡ðïŠ‚zV–Žÿ\0ñ0·_VhGªÏnzzT‚J dÄ‡#\"È1L‚à~FhßÍTóyÆG»øäÐ°ôyžõSÌy¢€-‡ëJ$ªB\\sš<Ï›­0/y”	;U/šQ0ø ÂAJ$æ¨,´¾o½ .zc¥eêÚÃÛÜK%G¸8,OðÔâ\\¶3Œ×/¨ÈMÕì a‡~õtãvLOíK´l=ô\nÃŒf­ryûléóWÙFÜFây«rêÞl{%Š-£¡“]ßU¹´³;q«^ò>Õfã\rbý™A’Ð“Ó®-uP(†:u¤\Zšã˜!Îsœ\Z>ª/jw#U½Ý’lÉÏ÷†)É«ÞíÆË2}wW\nuU$âÁ>Ä\Z‰õ,ç«ì3Å/ª1ª§ bì`µÿ\0¾©í«^(ù­­Àé÷º×G¨•<cŸz¹m©ª¾dÔužhxFÕÓê×=íW>Æ”j×M—^89Ísvº–™ +qÈ ¤™?•I\r‹Ü´’ÛÞNò‚Ø VR¡É¸ãS™ètYl¤\\wÍ,zÙ‘ˆ[9ÈsXCL¸þ?æaÛ-ÖªÞYOmpŒ/+Ÿ¼ŸxVjnÈ¶ÚW:Ÿí‚Æç8ç—û`ùt¹ûkšÔ\Z+FòGõè\rg¾¨ø¹Ÿ#½kõVÌÕTv£[ˆ^ÚàwéJ5ËlÝ\\þåpçV”þ“6{äÒbR¼\\KÁüèú«´;ÅÖ­	–aëòÓŽ³g·þZóêµÀkM¹ˆÊô§nuÊ[<r)}UÚ#¿\Z½–gqôáªÙ“.xôé^ýµ(lü¿ŠƒN\ZäÀ\"Ïû¢—ÕdÑ€º™l”zf•uBãá1Ü×\0ºì…\0Ù>»iÇ_r?Õ[‚:ázÒxi´Gý¡iÓÏóëRËbqöˆý:×ž|ÿ\0Ïo—¥H5åÏü{Ûã1GÕäÑ‚·1ââ/ûêœ%ˆñßUçk­FýmáÁî*UÕb8Ìúç4¾¯$?hŽüKëcún¥&8‘?ï¡\\\nêq“•Ž!öºÔ«¨FÌ~Tz|ý)}^@¦Žì2“÷Óéº€Ã³/ýõ\\TwhÈÛ÷½ªUš2ü,‡é-/a!ûDv9ã ‚^izšå#&Aº5œú€õ4 Û×0jJ€õPHüê]&ƒ 9éÏÒ”z\\”ú†›´‹iõ0T2jqª\rÅÆ{†¥ìÚ\Z•ÎÏ\r´ôØû§ò®ûd7?j—ßš›ûf2··@ôäJ~Å°r±ÙÇò ç8Úsô®9u•\r‘y9\'Œ9§¦¶ `^L=±KÙ0æGZ?—Z;×(º×÷¯>¼ÓÆ´xÍêõÏCÅÊAÎŽ ž(¹‘­±ý6=§ØÔ£ZÆ?Òáã Å/g æGBM&k=aò?Ò Ï^•zÒûÌeY@¾ë/CIÁ¡Ý2ù¤¢—¥ACOJêSQ=\0fkƒ×‚+ËµUÂ¶Üwé^¥«ôW¯-ÕŽÓ4ÐÑCUÈ:ÕHù5jFk9\Zô&iÍÒ˜)ä|µ,C1Í\rÒÖ†90BƒÅæ…QÞÆ¸¥(~´v¦{R”½Í!ö¤CÈ§Æ»¦ž”!Újâg!¤|§ŒUvÆjË}ãUŸ­YHÔ™æ•¾îMhJCÖ–’ÃúSOJZi ?­6œi¦˜\0éKH(Å ôpE õ ?#úSí¹>Â˜ý)öØçÚ“K$ñ“AæŽô§ŠÌ±½ù¥¤¥Ò€5Î<}*94zŒŒõ¦P“­1ŽOSPù “—ç­Q%¥ÁäS‰ô¨b@§<“ëSv  ¨ùFiÞyÇú³ïOŒsRA,®.	òÛýÒi<þ~ëU‚£ÒšÂ˜ˆEÀ?ÀÃšCpÁ…O´g¥7`ÏLÑp#ûDíÂš&OZ ÇJC\ZžÂ€ç!þ/Â“ÍCüBžb^ÀR“?tQ ÆïB~ðéK½¼?:F†2z{ÒPö¦!K.zƒFG¨¦ù	ŽE!3Þàž¤Ç4Ó‘ßó¤0ã¡8úÐ1ù¥ŠŒGîh1p~cÍ=„HE5…0£á#+má!Î£®yªÏSÈŸZ‰”ƒÈ«B>ïú`àÓÅ\0.(ïIKHbŽiGJAJ)ôr2±°3Qøªu¸¿¶˜±‡æïÏzÎÙ€`ÀÎZ¯{ûÉP¢>3é]ýNGr±9Çf)œTqŒ¡ÇÒ§Q´|Ù\0Šrz–¤r:4r…sÏ­W‘wøvã‰[N*vœœ \n„:8[\"A)b¾Õ±R1.“nÎzóQžPAV\']äŒjg“ˆóƒÍ]ÁÍ6AÆ:Þ¬¬#nXcÒ›,c¯4®3=—2TÇ•Å9aýî:qŸÂ¤dÂúv¤2¯E5™wþ°ãšÒlø5F^I<f¤‹|}¶Löâ´PV}šî¾›ž5¥:×-MÎ˜l9síOŸî§zÒ\'&–÷å0÷Ü¹Ï ¬º–@O>”ÒizÓHÀæ\rcQî§1æ¢š\0sÏÀÜšÔ{¹¦\"PØSB¶V£ÎE(426+GFø™AØÎk$\ZÑÑÿ\0ãö,’jÄýê”MÀÉ¬å8?C“Š‘[Š¢KÂni|Þ™ªA°)ÁŽ=¨B.y¼}:ÒyÝê™lÓY¨Ù›žiÜõª%ùõ¦0{ÐÀÑó¹£Ïôæ³<Ãë@~y&€hÔýi~ÑÏZÊóNh·µcI§ààðy¬+‰7Ëz\'ä\'Žõe¥5žŒ\Z[ýÄ`Fp+Z[“=ŽT¿ìi«\'4ÖÎz\Z¹k£ÜÜØ½Ì!:Šö“I]œm6ô \rŸ­#9ÔQÎsÇ5¹¢èãQŽC.õÀùéøÑ)(«±$ÙŒ%=:Psž†™q†âHXî(y¤*•šº©Ù’‡çŸÎ¤Yâj8b2Hˆsóq]gü!ð\03rû°gR¤a¹J<Ç6“ÀÇ­miÚýÅ¤m ©3VÇ„béö‰?Ô«á0»ŠÜ¹\0ðZ¹çZœÕ™¤`Ñ ñC•æ(ÿ\0,UiüC$Ó£íQåðSßÂŒËòÝcž†±5}>M6}®ûéÒ²„i¹hT¯bÞ£~÷r³¿SéT¸úUPç¿JRÆ½äÞqš_7ž¼UmÄš	ü)Ø.Ndç4	NjÎŸ£ÞßÑ&ÈúnaÖ´ÛÂ7;C,ã°ÇlVR«£e(¶aùÇÔpi¤j}KH¾°ËJâþúVp|ô«‹Œ•Ð4Öå±/=M#ÈI¨âœzSi{iˆîyíJ&>½©¶öò\\L±ÇÕŽ*õö…{gyJ0^»j[ŠveYµtSÄŒt§yäŽyªcÖ”g-_*&åß´_ÃñrwÜÕ8Ô¹\n¼’kUtC\0”LžµqŽãW{\rŽïÿ\0×R-ãÁ84.¨®D`{Ž´çÑ5?êÔ÷¨ç§mÇË\"Ä:“ \03L\Zè4Ï^Ù¦Ï4Ê¸á$;”×*ÚF¢¨_É$¢ª+²œcv¢ÐžÀâÖç¢h¿b¼¹–áÚæs¸£p?\nØ0Ù±å­þ¤Šòëi¦.A™ýµ!{¤x%ÈîS\\5¨ÙÞæðgI{¢Å©j\n–ïlz¸;A¬mkJ\Za*f7±ÍV7wÊHX\'ã\0éToe¼Æø\'ÜÙ­¨ÆËVg>kèA$Ä\rFnO÷Ï½UœË2ÆéÛ$TAóÖºùS3m¢é¹luÉ(ûY$O­SÍ0¸Î4rD|ÍšBí±×¯­=.ˆúg5–Y%ƒcÜSã—# äRäC»6mï9®“B¹ó\\ƒ9Ç`kˆ‰þa]/†ß2Ž{ó\\õà¹JƒÔôH[rÜŽjAP[ªO¥N+ÈêuéQ=Jj7¤n©ÿ\0¯“Û¥yf¬q»½zžªÙdö¯,ÕÇ2œœÓE#\Z3†ö«ptª‘r\Z½ÝÅg+\\Õ-/ðÓ?Šžßv¥ˆ„œPE+)£Š7_áÞôáÈécsKÚ‡ÒãŽ(¢ÿ\0]8u¦“LBv¦†©;óMaÅTH¢«ÉÃb¬‚£•A¡+öïJ:R5\"\Z\nxúRw¥4•%üé	ãš)\r\0!éL4ãIL\0QE€\r!¢ŽôÄ1ª[\\nn*6éR[t52Ø¨–{Ó#¥7½:³4)Wô¥(Z\0v@¨fàœf¦5ÇŠŠruª¬À8Å[dþ•JxþnõkAíÛ#½Oýj½¨!={ÔäóI,GœTõ]jqÒ‚^â”†œx¤£a\r=))ÔÚ`7¶(4§ŠJ\0CHhj(3Å(úÒ\nQ@h¥¦ž”\0†ÒÒ“Fã\nJ^Ô‡ƒ@„íM S…¥0i².EHÝi¯ÓREÁ¦Št¿z›VŠ^üšJ(Ô ÑÚ•hßä‘å†p;\Z|½=ê®â2²ãAëLkËo3ÓÓú×kG3Ü¶\nãT’žT\n¬—;OåR»ÀËóÊ¤ÎÃH>•Eð¦³[à8=*6û;6Û‡¯¥ã‰ˆå:TOãåFÈ7íWoSž\r;å\\1\0Î>õÆTÇ Â˜ÖÑ™A\n21W\0ÈÌAï¸U?³™år\0O=) b%²ä‚Šß…$Ö)°|£ßŠxµ\"<$ã\'‚3Òœñ:¨i9­\0dê6Ñ%³a\0÷®M×ƒÓó®×R¶ìxÁäŽ•ÆÜ‚‡š`bZgûB|ãŒŠÑ¯µQ°#í·BŽ1WcËSs¦&v6sKtw²nçhÀúQOZ[¿õƒœàV}K ê~”Ùzòy¥èi¤ó@ˆŸ¥DzÔ’`“ŒÔDÕŸ›ŠŒžy§7Z4Ä(l\r)~8¨ÏJâ‹•[šÐÑ¥=äVX<Õí,ÿ\0¦ÇŒuÍRÐñ.AçÔÔ«qÏzÍˆôéøTê=éˆ»öéŠwÚ:Õ0:ÐWž(ßž)àÕM¤­5ýè`Î9ÁéL3Œ}j£1y¨Ù¹¤;Lâ8pA¬âÇ4…Žs@\Z^x£ÎëùVnêÈè¢fj­·Íuuµ³˜Ï^Õ	cÆ	¥ÓNn®A˜›ñâ¶£¹œö9ð“ÐòzWQá=R7kk¥ýÌ½¡®XpÍÛ“NI\0=ø¯]ÃžgìËz²\"êw\rÒ…¾R½\rvþˆÚèÑÉ8Q¸õô®cÃš;êWK#qm“êMmxÊñaHìa `e°z{W5W{SF‘]Y“ãM(Àë{\n~êNX(é\\ºÃ#¡é^‡áëÈõ==ôû¦ÜÀ\0„žµÉkÚ<º]ÙÀ\rœ©«L=^Wìä)Æú¢½—ü|Dz|Ãšõm•¤B¯O^+Ëí0\'‹=wŠôí¹±!I#aäœäb²ÆîŠ§±ž$‹yQ\0*3ƒžjAâ	æÜãýêânlîze»T~s¤ÓŽ2W;3º\"´ÏÍ_˜W7âkèo®àGEQ˜æ±ÚB­FÒ:ý+Ha”]ÑwqAéÅ3<ÓæºÑ“«é[ÒÅýÞeVò“œãƒYhÞx6\"4çaÆx=kEG»\ZSWf¹ÚC¹ÈŽ5ÍT·Õm§\"ŠGU9Ü;¥bøÆõ„É’cÔ÷®z—‰òŒËé´×:¢æf²•Ee‚î&höÉî>¢¼÷Å\ZGöuæø†!sÓÐÖöª|›ñóëZ~,´\ZT„òõ§*{	ûÈó^•*)„zŠrp>µéßC\ZšF£r\rvþ%´é€Èé\\FˆHÔ#ÉèG5ÞëÀI§ÊFzsùWŸ‰vš7†Ç–„ÆsØš1Ž”âOSŸjLó^„v0{–,ý!:šôXu=áCç•l`ƒØ×›DÛNG­$íëÍs×£í\n„¬z2]Ø>Òc 5b*hÉ†Dp0\ry¨¸~ØÏ¥v^´x Ydë ÈôÕÃV³W¹ÑsZhñ‡ŽœŸA^e|1{&3Á®ëÅ\Z€´·hU‚»›ü+‚ï“ßš×ž¬Î¥¯\n¶/Õ€ú×pÈŠ>s·ÝŽ+ƒðÑÛ|»¿­u~\'v[\'*yã•y¤T4Fš$9SçG»¨ùúSš8OËçÇÿ\0}ñ^y È€aV®JàÅ	îÐ°Òî\';^\'†!dG™ú\0sšáBc×ü+NêóÎB\0P=ªˆœu®ÊpVfr’c¬í%»b¿$úWc¥xz+|oPç$®jY ‰Ý÷3g¨¥Zñ«öoÜÅÇÓ­sÖ«)K’%Æ6W/¾™&Ö‰HÆã¥súç†ãmÒÙ“¸É\\`5SµÕdIw4²u!°kªÒo–ö#ÒÀrk?ÞS÷®RièyÊ+Fû$]O ×Gá–\"åsž½)|U`ÏÂ“÷ÍâåO¯Jè•OiNä¨ÚG£Úÿ\0©O¥N*½§0­X+È{(\rFõ!éQ??Ö¤f~¦3lÿ\0CÍyv®9“ƒÏê\Z ÿ\0D~àkËõùi×êhCF?NE^‡‘T!ëWa5ÜÕlJ\0ÍHzT#¯Z{túTˆCMÇ4êCÁ¥ä2AÈ¦µ\'ðÓ;Ð!¬2ii¨§”Æ3½RPh°GS7dcÒœÝ*%9ª‰œ‡»ÏnÞžµ ä\Z…ºÖ„jh84¬yæ˜N\r\0<Ñš@r)jJM§\Zoj\0oçIÒ”õ¦Ó\0”sIJ(\0híAã­\05ºT–£š‰-§Þ>¹©–ÃE£œŠ^Ôr(=+3A:\ZrÓ:çÚœ¼P!ÍŠ†j™ºâ¡”P†ÊÄsÅ2DÏZœŽi¬µW$X@ÙRLˆajJÇD>qíSÔ1jbxô †¥&1A<Òf¤÷¤Ó{ýh(ïIš\rÒRž´éî ïFx¤Ï4PÓM-! b\ZJRy¦“è(húÑHhPyPhÆ¦?JŽiŽ?\Z`T—®)”ùzÔtÄ(¥¤)zSÂœ)‚œ)ì—ØY¤e9Ž3UÕ¾_~ô^Kóc9Ïz® ü ƒë^“G3z—¡ëÁÔÓ1ÙŸJŽƒÀ\0úÒÜu\ZÍE‰,wu=)ˆOœýOåLj€dûÃ“P»0`W T³­Œd‘œÕG“k€ÇAJÀY¶ÜgµUŽVÞpÇŸCSœ„ßŒJ¦‡sús@n[óœ•]Çü)f÷`ÈN;ÔhA\'¾*/ùhh°\rº¸‘†Ûn8éY#<õ­;²w^õBàpxíÒ¥–#7wóÍ\\8ªš<ýjÚœÿ\0º+’{1Øš6ùFi\'!œÇ‹÷x¦7ßÁ¬ÑcHæ£“Š‘Îò¨œóFâ#Ã½DEHçŠ‰Iç5H\\sQ7Z–N¦¡\'‘LB5 4§¥Ä.y{Jÿ\0„XÁÉæ¨)çšÐÒy¾@¾i :ØøÅNÆj²óžµ(4˜INsÍAFh°çÐS²)”Ó¾hÖ>Ý*&4æ5\Z#i3HzÓ{Ð³A4ÑFhìÓô²¿o›wx|sQ\ZvšGö£»‰¸ü+j?61£æÛËeð:è5}šÎ+«6,våÔòÒ°…™úœšém5çI–Îá|Èöá²×©>t“‰È¬3ÃºÚi–3«]þç|\Z»¢éëI5Å÷2³psÍsº^—w¨û(\\/]Þµv]X´¥ïm$\ZÎqîž¥E½Ëºæ…%¼¶…½Á5_Å:¬z½¨\\¬Š>qŽÒ±^y.J¬“»äàn=*}oN:lÐ¡}Þbîçµ8ÓW\\ÏQ6Ê°ŒÉàa‡ã^ŸoÎž¤\07G€Ò¼Â¹×¡ÁÈÍz…šoÓ¡Ï@8¬ñšZåSÕe}ÅäÙÇÞüê©l\Zë¯ü\'$·2ÍûŽJÓéTÂ7*À}©Nz`q[S¯]Y2ƒoC\0>G\'¥4·>Õ¼þº‹¤\0ŒŽ8¬¢{{‰!“ï!ÇÖ·HODÈqkpïKÞ…©¼¥<Í·ÜUó$BˆøúW}àâO“ÂF=Ep0ýzt®»Á—!%)&HÜxÁõ®lTokfQñ˜Û¨£õÝœX úWâm$ßZ€,©óEpmiu›^ÞMÞÃŠŒ5Dáb¦›z´Mü!x9æ»½as¦Lr¹½k›ð®‘\'œ·7jÉ€v®0k¤×\r\"rq»°ÄMJi\"¢¬µ<¹—æ#9&š¿•9úŸ­ ¯F+Cõ4tøþ„çašô-Xo±—œa3Zó­8âê,óó\nô{ð[O‘\0ãŽzW+I#hlycpÇ¾I¨ûÔÒŒ»{ž*2kÐ†ÆÜTéR¡â£\nqRÆ…Tq“ŒÓbFÇ‡´ó}w¹†cNEwsÏ•£ÈÀ)Ú¾†«hV1ÚXDÑr¤uíjÄß[y{Ìg^Ejœó³ØëŒlŽT¼k«†v9jš{Sêš}ÎŸ óAd\'åp8ªˆkÐ¦£Ëî˜J÷ÔØÐüLºß):|I\0*ã´6Åò}k¿Õ-Åå¹ÆÝËÍqâ]¦™¬5G—p½94ã ®¾?[…Ã¼øÕ;ï\n°Blå9þð`jéŽ\"*lçúT‰É¨åŽH%1Î»CN¯ÑtÕÑžÌï|+¸i·Ž\0>õÌx‘‰Ô9ï“]\'„d?dpÙû¸ÈäW9â’´Ï^I¯>šýó7	‘œ×CáiÝnÔÁÁÅs¢¶|2ÛoÁc½uVW‹2ƒÔèüWlGÝ$V/‡ú@Èâº\rÖlqÆszÄë€\rrRþFÏsÒíOîSéVV³lÛ\'J²µçËsd£qÅHj6©Ÿ©-¤ê	ãÒ¼«W8LšõMTâÑýÅyF¬~iá@Ò2\"<õ«QjœDõ«qõ©{št\'^´çéÍ4qOäT\0ÑIÞ”täóIÞÜò´†”)ZLž´ài)½žx¦ö¥=i\r0‡]Ì}ªÁô¨JüÜUGrd\0óš‰Î_\"¥+Í&ÞjÌÊÏÁ¦g5iãÓ<œÓ¸­;¥<Gð¥ÙøÒÈÍ4ç51ô¦”¥aÜ…ºÓMOåqG“Çzb¹\0¥©¼ž}i<šä8£­LbÀ¦4d\nDÝ*KCóuœ)öx-%ÃÖŽÔ‚œ}«3A€S”dÒS”zPñÇ¥A\'\'Ò¦cPÉÃ{P„7Ì‚ØÍ<ôª“¶^=ERÔ\r(íg‘7G2öÅ@ÙRAëRé×’Eƒ@ìi—2´²3±Ë7^)åg¸1{Ô#SÁ9P)—gŠÌ&ª*äÈÖþÔ†\r ÕÈÁ¬‚ÇRgš«lQ2ASõ¤:št#±‰æ˜O4rºu8Á—Qý£kw­(j9@Ü:„8ç4£Q‹:ÃŠsE€Ü7ðàdÐ/¡?ÄEanæ›¸÷£•¾·°“÷ÇÖ—ípžKãž•Ï–¤Ý“G(Ú¢#ïŒÓÖTcò°?JçUë#ÈX\r‘ÒŠj––¤bGjLzP\04ýêk\nqàóMj.)¾õ0SæûÞÕëÇB( u ri€áNZh§ŠAcÔ/3÷{T–?¼Ÿçãš±9\rž¹â¯iðm$‡\r¸í¯E³™¢xo8ëÒ›v’zçëVÒ\"«óPÔ$*8\\Tu\rŠHÙCŸJŠI‚†¢i7Oà0¨þuA`Tw%ò@4¥Fry5eHTÚ	 óQÉµW\' ¸ I1u	Œã>µ\'8ü)Ã;º\ZiqÀ£`¿*ûšlCs’GJ|ŸêÁ<qMO–#Ï4JäáØŒœÕ9N›¯jC“ÐúUk‘¶3ÇR–Ã1,I77GŒŽµp}Þ*¥Šîk–$œ7¯J¶>åqÔÜéŽÄ‘ö’ýúUíM”þôûÖEc“Q7µHEFß{Ž”À‚CÐzÓz|Ÿ{Ž4ô¦wêjê*gÆj<Óu¤4àcŠ	æ€x5¡¤ñxzVp<ûÖ†ŒâcÈ\0sMêÔóÇOz”tªñþ<ÔÀñNÂšJLÒnç­\0?½#94ÀÃ»õ4Ó\"r7¯y @ÜÔ.qÖ‘§‡\'÷«ùÔ/q	PÞjrq×š<šBy÷¨šxA#ÍO®sM[ˆIÇš£Üš@N	Î:Òš­ö¨px¹¦ê\0GïAñÚ“æ¥ÒpuC»ŒÆØ?…SVøÉ”}Z±¤Íš°ØÛ€SÇá[ÒøˆžÆQ?¿”qÃb¥Wb6¨,}C\'sŽ~õt>	…dÖ	`¥UwW°åËœv»±sÀ÷!¼‘Tàø­«mDj\ZMÛyˆdT!•GOcT¼:#][QÚÆ	Ï¾•¨‹bÖW&Ç`lØ×VIÊö5JÈã¿²á]+¥Îóx9íRx¼e,[7—É=êÞCxd¹>np;T>1YiÌç˜\ZÚ2njâ{ô\\÷kÓôÃ6Øç\'nÓž•åññŽqÏZôí çH¶é€§\"ž1h‚ž„-®Z	ž’´‹ÁÆ1šY³$\"`Þ9×©¹‡S¹Ulöªÿ\0j|½¹íS2’¸Jm´ÚõŠçÍßž8®P6öG\0…cžzÓšv?ÄMVfÜNO5ÓJ‚¦îg)\\’ 7®îFk¶\r`Ú9`c.\0¹ä\ZáÚ¤_aSˆ¡*¶³.EÉbFÛÓ\'­iiW†U¹çžÕ’­Š•[ÐàÖüºY™·wsÒ4íI.mÑ.N —±úÖ—Œ¿z7\\pÊAy­–§-²lvŸá<¯åW$Õ¯îÀ¢Œ×\rL+½Ñ¬fz\0§·cÚ°¼[7—¥2¯žÇ“V¼8ò¶˜¢Vc“¤ôúW?ã‹ó¬*~àÁÇjæ§í,[z“æš½iÍÈ¦ŠöVˆæ{—,.#Ç÷…zDäI¦?NÂN•y½—ü|ÇÓï×¥H3b{ükÏÅüHÚžÇ–LzÙ95â§ºâæPzî¨\rzþÌg¹\"`¥K`æ«!Ç~µ\"·M\\ƒ¨Ñµé¬bÛòÉê®z}+jÏÄQHÃí(ô®_õ©â”«d~\"¹*ac-M£Pô[ûX¯mXgÌÆF;×›ÝÚµä7E<Q]¿….¼ëy!$’9\0ö¬o\ZC²õ&P\0#ž1ÍsÑnäeÊÒW2ô¦òîÒB	\nyÕè‘ÞÚM	‘gUÀÎÆ8jòôr¬0H5d]É´†;½ëzØiª&3±ÖÝxË˜¬›Aä½\\°Õ-ïË—¹<0<W\0$;½êÅ¬åà\rdð©\"¹Î·ÄúH¸µg\0ù‘÷œW½:`÷µzm¤ŸjÒ”±þ›>•çw‘ùWÒ¨éž‡µiµx1M]\\ì<fFvŒŒW?â±ÿ\03ß“ÿ\0ë­ÿ\0ôi{c°ü_Æ£‚0sŸ ©†•†þ½jø|ãPLÞ³	ç=kGD8¿Jì©¬Y”7;`X·Œ*æ´Cþ“ÏzéüAŸìÑN½wqÖ¹M\r¿ÒµqQø´K±ÿ\0Pž˜«b©éÇ6ëÏ®•Á-ÍÖÀj7©)P33V Z>}\ry>ª>ö}y¯WÖ?ãÎNùí^Sªrd9ïM\rñU¨¾õT‹¯×Ö®CÛ5ÜÑlXid9ÕëN=?•@\ríJx4Qß\'¥:qÚ“4à)üÔ€CÖ‚3HÝh\"D3¡ÅñŠR0i½1ˆzTYæŸ)Â\Z¤d9âª$H¶?:3TüÂ&æŸZ¢,[¤ÅU±\'žiDÍõ§`±gb«\n<â:ri‹$RcŠ¯ç6zÒ‰±8Ð Æ—Ï sŠLE¨|ò}èb€%?J…Ç½:SYóé@åÏµ>Ïï¥2OºqÖŸi÷\'±Q.RçƒMàœŠwn˜¬ÙcGJrži(šJ{TO×šx9Ù:ñBB\ZJá~n:ÕÐp>•Ns—5HÚl±\"m™7Øã˜í<TQr8§·¡¡¡®»ç½f¸Á­;®Aý+5ÅTE&FZJyÓÖ¨‘­Ò£©OJˆŠ`!£qÏJ\r(ÐÇJa©\0â£#š\03Å4Ó±Í! “H)M%ËÖ´,OÎ:Vzžjý‰ù€¤ÀÚ^”áM Å> 4†”ÐhÐÜŠSÖ‘¨”ßz¢jYÇÍô¨…RØšQÖ\Zpö¦!Vž9Å4àiíAUWî­\\Š4Éòœç$b³­¤ßôu­¦f„g±\0\ZífÌœqÒ¨^Cæ!µhy¿&8¨UBŒõõÍ+´\Z3ž}5³Œ7&”éÎ©‡ÉÒ·˜nê@÷§¯\0\02i¶\Z¦Í– ÿ\0ÕPµ¼„0+Ð}k¢•WiÏ§&¢ò“æ—0Xç\0åqŽ*%ù WF!B~µÚ n23O˜,a¬NÌ3Ó¸§ËGt•®Ö£‚1QÜ[y n\'‹ŠÇ0ñ± ª×1/×ÚºY4ðÄá¸JëOfWEo”¯$\nR’cHá¬ŽÙ.§ÏßÒ®Œ¿\Z§\n¹¹ƒ‘Á«ßòÄœã5Ë=Î•°ðÀ2t¨œeÍJœã=j#Ì\nŒÏÌF*&<Ó×’j6äý(Ø›ŠkôâœÂ˜ÇÒ˜Û½BzóR¹ùx¨ÏZbœQÚÒP‡Z½£ôÕãµPZ¿£s¨§²“š¤&uJqŒ\Zql{Ô!°)æ‚LýKS’ÖBPô8¬‰5»¦ÝŒtæxþô_Ò²K{ÓVrMBå‡2Z®%?ÆEW-L-Í1\Zgþñ¦y­œ–Ïj‡~N3HM\'óvw˜¤Þvã$Žœš‡u¸ 	üÃê:7ðy8ªá©Aæš@YYÜWIà§Î­ƒÎPŒú×*‡ž+¥ðS¬.Ð{ôé[SÜ‰j‰äL_Üç]?Ô}®iÔ`	=+œœíK¥È8zê¼‚;é^äŽ•èT»9–åí\n4’æácošL†ã=jÍ†ˆú|w¬ff§éXž•šöèÆäpÄQW´ùnç½†I™ðŒHn«ô®I)_CEægÅÏ†.\0È+&A¨üXi\ZqÇðóQ-òE¥ÝY´dù’nßžMâœNç\\ƒŽ¢µŠ´•É{Ú}ÓÛŠôÍ	·iV§9Àâ¼Ñ@\nO§Zôgûßùj±Ÿ\nb¦pzðÛªÏüX¬×b­âU1ë\0r7u¬f95ÓA^‰èÅÏùü)J3[ØÏqùã‘øRc<úPZZ,§áNñL<Ò¯Š@NÏ5L‰®®â…S–öœ§Ïàzî|!¤‹{_µN34¹Æ„zV‰¨Fæ”ÕÙÑÇ‹[Í…X“w^õæºÅ×Úï¤“¨É®·Å÷âÞÙ-¢$;\rÍÏZáó\\¸H6ùÙ¥Gd1óž)çJ	ÏN´!çè­x™:˜\ZõlØ!ÛÒ.ƒ½ym±ýú·¡ê6 51Õ¢ s^~-j™µ7¡å·À­äÀõÝÍV U­@§ÏìqU€È®ê_1žãÀ=©Q\'»…zäÕ,i¹°zW£iéýÕ#SZ·³CŒy·<Í=zŽÞ•i4ýbØÛjÓ!à1ÊñŠ89«Œ”£q4Ó±Øx$³LùèÉô¾;\\Çž4ï!\nò€pQMñÉÿ\0VŽÃ t¯5¿ßèt}“fÛœþtÁ*çŠÑÓ ŽkØÄã1“Èõ®³^Ñ­×N)m\Z‚àvóù×dë(4™’ÎXžµ4g‘Ç|ÕXú®8íV!å€ð+WµÉ¶¶=#Aùô…r1ÛŠâµÕ+ªKÓž¤Wo¡/JÀ>ëˆ×:œ¤tí^uâ³yhŽÁÄi9# ¬\Zø˜)¾~¼V·ƒÕ—w§OëYž5F[ˆä##$nì*£¥a[C­\r€¿5š	Í_ÑÆûøÀóŸA]µ>eÎï[\0édwÚ#Ò¸í¿ÒS·9®ÏW\'û7çÇ#;‡Ó¥qº^Eçüóø×\rSF²=/LæÝztxV~—þ qØV€®în¶LzyéQ½AFv­Å£ŸöN>µäÚ¯Lzæ½_Yÿ\0\'ü«Ê5Núf„4dGÖ­DyR.•rµ4[çšRy¦‘J8¨ÇƒIžiØÈ¦¿bJhåºÓ³š\0æÆ7-Ö‘zÒ·Þ¥i€Òy¦šVÐ}èßv³Ÿ†5£/Ý¬çûÆœt%‰š3@ V„†isHihA¤ò(ÎE\0)4„ñKI@\04¤ÓGZ=èàÐM6Š\0\\ÑÎ))E\05þí>Óÿ\0ÕL|mïRYã>Õ/b‘hzRçš\\Òã\"³(aŒR‘Ï™¦—­6AúRŽ¾ôŒrÔlJ£p~Æ¯7CYóýüÕ!í~aOœa¸¦Øœu§ÝÞñÈÅ&k=ªýÁ<ÕëT‰ddsÅ7ÓÍ&*„4Ž*&Ôì8¨[­0#4ªFh#š\0æ€%^”ÆÔ‹÷MFzÐOZi§ž”ÌP\ZJSÖÐŽkBÄá‡Uõ«ö_|c¿I÷E?µFŸtT€qP\0qHM-%\01ºÓZ”õô¤n”§q÷³QT·qQU­„(§SE-\08SÇZj‘J:RÕíe0;Ö½ÇË´/¥sæR´.sÖµ­9P£ é]ÖÐÁ›‘´zÓòÜT‘ZŒIÎ\r+\'Û“ÁïV\n ¾õIdUœT»û“šVÉ¥“\'ð4Á÷¥DÌIÎiÁð§ çµ\r\0¥5Ÿ\'žµÉó{:t¬ç°¢À=›ÏJœl9ÏÐT36\09ÿ\0ëSA,3EßÏµCpÃÉ€TÒ18ôª×Rb\'ò¤j–QÀÇ>äŽò\Z°È‡8¨-O7 àŸ39©PtÇ×4·7ŽÅ€À·œTG£zÔ±àÉô*ÈnØ8¨Åà{š¸\'8ç9¨dê}©ŒaéP·CR”ÃÒ˜ŠÏÀúTf¤j©ˆBx¤Í\rÒ“½uÉ5Iÿ\0Õãµg÷«ú9\"ù0yÚj3£7ò¤)zŽh$æõÜ‰Ôžùæ±ØÖÇˆ±æC‚sÎ}+©¡Œ\'Šnh4ÓL@M&x¤4gŠ-¦ÑLf€i(hXÏ>ÕÓx$Ÿí¤õè3Ò¹x5Óx)˜k1ó€­©îD¶4gŒ¾·rª>bØ»M*$°Ñ/­®ˆ†è©dp}q×@®·xIþ>>µ±.©ö«ot‹)^Q›ªŸ­z.›œ99¬Çøæ½¸ ˜ØãÒ´|\'Áª]Ïò²3Ÿ^Õ‹i*ÙBÎG†ç:éT’(	°Ï¢Te&ìW:k\Z]Þ¨fo)ä8Ínxä¤)”{—Ëô¬+9óŽœŒv÷¨õ©®æón$yðzVžÉ¹.È\\êÄ¤ç¥z/„•ŽÄôé^}nË¼oå{×Gk¯Üéð,\Z|À@:^E,U9N6A	$exµ1­L1Žr+ªþ«q%åß3ïväœb©Ç­mB.0I‘7vEŽx§c¯q@ëOÇ±BñÍ)£­<t¥p\"\nsR¢Òž:cšzsC`tÐžð›¹€ò£lé]ÝÄV3\0û‹êkˆÐõi¬¥DryV?#}iºæ­=õËy»c9\\{WVœêO]ŽˆÉ$RÕ/\Zêåäç5@Óä9¨‰Áâ»iÁEYJWÖ”uÌç½;?/¥ˆ¹<G§ÐŒW¨Øø”BNGÉŽ:šòÈ	Þ½†k¹±ñZé«°\"Œ\rÆ1\\8¸6•©É#ŒÕ?ä#?ûÕP*{é|ë™d€Ç#5[85ÕI5D÷\'Œò>µÝøBõ\Zi!ÆGîÉíìkCÈÇ§¦ÜùSzw¨¯Ož6JÌìõý\n-H~ótr§Ýeëô5„¥óI?îóÎÞµÓiú„näºˆ˜	GáÞ–}wN‡$¤Ä¯U<s^ruiû¨Þñ–¤º}œVvÅT‰ŽzWâ[Ñw|Êœ¢}*î³â).“Ë‹ƒøGõ®eŸql’s[aèË›žb”´ÐšÑöL‡=\rz>›u¥§)lTbD¯1^¹¿ ßg?–Ýcõ­q¹•Ñ·,kwœÉ§È‰»æ*Ý&á§ŽàItáŠžt®†=rØ¶Û¤ÚàraÃ)¨î|Ae³s“¸u®_kU.S_wrÕä«c§±<d¼îéÌ×\r!ç&¯êÚ¼·Ìw\0xQØVJÉÏÖ·ÃÒq÷™œßDnørôZ]£0ù=kªÕôè¯í™æFR:gÚ¼ú9¶Ÿzê´=eá„#’ 9RØ#ýßZœE)_š#Œ—SŸŸÃ×ñI¶=Ž¿ÂMoøC6ÍæÊIsíÞ¶WUÓŸ´‰‘’y&¨ê> ¶Š2¶û·žŽzVn­I®[h­Pxží!¶)#\'?…s\Z[¤)Î3ëU¯¯^êbÌÙÉëRé˜óÐþ<VôéòAÜ—+»Ÿ£àÛþ´Eeè§ý~™­AÒ¼¹îtDJªZúTfk?ñäÿ\0y>¦s¼û×«ëûã¸Ç5å\Z©Ý»ŒsÅhÆŒóW`ÅQO½Í]·<ûTKsE±cµ\n~aÏz\0ô¥5\09‡ÁËsëÅIÚšG4Ã¨L÷¤Ö•)Xß­\nr)‹”ÀF4ÓÒ”ÒZ@E/Ý5žçæ5£7	YïÔÕÅ’ÆæŽ¦ŠX…Í©- @ëA Ó§§4ÒiÆ›@\0ëE\'z\r\0(¥)½éG€Š^””\n\0GãÞŸfpN;S¥IiO¥K\Z-sšpâ›ÞY–)>¼\Z	£Q@ÄïMn\r?Ó\\sG¨±â©N>qŠ¼ÃŠ­7Z¤H°|¿Î¤“’M>ÞÒIaV”“ÆÑ÷©Œ	ö4ØŠ—\n@Ï8öª.z¿p>^+=ºóN Æ\ZNÔ¦“Õ#t¨Z˜Ž*Ö˜\rlç“J´Ó@€\'_»ÇZ‡_­=~í5ºóÁ¤\r4Ó!é@\r=i)M6˜Z½eËUW¬xzL\r¨þè©3Lˆ|£<Sêâô¥¤4ŽÖšÇšsõâ˜â•n:þ5K?J„U¡´‹ïKš\0p)Âš)â€=\Z4\r ßžy&µ¬øÁìzUX .ÜgÉíZ0Œ\n9·zî9ä:Y§“UšL±ÇQZ/jDm#Ž‹ÍgD8\'¨=µ$+C’>zY·`-\nzHËž½è`)\0c“Í,¤õÅ!„±àT¦-±“C¥uîïCÌUºƒíI‚c ¦Êe4h\\Ê©#éïNŠ\\Æ@?W¾RÑåFy¢%;\0â„+M‚GUÙÀŽLŽªpA©YräžƒƒY÷8rãàÇÒ³’)Õ›gÎ=‹ž*ÈªÖC‰3ÇÎqV‡Zæ‘Ð‰T®îsÒ¡OõnOSS®3œt¨sò5AD`|ƒõ¨†5:ýÒ*äš€FFW®z=jFt5B ?tÔmÖ¤#Š¸j\0kRHÝ)3ÍUý?o¨ùzžÕŸõéWôa›ßÂ­:4íJGÕ<SÏCšL“›ñ	ÌÐ:Î±šµµÌý¢=Ã€+!ÈíM‰©´âri¤ô ÑKÏ¥&¡ \0Ñ@Sé@SžA¦@4»O¥(Sž†€$WEáÙ¬BÇ±Çë\\èFÇÝ5¯£\\µô3mÎÖéZÁÙ“$ìt: d×¯CaûÓKbºJÆÇÅ®š…ì6z‹.&Š^°:Š¡ƒ/š\'q©Xý\ZZôéWŠ™É*wfBIÇ<ÒoÍlÅàûÖMãRÓ±Óýp§¯ƒu\rÇ\ZŽšqÜÌiíáÜŸfÌÔ1Àæ·[Á÷Ê9ÔtãŽŸ½Ð|©8%/tö“ûÑþ5J½>áìÙ‚ãëJÄâ·WÁz¦8¼ÓGÖa@ð~ª_ëO$ÓaÍÚ›êŒçÛ?Z‰¾_¥tðˆêŒáVçOç€L¸¦êþr§™bsÆï8`\ZN´:0P}N^{Ÿ-¾æ=jüÏ=°ž-¢!É$ãð­Ïêü©¦±sæŒõÍ2/	jÊ‡Ë¸·t•Ma\Zîú³GM[C-”ð¤°íë[á­P \'ìäuÈREá½NEù>ÎØáúWJ«æ^Í™;ŽiKtâµ[Ãz²ãrAÈÈùÇ4\rk\0·îb8ì4{XwFf!4­Éæ´×ÃÚ¶2°!Ï£f“ûVæØd{âi\rîŒÎ9¨˜õ­GÑ5UÆë\\®sMmVÎ>ÆÝ3È4ÕH÷+2×üšzœ~u|èz²œ5„ })?±µLÿ\0ÇœŸLSö±î.VTREIæ€ëVŽªƒÍŒÙúTgLÔCÙKòõùzRç‹ê>VŠ®3QéW\r…ðûö²ÿ\0ß4‡MÔÙLéòõ¦§ÔYR3ÇçVRL\nS§_«ÖS};Ò>üçýl»MÊ/¨r´OÓÆ2§\rëLžá¤|³O­1l¯öîûå}B\Z\ZÊû?ñåqë•èÒdnäçÞ¢-R=µÞ?ãÖos¶˜Ö—cþ]fãýš¤ÐY2\0	=‡j|wkŽ¸Í#[Oåû,¥m9Z[+ €iõ#ŠÊ¤ùv*¾æ’]+~´Ö˜“ž}ë6ÞÖê7É†@\\µp¤§¤RqþÍjZ±É4<·9¨Ùù¡VSÖ	GÕi…\\ŸõRÿ\0ß&´V!Üy“Ô±ÎTäšªUñþ­ÿ\0*P‘ÿ\0ï“MÙ‹Ró]933}MBó=I¨lr­øŠaÝ»XzTòÄwdêÙaÍii­ûõÇ\\ÖR’ ñíZZj»N¼£’qQ;(Ž)Üõÿ\0£¥k•‹áæÍ°<ñë[K^%Oˆìˆ§¥E\'J”ô¨¤¬Æfjøûlæ¼ŸUÎ$ÈÆyÅz¾´qa&}8ÅyF«÷\\÷¦ŠF4gš¹múU(ÇÌqW­ÇAYÉjh¶,\nyéL\0ç¥)5\08ž)½éxÚ“©úS`;R¨Èæš)Â<7zQHO9¥ t<Ó·Jq5!‘M÷OÒ³ß­_”üµAºÕD†0Ò\ZZCéV!GJu1zÓûPJ=èíI@€õ ô úÑ@	IEÀZQH)GZài{RRŽ´\0×éRÙž¼TRô©lÈõ©{‹C­;4Ñ÷©ç¥fXÆ¡zR·JA@\0¦=HzÓ$éLž•Fèœ‘WºŠ¯,;ÎGZh“SG€<cæ ôàÕ	~óB\Zµ§]}rªÊ0zÔ#2ªN@4jÎ¹\"©7$ÕÛŸJ¢ÝjÑ,i¦Ž´ãMïTH•u©J…ºÐ1‡­(¤\'Ú€x¤£îÓ­H¿v£n´Ä!¦šq¦Hb\ZCA¤i€å«¶?ë9ïÞ©\n¹d@`qÐñïCv?¸*NÕ_tSÅfÆ)¦ž”ãÒšzPoÉ¦·½9úñM4À«?=j9©§ëPçškaJ9¤¥^´ÀróNZhà(ÙDdg½^°Eó€ÀãœúT@\rÃ¯Yðäà÷®Ó™Ž¼\\FqœX±Fì‹€\0Æy®•ÂˆÈ=¬UŒ.qêhC#Ú0pMH¨2}qR¢œ·­4‚Ì{P\" I9Í0e·uÇZµ-ŽíŸÒ¤XFIèGj@Œ½§Œñžô÷¶ž•uÓwÂ•—\n=(Ÿ<Acv¨–Tíçæ®\\œS-P»ÊÂ<u´Äc;eÈ9È5Fò6]þZÄÊ·šÕDŒJ{dÕ;¸ØÙ‘ò‘Q\'Ø´pvgýg®òM[N¢ªÚlòwœûU¡÷†+šFè’CÁÇz‡ø9©¶õïPãZ‚ˆú\n…ºTåy9¨Ørh8g&¥qÅFßr˜ŠõŠ›™¨˜S6ÚsS[ƒLƒZ\Z(ÅÐ>Æ³kSEæçè)ì„n¯«ßNÑ*íêN*qÒ¨_Ò¨¥2L»Ýû·}ïcÍQba×Ò¶¦E#Ò³®mAŒà÷´†SlÚ˜W\'4÷”ô&¢<wÅ0°ÿ\02A·§¥FÁæŸ\'*\r\0\rŠp\rž´åëšzŠDa¹Í<F{šSÀéH,Zž$ç¯ƒ­J¾ô&öîÑ·ÊìJ³’1 ÈÜÕD<U˜zæ´ŒÙ--ÍÝ1|Éb9F zôØ<=bð©X²}W˜è®î`x`qé^Û§ÉÑ!’G$æ©ÍØ›$d\rYÌœ÷+Í9<3hÇýZÜ×F¸SËc½O<»…‘ÌÚ³œ üªOøFm?¸£\'œ\nèÈ.(ç}ÂÈç…íLã¿JCá›BÃåÇlŠéFJPÓö’î+#š°$“IêIæøVÏ$ª08úZéÔs@Qš\\ï¸ô9sáKNqœÏZið­°b2ÀvÁ®´*àö¦•J=¤»…‘ÊŸ\n[€WæÇÖ•|-k†ÃÊè¡u!zÒàQí%Ü,ŽWþ‹|“™¹ÈsMƒa\r%ÁlðK×W¶€ªO4ý£#	ÀÄ“qqÇmæ•|+oøùºç¶ã]†Å& i!r£•>ˆçý\"ïŒ:TkáeUââéIþë×a°ö¥XÁQíXãG…ãw]^ÀùœÐÞˆ·W€ú™+±)†  ÍÒH9QÅFÇîèúý(_¢©yx tRùü«³)óqŠw–Ö]Ã•CxT•é—™íPÞr?ä!v?à]+µŒÑå‚iûY*8³áÛµM©qåôÛ»¯áJ¾¹ÉÅý×°Ü+³1®zS¼¡šV¨â„çe.o¦Ýœã æš|3p¼ËŒyÅwb0;Ò\0úQíd¨àäðÅÖHûl…»ßëLo\n\\çæ¼|ýzW~Tw Äâk åGž]¦?Ó˜sÓ¨©SÃWe€:b»Ï,{ð1Kå(éGµr£€>¿ç*´_·?h§u®ûÊh1ƒÛŸZ~ÚBqG·†¯€\'Ï€@œÔrxoP+óMÝÅz9‰M!sÐQíä>Ty¼ž¾,rÖ§Ô”ëH|9|ØÚãýÊô“‘Ï4Ó>QÅ?¬H\\¨ócá{ÂÄmÁÂS­ü!z´[N	¯GH@<TžVjN¼˜ùQÎXX<1ŒqÉ«‚	ðÖ¿–=&ÜV-Ü£%¢p½*VÁÊšÝØ\rW¹Œl#ñ rºÆ~Ã!ÇËŒ:W•jiÃ¨®\0×§ëR¡£Ü3\\sÚ¢º>´l4r6¶3JÜŸZØµ±Xù#5¦#ÐqHE\'¹i»X£sÙÓ¥PúVÛŒ£gÒ²%@®G=sQa¡©§ƒN<\niäÒcóJ§šC×šQÖzÒƒAûÆõ “M4ìóM=h98Ö{rÇëZÖyÆxªŽ¢ÓÅ!¥>Ô„U*ô§\njŽ)ÿ\0…@¤=h \0Ò\Z\\R\Z\0CE-ÀÚŠQ@ð(úÒ÷ É÷j[!Éÿ\09¨¤áy©,‰©e\"ØÓýi¸æ—\ZÈ±\r ëíA÷£µP\nj9*AÖ™! ]DŽ)1É¡3ŠSLBcŠ†B@©IÀúT2ž(°.	#ŠªFjä½MTaÏh– Œ1NiÒ’´JèD\'¥BÕ;p*»õ©ÜC\r÷ ô¥ZJ¿v£~µ\"ô¨Ú„7¥!ëA¤ b´”¦’€p«–Ÿ|U5àóVìÇïÖ†ìGä(5_tv©EfÔRN#ô¦ž”i\ZœÔ‡ŠS¸¿z„sSÜTê’(¥‚Ž”Ä?¥;ëMœ9æ€>šþÁŽ¾@òcœ‘É¨¢Ó%9s¦:—êEz„v12£ð¦C!$†?Z×Ú3SÌ“me’FCvüê€Ñ/”68€çoJõQ¤¨89;b­&‡oµŸ$rÈý£‰âÏgåŸLËÓs&3R\r:X—|”vâ½†ãCŽ>•ÐÖ1òíÉ<‚¹ý°r3Êb³”–)6·9ÇZØH¡¶ŸzõDÐ·ÉåàtùjOøGâ\'”\\õÎ){Qò3È&°1Ä\\çIÅ4ZKqn<»vÀàœw¯d_\0qåÆÀîÓfðù\nGõã\0Óö¡ÈÏ];n~_¯-£$›‘Ÿ¥{$~l…a¯Ý¢OV!#É8QÍ/jŒñK‹IC`FÒ (®wUY–”«GÁÅ}oáˆŒŽpªä`¶qUõÛÝi·Q,pyÃ¶IÎ?JN¢V|“aŸ-ÁÆNjÇñ®)ÂÍìäš ˜äeÈúÓqó¯^µœµgDI\0ÔC9>õ3p¯éUó†_z‘ŠÝêaÇ¸¤€…‡*Ã9¨œdS³E1À50Tl´WqÍ1úÔ®0j7ëTsZš/ü|™Ç5”8­=þ>NFÒj™Ú¹ô¬f—Ì»bz-ZÔ®PðzÖ\"\\\'ÉëEÉZšÉUZQUÚvn3ßµ4½+•bWqž*\'ÁÒnæ.ù\0Î)\\,FÊz—ƒš»å\01Ö‘¢”s)ž%ÇM(¸àíS¼`7(ôî‚ÄbnxRiâfì´à)i\\`%sØQö–SÊ‚?•/jT@TŸzwKÆ\rÊpjt½oî¯½SqƒBš\0Ü°ÕÈUÎ;ó].™ãÛB\Z3Ò¸4l{Õ„›uª¸š=RßâãÞGAÉ\"­CãË ÔÄKdþå‘Nsœõ­]>L²ñžô7a(¦z\"xÇR™säÄ¸<Sê€¶Øë\\ê7§næ²u\r=š7Šõs}MH<]~1þ>µÎî£4{Aû4tÃÆ½­¡Æ1OOÝ¨âÒŽžõË†â€ÄQíìÑÕ?.è‘c½\'ü&—\0ô8óëšåËQ»4{@öhêOç$fÍr9¦ÅûÔ3Ân+\rÏjPÞÔs‡²Gd|Z1þ­?.´¿ð•¦H(¹ëŒ+Œ\'Ò—<Söˆ^Íšx±T_¡§Â_så®>œW@\'éÒ†”¹Ð{3¶_Æ<¾½†y©‡‹m¶çËÆ}Íp%sùÒ•÷§ÎƒÙêø¾Ìž>}A§ÿ\0ÂYgÿ\0<Ïç^}‚:qHA\'ž”s ög¡Ù²«‚=E1¼_jÁ¯>ü8¤#ó£ öG¡KâË£nðØÎÜSíüWh‚2O8#¥yÆONÞ”‡’A\0ÑÎƒÙ–|Ud£8ã¾iâ«N£FkÎ3““FN”s öG£Çâ«&o˜ŸÃ­Xoiÿ\0ÞoÀW˜g‚=hÝŽ2hçBöG§/‰tý¼ÈÙúSÇ‰tàÜÈ*òÃ‚iKsŸÖŸ2fzŸü$zn3æ6})Ëâ4Ÿõ¯éô¯*VÇ¿­àx>†ŽdÍž©ý¿§—ÏÂ÷$S×]ÓÎ|F=EyFN2M(oSG:fÏY\Zæ´9NyÖÖì›¯\\ö¯\'¼iwüÝhæBölõƒ­Øc‰õ§.±bÃ‰†G^K¸ç†#×ž&p~ö1G2fÏWMVÔ·2\0¾½jQ©[÷ø¯\'[¹—|ÔÂþ|Þ\Z9{6zƒêVùáúR&¥[êkÌúe?|ãÒ¬hJßlcµH9é\rN\"«Ü^Å$là€;šóöÔ&#Füê)5	¶‘½†}4¹(2}T:Ü?ÊH\'½eÈŒ§<uéQßÍ,‘’ŽAëÍs÷“\"fù‡?ZLZ7ÙNqŒý9¨]¶ž}k™]Ff?|þuf+†rÄÒz\r#e¥\\cƒY÷„ƒšyõæšç&¦ã°¼S­?µ0pÔ€GûÔ£‘Hü·áíHc{Ò¼ÓûÓO&€Šcu§ãŠië@Î~ST[©«óýÓYíÉªŽ¤±\Z’”ÓjÉ½)ÔÕ¥¤E¥\0RRö¢˜\r u¥éI@ô\"û^Õ`Ó´¨~Ñ{6ï.=ê¹Ú¥,@è	ë]xøGãúäÜü]zí‡,>ø*ÿ\0X’Ú×[¿µœKÃ@°J«!H¶ùÈ,}òF+Æ¿áck¿ð–khêbûwÚ¿³þÝ\'—åù›¼¯M¸ù~î1Ûµ\0sZæ‘} ê³éº¬g½ƒo™õ}»”0åI‚;Õ^ÁñSÄ:Š¾iºÍµ¶™k¯Üß´C‘Ér±ªÊƒ{\0©Ú‡‘ŽWÚ¼|Pd?/55€ÆyÍl?ƒ|Q´ÿ\0Å9¬ÿ\0à¿üMU¸ÑµM\'Ëþ×Ó¯lL¹òþÓE¿Î7œd~b¦[„üÔàx¨ÇÞÇµkÙxs[¿µK›R¹¶|í–Wtl0yVe™/Ö“½hË¡jñê1iòéWé}*ïŽÙ­ÜHëÏ!q’>SÏ±ô¦jz>¥¥¿µ4ëË/7;>ÑG¿Î7œd~tÄSÉ:óÚ¤ÅhZøo\\Ô-’êÃFÔ®mß;%†ÖGFÁÁÁE02@ ÖêøCÄ¸çÃºÇþKÿ\0ÄÖ-ÌR[Ï$¼SFÅ7R¬¬ ô ö DGPÌ03Zšf©êÞgöVy{åcÌû<\r.ÌçÚ3ƒùR`ëê2éÑi:„—ñ&ù-–ÙÌ¨¼rWæ^qÜzÓž—¡ªÏ]«á{O³’ëPÐõK[TÆù¦´‘r@b09 ~5ÎHyëT„À\Zs¿ËÏÒ®é\Z.«¬ù¿Øúeõÿ\0•3ì¶ï.ÌçÚ3ƒ¡­àŸöðÆ»ûËÿ\0ÄÖ—²±\'<zsPHy©‰â óJÀ1©§9ÿ\0õRšÐÑò)œÓÓ¥{oìõðæÓÄ.ž&Ôf‚âÖÎê[gÓg´¤ß¹bIÇ@q´ýßÉÅi¿üq©iÖ·ÖZ\'›kuOý®ÜŒS‚ùu®KÄZ.¡áÝbãKÖmþÏo·Ì‹z¾ÝÊr¤ƒÃÁ¯_øñjî×Æz~Ÿ£YÏ¥ØxkP’	-­oLq^ÇŠ¡\nª€«ˆÈ\0î\09ü}ÿ\0ÂúwÆ¯\0éºÜV¶š¥wpf–åmÖâVXÌ‘lgù	\nyé´qš\0ù74†šõÏ~ð½ÍÜZÿ\0Š<A¢À–·ÂÚF¢\"ÄêbÀÇŸ”ò}\09¡ð¿ÆðŽwû#þ%_eûoŸö˜Ôìß»nýßwœc>ÕËÙýñí_nøÛìŸðªµïìÏ#ìØ·gû><¯/Èm»1ÆÜcãñ¡ýà \rè~à©j~à©‡JÍ \nLñÅ.i(6ëHÜS›­#t \nwjÖ§¸ÅAÞ©QGj(¦!Ê8§\nhëNµïè ÚÊNiH#5~š\0É÷ª%ÄËºyè¡Y£Ç\'Ò­E\Z4KûÁ´Õ—PËƒBF¨¸\0SVAå(8?\ZCxûUš3H|£’=©ø£4P;\nM”P1i( PQ’¸9î\r2éÌV“:®J¡ zñR\"ª‘@úSn\0kiAèPƒùPKZÜüï<Œ1ºg\'þú5šØóT÷­«èÄ~`Àÿ\0XüŽ‡æ5‹ põ¡–¶ã11¨PdsRIÂzjczŠãŠºšžL>ÕÆÒh@Fã\"£»S¿§j‚N‡	ÓïRZcuÍ1Ü|ÜTRjfûÕŸz˜‘Íiè¹¹ö¬ÓÁ­-+õ\0Š¤Ä;Y$\"ç¥bçkcZä€9¥b÷¡‚š3“IKÚ¤¡EKmþ¸zâ¡¦·¾¸ \rM§Å!éS¸ÊÓ}ê4¼ž:TXÅ1( Rö¦Ž*hW(*ˆt©í¹CÅ  ˜cð¨êÜëòäôªÄS\0)èM0\npéM1#~Õ¯lãË‡sÞ±àÕëyÆyéC\ZÜîâbP7¨ÍH\ZªZ¶èTàô«¥s7©²ÔžiçÞ›ÚEÇaÙ=©wS:PzÒ¸Çn¥ÝQõ¥þtî+ÝíK»ŠŽŽô\\	7b”5GFx¢áb]ü”ø¨ÎsKŠ.”¾j,â—µ+…‰­©‚ƒ×4î÷qIši9b•ÇaAÍ&ïn´wâ‚(¸X8Ïµ&9âŒ`QEÂÁIŠu\\V#\"“?¥?wâŸ0ìF;ÐsëRbQÍqXa&ŒÓÈæ­Áb<ñšPÔí¾”l”s†ïãÖ6úôâƒ\"¥Á`Í*¾i¥0Ehæ«síRoÈÅDcühæ¸X—~i¬ØÎi\r\r…„‘¾S\\ö²¸-ØâºÈïXZØù3ýj õ&[pžjí©9þUÁ#Þ¯Ø±\0VŒÏ¡ ËÍ#RƒHÝj@^ÔƒïRž”zP[¯«9¤n¼S…!ïFê;ñIÞ\nFDOåRŸ»QšE8Ìf³ÏåZSÝšÌ=yª‰CHh<šNÕL‘ËÒ–‘zP8ÀSGz;RPçÖ“½(ëA 4”´”õ¯Ç?ù%šßý°ÿ\0Ññ×ÉzWÕž1¼ƒâ\'Ã-b/?öŒ,p¨Á‡.²Fì?y·¢ó_1d_ocy?ñ2ûOØüëþ·vÍ»³½Æsz`PíJ+Ñ¼gðìx[áÞ™ªê\"ær{¿\"âÝ¥G‰ù¤´uÂ)ûÇ©ü4ÿ\0fŸù¯¿ì\'þŠÛhûx§Eÿ\0¿Kÿ\0Æ+{Ç>·Ôü\0n<M\Z^ë\Z^™,‚tvEù@»\0»AaÒ¼—ö™ÿ\0‘æÇþÁ±ÿ\0èÙkÖáÿ\0’Ÿö.ý%©’Ð¤|·˜û×Ôÿ\0?ä˜èßöÛÿ\0GI_+çõOÁOù&Z7ý¶ÿ\0ÑÒVe™‘ø›Âšž/Ä&ÓoÌÚK}‰]¸Àá›ýùäó×ÐUÿ\0éº?‹<úÝÕ£ÈÐé’ÞYvFˆ¼AÆB¶	ùWƒ‘Åyw‡Çüc×‰ÿ\0ì\"Ÿú½z¯üÑ/û—¿öÚ6øNÖÿ\0èöwIæ[Ü^Ã©’7+8dr8=«é½sÃú®ŸákM/áíÍ¶”ðO»7È¾YÞXe•ÎK0?×µ|×à_ù¼=ÿ\0aýµíŸ´²ÿ\0°Šè©i 5¼+¥üC¶×m¥ñ½¦Ýék»Î†ÀvùH\\)‹¨é^mûBøwKÑï´ËÍ6×É¹Ôd¹šéüÆo1ò‡8$Ë7Lu¯2Ð´›ÝsS‡NÒáóï&ÝåÇ¹Wv±åˆ=j÷Š<\'­x_ìßÛ–_eûNï+÷¨û¶ã?tœ}á×Ö˜?…^\"Õ4oéözm×“o¨ÞÛCtžZ·˜»ñŒHá›¦:×¿x¾ëÃž½—Å×¶/|Ëe$¶ìY˜mÈùYÂˆ‡#ž=Í|ÛàAÿ\0Ï‡ì#mÿ\0£V½Çö”ÿ\0‘ÇþÂQÿ\0è©hO…—S|Gøy©Áã7þÑ‰ïŒ,¸åbu»ÛÑ¹ÿ\0ëWÌ>8³ƒMñŽ»ee—mm<1&KmE‘‚ŒžO\0u¨/>íeÉ‘×ëZFÈLõO–5Ô?¶ÿ\0áÕì4ÝžGÚ¾Ô¼Ìù›6æ7é‡ôê:ö÷¯\0i¬µ™¤ñ®»¦ê:q·eŽ+d\nÂ]Ë†8‰8Úuî8¨³ÿ\0óŸú•¿öÒ¼cöSlüCÔqÿ\0@©?ôt5L“#öðÞ‘á/YØèŸdµ’Á\'dó^L¹’@NX“ÑGå^\\Ç5ìßµwü”M;þÁQÿ\0èé«Å i`ÒÀæšXP,FÜWÕ²‘ÏÃÍGþÂ²è˜käÍÞ•ô¿ì³â×D—Ã—›5«ÍBYà·òœïA\nw´«~	íô¦;Ý‡†4}{QøÕ}ªÙù÷zT·SÙ¿šéå>nNp¤Ê/=+Ø?gsŸƒ¾?õñÿ\0¥WÎ_¼âOˆ×?hÓöoê·Ù¿¾Œùû¦ã£|¹óïc¯±¯¡<	{oð·á‡Ž¤þË’9e†Ó>å–EºÝÕyÏOÆ‹Œ‹šúÓq@ë@l¯ü›°ÿ\0±Wÿ\0m+ã»PI«ìAÿ\0&ê?ìUÿ\0ÛJøâÓïzRb:q´v©{qQA÷KPõ\0\"ŒbŠ;R°¿i\\sM=)Œ©sÅW©îºT)¡\n)G¶)(<\Z`9}éÀS@æž(ô+µB	ÞÕ7jnÑ¸ŸZ¤L®*ôæ–\nQHh1E-!  ¢Gj\0(¢@¥å<tÂi´Ý)Ê\"“L½O¨Òo`¹Üêž)Ò4Üù×Jì½V/˜ŠàüCñWdnšUª€Àòç#ßå×\ZÊß«¦±®ï¡çŽ•¯\"D»²®«(yhêK~u‹&„žµbyËäfª}ç9¬¤ŠB»f&ö8üj8‡+ž¹¥“å‹Üž)¨yÕ”|çŠ†_õy<Ô’r\r@î2ªzæ\nãê?-I)ùÿ\0¥C+qB£¥!)ùx¤\'Šb!aê	~÷Ö¦“—¨%??ò¦€fsZš//^•—Zº\0ËÔñÈHL¯¬¶IÇ<ÖUiêGpÈõ¬¼ó@!sJ)£¥/j’‡*koõ¹ö¨MlyøRc-cÒ“½)üi*@¯?ß¨M8ô¨Õ\0¹¤4™ˆ£p¦!zŠ±küFª—QÔñÜÕ‹YS@L>CTÏåV¥`W®~•Q˜äðG¥$ÒŠŒ1çƒOPI\0“L	¯j?/|\Z¤Û‘¾e\"¦G#¢ŸÊ€êwšaÝh„g‘šºµÏéš½¬vª“V_AÔUßí›>pÎNxúVNæ©š„ç¥%fbÓø|Ãõâ•5›NKÛÔò²®ij+4ë6C¯™šOí«õqëžÔr°æF—zQÅfÿ\0mYç†b1×§4mÙ{Z,ÂèÑÍ(¬Ñ¬ÙnÁf¥\ZÍ¡þ#œö4Y…Ñ£Þ–³Æ¯e7¾\nC«Úçï=3EŸ@º4A£9¬Ó«Ú`œœ}i[W³ÇÊÇ>æ•˜]\Z\"ŠÎmZØ}ÒNFzÐ5kbW‘Ï½\r0æFëFyªÚÖ¥ŽX€¯ZSªÚíûÜžœŒQfEïåFyª)ªÚçï“ŸLRRØ÷ væ‹1ÜÐÍ&j’êv¸åÏ¾)F¥lNû\Z,Ø\\¸=(ïU¥l@¿Z?´-ƒ`¶}­+0º-ƒŠR}*—ö…¸_¿ƒJ5bÀoëß4YŠè¹Aª‚þß#çëKöè1ãó£•™{sEV°ÃÎœ.íñþµHïÍatOÚg¢pnÿ\0X0Mi‡óTsÓ4jD¢–¢ùât#®iÞtYÿ\0X :Z…ÇQþµ3Î„u•hBOúÅ#ÔQ¨]Ç­ÇJC,xåÅDÏß_Î˜\\p¤#šo›Ö-buÞ¿}Oji¤óÿ\0þt^Ì¿!zV.º£ìäã5´Ì0NEfk*\ZÍùSÇ­T^¤Ëc“ƒïgÖ´l¾ñ¬Ø>÷olV•ŸR+vf^ZVéBô¥5(L¥\"Œ\ZxéÒš>÷4ÀkžiGCM~´«Ò•€a??”ri0sÍ8i€FÝx©[¥DzÒCèG.BY¬pMiÈ2•BHHcŸj¨’È\rÎ=éÌ0yàÓ3T@ðhíH(í@\n\r)æš\r\0ìÒv¢ƒL žh>ô†€:¯\0øÒÿ\0Â\ZÅ½ÌOuqa;É`·-R³!\\‘‚2>Sœº+ºt/·ý·þö™öß7ÎûG›™æg;÷y9Ýžs×5ã‚”u ¯ÇÞ3¿ñ~±qs,—6ö2<v\rrÒÅ*ÈŸ˜çï\ZÁÒõ;í*vŸK½º³™”¡’ÞVŠädq8öª‚Š\0ö=WãªL\'Õ<§ÞÌ«°=ÄÉ#É8ËBxÉ<{ÖW„>+K¦O®%îšú†™~ø·Óæ»>Mœ9Ü¢•+·kÀ\0aGž^À°ÅKd\'ŠRØ¤t(ÔíµzêúÃM‡L·—nËHq²<(SŒ\09 žƒ­z‚¾-ÿ\0Â1á‹-#ûí_gßûßµìÝ¹Ùºl8ûØëÚ¼¨{ÒöÆk\"Ë1êWÑéòØEyr–2¶ù-–V»qÉ\\àŸ”sì=+ÒÇÅ¿ø¢áþÄÿ\0˜wØ>Ñö¿úg³~ÝŸŽ3ø×•t4à9£aC,¶óÇ=¼±°ttb¬¬Ar=ëÒ4ÏŠÑCá»M+Ä\Zkí3™ï®C—bÌAÃ£rmëÒ¼ÌÔRt¦€õ«‹\Z…Ê\\ØxM¶¹;%†TG\\ŒGÆ¼ïÅ~\"¾ñ«qwyqrð´ÒK¼³´«n®ÙØ¹è€:\nÆ)3Î(×|=ñe‡…\'ºžó@¶Õ¦v‰à’VUkvBÇ*J1’9û¢»SãeŽ©n°ê~\rµ½…[xŽâédPØ#8h8\'ŸzñƒÈâ˜ÝiŒ§t\0S“JÎqW¯	ÇEúP™,ô_‡¿îü-a¨Xksø‚Æê(àŽÚêôˆàC)@¬¬6°`QÖ›â¿‰v·útqxKÃ6þ¿YC=ö™8ŠY#ÁÌDÇ\Z¤•lgQÇ§›¹4õçµUì#Ôþ$|VÓüm¡ÜÚËá;mJDŽ8µ&ešYáO”Ì0}ã^Fc5hZaéK™M¢;¸¦4d\n´çÚ¢fÜj“c¹\n¯­ii÷zeÌWºeäö·qçdÖòÝ28a‚8$}\rUEÍJ@Ç\\Ã=²Ûãªéš\"k>\r·ÕïôÈ£Xï®®ÃËæ(Pe¢%X•H9Èñ^{ñ/Æú—u›«¹¤»·Ó$hä‹Nk¶–(Yc	¹F\0ÉùŽ@x×,Óü›dc­#àÛdg÷!¶´*2|ŸJï¾øïBð¾‹=–¯à3_žK†™n®Œ{‘J¨Ø7DÇ\0©=ˆñ\\+åñÏ\0¦ÐÃö‹³:oöü!ÿ\0`ò¾Ïöo·+ËÆÝ›|œmÇéŽ+‰ñ·Ž´OéPYéÓtã¸YšæÔ¡gP¬6±©Á,_áW˜¯&®Z}ú—° ©1PÛýÁSY°SOJQÀÅ‘¹æÒ¿&ô¦\"¥Çz¯VnGµVïT€QÖ”u¤ô´\0àiâ˜:S…\0~…)È¥®>?ˆ~‘‚­ÃŽpxãWSÆšô½ížõ§$»Ìt`ÑXIâÍ\rº_Åùô©Š4_ùÿ\0‡ó©åc¹³ÚŠËÄ:D‡¨AŸBØ«)©éï÷omýµãE˜î‹tTòÔŽ. ?öÐQö»oùùƒþþ\n,ÆOED·07Ýž#ôqN2F2\'ýõHÏj_Ù¿½Î\Z8È_÷ù×Ì··,#ff;Ü–bzä×·ükºŒx;ÈŽuó%™\0E –“øWÏº¤ß+c×Õ¤tB+\\Üq×ª\r6s“ŸAIs\'ÊJ¦šMŽÂÈß1¨óó\Zh$±çŒÐO\\u¨l®r(^¼R…4ÐØ5#Ü9;ÃvôíP¿b)Kd6~•œ*ýs@Äfù¾”Ç94ŒyúÓ]€ã<Ð!Aâ†éMVãéI» gŠ9ùê\'?5Hãç<Ô.~cL“ÍjèÇ\\x¬“ÍiiGm­Ç#æ#Š¡1·I¾£¸â².ÆØ^µ¸ü®k.ý}õ(nsõ¥%ñŒÓÈ¥•ÆGóc¯JpÞ¤œŠx Ò¸Æ,ó–ùóÖžÏt@ÎJ³f1cš‘ÅWŠ\nesûÆ<P\"ÉåÉ©OÞ4v¢à‘\ZÄ;’iÁ\0=)Â–‹€À‹R\'ŽÔÓN\nWÀÑH>´”…õ84ÁÍ-,…1!äúSþÔå6“Ò cûªgjbÃJ[®)UÀ5\\)Ùâ–’LñV %È÷#¥g«Uû.YGNG4:ˆ4û-K ný*O°[þ¬÷\"¬[€#\\zT˜æ¹Ü™ªH¦të|cÊCõ£Nƒn<¤ãÚ®KG3Š§[©ÿ\0T¿•#i¶Ä©Sj¿Š£™‡)˜tØ:yj@éÇJ›>àü«K„zÑÌÃ”Î\Zt@)›1°~U¥Š1ÍÌ,f2>êþT£L‡ò×JÒÅ£™…ŒÁ¦B(8õó¦Û‘ÄcÛŠÐ£s0±žtÈü³^:qHº]¾A(9ëÅi‡4Åì9LÓ¦AýÌÂìÈIäÂ´HãÞŽô¹˜ìffCžÔŸÙpŽÈëZ}EæŽf+§Lˆ\0¦.,üªj‘ÅP¤ÂÆQÒâì8¥\Z\\C°5§ô£ù#0é‘z~T¿Ù‘ü½kLt¥QK˜\Z3LŒmS¿³£ëŽOµh÷£sŒá§EžŸ/ØÔ‡ó«äRG3cµŠÅ1ïØR>>sœû\ZÐ”Ž(æŒã`½9#Ó4¦Äc7õ¡¶—s1ØÎ#=ñGØ\0?hÎiÂõ†Äñó5/ØøšÑ\"ŒR¸¬Q¤¦Mf\n¶pkFŽ)]ƒF\ni\'p3RÇ§¬tçë[;)6ñÁªæS0YŒäHöG/µBÐx£‹”ÂòÙÍô¦cš»xÀ±^?Â©µ¢wÔÍèÈäaŠ:t8¢O½íJ0iˆm&y§q“MÎ)\0¤ñQõ©Ý¨ÇÒ€Ž*29æ¦5iÑ+©Èçk9ÁWÁ­b2*¥Ênq}Ñ[µ¸¢¬‘(c4P!i(¤ë@ÒŽÔf“µ\0(§”ÑÖ”}h\0-ŒÓáØŠˆä1W @&ì4*D¯>ôô^x§m¤N+;—aHæŠ:¶†5G<ÔßAÈ\"¥SÍ6!ÍÖ “ŠœÔcuRÍ8R\n`/Ö£~• ÉÊÔ›OJ ²†OZÑÔavŒíö•öYs÷I&KžjT¨Ä2å\r9c¤ÀWõj˜	áIê)\"rÙ\ny¤2)EB5?•\'?#{S2îû‡ò­€˜øÏü`sMŠ22¤{TÍãîµ&QYªsÌëÇJF·|dSˆ	€‘ØU&ˆ‘H}Î*¶1WN„5T£á\"˜:Õ»\\ïT)jÍ§ÞèqštVÿ\0pTâ ¶ÿ\0V1S‘Y½ÀZSÒu=¨4˜qšNƒŠ\ZÓ­Ï<UcÖ­\\ò§ÔÕ^õH£­%€)Â˜´ñ@ƒmzÃ§N½ê·üÀd•˜“­J%!¾µÐª	Äéû½J—À¦Î,¿)æž“õ Õ{Ar¿Äƒ×Š¸º¡Y²Íqæàù£Ÿ¥J×_>B)ªÊŽÉu†ÉÚäÛ4ñ­9qóž=ë‰˜n¼\nzÝƒ/\'8s‡*;XõÉ7‚²8Áõ¦¾¿0fâC“½\\_ÚŽý¹àö¦½Ûo<Œæ“XßÔµ%U2È\\ŒãqÎ+úmÑþ?$Ó©ó‘T®¤${óXÊW)+NÛºñž*Àõ¥¸\'å>õÎÓšÍ²€}â(šh<ÒgŸ¥&49Û\0RÅG\'Eã<ÓAÎi$\0ÍÇÖ£äŒu¥còÿ\0*cðE0#\'\rLsÎ{R¿^iŽß\'ãNâËIŸçLVàÒï@ç&¢s’E<žj6ûÇÞ€´,î\\z‘YõrÃ„<gš¤\"ã—Ú³5ûßlV£túÖn¢?x8 E\Z;Ñ@<Ô–­9zÓE9~õ ,ÚýÖô©­Efynþ•+~´žàTa‡4”é>ù¦ÓQÞ–“±¤\ZÚ–š)sLaJ(Ç4t BŽ)i¦”P§î\nhéAÎÑÖu RŽ´™âŽßZ\0‘Mhéüºû°š¦µtÁ™£Ç®i=†ŽÎ3ò¨<`RŠŠ/º>•(W9ªØP)OZAê){ûÒ†ô§IÐPR\Z_¯z9ÇÒ¸ Òãÿ\0­A bP)ÀRM€qŠ\\QJ\0%\0sJG9£R¿­æF)ˆf8÷¥Å.1GJW†ŒqJhh¸G<Rcšv8 PÀAê)EÇ¸â QŽ)AæûP!Z\0§hôl=Ä4N¤=h(íÒ–—€oZj\\R‘M€é1Í8Ž)\r\0\'j¥hÏ4\0b€8þT´š@74Æ÷§žiüºÓ‘xs)üê²œš±8.çÒ MmŒ¥¹rhÇ®0iTäU398ïLÇ5(úSqŸcHöæ›œŠsuÎô\0¸¨ØóÍJzTmÉ¥Ô-C\"äTä|´Ð9õ¦k)Í4dô­NyÆižXÎ@ªæ\'”¥ƒŠLt«åG¥7`ô¦¤)×ŽÔ„\ZºPƒJ\"SÚ‹…Š\0Òö­ã‘KJz¨£™)ž täUó†à\nCÜxs)žŠL¼ƒZ1Œ¥\'– ‚IŽ˜©nãHxéL\\äÓ‡Jhá¹©C†ƒïKëM4ÁŠ4à9â£\0ƒžÝªAÒ†1OJ†Nµ7Z†^(Bc@âS—§J@Ny¦!)®x§5Fý)€äëÍ8¨#€=j…ÅË@3×Xê­ýßË½R]Hf¹UÏ\0~T›:=«\'û`ÿ\0p­\r¬Œ¦;Qa\Zå@u*fÅNµ’5qŸ¹Òëÿ\0«4r±š»=)vc\0~’5ö9ô jüçm`klQü#ÐñFÅî\rd[ÑI4\r_‘”ÏlÔYªT£ò¤*3Ð~U”u|œìÇµX8û‡èiÙˆÒ*éPÌ£oE<zU«gø?\nŽMK+÷\rc2€NZe¿úÊîwöëN¶lÈ)Ø†ßýX©ÀÀ¨-yASý*àÒÑÚ?Z;R¿ZNÜSRç\'¥U«w*§~”Ð\n:S…7áLBŽN)â™íëOSÍ\0ÿÙ\0\0\0','2013-12-03'),(168,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0àÐ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0³ªJå£Šù#ãw™ŠgRxÏC_UkscQLs¹y¯—~?Û2ø…¤ÏSÚº©»™\'cŒðÕã;08Ïjô½%Ç’sÞ¼«ÂÄ™œƒÅzvÅ”`ð?ZÆ¬šv-3Ü< Åô#¦\rŒ€»ç±äT~œd÷‡O¥67òî¤EÉ¸¬b;èw>œ¥ü`dEzËqt½ÆÚó?\rJb»„ž»†kÓ,ÏúlÞ¥«m‘Ô ‡³p1Ž•ò·í#gäëºœª£s¢¹?çé_T!ÿ\0OaÔ_8~Ó¶¤]ÝÈzù9ÇçUIûÂ{hp_ç2x¦ÙˆùDŠÛAí_Mx¦Íî¼1©Ç‚–GòÇÀ{ØÛÄ–‚CÄ€sô5ö+Æ%Žò6ÁFˆŸ¯X¨³åÍ6¶IbaŒ1­lƒÀ¬ð¦NìÀ0éŒÕâr+’\Z»\\­0È ŸÂ©˜ƒ‡\ny÷«­–\'¦z«*\'wÚˆ—ÐãüO¢=Ìd…É\ry>»§È²37/Q^÷p‹4d˜zWâŸ1ß2¯ÔW	é¹â·D«±_˜Ug™¹ìk¢Ö´³ŒÊ0	é\\Ì‡20«°_A¹©m˜¬œ\ZŒ©\n©„‚2Ô\"Q¢Ò2Ê7*¬ò0vÙ†\0÷¤3yÜž´ÆmªO_jM\\»ÛbÝ„²«ºûÃkD‡í\Z”q¹ÈÝT4çÝp»¸­=45hÜ}ÒÝhO¡\r³ÑÎ‚³/”˜û×x£I\Z^ ÉÐÕí\Zm±‘£ePÊÊ9¯<ø­¦}’î\'ë»9 LóÆ“”šl-’xÉvÃM]FY£FÊ»=\rTšÚ[)\Z9‚?ZWe¥t<Îå9éAœ”ËsH_÷{±øS>ÑáÉ§t…«$†vS¼|¢¥[Ò0l²œäU]˜²Øn¦ 0ïB’!´z¶¨\rSL\07ï­NÍ&Î:à|+­›ðŒßº~kÐBîmÀdÈ5w)HŸCÒêå¹E9<u®·ÃöÆ\rj4êV®øF+S£3±‡\ršÎ¶Ö/Zm ¡\n˜»37ï&KÃ0jðÝA Ä›NÆô5ä÷ÖZ-ÃAp‡ÀaÐ×ÐÚìÕ˜°Â±Î++Uð´þd3D’#6pGJõêRö«™ocË£_Ù>Ylx9‰frA<ÔMÄÄÞ•è¾#ø7io%î™þ‘äÅŸ˜}=k…’ÚïNÊ][IçøÔŠòš”t=XÎ3WD^Ëþõ\\MnHÈ<TQ™‰â¬¥¼NÛÍP§¦¨jìS¬»ä©õ©WTI#æ5_ì1ï$*Ìzl ÙúU)%°%mÇ.­€qQ½ûœã?=m\"\\‘Ó½KpàSôù¬5äe<’ÊØÁ©Õ¶ä¶ÑN¾¸Ò8VÜ=«7íÓLJ¢œž\0\'pÕpG(~aSV-5ö´oò\Z±á/…ž&ñ„Ê¶¶R¬nqæJ\n¯ë_@øöU´²\\k²ý¥ÇÞ…N?ÖŽkèQâ>ð¶½ãûÄƒO¶q	ûÓ°ÂÆ¾—øQðÃÂ,.¯ÚoÀ{tSí^¡ø[Nðõ¢Cci£hTP\0­EùZO”àt÷©DèÆ+€±¶C\09¤‘ˆFfÂ¨è=j;fÚ$QŸösKf4ô%†®ÄœÞ­@»˜z«ºî/É5f>‡Ö•ô\'dM#³Œ°zRÇpè ÊÓ‘“Ô\nO4íÈ5)wºKö Fr¥2i\r©÷óªÒÉÀÈ xTcïå*†•Ñz)Ê1n½±W#™\\g8¬Ô?J¤«J6ÛCDóM,>oašª× ¡ÏT_\rÎÝõ¦RDòÎ_#ŽõBåÕãnrECs3îlôªñ;ºÔ\"K°J˜É8oJzÈªÎ@<ÕuU\'ŠÍ¿ñ¥‚Ì^Rp#NI5EG]ÍãpV2{WãoØø^ÂIf•|Ð§jŽI5‹£ñ†™ýãÃ§ZÌ»ÕZL¾=Å|©ã¯IªêÓâá¦‰X…$õ¨œ¹QÛƒÃýb|½ä7ñlþ&Ôî/gbÛÉÚ=p÷7\r’Tsžµ¿k¤Üê¸Ú\n!ïë]5ŸÂç’ÔÊêyâ³£jz8Êé%JDr~ð¼Úäï–Xñ/ƒŸIìp+Ó>h¦Þ´dzs[Þ<ðÀŸOv	ŒJéæ±âów>vX9\'8©ãeE\'ïCR_Ú=Ä±`ä\Z¤éÅ;Ø«êz_Á;Õ‡ÅŒíÜ6×_ûFÙ²\\i×As!]ÃÔúëÉü¨>—â;KŒà‡×»|q²:—‚ ºŒgËevocÇóÅCzê$ýãçÑ 88 {ÔÑ°9Ïj‚,ª\0F)â@âkX»ìU®‹ÑN]°O^Â¬+îÈçŠÎŒ÷Ï5zÜ¹cÖ–‰ÜKª.Ã3!äV§Š.\nø]qó VD;ŒdÖ§‹[g† \0ðH­“¶Œ›ùœBÈ\\d¸íSÛÎåŽãT÷ïé÷jHPwÏµkfV5à*\\né[R7šµs°J[8]£µmhgt»	ëTµöê&Ô·ò1_:~ÑPÕKça8í_D¨cr™À-_?þÑ¨«¨…\'-ŠÆ¶8¤¬y?†C} ‘ŒW¤è(J©cÀí^gáÙ6NWÿ\05éº8Ù\Zw¬«/|ª}`ðÛ¬_ièqW0nåèqY?ÙžÞqÐÖµŸ‹ù×¦MsØÕ>çE ²$É’Ç‘Åz”mÜd1^O£„7ã\Zõh$&K<œ’˜ÍhILŒj ¥x‡í+`©Hn=ëÛçâýJrs^Wû@Ø‹{cŽJ8ÉúQiõLùOá&¢mu+y£‘Œû×Ü\ZdÂûOÔ`Í?•|	à‰E¦¹,y;c—ø×Ý>¹Z™r¹>b`Ò·¯dÎzVMž%¬Z˜u¤#\ræ:`çšßñ¹·ñì}~rkŽÅç\0{WŸt=XŽ\0Éè*­À€pjÈmÛ}*¬ñí\'hæªêú¿Bn@\'5“hf\ržž•°	\nÀœç½T¸BÈqÐSÜwG•ø·BŽÑÙ›ý\\‡ïz\Zò=wM{	Ý†vžs_Dø³NÚ5Ê2`…Èú×’®u¬i,Ï2#(ÈÈ«‹®ppMç/\'S±K¨i2ØÊÊT«TÖáÐcƒ^´\'b±oµ#0A’p*ºàî^}©Þpx¤=1ÅUÊ¸ëi˜¹`pGµ^ŠùÖ@Äã5ž\\`c8§Ç!1n=E%¨rž¡£øìG¦ª³ëÆ{×;ã?mF‘çvÓœšåa»*€èsHò“‘M	!Y ùãb§Ú¢›P–â ’¶ð½3Ú—ÏÁ\rÀ÷¦´·1è\rì+_bXœ2qÀ×?‡ôK¿ÍkpñÝF\0hÜ‚3\\t?,l¹Áé!žM¬ŠÄ/}½èVê;ßaÆå‡˜O¶zUv…ÔF\0÷«‰£oJÐƒP‚=<ÛÍj’09ô4r…ŒbŒê+Ó<%«\rFÄDØßÇá^k(FÚ0=+wÃwRi÷+.á´œ\'œR‰\'¬Y\\M*9\nßÃT^ám.£žBp®?^µo6ÙdP\n°È¢M0_mÜòiØ,{uä±<z}ÈÇïbV÷¨õ\ZÜH k[Ã>‹Ä~±‰Ôn¡Ï Wk¦x&ÈC\ZIcÆMz´q05Ìõ<©a§*ŽÇ£Ã=Ä{U1ÆEu1ø#Dñ.” Õ´ø§*É\\0÷­uvšE½¬E0ú\n±	\Z0\n3ëé\\•+ÆW´NªXw{êx7ˆÿ\0e­6õÞM*ú[?Hßç_ñ¯5×gOhÅ~ÌÐß#þ®LÈ×ØeJ“ÇÊ;ÔodeÀ8õ®zÜÖÜø‰¾øæÜ<ˆ?¸Á‰ü3Q†ž6rÊÚàÇ}•÷\n@£8QƒéR\"*«.3ž\r+É!ÁŸÚ|!ñÝã:Ç¢Ü/<—e_æk£Ò?fŸ_cÍ†@z™%ãè3_cZÆ‘¦JŒj»É60x§y2>hÐdYƒêÚ£88ÊB¸>üšõ~Ï¾ðÌjbÓ’i×Ÿ6r\\çñâ½&+”$ç¥+JoŽqDd$ÑŽm§Â8Ñ\0†*Ã[?Z‹z˜þz¬÷\"%ùS>ô®ì4™¢¥!PsÇ^¾õFòË’8«1æO™¾íj	Ã¸å›pö§ÅÜœd\nl)å†ã<Té\"Ç’Oô¹´%+•ÉÔF@\'#žŽ:\n{,oÅJ7¸YX‰œíp¨Œ`tíV$+äàÎ*˜gòY»Òæae\'csŠH˜\'v~µ]¥b¸\'4Ú‹7¸sÚp§¡Ç­1nîâ«—!H•	.ã>•~ñQÕ“y¹VÉàÔ1¸B@Ï0UK­NÖÉ¦•cUêXÑan$*NFk2ÿ\0ZƒM…¤¸‘}æ¸üN<:kuÞzWŸÁ¨ßx›\\ŠÃíqµìÜ*Í Eàg©«Q¸+î»ãë¹‘…’y0/ü¶=kˆ´ø‘>‰¨µÅ´+¨Ýà€d‚×âˆ“Mt,çr°Äv0O¯5Óé¾<ð~ NmŸRÙÒŒ’iÞÈ\"œšŠ9/üFñ‰o%‹Pº”Ž‚=ç\n=\0í\\¦Ÿ§I¨]GK–có\ZŽÿ\0Qk«Ùîdy[&½\'áw†!˜‰™Ã¼˜ïÒ¸îç+ŸNýž…º³¨ðO€÷ùjñà.;W¦ŸAi§J¦>ÜUýL[806–l~©¨y²Z²(@®ó®NZ³Ãì6[ø”Ä9Åz§¢CM ¨lŠó]@›o\Z ”—Çì½²\n¼½iôÜùsâG‡NºwÛŽkÏT\0Ù=kéß‰þ–o!MÌ¯›ïìZÎæHŽF\r$ìô4VC-$+:08ÚAà×ÓÖü3x0%vƒo=ˆ¯–Ðìb+ß~k¢{‹	qS¥»Ž„´“¹âwq5½ÄV çëK\Z*ä7Ì;\Zê>+xxé*»Ø?u+o^1Ö¹krÍ¹g\0V‘Ö7]ËQTÿ\0J–)‚‚j²¡N‰¸žEZ÷AÙ\Z6dç8wÆ+ŸÀ¨¬»F(Jäœ÷­\ZIåéŸ6A<ÓIÜÍ$p‘JczÕ˜ÎFqŒÕ\"Å˜“V­I*Ù9æºDÓ´ãêr+sÃÖþmâ(êÌs–Ä£dsí]w‚­ŒÚõ’<¨¸=9 RnÉ•vÏ«Â‘zàîí^	ûJÑ±àÔ×¿2ªê*2FO¼ö”dþÑ@FâøÔSzœÓWGøh—¹9ÆÜ×ªh\n$‘Æ8¯)ðÑOµã÷¯SðôÙLHëŠÂ¶¬ª6=cáÃ ŠxÏã5­z†=JLzäœV\'Ãšy@88ÏÖº-DŸ·0<óX«›2ö—Ë+/½z­™\'Œq^M§’¡›vkÕ4—3éÖ0Õ¥îf‚íBßáz^yñæÛ~„’ÊƒÍzF¥[ÀÃ¡<×\rñŠÖKÈ@$)ÉÅLw*.Èø#D‘ ñUÂ–äÊF\Zûoá5ÿ\0Ú|o’XÂø$ûó_M3XøºèœgÎ={s_^|Õ¾Û§ßYç•	 ã×Šôq÷g7i‡Ä;`ž%¹|à>¥róD®‡hÍv¿bÙ®ÆÀ}èA?­q¸Û“Ð\Zñúž‡MJê›#ÉŸöª½Â&	c2|Ã³P·Íœóžµ¨]-ŠYÈÇQLd8éV|¨Ø9jèxÚÙ¦Œlîe^Y™¢‘q¸Ò¬ü²·šÿ\0YÐ§·FbþtjÀó‚?•]XB©ÁÏ¥s:&¯ÿ\0Å\r>ïîG+„cêÒ›±´±ôZüðØ\r¨xzÙ¤a’:×ÌßµoÀ\'ÂöãYðå€³‚2©<1ä¯$üÞÕ÷+I&µ¥ZÝÚ\0Ì£\'zóßxUüee«i70ƒÖŽ¹=C`â‚ûŸ–¦F3@ú…?…zÄ…š¯‚§W½ƒdr³#ž‡¥s-\Z	+‘Šµ©(ÀiCèHúT·V~N¾Ý*\Z‰<ÒÃ\rÎ*pÑ°+Ò«Ã·Ì2)Î\n;c‘M;\ZGbe\npsïNym¦ÄY†cÔý’ŽGÎ*´*ÌF,}ß”¢…\nü•Ûõ©»Sü®¼?Jw&ö!HÂýÜšcÆÅ›Š—š@Xg¥2‘wÃZþ!Ôã²€/˜ü©jí¥øe.ŒA•Œ¾µWàËoñå’\0ß7ü×Ò×ºw1’5aPôÕžáûY,ÐÛÎÅ†~S[’F\"ëÆÞõØ]øwÍoÝ”Ö]ß†/ôûvóa,‡ºóQÌ\r+ž§ðGTþÑÐœ);ãl^¹mU$óÇZðŸÙúèCsjçœ†\nkÞíœ|Às“CaÆAMËƒÚ¢XJÊ\nýÜõ§Imò’>”X\"/ÊGËJ$-w\'¨¨¢€©*P°Š¸˜‘r¦œ‘|¾õvE6žæ|Ñù\'8ì(µp)êô–¬Sîäj†;o-ƒ‚³¾š:8QUˆ$‚)Ñ,r)Ú=…(u`v`úÓ @Š@V—+ Øcòò§½NŒFp:w©`‰@`Fiñm%Ñ”f•Ó¬WØÒséM\0ÊzsWm¢8\0‘Þ¦Xvg*\0ö¡™V+\0’sŠ•2œ=jTXã{ÔÑÀK*úâ•®$ÊÐ)d;¾õCç>µ2ÄpÌ9ÒHÎ;!\\‰r™P0)V\\±\0äÔSósó-U24{›<\n\"ÊÐ½5ÊF\0f\0šƒÎ,§°5y\'œ†RÇÐU›Ÿ>Ž01ƒKq¦‘knÈâš@ïQ3²¯$àUk½R(™ç•cQÏÌqB}ÉåìYiî#¡ïUnµ{k8¼ÉåX×Ü×	â_‹¶¡à±S3ž7ö¯)ñŒîu)î¦Î\nAZÆ#ÐõŸüUµ³IÁD²tÜz\nòsÆ7Z„’=ÕË6NvçŠÍÒ´ÝSÅ3ôø–O37Ý½WÂÿ\0ììÓÏÔsur1÷¾èú\n\Z°&ÙãºíìzT·©¥ºù‡€~•ãº§ˆï./ä•.\nœ^ûûDë‰akfÈ¨ƒtŠ£…|Ë4†F<â‹Ø¸Fûš©¬O$f2û²rsÔšÙÓ`wŒ»Ö‡ìârÛ¸º›ÉRÖ×Ê‹i“½sÍôG·ƒ£eíe²)Ëp.®eÂc¡=+BÕ5Í=CÙ]ä}àc–¹÷²\nž|÷Ä­œ(95“&¦°¹òœ:ÕSVG&¯¶Þ¨õ8>3xËÃj¢K¹xÌ«»5ÐiŸµ†¯iòÝAýŽF3^	{â«‹s’—NÀž•™é[\0ÖÑvÜääOcÝõ‹‘kzÔ7Â	ÞõôgÃé^(ÓÒ;k´{•\\4$Ãð¯‚£Üƒï+Âž$¿Ñ5hn­fhäB2šqQØ‡ÌÙ÷ˆ4dÔl¦ã5óÄß¶›vòÚƒÚ¾–ð6´þ(ðž¨œ+ÜD×9ç¡þUÇ|Rð Ô,ft@ÅA=+&¬\\eså¥ ““]—Âm´ÂÀæ9Öô®ST³k+¹¢pA–ÂåìæŽD?2sZZëp’=ãã¯‡ÖçG·Ô¡MÎ˜$Žà×ˆ@æ<õ¯¤ü?,~9øzÐÈ7Ê#Û“ë_?jZ|–·Ò\r­•Á¬áetZo”ŽÜù›·sO1a‰ŒTQ§–3ŒµH®eµjä»´X·$ƒŸÎ¬øÝÕt‹!ŒúÕx~LgŸš¦ñûì«u=kr-m Õ‹y6‚1šªœTð9Rv®âk „ìËö®2ŒÜ×}ð¦ÔßøóÃöýDú´\\ûÈ¢¼ú½köhÓÓRøÓà{cÊ¾µf0½Ïœ•W±w²>•¿·ò¯ã#‚OS_:þÓ°•Õ’\\Œ2ŒŠúSZ`óÁ\"ýÌ_7~ÓçR„m$ä×<-sž[Xñãí\\·á^«áÂÄ\r«‘êkÊü7tç^±ávÕ5V·6‘ê?×ý.LzWIªƒöãé\\÷Ã•+{6Oð\nß×wáÐÈâ°ŒN‹—ôèC íßšô\Z1&mƒÍyÎ”Ù^NIÖ½ÃjˆÄŽçš¾†f†¡iWŽ8®câR†ð­Ø:ì¥ƒÌ`GÐ×7ñ…ð½ß\0ü½*mbÓ{›^*-eãkÂãƒ)ãñ¯¦gÝjMz‚­Ý¾Ñ“üCµ|ßñf?²xâî@»rû¸®¥üEw¡xoKÖld)wŒ8¯f¤y©žd}ÙÜúâä jv­r‘í#ñ5ÆD¡¢%¹ÍsÚÄ¿éßÞDPœÃ¡5¹fÀ§9¯ž”\\™é))+¢?!’Bq»Š\0Æ3W>R3U$VSÈâª#æ´J{—vÉÔ/~1Sù\0)8\0Óçrž¢¥	s%©!T9%«Ï¾\'Y¼bµþê+Ñ6³#mëÅs_¬Ö\rOŸàù³Un¥FVgÐŸ~&nE¦[2]Bœý×‘ùƒ]ßµ{‚:GzË¸ã‚A¯†þ|HÂ\ZÔ1]J|¯04lz+…tß~ êº‡Œ›Z·wQ‘·aÈ\0V­]\\Í®Wc­ø»á§ñ¯i…7Ü[bâÝô?ÏšøûRÓÞ%‘1µÁ•õ]ŸZÿ\0â›p²oMBËË”7MÃüšño‹>\ZþÁñ•ôvÅ#y±œušQÐ¥.dxóéâ,ÍG\r“HÇ#jêgÓ•ÔãëŠd\ZS¼D¢…#Š¤„ŽqìB¯B)ˆãiïéZ7°˜·qõíXûÿ\0y¼uÍ°^Å˜©«P¯\'5V)G8\Z¿o|È¡ídj¬÷$Š\"àãœwÍ_³µ\0ŒRéÚLÒ’\0\'=«¨±ð…Ë§œšÍ2ùSÜçI‰÷e9öæªÍáìT½«Ðm¼~í$ýk£Ò¾êk¶HŠ)þ,SRó%EÂ=*{iÒ€J+xõWÖé¦ ¶OÒ¸Ÿ‡ß_Ãº“]Ü2¾Ëßê‘Br\0éT™“Vf<:bI»Ž=êÏö2KRŠÂ´|¿/¢ã4øzc ·Ù³Bð¥¦­}¾Ö1·«Ð×£ØÄÌ›ñ‚GJÁŠ\0FâÂº{G·R¾”’ÐL³]¬\rØâ©Ïö V‹=\rNß&æ=)<Å`{â’ì$HW\0w T‘®øUæœmö«zt§qY’GÄÚyÍ0A¸•Ú›ÛŒdö©HQ–9Éìjl?uîQXDy\0üµbÚßy<qR´)´ñRÛ ‚p(VQVÓÌI$ÓÒÛËLš–5HÎj•\"Øøßøw¦É×¡º$¯©Q‰Ç˜à`4ŒÑ \r$9ü*Í³HÀ_oÍœÔÑÊ‰O›Ö©ìR$•Á*ÝûU9œãô§º+ ÃdúT`*¦ßJIFéƒ¯ËÉªûrZ×ÿ\0¬-SQ‚ÉXÍ:ÆƒÔâ”|‡rÓ¢ÊŒ2»}ª¤š…¶”ŒòÊ±¯»WŸø“âœV¡¢ÓÀr:ÈÝ+Ë5ßK6çº»iN<Âª1¾áÌzçˆþ,ÅnÏˆó\0ãyé^Wâ/ˆÞ³ý¢åœt+ž²mWÅsy:m³…<oÇé>ýŸÐˆçÖgk·ÆJ!!j½ÔÄ¯¹çš|z¿Š®„:]³m=d#ø×§ø[à\\ÚÌ¦îLd ákÕ4YhÖ‚hVQ±kN¼´ÚH§y\r:^ƒe¤Ûª[[¤h0 ÅYÔ¯¥„³¿Èª¤äÕáÀÀ¯0øíâs øVx•ñ$£h*´.\'Ëÿ\0¼H5ÏêSÉ&Ab£œŒ+TK™pƒ9=«JñZéÝÛ–cù×KðóáýÆ¿tì‘þæšG=Ô)(­NÚ4eZvˆº.”4Í-îe\\)á=ë’Ö5s5Ô>\\uÅu?|C/ö+lù|‹×Þ¼äî.Î!¹ÅE;ËVzxÊ‘¥aÄ—2:á˜ŸLÕg‰<b…bÙ´ÙX@<×UúèU’,–ÛøT–Ð•ËÍ*!sŠ°ˆ`RÅ¢Ø|aÉREkioƒÎH²£[åë]…ô¹.®#TBìâA;h|&°Kip¤ ñëÖ¶õm?íÓ!$b¼ÏáŒH³[’Áã8¯còæä{Õhö3LùâÇ…_N¾y£O“¹ç1(Ç?¥}qñ[ÂÑßis\\wÅ|¥dÖW³DA[5œØénèö/€Þ%û4Ói²Iò>6‚{ÖÆŸ\rex…o#É¹]Û‡L÷®Âš‰Òµ{[˜œ©Gç¨¯ > X/‰|—q€ÒF¾bœtãš™$šhÎ-êŸì€~µ<lŠr^õY²­Œ`ç*FãÖµK°•–åËp®ÇŽüRxý\0²±\\p3Š†ÒRnq‘Iñ!ÎÛ(ðOËšqvÜâ²KqÍI<œj‚-üç­O	Ø û]¾„ZåëL`nn=kÞ¿c[T½ý¢~Äq\Z¼/÷ºwgô¯µÂ.:šúköÓ¾ßûMø4mÇ•,²àÿ\0³ŸéRÝîâ¬z½ìí)^@(Ü©¯$ø¯¢C®ëo£#Ëéz•ÈMVtÏ|šóÿ\0Èe×pW=ì®Œôêx”¾¹Ñç–xÀxLõ®³ÂÑ˜‘PŒ‘ÞºëëTka5—kh‘¹8ŽÂ±srÜqTwÁûDß6Ínx‚B·ñ€;uõ®ÀO‹™t> íœqŽM$ï±I2þ™óãé^‹á¤oìYÓ<Šó] ¹`ŒW¥ø@ƒap¤ðkT´$Ùºù@‚\0®kâ|†	ß»µcÝùWFÁƒBÃ¦\0®âd?kðŽ§èmŸ?‘¬ö\Z?=~9¦<KÁ6¤‘Ï­”½ø\\ËŽc|“øÕÏŒ¶ÿ\0l´Òï‘÷B‡ÛŸá#ö‡Z¼9ù¢l¥{qÖóÞçº|3ðþŸ}ð‚Á-\'ŽKœ3>ÖÉVÜsŸÃºzÝY1†íBý×#ƒ_-h8Õü\'xf±¼xJŸº\rõëVÿ\0´<~!ðñÓ®mÖ\rCö…<7¸«ÍÄádß4NŠUyR=~ì|¸ª7ÆÒHÈô®3ÀÞ4û\\\"ÚùÀ”$‡ø…vì¢D|c‘Ö¼õEÙ\n\\ÊèÍL1#ïTžZJð}j1ÅzZ‘8ÎN*ã¢Ð\"ìDã\nkÄ6¢ïLž27nR1[r.wméPK:8<sPÝ´;7é)Õî,§ùrH\rÜ\Zô?ëp\\‰4½AÕäVÂ;wÃx«OK\\!Ê|ƒéšªÍ-ž¡)V9á•ÁçëUYÎ>Ññ¬øf×È³šÈ<sÀÛƒÇÚ²~,Ø/‰ü-o¨¨XHqË¡ëù~µ\'Âß\rfÒKK§hN2ßÄ+°}(·˜+Å(Á¢©œVqm3å£Ÿ“¥[Òí”Y*°È\'¥nxËÃ/ k7ˆY·\'ÐÖ ¸kH´ÇkÖ·h%À9µsÒÚ•ÝÆO½w7B@åˆ5Mtq»1žÔ¶Sg¡£n9®ÓA±ûhÐdVF¯¢›Bp§­/‡Ú²ØjqÁ9ÄÀdö¡j†—)ìžðOÚ]XÇÇ\\â½sFð2Ýtýj§Ã¸#H”¥HŸJôëR#^8¢‡vgé¾	µÇãZñØ[[2E©cÛ?˜V&}Ø\\u¬½2g—Pi•Ï7u©¸š	[Ydã$dØVrÀëë]¾—l²XÌ	ÉÛÒ¹IâÄÎ˜èzRÐËb–FsHˆv²ã\njv‡9ÅDc,q»JQM2“¹*1Šf8\0ƒV~ÞË©hr\\ÊÞaii>™5‘âåÓ¼9ª]¹\0CníúVÁI•ü§•;˜©b}rÄÓ·A$ìu÷$îéUü®x<U™\"fÜÄîµÒA „ì:6h×\0ñArÝI4ÕF)ÉéZXjØÜì²Š¨Ÿ)ÎqSª²åøÅ@öVû­N3ù Õre\\æ¥àQS±Q³ŽzŽEJNG\rŒÕxÁe#î‘ÅH¹Û†#\"ª--hÇï0I4Æs’:\nMä/hLmlÔÝ+	ª½ÁZxpTíý* W\0u¨Úæ+uvw\n£¹9Í\\uÐz·õã­Tº¾ŠÎ’W£»\Zåõ¯‰6Zz°‡žFîÙ¯3ñ7ÄÛ­žkÙÚv_»(«~BºG]âŠVÖQ<6§ÍdýÚñÏxýæ/-ÕÁŽŠð®kRñ\r÷‰ïš:Üíc…E+¼ð_ÀG¾Ûs­Nd9É„ZI¤	6p62êþ0¸0é–îÊO-´ãó¯Gð·À%”¤úÔžs’€ð+×t?	Xè$V¶é\Z¨…­…€•äcýšW¹Q²34_\nXè–Ë¤+\ZŽZØ‚/,HÀ©*?*BsT‘#ÇÌ¤çªä¾N\0ÅNœ©í£Å&‚éP4BByô¯–hï¶¥â`¤˜âûÜ÷¯¥¼M¨\'Kº¸?(T\'¯Ö¾ñ^¨ú÷‰/.X–Ý!ÇçYùšÒ3²3­m$»¹Ž8×,Ä\0+¾Õ|bžð¡Ñì\nÅ;®n%_¼ÇÓ5ÊØ¿öZ4ïòÉ”šã<C­=íËÛ<šËøCèã‚¥w»3õ¶¾¤c’ÆªF>bGJtlÇ9Å¼1®šq÷l|ýI¹É¶&JÆOcU^RNÔëRù¸WñýêŠÝJÉ’¤ŠÑ;™-f\rÈ6‘“ëV\0R¬Iùª(ßÌ\\ÕËK7•†Á¸ú\n]÷É7H1Œç½}û9x9uc}¨ÜG”Aå¦áÁ5áZk¬ê¬¥\\¸¯µ~øu<?áhÙpò\ríõ5Ih\rô8¯øzêŸo´\\ 9!EzG€<eµd›œ€Á³¬èpêV³+…9kÆ5[¯\0k¢Xú+7 ÔÅÛAµÕÝ«ØN&Iå#µ|ÇñÁÍ¤êOq{ccÏô„|]o¯éÈÑº»ã‘\\ÿ\0ÄÏ¦¯¥ÎáAlp\0©}Ê„­£>K‰f\r½+é„Z¤zç„ä°›è\n<äb¾Ô,¤Óï¦ˆåvœb½àÆ¸,õÑlÎKïFêÂ½ÎSÄú[é:åí›†9¶x¬¨ƒ–9¯Høå¢=–µÚ\0VuäZóx¨t?wÞœu@ýíËÑ#JŸ1\"¢øçu˜ÝÑ*[Ef‘}r1U>&+G-£r•¤w3Øã¢v`Á—«6Îýê«B[­K\Zç99ÅuEè=,_‚&V[½}ÿ\0Øƒí´¶†Ì¹1ZÝÉŸû`ãú×ÈVa¢Lž}\r}±ÿ\0µ²7..vä[éSœúdªÿ\0Z‰ëÄÒèO©Yí;‡\0òkÏõ¦ë×*ù\0që^½uiæ›¸¯½Q&¯vÒ>¾ƒVD‘ÜÜàçCÇ²`Ù˜Ü§zªaŽñ@x¼í5ÄÙkSKÁÒºlàW_â0¬3Ž€ã5ÅxsÉ!s´†º½nà¾ŠàŸ”`ƒŠ´4ÚØ¹ Ïòô5éžPOß<â¼¯Â3yñ) ‚;WªøI·”ƒé[¿„‹›$ƒKÛ<ÖOÄñáME”ä‹wÏÓ¶â\"HW<•5ñ‚øKU=3nãŸ¡¬˜‘ùïâWþØøcÊera`=9ÿ\0ëU‡‰¿ÀÞ#³…ô«äZÄ~üÓÆÒÇÏ;¨>ÛIkáï$ÊFÁ´Î½¸5cŽVÏ-™U•ÀëTš3\':[p$‡=ûÕ»åÉþUÙe4`§Üì<âàÙ/c6HN+Þ|!âõ‘ÒìäžRz×ÊËoÜ¼7µz¯Ã«‹íGOu•]ÄGAÚ¼ÜE%cjr³ºØ÷¹mÂ³0aÍEÇqšç¼3âF\n¶WÌK}Ô“ük¦)´úŽ¹¯%§ÊÑÛ¦®™ÒÝ ·~>•efV>ý©#˜œŸÂ‘¤Zžñ—J[}f)ðx½V¹›»)à†ÒV; `\0èkÓþ5é²McëÒ6à×›ÚO$º,‘Mó.~CéíYy3Ò¢ÓJÂhš‹é·®Ð’®§ Š÷ÿ\0xÆ×Å6ùwº_ZùÕÁŠ@Ã¸æ´¼=®ÞhšŠ\\ÛHPƒÈ©„ììö6«‡ö±ºZžÉñ?Â/y§ÈãÏ•Á>¢¼N[wŠ]‡å¾–ð¯‰-<[ •%_pÄ‰Ü\Zòø5´ÛÉ¼´ÄdîŒå]q!¦™ç[7nã ñÅoøVÚ)Ìñ>3ŒóY2\'–ÌéQ%ËÚ»<d«„P\\}ÔCã;H\"£²kŒ‚ØÁ&þŒÔÎMÉw™­P‹K–g’E\\\"œQ±P3Ôö¿‚¾<KˆâÓ.¥Ù2ðŒ{JúKºÌAIÜ=ká«\rö3¤Ð1ŽD «)ä\Zú/á\'Å¨õã•©2C~£äcÇ›ÿ\0×¢2¹Ui8.e±ì\Z¥Î#Xƒ}ÿ\0J—MƒÉ„\0	÷ªk¹1ÅmZÄÛBâ‘Ïs±ðÙW…Áù›+R³h®ä!;õ«Þ\ZÁrC—¥mëö\nPÈ‹ò‘š‚vg&6j”ª7\0¼“Úµ.-rø_Ê¨\\/–zdŠjýV8‹×ÿ\0Ùÿ\0uw&TcêqZÿ\0³Ž®/ü\ro 2eBçÐ×!ñÞO7ÂQZ†ù¤œzà\Z±û6#YÚËm)Âœ8ÙŠ÷G¾Oâ¡`AÚcÖ¦\03L‘r§\'µMÉ²{´8ÆÓj\"võ«Š¹L0ØU9ƒsžG­T]È°#äV#Ý\"²·Ýª±Ê¬HÎH©„Ÿ»Ú:Ò½Â.ãíÁRÄŠ’BÀ|½j\0Lyeèi¹$â‹	=Å †ïÞ§@5Jß5?ÏH98ÔÒµõ\Zv.‘‘Ò¡žê;tf.µÏßøÁ!ÖÔ	˜qœñ^IâŸ‰W3$ÓçaûŠxªŒYW=vïÄUŒ 2ÿ\0y›^OãÏˆæÖá¢‹ $E÷kÏ<Añ+RÖÇÙavlð#ˆcùTÞø?â:Oy›kv<î<‘Né	jdë^:»×¥òmQœŽÆ+sÁÿ\05H·\Z“49ÎÓÖ½‹Áô¯¢°ˆI0ç{s]Ôq¬\n\0éJúä¼%ðßLðÅº,0/˜:¹šê µòÙŠŒ/j•›wZ³h€Æsj”ûR¢\'–O9§Ú£;¹9â­,K‘òç”ç‰2ƒJ¤ì¶V+”È=4\0¯­H8¤h‰íT‰Lˆ9BpsJ%Þ8ÓŒ`)¬ÝcZµÑ,¤¸ºFˆ2I¬õCVocÌ¿h+Ã’[FÛe›Ž=+æÍ\ZÖ0÷w?7ë]‡ÅoËã\raØ,ã? õ¯)×µß.&‰	§“|Ú#é°ØháiûZ»ø§Äk‰}ÞÀtËÇ‡Ë=K)ó‘‰lýj8âcQÉ­¨ÆÈò±¥V|ÌRBj!&ŽìŸ¥H–sJOÈN;ÕYXFHšÕ§ØãIf!y«pAòõ¨ìm·åŽ?à5¦-øëùRIôP²ÓÒMÅˆ­/62y‘¬\rdÆÎWÔ\Z·fÏ#àAkRU‘ß|<Ñ¦ñOŒmQÆCHŽ+í];OŠÞÍ 	´\"€1_>~Îó/äÔd@DKµN+èó.:#ê)]¡5ÔE·P[œJç<WàÈ5ËIDpH®œ° gƒè)À«\'4´{v>u·kÏ‡ZÑqµvãÐ×²é\Z•¿‰t¡$n²ôª¾6ð|:öŸ*gPqÞ¼Ã:õç€<Hl.Ã}™›…8k Ú[˜ÿ\0üý“~n£\\G!ç¡®Â«¦ëVÒîÆ$šúsÆº5¿‹<3#Æ™MÈqšùrëN“JÔäFá£oÊ›]z8Üúâ®•±àï¡PÏ	VÜ=\r|ô‘g8+õ¯¤¼\"ø£áíÍƒÛá+ózö¯¯bk{¹`eÚÊÅHôæ”U®„µZ	§î[”R22*—ÄìµÅªÝÿ\0Z»f$7QðJïþ5OâPÝe\03WÌÎ24U\rßXŒqš…1·hlíâ¥×Ræê>…ëwl•#¯zû÷þ	7a»â7Š\'\'w•¤‘Ÿs,uð2m##ñ¯Ñø$¥¦ísÇ}–Î¿7úTM¾V--îŽŠ$–ÒãŒ6ÓÉ¯œyº½à#‘)­{•ÔÆÓN¹ÜÄ‡æ¯‰·\\Í9)óøšæš´H†¥«£²$CóU{X]¯¢\\`ò}«SÈŠòØ6ð“Š©quH8êk—ch«ì6øD—RX`ãó¢M^å¬ÚÕŽPýÓYnÛ‹pj{yƒ®2}iEÜMXìüLKaœ×«øZ@Zxp7‘“´×‹èwÍa\'\\Ç‘øW è)ŠÊáîå\nüÅk£¡=\"ÈÙ«+â£Ýø+WŽ#™M»m×¤ð†¨šÆ-Ä_wyëZ—ð‰ì&VáYH5Éÿ\0\rëw^ñ­½ÉJM²@Þ™Áî>:µÐü1¡êW’†m[„¡>žÕäŸ´„ð÷ÄrÚÛ\0¸g@;ÍqSøŽöñ;‰ÞEŒaU˜œ\nõé.nYµ\"ÕÍˆ\'¹5]¢$ž)-¯RãåÎÒ®…GàW­¢´8™½®AÏ&¾¡ý“´;]fÚþÒáU·6985ó¼xÞ5ôwì™<°jÒˆÔ¦Zç¯é¶mFüÖ,|`ðQð‰D;qer»á”v=Çùõ¬ÿ\0\rø€ÆÚé÷Gü\Z÷ïŽ^_hpÍ<èaî1_)Û«i—2YÜ©†Àsü5á?}Z[¿¨õµnTqíK‘ÛZç¼9­–ÞvÜœ’º6]§®Eqµm,nšhâ¾,X›ŸNßÜù«ÂìîWìS[÷ŽWØ×Ò~4‡íÞ¾B«,ñ_0ˆÌS¾x\0â£SÒÃj¬[X÷@¤’Jš–â5B\nô#¥>V´pg9æ¬:Õ[ïâ¹§¡ìRÕ\ZžñTþ¾Y‘’H¾¢½®ým¼e ‹¸_åÈ*yóÎÂ¦»O‡ž7“Ã—BÖ~l¥8lÿ\0½oBw÷YË‹ÂóGÚÃtex—Gk9Ù€ïƒú×/pvîÜkÙ¼e£Åx<<®å#šòµ°l0L¿)lÎºÖ›žÑ‹e”0×]áÝ+ý*uR7‚wé[Ú·€àµÓEÄ8Tù®a¢–Ás”0všOH›SzÝó[ªO$jáŠœq^Áðàìž(ÕáÕ®Õ£µ·pP7°çòÈ|1øe7‹üD%,~Î®ƒ±•öï‚<5…`ÃÂŠ8\n¸¬ùu:êb’‡*Z˜·\Z9´;QÅMolá6úWO¨éªÅœäþUI-|±‚›³Z&y¨¡j~Ï2çšì-_íúw–~fÅr³ÃµÀ­ÏÌc`™â•Á£&ú×ìò1#5ƒrá²1óu®ßÄ‘\0­\"àç­p÷Œ\\@©LI]Mñ”‹ìûe\\Åoü4µ:=å¡þ°m¬ïZ½jÉˆÊ/­u°B–YÈ«–G^©¥q-N‚FM6PûÞ´ËVß\nç\"¤wÚ§\'NÂèWWY]¹©Œw;PÐÛ°I¡>Wåw{U£2‘ØŠµ€¬9¤1$`ñM\0ƒ‚Ò’C\'…6Í+ ËƒúSg½†Ö$®@äæ¸cÆ¢âO³ÂþU±?<çÓÚ„›+¥û­]Vg·´ŠKË¬ÿ\0ª…K\Zòxþò+©m§clƒ<þ5ÕxÛö€ðÿ\0‚ü>4ÏZod\\\\ßLwÈçêkçÈ4ï|BÔ¤šÝ„ŒKLÃŠ»r’õÑµ¯ˆ÷d5¼3¸à*u&™áŸ†þ\"ñœË,±½¥±9.ã“øW­ü9øc¤ÿ\0¤ß ¹¸\0Î8ë–šTq*@\0è@©ç}Œc€ðWÁ+Ã(“<k=ÇRì3Íz\r½¼Vñâ4\nÞâ¬#¨¤1œ½BZ”ÆˆÂHæ«ìÈ8ÀÅ[*v`j„[“Ñ…5ægkÕrÇwJ:>ð£É,N8#µ;j«=UîTu\"Ã/Ë‚3Ú¤DÄ,ÝÍXŠ<§ÖœWny¥Í}’+œN§æ–È«eFJæ|]âëi³\\ÝÌ¡”|«žM5¡\\­»\"Þ³¬C¤XÉqq\"$q‚Ic_.|Rø›/Š/š(¤d²…P~õSø‘ñ^ÿ\0Åó¼HÆ,à =~µæzÃÏ¨‘²¾žõ„§ÌùQôXl,0ÑöÕ÷èˆµ­B[”qnzå¾Å$íºY\0õÍZk™dPägµWd“­Òµ¥Xœ¼T«JäñXÙÆ‡Í±ö©khF\"Œ;š§ûÀ[€EUžu„9èÆµŠ±ÃvÉ5U‚º®éÞ²-à7dœ÷4Œís7~kJÂÐªôãÞ­¼É¡ŒF¸QÀíVp#LE@ÈÊqŒÔ«þ.\0©‚)r@^žµ­¢Âd˜\02X…³ \nÌT|«]ÿ\0Â­\rµYB©æ `ÍT…²>¬ø1á¥ðÿ\0„íw(I$PÍøô¯AÛ×½TÒl…¦Ÿ\r¸]¨ª\0_AV€Ø„Òµ%„\rëÞ¥\'š¤ŽœýìŒU‘p€Œ7>Ô¢´ÐwÔ‘¡ùpFA¯9ø¥à­é¯=ºbê1•`9¯IŠA($v§4K( 0#ÐÐ®(³çÿ\0†Þ7–ÆI4PàƒµKž‡Ò¹¿‹Þ{-@_[¯îŸ–Åu_\Z<\r.—{ý·`\0ƒ ^ÞõsA¼¶ø‡àÉm&`o¢NGsÅ	ßR’±Cö{ÕL5”Œ:€±®âžˆtojPãné¯ÐóZ_.åðÏ¼6þµÖþÑ:\"yö:´cýrmcî9¨ÖüÅÓê ÓÁ78å†kâS¨Â?Ø³§²­Ì[»Íb|NemB>9+hY²$r1¶Cnâž²ìcéU¡”ÆÝHqn<ŸZÒÖd¦Ùfy#9¯¤?d¯ÚÚóöj»Öe·ÒáÕ­õ8Õ%†I\n•e9Ó5óVqŒ=©Ì3ƒŒÖêÒ™<·?EuSçhóçû†¼eÔÄ¦È$“]¶ñÛ^ðQ¿\0ÄÒ§(z­r>I»Äéƒ\0îÅU4ŒàÔ¶bØÚ4«*&y^Õ‰1hå9\' ã¹&½ŠÝƒIŒ†º’<¤J¹\'½rµsTØ)ÞNÓƒëš’$dzôÇ·Œ±}(Šì‚Ë2íÇõ©Š°ÕÛ»/ÙÞµ¾r»—½jÛ]œ‰ð§ªšÄŒ¡f1RG7”À‚+E\"·=ËáMôsè·ñ+|êÀ‘]^¥¬Ai¥É3¸_”ô5åŸõ8×P¹ä’.=ÍyOí+ŠtÉf:V¥4ºkä´JN@«ŠæÐÍž	ûF]ZêŸµ	­d¤áˆ9æ¼zdd\'=Mtwo3Ü0•‹±9$ÖmÍº°;EzÔ¢ãšKVÌ•cÞ¤‚+fÃSÞvÊk9íöäžµ^EÛ–Rr+hTpdJ’šÔìá”%z×¶þÍÚúX__[¼á$”¡\\WÎzn¨SäàWE¦jrÙL—Ò‘NC)é]’Jµ7÷8’t¥v}¿âïêsÙy1 ‘€Ã½xµæ,ÒOö…/»\'\"´¾|W²×ìWHÖ¦[{®‘LÇ¡5Óêº_ÙÙÕ°AV‚+çe	R¤V\rTÑæÚ-ÛiÓ˜®žÛ<7u®úËSXTFÒn‰ñ¶Jç¤ÒóÖAÍgéwsØ–†E2[tÿ\0\rL¢¤®	¸»Æ°©6—r¡ƒ©B8¯˜oÕ¢¾¹V.ò\r{™Ô&ÒÒB?{i ÎsÒ¼cYš9õK’¸Ábq\\w¶ç§…Õ»á®Tæ¯ZL«¯ÍžµF&²ynÕn×îµs[KžÝ%}Ålƒ’y¤år7b¬€v‘P´g\'­cðžœc¦¬è<%ã”·Ùš“ÿ\0£ã±þè}ª_Y*¿Ú¢l!îµÁßY‡ÞÀá—‘^“¤$z·†c.w1@T{ŠõiËž7>GIR¨í³,ÿ\0ÂZ·Z2ÂÙ2\nÕÌÛU¸H\"R]›\n\0«ÂŒ¡rI¯@øAá¸ïõˆî%EaÈÈïZE#+l{OÂoCáÍ\nÒ?/¹ÛMzõÇ–ƒŒñ\\®”«iƒŽ:Võ«æ2£øi	ßfl4‘ÎŒ½	¬Ã	I1Ûšž¾ìséVXË8¨~a&æ×+Ž„QjÆÐðsZ_g;[v5™2˜ä`O%ÇR]RëíVë´O­ykkl²¼S)VÎ1]Ö§uåÚÈû€EÔzw„¬üG¥—ã¨íPßcD»žk©Ègh¤*ã9ô®šýcþÌR§•Á©5/†·6’fÞ]ÀôTZŽ˜të4†æ]×òJ)ÏK(¥©Ûhò	ì\"ª*Ì‹¹H\'²<7›¢Ä¿ÜÈ­¢=*Þæ)+YøÛÆ™e÷àò\rK+ŒMŽ-¹f<S!i åÞÈùn=ë+Zñ¶‰lÒÎãw÷Aå«+Å~;´ÐVDFqŽMx‡Š¼g5ã¼óÍ¹³€ð*’cGUâ?hNdº—ÊµS‘\Zµçž%ñýÎ¾ée§Ãò‘1’k*ÂËVñ¾¡äYÆæ2p_(ï¾ØøRÕ&™Vk²gaÍ7+hM›w<ãÀŸ/u©Åö·½Pœˆõ¯{Ðü/g£[$6‘,j;ZÆ±—SÆë\Z“Õª]ÞåIþ\Zž!Œ®sQ‰L„íæ§Ú1ÔgÚ¦ö\Z²ÐmàœÐ±î\\çšxúÑÙži-Er5‡fH5’”b»y«E°\rQ¸q¸y^ëô¡Øº–ÅH-ƒ¦3ÈïU|ÂÃ¯Õ43„VÁÆ:¦Þ#!4Ù.’c#| }â+™ñGÄ]#Ã6î÷×k¿\',\nðüvÔ5Ç{}5ÚÖØœ´EL§ÇS»ƒ«ˆ~êÓ¿CØ|uñIðÄ2¬÷d¨§8>õó?Š|m©øËR-<¬û›äŒtJÓEÔ|C#HC\'-$•Õéz\r®Ž„ ó®;¹Íw7£Ðöù0ù|[¿4Îiô4²µ3]6]FvzWâ]d^:ª±¯jõ?\ZÚIm¡Ëq0ÚÏÀá7÷%î›Ÿ—é]4£dx•q¯+É“©29µ¥õ©´Ñ}¿Ú-Ys¾6\rî+	ç–2èÃ8®‹œ—\'gÜ¾|VkéW—ÛË\'ž¸¦%½ÓK¿æÏ­tÚV£ökB²œw4‹‰›iá×Ž=ÿ\0{E9íŠ\ro[kÐ£6øCƒÜqT5˜f`mÔ¢ã‘@\\Îh˜ãæÍ /Íº§$úRzæšbØ f$‚kèïÙ—AŒÜÜê2)!p¾}Ó#k‰BÇÜíö7ÂÉ øjÓåÃJŽ(O”m›szü­ÀïU_RÂ0-œúT03¹(ËÛ­C-³0A¯r\'K°SæùEHŒ†ñªKo Š’wSÉÛŠQ¡±o:ùf3œûTÑDTN}k6=Ã,½ªÃÜ¹\n\\u£aëb-cN‡S°žÚá|Ä‘JE|Ø·?<}°d[3ç™\r}3 i£\\0u¯2øÑáÕ4#}æîßæÜ£ª÷§ÌŠWzÄm5mõ+é¿4°bÊ8®÷ÇvÉâ„¿jEÝ$\n³ÔŒu¯9øs®è~ºmÎŠZzŠôÏ†sý·Âú†‰sò¼JÑ°oÆ“ÑzÜù¢ÄªÝ á°:Äøˆþf®¼c•Ôj:{i>#¸µaóG)=ë“ø„Ù×Î\0ŒZ¸Ûp‰É4mÈÝ‘DaÔð¹• b­ÇÌ¦¥…•U‹\Zè‹d{¤p9ƒ*erNE1æƒ¥In’¾APkG E£ß´ÕkkF‚“å«ž*új—ðÛ5¹%¡¼öÝCF;X3.zšêt?[ÎnFæìÕÁ\')îÌáÊº\Z]îsœš”NXðNõ9µŠéD@=ÅS6-òAÚ°Õnk~Å¸n]dÈ\'µmGå]Ãµøjæ`˜õÇCÒ´­®·ƒ@–…ÿ\0*kLíbzw©a•.¡b¤uäzTPÞ9\r»šìáæ2F6··J›0ÜÔ³Ô&Ó™WÒ ¾ñaÕ$û=×ÍïÕÔ¿{åJ»O©èj=GK[•b«‚{Š¨Í ±Æøãáf¯+ÜYß¢•¾µášç‡/<?xðÜÆc`_G%Äö•òÊ?ˆTZ¾•¦øªÑà»Kò¾9½\Z{™Xù]ãß’yªò\'“^ã†wš	’H”ÍmÔ:öú×öÛU÷ŽEw6¥±šMnb2ä±E^°ÔÚØçå¤’ÐFã?Z­*Õp\rZ“‹ÐÏ•MjuòèÜŽAê^ø¹=£Ç§êò´ö™Û¿-ÿ\0Z¼&ÚòKVÊäŠß³¾KˆÁ\r’+¢q…xò³™)RwGÖ!!ÔíÄÐ:ÈŽ>V^„Vtzo—«\"Œ^=à/ˆ÷™`œ¬Œ¯R¾â½ÒÂþ×]ÓÖæÎEš9AÖ¼z”eG}ŽÚSSZîsC%“K¯lÇ{W/âoC$2]éø,Çvò¯L[5H¥GPr1Ò¹øm®4¥“ç¶<íì+–QRGUºrº<E¢1HREÃƒ‚éV-ÐÇ½w¾\"ðô\ZÊ5Õª¢Î£\'ojáÄ/…\n0l`×¢}\Z¢šº$àñŠ…“‚rM\\=¥Bc A\\vLõã#*åYàÚ|5lØ´/ÉŽN}Á®RWçÖ÷ÃËµVžŒH¹ÜW^VÐñó8.Nd?Å©>‰­IæÊñÚ½»à5ºÏ§4øåÛ©äÿ\0­ƒÅip –ûŒZ½ÓàF˜Ö>µgRKü×eô<\n^ò¹ëv6þ\\}wzV•˜15ŸñÃ’yV$÷5F_éq9H‹ÊGp0)§rZÔêâPËÁ«pÇ`†ûÆ¸qãÅd&;bA®rïãÝ¶ª–_c]¬ÁwSrãM½‘Ôk.ŸJÕåNèEUºñÜW²¤$1êkŠÕ5Ÿík·™X+ªk/ûRX7©\'¥yó¬Ó±ïRÁSqRhè5ï–mvmGåˆï]†¾)YhÚzÛµ³Hª?…º×œÛ™u[…„®ãô«Si¢8Ø(äqQ\Z²5xJ-YåïÆ‹›q¶‘S8\0M`ÙøŽÛ^Õä¼¸›n>XÕ†\0ô®~×ÂBå^ycD±žµËø‚öâÏr!Ù€+HÖ}QƒÀÂJÐg¹ø2`Rò ~Uãõ¾wîcƒŠó/„¯uD\\|å¹9È¯M2f3ü;kµ5%sÀ©I¸>„.9É9>µÆøãÇ¶Ú´ÆÂK–OJ¥ñâ$:-mk&ë–È=+Áµ¯KtòI+—–N™«FHŸ_ñ4—K$ÎZF$ç9¦ø;áþ©ã‹å-E§ç-#uo¥t_\r¾]xŽtÔ5Xš;Eåcn¯ÿ\0Ö¯¡t*ÛJ·X­£XÔp(r¾„Û©™áØørÍ\"·… `95ºEKlýÜâ§hUÔ“Ö¢énZÔª#cÆ(DÏ_”zÕ˜þà¨\Zevä\nw¬‰£…sÆ”°R3Æj£êÅ¸´Š£ÑgßxŸJ³V{B€Ã8æ•»”Ÿc¢‹æàiÁ@bF\ry¦«ñçÂÚHuhí‰IÏã\\¦¡ûRZ\"2ÙØ»ŸW8¹’ÝPÂWš¼`Ïpže\0œâ°ïµ;H3ç\\\"wÁ5ó/‰?hë\nâ\'[%\'(sŠâdÖõ­bfß-ÍÉsÜ’*H­BžUUëQ¨ŸMx‹ã>ƒ Dëÿ\0k˜q²?ñ¯ñOÇ½sX2Ãfÿ\0aˆð»>ö+±ðuõÓ‡»qn§©sÍu\ZvŸáýüên®GsÍf§)lŽŸgÂ/yó³“·Ò5¯Üd2I»¬’“]F•àÝ7HA-ã‹‹ŽÊz\n×KÍGW%,mÌ1ú¨Æ+¥ðçÃ{«ÆVºRíß4Õ7{³–®gRiÆŸºŽnÖÚâýÌv‘lˆœaEwø|¸N¹8ù·\nï|?àHlcû€Á­­EbÓ4Ùæ\0’k¦öG“}w>Xý£u4ÄƒO‡\n@Ëcµ|ã:¬²¶ÓÉÍwÿ\0¼Juÿ\0Ý±rÈh5ÅXAnèÛßkö§„´Ü›O¹Ô,”­½Ä±©\\aŠ®¨Í3y€îÏ$Õ§?`’6ŽPÝÆ{SDÆéå—«IÅi\nÝ\r»}O´Ðn´ó§Ç%ÔŒ¬—düÉŒä}\rsÒO•f*:ÓgMÈxçÚ RpÙäU%q^ÅˆÊÌŽ*G Å$K\"œ3­«µã©ÆjÄq³\rÊ¤óJÀ»‘ ™8’2½éÈA\ruCÆ’6žÖ·z}µÀ´3FÆ¸ÖO2ä(RªNy§ËÊg¤ü%ðãkÞ\'³·½`kîìÒÆÆ8‘1€\0ë_7~ÍòÚ]EÓq\0×ÑïvÎª*Ga°ÊÑ¿#ŒÔ³Éæð?\n…œ-žGµJq¸\0*lE±,pjT³VëŸ¥;q<°ÊÓÙåªåhˆåAŒ2HÙ%Nƒ°Ï4¦FmàZ`…‰ári+†Å0tÈÏãMºn­ä”2° Z—i¦z•íûûvò­\"O•5{9¾üDÝ)Ê`pPŸð¯¢þË§j\ZÓÎ2Ü b=kÆ¿h{Y-u{€™×»dUo€¾7šÓÄ0Á<Ÿ.6¯4÷V-éª=ö¡ð\r¾—ýŸ¯éöËi<¹ög¸\'õ¯•¼g:\\êÌÄevWßÿ\0ô´ñ_Ã+ôB_+ÌLúŠøOQÓ£¹fI@©ÀÍDw.÷Wg°D£‚~µ<0/÷¥w^	øI«øßZ†ÇOµÞüÒº£Ôšúÿ\0áßì‹áíÑ&Õjw\'‰È§Øv©Å#6‡,|?{~GÙl&›?ÜBk­Ñ>	xÛ[?èÚ%Ê¡ãs¦ÑùšýÑ|¢hñ*[é–Ð…]±ÅnC§DŸ*Bª£²ŠŽvöhø/RðòM<±\\n¥á!ð²/a^‹ÙUo4½NiÑÚÁ’­´Ö1Ð†û_§øŽûJsÈ, ã}vúV¿kªD¡X{Òj>ŠA!eÜ+Ž½ðÝÞ3=³2ªœñJ×\rQß>˜²!d<JÎhäŽF=ëžÑ¼k5”ÞMâ‘ƒ÷vÖw¶z¬!‘”ägƒY¸ÙhTd™RÎmŠÛš¯	Xm+ÅU¹ÓÌG1ñŽÕÈà„è@æ³^at^¸S*Ž½Þ¨Ç{5«0f/§¥\\·”2òrh’$”\0Ï­&R“<›èÛ>G\"±/ô¹`%àb1Ú­¥÷¨*Ã½]¶¾Iƒ%ÀïëDe(ê†¬ôg;ñ*`¹]àœ0aÅqþ/øam©$—ZS,n90Žÿ\0JôíCGŠõXÆ\0÷ZånáºÒ&,I)ê+Ò¡W›wfc(Øùþÿ\0IžÂfŠxÚ7^aŠÏžÑeS·:\Z÷ëýOñE´‹2¬w¤kÊüMà›íyKÆZÛ?,ƒkÐ§+èÎwn‡öB»·¾”È7Âå“ zÖ›F²\rW’‡È²‹Ž ­%fhYêÊ6“†ô®ÇÁÞ;»ð¥Ê´D½¹ožx#ükÍöåU·\n½§êƒ9Ï­oîÔ\\²9]ÑõÏ†|EaâÍ<ÜZ¸Ýž2~d>õfòÔYS¦+æ}Ä·ºÒ]éóä^ •‡¡ëÛüñBËÅh-®ŠÛ_c˜ÏFúW‘ˆÃ:NñØë£Y8êR¾Ò¥ÒÝ®cÉŽ\nšÌ×¼?£¸·\0Îåõô5èú¢MjÈ©GÞ®;UÓäÑž%/pèßÌW¦ª#¾yáåÍÏ>KºJ0W¨4ÉÕÜ½+UŠÒÓ\'Þ=	þµ…$Ot#žÕåÔ¦é¾Y_ƒÅCh—1«BýªO8°×,çÝ÷Ÿaôæ*Ô‚8éT>Ö¶­÷~ë¦•7g b©ûJm¹âM/ûBÅc?Î½Ç@¿·ðw‡müãó,j}ñ^aàÛEÖÍ”˜Êº«šì¼Gg.­{ogX&2jílù:jÛ»×o<K;*–œ_Jê¼5àI.>i›5£á/Ç¦F¥”À95ßé•@Bì×™lV²ð…•­¡XcŽõâž.Òâ‡V–ddsjú2à¨±Œ_9üFÔU5mÐüàe±õ¬ªh®uabç;ôsÉ,§b–`{V¤VR\r­(ÆGzÄÑ5/ìùŒ«‰ß¥tš×Šmn­a+\nÄà|ßZàK¹ôÖ¶ˆÝƒÃ×\Zn‰¶‘Ÿ³Ë#D²v,½EVÐüg‡înn., Õ<ØÞ3\rÏÝ„uÌÛüPžÛL›H‘ËÙ4žbÆÇ„l`‘õªÒÍ\rý»4Dn#Š¥%¡—³rMH¯>«su+ªÊÀÀÖ&±4•w\'m[ˆÍi1“nâ;\ZÈÖµ…f™ÝBöâ±”ŸC¦0Š;_‚ZìÍ®Éo4„©\\(&»ÿ\0|GƒD‚KkYK¢9Áû½kæ¿\rx¢æËUš[fØ¸Û¸ö©u©išI—\rß9¯cfœ‘ÆÁË(ÒW.kzÌ÷·O#±žw<w¯@øgð¤ÜºêzÌ`¶wGö¤Wø[Åk¢ßIy5ª\\Ëœ “¢×Kª|t×.N\"’;e,b›©:yf&z¸ÛÔú¦Ùml­ö«$j®*¼Þ#Òl†âú$®çñ•ÿ\0Ä^ùÙ¦Ô\'mÙþ3Yoâ©Ã¸vú“ÍgíC¥evøê$}‰ñ·ÂÚyÚo–Fÿ\0`šç5oÚ;G¶„›X¤˜{ñšùLÞÍ+aŸß<V÷× …·–èš•9tF±ÁàáñM³Ý5oÚrñÕÅœqƒÐ¿8®CRøùâK Æ;”ŒnE®/kwêìf?ðZÖ?|ItŠ«béŸQM9¾¥)`iíŒ¾ø‹­j,LúŒ®_›ŠÌm^îôœÊïõ&º¸>xŠqóCåæ·4ßÙûXcûÙ\nƒè´­}ØhFŸð©¤y¼o6YåUúš¿o¥Ø*ù“Þ:…é^Áeû8ü¡®&v|tÍlYþÏV0ÞçÐÑ\ZhÂy•y-\r‚M2\'ÖÙîN~ñÉ®–Éõ[…Ùiaåwf+Þ´ƒÚ^œ0 O~3šêm<cj\0X?JÓ•-6uçWø’lùÒÃÀ:Þ²ÀÝJÑ©ì+¾ðçÁ˜P†8þ&æ½ŠßJ‚Ü±®~•j(– B¨¤bads:­4Ä°¥tXGn£bSîãîñNŠ=ßwš®[n&Ø›{gJóoŽ\'ÿ\0„sÂm¿k:•^y5é‚s_$þÕþ62Ý®–ŽvÇó\r%l$®|É¬ß5æ¥3ùœ³~õÑé¿õMFÚ‹g+®âgmeø3Ã0x³[³ÞGf¯ÒI8Újžñ\'í®ïôûç{(xFÜ2ÖÈçwnöw2Á(Œí$Sí5\0»À?) VmåÜ—·Ë)ÌÉ>õ­à›>×YŠMM­–ÀªòÐ‘eŽ\\ßðV´Í3ûFãÈó’\0~mÌp+²Ñü;áoëW·QêPik<»g!VO¥yî»i:¥Ì1L³\"9Ó¡¤—r“M\ZRÚ‹fxAà°ïRZG4c|d0ô5Ÿ¡G}®Ý‹[H¼ùÛ¢úÕ½—útóÁ%»Å4\'¤}ÜTµb©Úú’Is‡a,|Ž¼Tö6ÐßÝF±ýâÀVDúˆ•òØÏJîþhZñ\rœ™@Ç>™§°ÝºUü!ðÚèž·1#®ã]¾J’1øTzmªÛ[C\n|¨\0ÀnXDlv°*Q:îÙ¢7hÉÃf˜[o×Ò”n#åïUa¤I3»F@n}êÎG=GZyÏz\"MÛÎxÆx¥„¶\nI&¬‰£@N	õZ7]‡¾jµ)¤ð§º2Ù0³vô,pLäæ ŽE„g#‘RCpYÈ^õZ4JGž|oðÚjþº} ËnD‰ýkç/o³ñR´¡þµõçt‡½ðÎ¢no)ˆ¼WÇVÎÖZ¯<üþtAY„¾îÏ‡—1x“ÁW8óPŒšùâ?‚´»û’	·œÈ~NÆ½Óö}ÖwÛµ«7¸Þ¼ûö‚ðéµñe¤à-å°8ëNPJA^-B~ÎŸ-¼%à«YåŒ}¶íÌì9ädËë\rlÊ§*=)<5`i»\0ÛöxöãÓhÅhùC5¢Ð\nV¶äÇ–§-¶[¸«ÞK€Í9 \'v8>ôh?‘ùõmykx¤Fë‘Úö]¿<o\\W ßi,ÒÇ&ážJÕÍ?ÄMˆfVvMC‹èf¥g©ÔÅvêÛ&SÞ¤k;{¢Ä`“PAuoz o…?ìÍóbcÍBVÜ¶ú£œÕü³b¼ŸA\\Œ–7Þ¸Ì1OJõX/÷²®ß|T7Z<7¨Ì\0\'éT\Z5¡Éø{Ç°ÊM½òlS]/ú-ÜFHX0nàô®[]ðXq#©*ýŠ×;mq¨ø~FRÌñÕL•xµâë/ÜÇÔ¸i:t­;U‚êñJ³)èÊs^âôïÁ›’^›k‘K}wÀ²´öRý?9!}=ê%NÁu¡ï¤	rGäj`\0$äƒ\\o„~\'iÚô!Ÿg¹èb“×Ú»‹{¤–<ƒšÎÝËNåH.$±;T=j¸ÿ\0fÔá*Fs×4“D8ô¬óDw.TúÔ¥­ÐúXÉÖ|0ö»å¶äuÀ¬õ@é-ìAã?+ßZêI¸G?=¸5SXðµ¶©–%\nÝwÖºh×pÑ˜¸_Txß‰¾a$¼Ò›Î‹©ˆ}åÿ\0\Zà¦´{weu\nAÁ:W¶Mky \\¸`Z?Ò³õ\rNñd2âÚ÷qÁ5êÒ­}wF2]ãŸfÏLU;›2­¸k¥Ö4­åâ™Þ\rg,\"c´×lm%tav™Ÿis$\rµºV¥¬¤m–)6H§ ƒ‚\rSBBßÝFk“’ÉíÚ§™ÚÌ-‡´|-øÃö™Ž‘­H«.qì~÷±÷¯U¾´Ð¨ <}Gñ¬Êâ1	ÎrW¶ü2øµ-¨‹NÖßt\0Šàó´ú7·½xrøŸs½YGÈÛñg†¤¶˜Km§ïÒ¹o-d²d8éšöç³‹PŒ9exØd0äWâo²Ï,Ö¸ã·­j”+G’dBu0óU);CÛ’Æ2˜#µajÖ{%Î8®¦»´2‚q“Ú–ãMŠeÃz×‹VŒ¨NÌû\\6.Úw[õG¶|\nÓœø>Öæh™ !8í“Šö\rÂoµÄñþñ¹\'ðjß\niÂØ£¬QˆÜ¬89¯X–&B\0àŠé±óSÒM#&8¼´Æ>aÞ´l U¯_zÀFsžæµôøÁŒdûV‘Ð†Ù•â-RÃš…õË¬Q[ÄÎwôàWÇ“ü@¶ñ\\“ß#mf\'Û<W¥þÛŸ[@ð§‡-&ÅÍüæØ\"1ž¿SŠùÂ\"hd[fŽÄW&\".q²=|¹¨Iß©ìí«º¡ÚØÿ\0v³¯.ïfÜ¡Ë/µT‚î“×Þ®ÃªÁMƒ–5å^ÇÕB/¡JÝ¤<Ü7ük]<e’ù!g?.k8®u«—XAÀ©®aƒE„ù¤ýhŒ®/fúš+¬\\åÚfÆy×\'­ëM)tIpy¬ýWÄ-&à[\n:V×ÒM4C#Ô×D)¹NP¤½öjÇ¨ƒ+?íO·kNC¬O3ž0£5ÇÄe{¨ÕÜì.3ù×Ý_\n<%¢ÚøfÎ[[X•ž5bû~bqë]ª,ñªãáGJqÜù—Jøaâ\\1Mš4î_å®ÓÃß³Ž³¨×—Ilƒ¨q¯¨VÆ$à ×b(–!òïZ*hò\'­-ÙáÚoìÅ¥ªbâîY1íŒ×G¥þÏÞÓÕ‹Áç¿ûf½:0I>•!CƒÏÕ¢‹G$«M½YÆY|&ðý¦JXC÷lAá\r*Í1¬iŽxQ[k\\â˜P’yJ¹ÍîÊ–ºœ}!O÷ˆ«ÑÛC\Z6!]ËÇJ@v©Éâ…}ÙíŠÐ”Ù*ì;\0_­KV\\í«TÉ Hx#u)2b¼a@Øâ=O­S3u\0äÔÑ|Ñ0y©Ô±æÎUšvlóÖ•\"r[T¾X‰+¸Ð¬…¹3‘Ãt©\"œ;5]‰,IàûSNsœñT´Ùy&/8©“ä©Zƒ’{t«9ÎI?…Re-QG^ÕNÒnnY€¤ó_žu÷Ö|Iy3Å¤89í_d|r×ŸKðÙEo,ÎÛ;ðÂ¾ñ] ºÖ—{lŒ°Vb:sÖ¦+QÇBÏƒ¼oâ\r:F[Å·¼cˆ•œ\rÇÒXø«Â–\rk|Ó%”§/”zwŒ<+a¢_ÙÃáÍSûL¼\"BÑÿ\0	î+›Õ<IªßÛKÛ©§Š3ÂHäàþ5¹Û~F0\\±\rwžÕt8|9iµÔ€ùLS8=¹®\'MòÍä^f|½ÃwÒ½_\\‹Á^)J²ÒÝtéÎË€8èô¢ŠºG=ªøJÏMð¬zœÑ\\Í&$M†Œú\\<¥ÛïœŸzé<]á—ðµ×Ù’þ+ØŠ†Dr®e¦`€e­v%lv~ƒ]ÐámzÂÐ´ñçà\ZéâTwz-Ôz†×3n_¶/\'Ö©é¾,ñ´H4ëË%m:Sæ 2wÊ¦ñ?<9âXbÑÆŸ|Ç; ?!?J- i}S<þAwyòŽ³ú×Ôß³oƒ×t—ò&JaW\"¾sðv–×Wë€X’\0æ¾éøK£E øZÝY@w±ŽEgÐ»sBñ(¢em¸Ç¥h§ÎÄžWµ[†Ò6]ÀrjVâ»0cL°ÏJ½ötþèçÒ¬Ï¦y„àsýáP%‹†a–Èôª*ãNY	œô§4Á¿h8õÇj¸tw«Ñ¦i#ò I³™—Nv\\vÏjUÒU³Ç~k¢òÇZgÙ8l±?Jhg1ögÜÂC’(VŽMn_iÅÃ4móÐÖªéç¦(Cè[[³%´žaÜ \nø×â-¡Ð|S}n6JJý3‘_^Á†B§;^kçÚ/@[=vøÆñá°:ýTödô±è³Ï‰?dXà\nô¯ÚÁòx†ÞÓì„,Ì7=2;WÎ5cê¹VÍ}Ïñ3áýÝÃ/xƒ|W×êŒŸ,‘­ø~ Òš&œ¹ecCà^¶Þ øk£É!&{t6Ò’rC!Ç?¥z[ã«~UáŸ³N¢l5OørFfò§[È?ÂãŠ×½8ÈV¶cVB-Û4þ?\n•>˜§¯51×q9VÚ½Ž­X¥V=vžµ\ræƒ\rÏÌVAÎPõ®Ä\Z5æŸ>û$tÝÑ“<Vž‰ãí>5[ØÌª\0LsD.–¤2ùÓ\'ÒçgUi1ÉjÓ³ñ4{Dr)u8àUÝ;]ÓõhÉ…Ô«u…>ïE†hŸÊdnŒi»uwØ–ÒX.âmŒ¯øÔoÑ3É võ¬«ÜY¾õº1ŒäÞ·ý¼\n|É½C]‹¶–c#¹“dÑàÿ\0z²um:ÐE$ÌTF£,MiÉyg|ÇËukŸñ}Ìš,ñ@7`p§½FÛ‚Zhy_Œb°{.z¯zÇÑüUy¦þêíçpÏ£>°–±‹k»v´•?½ÐÒÚÙZkÅ0ö¦¤!yá}+Äéºd‚Òï®ØÎ~”Ý#ÇÚ§„n–×YŠImÔ…óG\'´É¼-w§Jn,ŽqÚ®Ç©C¨Z›}bÜgÜG´¶nç¦è^%µÖcÚN³!\0ñÔVÐeqê\r|ñ6“¨ø^óíº,îÑu¼Œ{ŠíüñVÆKmHk®æ8Rk¸•í©è³Ø.Æ ¨¡»šÏpÉòýj³i|“•¡êÌ–‰$[³É¤‘E9~Ë«BÑ’zät®\'[ðŒöÓÚå”rq]lÚy…ÌˆJ°î:\Z–×SF-È\n¼z\Z¨NPwL™E5fy¼\ZµôMc«@$Rp$aó-rž ð4ÖóZ´ÚžŒ½@÷ëºÿ\0ƒ`ÔÕÞCÎå®ÍÔü+tÉ(ß8;ÆAëÐ®¥¢Üãä”z\\óõƒøJàô4ô°Îá·Šïn´/#\\iì°ÏÔÆOZçŸN–ÆWŠhÊ²ž„W|21~éÊ\\éX”]ãÒˆ#ÚÁTö®Äië(Ú3šÊ×tgŠÎic2\rÕËZœ^¦Ôg­™³à_‹w¼û¢ÆãM$=LOj÷\r7S²ÕlÖhg†QËÍ|t×)y#s‰GU®»á÷Ä+ï^¬LÆ{aºü>â¼Ë4ÎÍ¶=¿Ä¾\ro-FZãÖ\\+Fà«Ž9¯WÐ5Û?ib{YÄãz­`ø³Âiu –ØlsÏ­kÍ\Z‘ä¨”è¿iM™Ÿ~\"ßx+Æ¾^æšÂämšx>Œ=ëìß\rx³Kñ=ŠËkr…€ÃDÇ§ÜWÃÚ6öš¼Mv¡\Z\'Æò9Ôëš¤šV£k¨X^=»q‰alf¹]-$vûHâ_44}O³\ZÉ›,WÐU›KètûK«‹‡òâ…’}«Á¼ûD1¾´ßj‡\0˜×¿Qßð¨~<|h³ŸÃ­¤è—bi/To–#÷WÐûÔ9+^ãÊJ-4ümÕuoŠ>Õ5uŠIlã*8TÕx*+;!-Ä[g8á‡5×øOWÓ´öÎáUå«¤˜äâ¦¶½ŠúOa}EyÕjÊÖGÒápð„Š3éö¶ÑÉ¾ìËòØÕ)4vû2»ac5Ð](q»–EÏ¥aë\Z’ÛXº–•çÅ]žêvØ¢ú¼z$\'aÍqÚž³5ì®ÌÆF4ËÛÙ/&eÉlð:-4¬ÊËµÙt9ª×TS“#°ÐMßï®\\ý*Ž£24Í\nIÇ­jêW¦ÞkaÏRe[@RV/Û¦+¾OÙÇ•-IËQÕžÆy¶!²£\Zûgà%ø¿ð5›³n” SÍ|ix¹	Å}=û/êâM[VbÆ&ÀRmÝã`”T‘ï#¡h`àæš¤óŒR ±ê+¢çŽ…QŒôå8Í&ìŒ¢•zõÇ½Pn+¶ÜÓ#=XSœ\rÇœÔO!\nvŒŸzI\\q]‡`1Æ½ú~4°8 –ëK‘ÏJQœŒàTNØà\Zl³ˆÁ¹ªFgrBŸ¥Kw\ZÐ¹l„¼„rjõ²°Rx\0ÕkEh£FN9©¡D[wš\ZÜ¶$\nŸ0zTsL€œU#+yã½5˜°ÏAWgmJD¹ÞÝqš˜Zú¶GÒ«Û.ó·5eîä/>õ)ÜI%¹\"«…\0Šw\\æª$»IÀÆiÂF1±¡D\\ÇþÓ:t÷^ŽæÚ2ík(‘€þï ŸÖ¾lKM?]²wt_;n=Á¯¹µ->\rZÊKyãDë´†\ZùŸâÀ\rKC¾“Pðè3ÀÄ³Z“Èú…8»=KZ£ç»Ý}6è´{¡lü¬:W?{¥\\ÈÍ&Dž¤W«^››66ú•“Àý\nÈ•>ctKDLLOðšÖ÷\'–Ç7ðú-.RC¬ í of™¯i¶÷:­ôúC*Y©ùW8?…l\\xfpÐ³+2]$Û‚\Z#sÝzUiÐ,ÎVK‰á˜œqZ^ðö§¯^4Zm«]Ïó\n/ «oáØ¥Râ}§Õ…t\n›[ðuÔ÷\Z<±4’Çå¶9Ú©y‹cNÛâƒÞKž¿¡Å©YÛ!C	\\2™üW9â×ðíØŽm\nÚ[Vb|È$$ãÓ×éú¯}b\"‹H+¨I!ßu‘ó†íÍz‡ÄØ¦ûágÂï|BÔüAa{c­L!ŠÆûè¤*Ì½xFÎ:cÞ¥¥mGÕyðKÂçTÖ­£1Îã_jéº{ÚY$K\0\0|Õâ³¿…šÚâKÃ\0ý«è˜ÛÍUùGZ‡`L©lŒ‡nÅÉìkB6ÚƒoÝíH±­žýO­=õ¤¶‡-Î)ë8ã“À§ÈÀPµL±îO“) ê3Ö‹Šå=»xÆ*7Ú¼¶8Å\\ldã¥Fð‰\Z®Ïas	PÊ“õ©õÉ ÂˆH^žÃÑN;Tn=ÃåEbÝéÌ¢I\0$õâ¶òœwªòÌYxcéLg òbR\0>íy§Ç­ j1¨v·|“Ž€î¯NÔ[ý&CŽéX~)Óµ|;¨Zì$‰€úâ“ÐK¹ó/Ã{õ±ÕÑwÉÇ÷/‚µ™5ÿ\0\0¸yb·RÑÄXáO°í_Z;é\Z¹Ü¬\Z7Áã¯5íý£/|‡ìö°O¡B—*H#ìjÒæFm]Ý­|ð=úøã…qçF!Õa{9·;‡+¸{×ÕÛ‚™Ïl×åV“ñ^ÿ\0Rñæ›®;ˆMµÒKµIÚ¿6kõcFºUÒ­ná`ÑOÈ§ØŒÖ±Z}Dx1÷,q”F$dö«›	L¾´Ù8P(°\'©ùÅ=š² }\rsZ¶‚Hv‰p[¨=+²X³#æ¨Ì9È¬•âF’G“¾‹%”ŒášìÀñZz_‹µ(,W@MO0u®ÚëGŠéXÌê‘Y¼¡¸tô«»h–’ÔètŸØê©û¹WpêŒy«Wzlw0@2kÍ$ÒZÚrçtVŽŸâûí\"]—\nn õÏ8¥g`R4ît››\0Ä.Fx Õýâ{¥k{„m§£‘Z\Z\'‰l5¤>[qÕó[U~âšoR“LáüYà{-JÖEž%`G:Æ¼“Pð&­á©ÚëL‘¥Œë_AëÒAµN9ç5-¨Ã°Ç¡5‚V*-žM¡xçsmQ\rÓsŒ~uÐ^iÖZ´£uu#ªÖÆµàí;Z…–h‚È:H¼0®ïÂÚç…¤°v»¶^v÷Þõ^¨|úUæŒI€™bÏ*Õ“}a§klCot¼ç¦k Òüg Åòg<aúf¢Õü>—NeŒŽ{ŠJVÜ¥cGñN¯à¹öJ\ZþÇ8ÃuÚ½sÂþ9Ó|Ioº€%ï˜~äþMÆžN¾tž•œúBù†ïIœÃp§vÜàÐâž¨£’E”m`j½ÞŽZ6`9=«Ê|+ñZk)RÓ]B­ÀÓñ¯YÓ5˜/!ß«20àƒšÅ¦„Œ¨eŸNc’Y?ºj{«[/Z²2+Ô¢µÚÖ;ˆÛ dw…y¥ÍjÌbrÙ…}	8}oÁ—º¦êÁ›hçÚ£²Ölµ¨þËª Šç¢ÌxÁ÷®öÛU7ˆé»±¬_ø×Qæ¶eëÅvÐÅ¸»LÆT¯ª9-KNm\ZdÜÊñ¿Ýu<\Z°¶)yfêà\0ÊA5‰ª‹«T6WÊÞJ‘ýµ`j×:ôv [ÎÒÚ2GÖ½)Ïš\'<)4ÎSÒšßTž8þR®@ÇÖšŽ[å“åqÔšÙƒO¹i·H½ùÈæ£Õtí¯œíYB•Ö§DªYÙ7|eyáYâ|Æq¾3Ñ…}áßiþ(³3ZL¬ã‡?2Ÿq_%G4¶Kóçi­ÿ\0\røžëC»[›9¶6FW<0ô5SÃ©+ÇsÔ”^§Ð+Ñ!h^u”ž¢¹½MfÃÊd18úV§‡¼cgã+ØEx«óGž~¢ªkQÈº5ä-ƒ·æ¼é·nY”ì¦¤ŠºMÒ\\ÚïŒb±õ˜ßÎc¸•ö5™áëÿ\0³ÜùLp®võ®—ÄÚ-Î˜ðùñ•¨e÷µãÔ¼öYF¢Órž‰a-Ú;Œ^™®«Ão*cf¡¨üý˜b’+ÅL~áV\Zë4ßC¨¼“[OäÂ‡%Í~+žI´vÆJ³\ZomSJ»ŽL+7*Õã^&Ö>Órê£€p w®ÏâPºð´í§ÏòJWpçï)èkÍl#mBð¹9E5ágs«ŸÝºe­Ý‘ÞiWžÙ­9n¾É“I‚ç…«q[ªð1øÖ¡0º¹e/•S€z4­æ|æ2r«5E?Rh^æG”‚Äž¦Ÿ:ì\rŽ¢¥†f·Œ\"Œ¯åLš\'œƒŠÂîNìê…(Æ6E_³¥-·«ÛeÝI!Ôo­˜œ}kÅ,ð°íü«Ñ>Þ¶ã%Œœ‰?ZÚ›jZ¸¸^‹>ÅHF\ZHåÉ#­$3+FqNF-ƒ]I>‡Î_¸à2O½9O¡Î)¡—æ=êCE»qÎ}(Š²¸-KaÈÒ õ¤VàäÐ\\õ¥¬°»Þ¹ö¦™sÏJvC¯J¯·ioJI$®$›Ø©q–f#Õ†C‘W$ÚAã=j«:®A¨)3N	ÇÙ¥sÄžgZH3œæ®ÛÆ9ZiØh•0g‘JÇŒdTNHÂ†\0šPH<T×äîš°½xªâ\0Äžµ:·ÂµQ±\ZìÅ§)ùHéšŒ¶)FqÏ4ÂÄè6Å\'5ÅæÆÀŒÖ¼í#<\ZT`qšI_AÄæµ¯i:Ün·–qLþ%ä~5åþ ýšt»ÒÒéóIdäðÜµî,™=hPŒäÒŒTv\ZgÈÚÇÀÏèÅÚ.ö0p<³ƒù\Zã5;\roJ,·ZLÊªpY£8¯¹¥µYCŒ`ÖuÆ“ÈÉ$Hêz‚µZ º>½šÏÊÝ,õª°-˜ys4Dö<WÙÚ×ÂÏj¥üÝ2Ý‹u*›Iü«‘›ösðÕÓ;cû(Ø\\Í\"—©óŒ:v¡;¯:Äy\\ð+Ñ¼á\rS\\¶“^]ßÁnAq+:FOR8ö¯WÐÿ\0gßØÊ¤‰š1ÑdW¦èž±ÑaX­`EÚ1ÀªrrVdE(ìŠþ\nð¢hšjGÀù­tÖÈÊN~é¦Û¬™ùxSVm<òqŒÒAÇÊäb¤µWG]xÍM°†„úêH‰¼Ÿ˜zÔíl#Ì\'ëTÃ\nzJÅJã#9â„ZÀ®À‘Õ=N9¦RŽõ§2.W#\Z…™W9j™½êœà1 Çÿ\0^…«*;h>#ØbËÛ5±¢¾ãSQí1NS³ÇÊŠÓ”/Ñ™\ZÇ•\Zœ“Ö°•Ï˜pw/B=+kYµ8 cƒXŠ›‡ßïY”ŒßøVú¡<—2ZÆÒ³n<Wñ¿À6V~’êÒÜG%¹Îå«ÕmÚH¹Ï-Ú³üi\nêþ¿³uÞ&Ž)%mŠŽ§Å–÷Ä)Ûšýbýüh<gðCDœ¸k‹Dû$£99^Ÿ¡ùCyh`»’ºÊÅq_sÁ6ü`^øbWTÇw“Ûî¶?JéJñ3i£í¯!€np)ÒÝêüq”žG¥5bÜ§ŠI²?9\"N´ç@ãšùÏÂ´•Ý©XµÈ<õX†ò¯eðÇt?F­a{ÌFL[°Ãê*,ípSŽÇBÐ ˆ¶yöªí“v{U¯%I_á¦y|dóïJ+AJÆUæ•Ò¶à\rs—Þ1#lù³ü$Wr ß÷Tþtj¥p*}\r%q«S>cÉV0H½Ö¯éž(Ôôž.TÜCëÞºÛÝ\"&º†±§Ñ]wÀxñ÷MRîI¯¥øŽÇZ…‚ÌR>ãðjÜ&)1çµrWú\0‹t2Ž@T¶º–¡k[ß¢÷=k0½´7UXqiÛr¤‘Þ¨[kð]›ö·÷M^gÊäsô¦Ñ¦¬ÀÖ¼¦k ¾ß&|q\"q\\¥ k^$îk»Lu^¢½^Ú6OAÓš¸ÑE\"p6úš–¹EÜñÝ#X¶¿O*fÚç³Õ{Í&&™Œ2yoÔc½wž\"ø_cª“qj~Í63¹8•p\Z†­xfPníÞâé:r1P¼Š+MµÃ{ôy˜éNÒ¯µ/JÓé³yÖ§–„ôÅké×vZÜFþÖ¢¹ðÕÍƒ-˜”ôíZFÝCG±Þø7âE–¸¾K¿Ù¯)?#]Ä3C\"…l÷¯œ¦ŽÖê_ÞFÖ— åd^9®ŸÃ5\rl:’›«@6¬ª2Â±”:¢‡«ê\Z*J²ðG÷k5Þø\\¼Dò‡·Ò¶ô=~×X¶ÛÌ²)\"¯Oc\rê±a´ö56)5c—¼Ó¬|A›ÕsŽ‡¨®UðÍö#Ëo™móé^‰¨hRÚ–’0TƒÃ-W‹PFF·¾^½\ZÒIÃmQ-&y5íœZ²îŒ‹{®èF7W¨Ú\\Á;Cp62žýëÙ<Mà%ºˆÝX0uÂžµæ> µºgÝ£y‘Œdö¯b•E5h³™Å-l`jv¨m\0ÎH¬í>#öIÝNL|‘íVî–d]§¡ãŠÖð~‡$pÓ¡ï·Jš‘PK”ÍÑµÉlnâ	r)àƒ^½áïÿ\0ÂW¤^C.á#;ˆè}ëÁ®¢û%Üˆ§!OQ]ßÂ{Á6§q9/ÈÍc>Y&úŽ	Åè\\c08d9»K/?‰Q#»—3F0¹=½«‹½„$Ò¨Ã\ZÇšþm6î9CÃb¼Š´Ôãcè0Õ½”®{]ÆŠšU¥­ÂÜ$*îÚ§‘õ®¿Á~5ƒÃ«$—A$‰Ð©\rÏùé^o¯OrŠ‚B@éÍZ“Ä®Ö2BÃ/Ð0¯>0qÑ3ÙEQZE¯ˆÞ!>\'ñ%Ä±Ÿ•Ûd@œ€½…Wðþ–ÖÈÁ‡ÍÞ¹È.€ÔqÝƒÖ»{{Y ˆJ&ÕñÐóWÊÎ‰TŒbû\"Ž¯rl s¬Ü\nç­ØÇ¦îsZÚÍ¬šäVÑa˜÷¥aàGÛ›™€\0tJé©e|þ´¥V£Õ™6<Ñ‘»Þµ/@žÛd±9ëŠÚ‡CÒôÆRÌ»‡\\œÓçñ›h¤F‡°¬Õ	3yf4ã²¹…¤xjå·f=ªGS]?‚<<tŸÛÝ3ó¼q\\íßÝþKtØj«¦ø’ñµkid”ì}+¢¹]Û<Ê˜ÙÍ8ÚÈûK‘d±¿ˆ¨©]ú­cxV÷íš-¤Ù8(:V©rå¸8­,p_ÝeÈïØÓÓ`§ŸåUYqô¤‰È$­?@‘r7ò•·ËUÝ¸lŠXÐÊ98QA·làr(õ®MhÝ“ÿ\05?–\08ã5VÅH;ºzÕ3ÒšÕ	hU6yþ*¨ð¯;€&µ¼¼Ufƒ(àb§mk±˜±˜•<UØn©ÜIÏzl–Œ‘NG½VUòŽr=)Äw±t8ur~íK\0“Š¡kr9^ªÌaX»n)X9´,4J[(yþtå<1ôªÑHPžþ”àC«cåþÕ]Å\r¬NqÁüèŒJ‘Bƒ´óLÆ3ÍO¼i¾„ÄíLÚJýóõ¦GºRÍü\'¥\nL„äcëV‰Ž¨š4,[4UÈ>´£\0b‘U³€3éHž·­5“®x4ò;ãŠi!¦Ué–ÏÍN« !x5b8Ï=év	ÇÎ(ÒÑ\r·µØ?Ú©äÇu,\nrÕ\"Û¤‘ž?Z»h$ûŽ„*\r›·Ö”yŒäõ§ž”£*}éšŸ&sËô€G­­?`¥¢ˆjžÇ¥*œÎßÂƒÇ5¦rAç±ª‹Öá¹apÄäÐÛTzUhnWiy©7dçò5šD%q	&™*oB;ö¥óHÏJ^zŠÒÆ…I$V\n¹Ýâ¦!ç\rÔô©ZÏäýMD‘ŽÝ1ŠIØ·(·l~•ƒy¦ùre5¸Žr{Ó.¡ó`ÂžiîÛDP´ŠŠHÄ¨ÊËÛšÛŠØ;²–ééK=‚,LKžÂ•µâO‰z;hþ0¿]¿+>õükÚ?bmu¼/ñsK¼.E½æm†éŸÄ\næi-\0Yj¶—Ár“.ÒG¨®Áž4—ÂÒÚMm÷¡¸Iï€Àÿ\0JÞè7±ûS\Zù€ÐÓdL¯*€µˆüGá-#V„†ŽîÚ9AãšÚ\0(n\0ÝêvÔ„¯©øéâÿ\0Ùº+„iôæTaÆßZñÝcáïˆ¼veŠ9âdäK þb¾ºƒUÖ´EÄñ&¥§ÝÎ­\rKÃþ!cßúÌ1åÜ.2~´Y­ˆrî™<#û@ëš¥¾­Ûm—‚XbOÎ½ŸÂ?|?â±¶Þía˜ÿ\0Ë	¾Vÿ\0ëÕ~Íºv¹j÷6AdÈ$4$kÂ<Gð+\\ðù’kUì<cƒQu³±>§F›•ˆ¨d1ªî×Ëø·âÏÊ¶×y¼·NW “f¯dð§Æx±cŠâOìÛ†÷wŸféG/aÝ¥ª;;„3œ.BÓ\ZÕcÍ^X±¼N2>R¼æ³u_:U*¿-+yŽ%¬â²¸ñVdúFÐ|²z\Z³¶H“–öÍ÷`®qõ¤®÷9-C@Y¤ß0È=;ÔóßiÒ´m™cµÝÂã#Ò¨ÜiQÝ\0séR‚×FE®·’mó¿B§ŠÖ†A1à‚+™Ô¼?ö“æFr}*½…Åþ–‡*ò ìi²v;¸ö£\'¯JsÅ®ðÈÁë˜Ó|OozÛIòä›ŠÛ†pó	KdzÔ[¡j\\Ç/â/„Ö×l÷\Z[;œdmû¤ý+{oÂÓ5x\Zâß(È¯lI·s¸àU{åµ»…’dWaƒÒ]ŠZžE-µ†½›)|tkôë­5ŽÐ&ˆõS]~¿ðî$•îô™þË çËÏÊk•Ÿ[»Ó$0j¶çŠ84£}‡cWÀºÎ›§êO!vÛ‚™â½jËVŠp¬ŽÀ×…Mcm©Df¶pHçŠn›âmK@—ËÆš†¯°£#e¹•Ôm÷¬][Ãë29E\rí\\†~\'[_F«3ˆ¤èTžµÛÙê©wø¤ÄÖmX›ßs”/6–ÛUK à¡þ•ORÒl|M\rd#žÌ+¶½¶†é0Të\\Ž­¥IfÆH˜©\nÑït+i¡å:ÿ\0ƒçÒ$—eˆ\nåï¯/R/%„c°¯qMM.¢¿U\0ñ¼ô®GÄßŒ›î,0sÎÑÒ½*u”´™»5îá²\Zºo†r<UV}x«+à]FîR©jáýÆ+Ðþü?\ZTo&¡\Z‹€r§®k9FÅÆû3™Öchu+ƒÄŠÎ6l;<²þ˜ëš—…ôÙçó®TŸ|U2Ú.“•ˆ#°ôÀu*‰&•á«ù1[°SÆX`Sµ½:mXL\0b3Åu÷~4HC,Œæ¸¿ëRjy–Lf¸åNÚž®\n»©>[Y\"_é–·o%Õë/”§åkª¹¸´hÙ-B°_Jó½5˜A´‚zWA§9·°™Á$Öð‚Jç^´ç7®…85—¶Ö%”²ð3W&ñMäùýáQè+š‚B÷’¹9Ïz³¹ÈùWuiÊrÙ³B[ù¥mÎä¥3íIâ©Ç¨ ÒÞ©]W)!}§##éKmtc‘X ô¨ðHü*h¡•ÏÉ¸ý)ZÁeÔû+àî­ý£á7\0œ ×q½Ø’?JòÙÚöWðá·•²ËÓW®òK`þUiØHåPHÎiaqGíUJ,Ù4Ø$fbs‘Sr‘¤%¤=è‹£J¦’1b;U«cËRè\'èË)>åÎ)RmäásŽõ\\1l‚vÔ±…û¥ºV‰§¹™“‚ä’m¨^A¸)4«(h8\"£2+nl{TH¦ùI”¨RxÆj•Ì\\ü¼SÌÌA\\“ê*@É\"€üZv¸E”bnxéS!<àþ ¶ 7\"’ÖMÀžhŠ)ŽŠ2À`àzÒ2²1\0¾)cc\Z‘éJec÷qA>í…K‡€>2¬Yƒf«ó»Ú¥d	–\'äÃŠEE±âm±•û­RÛçaÎ¸ª¾d`ýÆâŸÅ‰P6Ž´Æ®[S¸P=*¿Î€s»\'¿aOV8Èã>µ¥‡bF$M(8<}) åI<â¢•Lm8\"‹\nÅ…Ç~”ðÙV^‚«Ûƒ’zÔµ-X‘ÈáIÏ½N³a›åªØ8ÏjPvçûÓL=\"è‚pµ,r,€žsTTàœ“Š‘¥UB©ž{šÒñ±I÷,›€…²:\ZkO“ÓŠ¯éIÇzžeƒ(,µ)ù¹‰àîùj•Ä¥Kä¶ßCWB‚1Ú‘âIÜ?\Zv4±Ï\\K3x‰ÅXÒî®w;îUÁoóí$v¦¬8¤¼Åè5çW‘±É¡þl’zYm¼¦ÊŒŽç\ZÊ£+Îj…a¯pÛñ†?íTÐ«H¤(É÷¨\\äq×Þ¥IhyëÅ- ñ\0Å†\0õ¢9\"—ˆô¨\rÂ ;ˆûwùò¬z\Z~a%Üp\0ÝÔÔ*­]¹||Ï×>µ•q#?Êü}*Vˆ=O)ý ttÔüÒc@Áÿ\0¥|µo„, c&¾×ñ–žº¯‡ïíHÉx˜/±ÇñmÍ»Û_O¬ŽV®\Z\Z­Qú­ûxäø¿ànÒï¹Ó­=qœ¯é_Bˆsžkáø\'´ú]þ± Í)^Ãöˆ£\'ø”óú_z,d©#šÑÙìs«£óºK7d(ð`ý+Uð¬wg2Ä«‘Æk¹ñ©hw>Mâ—\'ŸzÄdûG;ÊÙ…+=ÐXâ­ôÍWCÜÚmäª ÿ\0ªåjUñE0ë,ÙàÊƒ#ñ®Ãû2Ac\"ãÚ³§Óàbêê=Î*T›ÜZœNµàÏø¾9Eç a«É|Sû:Ê¾dÚ]Æ9\'kW¹]øFÚB^ÔùGÞCY­&­¡Þ¶B=zÑÊžÃM¯3ç\r{Ç§ò÷ÌöÊÔÌFGô¯Lðí¤ø£²Õí³¯…š6?Ò·¼[¶‡u¸@Fn+‰Óü\r ÿ\0i¥ÄìumÀòþU:õO¼–9bóm˜£/5ŒÚy˜Ò{šš/\"É·Ÿ\n0Zq»hÉó\0e#ªÔèR¿ÚÚì#Ú\\ÈjÌW°(ÌƒEîa–6cwûUžð;pÇ­$Šo±ÐÉkÚ`cê+>}\r¡b_z‚ÖSgózjüZŸž¤íã×4ˆV9KÃ‰q#J™óQ4·úD%ðeˆqŠï\r¼QæLõ¬Û­=Ô2€&NëSt_™ÍéÞ8Ž\\«-»©¥&¦†Àü§ø«VðÌyŽŠ³½\rdëÒÏ¤ipºÀ`ÓNâÔÛ–ý“wÏšÍÔg¶º…Öuê+–O›€ü­ïP½Ô’¿Iö§Ê¹GYÐZÆc>›rÑŸùæ:V_öÔ»ŒÑý7c­tics1¨Äý*ô^—PB“Â{ž´+\"ŽMáM¾e»aºðjæ—ã\rWFn$gþUÒiÿ\0-l¥i$ºo÷3ÅkE‹§¹#b8éœÒÑ†…Ÿ\rxö÷UŒ$–Ï“üxà×Hd–t&TÀ÷®Iüakf…m PÃ§FëÆ—·©ò)}«5¤#©{+g.e Î\rGý·a§F#ƒ5ÁÏª\\ÌNéI>¹ªÎçÊ;Û\'Ö´²3ä‘Ù\\xÆÏÙâ÷ZÇ¾ñmåÁ8>Xì°EÜ`c4¾bâ_ÎœMTQvMVæbÅäcŸ^õDÜ!$oúTvä¶ðÏ“Ò³î4Æ†F’\';º‘ŠkÈµdi	ó’A•«HÌEZ·¿I3‹‡ÇZ¡ª&ÿ\0”k\n›¨ž¾Ê—í&I.€ƒÞº[ ¶ú>;‘ƒ\\ï‡íŠÌè¹sžõÑj°´$)Î{VÈò^ç¦~öúUÃ0\'ükzV<muµ¹á™n‰Â×sƒ§ØD‹æ‘Æ=j\\’Ï8µÑf¹?»ßÏ¨ëZ¶~\n¼¹%9P:œW~’À‘¯“h\n¯§pØµG3z¢nŒ+?¤ ´ÒÇ «ÖÚ}•˜Äpî=Ž+Rù-œ±npM6e+´(Éæ;oƒúŠÃªIm›‡½–¼Àó?Æ7cÌï^î·\ncð}*úÇwŠhFJdráÛ{p:R£4‡=ªãb£$É#ÀSOWÈã·z„2®åÝÅ,o·rãjö5#jå•pªÃ\'ši~àÕ7¸l|¼U+ëË˜b,§4ž„+3r)#ŒåØgûµ¿Œ¾ß0g8Åyýåþ£s 	¸äö®—H°XãW“ ê\rMÐìoAÞžªŒ­¹¾ïFªêãnI¥gU\'¥U+Ny&ŸÖ¢ÝòåyúR«g¡¡\\VÐcžiT’~^¿J1ia!IÝó}iÛAè\nwC‘R§ïCp¢Ÿ+Œ|Â«äç¯½J]Çk’-Ñ¹äÔ0É‚H=ªœ‘ÈïÄ˜ZwÚ%znÞŸ(ìhZŸ¼»wR¹òe*(d(29ÏjY›ÌØW“Žj—Rmt]8Ü:\ZcªrqïéQÛîPQ—ïO‘Š! dŠµ±¢Ø!¸@˜ÏJ‘øª‰#D>d\'ÜñK®i-IŠ¾…¤™]˜zRï ö5\0š4È\rüè–@©y=)¤ºJÚŽYÎü“…ôÅK»Ó­g¬á\nrjÔL]I&’³&=™8ŒØÓ÷–ç9¨Õ—îœf•J¯4]¡Øž9AèBŽ†œòJP’6^•mcË`zâ®¡TÂ†É<zHh¯k&cœâ­m\\ä€j€ƒçž¸©£•\\qV“°×a®Ä†P„ÿ\0*…¬ð¤ƒ“ô«…=)¥•Wž=éª–@}â?\nŠhÔ6¸ïS‰bT`T[º1||¾‚‰ô*Ï\n1Ãw¡Y\"%GËŠ¯u9b@pjåÃ*gÌhZRíÅÛá°:z¬×\no9õ¬›‹Ãå“œ±èiÚtÞc©nyÁ F”±‰Œ‚§Ú¾9ø±¤¶‹ãMF ›UŸz™¾Ë‘\"B“é_7þÒZ!‡RµÔöÞ)Cjqvf:Ù_â4žø¯á9YÂÀÓˆ$ogó¯ÖKr²&å9R21_†Õd°º¶ºBwÛL².Þ¼×í7Áßü<ÐµF”Mö›Trã×?¨­,ìaÔù{XõeiçÒ>nkš“HÚÜ.G±¯PþÎ†KD,˜‘×§½aÏ¥²ÈÈË)#4Ò8Ù bu\\V4°É•‘	¯I¸Ó6e€ÅfO£ý¡É(){îpb,£@=«/USkm#K’žŸz¢øI$”XzŽ1^_ñÊÂmBY-KD3·ëÅCf‰Xò­S_´–åÒHÉ\0ãÞ²®~Ëp®a“n?„×Üø®ïÌrÀ1Ï$Tð”ÊÇ!—ßÐ®Ñ)ÁŠk}Íô«â[»<Ï\0æ¸µñtðäÈªkOÃ3ž- õ qMEÝŽæÓÅ6WY|‡ìjØÔ”€UÄ£ë\\@¶²ÔW|Rm\'ÐÖ}æ™¬YfKi˜AÖ“ºÐi]—iwÈw8ÌsZkp‘)	†\'°¯´ñ.£Â˜Û§Nk²³}BâÐ¼;£8à=K»¬µ;5¸’TlÉ±U›Y·±Cþ‘½½3\\ì6:¤©››­ˆG8â•mtË%f¹¸YH=Û5˜\'ÊM>²5I|°ŒûŽ2+Fÿ\0ÃßižK±\'úÖ3øËKÓËy‰08ÅfÝ|Bº¹±b!ì)«½Á7Ðu·Ã«pÌn&À«Piº>”­ß,s\\ÅÞ¿u8,Ó?¦¨­ÃMó$Q«Ð»6u×$´ˆ•‰3»ÅeÝø¦vc;Ea¼˜\r€[ØUpev eAõ§`Q/\\jw³œ³3\\ÕCp§ïnSÜS6MŽ™¦$Ÿ™	Æ«Q¥bIØ0Êœíô¦–XöŽ¾¹ @ç›ÿ\0µVã³iS\02­.`)FÎ]²Z¤*»™p}H­;\rY‰XÕÛŸî×AeàkË·ÿ\0VB÷-EÐÓ8èáÞxt8ÿ\0dTÐÚJêrˆW=«Ò,þÛ[+›•¸qtíÈ\0‘‰YOSÎk74„yªi’`ì‹wûJ)“iwH¥¼¦+ô¯V·½³Þso\Z¨ö«ËöI#Ü°¡ÏÅO=º\'„\\éÞiämpz÷¬ÍEYq’1Ö½ƒ\\ð”WË,’u±¯)Ö­žÒg‰¾òœYÎWižÎ\'NkÈD™¢»àž½k§K•}F0ìƒÞ¹í67 €{Ôú½ÎÉH\r¸Ž•ÙÐñžŒô½Äen@ã§-²¡,$Ü+Ëü+â¦†ébºcåô\ré^Š·ÜB68(G­`ÓD[¹j;˜B™—?ZŠyaf8n@íX7k¼í†ã®	§.µg\0Áa»(q7b¸!0¾”A°JZIJ×\'{ã@V%9ë\ZçÄ÷2Úp*ÕÞÂÔõU¶ƒY¶)&dkè[)DöÈá¾RÍ|E¦j“G©A#JrsšûÁ×SÜxzÕ¦!™dŠ¤ÚÜ‹]êoÁ9äš|s³£&p{\Z®[=…	Ã’£ÔT•bt?{zž&\n¿7Z®Î9Å4dçš¶ ›E„™}6ŠO1&Ü¬F;Y×’Kå:V$Ú”¦çdnÊäô§bÓgK´Àíw«\rÈ+Á^ÕKJyb·ÄÇ|‡½X2eŽO6ìMìNÎí§åZb³³Ÿ˜azÒ$Ä)¸¥ƒå-…È¦‘,*Ì7Ý¦•(nGµNJ|½*“ÉÎÍß/÷¨q\ZW^ñ$S°Œ±õd€	 œã­T·“Ë\nçñN3’ÇkSBÒ+RÚ¶áš‰î#Ãµ6&/‚yªìLR3c>†‹\rç?ÅW¢a(?6ï¥GÁlqïRoUš5ÏÒ«a-`dUƒµ!\0ýfØNó)vê=jY&PÄ±\0ži¦ê\\3¬dƒ’}ª+—!˜nãŽ*%péž¤ÿ\0hÚJ1ZQìUÈV}ÌB’\nÔ‘Êw0ÚªJÈÄnü\r/ÚûªI÷§ •ž…Õ;ÜØÉëS\"6Rë´ýÓŸzÏˆäy›Ï¦*rØôXv#	#‘×ô“j°¯¥TŽàÈHÆ\rMÜÄ1Uï2Ðžó®jÂdçæ=ªb„RÃ3òóÜSNèkMK‡xV1ýáÒ§ÓÙÜåþFj;MH\Z–[-LC/Þâ‹m¬„U9$dš|EÐ8ÍUîJ]Y¢©â¢È\ršŽÝË¦[Öœ+ÜÑb´cdŒ²ÚªÈÎ†ÏãVüåŒãŸÂ£¹_1HÚHè³$À’_1Ø}k>SçÉ…ßZŸW¼‡Ofû~¦¸_üTÒü:KÈþcvÙÎjl3¬¸Ó³ïNÔË–ÞVÝÊ“^C©~Ð³Ùm,‚Ñ¤5ÊÞ|e×îì•cˆµI6=©ê¢>c¢Ž€“^Eñìéº·…%Hî#kˆ¤‹‘žàŠñ«Ïkú€>v¡1öÝÅe4“ÞgÍ™œŸïœÕ(y‚¹™ ºZÜ¿™÷\\×êgìã¸¼Uð’]3~ét›–ˆ.rv7Ì?­~^MjŠ2x¾Ïÿ\0‚xøš=âEÆ‡í´Ö´ÿ\00)<yÑóü³ZÆÛÒzžªš´×ŒòH¾rx<J×å=k¸Ö¼\r\nÞÊÂ5…Hzšç¬ô{ƒ;ÛE¼€àqÉ¬îŒš²±œžšþÖi¢F775’–xfˆ­é^ëO¹’Ú]É“‚§ŠtÖ)ÉåjhfØÜ=‹DÁÍpß¶ZDŸ4–±‰â¾É†û­ÁäWy4\r0 àz×”~Ñ×O¨ø,Fã£íVôàÖrZ\ZC}Oƒ§)g¿5Qá&º‹Ï\nH÷Í²@#\'95nZ[ÆL½½èL­ZÎìv)céV-´KÛ¢BÂÃÜŠíÐXØ#mEÏÒ«Ë®ªÝFãJä-v2ô¿ßDD²\\„QØW]‘YÅ‰ä\rÇRk’»Öî™ð$Âú\nÍšêI“èMoqØí¥×ôÛYK\"#ž•^ëÇR}ØUGC\\Y—=y¥Ì>Qš\"»&•™µuâ[ëÍÀÊyíYÆyd]Îãýêƒd„·*Å;œçØUz”|a¾èùŠÓÀÂœá­-¸DÎIîEL±ïãh>ƒ“°Ö„~VøÊ»g=;V{ió@ìñÈXÒ·\"ÓneXKz`V•·‚µ«Ë\'¸†Ñ¼¤êXQtŠG$—â7d”m>µ7› ©Ü¦®Ýxzî$&âÝÇ}äJ§\nÅiÆÑ—cÐúPµêV¥…!Ç=ëJÛE¸ŸÊ g½`yÌÈpEohÞ,šÍ’9¿x9¤Ý´ò6í¼Ì¹yv÷Û[\Znc¦‚Ó7šG@jKX^¨d¸Uoîž¢¬H‰p	¡ÎäÞŒ•¨ÅÔÖ2|›dÑªC¨^Ì¤	6rdL’Ú³o!×·j–-QR 3–ô’DòM\"3†v|÷5^+¥fl}j)/žmÌ¨xõ¨LRMì#÷4öeÏµ\"îËf’=i¡Ý°³z\n®ú|6Ñ{çÐÕÖ¬l²	V>ÜÓÝh$ÎÆÛRimwlÃÎkÉ¼iüMnXü œÖÌ¾8Ã0I 5Îjºœš³³H\0úVr„·=\\Ô\'Êú†\0Œ–\rËšÊÕÉ’WdlSi³š@Í€gùæyf*1ƒ]p—ºpÕ‹…ID­g|L…ÙûÕÛhz”kúMÉ…¢¯9¯?Œ9¹À àbºËKx†pÇ<æ‡ª±‰sRÕòážmišmÎ©t°ÁK#œ\nU3\ZD§os]O„¢šBÝÐ¨;â’—*ÐV±÷Ã=bÂ5{…EVÖ\\ž1žSŸA^Ñ¨½Æ¡o²V%qÖ¼ë^Ðu#tVÖÚ[“»»RMeNmüE«#˜]>ÞÑÃó)–÷¯ª~ß-ç„íÈ9\0z×Ÿx/ödÕ¼OeÞ®Í¦FyØÃ.ÃúW xOD_Ü\\h±HÒÇÝ-×©S­\\å³øSCŽyªÂr­Ën§‹•óŒQtDmÔš9Õý¾´ýÃÖ«	”3qÈëN[‚F\0æ‘Z-Ç4»Ø¦Þ¿Þ¨e´ˆ8›`,;Ò¾UO9ÍF÷M†,?\n%äBrÙ–ÖebE$³l##½aaÍÇ—1`y$Uö“zŽ0E4ÇÐÒVd)áÏÔUvÀ*ÍS¤ÄçÒ\ZW-¬ÛQ€59$Ó²µ°N*µØb3ºŸ›	+ƒÛš„IÏ=)ÆLŠZ2¬ZG\'pÀöê)b—Ì%Ì§¦zÕU!³N@¶EUÂæ¥¸\0T8Œ¸!¢)‹†$aGz¢“’ ýE4‚×ØXÜ4giãÚ˜müÉ71ÈéŠ×y@1JX§Å@ ûÐ2p01L©} äÒ?LTOžŒ­ÁãŠV‰˜`±ÏlÕ2Ì™8cÔzÕ0eväíUrÜ¿<÷¦˜=‚q.zšºÌI5T&Ô-»¯ABLV6\\f­!\'bKkˆå-°óëëD—²QÏ­gZK¶i@ùNìŠ´d$’y&¡;\r½ù=søSVVåå}AªFF#nìŠX¥ íâÆ™¨·#aÔµOm#¾U¬¸¦á‹Ÿ¥Ocu&YsÀïT¢-\rtûÆ­,êh\\¯NµAdK1zŠ‘$1Ü1Sk¡qË;*µÈù„ˆy5¬øšÓC·in&XÕz’zWŽøûöµÐc+¦…¼˜ð9àUz	3×µ_ÙéNñÏ WQœ^aâÿ\0Ú2ËH¹{K$[‰{°<\nù¿Å5ÏÞI$Žb\rÐ\'ÎYî$k™œ³O5hnz¿‰þ.êþ#–L‘›Mq²Éus!’âC#™5\r«¼àÕ¸NwRÛB–ˆ63©Ú@4,ràwZq|cÞª‹ƒ#4reERDúŠn|ÔrŠxô¤ŽVe$ü¾‚¦‰V4ÂŽ\r8À[ê)ÛK–»Îxê?³ßŽ¥ðoÄÿ\0êJæ8íuÕðzÆçcþc^síŒçõ¶¤–(—iSW±©ë¡;£õƒJñbÞH²Èá®#w©õŸÏuª¬ÑÄºŽ#ë^a4Ï\n´ˆå_µmÙø…\rY@‘÷ØSÜç»DÚõÔšðº\'{œn>õFK¦G]Ë€=jõ¥ÅFg›yàS§]6{9œ™LÝSŽ*lÐî†é×¶×Wöâïåˆ°}«ˆøÝàs®ÚÝiÖ&7ÏJÛS€Nr)òNfFG;²1“I«”‹üWð›Ä¾g’æÍåƒ8Ä7Ò¸\rR³„´ÊPÄb¾ýµdŠùa˜†G=ë”øïð›G×ü©Î4øÔq™d@­Ç¸¬Þ×.×ÑÜßG!}­TEËœá¿JÕ¹ðqŠÝÞ¾`HÚk)ô«ëT>d%”w^i­‡k—\ržzÒˆò‡¦*+bÌØ*w}*pÛŽ€=vÐÕ€b¨\'\nšÝ£ wÚkONÓ ›4ÕÓézµ±RT7áQÍÊ›$Ÿ*«“Ú´lü74‘œ‚»½EuóÛ¢nò@SØâ©~UœàTªŽÚ	ØM\'Â­7GðŠÚ¶Ò,mˆ! È¨´HãFÉ$z\ZÑb \nÎí»¶4^¶…\na@ö«ñ\\Se}Ef[L<µ(¹Hª4z2Ò¹¢É.APö®OQð¬åŠ.Ãýá[Ú´’´?!èjŠ_hpÏ¹½MB÷^±Àj^»Ó÷›ÐwZÇ.FAûÕè×ž\"·ÕÝp;W%¯j:mÂ1H¿x?‰+¦2o¡(çPdrH#k£Ñüg5¦Ðíæ§|žk“y$db˜¥_î1´²{’^°×¬5xÙšdŒŽ¡Î1U5-cM²Rá$aÙkÏâ±i6$‡ßÔŽÕ=î”öé–¸ïŠÎÈ´nOãXÃ08õ\'mgÍâ‹»“Ã…ÿ\0v±Àœ\0O½!ÔbŒœ\0O½>UÜFäVúú—%ÙLškè³F¤ÈBŸLÔ6Þ3x­„x¯³gÖ®.äõ4|(¨®åÙ!8VÝQ\\2[¨ÃeQéU|üÎ1L\ræ’MKwVfÔåË.xvÊ_#b±Òçló`ðMnK’<ã“\\õÇîfjŠoì¸¨s%Yu.é‘‡¹-Ùy­Ø®J†Øß•dh6­uÆ»\rÀº–¨ìpItÎv\Z’kcÊLÉF˜Ã \Zí~éwºæ±¶gØ3^£à/ÙÎf…&ñÉmòåÏâ:W©h7ð-ÂéZ>ž‘K( NÃ$°úóš[%»ldx[á%ýÐYu)VÒ¡\\üÄWs\0ðïƒ­Á°µYîžK\\:çccÂ¼WÅ¿µ©õ:âw§Ýa¢VÀ+œ=:\Zï©¨ÛÎˆw%ì>dmžŽ9Ö©B1%I½‡áÿ\0Ä{ÍsQ¾²ÔŠ‰*©Ók)Ã\nÅñ\0ò¼pÎ¿vHðOÒ¸a©>â{=N\"Un4€/ü´?]‡Œî\0ÕtÛ¤l‰‡½6´÷lgñ¦ç>ôÞ$OcLVŸ\'Z„ŠKB`Ç<zÓ–B­œb¡‰êA4¥ði/x,I¿æö£ålæ™‘Œæ€Û¸¥&Â,j¬HPÒMg\n\rCç†\'…+Ø¯RÌ+qR»±òª»ö¨ ÓÒRr3I>mBÌ³Ä§œJWp5GpbqRBìàâ©Ü/¥™dÆ\'¥>ï”š!eMË»u*Ž]—æ¢:\rw$\0ŠrüÃ‘L§nÁà\nÑ¢š&ó@#agSKsTÁÏqJ*S°®É„ÇsìN¾i\"Ÿc1#vî¦˜fîôÐsEÉM’¼ÌC+øv§Ú’ÄƒÑGTœžO©©-6ÉïšÔiêJÓ*’¥x#¨ïLsSµŽï^y¨‰É<š3€}ª¢ä‹»9Í0¾	â£#•eâ£iQÃÙ”-wˆâGr>cÒ­;’‡\ZÆÁ¸RƒÖ¬S#Æ	`\ZžŠðHÑ3Îjär¶9üPrœþµ›¬xªÃD´i®®c€ÆãÖª-tn¦ÕÆ¨Ì\\©W‚Â&y&®2Kœ\nð/üs_2dÓa2È8¿õ¯6Õ<]âHÉ%äÓÿ\0ª„>œRW>›×¾;h:0hÄÆêoîF3“^i®|Öu’;ÓN»ÊÙlW%á„úö¸ªáÕñKÉ¯Qð÷ìó`¯æj3½Ü‡¨\'Š»¤GŽëÞ.Ô¼AŸ¶_]_ó÷cÎÚå59^udŽÅ•êy5ö¾“ðãAÒ 	Œ Ž3°f¡?\nôie–e´‰‹ê8¥ÌRHø¬µ	H-Ü<¦©ÿ\0¤¬›Pœ7Qï_qÿ\0Â¤,RÂÖ‘Ü¶¹ˆ¾h\r¨›³œ ñG5Xù·M–âH18ä‘O’úT8x€†¾ÄÒþèvðqò=3Xž\'øáÝmL‚Šs˜øÍ%!¤•aÕ›o”Ã‡5h3Ë¸$çØWÒZ_ÀÐÝ³ã¾k¦³øK£Y©1Ù£îG\"ˆ¾áî­“c°Ô§À‚ÑÉúTñxoÄW­å­±<r1_]¯„­,“÷vÑ(ïòŠñÏzå×ƒomÞÖ0±NÅ>gÐ4gŽëÞ×t‹I&º™W;rkðþ•}«êpÙÂ,Ó0D_Rz\nß¸ñ­Ö»|é÷!ã¹ Í•ªZÞÆ Io\"Ê¸õ#ùU.kjN‡èC\0À‚ôâ£Ž=êQ“h)ßó§ò¬¿:u¸–6|©è)Yš¶ÑAnŒT³5Jo2ppûµ‘j_Ït9ëVÚ6`rr)_¹I\Z²èÓI`×pÆ^á™{VAsšÒ±Ô.-íd·I™a¼½\"ék?Üp^jV9ë¸Ú \'9eƒ]Llš÷†äF]é,f&{b°µ»I¡µkws°r7ÁZ²é±Kk;+9Õ\'¥™›ot|7¯é_Ù\Zæ·¥È„=µË Ù8ª¶Ð$‘2Ý1^»ûBxvÞÃÆ·úœ|«À²|¾¸9¯&³ ³àðM`ŸsR°Ðm¤s”\'­UÖ¾¬V²\\[¹ .ì\ZÜ·îdŒŒfµî.…Æql9m„ªBM©åÈÞS\0êp}«sKñÌ<ÆóÞ¹È¦K»ëeˆ<Îär>µŸuh“<WÅÐç—·Ö«•H©éÖ-·º9ØO­]n22œôÁ¯<]<²î³o9:ŒT¶ú­æ›ò0xýˆâ³påØ-sÓôÛ„µiŽqž9«ö±¬™ß!\\WŸAã=DÛ$K…DïŠé|á{Ç—Çm2Àwy’ä/éY¨µ©I­¬o%ýœ÷Ì¹õ™©øÎÒÎÇ«±Ð?gÈ®ImS[— ò üMmjÿ\0¼)i¢Ýmå’è.D²Ê[Ÿ¥ex§¹Zìx%ÿ\0Žg›ˆÔ·¥cK©êwŒ@Y×ÞlÒ4—h–§p¬[íbÎC*Ã„“éV¦›ÑÈ»œmÍµß\"FÛŸZ…!†3ÃØÕëÛœ;´’dô¬k»¥ËmÆ¶„ÁI4q;(N;dTw!}+áÉ$äzÔRFBƒŠ|É‘Ê^Ó¯\'€dZí4\0ÚÄf3Â÷-\\\r¨›v\0È5êþ\nÒA´s½YÎÉîdjÚœnT–’¸Ë½\"áCH²zŠöËŸÛJÌò;†¨O¡[9cU\0\0@²Œí¹¤©èx½½³#îêkbBð‚ËøÔ—‘Gms,$}ÓÔTÑ](\"r¢º¨ÂÖÐŒÙ˜ ­M+J·*“·\'–¬øU¦“nN>µêÞø%â?*K\r³ZYœ´J6©Þµž½Zjqšöeo•jC0L’+€ÔtÓ7ÈF\Z¾‘øµðnßáÎar—R]Í;åfPpO•r>#ð%µïÃm+ÄV1…¹£¹QßF~´œ\\W2=-XÔýÌú—~|*ðèÑÎ«®ÝÉpê<Å´ˆà¸ä×ª\\x²ÏDÐ_þËìãI\ZU ŽAüE|÷àI¢^ÃirwZ3l9þz×¯h“Çt—v1°”Èœz3&vŸÅé[©\'©åU§:Rq‘»ÿ\0	UÄÚ¥ãHÞLÀ	Èàÿ\0JŒ–²Õº\'YÁïÃÓ?cè:uÆ©¤½´P³Mk)\0ÕO#ùþ•è/¢[êšT	¨È\"“hGL÷#UÝËc¦÷<ÏÆÖkÔb»‰Ã¨Â3·»éŠì~húÅß†­c½…à¹³“	æƒÁü«¬_[i66°C\ZË\Z}Æ“§ÖªGâ_ì‹…šæö2ÁJ#çéI+\"¡Nìsé¶÷2ÿ\0¡XKæ\rë¬x8¬ß\\Çö8|ÖDuqµCU][Åúž¦Ò.™m³ñ“\\ö«á=F[S}}rÏ2üûsÒ³R_	Óì\Z\\Òv;xfDìŒT~cöl~™£^¬ö1üÜ…Á«¨àëSk3›Þ%¯CK’>a‘ïQ™\08ç4å˜laüF‚nH×8ãÒ’9öîÜ	¨TÔRƒœp*‹»\'U™ô¨„[ÜãîŽâˆärž‡ÒŸ		œ\ni¹0\\¨ž\0 Ô»r	ê·œ£8­(¸Êàf¢;•¢,F0­I\0ÙÛè;Õo<+a4¾vlüµwLv,„S%°Þ”$¥‡cP	CŒNFÝš- µD¦g#ïÂŸì¸«†$t§ƒô§ª¥èŽ{cëR«d{Õœ‡l=ªuº^z¨¡$‘IßrÎñëMë‘ÀSy™a‡QOf\n2NRHi\"Fr3è)@Ü¹šŒÉsIç¨MÀá}i+\nÃ²yÓIÚ¤ûT~ze$}E!ÀÜ7äú=ZÈŸjïe|–íP³u$äûÐzTR•‰ÈãµBÔKR…ì¬…½{RI­Á§Y4·RˆBŽYŽqþ9ø‹§øf	¤rG§­xN»ã]OÅ÷N²LþQ8KxûÕ­DzwŠ¾8´ÅítTƒ†Ïé^eq6©â«¦B÷\ZÃ7ÊÊ­u^ø5sªÇú›5­¿Qà·Ö½“Cð® À©gl‘m@äÒôR‰å>ø!wy—U˜Ç_*3ÏÓ5êþð‰¡Ä#·²]ˆŒŸÎµ£”©ÀàûSão%ò{z\Z]ìmiÈ‚Bé[^zŽÕÉÅ¨ym•¡¨JóÓÚª7c¢‰IÀ\08©â™_cõë\"×QFB2r=*Ô7 63¥$„DÖ®¸É5zÖÌ¨ ô=ÙuåûÕWÁ76xª÷¦òˆx-ŒÔð@%Mû†ßzÂšøÜ7#\"®i·åw#zJá¹{ \0È¡QsÚ„ËäôÔÙ±\"•è*y{‹­Š$“\\šñÚOB[Ï›¹’ÕÁÈô<W±ùdÝùW3ã­k¾\ZÔ-w³ÄÛF:žÔ™pvgÂ6r˜n÷³]¾Ÿ3mF~A®bmío&‰-œ29\\m>µÕ@ßØútM{¨ÃŒ²ã5´^ƒhý$’àº‘·¯½e]¡óÎyÍjÜÃåä†ã5•~È\"mäœsŠ•cy„Óˆ§B3Ïufm¼œæ±ä¼ŠhRIQVb½>O\"\n4a-’úÖ’`(c¶¹–Ô^\0Xÿ\0ZIuyŒ9E;	jmx†XZ5Ï9®nw¹R™Uc×µ6ÊÂêME$¸ÝótV®æÖ…\\c¥M¬VÇƒ~Ðò¼?ñùŠ±Vç¶+æË8R98\Zûwã˜/¼¨ä«ò}·WÄ%ü»ÙcÎŸÊ±V»¸)i©ymÄwÊAê*ÖÀ…ÏBG5œ×æ„¬€`â¬ê.bµb8ëJí\n:žâ@Ö¾*¹Eø5¥aáË\\4™RñùY3òçÞ«ø±D¾ ó’Ç£b½ÀVv$¤·y p¥\\oc[ÁnÎ.ÎÏRð“7›šÜ7\'¨ÅijÚ¥®§¤Ë4	\0ÈÁ¯CÕtø&WÃ+!©ï^9¬Ø,7W-nvTt¦úI?€|3uâ}[¦˜,ÊÅ6ãŠú+áE¼¾ðÃ[Üí‡$8Goë^Sû?Ûùš\rÑnTJFsì+Ú´CÔ/n£p1XË]ŽŽæ‘¿$8Éª’\\É*2òËV´½Èï¸À×Igá|p+—ÈÚ:Ÿ2üWðlÖ2I¨À‡ÈcómìMytv@™¤9þu÷\'‰¼%k ÞÁ2å^&c_-^èšm«K[˜¡Ææ«‹î\\Yæ6S]ÈÅ±Uá¸¹Ú+´¿»·ƒrÄÀãŒ\nçî¯÷õúŠÕHJ=Ê‘hñÆY[ßÖ¬QJ·Íßš§%ì‘åFqPÙ‰äµRHKBæb…¸Åz·Ã»˜®tõFSÖ¼~<œä×Uà­Uì®„e¾Fê\r)ë	ƒ³¹êšŸˆ­ ‘Ô²†µyïˆ<Nû%1H<Þ›âéþÓ{QcŒá}kCÃ¿<QâÖâ²6–§þ[Ý€\\u5•:]MÝCƒkóz– _9Ü5Øx\'áN¹ãYÕ,­Z;l×2\"ë^Íá€z†\'Yµ[í[´Áò€Âôïø×¹øj(¥·	KQŒ*(ÀÅt¤ss=Î#áŸìÿ\0¡xF–ê1ª_`4ËÀ>Ãµz½´oiTU8ÀàSáÀ;‰ôÛ»¥Ž3ób¨Î÷<§ö™„Ïàhe#&;•\'Ø`ð¯%ðäþÁË¸Ý1Ç¦q^Óñ~HµOj–á€›²?„©*ù—Â÷Îú¯hìÊ#!ög‚:T·Ð.ÖÆOˆ>O‰ý³d­,\r÷À¯½Ið£Çvú¿:ÃHÖ…×cžLl8çÛkÝ>Em}àfŠf\0*Û«Àþ(øZÏHÕå}2O2$”ÇÝ>Õ•¹ú­)ýjÊ¦ë©õÆ“¥Þ;Ø`<m’3G\\Ö]õÝ²«›‰‘z©À5ò·>+j^?d™äŸM<3÷}Å}5àý/ÄöQ_ÙN·ˆØ,¹åO¡k{¯tåtûÁêšßˆ‚¤A €Âµ´ÿ\0†öð¡{Æy8è\ruí\0P0*†¡â+-=KK2îë·<Ð’{‘í^ÐV*I¥[À„F€ùH²õ©mÆ™p&]„)&²õ?\\^ÊñiÐ6ˆÏãT¤ðÖ£¬Dò]ÎB°íÖ¦élW$š¼Ýˆ<8ÑËfÛ9ÚÄV¸¬Åý›-Ý®r#n	ï[`ÀàJq9­ÐšƒÀ¨\rÁo^ôñ *rsMX,IŽj–,»Q†ìâ ¸ùzÒAƒ#màŽ)[ ¬ÂÞ9UòÜ\n¶Šfð©¨Þ`¤õ¦£q(’+g9©VE \Z¯ö…ÛH$ÉÍ\Z—bÐ“\rýåô4ÍÄæ£ÞqB°bj¬ÂÝËqÜ„múTÑ¸}Àtê€qB9]ß/¥(«1¦Ñ}gÊ}Å?8ªPÈ#rHÈ#U˜åY3Ž£±ªLi“†ÓÑ¶n÷¨@¾)Êy94­ØVì<F=TÔ‚yñ~•9Ïµ†zÒÔZ’-!)‘ŸJž7ÌñÓ>µP6Üqî)Y»“Í@Z2’@àÓ•ÈSÏ5FsškˆI<QaX’VŒA#ë^Oñ7âÜZ\r´––L$º9ÃRüVø—‡lå¶µrn˜cƒÒ¾r´†ÿ\0Æ:Ø‚-ÒM3õ=¹§‹vÖº·ŽµŸ.6yç”å¹\n+Ýþ|.´ðÍ¨–á·}K°ÎµløÀvž\nÒÂ\"‰.eäÇ$×B×b5f<óù\nµä€Ð\n®ÕrÍgI~®ìU¸%ÉŸjrwÖ\rµáWb ôÍhÅ~dY\nÆ0î$>¸«iÂÙ·.F\rJ@‘³oq¹ˆ8Í_´ýãžEb \nÙÇ=ëNÎã\' }ÞÕJVØ››–ˆÀåNkB¥ºàÖE´ç¡ÇÔV…µÈ/“€z\"ŠÐ¾.Z7*Nâ;UEGg‘»ÒžãÌ²sÓ4ØRDc¸‡[XŒ.[i>Õ4|Õ\nI©>É°£–íŒwÅ5cDå~fô¢Á# m©W$â¨Ý£6\'5$7‘¸äàSËÆë»#\"ÑI#\nçvj‹s,n¼\Z½4Ê@Æ“šæªäž˜¢ñ\ZO¡ÊEà\r5¦’àÚÆ%\'$ã©®cã/‚-ï|zÑÀ‹$+æ+Ó¯Nwò>\\öªšåºêº}Í»•Ð¡ÜRqOTZ›=nê•K)äu‘weöˆŸ2€ÿ\0Ý\'šÜˆ²g£¥fÉ\nC©n+÷‡Þ#W«Ôå9Ý?DÄ±²‘ƒÁ=ëVÇ@qfæO–Eè=jè¼h¯B`maÚ­Cpí3À^ÜÕXw)Åcö¶ylœsSªÅ§˜#RÃ©–Õ>iQ›pcDh¬“@ ã¾æ¡\nÂ¼êÐ$ÛoökbÝ‡”Ný¬GzÆ¶‰ÒDÃëWl.DðsŽ´Óèg±WÆ–âûÂš¬,7ñëÃWÀ:¢˜µ[Œô-‘ô¯ÐÍF/3MºM¹W—ô5ùÿ\0ã[6³×îÈÇ§&°œUÍcï#!HógœúÖåò,Ö:µÇO:Úê*™#qï]rþöÃ!³ò÷¬Ò4Ž‡k7«³*2?Zíü;a6¡~›rHé\\\'#TÕQ@ùÙÇ?{ç„<44í# $â»i4 ÎJ±sš³1u]¢Rñ1<r+ÏüO *ZÍ:²c\'Ð×¯^Å€Ês\\§‹ìãmá@\nk—šÇbV&øÉÿ\0Íê(ÜÞo8úW¸x^É`Wb6“Þ¼¿ödðn¥sàý_Y[Sý˜·>RÎHÁp9\0u¯]„ìb¥®¢±¿§{\0zÖ¼7‰·“øWá®¯6¡>Ë\'”Ä÷>ÕÔ¬$¢Ÿï+¡ô ñ>®¶šUÄ…K*¡$(äõ¯|Q2^KpÐHcfc•ô¯¬|Wq¾rÏîÎ#_\Z^Þy—³îçúÔÆ÷5ƒHçf¶“Î*ïÏ½K¹¶e<7­>y7ÌH9Áª—7B<ÃÈé[2êÀ#ÔUYmÀÉê*k‰È@3óW«ü9ø	¨ø¢Â=SP¹K-.EÞ3Ë:ûz~4ÑG”èž¿Ö®Åµ•¼·S€‘)&½Â³¶«QÝëò2&ÆØ‚î•¿Õô/Ã‡ú‚­é¨’;žs‚[ñ«þ*šX¯¡!€B‡cÑ‡ÿ\0ZµŠÓPM=ÊøgÀ¾Ð\r;7ØÂÍx »õé[7Ý_ü¾g“n«—	Á›k]Ý1Ø2÷?ZÕK+m6Yå–]æA÷¥+dŒÛ=`º·’yÒAó³zWC§Gý‘q1šeÚýTZ¸1”Š QÅb×/æHHýiÙ!]Ér²ÕÇ‰KåmÉ‘ÁôªPÏq3Î.Näa‘ÏJuÅå†–¬d‘ÕÁøâTvÎÉi‘ó€ÄqRä–åÂ““÷Î£]–4ÛÈ\'`±ËBIöÆkäõì=GQDüÅd!Oì7z¦£¬«yó7–GÝÏâÞ+¶:ÌÈy9ëP¦ìjðò§fÎ¯á–±}o=²ÎÂ$|íºkïAw¢U!îkŠøO>«<Ù.2{v“á™d™D.¤ò*%7¡Õ\ZÐ¥\r¯øR¤Q±ÁÊñÁ®_Ã^\'Ö<\r~gÓ.žÝÁù€?+B;×Ø!ðE–¥¦ˆVVS‘Šó_|¶ò¤—oËÔ\"\nµ¡+§xÏááŸÚ,øa²½+c;á7¡ùXýOJôOµõÁšY\ZE~N\"¾\\ñÃÛí%ÝíâsôÏZ›Ã|Oàò!ŽúI R‘9Ü¸™éEù·¥¥èaZéVšt%R1Çp9§º¸Rá¶®:W“ø7ö„Ñu¤jMýŸpp0ÿ\0u±¯Lµ¼·ÖlŒ°\\¤‘ÁFÍh’G›.kûç$é½q°å\\uuiz{Ö^µ\niÚÜ>^\\7½kF–ô\'ov…¢)6–_<âªK%ÚßF)·#“ß4%ffªË´óH²e÷vÆ*ÄŽ´«!U µ6m,¡K}æ¤$;¶9úT;4ƒ8$v¢ÀõZ’	\0?JC;AoéQ‚J\nƒT•‡	w^ùô¡C`’:g­Vˆ”1ÜiìØhJåjOŒÒŸÎ­+dzVj¾Í:9Cµ¸=hø^€´5Cu©#uTlŒ“Y–ó(VV?-\\€Ãd`S‹k7–>_»ýÚšË†ÇQT©Ë	P˜‘q®Us¸ŽÔ‹pßÞ©S]¬Ëv4&4Ëo)–S»´G ‘:óéU#uùÎ{S7ŽyÇÒØÓf”evà¶â+3ÄzÄzV•q;0áz{ÓšR¨Íœ€+Ì~,ë/ŠÀŒFþÔ!/3Ã¼{®É¬k3ÈNXóšõ>†ËOþÖ™7Í7Ü$tÕáZÙoí\rì:ú×Ô¿o-õY<D\nÀv\"®;éçv.C\Z¡,œ°êž•a˜–äç5&[˜ÁSüU(V3æ8-³ŸOz\"A\nséVç·	ÏQïPFÆ3éB)hY·_+<sVI©¬ô›,Ø9ÅYŽãûÜý*÷×Ràažµ<Rªc¯½e	¤Eän©íåvå‡)[bms¡³œ\0A#olUû{€ à+õ5Î‹’Ê\0*ý³—PàU+ŽçJ“‡Bš\"›vWŠ§á(rqÚ¬Û¡1sÏ±¦öÔ™zÙÌªÉœJ•còÎ7õªðå>îsVàvpY¹ÏlQw`M\\´—\r·i>Õ,1ù„ç ª0Ì’+3dc°§G¨ˆÎ$}8¥Ì\ZnI*þñ¶‚E(@-“P¥V;sÍ,ÎL}qêjÓ°µcÝFr­ß¥J²»JüÞý*¼Ld9UÎ)áÈÔ÷¥ÅjI¹¾‘­UÕrz‘T/ä’U‚då<ý)öm$–²†]¸“Nf¼³2à¦F*ºè|êqo>XôàU©¦Xæ\r€èj/²Islî‘ŽªÔv¹\0KÈQÖ“c²Ib¼WtL>õ=,Š^<ªÇkv«jz”0Ulž(@E’ÂîÙÎîÕ<¬\\\"\0:œ\ní1À¸-ˆÔ‚ônXÔV¢ÉËRRE\rÔWÂ?í\ZÏÅ*FœI}Ø«½H_þÑºrÚø’ô¶7n\rXTihiksÂüCòÝÛÎz\Zê¬nCY¦ÐFWšæ5dØ«/-œVÏ‡æól¹ùÔb³õ-ìp>1¶ÛªÆAÎþ5ô~„Ë{ Ú:þíz×Ïž6AçîÏ â½»á­áºð­™ÈázÚ-µ¡,µ©EÄ€®šóÿ\0‚ºUÐc’ó^‹«y™=@¯>ñš¥]ÝN?:–‹è]ýš5[˜íõkAq\'Ùƒò·¹õÅ{œGz†?z¾}ýœIû^¤ƒ¦5ô UUèµõ\'ÐtË[&¸–$1¼¹±ÜÖ¥æ¤Hu¬Ô—Ê´bAÖ±n/²7dú×$Þ¦‰\"O^+i÷9n6M|©Ü¢_]mæ¾šÔÝZO¶R+Ï`øc¥K#’+’I©ƒ³/CÂ¤’I]‚¯\'ÐT‰¢ß\\¨Ùnì{q^ó,4òHµE?îóV¡Ò!·?*(ü+nf¶›!€µFDcÂ¼q_X|6ðäúÇÂ4™®	[™cäŽx?­|ãñkÄ:†“ªÅog+EÀ~Zõ¯Ù_ÅÚ¦£¦êÖ7í#Ç,±;ŽÄ`ŠÚäˆfÅŒÓáŒðŽZÄ÷“BÇ|Ó1ÆO ¯X’{}ODŽât¬Á‘‘\\vw¤ë¾3Ô£:QiíÛcÝHÃ¶\rv÷I6¯\0tª³ê;ÓVåNýNZ	ÏÍ¬>O<¿søÕ‹xn3>sïÍaê^\"K`ÞRoQü*­aßë·2ÂCo„¸ã¿\Z‡4·:#FSÕÍÞ¿§é1…^Ms\Z·Ä‹‰X¥²“A<µr$Í.òò`\Z|p.Ñ´dúúÖ.§cª8x/ˆW»¹Ô™™BÇš­öhÔW>äVµž‡u,ÊvíŽ¾•µƒZIØHÙOïUF{ŽUáI{§)io$¡‚ÄI^æ¼‹â®œmµ‡Ü\näµõ>Ÿ¢ÛY²œã×Ž~Ñ:T¶¿\0S”fùÖÊ”`pÏ*·]+à¹|Un_,íÅ}G+\n\rƒõòÃSû?^¶|.UÀÏ¶kê¡®ZÛÛ#½Âá€kMYÌä“5Õ‹3PHñäóX^ÕÏÃâI/§’(RÅ¥<—r%;\\r3G-·\Z•ö2uÓµÅ’8!V áæÞ,ø/ç™5¸Á#îŠõ”Ó-´Y¤pr[œ\nXŒ·Ïèk&“z\ZBR†©Ÿ\"kÔ´‰åS\0R*øÃ_ðeÁ67’Â¹¢$”?…}s«éº¤MÛ‡$pØ®Äm/ ‘áÅEšØëxÍZª8ÿ\0ü_“Ä×vÖ·¶ëÐoõŠ~Sþëð>c\0wóì?ï|5®GrdGæ½ÓO5Œ/œnQB9\'){›ÉÇ|S£ÄUe¸É =ê5N;çÚÌ®‘ Œ9Á£r®NzÕhÆÎ3Ò†VqÎ8ªÑ´&iJQëLk‡oªìüìÇ—ëÎi¦@¯òô¤ßa;–™Û#húÔžo#Š¥F9ÏJŽYƒ¦9¨M–Ú®Y—8¢WßãëUwõ¦™±‘´Öº“k!“iàñS‹±µº‚k9Œ| ôýÜõâ‹1ÙšVÒ\r“ÍZŠFÁ\np=k	–6$œÕ¸oW<c¥+…´5må-¹XœnÕgpÇZ¥â²üÇ>âÝ€¤*…§¸÷.³ü¼\Za)K•Qî~c´´ÖœË÷Ëß“Äív¹ÈR~´æ‰<:\Z¦ì£•Éõ\ZÜ‰s“º©\\Weè®@Œ«ó^]ñ‚\"-c˜/½åX”±Ïá\\ÿ\0‰-#Ö4ËˆYs¹~\\ö4? JÇÏ—újÚ|“B3<\\ìH«¾$Üx2éíîwIhç™éVÕo<3¨°q·Á&¥áD÷v,]Z3ÐŸéN,m\'¹îš‹tí~1%­Ò8Ç(\"µ\Zã¾3ø×Èó[êþºoõÖäta\ru~ø×©X¢Åv>Ð‰Ý¾÷çV’d;£èIe-ÉÉ5Vi¶t\'µp\ZWÆ}*øfv6çý®Et–ž)°Ô¼7Q¸aÐ5J\\£[÷$¸â§W8 ƒXË{ÆJ¾ìzRâŠB1çò¦¤?Si¤ù¿»š–+¢¤ø?ÝÍa$›£Î}ªí¤¨NXý\rJ² µ˜gqgŠØ€†ƒšæ­ñ\'øÖ·mgAÃ\n¯1k±½m(ãrŸ¡­yÃ1ŠÅ‚W#p+è	­Iry^OzhhØóœ”ÇÐÑ9,W¿Zm´«†íSÇ¬Sò4öˆþP’|»Xöªð®ÜUå,TîM28Uww„ì;v#ãRÜ|Ô8ErOËÚœû\"$ŸzŽH“a=C•7¤¶“íO$óÅH	“8_OZ£M´ÓùUè¨ š¢Z·öeç\0¯­5mãq¹þíG%êÅ	fnFªÒÝù[w=jîsÆÅ´P¯Ãü´ˆ1\0žzâ³ä¸)tƒ8CHª±Þó’ÔÒÔqV-%ÿ\0¢.ª*8å{›\'&@¥zÓCùw5Þ;Uh\0K‰¢è}(Š‰žãí å2jÈ½_³ÄÄr¸É\r¥”©ž¢¥Óôç0:Ëò“íLHÛ²dœcwÍ|ÍûOÙ/öÃ²©&D>«é»awâ¾ý§“$(98÷¬ê+Ät÷gÈ·ÑÙN¬3´ñŠ¹áû¥Y~u¬ÌmîæŒ7cTt-E¢¹Ž&Æ»Ö	4™7Žâ*ŒÈ	Rs^‰ðfù¦ðâ©8¹P3\\ØýŠYdíª\r|mu¥ÛÜ@Š\0\'#5ÓFZ#9ÉE]žÿ\0­Ï‚¸â¸L«§Ï’6•<×?«xçP»Q™GÅrú¶«}¨\r²1)éNT¥œk)lzgìÅbo5iCXáß’zó^úõü+ço€Ë£øÎöÜž&¶û õä\Zú%	9íX\Z«Ý²Wì­‚k\nHv³lZèD[á;_v*‰„©vÛ‘\\s¼ÍâìŒÉmYãrÇ9ý#K‹ã$r+9$Ôõ/4@ÐÙÆ>iø¾•×ÙÚ}–¸óÞœ}ä&Ì-CJŽÌ€qÔW7ucä—„\në~Ø«4‰ÇJkTº|…æ®ÆiŸ6üfŒÅ­Úg\'zz{×µ|.ÖWLÒ´ÆHÆÙ\"\nÅGQŠóßÚFû%Æ—0V	=ë£ð¾©ý›àíP1Æ\'¨ÀjÚ±_=ÓM¶™®<È HUþfl`“WuËYX+.È=\rEª=Ýæ™gq¦ò+§¨\"´cI¿²ÓÎ\\Ìª3õ­ÛObcu¹ÇG¢C—vMÒÑºÂªëú3]Ø/’¥§SÂÚ·.\'Xä;ò\\óÀ©av-–Tvõ¬\\SGDj´îqúo‚&˜¼!ÿ\0\0ë[)à»T’\"Ü¾YÎzè&fqÀùh·eO”òÙëNQw	Õ”•™^;0¼*r(eÍYº¾†Î&’GUAß5u­…Þ52`qÇZÕ&ÝÑÏbú…HÈÇZó/ío}áI¡OšUep}+¤f¿Ôgf,b—•ïQ_xjÛP²š†ýèFH¡ÆÊí„_cä;v–ÏP_(Ÿ¼9¯¥<&-dÐ šòc)eÈ¾xñ>›.‘¬ÞÚIò¼R•Î;f½+áÏŠâþÈ6³mÝFÏ5µ&eSsÓå×ÌNb·„Dƒ¡=ëZÏU‘\n=ÃàŽ{×™ßx“ím¶<Ý¥¥ø\\ÖäŽ{©Œ1¡áXÿ\0JÂ¤ÕìÎ¸QÒïCÓg1Ér»…e,ÓÍ)EŒ¢Ž•¥kòZ(a«ƒP}­€%(”L‘nhcù=êþª!s\\÷VçUÐîÇ¥GG~ñ•ÜT’fê:rMi+»#<\ZÎÐæo±+Ðâ¶..Ùâ–=˜B¼W1¢O²Kˆû 5èj¸ÃZm¹ëHãð©BC·ŸZE|ƒÍ4|êX”w¨LÁwb†¬ZgÜOj §vzS!ŸÍBHÇjz¾zÒå\ZCÈ857päTrK´1ê¢ªP³½Aô=i«V$–çiÚýõP™ßnqP3ØÏÒª=Ã©*v‚;Šc.4à»¹¥Ï ¬“!,NsNY°r¤ä÷’°ZÝ\r¨&Ç<Œv«1\\©cÎbC1-ó5]†E!Nx¡>‚é¡±\rëµN1ê*âOæDp9«&•c·œúÔâm§Š{‰&Lò1fÉÛþÍNÓªÆÁ[-Ò³$º	Àå…0_½)$;šå¼²¸É=ê²É‡8=ª	/@VÛœö\"³šýZLç¯p)ŒÛsÁæªÈQþVéëPGv]Npêh·rñŠ¶…FÈÄñ†mõerÑŒã†åwºEî…vL{¶©áÖ½²iKBÈ¸>†²åÓa¼ÌÃæ”B;E§ˆ\"Ôm~Ï\nÊÎ3T5‡\Z6¯™c\'Ùe<•ÎEtZ×ƒ‘KI\0uÀ®Zay¦9`[ëU/#šÔ~êvyhq8=\nñXRéú¶”ç|rÆWÛ¥zu¯‹d,£*8­H5K+íÂECþðª»C¿sÉ,|g«éßvi8ìÇ\"·,þ.êh@•ÇsÒ»yü3¤_Œ›xÉnãŠÇ¼ø]a3³Fæ0„”s_rl‰t¯6øÙ=³g¹º;ŠšMÄ`v?ujóËŸ…WJÊ•sŽÕyà­RÁ›1nºœÐ¬ÊQì}¦øËOÔdwIþ×Òé\Z´R;!O¡Ý_%GmlH\nêG~jkmoS±bb¹š&?+T¬$´ì®€ùs•þökzÊáÀÁô¯Šl¾&x‚ÉÛéˆôcŸç[š_Ç¿Y™¼ÅóÑsJÞb>ÎŠé`\Z³m0ÚÛF}ëä‹OÚ[X€ækx¥\'ÜŠétŸÚÁ!mÎ’Îz’ãúU¥ØJçÓr0qÛ¥@×yÝŽ3^cûUh’7ïlî;žõ­[oÚ3ÃåÄÒÆ	èèx¤’Ïg³ØT±äž¦¥’5—åÁëÚ¼çHø×á+Í£ûb\'³äbºk_èwÀ}ŸW³“>’¯øÒQÑ¾a@4èœF¸c‘ýê¡¥ÆDWQÈHùJ°4#|¥KÏåM+-A½RIcžÇsÄxì*9®,Õ”ÛÐc¥&Ÿ!Ý,G’§½[‚v¾ò=1M#Ø­tŒð#2½hžq§ÌÃ5f;eEeûÃÞ®BƒËÀ$8Ù”ä…šD}Ä×êx-c3ÈÃ´\nž02Ÿ›oBjDnØÈ#ž)!.bÒ8s€\rMÚzÕ\r:`ÖÙÏ>õy+»<U\'mE­µ ŠYb½p\\í=+Æÿ\0iöÖgnXÁìW›Ñ‘Õ¸ÏJóŽQ}¢dÛ¸\'&²–ÅCsâ?\Z[¼jÄt=k´‹ÐÃ¹Î+¿ø£`aRÃ•S^u›$‰‡BqšÊèÔéõ£öýÁé³¬o…:7º¤ðLÇ•à\nÐwXM!I™ðÓS:gŠ†A\ZÞ”ô3©Å¦z«xN8,G÷«Uðí­•»”q‘Œ×Us®¬«À*HÍsš¾ ²Á4}>µR”žæT©Æ;èÖòhŸt9ÂªÇwh«œà‚? ¯tWq§5ã_¢þÏÀZ’c6aßœŠö{<Mm‡Êk\rll¢Ím7-œ~µqÑB}Ú£ir«`â˜ndše=½+™¤Û¹¢z\Zvj±‡b£=ë:öð«Êª:Ž*yf6ñÝ\rdÜ™ø8´ã!îcA´å˜óžki¤J1Œw¨í Œå¾ñêÃL¥0X`\ZIsÆ~Ó¼cinºŠ³	(±×Ö¹}[ÂioáÉt‹LGÝ«“Ò·> ø’mKO²¾&s€qÐWiW—þ!ŽòI®ŸÌ‰7\03YJ¬bìtÓ¡9®e±ôÂÛÉ‡„,­.dIf¶A7¨+£Wµ¸ž[hæI$AóÆ­’>µà?|Zñx’m6yIŽt!wâêº„cÒ5ÛÝ@\\<­sÁR8»!>tšFS¥ì›‹{ï\nÃ#3.H>•%äsBWqÐTš„jÏþÉâ¡‰\n:V‰æbsƒÅ)”í9çÜÓƒ§ò¦Æîjl$ÙSZÒ£Õí–)IT7’8RÒ0¡s´}ãTåžctãy	œŠÏÕ|Wi§îVK u<Õsµ ùo±²\\`ãŠÇÔüEa¥Ææâu?„šå.üO©ê¬ÑÚ#\"·QÏçQYxKçioå`OUÏ5z]\ZÆœañ»KñNâS[–þÙ\nÆãœŽ¦°>Yý·ÄÇ4Æ8g¯5ï¾/ðŸyá›˜ ˆ$ª7FÝó_:X\\¾‹ª«ó$˜\'ñ§µfMÔ]à}A¢ø^ÇLEh¡¿¾yÍt0Ž6Á®Âz—ö¦‰o1~ª3ZrÈ°FÛ˜îhQQ2rmÝ”§ñ5µ«:	7¶v½I=Ü’\"ˆˆy<sXRYÙX	§Çš]·Îj­KQº(–Q ó[{;­	M›Çód?7¿Z’Ü‰°AãÖ©Zé“Êá®[s\0«OˆAP1ŽÂ¡¤j3Q»ŠXŒ·u®/O¾#Z”ˆÛµmêÒ\0ÅŠîcýÚåC„ÕØm+6WC²ó8È9ÅU†òæíP5ÆÈØ\rAÑÜÀµQØ.X{¦\nÃîÖ«Ã6ðH8˜Ó©\r†\nŠ\0B¶ôÍfZ4-ÈBÌOjtŒÄ’Ÿ\rÏÎTŠ•¦\n“Å^ÄÙ²mìF3ÅA$£~	úUÞçz>Jªó2†ŽÑÚˆy’eI8Ï­WšàygoZ¯qt¦2yù}j“_)êl-nX38Î#¿4±ÎÁXg­f½Ëa°p\rF.“–#èi¥¡[£n¦~„w5j)	8b3íX\\…\rƒƒVí/8fÎzŠ­ŸóDW\nÀ…#4àø8Ï>•‹ot;6Ò¦Y8õÒ’nÚ”j°§\'9¨>Öà5UÈÁö4×l’Ùæ˜\\°×‡\rÓ=ªF3YÏ#È¹c•ÏëS¤±\"…\rÀö¥¸·4¡ºÚ\nãöjÁ—\nNN+)Ân|óéW¡ºV^Nå÷­ÐI–¤cä±SÔu¨ Ÿnà/­WžëËCè:\n§\ráÉïSk…úš³Æ$»©ïYW:t©WŒ~UpÞT§»WR çÞ’]Ç‡7©è)b€\\ýæ—%™Ü™?Jìç•ÙŽOj¤Êã¢R“êsV7·Ï—ÎmÃâ&ÁØRµœR+ž8ª7:ll¤Ž•wDÙ\ZPk+*ãUä¾fVR Š¥klTœ\rÊ;SåŒ«ãúT4]ô±=¤\\–-\Z±\'‘Š×¶ðÍ„Ä™m#pÞ¢²´÷hœEt6w…OË“ŽÕI\\¬2_†Z-ÎI·	‘Ú¨¿Á-*à°ŽI#ÇãŠê-õ?”™§JÐ±¿Â’9=Å5Ð\\ÍœDŸ³Å¤ˆ6j­ÙŠæšß²åìÉ›mF?í‚+ÑcÔJ¶OºÏkpX“Ò©E‰JÚ>_~Ì>+¶Ï‘öyÇ@VLgó¬i~xÎËp:[Éî:Ÿë_eÛÌÏÏQS Þ¼õ\rM¥Ñ‚vÕŸ\nÜü3ñEƒ²Ë¤^)JÄHý+9ôí^ÅòñÜBG*E}ÿ\0ªI)G­C6‰ct²	-a‘G÷\Z»É!®VÏƒ¬üM®iÇ÷W÷1‘Ó5túOÆïéyª<£ÒU\r_Sjü1©†èöäœå•01\\V»û6ønî76¢k\"Ã’»LÓU4Ô¤¢Ï¯–%\nrïZ`ÊƒÉt9]¤Š…ÉÜ}ªžÇ]Ê“Ý˜n&_½ÜÒý År#ÜHeéQê1)!á”ÔÏ2ùK PØèjV…î>ÞfŽê@I úÕ›‚&†D+Ž*”¯ºT“v3ž*Øb…²7nïFúÒEL¤°²•ÚxÏzÙH@¸ã½cÀ¶¤_8êk`0û½wSOK‰~^01^añF397oz×§8Ìn:dc5æþ/¶ó&“<íõ¬¥±¤—~(hçû>çåÜkÂ›åFÉÆÓ_WüEÑÌºs‚[8óý‹Csyzòk–‰L Ø«êžµÍé—&Ë]YãcÖÆ™’ÈÄÍ½“Ž+›Ôìú£“ÏZÖÁkžëKûXd,dÈ\0Ö6°†ipyÇzƒ/VâÊØ1Ë$`Sx–8ü©02p)¶cò_Å?\nü9~¼‹G‰Áãè¾ÔÎ£ ÙÍœïMs¾(ÒÎ­ðvŒ¼vqÌ?à\'?ÈS>\rêcUðM¨CóE˜ÏàjS½Ñ£½‘èÖXŽ&-þzÕ¨$YI#FÕNÆ’Kn$Îx¬e¹i;ï!óá*{úVD¶’ +Ÿ”V±”3ry5FrNsóv¤®š¶Å[xLa†sUä·qÐ’*`¤Kž€ÔwEÀ\'¨íŠVÆ|SEm\"&ÈùX\nâ|t‘\\Ý‚à+BÙ\'§Jëþ#E,š6~ð\rÍy]–¨–<nÀB2+Ïšýæ‡¹‡KêÎåŸ\nxš+Æ¶r†ùVà\rÞ€œf¾ñ/ì<¥‹ËÀÆ7`ª©É$×Åp‘ý¢¬¹fÞÇÖ¾¾Ðl´ßx:Åu(æ0ƒpnÌ8¯C\r¤Z8q.óMìt0êë\ZL7ÖÀùr ‘r:ƒYë¨7šÊ1×Þµ`·†ÖÔ[Â¡#UÚªƒ\0\\^¹=«N‘\0\nœd÷®½ŽH«èû«Øã]ï\"¦;“\\ö¯ãXlÐ¬\0Îäã# ®bkKíNei$!{î8ý+¡Ó|9k\Zæ\\ÈzüÝ+8¾Æ¾Î1øÙ„·º®¿!Ù¹ôÛÀ­=7À¨XÉy!vþèé]LðÀUè)Xœt¡FàªÙZ*Ä–PY\0°ÆJs;wUàqOUÙ¼õÍT»ÔâµŒ—`­T‘‹×V%Û<0$tà\nùâV€úF¹+ºŒJK®ÑÓš÷}KÄ—\r¾;H‰cÑq¾8ðuçˆt‰.äaçÆ»‚ÖžÍÅs35+»<e‹c§³fUås]íÐ¼Õc6Ìñ^àíOû_O7å]Û[5ôu”ëqiªA\Zi¨ê‚+ [é‹{XïoSZv\"„ð\0k=µ8‘‚ºT‘JÇvq†ô©ror•ËGSŠ9Wg­gÝÍ™	Ï\'­\"«¯&¨ÜJXÁ©lMí¢(ê³yCŒ\\†¥1ÌpCv®‚ïÎ¸g\0àg\0×7®@–ÎK7Í×Š—Uô7–s$<7éUEÈIY3ƒê*+iÖK$÷zT«òNÒ§¡bð’IÏ5\"Lá^ž•J<¤;N˜¥Žã;nsÁÅ5c]‹(Vêõ¤ó³üKøÕ6““œÓc*QÃ“íF†iÜ´n<T/.IÉëPùÊ*9%rjUÅf÷,¡73Çšä¥K4½rÀÐÕ¸Âž ö(W-³Œ1\'å)‘NªÎ{öª’Í°óŒ\ZåÇAŸzq\\¥%sVÞe,ç¥N²òyÆ++5N«pJ#b\\òE8“næÕ›œ±ÎEZK¦\\¯‡Ú«£Þ¯E{z7¿¥5°+#AHn=IŒòÙùÕ(n·»i^ç@ç\ZMìJòí×8ôÈåg\\‘¶³Ì…™‰<Óƒdc<Ul\ZRòŒšE¸1ç^jªßùi†äŠ«Þvö ŒÓ‹v6\rçš›rLÜùNÜcYd*VëTï®¶«\0y=h»akšMv\nÍŸJ®÷Œ«p¾•“k;;2±U¥P>fb«íÞ›»)AGbbYÓr‘zŽ.\nî‚\0îã©ëPùÜ±i4$ú€Ý€N#×5XÌcV%°{â«5À-·v­=öËö„o<òGtG»9“€zàv«Ð9ºr)%a¥¡vÚÜ3î¯jÚ²ÓÆ2£å5‘dÄÉŒ}k¡Ó¤p@è¢ˆ†K¶ú?š„ñÇ­$šLè¬Éž9âµí>U<V”_¾…”(çµRMj4Ó8Ù¼ÅˆžwµsÂž#6w€Çt7\ZLR@Ë·“ß¥yî£šv¥€r¡¨æaecß´ÙL‘,ªàçÐÖš6ì`‚=úW	à­HÜÚ¢cœWck.X¨ŠÒ$-K¹1¹4æ¹Âþ\Z‰‰1°MUP’Ë¸¯sJï¨öÜ·ì‘´R<ÌÊyTmæØÀˆ>VïTÝîRHöˆnhƒdò3ÅKÂ¬±X>½ûf›ó°%xãšÜŠ0äƒÅh¤ö9TH.¢G‚Uc‘Ž1Þ«[6Œ˜Ý·°«¤uŸ¥SµR’Ê˜Æ}jA\r>ÓfXe\\w«¶Ë\n¹?0=jl\"ín?½MÓ$V2.\nàñBô,jp,m rcWmœIßŠ¯qoÔ^[’¹5-²¢TîP1MFÂæÓ˜µ¸”kÏ¼J]®§VÁÅwÌå#bÏž=+Ïõl¼Óc©5”`yï‰ôïµXÌ¸É^•òÿ\0Ž4‡ÓõIX©cšúÓT;‹®:xÿ\0Äï­Ò„Qß\'f‡Ïzd-äÊ[\0úÖ²|½MÛƒÏJèõl5o)¸õ5…â˜ñrFF)-BÇKàdÆÍ+ÅuZäÌºD¥Õ±Œæ¼ÇA¾kIÑÇLcë^‡!ºÑ$;ÉÅ1rësÞ|+ÔþÚÁ×ÎÓ™@>»NyïÀK·‹M¾³\'æŠr¸ô¯KøP†O†zXbØJþ5å?AÑ|â	;¹*?àGüjVìn7‰íöm˜Øž£Šzê<›27zUk)1GJÌ¹g}DxÛÃf±šnÍã(#­UJ7\rÄþjœ¾dY`yíUìQÞW,jÐÒ¶ÅÒIbIäÒ™	P½© å¶ô>ô3í[«™>\"µŽãLš€ÚËÁ¯\0Õ¼!u%Û”Éã&¾‚½–+¡4d—Ö¼ÿ\0U·¶ÈY1ÏJæ•;Ë˜ë§ZtãË}IðßØ®¿ÎÝa_@ü »_ì©ìÉù£mãèýUäÓM«yk»ozê>kOkâ/\"N#˜mäÖôôÑÊn{ž¡§x†âëÄ—V\rnV²‘Ö“X°Yn$e\n3Îk`4hå€=ÀæªjDæÇJéÝÁë¡Ï´H[vÜ‘Þ­Z®ô|8\0pqU‘Ø‚ØP{Tñ‘r£ïpM%ïËjé\níÝº±õ?%œ7d(sÌ\0àŸJ§=Œ3Mæ˜Ã7½TmmI÷º0øŠöö=Áx8Å=­$½98\'8­D°G9\0 ö§ÃÂ[œÖÇ¡1‰FÎÐF¿p+t©®¼¸ÑÄòcœÔ­r2ªóTîÂÏà¸5ÝÁFÇÎÿ\0ôdÓ|A4¶œ[Èw©¡î+¯økâ;bÈÙ´Û|¡“]GŒ4M.ãH¸‚FPäe¸5á–:½Ï…uf’èp}\r’Žˆv¹ô=½„‰æÏ\'Üçs\Z§wâû+{˜Ñ%ÄãŠá,o5BŒ®VÉ9À­ë%³oÃuúTÊNFÊJògS-ì›±ùOLUw¹$¶:\Z£uv->W?*ŒW-©ø–h˜Ç\0f\'Œç¥EùH„\\¶75}UlAmá}‰¯?Ö<SÅÁ‹óÖ¬:óWÜóî\0Ž¬k:]\nRß.ìw&•Ñº‚[³¥Ó/ÉÓÑ‡=©ßhmçsqþÍeéw ÛÉåA«ö÷ª·cÅ\ZMt±¡$ZQp¬8~k2[•Û’Å©‹v¬z•¤\nÆ€¼aÔgñ«pªž\re,À“Ç­#\\\\ç#µ$öº	 yNylÕ¼ûÛËPµéüÃŠaÊZ‘Ð–cÖ¨ÊùÝÎ)¯>ð~`F|Œ‚=©Çb¹R\\JY\0Ï½\rŸ!·6=ê¸;Km‡jfö“$šI…ýÒ8K¤¥·|½«F)„ àãÚ³jkc‰9ééU°XÒŒõâ§ŠRœuE§\n3Šž9¶¨aÇÖ§®„Ê75‘ÃôúÐdÆgÅrUŽI#ÜÒ5Ë0*[¥AdY–FÚ]XÓÅ¹g`3°zÕE•¶²œš‰ä+lséLe¹æÎEñÇñ~•”f|òÝª$¿ÈP…ïKF%cy/p¬IËUY¥³†÷¬çºrx8¡nd·oJe$‡¤‚ÞcÎáÒ­5ÐdfRÖ,÷\\€h[“Í?tV.ý©Ë¶1NKÀƒijÏ\rØði®àgæÏ½	¢ÒF¨¹G<\Z¥ÎòAÊÕ\"I^â­ÙåÍšJFŠ*Ú“	HÀ&µ,ät@Ùæ²ãO0í(­u\">§r2P¾ÆÞ™*É&o©®’Ê`Ìg\"¹}8ˆÀp	&¶-år>Rim±Ym0Ü0ÜVå›¨RwW1e.P)9aZÜ­ZÚÀt2Ü›\0½kÏ|XŸé÷®´\\œc8®3Ä³6ã»%‰ïI$=R;‡·n›pxÇq^¯l›£b¼_áô…_ïu¯\\Ó.	Œ‚À\n.J/gß•çØTr!`A\0à\Ztmaœ°éïR>éUˆ 7^”ì?R‰‚m$©ö¤xw)¾†+rpx¨üÅN‡ršW)¡á.M.9—hHÙ³[€“Ó¥41\0€x=i\0Çz¸ÊÇ(§ƒ×ñªR»Gv­Â¡$ÕÜg\rÈˆ&é>êÒÊîfPÈÉ‰‡\"ˆ[Þ¡Žþô\\]âÝdCQK5ç”‰\'cT\\¾dlu”î$xØãMo\'9\0½Uš6MC1«m#’zÒ¾¡ÐÐœ~îB~bp—q7˜ÌÊTæ»åÎÃæcð¬û*;€Òc¯e¨š¹q´v<ší÷Îøë‚ø›\'‘¡\\ü½G§J÷ëo\nXÉ;£ÆuÉïMÕ¼	¢jv’ÚÜY#£Ö\\®Å)+ž7vñÍu¾osÁ®wÆP¤qÂñ¸lœjôŽ:xÇ7š\\ùveDž¼÷ü+Êµ9†¡ÁlíÆ(Ž¥!<9h÷síŠ€1ŠôYá)¤É$a85„|(šL,ò–ËF:•¡­FRÚlr›p3MÝí¿¤ÙðæÃ\rò*?:òëv\Z_Æ»›ä¸zîþ^ˆ¾ZDH;\ZEwùyçÛû;â‹zª~f\nX}úõýíDŸºÒ=²“ÉSOòü¹7`óÍV²A(<õ°¶±y{HÝîk9.f8=5)Îx¬öBÎã§½l”XÁÂŒ\nå¼a­dh×WHü¥Ý´ž´’ÐnÝ	çÔdsY²j¯’\ZSŠóÛO‰3ÞÛ4žRDONæ²/ücp¯ûÐØbš¹:žs­ÃÌCï\Zçµ-wJ³‘ži¡Ïu.3^I®k—RHÌ×Oa“\\¥ÅÄ³¹;ØŸsT“SÕ<q§	¤òç>ÁERÓ> CoÄ~fcpÀc^ZK}ÓÎ+FÇNwfµZK–ÇÙ^\'Ô5›ÿ\0ZÝøxnžp¯×¤VÞœ×K£Â—¥ZèF„{×ð[\\]WÀV+¿-n¾KsÏWf—±HÏÊ’02ƒ’+]nbš1în\'Üv£Ð­K²`ïÂû7àá$•qòŽE4Ü‚ØU&¤Ùq÷ýª6ºEBÌp­5\'eaŽÕBöDò\\9Æi‚eØuæ“bÒµÁœg<þUÇÜx’ËGBûŒ’(èµÆê>3Ö<A3Cf†$\'ªú}k;šr6zF¥â‹-0ó©“û ä×\râˆ×Ž^;8ºž3U4ÿ\0Ý\\‘-ôÌó´\Zèí4[;&ÊA˜òi6Æ¢£¹ÇÚhÚ¾»ûÛ×xÔúÖ‹¾¬:cOnYåNN{×¥nÛ•O˜\nSf÷áðŒir¾ãrÓcÈ>x«û#SûÌŒ!sµsÐ\Zöøî€P€¤u¯øà\'Ó%mBÈVÕO­[ð_Å‚Åí/Øù‘#â­¢ÑÌù¯¡èZ¾˜n.%Ã®9•ÊI§%µÎâwÝ»Óbøƒ&¥}\ZÅ“‚zšÕ»ŒH…ø=«7«¹®°EIn×aù÷kùÃ+œuì*åÅßzdÖmÔ¼Œf‚(Ú8IåP1žjÃJpFF+.9?ÒÃdäœU·=ÎxíMj\n7wÖ”8ÅD®r¼Ô8FlŽÔYd]Ü=l¨ð:U7¹ÁÂr=MS‹çð¥`ID™cH¨~cÂ«G:$M¸nç<ô¬X|KöË÷€®{Ó@¹dRÎ§“ØÕub	É¤,MFePÄäzÒZÔ•§1¦:îì)ŠqZMË‚AâåþëtªHieryÏµ*N°ŸSëP+í}¬Ùü)ÅAä÷§a­	ãº3ƒRvBs‘ØU(—k79§¬Ø\'\rŠ›h2â]ûüŠkÝ’…G_Z¥ç‡-“šíÏ?*öõ¦´BH´·m±†wg½0\\»9ËgMfåŽvÓ£“¸üê+­šVi[6Ó–B¼Ò¢\r¥·e»æ I6©7U·-4ƒ~Ü“ŸZ]ûF7b ‘Š®AïLlœ“B•ÐôC\\å‰ÎiÀ\"œÍúTNHS´dÓ!«0[JGP%²ÔÈ?Û©JnêÝzV{2ÒJ${ØÉÍMnXƒ’p:S£ˆFsR¢ù‡\0Ö«@E«03×-_…Ý@È¬ÛiT9ÏAV\rÊ«ÀÇqI[a#jÊã ©8Åk[^‚Oã\\Å¼†Cu­yö+§Ú›²Ø›DÄ¯}Mii÷[‹†l{W3cpÊ6»<äVµÆÓ†à\ZjÖ\'©ÖYÊ\n¹\'$Wâk‚×dní]¥ÎËvïÇZãuw/zHçu1Å£²ø|Ãq#šõ[	0ØÏäÞ·“åy8¯M³.#F=GZ/t\rXØ³m$íéÅhByBy…†>­[†ð…È8\"™(¹uòÏÌIíQ&cˆnÉÎ—Î2&Ka…Vk‰¶º\rBØ-}y4d3:zP:SFOÝ‘Š$BJ0â¡¹Q-¼ˆÀž8©Y:Ž\rsž2H§ %©™[ì\Z,dÐRÀ<ËCã*x¥…Z;Ã ƒÈœÍöù u\n¿Â}i¢½M$0Ïj‹R¸’CFpsÉ&ˆ\Z£P7Sî\"2ÛÈ½ÏLÓNÆ~E¸gYmÕÆy$sªð±õÍgé3m¶xò-[ÁU>þ”®$¬DÍ¶éT£­\\–0Ç$®qôª³Ç¾0Û¶ã“S\"	a¾ozGÊ_¶—…ØÉ£ëqG•\nÖòÛ¸?Î¾<Šì·½~~Ò>\ZþÜøc©•MóZ9}xÝ_ÎÌG9ëQ«:ì{ï‚î#Ôü?¬ŠNÀ3PxŽÎ1c?\0Õ_ƒ’Åq¦Kjy1ž\05Õx“M‰tËƒ³TÓmu#]Š_&aán	!erã\\·Å0òøƒIU˜?ÝZ¯àOˆö±“O`Ó]´ä(Œ×5éº6ƒ½2êˆ’KÕe‹Þå&•ÑÔh¨ïm\Z°Á*+i‘1ž•›fÜ…ãhéZJDÀá¿*ÎMÜpÑeÜ»ŽIçÿ\0ä)á‹äaÃŒf½&å\0…ñÓÖ¼ÏâµÂKá[Ñ†	ÔR¤ÙQGŽxt-Í¼•û§­j]iÑÛZ<¬8Qœ×-¡k1Y\\o;±Ðâ»ŸMÞk«WVVÂÖžh¤ììÙå\ZÆ¢“Þ9~QÀ¬ùn°NÒqDÑ#ÎjSŽ‡5iŠú‘É2ªäö¨ã½uÝ°=J¶û÷\r ç­6+b¤ã ªˆ›è}ý™<@L:®˜ï“òÍ\ZŸÈÿ\0Jï¼%àÄÚ¶«s~×?k”CÆÐNkçßƒšÿ\0ö-œŸ’`baõÿ\0õWÒZÇ‰ÖÂÝ&º™-!c…y3[F-«£šNÍ¦iêmä–Á\'<f³V·³,ep§ÜÕûóö$\\DþfTEpZ†•5ÍÑrä!Áùz‰huR\\ËSRÿ\0ÆjC,(HìÇ¥cMq«ƒqŒô©a¡¤JŒWÌÇ?=j˜v)(}êÚ–šŽÇ?cá\0›¹‹7÷GJØŽÆÖÆ5XQSop:Õ¸\"y—ß¾*t±UÈsJ#Í´Sˆ<‘£-ïKö@Ü±Ï°¢óX±ÑÑÞiUF:\\~¯ñ/Ì‘âÓ­üÆ=Š{ÆóØì%h,ã,ä*Ž¤šæµ_YÙy‹ïÜvÌý‡^ñî¹f†&çŸð­]7Á6–`<­æËþÕK}T~6`]ë:·Š#–(âòán1Ú¸¿x&ïEQrËº3É+Ú½²xmö…\n˜ê\0ëTõe†þÖH¦PPŒE8ÛÝG™xÅöv±›;¨ÂJNÏ­vRjŒÑ²/B+Ìü[áVÑç76¯˜IÈÇPj-Æ¯h¾MÑ.1…bj·!jv7{ÖFvfN@¬}KÄIod’G½Aw«I|‡æù¥sz»Ô‚s»¥+‰jhiúÓ_ÎÀ\r›Hêx®¢)„Š7§+Îôiö]‘ŒgŽk¶‚oÜ.9ã­2¶&2Ž@;‘ÇµF$Ú7gô+œõ£¡äT‘ê1.DŒqÚ’$ÓJV\n?ïšï>¢šV)+c dµZd;J±üÍßÖ­\0p9¤Én1À¦•Æ7…€\0ö¦Ÿ.B;žÕ!S´äãÚ¢01ÏµMw\Z°ÁoÃÙô¢\0ëœ|ËNÿ\0–dá¦ÛÎhZ+Š\ZÑ«gmHµHÉ4<êF(à!È#Þ„’\Z·A>ÑÆ1Í@Ì94²±ÀÈ¡ÀÛ»¾”¹×By[Ül.âM=Ø`Ž1TÈ`ì:Q¸<®ê¨èèO¹IÏ¥9@$\Z‰Wwzz®ß­dÒùG¦Ùå¶¥0ànÏ>•\"Æ JœÔ.AcŽ”ãÜUo”÷Å0®rwc—uü)„Ýx«H*\"•ÉjB¨ù\0@\nriñ«ÏÞ•ÚCô+ÈÆ2	éRZ•cš$RAV¨\"ß–©l-M ˜OçN?Ê«Ã+†98ç¾E4h=eŒr{b”¸+’*ºœwÅHÒ!Àþ4íc8;“C1NjØÎ¦>Æ°â`Xç8«¶ÙzNÉ vgMot<í?Z½À\nr>^ÕÏC2¯Á>Æµ¬n£•”u©V$èa¸Ùhkž‰nAÚI\'jÖ–õ ¶!”\nÌÓÜK8Ç=©6†zƒ@W$Œ×smxcv`g£WáøŠªá‡˜CÞº¨&Å$^zU\\§‘ÊNãÍ5oÎ›xþõE%¨Š=Êqºš‘†Î;õ4+tMK)tËÔî©-.LáøÜ{\n`@h9Å$1ÅlY÷ê)$º‡+>ƒ99æ£|\"’OãUµCû/O¸ºØd.í£©¬¿x…|O¤µÚÄbbJ•=Eh‘Ìã oê1K‰pÈÍbkß.ƒtl1%àCå‚23KàÛ›Ë6ÔeØâE´XJæ¬±Åžq@j•ÆRñ(!¿ˆÔúŠ1‡pÇ­W.²[«’¯$&.#›?/=ñBÌEñFrAíQM\"q3\n8Í\r(\r€0ô \"‹¯w2F˜ì*ð\'ik%­oÈ»A5§ ÷¤Ñ+QÒÅºQÔ÷ô©-r‘à¾Hýhó>GLg8¨­cîQÏãN»kÚ|zž‘{k*ù‰,MÏ¸\"¿0¼e ¿†üI¨éÎ»M¼Ìƒ=q“_©R·™žÅ|ûYø\\èŸ¦»EÄ7‘‰àY ÿ\0*Î{›ÁîŽGá§öMsËgÚ®1Šö_¨þÈ¹$ƒ”<WÎ>\ZÔÆ›©Epq…a‘^Ýqã=3WÑdòî£ßååEeöGd™óå‡îüOÔÿ\0®þµõƒ¾š€Ã‘_4ø[A}cÄÒ²Ñ¤™Ïã_Mxn4··TáBN;	Þ÷:[pXÄ·½]‰dgÖ¡´2wã­FoV,¼\nÅ­JŠ[“Þ#KnêQŠð_ŠžÔt;Û‹o6k•y;O­{¤\ZŠ]!)‚*«õ+k‹yãWIiR8\"¡hiì|Iev[8 VçÛ§“O{D˜˜ä®x®ƒâ×Â¹<\'q.¥¦«I`Çs ÿ\0–ýjå4K ê§°­¾¨¶Ž@ðY¹ÓMÉBí“Ç¥gjžq!ÄX¶+ªðÏ‰&Ó¡1*‡RrA­OTµ»·,±1ãm\r´?#ÈÍ‹Å¼®ja\'8$©ô»â9ìdRà “1Vì4¯6ÝNGãO˜,sºX“MÔ`¸O½†ü}3áû?ˆº™+ÈÊŠƒN†¾{»³êPÁÌÎyÍ}\rðÆãÊðè…ßˆsø\nÚ.êÆ2Vw:‹[T²°ŽÕOÉ\Z…J¬Ö	+“‘´ž•[HñE¦¹5Ô6¯¼ÂpÀž\r>ãP]?˜Á\0çžÔý4E‚‰n\n*‚j\'š(Õ·ªrk˜½ñ’—e€nÿ\0hð+\nðjúÙÌr/#=…ÖE¨I³­Ô<a¦éÊàÉºEþç5ÌOãMCVvKH]#<aGõ§Yø9m”Ï|þi@é]Š[ÚÅþEõ£W±ªä†¯VrÁ·zˆ9Œ¤äÖî›¡iúB¨†\ròtÜy5z{ñ¼îù,wqÆ¬X)ÇéJ*ËRUIH“Î\n„*zUY%UÉlcÞ²îüK-&>‚¹ÛïËrÒ|ácÅR²V!;›ºŽ³kf.8é\\Íÿ\0‰DŠËÌzç.î’¹iKj²å†@â•î8Ç¹­y º·d“æSÚ¸-o@U•Ì}:àv®¸+\"ç?-g^G·sÖ•Ê²ZM¾«=1³ÐÕ™u¿•vòE^Ô4XîrÊ0ÕÍÍ¶2œpEVãZ\ZVò*êŸ\\Wy§ä/?5y„7/ç+3`ç­z3<\rŸaBìÆû—ØŒZfÒTœà\nÇ’šÐ”‡c#$Ó‚mRÄdzÓÎ9âœÓ`àRwbœ¿….âAÀæ«»’HÛ´R‚Ñ¡\'ŸlÕrMÙ!õÎ)ÊøSŽj$40Æ1Ž´nœJ-Ðš0cƒÞªH\0Èæ¬¶ŸZˆFðÆ¥¢º2`zÔØzçÃQˆ¾}¢žñ”µZ÷·!^7»àPG)ÂBW¥V•‹äg¥+$h¤8ùxäÎ™å`œç¢™·®O\"Ÿ½‚qP•¶wwÀÅ `¼\nPä†˜G\'½ÌÍ\"UÁéLt“œše(`ñ“NÖ-$„Až	æ·\0óQ,›Ïåõ§ÓÁ€ÈíOVâ¢çÚ”J[ŸJ¹SÎ‚p{S\\\'’iŒÀž”)9n1ŽôX¥d¬-9%Îy$TM(9¥‹t§\niŠ×\'-…ÉÁ H\nŸ›i¦,e†G4¹Îq×Ò¸”yu%‰€;s»ÜUØ#2FB¾Óž•– –ÀàÖ£•R‰¡;{–’Ø©|œv­M=Ä-’gÒ³RBW=«BÇ{~î9aVÖ‚NåÍFgt/­XÐ gglò1T¦»…xlv­o:HÝ3ƒŠKÌLô_Å„’HëqJ¤9¬-4˜ãýÙùMZI1,yìj¢‘3Ýƒ\0DPÇ€I¥Ž]ŒT¶3Ú³-®¶DT8$TrÞ3¿8ÙŽ¢„˜-M´+†äsëO‚ØI»ž+ïP*ƒž8æ´m.üÕ\n‡°Í	h\nçÿÙ',NULL,'2013-12-17'),(171,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0àÐ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýE¢Š+# ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(Åw?fÒg|ãkñ×öàñ\'Ûüg<A²°0~µúÑñ{U]3Â—nxù5øƒûIøµ¯êroÜ‹!ÁüMo¡´v<râf,zâª´Ÿ#v=©ï\'Q“P\\š¥dCmhˆL ëÍ\'˜¾´œ\na1¯½Kw)$€ÍÁâš_y8ÏœÜçúÔ$`ÓHMÛRbû2¹Å ›ï\Z€riGSPÉçdíq…ÿ\0j¢ó9¦“Æ1HA8¬®ÙW}	¼æÜT¾ECš¡S´1e§×îÖ×%6‹0ËæƒÆ¡å*ØÅ%²€„úÓe#~ÑQ}\r˜øå»ž”Á.íß5@>GðiL„Òæ&2]IþÒ\0ÁëH·$ð±öªÕbÓøÿ\0\nlW¹aˆäm>•ÓhkŽ«œˆõÕèP»›ó«C-ß9“žEr·³ÍÏ&º=SýY¦+—½Áo~õ#¹BY[qâ¢ŠPî\0õ¦LûÉ\"¬h°›Bñ’ÎëO›°\\ýý´3‡-\\®]ÕõœLX>µá¿³.„,|kµ1„…{µ¢mNG5‚+t`[ŒR·ÆjÀîE0úV|¢Lâõ´Yo0yÖxJ×»}+¼fŸP*\0ëÅzOƒmwl¼âœFwþ‡=»ÿ\0ŸzèY˜§\0p+3J‡ÊSëí[,ëä‰ò÷>• ÒI»ŒW3¨HHÀ«¨ÕPüü™®;UV†Þcž@<ÐÄ_¶ï‰Béÿ\0dæ-Óþú¯‡÷œb¾—ýµ5voÅP_1¥ÜEHcŠ¤iÐ±4€í=¸¦¬¨Aù‡ãJ8$Æ	\Ze|ü •õ¤óHŽjE¹§\'¸£D;¤07‘·µµàhëÄ¶h£#Ì±ÌySœ]ŸÁ-¯¼gj>ðF­\\I¹úSðZÈÛøR\0ƒ´\nëüDÂ\r2ç?Ýª_\r­·†í‚Œ\r‚™ñ\Zck Ü2¤)Æ+\'ñ	.§çíª›ß(lª±â žN0k¾ø·ªGÅš$œH@ÏÔ×\0üµ²Øo˜„¹Š¬×@’&¤˜åN”V„·aírár1Tå¹r[&¥Ý¸7¥Dã(ENŒ¸¶Uiy¥¶˜ä‘SHIè¡–«å’1øU­‰½ž¥èõ	ã\rµñUå»iX³¶O©¨šMÃj=¡³JýåØÙÓ|Ms§äDøíÅW¼Õe½‘¤vÉj¡c,jxSp9£Ì¤ÛoS–ÉúW¯þÏ–f}y:s^F€/ãÒ½÷öh°j-&8UÃ©\'ØÚ$†+HÑºc¥tZt\r#‚ãÖ²4«RñÇœr+¯´–&Í¦”€ª3ÍsîÁ;—nm­þcõ¢âî(ØíuÝßšðˆÿ\0´•‡‡X¢™w(<_9kµn¯uxí’,Yãæ­#$ÏÑ7S…ãÃH¹õ ’Äü«ƒø×æÍŸíQ¯Ä$“ëšÚ³ý®õÈJù’3cÞŽB[hý•#eˆ\"³®¬ã-ŒgŽõñ%§íÑ!%‡¨5µiûhÉ´ùœŸ\\QÊì%#ë‘n›pFê¥wkæF:×ÌP~ÙPK‚Ê§Ô\Z·í¦LáYW¯ÍƒJÌ»Ü÷û2F8®cWð¬7\r¸~çñþÔÚÑ•fP}sS§í)á«ˆÊïÆ>”Y‚i©4QEdHQE\0QE\0QE\0QE\0QE\0QE\0QE\0QEá?µˆWHðué-ŒFÜžÜ\ZüCø©CÄ7óÒ1Ïâkõ£öðñ9Óüy\Z¾!\\f¿õÙüûÙßvIbsø×D[r¾µsœ÷©ÏCŽ¿þº‚©»\n#KmFÜsP9Þ7TÍmß/>¾µ]†ÂËR†öHO£±¦ÔÊ]¹À¡HÚOzJU\\‚Ef›”¾aW<šJ*FB &˜­–>õ$cæéOTRÞÅÈFýj´ nÀ9«kŒ|¼j¥ ÎÓ‘ëTÊlmò€ÉµNFqšn1Pf%X´<°¨\0ÍMj³|¼Ž„ö¦·\ZÜÑ±]ÒŸjí4x“Ècœ\0:×!¥¦éúdWqco¶Ñ°2Z¢ŒmbbŒÃ8ÿ\0\nånd,]»ãŠèµÂIlúå\\ëu<Ðò\\íé]Ã}<ê>,°„\0Ù•xÇ½sDâ½WönÒ¥ñÕˆÝåÜÔ¢Qú}ðkJ[/Û€0\nô%F+Á6‚ÓC·@06\nè\0$àsH,(’;‡zeìl-ßœ \\b¥·RŠÅ¸Ö£Ôçòí$ÜÔ«¶8›h·êL~ðÍzÏƒíÀLƒÆ>•åº*ÔcÕìÞµ\n’?N´â$v\Zu¿Êí«Ò‚\"lß¥-¢ˆc©æ8\r-Zì±Ëê­»wé\\Î±šÖEîx®§Rwöâ¹Ë Ä·÷j\0üýý²¾jzÔÇRÓãiä‡$¢Ž¢¾Ô4Ëí6áâ¸†Hd^ªêA¯ÛOøjÛUIXÃdc‘^M¯~Î>×Ú{d\'ÕFE%&cfµ?%¾Ñ*õ\'ñõ¿‘3Î}«ô§WýŒü3tä®Ÿ\ZŸT®OVý†ô‰Ú;wB;†5|è;Ÿÿ\0k2g’ãDzÔ˜c¸â¾Ë»ý‡t÷f´ê}ÿ\0Z²î?`÷·‘u:óýÐ¥ZœEo3å}ZIpŠzúöRøc{¨ê«©\\@â2F21Åw~\0ý…mtËôŸP–K § 8Àüq_\\ü?øiaáK8á¶€(P:Qqlt:\r¢YØÅ\\mP+‡øÝ¨]°;p‡šõ(¬¶žFÑí^ûS_gøQuê\"j•°â~`ø¶ìÝëwÒ‡Ü­)¬Ï31íê3œÒ^Kæ]Êç‚ÌMH /GåZ}’YLœ‚«9³ÈÇ«=œ¤´æ¨5¼ŠÊsRJý3Þ’žb|‘ƒÅ7PRçÚ¡•	)FI7a±Ü•oŽçÇâî&ì*BdRF*HíømÜÕ8¢˜( Ž02ŠrG’{R)Á©¢ çƒInëaK‘_T~Ëš&èüÎ™ÆO­|¼°‘së_g~Ë–iÑ¹+Fô%_©ôž‰b År<J|/á¹U¶‡ó¯EÐÀãŒzWÎß¶–¦ÐxdÂ§È~5Ì®\\UÙñgŠ<Qq­^Ë$²´ŒXõ¬ëfÌyö2¾üž3WmßäÕÒôZµÐÓIS“Š‘X7+È¬å“\0ääÓ’rç½EÊÖúšôeUÁHÝ6ˆîJç?5>o1]2él‚1úÓ	Àæ«‹¬†ãéP›£†Îi§pVè_GBAúÓL¤‘)Z¢njÁÇ5+B¬J´QEbfQE\0QE\0QE\0QE\0QE\0QE\0QE\0ÙdlÞƒ4ê«ªMäi×è¦…¸#óþ\n+âÒ°1\'.ÇÎ¿4/Ÿüšû7öþñ3j1k]ÙØOzø²è»OA[¢îRŒñÖ£§¸\0œuÿ\0õÓ:\nrì5‹a±éÅT«.§\r—ÂÕs!(ô“²&CA÷¤sÅRmqš†Ù*Â3`qJ?:E\0g4½*\nxõ¥¤žÔ´„-«\'#¨ÅESZæaM\r%$FÄuÅQ«ò\0îéÞ©\"3çhÎ)±±7»sÆsIRÍÇÑ¹ô¥…?w#{JÂ±\rX´þ?Â«ÕÛXÀLƒœòM›\Z\no¸ÇNŸÖ»¶+B£ƒŠå<7lw”{ÿ\0Ÿ¥u·ÑýžÍ¹ÏÊªE#‰Õß;ÎyÀÏçXNÁ,qZÚ¿ßažÿ\0Ò±eˆ°c¼Ž¨@Še€¯£ÿ\0cMßøµ¦#€?:ù½†OQ_jþÂ^ódk¢½X\r$$}û¢Yˆì!O»µGnµ§;W™gG^ÀTü¦i$¬a±ÃÆ²µÀa·qÙ»ÖÜd¿oÊ±üFHŒ¡íÿ\0×¤†ì–IËc<×°øf×e¸\'µyÇ…,‰TÀäòkÖ|?/¦”A¶ãñÓ4Ûû¶ú\Z±oòsÓ½E|«ñÅPyœÎ§ü_Oñ¬9\' ­»éöÏ\0W|Gñ¥¿„ô‹‹‰)Q‘“ŠCCõ­jÇMn&E>æ¹ãã]ÏËv‡ñ¯„~2þÒÚ®µ«Ko§ÎË±ƒW™CñgÄfFmsøÓ·B]í¡ú‹kâ=.~é¹5bK»A|g>õù‰§üqñ5¶í·LXwÍkÛþÒ>#‹®€ÿ\0hÓäBMŸ£ñiÖÒîmÈÃØÕ˜¬!ÚF«óãNý©õØ#ÉÞqþÖk¦Ð¿l+øfÏõ¤¡`‹gÝ¶úzà² æ®AnbÝœ~â¿h[Æ‘4«½±Ôóš÷{AÜb¶Tô\"¬4îUšuµ‰™úWÏÿ\0´f›/‹ü+¨ZZ.\\Æ@¯¡otãu  ŠÃ—ÁÖòÁ$oÃt¨¹qÓV~\"xN¹Ñõ+›iÐÇ,nT†5N\rMàC“‘_¦ß?c}Æ÷Ü¤^EÁ\'÷‘Œ\ZðM_þ	÷xŒßgÔ\\Áã§Î¶erßcä£­0œ\n#Ö#ç!Oà+è‹ÿ\0ØCÄ¶êæ+ÈØú\"¹‹¯ØÓÆvå•#Èúÿ\0…R”{‹ÙÈò%¾„˜\n‘e´6T~½\n÷öMølþ%aÇm§ÿ\0­X?\0¼sdÎE¹Èô«º‹Øçü‹7¨_ÂXÙ7Bj{†-´ÜG½@½3	¬ëkvññarŸïBÃúRAf\\\ZE£¾AúÒbBÄ•–±ü­F2CÃ êi¦{Èù\0¨ªƒ¡´t(Çü´ÇáSC¡à6Ç®yõK…êÖ¦·Öç#œ÷4hB7#Ò]fT-À q_s~Ìú?Ù´X¯*¹ükä…>Ô¼c«Áû–hCÌ~‡ü*ð;è:D12ãÆÚ/ ÎÚÂÌˆ™€ÁÇJùöØ¼Ì6ðg\0ÉÓ×­}¯öq“’:\nøöÌÔŒ¾!·€¶B’k8îTO•®Sl„{T`1R]gÎ>Ÿþº‹\0ë]Èž<Ç<\0=ªR\\—ëPÚ©PÙïV+îh¶µ=Tí\'8§ÚEö™\n)äñ]­ÂýNòÄOg¢ÓPßC‡\r×53rAàWG¨x/RÓƒy–ÏÜÖÐImÈÊG¨¨Zk5Â\rÀGOz¤9b	¦Ês#qj‡qïÈ¤›#VMÔQEfHQE\0QE\0QE\0QE\0QE\0QE\0QE\0W=ã«õÓü;w#\r‡ù\ZèkËÿ\0hmtoÞH[ŒŸçN;‚?¿k¶³ñQbÛ•_=Nùvèu¿íêS±Èi3^w3`±Åoô vÜxéL8Ç=)IÉéŠiä4Krã±”]Êõ	C¸ó}*[ƒ™>‚£ÉÚF\n\\·F]Ft¤Àq@än£SYlÊŠDdœÓ‡\"Š2I$Ñ@\0éÍZ²AË~V®ÙýsM\rÓ­Ž\rS\n[ \'éV®1¿k>3Ò–7î¡§kŽ×*rO©5$py…†î‡Ó­-ÏúÁôÿ\0\Z\\ ã¦)XV\Z«ó—OQÚ­@žÞµ^÷	S<f®ØÂ¡ÔZhhì¼+4àã+žkw^c¹ÛèóªÞ‡lmž1Rø™ö@AéëøÓçšŒ»ænk2mÛdþï«×X2±Îk6áÉrdzRè.„q®÷Qï_£Ÿ°ï‡|ŸÛLnW\'=ù¯Î­2=ôH9ÜÀWêïì›¢\r;ÂV€®Ò\"ZOáô`€iê›øŸJ’ãqÛ·ýªO,ÈY—‘š›‡™$6å±#ð®WÄ3¤¢ghõ®ÂöDAí\\n¹žøJv(ë<*¾ø¯VÑíH@2kÍüm€Ÿ•z¶™Ôö¥\"äQˆÐT5aóZž_•~ƒÆ¨g/¨ÆLò|YûiøÆM3A’Ý$ É‘€kí-\\ù0JÃÐ×æçíÍ®<ºœVÁ°:ãó¤ùEK\\ÌîHËóK»k:ÇÈ<zÓ­b3ò{`Q4ûÆÕéëëT!ŒH<ç>õ=…ºO0V`sÚ«Ç—8Çµ¯£Y¤×‘¯@OZwæGw¢øVÎk\0Ì×5¯xVÚÎ%±Ò»½;ÃÛô´hf\0‘Ó5ç¾+7v7Dí¹=ª­a‰ð¿Å³xkÄvì²0xR÷¯Ô/„>!msÃVÎÄ±(+òwÂÖÿ\0lñ%¢)ÎdŠýMø	hl¼%m»;¶\r6î‰Z˜Ó4E†Þ=zTñ…tÍF»X·Ý®ÇŸ4ß[;M:ÆËØšÅFå\\îšÖ7\' Õ+&¶Šù/Ä_¶•…ì±Á.õ‚¼Õ{_ÛnÞUù˜‘î)¨Ùõ¬Ú³!Xcì*¬~¶%‹ÄŸ•|é¤~Ù:]ÂîyS]N“ûYèD‡ÔÓTì%#ÙÇ„­$ùZ%ü³Jß4ç\\5ºþè®Ný¥|3?Ì.#ãßÐX|}ðÝØÀ»#¨\rO•‡2%¼øU¤\\3n³„ú|‚±oþhªÁôèØá]<=;åo#9ÿ\0hUØ>\"h“ä‹ÈÏÑ…._0UêyN¡û2x^àHL‡Ö1Ír÷ÿ\0±ïƒîÙ³¤@Iî±_E§‰t©W\"ò3øÔ‹¬ØH¸VX¥7mÏ’µ?Ø[Á÷A‡öthOu5•aûx^	™Í |Ð×Ùn³˜œHô4è\Z	˜ìÁ¦_3<Á³îà¨Õ-­coM«Šî­ôå·8\\m±^…=šºðô¬«(F§¿×¡¤frú‚ì±—Ónkósö³¹ûG™x%	}M~“ø,:løàm=+óCö€µ:—Œõ	ÏÌTÓŠÔq>y¸SçµDÈW õ«—ŒZáÕ„æ©âµµÌÚ°øc/»æÅMæ`ã?ìÔJû3‡¦n9ÎNh±IòšsyƒÈ5ê>ø•q§Ú]	Qßç~†Þæþ%ƒ!aÖ¾šðÇ|;>”²Æ#2Í\\omsOñ…¶±I-7õuü\r¤ë±ÖŠ„úTš½ŒZcº¸ÔW©üT¸Ò™Ñcd#Ú›IŽí|ðrÓN²–æÕ‚3¶¼Jx¼‰$LçßøŸâ®£¬DÑ´Çb¼êY¼É	\',Mckl4îNQEbfQE\0QE\0QE\0QE\0QE\0QE\0QE\0ò÷íÃâ_ì‡ú‚\nZ2£Ÿjú†¿?¿à£^-û.ŽlÃg{cíþM\\Ë\\‹ë†\'’Æ°_,[wSZZ›‡–bzæ²Øeùõ­Ò!+œ‚):( çjæˆ­çžý=©Œ¥NZsÆ±ƒóóéŠˆ‚WƒÍ8™?1àÑJ)2zÂÃÜÒ§Œ`ÓqNÖÄÇ=M-T€äRì\0êjý¼{#ëTíAóO5!“À§Ð}\nÒAæ>sñ©®Ð8ô 0,Fy©jË#ò#,Üdúg¥*B#rËÐŒb„ˆ#3g%>„ Š»¦Ã¾U\'¦qT«_AˆK\"ƒÓuè¾·Ùg»ŽFk\'Ås2îãÖivë\r‡l\\7Šetƒ=ø©D#‹œæFç½SºÚW¥Z—F çžµJá²åHw§Ð®†ßÃÍ;ûOÅºtr\ZeÈüköàf’4ÿ\0	[íÊ/Zü¬ý´í?ˆv\0Œ„lšý€øu¤‹ÚÄE‰:KS÷†=óVIâ’4	Ðb­CvÛÎ1Ú¢ÝY[hV˜ˆàr3\\sJfÔÉ3]®¦ž]³íô®SI´2_1Ç%©\\G¡x>Ñ•Pã×¦éÑí‹ÓµqÞ´òáP;b»«8BÆ~™4ÉÒ²57á±ÇA[¦ÒËùV=á\\¿¥>…#’ñùzuÃpÓÍ~X~ØÚ·Û¼t`8r}«õ/Æ.±i\rœ\r§šüˆý¤u#}ñ/PÃn\nÄ~¦’Ü¥³<Æ’4+€=	5>ÝÀŽ£½(ëÍ?Ê- “Zì¤j™Ú1SA3[>ä85b×I¹¼V1ÄÄ/^*-Ú2U:ƒ@´6¬üqAA8úÕ\rSX›R,Òpæ¨*Sœæ“ Å6Ûbtl>Ûã[E<€ÕúµðÇM[OZ®>mƒ5ùû6i©øÚ6+¤WêŸƒ¬V\r\nÿ\0`v¤öQñ^¢tÍ.i³ªI¯Ì¿Ú_ãÞ¯âk«{ƒå#àõ¯Ðÿ\0Z Ó|/¨6zDßÈ×ãÿ\0ŒïßSñ]ü¥‹)™¹üMB*Ú\\½¤Jn33êI­hí\'<Ön”¢ž@­¨ñƒO¡=	mìË)Ã=ªÜVe3¶FÏÖ›\n*€AÍY‚Ug**îúwbÍ½µÚŒ%Ë¯Õ«FÖMJ&ÿ\0©?ï£L·e8ÉÈ«ip¸ .~µw¸-vÛVÖ#o–òLznëWcñ^½mÊ]¶GlÖl7©ÇO­L×Àn cÞ’`µÜÕ¼Ol8¼”{n5m>9ø–ÐÓÈÁÚ®ZmE[*H¬ë›”MÙÁ¦+.Ç¢ZþÒ~ ´$´Ïø×qà¯ÚÖôÞÆ—²mÉà×ÍW7±•$X·J­¹N4î+.‡êÏ€~$Áã+xwÊƒ]{e—×Ãÿ\0²oå3$.ìÜ…<×ÙÑkb£9t¬ÜGšø\"Úè×à…=?\ZüÔø¥wöST“<–oë_¢ÿ\0µ·ðÕÛç‡û\ZüÏø|®u\rÁsÈúÖ”úš#Çî4ÎvóšˆFs»#8žNMFÏ»éRZ‡#	´/¯zjÁ»vOÌ*`§æËd˜íLXvÃ‘ùP™‹zMÄÓùvÊÒKÛé>´ñe‚…H¦õï\\W„uè´›õ™Ð¤g5ë­ñÊÎ+=«\n’£Ò¶…í ´5´‹­^TÛ{	#ýªØØké‹›d‹æ?É.cV³%øõz…„NéE“Üwñcá}¯†#3Ú“°ö\'¥xÑ\r¹”œW]â¿‰W¾%ˆ¤ò–û¹®/Ï,Ç&°jÏB£g¡ý?ÑE‰˜QE\0QE\0QE\0QE\0QE\0QE\0QEÃùVò?¢“_“ßðQ?Ï}‘…ãóú¡â{¿±hwrçCÍ~(þÙÞ%:ÏÄKü1!¯_sZÀ¨Ÿ2ÜÎœ\rg³Ì\rY¸åØ{bª¦¶Z]‹v!ç>ôÍÞT6[ÜS‹Þ£Ü†|{t¬·/d2wŒ6G¥B9ã?Jêªî9ã¥CëÍC.¢P=è t¬FQGZ\0)Ãæo™±ïÖˆÓÌ`½3C\0#×-§Þn;u«­÷MU²Lî?…[Ÿ%Ldð28ªE\"¬Pû²jb0i‘¦ÅÁ;©ÕH¤QE1Šzs]G„`r¼sÚ¹˜ÀçÖ»¿Û;Ì#<pjI;¿/Ë°ãÓ­y§‰Ÿ|Ì¿Þïù×¦^JO\'8ã5å!˜´²úRD­ŽyúõªÈÇ9ç­^=MR›kb‡°ÞÇÐ¿±®‚ÚŽøÊ¦?ZýeðÕ·‘¦ÅWçGìáÓ5ÍÅÖÞ\Z@2}«ôšÆ#\r²`r\0äT²äÏPI§[._ŠH÷HÄv«Gåš†ì†®gx‚}–Ì+\'ÃhZè{W<K0TÒxBÜ´¸=èˆÖÇªèå~­uÖ±‚3XZ\r¾Èêq]	±MRìVEt¸L÷é\\Åãž½ë§»+Ô×=q†.q{S·b7ø¥|l|=vå°úWäÅK“ªx÷U—qd36âkõwö‰ÕNðuód!c_‘úýÇÚõËÉwnÝ!æšìRŠwÀæ½?À‚x‡Úaóã¨é\\‡,iy•ˆP{WÑt¸±Èˆc¤W0®S‹áìv¡žÜ*+vÅq!ð´Ü<¤+Œšö©b\0Ã~µÇxÜ[4#ÍêxÍ&:ÜÂ\"šU![Œ!\'Š×ñ´PÞJ!9@Õ•9àcb”PºŸ@~ÈZ(¸ñÍŒ|À\ný/Ò-E¾ŸƒŸ”WÁ?±v€„Çrß1<þµ÷Õ›âÕGeÁnxíM©j„6?tp\nü›™Þ­<£æÜç¯Ö¿L?m}im|pYHõù¦ƒ%ç¾êˆ+”¶:ý1Ä=@â´\"\' ª–C‚qÛ­[NC\n½…Ðž6æ­@\0\0T#Îœ·/M4ï¹)Y›1ÎWî·”ß	$b±Vì $œHoÄœçZ®ºbß7øR>¦q÷óXQLÄOÒ‰.vpy£µÍíF\nNk>}M‰#<z\nÏ’rTäájŸÚW\'æ5CD÷:–	ü«>mD œ\Z«u6	9Öy”†îÆ’ZõOì¡*‚ù\'ð¯¶ô‹ÏÞò@Æ+äoÙOÅ$d¹¾³ÓÐG8À¥!E\\âÿ\0h-CìÞ»}Ø3Ö¿3¼m|d†eR>g=ëôö«ÖÒÃÁ_>ÒÜ`žÜ×æž¹¨™ÝòO$šp{š#6ûNxôÈ¨¤có~5<dóÚ¨É÷ñ§X™anHNy>µ”–bNiŠø_za8©Ö,¾ãÚSnx¨¾Ûîß•W3å\nçw½Dn÷›ó¦Ÿ.‚òDÒÜî\rž*·š}¨.qÈ¨Ù‚Œš˜Ô{Ž\'\'4”…€ç¥-IgõEVFAEPEPEPEPEPEPEPñ›R]/ÁÓ³mÛ¾ÕøYñÇ\\þÙñŽ¡9$ƒ+O¹¯Øÿ\0ÛÄ£Aøe¨ûKBqõæ¿¼_x×º­Ë·$¹ü+¢+Ý4NÈååÚÎç¡ªŒ0Æ¬ÍíŠÔ…ûÙ«‰Ô‰ÆQ…UbIäæ­õÏµUeUlf³‰RZ–&“šuDx›š9êf…ÝìhL·¿¥€¤N2+…tE#6>´«óƒøšV‡Ç•Üãøi”ðåcdÇSùSxÏµ\0jØD7… zÑ{ƒ#)ã<~•&ŸŸ˜ôã¥Aq 3°\'$ž*Ë«Ž~¤sŽ´åRGZq8íš.#Å*€IíN+»½1~SBwîKo2\0kÓ|§ù« Ž+Î,Ð¼Êc^Åà%Ku9éJä7¡{ÄÊ-­6*ã#·ã^=¬Ì\ZIMz×çÛnËÜ\nñíQÁf=Fhˆ¢Ì²zœþ5IW|¸Rzõ«R¸XØÎ:S,\"ßr¨Wq.Ò›4géìáÕ‹ÃV³Áa»>µ÷hÚ¾dý4¦x2À°ÿ\0–@ãõÈÅ#>¬Š€É<šcÏ \nXÓ#š·\n(¾•¶ÑO‰ŽgÛŽ•³à›n‡ÐŽqXúûùºŽÜÍv^€$h}hFˆô]Dl„ V~Ž§h=¹­&û¦®\"L§x Ç\\õßü´ü­nÜnÜÛ«ô*+ãÒî|£ûbkÙþ¿RøÜ›kó&k™YyË_}~Ýþ hôI-Ë\0YñÅ|hÂ6lò\ri>…‹,Å2¹)ãüþUëÞñõ½„À$\0y#*È¡»ú­:LXÚrâ®6[cèy|m\0³wÜ÷5çþ-ñTzžŸ Þ/B\rpO«\\KÖv{æ«6ç.O½[iŠ:ì0nä;ŽO­Uš-¬5jÙAsì)?:ú8Ôu`+%ØQgÝ_±®†!Ñ­Ü\';G?ZúýbÀØþíxì­£ýÃv¯°ÝŒþUôÛ,v²Î)~ÞZÉ‹MkrH/Ò¾ÐÔ°HÎO5õ¯íå®,º¬ÊsÎ1_*è·ñR¦SzD†\0 ä×¦øáƒjÃÏ»RTôZá<)›©BŽ»—pà×Ó¾T±Ó#!s1ŠÕFä\'sŒÕ>iknÈ#hÜŽ\ry·ˆ¾\\é;žeLg¯£nociUdMÜzV/Š¬!šÝ¶ –†Š>Oœù%‘†íUÏ–ÀcñÍhø±ËZºˆÕÏd”*œçŠ•©èkÇ<Œ[nOëNt|e#Þ½SáwÃ»[«1qv»‰®ÏUøw¡j0IaCü\'¡§gØ£æÉòá¶Õ\'mŠMwž+ðÖxWc4~VµY¶ø|·Z[NFni¡;U+«“ƒœt¤†/6tSÜW¯lÖÖæHŠ”ã¥&›\n\\jP)û¥‡ó§r­Ôû›ö^ÓE®‰„cåïÑÝ¢±9ÁãcŽ×Ã1‘ÝGò¯Fû[,§àž•”·<öÍÔø>B•\'o~~Ë(žLgœ×èÿ\0í#à«¯x6éa¤u€ë_œzÍ“é—²Ã\"¥Š²‘ŒJ.Åô/9üÀf³nl¥BÜTö^!hcÚyÅJúÚ°,@­‘6îd4L¤‚9¨dc\02qÒ· ¿„œ²‚(™­$CÅBCG*ÑúŒ\ZaP=k¢{KiÁÎ«¾™ÚxúÔØHÃ£­§F¹Ãz…¬yá°=é”Ê„ELÖ¬h4ß³¿÷OåJású¢Š+30¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢ŠF`ªXô€>$ÿ\0‚øµtÿ\0Éf$ÿ\0[…Àú×äv©)–w=yë_¡?ðRµÎ³\rˆ|…$•üëóºéØ»÷æº–Ã[™ÎIsžµ]ÎXÔìrIÍW#“M^Â[±…rN½V“ïsïVê+òƒß5šeËb¾1HÌ–€F\rhb6•z\ZCÓó .Ì´Ø¡Þœ«œà{š@1RFáC+CzTŒO1¼ÍýêUŠ9YŠ’1Ú³¾vîù>´èÆtÎà9ÈªK¹Iw4¬Gç§LUØÓ~úú÷­8Óe©úV\\*|évyÅ1“îã§£žùúRà\ZMœæ§BtM=~îizS3œŽ(@&-×Ž‡Š÷Ù¤:xb01^)á‹c-ÚöäW½h6»4¼ƒÚš!œoŽæ]ò\0qŠò[ù3!ï^‹ãë’óH™8Íy¤çç­‰V`3ûÖ‚,Î¡â++u—™FÖ²®*Ë1ŒZï>i\'Vø‡§&Üª¸cGRúŸ®³Ž4ïÙŒË1øq^Î‘	Ï¸o„¶ÏÃ6Ë€\0@8®üª”MfÙ)\\UŒ*\Zc¶È˜gµ>(ØŽNi·©²ÒCžÕ	2º<ïöI¹ÏÍ^‘á+<Ä½‡çv¬º“V¯Yð¼!QqþÎ*Ña§D\"ƒŠµL·]±O¦2æ3\\î¥ HecÀºã×Ú¸ßÍäi·œ|§¥\0~t~ÞzÒËªA6IbH¯‘­¢YA\rÖ½ÏöÀ×?µ<~ð‡Ü‘d`zæ¼RÚ #Ï­Rõoâ•#ÛOÇ<ÒpÜÓ¸\\L1¤U\0ú58žjEQõ¢úHŠüÛNj÷…­…ÿ\0‰¬¡+œÈ8üj¢ÀÇµtÿ\0	l´<ml d«ÄÑÙúcðKK?\nÛ»O–2z»(‹K¸9çmr¿\níÚÏÃð¡ç\n+SÇwÂÓC¸f=Ò‘Gåçí“ª=×Žä„œªž?Zñ@Y³Œs]Ÿí­küC½;·ml\näôCå[7|ÖVEHét;ÿ\0±ÝG\'u5ôW‚¼Gi¨éñ£H1Í|º$9\'9÷­]\'Å÷ZA>LÜzf·ƒ¶ŒÊö>Åµ·¶òËI20Ç\\×ãÿ\0Yé–2l•~QÇ½xoü.;å‹nyÇ\\×)¯xÂ÷X%¦”‘ýÐhmX¤Ê\"½:Ž¡,ää»YVÏö{”cÐ\Z$¼ûÛJâð»Àë%dCê‡š„7Þò¢”,…0í\\ž­6«á\rE¦–s,%°\ry†<{w »ä,˜éšÒñÄ»n÷ïZß°•ÏzÐuý7Æ‹ÁFCÔUÏé0hZ\rËE›x¯˜ü?â›­&ådŽBsÖ»-câ½Ö¥¦µ³¹*Ãš\ZVúN£ ’öfë–=*ß‡-V}fØ>qüë\'Ìó&rA*Nk§ð¨½ñº¯PÃ¥g\r\ngÜ?\n[øj£å]‚Ì¬ãå¶k›ð%¹³Ð 8ê;×El1ÉŠÊ[ÈI[CµÒtËmgOhæPù9á?bÍÆ—RÝÛ/Ùgoœ´c¯xð½´±a€À5ÜZ’ñÃ8õ¡DÒ-£ó3_ýõËWsgv¬£³¡Íp÷ß±¯-›#ªúf¿Z¥Ó tý+:M.Ïæ4oÂ‹±©.¨ü~¾ý›<k`_\Zs°ÔÖßÂià‰t»€GH¯Ù|;¦M‘äÆIö¬›ßéwJA·FCßh§v5ÉØüj»ðŽ·f?{a:¼†²ÚÆò3óÃ\'ÐŠýxÖþèwÁ³ˆŸ÷qúŸÀO\rÞ£gN„¶:”“å?,Î@Ãa…W-&9ÉZý Öf/\r]«a\Z·÷•z×œx‡öNÑSsÅ¡ö§påLø§9åŽiVé‘0+é­Sö]…\ZO&F_@ErWß³uäa„O“Û4]’¢BQEf@QE\0QE\0QE\0QE\0QE\0QE\0U]Rao§\\HN¡9«UÍüDÔ†•á\rJrØÄGð4ã¸#ñÓöãñiÖþ)j(pˆì¯•.2Ûùæ½cöƒÖÎ·ãýfçvíÓ¶9íšò98<bºWÂR*ÔR}ïóïRÔN»Nzzhˆî0ðµFådB7bžçjýéa÷k$i~ƒqÒ›JG¾h ƒÏZÑ»‘®Nr)Ä~T) ô5’K–âê6¬Å\n´<ŽOsUúU¨Ô@…·+8—ÑIæ)8Æ(µS¹”âÀ¨¼ßùeösŸÂ¯i°Ÿ5T|Øª(½tž]¯·ONk:1Ö´µ_ÝDUF{sÞ³#êitbèÉ\0Í\0dûÑSwg;úw5(”Fce\\ãŠb¯aR³|¬)‘ýê=	OC®ðm›Ip£Ç½ÞÊ!o¤‚Ëü=+È¾Y™¦U’F+Ú5\ZÏFlœaj‘HðßIþ™(\'©â¼þS»qõ9®ÃÅ÷®åù²T×çh#¡¤†ŠWXÜ=q^ûû\Zè#Uø†%`\nD cÔ“ÿ\0Ö¯\0¸$Èr1Ž•ö\'ìá¯·ë—7`E>£ê~xJÃìš=ºê+u¼wTZU›Cc\rŒ(|\03ŠÎÆqó\nl\\U\rjc«çŠÒÅdxŠE[F\rÜRµ‘KCžðõ¿›x[9ç5ì\Zˆ$@c9æ^´ýæ{“Ö½oÃöÁG#4!XÞŒ|´§îš\0ÀÅîš±õ3nr]ýkÏ¾(]}Ã×n0§šôÃµŸØWž|M´kÿ\0\\Æ£$ƒÅK¹øïñ³X:§ÄIØŸ–Bãîk–µÝ°ç¥nþÑz÷†~ ê\"x^8ÚBÊì85æÐx¨Ä6“œúUÇU Ú;:nÑž•ÍÅâøÀù¹úÔëâ˜›<õéŠ(Ø,ÇJTaŸ\\V\\> ¶•›-ÇåSG¬Úï9ôwEsõGÇÝ¯Rýš´Æ½ñ˜ÁJÖ¼‚mrÙPª°\'ë_LþÇÞ\Z’êÿ\0í¬˜Wq·ŽÔ\"R±úá8–ÓH·P1…ÊüdÕE§†nävÀšì´õò­#W‰þÓZïöƒµ?tßÊ¡„OË¯ˆº‘Ô¼c©I×÷§¿½Gc?•lÒ±5Ÿ¶kRŸÖ¯¬ÞM¿={VØÒ^EÉ.çmT{ò3‚úU9.K““U%¸\npy§2-sGíru\'4Ç¾lYm~Oª6»ÊòØª¡yî†OÍT..÷7cëUžè)#5FYþrI¨h¬ùïš³o*îÎî+)ò:\Z³À–É½Uú¥Í¸nb9ÅMæCY¶Ò*H©Öè1äcÞ…!iÔÐ¶Ÿ¸¯Cø?™âxƒa¾a^i`õ¯[øb.uÄnáª–ºm¶46K·P:(Öx{NóäÜÕÍi\'Ù AýÑ][].¥Ë ;v.k.‡Cªx»Kð–û‰Q0;žµÁ^þÒz-´Ì‹:qï_~ÐŸ®õ\rrm>Öå•ààôö¯\'Ò5+Ëõi¤‰ÏRk¢œcmI³?G­iaþ¹Jß´‹rØ\0gÞ¿;?µ§ˆ“ö†SRÃ­Ý‚vÎÃëE¡}©ú9eñkIº ­Êóï]¯Ž´ÙW‹„bWkóbÇÅ:µ¿\"æLzÜ´ø­Ûò·6=\rR„P»?CeÖlî~o9nMUkÛWÞC£Æká(~3ë¶ƒ<€¼jÜ?5ˆ:Ìä{š—E=˜ÓgÙ·M³m#ŽµªÚV{×Ëq~Ò:Œ\r—rqêjY¿iÛ–Bi{Ñ6{~«¦®I$\ZÁ—L]¹šñ‰?i6Äã¾ê’?ÚÙãËŸsYò´Zv?mh¢ŠÈ€¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¯ý©<D¾øYªÌ[ÊoäkØ+ä_ø(o‹HøiqfkL6~upÜùã‹ï·k7’œüÒŸÄ×%3¥zš×Öî>Ñu!ÏCXï\Zå½k¡lWr«0ù‡5êjY”AQCš¨‰Èê8ašcíÇËRIž•˜lÛŠÅ\Z^Ä4¥‰\'ŠJ\0ÏÖ¬Á sAu©ÒØÙü)Œ›\rß…Bµ¬;0¶PÌÙPF;Õª¯nêK3›ÔÕŽ«ÁëÐÖqØÒ;D6¼Ÿ&ozÓÑS3äŒ\0:zVtaðCßJÜÐ¡ÆçÏQG@èG­8Ê¯ÿ\0]gGÐÕ­]÷Ý¶¢µˆ999·­ °;#£vzVoL·#ô§*ö©BíBÐ…ybEä})¶ƒ28©\'@P¶9ãNÓ\"-05{¢zž»ð²Ä4ˆÃ\'ßøÎïìÚS¦0Äbü&±ÛîaÎ]ø*ÅjÞ˜¨#©à>!™d¸›ŸZçXæµµ—/+Š²1B5E\"»åÆî½Í~‹Á>4!m¤‚¼É&ìã­~w[/™y\Z¯ré_¬_±?…™àËÚrcSÅ#>‡×Vó,ø©nRÝ\Z»Íd˜=,Dœ\nç¼Pv(R{×S\0mÝ«‘ñ4¾mÂ ìi]Ñ¥àØ\0ã“^¯£ dt¯;ð}¦Ô_Â½\'MMþ•Hh·HßtÒÒ7Ý5H›9ÁjÀÔíRæ	†A»sÞzV\\¬q©èÌÿ\0f=#â42}¢ÕZSœ8ê+ä_Á>gŠYŽŸw\"€x3_¨w(ŽH\"²¥°‰Ê©?í\nÊÍlËSî~Fk?°ß‹¬Ì3, {\\~©û)xæÁ3\"ŽêköZëÃ³!&%Ç°¬{¯iò‚Jß…R”‡ÍÇâ¾¡ð?ÆºZ¹}*àã¸¬ð\'Šá|6•wŸúäÃúWí]ïÃ=.pÊÖÉø¨¬i>hÅ÷µ¢~\"ˆÎQÝÜê~U|1øâ¿jpùÖ[nšD#\"¿Hþ|#ÁšT1˜°QFI¯JÑ¾iº[f;t\\z-t>RZ¡‘Çªl—`i„Q°î|­ûbëeðuê‡åÆ¾¢‘·+Ö¾Yý¯´u?j\0ÌU	\0æ¥±SGæ³nº“Óÿ\0¯Z2³†zv®|ÜµË¤ˆUàƒV£×Q“\rÚ·E2y¥Æåýjœœçó«Q·”mõ¥+nàóùP¹”nH-ÐóÅBn\'ç5¯&¶°ªi?x,Ÿˆ¢Í‹Ô£$ØÎ[üMUó³(=\0«òèò1áÆ=ê£ÈqFÁè.à¼ç$MƒéP¥œêÌJç>ÔõÀÃŒ7z6ûš	p®p äÔÑÆ¨F¬[åÎjÔ;Æw~’Õw5-Iò¾†½Ïöv‹~¢¬-º¼ßs«cŠú?ög…|Ýàt8Íi×Úâ rTâ§ø©{ý—á;·ß°¬&¬ø_“Œÿ\0“\\Çí~¶þ¿9Áòø?¬Eä~lxŽñõ?ÞÜ,\ZSƒøšé4y~Í¦óÆk”`{+)îk¢Áÿ\0]mÐi\n×ŒÌÃ8«6’äoåYÊ»Ž+[N¶ä†ã(,lÚ²•%‡QW`pÃ…QT!@^•nÙHÉíBØ•¸’K¸2ãYÕv’zÕ©Öj¯\"ü¼6j¯d$ÝÌéÕšÌ¹·GVn†µ®#ªƒ´äñëJæ‰jcOd£8äš¢ñpqÒ´çWW%yõIÝU+ó\Z¯QlG”QEsQE\0QE\0QE\0QE\0QE\0QE\0ù»ÿ\06ñg™-¾š²ñ»qôÏú=q\'“o#ÿ\0uI¯Çø(\'Š›Xø=¾ýÞVF=95­44|u{Ë¿µP•Ô?Š®]}óÏz§,@î Ö¯a«ëbžíÅû¢¢©ÝNÒ1ÍAV¶DG¥WewÅMæzb¡p­b´4µÈ)Ñ7–ÙëK°nëòúÐê¼l$ÕhÌlÑ;Ê7sÒªã½X¡Gàvªôä:-Û†Îµn™\nª©ÁÝÏ&žHQ“Ò¥—d(5ÓhqF–l_¯ë\\´.œà×_¹ƒKÞøx¨`În÷]ÌAÈÏûx›r±_–««ï’CïÍ]·“z`œ‘Kv-Ù<}éõ\Zš¤\'žâ{•çL£zŠ·£Aþ’€Ç#ü*„×²žÙ­ÿ\0\nCç^&ìƒÁ«¸ô>‰ømgzr±¦9®câýÚÂW xOO[}1ýÚñÿ\0ŠwEî%V|…5$-Ï$Ô>ã×\'²dÊ«zWnÿ\0ÖŸ§øÕF9&š4E¯\nY›ívÒ2ÒN«·ñ¯ÚÙ“CþÏðm¢í¶%ü+òàÎ’u?ˆ:T(¹ýðoÈ×í_Á‹/°øVÞ01„QRö$ô@´ôb‡\"£PÙäÔÉjÍXL‘™Œdã8ï\\N¨LºŸ>¹®Þå¼›F+ŠOßêŒ}\rNâG{á4ÄIí]ýšâ­q~ƒ1Ò»ˆ“Ë@µqêkŸÓª¦\"&ÅP#:àå\\×ã_ÙøZÖG¸‘T¨îkµÕ.…¥œ®z_?¶WÆ˜oäÓm\'+’réÖ·â/ÚûH°¹–¹F ö9ÅdØþØ\Z}ÄáZu ž¹¯Ï¤»–åÞG‘™›œæ¥‚W\\°ñêkX¨õ2jÇé¦—ûOè×1€ÓFOûÕ­Ç­w¸Œf¯Ë¸õk¸ŽRwZÄÚªü‘ÜÉÇ£\Z¯g\0»?Rmþ/h7#‹„ÏûÕ£gã­\'P;Rå?:ü±Æ~ ·RÄñ[ZÆ¯è“×NÉ‘ÆŽH±Ù£õ>Úâ+…Ý†¸4\\¦Tö¾Xøñí¼B#†iIb@ä×Ó°ß-Íªº6íÃÒ²jÃNú‘9ÀÅq>:ðÌ>!°š)\0*F0GZì°[\"ª]Úð[ô¬Ú¾…-Ïo‹_±Òê—÷š[}™ØäÆ ×ƒëŸ²¯Šô¹%(‰*©ã×ëTÚl+X{Šåõß\rØ²–1)ãŠ•)-ù¢÷?$®þx«O:t„zšÃ¹ðWˆ¬‰a0ú)¯Õ‹ïiÓoðÞ«\\ýïÃm.`ÀÛÆ}À­c7ÔK”üº{-VÕO™m(ú©ª¿jº‹;‘‡ûÂ¿L5ƒZ5Äm›h‰÷Q\\†§û9è7ŒI²„äóòÕ9Û ¬ÏØõYAÃ+ô¥mW5ö¾©û.h’Ùj¨Ã¦ÞµÇ_þÉÖO#,€zQ§¸‘ò¸Õ†ã¸O\Z >Ÿ•}ª~ÉÏlÐ\\6ïB+“¼ý™uxƒ¥R}M]ÐùdyHÕc=ªhµ]ˆâºíGö}ñ5žâ±	\0ô5—oðgÄ’Oå‹FëI4ÅfEg:NÁQOõ¿ìãáƒoc¬¥IÁ¯(øoð\nüÜÆ÷Š0â¾ÁøàõÑm#‰P)P­1ö\0žÀW~Õ\ZâÛxBé’Ûp+Þ4Í3Ê¶$úWÊŸµýÛE§´jr¬p@¬ã¸‘ñª óKnä\ZÜŒ•0{V2|’BkUz\rk{bÅ±ùaÅmØ°\0Žõ•i9-Î+VÆ2\Z#N¿éZ ©æ«YÇ”`y¬ÛÀ4›îJ\Zëµ[Ò¨¹SÓŠÒ’)3´\ZÎxÙÜ?J¥ªw*\\m#p+5Ôe…_š-ÅEà~uŸ&îp*Q¢Ñ•.Êò\0ù¸æ¨4yéô«–fÉÏ½@àá°0E;‰YŸÑ}QYQE\0QE\0QE\0QE\0QE\0QE\0dø²ôiþ¾œ6ÆNOã_†Ÿµ‰¿·~\"ë31ÜÌú_²Ÿ´?ˆ‡¾êÓ–Ú|–ÁÏµ~üGÕÎ£âéÉ/ºV<Ÿs]ÖƒG+nsÎj¬²críüjv9$ôªoó1çMj;èDûˆ>•LUNI¨j¾ËFÈå@ÍWFòØ÷«-»¶*\'M¿JÉk™v²â §6`¿v‘FMRÐÍêì+HÎ99¦€O\0dûT¯ÅoÞd÷)\'M+“näÖ§æaS60sÒ™n &G$õ©*^æ±ØvŸ›v¢1â»]X›m ž>î+–Ñ 2^¡\\\ZÞñ4çì‰N:þµ˜ŽbÌŒ@«±D\"Ý‚N}j­ª¸s·÷«è2i®ã]Çªã§$Ó¤Œ ÃqKRAÛ´f™+–8$š+VP“kMò¯Ö»Ï‡6jÕ£g‘\\<CmÃ‚wqœ×ªü\"³ê(Ç˜t¤#èx,–ËDÏL%|Ýñ.ã}ôÜç“_HøŠUµÐdù€!x¯•|oqæßKÎrH¨Nì\"´8›†Ý)ªŽHzšž\\±oZ©7oZÑ-JíŸ²FŒ5‰HÊ6ÇÃšýŽð%ØôHÑE~Y~ÁÞkßÏpËŒ2¨5úÇ Ååiñ\'¢ŠÍ’Í(SqàsW	XWÏó¨h\\žO¥M$ÖLHÌÔäÙhä•Ëèˆe¿-ÉÉ®“^\"+w«ÃJ>Óòò2j–â[¡á«P±©ï]5cø}D8­Š¨ìPTXòOU®Øì#ê†Ž/ÇwFÛH¸;°6\Zü…ý¤õY5ˆ÷ñ¼›‚¹é_¬ßn~ËáË§ÏÝBkñÓâ– 5?jr¹Éóˆñ©¼ÄaÚÇû¾WŠ”~ï4Ø Ü±O(v°-œÖÈ*³rÞµ«áëS<§óY÷½k¦ð}õ½£~ô\0wMLu%­¬uãÒ¹\rIãrØQ^«júuÍ³ca8Çæwê‹+˜ÈÛž‚žÅ×À}j[?E±Ub;u¯ÒŸKö½Í—Ú+óközÒ\rïŒìÈVÎ¿I|%döºD*á@¢[ÔÔ—ly9ùk—ñì4hË:¦=MXñ¾¶4}*iw`…5ùÙñçã¦¡©k7–—,ˆ¤”ÔE\\¥v}‡yñëE†GQpœz\ZÍºøÝ£].¿:añ«1g72ûÕˆõíJ?ùyb?Þ5Ð¡L,ÏÐx¾#iWLqp˜>õcþM>t;\'B=š¿?,üi«DN.Žy5§ÅbË3qïMSƒÙ‚½»–ê)ˆp\Z‰Ødr+ãÚR·Æùó®ƒOý¥¥LùŒàFŸ°]Â.ÇÓò¹9=j„’¨cµU¾¢¼2Óö‘¶a¤\\ûÕø~?éò‚/çSì$‡ÌW˜£d>*ìër¹Ø¦¼¦OŽ\Zao¾¾j{Ozk¾zçëRéÉnRhô™4»K„(c_®*+OY‡Ï–¤öâ¸¨>-éLN.cûÖÖ™ñÂð…Žtb}Mgiç¤h6Ö : àñÅuz^Äp\0ç=+Ðµ»TmÙÉëšêtùþ˜­µÈKVöñ§íi3_\\¬JIäñ_YËrÉðyÛ_~Ð7ku¬²ƒ’	éøÕSWd£åé òf*Ãîš½ú¡LÕÎýJ\\Å:ßv\n•àw­$´\Zf–žy<u®†ÙFvôè+Ÿ´àžŸÖ¶íÈ9äVº\ZÖpñœ“ŸJì<=à×Ô¤êvc95Êè¿¼š5\'Œ×¸è±‹-Ê9«JúˆÏƒÂ\Zm¤Ef	œsš†Oh×ÊÈŠ2xâ¸oÅ×R]J¦B\0n)|=ã9­®7<™PyÍRŠa©­©ü+Ž#¦LxÈ¯0ñ>œš]ÓÆ„µï°x²fÍ£QœŒ+À¾ #C¬ÎdSËbŽd¾ÜÔR†œŠR7“Šg™†pH\0b¡\r+Ñ•QYQE\0QE\0QE\0QE\0QE\0QE\0|½ûyø°è_.¡G¤M¸=óšü`ñßh¾ó÷˜×é¿ü³Æ(4Õ“ïHÏnkòçP›|Œsšé‚+¡I‡Î1U\\Œ¶rjs:ò*³Œçø¿­p{†cßµGŽÔáƒ¸“Í6´èÁ™0JªäÒH„//O\n¬2BûýuŠ\Z½Æ\'pÐ†~^”gœãŠ™ÍB;Š­‰I2ÝŽ)±’XmûÕ,¿r?¥:Ùv³ç¨â•ÞäÛ[…w9$ÓË)b¤ŒúRÒ\0YùQÐÖ{\ZìmxuŸw¡ÿ\0?ÎŸâŒŽªÜcœTþˆÅ¸äõÅdêÒù·²{qHCmP’H;@ãŠ¸£¾3Tì›æ#=E^µ-¶B¯®E2Gê{\nUêqÒšzšhijGo!‘°W8ï^ÓðzÔ™Õ¶òjñë8·ÈªÇ<×Ð?´åXŽ8Ù\'aã›ß\'G‘KrF+æ?Mæ]H3’\Z¾€ø£wök\0òGóŽ«\'ï¤$ò+(Q6w¿®{Õ|ŒšÜ¹ËÔ(<Ç\n¼äâ´‰Q?@?àŸ>Q¦ý¥eßq?•~ŒYD\"‰qØf¾2ý„¼<tÿ\0Ø»IPOkíNìZÈË¨ðs‘éW`ÚÚª ùðjp8\'8ÅHF7Ôç¼W>\"eÎ(ð}®öVÅgx–]óÏ®“Á°lUãŠú¤E²qWêµ‡úª³T†Jín†®Õ;’zö¦5³<?öˆ×àíA³†·ò¯È]bo·k÷Óîi˜þ¦¿R¿kýMlü¨°n±â¿,\"a-ä¯êÄÒ†à¶/ª*Œ(ÇÒ¢fXwÿ\0õÔÝ©¥	\'ŠÒ,D3I“ùZ¦’	KÀµ\\sÅ\'¡š¸á3“Ë·çO0…€¹j9jI”÷g¿þÊZ?Úu–ŸnFüWè.šRÓ9!kâÿ\0ÙG\rLT†-œ×ÚQÛböŠaÔñŸÚY:†oNÜ!ï_–:íûê\ZõÔ®Û‰”õú×éígª%§ƒ¯8b¤WæŒcÏ¾•º|Äþµ0.;¶È<•Á©ˆÈÅFv`ïV`…Y	e>Æ«V\Z²³.WÇÒ³î	ównŸJ×š=¹ÇJÍ¹‰.qÖº	ÔU6\'œûŠÒòaÒ¡H¶“µqëV¥b­ÌPŒóQ<åFK‘Vî£Û’SY×JçšZ÷¥Æ=ä¡N&céšlZœ¤ñ1È÷ªr1Ub>lTowÞ@î}j¹˜XÚ‡WºSÄìqï[Ú/‹o¬eV1ük+BÆPFÜô¡0µ«þüJ{õŽdÉ\0µô¨ùà6îZ¾ø_tñjQ”$sÞ¾ºð]Ã´Qï=†\r@zf§wåiÒ0<…5ñoÅUfñ\rÒ»rµõ§ˆ.\Z\ZbÍÈS_\nüRÕ|Ïß€só\ZªBG$Ë5ü×,Oó©ª’–fcWTœñI”´,Ø¶\\úãúÖÝ³à§zÇ´ÆXúbµ­$Á+z‘#_L»6Ó†=¯rð†±m¨i¢q†\\u¯…‡5­¥x–},Åi¥ˆêwÞ(ødó\\I=©óó\\¢|>Ô–SÔÕÑi6Ä#”öïN¼ø¥o\Z0UÍ­YÑôoì-9ÚWÁ$“^-ãM@jZÄÌ¹(	¿âïˆ·:£4HvGíÞ¸)®JK\r\ZíµJ¯/\0ó~÷—s`–£“Î*-¡WÓCú;¢Š+0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¦Êþ\\NÞƒ4êÌñ-à°Ð¯g\'c?Ê„ä¿üCÅÇVñü–‚MÉ<}M|ItÀ»Ò½óö±ñkõyKîb£ŸL×Ï³IÇ½v%tR*¹ñQ²ŽÔúË¡æ’3C#¨¤¥ö¤$J%#Tˆå9õ¨ÝM>O½øF\0lî?ð*„SzõÍIáÆìTxç,L±¡\'’i½Œã½È™\nžF*{vÜ×9ªå·““O‰Ù	Ú3žÔn‰NÌµJ½x¦«‚0¬	§Â¥˜‚OqY\ZžVy\'sX,džV<ó[r0ŽËqÅsãælf’,EŽjå°ùZªB›³‘Í]„œœšKff·lr‘JŒŒ‚)OZ*’±ªEÍ×ý%6ö\"¾ˆøxßdÓÆWŒ×ƒxf-âqÜWÐ^\Zmô A<Š–fsõS*y¼3PmÏ!ê_/“Ê`g¥yeÁœŽœÒ‰q2Ûîš—D¶ûV¯m	-\"¯æj)\\ƒÅtŸ	ôóªøãK€àÌ¹¾õQØHýpý”´XôÏY.Ü¯¡bu#ƒ^]ðSFû… \0Ê\nô«ttëY¹x@Íœb¬mÄ,ð­$?r‹‰v[Iž˜¬¯w¨ZÛ¯J_P+é]Ï„÷cJáo]j­Žy¯Mð¨H–©vvK¶SS!]±O­‚³/$?½ÛZu¨%cØPÄ¿·Wˆ\r¯…î!\r3 \nüîÓãÜîÞõöí÷®¤¦+A\'!Éâ¾4Ó£Â“×µ(¶64ûspàc<úWy£x0_ÃÌx8ëŠæ<1³vÒFö<f½×Â±À°B$\0©^H­¢®JÐóoÀ’Ae!e¾ª9¯7ÖôÅ±*c9¾ ñ6¾\\¡@+¶¾~ñ¼I!A‚	À©±V8ÈY†wŒj|¯–Ú–Ä1Å-œ]Bº–p¿­%©)rþÊ:W•¤[³ÀŽõõ qöROaŠñÙ¯Eû/‡¡8ÁÚ;W¶Ý…‚ÖB„TÈ…©ñOí­®lÐ¦„>7½~µðŽ•yZúóöÚ¾O4B­ÕºßUòv‡É\'+íN;XÙ-\rû8ö¡läž>•`(QÆ\0ô°DpÇ­NmÇ÷Óó«¸\\©\")RMTš-‡nsÆkIárâ«½²»’s“FâßTgìùNF}ª/!?(æµ…ºmo–©H¡KN3G¨ýLkôòÕÁv¬;¨ÁÝÇø×E|¡‹×uä\'ÓšB2.	XÛJ¨¨ Ö­\\mÁ\rÇûXª”˜™=´¸%IqÆkONùœã‘X«Ö¶4¥ÉôªŽÀ™ëSþ&1dàg5õW„eÑ _/|-¶Íò7P¢¾–ðäÂ2™ö¦ØO5amá¹Û qùWÀ>/Õ\rÞµ|ÞfAÿ\0:û?âÞ¢¶þºÜÝ#\"¾½¹ûEôÌO%Í]7ÊU´6té1ËU”bÅ½*½”\nmˆô8Í9ÆX£q£ZÐ»Ÿš¯ÄÄÖ=¬ß6ãÚ´‘þ^\"¥hCWV4D ¦Ð²\'@Â¨†È$PdÇ“rûÈy5F[– äð;Ó<Ìvª×gäàâšez•\'“s±\"³¦6î~j±+üØ=ª»m*ß-;hÈ‰›M.qÖ•ºñÞ¢+œß7j”ã¢?¤Š(¢³3\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nóïŽzàÐ¾js’ò›ú\Zô\ZùÃöÜñ8Ñ>_FcÉQøæ®šÔhüsø³©GÅ:„Ìû™¤bO¯&¼êár¹ÏNÕÐø–çÎ½‰êÇ­s²ÈŽ˜&ºº¡G&3ïÞ¥¨ï\Z• £¸„ä“IG~¿…‘±Q••¾jNTÓ™·n¦+Ds ¥åÐŠJBqCÐÆ¡É¶ýiaV$ì8ÅE“J®Èr\reÎŠE¤‰UX)Îx<Õ«ùã>¦©@Îc8\0Ó&¯éD–É9%zÔô4èijÌØ&yÿ\0?áXéŒóW5I™˜)äûÕHúš:B{vÛ çƒÅJ·@õ~µZŸ<À\nîÍJd¦ZIUØ€zR†ŠŽ¢“Ê_3zTÿ\0Z~ƒùš²Î·ÁVÛ¯£y½þŽ×F9a«Ä|¤Î¿Q^§©ß˜´¶ùò1Š†Aäþ6»ó®%»šágmªÕÑø’q%Ô¤p3\\ÕÀ$|½3BêTJR¾âI95ëŸ²¾‰ý«ñ:È‘‘9÷Èÿ\0ë×È3ÁéŠú{öðë_øÊK¦BçÞ›øEÐýVø}iö_@˜ÁÚ+¨‰NI«/ÃÖÿ\0gÓaN˜QZ±°ZÏ¡ÈÆŽ•_TGg\'¸©àmÊk+Ä“ùVoÇjÅnQËécÎÔ]³œšõÏÄ<µúWøXo˜îà\Zö XÇkbQº(¢ŠÔb7Ý5‹­Î`´E³!Â×ã[ñg£Ü9 )SÖ“\ZØüÀý¶µÑ{ã‘¿Ôø|õdLhx$u¯Gý¥5‘ªüL½Ë}ÆÛŒ×œ@àçÞª\Z¡JFÆ‘¨%œû‰â½CñÇ“oå£dZò’ñ…õ547/ù~_lÕ­ž¥­xá¥ˆ¤rÉŒ×—ëz‡Ÿw!ŒÕio$“$“TË’Ä““Ò¥é ÓÒÄ‘rqÍixFÓí¾%²ÌƒùÖdGƒÅu	mMçl”íj1Üýø#§ýÃžŸ ®ß^E§JO¥bü3´6Þ…@ÇÊ*ï&i’qòšÍ.‡æïí‹«¯ùA²ªqúšðíÔIñ·ñ¯Aý¥µOµøæåÜzátC²î[šµ±¡:Ç2¾ÔÖÍ¶™t;FÜ{U4j\n³ ¦½çEƒE¸±UqwÅW+z¡\0a(0ÀƒêEW[wbG¥}\rá=xŸ	#<b¸‹ßY%Ã„?.{T$ú…’<ÍlŽîžÕFk0³É®×]°K,¢ó\\¤I$Œ\0¡ÎêP„ã=+—¼S‰r}k×-~ÝjÐËéšçµ¿…:¤Ìh_5eXò[’|Â3Ç¥Uäwýk°Ô>k11cjüJç/4[Ëùð2cÖ„	2´l+gG!JsÞ°GZÝÐþgPyÉÆ?\Z¥Ø›X÷„‘©}ÁHÇ­{žŒû0kÇ¾Ùì¶\rß­zÆ™#+.OJMXhÉøã4‰àëÉŽ#$æ¾ Š|Þº·fÅ}÷ãMüCá»¸9mñ+áøvïÃ:ÜðO!V88ëR˜ŽžÊßÍ³Ü€cš€«ÆÌKt¬]/Ä­Df­®½€ï#ŠÑ\r\Z+pÊy9«Q\\’¤)$w™±™.ÑéWío-NrØúPJ/CtÇpoÎž.ˆ\\“LŠkWÎõ¦ùHäícÜâ€ÔG¹/ž\n­,Û•†î=*imÙŽªRÀÁN[ò¡­ÐäÉ$šˆ±9É õ5IÉ@ÛzÕ1Z™`Î›I\'éTÚLtäÒÝ©…‰Ï<UEŠ×Üþ–h¢ŠÄ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¯‚ÿ\0à¤Þ0šV\nø.Ø zz×ÞnÛ›Ðf¿\'?à£>/ûg‹ÍŠ>QœçÞµ¦µ\Z>ÔæûEÃ“Þ²$\0;c¦jýË|îzãÒ³IÀ&·d±A¡ÍE»vA8Âž[;†3ŠfG–ÙÅH­3ËÏV&œÁHÁ¦£©ÊäñýêÄ·kÙ‘ËÞ`\n†®0¤gò¨Œ\nªÇuRbq¾ÄœÒ”àoj“fØ³CÚÄÅ\\ƒÖ‘_ÁúÒ¶2x¦ß5¬Æµ$Ù+Ö¶´á±[?­bÛ–ó9\"·,È1\'¡¡ŠW×[®@?tS£ tªS)’à€zôÍ9!•X\0Ü{(÷Žh¯¢ÿ\0gßÙêééut¥Õÿ\0‡«×µ?Ø~ÂE&$g±\r¤ì+D¸rIÿ\0z­Z¨.ÛjúXýˆõfû<î=L×©þÈ¾,ÓšÐ3UÇ¸Ô9/ƒHé[þ\"ÖØÊƒÛµV„^1Ð_÷št…GP¼Ö&¹¡ëÐ«	ôù°£“´ÒæO¨¹Zg¨Ìe•¹¬»–ÂmÏ$ô­k›°ß½·‘OºšÎžÜ‘‚¤7Óš®Œ}—&H>µ÷üÛÃ¾e«Þ²ž^	•ð¯ÙËM°d’q_¦ÿ\0°§†äÒ<)h^3’~µ]½¶-Gj;S(Éªö¯”¬Äzâ±L‚í¿úºæ¼gpVÙ•~•ÑG2ª“‘\\_‹®ƒJVIj4Gà¸L“Ï\\W´è1íˆW–ø&Ûvï^·¤G¶qÚ´Žà‹ôQEXM(E#½yoÆMYl|9y!;B¡9üëÒ¯8\'ŒWÎß´ö¼4¿j/»¤-ùÔ°?,¾%jiªøßP˜Ù”àçÞ²\0½jíàºÕî&\'%œœÕŠ´ì„ÕËQì`8§Fä#íû¢¡F\Z]ß•VÜÍ{¬²]°i¸ç¤ýãœS®zÒÜ´ìLÎV2zôÏÙÏMþ/YÝ‚ë^Qusò­_A~È6qª<ì2|Á‚}*£ \'¡úá(¶VÅ;¡pÄãMuº`T±ˆc£¥yWÇíPZøbðïÚ6k1ÄüÃøµ©\rCÆ·Ì HF\Z­¦Ä1ŽkÄ÷jñ-ãîÈ2ž\ZÜÒÈû8çµh¶4fí‰2œ5mÅwqíY\\­dÙ\\( çŽ•£ÂE$\Z°\Zkw¨1ç1Z™u{ 2ìßf©éíWÔî\\Ž”\'p‰ŸªN×˜œÖ47+or­m^\0›ù\0W1|ã{sÚ¡=Dz5·m41\0°^+”Ÿã4;ˆ’.A¯?ÕoßËtÞMqºŒäùºt®˜Ô°Ñÿ\0kKœ·š¡k˜ñ—ŒôVÉ–4Vb:×Ïs´œ’ÄÕSxÄ`±49&Bû‘æ±^„ö®ƒÃqïºˆž­r–®W¹ï]W…ŸuäyõÔÂÌ¨¾ÚìÈúFk¹b P@À®áõÔqXBt»#v.*Â¦ Dî|0é}”ã*GzÄñ÷ìÿ\0£øÊ9HÍ#;”s[Ñ·Þ½#M‘vî,3Žõ);ëÿ\0±´ë+µÃ*õÁL×©~Ë>#³ócÌQíŒ×èÜFÙ,ªÞÀTRÚÙMbwîúÌ;¿(²,¬â°î¼â-8°{†:ü¦¿RäðîŸpN`Œþ©IðûI½cºÞ<žÄU\\K”ü²}?WµR\ZÞUÇû&¡MRîOâ+õïàŽ“g¢Šá|Aû2xzì9q©Ï÷Eå%·??ˆæO½’)ÇÄ¬AÏó¯±õŸÙ+Gšòã(Ã¦Úà5Ù68ÃdeúŠ…d|éÿ\0	yíÍ\'öÚg“øq^§ª~Ì\Z…¶æƒz\ZäuzÝ–ãä–Ç ©¸ùNd_F}¾´w_¿Ò¦½øm­ÚnÝläAYámI\r¼€ûŠ6%&MtQEIEPEPEPEPEPräZis€ˆNkñöÌñ#k¿52*ŽT`ûšý‘øÅ­.‡àMJàœb&ïìkð“ãF°Ú·Œõk‚Û‹ÌÇ?‰®šKA£Ìçf°¹ÎzUCÎAç5biye#>õY˜/Z¶K#)Ž­Í2žß6p:S;Ræ-!¡ÍœÔs)S¼SÜ©êÕŽrËÛ5š%Ûað0\nùjŽGßLÈMª°siaAp*Ã3y9èjºpÃ·½Kq\'âjB:&V?6EF3†ýjBp\r20	9¬‘KbÍ¦|ÃÏnk[U©ù¹aÅfØÇ¹‰ÐóùUËÉÀõQÍJÜåäÉÉõ­M:ØÜ\\Æžà\ZÍ³PTýk«ð]ŸÛ5Ë(”n- Íú-û\'hñéþ³ùŸ,f¾‘†(äÎà+Æ¾iâËÃcäëQNBädf°\"É²à²‰Ìj~µh–n0`L}(Žèž¼ÔË*·CùÔÛª/C&çÁZ]Îw[\'=NÚÆ¹ø;¡ßnÒ3ŸUÙ¬€g-V \'9©Q[1]£É5Ù‹Ãz‚>ûInáq:ïìgáÛÝÅ-#CÛŠúf;¼Ÿ˜þ”ÿ\0µ&:Ð¢ÖÅ)³ã˜?a-E%p¬Px5õOÂ¿‡öÞÓc‚(Â*\0\0­èn‰\'´-®‘S¶+XÝ{šÑÊ#«Üg9â±Mâ‚FjXï—n2GµšÏ0Inp:õà“QÁ=ë¦¹¿X­¤bý»W˜jZ°—V+œà÷¨Ž€\\ðd›U9¯VÒt¯ðUðÚ£<×®h—GËÖ‘¿HÍ´S|ÕÙ¬ûÝDFÏ`G}t_æ¯‘m=M¢ð.¨œ˜Èçñ¯¦µü«|Õóoí%á¹<SáËëU™ÐYn~R[ßî¸c’H=ëRòÀŒóî+Æ~Õ¼!«ÏÕ» V8`8#5µ,g¹úšÕj…fÎü^ã¨Í!ÔSüë‰%\'??ëÿ\0×©¿…äð=iŠÖ:Ïí<ž\nbÝ\rÜ0ú\næWXÁ;”ý*UÕc\nÁ[¯ZE\\ßººU\\Ò¾µý´õXaãæläzø¢;—º[$8¯¼¿e½9ì´«BT©Ú	&©uCì»;ÔKP¹-|ëûVx’;?ßø%HÆ+ÖŸVòá$¾0+äÛÅ;´Iâ`±ÇZÁ„UÙñ3Ü™¯¦žY²?3]\r†¡å¨çñ®FÒcæ0\'©ëZ‘NÑ·V¦Œì­ua÷¿ZÖšˆÇ\\{×ŸÚ_²KcÞ¶-u2;ñúTØ•¡ÞÚN$žk5ÀH²0k„±Ö0>ökHëˆ®M>£NåíBõp\rƒÖ¹Bä mÇ“RMz¸r_ŸÒ¹ÍN÷,HmÆ¦)‚)jSä±¹ù‰‘5­yã?Zæ/\'Ë85Q-¤3±ÍD3ïHÍÁ=hÎçiDÖï†œs]o„I7ƒœàŠãTí5Øx†ºR}E\\7%è}á«£mcÒ3]ç‡fóçFÎx¯#°Õ<”r2Jí4_¥¥›HïÎ1‘Y½ÁÂ¾*µÐ¬÷I\"¢¯s\\Åïí§YHÈ·*vœ|¦¾jø§ñBêòâK[i]c§­y3jsLÄ³°Ç½\\R\rY÷Þ›ûFé·&å>„×Aeñ»Kºé:ßUùÒºÌð¯Ë1{f¥·ñeô‘;¡­”i²5?L¬~(i×-p£þ[v^:²<‰×žû«óÛâf³m÷.äãýªÚ²øÛ­Û(ÿ\0Kv>æ¥Â=µ?Mí<alêBL‡>õ9Ö¡¹Î]:üàÓ?híf×†˜œWY¦~Ô×±.$5.Ÿf4Ï¸oµ8‚žA÷®~æò-Ðû×ÊÐþÔ^`\"Wýjõ¿í-i\'vâ£‘sß®švÈ_Ê³.mm%SžØ¯\Zÿ\0†€Óæ¾9sV¡øÇa9Ü\'\0úÑÊÇÌzç‡lX3Pq\\õß‚4Ù0áXãâ…¤ÿ\0*Ì§ñ§/Œ!¸S¶AcR×B“?jh¢Šƒ0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(çßÛ3Äÿ\0Ø_õ\0$\nLgŒû\ZüDñeû]êwNÇ‚Ç\'ñ¯ÕŸø)‹>Ááu³‚Ü:ü‘Ô¥ón%$ä\Zë‚Ð¤fK wãŠˆºô&œÿ\0&sÔTD©\rÇ9âšÔ…¨„Œ·zS7QC©ÆiŠá@PwšÍ»š¡‘{f¡9lµ9ö“÷³M GÞš0¸Ð:š)™Û»ºÓ—§=j†-$÷Žw{Ð½é„ó×“–ƒHil®;Ñ¿ŒS¾_jl}MB±¢±£¦€p;f}*°#ÏaE§Š†íòû\ZµØö`šô¿ƒºaÔ¼a` gi¼æÂòIÇz÷/Ù‡O[Ÿ¬¸ÜVObÑ‡vÉ§èê8%Ev1]c9«’ÐåXtØ“8ÂŠ¾·€Å`B:¼PN*T¹ø¿:çMîÎK~ªFEÞå±š°—¡üÕÈ›ñœ‚sJuVéšfiTZŽ	ççÔ€ÏÏ\\‘ÕXÔëy$fDí`Ô·çSÇ­yg€®5à€|ÿ\0­8øƒå?54R;§Ö0Çæü©S[Ú1º¼å¼JTŠ¼NF~Ö˜þ±â/*ÎOÞv¯.ÿ\0„„¾¢ä¾~jÏñWŒ„¬¥ùÅyåŠCÝ3ÝÏ­$8­§üâ‘Æ€kÙ¼5âE’%;«ãÏ\rø­r¤6Åz¿‡¼v°¢þó§½Zèóâœ¿ê+Uñ$j­óŠóQãxåƒ>héë\\Þ±ãu°ùüi\\ßßx¬|À6y®_WÕ!Ô¢håÁÏ×ÞxÇp$?ëYrø¸Ù—sH/ˆŸ\n4<¦[xäÎyÀ¯ñì¹¤H¬ðÃ·×ï3x¦\'Î².¼D¬¬f©i±JOcåmoöYHÌº~Äêÿ\0³Î«l­å±“ÓŠû>M^9AÊƒïY—rZÊ	*¹ªæcõ>Ô¾ëºiaå3\0{V:ø;ZYJýšLz‘_vÜéÖWÌ@çÔVTžÓbbOÊÁ$|ñð«á-íî¡ÍìeUH _q|9†iqÇÂàWšéIg¦|¨ª1è+U¼FB…ŒzU\\†®{5Ï‰ã6Ò|ã§­|aû\\k-un0Ù]õíCÄLñ°ßÆ+Â¾:hÒëÖ’Ë0É—Q¤|¹öÂw}«ãQÊýñõ5“©Ù\\X;£!\\Uvê¸8?ZÐgH—ü3,‡óVâÕ™åç>•ÊÒ?‡õ§-ðÈ4ØÛkÌ¤ßj¼ž!bçô®ÀÊp}êÜW˜ÈcŸzÇ[6ªÅ“ÇŠÇ»Ôw†ÜxéšÎ”öaÚªÏp_ðéŠcurqÝòŠÆšO1ÉéRK+üÊÍß ª’JIÏÍØP\r–,ŒÔ2\\\\´w¦;³ýãšEvLí8ÍMÉ¹4‘ä‘ë]¿‚¦ÿ\0¼k„Œ|ø#½uþ}:ƒ[Ca¦z\\Z€Ü¿>•§q¬´:tŠt®*¶ÜOqO¿Ô\\Ú¸ÏjŽ¥[CÖ§3]ÌÙÈÎ9¬g““ƒZ­»yëóV-Ä¸Aç½[v$ŸÍùwnãÖ•fÜ¹ëYå¹Í;Ìö¬oä=þa¥óqÚ¨­ËƒÏÌ)ÍtOE5WBÐº’ã©¥YˆgJ¤·?\'#-J—Îþ1Ó´»b÷K¢å†~cBÝÈ™Ã}j¡¸_oÎ‘&Ànõ)ö/”¼·ó¯I\rOµuàH:É[ŸUü8Ü®q‚iÝŠèÞƒÅ‘“ûÃùÖî™ñæ\0WyüMp>~ð@SÄÜp(R\ZcúŠ¢Š+0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¤f\n¤ž‚–©ëBÏL¹˜œCÍ	\\ùƒÿ\0)ñrÝkBÉîN£?Züìº„Œsÿ\0×¯©ÿ\0n/¶¹ñ2ùåP‘×Ý«å+‚7þØ¶FÇ~sP…Â6zÔ¤àf¢‘‰Èü)_ADgnj«ö©å8CU•¶æ¢%·ÐJPp9¤¢¨Í·îþï£ý\\~ôçm«îj1Íº­µ%ãmFTžôüàQ—ö®W®Á†9ÛNŒãX´qíNÅ½‹ë•öª26éÛŽ*ã1X›Þ¨Ã&%Ï¥LÐŒF+é¿ÙGI\rzÓŸ˜/JùŽÝ3´\\WØß²öö[ea€ß5K%½.}[mrÑÀ \0©Rõ†r2+ïvyÏµDofJÉ¤mÉ¨¶[òªï¨2çk­bòOÖ£{ãÛŠ,‡c¡‹W œ~µšÐ\'ïšçZìyŠ¤÷¤1ÇÝ¢Á«:ÏÈß7ëTfÖ¶“Î+˜—V*\'ò›.®w0ó¤QÖI­›¿­U“Ä„	Íròê™VþU“6«†8n=ª¬QÙ\\xlo“È¬ïøHÎÍúW!q«n\'æ¬ÙõfÚ~l\n`]ñ¯Šs\'\'Šã4}üÌ—ÎkÅúÑgeÝXÚn¨õ©4ŠV=ÏBñ¨>~†»+Åm°eÏç^£ëd\02q]EŽ¾p>jBq=¸xÆHã#Ì\'ñ¬»Ÿ<»þ|þ5çCÄX‹¹ÅR“Ä$îJi$v×Þ\'h#f2qZòoüpDY$ÜãÐÓ|[ây-ôé[Œ\Zù[Æ:ä·×Ó³HXn=ëH!Ù¹/í%|e`¶}kSOý£ä$yŒ_2y­Ï=iVâEèÆ­$Š³>¿²øÿ\0k %¥\\ú\Z¼Ÿlç\0™>†¾7[ù”ðäTÉ¬ÜGÒFüè²§Ùp|S³›¤ƒóÅLž?†á°$èkãˆ¼QwâFüëcIñÕÌò1îir HúÍ|DXd7¹¦\'ˆägÁaùu¯)ð¿Œ…å²	$Äz×C®§?8ÅFÛ+Àñ3FßŠ­}«Å}IpF;×\Zú ùŽìzµ\\±\0Ô¢Ôm¹GÄ>´ÔZF¹nø®\Z÷á‚åŠsøW¡I®?Z…õ0rüª“®yLß&‰›hãéY“xê>H#é^Ãöµ|ð()\nz•žqá›¨3òœj«ýŸuì!¯q–ÞÖMÙU#ëY·\ZU›evôª‹ˆr2ËqÆÖÕ<„œçÒ½fo\rZ²’Y³xN§\0Â’Vy‹ÁþõV—yûãÜW¢\\øB §\0{Ö=×„Ù3‘Un„Û¡Ç+Ð‘ô¤­ét	#ÏÊj©ÒdS¿­Eƒ•w([dÉì+°ðü4ÝŽÕCKÐÅqí]-µºÛ¦Õ­Vˆ±2¶ÜÕ}Jl[žÆ¬ ÎjŽªß¹oj•¹¦¼§5tß»cÆklù­šÕ¹“ïÕÄ–9ëDŒX”QEf ¢Š(\0¢•P¹ÂŒšÚÈqš\0Š—wËŠJnñÏùÍ¸Õú¥-•hî)( ANGÛM¢§cú•¢Š(QE\0QE\0QE\0QE\0WñoW\Z?‚u·ì\"3Ívuá_µÏˆÆ‡ðÓP!€&\"N:ÕÃpGãOÇtë~6Ô§-¸™[œû×“LIrjé¼oz×šÍÜÙåœŸÖ¹RIÉêk¤ÉŒžõHÅAn9¨dåVl¥¢!üÏóS}î3šR6†çu2š3LQ!@ppZh9Ïµ5Žâš¯Ä÷§n;h?×4\nnïÖž¬0ÀÆ¹ÐÆ‘‘É¨ùCN-Éô¦SH¸ ­Ù·$„U$Ýš®Ùu?J ó%¸”˜nöëU-ÇÎ§ÜSî\0V`8¦@@ ·#564øÌ×1(9ËÆ¾åø§‹-‚	Q_øJ!q¬[©Æ?}åð¾!m B:6ÑCêC‘èÿ\0iùqŸš£iqœµgý£¯5÷`u5šÜ—yÉíUéT¶P–á˜œ±ª­1²i„UÍ¾³øÕ9oJî%°*«ÝàqÖ³.®ÊÎZ‚—‘j{ü°+6{ý¹ù³êj¤×€ç-øVl÷‹†‡Ò Óê„‚¹ÍfO‘÷·V|×!²Iâ©ÉuÁ\0çÞª6\Z/MòÄ\0jŒú€Tb>¦©I2 äâ³¯¯öDý6Ö€s^#½2^¶©ÙÜmÉ?gêwF[‡Ãw¢ÚN2ãX›Åhuº~ Cã#Î¶íµR§†üëŠµœŽsWcº*:çñªCGhº¿ n¤þÕbN5ÊÃr\\sÓ½XŠsü\'ð5¡	\"j@X9Ýü&¾uÖ&ó.¥=\0=ëÛ<yuåé³ç¦6×„Ü±i[\'<ÕÚÈÉüÄþòþt›‡ÎwŒÒ–?»÷·ûŠ®%õX>æ‘Dùýßßÿ\0S%ÿ\0W/ÔJoï£ÿ\0l~uÍ3úŸåJâ¹,.C?W÷©Ó!Fï½U¢‹ÌÏ8¦Ùó‘ÇcZ2bÎçÁú‹ÄsÒ½\nßPm§kÌ|*Ÿ08ú~ußÙž¼çÚ²f´Í·pwqïYWž%ŠÕˆ-ŸÆªj×¦˜”â¼ëYÔ¤•ŸŸjqHm÷ü\'¶ã©\\}jX|mk7ñ(?Zñ§º\' 3Sc»‘\rV¹L®sƒÄ–²‚wVÓR¶¬kÂâÕä‰p³V ñÔC‰OÐÑî¶4Ùí€‡9Y{Ðbv†çë^Eoãk˜Á;ÇÒµ,þ Ê€îl}(P]jG É\rÂŽ\Z«m—p5ÍÛ|E×y«‰ã[yÓ;‡ãISq\Z’{—œ’NŠ¯*’¸æªZ¹$ÇÖ¥UóóÎ’‹E®VBö«,mÐ¥BºlmÆ©äNÌwŠ|Ee\'b	²#X>\0Å)‹Ž:ÔÎ»XŠNNOçBˆÓh€(ù³Ú±5–(¬?Ïùâ·GÏÎë¯·j˜j9»—Ê¿¸&³\\òÕ¡;lú\nÍ\';ª¤sôæ–Š+1Q@´ÕL’ý3Í]½¹… e\\¥cE+Ež‡4Œìç$æ˜Ä¤+KE!«·4½i`uÍ*Ùö {†:ûTŠ0*:T8<Ò*\r&R”QE2Š( Š( Š( Š( ¾-ÿ\0‚ˆx¨Yx*{U“”ŒüWÚûcfô¯Ìø(ï‹Þ[Ód’duÆkjkq£ó«W¸in%9êÄ:Êf#85výòíþÑÍfVé\\[‡j­!;š§wÙ×¥WpWpv³½ØHHÝàÒM!Æx¢™€Õ)SÍ+ýóF~LSø†ˆmH‡¥0\0Açœ®+Ø§a½I¤¢Ž•EZ[§jª:õÅ\\Äq¹ïBÜ–Vå¹ëÖ–?»MsÍ9@Žj:¡Ý|*´ûOˆm÷rWÝ>Ûo¥Â£®Ð+ãoZWÚuÄ8É¾ÉÓ—Ê´AÓA(Øi—{Š£#e˜æ£2Žj¹Ažr}ªtêRó-ÆÀk=îvç©%Ä¾éªÊ>v°èJBµÇ½îGŸzË¼»ÎáßùRÏ>ÀBžk6êã\0–æ¨ÕÐŽ69æ°.ueFú—TºýÛsÍqº…ÞÙg51\Z:í$ä­B÷d±ÁÀúW?is!,sVdœ` ­\0µ-ØÃs“YZ•ãfÉÍH\\üV^¯&\"+Sa£š–a$¬@ïVmebÇ<U-ùsÏ5vÍFÜ÷¬ú‰hhÛ¶Iõ«±‚¯Àâ¨Ûòx«ˆÜ¯SJ¸õ1{²ÔMµºg5rÜ°pPÖ–ž»ä-ßPW%³ø>Ë	\0þ*ñ9[ï·\\s^½ñbm°\r‚kÆndä®8#?­i-–ƒ\07¬™j“÷;?‡­2Ý6ônMuø&i,„Š	]¹\0Š„ä!—ÊÏÍh“ûß¥kÿ\0Â7+†Úœ/|Öl–ÞLŽ’)S¸íKQjCŒ½ãÒ­Û.\0ù·J¤½jå’îÀõj¸ü\"Gká€\n¨ÚwWelÈí\\Ÿ†Ðì\rœÿ\0]uÖ˜þ*OVm™•â\"VÞCì?­yÆ¢åAöÿ\0?•z?‰åÛlÃ?5yž¤änöÞÄTOSš(¬È\n(¢€\n(¢€®WîšrM\"än5|Â\'râ5\"j2§ñš©EìiØÒ‹V™	ùÍhØøŠXœÕÎäÐƒqO™ÌzŽŸ¨­ä}jÖð3\\o…n’¤õ®§vÞû©³X´É%ÉVôÌk2“Ÿ›«£á	®jý÷Îja¢Ì³ò·j¡ÜÕË÷Ë:œÕ:$s‰‘œRÒ‚}éj\0Ažô´Q@J(##Š»E\0(¤çy¥¤Žy „àu¥Ï8¤Ç´\0£ŽE.2	¤\0c)QKqÅGõ)EP ¢Š(\0¢Š(\0¢Š(\0¢Š(ž±p-4»©Oð¡5øÉûux±µ¯ßC¸‘c¯Ö¿^>)jãHð}ôÙÁ\n­~þÑ~#þÚñî­+6zØoMh4xôòeÎzU[†=*i©îj¤„ìlqŽõW{™2çräzS_ŽÞ”pi´\"¢óOò©j&ÇÍëÅ2¢2Š(©»{š€8éR!ù~•¯LVm\\\Z¸QEÆ*Æ¥ÏËL½9È–º™½]ˆªh×$MDÚžÝKÊ£Þ“)žýû>éçíR¹Éë_NA.ÕÛÖ¼3à•`Œ8¯lÜ@8¥±ï±4³­“ÅT’`‘Lº›	Œõª/.Aæ£PI¢I.I\05^IUTóU®%#€ßZ¤òm\'š4iÕ3“ÍeOx7O5=Ä€ƒ†Èô¬;¹ñ¸ŠHV#»¹V.	ô®vú4’Sòæ­Mt›ŸzÍ¸”€XœÕ¤cU‰XÆ{Òý²*¿›• Í,R\0NòO¥;¢Ó‰aYNÓÒ°õ©pŒ|Ý+P”\nH\'}sÚô¹R1ÅCÞãŽæ\\cæ5vÑöîBÝ‹w«öª	nk++3®÷fŒGCW-›+úUºÕ¨X\0Ý½êâÌ^Œ¶AÁ­M1–(‹15“0jôXKI	ÏN+h|G6Ç™üV¿óî~†¼ÅH$pzt®ÃÇ×žv©&OC\\i˜æOö¿JrÖM¶t;sƒšúÀ7×šW—4`¸¯ðä)5üjê¥sÞ¾‰ð¿‡-àÒÄÑ>»\nºhHÆ×ô;L‚G\n uæ¼?\\™$¼¸xÔ-Å{gÄK4ÙÎäñ^ryv=i>È«hÈªíŽ®Ñš©ª—`ZÐÓ—çAíMìDNãÃ±Ÿ,ú×Yg0æ¹­\r1\n®>mµÓX»JÄÙls¾-p£aàâ¼ëR92~è^1#ÎX\nó{Ç\r»\'æ<Ö’3)ÑE‰!EPEPEPEP@ëE*ÓŽ¬GOáhðá«¨‘ÕXã¥aøNÜ2nÏ»1Û+(»ØÙ!ŽvNk–ÔIiœô®¢N#nÞõË^H7Ižõ(:Wg÷¿‡øÔ5ÓfSì*\ZÄÈ4QHj\0Z(¢€\Z2IæHœÓ¹çQNØÞ”„•ÆŽ”P¨¢€q´ç¯jtC$ÒDzÓ•·R5ŠÙŸÔQLÈ(¢Š\0(¢Š\0(¢Š\0(¢Š\0ñÚ»Ä+¢ü;¼;ð|¶þF¿> jgRñüùÎéŸÆ¿[oÿ\0}ƒÁ÷P	6œëõ¯Ç]nãÌ»”ƒ»s]qVC3dn«TÚM¬T}Ú°Ä\0IàU2Ù$ã­&„ô@Í¹‰õ¤¢Š¯Ã6*3‘Ûç8ùGAL¡¿3T‚ŠSÔÒVEŠ§ã4¥Î)´R°¬)ªá˜ÔS©;LcãšWéDcƒC‘Ò£©D­\\Òâ2^F£®sTãkwÂ6ÿ\0hÕ¡N¿0£¨u>¯øCgö]\Z6Æ2‚½æ\"Ø®SÀ]!ÓåºfeääQs4ú‰$Þ`ù±Tfœ.Bž•Kq8U u¬éŸ!¹ÅIi‹$àn%³ŠÎ•Ã;0éR;²nÆÑôëTî$§z’\rˆ.§Æ@nõƒyp	-éÇÖ®ßÎGs\\ýÌÅÉ©¡¢©òô5žÒ,MKrÛ˜¯aU•€4$†Ë{SîåM=Í8sŠbŽ9®kXŸtŒ:gŠè§`±±\'¥r:Œ„Ü>OCGCZbZ½W­Ø!ÇZÎ€žjõºî?7ZÅu:VÊÆœ.2ËÞ¬ÃÔóŠ¦òñóf¬ÂüçQ‹²3—RÒžõ¡3ªÙž\0¬åïSjó˜4™[ÃŠé¦ï©âž0œIªÌO@k˜­mv_:îv8Îk r\r8™³oÂšdš†¡\ZÄpz×Ñzf‡}g¤ ‹ü+Ã>jPÙjëçŒgšú«O×4ûí&&Yv zÕÅhR>~ñ¾¥wS¬™=G5å“.Gy¸¯_ø¹sj#™c#s15ã>igûU‹Ø­})|ÉGÈâ²¡8ŸZÜÑ†%\'«‘1Øîtp#ˆ+zÜ‡‹¥íò†êÙ¶Â{\nÎ;›t8ïÎÆW\rÛ­yýÓn“•Øx¦ç|Ò`û}kœæV¡ìgÐŽŠ(¨$×Òôu,lÕ}[G›I™’e+é^ðM.òL€ éMøÍmmo,B0¡ñZ¸érÒ<’Š(=+\"ŠÑ²Ðîoc,±¶=qTî-d¶‘‘Ô‚:ñE‚ÄTR§ŒRÐO…wHqL©ìÐ´À\n¨îqáˆŒv¤ãµ^\',Þh°`Ø=E1Ás[3X\ržOÝy®få˜™síüë£¸m°“íýkš»N{Ò¾‚hÃŸýkTt¯÷ÛœóÖ’°3íEƒÍ\0-E\0`b€»—µ>œÐ5=õúŠ¼E!ÏlP¹Ç4„8zRR§Þ£aô¤;]h¸?-Xƒi-ÅB€üÍSAÁ$óïUÜÒ;ÔeQHÈ(¢Š\0(¢Š\0(¢Š\0)²6ÈÙ½iÕG\\¹û&•s&q„4 Gæ‡ü{Å¾c=šI·æÁ\0×æ­ä»¥`\r}‰ûyx°j¾6¸ƒ~U¯\'ýêøÞáƒHÜWdFTLëÅ1œ6êi8ÈíLc€y¨HÍv›½yç¥!“\rŠŠ­\"’$#<–ùiŠÛ}é#Š+©ªB““IE $äó@Å œ{\n)íR}\05eG8&œ¬dŠ«o¶zb¬¢ì\\n-îi\'q\'rdû´ÂrM=~éíQó“Í%»ÝŽC€k³øciö­n3·vWƒ9¯Tø+cæjaˆG4º‰ŸNè+äØÆ£W¥¹]§æÍT´Q\ZŒíZI™I89¨3‹Ð†W1$Ök;A\'™«sÉŒñ‘ëYîä“Wn…%ÐG˜*“éYÓÍ½‰è{SË«b9=*•Þ6œÔŠWsnÜsœVÌ˜F\0àŒ:¿váx\'ÍbÜ0.ÅNj3äžx¤¨Ø¡8m¿9¤U\0–4â÷+aÔTq•%Ø6s×Ú•œ¡ä|ÍP^Î±ÄÙêk“¸—|­ÜWA¨I·yã5Ì·SPÍiêM˜ÍhC\'éYÑqŠÐGÊàV}Mzmß ‚ÜÕ¨äÀíTa\'æÇ¥\\r­žEi}.cÔ¿‚¡‡JÎñfª\"Òä]Ã¦*xäÙ×=ÏÒ¸êDÊ­×µiÏ?Ô_{¿9;¿Æ©*Kƒ™[œÔu›%· 0b¾âº;Oj6–â%™ð=ë—\\ôU©4#OR×®56&gfüqY”QY€ø1æ\0Wvk Ñfÿ\0>õƒl3/Òº_ÿ\0¬üj–Å-ŽÊÄ€<ŠÓ¸¹òí›>•™eòsÖ—S¸ÙNqT·4èq\ZôêòÉóqŸÒ¹¦9$úÖÆ¦Ë$²~\\Ö;cqÇJOc*[lyœþ(1Ü}øKqgo§ä+Ï~+ÞIq¯Ìw~è–¹í\'Ä÷Z\\^\\nqéš§«jòj’““[Iè4P«Z]±ººXúä÷ªµ5•Ù´˜:ðA¬£¾ ¢¼/áí6ËÃ&i¶î	’Õáž/¸ŽãVœÅ€àb´eñíä–Ùf*„`ó\\œ’$g=IÍi).€6Š(¬DkL¹QÖªÕísÏZ¸n£Ùb=8c­Tó>|‘RDì¶*½*9lVFmQó…G®bù²5Ðj.LJæõäœñÒ„IE˜Í`f-Q@Q@0y£b–Î(G\"}ÚŽ¤•¤Í)î5ê)´g$ÐM2<‰\"<0ÍMSP\'\nMZ³º/§Uµê\"Š(¤bQE\0QE\0QE\0Ç|TÕWJðä¬Û@F?¥v5áŸµG‰ÓDð=éÜ2#oåW\rÁŽŸ´ö¾uŸjr–ÜŒüMx[ÈªzúWgñ/Z:·‰/î²ZFþf¸Y985·‘KKŒ\'$“Þ’ŒòG¥FÒÄv§±šW|`-GKÔšJÎ÷6JÁERQME`æÝøb’&vxÒ€Q¤»‹ç¢÷§³ROAU6Gÿ\0=?ñÚM‰±b}¾nÁÛ\"§¶ÞSæçÓ5^FÝ¼ôr/‘@ëŠ”J$$…÷¨·\rÛsÎ3Ov¼\n­jw­5 Ö…¤v?J÷ö#ÎGLs^#j›¦=\r}ðbÌCf¬>´Œç±ëå˜&ÜñÞ ”‘`œûSÙð¿J¬Òàµg°â´Ô¨X“’yªw2r@æ§šP„ò>µJi-Ž}éù´!‘°¤ô¬‰ä*¬Õ¡3•Ry¬KùŽ[\'8 6(]»moÖ²g›h\'?1«sLNá»ŒñYw,žzU\"†ÁÝÔŽh-–ÏéQ+`òx©Qk\nÖó‘ÇÒ§Žä…mÜžÜT’2p=h¤„Š:¼¤«õ¬o˜Œã©¬KŸ—5‘\0)3ªšv-E&GQWâaë‘Yê\0Uët*lf£©k©eNÖeyªaàÊ­ Ï;³šÖ©‹$v*ì:×›øºf20\'Œâ½—tDgµyÏŒ,_ÌfùŠŽ¢©#Šf,Äž¦’•”£zŠJ‚BŠ( Š( 	m¿ÖõÇõ®›Ããq÷®bÜ(Çjëü;P1íT¶.\'SjÛSŸJÉ×îöBüóZ±3F¸¹ŸÎ@Æyö§i#˜»rQ¯STj{—%¶ƒÇqPT³QE!Q@Q@R9ýhh¤è9¥ ´ô(·\\\0æ³+ÃO¡­)îëd\"EíŠ‚$\'uZ¼\0:\nª£äàÒ–çD~3Tr©Á®zùËÆÙöþu·©±ÜFr+ô­õoc•˜ëKÔqX’Rt´¹ëí@Q@Q@\0ç>Õ$`ìëN¶ˆÊÅGSÅuZOƒÚâ\rÎ8J74Ž‡J§ñšëo¼ÑFíÈ«•ž¬­Á¬M¬<ííš³b	#oÕ(ûÖ–œ2HÇài{«ŸÔá\'ö»ðp_øýƒ?õÐU?lßÄp×pƒþø£•˜ØúŠùÑÿ\0m(?é°qêõŸsûsx2·ÀqÓæëG(ì}7E|´ß·ƒB“öØGÕê­Çíñá†ì\rî®\r¡cêú+ä¿à ¾‡pûZ1öj ÿ\0ðQª7újwÝJÁcì™çKx™Ý°|ûwüLŽîÒòJ‘€~µ™ã¯ø(~ƒ-”«ixƒ_|wý .þ$_Í‡aN2y5¬RDîx®¿sö‹©›~rÄþµV.§óŽsUëD!€ýîÍQ–µëIHHÇQŠ‹³[$-t¢¤¡‚“GPp}¸íKLù<¾Û1LBÆÛ“;·{ãü½ÿ\0ŸJ‹æ…ýýjÂÜGŒr¸ö¨½Å{Œû\'û¥6H¼¼sœÓ¾×þÇëQUÂÝvè:\rŸ6ütïWcMQ·ÿ\0Z*è)5šØ¥°Ç`ŠXô‘Çåî¡9×ðþ5,Qùk·9ªêWRö”»ïb_V¾¦øgfm´ÈÜw¾gð¥©ºÕc \"¾°ðu ·ÒbÁç—Rµ,ä¯£Uf~2jiØ‚Ù\\{Õ9\'Æ³^`—r+†Ê°Ü3éU¶©4ùdW|Ž*	¤zP»vRžrùÉ;OjÇ¹37åZ7[?v±n¦ØœSfÎá3“Åe³géV®œ3ãÒ³%”,¤2ã~t×p,R†Ç¿ÖªÛÏ•X¡éVµ)j;yÅ\r&¸è)›8f¡šuØÊ\rAdbê’Ç9ÅT¶ÁSRê¹ˆŽ•¨ùMc#X m‡ŒqëW-Ø¶Kuª±ÆNp2E\\‰sÆ)®Rú“ÆIÀÏ¯5j&,¼œš¯g;KdTêŸ/Ý\rš¸õ3}‰ÃµfêšZj°Ç8«þ´tªZlecÎõ7˜v!\0ô¬{ÜDH\0“ü«Öñšb‰ƒŒP¢<aô[ˆÁ,Œ1×åª­m*g(F+Ú¤Ò­eÏÉÅe^xbÞ`Å@aì)8¤+LT¯PGÖ’»«ß˜¨â³ÿ\0á`~èÇáK”V04è’g¦x®ëC·1F8ªú‡„G‘[À\"Ó[\ZEÁØq\\oˆØ›ŒWp#Ú·ÕÌø‹JfFuŽhµŠoC‡—ýktëÚ™SMnÑ±à‘êj\Zƒ\0¢Š(\0£¥PEP\0i2=E-\0QE\0\0t¾\0Lí\\Ð®‹ÃyÜqéZÓ\Z:›§21äÔ* !§\ZŽCˆÛÞ¢þñ¿Ù±“¨¼óü=k›½??_Â·/˜±\'¿5…v~~MhÌ^Š(¬DÄþ,Séª»i¡¡@\n\r `ßýzu!\0-:Ëm¦“N^E8¡Çƒô/dA\'Ú½÷GH4Æ[sóÔW“xvúäN±£‘šõ;6;idê9æº¢•´5‰•ka:ÂæSœz×ø…QoåÛŽµèÚœÓY|³‘ŽÕå—ìípåÎNk–ˆ?6+_I‹â²PocÚ·tˆX“ž•šØüøÇP9ÅÔ„ún5V_^œ±º”ŸMÆ°’pCgéH0Xî?uÚÇ2w6—Ä·„7ïäÇûÆ¡—_ºó+ýI¬¦!wÒ˜²oÝ·¨õ¥e¹KC]u›µÝûæüé‡]¸‘çŸ®k¥Ç\0î~xÈ4¬ˆ»6YŸ$´§ñ5RmNS±ªO)o¼ÕŒ@àóC)>ÂÜjr>Aý*‹Ü9R2E1ÛsÕg½fôWòg\'=;T;©§?8aMÞqŒñTš-!(¢Ž™9â³,@Œ1d%ÊíÁóQ<Rd“ó{Ô‘ü´zUX‹± ¹o.AÝÅ%¸ýÜŸ7ÿ\0[Þ•üîqŒcøjº©cÉ¬¶\r…ØÃwŽ´FÛJŸî©<ö\"Èc%e‡^y¤„ˆ÷\'~¾´´Áßõ¥P|»’>Ü1mü~•t”ŒÕ[AËžõdñÚˆ­\r\"´ ùþÑÛ§éSŠŠ)ÄŒF0LzSCGaðêÌÏ«#c$_Th Åbƒp¯ó—Â+B÷ÊÅ‹‚kè¸T,*‘Žµ;±j[ÊÃ­d\\°21ÕÉXí \nÏ|Àõ£RJ¢ì÷EG,ùéëLv\\Õf“rŒT+±%\"­Ì€Œgœæ±ï2sÚ¯Îànõ¬™œrr=éss2fß¸úÖk0Üÿ\0(ç¥\\šMŠ{â¨4®äç$zvªH:”lŽ£Ö”JêÄ†äõ¨rAëFã´ŒñU`±(½ƒ“I!%2E21×<R³pF\nVÔwèdJw1Í-¼$qœÔ­ÎGZ|P—R1JýánMl;žµzÉëÖ¡‚\r€ž™«vêTàŠ”6í„rxÏ½X2;\0;šuº†žqS*àmíMi©¾¤¸æ›Vš%ÎçÞ›°aëÔÕÞÄ¤ÊØãÝ­Ÿ½ÅXD;Jàÿ\0:‰—ƒTÃb\"€)9ÏÒš¨[=±ëS\0AŠZarŒ‘GãQ-¾rp*è„ó|Õ§JË›qF%$€Ý¶Ó| ’y«^Y0ÑÜƒÍUÝW+°\0ñJ¶ñÜ\rúÓ‚m&šÇ?J¤ÌS¹“{àØeÉdôÅeÞx#llI®¨LßÞ<T†ð…ù†j×+\ZGšÉàë•$…${\Z¥?‡îaÿ\0–mþ5ëQ^Å“¹\0¥shäîQÏµ\n	ì+/%ŒÑ©%J¢u+ÅzüÚ%”ùÀZÈ¹ðŒ23>•<„žiMØ=ë½—ÁK†1ñëYòøURG4”XÒ9J+v	ÜÁ»*Ç5›.•qw&*,+(§IÊšm!Zéü>v’£¨ÎÛÀÓ6\0${WY¤Z#%‡5qCPŒ‚*¼Í±\r<È@éUî›t/Çj˜¦ts+W7;™ÆkgÞäöè*óçszÖyêh{½„¢Š)QE\0RšZ\0U;M%ÏjH\0i\04\rk¡µáÓ²éNÖ½q-íœk•#¯5…àË;)—©®ªê!\\C(ãÐ×\\4F‰™Rig\'œÝ»×š]¾ë‰9É®ÓÄ^iÆÿ\0Ê¸wûæ³{Ž,-ûóšétQÀù³\\Ý¿$¯­uz, F	õéY-PúŒûIÇAškJ[pìi²H\\äð*5pÙíŠêÔæÔ“yÃµÖ˜dÚ¤gð [ŸþµBT¯Z¸Ò¹ ”w¤i23ŒØ\'Š«\"¬‡*¤vª“Jpx§5ÁÏËÀ÷ªîp†¡êÅ~ˆ\\ƒŸnµ¿­.öÛžÞ´ÊÊZ”¢9±×4Ú\r(¤#¸A“KHÇ\nO ¦ÄX§ÍÖ¨±¿9“Zjy{~læœÔIŒ{ÓDD˜`U£ƒãe„`É¸vçÇ×<ãÓšª¬Pä\ZXã26ëX\\Òâ´„ÊYr	¦TÐD$/»9÷ˆÇóEÇ¨¥kê+_Rµ(vQ€Ä}\r%„Z´]¨[ÔÔ“LsÏ ¤‰<´Þ™r?wøÿ\0_Bú¶ ÊØéš¹$ŒU{e+#ž3VíFéUG\\ÑÐ:Åð‚Ïk† w¯lBvs‘^eð²ÇÊ±V¨¯L*˜\'&¥0D2Lê[åàwªrH“Ž•<³Ï8Z¦ó¨\rƒÈ¤²ÌIÏ¿­C$P“ÚŸ#ç<Õ	¤Îy¤¤™+B¥ÈÈ\'5xÿ\0!ZÖ¹ed\'8aX÷G*Ü÷©`d]>HS=MX¹¸óõª…Ã)Û‡öÍkêZ`#\' =éK\0¤çVPñ ~„cÚŒ¤T1¾U·088ÝNFÉnx÷¤’ ‘päÕnÜb:…DƒpÜJŽ |¿v²K]ˆ»-K(0µ<;JmïÞªBÌä¶~_J¹\0¸éíDw3nå¨Pc=Oò¤êj$“å;O—w9}*ùu!êL§gÝjpŸäl–¨úÒ*NZbW3“šš«ïàäS4¹n8è=‰çÒ“ÏáH1Þœ\0Žµ[°ÌqŽÔžZúS¨ª(ˆ \nÛZ£Ç«\nÁºÒy<dÔ+\"‘ØsÖ«ª(V\'š¶UŽÕ­C]‹^eb /½Fî:š´À7é¦ ƒÒ’—pµµE2ƒi ñMÛÆ{UƒPTt¨žØ(\'w\\Ú‹\"\rŠUv®7©8»jS—AhJ—I ÿ\0½SG©rªG­RíM\'Ž\Z…6>[šn¶”1çUd´µ€5XmØÃ<ûÔjÅxÉ­c.æn(¥y Á.íŠ3íY‡@@Äbº;îªîÇ£RÐ9Jvz4pýå«n5Ú \0*m­ýïÒ«°ÃS\'d8¡rƒ5™…X4è”óŠˆ—§-ŽVòÁãgnHõÅcÉF`Àï^•´7(UÀçµE/„ ¸û™Éô­R“ØÁ£Íhýk¹¸ð³åCb¨\\xîp…½*9Z&Ç+Ek\\xjòæ&ãÚ¨µ„éÕ©°r²ª¶ìÓ—’ÜqOhXuZEm¹\ryÇ_j\\àñÅ\'^ôt¤+—-u9­¾ãô«£ÄWc\'Ì9úÖ>\r\'JÙIÇpLÖŸ[žå\n–ÎjˆËzfKƒRÁ÷K|ÌÙh‰ík`×a£Çˆ‡zæl#ÜÝ=ë±ÑàS{}ÎoÍ>Ôˆ¡‰Éæ›»h$ŸÆŠëz#!<×„•8 Tm3·SÇµKQ´Ê&¢÷%ÆÝDO03gæþT!èx¨ã‘×å_Ê±\'–4[Ro b¡— §³\0:â Ï^h{R+ÎqJN=…fjPFGJc0-°ç‘@\rgBßëÇ¥:3û¿—çÇ•Y—kéG˜víÏ•v2R,‚¹VqÐúÕidó8ÇjI$i4å—å6In•…î;ÜŽ§µ;VCéPƒÓ?Zš&ò¢f’p(@‰b–b{ÔÄ\03š¯jÛƒç®sšœ0*G^j–Å-Šm$zqIVäˆJ¹\\gÖ«Gþ±~¢¦ÄØº\0 ¨îb>Õ-W’}®ê@aÛÚ­ì[Ø}®<®=y­-5ê)õª6øÁ­ŸBeÔ£ôÍ.‚è}ðþÞ;}-Kp+§’à\"•QøÖ„£	¥¦F9­FÇ9ˆOR‰B£sóUlŠ³,ˆQæªÃõ6¹[lWšM ŸÊ¨ÈFÖÉÅY¸ny±ÅR¸eU$ÒŠR„Är:V]Ô›™½¸­9˜eˆç&±.·Òª#F|¿$žMP2d“\0š¸Ø<ƒT^F%mÂžÈ6Cà•c’qÚ&ü\0*Ø#d®ïcN0,½Ö’bLœB‘‚v–ýirCü¼¨ýi‹9ÊyÏCBÆ…ØÀ\r;öû+DŽ”è`*#+çk}E1ÉÚ=iÜÓE¡z)v–ÈïVa™yAªIæíHwã9º LÓ[„Ãq´ÿ\0:’9U×;…f	v¯ÍÁ>¦‘nI$ÒÔ•sXzÐHQ“Y«wýÓŠzÝg“óSL¢ò8q‘Ò—pÆsÅPó\ndéOWå….aGRÒ¶K`t¥;‘ùÔÎ1†â˜Ónëšˆ»n	¢s7 ¥2€8æª†Æïz<ÐUsh–6ÂÔ¥ð¸P#e‰yëŒçZ.ö±Q×r]ÇŸzk1Ub)¢@zóBKQ©¥‡(Á99 °Æ{TløÝ’1MR<çÛÒ.„‡Çµ38¤YFP¬#Ò‹š#’\rüƒP¦ü•h¿¥0þm¿z†»‚þéPŒŒRÀ\"¦HÐõéJð˜¾n¸56™[oÊÙ¦*œÂ¦Å7Ë÷¦˜h÷#ÚéÆ£eVàôõ©Á\nN*2UO@j“VC\0ÀÅGßgjã\'){3Œf´FH¬F\r.SÊ;õ4˜;±ß5[—qŠJœƒSC¨MñT\\­&\r	¸ì&“5­üHéÁÅ]‡ÄÑƒ¶HÁ®l\0:S‚1Ö©TdªgW.µ§Ü¨Ì`þŸymasœ¬A!‘œ©?>_´Ot>KÞøvÖ@Ä\rb\\øaqR¤ý+UnGÞ\'ÚƒpIî\Z^ëÜ›ÄúˆÌqš¦Ú\\‹‘ƒšëË9ni¥CšVB±Æ=›¨æ£17MµØIiªF=ª¸Óabp¹¥Ê‡ÊŽYTœŒdÕ‹d<àVðÒ˜®kBÏAŒáxÏ\\ÒQkQ¤eé°gœ×c¤[†o8ªÐi)ã…néÐv#¬Ù¼ç˜¦—Uêj1&ô›\nŽzâºms‘H‘‡ñnÊÓ)÷¦÷Æx¤ã8Í;¡¦€AbOÆ,z¢’¸²?EDsÇJZ:VW¹ªVBnnr{Œô ýÓÎ=ý(`{Ž”ÝãËÎñÓïRÈÉt}ý)Â@¼dÈ}TTQÇ\'Ò€›[À|ö«±šb4™>´ÊÁ<æ”©+¼žøæ¨ÌfÆÛ»/­%)b@àt¤®RÇ&ÜüÙ#Ú›Œœh¢€¨êrúTÖÍÈzŠ†\"€¿#¾y«Sn‘²<U\"“–XÆÔŠ†Ýs(ïŽiÑ“?½ úf¤·ˆ¦K”nÃvMU~dÎ3ŽIýjÌŸêßéþ5VÆPÀgžM66[\0€0=«¨ð-¿›«&GË\rsØü<]ÚšŽ¿0¡ƒ>‰ÐÓÈÓÐuã5fI:žÕVÇ	d‡8ã&›–vþçjH”¬ÈælÈÆ«“štœtæ¡‘Ùc%FHïBe.åiK99¬û£—olU©\\„5BI7æ³]Œ™RgQÇŽ•“xAFÇOþ½j\\«o_þ½cÜ(Ù5F¦|Ï€Ø`§¶j÷©î]‡Ëü$URW9ªê(=(Ô’àûiŠr(÷¢ÃNÄ‚P‹Š#˜†ÝÖ™ÒŠÌÉ¢g,UNÐiY¾RD™Ü8â•GÓNÚî4àÍËf™E#4ìM»ïRGpWÜTCŽô‡½5r¹®ZûOÒt1U@ã„ÎiÝ‡1mnG;Ôô¹QÔâ¨œíKJâæ4~Ð®ÙÈÇ¡§‰#“¯Ú³C+Ûµ7ÍÆÿ\0›éÅØÑGQ¸õZ1Ï^*ŒråNiÉp0pqTš…ÿ\01OCŸ¥GæðÇUo;nî@¥2Þ’åEóH]‹6O”Ü\r¼rjº9\\óLÏ\\\Z.‚-¢Á~HÎ=éMªÁC’¨ØÎ9¦¤˜’¶£ÖfQŽ¢•‰)Ù¶**JÎábC)ì1L4™ö¤SŒ‚Ù¥\Z!ÔâéL“Ò—^)Xqiì)@G¹¦d+á¹ô§?*Üô«üÀ(9ÁÍDSÒ¥Û±SQ¨ÀÆsBcµ÷T¯Pi‡væíRI<çá‚¾Õfj7+,CøÍ×F*S¹¤;[ŠxL®ÔÚûìV£\0ö¥ldã¦ip\0\'<Ô¤Q *GOzbÅòò9©s‘×­!8É¡6\Zn1\"P3÷©¬«õ§°eä”v¦íÛ‘M0Š\" c<ÓÈùp5¯QZ\'r\ZåœƒŠhpìÔ¸Á\'u	ílSwƒÁ&¯Ù³ç­R‚’Iæ´ìàÂç¹©eEh\\‚&bp9»amÁÏSëYvn\'×GglHÆp1ŠÁ›#ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0àÐ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ø#í !ÚH&š—\r¿·J¤&‘Ù°:zÔ*û˜üÕ]=ƒ™—Úc““Lk¬\'\'/TÆ\\ç9§G,l¼¯åFÂö’-›ðÝriLä¯Ê¿@²¤ÊÈ¼0¨Ö;€ä€\Z’‘\\Ò-,²î5‘™I/µiP±:í4ÈÀ\nQ©èÁ6ÌëËymåG’éZ:šÜE‚ 8ëš‘0aëYòÙ´n]Ëê)FÈWfÂÍ»!ÀÅ1çcLã<}jµÖNó5d¨níÜI²3\rÂ®a`Ü}Úbê/Û:}GJgsòn^Ø§ÇªÆùŠhùé†—^û’,Ö·YÎ7ô=¬ê™¶pØìj)´ë{…/ymìj8â¾³ä~õçSŽ÷Ðš\r~âÔ²Ê„^Õaomõ4Ã»×½S‡R†çtS&Óßp§¾“m:–Ì\'Âj´ÚÙ\\Û’ÖÒÇf©mu«ˆ¸\nc¥U)}bå3 î*{}R+¼¤‰ƒèE/Bù›Veãy\rôgQÆEV’ÑÖmð¾ïcM}&)´2Ï\\Uhÿ\0´-žjy:ÐEÝ‹VºÌÖ3‘ô­X5Õ™›nj´{dŒùÉ»Ž¦‘th~gü·ô¢Á¡<—,ìp9j«-Ó(%ŽGÒ¤ˆ†òGJÓ\'{Þ¢§»¿üSîä‹ÝãžG¹¥ßý í½aµ¸:€A­]2É¡»·=©RwAŒoÚ3®¹¹X­CB\näWPóî²àçµõë¦†Äªœgµrö¥ƒ9­tGŸ\rÿ\0µ–ˆ¤ƒr\ZÆÕ—k†‹<õ¯Að·ƒÆ±d³4€äô«Z—ÃèãÈnŸJ\\ñØ­{ži¦I `H9®’Ê[…\"–S×Šèô¿ZÃr™]Ü×§øZÙ!bN=©)¤-¶<¶;K‹†l[•Ï·Zì~h—ë°BªO¥v‰ ÛÄ»¶jØð…Œ/¯Bˆ¹#«\n…;è=RÐö?Ù(@XàdSÞãy½èµà•#mJ Lr7{š{­»dm´Ã´6ãŸ”´ë4ÎÞ”Îˆœc>‚¤á—ÔNÁa¨[q\rš—F{Ò¦îëI¸ã÷ï°ô‘Š•\'Ja$Ž´à¹ç<zRƒ×8ü*v&ã²ŒŽ)Tç<dÓ·n\'Œb—€\\wèFÌA\"šª±÷§’<SF3Ï4ÖÀ¶†;æš@#©ìÜ\Ze44ÄH©ƒ5m óRÇ#8?Z–„Û#ÜOëCíd#ÖœXŽ´ÃÅ4	„\0xÇ•NÓ@§\"l8ü)ì6ô±Ç ¦Ô›AcÏáJ¨[=óÚ’}®‘\0Œ”ªÁ8æ‘ˆ\\äô¥Ú}8§¡IØaN¸8ÏZzŽÃQù 6jl<šm“wÔBÄäS¢ 1\'îÑ…\'\"Œæ©NÀ¥a[ƒƒÒ•™Häî\r3`¤\Zv±éTÝÑ-²ÌBKt<Ô2¶šE“2zšb8ÃdROA¦)ùsß4Ä“Ëv=A§® \Z\0PÄ•ÍUíD˜Ä%³VLªåU°=\r@¸ÉÀ¥C0äv¨²ÜW&gYQ¸ÆÞœÔo^iXn^¸¨¾éàƒG)IÜÎqŒŠÎ4xã¦*[{l®âx>”Æµ	¹›¯AUˆDîi®Àx§¨\n	þ!LeÏ$µDtØ:êQyR9ŒäñNæ©âžmL®K€§ÚžË@¹«LW+Ä¦!ÇðÓ‘¼·É¤q†á³ïLyˆR¼çÖÂ6¹<“€¥‰ù}«VmªH$’{ŠÒýá¹ïÒ³µâbF}\r\"îK¥£q“{UÀêŽëéT´¿3É*G@\0«\">âI5:!-†½º»î$SClèqS7§?QPI*¡;ˆÍ	”˜ô˜s“šc|Å—=iª\rÀRü TLnÏ€¶Í\0åwö¨Ò(æ?)=³Sædç‡µEçÇ3aÓ²µö&$©j²©ÍM˜\'>µGnåéÚ¤KÉ\"R7áV¼ÁKk\n–ÆcoPj \'€.ÆÞ=©ÒK×Ë÷Hîi\nË\Z|¹@ì+=ŠnãÒûiÛ\"cëOòâ”GJ.#œbuÚEj¬sjµ%‹s\ZÇ;»Ž)\n§?­C¾æ2T¦áê*HU^0Hæ’ì5mŠR§’YÔ}G­[³¸Y“Óhx÷í~_ïUY\"{w%?Ô×a+t4cr›€9õ‰bŠq‰P1õª–—BLñÈ«9pIÅ.b&Ò]6÷sÙ©öò^[;G2‡£v«ÖVrÝ1!b;V¿‡u+°ÊÀ2(vERYÛÜ«o@O¯Je®”ÖÌZ)H_îšìáø|Ã/€¥^Ó¾¿›¶v\'ÐQÏLã\"$Ü?•=,£œ±0sØ¨¯Wµø{g´3®xï[6ž°€€ ÷\"¦5Ù\r&ƒJžc„ˆíÅiØøoS| €…õ5í0èv°–%zŠ±å[Â¼*¯Ò‡Qì.E¹äVþ\0Ô&bÛ6ZÑµø_4ë¾Yv‘ØW¢É¨ÛÅ‘¼dv¤>\"„úã Ræ“ØKSˆo…i³&BOzâ¼_ \nåcLàŠ÷=;UK§`Ã>•ç¿¬wo:®L×4¥-›=,*¨­¹ã‚@—ŠTg-ƒ]F‘ï1ÏÍŽžÕÊˆÙïâ\0däs]u‚ÉH\níÛ]T>Çû³2µóçÌ#-ÔóŠÈe¿µhË›»—nËTnP£ò2+Yl^‡¢|1×¾Ásöyß19ãwjô½QUã\rœ®+çí>fFIáÐæ½gÃ~!þÒ±òe`%AŒÉ¬¥°M\"Å£*^…\n:×co:¥³r}«ŒòŒWEÀêz×B’³ØŒgð©Ó¡i¶A«ê“›w1“œà]÷ÁÛ\'¹Ss(ùÇçÈ»Û‘šö_…–â-)É]¬OJpÑƒGl¬Åˆ+Øç­2`Ê7†#ª\\dbŠÔ’!’7îõíR¨À¯Ö•zÓÔŒ‘Žil-…Ž˜¦l$àT”T§bS°‡…8¤\rÇsQÏx¶ÿ\0yKqÀÍ>6¤€Wë@CÁ=ýéâR¯cLè\r>4Ý’Ü(êhæhDdd9ªï:£`äŸj¸Jó€zñÍSž,€¨úši”˜A2ÊN9«@^j{3–SœñŠ´ i:)¤»ÈX\rÆ—xõ«n61ÏÝö¤hÙS\'§¥=ÝÑ\\Gòÿ\0xQ³*ÇÖ¥òñRIù9õ£™‹˜¯\ZíSj•H‘¸zRÅšØÎ)D.wq÷zÒÜ[ˆÊozdï!¾ïzp·cžƒ(åìÞ™éŽø¥Š…A¥+Ž1S¥¹Á,vJ–ýJ¸8<SJäÙ•¶÷ÔTŠ…†IZ\\†VùyìsL®sÅ ÖÃpU›\'\"¦†CìcŸZo’Ä·ÜñGÍ÷OEý*£¸‡¼ä‚¡vJ‹·^}*pÎä§ÉòõÍJ ]›yÇZ-r­ršŒóg4 tÉ«1@¡X›5pä¶~\\uªŽªâ³#Û±ðã uÅ1×¨ú\Z{2–lp)£9ã¥+XI‚&ÚÙ9 dÓÚ3Áêy£Ê\0ÇqÖ“\'Ï•\05£2 ‘ô¦ºañÔŽ2*T g#<qFí„ŸJ¸ì4ÇFìŠpzÔ‹gÅ<¸Ç¡”nàü£Á~Ñ“ô©IùFiy8§31Æ•î&òÐ‘÷ªœr´¬X“Çµ^’1 ÃSB¤Kƒ€µTJiX­p‡`9ÏÒ FORjÕÄªà€xQQ™X‘òƒO –¢z«{(ØÑç‚9©¥Ø\rÄÖ=ë@Ká¥Ðf®šÉåjôÓùƒp=k/HL@HäÕòK»ƒR$U¹l$Ec%Ñ,NÐ+jSó6G@írÊ9öªµ‚å«i˜Âàv¤\\ó¿æË4ÊsÇÖ«ê\ZÝ’žæ8—Õ›hGÁª“Aæ\'jzÎ%ÊÊ˜ü*kK®gòÑ°Ç¿­mEá‹™…Àüj–Ä¥c¬9ð}\r*‡Œ\'Ïï]%§„P†|œö­(ü%®_-õ©L´Ž(£”}Â¹î*ÄVû¬{›>¢»ëo[ÄÊµ­i¢Z•Â¢ƒô©RDžk‹qp¤n}Ö®Aák‘÷cÚ+Ó¡ÓáU|ãµ2Q¶7Ï¥G:\ZVZžz<-p€ç¥IeàÁyv#y<°‹Ò»9®¡ÏËŒQ§Ëo4Ì»@Çz\\ÌI\\àüAáYtÙÂZËöˆñœŽµ†ÊAdt ï\nõ«½(<›×‘X\Zç„Òx¤ž/–AÔôF§FZZuƒKp|±µ½M\\ò¤…™Xçž´ûˆeµ‘Õ†š$%zƒî+TB¹Ñx/W‚Âéãœ\rŽxb:WªYÇ‰\0`Üñ^´õÎ+¼ð\'‹ŒoöK§ùx\nÆ¡Æú•vM¶QÈ<úU€±G—8U4Éõî)ò³<Dmæ³²BWµŠš¯ˆOÇË”&¨¿‹W9¢îÞ;†+\"åA¦Ç¥ÛðÁ(¦Ãb)üGuö„1å¢až•º½íÉõäV˜ŽãqšX“c°\núÔ&\\­\rœ“’Ù9\'Ö¬&™“‡nù\"¬Æà¦!YrªvØi=Å´¶K%#={×5ñB3yáá&rñ0\"º`äÕ‡ãkCq Ü <…Î+)|\'N¨ÕßSÁnÏVE<©ÍmYê/5ƒHÇ¨æ²uXO”À\n]*liÅ>ñ\rŒS¡³Lôs$½Ù\"å„`£ÉÜš¯x¸È5Ûø‹ÁÏ¢i¶×óÇ\"Äv$WtŸ!ºbÒG‹¹^Äg gŸÊ·ôÛÆÒåG\\õçmsVÍ‰Vµ7îŒßð\Zi&Bz©§ÜÇ¨ÃêÙÍušX\rŒ€}«Å|)®>ðC#â8ç±¯hÑ]dˆ2òÎkµ+ IgåÜ\nM{G„m~Ï¤Û‚‡æEy¥½¨›P‰1»,+ÚtÛo\"Æ(ñÀ\\UÅXäûp\0€;S”gžqô§„ÞŸLÃœS¿asmxäŠrü “OØwc>˜©#µf±Æ}ªW`Ühoµ4¦‚¨ù‚ž”›û§ò©Z“!Ü¬ÀZsBTéS.%)ži’Î\"\\0\0z5]•†Êéò·#p«Kr©Ûj§Ÿf_Î¦µ—æÀä5Ìi÷%6£ç¶i!µòØîÃÕbŠ«\"ìŠïjK¤}=*H\"1)ÉÉ?•? ’3È¦\"ªÛó7~y¢ÖX’€FÈ¤\0ŠvÂWŠ•-6€Œ`b–›Ðb•X ŒÒæ¶Œ¢…$Ö…R²1ÏÊhRrXÏJpÍ(=,$F%ýáNôÙc,ùÀQýüÔ¸çŠqzŠ¨ °Æ]Ñ°&«F¤—ù°R*Ä„ÇØ?.ÕXFSãŒô£áØ–5”‚~R{ÒvçTÑ+ˆÛh\r»Ž½)±–”.}³Þ…ˆ<ˆÈ1SK†FU#v:\n²HQÉ\0Sct$…úð+Hè;U\n0-)Œ\0ŠE\rRÈ ¨`AäP/@5›n\0¦=Æ4+°mPOó¨	\nHù³Ö¤]ÁøçýœÒ!8 DvÐÊZnÁCsžÕÕ¢±¯Q¶ p7œŠ­Ð†&6œÓï;»zTŠŽÙqHÅ#J\\Üº\ràdõ\'¥5‰$Ò•ç–Å*ªàœrzš”ìVÚU?¥&iÅúþ•0A’p(C^eY);œóØÔn‰¿Ol>[oËši—!ÀùE^ˆ’.™ã>ôõ“`Úgµ!!æÍD»S$Å5%k!­D–M‹Éè+÷|×\0\0µhÜI¹þSŽÙª3ÜC¹fÆzY¦‹Vêiéèc¶PO5|DC~uÉj~:Ò4+C%ÍÜi·€r\nòŸþÒfá¤µÐíÜž%qÅiEûß©ê¶ºm³Ë<«\Zc«\ZóümÐtMënæòQÚ>™¯	Õ5¯xžF“VÔ([„àÂ±åÔô}$ý*QÜÑdÊ·s¿ñÇ]wTgû¿Ùbnzàµ‹íVþ\'ŸPÔ“ü;¿¥aj^6¹ºˆEb$éòÖP[ËÁóÈvú1¢*+qòØ½gs5¼Á”í#Ö»ßëPßÄQþIõ›â?M§Ÿ2ÝKÂ1\\ÊNÖÎv–¥bãr\"W‚ìúÒÉU†ß­r>ñcN<‰ÎÙ:{×S¡Ó®TÖ-r¡hŒýFùí# w ´Ôî+l Wd„+r¾õ$8¢~5QhI¦D’ÞÓ­lç‘œ»å}\r[É )àª‚‹$j¬†Åb0ÀœCRGoˆëëJ\'l£åÙŽ2{Ö2Ê‹Ü4|1ù}M[‚HfÝÀ|ö¬Æ;†5kO\'É^\r$œ‰V3<Ká85XdšUÞ¼ÚæÒK)\Zc(À÷¯xEÜ7(ëÞ¹xNRÝæˆmGï[ÆVÑFÇ”\0A$cò©#/7#îâ¥º²’ÎVŽe*ã±¨c\'ÔVé¦\ZžŸðóÆ+4_b½“•û®Æ»èÄgsÇ\"¶Fzñ_:FÆ3¹†ëk¸ð‡‹%ÊÛO ÝÐÜV2õB=úÜòÊk*+§wuÛ€+nY­‡ÌzUËu‹æ^§š€vèWÉvå°jí²‡v	ž¤g­Z†ëÁ”lË¿rÄ±;)(pËQÙÉ4OÉïÐÔ«{FÀ•É÷¨–örà\Z6š4‘·Ÿ—šƒQ‰oìçˆñ¹HÍT\Z¤*o$TgT¹\ršIi`\\×<[V°kIg‰Î\n±ZËÑ—7ñÛ¹¤‘@Qõ®»Æ–áuId¤œâ¹½Õ¿á+ÓÜ·ÎRqõ¨¢í6})*˜^hô>žÔ<9§¢5´ŠÈ\0Èèkçÿ\0h3è·“[Ì0§E}®6|Ãh#­r>=Ð\"ñ&žÏâ>U»ÖÉÙŸ7Ò>‘|©Ž*üSÆnàI÷¨uKIm\'‘$R®§~5{i;þö\"C-k³6ßwÿ\0wkÕ~x›í°I˜£à{Šñ«Úî0®y^Mmh:”º=êÏØTàç¸ªÒÄŸVx:Å¯5¨H)¯fˆ*®.åæ:­œWœr ×«c\"¢â¹©+ºùl8=*ü*Ç{f¡‚3#îO”ýÕ\0³ÝÍ44I†Õ~•(ÎNqŽÔ–ñ·Ì\\SÀÈ8G@ˆß,\rÜcw_zBrÜSNäúškŒ©ÝíTPÈÕ3´ŒµC}¦ØÂƒœñSÅ\"±*W-ê*ÄiÉ¬ÖÄh‘ŽúLƒjùE_µ²ò““V€Íî!ª˜Îy¨äc“Š”0$ƒ×Ò˜ÉÉ=ª]ú©±/»-‘ž	§¤X•›=iÜ\n~^ùªJÅ*pi„˜Ãcš’¨ô¡2\"Ï©Í/\0`zRˆÁ$g\"šc*sœûQvX œRW…ŒõéJä(©©ÂÜÓ€\01?wÖ‘ õ¨¦N·­UýÑ\nB“)ûC÷ªÉ)Aƒóz±ŒŒQ Ÿ0€\0æ¢ùêØÇ¥	C•o÷©ÐÄc\r“–\'“U+_qÝW9ù³ëOE¡Oµ Rw†ÁSÐSÀìOJe\"8vv?-Lƒ\'\'¥,kéíJAÆ\0â•ú´ÐkÃ‘Å4žzS€ã4Ç~iìVÂ»¥\0óÍ;)¨ö|Û·§j\0V@{)>¤f˜é€\n»Ú£žVS´qL‰‹ä=²zÑ\\W0hÐ`ðM2Eb§,içœ°¼oózuÄª ©¥¸”Jm×ÓÞ¢i^2\0BÀÔÏÏ¥!\rÉëŠ`Z¡›‹†™,BPqS€6‚hxð»ºäÓCMlgÇÀÞ¡F?\'c¥\\ª÷	a€\0ëùÓ“¸X¦ó.H2(rÜ}k+Ä(Ó|5³_\\GQŸ˜õ¯ñ§Ç}KÄÉaá¸X+¦à\nkA¦‘ë>)ø…¤ømÜ\\¨áE9&¼c_ø—®øÆvƒFµ’Uï¥scI¶´ÿ\0Ä×æy	Ï”$Õ=WâÛÇÙh6‰iC 1¤¢º‚dZ†›:JÒk—å™y([&ª\\xïOÓ-¾Ï¥Z)â•Ç9®u¡Ô5»‡–áÞY	®›@ø_¨êL|»3ƒŒ³\n»Åfr·ú¦¥«»™¤%OaÀ¦Yè¯(\rµ¤5íÚ7À†t7oµN2z†…ð{EÒ#PÐ	X/R½é9¦´¬|»¦ø2úúEXm˜Ÿ]µÛé?5[µaBké;oØÚÝ[¢`c…«¶Ð¤%¶¨QŽµÛn¨ñt‚;‹q¹Œt5äÿ\0<?$—0@NJ\nõ\r:ëý“…¼â^¨Ò=ÉJ®@¦ÝÌUÎN9È`èÜŽà×Uá¯˜‚[Ü7ËØ“ÍyUŽ§<r”9Òº;{…ÇM¹ãµ	&µÏn¶ž;¨ÃÇ4ÿ\0+Ýy¯7ðïˆÞÉÕ‹GÐŠô]6ö+»pèà©íXÊ6ØjHCd}iVt9\Z±%°`Î£¥dµßäuj„¯¨®ËÊÌÅ½©¨¬¥‹6j›_m]ã&«IÎzÓÕ–Ÿsem«¶²©Œç¨÷®v×}À}êÕ½ÄŠ„“õ¤•4Ž–ÚüBÇ,\núf¯$É:î\"¹Hâ–d`	9ö­ý&ŠØëïGÒêbø«Â1j0´Ñ.&äw¯/½°’ÎCñ•aØ×¼©\0ë\\ÏŒ<-©lòF6Ì9œ%m^çIp–ªr\n¯­:ÃQŽV/ò;Š“QÓ^Ô¼S®\nœsXqÛµ„Ûâ$¡ê+Au±ë¾ñˆ$Aprq€I®ïrL7kçÛK¦À17s^›à¯-ÄBÚà‘\"ô\'½fâ’ºn·5u¸¥µs,g	ô¬„¼˜ÿ\0v\nÜFC¨e=+\Zõmì\\)ŒàòN+4ìZ\\ÛÆidlîbjÄ6÷2ÃqþÍj[]Û<a–5nÇ5¥§Ý#™€\\t¥tM¤aZéwr±ŸJŸþû¸Ûœ¥tÖz„1M€0}qVîµ›y°¡rO÷hcM£Êüi¢Iol“°ÝƒÖ¸ûÁe¨Ú\\€1ŠNGl×¨øÀ5å«G·\nsŒ×•ÜEå‡ÇÌ­Y½Ï¡ÁMU£*Osè­>Ho,¢•pÈÊ4²ZBXíï\\Ã¯ý«Gû4×\n†dö®¸kº}”X’éþ¹­4è|ôÓ¦ÜYÄ|QðjËj×ö©—O¼½yM³aƒÒ½Ë_ñž”öSEæ‡%z\nð»»ˆÚþfO•ñZÁ¶Jh§}²›zp‡µ^Ò$3*[$\neÎÉàÚy8¦ø2“Ä¶–üÒ\nÕ&>æø+¦­† Àù¶æ½	ŽIãà1m|=©*+xFÐîaƒPØ’c­J€wf¬¨I*+U%b¬´RZ\r=Á$µJ9¨|øÑ¶3\0OLÔér­SÔ”Œ›§íÚyéV#rFi$ú	k±P(Q€1N^½3V¿ÃLØªß$ÐÕ…©;ñÒ”m9Ï·ŸZAâx5(›î!\nä:TþPÉ¦4A\0ÁÎjíÜ´ÓŒ46òpÜ\n•N2*1RÜw©Zbíã×…»Í:Š.	ˆ¨NxË{SXt9©S9àâžB®s÷¨Šì@X\"dô£0ÈèjSÎ•(‹#M;Š¢RdÙ¶§S…<Pbý*A	n$`ö¦¶ÊË\n®p:ÓÕ1Ðt©°})Q7ô4\\\\Ä%H÷§}Õõ\"FÒj6ä\Z/ ®F„œç¥!<ŒTÃ`Cœ–¦É´“´=\r Liê\r²2IÉ§îj_ y{ò:ôªZŽåhãØÏ’H\'4¡wgR¨P­‘ÉéL9ÒL.4®z\nkgÉô©ÏéM\nPqÉÓ\Ze)!`AaøU„Y;ò¦£ÇÓšqØÄ‰W?Åõ¨gagìMNˆªÍ·¯qéUåfrCp=*·²EfUbÒ(¬9Å+.ÆàåjÀ%Œ·ÜÇ“h<‘\0`ÃŠRŸ.Cié±IÝóØ¬}Äv^²šêæe‚5ù=ÉK±næî+8žId\0É,q^\'ñ3ö†³ÐÝìt½·W0§ \Zó/‹?/¼Mq5†‘3EeÊ™«\nò‹Kû}5Úy[Î¸\'p÷¡G©G{>Ÿ®xÒY5M~ùà³ÎíŒØ\0zb©êþ9Ò¼7fö:!¦Ær+•½×µ¶‰¤œ/”‡ƒøWàÙöûWÛs¨–¶„œàŽMXE7¹åÑZj~\"¼v‘¥•›Ó&½#ÀŸ5A„—a=Û©¯~Ð¾i^µT†Ù÷ˆäšèlí¼Ì\0{Öwû#Z†þhú2\rÐ‡uÇ-Îk³´Òá¶R¨TvQW\"Ã1MJÊ2B“ŠI	ÈˆÆ}(ÜKpH¥xŠ\n`Ž‚šˆÉza\0w©TR0„dïSf„ž¼õ²²eQÐWˆüAÔšË³%Ûœ~5égVóí¥ÚsŽ+Å<k}$šÃã˜Ç}è¹0M-FøjX-ï® íVu[ñ$þd(“‚zÌÒ˜4›™~PGZÙÖUîÛÎ†ŠUŠCwc\nJèB8Ê“[žñÖS++nNàšÌÑ¼D“[Þ‹Â1©n,£3Är‡Ò—*h^Òuèõk}¨Á[¡–óHó—pûÕäÚN­-”þbHTŽÙé^¡ø²+¸Ds8Y09ÍdámZÚŽ]?fäw×5\"i±ùŽIsr–1ÎªßZ.’8ö4ÊÄw³¾¡ËtjÚigrð=júÙDŠr¬˜¼Cg~[MŒv¨_Å6Q©aaO^À’]NžÜÛÆ½§P‰Fr@õ®._\ZÛB¬7çYÓøó–8€^æ’‹z¡Þúžƒ>§\ZD]j¯¦fG\rÇÖ¼ÚëÆ×ŒˆêƒéYsø¢îN<Öÿ\0€œUF\rŠö;i¶zŒ2;2‰pkÌå°dÆì\Z–]fwcºF`GLÕ´É\n7â­Ò\Zv*ð’Ê3ê*ý®¢ñ0a•aÜ\ZªÒ‚#9¨eÂ¥€Ü>´ÆÏeðÄ;O²ˆ¯˜$€pÇ½n_øÓÃòÛìyUØzu¯‚à:åjc ëœšÍE¤ã±ê2x»I€¸…I\\ðqMâ¤ í¶$úâ¼Ñ.U{ôæž³†\r€p)û(—Í\'»;ù~%:c¶ª·ÄË¸ã|@¬Ýq1Í¿p°ü3RÕ(¡$v\Zg‰oõó\'ÚHUQÀÏjí)Ç´¼+˜’v\0:\ZÄ½O7Q™³ß4§Å£§SØÖæDO4¶så\\¢ŸJ°/$qŸ0ŸÆ™*}¢×gñ¯ Õ{a¹\nŸ¼8¬h´ÕŽüÆŠRUWRv|ä““XóÊ¨ÌIàž¿m¥±`OQíXZâýš6=×E\ZÃãq\"är+¶ø=¢®«ãKBcÞ#;‰æÚUábêT“í_A~Ìz/ö‡ˆd›`\n>SŠ\0úÿ\0C¶òtÈPöQZ,®ÓÒ–„1,kÐT¬Œ®Þ©ëroÐb.ÑƒN9È?…*g4£i4®&ÎcÄ¹Õu;iâ¹h#„äªÿ\0t°Æb@82&ð}ªAšjý«DKŽµ –LóR4iÇk·çëN*ÛŽÒB©\'¨Å.îq@\0«Ô…	^\rhhF#MìGZ³\'Íòâœ±ªîÛòÿ\0µH‘qóTD›>ƒ\0Ê“éP>sƒW<µô¨^2Å²yM\\‹rîDcÔPˆÀæ­ÛÄ<¶úT^K!o—ufÕjW#*E¼dN[l\rÍ÷jd†)u±QJDBÝ‘ÍBbaŸZ´$g-¸`Ö”D­ÎÑÅ³cå*Ã	vÁ©”]†\rN}*AÐ¯cëV’‘[k`7J‘cŒñ…ÝN?u·ßTÏ0:¶æZ­„•ˆñÁ=…:w&IÆi#]ÙÝÀ<k±\0\'8ïYÅ\\#îBÑy}(Œ®ãŠ{:ÊYCÔ¦$9«g ¬®KÙ7eECånb«óc½IëÅ6eÎÞô0OB=§ÁÇ­.Ò;N=qRÅ\ZêÇ/Qï1‡PA©¥bì4ZTžpi´ÓòçÞ’BµÃiÉÅ0Ô¹àŒã5c“Çj¸—á²4Ö1à’¨§ +Ž3K­…ÖÄû*}î‚˜\"ósšŸ~d›Î8©äéÒ¨KÞ)eÎT|S‰ÎÑjÑãšÍ¿-­¤˜áBå‰4îØZÆW‰|Gkáý2[›§X£rKWÆ?þ/^xçQ’Ú\'h´è˜…P~ÿ\0¹­ŸÚâœ¾\"Ô¤Ò,®	³ˆþóiáš¼C÷³Kå!ÜÌqUØ„ÆùÐ2G’Ozë|\rðËRñmÂ7–V6#çaÀ®Ïá7Áõ–ûv¢¥ ê¨Ã­})áÿ\0ÛhÖ‚Ö8× u¤æ=ŽOá÷Â7Ã0#´K=ÀçyZôx`H€Uþù«0B\nçñ¦¼ ®ÐqŠèRÇ¡C€EF–Þb9ÛSª§ÜÛŸz³aíZw°¢µòùÆ\nŒÃ¸ÈËŠºÇ¡ó†	>jbØ-w+<!\'¥F€)ù›¯­\\yÖÝŒƒT^PìxÚ\rkPšìZIÈÄµPÖ#ýÉòÀ8æžWM=N@wY|Zsã[{¿/E‘ß!°[5æRE{<íÕ‰®÷R»hî„Œ±À®\")g”ímŽ[¥ka X,ŽVSƒžu–2=è·	á|\\uý3Ã†ÒxÝÛ;0~µèÚ¦ÉÚ¼¥ öªp’Ô˜×§+Äòø>M:én-£>LœàsŠ·á«˜ïí…´ÜÊ8Á¯SÕì£p #°\"¼ÃÄºé7mydËíJ(¨»Ôü?%¹2Æ8êk>¢ŽT6WU kë~\\ŠžjŒ0=ë#Ä\ZDP1™>Lú”ÒdØªºŒê.OãSÚÍ4¹ÚY¾•KÈù~ðn;WÐ<éW\ZŽ£n“Åp\0‹pÏÖ±o•\\KVxÄV÷RýØ¥b{í4ÿ\0ìF\\¯Ùf|ôù\r}_¡xbÊÂâO>Ö$¯È8ö­Ï³iÇvÛXU}\nÎ5_DiÊ|CyÍ³<o«È#UfŽyyÚHõÅ{ÏÄ-:ÂÝHmÔ Œ\rsnÚqB›;Su,Z…Ï\'X\'9Â1¡a>ïõ-Ÿ­wºœq@I…Sé\\ÝÌä–%8ªŒù†án¦\"y¬`¦šÚXa2éV$™$Fý*›È|²¥ŽÚÒæ|¤9™—?*Qrm\'ÍÎª—fÈ$=M!-Ó°õ¥rnmYZ¥Ñ(§kžsÚ¶ÓÂ™‰³q’A\\¶töÓsší´[¡qf`I\"›vsOiäÈâF*©\"‚0:î÷­Ý_J’ëæ†&o ®~âÖ[RË (ÃøMB’eZÚ–¡ŠOoÂºØX\\[ÊdØ_Ó®+ƒ7\r~l\nµ¦kS[³°=x«Z‡CÑ¬ù¦Âãšä¡hþßsæÃ$kw@¼{­:f~z×##•¼Ÿo$Òo@ŽRÜ¬\"fTUIwÃ8“o¥·ŽI	Ü*Ð‹íHËßµq6àî¦¡%‹¤éÏræ<m½Žõ‰ãCˆ u¦Ù»ZÊèÜàT:Ø3Bÿ\0Ä=kª\Z«žZNœÜY \"Ç^zWØ²Þ€Õn±·qÏñþ–vÜ*€HWßß³æŠtÿ\0\nZ’¹-?YÌÏTP]ªf€íÜy\"ªD\0$Ž§½Dòª†U÷ÍM‰å!#šTb¼h–RÝ‡sOH·ƒÆ)^Äù\n„(8X·|‡ÉÅV«vðåI#9§™*âÀOÍ“šsm\'­(ÂƒŽ‚šªCnlê)õ-]\"9®ßz!rËŽÕ!RÑØcP¼{g¡ªZ“¯Ä2Ga•#J’O›åæˆbß»xæ¦dùv©ÛP…«Ô:ãŠv8Å$*Û~M;hRqÎh¹w¸BŒHThÜ	\"•~lãµ-\"$e11¥S…,¥dzpi¬p¸\nJ#‹l¦f\09#–«qa£`Tn$a†U•\\8š\rˆÎs´\'´ãžµ6Ð óMÅ4Æ™Ä¯ž:Tb\n3óTÅ7¶C~U)ÞÅ¾o÷{UD‹ùVvÀlŽåjO+jœŸzXÂÆ¤îé÷¸¤Yî\'¥%âÆGØähnU¶Ÿ˜Sñ¹px¦Ì¹Fäþ\\¨­ˆ‹:®ýêbþè°ÝSy´:o˜²îù~j,eÒÄÙÎ9¦¢§ŒÖ¤xóÐSDŒøÔí¸âôŠB2§n$b……¨!¡@éLcžØ©‡Ë¸ÏJ‰±Ï­*;€ÂTÒ	’8÷¨e$G·×û´È,„©È=êÔF‹%¶gŠ‰ã\' {S¦\"4<äÖ{Þ	$;j¢„Òz÷ª7ŽÙ¯ý¢~\"øJhmåÅÝÀ1 žzšô¹®ÄQ»ž08¯Š?h¯·ˆüi$*ÇÊµýÖ3Æ{Ð“\Zhò»‰^MÎX™d9$õ¯Zø\rð¢O^Fî/ôhØžæ¼×GÓTÔà·A–‘‚×Üÿ\0\r<;…áû[8)ÜÕ¤•…½”\"€àVŒ6áSÿ\0×Wd±Š‚^™\\’}k1ûB§\'Ö‘­Â¨9ëÒ¤H£E\rž}3D¨¾IbÅcLÈ±ŽaëQÃ&íl)ô©^åd÷§Ekµ2N¤âb2G•BUÆì}ÚÒ€XíÅe\\Í¼¼çG‘Z1ŽÜb£Ý’G¥(äÕƒ\0q•:Ð•-Í’jxÜ98#¢ÓVÛvàNN\"òSnx¦ZççÇˆ5e[t@rÝx5•£L÷š„q¦sœ‘Y÷s®2XÚ»Ï„Þ¹ñ ÷\n»b‹‚[Ö®šÖìÆm¸´Ž„G$È«YÀWWá½îæùAºí?ÂvºdEö‡“¹4³º*°ôí[NI«#’…\'yäß½1¿ËjÉÖRÞ9^F]µh³Æ]FÖö®?X²–òÕ f*Ãšä]®vü;u#6•vnm‰òËgmIâ-}nô²S‚F\r:ú/+|NÈjd¬¯\0,@=*Úhµ+¢Î‹¬:L\"‘‰@Í}©ð§U€xÂÞ7]ÊŸ2“È5ñÇ´í]vÚ»¾`NGjúƒ@Ñ^Æê#*}ÑÒ°šº£=@ÜäzzT\r~ ›?eÛ¤“»ƒV¢±•¤ÆÐqë\\–+™ž{ñoOûU¸½ˆ‘°|Ø¯¸Õ\\#©\'xï_TëþÒ´š	*ãÅ|Åâ]M[º³™pQÎ¨íWfm6Š:v£$„¬Ø3QÝê1£T(5+X%¼&Bã8èkQ‘¤8*;Õ­^„¹Yšâ7c·éT¦]Ä•lûUs›™°~µ4@ëË*–†~è‚*JÕ˜ˆbZ†=Ä ;}ª+5·ÔûqZ-FÔKJŽÄž\rv~	±óg1Ì}1\\4V2/Ê9¯WðNšM”YïŒÔÉÙ1Ájtòµ¥¬ªÞ‚¸o¡¿,¡0èV½\nÿ\0Â³ÜÁû‡ØÃûÂ¹û¯Ýy€ÊË¸zw®Hµ»gO&‡‘ÞØOàQA	L“’G¥zoŠ¼6‘é¥Èù—œ×®Ælà©õ®ºnèå”luÏöLàž2NÒ±<Œ^Jã¦NEt‰\"Óga÷y±¶\\ÈjÜt¹1z‘ÜG\"ggÞö¨íZDÉïšÐW#ÌÇ¥néúw¦(#¦r¬lšÔí¥UÒš”YÊßÚ‡O9OÍÞ³n®Éu`v‘Ò»ßx>OÊ‹+oWó®+R´Û›Fàkž•U{t=ÜNë4½­=Ìÿ\0Ú}»_µ„óJún¯Ò_…úwöo†­£Æ~ELWÀ|5.­ã‹@ñ7•nbú?áËUƒG¶@\0;Fk¿cå$¬õ\'˜	W~ª­©ÎHö5q¢,øïRÈFß-MŒ¢Ù^0yÛVSi^ÃéUÄaäÚ§#Ö§1,}7ÿ\0ÀiDjB¢ÆO‚*Q…\\*¶^7}«•úUŒ24	l*ŒöÍÇ^”ª8<àÐŠ\\àR(@ ‚j¥ÃaÏ\\*TïŠ .§9ÛEí°Zäv®Î	#Š°@Çˆâ\n˜SÇÝÁ\\W#W>”ì†àñG–\'ò¦ãò¤ƒpÁÆjH‚ã$f“iÊØèb¸˜È¨&Œ²2ƒƒëV1Á>”Ò›W¡>â„(•­mÚ0À°9©öasJ/9¥P1ëEÇq¨Ø”•\'ÒŸŽœÓ\ní=h\Zd?tã8ZG]ÅpØ¥(9ÍFxlmãÖª)¤ƒ‚“ša:R–çhÇ4õPÇåUpVEke/¿</O­JÊzb¥Á=ª\"x qBwé †må†9êiHÅUœ’í·=9ÅQd²L˜#qÿ\0€Õv™Jœ7áRÀ«µƒ}ìÔO÷²F¥KÚä\\fyÅ¶ò>•åÐAŽyªë<¥ˆûÞØ¤\"Ñq¿æsŽÕWcË!\"¦Š6ˆ±sT˜Ôˆe•–FPØyîA¹©\'€HF>´Ãn\"ˆ“Ë{Sº7q’3yg#\'?z²ÕdXØgÖª4xbãžÕNVTäò*V¡žñ¦¦Úf…s3¨ù#\'$÷¯€uë÷¿ñä¬Ù\r!$×Û¿oD^¿!À>QÆkáñ›ù	lÜÕ­Àî~[ŸØÄ1†g?Zû‡IˆYD¤‘Œt¯ˆ¾Î¶ž6Ó™Û\nÎ&¾â[q5¸elàZ6X&YÁÀâ’T$¤z«¦ÆÈŽO#u_1—5–ÏA”ÜÈgmXXB¦ÒwcÖ¦X÷6ß^†«Ëº)7ù=)Þû²ª0F85êcg©ÕƒƒÅC4ŠÜÓÊeKˆùÚÄ7j¨·TÌ]•Ì‡$\nˆõëš#®ÂV)ÅÆp6Š³\Z€9—Ë‹N;\Zp¦˜ÐÇ‘U6ìÍ+.@m¹ô¡×±4Ó)ØÄ/CŽijÇ¢GæÅ¦™æKó_OüÒF™á4+-)ÜNz×Ïz}«Kz‘œ³Í}UàøËAµ‡#äFqíU¡ƒd×ÜŽ•:œžsÒº+õ\rl=+•L‰&[§jMÜ9’ØËvIÓÒ°µ=èì¶Jù[°sYú„¨#m£æ÷¨²[gcÌ|[b ¤“Þ¼Õ³,Ï#y¯Hø‰~°Ù²ËñšóËYî:‚E%&ÊJÇ²|ð¹ž[FeýÚáWŽýÿ\0¥{¾2-è8àW\'ðßI\Z7…­ 1üÒ\rÇõéÑÞ3#/>†¥1»\ZZe’Mq!ÇõÑC¡ˆ0¦i±F‰ó(ÍmZÎ#c*kžKQ\'¡žº.È‰¯Ÿ>6x7Ìñ$sÀ7Ä7}ry¯¤®/Ò8Ü¶Þ¾cø¯â/¶x†âC#O•px¨K]\r ûqy IRs‘íYi6öüí¶/|B9\nsîM`Ï©›’ÀÊµW\Zó[FFsôªpÙÄ1MšG\\ðHª«tU˜¶@ö«ˆ%°‹k>1Žæ’Hão›©žº‹2ãvwSNgÝ¸Öš3Øµ–e\0ä×²ø.ÁÛJXBƒ’v+Å-—®{^ãá»ÆFŠHFX(ËV5“±½-õ:ÙÇ’wÉ¬ReÞ	—œô®fïÆ­my,r0bA\\þ¯âÆ™X†ù»b¹ãMÉ›9¥¤ñ…Ôw:|‰öôäáÈgBv·@k^ÀëzµÚ¥¥¼ó¹8œ×¥ø[önñ‹d3X\r>2Fã9ÚqëŠìŒNg.cðäxÒ$îk=:æêéâ†‘Ëc\n¹¯WñgÃIþÏý›q(v1ïÈ÷ÏøW¢þÈÚEî¯â´ÛErÉlžjçiÜkmÌµÏ/ðwÀ?kA%M2V÷KŒ/Ö½Áÿ\0²F¶÷\\jÑÙmä,Ycí_TiÊ–‘„XÂ€:(ÅiBC{T¸)n\n£[ì¿¡L“jO6¡;ƒó1À_ ¯~-ü5›À)»Òæ;à\'t÷”ç~–ÝB³Æ8¯ÿ\0i6?xˆ[¡\r:ð­Þ¹êQI{§¯Ç:3q¨ïy¿ìé¤¿öÌûcI`+íM: p5ó¯ìÿ\0áY´[¢“ÄD¡û÷÷¯¥#HUÁû§1ÆUäâ´ ž#–*0ÔÕƒ‚	ÎkVÃ+)\n@ªÒÛˆÛÛÖ´½Žo‰ã€FÞjPŸ/Aš1…àÒ©QþõHn&Á@UÎ)ñÅzÐ\ZØUP	©£µ÷qÅD½y5e\"8çTÓH‚±øªH!OÍM\\nºTñº¨;GëBW)JÛ‘lØNJþ4†7„f¤PHïJ°SŽµVÐˆ²°O‘˜þ$jvíçÔš0Ä(â¦òÎÆZ³æ±²]ÊäcƒJ r>”2•84ðÆxÁQÖv2\n§ô‡p‹È0Ø\n†ÝšüÏ›¾)ï¡¤WA«“8¤Ç‘ÅIxTÿ\0v—	ó7ÞÑí çµ\"àÆ)g\0~4BFy»Sæm	ÆÚ–Œf£c…8©|¼\ZnÞzb… ÓH® œTª6ƒÞ‡Â1ÀëëI»+žž•HÓqùãã4üŒâ¢n„c&œB%t¼VÎTŒS&]Ä°pGÖ¢äg±¦98<RÕ†äÐ¸Œ±cÇ¥$’	p¨Bš!{\nH^@ÄsÎ*¬O‚Û—mX~ã5U ÇûUkAÆÃ\Z}¬àº:ÒHLÇmUžPˆû½iÖÌ&Â0yÝÞ“ÌQC7 qLv+éü<T†#æb}Éª¯!òÊç¾i©\nÄÎ±ðO”žZH9#Ÿâª2“)lh&9ä{ÒNÁsƒøåaž»ðá3_jÍ²íÈf¾úñþšúÎ—u	çrŠøWÄºqÓõ+»v\'t.G?SIo©Iè\\ðÖ¦lï­®·sƒú×ÞÞ\0ÕÓ]Ð-n#pwF3ƒ_¶…\"<÷ë_SþÍŸ£6ÇG¹”¬‹÷2zÖ¶3nÇÑ1í†VúÕÅ%xPÆ³®ð@\'½Y‰²1œÔîÐo9?7ÍE,bÇŠ’XËÇz‰äžM5äU®ØE?\0*³drF§Í\"È˜—=©›wá]°RºBzè6w]Ç`¢\nI9üêfˆlÜj&¸È\"£áw\Z°Ôâª5âŽýªËÂ¯Oz®ÖŠä‘Û©ªM1¢Är¼Šr`ƒ»ÜCÔâ˜³†ÝÇšnÁd|à‹#}¯YÅ‚Í¸f¾£±ÇF6¨ó×Â+E—^˜Á\"¾µByèzÑŒÛÖÂß2ùD§½s·2Ñ°¸5³zÄ#g©â°nœ\0Ëžk7Vf]À*ŽÀ¡®sQ»b»xÁU‰\\ç½q~ »T†FU\"—B¬Ï5ñÌíw¨2¹ƒV¾xlëž!µ€\rÀ°\'ÏÞ\\‹Ë·89ÜzW¶þÎÞi.§Ô\\p˜Doz•kƒØ÷}2Æ;8’1Â\03[PNíBÀp=êµ¼$p9cVm´ss¨C4„ìŒt¦ôBÍûH‰\\c8ïW£ùx\0Šhšx°Š§&°`®kš+$sµ“¥xníÖq…~RN9¯—µ\r^Kås?Ì3Þµèß¼Rnf[$¯V¯!adÇu¦‘q³)\\G²`qš$ÒÖÚ/;Ò¢b7œÑq}#Æca€;VŠ@¼Ë`#[;éëÞ³¤¶VÎ852O¾ÙÁÈ¶Œ%%B’(×¡*ÌÌhðÄw©íòSh=+¦Ð<©xS†kIYÀ-°àõ¯¯|%û$øSN±†Kñ%ôœ9\'åªJú‚µµ>/Ót{»ÉÃo$ŒÄ`\"“^Ýá†^%½ÐvÃa*»|£*F+èË/éš-Ü–Z‹l©tª1Ÿ­tÚ~´låŽÚö(Èâ5x¹P{f«—›F\\n•Ò>sðïì‘©Ý‡›V¼H›$“Šôö`ðn“†¿Íã¯?¼l×u}«êyéD‘Í°ªŽ«YðhW—ðÉ+]ŸÝ¹ùXóŠI$8©½Ý‹ºNáÆ£O³sÀÚ£<W] êªÛ;F»0y\\s\\Ž‰§Á-ëm2˜[<ó“í]—ƒ Ùm$¯‰‰Æ¥\\le8Y=O™ÿ\0i¢Ðø²>àÛ.sõ5¡û<rëÞ&\0p!Œóõ5ŸûOËçxÖP†ÿ\0öjgìmp¶^1×¢wÛæÛ \0ñ’ÒŽ¦éb´‘ƒ•ÓáNCb±®5hâ\0Í\nîeqM³Ô$–ö$lRÅ¼5RÓQFýM^ùm,\'•˜\"ª’Xž+ä›ûåñ/Ä‰Õ\\H¨Ü×»|L¹žÏÂZá’b¬9‰‡¦Gÿ\0^¾~ø+aý©â­Jÿ\0qe	’}óPŸCKYÓàÍ;\Z”ò/U®ôÄÀíXµ;ndþóp}Eu!‹åQÀ¥ñÙ¹ ápµ8–™åÅ0\\.Íª1VQ· =3HJéØ…\"Spê´»sV$\rµ¸ª’FFW5)Ü¶Gæ\0ÄTÐ®âAéÞ™‚3SÅ1ùGJds\rÛœ~5jH,ß/Ö– n\'\"Ÿå‡ÆE%.¤ar¯Ê)²7^7TÛ«\0j0‡?/ËY¿ˆ¸+ª:®õmÕ;!çæõ¦G^¬Ôñßæâ«š$¤28T|Ô¯þË}êx\\PÔ‰ûªÄ`1<ãýêùcål¯¥Jc$ã8Z…¡`Ä‘Bi‚æ\ZHÉÀÀ=¨PcbAÎi)é\"înjŠˆô;‡Ì)ÑmŒ7+µ©XŸ*ý)Œ	NiEØÔ“;{Tj<µf55ˆñS©I…ª%jÊç¥0„÷©Èf%—õ¦B»îçŽsH•&]ã®i8#­XXÀœc­&Õù™[uRcÕ\"ºnÁÝŒûT2+lln+êMOMçi«CµÊ,æ9¨„-&JŒâ¤›‚TÔLæ’Ð#rÅ¾*ÇQËò1xzÑ.HÚIö¦·Ý4Zˆ¼f©Þ(^xÜ*áJ§u‚Û³ÏLS)hU‘r;SÙä7oÆªùß¼	œ*ÄN³€Ôl7€¹o—ëY²¦àÞã«ò/œ£õ&©º‘òžiŒÌxŒLAèz\Z‰ÓÌ<­h\\\"…ËoZ©\n™Ø¨ázÒô¡{n¦&\\ðÃ¯‘><ø1´Iz‰ˆn9cŽõö\\ÖÁAR2=kËþ/x5<MáË„Dýú•±“Þ¦ýK½¡ðìÑ›yØŽ™âº¿x–}þËwÚèÃ<ô¬Í_M’Úâh$Œ¬ˆÄG5Ÿi7Ù¤éÇ¥ohK]¿þøòhqK0(3Þ»‹@bgV<WÂÿ\0¾$Oá\rV	D™µb7¦kì-ÅvÞ$Ó¢¼´2²‚@=(zêˆQ¶‡\\Çä \Z¨ÌÊ7zRY»¼mžG­C;¯˜ã4“îVÈj¡F2rqéMÞ	É4ŸiÚýßAQ$âSŒœ\nÑXVèËêÊ\" ¾ì¯CUvß?Zi8)Å»ƒ’z+Æ²6È˜€3U¡‘˜¶Iü*V_5YCT0À!œ’{S[P\\8TJ­¼;Õ‰¡äìè*\rŠ;U%Ù‰ùŸ|/ÔçÒŒÓGÆáÞ½wLø’m¸0àšâ¼ðúõ´E¸Œ©Î\rCªèW¶lÌÐ±_Q]‘¦¤5ÎQ•Ñè7>3¶¼bR`öõ¤:”w1‡¯¥xìÓK8;”ŸZ³kâK»d*°W;¡%­Íã^úXô}VèEàäÒ¼ÃÆzË[ÀÈ§–ëO¼ñtò£#°\0{W¯_Iy($õ5Ï$ÑÕstôi.GSŽ+ëÿ\0ƒ~:?†má¤ˆ=y¯˜þh²êzô”Ü¥†xí_fx~Ím,b@¸( zQÐ±ZŽëìá?VŒùqîÏBærò¤àVU%bà®hI¨†\'sŒzV^¥­Gkk3“…PIÏ\\£¶y¬­jÕ5g¶r~n¸®tÛ4Iâÿ\0mkw‘…-…ÕÎÝ\\¼ƒ^ãÂý2DbaÜ{1ªðÇKE`!çÜV±in+ØñƒíUÞg2•ÉØ×¹Â´Ó‡ü²Z†÷ÀÒ¡78‰:e4û¹âñ3»Œô5õ×Ãß„~ð¯-µÍrÞ6 O+È8æ¼—ÂþÐ<A®[ÛC:9i9æ¾Ç×t\r>çÂ²Ø^ kD‡qØþµkä§Øæ¾êz‰,æ¸Ò,â}™ÙŒ×§‰‚X°N¡O5ó‡ñZãKOÐt¥†ÑhÚ½kè½\"wþÃ‚[¢i\0õ#š´âÖŒs¥:vsV¹Âé—RHž&fVyC <ç{V¥µ”—–6öÊ ÊÓ,Œÿ\0Ý³I,\Zl#wEÝŠ8ÉäÕ¸5O³«%´XÝü]éZæüßÊ]´ÐîV{™¥Q\'å«gcelg\r.ó)Á¬“åÚòìwKÓŒ(þfXœú\ZîÙ~GµÒ•jC\rÜµê÷FÎàÛÁ—P6…?Î¦‡HL$›ˆÏz™æ¶µ(<R×¡\Z3åŒ÷^5¸’qµÚð=8?Ö²ÿ\0fÚ_ˆ—I\nˆMßýjÛý ž&ñyš\n©ç9#5Æ|ñLñÜÒ£,e2¼ã½RÑjLbÜ¬´å•L³Ì¨eØÇÔf£k ‘P`Ú¼’ïâ½Ã¬±ÚÁ´8Æ[šÂ¹ñ&³¨ç2¸_@H›œV·;éàêKuc¢ý¢<cg¦xFhMÌeÝprI¯+øâxáµ¼ÆZI~\\þ5Ä|hiÚÖYn¤×eðBòôØ”î‘ûÔÂ¢eO\r\Zió3êo[5¶—<;ŒóZ÷‚dãð£M„Ge\ZãT\n[¢6m­.ywV*/<ñš·ÛÇðîªq(QÒ¥bO9÷¬Ù³,´»wTHž{1Æ(µÝÆjÊ®=êPÒor%¶yæ”#8a¶œ1“ÜSmÀV#iÙ\nèXÓ\nU°ßJ’ ž˜ö¡˜F6úôÛD2Ü\0éÒ®á¦ÂÉŠ¯¹ã5#!\'­*¦2zûÔY¶i~mýªNTÿ\0z€q\rÆêP†0yù*leGÝ5^fecópjDÛ—ÇÌ´×pÛzÐŠnèjÄÌ¿~Á—©¦\rëgp¢9`:®R¡ØfÒ¹¤(S¾iYÎHÏÔr¤äd\Z´&„•Ž<ä–¨–F\'8È©÷’>[±Ó]JÄ0Fã\"–4Â?Ê»…8³—o4‹êÕWˆÒì;H<zS†HÝŸ—éMoÝ+™í\rƒÿ\0}TØ®aåKœãå¦²F\0óNI]ØÅ$˜Œ0ÏQÖ‰þñYŽŽ;Ñæ(]§õ¨„ŠAp*º#}à)ï°•ÖâMnlÙËUD]ÇÅ]¹Ï–@\Z§ž2\rUÍI9Ç§8¦‡IíïC¶’jŒÌì€‘´zR%l[2„œŽ}3YW—…°\0Î\0«y\rL‚Mg\\©í\\œU‚ u,@«¶Cm~ž­PC#\0•³ýê˜ó8¥n¤¤iP.›5¿Ê1N·ÛåäpifùÀSÞšÔvÒåNç8¨¶ˆó´~Ujâ5UÛÜŽj°ùA8äzÐŠDC\nÀ‚¿ZÍ½µVI“uk«y‹¸}©¯n¬rFhÏŽ>=xôÍVMJÞ\" üÁG\0×‰Þ@pÎìkïïx^iSÛJœ:žÝëãø>_k²©	’T‘ÔRŽšµ86ûËm­’3×Ò½ŸàçÅ™¼-v-frÖrž•ãPXívÍK¦ÞrFãœâ·NäØýðîµ£f·Òù‘¸Š»+oM|ð‡âäþž+Éí$ldÿ\0\r}?¥ê±jVi4N$V\0®*yz„]·4 E\0ã{ÒOÇzS ”¸ õ©;TÛR—r+Ë©´u4¶ÌÒÆXö¨$9vç<ÒÅ.ÀOcÚ«—BÔ™GÈBá[éI´Ç7WªñÊÅˆŠ™dwFþt­¦…]60]6\'§µFÎ@8Æ}hÆÜägÚ«K+««”x©÷‘)ÜñÍìý&+PFTmjn \"•v²+¸ÅbÃ¨J¦I‰!HàÅ%¾²nav”l à{ÖëMŽ~W±SSðµê¶cP}«ŽÕ<±	MÓµvÞ{²“»?SY:åÉA´¶N*š4ŒWSÊu\rTœE÷šFÀ¬^È[êÒCÿ\0<~Sõ¯Mð½Ö5ë«©\0û%ŒFG=‡§ò¯3»º7Ú¼ïœïrZÁ¾cH¥fýô=Ü÷ÒG¹S\0Ø×Ò6é¶>kÉþéeáˆÜ/Í)ÞIî+Ö F~Ç¥R²BOQ®pÚ[ÛAâw%ô­cfcÜpG­W¹˜Z@ò°8AÍr»6\\[)y$§ÝåG&ª¦ž\'¶7}jž“¯\\j×r¬6®-ÉÆò+¬Ó,ŒL]¨÷1CM¢t˜c´,@ÝŽ¢¹ë»\" wë]œª“JS$cµQÔìÑ#!Af«²6©l[æ#šñÿ\0úá’K{lUÜø¯o’ßnòÜ(WÌÞ(fñ7Žæ·‡ÓˆÔûg£vôìÿ\0á\r^óâ…9†Ad\'NqÏô¯®~&üL¶ðkÚiÒÚÉq|ŽÞ1’Ã¡®[á•­¿‡#³ŒÆª\"@;×¡]éÖúÖ¥ow%ˆ¸’vHË¿Jë„\\•ÌÝ“5´iÙKE·`Ê“Z—ñ,zyˆ0x#´–úfð»YW8®;[Õnnm­X1+)ªŽƒ5Ë±q½G«%¢;Ãsš°ºÅ´°S\\…Æ™¨^aU]pÄ’ÜdséUõ{Í£ŒãpÜyëY¹$wF‹{³µ_ZÛ’ÊÆp8ÚµJãâLÁE\0z¸X­	RK3œ\n³kn¬®§-X{[ltG\r¹¯qñR»ÈóÙ8¬ÇÕïîÜ’CŸV¢+eÎÕjhmÊ]*j]I3HÒ§‡•üDŠyu²®I^9ë\\Wƒaâèba€[i¯Eø¦­©	\nAÛÁ5ÂøNßŒìÁùZIBƒîk¢	Î<ÙÉB½Ñï6zd1Ä ÏÒ¥P¨X(\0{\nèíü-r,Ò@¥×nM>ÃF?-n|½¤ÃØÔ}^]t;ž2=Ï•>3^=Ö¸°¨ùc<ƒ^ëð#Kcc¥ _”€Ç5ã^4Ó£¾ñìð}õóB>¼×Ô_\n´XôÖ…#_’8Åh©(ÇVyÕk¹écÔXùq\0+>Kƒ!ÅY–ìaÛÔÕ$*ùù¹©ŠÄŠ3“ÏãKSÛp­÷±íR‘µK(Þ~´[BHa]¡±Ë-L„õ&¢26ÎŸ7µ>\0~ñ©QdüZ\"h¶.â)\0˜ƒNó‚V’2¤675GÝÐ¤Í ûÜ\n°Ã`¹4Â2¤ž•Qv“Ür®äù†(X‚’{ÒÇ’§\'4à\0þU 7ï/‘¶Ü“¸ÔÞjí##Ž¦£y\rØv4\0`»P¨*X¨SJæ\"\\RÉþÍ-dÁ÷#i÷.6Š‰›Ojº•û¿7­3ùÐ´õrÇ±¨±Øw©#“oñL¸ÚúŠ”ž3N…œHrxïBÌö…©Â)Z#¾¤®n…yPŽKn¢—ãŠYdÉeÛQ.Aã¯µ%°‹i]­ÂÔ_êßÚ•VI7&qõ¦}™Ô’A8§ËmŠŽÂÚIÅV“ ©HAýêr²ª¶ÓÍ=·)y™óÀ@ã¨õ¨ö°P¶þjG,ÇŠ$ó2iÚåÇr´ªã©È¨*Ìˆ]Ø»!\\‚(ÖÄ­ù§êŒ@=)²Èënç¨¤šÍ\'ŸvNWµIòSiû´ì?™Ÿi#˜ÙÛ‚i³Íåú’zU¹íÖ‘P.wäqT˜Ö„Vù–-øÅÌJ’	©Š»AÚ3Ú“csI0R\'µÞƒnsõ§ÜJÀà6E$Eœ:ó•\"Â6°?yº‘T¶™MÉcž¦¡•elàà{UÉ£`üÔD`‘œã½MÉ¿B¬1Û–â­•ö¦Œç½?ºzRa¢3o` G¼{ãÃEñ.—,ðF\rÄc*Øæ½¾â=êF:\ZÏžÕg¶e ÿ\0À–´²f‘v?;õ]\"[9¥¶š2®¼`ŠÀº¶{bGå_Püuø^B>§e]yuQÚ¾z¹ÓþÐ¥*Êh‰V[£3JÕ6Uvé^ëð{âäš\\éa}&è$ #1ûµóåÕ·Ù€qÅ\\Òõ7†EùˆÛÐÖ‰¦KGè^ŸpoaIb`êFr*ÚÅ)1ãÜ×Í?þ5I¦°¿s$…W\'‘_FéºÄwöË<n²Fã ƒI&ˆV$1˜ÆíÁ·wÇ¼?Þ‘çÜ\0$\0¾•ÊTp¹>•šæ(™*îÏ4øå=€íP,ÙRH<v§D–ÏJ¸¾à“yl‚›É%z\nvÍ„Œƒî)G+×58Å‚C#üÍÎ{Õ-JÞKm‰Œu4L.î¼ó—TJŽêGò®\'*Jô\0Ö·±¬dAw*ÞJwþèA¬sUó#rv8vòU·³ÀÎyÏ¥sÚnœú÷‰ml\"Éà¾;Q{šÁ+µ¶Ÿÿ\0Á}oR]ß	ë‚ýuáZ=°¹¾ERK;ã\"½÷öÔIð®‰ Àp­™c:3^9ðÿ\0Nûwˆ,âÅ\"ƒÇ½Jw4JÈúÓÀšö_‡,£PIX×–ÕéÌóNAê••‰·³Š5ÁÚ b¶´˜DQ–n´7¡œV†”eHÃŽ=ªb—eÑ—*Ü`Ð×[ÜõzÕ@I®~ššk†A¥ZØC¶8ÕÐ\nŽîT‰K0:òà(#=+V™¥ˆ*±Î{wªM%¡>¤Qê9¸ÈäÕÄwž7ãƒT´Ë@Xs[\n™p `P=ÎSÆ’ÿ\0`øcQÔ\\\0cŒàŸSÀ¯œ>iGXñÔs>d*ÆW5ô×ÅÞø£Â/§Y#)\'Ô\nó…_î|#}yqw\"4Œ›Wm\nÑÝ†¶=×á¾›m}}t“*Ëå…8=Žx®ºÙYkßÙqC¾UÀv_á\'µr&\Z…Ïˆ˜õW	?ð\Zô|#fº´ÚŠÆòXú‘Åt\'Ê’3ÑÜ¿r…­ˆoºG&°\ZÆ8nlÆÌw®šû1ÙñÁÅs’ÞD“”3H*ž¥Áò­KZa!RW#µrþ3ÓeºÔcKxZ\\ Ž¦»8g%1D’22kRÎ!ö}î€¹ëPãÌ¬tB«ƒ¹åVžÔgV&1>µn]ØØ4¡„“Â¨¯Ifb\n=ªÚEæF ¨ÏNk8SŠwe¼TÚ²<÷Ã>2Ú«ÝÆ|Ò¼ƒØæ·-ü%\r¼ñÌ±¨(;÷®­ Û‚4ÿ\0,ç¾khÚ-Ù®¤ÞìðÚÂpÅ£Ûjq«+ÂûŒþ½|ý¤\\ýƒÄ¶œâ9Ñ±ôa_c|iÑ…÷ÃíPmÉE}6œÿ\0JøÏPƒÈqƒÁªŽ®æSmŸ@ñ\\ØÆcPE`q‚+;V¶K].îWo»\noƒµ½ð¦‘q¸|ö±wÿ\0dU?‰:ªé¾\rÔfbXN+7æ\\òž¦ÿ\0â9‰¸É${×ÖÞ¶1Ø´Ýp>•ò/Ã›Èõ/‰T‡ËçŽÜ×Ù¾ŒA£\"ŸLýi-‰“¹:ó#\0Ù!½)P²1$CÌ|cŸ˜z/ò…ødlŽ~U©\n¼Ž>”ÔEVŽ*­Êc{ÏÈ3Q’àdÕ¦•{ÓK†85žÅ{„v‰¼¸úUà\0ÏÕxÂ¢pp)êÅ}ê’´& ;ÒíM\'¯4¢BƒE…ah4‹ÈÎsHÏµIÏJ\0ERÚŒR¹2:\Zg<óšenA>àD(Qzš˜HpA¨äb àf²éd%Ý‘²/ÍòóíQ6ælµeSrg½@¬Cmqœ\Z¤[Q#Táˆ4àTÍ&ÒF:T%ðÇ5HÍ]“@Ýž”ä…‰fÝTÑ˜ÍN²1^´—sMÔrHIù›ŠXœ¢¾Ú|+ˆÉ*¦ƒ´Âäµ8îggnaS¡*6Ÿ÷iÁ~µrùR2õ§‹’{U¤l¤‘VMà‘·AMò¤äƒV™ÙË0÷¦òCe¿>ôí¡Æ|èì0ãQlxC!«EÔyŒªò\n•vZÕ™‰¨í!c·Ò¥’S «lÙB1¸ÕNFùJ”Ái¤\rX‡z}£žøªòº2°Ü²È\"fÛÆê®îXŽztªØIÛBÂ•Hwc…é»­E3ù‡ eW¸¨ÙŽÂ	9ô4ø$uRwQ~ƒ¹Šd‚GÒ¤eÌWƒýÚ§3H€¼RH|¬•9o›qbÞPŽ71Ú:U%uH·¨Ëb‘gvF,½)õÐŸSN[…‘\0xïY×PÀûÆ§†pcaß¸ªwI¹·g\0RGpÒ’„…ôÅ]ˆ˜ˆ=MPŒÄÒü¹ô«¨KSUöJÔV;ƒyª3–‰y|çÚ¯cå9ýjäñ˜›\'šqLÆ>«gý»E\"îW9¯—¾-ü5—D¾šòÒ3öw9#+ê¾TÉÀÏø†Ò\rjÆhfpaÞŽ[ŸCâû!q\\ë[=»Ã^ÅñÀ“hòI!¹Æ:WŸ^Ø¬èË·škR­c&ÇS00\nÜzö…§Ñž;ÙLÖÄà<­x]ÆŸ-»±ÇëRÙÞHçœÕ«XÎÇß\Z~­­l“ÛÌ$ùÊš×ƒXÁÍ|—ðÃâµÆ…2[ÊKÚ’Éé_RxoXµ×,âÚU‘X}ÐzTµ`Z\Z°©–ëJ «õÇ½*¡Î3Å&	8ëJK}\0k†!€9& ž)väçØÕ–ÀÎ:ÕTQ¹Û*rŠ¤¥ª>s´š;5„çt‡­>òè`[ŽPrMeØ	/n·†Üˆ3ƒMº¾1Ã;2áºÑ-Ly¬Ìvë|îê7G\0×aðÃŸnº¾Ö¦\0ùQú×›j÷F8LKÒœb¾˜øm Eá¿iÐ¾c¡šB}O5=\r4G~Ñú±Ô<d-£åmc¡ê¥Uø\r¤µ÷Šcr»„`5s_õªø»Q¸2y›¦l}3Åzßì×£‚//vå†g­@ö=êùÔ\nÓŠß#\rÀÅQ·C¹²yUø¥ÜûsÆ*eäD|ËövË–$d\nKË ‘ŒéÞ¬BØƒŽHª“Û›…%›9&²ÖÆš²œŠóÈ+ïEµ “;ÇNÕ\"Û23R[!ˆ2“É§¡\Z“ÚÀ±~µamÁ˜·ATÄ­O5)»hí$™›…RÜÐ‹ŠemSÄVš|†)§XøèM`Íâ-1ÙöÝ\'=9¯ ñ­>£¨ÜLÒ±Ž{VÚø~+\rEÛ3`×ÖS½–Ç¨ð©sKsÞþZÚX&¦-œ9¸—Î|õè’øŠÆ;õ±{˜Äîp±ç“øW†þÌ™åÕÐ¶íŠ¤gßŽ?*ôM+á€‹Å²ê×&Cç—œcžzß4±çU¤¡RQoc·Ôœ0FÕ#¨¬E†36é\nƒ[zª+[°\'5ƒ&”ng2s“Z#8ll¤H±¨LŽµ7¡If\'é–p< dp«wåHÊýjÓ„·EÙ”ýêÂ³#g¿µ$(#sÅ/R{Öw&âÉ{,D²*ŸsQG¬C²‘ø×1â¯ÝjúœC!Ž8ÎO½lÛi\n!˜ðsÍoÉ&Ù•Ýô1¼m¬ÛßøcY…Wqòú‚+âûü—€yÇ¾äoÚ¼Q²îY†=ëãßˆÚÐüW©Ù*le%~‡‘Qx­‡­gø)«êZç„lR,ù6Íä6}±ý1]ÇyZ_FdÎ»z×\'û)\\—Óu«nc•dÓ#Ò¦ý£­ŒZÛ½Ãm,®}kg.}´U·<càVƒ\nëRÍ9õ¯³´øÖÞÅòªàWÌ_³v†¾r¹_¼ùÉ¯ªØ¤D‡8¥sÊC½Êaq’?*tEÆ@ qÏ_jtQ»gk× ö¸ýÒ®9ê4“ž[iò\0NÁÇÖ¢•$54¹ƒBÒ°fÝŽ(P«ÊíjrÁ´~´ÕA\Zºç=)(¾ƒ‘:•#ü*E\0˜¦$^Xl±¦±“ï”tî€¾Y†Üc½9Så÷÷ªä’yëRFå·nj1*WÐ°1Ûô¤Ç^* ë¸ß$/ò d…—R)À=óMˆþë¨ÜqùSE-…ÚsÍDc\\7j`Ç¦œg¥¸÷ MÂF_á§$\0d÷4â›œqš”GïR—qE¥±YÆÀÃnê¥)Ú2¿z´g#kgŠÍ›F{Qv«;c¸&R§¥[G8ÀäÕL¹Wõ«NÍÙjq*êÛ–Õ·Ç€˜÷¨Ì…rãOÀŽ2ªyõ4ß-\nõÁ¦DJ@\'úÒ‡#½8\'\nnß›+[§Âšfç§ÆñƒÇ½J\"]¬A§r¯}ˆ$õ¨™XçÒ¬9r»†£<Pµfl-²bzT7Œs&Þ„Õ«ˆÔ1;«2ñÈÂçƒ@÷+»\0\r\"HbÉ“ÅîH8<Š£ »ƒ†-Ý¨€¶ó\Z·ãIÒ–\"}Ýi”™}-„C+Î{š§{\ZÆð¾Õ<wè«†9jÅÕµp²´x$zŠ¤wlÛÃ)Á#‘šŠK‡ŠšŽÈ«©`@\'ûÔû¬Ç–f5V\rË6ìÒ)%BóÛ½2é—nÃÉëP,ÌéÄƒëM’pêAl‘FúýFÛ ãÞµa\Z–\rò‘Íd	cÛã4ÃŒŒ”!šßîG\0w5—w(c·8õæ«ÜÝî#?ð\ZÌ»¸—cséLE‹µVÎ‘Û5P8Á¨£gpwpiÏ8<Ð¦\'‰ü=o¯YIÈ•ÀÈ¯šügáü?y(¾,ðkêèm[ßxú×?â_Å­[È²D0ëY«\'rÔ´³>@š×í(ÊÜW?sa%¼Œ1+ÔüaàkÏ^Ê\n1‡<0Ç]ÙyÊA1éZ\'Øw9èîZ*œW©|.ø³uák¤¤2[’2„×˜]Ø›w;…W†c8=;ŠÖ.êÌ›v>þðßŒ,|Ib—Ò« †·¢s´œä\nø—À.|3}I’HÜ„×Õ>ñíŸŠì­äPäî)rõFIôgY,Ê›™Z¢ó,®Xt¦·ÍÇ9õ¨ŠìF*8…a¹{Ÿ4hs:ijË#š­â	¤ !ldµh[J¨UPg¹­sSó„ìFÑÍ6gr·ƒtwñ‡Žl¬ðZäÈôþªúoÇ\Z”z.{\"«Aü1^aû1øYå—QÖ¦n|´f­ßzÊØøRâ-Ùyßn=…KÚÅ¥v|Ávës¨ÈùÎç?Î¾Ÿø¥7Ãc/2Ùô¯—,b3Ý¢Ž¬À\nû/áíƒé^³·có,c‘N åÊuÖŠgÕûxvgÄÕ;[˜í³sÞ¯Ç8)¹O‘X¶¯q¤ËqÊBà~4(QP‹ƒ\'·Jh”¾Z‹è4ä…ó;bž‹Ÿ­3p#Šz(\0àâ¡jõ%Žhw(ËV_Š¯ÒÃ@»%‚|…Gãš¼Ùå«Íþ*jO¬vÊÇIo¥MIòE³¯\riV1<í$3ªçÍŽ+·ñ­Úi~°ÓÆðÍùW FSŒ>_˜æ°ükâkWXœ~HŽÅôÀ¯.œn ­+ÔŠ{-O¥eû,i:•Ú`‰$=1^õ(Î[$×…þÊ¡Ç€nœÎnÊê:Ô~)\\-êË–’°òŠþïgcŸ^•ìÓj1Œ­U«9.‡¸j yº÷ªöçkÓõ\'ò­FOÍÚ²#¼˜³Ž…q‚{ÖÇ<W2:¶NO”£ò¨a”˜ÁsÉÉ±Ì¬¼²çòª(±\0‘œ{Õ[DZÜˆÂîfî)^ö™%Dÿ\0VïˆôÁr¦WÛÁÍ+Uô:Ï¶ÄÌ@`UÃ­p×¿¬´ö+inÒg®x¬k¯ˆ:…Ã£¨AèqPÚ[—\Z–©¦]â}kåß¶‘¯„Ñ²:Í$ƒÜdW£,Úî¯“¾r§°\nóÏ‹~Ôôû{}Nê=±Ù’yá%},<¡¶g|ñ|ñ¤³†+<C\0àÕïŽ¾<MsF¸H-Ï$\0Mq^	Š¯épNHŠydzúâÃ&ÓÂÒ Ì£cÉ<ÕJR[Š¡ÊÝMÎ_ösÑš-	$\\¹]Õî€&ìWð‡NšIUL\00+¼’ÌÊ3œPÙÉ¢z£V\'+Ú®I*D˜þ,T3ãwJDŽwu¢Ú­HÝwE»ñ§ùmŠØ\rÏµI°5’CåC×§­?iÎ*¾O5fÞ§úÕ&J”„ÈPØ94\n¹¤#6îjEwM\\¥2\0\'\'SªŽ¥(9õ¡AS×Š¾`Š±x ãŸ­H±ûâxÀ§rP†þ<³Ï5\"H7Rdî}Ô?\ZnZ*ÄøãŠ@89æ‘\"£YsGåHD­§=1Q+³+1ê´1%$R…;N(EX¤ò»dâ 1žA­³r7\"«8*ççÒ’%6Q‘V4$þu,t â¦x2„2ðÔ–±)_àª–ƒ½Ç`äçéA!@ÃuíVÌ‚vòj¬0l\0síLVî1[!±OŠ\rÙ9¢ò[~õH#V\\­8­KH‰X#uâ¤a5La©<ÆÛ×5;1&ºˆxZY6ŽnªÁbÀñŠ†ÕryQVå)[ Õy#FjÌ±­ó¥C£nrz¾£Šq3Z\" äT{°¥hOe8éÜU2Þ` ñô¤	Ø‰òp2M þ N*T+\Zås»ô¨<õ.P‚óª¹d\"DWs¿9ÇïDÃj±>¢Ÿqi·*‚§¨ÍCv¨˜\n1U¨õ ‰W·»;22´¢o.B¬F;cúÔáƒ.{R©Ú`b¡½cŒî;€ô§4Ëäœæ©MyæÆWÍJå7º@HçŠª÷äí8­,(¼ê3QIj´Š¡ØŽÜ1r0Û–;_$õ«š~Ì€ç5~$G.ì¸DVèd[@s‘ïOkRA+ùUýª3À‰\"í+ŽOz®Q-Jp1L#®jµ¸Á¦HáSå]Æ«}±wcÐâRó1<]ámkO•\nØ85óO‹¼\'6ƒy *D`ðqÅ}hß½Œ®v·¥s^\'ð]¯ˆ,eÀóÈ$sš™Iô>Bº±K¡†ú×3¨éo#­zŒ<qáÛùP«yYë\\Ä–É  “ëU}..ÚWŒ÷Èõ®ãÁ^:»ðåÂM‘´ò¹à×)©éÍo#cîõª0NÊÌ½\rZm™YjxâMŠlÓ|ª—\0\0W5ØFW\rƒÁî;×Ãþñ-Î™2¼3+ÇZúOá·Å5»d¶¸|Ü\0IëPãØV±æÍ ´Ó1å‡Q\\/ˆ§]ºãšéµË­ó˜âb#AÒ±|¦ÿ\0ÂKã{;\\|žh$‘‘ÍCH˜ì}AðÃE‹Ãž²ˆðíví’y¯ý¡5•fŽË ãÓµ{ˆõTÓ¬D(v€ vÅ|¡ñ[Z}OÄ2ÜÔ÷¬®ïb¢¬Œ¯éÚ>!²€)•r=³_fé‘*[Ä‡€ \nù‹à6öÿ\0$ÍÊD»ûWÔVãc€£\0õ«{»+ë/# Ž»\'’;V”íöTÝŸº*;{Ò3sëVä…¢LqžÕÈ½ÝdÕ´${°\";†}MIoq¹p«ŒÖxo6U\\=ëRH×…\\Yšd¨žµ\"(^i\"äjH3œ{ÕEuA*œdf¼«âô-°Ì+´ƒÅzÅÛíˆàg‚¼ûÄpBGŽUÜ˜ÀÍeVŸ<ltá«{\ZŠgƒAâ9lï&òÀÞ~^j+>mbáŠ¡%ŽMzAðVŸ–>H-ž¸«ú.…»³ö¯®+Rv±ß<bwqZžõû8éÃKð>Í¸Ì¤þ=ëÕâD?4jzí®\'á$ÚøF6ÎÑ¹›üþUoKø…i¨ëÏ§À™*Jï	é¤’<YJRm³k^q;˜ä\nãµoý‘Š$-#ãvk­ñ2]Z”OÈ\rond2;A³Ú•ìmF*JìÏ¾ø¨F‘¬ óƒž•\r¾»ª_„-;€êNt=«^ÓÃÇ#*[)*x&ºí>Ò\"\nbU ¦t·N=/¶ðæ»©Î²IåmÙ|9½p|ÙU3ß­z5ª„SÐ³ŠŸz¨É56îKÄ5ð«u—ÃK2TÜHÒcž8®‡OðÎ›b¬\"¶@Þ¸­fªâ§Wp_Â—*0uæ÷ca#‡— ®#ã/‡ŸYð\rú*’&Qßåæ½+n8\'¸¨¯í\"º²žÃB¤~ª:§}Ï„ô¹Ž™ªX^nÏ‘pø__xºò=KÃÕY]~†¾Jñ.˜Ú6«©Ø²mû<¬ª\0ÇCÅ{‚µŸøH|£1rf|—Éô$,V&®D^¶=KÀ¶dÑcÿ\0kœbº&È\'ŽÞõGAìÚliœáEZ–_”•äö“¾ÆMêE<{›å¦ÛÉÕ?‹Òšžk–Í>ÚÓÊ”»œƒJÖÜkMD]©\'Nµ1?ÃIpÈ€¿Z¥\rÌW\r\"§hH5&ÔÊ¨qŒUfyQéË#<…†©êEŸ1eëL›sÝ8¦˜Ù4°‡E9©[W¨_;I®$ ,cq?JñOãŒí¬ˆ-”y[¶’¼×¯k?ÚZuÅ¸loR+ÈtŸ‚÷°ê«,Å\Z0Ù&³riÙ\ZÂ1³mž»£jPÓáŸ£:ƒÍh¨/óÂ Ó´åµ³H€ÆÐY`èEk¡‹WTóU¤nÈeÉ\0úS\"bÙàÐ7Z•ÕeÜÜmÏ­J	`qÉ¥i\\©ëN@ˆHéš‡%ä6\',ÿ\0©<t¨<Ï+qÒE\';½kK¥¡d®#\"ª‡Y?‡§­Fn$Ý×Š²\"Uˆí8“Üob¼²±Ê¿…Ì#\r\"K1]ª*#ß¸ªØW\'[ì6?†¬¤ŠÃrãê+(Å“¹ºŽôåg+ÐSVe¤Mpé¸àóéM¶}Þô,[Æ?‹Â¥TàÑg¹6,»Ó‘Q+Gó¤¤=\r$7Ü^§Ši<{Ð²\0=)¤†J¤†“*ÜÅ´dTÉ#5bIK–]ÜUb\0\'B9Õ€e\'Ÿj ÃÍiÊë·qíY·Q-ÈÜ>\\zSµÄØÉlÈÀ¬ÿ\01ävÎ{zV„‘,‰ATÀò<Â„T¢“\Z·FƒŠÌÔ/L²Q€;Õ×›dN@ëÖ²T|ÿ\00Ï5WËñ,eGi—’,jTjvå3ò»U¦V“8c“ÜÐ²§l\'æûÝª„Q2]9\'+Žµ<#\0\'?Þ4É`.0¯¶¯E’°\n¥õªÑº™# þ´ï³†ìæª ØÄ7+tæXˆˆY±´GŸZ½\rÚ*\0G¨¬ÔU¸i7~,qÇŸZ\Z×Ryä,Ígýµ³ò¯J¸ò…CšÍ ƒ•¥vƒm	„¬TîÎ=éŽbÊ4¿3¦ÜdQå«EŒVžä!É+c#ƒSícÿ\0ª›öŸLT±ÊT|¼ÕÛ°âí¹‡ão	ÛxƒOth“+æOxjoßK¨Bçƒ_\\¼¡Ð‚>jâ<uàÛ_Ú?É‰\0?0©µµ4Rè–nãŽhÙ[“\\Î¡¦ù?2\rw~%ðíÆ‰$n¤¦xoZÆ1©Ï­	÷+˜ãá+#$Vö‰â9téÄ‘¾Â½Áª\ZŽ”ñ1d•–¡Ñ[°i¢Gªx¶æ;u”ŽŽ¢º_ÙïLUº¼ÕgŒkµ¡5ç>,»iïRßø‰Æ{gôVÒ|q’:ïoSX=	]kÿ\0j2aðŠÉ¯›¼Cxº–·q 9ˆ¯Nø¯&—e$*ß¾äVª×6Gñw©Z¶ÊÛsß¿g-(¬·Dä(5ï6ÌrÛ8=ëÎ~\né#NðŒ|ÓÆ½^É×fÚ%bRêVdW`£‘RÊdu\nWŸj¶i8 Ê©’q\\öŒ†…ã¿Cš´oŒ*2›¿Ý®cÄþ8Ót‹±ousåKØuúREâ;£—KÇ \Z¿BçP5…C·i£WYrª\n·­r“k¶k½ÅÔMÔÉ|Yj¡Y.br3ÔÓƒ¶å]¶£å@ë#³·b}+—Ôõd‘óŸje¿‰íeB\ZâÇ¨¨?µôÖÜ$xØzî5ÜESul­P‹Ô.Q[\0ž*Æ©šâ5FLðCR}ª/1v <Ž(Z\rh}=ðÞ-ž²Þ!<}jÞ‡à­;E¿’êÞ\0²¹ÉbsZ¯àWø?N.<´Ïa[:V³g©E´ë1C†\nzWOC\"}@îaŽÜV+®Ö,±õ­[õVu*qÎk+Ifó7Kò†ã&ÐÕËƒ»iÍmÁjÝÏzÏŽÊ4Æï˜ŽA­+yv®ÓÚ·Ü±b1·==jCµ:àUhüÉàµÌjòê’jkD†H«„Ý‘›‘Ø¤ñ(É`\r*ÞÄÊÅ\\6ÁÎ\rpK¤jqj²\\\\NÞA„ÏG±ºS6dÜ±ô­½…¶f<ÇMuâH­mœ²8àÖ¡â™¡xÄ1/ÉÀÎ*uÒI…‘ÏÊiiöùrú\Z”¡Xõ>Wø»k0ñ}ÕÛÄaK£‘‘Á `ÖïÁ$öYL›”v¯Eý <(—ÞŽþ4ìä\rÀçiàÿ\0JÉø-¥\rñH¢äâ²”“Ønèö{Dò¢€¤˜˜úsõ©ã©Lk´ñY.äóX­\0Âb¤.qØ¦¢…cÍ8®ìç‘SÔzH‹(a‘š¯ö4ˆ1LÝsR8Ë05€SÈªå! %Nj`J/‘þÍÚ—$àUµ€á²(ìE$.ÜÕˆ¡óCqŠyô \nŸP,An¬~´’§–p\0jXÜªq‘RApKšj:]»ÂíŒñÍ\ZóÎê¸Öªc\'µFg(ÌéI¡Ù‘<[ÁËcÚšSËRsóôªáÜJWÆ=éùÏ¡QäQ+µ ucÊóJÑ«ç\"Äª1÷j‘VhrÛ•”ŠaT ^*HÑ€Ç¥D]¹Ð…Ì¬VpÁÎF*Ý›f6\rÈªÒÄÎ[ø½Å6Þ7ÚAüêb5©~R&Ægò|U½€GµÈúÔVìx\'å¢ÀF±;®@¦¬­@ÍYyJ”qTÞãæ ‘Gº5®Ä‘Éßô©%dÆÓ­U\r×ëIæîSƒÈïF£å*¿ÅÖ¡š]„qšrFv¶ï˜šk)Ž6\'æoZjýØŽ=ŒŽþÒqò¯Ü\ZIö§nO5ißVg},Gó\"ƒÖ¢“nÒH#.žI¨eÊ‚@ÍJ-jC,¾r2¨ÁÎªëÄ.„óÚ¦EÛ“¹E2ãiË­Tv•Ìˆí5¹9“1zT¿g(\\—cž \n¶.\\ub®h••#Ý»4ïböÜÌn“ç­UŠ5%†ìš¼åLnÄŒ·@\rf,Š’¸qÆx©CIu!‘·1 asÅ0¾ÅfäàU›‰Wj£–}À°Å+]‰$:ÞD•KG¥?îÊŒcÖ Œ,Q•>æ ,ÑÄJ±9l|Õk`°ÛÉ^<Œî_J­åÛ ð\r2YÆNã“ëQ@D…ßv{bŸ@FŠJ²OÕ9‘YS‡€À÷©¤RN\0ôªZ’Ÿ(ÉyÜzTçvÐ)²Ä%`ŒN=ªÄ+kóÇJ[¡¤:È±,Ý¡¥ØdU^\rFÒ²·„ô¦yƒ4¬Ç¯B!>%q´w5j\"&*pA©\'ºD\'ŒšÅœ³\\d/Ò©1t4nõt‚&|çª´\ZÒÝFNÐ¡ª76†àÛ\07¥S6&)–ùQÖ«q”<iá5ÛVe@\\{Wx“Ãóh—ï©Ú:\Zúe\'ýÑS“ï\\ÇŠ|)o­ÂÙŒy˜àÖjÅ-t>t_uaj\ZPÜX×sâ\rãE¹’9\"(‰„c\rÁN†¼·Ø‚/uõ¸—	ðI>™¯IÖ>6éÚE¸³Ó¢ûDª¡|Æà\nòÛ™\nyœ‚@í\\º-ÓÉ-ÅB÷‘“±¿®k>&ÔyX–sòªŽ•±á/^ê×ÐÇä°Ga“zí¾|<‡SE»ž=Ê@5ï\Z/…lìQ0ª•ïŠ«h+¥¹³á\Z=3I¶€. \0\nÜHJƒƒŠ‚Ð‘Ìuz·)¹«.£Š*œw›ªê1ØZO4Ž\"“Ö¶e‰~mÜZòÞ þÍÓb‚\'ÃÌ@?JZ45³Ë5]^øºk§$Ä¤àAÒ´íÆ\n© ++ÁP=ÍÍÁ$Ší­´’#’Iõ\"¢éh5;¼×’ˆØï#ñ®wUÔÚÙN$#ñ­Ïëv\r(4§Œ\ná..þÛ3±È­b•„ãb;NçÍb·ú9¨$Ö/QmÄŸ÷Ñ¨›’i…ÁUsr’.Ùø—R]Ø¹“þú5Õøs\\Ô&¸Œ=ÔŒìÀ©ÍqÚ{ ™wƒ]ßÿ\0è¶¨?Ö]F>¼çúS‹¸ì¬}èº4÷ŸF›o1Šæ[?,MÝX¯Z¥ðŸÀW^\r°˜_]›»©ÌÃ¥uZl>MŒq†ÎÔ…^¶*#é‚·å9¹´±Ÿ¨LVP\0û£5—o¬Hï·ËÚ3Íj\\:éã£‡N‹q8ÈúTu:#ð–`‘dŽEH€GAQÅ‰v­KÈÏJÉ\'´-‚OJ²Šþà$ûTváV3ž8É©¢¹Ž&Èuüè¹Kb9tö¹ÿ\0XÙÅi>\\­Ž*ìÄ³)ã$ÎÉæ«™™¥ÜAb›H\'­YŠÚ8ÀÔP‹œg®:ÔÀÒ¥»\Z4‘â]*-GC½µC¤‘• Šã>ék§ÛJ ch5Ûøšå`Ógù°JšÉðe¨‹KßÎi).¤7do#cw9¤y	C·­A\Z2·TŠ¤ƒžh»èd•õ\"™ï8ªÂG˜ÎOÝ¦ã®iÊ¥— þ¸Y!0Ì{ŠO³áŽ9ëS\"lÏzžÃäž@ªå²»#ÐŠ;FnOJ•`tœASù{—`oÆ«0ÉÉü¨K{óÃÏZzF»>a“ëP¼¤nÁ¦Ã>à2sO]‹÷{ˆ°	n8BsJì\nÙj5PÄ{ÓZ­HZjYûJ´d*›ÆfgÚ?\Z”\'Þ^­Ú¥‚&Œ¶{ÒvYœ¶¡ÓÞŸå·¥hÉš™ôªñA\'Üç\n#»E­æÛÒ€99ãbæ,µSËd´ËŒ¯¡2dƒš\0ÏQIìæÝJÌ9ÍH+²`ùXƒEºM­Å$I»vt\\3¯N§Ë©1}Jïd`ÎG§½V(èÄîù}*yg,¸?xUIo	b„Ç½4­¡hy™ü¢SŸ¥SIö³³ŒƒëVã\"0•SQePJHë@†\rA1cëP[Èd™ˆl\'J¢Êø³š³ÔˆmïKâ-{Æœ’Ás•éRI´«Õ(eyõ¥™ò	cZ_¨Eò‘’j)ådÀSƒJ\']¤Ÿ—ØÕYg]ÌÄÒŽâ¾šc}ÑíÅB¨ò=~µ\\\\dusëOŽfUb¼S½¶]Ç«²9EDH%‰\'’7Ìf\"Tdd\Z–ÊWD/*(àdúU{™°çŒgm!\\ÿ\0A=¡f%NE=,	Ë©žY·88íU˜HT‚ Š»qlD,Aùúb©,JAžæ®(¢›3nÀTs3\"±Ï5;zV}ÓÙ¥h5±-©$0íÚ(| \Z†;€±•GzŒÜ³]í¨ÓÒÅ;•À-U\"*IçÕæýè`ÃŠªm˜ía­Rabõ”ø<ŒÕÙ9ù÷|•B ±‘èH¥@ÀÉ¤“µÉòd»Imã•§Ér0«MVqmè*0²È94ZÂŽƒ9ÉÉãÞ©\\8É\nsV¿}w(lwZÞFßÂ£ÞÜ§¼É;¥E,AcQ])G`{UK™K®5V)=ÇÏ2‚J¶qÔš«ö¥ œàRJÞXgfÂYßhY†QƒüÒ¬iE:HØÏ>•/™‚IíÚ°ŒíàÀô«^xb77ÌjGk”<Gá¨<Aæ0[Ö¼[Å—IžDØ|¬íÜ+ß!™£Ü3œÖn·¢Ã«[²J€±î(Š¹JvØùsYq´Ÿxg€j‡‡m^æú4UÜY€Å]×bó&òƒnÝü1ð,’\\Ãq*œ0ÍB3löÿ\0‡:BØiPÆ\0/5èv¶›Ô\0Hö¬}NHlÔ)ä]-ƒ$gç8>ôïmˆQ¾å«[«¸Ži’¿ÙÃ0?tV¤r	‘øÔ6Âuq·‚1X£U¡æ×_¬?µŽìs‚Æ¼[ã_ˆSñiÝh­?âþ•/†<Sq*’‰)óŽ•æ3jÇS¹2JÅ›¦I¡“êz\'€uX\"Ô¡ÆÕ…&½âEÂxsAp¿zO»^-¥‡†â)‘öì äV×<_wâ·‰u1ÇsG*lwÐá/&’âWgbÇ5]	Ïµ†næ{!@G÷jÎ=¨95µì„“±• Ávfê*$¹eŒýjÑÓßæÉ\'4Ác°ù\'ò¥Éh‰\'b	ÛœzW§þÏª×ÿ\0t‚ïvâ=\0×œGo³žæ½‹öT²|V³“náNØü1W®‚oCë?~.Ö|3áxÎ…lóßÍ „4kƒÖ·þ^kW~´›]móXcv®…£µ¹Œ‘7Õûy­X!G­Ý\\Æ63¢Ü;±÷¥KÈÎäS‚;\n§¨`ù¼ãžµŸ-¼l]œŒdš”Í’Ð×„ÎO\'µL€\'<ŠÉ“ÄÚ|$ƒ:p=k*oÀ¬D14™ä”ÖšA½‘Ø\\\0 ÀûØÎêÃ··¸uä1;ë›¼øƒsŒù\nøùgMã­I’ATúÔ;Ó¡6¶=r’ÖÌûHäÕ¿iöQ“-ÌkìMx=î£â]e×ìó\\È¤à…È«V?5ýL†Šó÷ª¢–âT]ýæzÔß´¨T¬Nf`z\nÄÕ~-IÏ$n5™eð‹cžðŽŸ*\nè-þén§Ì\r1|çµMÍ9hÇws‹µø•}âÍ@[4idãåkØôx>Ï§D d¯?“Ã\ZvŸ¬ÚCiÄs¸í¯Iˆy1SÀ•Zt8j5{-†,ÊÄR¦NpTiRÍëOŠu†x•Œ¯¡/ðáŽiÑÅ•`O4ŠCŠT~:ÖÄ\'aw\'Š°“,KÈÆhKr0Üj%‰‰ÇéH¤¤$s¤hzÕw™$ÜTæžÑ\"¦ù½j!Æ˜’]‰VdKàÙãŠ|Ý€jTmÊ\rH\0\Z›ì/f˜r=©¹äŽâ–7qŒÕ¤+2Å»˜Ši™c‘,Ojzb8ýýjEîÇNÕ©ª‹E„¸R½qíHÓ¯#½B¿*S5\rÞßJ­ô\"ý4Ã‚yíT¼­[žÄÕ³“ÔvªÎ¡œóøT+–ûó”u§¬ƒæ\0åª	Ü?\n8è”Fç&ªÅ¦É€,3»i¦O!TÁÏ5*J¬:óéPÉ0ÿ\01ÕŠ*ÈƒËVFe\'ŽÆ³§·P—­^–~X‡µ@Ø`}è±IUÊ£aºUrå¡møÍY™0YGëU‚€IÇ>µO@HÌ6Ò<ŒÁ¾Uê)ÌïÇ…õ­\nS*F=ª…ì…â‘ON•>ƒ½ŠËª“ÓÖ¯‰\ZT,F>íc}‘ÑI5bœ.`Ši‹M‰§ù=}ª´ŽÌTm÷«úÒ`zSNÆ„q²”\'Ž)ðÌ¬8ªÒ\0ŒÀt¢2oÛšmÄ²\\`}Á«ÖroB1ŽõB	ÜsVPùdåBi´\'•UqÓ¥Uy7¨ô§«+©\'ƒUÎØ‹4…Fdf-•ÂúµQºýè}­œ\Z–úBÈvgŠËi]p{ÕØ¡.2çæ\"²/~]Û\'¹«’NÅÛæÜ*ÍÏÈAçÒ¤W)Åq„;ÁíS–â>yüéÎŒ9÷ª…”¯`i©¢•!@8ªjÅƒ3Þ–ò÷õ5Èv…\'5ZîJw$°dâ«¤×Q]Æ3<ƒÚ¬E*ùeãÒ¬y›¢Úùª“¹H¿$£éžôž[!lŽ=j”P§¯­[7%P‚Ýxæ•ÈÑ¡Þ£ÖªKæb0EY,¸\'#á4Ø-™UdrJŒÖmÌÁ\'(œVÌ± \ržõ“:ª³có©õ\Z³)M\nÜÆë»‚6Õ+]>+5`U†jì  bÒ©=Æ8c­+\"µ)Î‚	·•\"LŽ¥Ø\0V’öUd \rÌ+<NPa†ÜÑÜ°“¨ŒQ€±;³ŠÎ6õŠˆIËÀÏ­]´Ð§Íú-ªk0gæ‡S_MxVÀCJ©·\0ví_?|0°kX6yCÖ¾¡ðí°Šó×MbCgK¦E±@Ö­ÝJ²\0àö¦éÜC)€:Õt”3°ç>õœ‡fÊór‘œ\ZÑŠ|£þJæ•¶ƒÅjZOæÅÉäu§¡[qñûÂƒ]ðÍÅäî¸µRÿ\0/RQ_\ZX\\˜nœIÆN+ôRöÂ;ëˆCÇ\"`{ƒ_üUðŒ¾\rñ…å™R±ï-ºçŠ”ììk{«Z\Z™“iû‡Šï¼#á(urØ¹æ ÷¯?ðMÇÚ­Ðã$b½3Ã“½•×š8àÒ#S®ñ/…Z³`(ìy~¿ :—vŒ‡Çz÷\r\'Ä°jöË\rÈ0àZä<söHÄ¡0ÎðÖ|ÖeFç…µ£¬‡ â«Ë< ùEt72ÆÓ±\'8«úš4®=ª¡+”á¥ÎZpÞ^Ô\\W¸~ÈÚL×2»™LPœãÜ^Ws§v=¸¯ ¿cÛ&ƒVÕå+†òÀÎ=ë²›Ôç•¬{G‹¼u¥x>îÚÓR¼òå™¸AÉÔ× hêLã%•×z“Ü\Zó¯ü±ñ‡‹âÖn¥vØª=C^—)ee+÷UB€}«G>ekr¨³…×n§xïvNP©Â…5Ëéö··NUüÙ— <^•>›’9UP[®;ÔV:6ÆS‚»zŸZÁ¦ÎúSŒQÆCá»™ü•XÖ6#3V¬^	›!$œáÖ.”ZmÊ>UïVZ2¬{ã¸¡ªúÞÓÊ<´›9zÒ³ðöŸn~[d_¨ÍhÅÉœUÈ4ÙÃŠ›	Ö›êTŽÚp»=vŠžÑ‚M^‡F³ÀÔ°Y c¸ü¢©#.~ì¨@p@-´¶+rXd/Ë¿.iXñ…Í½IæGY“uâ§f^#Û¢í\\[Ü×!áˆÌ÷×·»mº¸\\ ¶vÑdbåy’ÇåÅF¶ÅzÓÄ¹Æ!\0÷4´{“¨Å”§zÔÑ¶Æ<Õg”ÛGÍíN·bñ’Ç&ª,EÅ™IÍX‹2EËUEíš‘Uy8 qÜ’I\0$zU9$!ýE:Vlw¥€\r ?J›YÏ}ÂG?Ä)û°§Òž4ÈæšÑ¤©¦{ÏAœ)\'Ö£IŠ»b•£#sf \0«;c9©m–RÙ\'œT‘¾Ö\'ª±>Ò~\\U”p2GZqwBhvâÜg·ñT] ò;R<ËÎM,OÆAÉ¦­°–‚¹gÿ\0\Z‚K<±Ïz³åž[ëN`Ì¹4©<\n¿„Õ_-‡àUëˆšGÂãšIÐŽx4’cNæq”ä¾FzTÈŒc-Ùj¼Ébx^K™:!âœÔ¬LJ|ÇÓ­F»I%j³¹e$ä\Za‘•Iþ”t[î`oJ nœùÑ}9~â²ÄŒ7œò½¨±Zšë8Úp:TS~÷·V““ÅJ¯[¥5bSlcFFNsMKT8Á¤iFOÌ?:šqÈ¢(½ÈZØÒªˆ× õ¨þÓÏ+úÒ<Ûœ7µcŠ[¡áB±rÙôü“ŽµJküÅ9oH#5#.	\0Þ:ã­F7V?Åèj˜“{\ZUl9úÖšX†=¤<óP4Œr3‘U™%iùc°žÔ“Éµ¶°ÊúÓiì5ij‘YwNpÅzU©nqY÷L\n¶;SØ¯C>YÈo-ØUÔ?xF1Žç½O;‡lƒ½Q•P±f f…{	;KpÛ›	M”ÌŠÃ>µP¶Éc|´³ÊG<ïRh¸Ž7/ÚXïH·«ßJÍŽë{ÜZ’yÂ\0Üjì…tkC(š2FxïA™TuéT!g)îÝ©­ F*yPy\Z	Œçôv	ÒeÃšÃ mô9ÍKmtÈ§û¢…n‚JÛP(FÉÈ?…S”$1Ki¨CÆìTÊ6±cÍRB±ÅÉŒœô5—sv°Ç5næUæ³çpAPi+õ.Ö3î®\nIÜ;UDŠÙ5=öH g}£‚Ð¶\r‰„HrÕRID€•9¥¸™0TäÕ7œ&ìôíŠ˜¡ß°óxÐ¡À¢r€‘Á5VY!$æ«ÅxrA<Z~Hv9_ƒšo™q$¸ÈíŠ÷Ý-6}q^Sð–Õm4¦d¼×©xfîMJsRzÔó$`ã­ÎÎÞ\r–ÓÃ5E.•…ócð«Yc(Lð*ü$²2Áæ°Zîj—C—Èˆ°uçT¶×*œzV¦«§,Öìè0Ý«˜·w†cà‚z¨…­±×é×`‚‡Ž:×þÖ	kÝ*Û[·MÒBû$*:¯½{5¼¹PÊqéRkZU¯‰´+‹¹$B¤\ZÍÇª.\'Ã^Ô…×—9Â\ZõM?S‰¤wb¼·Æ~½ðgŠ.l¦VA™V?Ä½v>ºì±HN)­UÊò:øî®dueŠÔ^[é°ønKÛ–nÞKuÍbÙê–òZóÃ½eëüöv×34vÌã!Me{°²]N7H‚=SZ,ªvg8è±è(bQ«]ÎƒðëL´±F´\nêê>Zš÷Â2G•û£œÓm´Öç‹x‚Ý-õmmrÒ¹ÁïŠúwölð»év7“H1æà|µá7í¥xWûd­æÎ§…¡¯¦¾ßM/‚ÅòÃµ¦ŒÊ‹Ž}…oI=Ù…´²=A0¼Lœ ·L×“|6ÔüM®xŽIµ!$vÙmÑH1@+Õ/fÛœ«Ò·ºY¦>×`8úþu3(l\0W;yâû-0ì’MÄŠ9ªkñ&—÷1³`dfŸ Ô$ö;KH‚’·sVÖ8øÚ«øW–ê/- †eµP&$\0zÖt¿5‰I ú/57FñÃU}gŠ$ˆ¶X÷ÅêÚu¢,ëœr	¯]KÄ:ã2´? ^]ÓüâÆRèPgþZ5C’6ú¥•ç$R“Çú5¾àgWû£5ÍêŸôË\'‘bFwô#¬û?…˜´]*ätQZV_4¥Éw#\\·R\rC“û#,<~9\\æn¾8ßÎLv¶ÝÏZÊ¹ñçˆ5,™]ÄGýœW¬hþÐ c½¤g/+šÎø‡ooi¦$Q¢‚Ì„¥»W´„|m$zJHI.üŸjé\"L÷¬Í	\r­„HF0£<V¤X`Ì´ÝÏ/¨‘±,ùjí^[2gu\rƒòš>ÇžKsU1¤‡}å,ƒ-ºVÝßŠKxÂäœzR’å÷»N*àô,#dc§EF#<Óãû¦ªÀ*!O—© 3“J~^NE4AÃb§ µÎNAúR‚yª¾H>Õa1·ƒšQw†HàÆÜãëQ*63÷½êW\n»R(Ã+cŒRv`¬EªN)ÑWŽ”˜È#µÆ±†SS5(R€æ¤·LœŽ‚˜cfCƒKjOCÆ;U!^ÄòmàñQ‰©çŠqù¸&¡š<¡Çz­‘+QâEe$sŠ£vw¡ìiUÂÆøo™j¿˜JI$Tî;4T—Ëe&¨‹Ÿ)ˆS‘ß5$òsßš¡rË´÷MrG¼,N¹w¨Vm¹¦}¡c|îê´ÝË†B:\Z¯!TM§Ó­6êëaÜÚ˜×qË½J}Ê‹ÓA¢BWŠ–YÃa³U|Ð	\\ð})_\'#=x«Ü,ÙnWV\\´¨\rÈ\'Òª‰Ulð;Ó£¹1©=E$´Ðwçc0=ºÔ/\"î;GŽÄœƒÁíUå*ÈAlRzè8ÇBLŒœâ•dsœÕMÆNx5\\ÍÊ÷¦¢;ÛFi+$Ž´†]„ŠÏ7,£;Ž~µ—Øÿ\0ê­UÞ€‘~;‘!n*µÃåÈíORD+ƒU™ú“P¬‡ä\"¡LŒæªÞÁâ¬yçŸO­VžýPËŸJ«§¸­ÜÎ¸•TœóÅcÜpw7Ê­Þ´/®|ì€0+\nîBY‰#°©ø‹CV~XÅAu(*Tqšt2F3ó~tÙd>o~Ô/4\ZkbœVò¼…ƒð*õ¼d‚_¨¨’p¼*R¥Ã\0Áð*’BÐ•dÊ¾­WòÛ%Ïèg!‰ÛÛµ>\'YI\0ã´/!FÍjJìÁEÉJMOÊRÚsÜÖˆ\n±¿]ÞµBkE›“ÀúTØ¨—,50û òM,úˆfa»ŠŠÞÝ2É=ê¼ÑF›²Niê®:IÕ‘°Ç>Õ,ä+sÍ;*’‘YÓÏ³w¥	ßA‰wt7`óïYï&ÅcÛÒ›qy¸•Æ1U\Zä(äqõ¤˜ùX·”Á<çŠ«%Ó8ÇJ‚æç¦AªMrîx\r&Æ‹îøÈÏYæ;X ù½ª).‘‚E@ÒˆU˜T¦‡¶Œï>éK…q·Ž}ëÐüqÍ3(WÒ¹ïi4xâfJê´TþÎ´‘1’ç­g#£^ó\'g÷âµ­Ý9ûõ‘mÎãÇõ«->Ñ‚p}iEšÄ³=Â,GŒ^/ñkâbø_S·†ÈÇ.3ÐW©j—_gµšG8Œ.s_.xÕGŠõ‹‹Æl*ƒéÒ©+h+ê{?‚~\"Yx’Ý62‡”=A®úÂé$åqõ¯‘´®|=2ÝC)Þ9ÚîžñäWð\"Lê’ô9=j­¡ìÌïÚÀ¿ÛÚ(Õí£æÕI}£–Zù×Âš›Ç;[·NË_l»Ç{i,2/™‹‚Jù‹ÄþƒÂ~4whØZÉ&åolÖKÝº7Nè–ÉÝPî>õ§öx®U\Z@I^•éšO€t­WOŠx?y¹AÜ\rNÿ\0\nà#ÈW5‹Œ¢ÑÌ7%Ðô|C6Ò¸K¿‹\ZíÜ2Â×¯µ¸â½#]ø;6£—ÉUtWsð\'URÂ)°q“M5-ÁÙxdºÔ¯<´ŽïŽNs“_ ¿\r,³ü5¦ÚùxXío”WÊ>ø-«éÚõ½ÅÒ+ÆŒG9¯±´ýŸ§†˜ˆÒ8ÕyíÅuÓµŽy_¡±oQgb*çÐVOŠàšhQ’FsZÚeäð´±¶õUkõyÙ•NXUnD·8¡àµKã4³M¸U¹cðêÒ—’F c­Í.	-ÓçùŸÞ´b…•	È“FÞÖKc<!¤ ExP7sZÚ>™\n7—kTd\rµy-ÀqÉ¦ÌÞ@Ú«ÔTÚ!ígÜ‡M•\\\r–þZ}+r	2Å°kyg‰1ëVín¿t\ZW9æ©.†M_SNâà>\0lqRÛÂ»‡ÜsXÏ,\0+<€{©—ÄÖñ`J¸Ýæ§Ð–kÙé±Û‰\npHÎMpÞ:“í:Í¨lŒäÖÉñ”AX¸z×e<šï‹^}ØŠ>‹J!º¹ÛÛ~íz`Ò¦[Œb¢ãÅ*œvëWk˜¤›s½³R†¤ƒš€™ZƒßÜVf‘L{±\"¢320/˜(*¤óÍ$Éßf<|É‚¼Ô í\\“LŒŽsN/Ôf´ŠÒã°ú‹ËÉ$Pd\'·ãHnqÞ“i‚VQÏ8È©N)-Û1œö4üc8êiÅX”ÄtÜ¤w¨–Ppy©äJ’z`Sjã»µŠ>k#<ûÔ‚lx+Þ’î%QpÆª#zâ¥+[\Z/vŠ0¤\Z\"T!óYÎBõÔ‘HÇ\n­øS&Æ‰p?ZŒ¹ Šjn+ƒË{SeÜíëI¶ö*ÖECŽGcTîÆ‚O½Oæ±,áY·Ó)‚V3înLÜuªBçvãš|÷+.w\nÏ;SqFÆ)$U‡Ë!,ÄñíP´Ø:To:óÏÖ«M._¥UÂ0¸é®V@Täœö£öž’•}Ø«&xæR¦§sD†›²²z\n›ÍR…³ØmÈšb¹RC¥$R4EÚàñÏ¥,î‚\rg,òTæ¦W)ÛšÖ=lC4Ù‚Œ*Œ²FÄíÇ|ÔrÝ•_˜’*ƒ\\;µP´.yÊWæ4’*ìlž+;¡%&•®ØåsšW°÷Øº³&\n³}hi”†f­À\\áÆO¡¨\rÊ†ûÃÐÑªn†Þ£¹#x J£$ÛW Ò4û#$Œš4êV¥‚ãaæ±oåÊvR™°8È÷ª“eO©©¸¢ˆd•›9cT._\0»Â¥{‚#lY×R	÷~ZWì5â<Û\'§­F·»ˆÞ¨6†\\ƒŽÔ‘]cvª7¶ •úÖàÇœ`š™.„Š{5e­Øf*2i‹p¤‚*–‚^fÏÚ6d3Ôz‹+ÄûVS^îB1ózÔ«#\\31ÊÒˆô:eºgèÜ}jV”È½*ÅIÛiŒt¨ãž_´0g;;SO Î%òc#“U..ç\0ñUÍæ\n¡s/,wn Ñ–¦¾UVÚqô¬{»±6{ŸïTsJ\\þU•=öÒ};VhjÄ·áO5M¤o˜·ÝRk§?wå¡i^@rx“(žKÛ”co­U/“ÁéQ=Ê€À0úÕV¹ÇÜ4%q\"óÈSŠ«< n³UŽßy²jœy¦‘[JÂ¡YcÂ¶< ¸®wÃiggœŽ\0×PNà@5„ßCÇ—RkgØ<-XXÆöbzÓ-â¹äŸSR–Âš”ìh•ŽWâ ¶š<‘0Óþìb¾xm*XuK×\n¶àç{\nõŠú½¬¶þeÈC\0,ccÖ¼§‹Äúl‘Ãr¶î%,ÛQT®ÉæKqú®“pŸfX$Åppj¢Ë{¥I4‘¶Å¶9,8É­­[µ±UA\"Ëœ|dýãYþ;ñ,2hÐ¤q,rÜ|òô÷¡]	YßÃŒ‰w ±Õ‰ÂJ{×wãŸEâÍš¯*®èÙkä(îÄ/½«Jõ_†®tyE¦¢æ[FùrO+NQæZ]¶=Oá&¹%«K£Þ|’ÆJ¨nõê‘ÆQŽ+^Q­ÛÛÞIiâ\rE}¤Tî+Ó4J+ûåCG5…ú\rEn(­üòG¥XK8¢CµA5N=N(PŒsëOþÖO,ñóPÖ…ýÍî5hT(Ú¬	â»Ý[K{ë?*#ŽGJá<=­¬7\"SN8®©|Q$Ã÷hWE=‰“w6t-4é–ÌŒÊ	ëšÌpM!,ý¬Ö3^ÏrŽ^|öj™ù$ž¥54‰³gB|Cf’æ÷iïâëu?yˆöÈ„HÉ\n1ïMkerx¥íœ¢ãÅÖñP3X—Þ>0—ÀtÜj‰XÃ¶[óªW6‘O61Pê4ŠŒHo¼¨N›aÛtÈæ³F£«]0Ýw ¬º$@nÜN=jKkE2d(Ùùf’ªÊåCÖòKtÝpÎzòidkô<œZÙ{m‘î8¦À‹\"·˜qŠ\\Íî+ù¾¹Éc´VßÃ˜YÞæäõfÀÍC«Ã½”¬¸bzs[ž·0é»ŽkZd=¬t©–b2>´+d‘LåI(VÛ[XÊÄè¬ÙÛÚŸ\nqõ¨Ó!¸8©ø`ÝEC¹›	VéÅ=ùqQ†ûÿ\0=$l§ŽžÔ|,²(=)RÝé6n9­ocK÷nvîÍ\"Ë¾F\\`\nPhˆ€2µœ|„•‰•vŒRö¦‡d\ZUbTûUŠÄr»)%yâ˜·\rå’W‘N)ÃwJ„¡õâ³»-$5äÞ›™sš€.îÙ©dõ\"¢ GJh•Dí–úSã“žzŠBÊ¨Àõêš\\çå8÷¡-KQº±¯ä¾ Ó.®\n\Z­ÆT‘QI&âx¤C\'œ/^sY×ò\"m¢­Ü¨hØð+:Gd§jk¹OCi\0Wîª‰ëVï—2ZÉ¸g›$ý)yáq&Xç“ÓŠtû¬ñøVtò8©í®³äV‹T8û¯RIäíÅS–eU ›Ú¤–ó¨-Š¢g*Í›=ë=H$|õ9¦NOÍ0O·žžù¨\rúîÀ¢h‹2ËÌ\"½E:ÓQYU²y÷ª/p¬¯Ï5H’†Í$Á.Æû\\°$“‘ô¨>ÒKòMe‰å\nT±j•\'\\`·>µ]J™fYÂœy¨ä™0ÁO5U§ÚXŸöª»HÀç¨íSt5~…ëp¹`ØÏji‡.Y±¶ªÄYÓq84 w@G±;²‘ò’*ùÈ,*ÕÛG2ò6ç•ˆÐ¹þVéÉªµÐnõ6®Ý\reÜÊÛçšÛA¬éçv<JJ!®r~fÇµP{—ÚÀž=j‹‘‡9ù½*¯Û7ÆWolg54Ês»=;Óïnì|Ý¹ª³\\ífQÉªæä\0ÀrÆµº°¢‘xÌwœ74ápXõÏcY-+nÈ8§y›0sÍLCäiyŠ¯ÔiEîÒvŽGaYw‡;ØíÅ@/Xœ\"æ”P’Hèâ½ÈÆÝÍVØUfÚÕËÃ¨e¶±íZ_lžri­ô¬“—BsŠ‚æQ³ŽyÍUi‰M¤~5Nêå¶7ÍŒ}ãVÓ±ZÝ_à>ËX×2Å†@¥¹œÄœ¨¬©n©%¸«K{#)è*´±B7ÕW˜2œ?5M¦?8ß´ôH´¯¹4×E~ƒ\0½Ê»“ôªÞiMÈyúÔ{·Õ¢Óa«\"ìWÅ·ƒÒ¡iK+‚ÕYr»€4Tu4†ì}}¤Xâ6p<VšZ²œsîiš^>È®å­´3Åqndµ+B6åXjW`¨wÔ/9#\0m¦f\0ÅZAt¶>jø½5–¥â›‘3H¦<#ÁÝÙYA	6·¿Ð÷¯°¯</£ê%ŒÖPÈäòÌ¹&²føcá©iÓ¡\0öU¦§ËÐ,Ž7É<°Í6i^à\rå˜(Àö¯¯§ø-á{‘“d€öÁÆk>ãö|ðÝÀýÜo<­KuCHù-!ÛÔnü*Nax¯¦gýšô·\'Ê¸‘G`y¬ûŸÙu\Z#åßàŽyJ=¬AG±æ_|a§êÐØ2[Ü0Ë\'Ö¾šðÆ›6—;[Ï•¾eÉï^wà¯ÙòçÃ~(´¿ší&‚sÚ½æ[XæŒ+(ã½K´µŠ±é¸Éeü*ÄZTH0Ãp¥]2Is±¸õ5#i÷i¯»Žy©³0Û	ô©‘šÃUx…Äg¥€©%m½TŒÐ®	;“Å’	`{TñêLr÷ÍR´¸‰Ÿ÷¬ª£¥^kË=¬L‘…÷5C%†4ÇÞ¤ó‘–Æ=+ž¾ñ± Ê‹èI¬¬Û¼¹AŒwÝS¢Ð•s¹šâÛ’X=*½¬žsîŒg¸[ØyŒf»CÛ†®ŽÃÅº]´LÉ:?íSI1ÓÀ#“QÁp…Ž~Rzšå®üig$ÅRå1õéKe­[^nòçSCIn‡eÖ2ªÙSV¢…dCëXZ>©ne*î¿t‹s)hÝ[†…¶¡êckËäÄ‘˜±+³Ñ û6\nŒ(®&ñö·J~U`H®õ1!9Æ:×L*¹ÐŸ®ry Sbç9$\ZwJÔÉ;’ƒ´ä\Z]Ç“ëLaè)@ÀÅIÔ‘\rªI=j5m™=i‚wZ[è8»jZR»v“ºžNjŸ\' ÍÛK®3º³å%;h8HÙÛœúÓÁÅ4\03øÒ:ä}à2d­+Á !‡ëR¨ù¸5ºµºþ•)éZô4ŠÐ\ZNÀØ<æ“Ìâ£2p1XêÊR‰Ø²c?-C,¡NnjC,G¥3ìœ’íWèC	É<ÔR U“Âœâ«K.±I¤8°‰©Áæ£/—dvÅFó®Ó´üßJ®ó+p7zŠiw*Ý†Ï(PÜô¬©¦,çŽ*{«¢!rzšÉkÈÊx4X˜ìG4ŠìÄÖmÓ¤ˆW­WÕ5O°~Hª‚ïíVìÃ\"«BÉno\\ŒÖ£‰Á\'æÚ}ê¸ÈïU%™ÁT¤ÊÓ©zW@H-Ï¥V•ÙNCäj¢nŽyÅ=\'äÕn+Iy€©,Y½ª ¸Ã6s’¤(Àj¤“	n}\r;ip™lK¸œŒS•Ô0\'¥T†çr1<ƒÒ IËNÓÔÔZÅ«3U®£Sß2YùCÖ²V@‡qÁJ›íÛ“åU+éN÷lIöÐ ¡§¬Ê#%xŒVœ¦£y;ei­J[\\µñYqR¼çÒ³ì|ÆÕ\\]?;r;f…¨–†…ÄÃhÞëY7\ZT&ãÍeùÇB*Cy…b¤çÒ˜·\r#s×ùÕlJièY™|¸çñ¬‹É;¼z»sòcãX÷×hŽÌœúûT–¬g\\\\$hÄŸš³ùPË»-ýÊü÷¬v™P6OZP¶/¬ncÉ¦­ÊÇµb­ôŠäqžµoÎ,¼~tÕšn]’à.qÉ¨£ºÁù˜œÿ\0\rPiö“Á¡¦TÃuôÅ-z—fh=ÊÈ¥phŽq\ZmÛŸz¥ö”Àù…)c’w`*XjI*—˜0$(íWíÙ™A-×½e¬«µ˜â©Ë­Ì.Œq© žNi Ž›A”|ÅŽ+:úì…sœŠˆ\\´€néTnï€Ü¸ö­- ¬îEuzZ2\0æ²..‹\r¤m4²‚Ï=«&y†ç\'Ö‹$irCvAÈ>µ\\î-PÇ#sžE,Ò©CBq¥ÊKæ¨<cµ@dÚ\Z’ OÌF(pA>•2ò.1º÷‰X“íÕ\\äœæŸ¿ï¹¨ÏÊ¤I>¾ð¸—ÞµdV—79®²Êùnb.Ò¾ðßÅÝ{ÂöÞM­Çî»«ŠôÏ	~ÓYX·BZrÜ•=k›•îdãd}1*¢çvÜûÔ	nÌCm¯+±ý¡t=BÇÏl Ç!ºÔÖ_¼9pÅ<ó{Ò³îO{y6ÞÆ£HdËdúšãíþ*hªÃS„1ç«JÏâV‰8?éð1öRw®çEF@Ù8§ÂÆ3\"îÍfÚx»J¹[¸·\0*ãÏk\"ïY•³ýÖ¤´\Zò/$Àç“éKß,¤’­f	•I!±ïH—‹–Äƒß57¸•Ñ»ö¼¡ÈüAÅH—…àœ{×:—›X°Ç­Hº°\r¤Õ\r\\êmîV ß0ÅMØpÙ“…r‚ÿ\0±¤“RÚ~Sýj®;3®Šm‡æaƒëToõe*¸Ísmâ\']ÀšÌeÛpæ¥¾Á|Î¬ÇšÇÔ4¿¶9\"gQŒ`1ªÐëHÄå±ïš—ûI8lþ5•Øíc÷Àö÷Á¼É¥:Æ²$ø\\¯*ê7\n¨ÅuÂý×ó¥ª=\nWb±Â\'Áõ@VÙWÜš¥}ðPdq¨èç§&½-oJýÖ•,w=Oj|Ï¡j6[\'7ÁE¥5\'g=óƒMÑþøÏG\\]Ç?,œ~µî/(<³N·»P\"«ÚHŽDyµ‘ñEÁ2E#.9ù³X×>6ñæ›®méhÌYr+Ú¾Ò p‚‘V	#|Æ7{Šjm’â¬lü2šmVâ)î²fÛ“ŸZõ$m¤«gÚ¸ß\0Z¤0I.ÑóúWdá]w^‚øNYÄ°§pÅ(õüj¼\rò‘Ž:ÔÈà¯Uj‡ÑH8r)àƒÔ~5*à*rI§*ãÞš¬\"ž…\'ƒHÈ@3Œ÷¤rMDžõ,mq¢Ág°&NTw¤Z(¤I2¸B±ù©Èç«‚GCŠ\0É·‚}êlkt%C¾#ÅgË¼ªÊå@ëŠµ“å®:S(HÏTK*«\r#È*.”¤[ýiò6íUƒÆAïVø*{Ôh `S.+˜¶Ã¡ªF Üž\0íV®©ÝÀ¬Éç`sòÒ°hÈ.TnrO°µ	FY•ºÕ­Bù6@pßJæMÜ…ß~J/CDMP·ÄH›XgÜÕ?0CœšŽîbøÚùªw\r¸œÓó\"ý2Lª„ƒÍS¸r#Ü¬ÕZy\n(]ÜÖ|“<Jß5%îy“É~@Ã`SR÷ƒœíYŽæ~HÀíL*F0xÖ£NÆ•ÅÑØ>nB*¹»\n‡æ¨ý­äÁþ•Nf0àñBÔÆ¬wUjl¡Šï\'¯¥fÆà«n½)~Ò–êbÔÁ+—%™¶ÉC6!eïU† &áÔ\nˆ´q–`ÜžÀÒ)h´,¥áG#;TQqzXí\rº²®ÞO•¸ÇZdLÊÃ-‘ô£}Åfh‰Ë”“ÈÅgO;	=úÔÆLü¹¨åPbb{QÔVvæ>gàûT»m*¯…÷¬Ã4Œ!*_<2p~lt4/2’C®¦åÎHïX×rd=êk«†PüüÃÒ°®/ËÇm=´!Ûkc­fÊìÎA#ð§M¨`°$núÖMÍèÊIÝýáB\ZŽ–4p0iÉpÉ:V(¼mÇ\rÓÖ‰/YÁËð)Ùt\ZF¼—%Á5š1‚y¬¡t@8qùÔgsœæ¥¤ZW6ÖM½ÅL·,TäçÒ°ÒR£–úÔðÊ¼‰hBhÒŽPO\\TÁ Sœ¶k.Dá¸=êÄw´å·¥		+jhI+:œûU;–ƒ<ÓEê¨àçÚ žàXz´Ák¹Zò]¬Hf³e“yÇ U«‰ƒ©\\ò\rU$«qŽjy†ŸAƒç¥.P&6Ò•$·\0ãÒ!ïÅ%¦æ‰0V6‘ŸzLà:RÆêŒw`Ó¼°IÁÅ&Ñ^1Øô£š\0ùsž)nÂéG©;„Ñ†BÍH–H£+Ö´Ešç9ÈúT‰j¼ák¦„Ý¢œK$hÈ¤…îIb@Rww«ñÚí\0ÚjÔa‰ãšW²›2gYDO™\rf<³£6ÉO±­ëÈ6ï}kâ½›·­8¶TcäW·×µK)p·“(;5Ñéßµû%ÚšœÄvËt®RC÷°j#	ÇÞ­ynŒšg§Xüsñ7ÜþÔ#ÝÀ5\"ü}ñr­\"•nÇZòØÓË“žµ&Í¬ÏíK‘>‚Ž¨õûÚY\nùgo·ZÙµý¢¯•ƒ=¸aþÉ¯\n…ÀLWmdã¥C¦¯±ItgÑ¿´œ)ûE»tþWàý ´k†ûÌ‡ý¡_7m=)*¸ù‰1„ZÔ\ZwÐúšÛã‡s‚n6±ë‘À«cÇÚÃ’ºœ9<`œWÊ©+€ÀE,¦]£l‡?ZË‘lk¾Œú’Oé±®áw‹ê¦«Gã»8Žã¿­|×Üöè~v9íšµi¬8\'q8ªTÒêN½O¥ ñœ$æ®FÍ^ÅPqûÐsï_8ÛkAÇ°Çµ]³ÔÝCbá¿Péy‰3è¸üQn¼o>õzAƒûå9íšù»ûjè“‹Ž=ÍX‹\\¿C‘t:^ÉØi³éhõhdŒ\rá¿\Ztwñ“ò“_:[x³S„ä\\“ƒëZ–ŸuØÿ\0ËB=êU6Ä®{ØÕO «ÖÚ“Œ“Šñ]?â”ä…¸·àu9ä×¡ø_‡ÄWK·(A\Ztàùµ\r‘ô‚”A¥.ŒÖêd6OQT48DV1GÓŠÑ‰J6âyô¯AYlsr¹lJ‡\'nÜb¤ÜqŠ®…~mÆ¥TTÎ3Q±QwDñ°#éTä¶:T^aU=Å(tóéZC]	²D…±@<8Å `zúP§;»\n°@ü¨\\cŽ”)\0õ=I4»¶òy4Ìòx{Ò±6J¬T“Ó*<õ=(ÉëšV‡«ðÔÈ\' Š7\r¾­KÝôÍÐu=Å7q+ê=iKAæšN1õ¡\rìwëQºädri¢/Þ31ã·4¹dR1Å/RâTŸc1ÀÆdj, 6Ýß© $¹\"²5BQ²\0¥a#™Ô#,Û«*évÄß6>µ·¨Ê7ãÎßÊ¦2CÑcH™\rµŸ³>ÐImÍ‘O–àÀ{Õ	.QK\rØoZ ÜœÝb1ÀïY—,ÌŽÃ­!ŸÅT¹¸eÉå=©Ý2ZDöÒe2y\"-ÈXÈ=«8]ìV9¡¯£nmÂ§r—÷„KÏÞ61ô¤7	!`ËCTÆÝÇnµEö²zF…«2Ð¸ÜìƒµB.˜Io—ÓR[¬Àd*º–%œžWÖ‹\\›šBåC7¡{Î2qíTÅÒ»À®)goÝœšZ­Jé¡tÎÀ’3I’KÏ½Q\0é}\\…ƒ7û¦ž·ÔZ²úNQ‹“LkÒÙß°ªŸo\0ŒƒÞœŒ$\\©ÈÍ;bc7”¬wcÖªÉvQŽÒ­W–Gf œ€jÕÉ”TDBÍ|Òæ²î§Ú\nç­E%ÇÌY~Qÿ\0ë¬û›¦‰üê¹X’Co]UrMbO&O&­ÜÎZ6àzVc0v$z}KAë Œàôá(+ŒÕY€(Ø<ŠH¥R˜çp¡]-ËbÚ¶U¹¥N‡,jß.(È#¿•\\›q\0€sþÐ«8òØ“Ò©–ýß¡4ôS´ç¯-„œ‰Ø¡à–üM>;‘°üÄãÒ¨¾sÓ4‘¹Œœw¥rô.C>Kn4ë‰÷)Ž*ûÙÏ>´ég8$qKÐ¤ÐÆl¶2OÖ²¨$õ¤SXŒRº©è	õ$™\'SÐguDÑŒqÁ§ï qÍ\rv\Z²zŽ@	çš\n\rF­×#5Çæ{õ-\\¨É\"@wî4É\Z3ƒL„}ãIäüÙýj­ÐIÙ›gê=ªHàT\\W²g€GÒ¤‰C9ÎÞ¹“ƒD[ç9àT›D(H5§ºÇzûÔWÆå~lz–Ñ¢c›ºÇ!\'“Ö°ç%bpÕ·¨\0®ë×‡|Ü“ZSIìD®‘˜GÌy R´R÷óúQl;à³ŠìŒt0RØÀ¦Š3ÎiÊ\n© â•­¡]bFß÷1W-Gï\0CêÀü¸aV¬C3ÛŠ%tˆ“:°å#SAl“ÔSOVÇ5fÜ…‡Zçi-QªÜM™Ï$gÐÒtþÛOP[ §¨ü+4âiè\"©8àÓã*AÔª7g¥$,É&…¨µ!P8§(u9¤È}ÄibeU%Ž}	¢UÇÃpñÿ\0µëR}·$õHß´`\ZIÜ	±UÌº2¬ÍkàIM¾Æ¦KÖ¶±jæä™²8>‚¤†òXA@§Ì…©ÓÁ¨LËÄ‡•ôWì÷`÷B9]Cdç5óŽ %‘Q†T‘È¯²ÿ\0gí0AahÊ2\nƒóV°·C)Ýn{åºyQ*ú\n•@e#ŒŽsQ‡”°ëKG*g\0Ôðž¢«R†íÔuÅ&®%½ËEð¬7Óãû¿2ŸÆªy„ŸCëV%”ÆªqÉ¢1]F›<ïl¶jdÉ<Š­dæ¦Y7ä‚´¸£µ‰7Ú’6óP´Ê­·œÓ”H9Í!“äsŠrœTJØç­<û\ZV=(Å0ÈÁˆÆàFF(\\ŽY†(Ô›ŽR§w¨ £“øÔDœôÂùVÁéÞ‹Ö&ßÏµ&ìŽ•ºªäž*8fÜÏ“òõÊØžWÚ¹»Þ©	›a^Å\r!rÇèŠE@CƒPJ\'ËYZ†Ù‘ógµ_–@›±È¬«ÉISØ{v§m­ŽgSc»ãÉê7†?0zßÖ.rH&¸Ý^à2¾[æ©4z#*kŒ—n€Öt×@ÏÍQ\\Ý˜Ô“ÓÐV|“†É-CA2Ä“pOèR¸¸i3Žƒ ¨%ºŽ=*—ö‚ø§qX´ÎäãZN£<ÕO¶®ÞàûSVäívÈˆ´ËIL£àŽÆªK3lz…®‘Aç&¢šq*Ç4$‘Ä‰v÷Ï¯5$——ß½cÊv’¹ÅF³ºñ¸Ô#XÜÑ„$@î)ò\\î_ïjÌ3ŽrØõ¨–÷¡¾cQŸ\0·Zíe¸InÃ®cØÐ²/$Õ/4_Äh´¨±g†jjÝ2~QTÄŸ)ÈªóßÊ`*•‹ÿ\0nÃ7pzU+»±–Ü7\Z¨g.TýÒ*»°Àãj¥©Z1¯p‡pf³.\'™:ãŠdÒåúðj«ÈÇ#¿cV¼‹Q[›æÎãUì\"¤yu5‚Tâ›ÐK[ŽuÞ¤)äÓ|¼mªÒ[ÈÙpNìw©	Ï8¬Ó 4cnN)TxëH{Õ4ÐÐªÅAÀÍ\nÅhÞ>ï$xn1·Þ 	K‘œRg®FsS¹ØŒ\0<sš…pÜúU{¨«2¸vwùsŠ˜gŒ\ZvÀ‡ üÇû´ãµóóßíQt	mmÝxô d6sÇ¥;½…1œï \Z`JNsÅ\nN\r7#¦FijDŠ6‚	Îh\\ãžM!A°€9¦”rqÎi¸Á\0´ûrPüä\Z”áŸœR.Ü¸¦6SµÔãŠtp)ÜTŽkKÛˆTå²¥M¹p	ÁmµÄâä5.S³U9*µ‹¨Gd_s+Ö¨§‰äÛµ—Ú²uû`b|æ´ŒZö$›P[–gÞö¬‰¤2ÊOðÓ’ÅÁîEJöW\nkhYng+´T@àp;Ñ´Ó\0{U“hè¤f ÚÉÃñ®”ãmlúŒÙÉ?Âi‚2I•*íÊ†i dÕ\'}‡{\r\r¬§œÕ»hð…±ÏôªÐ©àu&µLGÉé’+{ºÍ©n<7CW—÷i…éýê­365pC•8ükšNÆ±W3–À)Î>´€p_šzA´/ZKõ^APZÑn\n¡sŠr…Un94Ü…ã<PÒíéÔQ¹(vÑýáHÎª0~õV–ð¯Öª™‹Ù©Nà´,Ëx~`9ªê+æ˜^*H×4Æ—0ÕN	n•\"JÅ°¿7ÖS¸œýiÈ›•¿½ëBÜ%¹¯á{?·jÖÑÉqø×ßßtu²Ña@!5ñÂM!µÛ¯$+n8¯ÐÙ].0xùEtATWÑ!O94Üp\r7ÜÓÃ\r§ úÖÑ2Ù]£¿4áùSÔm8°Bž®G²*¹g9\0r*A¼œšÅn…™AéML[;vÓ¶ÖGzhÏ\'–›ŠÅåpËxªâv|ŽÔ×“j£Þ…M¨µWa-‰ª[ð©D€®íÜzÕf]ÝM)UH~aóšzÉ.õÇQê¦„ mßD²Tÿ\0ëQ±\\N{Q}	µ¤<Ïµ[4­XØ–äzT\0ÔfŸ$¾`ç­+°IÎ1ëBÈS }ßJe&à3EŠJÛäM/±N8¤.À¨šLV\\ŸZkPz!$¹%XàïXšŒ¤+œð?iJüŽ•…¬ÈÌ”ÅÎWX€ÛNïjâ5yH.Aãÿ\0¯]N§>¨Šâ5ÉJ+öæ¡3[\\Á¼¼ùœîùMP{ÅS÷³ôª×s.ö9¬é.Bî9¥~`JÅ—¹ffª!H$T-zp@«½ÆÐI94)t)ÆûVì\rÙÎ*3vØnËYr^»8=é¢íÊØ©Cµ•5H žE0ÎÃ85—ÁìÔ×›ŽîM&„•‹Ít¥‰$æ«5ÆãÉù‡½Tk ñšõ‚cÞ‹0iìi£gv¦’Iêk\'íLã“ÅIö—÷¸”[Ì,Ñ¢çO&5Ú\0õˆ5\"Ù?•)½|cp5ZìR]M¡xÀOÒ«=Êç%ÿ\0Yj$äšÁƒ	>¢•ŠK¹}¯PŽ¤Õ\"û™¾j…\nrÙö59E\'¨ô§a¨‘£vlÆª»`ðùü(Yƒ19±`Fx4l	ßF#¸äÔ\\°R2jÌqï\'½\'„à#DB×oÝ,µ=£\\$úÕµ`	$mÛJJ¶¯½4ƒ••>hÀùOsP¼»déœU©³9\"£\nTôâ„ÄÆÄå×$bŸ„G”€qÓQ•`p8¹ªLVÒÌ°òŽjü°<bšÀ(ïŸZb8gùºzÓl¥Àm¡ZYœ–Î:FÛð¨rvšWº‡Eà\ZŒ0A!Ï>µåõ¥nÈ¨¸Õ‡cqõ§Gž@8¦¬»ãøpÇ5¥¬+¦H¹\0äÐOÊqŽ*/8\0K}ÚX™;I¤Cûuõ©£”ˆÉ#\"™/@)¾k*)Zå/#Y’I§	Ib¢D-ó9æ”&åaŒ\\–‘¬VšŠÇw)È©“š‹Œ{Ð‰8Í=cÔÉ[±c\nãéê6¦Üþ5QA$ã5aK7ÒŸ=Š^ö¬“c>Fwýj»Û¶qÔw©–FE9á½©«>œf…$ÅË¡¶(FìãZ‘‘»Ÿ¥h+î‘·ëLh„™`qšµ6‰pL£\nIãõ­D¸Þ§#ÊªýŸrà>\r4¬‘ Ô¹_q(ò—XŽHÜ*xeSœw¬øˆ!¿•hEˆC´úÒ•‡Ü1‚yÍLgæéP°uF9Î=*”·2l ŠÂÅ¹®ÔÎ}*=øŒ·r8¹ñófûŽ7ñÜŽ´¹lT]É[²Xâ¤HÂ\0çëQ+áŸÜzÔ‚UóøRw.#Ó9>VbOZj “OUÝß‘PÇº÷†ùEñÀ\0yãSÂ•çv*M¬O@EZ÷–›Åû;èÿ\0j×–cœ/zû‡EAŒkž‹šùKömÑ\"IvîÜsÅ}Wm¹\"TÉƒ]°*8\\®Ù¤¬89¦ˆÔäã“LPDŒµ6ÝØ¹ÜzÖ—#Ô¹´Š]Èq¹ªx$q@9Ò·B–„‘©G\'4âIç­0Èã­(~phBÔpïE5$ƒKž¼`zÐ\"N]IféëHdm»sòÓTîû§?JA§ŽEC•Šç§·ƒËTJIQ¸`ÒÑä-ÅÜ}i»Ç<ÒœŒæ¢\"„R±&ñ×4ˆá”x¦cé­\"åxÎWÒªÈ^ƒ›\'5²ðV™pX£…¨••X†Z›ƒ}¬…#ûÀžÔÒÁ±¹=qÚ‘äPÌŠŒŸSNì”„‘7Ü{×9¬Hª§æ÷äVÅäØAÏ­s\ZìÁQÿ\0½ŠF±8ýfuˆ|×¯ê?,‹ÜzWO¬]gÍyßˆo,ŒŠ‚¢îc\\Ý§sY³]gv\"¢–ä¶A<\ZªÓa[Ï¹©°Ò¹1”€ß6Aªßk\nNj¸¸+“sUÌ¬ÄœÕ¨-44À\ncüU—%Xí Õg“rŸ˜“UÆð[$Jž[u\Z¹kÍË¹G430lœÔ>´”õ(4ÙnëP¬¹Ü	¢|ÎÒ?\nÏwÚû@\'4ÊØÑiÔ&dŠh¹;Xw=1TÄdœ*\\Çôì­s6ÀýÝÝéêr*»d\ZmcËsH»îRx94!d\'šˆd}jD”®sÍ;\nÄªÿ\0{ssLÚå[æâ£=sÁ£œŸË½_ºlx•@é“PIÎM8®>”c5*ËaÞâG!WaéS€¬	#wªÁ6³6O?•I¼ã%}Ä›CÌ@‚Tä\n` g¨ä#\nU)¦-C#æ†SŽTô§±Vô\r5„]‰¢d“;àY¨&Q´àâŒç¥!šF—Ób11•fÍ0!F*FlÚ*\0îû8(VbZlLòmp¤|§½#ùx )6wn#¥5ðìIIò‚¹VHÉ9$ñVíWÍC×Š!PêÊ@Ü*D,ü¨[\n>d2Äpß{Y•Ô æ®Ç´+¦°ü£ŠZô*Ú•ã/*í\'TÑE°žrM=#Â–Æ(ªŠ,roÝ¼R)%_©Å~PsK\0œzÒ±Q]Î}?\0€=1OQ…aÖ™ìü§Ò¸ÔeÜÓ–Ã•=±Ú‘]@b:ô¦!®qºžRµž¢^ôDðF)ëÉãŸ­4\r€ã;½i±‡$•÷§kìMÜw&e,ÄH«×=©‚GçB|åòqšV6ô%ÎYà”ªAHâ£Œ±Ü;R™6qšµ%°îšµŽîpÔ(b½OÖŸ±\'œÔƒÀÍ_=Á$ŠË!ARÅtÊyéíJÀj.IÇÒ³Ž¤ÚDÊøR:æ£|ƒøÒä(éÖœ\0I«BÒ#’Õ$MÙéÅW\ZK–Ý»Š°à2*ÅµÉE*ÃrúR^AÐ®4À°î<Õ2«‘»¥tÜ+®ÓŒûV}Í‚HX¡\0Ò¿B-¥Ìï7Ú—Í+Î÷ª²ÚÍ0<2HTîÅU‘%˜e2ç*qZú|Hò*˜’9¬(ïL)@?\nßðÄÑßê0ÇŽw\0?:•¶=°¾èâÓIƒ7^â§>ÕçtØíô˜Iå‚Ž\rzLk¼ã#ŠìZ#Ž÷Ôz8\rÓ54rob1U·ÉçÖž’1}ÄóK•½ÒÌ±sŒŽôå!ÆTäT/0’2SKØVVùqV™WÔx„¹?7éRm?…%1&Þ‡\rŒw§pJÛŒ(ÏSÒ”¶Tâ˜¼ž?JBp	&ÉŒb”| ÷¦€6“Þš	äqŠ\0‘OÊ8Çµ\'˜¯•ÏÝ¤R0ÙÛŸnõÈ¡Û›Ö‹ÛH’G8ùFï\\R&IÆ0EEfRw\r	!‹(ÍJ/dæêÄ«nn1Þ1V“qÀ)rJ²ã˜íPî!qž=(vã ÷”äá²}i7g“M9Çi»ñÇçRXqÆzTRÍŒ?ZŽk«É¨åœm¼ã½Z]ÄöÐ©zøF#æ÷®_Zaå¿=GZßº¸u$­rzõÆøØiX¤‘ÀëW@äçšó¿\\…fè+µÕç¦ä^k¯Ý1÷òÜ`\nÉìi¡‰s.X€xïUàŸÒ›4ÛrNzòE4W=3Í–­&xÈÈ¦	FÞœúRyß61Å(Ï~íU‹DJÌÁºí÷©\"|+r¥!™X)‚]½9­=Á=4™êvŠ‰Ÿž9Z©ïMb½Mäús–Æ*7\\’zš’=¯œSýà:ŠÉly¹ÛÍŠýic†U9õG,x$ÕûÌ|‚öù¸¦ªîÎ;Rçš’Ûž\n–ƒŠ òÛûæˆÉU ƒR1Ëg§µ\0:äÕÆÙ9ü)\\…É T‡½jàn1Ôx0À ý(íLXö3~õEä¹B?\Z`‹T~w^:SÕƒt9¦1Üm÷£ /#¥:4,­ŠjÇ¤!¹ûRÒ¶Ü`SUv¨\0ôªLc™øÉàTeðØÅ>’2õR}©hƒDFÑî\r÷³HUaÈ³VŒ[‰ÚF*´Ë†<æ§G±I¬ Œœ¯Öœ®í?JM»Ü1QÀe²Ù«¸Y1ùe¶“‘N€ºeBçÞ›¡‰š“É3I$E®:!X0§`²üûb¡’wŽ¢ûK¤‡…5dR&0È_¨ÛMþ[3o§5ÏlŒÐ²n\0\r\Z‡/QíŒmSš…¦(0M<°f=½©½É]-Á§mÿÙ','2013-12-17');
/*!40000 ALTER TABLE `tabinoutimageinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TabInOutImageInfo_AINS` AFTER INSERT ON TabInOutImageInfo FOR EACH ROW
begin
	insert into TabTmpInOutImageInfo ( RecordID, EnterImage, LeaveImage, AddedTime ) 
		values( New.RecordID, New.EnterImage, New.LeaveImage, New.AddedTime );
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TabInOutImageInfo_AUPD` AFTER UPDATE ON TabInOutImageInfo FOR EACH ROW
begin
	update TabTmpInOutImageInfo set LeaveImage = New.LeaveImage where RecordID = Old.RecordID;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tabinoutrecordinfo`
--

DROP TABLE IF EXISTS `tabinoutrecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabinoutrecordinfo` (
  `RecordID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LocationID` varchar(16) NOT NULL,
  `EnterTime` datetime NOT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  `EnterPlate` varchar(45) DEFAULT NULL,
  `LeavePlate` varchar(45) DEFAULT NULL,
  `State` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`RecordID`,`EnterTime`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH(EnterTime))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabinoutrecordinfo`
--

LOCK TABLES `tabinoutrecordinfo` WRITE;
/*!40000 ALTER TABLE `tabinoutrecordinfo` DISABLE KEYS */;
INSERT INTO `tabinoutrecordinfo` VALUES (57,'5107010001001012','2013-12-09 14:08:57','2013-12-09 14:08:59','å·A88888','å·A88888',3),(58,'5107010001001006','2013-12-09 14:09:00',NULL,NULL,NULL,1),(59,'5107010001001023','2013-12-09 14:11:04',NULL,NULL,NULL,1),(60,'5107010001001012','2013-12-09 14:11:10','2013-12-09 14:11:12',NULL,NULL,1),(61,'5107010001001015','2013-12-09 14:12:15',NULL,NULL,NULL,1),(62,'5107010001001012','2013-12-09 14:17:11','2013-12-09 14:17:14','å·A88888','å·A88888',3),(63,'5107010001001008','2013-12-03 12:19:57','3000-01-01 12:01:01','å·A88888','å·A88888',1),(64,'5107010001001012','2013-12-17 20:16:09','2013-12-17 20:16:10',NULL,NULL,1),(65,'5107010001001012','2013-12-17 20:18:59','2013-12-17 20:19:00',NULL,NULL,1),(66,'5107010001001012','2013-12-17 20:22:30','2013-12-17 20:22:32',NULL,NULL,1),(67,'5107010001001012','2013-12-17 20:24:21','2013-12-17 20:24:23',NULL,NULL,1),(68,'5107010001001012','2013-12-17 20:28:01','2013-12-17 20:28:04',NULL,NULL,1),(69,'5107010001001012','2013-12-17 20:29:44','2013-12-17 20:29:46',NULL,NULL,1),(73,'5107010001001012','2013-12-17 20:38:23',NULL,'å·A88888',NULL,1),(74,'5107010001001012','2013-12-17 20:44:01','2013-12-17 20:44:43','å·A88888','å·A88888',3),(76,'5107010001001012','2013-12-17 20:49:39','2013-12-17 20:52:16',NULL,NULL,1),(78,'5107010001001012','2013-12-17 21:03:09','2013-12-17 21:07:36',NULL,NULL,1),(79,'5107010001001012','2013-12-17 21:10:12','2013-12-17 21:12:43',NULL,NULL,1),(80,'5107010001001012','2013-12-17 21:25:09','2013-12-17 21:28:04',NULL,NULL,1),(82,'5107010001001028','2013-12-17 21:40:41','2013-12-17 21:46:15',NULL,NULL,1);
/*!40000 ALTER TABLE `tabinoutrecordinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `streetroadpark`.`TabInOutRecordInfo_AINS`
AFTER INSERT ON `streetroadpark`.`tabinoutrecordinfo`
FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin
	-- 0 è¡¨æœ‰ä¼ æ„Ÿå™¨è¿›å…¥è®°å½• æ’å…¥
-- 1 è¡¨è„±æœºåŽå®Œæ•´è®°å½• æ’å…¥
-- 2 è¡¨æœ‰å¹³æ¿è¿›å…¥è®°å½• æ›´æ–°
-- 3 è¡¨æœ‰ä¼ æ„Ÿå™¨ç¦»å¼€è®°å½• æ›´æ–°
-- 4 è¡¨æœ‰å¹³æ¿ç¦»å¼€è®°å½• æ›´æ–°
	insert into TabTmpInOutRecordInfo( RecordId, LocationID, EnterTime, LeaveTime, EnterPlate, LeavePlate, State ) 
		VALUES( New.RecordID, New.LocationID, New.EnterTime, New.LeaveTime, New.EnterPlate, New.LeavePlate, New.State );

	Insert Into TabUploadInOutDataInfo( RecordId, LocationID, EnterTime, LeaveTime, EnterPlate, LeavePlate, State, Type )
		Values( New.RecordID, New.LocationID, New.EnterTime, New.LeaveTime, New.EnterPlate, New.LeavePlate, New.State,
		IF( New.LeavePlate is null, 0, 1 ) );
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `streetroadpark`.`TabInOutRecordInfo_AUPD`
AFTER UPDATE ON `streetroadpark`.`tabinoutrecordinfo`
FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin
	update TabTmpInOutRecordInfo set LocationID = IFNULL( Old.LocationID, New.LocationID ),
									 EnterTime = IFNULL( Old.EnterTime, New.EnterTime ),
									 LeaveTime = IFNULL( Old.LeaveTime, New.LeaveTime ),
						             EnterPlate = IFNULL( Old.EnterPlate, New.EnterPlate ),
									 LeavePlate = IFNULL( Old.LeavePlate, New.LeavePlate ),
									 State = Old.State
						   where RecordID = Old.RecordID;

	update TabUploadInOutDataInfo set LeaveTime = New.LeaveTime,
						             EnterPlate = New.EnterPlate,
									 LeavePlate = New.LeavePlate,
									 State = New.State,
									 Type = IF( New.LeavePlate is not null, 4, IF( New.LeaveTime is not null, 3, IF( New.EnterPlate is not null, 2, 0 ) ) )
						   where RecordID = Old.RecordID;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TabInOutRecordInfo_BDEL` BEFORE DELETE ON TabInOutRecordInfo FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin 
    delete from TabFeeInfo where RecordID = old.RecordID;
	delete from TabInOutImageInfo where RecordID = old.RecordID;
	delete from TabUploadInOutDataInfo where RecordID = old.RecordID;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tablocationhavecarinfo`
--

DROP TABLE IF EXISTS `tablocationhavecarinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablocationhavecarinfo` (
  `LocationID` varchar(16) NOT NULL COMMENT '510107+0001+001+001\nAdministrativeID+SelfNumber+ReceiverID+DetectorID',
  `EnterTime` datetime NOT NULL,
  `EnterImage` longblob,
  `RecordID` bigint(20) unsigned NOT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  `Prepayment` smallint(6) DEFAULT '0',
  PRIMARY KEY (`LocationID`),
  UNIQUE KEY `StateDataID_UNIQUE` (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablocationhavecarinfo`
--

LOCK TABLES `tablocationhavecarinfo` WRITE;
/*!40000 ALTER TABLE `tablocationhavecarinfo` DISABLE KEYS */;
INSERT INTO `tablocationhavecarinfo` VALUES ('5107010001001028','2013-12-17 21:40:41',NULL,82,'2013-12-17 21:46:15',0);
/*!40000 ALTER TABLE `tablocationhavecarinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabloginfo`
--

DROP TABLE IF EXISTS `tabloginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabloginfo` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LogInfo` longtext COMMENT 'IP@ClientID@Serial@Credit@Type@SQL',
  `LogDateTime` datetime NOT NULL,
  PRIMARY KEY (`LogID`,`LogDateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=1074 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH( LogDateTime ))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabloginfo`
--

LOCK TABLES `tabloginfo` WRITE;
/*!40000 ALTER TABLE `tabloginfo` DISABLE KEYS */;
INSERT INTO `tabloginfo` VALUES (272,'<Data><DataType>UNITINFO</DataType><Accessor><IP>127.0.0.1</IP><ClientID>12345</ClientID><TypeCode>DataInfo</TypeCode><UserID>1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-02 23:21:31'),(273,'<Data><DataType>UNITINFO</DataType><Accessor><IP>127.0.0.1</IP><ClientID>12345</ClientID><TypeCode>DataInfo</TypeCode><UserID>1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-02 23:21:53'),(274,'<Data><DataType>DateTime</DataType><Accessor><IP>127.0.0.1</IP><ClientID>12345</ClientID><TypeCode>DataInfo</TypeCode><UserID>1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-02 23:22:05'),(275,'<Data><DataType>DateTime</DataType><Accessor><IP>127.0.0.1</IP><ClientID>12345</ClientID><TypeCode>DataInfo</TypeCode><UserID>1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-02 23:22:41'),(276,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.16.156</IP><ClientID>99000316909329</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-07 13:01:19'),(277,NULL,'2013-12-07 13:01:20'),(278,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.16.156</IP><ClientID>99000316909329</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-07 13:01:29'),(279,NULL,'2013-12-07 13:01:31'),(280,'<Data><DeviceID>860702021288287</DeviceID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>ConfigInfo</TypeCode><UserID></UserID></Accessor></Data> SP:QueryConfigRecord','2013-12-09 13:33:44'),(281,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-09 13:33:49'),(282,'{\"List\":[{\"ParkID\":\"5107010001\",\"UserName\":\"åˆ˜å¤‡\",\"UserPwd\":\"OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=\",\"UserJobNumber\":\"002\",\"PwdMD5\":\"6456c7fac445f3c1c3e7f4405159d80e\"}]} SP:UserRecord','2013-12-09 13:33:51'),(283,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:33:57'),(284,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:35:04'),(285,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:35:06'),(286,'<Data><DeviceID>860702021288287</DeviceID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>ConfigInfo</TypeCode><UserID></UserID></Accessor></Data> SP:QueryConfigRecord','2013-12-09 13:35:50'),(287,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:35:53'),(288,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:35:55'),(289,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:36:49'),(290,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:36:52'),(291,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-09 13:37:02'),(292,'<Data><DataType>DateTime</DataType><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>DataInfo</TypeCode><UserID>002</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-09 13:37:13'),(293,'<Data><DeviceID>99000316909329</DeviceID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>ConfigInfo</TypeCode><UserID></UserID></Accessor></Data> SP:QueryConfigRecord','2013-12-09 13:45:25'),(294,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-09 13:45:29'),(295,'{\"List\":[{\"ParkID\":\"5107010001\",\"UserName\":\"åˆ˜å¤‡\",\"UserPwd\":\"OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=\",\"UserJobNumber\":\"002\",\"PwdMD5\":\"6456c7fac445f3c1c3e7f4405159d80e\"}]} SP:UserRecord','2013-12-09 13:45:32'),(296,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 13:45:37'),(297,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-09 13:45:45'),(298,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:47:43</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:47:43'),(299,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:48:58</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:48:58'),(300,'<Data><LocationID>5107010001###001</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 13:47:43</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>1</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 13:49:05'),(301,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:49:58</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:49:58'),(302,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:50:00</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:50:00'),(303,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:50:51</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:50:51'),(304,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:51:36</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:51:36'),(305,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:51:37</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:51:37'),(306,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:52:06</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:52:06'),(307,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:52:20</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:52:20'),(308,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:54:24</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:54:24'),(309,'<Data><LocationID>5107010001###001</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 13:57:47</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>3</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 13:58:00'),(310,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:58:04</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:58:04'),(311,'<Data><LocationID>5107010001001001</LocationID>                                            <DateTime>2013-12-09 13:59:54</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 13:59:54'),(312,'<Data><LocationID>5107010001001006</LocationID>                                            <DateTime>2013-12-09 14:04:01</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:04:01'),(313,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:06:44</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:06:44'),(314,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:06:54</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:06:54'),(315,'<Data><LocationID>5107010001001015</LocationID>                                            <DateTime>2013-12-09 14:06:59</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:06:59'),(316,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:07:35</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:07:35'),(317,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:07:38</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:07:38'),(318,'<Data><LocationID>5107010001001025</LocationID>                                            <DateTime>2013-12-09 14:08:02</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:08:02'),(319,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 14:07:35</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>1</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 14:08:14'),(320,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 14:07:38</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>3</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 14:08:28'),(321,'<Data><LocationID>5107010001001017</LocationID>                                            <DateTime>2013-12-09 14:08:28</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:08:28'),(322,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:08:57</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:08:57'),(323,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:08:59</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:08:59'),(324,'<Data><LocationID>5107010001001006</LocationID>                                            <DateTime>2013-12-09 14:09:00</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:09:00'),(325,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 14:08:57</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>1</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 14:09:14'),(326,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 14:08:59</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>3</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 14:09:28'),(327,'<Data><LocationID>5107010001001023</LocationID>                                            <DateTime>2013-12-09 14:11:04</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:11:04'),(328,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:11:10</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:11:11'),(329,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:11:12</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:11:12'),(330,'<Data><DeviceID>99000316909329</DeviceID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>ConfigInfo</TypeCode><UserID></UserID></Accessor></Data> SP:QueryConfigRecord','2013-12-09 14:11:19'),(331,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 14:11:21'),(332,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-09 14:11:22'),(333,'<Data><LocationID>5107010001001025</LocationID>                                            <DateTime>2013-12-09 14:11:33</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:11:33'),(334,'<Data><LocationID>5107010001001015</LocationID>                                            <DateTime>2013-12-09 14:12:15</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:12:15'),(335,'<Data><DeviceID>99000316909329</DeviceID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>ConfigInfo</TypeCode><UserID></UserID></Accessor></Data> SP:QueryConfigRecord','2013-12-09 14:14:02'),(336,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 14:14:06'),(337,'<Data><DeviceID>99000316909329</DeviceID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>ConfigInfo</TypeCode><UserID></UserID></Accessor></Data> SP:QueryConfigRecord','2013-12-09 14:16:36'),(338,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>002</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 14:16:48'),(339,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-09 14:16:49'),(340,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:17:11</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:17:12'),(341,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-09 14:17:14</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-09 14:17:14'),(342,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 14:17:11</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>1</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 14:21:29'),(343,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-09 14:17:14</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.104</IP><ClientID>99000316909329</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>002</UserID></Accessor>                                            <UserID>002</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>3</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-09 14:21:53'),(344,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.1.105</IP><ClientID>A000004909E1BA</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-09 17:21:03'),(345,'{\"List\":[{\"ParkID\":\"5107010001\",\"UserName\":\"åˆ˜å¤‡\",\"UserPwd\":\"OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=\",\"UserJobNumber\":\"002\",\"PwdMD5\":\"6456c7fac445f3c1c3e7f4405159d80e\"}]} SP:UserRecord','2013-12-09 17:21:05'),(346,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>A000004909E1BA</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-09 17:21:07'),(347,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-09 17:21:09'),(354,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-16 16:06:09'),(355,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-16 16:06:09'),(356,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-16 16:06:09'),(357,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-16 16:06:09'),(358,'SP:DownloadFeeRate','2013-12-16 16:06:09'),(359,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:16:09</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:16:10'),(360,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:16:10</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:16:10'),(361,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-17 20:18:35'),(362,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:18:41'),(363,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 20:18:42'),(364,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:18:59</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:18:59'),(365,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:19:00</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:19:00'),(366,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-17 20:20:24'),(367,'{\"List\":[{\"ParkID\":\"5107010001\",\"UserName\":\"å…³ç¾½\",\"UserPwd\":\"OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=\",\"UserJobNumber\":\"001\",\"PwdMD5\":\"6456c7fac445f3c1c3e7f4405159d80e\"},{\"ParkID\":\"5107010001\",\"UserName\":\"km\",\"UserPwd\":\"OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=\",\"UserJobNumber\":\"002\",\"PwdMD5\":\"6456c7fac445f3c1c3e7f4405159d80e\"}]} SP:UserRecord','2013-12-17 20:20:25'),(368,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.103</IP><ClientID>860702021288287</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:20:27'),(369,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 20:20:28'),(370,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:21:49'),(371,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 20:21:51'),(372,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:22:30</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:22:30'),(373,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:22:32</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:22:32'),(374,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:24:21</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:24:21'),(375,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:24:23</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:24:23'),(376,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:27:41'),(377,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 20:27:43'),(378,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:28:01</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:28:01'),(379,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:28:04</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:28:04'),(380,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:29:44</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:29:44'),(381,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:29:46</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:29:46'),(382,'<Data><DataType>DeleteLocationInterval@012</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:29:46'),(383,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:32:39</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:32:39'),(384,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:32:40</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:32:40'),(385,'<Data><DataType>DeleteLocationInterval@012</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:32:40'),(386,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:35:07'),(387,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 20:35:09'),(388,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:35:26</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:35:26'),(389,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:35:28</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:35:28'),(390,'<Data><DataType>DeleteLocationInterval@012</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:35:29'),(391,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:37:43</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:37:43'),(392,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:37:45</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:37:45'),(393,'<Data><DataType>DeleteLocationInterval@012</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:37:45'),(394,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:38:23</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:38:23'),(395,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-17 20:38:23</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>001</UserID></Accessor>                                            <UserID>001</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>1</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-17 20:38:39'),(396,'<Data><DataType>DateTime</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>001</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:38:44'),(397,'<Data><DataType>DeleteLocationLeave@012</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:39:02'),(398,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:43:38'),(399,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 20:43:39'),(400,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:44:01</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:44:01'),(401,'<Data><LocationID>5107010001###012</LocationID>                                            <Plate>å·A88888</Plate>                                            <Pay>0</Pay>                                            <Operator>æœªçŸ¥</Operator>                                            <Time>2013-12-17 20:44:01</Time>                                            <Image/>                                            <Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>TabletNormalData</TypeCode><UserID>001</UserID></Accessor>                                            <UserID>001</UserID>                                            <FeeReceivable>0</FeeReceivable>                                            <RecordType>1</RecordType>                                            <FreeType>0</FreeType></Data> SP:TabletNormalRecord','2013-12-17 20:44:17'),(402,'<Data><DataType>DateTime</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>001</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:44:23'),(403,'<Data><LocationID>5107010001001028</LocationID>                                            <DateTime>2013-12-17 20:44:34</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:44:34'),(404,'<Data><LocationID>5107010001001028</LocationID>                                            <DateTime>2013-12-17 20:44:41</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:44:41'),(405,'<Data><DataType>DeleteLocationInterval@028</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:44:41'),(406,'<Data><LocationID>5107010001###012</LocationID>                                         <Plate>å·A88888</Plate>                                         <Pay>0</Pay>                                         <Operator>æœªçŸ¥</Operator>                                         <Time>2013-12-17 20:44:23</Time>                                         <Image/>                                         <Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>TabletManualData</TypeCode><UserID>001</UserID></Accessor>                                         <UserID>001</UserID>                                         <SensorTime>2013-12-17 20:44:43</SensorTime>                                         <FeeReceivable>0</FeeReceivable>                                         <RecordType>3</RecordType>                                         <FreeType>0</FreeType></Data> SP:TabletManualRecord','2013-12-17 20:44:44'),(407,'<Data><DataType>DeleteLocationLeave@012</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 20:44:44'),(408,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:49:39</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:49:39'),(409,'<Data><LocationID>5107010001001028</LocationID>                                            <DateTime>2013-12-17 20:50:50</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:50:50'),(410,'<Data><LocationID>5107010001001028</LocationID>                                            <DateTime>2013-12-17 20:50:57</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:50:57'),(411,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-17 20:51:01'),(412,'{\"List\":[{\"ParkID\":\"5107010001\",\"UserName\":\"å…³ç¾½\",\"UserPwd\":\"OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=\",\"UserJobNumber\":\"001\",\"PwdMD5\":\"6456c7fac445f3c1c3e7f4405159d80e\"},{\"ParkID\":\"5107010001\",\"UserName\":\"km\",\"UserPwd\":\"OTZFNzkyMTg5NjVFQjcyQzkyQTU0OURENUEzMzAxMTI=\",\"UserJobNumber\":\"002\",\"PwdMD5\":\"6456c7fac445f3c1c3e7f4405159d80e\"}]} SP:UserRecord','2013-12-17 20:51:03'),(413,'<Data><UnitID>771237583</UnitID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GroupSelect</TypeCode><UserID>-1</UserID></Accessor></Data> SP:GroupRecord','2013-12-17 20:51:06'),(414,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:51:09'),(415,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 20:52:16</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 20:52:16'),(416,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 20:57:36'),(417,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 20:57:44'),(418,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:49:39\"},{\"LocationID\":\"5107010001001028\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:49:39\",\"LeaveTime\":\"2013-12-17 20:52:16\"},{\"LocationID\":\"5107010001001028\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:00:29'),(419,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:03:09</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:03:09'),(420,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:03:09\"},{\"LocationID\":\"5107010001001028\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001028\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:03:20'),(421,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:07:25'),(422,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:07:29'),(423,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:07:36</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:07:36'),(424,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:10:12</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:10:12'),(425,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:12:43</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:12:43'),(426,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:12:48'),(427,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:12:49'),(428,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:10:12\"},{\"LocationID\":\"5107010001001028\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:10:12\",\"LeaveTime\":\"2013-12-17 21:12:43\"},{\"LocationID\":\"5107010001001028\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:12:58'),(429,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:10:12\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:10:12\",\"LeaveTime\":\"2013-12-17 21:12:43\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:14:19'),(430,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:10:12\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:10:12\",\"LeaveTime\":\"2013-12-17 21:12:43\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:15:00'),(431,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:10:12\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:10:12\",\"LeaveTime\":\"2013-12-17 21:12:43\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:17:35'),(432,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:10:12\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:10:12\",\"LeaveTime\":\"2013-12-17 21:12:43\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:18:09'),(433,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:20:50'),(434,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:20:51'),(435,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:10:12\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:10:12\",\"LeaveTime\":\"2013-12-17 21:12:43\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:20:57'),(436,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:24:15'),(437,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:24:17'),(438,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:10:12\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"79\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:10:12\",\"LeaveTime\":\"2013-12-17 21:12:43\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:24:26'),(439,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:25:09</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:25:09'),(440,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:28:04</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:28:04'),(441,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:29:10</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:29:10'),(442,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:29:31'),(443,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:29:35'),(444,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:29:10\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:29:42'),(445,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:32:31'),(446,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:32:33'),(447,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:29:10\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:32:42'),(448,'<Data><LocationID>5107010001001012</LocationID>                                            <DateTime>2013-12-17 21:33:11</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:33:11'),(449,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:37:20'),(450,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:37:21'),(451,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:29:10\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 20:50:50\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:29:10\",\"LeaveTime\":\"2013-12-17 21:33:11\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"77\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 20:50:50\",\"LeaveTime\":\"2013-12-17 20:50:57\"}]} SP:UnhandledSensorRecord','2013-12-17 21:37:28'),(452,'<Data><DataType>DeleteLocationInterval@028</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 21:37:28'),(453,'<Data><LocationID>5107010001001028</LocationID>                                            <DateTime>2013-12-17 21:40:41</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:40:41'),(454,'<Data><ParkID>5107010001</ParkID><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>GetFeeRate</TypeCode><UserID>001</UserID></Accessor></Data> SP:GetFeeRate','2013-12-17 21:41:45'),(455,'{\"Message\":\"ç”¨æˆ·ç™»å½•æˆåŠŸã€‚\"} SP:UserRecord','2013-12-17 21:41:46'),(456,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:29:10\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"82\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:40:41\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:29:10\",\"LeaveTime\":\"2013-12-17 21:33:11\"}]} SP:UnhandledSensorRecord','2013-12-17 21:41:53'),(457,'{\"List\":[{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:29:10\"},{\"LocationID\":\"5107010001001028\",\"RecordID\":\"82\",\"State\":\"1\",\"EnterTime\":\"2013-12-17 21:40:41\"},{\"LocationID\":\"5107010001001012\",\"RecordID\":\"81\",\"State\":\"0\",\"Prepayment\":\"0\",\"EnterTime\":\"2013-12-17 21:29:10\",\"LeaveTime\":\"2013-12-17 21:29:11\"}]} SP:UnhandledSensorRecord','2013-12-17 21:42:17'),(458,'<Data><DataType>DeleteLocationInterval@012</DataType><Accessor><IP>192.168.1.105</IP><ClientID>355031040749448</ClientID><TypeCode>DataInfo</TypeCode><UserID>-1</UserID></Accessor></Data> SP:QueryCommonRecord','2013-12-17 21:42:17'),(459,'<Data><LocationID>5107010001001028</LocationID>                                            <DateTime>2013-12-17 21:46:15</DateTime>                                            <Accessor>Localhost</Accessor></Data> SP:SensorRecord','2013-12-17 21:46:15'),(460,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 20:50:25'),(461,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 20:50:26'),(462,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 20:50:26'),(463,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 20:50:26'),(464,'SP:DownloadFeeRate','2013-12-18 20:50:26'),(465,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 20:52:14'),(466,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 20:52:14'),(467,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 20:52:14'),(468,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 20:52:14'),(469,'SP:DownloadFeeRate','2013-12-18 20:52:14'),(470,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 20:55:10'),(471,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 20:55:10'),(472,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 20:55:10'),(473,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 20:55:10'),(474,'SP:DownloadFeeRate','2013-12-18 20:55:10'),(475,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 21:07:11'),(476,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 21:07:11'),(477,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 21:07:11'),(478,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 21:07:11'),(479,'SP:DownloadFeeRate','2013-12-18 21:07:11'),(480,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 21:14:44'),(481,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 21:14:44'),(482,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 21:14:44'),(483,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 21:14:44'),(484,'SP:DownloadFeeRate','2013-12-18 21:14:44'),(485,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 21:34:38'),(486,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 21:34:38'),(487,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 21:34:38'),(488,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 21:34:38'),(489,'SP:DownloadFeeRate','2013-12-18 21:34:38'),(490,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 21:41:38'),(491,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 21:41:38'),(492,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 21:41:38'),(493,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 21:41:38'),(494,'SP:DownloadFeeRate','2013-12-18 21:41:38'),(495,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 21:49:22'),(496,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 21:49:22'),(497,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 21:49:22'),(498,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 21:49:22'),(499,'SP:DownloadFeeRate','2013-12-18 21:49:22'),(500,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 22:02:54'),(501,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 22:02:54'),(502,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 22:02:54'),(503,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 22:02:54'),(504,'SP:DownloadFeeRate','2013-12-18 22:02:54'),(505,'SP:CenterQueryImage','2013-12-18 22:13:38'),(506,'SP:CenterQueryImage','2013-12-18 22:13:55'),(507,'SP:CenterQueryImage','2013-12-18 22:15:21'),(508,'SP:CenterQueryImage','2013-12-18 22:19:48'),(509,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 22:37:56'),(510,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 22:37:56'),(511,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 22:37:56'),(512,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 22:37:56'),(513,'SP:DownloadFeeRate','2013-12-18 22:37:56'),(514,'SP:CenterQueryImage','2013-12-18 22:38:27'),(515,'SP:CenterQueryImage','2013-12-18 22:38:36'),(516,'SP:CenterQueryImage','2013-12-18 22:38:41'),(517,'SP:CenterQueryImage','2013-12-18 22:38:46'),(518,'SP:CenterQueryImage','2013-12-18 22:38:51'),(519,'SP:CenterQueryImage','2013-12-18 22:38:56'),(520,'SP:CenterQueryImage','2013-12-18 22:39:02'),(521,'SP:CenterQueryImage','2013-12-18 22:39:07'),(522,'SP:CenterQueryImage','2013-12-18 22:39:12'),(523,'SP:CenterQueryImage','2013-12-18 22:39:17'),(524,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 22:44:40'),(525,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 22:44:40'),(526,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 22:44:40'),(527,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 22:44:40'),(528,'SP:DownloadFeeRate','2013-12-18 22:44:40'),(529,'SP:CenterQueryImage','2013-12-18 22:44:45'),(530,'SP:CenterQueryImage','2013-12-18 22:46:17'),(531,'SP:CenterQueryImage','2013-12-18 22:46:30'),(532,'SP:CenterQueryImage','2013-12-18 22:46:35'),(533,'SP:CenterQueryImage','2013-12-18 22:49:07'),(534,'SP:CenterQueryImage','2013-12-18 22:49:38'),(535,'SP:CenterQueryImage','2013-12-18 22:50:15'),(536,'SP:CenterQueryImage','2013-12-18 22:50:43'),(537,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 22:55:20'),(538,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 22:55:20'),(539,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 22:55:20'),(540,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 22:55:20'),(541,'SP:DownloadFeeRate','2013-12-18 22:55:20'),(542,'SP:CenterQueryImage','2013-12-18 22:56:01'),(543,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-18 23:00:07'),(544,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-18 23:00:07'),(545,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-18 23:00:07'),(546,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-18 23:00:07'),(547,'SP:DownloadFeeRate','2013-12-18 23:00:07'),(548,'SP:CenterQueryImage','2013-12-18 23:00:37'),(549,'SP:CenterQueryImage','2013-12-18 23:02:16'),(550,'SP:CenterQueryImage','2013-12-18 23:02:57'),(551,'SP:CenterQueryImage','2013-12-18 23:04:58'),(552,'SP:CenterQueryImage','2013-12-18 23:06:12'),(553,'SP:CenterQueryImage','2013-12-18 23:09:32'),(554,'SP:CenterQueryImage','2013-12-18 23:10:56'),(555,'SP:CenterQueryImage','2013-12-18 23:12:02'),(556,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 17:19:15'),(557,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 17:19:15'),(558,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 17:19:16'),(559,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 17:19:16'),(560,'SP:DownloadFeeRate','2013-12-19 17:19:16'),(561,'SP:CenterQueryImage','2013-12-19 17:24:37'),(562,'SP:CenterQueryImage','2013-12-19 17:26:12'),(563,'SP:CenterQueryImage','2013-12-19 17:27:17'),(564,'SP:CenterQueryImage','2013-12-19 17:27:44'),(565,'SP:CenterQueryImage','2013-12-19 17:28:15'),(566,'SP:CenterQueryImage','2013-12-19 17:29:25'),(567,'SP:CenterQueryImage','2013-12-19 17:30:41'),(568,'SP:CenterQueryImage','2013-12-19 17:31:47'),(569,'SP:CenterQueryImage','2013-12-19 17:32:28'),(570,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 17:34:13'),(571,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 17:34:13'),(572,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 17:34:13'),(573,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 17:34:13'),(574,'SP:DownloadFeeRate','2013-12-19 17:34:13'),(575,'SP:CenterQueryImage','2013-12-19 17:34:31'),(576,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 17:39:51'),(577,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 17:39:51'),(578,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 17:39:51'),(579,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 17:39:51'),(580,'SP:DownloadFeeRate','2013-12-19 17:39:51'),(581,'SP:CenterQueryImage','2013-12-19 17:40:13'),(582,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 18:08:00'),(583,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 18:08:00'),(584,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 18:08:00'),(585,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 18:08:00'),(586,'SP:DownloadFeeRate','2013-12-19 18:08:00'),(587,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 18:19:28'),(588,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 18:19:28'),(589,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 18:19:28'),(590,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 18:19:28'),(591,'SP:DownloadFeeRate','2013-12-19 18:19:28'),(592,'SP:CenterQueryImage','2013-12-19 18:27:03'),(593,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 18:31:22'),(594,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 18:31:22'),(595,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 18:31:22'),(596,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 18:31:22'),(597,'SP:DownloadFeeRate','2013-12-19 18:31:22'),(598,'SP:CenterQueryImage','2013-12-19 18:32:29'),(599,'SP:CenterQueryImage','2013-12-19 18:42:24'),(600,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 18:44:08'),(601,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 18:44:08'),(602,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 18:44:08'),(603,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 18:44:08'),(604,'SP:DownloadFeeRate','2013-12-19 18:44:08'),(605,'SP:CenterQueryImage','2013-12-19 18:49:20'),(606,'SP:CenterQueryImage','2013-12-19 19:10:51'),(607,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 19:12:16'),(608,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 19:12:16'),(609,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 19:12:16'),(610,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 19:12:16'),(611,'SP:DownloadFeeRate','2013-12-19 19:12:16'),(612,'SP:CenterQueryImage','2013-12-19 19:12:54'),(613,'SP:CenterQueryImage','2013-12-19 19:15:27'),(614,'SP:CenterQueryImage','2013-12-19 19:18:16'),(615,'SP:CenterQueryImage','2013-12-19 19:18:44'),(616,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 20:12:40'),(617,'Insert Into TabCenterUserInfo( UserJobNumber, UserPwd, UserName, ParkID ) Values (\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å¼ é£ž\",\"5107010001\"),(\"001\",\"96E79218965EB72C92A549DD5A330112\",\"å…³ç¾½\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"åˆ˜å¤‡\",\"5107010001\"),(\"002\",\"96E79218965EB72C92A549DD5A330112\",\"km\",\"5107010001\") ON DUPLICATE KEY UPDATE UserPwd = VALUES( UserPwd ), UserName = VALUES( UserName ), ParkID = VALUES( ParkID ) SP:ExecuteSQL','2013-12-19 20:12:40'),(618,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 20:12:40'),(619,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 20:12:40'),(620,'SP:DownloadFeeRate','2013-12-19 20:12:40'),(621,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 22:06:38'),(622,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 22:06:38'),(623,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 22:06:38'),(624,'SP:DownloadFeeRate','2013-12-19 22:06:38'),(625,'SP:CenterQueryImage','2013-12-19 22:07:34'),(626,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 23:02:53'),(627,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 23:02:53'),(628,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 23:02:53'),(629,'SP:DownloadFeeRate','2013-12-19 23:02:53'),(630,'SP:CenterQueryImage','2013-12-19 23:03:20'),(631,'SP:CenterQueryImage','2013-12-19 23:03:49'),(632,'SP:CenterQueryImage','2013-12-19 23:03:58'),(633,'SP:CenterQueryImage','2013-12-19 23:05:15'),(634,'SP:CenterQueryImage','2013-12-19 23:09:49'),(635,'SP:CenterQueryImage','2013-12-19 23:10:53'),(636,'SP:CenterQueryImage','2013-12-19 23:11:18'),(637,'SP:CenterQueryImage','2013-12-19 23:11:26'),(638,'SP:CenterQueryImage','2013-12-19 23:11:54'),(639,'SP:CenterQueryImage','2013-12-19 23:12:00'),(640,'SP:CenterQueryImage','2013-12-19 23:12:17'),(641,'SP:CenterQueryImage','2013-12-19 23:12:22'),(642,'SP:CenterQueryImage','2013-12-19 23:12:27'),(643,'SP:CenterQueryImage','2013-12-19 23:12:33'),(644,'SP:CenterQueryImage','2013-12-19 23:12:40'),(645,'SP:CenterQueryImage','2013-12-19 23:12:45'),(646,'SP:CenterQueryImage','2013-12-19 23:12:51'),(647,'SP:CenterQueryImage','2013-12-19 23:12:56'),(648,'SP:CenterQueryImage','2013-12-19 23:13:10'),(649,'SP:CenterQueryImage','2013-12-19 23:13:15'),(650,'SP:CenterQueryImage','2013-12-19 23:13:20'),(651,'SP:CenterQueryImage','2013-12-19 23:13:25'),(652,'SP:CenterQueryImage','2013-12-19 23:13:31'),(653,'SP:CenterQueryImage','2013-12-19 23:13:39'),(654,'SP:CenterQueryImage','2013-12-19 23:13:44'),(655,'SP:CenterQueryImage','2013-12-19 23:13:49'),(656,'SP:CenterQueryImage','2013-12-19 23:13:55'),(657,'SP:CenterQueryImage','2013-12-19 23:14:00'),(658,'SP:CenterQueryImage','2013-12-19 23:14:05'),(659,'SP:CenterQueryImage','2013-12-19 23:14:10'),(660,'SP:CenterQueryImage','2013-12-19 23:14:15'),(661,'SP:CenterQueryImage','2013-12-19 23:14:20'),(662,'SP:CenterQueryImage','2013-12-19 23:14:40'),(663,'SP:CenterQueryImage','2013-12-19 23:14:45'),(664,'SP:CenterQueryImage','2013-12-19 23:14:50'),(665,'SP:CenterQueryImage','2013-12-19 23:14:55'),(666,'SP:CenterQueryImage','2013-12-19 23:15:00'),(667,'SP:CenterQueryImage','2013-12-19 23:15:05'),(668,'SP:CenterQueryImage','2013-12-19 23:15:10'),(669,'SP:CenterQueryImage','2013-12-19 23:15:15'),(670,'SP:CenterQueryImage','2013-12-19 23:15:20'),(671,'SP:CenterQueryImage','2013-12-19 23:15:25'),(672,'SP:CenterQueryImage','2013-12-19 23:15:33'),(673,'SP:CenterQueryImage','2013-12-19 23:15:38'),(674,'SP:CenterQueryImage','2013-12-19 23:15:43'),(675,'SP:CenterQueryImage','2013-12-19 23:15:48'),(676,'SP:CenterQueryImage','2013-12-19 23:15:53'),(677,'SP:CenterQueryImage','2013-12-19 23:15:58'),(678,'SP:CenterQueryImage','2013-12-19 23:16:03'),(679,'SP:CenterQueryImage','2013-12-19 23:16:08'),(680,'SP:CenterQueryImage','2013-12-19 23:16:14'),(681,'SP:CenterQueryImage','2013-12-19 23:16:19'),(682,'SP:CenterQueryImage','2013-12-19 23:16:24'),(683,'SP:CenterQueryImage','2013-12-19 23:16:29'),(684,'SP:CenterQueryImage','2013-12-19 23:16:34'),(685,'SP:CenterQueryImage','2013-12-19 23:16:39'),(686,'SP:CenterQueryImage','2013-12-19 23:16:44'),(687,'SP:CenterQueryImage','2013-12-19 23:16:49'),(688,'SP:CenterQueryImage','2013-12-19 23:16:54'),(689,'SP:CenterQueryImage','2013-12-19 23:16:59'),(690,'SP:CenterQueryImage','2013-12-19 23:17:04'),(691,'SP:CenterQueryImage','2013-12-19 23:17:09'),(692,'SP:CenterQueryImage','2013-12-19 23:17:41'),(693,'SP:CenterQueryImage','2013-12-19 23:17:46'),(694,'SP:CenterQueryImage','2013-12-19 23:17:51'),(695,'SP:CenterQueryImage','2013-12-19 23:17:59'),(696,'SP:CenterQueryImage','2013-12-19 23:18:04'),(697,'SP:CenterQueryImage','2013-12-19 23:18:09'),(698,'SP:CenterQueryImage','2013-12-19 23:18:14'),(699,'SP:CenterQueryImage','2013-12-19 23:18:19'),(700,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 23:19:12'),(701,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 23:19:12'),(702,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 23:19:12'),(703,'SP:DownloadFeeRate','2013-12-19 23:19:12'),(704,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-19 23:24:53'),(705,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-19 23:24:53'),(706,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-19 23:24:53'),(707,'SP:DownloadFeeRate','2013-12-19 23:24:53'),(708,'SP:CenterQueryImage','2013-12-19 23:25:09'),(709,'SP:CenterQueryImage','2013-12-19 23:25:16'),(710,'SP:CenterQueryImage','2013-12-19 23:30:39'),(711,'SP:CenterQueryImage','2013-12-19 23:31:40'),(712,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-20 22:34:10'),(713,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-20 22:34:11'),(714,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-20 22:34:11'),(715,'SP:DownloadFeeRate','2013-12-20 22:34:11'),(716,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-20 22:54:40'),(717,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-20 22:54:40'),(718,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-20 22:54:40'),(719,'SP:DownloadFeeRate','2013-12-20 22:54:40'),(720,'SP:CenterQueryImage','2013-12-20 22:55:20'),(721,'SP:CenterQueryImage','2013-12-20 22:56:31'),(722,'SP:CenterQueryImage','2013-12-20 22:57:40'),(723,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-20 23:07:55'),(724,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-20 23:07:55'),(725,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-20 23:07:55'),(726,'SP:DownloadFeeRate','2013-12-20 23:07:55'),(727,'SP:CenterQueryImage','2013-12-20 23:08:58'),(728,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-20 23:24:50'),(729,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-20 23:24:50'),(730,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-20 23:24:50'),(731,'SP:DownloadFeeRate','2013-12-20 23:24:50'),(732,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-20 23:25:42'),(733,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-20 23:25:42'),(734,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-20 23:25:42'),(735,'SP:DownloadFeeRate','2013-12-20 23:25:42'),(736,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-21 00:03:10'),(737,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-21 00:03:10'),(738,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-21 00:03:10'),(739,'SP:DownloadFeeRate','2013-12-21 00:03:10'),(740,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-22 21:13:28'),(741,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-22 21:13:28'),(742,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-22 21:13:28'),(743,'SP:DownloadFeeRate','2013-12-22 21:13:28'),(744,'SP:CenterQueryImage','2013-12-22 21:16:12'),(745,'SP:CenterQueryImage','2013-12-22 21:16:40'),(746,'SP:CenterQueryImage','2013-12-22 21:16:45'),(747,'SP:CenterQueryImage','2013-12-22 21:16:50'),(748,'SP:CenterQueryImage','2013-12-22 21:16:56'),(749,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-22 21:38:55'),(750,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-22 21:38:55'),(751,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-22 21:38:55'),(752,'SP:DownloadFeeRate','2013-12-22 21:38:55'),(753,'SP:CenterQueryImage','2013-12-22 21:39:10'),(754,'SP:CenterQueryImage','2013-12-22 21:39:10'),(755,'SP:CenterQueryImage','2013-12-22 21:39:22'),(756,'SP:CenterQueryImage','2013-12-22 21:39:27'),(757,'SP:CenterQueryImage','2013-12-22 21:39:32'),(758,'SP:CenterQueryImage','2013-12-22 21:39:37'),(759,'SP:CenterQueryImage','2013-12-22 21:39:42'),(760,'SP:CenterQueryImage','2013-12-22 21:39:47'),(761,'SP:CenterQueryImage','2013-12-22 21:39:53'),(762,'SP:CenterQueryImage','2013-12-22 21:39:58'),(763,'SP:CenterQueryImage','2013-12-22 21:40:03'),(764,'SP:CenterQueryImage','2013-12-22 21:40:08'),(765,'SP:CenterQueryImage','2013-12-22 21:40:13'),(766,'SP:CenterQueryImage','2013-12-22 21:40:18'),(767,'SP:CenterQueryImage','2013-12-22 21:40:23'),(768,'SP:CenterQueryImage','2013-12-22 21:40:28'),(769,'SP:CenterQueryImage','2013-12-22 21:40:33'),(770,'SP:CenterQueryImage','2013-12-22 21:40:38'),(771,'SP:CenterQueryImage','2013-12-22 21:40:43'),(772,'SP:CenterQueryImage','2013-12-22 21:40:48'),(773,'SP:CenterQueryImage','2013-12-22 21:40:53'),(774,'SP:CenterQueryImage','2013-12-22 21:40:58'),(775,'SP:CenterQueryImage','2013-12-22 21:41:03'),(776,'SP:CenterQueryImage','2013-12-22 21:41:08'),(777,'SP:CenterQueryImage','2013-12-22 21:41:13'),(778,'SP:CenterQueryImage','2013-12-22 21:41:18'),(779,'SP:CenterQueryImage','2013-12-22 21:41:51'),(780,'SP:CenterQueryImage','2013-12-22 21:41:56'),(781,'SP:CenterQueryImage','2013-12-22 21:42:01'),(782,'SP:CenterQueryImage','2013-12-22 21:42:06'),(783,'SP:CenterQueryImage','2013-12-22 21:42:11'),(784,'SP:CenterQueryImage','2013-12-22 21:42:16'),(785,'SP:CenterQueryImage','2013-12-22 21:42:21'),(786,'SP:CenterQueryImage','2013-12-22 21:42:26'),(787,'SP:CenterQueryImage','2013-12-22 21:42:32'),(788,'SP:CenterQueryImage','2013-12-22 21:42:37'),(789,'SP:CenterQueryImage','2013-12-22 21:45:07'),(790,'SP:CenterQueryImage','2013-12-22 21:45:22'),(791,'SP:CenterQueryImage','2013-12-22 21:45:27'),(792,'SP:CenterQueryImage','2013-12-22 21:45:32'),(793,'SP:CenterQueryImage','2013-12-22 21:45:37'),(794,'SP:CenterQueryImage','2013-12-22 21:45:42'),(795,'SP:CenterQueryImage','2013-12-22 21:45:47'),(796,'SP:CenterQueryImage','2013-12-22 21:45:52'),(797,'SP:CenterQueryImage','2013-12-22 21:45:57'),(798,'SP:CenterQueryImage','2013-12-22 21:46:02'),(799,'SP:CenterQueryImage','2013-12-22 21:46:37'),(800,'SP:CenterQueryImage','2013-12-22 21:46:42'),(801,'SP:CenterQueryImage','2013-12-22 21:53:06'),(802,'SP:CenterQueryImage','2013-12-22 21:53:11'),(803,'SP:CenterQueryImage','2013-12-22 21:53:16'),(804,'SP:CenterQueryImage','2013-12-22 21:53:21'),(805,'SP:CenterQueryImage','2013-12-22 21:53:26'),(806,'SP:CenterQueryImage','2013-12-22 21:53:31'),(807,'SP:CenterQueryImage','2013-12-22 21:53:36'),(808,'SP:CenterQueryImage','2013-12-22 21:54:56'),(809,'SP:CenterQueryImage','2013-12-22 21:55:01'),(810,'SP:CenterQueryImage','2013-12-22 21:55:06'),(811,'SP:CenterQueryImage','2013-12-22 21:55:11'),(812,'SP:CenterQueryImage','2013-12-22 21:55:16'),(813,'SP:CenterQueryImage','2013-12-22 21:55:21'),(814,'SP:CenterQueryImage','2013-12-22 21:55:26'),(815,'SP:CenterQueryImage','2013-12-22 21:55:31'),(816,'SP:CenterQueryImage','2013-12-22 21:55:36'),(817,'SP:CenterQueryImage','2013-12-22 21:56:59'),(818,'SP:CenterQueryImage','2013-12-22 21:57:04'),(819,'SP:CenterQueryImage','2013-12-22 21:57:09'),(820,'SP:CenterQueryImage','2013-12-22 21:57:14'),(821,'SP:CenterQueryImage','2013-12-22 21:57:19'),(822,'SP:CenterQueryImage','2013-12-22 21:57:24'),(823,'SP:CenterQueryImage','2013-12-22 21:57:29'),(824,'SP:CenterQueryImage','2013-12-22 21:57:34'),(825,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-22 22:17:19'),(826,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-22 22:17:19'),(827,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-22 22:17:19'),(828,'SP:DownloadFeeRate','2013-12-22 22:17:19'),(829,'SP:CenterQueryImage','2013-12-22 22:17:36'),(830,'SP:CenterQueryImage','2013-12-22 22:17:37'),(831,'SP:CenterQueryImage','2013-12-22 22:17:42'),(832,'SP:CenterQueryImage','2013-12-22 22:17:47'),(833,'SP:CenterQueryImage','2013-12-22 22:17:52'),(834,'SP:CenterQueryImage','2013-12-22 22:17:57'),(835,'SP:CenterQueryImage','2013-12-22 22:18:02'),(836,'SP:CenterQueryImage','2013-12-22 22:20:06'),(837,'SP:CenterQueryImage','2013-12-22 22:20:12'),(838,'SP:CenterQueryImage','2013-12-22 22:20:17'),(839,'SP:CenterQueryImage','2013-12-22 22:20:22'),(840,'SP:CenterQueryImage','2013-12-22 22:20:27'),(841,'SP:CenterQueryImage','2013-12-22 22:20:32'),(842,'SP:CenterQueryImage','2013-12-22 22:20:37'),(843,'SP:CenterQueryImage','2013-12-22 22:20:42'),(844,'SP:CenterQueryImage','2013-12-22 22:22:11'),(845,'SP:CenterQueryImage','2013-12-22 22:22:16'),(846,'SP:CenterQueryImage','2013-12-22 22:22:21'),(847,'SP:CenterQueryImage','2013-12-22 22:22:26'),(848,'SP:CenterQueryImage','2013-12-22 22:27:26'),(849,'SP:CenterQueryImage','2013-12-22 22:29:03'),(850,'SP:CenterQueryImage','2013-12-22 22:29:15'),(851,'SP:CenterQueryImage','2013-12-22 22:29:20'),(852,'SP:CenterQueryImage','2013-12-22 22:29:25'),(853,'SP:CenterQueryImage','2013-12-22 22:29:30'),(854,'SP:CenterQueryImage','2013-12-22 22:29:35'),(855,'SP:CenterQueryImage','2013-12-22 22:29:40'),(856,'SP:CenterQueryImage','2013-12-22 22:29:45'),(857,'SP:CenterQueryImage','2013-12-22 22:29:50'),(858,'SP:CenterQueryImage','2013-12-22 22:29:55'),(859,'SP:CenterQueryImage','2013-12-22 22:32:16'),(860,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-22 23:00:25'),(861,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-22 23:00:25'),(862,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-22 23:00:25'),(863,'SP:DownloadFeeRate','2013-12-22 23:00:25'),(864,'Insert Into TabFeerateInfo( ParkID, FeeRateCode, FreeTime, DomainCode, DomainName, \n										  TimeSectionCode, SectionStartTime, SectionEndTime, TimeSection, StopType, StopName, \n										  ViehcleType, ViehcleName, StartPrice, StartPriceTime, ContinuePrice, ContinuePriceTime,\n										  IfSection, MaxFee ) Values (\"5107010001\",\"003\",\"15\",\"1\",\"ä¸€ç±»åŒºåŸŸ\",\"3\",\"00:00\",\"23:59\",\"23:59\",\"1\",\"ä¸´æ—¶åœæ”¾\",\"1\",\"å°è½¦\",\"20\",\"1440\",\"0\",\"0\",0,\"0\") ON DUPLICATE KEY UPDATE FreeTime = VALUES( FreeTime ), DomainCode = VALUES( DomainCode ), DomainName = VALUES( DomainName ), \n								   TimeSectionCode = VALUES( TimeSectionCode ), SectionStartTime = VALUES( SectionStartTime ), \n								   SectionEndTime = VALUES( SectionEndTime ), TimeSection = VALUES( TimeSection ), \n								   StopType = VALUES( StopType ), StopName = VALUES( StopName ), \n								   ViehcleType = VALUES( ViehcleType ), ViehcleName = VALUES( ViehcleName ), \n								   StartPrice = VALUES( StartPrice ), StartPriceTime = VALUES( StartPriceTime ), \n								   ContinuePrice = VALUES( ContinuePrice ), ContinuePriceTime = VALUES( ContinuePriceTime ), \n								   IfSection = VALUES( IfSection ), MaxFee = VALUES( MaxFee ) SP:ExecuteSQL','2013-12-22 23:10:36'),(865,'Insert Into TabFreeTypeInfo( FreeID, FreeName ) Values (\"0\",\"ä¸å…è´¹\"),(\"1\",\"å†›è­¦è½¦è¾†\"),(\"2\",\"æ®‹ç–¾äººå‘˜\"),(\"3\",\"å…¬åŠ¡è½¦\") ON DUPLICATE KEY UPDATE FreeName = VALUES( FreeName ) SP:ExecuteSQL','2013-12-22 23:10:36'),(866,'Insert Into TabParkInfo( ParkID, ParkName ) Values (\"5107010001\",\"æ¶ªåŸŽè·¯\") ON DUPLICATE KEY UPDATE ParkName = VALUES( ParkName ) SP:ExecuteSQL','2013-12-22 23:10:36'),(867,'SP:DownloadFeeRate','2013-12-22 23:10:36'),(868,'SP:CenterQueryImage','2013-12-22 23:10:59'),(869,'SP:CenterQueryImage','2013-12-22 23:11:04'),(870,'SP:CenterQueryImage','2013-12-22 23:11:09'),(871,'SP:CenterQueryImage','2013-12-22 23:11:14'),(872,'SP:CenterQueryImage','2013-12-22 23:11:20'),(873,'SP:CenterQueryImage','2013-12-22 23:11:48'),(874,'SP:CenterQueryImage','2013-12-22 23:11:53'),(875,'SP:CenterQueryImage','2013-12-22 23:11:58'),(876,'SP:CenterQueryImage','2013-12-22 23:12:03'),(877,'SP:CenterQueryImage','2013-12-22 23:12:08'),(878,'SP:CenterQueryImage','2013-12-22 23:12:13'),(879,'SP:CenterQueryImage','2013-12-22 23:12:18'),(880,'SP:CenterQueryImage','2013-12-22 23:12:23'),(881,'SP:CenterQueryImage','2013-12-22 23:12:28'),(882,'SP:CenterQueryImage','2013-12-22 23:12:33'),(883,'SP:CenterQueryImage','2013-12-22 23:12:38'),(884,'SP:CenterQueryImage','2013-12-22 23:12:43'),(885,'SP:CenterQueryImage','2013-12-22 23:12:49'),(886,'SP:CenterQueryImage','2013-12-22 23:12:54'),(887,'SP:CenterQueryImage','2013-12-22 23:12:59'),(888,'SP:CenterQueryImage','2013-12-22 23:13:04'),(889,'SP:CenterQueryImage','2013-12-22 23:13:09'),(890,'SP:CenterQueryImage','2013-12-22 23:17:09'),(891,'SP:CenterQueryImage','2013-12-22 23:17:14'),(892,'SP:CenterQueryImage','2013-12-22 23:17:19'),(893,'SP:CenterQueryImage','2013-12-22 23:17:24'),(894,'SP:CenterQueryImage','2013-12-22 23:17:29'),(895,'SP:CenterQueryImage','2013-12-22 23:18:05'),(896,'SP:CenterQueryImage','2013-12-22 23:18:10'),(897,'SP:CenterQueryImage','2013-12-22 23:18:16'),(898,'SP:CenterQueryImage','2013-12-22 23:18:21'),(899,'SP:CenterQueryImage','2013-12-22 23:18:26'),(900,'SP:CenterQueryImage','2013-12-22 23:18:31'),(901,'SP:CenterQueryImage','2013-12-22 23:18:36'),(902,'SP:CenterQueryImage','2013-12-22 23:18:41'),(903,'SP:CenterQueryImage','2013-12-22 23:18:46'),(904,'SP:CenterQueryImage','2013-12-22 23:18:51'),(905,'SP:CenterQueryImage','2013-12-22 23:18:56'),(906,'SP:CenterQueryImage','2013-12-22 23:19:01'),(907,'SP:CenterQueryImage','2013-12-22 23:19:06'),(908,'SP:CenterQueryImage','2013-12-22 23:19:11'),(909,'SP:CenterQueryImage','2013-12-22 23:19:16'),(910,'SP:CenterQueryImage','2013-12-22 23:19:21'),(911,'SP:CenterQueryImage','2013-12-22 23:19:26'),(912,'SP:CenterQueryImage','2013-12-22 23:19:31'),(913,'SP:CenterQueryImage','2013-12-22 23:19:36'),(914,'SP:CenterQueryImage','2013-12-22 23:19:41'),(915,'SP:CenterQueryImage','2013-12-22 23:19:46'),(916,'SP:CenterQueryImage','2013-12-22 23:19:51'),(917,'SP:CenterQueryImage','2013-12-22 23:19:56'),(918,'SP:CenterQueryImage','2013-12-22 23:20:01'),(919,'SP:CenterQueryImage','2013-12-22 23:20:06'),(920,'SP:CenterQueryImage','2013-12-22 23:20:11'),(921,'SP:CenterQueryImage','2013-12-22 23:20:16'),(922,'SP:CenterQueryImage','2013-12-22 23:20:21'),(923,'SP:CenterQueryImage','2013-12-22 23:20:26'),(924,'SP:CenterQueryImage','2013-12-22 23:20:31'),(925,'SP:CenterQueryImage','2013-12-22 23:20:36'),(926,'SP:CenterQueryImage','2013-12-22 23:20:41'),(927,'SP:CenterQueryImage','2013-12-22 23:22:36'),(928,'SP:CenterQueryImage','2013-12-22 23:22:41'),(929,'SP:CenterQueryImage','2013-12-22 23:22:46'),(930,'SP:CenterQueryImage','2013-12-22 23:22:52'),(931,'SP:CenterQueryImage','2013-12-22 23:22:57'),(932,'SP:CenterQueryImage','2013-12-22 23:23:02'),(933,'SP:CenterQueryImage','2013-12-22 23:23:07'),(934,'SP:CenterQueryImage','2013-12-22 23:23:12'),(935,'SP:CenterQueryImage','2013-12-22 23:23:17'),(936,'SP:CenterQueryImage','2013-12-22 23:23:22'),(937,'SP:CenterQueryImage','2013-12-22 23:23:27'),(938,'SP:CenterQueryImage','2013-12-22 23:23:32'),(939,'SP:CenterQueryImage','2013-12-22 23:23:37'),(940,'SP:CenterQueryImage','2013-12-22 23:23:42'),(941,'SP:CenterQueryImage','2013-12-22 23:23:47'),(942,'SP:CenterQueryImage','2013-12-22 23:23:52'),(943,'SP:CenterQueryImage','2013-12-22 23:23:57'),(944,'SP:CenterQueryImage','2013-12-22 23:24:02'),(945,'SP:CenterQueryImage','2013-12-22 23:24:07'),(946,'SP:CenterQueryImage','2013-12-22 23:24:12'),(947,'SP:CenterQueryImage','2013-12-22 23:24:17'),(948,'SP:CenterQueryImage','2013-12-22 23:24:22'),(949,'SP:CenterQueryImage','2013-12-22 23:24:27'),(950,'SP:CenterQueryImage','2013-12-22 23:24:32'),(951,'SP:CenterQueryImage','2013-12-22 23:24:37'),(952,'SP:CenterQueryImage','2013-12-22 23:24:42'),(953,'SP:CenterQueryImage','2013-12-22 23:24:47'),(954,'SP:CenterQueryImage','2013-12-22 23:24:52'),(955,'SP:CenterQueryImage','2013-12-22 23:24:58'),(956,'SP:CenterQueryImage','2013-12-22 23:25:03'),(957,'SP:CenterQueryImage','2013-12-22 23:25:08'),(958,'SP:CenterQueryImage','2013-12-22 23:25:13'),(959,'SP:CenterQueryImage','2013-12-22 23:25:18'),(960,'SP:CenterQueryImage','2013-12-22 23:25:23'),(961,'SP:CenterQueryImage','2013-12-22 23:25:28'),(962,'SP:CenterQueryImage','2013-12-22 23:25:33'),(963,'SP:CenterQueryImage','2013-12-22 23:25:38'),(964,'SP:CenterQueryImage','2013-12-22 23:25:43'),(965,'SP:CenterQueryImage','2013-12-22 23:25:48'),(966,'SP:CenterQueryImage','2013-12-22 23:25:53'),(967,'SP:CenterQueryImage','2013-12-22 23:25:58'),(968,'SP:CenterQueryImage','2013-12-22 23:26:03'),(969,'SP:CenterQueryImage','2013-12-22 23:26:08'),(970,'SP:CenterQueryImage','2013-12-22 23:26:13'),(971,'SP:CenterQueryImage','2013-12-22 23:26:18'),(972,'SP:CenterQueryImage','2013-12-22 23:26:23'),(973,'SP:CenterQueryImage','2013-12-22 23:26:28'),(974,'SP:CenterQueryImage','2013-12-22 23:26:33'),(975,'SP:CenterQueryImage','2013-12-22 23:26:38'),(976,'SP:CenterQueryImage','2013-12-22 23:26:43'),(977,'SP:CenterQueryImage','2013-12-22 23:26:48'),(978,'SP:CenterQueryImage','2013-12-22 23:26:53'),(979,'SP:CenterQueryImage','2013-12-22 23:26:58'),(980,'SP:CenterQueryImage','2013-12-22 23:27:03'),(981,'SP:CenterQueryImage','2013-12-22 23:27:08'),(982,'SP:CenterQueryImage','2013-12-22 23:27:13'),(983,'SP:CenterQueryImage','2013-12-22 23:27:18'),(984,'SP:CenterQueryImage','2013-12-22 23:27:23'),(985,'SP:CenterQueryImage','2013-12-22 23:27:28'),(986,'SP:CenterQueryImage','2013-12-22 23:27:33'),(987,'SP:CenterQueryImage','2013-12-22 23:27:38'),(988,'SP:CenterQueryImage','2013-12-22 23:27:43'),(989,'SP:CenterQueryImage','2013-12-22 23:27:48'),(990,'SP:CenterQueryImage','2013-12-22 23:27:54'),(991,'SP:CenterQueryImage','2013-12-22 23:27:59'),(992,'SP:CenterQueryImage','2013-12-22 23:28:04'),(993,'SP:CenterQueryImage','2013-12-22 23:28:09'),(994,'SP:CenterQueryImage','2013-12-22 23:28:14'),(995,'SP:CenterQueryImage','2013-12-22 23:28:19'),(996,'SP:CenterQueryImage','2013-12-22 23:28:24'),(997,'SP:CenterQueryImage','2013-12-22 23:28:29'),(998,'SP:CenterQueryImage','2013-12-22 23:28:34'),(999,'SP:CenterQueryImage','2013-12-22 23:28:39'),(1000,'SP:CenterQueryImage','2013-12-22 23:28:44'),(1001,'SP:CenterQueryImage','2013-12-22 23:28:49'),(1002,'SP:CenterQueryImage','2013-12-22 23:28:54'),(1003,'SP:CenterQueryImage','2013-12-22 23:28:59'),(1004,'SP:CenterQueryImage','2013-12-22 23:29:04'),(1005,'SP:CenterQueryImage','2013-12-22 23:29:09'),(1006,'SP:CenterQueryImage','2013-12-22 23:29:14'),(1007,'SP:CenterQueryImage','2013-12-22 23:29:19'),(1008,'SP:CenterQueryImage','2013-12-22 23:29:24'),(1009,'SP:CenterQueryImage','2013-12-22 23:29:29'),(1010,'SP:CenterQueryImage','2013-12-22 23:29:34'),(1011,'SP:CenterQueryImage','2013-12-22 23:29:39'),(1012,'SP:CenterQueryImage','2013-12-22 23:29:44'),(1013,'SP:CenterQueryImage','2013-12-22 23:29:49'),(1014,'SP:CenterQueryImage','2013-12-22 23:29:54'),(1015,'SP:CenterQueryImage','2013-12-22 23:29:59'),(1016,'SP:CenterQueryImage','2013-12-22 23:30:04'),(1017,'SP:CenterQueryImage','2013-12-22 23:30:09'),(1018,'SP:CenterQueryImage','2013-12-22 23:30:14'),(1019,'SP:CenterQueryImage','2013-12-22 23:30:19'),(1020,'SP:CenterQueryImage','2013-12-22 23:30:24'),(1021,'SP:CenterQueryImage','2013-12-22 23:30:29'),(1022,'SP:CenterQueryImage','2013-12-22 23:30:34'),(1023,'SP:CenterQueryImage','2013-12-22 23:30:39'),(1024,'SP:CenterQueryImage','2013-12-22 23:30:44'),(1025,'SP:CenterQueryImage','2013-12-22 23:30:49'),(1026,'SP:CenterQueryImage','2013-12-22 23:30:54'),(1027,'SP:CenterQueryImage','2013-12-22 23:31:00'),(1028,'SP:CenterQueryImage','2013-12-22 23:31:05'),(1029,'SP:CenterQueryImage','2013-12-22 23:31:10'),(1030,'SP:CenterQueryImage','2013-12-22 23:31:15'),(1031,'SP:CenterQueryImage','2013-12-22 23:31:20'),(1032,'SP:CenterQueryImage','2013-12-22 23:31:25'),(1033,'SP:CenterQueryImage','2013-12-22 23:31:30'),(1034,'SP:CenterQueryImage','2013-12-22 23:31:35'),(1035,'SP:CenterQueryImage','2013-12-22 23:31:40'),(1036,'SP:CenterQueryImage','2013-12-22 23:31:45'),(1037,'SP:CenterQueryImage','2013-12-22 23:31:50'),(1038,'SP:CenterQueryImage','2013-12-22 23:31:55'),(1039,'SP:CenterQueryImage','2013-12-22 23:32:00'),(1040,'SP:CenterQueryImage','2013-12-22 23:32:05'),(1041,'SP:CenterQueryImage','2013-12-22 23:32:10'),(1042,'SP:CenterQueryImage','2013-12-22 23:32:15'),(1043,'SP:CenterQueryImage','2013-12-22 23:32:20'),(1044,'SP:CenterQueryImage','2013-12-22 23:32:25'),(1045,'SP:CenterQueryImage','2013-12-22 23:32:30'),(1046,'SP:CenterQueryImage','2013-12-22 23:32:35'),(1047,'SP:CenterQueryImage','2013-12-22 23:32:40'),(1048,'SP:CenterQueryImage','2013-12-22 23:32:45'),(1049,'SP:CenterQueryImage','2013-12-22 23:32:50'),(1050,'SP:CenterQueryImage','2013-12-22 23:32:55'),(1051,'SP:CenterQueryImage','2013-12-22 23:33:00'),(1052,'SP:CenterQueryImage','2013-12-22 23:33:05'),(1053,'SP:CenterQueryImage','2013-12-22 23:33:10'),(1054,'SP:CenterQueryImage','2013-12-22 23:33:15'),(1055,'SP:CenterQueryImage','2013-12-22 23:33:20'),(1056,'SP:CenterQueryImage','2013-12-22 23:33:26'),(1057,'SP:CenterQueryImage','2013-12-22 23:33:31'),(1058,'SP:CenterQueryImage','2013-12-22 23:33:36'),(1059,'SP:CenterQueryImage','2013-12-22 23:33:41'),(1060,'SP:CenterQueryImage','2013-12-22 23:33:46'),(1061,'SP:CenterQueryImage','2013-12-22 23:53:22'),(1062,'SP:CenterQueryImage','2013-12-22 23:53:27'),(1063,'SP:CenterQueryImage','2013-12-22 23:53:32'),(1064,'SP:CenterQueryImage','2013-12-22 23:53:37'),(1065,'SP:CenterQueryImage','2013-12-22 23:53:42'),(1066,'SP:CenterQueryImage','2013-12-22 23:53:47'),(1067,'SP:CenterQueryImage','2013-12-22 23:53:52'),(1068,'SP:CenterQueryImage','2013-12-22 23:53:57'),(1069,'SP:CenterQueryImage','2013-12-22 23:54:02'),(1070,'SP:CenterQueryImage','2013-12-22 23:54:07'),(1071,'SP:CenterQueryImage','2013-12-22 23:54:12'),(1072,'SP:CenterQueryImage','2013-12-22 23:54:17'),(1073,'SP:CenterQueryImage','2013-12-22 23:54:22');
/*!40000 ALTER TABLE `tabloginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabparkinfo`
--

DROP TABLE IF EXISTS `tabparkinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabparkinfo` (
  `ParkID` varchar(10) NOT NULL COMMENT 'AdministrativeID + SelfNumber\n510107 0001\n510107 + 0001\n\nTrigger==>AdministrativeID + ParkSelfNumber',
  `ParkName` varchar(45) NOT NULL,
  `ParkSpace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UsedSpace` smallint(5) unsigned DEFAULT '0',
  `ParkSelfNumber` varchar(4) NOT NULL DEFAULT '0',
  `ParkComments` varchar(45) DEFAULT NULL,
  `ParkParentID` varchar(10) DEFAULT NULL,
  `UnitID` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`ParkID`),
  UNIQUE KEY `ParkID_UNIQUE` (`ParkID`),
  UNIQUE KEY `ParkName_UNIQUE` (`ParkName`),
  KEY `ParkUnit_idx` (`UnitID`),
  CONSTRAINT `ParkUnit` FOREIGN KEY (`UnitID`) REFERENCES `tabunitinfo` (`UnitID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabparkinfo`
--

LOCK TABLES `tabparkinfo` WRITE;
/*!40000 ALTER TABLE `tabparkinfo` DISABLE KEYS */;
INSERT INTO `tabparkinfo` VALUES ('5107010001','æ¶ªåŸŽè·¯',2000,0,'0001',NULL,'0','771237583');
/*!40000 ALTER TABLE `tabparkinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabreceiverinfo`
--

DROP TABLE IF EXISTS `tabreceiverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabreceiverinfo` (
  `ParkID` varchar(10) NOT NULL,
  `ReceiverName` varchar(45) DEFAULT NULL,
  `ReceiverID` varchar(3) NOT NULL,
  `ReceiverChannelID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ReceiverComments` varchar(45) DEFAULT NULL,
  `ParkReceiverID` varchar(13) NOT NULL COMMENT 'ParkID+ ReceiverID \nTrigger==>ParkID ReceiverID',
  PRIMARY KEY (`ParkReceiverID`),
  UNIQUE KEY `AIID_UNIQUE` (`ParkReceiverID`),
  UNIQUE KEY `ReceiverName_UNIQUE` (`ReceiverName`),
  KEY `ParkReceiver_idx` (`ParkID`),
  CONSTRAINT `ParkReceiver` FOREIGN KEY (`ParkID`) REFERENCES `tabparkinfo` (`ParkID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabreceiverinfo`
--

LOCK TABLES `tabreceiverinfo` WRITE;
/*!40000 ALTER TABLE `tabreceiverinfo` DISABLE KEYS */;
INSERT INTO `tabreceiverinfo` VALUES ('5107010001','è¥¿é—¨','001',1,NULL,'5107010001001');
/*!40000 ALTER TABLE `tabreceiverinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabtmpfeeinfo`
--

DROP TABLE IF EXISTS `tabtmpfeeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabtmpfeeinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `Prepayment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Payment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrepaymentOperator` varchar(45) NOT NULL,
  `PrepaymentTime` datetime NOT NULL,
  `PaymentTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PaymentOperator` varchar(45) DEFAULT NULL,
  `PrepaymentUserID` varchar(45) DEFAULT NULL,
  `PaymentUserID` varchar(45) DEFAULT NULL,
  `FeeReceivable` smallint(6) NOT NULL DEFAULT '0',
  `FreeType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabtmpfeeinfo`
--

LOCK TABLES `tabtmpfeeinfo` WRITE;
/*!40000 ALTER TABLE `tabtmpfeeinfo` DISABLE KEYS */;
INSERT INTO `tabtmpfeeinfo` VALUES (39,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(42,0,0,'æœªçŸ¥','2013-12-09 13:47:43','2013-12-09 13:49:05',NULL,'002',NULL,0,0),(54,0,0,'æœªçŸ¥','2013-12-09 14:07:35','2013-12-09 14:07:38','æœªçŸ¥','002','002',0,0),(57,0,0,'æœªçŸ¥','2013-12-09 14:08:57','2013-12-09 14:08:59','æœªçŸ¥','002','002',0,0),(62,0,0,'æœªçŸ¥','2013-12-09 14:17:11','2013-12-09 14:17:14','æœªçŸ¥','002','002',0,0),(63,0,0,'','2013-12-03 12:19:57','3000-01-01 12:01:01','','1','1',0,0),(73,0,0,'æœªçŸ¥','2013-12-17 20:38:23','2013-12-17 20:38:39',NULL,'001',NULL,0,0),(74,0,0,'æœªçŸ¥','2013-12-17 20:44:01','2013-12-17 20:44:23','æœªçŸ¥','001','001',0,0);
/*!40000 ALTER TABLE `tabtmpfeeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabtmpinoutimageinfo`
--

DROP TABLE IF EXISTS `tabtmpinoutimageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabtmpinoutimageinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `EnterImage` longblob,
  `LeaveImage` longblob,
  `AddedTime` date NOT NULL,
  PRIMARY KEY (`RecordID`,`AddedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH(AddedTime))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabtmpinoutimageinfo`
--

LOCK TABLES `tabtmpinoutimageinfo` WRITE;
/*!40000 ALTER TABLE `tabtmpinoutimageinfo` DISABLE KEYS */;
INSERT INTO `tabtmpinoutimageinfo` VALUES (42,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ',NULL,'2013-12-09'),(54,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','2013-12-09'),(57,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','2013-12-09'),(62,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0à`\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üª¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(ÿÙ','2013-12-09'),(63,'','','2013-12-03'),(73,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0àÐ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0³ªJå£Šù#ãw™ŠgRxÏC_UkscQLs¹y¯—~?Û2ø…¤ÏSÚº©»™\'cŒðÕã;08Ïjô½%Ç’sÞ¼«ÂÄ™œƒÅzvÅ”`ð?ZÆ¬šv-3Ü< Åô#¦\rŒ€»ç±äT~œd÷‡O¥67òî¤EÉ¸¬b;èw>œ¥ü`dEzËqt½ÆÚó?\rJb»„ž»†kÓ,ÏúlÞ¥«m‘Ô ‡³p1Ž•ò·í#gäëºœª£s¢¹?çé_T!ÿ\0OaÔ_8~Ó¶¤]ÝÈzù9ÇçUIûÂ{hp_ç2x¦ÙˆùDŠÛAí_Mx¦Íî¼1©Ç‚–GòÇÀ{ØÛÄ–‚CÄ€sô5ö+Æ%Žò6ÁFˆŸ¯X¨³åÍ6¶IbaŒ1­lƒÀ¬ð¦NìÀ0éŒÕâr+’\Z»\\­0È ŸÂ©˜ƒ‡\ny÷«­–\'¦z«*\'wÚˆ—ÐãüO¢=Ìd…É\ry>»§È²37/Q^÷p‹4d˜zWâŸ1ß2¯ÔW	é¹â·D«±_˜Ug™¹ìk¢Ö´³ŒÊ0	é\\Ì‡20«°_A¹©m˜¬œ\ZŒ©\n©„‚2Ô\"Q¢Ò2Ê7*¬ò0vÙ†\0÷¤3yÜž´ÆmªO_jM\\»ÛbÝ„²«ºûÃkD‡í\Z”q¹ÈÝT4çÝp»¸­=45hÜ}ÒÝhO¡\r³ÑÎ‚³/”˜û×x£I\Z^ ÉÐÕí\Zm±‘£ePÊÊ9¯<ø­¦}’î\'ë»9 LóÆ“”šl-’xÉvÃM]FY£FÊ»=\rTšÚ[)\Z9‚?ZWe¥t<Îå9éAœ”ËsH_÷{±øS>ÑáÉ§t…«$†vS¼|¢¥[Ò0l²œäU]˜²Øn¦ 0ïB’!´z¶¨\rSL\07ï­NÍ&Î:à|+­›ðŒßº~kÐBîmÀdÈ5w)HŸCÒêå¹E9<u®·ÃöÆ\rj4êV®øF+S£3±‡\ršÎ¶Ö/Zm ¡\n˜»37ï&KÃ0jðÝA Ä›NÆô5ä÷ÖZ-ÃAp‡ÀaÐ×ÐÚìÕ˜°Â±Î++Uð´þd3D’#6pGJõêRö«™ocË£_Ù>Ylx9‰frA<ÔMÄÄÞ•è¾#ø7io%î™þ‘äÅŸ˜}=k…’ÚïNÊ][IçøÔŠòš”t=XÎ3WD^Ëþõ\\MnHÈ<TQ™‰â¬¥¼NÛÍP§¦¨jìS¬»ä©õ©WTI#æ5_ì1ï$*Ìzl ÙúU)%°%mÇ.­€qQ½ûœã?=m\"\\‘Ó½KpàSôù¬5äe<’ÊØÁ©Õ¶ä¶ÑN¾¸Ò8VÜ=«7íÓLJ¢œž\0\'pÕpG(~aSV-5ö´oò\Z±á/…ž&ñ„Ê¶¶R¬nqæJ\n¯ë_@øöU´²\\k²ý¥ÇÞ…N?ÖŽkèQâ>ð¶½ãûÄƒO¶q	ûÓ°ÂÆ¾—øQðÃÂ,.¯ÚoÀ{tSí^¡ø[Nðõ¢Cci£hTP\0­EùZO”àt÷©DèÆ+€±¶C\09¤‘ˆFfÂ¨è=j;fÚ$QŸösKf4ô%†®ÄœÞ­@»˜z«ºî/É5f>‡Ö•ô\'dM#³Œ°zRÇpè ÊÓ‘“Ô\nO4íÈ5)wºKö Fr¥2i\r©÷óªÒÉÀÈ xTcïå*†•Ñz)Ê1n½±W#™\\g8¬Ô?J¤«J6ÛCDóM,>oašª× ¡ÏT_\rÎÝõ¦RDòÎ_#ŽõBåÕãnrECs3îlôªñ;ºÔ\"K°J˜É8oJzÈªÎ@<ÕuU\'ŠÍ¿ñ¥‚Ì^Rp#NI5EG]ÍãpV2{WãoØø^ÂIf•|Ð§jŽI5‹£ñ†™ýãÃ§ZÌ»ÕZL¾=Å|©ã¯IªêÓâá¦‰X…$õ¨œ¹QÛƒÃýb|½ä7ñlþ&Ôî/gbÛÉÚ=p÷7\r’Tsžµ¿k¤Üê¸Ú\n!ïë]5ŸÂç’ÔÊêyâ³£jz8Êé%JDr~ð¼Úäï–Xñ/ƒŸIìp+Ó>h¦Þ´dzs[Þ<ðÀŸOv	ŒJéæ±âów>vX9\'8©ãeE\'ïCR_Ú=Ä±`ä\Z¤éÅ;Ø«êz_Á;Õ‡ÅŒíÜ6×_ûFÙ²\\i×As!]ÃÔúëÉü¨>—â;KŒà‡×»|q²:—‚ ºŒgËevocÇóÅCzê$ýãçÑ 88 {ÔÑ°9Ïj‚,ª\0F)â@âkX»ìU®‹ÑN]°O^Â¬+îÈçŠÎŒ÷Ï5zÜ¹cÖ–‰ÜKª.Ã3!äV§Š.\nø]qó VD;ŒdÖ§‹[g† \0ðH­“¶Œ›ùœBÈ\\d¸íSÛÎåŽãT÷ïé÷jHPwÏµkfV5à*\\né[R7šµs°J[8]£µmhgt»	ëTµöê&Ô·ò1_:~ÑPÕKça8í_D¨cr™À-_?þÑ¨«¨…\'-ŠÆ¶8¤¬y?†C} ‘ŒW¤è(J©cÀí^gáÙ6NWÿ\05éº8Ù\Zw¬«/|ª}`ðÛ¬_ièqW0nåèqY?ÙžÞqÐÖµŸ‹ù×¦MsØÕ>çE ²$É’Ç‘Åz”mÜd1^O£„7ã\Zõh$&K<œ’˜ÍhILŒj ¥x‡í+`©Hn=ëÛçâýJrs^Wû@Ø‹{cŽJ8ÉúQiõLùOá&¢mu+y£‘Œû×Ü\ZdÂûOÔ`Í?•|	à‰E¦¹,y;c—ø×Ý>¹Z™r¹>b`Ò·¯dÎzVMž%¬Z˜u¤#\ræ:`çšßñ¹·ñì}~rkŽÅç\0{WŸt=XŽ\0Éè*­À€pjÈmÛ}*¬ñí\'hæªêú¿Bn@\'5“hf\ržž•°	\nÀœç½T¸BÈqÐSÜwG•ø·BŽÑÙ›ý\\‡ïz\Zò=wM{	Ý†vžs_Dø³NÚ5Ê2`…Èú×’®u¬i,Ï2#(ÈÈ«‹®ppMç/\'S±K¨i2ØÊÊT«TÖáÐcƒ^´\'b±oµ#0A’p*ºàî^}©Þpx¤=1ÅUÊ¸ëi˜¹`pGµ^ŠùÖ@Äã5ž\\`c8§Ç!1n=E%¨rž¡£øìG¦ª³ëÆ{×;ã?mF‘çvÓœšåa»*€èsHò“‘M	!Y ùãb§Ú¢›P–â ’¶ð½3Ú—ÏÁ\rÀ÷¦´·1è\rì+_bXœ2qÀ×?‡ôK¿ÍkpñÝF\0hÜ‚3\\t?,l¹Áé!žM¬ŠÄ/}½èVê;ßaÆå‡˜O¶zUv…ÔF\0÷«‰£oJÐƒP‚=<ÛÍj’09ô4r…ŒbŒê+Ó<%«\rFÄDØßÇá^k(FÚ0=+wÃwRi÷+.á´œ\'œR‰\'¬Y\\M*9\nßÃT^ám.£žBp®?^µo6ÙdP\n°È¢M0_mÜòiØ,{uä±<z}ÈÇïbV÷¨õ\ZÜH k[Ã>‹Ä~±‰Ôn¡Ï Wk¦x&ÈC\ZIcÆMz´q05Ìõ<©a§*ŽÇ£Ã=Ä{U1ÆEu1ø#Dñ.” Õ´ø§*É\\0÷­uvšE½¬E0ú\n±	\Z0\n3ëé\\•+ÆW´NªXw{êx7ˆÿ\0e­6õÞM*ú[?Hßç_ñ¯5×gOhÅ~ÌÐß#þ®LÈ×ØeJ“ÇÊ;ÔodeÀ8õ®zÜÖÜø‰¾øæÜ<ˆ?¸Á‰ü3Q†ž6rÊÚàÇ}•÷\n@£8QƒéR\"*«.3ž\r+É!ÁŸÚ|!ñÝã:Ç¢Ü/<—e_æk£Ò?fŸ_cÍ†@z™%ãè3_cZÆ‘¦JŒj»É60x§y2>hÐdYƒêÚ£88ÊB¸>üšõ~Ï¾ðÌjbÓ’i×Ÿ6r\\çñâ½&+”$ç¥+JoŽqDd$ÑŽm§Â8Ñ\0†*Ã[?Z‹z˜þz¬÷\"%ùS>ô®ì4™¢¥!PsÇ^¾õFòË’8«1æO™¾íj	Ã¸å›pö§ÅÜœd\nl)å†ã<Té\"Ç’Oô¹´%+•ÉÔF@\'#žŽ:\n{,oÅJ7¸YX‰œíp¨Œ`tíV$+äàÎ*˜gòY»Òæae\'csŠH˜\'v~µ]¥b¸\'4Ú‹7¸sÚp§¡Ç­1nîâ«—!H•	.ã>•~ñQÕ“y¹VÉàÔ1¸B@Ï0UK­NÖÉ¦•cUêXÑan$*NFk2ÿ\0ZƒM…¤¸‘}æ¸üN<:kuÞzWŸÁ¨ßx›\\ŠÃíqµìÜ*Í Eàg©«Q¸+î»ãë¹‘…’y0/ü¶=kˆ´ø‘>‰¨µÅ´+¨Ýà€d‚×âˆ“Mt,çr°Äv0O¯5Óé¾<ð~ NmŸRÙÒŒ’iÞÈ\"œšŠ9/üFñ‰o%‹Pº”Ž‚=ç\n=\0í\\¦Ÿ§I¨]GK–có\ZŽÿ\0Qk«Ùîdy[&½\'áw†!˜‰™Ã¼˜ïÒ¸îç+ŸNýž…º³¨ðO€÷ùjñà.;W¦ŸAi§J¦>ÜUýL[806–l~©¨y²Z²(@®ó®NZ³Ãì6[ø”Ä9Åz§¢CM ¨lŠó]@›o\Z ”—Çì½²\n¼½iôÜùsâG‡NºwÛŽkÏT\0Ù=kéß‰þ–o!MÌ¯›ïìZÎæHŽF\r$ìô4VC-$+:08ÚAà×ÓÖü3x0%vƒo=ˆ¯–Ðìb+ß~k¢{‹	qS¥»Ž„´“¹âwq5½ÄV çëK\Z*ä7Ì;\Zê>+xxé*»Ø?u+o^1Ö¹krÍ¹g\0V‘Ö7]ËQTÿ\0J–)‚‚j²¡N‰¸žEZ÷AÙ\Z6dç8wÆ+ŸÀ¨¬»F(Jäœ÷­\ZIåéŸ6A<ÓIÜÍ$p‘JczÕ˜ÎFqŒÕ\"Å˜“V­I*Ù9æºDÓ´ãêr+sÃÖþmâ(êÌs–Ä£dsí]w‚­ŒÚõ’<¨¸=9 RnÉ•vÏ«Â‘zàîí^	ûJÑ±àÔ×¿2ªê*2FO¼ö”dþÑ@FâøÔSzœÓWGøh—¹9ÆÜ×ªh\n$‘Æ8¯)ðÑOµã÷¯SðôÙLHëŠÂ¶¬ª6=cáÃ ŠxÏã5­z†=JLzäœV\'Ãšy@88ÏÖº-DŸ·0<óX«›2ö—Ë+/½z­™\'Œq^M§’¡›vkÕ4—3éÖ0Õ¥îf‚íBßáz^yñæÛ~„’ÊƒÍzF¥[ÀÃ¡<×\rñŠÖKÈ@$)ÉÅLw*.Èø#D‘ ñUÂ–äÊF\Zûoá5ÿ\0Ú|o’XÂø$ûó_M3XøºèœgÎ={s_^|Õ¾Û§ßYç•	 ã×Šôq÷g7i‡Ä;`ž%¹|à>¥róD®‡hÍv¿bÙ®ÆÀ}èA?­q¸Û“Ð\Zñúž‡MJê›#ÉŸöª½Â&	c2|Ã³P·Íœóžµ¨]-ŠYÈÇQLd8éV|¨Ø9jèxÚÙ¦Œlîe^Y™¢‘q¸Ò¬ü²·šÿ\0YÐ§·FbþtjÀó‚?•]XB©ÁÏ¥s:&¯ÿ\0Å\r>ïîG+„cêÒ›±´±ôZüðØ\r¨xzÙ¤a’:×ÌßµoÀ\'ÂöãYðå€³‚2©<1ä¯$üÞÕ÷+I&µ¥ZÝÚ\0Ì£\'zóßxUüee«i70ƒÖŽ¹=C`â‚ûŸ–¦F3@ú…?…zÄ…š¯‚§W½ƒdr³#ž‡¥s-\Z	+‘Šµ©(ÀiCèHúT·V~N¾Ý*\Z‰<ÒÃ\rÎ*pÑ°+Ò«Ã·Ì2)Î\n;c‘M;\ZGbe\npsïNym¦ÄY†cÔý’ŽGÎ*´*ÌF,}ß”¢…\nü•Ûõ©»Sü®¼?Jw&ö!HÂýÜšcÆÅ›Š—š@Xg¥2‘wÃZþ!Ôã²€/˜ü©jí¥øe.ŒA•Œ¾µWàËoñå’\0ß7ü×Ò×ºw1’5aPôÕžáûY,ÐÛÎÅ†~S[’F\"ëÆÞõØ]øwÍoÝ”Ö]ß†/ôûvóa,‡ºóQÌ\r+ž§ðGTþÑÐœ);ãl^¹mU$óÇZðŸÙúèCsjçœ†\nkÞíœ|Às“CaÆAMËƒÚ¢XJÊ\nýÜõ§Imò’>”X\"/ÊGËJ$-w\'¨¨¢€©*P°Š¸˜‘r¦œ‘|¾õvE6žæ|Ñù\'8ì(µp)êô–¬Sîäj†;o-ƒ‚³¾š:8QUˆ$‚)Ñ,r)Ú=…(u`v`úÓ @Š@V—+ Øcòò§½NŒFp:w©`‰@`Fiñm%Ñ”f•Ó¬WØÒséM\0ÊzsWm¢8\0‘Þ¦Xvg*\0ö¡™V+\0’sŠ•2œ=jTXã{ÔÑÀK*úâ•®$ÊÐ)d;¾õCç>µ2ÄpÌ9ÒHÎ;!\\‰r™P0)V\\±\0äÔSósó-U24{›<\n\"ÊÐ½5ÊF\0f\0šƒÎ,§°5y\'œ†RÇÐU›Ÿ>Ž01ƒKq¦‘knÈâš@ïQ3²¯$àUk½R(™ç•cQÏÌqB}ÉåìYiî#¡ïUnµ{k8¼ÉåX×Ü×	â_‹¶¡à±S3ž7ö¯)ñŒîu)î¦Î\nAZÆ#ÐõŸüUµ³IÁD²tÜz\nòsÆ7Z„’=ÕË6NvçŠÍÒ´ÝSÅ3ôø–O37Ý½WÂÿ\0ììÓÏÔsur1÷¾èú\n\Z°&ÙãºíìzT·©¥ºù‡€~•ãº§ˆï./ä•.\nœ^ûûDë‰akfÈ¨ƒtŠ£…|Ë4†F<â‹Ø¸Fûš©¬O$f2û²rsÔšÙÓ`wŒ»Ö‡ìârÛ¸º›ÉRÖ×Ê‹i“½sÍôG·ƒ£eíe²)Ëp.®eÂc¡=+BÕ5Í=CÙ]ä}àc–¹÷²\nž|÷Ä­œ(95“&¦°¹òœ:ÕSVG&¯¶Þ¨õ8>3xËÃj¢K¹xÌ«»5ÐiŸµ†¯iòÝAýŽF3^	{â«‹s’—NÀž•™é[\0ÖÑvÜääOcÝõ‹‘kzÔ7Â	ÞõôgÃé^(ÓÒ;k´{•\\4$Ãð¯‚£Üƒï+Âž$¿Ñ5hn­fhäB2šqQØ‡ÌÙ÷ˆ4dÔl¦ã5óÄß¶›vòÚƒÚ¾–ð6´þ(ðž¨œ+ÜD×9ç¡þUÇ|Rð Ô,ft@ÅA=+&¬\\eså¥ ““]—Âm´ÂÀæ9Öô®ST³k+¹¢pA–ÂåìæŽD?2sZZëp’=ãã¯‡ÖçG·Ô¡MÎ˜$Žà×ˆ@æ<õ¯¤ü?,~9øzÐÈ7Ê#Û“ë_?jZ|–·Ò\r­•Á¬áetZo”ŽÜù›·sO1a‰ŒTQ§–3ŒµH®eµjä»´X·$ƒŸÎ¬øÝÕt‹!ŒúÕx~LgŸš¦ñûì«u=kr-m Õ‹y6‚1šªœTð9Rv®âk „ìËö®2ŒÜ×}ð¦ÔßøóÃöýDú´\\ûÈ¢¼ú½köhÓÓRøÓà{cÊ¾µf0½Ïœ•W±w²>•¿·ò¯ã#‚OS_:þÓ°•Õ’\\Œ2ŒŠúSZ`óÁ\"ýÌ_7~ÓçR„m$ä×<-sž[Xñãí\\·á^«áÂÄ\r«‘êkÊü7tç^±ávÕ5V·6‘ê?×ý.LzWIªƒöãé\\÷Ã•+{6Oð\nß×wáÐÈâ°ŒN‹—ôèC íßšô\Z1&mƒÍyÎ”Ù^NIÖ½ÃjˆÄŽçš¾†f†¡iWŽ8®câR†ð­Ø:ì¥ƒÌ`GÐ×7ñ…ð½ß\0ü½*mbÓ{›^*-eãkÂãƒ)ãñ¯¦gÝjMz‚­Ý¾Ñ“üCµ|ßñf?²xâî@»rû¸®¥üEw¡xoKÖld)wŒ8¯f¤y©žd}ÙÜúâä jv­r‘í#ñ5ÆD¡¢%¹ÍsÚÄ¿éßÞDPœÃ¡5¹fÀ§9¯ž”\\™é))+¢?!’Bq»Š\0Æ3W>R3U$VSÈâª#æ´J{—vÉÔ/~1Sù\0)8\0Óçrž¢¥	s%©!T9%«Ï¾\'Y¼bµþê+Ñ6³#mëÅs_¬Ö\rOŸàù³Un¥FVgÐŸ~&nE¦[2]Bœý×‘ùƒ]ßµ{‚:GzË¸ã‚A¯†þ|HÂ\ZÔ1]J|¯04lz+…tß~ êº‡Œ›Z·wQ‘·aÈ\0V­]\\Í®Wc­ø»á§ñ¯i…7Ü[bâÝô?ÏšøûRÓÞ%‘1µÁ•õ]ŸZÿ\0â›p²oMBËË”7MÃüšño‹>\ZþÁñ•ôvÅ#y±œušQÐ¥.dxóéâ,ÍG\r“HÇ#jêgÓ•ÔãëŠd\ZS¼D¢…#Š¤„ŽqìB¯B)ˆãiïéZ7°˜·qõíXûÿ\0y¼uÍ°^Å˜©«P¯\'5V)G8\Z¿o|È¡ídj¬÷$Š\"àãœwÍ_³µ\0ŒRéÚLÒ’\0\'=«¨±ð…Ë§œšÍ2ùSÜçI‰÷e9öæªÍáìT½«Ðm¼~í$ýk£Ò¾êk¶HŠ)þ,SRó%EÂ=*{iÒ€J+xõWÖé¦ ¶OÒ¸Ÿ‡ß_Ãº“]Ü2¾Ëßê‘Br\0éT™“Vf<:bI»Ž=êÏö2KRŠÂ´|¿/¢ã4øzc ·Ù³Bð¥¦­}¾Ö1·«Ð×£ØÄÌ›ñ‚GJÁŠ\0FâÂº{G·R¾”’ÐL³]¬\rØâ©Ïö V‹=\rNß&æ=)<Å`{â’ì$HW\0w T‘®øUæœmö«zt§qY’GÄÚyÍ0A¸•Ú›ÛŒdö©HQ–9Éìjl?uîQXDy\0üµbÚßy<qR´)´ñRÛ ‚p(VQVÓÌI$ÓÒÛËLš–5HÎj•\"Øøßøw¦É×¡º$¯©Q‰Ç˜à`4ŒÑ \r$9ü*Í³HÀ_oÍœÔÑÊ‰O›Ö©ìR$•Á*ÝûU9œãô§º+ ÃdúT`*¦ßJIFéƒ¯ËÉªûrZ×ÿ\0¬-SQ‚ÉXÍ:ÆƒÔâ”|‡rÓ¢ÊŒ2»}ª¤š…¶”ŒòÊ±¯»WŸø“âœV¡¢ÓÀr:ÈÝ+Ë5ßK6çº»iN<Âª1¾áÌzçˆþ,ÅnÏˆó\0ãyé^Wâ/ˆÞ³ý¢åœt+ž²mWÅsy:m³…<oÇé>ýŸÐˆçÖgk·ÆJ!!j½ÔÄ¯¹çš|z¿Š®„:]³m=d#ø×§ø[à\\ÚÌ¦îLd ákÕ4YhÖ‚hVQ±kN¼´ÚH§y\r:^ƒe¤Ûª[[¤h0 ÅYÔ¯¥„³¿Èª¤äÕáÀÀ¯0øíâs øVx•ñ$£h*´.\'Ëÿ\0¼H5ÏêSÉ&Ab£œŒ+TK™pƒ9=«JñZéÝÛ–cù×KðóáýÆ¿tì‘þæšG=Ô)(­NÚ4eZvˆº.”4Í-îe\\)á=ë’Ö5s5Ô>\\uÅu?|C/ö+lù|‹×Þ¼äî.Î!¹ÅE;ËVzxÊ‘¥aÄ—2:á˜ŸLÕg‰<b…bÙ´ÙX@<×UúèU’,–ÛøT–Ð•ËÍ*!sŠ°ˆ`RÅ¢Ø|aÉREkioƒÎH²£[åë]…ô¹.®#TBìâA;h|&°Kip¤ ñëÖ¶õm?íÓ!$b¼ÏáŒH³[’Áã8¯còæä{Õhö3LùâÇ…_N¾y£O“¹ç1(Ç?¥}qñ[ÂÑßis\\wÅ|¥dÖW³DA[5œØénèö/€Þ%û4Ói²Iò>6‚{ÖÆŸ\rex…o#É¹]Û‡L÷®Âš‰Òµ{[˜œ©Gç¨¯ > X/‰|—q€ÒF¾bœtãš™$šhÎ-êŸì€~µ<lŠr^õY²­Œ`ç*FãÖµK°•–åËp®ÇŽüRxý\0²±\\p3Š†ÒRnq‘Iñ!ÎÛ(ðOËšqvÜâ²KqÍI<œj‚-üç­O	Ø û]¾„ZåëL`nn=kÞ¿c[T½ý¢~Äq\Z¼/÷ºwgô¯µÂ.:šúköÓ¾ßûMø4mÇ•,²àÿ\0³ŸéRÝîâ¬z½ìí)^@(Ü©¯$ø¯¢C®ëo£#Ëéz•ÈMVtÏ|šóÿ\0Èe×pW=ì®Œôêx”¾¹Ñç–xÀxLõ®³ÂÑ˜‘PŒ‘ÞºëëTka5—kh‘¹8ŽÂ±srÜqTwÁûDß6Ínx‚B·ñ€;uõ®ÀO‹™t> íœqŽM$ï±I2þ™óãé^‹á¤oìYÓ<Šó] ¹`ŒW¥ø@ƒap¤ðkT´$Ùºù@‚\0®kâ|†	ß»µcÝùWFÁƒBÃ¦\0®âd?kðŽ§èmŸ?‘¬ö\Z?=~9¦<KÁ6¤‘Ï­”½ø\\ËŽc|“øÕÏŒ¶ÿ\0l´Òï‘÷B‡ÛŸá#ö‡Z¼9ù¢l¥{qÖóÞçº|3ðþŸ}ð‚Á-\'ŽKœ3>ÖÉVÜsŸÃºzÝY1†íBý×#ƒ_-h8Õü\'xf±¼xJŸº\rõëVÿ\0´<~!ðñÓ®mÖ\rCö…<7¸«ÍÄádß4NŠUyR=~ì|¸ª7ÆÒHÈô®3ÀÞ4û\\\"ÚùÀ”$‡ø…vì¢D|c‘Ö¼õEÙ\n\\ÊèÍL1#ïTžZJð}j1ÅzZ‘8ÎN*ã¢Ð\"ìDã\nkÄ6¢ïLž27nR1[r.wméPK:8<sPÝ´;7é)Õî,§ùrH\rÜ\Zô?ëp\\‰4½AÕäVÂ;wÃx«OK\\!Ê|ƒéšªÍ-ž¡)V9á•ÁçëUYÎ>Ññ¬øf×È³šÈ<sÀÛƒÇÚ²~,Ø/‰ü-o¨¨XHqË¡ëù~µ\'Âß\rfÒKK§hN2ßÄ+°}(·˜+Å(Á¢©œVqm3å£Ÿ“¥[Òí”Y*°È\'¥nxËÃ/ k7ˆY·\'ÐÖ ¸kH´ÇkÖ·h%À9µsÒÚ•ÝÆO½w7B@åˆ5Mtq»1žÔ¶Sg¡£n9®ÓA±ûhÐdVF¯¢›Bp§­/‡Ú²ØjqÁ9ÄÀdö¡j†—)ìžðOÚ]XÇÇ\\â½sFð2Ýtýj§Ã¸#H”¥HŸJôëR#^8¢‡vgé¾	µÇãZñØ[[2E©cÛ?˜V&}Ø\\u¬½2g—Pi•Ï7u©¸š	[Ydã$dØVrÀëë]¾—l²XÌ	ÉÛÒ¹IâÄÎ˜èzRÐËb–FsHˆv²ã\njv‡9ÅDc,q»JQM2“¹*1Šf8\0ƒV~ÞË©hr\\ÊÞaii>™5‘âåÓ¼9ª]¹\0CníúVÁI•ü§•;˜©b}rÄÓ·A$ìu÷$îéUü®x<U™\"fÜÄîµÒA „ì:6h×\0ñArÝI4ÕF)ÉéZXjØÜì²Š¨Ÿ)ÎqSª²åøÅ@öVû­N3ù Õre\\æ¥àQS±Q³ŽzŽEJNG\rŒÕxÁe#î‘ÅH¹Û†#\"ª--hÇï0I4Æs’:\nMä/hLmlÔÝ+	ª½ÁZxpTíý* W\0u¨Úæ+uvw\n£¹9Í\\uÐz·õã­Tº¾ŠÎ’W£»\Zåõ¯‰6Zz°‡žFîÙ¯3ñ7ÄÛ­žkÙÚv_»(«~BºG]âŠVÖQ<6§ÍdýÚñÏxýæ/-ÕÁŽŠð®kRñ\r÷‰ïš:Üíc…E+¼ð_ÀG¾Ûs­Nd9É„ZI¤	6p62êþ0¸0é–îÊO-´ãó¯Gð·À%”¤úÔžs’€ð+×t?	Xè$V¶é\Z¨…­…€•äcýšW¹Q²34_\nXè–Ë¤+\ZŽZØ‚/,HÀ©*?*BsT‘#ÇÌ¤çªä¾N\0ÅNœ©í£Å&‚éP4BByô¯–hï¶¥â`¤˜âûÜ÷¯¥¼M¨\'Kº¸?(T\'¯Ö¾ñ^¨ú÷‰/.X–Ý!ÇçYùšÒ3²3­m$»¹Ž8×,Ä\0+¾Õ|bžð¡Ñì\nÅ;®n%_¼ÇÓ5ÊØ¿öZ4ïòÉ”šã<C­=íËÛ<šËøCèã‚¥w»3õ¶¾¤c’ÆªF>bGJtlÇ9Å¼1®šq÷l|ýI¹É¶&JÆOcU^RNÔëRù¸WñýêŠÝJÉ’¤ŠÑ;™-f\rÈ6‘“ëV\0R¬Iùª(ßÌ\\ÕËK7•†Á¸ú\n]÷É7H1Œç½}û9x9uc}¨ÜG”Aå¦áÁ5áZk¬ê¬¥\\¸¯µ~øu<?áhÙpò\ríõ5Ih\rô8¯øzêŸo´\\ 9!EzG€<eµd›œ€Á³¬èpêV³+…9kÆ5[¯\0k¢Xú+7 ÔÅÛAµÕÝ«ØN&Iå#µ|ÇñÁÍ¤êOq{ccÏô„|]o¯éÈÑº»ã‘\\ÿ\0ÄÏ¦¯¥ÎáAlp\0©}Ê„­£>K‰f\r½+é„Z¤zç„ä°›è\n<äb¾Ô,¤Óï¦ˆåvœb½àÆ¸,õÑlÎKïFêÂ½ÎSÄú[é:åí›†9¶x¬¨ƒ–9¯Høå¢=–µÚ\0VuäZóx¨t?wÞœu@ýíËÑ#JŸ1\"¢øçu˜ÝÑ*[Ef‘}r1U>&+G-£r•¤w3Øã¢v`Á—«6Îýê«B[­K\Zç99ÅuEè=,_‚&V[½}ÿ\0Øƒí´¶†Ì¹1ZÝÉŸû`ãú×ÈVa¢Lž}\r}±ÿ\0µ²7..vä[éSœúdªÿ\0Z‰ëÄÒèO©Yí;‡\0òkÏõ¦ë×*ù\0që^½uiæ›¸¯½Q&¯vÒ>¾ƒVD‘ÜÜàçCÇ²`Ù˜Ü§zªaŽñ@x¼í5ÄÙkSKÁÒºlàW_â0¬3Ž€ã5ÅxsÉ!s´†º½nà¾ŠàŸ”`ƒŠ´4ÚØ¹ Ïòô5éžPOß<â¼¯Â3yñ) ‚;WªøI·”ƒé[¿„‹›$ƒKÛ<ÖOÄñáME”ä‹wÏÓ¶â\"HW<•5ñ‚øKU=3nãŸ¡¬˜‘ùïâWþØøcÊera`=9ÿ\0ëU‡‰¿ÀÞ#³…ô«äZÄ~üÓÆÒÇÏ;¨>ÛIkáï$ÊFÁ´Î½¸5cŽVÏ-™U•ÀëTš3\':[p$‡=ûÕ»åÉþUÙe4`§Üì<âàÙ/c6HN+Þ|!âõ‘ÒìäžRz×ÊËoÜ¼7µz¯Ã«‹íGOu•]ÄGAÚ¼ÜE%cjr³ºØ÷¹mÂ³0aÍEÇqšç¼3âF\n¶WÌK}Ô“ük¦)´úŽ¹¯%§ÊÑÛ¦®™ÒÝ ·~>•efV>ý©#˜œŸÂ‘¤Zžñ—J[}f)ðx½V¹›»)à†ÒV; `\0èkÓþ5é²McëÒ6à×›ÚO$º,‘Mó.~CéíYy3Ò¢ÓJÂhš‹é·®Ð’®§ Š÷ÿ\0xÆ×Å6ùwº_ZùÕÁŠ@Ã¸æ´¼=®ÞhšŠ\\ÛHPƒÈ©„ììö6«‡ö±ºZžÉñ?Â/y§ÈãÏ•Á>¢¼N[wŠ]‡å¾–ð¯‰-<[ •%_pÄ‰Ü\Zòø5´ÛÉ¼´ÄdîŒå]q!¦™ç[7nã ñÅoøVÚ)Ìñ>3ŒóY2\'–ÌéQ%ËÚ»<d«„P\\}ÔCã;H\"£²kŒ‚ØÁ&þŒÔÎMÉw™­P‹K–g’E\\\"œQ±P3Ôö¿‚¾<KˆâÓ.¥Ù2ðŒ{JúKºÌAIÜ=ká«\rö3¤Ð1ŽD «)ä\Zú/á\'Å¨õã•©2C~£äcÇ›ÿ\0×¢2¹Ui8.e±ì\Z¥Î#Xƒ}ÿ\0J—MƒÉ„\0	÷ªk¹1ÅmZÄÛBâ‘Ïs±ðÙW…Áù›+R³h®ä!;õ«Þ\ZÁrC—¥mëö\nPÈ‹ò‘š‚vg&6j”ª7\0¼“Úµ.-rø_Ê¨\\/–zdŠjýV8‹×ÿ\0Ùÿ\0uw&TcêqZÿ\0³Ž®/ü\ro 2eBçÐ×!ñÞO7ÂQZ†ù¤œzà\Z±û6#YÚËm)Âœ8ÙŠ÷G¾Oâ¡`AÚcÖ¦\03L‘r§\'µMÉ²{´8ÆÓj\"võ«Š¹L0ØU9ƒsžG­T]È°#äV#Ý\"²·Ýª±Ê¬HÎH©„Ÿ»Ú:Ò½Â.ãíÁRÄŠ’BÀ|½j\0Lyeèi¹$â‹	=Å †ïÞ§@5Jß5?ÏH98ÔÒµõ\Zv.‘‘Ò¡žê;tf.µÏßøÁ!ÖÔ	˜qœñ^IâŸ‰W3$ÓçaûŠxªŒYW=vïÄUŒ 2ÿ\0y›^OãÏˆæÖá¢‹ $E÷kÏ<Añ+RÖÇÙavlð#ˆcùTÞø?â:Oy›kv<î<‘Né	jdë^:»×¥òmQœŽÆ+sÁÿ\05H·\Z“49ÎÓÖ½‹Áô¯¢°ˆI0ç{s]Ôq¬\n\0éJúä¼%ðßLðÅº,0/˜:¹šê µòÙŠŒ/j•›wZ³h€Æsj”ûR¢\'–O9§Ú£;¹9â­,K‘òç”ç‰2ƒJ¤ì¶V+”È=4\0¯­H8¤h‰íT‰Lˆ9BpsJ%Þ8ÓŒ`)¬ÝcZµÑ,¤¸ºFˆ2I¬õCVocÌ¿h+Ã’[FÛe›Ž=+æÍ\ZÖ0÷w?7ë]‡ÅoËã\raØ,ã? õ¯)×µß.&‰	§“|Ú#é°ØháiûZ»ø§Äk‰}ÞÀtËÇ‡Ë=K)ó‘‰lýj8âcQÉ­¨ÆÈò±¥V|ÌRBj!&ŽìŸ¥H–sJOÈN;ÕYXFHšÕ§ØãIf!y«pAòõ¨ìm·åŽ?à5¦-øëùRIôP²ÓÒMÅˆ­/62y‘¬\rdÆÎWÔ\Z·fÏ#àAkRU‘ß|<Ñ¦ñOŒmQÆCHŽ+í];OŠÞÍ 	´\"€1_>~Îó/äÔd@DKµN+èó.:#ê)]¡5ÔE·P[œJç<WàÈ5ËIDpH®œ° gƒè)À«\'4´{v>u·kÏ‡ZÑqµvãÐ×²é\Z•¿‰t¡$n²ôª¾6ð|:öŸ*gPqÞ¼Ã:õç€<Hl.Ã}™›…8k Ú[˜ÿ\0üý“~n£\\G!ç¡®Â«¦ëVÒîÆ$šúsÆº5¿‹<3#Æ™MÈqšùrëN“JÔäFá£oÊ›]z8Üúâ®•±àï¡PÏ	VÜ=\r|ô‘g8+õ¯¤¼\"ø£áíÍƒÛá+ózö¯¯bk{¹`eÚÊÅHôæ”U®„µZ	§î[”R22*—ÄìµÅªÝÿ\0Z»f$7QðJïþ5OâPÝe\03WÌÎ24U\rßXŒqš…1·hlíâ¥×Ræê>…ëwl•#¯zû÷þ	7a»â7Š\'\'w•¤‘Ÿs,uð2m##ñ¯Ñø$¥¦ísÇ}–Î¿7úTM¾V--îŽŠ$–ÒãŒ6ÓÉ¯œyº½à#‘)­{•ÔÆÓN¹ÜÄ‡æ¯‰·\\Í9)óøšæš´H†¥«£²$CóU{X]¯¢\\`ò}«SÈŠòØ6ð“Š©quH8êk—ch«ì6øD—RX`ãó¢M^å¬ÚÕŽPýÓYnÛ‹pj{yƒ®2}iEÜMXìüLKaœ×«øZ@Zxp7‘“´×‹èwÍa\'\\Ç‘øW è)ŠÊáîå\nüÅk£¡=\"ÈÙ«+â£Ýø+WŽ#™M»m×¤ð†¨šÆ-Ä_wyëZ—ð‰ì&VáYH5Éÿ\0\rëw^ñ­½ÉJM²@Þ™Áî>:µÐü1¡êW’†m[„¡>žÕäŸ´„ð÷ÄrÚÛ\0¸g@;ÍqSøŽöñ;‰ÞEŒaU˜œ\nõé.nYµ\"ÕÍˆ\'¹5]¢$ž)-¯RãåÎÒ®…GàW­¢´8™½®AÏ&¾¡ý“´;]fÚþÒáU·6985ó¼xÞ5ôwì™<°jÒˆÔ¦Zç¯é¶mFüÖ,|`ðQð‰D;qer»á”v=Çùõ¬ÿ\0\rø€ÆÚé÷Gü\Z÷ïŽ^_hpÍ<èaî1_)Û«i—2YÜ©†Àsü5á?}Z[¿¨õµnTqíK‘ÛZç¼9­–ÞvÜœ’º6]§®Eqµm,nšhâ¾,X›ŸNßÜù«ÂìîWìS[÷ŽWØ×Ò~4‡íÞ¾B«,ñ_0ˆÌS¾x\0â£SÒÃj¬[X÷@¤’Jš–â5B\nô#¥>V´pg9æ¬:Õ[ïâ¹§¡ìRÕ\ZžñTþ¾Y‘’H¾¢½®ým¼e ‹¸_åÈ*yóÎÂ¦»O‡ž7“Ã—BÖ~l¥8lÿ\0½oBw÷YË‹ÂóGÚÃtex—Gk9Ù€ïƒú×/pvîÜkÙ¼e£Åx<<®å#šòµ°l0L¿)lÎºÖ›žÑ‹e”0×]áÝ+ý*uR7‚wé[Ú·€àµÓEÄ8Tù®a¢–Ás”0všOH›SzÝó[ªO$jáŠœq^Áðàìž(ÕáÕ®Õ£µ·pP7°çòÈ|1øe7‹üD%,~Î®ƒ±•öï‚<5…`ÃÂŠ8\n¸¬ùu:êb’‡*Z˜·\Z9´;QÅMolá6úWO¨éªÅœäþUI-|±‚›³Z&y¨¡j~Ï2çšì-_íúw–~fÅr³ÃµÀ­ÏÌc`™â•Á£&ú×ìò1#5ƒrá²1óu®ßÄ‘\0­\"àç­p÷Œ\\@©LI]Mñ”‹ìûe\\Åoü4µ:=å¡þ°m¬ïZ½jÉˆÊ/­u°B–YÈ«–G^©¥q-N‚FM6PûÞ´ËVß\nç\"¤wÚ§\'NÂèWWY]¹©Œw;PÐÛ°I¡>Wåw{U£2‘ØŠµ€¬9¤1$`ñM\0ƒ‚Ò’C\'…6Í+ ËƒúSg½†Ö$®@äæ¸cÆ¢âO³ÂþU±?<çÓÚ„›+¥û­]Vg·´ŠKË¬ÿ\0ª…K\Zòxþò+©m§clƒ<þ5ÕxÛö€ðÿ\0‚ü>4ÏZod\\\\ßLwÈçêkçÈ4ï|BÔ¤šÝ„ŒKLÃŠ»r’õÑµ¯ˆ÷d5¼3¸à*u&™áŸ†þ\"ñœË,±½¥±9.ã“øW­ü9øc¤ÿ\0¤ß ¹¸\0Î8ë–šTq*@\0è@©ç}Œc€ðWÁ+Ã(“<k=ÇRì3Íz\r½¼Vñâ4\nÞâ¬#¨¤1œ½BZ”ÆˆÂHæ«ìÈ8ÀÅ[*v`j„[“Ñ…5ægkÕrÇwJ:>ð£É,N8#µ;j«=UîTu\"Ã/Ë‚3Ú¤DÄ,ÝÍXŠ<§ÖœWny¥Í}’+œN§æ–È«eFJæ|]âëi³\\ÝÌ¡”|«žM5¡\\­»\"Þ³¬C¤XÉqq\"$q‚Ic_.|Rø›/Š/š(¤d²…P~õSø‘ñ^ÿ\0Åó¼HÆ,à =~µæzÃÏ¨‘²¾žõ„§ÌùQôXl,0ÑöÕ÷èˆµ­B[”qnzå¾Å$íºY\0õÍZk™dPägµWd“­Òµ¥Xœ¼T«JäñXÙÆ‡Í±ö©khF\"Œ;š§ûÀ[€EUžu„9èÆµŠ±ÃvÉ5U‚º®éÞ²-à7dœ÷4Œís7~kJÂÐªôãÞ­¼É¡ŒF¸QÀíVp#LE@ÈÊqŒÔ«þ.\0©‚)r@^žµ­¢Âd˜\02X…³ \nÌT|«]ÿ\0Â­\rµYB©æ `ÍT…²>¬ø1á¥ðÿ\0„íw(I$PÍøô¯AÛ×½TÒl…¦Ÿ\r¸]¨ª\0_AV€Ø„Òµ%„\rëÞ¥\'š¤ŽœýìŒU‘p€Œ7>Ô¢´ÐwÔ‘¡ùpFA¯9ø¥à­é¯=ºbê1•`9¯IŠA($v§4K( 0#ÐÐ®(³çÿ\0†Þ7–ÆI4PàƒµKž‡Ò¹¿‹Þ{-@_[¯îŸ–Åu_\Z<\r.—{ý·`\0ƒ ^ÞõsA¼¶ø‡àÉm&`o¢NGsÅ	ßR’±Cö{ÕL5”Œ:€±®âžˆtojPãné¯ÐóZ_.åðÏ¼6þµÖþÑ:\"yö:´cýrmcî9¨ÖüÅÓê ÓÁ78å†kâS¨Â?Ø³§²­Ì[»Íb|NemB>9+hY²$r1¶Cnâž²ìcéU¡”ÆÝHqn<ŸZÒÖd¦Ùfy#9¯¤?d¯ÚÚóöj»Öe·ÒáÕ­õ8Õ%†I\n•e9Ó5óVqŒ=©Ì3ƒŒÖêÒ™<·?EuSçhóçû†¼eÔÄ¦È$“]¶ñÛ^ðQ¿\0ÄÒ§(z­r>I»Äéƒ\0îÅU4ŒàÔ¶bØÚ4«*&y^Õ‰1hå9\' ã¹&½ŠÝƒIŒ†º’<¤J¹\'½rµsTØ)ÞNÓƒëš’$dzôÇ·Œ±}(Šì‚Ë2íÇõ©Š°ÕÛ»/ÙÞµ¾r»—½jÛ]œ‰ð§ªšÄŒ¡f1RG7”À‚+E\"·=ËáMôsè·ñ+|êÀ‘]^¥¬Ai¥É3¸_”ô5åŸõ8×P¹ä’.=ÍyOí+ŠtÉf:V¥4ºkä´JN@«ŠæÐÍž	ûF]ZêŸµ	­d¤áˆ9æ¼zdd\'=Mtwo3Ü0•‹±9$ÖmÍº°;EzÔ¢ãšKVÌ•cÞ¤‚+fÃSÞvÊk9íöäžµ^EÛ–Rr+hTpdJ’šÔìá”%z×¶þÍÚúX__[¼á$”¡\\WÎzn¨SäàWE¦jrÙL—Ò‘NC)é]’Jµ7÷8’t¥v}¿âïêsÙy1 ‘€Ã½xµæ,ÒOö…/»\'\"´¾|W²×ìWHÖ¦[{®‘LÇ¡5Óêº_ÙÙÕ°AV‚+çe	R¤V\rTÑæÚ-ÛiÓ˜®žÛ<7u®úËSXTFÒn‰ñ¶Jç¤ÒóÖAÍgéwsØ–†E2[tÿ\0\rL¢¤®	¸»Æ°©6—r¡ƒ©B8¯˜oÕ¢¾¹V.ò\r{™Ô&ÒÒB?{i ÎsÒ¼cYš9õK’¸Ábq\\w¶ç§…Õ»á®Tæ¯ZL«¯ÍžµF&²ynÕn×îµs[KžÝ%}Ålƒ’y¤år7b¬€v‘P´g\'­cðžœc¦¬è<%ã”·Ùš“ÿ\0£ã±þè}ª_Y*¿Ú¢l!îµÁßY‡ÞÀá—‘^“¤$z·†c.w1@T{ŠõiËž7>GIR¨í³,ÿ\0ÂZ·Z2ÂÙ2\nÕÌÛU¸H\"R]›\n\0«ÂŒ¡rI¯@øAá¸ïõˆî%EaÈÈïZE#+l{OÂoCáÍ\nÒ?/¹ÛMzõÇ–ƒŒñ\\®”«iƒŽ:Võ«æ2£øi	ßfl4‘ÎŒ½	¬Ã	I1Ûšž¾ìséVXË8¨~a&æ×+Ž„QjÆÐðsZ_g;[v5™2˜ä`O%ÇR]RëíVë´O­ykkl²¼S)VÎ1]Ö§uåÚÈû€EÔzw„¬üG¥—ã¨íPßcD»žk©Ègh¤*ã9ô®šýcþÌR§•Á©5/†·6’fÞ]ÀôTZŽ˜të4†æ]×òJ)ÏK(¥©Ûhò	ì\"ª*Ì‹¹H\'²<7›¢Ä¿ÜÈ­¢=*Þæ)+YøÛÆ™e÷àò\rK+ŒMŽ-¹f<S!i åÞÈùn=ë+Zñ¶‰lÒÎãw÷Aå«+Å~;´ÐVDFqŽMx‡Š¼g5ã¼óÍ¹³€ð*’cGUâ?hNdº—ÊµS‘\Zµçž%ñýÎ¾ée§Ãò‘1’k*ÂËVñ¾¡äYÆæ2p_(ï¾ØøRÕ&™Vk²gaÍ7+hM›w<ãÀŸ/u©Åö·½Pœˆõ¯{Ðü/g£[$6‘,j;ZÆ±—SÆë\Z“Õª]ÞåIþ\Zž!Œ®sQ‰L„íæ§Ú1ÔgÚ¦ö\Z²ÐmàœÐ±î\\çšxúÑÙži-Er5‡fH5’”b»y«E°\rQ¸q¸y^ëô¡Øº–ÅH-ƒ¦3ÈïU|ÂÃ¯Õ43„VÁÆ:¦Þ#!4Ù.’c#| }â+™ñGÄ]#Ã6î÷×k¿\',\nðüvÔ5Ç{}5ÚÖØœ´EL§ÇS»ƒ«ˆ~êÓ¿CØ|uñIðÄ2¬÷d¨§8>õó?Š|m©øËR-<¬û›äŒtJÓEÔ|C#HC\'-$•Õéz\r®Ž„ ó®;¹Íw7£Ðöù0ù|[¿4Îiô4²µ3]6]FvzWâ]d^:ª±¯jõ?\ZÚIm¡Ëq0ÚÏÀá7÷%î›Ÿ—é]4£dx•q¯+É“©29µ¥õ©´Ñ}¿Ú-Ys¾6\rî+	ç–2èÃ8®‹œ—\'gÜ¾|VkéW—ÛË\'ž¸¦%½ÓK¿æÏ­tÚV£ökB²œw4‹‰›iá×Ž=ÿ\0{E9íŠ\ro[kÐ£6øCƒÜqT5˜f`mÔ¢ã‘@\\Îh˜ãæÍ /Íº§$úRzæšbØ f$‚kèïÙ—AŒÜÜê2)!p¾}Ó#k‰BÇÜíö7ÂÉ øjÓåÃJŽ(O”m›szü­ÀïU_RÂ0-œúT03¹(ËÛ­C-³0A¯r\'K°SæùEHŒ†ñªKo Š’wSÉÛŠQ¡±o:ùf3œûTÑDTN}k6=Ã,½ªÃÜ¹\n\\u£aëb-cN‡S°žÚá|Ä‘JE|Ø·?<}°d[3ç™\r}3 i£\\0u¯2øÑáÕ4#}æîßæÜ£ª÷§ÌŠWzÄm5mõ+é¿4°bÊ8®÷ÇvÉâ„¿jEÝ$\n³ÔŒu¯9øs®è~ºmÎŠZzŠôÏ†sý·Âú†‰sò¼JÑ°oÆ“ÑzÜù¢ÄªÝ á°:Äøˆþf®¼c•Ôj:{i>#¸µaóG)=ë“ø„Ù×Î\0ŒZ¸Ûp‰É4mÈÝ‘DaÔð¹• b­ÇÌ¦¥…•U‹\Zè‹d{¤p9ƒ*erNE1æƒ¥In’¾APkG E£ß´ÕkkF‚“å«ž*új—ðÛ5¹%¡¼öÝCF;X3.zšêt?[ÎnFæìÕÁ\')îÌáÊº\Z]îsœš”NXðNõ9µŠéD@=ÅS6-òAÚ°Õnk~Å¸n]dÈ\'µmGå]Ãµøjæ`˜õÇCÒ´­®·ƒ@–…ÿ\0*kLíbzw©a•.¡b¤uäzTPÞ9\r»šìáæ2F6··J›0ÜÔ³Ô&Ó™WÒ ¾ñaÕ$û=×ÍïÕÔ¿{åJ»O©èj=GK[•b«‚{Š¨Í ±Æøãáf¯+ÜYß¢•¾µášç‡/<?xðÜÆc`_G%Äö•òÊ?ˆTZ¾•¦øªÑà»Kò¾9½\Z{™Xù]ãß’yªò\'“^ã†wš	’H”ÍmÔ:öú×öÛU÷ŽEw6¥±šMnb2ä±E^°ÔÚØçå¤’ÐFã?Z­*Õp\rZ“‹ÐÏ•MjuòèÜŽAê^ø¹=£Ç§êò´ö™Û¿-ÿ\0Z¼&ÚòKVÊäŠß³¾KˆÁ\r’+¢q…xò³™)RwGÖ!!ÔíÄÐ:ÈŽ>V^„Vtzo—«\"Œ^=à/ˆ÷™`œ¬Œ¯R¾â½ÒÂþ×]ÓÖæÎEš9AÖ¼z”eG}ŽÚSSZîsC%“K¯lÇ{W/âoC$2]éø,Çvò¯L[5H¥GPr1Ò¹øm®4¥“ç¶<íì+–QRGUºrº<E¢1HREÃƒ‚éV-ÐÇ½w¾\"ðô\ZÊ5Õª¢Î£\'ojáÄ/…\n0l`×¢}\Z¢šº$àñŠ…“‚rM\\=¥Bc A\\vLõã#*åYàÚ|5lØ´/ÉŽN}Á®RWçÖ÷ÃËµVžŒH¹ÜW^VÐñó8.Nd?Å©>‰­IæÊñÚ½»à5ºÏ§4øåÛ©äÿ\0­ƒÅip –ûŒZ½ÓàF˜Ö>µgRKü×eô<\n^ò¹ëv6þ\\}wzV•˜15ŸñÃ’yV$÷5F_éq9H‹ÊGp0)§rZÔêâPËÁ«pÇ`†ûÆ¸qãÅd&;bA®rïãÝ¶ª–_c]¬ÁwSrãM½‘Ôk.ŸJÕåNèEUºñÜW²¤$1êkŠÕ5Ÿík·™X+ªk/ûRX7©\'¥yó¬Ó±ïRÁSqRhè5ï–mvmGåˆï]†¾)YhÚzÛµ³Hª?…º×œÛ™u[…„®ãô«Si¢8Ø(äqQ\Z²5xJ-YåïÆ‹›q¶‘S8\0M`ÙøŽÛ^Õä¼¸›n>XÕ†\0ô®~×ÂBå^ycD±žµËø‚öâÏr!Ù€+HÖ}QƒÀÂJÐg¹ø2`Rò ~Uãõ¾wîcƒŠó/„¯uD\\|å¹9È¯M2f3ü;kµ5%sÀ©I¸>„.9É9>µÆøãÇ¶Ú´ÆÂK–OJ¥ñâ$:-mk&ë–È=+Áµ¯KtòI+—–N™«FHŸ_ñ4—K$ÎZF$ç9¦ø;áþ©ã‹å-E§ç-#uo¥t_\r¾]xŽtÔ5Xš;Eåcn¯ÿ\0Ö¯¡t*ÛJ·X­£XÔp(r¾„Û©™áØørÍ\"·… `95ºEKlýÜâ§hUÔ“Ö¢énZÔª#cÆ(DÏ_”zÕ˜þà¨\Zevä\nw¬‰£…sÆ”°R3Æj£êÅ¸´Š£ÑgßxŸJ³V{B€Ã8æ•»”Ÿc¢‹æàiÁ@bF\ry¦«ñçÂÚHuhí‰IÏã\\¦¡ûRZ\"2ÙØ»ŸW8¹’ÝPÂWš¼`Ïpže\0œâ°ïµ;H3ç\\\"wÁ5ó/‰?hë\nâ\'[%\'(sŠâdÖõ­bfß-ÍÉsÜ’*H­BžUUëQ¨ŸMx‹ã>ƒ Dëÿ\0k˜q²?ñ¯ñOÇ½sX2Ãfÿ\0aˆð»>ö+±ðuõÓ‡»qn§©sÍu\ZvŸáýüên®GsÍf§)lŽŸgÂ/yó³“·Ò5¯Üd2I»¬’“]F•àÝ7HA-ã‹‹ŽÊz\n×KÍGW%,mÌ1ú¨Æ+¥ðçÃ{«ÆVºRíß4Õ7{³–®gRiÆŸºŽnÖÚâýÌv‘lˆœaEwø|¸N¹8ù·\nï|?àHlcû€Á­­EbÓ4Ùæ\0’k¦öG“}w>Xý£u4ÄƒO‡\n@Ëcµ|ã:¬²¶ÓÉÍwÿ\0¼Juÿ\0Ý±rÈh5ÅXAnèÛßkö§„´Ü›O¹Ô,”­½Ä±©\\aŠ®¨Í3y€îÏ$Õ§?`’6ŽPÝÆ{SDÆéå—«IÅi\nÝ\r»}O´Ðn´ó§Ç%ÔŒ¬—düÉŒä}\rsÒO•f*:ÓgMÈxçÚ RpÙäU%q^ÅˆÊÌŽ*G Å$K\"œ3­«µã©ÆjÄq³\rÊ¤óJÀ»‘ ™8’2½éÈA\ruCÆ’6žÖ·z}µÀ´3FÆ¸ÖO2ä(RªNy§ËÊg¤ü%ðãkÞ\'³·½`kîìÒÆÆ8‘1€\0ë_7~ÍòÚ]EÓq\0×ÑïvÎª*Ga°ÊÑ¿#ŒÔ³Éæð?\n…œ-žGµJq¸\0*lE±,pjT³VëŸ¥;q<°ÊÓÙåªåhˆåAŒ2HÙ%Nƒ°Ï4¦FmàZ`…‰ári+†Å0tÈÏãMºn­ä”2° Z—i¦z•íûûvò­\"O•5{9¾üDÝ)Ê`pPŸð¯¢þË§j\ZÓÎ2Ü b=kÆ¿h{Y-u{€™×»dUo€¾7šÓÄ0Á<Ÿ.6¯4÷V-éª=ö¡ð\r¾—ýŸ¯éöËi<¹ög¸\'õ¯•¼g:\\êÌÄevWßÿ\0ô´ñ_Ã+ôB_+ÌLúŠøOQÓ£¹fI@©ÀÍDw.÷Wg°D£‚~µ<0/÷¥w^	øI«øßZ†ÇOµÞüÒº£Ôšúÿ\0áßì‹áíÑ&Õjw\'‰È§Øv©Å#6‡,|?{~GÙl&›?ÜBk­Ñ>	xÛ[?èÚ%Ê¡ãs¦ÑùšýÑ|¢hñ*[é–Ð…]±ÅnC§DŸ*Bª£²ŠŽvöhø/RðòM<±\\n¥á!ð²/a^‹ÙUo4½NiÑÚÁ’­´Ö1Ð†û_§øŽûJsÈ, ã}vúV¿kªD¡X{Òj>ŠA!eÜ+Ž½ðÝÞ3=³2ªœñJ×\rQß>˜²!d<JÎhäŽF=ëžÑ¼k5”ÞMâ‘ƒ÷vÖw¶z¬!‘”ägƒY¸ÙhTd™RÎmŠÛš¯	Xm+ÅU¹ÓÌG1ñŽÕÈà„è@æ³^at^¸S*Ž½Þ¨Ç{5«0f/§¥\\·”2òrh’$”\0Ï­&R“<›èÛ>G\"±/ô¹`%àb1Ú­¥÷¨*Ã½]¶¾Iƒ%ÀïëDe(ê†¬ôg;ñ*`¹]àœ0aÅqþ/øam©$—ZS,n90Žÿ\0JôíCGŠõXÆ\0÷ZånáºÒ&,I)ê+Ò¡W›wfc(Øùþÿ\0IžÂfŠxÚ7^aŠÏžÑeS·:\Z÷ëýOñE´‹2¬w¤kÊüMà›íyKÆZÛ?,ƒkÐ§+èÎwn‡öB»·¾”È7Âå“ zÖ›F²\rW’‡È²‹Ž ­%fhYêÊ6“†ô®ÇÁÞ;»ð¥Ê´D½¹ožx#ükÍöåU·\n½§êƒ9Ï­oîÔ\\²9]ÑõÏ†|EaâÍ<ÜZ¸Ýž2~d>õfòÔYS¦+æ}Ä·ºÒ]éóä^ •‡¡ëÛüñBËÅh-®ŠÛ_c˜ÏFúW‘ˆÃ:NñØë£Y8êR¾Ò¥ÒÝ®cÉŽ\nšÌ×¼?£¸·\0Îåõô5èú¢MjÈ©GÞ®;UÓäÑž%/pèßÌW¦ª#¾yáåÍÏ>KºJ0W¨4ÉÕÜ½+UŠÒÓ\'Þ=	þµ…$Ot#žÕåÔ¦é¾Y_ƒÅCh—1«BýªO8°×,çÝ÷Ÿaôæ*Ô‚8éT>Ö¶­÷~ë¦•7g b©ûJm¹âM/ûBÅc?Î½Ç@¿·ðw‡müãó,j}ñ^aàÛEÖÍ”˜Êº«šì¼Gg.­{ogX&2jílù:jÛ»×o<K;*–œ_Jê¼5àI.>i›5£á/Ç¦F¥”À95ßé•@Bì×™lV²ð…•­¡XcŽõâž.Òâ‡V–ddsjú2à¨±Œ_9üFÔU5mÐüàe±õ¬ªh®uabç;ôsÉ,§b–`{V¤VR\r­(ÆGzÄÑ5/ìùŒ«‰ß¥tš×Šmn­a+\nÄà|ßZàK¹ôÖ¶ˆÝƒÃ×\Zn‰¶‘Ÿ³Ë#D²v,½EVÐüg‡înn., Õ<ØÞ3\rÏÝ„uÌÛüPžÛL›H‘ËÙ4žbÆÇ„l`‘õªÒÍ\rý»4Dn#Š¥%¡—³rMH¯>«su+ªÊÀÀÖ&±4•w\'m[ˆÍi1“nâ;\ZÈÖµ…f™ÝBöâ±”ŸC¦0Š;_‚ZìÍ®Éo4„©\\(&»ÿ\0|GƒD‚KkYK¢9Áû½kæ¿\rx¢æËUš[fØ¸Û¸ö©u©išI—\rß9¯cfœ‘ÆÁË(ÒW.kzÌ÷·O#±žw<w¯@øgð¤ÜºêzÌ`¶wGö¤Wø[Åk¢ßIy5ª\\Ëœ “¢×Kª|t×.N\"’;e,b›©:yf&z¸ÛÔú¦Ùml­ö«$j®*¼Þ#Òl†âú$®çñ•ÿ\0Ä^ùÙ¦Ô\'mÙþ3Yoâ©Ã¸vú“ÍgíC¥evøê$}‰ñ·ÂÚyÚo–Fÿ\0`šç5oÚ;G¶„›X¤˜{ñšùLÞÍ+aŸß<V÷× …·–èš•9tF±ÁàáñM³Ý5oÚrñÕÅœqƒÐ¿8®CRøùâK Æ;”ŒnE®/kwêìf?ðZÖ?|ItŠ«béŸQM9¾¥)`iíŒ¾ø‹­j,LúŒ®_›ŠÌm^îôœÊïõ&º¸>xŠqóCåæ·4ßÙûXcûÙ\nƒè´­}ØhFŸð©¤y¼o6YåUúš¿o¥Ø*ù“Þ:…é^Áeû8ü¡®&v|tÍlYþÏV0ÞçÐÑ\ZhÂy•y-\r‚M2\'ÖÙîN~ñÉ®–Éõ[…Ùiaåwf+Þ´ƒÚ^œ0 O~3šêm<cj\0X?JÓ•-6uçWø’lùÒÃÀ:Þ²ÀÝJÑ©ì+¾ðçÁ˜P†8þ&æ½ŠßJ‚Ü±®~•j(– B¨¤bads:­4Ä°¥tXGn£bSîãîñNŠ=ßwš®[n&Ø›{gJóoŽ\'ÿ\0„sÂm¿k:•^y5é‚s_$þÕþ62Ý®–ŽvÇó\r%l$®|É¬ß5æ¥3ùœ³~õÑé¿õMFÚ‹g+®âgmeø3Ã0x³[³ÞGf¯ÒI8Újžñ\'í®ïôûç{(xFÜ2ÖÈçwnöw2Á(Œí$Sí5\0»À?) VmåÜ—·Ë)ÌÉ>õ­à›>×YŠMM­–ÀªòÐ‘eŽ\\ßðV´Í3ûFãÈó’\0~mÌp+²Ñü;áoëW·QêPik<»g!VO¥yî»i:¥Ì1L³\"9Ó¡¤—r“M\ZRÚ‹fxAà°ïRZG4c|d0ô5Ÿ¡G}®Ý‹[H¼ùÛ¢úÕ½—útóÁ%»Å4\'¤}ÜTµb©Úú’Is‡a,|Ž¼Tö6ÐßÝF±ýâÀVDúˆ•òØÏJîþhZñ\rœ™@Ç>™§°ÝºUü!ðÚèž·1#®ã]¾J’1øTzmªÛ[C\n|¨\0ÀnXDlv°*Q:îÙ¢7hÉÃf˜[o×Ò”n#åïUa¤I3»F@n}êÎG=GZyÏz\"MÛÎxÆx¥„¶\nI&¬‰£@N	õZ7]‡¾jµ)¤ð§º2Ù0³vô,pLäæ ŽE„g#‘RCpYÈ^õZ4JGž|oðÚjþº} ËnD‰ýkç/o³ñR´¡þµõçt‡½ðÎ¢no)ˆ¼WÇVÎÖZ¯<üþtAY„¾îÏ‡—1x“ÁW8óPŒšùâ?‚´»û’	·œÈ~NÆ½Óö}ÖwÛµ«7¸Þ¼ûö‚ðéµñe¤à-å°8ëNPJA^-B~ÎŸ-¼%à«YåŒ}¶íÌì9ädËë\rlÊ§*=)<5`i»\0ÛöxöãÓhÅhùC5¢Ð\nV¶äÇ–§-¶[¸«ÞK€Í9 \'v8>ôh?‘ùõmykx¤Fë‘Úö]¿<o\\W ßi,ÒÇ&ážJÕÍ?ÄMˆfVvMC‹èf¥g©ÔÅvêÛ&SÞ¤k;{¢Ä`“PAuoz o…?ìÍóbcÍBVÜ¶ú£œÕü³b¼ŸA\\Œ–7Þ¸Ì1OJõX/÷²®ß|T7Z<7¨Ì\0\'éT\Z5¡Éø{Ç°ÊM½òlS]/ú-ÜFHX0nàô®[]ðXq#©*ýŠ×;mq¨ø~FRÌñÕL•xµâë/ÜÇÔ¸i:t­;U‚êñJ³)èÊs^âôïÁ›’^›k‘K}wÀ²´öRý?9!}=ê%NÁu¡ï¤	rGäj`\0$äƒ\\o„~\'iÚô!Ÿg¹èb“×Ú»‹{¤–<ƒšÎÝËNåH.$±;T=j¸ÿ\0fÔá*Fs×4“D8ô¬óDw.TúÔ¥­ÐúXÉÖ|0ö»å¶äuÀ¬õ@é-ìAã?+ßZêI¸G?=¸5SXðµ¶©–%\nÝwÖºh×pÑ˜¸_Txß‰¾a$¼Ò›Î‹©ˆ}åÿ\0\Zà¦´{weu\nAÁ:W¶Mky \\¸`Z?Ò³õ\rNñd2âÚ÷qÁ5êÒ­}wF2]ãŸfÏLU;›2­¸k¥Ö4­åâ™Þ\rg,\"c´×lm%tav™Ÿis$\rµºV¥¬¤m–)6H§ ƒ‚\rSBBßÝFk“’ÉíÚ§™ÚÌ-‡´|-øÃö™Ž‘­H«.qì~÷±÷¯U¾´Ð¨ <}Gñ¬Êâ1	ÎrW¶ü2øµ-¨‹NÖßt\0Šàó´ú7·½xrøŸs½YGÈÛñg†¤¶˜Km§ïÒ¹o-d²d8éšöç³‹PŒ9exØd0äWâo²Ï,Ö¸ã·­j”+G’dBu0óU);CÛ’Æ2˜#µajÖ{%Î8®¦»´2‚q“Ú–ãMŠeÃz×‹VŒ¨NÌû\\6.Úw[õG¶|\nÓœø>Öæh™ !8í“Šö\rÂoµÄñþñ¹\'ðjß\niÂØ£¬QˆÜ¬89¯X–&B\0àŠé±óSÒM#&8¼´Æ>aÞ´l U¯_zÀFsžæµôøÁŒdûV‘Ð†Ù•â-RÃš…õË¬Q[ÄÎwôàWÇ“ü@¶ñ\\“ß#mf\'Û<W¥þÛŸ[@ð§‡-&ÅÍüæØ\"1ž¿SŠùÂ\"hd[fŽÄW&\".q²=|¹¨Iß©ìí«º¡ÚØÿ\0v³¯.ïfÜ¡Ë/µT‚î“×Þ®ÃªÁMƒ–5å^ÇÕB/¡JÝ¤<Ü7ük]<e’ù!g?.k8®u«—XAÀ©®aƒE„ù¤ýhŒ®/fúš+¬\\åÚfÆy×\'­ëM)tIpy¬ýWÄ-&à[\n:V×ÒM4C#Ô×D)¹NP¤½öjÇ¨ƒ+?íO·kNC¬O3ž0£5ÇÄe{¨ÕÜì.3ù×Ý_\n<%¢ÚøfÎ[[X•ž5bû~bqë]ª,ñªãáGJqÜù—Jøaâ\\1Mš4î_å®ÓÃß³Ž³¨×—Ilƒ¨q¯¨VÆ$à ×b(–!òïZ*hò\'­-ÙáÚoìÅ¥ªbâîY1íŒ×G¥þÏÞÓÕ‹Áç¿ûf½:0I>•!CƒÏÕ¢‹G$«M½YÆY|&ðý¦JXC÷lAá\r*Í1¬iŽxQ[k\\â˜P’yJ¹ÍîÊ–ºœ}!O÷ˆ«ÑÛC\Z6!]ËÇJ@v©Éâ…}ÙíŠÐ”Ù*ì;\0_­KV\\í«TÉ Hx#u)2b¼a@Øâ=O­S3u\0äÔÑ|Ñ0y©Ô±æÎUšvlóÖ•\"r[T¾X‰+¸Ð¬…¹3‘Ãt©\"œ;5]‰,IàûSNsœñT´Ùy&/8©“ä©Zƒ’{t«9ÎI?…Re-QG^ÕNÒnnY€¤ó_žu÷Ö|Iy3Å¤89í_d|r×ŸKðÙEo,ÎÛ;ðÂ¾ñ] ºÖ—{lŒ°Vb:sÖ¦+QÇBÏƒ¼oâ\r:F[Å·¼cˆ•œ\rÇÒXø«Â–\rk|Ó%”§/”zwŒ<+a¢_ÙÃáÍSûL¼\"BÑÿ\0	î+›Õ<IªßÛKÛ©§Š3ÂHäàþ5¹Û~F0\\±\rwžÕt8|9iµÔ€ùLS8=¹®\'MòÍä^f|½ÃwÒ½_\\‹Á^)J²ÒÝtéÎË€8èô¢ŠºG=ªøJÏMð¬zœÑ\\Í&$M†Œú\\<¥ÛïœŸzé<]á—ðµ×Ù’þ+ØŠ†Dr®e¦`€e­v%lv~ƒ]ÐámzÂÐ´ñçà\ZéâTwz-Ôz†×3n_¶/\'Ö©é¾,ñ´H4ëË%m:Sæ 2wÊ¦ñ?<9âXbÑÆŸ|Ç; ?!?J- i}S<þAwyòŽ³ú×Ôß³oƒ×t—ò&JaW\"¾sðv–×Wë€X’\0æ¾éøK£E øZÝY@w±ŽEgÐ»sBñ(¢em¸Ç¥h§ÎÄžWµ[†Ò6]ÀrjVâ»0cL°ÏJ½ötþèçÒ¬Ï¦y„àsýáP%‹†a–Èôª*ãNY	œô§4Á¿h8õÇj¸tw«Ñ¦i#ò I³™—Nv\\vÏjUÒU³Ç~k¢òÇZgÙ8l±?Jhg1ögÜÂC’(VŽMn_iÅÃ4móÐÖªéç¦(Cè[[³%´žaÜ \nø×â-¡Ð|S}n6JJý3‘_^Á†B§;^kçÚ/@[=vøÆñá°:ýTödô±è³Ï‰?dXà\nô¯ÚÁòx†ÞÓì„,Ì7=2;WÎ5cê¹VÍ}Ïñ3áýÝÃ/xƒ|W×êŒŸ,‘­ø~ Òš&œ¹ecCà^¶Þ øk£É!&{t6Ò’rC!Ç?¥z[ã«~UáŸ³N¢l5OørFfò§[È?ÂãŠ×½8ÈV¶cVB-Û4þ?\n•>˜§¯51×q9VÚ½Ž­X¥V=vžµ\ræƒ\rÏÌVAÎPõ®Ä\Z5æŸ>û$tÝÑ“<Vž‰ãí>5[ØÌª\0LsD.–¤2ùÓ\'ÒçgUi1ÉjÓ³ñ4{Dr)u8àUÝ;]ÓõhÉ…Ô«u…>ïE†hŸÊdnŒi»uwØ–ÒX.âmŒ¯øÔoÑ3É võ¬«ÜY¾õº1ŒäÞ·ý¼\n|É½C]‹¶–c#¹“dÑàÿ\0z²um:ÐE$ÌTF£,MiÉyg|ÇËukŸñ}Ìš,ñ@7`p§½FÛ‚Zhy_Œb°{.z¯zÇÑüUy¦þêíçpÏ£>°–±‹k»v´•?½ÐÒÚÙZkÅ0ö¦¤!yá}+Äéºd‚Òï®ØÎ~”Ý#ÇÚ§„n–×YŠImÔ…óG\'´É¼-w§Jn,ŽqÚ®Ç©C¨Z›}bÜgÜG´¶nç¦è^%µÖcÚN³!\0ñÔVÐeqê\r|ñ6“¨ø^óíº,îÑu¼Œ{ŠíüñVÆKmHk®æ8Rk¸•í©è³Ø.Æ ¨¡»šÏpÉòýj³i|“•¡êÌ–‰$[³É¤‘E9~Ë«BÑ’zät®\'[ðŒöÓÚå”rq]lÚy…ÌˆJ°î:\Z–×SF-È\n¼z\Z¨NPwL™E5fy¼\ZµôMc«@$Rp$aó-rž ð4ÖóZ´ÚžŒ½@÷ëºÿ\0ƒ`ÔÕÞCÎå®ÍÔü+tÉ(ß8;ÆAëÐ®¥¢Üãä”z\\óõƒøJàô4ô°Îá·Šïn´/#\\iì°ÏÔÆOZçŸN–ÆWŠhÊ²ž„W|21~éÊ\\éX”]ãÒˆ#ÚÁTö®Äië(Ú3šÊ×tgŠÎic2\rÕËZœ^¦Ôg­™³à_‹w¼û¢ÆãM$=LOj÷\r7S²ÕlÖhg†QËÍ|t×)y#s‰GU®»á÷Ä+ï^¬LÆ{aºü>â¼Ë4ÎÍ¶=¿Ä¾\ro-FZãÖ\\+Fà«Ž9¯WÐ5Û?ib{YÄãz­`ø³Âiu –ØlsÏ­kÍ\Z‘ä¨”è¿iM™Ÿ~\"ßx+Æ¾^æšÂämšx>Œ=ëìß\rx³Kñ=ŠËkr…€ÃDÇ§ÜWÃÚ6öš¼Mv¡\Z\'Æò9Ôëš¤šV£k¨X^=»q‰alf¹]-$vûHâ_44}O³\ZÉ›,WÐU›KètûK«‹‡òâ…’}«Á¼ûD1¾´ßj‡\0˜×¿Qßð¨~<|h³ŸÃ­¤è—bi/To–#÷WÐûÔ9+^ãÊJ-4ümÕuoŠ>Õ5uŠIlã*8TÕx*+;!-Ä[g8á‡5×øOWÓ´öÎáUå«¤˜äâ¦¶½ŠúOa}EyÕjÊÖGÒápð„Š3éö¶ÑÉ¾ìËòØÕ)4vû2»ac5Ð](q»–EÏ¥aë\Z’ÛXº–•çÅ]žêvØ¢ú¼z$\'aÍqÚž³5ì®ÌÆF4ËÛÙ/&eÉlð:-4¬ÊËµÙt9ª×TS“#°ÐMßï®\\ý*Ž£24Í\nIÇ­jêW¦ÞkaÏRe[@RV/Û¦+¾OÙÇ•-IËQÕžÆy¶!²£\Zûgà%ø¿ð5›³n” SÍ|ix¹	Å}=û/êâM[VbÆ&ÀRmÝã`”T‘ï#¡h`àæš¤óŒR ±ê+¢çŽ…QŒôå8Í&ìŒ¢•zõÇ½Pn+¶ÜÓ#=XSœ\rÇœÔO!\nvŒŸzI\\q]‡`1Æ½ú~4°8 –ëK‘ÏJQœŒàTNØà\Zl³ˆÁ¹ªFgrBŸ¥Kw\ZÐ¹l„¼„rjõ²°Rx\0ÕkEh£FN9©¡D[wš\ZÜ¶$\nŸ0zTsL€œU#+yã½5˜°ÏAWgmJD¹ÞÝqš˜Zú¶GÒ«Û.ó·5eîä/>õ)ÜI%¹\"«…\0Šw\\æª$»IÀÆiÂF1±¡D\\ÇþÓ:t÷^ŽæÚ2ík(‘€þï ŸÖ¾lKM?]²wt_;n=Á¯¹µ->\rZÊKyãDë´†\ZùŸâÀ\rKC¾“Pðè3ÀÄ³Z“Èú…8»=KZ£ç»Ý}6è´{¡lü¬:W?{¥\\ÈÍ&Dž¤W«^››66ú•“Àý\nÈ•>ctKDLLOðšÖ÷\'–Ç7ðú-.RC¬ í of™¯i¶÷:­ôúC*Y©ùW8?…l\\xfpÐ³+2]$Û‚\Z#sÝzUiÐ,ÎVK‰á˜œqZ^ðö§¯^4Zm«]Ïó\n/ «oáØ¥Râ}§Õ…t\n›[ðuÔ÷\Z<±4’Çå¶9Ú©y‹cNÛâƒÞKž¿¡Å©YÛ!C	\\2™üW9â×ðíØŽm\nÚ[Vb|È$$ãÓ×éú¯}b\"‹H+¨I!ßu‘ó†íÍz‡ÄØ¦ûágÂï|BÔüAa{c­L!ŠÆûè¤*Ì½xFÎ:cÞ¥¥mGÕyðKÂçTÖ­£1Îã_jéº{ÚY$K\0\0|Õâ³¿…šÚâKÃ\0ý«è˜ÛÍUùGZ‡`L©lŒ‡nÅÉìkB6ÚƒoÝíH±­žýO­=õ¤¶‡-Î)ë8ã“À§ÈÀPµL±îO“) ê3Ö‹Šå=»xÆ*7Ú¼¶8Å\\ldã¥Fð‰\Z®Ïas	PÊ“õ©õÉ ÂˆH^žÃÑN;Tn=ÃåEbÝéÌ¢I\0$õâ¶òœwªòÌYxcéLg òbR\0>íy§Ç­ j1¨v·|“Ž€î¯NÔ[ý&CŽéX~)Óµ|;¨Zì$‰€úâ“ÐK¹ó/Ã{õ±ÕÑwÉÇ÷/‚µ™5ÿ\0\0¸yb·RÑÄXáO°í_Z;é\Z¹Ü¬\Z7Áã¯5íý£/|‡ìö°O¡B—*H#ìjÒæFm]Ý­|ð=úøã…qçF!Õa{9·;‡+¸{×ÕÛ‚™Ïl×åV“ñ^ÿ\0Rñæ›®;ˆMµÒKµIÚ¿6kõcFºUÒ­ná`ÑOÈ§ØŒÖ±Z}Dx1÷,q”F$dö«›	L¾´Ù8P(°\'©ùÅ=š² }\rsZ¶‚Hv‰p[¨=+²X³#æ¨Ì9È¬•âF’G“¾‹%”ŒášìÀñZz_‹µ(,W@MO0u®ÚëGŠéXÌê‘Y¼¡¸tô«»h–’ÔètŸØê©û¹WpêŒy«Wzlw0@2kÍ$ÒZÚrçtVŽŸâûí\"]—\nn õÏ8¥g`R4ît››\0Ä.Fx Õýâ{¥k{„m§£‘Z\Z\'‰l5¤>[qÕó[U~âšoR“LáüYà{-JÖEž%`G:Æ¼“Pð&­á©ÚëL‘¥Œë_AëÒAµN9ç5-¨Ã°Ç¡5‚V*-žM¡xçsmQ\rÓsŒ~uÐ^iÖZ´£uu#ªÖÆµàí;Z…–h‚È:H¼0®ïÂÚç…¤°v»¶^v÷Þõ^¨|úUæŒI€™bÏ*Õ“}a§klCot¼ç¦k Òüg Åòg<aúf¢Õü>—NeŒŽ{ŠJVÜ¥cGñN¯à¹öJ\ZþÇ8ÃuÚ½sÂþ9Ó|Ioº€%ï˜~äþMÆžN¾tž•œúBù†ïIœÃp§vÜàÐâž¨£’E”m`j½ÞŽZ6`9=«Ê|+ñZk)RÓ]B­ÀÓñ¯YÓ5˜/!ß«20àƒšÅ¦„Œ¨eŸNc’Y?ºj{«[/Z²2+Ô¢µÚÖ;ˆÛ dw…y¥ÍjÌbrÙ…}	8}oÁ—º¦êÁ›hçÚ£²Ölµ¨þËª Šç¢ÌxÁ÷®öÛU7ˆé»±¬_ø×Qæ¶eëÅvÐÅ¸»LÆT¯ª9-KNm\ZdÜÊñ¿Ýu<\Z°¶)yfêà\0ÊA5‰ª‹«T6WÊÞJ‘ýµ`j×:ôv [ÎÒÚ2GÖ½)Ïš\'<)4ÎSÒšßTž8þR®@ÇÖšŽ[å“åqÔšÙƒO¹i·H½ùÈæ£Õtí¯œíYB•Ö§DªYÙ7|eyáYâ|Æq¾3Ñ…}áßiþ(³3ZL¬ã‡?2Ÿq_%G4¶Kóçi­ÿ\0\røžëC»[›9¶6FW<0ô5SÃ©+ÇsÔ”^§Ð+Ñ!h^u”ž¢¹½MfÃÊd18úV§‡¼cgã+ØEx«óGž~¢ªkQÈº5ä-ƒ·æ¼é·nY”ì¦¤ŠºMÒ\\ÚïŒb±õ˜ßÎc¸•ö5™áëÿ\0³ÜùLp®võ®—ÄÚ-Î˜ðùñ•¨e÷µãÔ¼öYF¢Órž‰a-Ú;Œ^™®«Ão*cf¡¨üý˜b’+ÅL~áV\Zë4ßC¨¼“[OäÂ‡%Í~+žI´vÆJ³\ZomSJ»ŽL+7*Õã^&Ö>Órê£€p w®ÏâPºð´í§ÏòJWpçï)èkÍl#mBð¹9E5ágs«ŸÝºe­Ý‘ÞiWžÙ­9n¾É“I‚ç…«q[ªð1øÖ¡0º¹e/•S€z4­æ|æ2r«5E?Rh^æG”‚Äž¦Ÿ:ì\rŽ¢¥†f·Œ\"Œ¯åLš\'œƒŠÂîNìê…(Æ6E_³¥-·«ÛeÝI!Ôo­˜œ}kÅ,ð°íü«Ñ>Þ¶ã%Œœ‰?ZÚ›jZ¸¸^‹>ÅHF\ZHåÉ#­$3+FqNF-ƒ]I>‡Î_¸à2O½9O¡Î)¡—æ=êCE»qÎ}(Š²¸-KaÈÒ õ¤VàäÐ\\õ¥¬°»Þ¹ö¦™sÏJvC¯J¯·ioJI$®$›Ø©q–f#Õ†C‘W$ÚAã=j«:®A¨)3N	ÇÙ¥sÄžgZH3œæ®ÛÆ9ZiØh•0g‘JÇŒdTNHÂ†\0šPH<T×äîš°½xªâ\0Äžµ:·ÂµQ±\ZìÅ§)ùHéšŒ¶)FqÏ4ÂÄè6Å\'5ÅæÆÀŒÖ¼í#<\ZT`qšI_AÄæµ¯i:Ün·–qLþ%ä~5åþ ýšt»ÒÒéóIdäðÜµî,™=hPŒäÒŒTv\ZgÈÚÇÀÏèÅÚ.ö0p<³ƒù\Zã5;\roJ,·ZLÊªpY£8¯¹¥µYCŒ`ÖuÆ“ÈÉ$Hêz‚µZ º>½šÏÊÝ,õª°-˜ys4Dö<WÙÚ×ÂÏj¥üÝ2Ý‹u*›Iü«‘›ösðÕÓ;cû(Ø\\Í\"—©óŒ:v¡;¯:Äy\\ð+Ñ¼á\rS\\¶“^]ßÁnAq+:FOR8ö¯WÐÿ\0gßØÊ¤‰š1ÑdW¦èž±ÑaX­`EÚ1ÀªrrVdE(ìŠþ\nð¢hšjGÀù­tÖÈÊN~é¦Û¬™ùxSVm<òqŒÒAÇÊäb¤µWG]xÍM°†„úêH‰¼Ÿ˜zÔíl#Ì\'ëTÃ\nzJÅJã#9â„ZÀ®À‘Õ=N9¦RŽõ§2.W#\Z…™W9j™½êœà1 Çÿ\0^…«*;h>#ØbËÛ5±¢¾ãSQí1NS³ÇÊŠÓ”/Ñ™\ZÇ•\Zœ“Ö°•Ï˜pw/B=+kYµ8 cƒXŠ›‡ßïY”ŒßøVú¡<—2ZÆÒ³n<Wñ¿À6V~’êÒÜG%¹Îå«ÕmÚH¹Ï-Ú³üi\nêþ¿³uÞ&Ž)%mŠŽ§Å–÷Ä)Ûšýbýüh<gðCDœ¸k‹Dû$£99^Ÿ¡ùCyh`»’ºÊÅq_sÁ6ü`^øbWTÇw“Ûî¶?JéJñ3i£í¯!€np)ÒÝêüq”žG¥5bÜ§ŠI²?9\"N´ç@ãšùÏÂ´•Ý©XµÈ<õX†ò¯eðÇt?F­a{ÌFL[°Ãê*,ípSŽÇBÐ ˆ¶yöªí“v{U¯%I_á¦y|dóïJ+AJÆUæ•Ò¶à\rs—Þ1#lù³ü$Wr ß÷Tþtj¥p*}\r%q«S>cÉV0H½Ö¯éž(Ôôž.TÜCëÞºÛÝ\"&º†±§Ñ]wÀxñ÷MRîI¯¥øŽÇZ…‚ÌR>ãðjÜ&)1çµrWú\0‹t2Ž@T¶º–¡k[ß¢÷=k0½´7UXqiÛr¤‘Þ¨[kð]›ö·÷M^gÊäsô¦Ñ¦¬ÀÖ¼¦k ¾ß&|q\"q\\¥ k^$îk»Lu^¢½^Ú6OAÓš¸ÑE\"p6úš–¹EÜñÝ#X¶¿O*fÚç³Õ{Í&&™Œ2yoÔc½wž\"ø_cª“qj~Í63¹8•p\Z†­xfPníÞâé:r1P¼Š+MµÃ{ôy˜éNÒ¯µ/JÓé³yÖ§–„ôÅké×vZÜFþÖ¢¹ðÕÍƒ-˜”ôíZFÝCG±Þø7âE–¸¾K¿Ù¯)?#]Ä3C\"…l÷¯œ¦ŽÖê_ÞFÖ— åd^9®ŸÃ5\rl:’›«@6¬ª2Â±”:¢‡«ê\Z*J²ðG÷k5Þø\\¼Dò‡·Ò¶ô=~×X¶ÛÌ²)\"¯Oc\rê±a´ö56)5c—¼Ó¬|A›ÕsŽ‡¨®UðÍö#Ëo™móé^‰¨hRÚ–’0TƒÃ-W‹PFF·¾^½\ZÒIÃmQ-&y5íœZ²îŒ‹{®èF7W¨Ú\\Á;Cp62žýëÙ<Mà%ºˆÝX0uÂžµæ> µºgÝ£y‘Œdö¯b•E5h³™Å-l`jv¨m\0ÎH¬í>#öIÝNL|‘íVî–d]§¡ãŠÖð~‡$pÓ¡ï·Jš‘PK”ÍÑµÉlnâ	r)àƒ^½áïÿ\0ÂW¤^C.á#;ˆè}ëÁ®¢û%Üˆ§!OQ]ßÂ{Á6§q9/ÈÍc>Y&úŽ	Åè\\c08d9»K/?‰Q#»—3F0¹=½«‹½„$Ò¨Ã\ZÇšþm6î9CÃb¼Š´Ôãcè0Õ½”®{]ÆŠšU¥­ÂÜ$*îÚ§‘õ®¿Á~5ƒÃ«$—A$‰Ð©\rÏùé^o¯OrŠ‚B@éÍZ“Ä®Ö2BÃ/Ð0¯>0qÑ3ÙEQZE¯ˆÞ!>\'ñ%Ä±Ÿ•Ûd@œ€½…Wðþ–ÖÈÁ‡ÍÞ¹È.€ÔqÝƒÖ»{{Y ˆJ&ÕñÐóWÊÎ‰TŒbû\"Ž¯rl s¬Ü\nç­ØÇ¦îsZÚÍ¬šäVÑa˜÷¥aàGÛ›™€\0tJé©e|þ´¥V£Õ™6<Ñ‘»Þµ/@žÛd±9ëŠÚ‡CÒôÆRÌ»‡\\œÓçñ›h¤F‡°¬Õ	3yf4ã²¹…¤xjå·f=ªGS]?‚<<tŸÛÝ3ó¼q\\íßÝþKtØj«¦ø’ñµkid”ì}+¢¹]Û<Ê˜ÙÍ8ÚÈûK‘d±¿ˆ¨©]ú­cxV÷íš-¤Ù8(:V©rå¸8­,p_ÝeÈïØÓÓ`§ŸåUYqô¤‰È$­?@‘r7ò•·ËUÝ¸lŠXÐÊ98QA·làr(õ®MhÝ“ÿ\05?–\08ã5VÅH;ºzÕ3ÒšÕ	hU6yþ*¨ð¯;€&µ¼¼Ufƒ(àb§mk±˜±˜•<UØn©ÜIÏzl–Œ‘NG½VUòŽr=)Äw±t8ur~íK\0“Š¡kr9^ªÌaX»n)X9´,4J[(yþtå<1ôªÑHPžþ”àC«cåþÕ]Å\r¬NqÁüèŒJ‘Bƒ´óLÆ3ÍO¼i¾„ÄíLÚJýóõ¦GºRÍü\'¥\nL„äcëV‰Ž¨š4,[4UÈ>´£\0b‘U³€3éHž·­5“®x4ò;ãŠi!¦Ué–ÏÍN« !x5b8Ï=év	ÇÎ(ÒÑ\r·µØ?Ú©äÇu,\nrÕ\"Û¤‘ž?Z»h$ûŽ„*\r›·Ö”yŒäõ§ž”£*}éšŸ&sËô€G­­?`¥¢ˆjžÇ¥*œÎßÂƒÇ5¦rAç±ª‹Öá¹apÄäÐÛTzUhnWiy©7dçò5šD%q	&™*oB;ö¥óHÏJ^zŠÒÆ…I$V\n¹Ýâ¦!ç\rÔô©ZÏäýMD‘ŽÝ1ŠIØ·(·l~•ƒy¦ùre5¸Žr{Ó.¡ó`ÂžiîÛDP´ŠŠHÄ¨ÊËÛšÛŠØ;²–ééK=‚,LKžÂ•µâO‰z;hþ0¿]¿+>õükÚ?bmu¼/ñsK¼.E½æm†éŸÄ\næi-\0Yj¶—Ár“.ÒG¨®Áž4—ÂÒÚMm÷¡¸Iï€Àÿ\0JÞè7±ûS\Zù€ÐÓdL¯*€µˆüGá-#V„†ŽîÚ9AãšÚ\0(n\0ÝêvÔ„¯©øéâÿ\0Ùº+„iôæTaÆßZñÝcáïˆ¼veŠ9âdäK þb¾ºƒUÖ´EÄñ&¥§ÝÎ­\rKÃþ!cßúÌ1åÜ.2~´Y­ˆrî™<#û@ëš¥¾­Ûm—‚XbOÎ½ŸÂ?|?â±¶Þía˜ÿ\0Ë	¾Vÿ\0ëÕ~Íºv¹j÷6AdÈ$4$kÂ<Gð+\\ðù’kUì<cƒQu³±>§F›•ˆ¨d1ªî×Ëø·âÏÊ¶×y¼·NW “f¯dð§Æx±cŠâOìÛ†÷wŸféG/aÝ¥ª;;„3œ.BÓ\ZÕcÍ^X±¼N2>R¼æ³u_:U*¿-+yŽ%¬â²¸ñVdúFÐ|²z\Z³¶H“–öÍ÷`®qõ¤®÷9-C@Y¤ß0È=;ÔóßiÒ´m™cµÝÂã#Ò¨ÜiQÝ\0séR‚×FE®·’mó¿B§ŠÖ†A1à‚+™Ô¼?ö“æFr}*½…Åþ–‡*ò ìi²v;¸ö£\'¯JsÅ®ðÈÁë˜Ó|OozÛIòä›ŠÛ†pó	KdzÔ[¡j\\Ç/â/„Ö×l÷\Z[;œdmû¤ý+{oÂÓ5x\Zâß(È¯lI·s¸àU{åµ»…’dWaƒÒ]ŠZžE-µ†½›)|tkôë­5ŽÐ&ˆõS]~¿ðî$•îô™þË çËÏÊk•Ÿ[»Ó$0j¶çŠ84£}‡cWÀºÎ›§êO!vÛ‚™â½jËVŠp¬ŽÀ×…Mcm©Df¶pHçŠn›âmK@—ËÆš†¯°£#e¹•Ôm÷¬][Ãë29E\rí\\†~\'[_F«3ˆ¤èTžµÛÙê©wø¤ÄÖmX›ßs”/6–ÛUK à¡þ•ORÒl|M\rd#žÌ+¶½¶†é0Të\\Ž­¥IfÆH˜©\nÑït+i¡å:ÿ\0ƒçÒ$—eˆ\nåï¯/R/%„c°¯qMM.¢¿U\0ñ¼ô®GÄßŒ›î,0sÎÑÒ½*u”´™»5îá²\Zºo†r<UV}x«+à]FîR©jáýÆ+Ðþü?\ZTo&¡\Z‹€r§®k9FÅÆû3™Öchu+ƒÄŠÎ6l;<²þ˜ëš—…ôÙçó®TŸ|U2Ú.“•ˆ#°ôÀu*‰&•á«ù1[°SÆX`Sµ½:mXL\0b3Åu÷~4HC,Œæ¸¿ëRjy–Lf¸åNÚž®\n»©>[Y\"_é–·o%Õë/”§åkª¹¸´hÙ-B°_Jó½5˜A´‚zWA§9·°™Á$Öð‚Jç^´ç7®…85—¶Ö%”²ð3W&ñMäùýáQè+š‚B÷’¹9Ïz³¹ÈùWuiÊrÙ³B[ù¥mÎä¥3íIâ©Ç¨ ÒÞ©]W)!}§##éKmtc‘X ô¨ðHü*h¡•ÏÉ¸ý)ZÁeÔû+àî­ý£á7\0œ ×q½Ø’?JòÙÚöWðá·•²ËÓW®òK`þUiØHåPHÎiaqGíUJ,Ù4Ø$fbs‘Sr‘¤%¤=è‹£J¦’1b;U«cËRè\'èË)>åÎ)RmäásŽõ\\1l‚vÔ±…û¥ºV‰§¹™“‚ä’m¨^A¸)4«(h8\"£2+nl{TH¦ùI”¨RxÆj•Ì\\ü¼SÌÌA\\“ê*@É\"€üZv¸E”bnxéS!<àþ ¶ 7\"’ÖMÀžhŠ)ŽŠ2À`àzÒ2²1\0¾)cc\Z‘éJec÷qA>í…K‡€>2¬Yƒf«ó»Ú¥d	–\'äÃŠEE±âm±•û­RÛçaÎ¸ª¾d`ýÆâŸÅ‰P6Ž´Æ®[S¸P=*¿Î€s»\'¿aOV8Èã>µ¥‡bF$M(8<}) åI<â¢•Lm8\"‹\nÅ…Ç~”ðÙV^‚«Ûƒ’zÔµ-X‘ÈáIÏ½N³a›åªØ8ÏjPvçûÓL=\"è‚pµ,r,€žsTTàœ“Š‘¥UB©ž{šÒñ±I÷,›€…²:\ZkO“ÓŠ¯éIÇzžeƒ(,µ)ù¹‰àîùj•Ä¥Kä¶ßCWB‚1Ú‘âIÜ?\Zv4±Ï\\K3x‰ÅXÒî®w;îUÁoóí$v¦¬8¤¼Åè5çW‘±É¡þl’zYm¼¦ÊŒŽç\ZÊ£+Îj…a¯pÛñ†?íTÐ«H¤(É÷¨\\äq×Þ¥IhyëÅ- ñ\0Å†\0õ¢9\"—ˆô¨\rÂ ;ˆûwùò¬z\Z~a%Üp\0ÝÔÔ*­]¹||Ï×>µ•q#?Êü}*Vˆ=O)ý ttÔüÒc@Áÿ\0¥|µo„, c&¾×ñ–žº¯‡ïíHÉx˜/±ÇñmÍ»Û_O¬ŽV®\Z\Z­Qú­ûxäø¿ànÒï¹Ó­=qœ¯é_Bˆsžkáø\'´ú]þ± Í)^Ãöˆ£\'ø”óú_z,d©#šÑÙìs«£óºK7d(ð`ý+Uð¬wg2Ä«‘Æk¹ñ©hw>Mâ—\'ŸzÄdûG;ÊÙ…+=ÐXâ­ôÍWCÜÚmäª ÿ\0ªåjUñE0ë,ÙàÊƒ#ñ®Ãû2Ac\"ãÚ³§Óàbêê=Î*T›ÜZœNµàÏø¾9Eç a«É|Sû:Ê¾dÚ]Æ9\'kW¹]øFÚB^ÔùGÞCY­&­¡Þ¶B=zÑÊžÃM¯3ç\r{Ç§ò÷ÌöÊÔÌFGô¯Lðí¤ø£²Õí³¯…š6?Ò·¼[¶‡u¸@Fn+‰Óü\r ÿ\0i¥ÄìumÀòþU:õO¼–9bóm˜£/5ŒÚy˜Ò{šš/\"É·Ÿ\n0Zq»hÉó\0e#ªÔèR¿ÚÚì#Ú\\ÈjÌW°(ÌƒEîa–6cwûUžð;pÇ­$Šo±ÐÉkÚ`cê+>}\r¡b_z‚ÖSgózjüZŸž¤íã×4ˆV9KÃ‰q#J™óQ4·úD%ðeˆqŠï\r¼QæLõ¬Û­=Ô2€&NëSt_™ÍéÞ8Ž\\«-»©¥&¦†Àü§ø«VðÌyŽŠ³½\rdëÒÏ¤ipºÀ`ÓNâÔÛ–ý“wÏšÍÔg¶º…Öuê+–O›€ü­ïP½Ô’¿Iö§Ê¹GYÐZÆc>›rÑŸùæ:V_öÔ»ŒÑý7c­tics1¨Äý*ô^—PB“Â{ž´+\"ŽMáM¾e»aºðjæ—ã\rWFn$gþUÒiÿ\0-l¥i$ºo÷3ÅkE‹§¹#b8éœÒÑ†…Ÿ\rxö÷UŒ$–Ï“üxà×Hd–t&TÀ÷®Iüakf…m PÃ§FëÆ—·©ò)}«5¤#©{+g.e Î\rGý·a§F#ƒ5ÁÏª\\ÌNéI>¹ªÎçÊ;Û\'Ö´²3ä‘Ù\\xÆÏÙâ÷ZÇ¾ñmåÁ8>Xì°EÜ`c4¾bâ_ÎœMTQvMVæbÅäcŸ^õDÜ!$oúTvä¶ðÏ“Ò³î4Æ†F’\';º‘ŠkÈµdi	ó’A•«HÌEZ·¿I3‹‡ÇZ¡ª&ÿ\0”k\n›¨ž¾Ê—í&I.€ƒÞº[ ¶ú>;‘ƒ\\ï‡íŠÌè¹sžõÑj°´$)Î{VÈò^ç¦~öúUÃ0\'ükzV<muµ¹á™n‰Â×sƒ§ØD‹æ‘Æ=j\\’Ï8µÑf¹?»ßÏ¨ëZ¶~\n¼¹%9P:œW~’À‘¯“h\n¯§pØµG3z¢nŒ+?¤ ´ÒÇ «ÖÚ}•˜Äpî=Ž+Rù-œ±npM6e+´(Éæ;oƒúŠÃªIm›‡½–¼Àó?Æ7cÌï^î·\ncð}*úÇwŠhFJdráÛ{p:R£4‡=ªãb£$É#ÀSOWÈã·z„2®åÝÅ,o·rãjö5#jå•pªÃ\'ši~àÕ7¸l|¼U+ëË˜b,§4ž„+3r)#ŒåØgûµ¿Œ¾ß0g8Åyýåþ£s 	¸äö®—H°XãW“ ê\rMÐìoAÞžªŒ­¹¾ïFªêãnI¥gU\'¥U+Ny&ŸÖ¢ÝòåyúR«g¡¡\\VÐcžiT’~^¿J1ia!IÝó}iÛAè\nwC‘R§ïCp¢Ÿ+Œ|Â«äç¯½J]Çk’-Ñ¹äÔ0É‚H=ªœ‘ÈïÄ˜ZwÚ%znÞŸ(ìhZŸ¼»wR¹òe*(d(29ÏjY›ÌØW“Žj—Rmt]8Ü:\ZcªrqïéQÛîPQ—ïO‘Š! dŠµ±¢Ø!¸@˜ÏJ‘øª‰#D>d\'ÜñK®i-IŠ¾…¤™]˜zRï ö5\0š4È\rüè–@©y=)¤ºJÚŽYÎü“…ôÅK»Ó­g¬á\nrjÔL]I&’³&=™8ŒØÓ÷–ç9¨Õ—îœf•J¯4]¡Øž9AèBŽ†œòJP’6^•mcË`zâ®¡TÂ†É<zHh¯k&cœâ­m\\ä€j€ƒçž¸©£•\\qV“°×a®Ä†P„ÿ\0*…¬ð¤ƒ“ô«…=)¥•Wž=éª–@}â?\nŠhÔ6¸ïS‰bT`T[º1||¾‚‰ô*Ï\n1Ãw¡Y\"%GËŠ¯u9b@pjåÃ*gÌhZRíÅÛá°:z¬×\no9õ¬›‹Ãå“œ±èiÚtÞc©nyÁ F”±‰Œ‚§Ú¾9ø±¤¶‹ãMF ›UŸz™¾Ë‘\"B“é_7þÒZ!‡RµÔöÞ)Cjqvf:Ù_â4žø¯á9YÂÀÓˆ$ogó¯ÖKr²&å9R21_†Õd°º¶ºBwÛL².Þ¼×í7Áßü<ÐµF”Mö›Trã×?¨­,ìaÔù{XõeiçÒ>nkš“HÚÜ.G±¯PþÎ†KD,˜‘×§½aÏ¥²ÈÈË)#4Ò8Ù bu\\V4°É•‘	¯I¸Ó6e€ÅfO£ý¡É(){îpb,£@=«/USkm#K’žŸz¢øI$”XzŽ1^_ñÊÂmBY-KD3·ëÅCf‰Xò­S_´–åÒHÉ\0ãÞ²®~Ëp®a“n?„×Üø®ïÌrÀ1Ï$Tð”ÊÇ!—ßÐ®Ñ)ÁŠk}Íô«â[»<Ï\0æ¸µñtðäÈªkOÃ3ž- õ qMEÝŽæÓÅ6WY|‡ìjØÔ”€UÄ£ë\\@¶²ÔW|Rm\'ÐÖ}æ™¬YfKi˜AÖ“ºÐi]—iwÈw8ÌsZkp‘)	†\'°¯´ñ.£Â˜Û§Nk²³}BâÐ¼;£8à=K»¬µ;5¸’TlÉ±U›Y·±Cþ‘½½3\\ì6:¤©››­ˆG8â•mtË%f¹¸YH=Û5˜\'ÊM>²5I|°ŒûŽ2+Fÿ\0ÃßižK±\'úÖ3øËKÓËy‰08ÅfÝ|Bº¹±b!ì)«½Á7Ðu·Ã«pÌn&À«Piº>”­ß,s\\ÅÞ¿u8,Ó?¦¨­ÃMó$Q«Ð»6u×$´ˆ•‰3»ÅeÝø¦vc;Ea¼˜\r€[ØUpev eAõ§`Q/\\jw³œ³3\\ÕCp§ïnSÜS6MŽ™¦$Ÿ™	Æ«Q¥bIØ0Êœíô¦–XöŽ¾¹ @ç›ÿ\0µVã³iS\02­.`)FÎ]²Z¤*»™p}H­;\rY‰XÕÛŸî×AeàkË·ÿ\0VB÷-EÐÓ8èáÞxt8ÿ\0dTÐÚJêrˆW=«Ò,þÛ[+›•¸qtíÈ\0‘‰YOSÎk74„yªi’`ì‹wûJ)“iwH¥¼¦+ô¯V·½³Þso\Z¨ö«ËöI#Ü°¡ÏÅO=º\'„\\éÞiämpz÷¬ÍEYq’1Ö½ƒ\\ð”WË,’u±¯)Ö­žÒg‰¾òœYÎWižÎ\'NkÈD™¢»àž½k§K•}F0ìƒÞ¹í67 €{Ôú½ÎÉH\r¸Ž•ÙÐñžŒô½Äen@ã§-²¡,$Ü+Ëü+â¦†ébºcåô\ré^Š·ÜB68(G­`ÓD[¹j;˜B™—?ZŠyaf8n@íX7k¼í†ã®	§.µg\0Áa»(q7b¸!0¾”A°JZIJ×\'{ã@V%9ë\ZçÄ÷2Úp*ÕÞÂÔõU¶ƒY¶)&dkè[)DöÈá¾RÍ|E¦j“G©A#JrsšûÁ×SÜxzÕ¦!™dŠ¤ÚÜ‹]êoÁ9äš|s³£&p{\Z®[=…	Ã’£ÔT•bt?{zž&\n¿7Z®Î9Å4dçš¶ ›E„™}6ŠO1&Ü¬F;Y×’Kå:V$Ú”¦çdnÊäô§bÓgK´Àíw«\rÈ+Á^ÕKJyb·ÄÇ|‡½X2eŽO6ìMìNÎí§åZb³³Ÿ˜azÒ$Ä)¸¥ƒå-…È¦‘,*Ì7Ý¦•(nGµNJ|½*“ÉÎÍß/÷¨q\ZW^ñ$S°Œ±õd€	 œã­T·“Ë\nçñN3’ÇkSBÒ+RÚ¶áš‰î#Ãµ6&/‚yªìLR3c>†‹\rç?ÅW¢a(?6ï¥GÁlqïRoUš5ÏÒ«a-`dUƒµ!\0ýfØNó)vê=jY&PÄ±\0ži¦ê\\3¬dƒ’}ª+—!˜nãŽ*%péž¤ÿ\0hÚJ1ZQìUÈV}ÌB’\nÔ‘Êw0ÚªJÈÄnü\r/ÚûªI÷§ •ž…Õ;ÜØÉëS\"6Rë´ýÓŸzÏˆäy›Ï¦*rØôXv#	#‘×ô“j°¯¥TŽàÈHÆ\rMÜÄ1Uï2Ðžó®jÂdçæ=ªb„RÃ3òóÜSNèkMK‡xV1ýáÒ§ÓÙÜåþFj;MH\Z–[-LC/Þâ‹m¬„U9$dš|EÐ8ÍUîJ]Y¢©â¢È\ršŽÝË¦[Öœ+ÜÑb´cdŒ²ÚªÈÎ†ÏãVüåŒãŸÂ£¹_1HÚHè³$À’_1Ø}k>SçÉ…ßZŸW¼‡Ofû~¦¸_üTÒü:KÈþcvÙÎjl3¬¸Ó³ïNÔË–ÞVÝÊ“^C©~Ð³Ùm,‚Ñ¤5ÊÞ|e×îì•cˆµI6=©ê¢>c¢Ž€“^Eñìéº·…%Hî#kˆ¤‹‘žàŠñ«Ïkú€>v¡1öÝÅe4“ÞgÍ™œŸïœÕ(y‚¹™ ºZÜ¿™÷\\×êgìã¸¼Uð’]3~ét›–ˆ.rv7Ì?­~^MjŠ2x¾Ïÿ\0‚xøš=âEÆ‡í´Ö´ÿ\00)<yÑóü³ZÆÛÒzžªš´×ŒòH¾rx<J×å=k¸Ö¼\r\nÞÊÂ5…Hzšç¬ô{ƒ;ÛE¼€àqÉ¬îŒš²±œžšþÖi¢F775’–xfˆ­é^ëO¹’Ú]É“‚§ŠtÖ)ÉåjhfØÜ=‹DÁÍpß¶ZDŸ4–±‰â¾É†û­ÁäWy4\r0 àz×”~Ñ×O¨ø,Fã£íVôàÖrZ\ZC}Oƒ§)g¿5Qá&º‹Ï\nH÷Í²@#\'95nZ[ÆL½½èL­ZÎìv)céV-´KÛ¢BÂÃÜŠíÐXØ#mEÏÒ«Ë®ªÝFãJä-v2ô¿ßDD²\\„QØW]‘YÅ‰ä\rÇRk’»Öî™ð$Âú\nÍšêI“èMoqØí¥×ôÛYK\"#ž•^ëÇR}ØUGC\\Y—=y¥Ì>Qš\"»&•™µuâ[ëÍÀÊyíYÆyd]Îãýêƒd„·*Å;œçØUz”|a¾èùŠÓÀÂœá­-¸DÎIîEL±ïãh>ƒ“°Ö„~VøÊ»g=;V{ió@ìñÈXÒ·\"ÓneXKz`V•·‚µ«Ë\'¸†Ñ¼¤êXQtŠG$—â7d”m>µ7› ©Ü¦®Ýxzî$&âÝÇ}äJ§\nÅiÆÑ—cÐúPµêV¥…!Ç=ëJÛE¸ŸÊ g½`yÌÈpEohÞ,šÍ’9¿x9¤Ý´ò6í¼Ì¹yv÷Û[\Znc¦‚Ó7šG@jKX^¨d¸Uoîž¢¬H‰p	¡ÎäÞŒ•¨ÅÔÖ2|›dÑªC¨^Ì¤	6rdL’Ú³o!×·j–-QR 3–ô’DòM\"3†v|÷5^+¥fl}j)/žmÌ¨xõ¨LRMì#÷4öeÏµ\"îËf’=i¡Ý°³z\n®ú|6Ñ{çÐÕÖ¬l²	V>ÜÓÝh$ÎÆÛRimwlÃÎkÉ¼iüMnXü œÖÌ¾8Ã0I 5Îjºœš³³H\0úVr„·=\\Ô\'Êú†\0Œ–\rËšÊÕÉ’WdlSi³š@Í€gùæyf*1ƒ]p—ºpÕ‹…ID­g|L…ÙûÕÛhz”kúMÉ…¢¯9¯?Œ9¹À àbºËKx†pÇ<æ‡ª±‰sRÕòážmišmÎ©t°ÁK#œ\nU3\ZD§os]O„¢šBÝÐ¨;â’—*ÐV±÷Ã=bÂ5{…EVÖ\\ž1žSŸA^Ñ¨½Æ¡o²V%qÖ¼ë^Ðu#tVÖÚ[“»»RMeNmüE«#˜]>ÞÑÃó)–÷¯ª~ß-ç„íÈ9\0z×Ÿx/ödÕ¼OeÞ®Í¦FyØÃ.ÃúW xOD_Ü\\h±HÒÇÝ-×©S­\\å³øSCŽyªÂr­Ën§‹•óŒQtDmÔš9Õý¾´ýÃÖ«	”3qÈëN[‚F\0æ‘Z-Ç4»Ø¦Þ¿Þ¨e´ˆ8›`,;Ò¾UO9ÍF÷M†,?\n%äBrÙ–ÖebE$³l##½aaÍÇ—1`y$Uö“zŽ0E4ÇÐÒVd)áÏÔUvÀ*ÍS¤ÄçÒ\ZW-¬ÛQ€59$Ó²µ°N*µØb3ºŸ›	+ƒÛš„IÏ=)ÆLŠZ2¬ZG\'pÀöê)b—Ì%Ì§¦zÕU!³N@¶EUÂæ¥¸\0T8Œ¸!¢)‹†$aGz¢“’ ýE4‚×ØXÜ4giãÚ˜müÉ71ÈéŠ×y@1JX§Å@ ûÐ2p01L©} äÒ?LTOžŒ­ÁãŠV‰˜`±ÏlÕ2Ì™8cÔzÕ0eväíUrÜ¿<÷¦˜=‚q.zšºÌI5T&Ô-»¯ABLV6\\f­!\'bKkˆå-°óëëD—²QÏ­gZK¶i@ùNìŠ´d$’y&¡;\r½ù=søSVVåå}AªFF#nìŠX¥ íâÆ™¨·#aÔµOm#¾U¬¸¦á‹Ÿ¥Ocu&YsÀïT¢-\rtûÆ­,êh\\¯NµAdK1zŠ‘$1Ü1Sk¡qË;*µÈù„ˆy5¬øšÓC·in&XÕz’zWŽøûöµÐc+¦…¼˜ð9àUz	3×µ_ÙéNñÏ WQœ^aâÿ\0Ú2ËH¹{K$[‰{°<\nù¿Å5ÏÞI$Žb\rÐ\'ÎYî$k™œ³O5hnz¿‰þ.êþ#–L‘›Mq²Éus!’âC#™5\r«¼àÕ¸NwRÛB–ˆ63©Ú@4,ràwZq|cÞª‹ƒ#4reERDúŠn|ÔrŠxô¤ŽVe$ü¾‚¦‰V4ÂŽ\r8À[ê)ÛK–»Îxê?³ßŽ¥ðoÄÿ\0êJæ8íuÕðzÆçcþc^síŒçõ¶¤–(—iSW±©ë¡;£õƒJñbÞH²Èá®#w©õŸÏuª¬ÑÄºŽ#ë^a4Ï\n´ˆå_µmÙø…\rY@‘÷ØSÜç»DÚõÔšðº\'{œn>õFK¦G]Ë€=jõ¥ÅFg›yàS§]6{9œ™LÝSŽ*lÐî†é×¶×Wöâïåˆ°}«ˆøÝàs®ÚÝiÖ&7ÏJÛS€Nr)òNfFG;²1“I«”‹üWð›Ä¾g’æÍåƒ8Ä7Ò¸\rR³„´ÊPÄb¾ýµdŠùa˜†G=ë”øïð›G×ü©Î4øÔq™d@­Ç¸¬Þ×.×ÑÜßG!}­TEËœá¿JÕ¹ðqŠÝÞ¾`HÚk)ô«ëT>d%”w^i­‡k—\ržzÒˆò‡¦*+bÌØ*w}*pÛŽ€=vÐÕ€b¨\'\nšÝ£ wÚkONÓ ›4ÕÓézµ±RT7áQÍÊ›$Ÿ*«“Ú´lü74‘œ‚»½EuóÛ¢nò@SØâ©~UœàTªŽÚ	ØM\'Â­7GðŠÚ¶Ò,mˆ! È¨´HãFÉ$z\ZÑb \nÎí»¶4^¶…\na@ö«ñ\\Se}Ef[L<µ(¹Hª4z2Ò¹¢É.APö®OQð¬åŠ.Ãýá[Ú´’´?!èjŠ_hpÏ¹½MB÷^±Àj^»Ó÷›ÐwZÇ.FAûÕè×ž\"·ÕÝp;W%¯j:mÂ1H¿x?‰+¦2o¡(çPdrH#k£Ñüg5¦Ðíæ§|žk“y$db˜¥_î1´²{’^°×¬5xÙšdŒŽ¡Î1U5-cM²Rá$aÙkÏâ±i6$‡ßÔŽÕ=î”öé–¸ïŠÎÈ´nOãXÃ08õ\'mgÍâ‹»“Ã…ÿ\0v±Àœ\0O½!ÔbŒœ\0O½>UÜFäVúú—%ÙLškè³F¤ÈBŸLÔ6Þ3x­„x¯³gÖ®.äõ4|(¨®åÙ!8VÝQ\\2[¨ÃeQéU|üÎ1L\ræ’MKwVfÔåË.xvÊ_#b±Òçló`ðMnK’<ã“\\õÇîfjŠoì¸¨s%Yu.é‘‡¹-Ùy­Ø®J†Øß•dh6­uÆ»\rÀº–¨ìpItÎv\Z’kcÊLÉF˜Ã \Zí~éwºæ±¶gØ3^£à/ÙÎf…&ñÉmòåÏâ:W©h7ð-ÂéZ>ž‘K( NÃ$°úóš[%»ldx[á%ýÐYu)VÒ¡\\üÄWs\0ðïƒ­Á°µYîžK\\:çccÂ¼WÅ¿µ©õ:âw§Ýa¢VÀ+œ=:\Zï©¨ÛÎˆw%ì>dmžŽ9Ö©B1%I½‡áÿ\0Ä{ÍsQ¾²ÔŠ‰*©Ók)Ã\nÅñ\0ò¼pÎ¿vHðOÒ¸a©>â{=N\"Un4€/ü´?]‡Œî\0ÕtÛ¤l‰‡½6´÷lgñ¦ç>ôÞ$OcLVŸ\'Z„ŠKB`Ç<zÓ–B­œb¡‰êA4¥ði/x,I¿æö£ålæ™‘Œæ€Û¸¥&Â,j¬HPÒMg\n\rCç†\'…+Ø¯RÌ+qR»±òª»ö¨ ÓÒRr3I>mBÌ³Ä§œJWp5GpbqRBìàâ©Ü/¥™dÆ\'¥>ï”š!eMË»u*Ž]—æ¢:\rw$\0ŠrüÃ‘L§nÁà\nÑ¢š&ó@#agSKsTÁÏqJ*S°®É„ÇsìN¾i\"Ÿc1#vî¦˜fîôÐsEÉM’¼ÌC+øv§Ú’ÄƒÑGTœžO©©-6ÉïšÔiêJÓ*’¥x#¨ïLsSµŽï^y¨‰É<š3€}ª¢ä‹»9Í0¾	â£#•eâ£iQÃÙ”-wˆâGr>cÒ­;’‡\ZÆÁ¸RƒÖ¬S#Æ	`\ZžŠðHÑ3Îjär¶9üPrœþµ›¬xªÃD´i®®c€ÆãÖª-tn¦ÕÆ¨Ì\\©W‚Â&y&®2Kœ\nð/üs_2dÓa2È8¿õ¯6Õ<]âHÉ%äÓÿ\0ª„>œRW>›×¾;h:0hÄÆêoîF3“^i®|Öu’;ÓN»ÊÙlW%á„úö¸ªáÕñKÉ¯Qð÷ìó`¯æj3½Ü‡¨\'Š»¤GŽëÞ.Ô¼AŸ¶_]_ó÷cÎÚå59^udŽÅ•êy5ö¾“ðãAÒ 	Œ Ž3°f¡?\nôie–e´‰‹ê8¥ÌRHø¬µ	H-Ü<¦©ÿ\0¤¬›Pœ7Qï_qÿ\0Â¤,RÂÖ‘Ü¶¹ˆ¾h\r¨›³œ ñG5Xù·M–âH18ä‘O’úT8x€†¾ÄÒþèvðqò=3Xž\'øáÝmL‚Šs˜øÍ%!¤•aÕ›o”Ã‡5h3Ë¸$çØWÒZ_ÀÐÝ³ã¾k¦³øK£Y©1Ù£îG\"ˆ¾áî­“c°Ô§À‚ÑÉúTñxoÄW­å­±<r1_]¯„­,“÷vÑ(ïòŠñÏzå×ƒomÞÖ0±NÅ>gÐ4gŽëÞ×t‹I&º™W;rkðþ•}«êpÙÂ,Ó0D_Rz\nß¸ñ­Ö»|é÷!ã¹ Í•ªZÞÆ Io\"Ê¸õ#ùU.kjN‡èC\0À‚ôâ£Ž=êQ“h)ßó§ò¬¿:u¸–6|©è)Yš¶ÑAnŒT³5Jo2ppûµ‘j_Ït9ëVÚ6`rr)_¹I\Z²èÓI`×pÆ^á™{VAsšÒ±Ô.-íd·I™a¼½\"ék?Üp^jV9ë¸Ú \'9eƒ]Llš÷†äF]é,f&{b°µ»I¡µkws°r7ÁZ²é±Kk;+9Õ\'¥™›ot|7¯é_Ù\Zæ·¥È„=µË Ù8ª¶Ð$‘2Ý1^»ûBxvÞÃÆ·úœ|«À²|¾¸9¯&³ ³àðM`ŸsR°Ðm¤s”\'­UÖ¾¬V²\\[¹ .ì\ZÜ·îdŒŒfµî.…Æql9m„ªBM©åÈÞS\0êp}«sKñÌ<ÆóÞ¹È¦K»ëeˆ<Îär>µŸuh“<WÅÐç—·Ö«•H©éÖ-·º9ØO­]n22œôÁ¯<]<²î³o9:ŒT¶ú­æ›ò0xýˆâ³påØ-sÓôÛ„µiŽqž9«ö±¬™ß!\\WŸAã=DÛ$K…DïŠé|á{Ç—Çm2Àwy’ä/éY¨µ©I­¬o%ýœ÷Ì¹õ™©øÎÒÎÇ«±Ð?gÈ®ImS[— ò üMmjÿ\0¼)i¢Ýmå’è.D²Ê[Ÿ¥ex§¹Zìx%ÿ\0Žg›ˆÔ·¥cK©êwŒ@Y×ÞlÒ4—h–§p¬[íbÎC*Ã„“éV¦›ÑÈ»œmÍµß\"FÛŸZ…!†3ÃØÕëÛœ;´’dô¬k»¥ËmÆ¶„ÁI4q;(N;dTw!}+áÉ$äzÔRFBƒŠ|É‘Ê^Ó¯\'€dZí4\0ÚÄf3Â÷-\\\r¨›v\0È5êþ\nÒA´s½YÎÉîdjÚœnT–’¸Ë½\"áCH²zŠöËŸÛJÌò;†¨O¡[9cU\0\0@²Œí¹¤©èx½½³#îêkbBð‚ËøÔ—‘Gms,$}ÓÔTÑ](\"r¢º¨ÂÖÐŒÙ˜ ­M+J·*“·\'–¬øU¦“nN>µêÞø%â?*K\r³ZYœ´J6©Þµž½Zjqšöeo•jC0L’+€ÔtÓ7ÈF\Z¾‘øµðnßáÎar—R]Í;åfPpO•r>#ð%µïÃm+ÄV1…¹£¹QßF~´œ\\W2=-XÔýÌú—~|*ðèÑÎ«®ÝÉpê<Å´ˆà¸ä×ª\\x²ÏDÐ_þËìãI\ZU ŽAüE|÷àI¢^ÃirwZ3l9þz×¯h“Çt—v1°”Èœz3&vŸÅé[©\'©åU§:Rq‘»ÿ\0	UÄÚ¥ãHÞLÀ	Èàÿ\0JŒ–²Õº\'YÁïÃÓ?cè:uÆ©¤½´P³Mk)\0ÕO#ùþ•è/¢[êšT	¨È\"“hGL÷#UÝËc¦÷<ÏÆÖkÔb»‰Ã¨Â3·»éŠì~húÅß†­c½…à¹³“	æƒÁü«¬_[i66°C\ZË\Z}Æ“§ÖªGâ_ì‹…šæö2ÁJ#çéI+\"¡Nìsé¶÷2ÿ\0¡XKæ\rë¬x8¬ß\\Çö8|ÖDuqµCU][Åúž¦Ò.™m³ñ“\\ö«á=F[S}}rÏ2üûsÒ³R_	Óì\Z\\Òv;xfDìŒT~cöl~™£^¬ö1üÜ…Á«¨àëSk3›Þ%¯CK’>a‘ïQ™\08ç4å˜laüF‚nH×8ãÒ’9öîÜ	¨TÔRƒœp*‹»\'U™ô¨„[ÜãîŽâˆärž‡ÒŸ		œ\ni¹0\\¨ž\0 Ô»r	ê·œ£8­(¸Êàf¢;•¢,F0­I\0ÙÛè;Õo<+a4¾vlüµwLv,„S%°Þ”$¥‡cP	CŒNFÝš- µD¦g#ïÂŸì¸«†$t§ƒô§ª¥èŽ{cëR«d{Õœ‡l=ªuº^z¨¡$‘IßrÎñëMë‘ÀSy™a‡QOf\n2NRHi\"Fr3è)@Ü¹šŒÉsIç¨MÀá}i+\nÃ²yÓIÚ¤ûT~ze$}E!ÀÜ7äú=ZÈŸjïe|–íP³u$äûÐzTR•‰ÈãµBÔKR…ì¬…½{RI­Á§Y4·RˆBŽYŽqþ9ø‹§øf	¤rG§­xN»ã]OÅ÷N²LþQ8KxûÕ­DzwŠ¾8´ÅítTƒ†Ïé^eq6©â«¦B÷\ZÃ7ÊÊ­u^ø5sªÇú›5­¿Qà·Ö½“Cð® À©gl‘m@äÒôR‰å>ø!wy—U˜Ç_*3ÏÓ5êþð‰¡Ä#·²]ˆŒŸÎµ£”©ÀàûSão%ò{z\Z]ìmiÈ‚Bé[^zŽÕÉÅ¨ym•¡¨JóÓÚª7c¢‰IÀ\08©â™_cõë\"×QFB2r=*Ô7 63¥$„DÖ®¸É5zÖÌ¨ ô=ÙuåûÕWÁ76xª÷¦òˆx-ŒÔð@%Mû†ßzÂšøÜ7#\"®i·åw#zJá¹{ \0È¡QsÚ„ËäôÔÙ±\"•è*y{‹­Š$“\\šñÚOB[Ï›¹’ÕÁÈô<W±ùdÝùW3ã­k¾\ZÔ-w³ÄÛF:žÔ™pvgÂ6r˜n÷³]¾Ÿ3mF~A®bmío&‰-œ29\\m>µÕ@ßØútM{¨ÃŒ²ã5´^ƒhý$’àº‘·¯½e]¡óÎyÍjÜÃåä†ã5•~È\"mäœsŠ•cy„Óˆ§B3Ïufm¼œæ±ä¼ŠhRIQVb½>O\"\n4a-’úÖ’`(c¶¹–Ô^\0Xÿ\0ZIuyŒ9E;	jmx†XZ5Ï9®nw¹R™Uc×µ6ÊÂêME$¸ÝótV®æÖ…\\c¥M¬VÇƒ~Ðò¼?ñùŠ±Vç¶+æË8R98\Zûwã˜/¼¨ä«ò}·WÄ%ü»ÙcÎŸÊ±V»¸)i©ymÄwÊAê*ÖÀ…ÏBG5œ×æ„¬€`â¬ê.bµb8ëJí\n:žâ@Ö¾*¹Eø5¥aáË\\4™RñùY3òçÞ«ø±D¾ ó’Ç£b½ÀVv$¤·y p¥\\oc[ÁnÎ.ÎÏRð“7›šÜ7\'¨ÅijÚ¥®§¤Ë4	\0ÈÁ¯CÕtø&WÃ+!©ï^9¬Ø,7W-nvTt¦úI?€|3uâ}[¦˜,ÊÅ6ãŠú+áE¼¾ðÃ[Üí‡$8Goë^Sû?Ûùš\rÑnTJFsì+Ú´CÔ/n£p1XË]ŽŽæ‘¿$8Éª’\\É*2òËV´½Èï¸À×Igá|p+—ÈÚ:Ÿ2üWðlÖ2I¨À‡ÈcómìMytv@™¤9þu÷\'‰¼%k ÞÁ2å^&c_-^èšm«K[˜¡Ææ«‹î\\Yæ6S]ÈÅ±Uá¸¹Ú+´¿»·ƒrÄÀãŒ\nçî¯÷õúŠÕHJ=Ê‘hñÆY[ßÖ¬QJ·Íßš§%ì‘åFqPÙ‰äµRHKBæb…¸Åz·Ã»˜®tõFSÖ¼~<œä×Uà­Uì®„e¾Fê\r)ë	ƒ³¹êšŸˆ­ ‘Ô²†µyïˆ<Nû%1H<Þ›âéþÓ{QcŒá}kCÃ¿<QâÖâ²6–§þ[Ý€\\u5•:]MÝCƒkóz– _9Ü5Øx\'áN¹ãYÕ,­Z;l×2\"ë^Íá€z†\'Yµ[í[´Áò€Âôïø×¹øj(¥·	KQŒ*(ÀÅt¤ss=Î#áŸìÿ\0¡xF–ê1ª_`4ËÀ>Ãµz½´oiTU8ÀàSáÀ;‰ôÛ»¥Ž3ób¨Î÷<§ö™„Ïàhe#&;•\'Ø`ð¯%ðäþÁË¸Ý1Ç¦q^Óñ~HµOj–á€›²?„©*ù—Â÷Îú¯hìÊ#!ög‚:T·Ð.ÖÆOˆ>O‰ý³d­,\r÷À¯½Ið£Çvú¿:ÃHÖ…×cžLl8çÛkÝ>Em}àfŠf\0*Û«Àþ(øZÏHÕå}2O2$”ÇÝ>Õ•¹ú­)ýjÊ¦ë©õÆ“¥Þ;Ø`<m’3G\\Ö]õÝ²«›‰‘z©À5ò·>+j^?d™äŸM<3÷}Å}5àý/ÄöQ_ÙN·ˆØ,¹åO¡k{¯tåtûÁêšßˆ‚¤A €Âµ´ÿ\0†öð¡{Æy8è\ruí\0P0*†¡â+-=KK2îë·<Ð’{‘í^ÐV*I¥[À„F€ùH²õ©mÆ™p&]„)&²õ?\\^ÊñiÐ6ˆÏãT¤ðÖ£¬Dò]ÎB°íÖ¦élW$š¼Ýˆ<8ÑËfÛ9ÚÄV¸¬Åý›-Ý®r#n	ï[`ÀàJq9­ÐšƒÀ¨\rÁo^ôñ *rsMX,IŽj–,»Q†ìâ ¸ùzÒAƒ#màŽ)[ ¬ÂÞ9UòÜ\n¶Šfð©¨Þ`¤õ¦£q(’+g9©VE \Z¯ö…ÛH$ÉÍ\Z—bÐ“\rýåô4ÍÄæ£ÞqB°bj¬ÂÝËqÜ„múTÑ¸}Àtê€qB9]ß/¥(«1¦Ñ}gÊ}Å?8ªPÈ#rHÈ#U˜åY3Ž£±ªLi“†ÓÑ¶n÷¨@¾)Êy94­ØVì<F=TÔ‚yñ~•9Ïµ†zÒÔZ’-!)‘ŸJž7ÌñÓ>µP6Üqî)Y»“Í@Z2’@àÓ•ÈSÏ5FsškˆI<QaX’VŒA#ë^Oñ7âÜZ\r´––L$º9ÃRüVø—‡lå¶µrn˜cƒÒ¾r´†ÿ\0Æ:Ø‚-ÒM3õ=¹§‹vÖº·ŽµŸ.6yç”å¹\n+Ýþ|.´ðÍ¨–á·}K°ÎµløÀvž\nÒÂ\"‰.eäÇ$×B×b5f<óù\nµä€Ð\n®ÕrÍgI~®ìU¸%ÉŸjrwÖ\rµáWb ôÍhÅ~dY\nÆ0î$>¸«iÂÙ·.F\rJ@‘³oq¹ˆ8Í_´ýãžEb \nÙÇ=ëNÎã\' }ÞÕJVØ››–ˆÀåNkB¥ºàÖE´ç¡ÇÔV…µÈ/“€z\"ŠÐ¾.Z7*Nâ;UEGg‘»ÒžãÌ²sÓ4ØRDc¸‡[XŒ.[i>Õ4|Õ\nI©>É°£–íŒwÅ5cDå~fô¢Á# m©W$â¨Ý£6\'5$7‘¸äàSËÆë»#\"ÑI#\nçvj‹s,n¼\Z½4Ê@Æ“šæªäž˜¢ñ\ZO¡ÊEà\r5¦’àÚÆ%\'$ã©®cã/‚-ï|zÑÀ‹$+æ+Ó¯Nwò>\\öªšåºêº}Í»•Ð¡ÜRqOTZ›=nê•K)äu‘weöˆŸ2€ÿ\0Ý\'šÜˆ²g£¥fÉ\nC©n+÷‡Þ#W«Ôå9Ý?DÄ±²‘ƒÁ=ëVÇ@qfæO–Eè=jè¼h¯B`maÚ­Cpí3À^ÜÕXw)Åcö¶ylœsSªÅ§˜#RÃ©–Õ>iQ›pcDh¬“@ ã¾æ¡\nÂ¼êÐ$ÛoökbÝ‡”Ný¬GzÆ¶‰ÒDÃëWl.DðsŽ´Óèg±WÆ–âûÂš¬,7ñëÃWÀ:¢˜µ[Œô-‘ô¯ÐÍF/3MºM¹W—ô5ùÿ\0ã[6³×îÈÇ§&°œUÍcï#!HógœúÖåò,Ö:µÇO:Úê*™#qï]rþöÃ!³ò÷¬Ò4Ž‡k7«³*2?Zíü;a6¡~›rHé\\\'#TÕQ@ùÙÇ?{ç„<44í# $â»i4 ÎJ±sš³1u]¢Rñ1<r+ÏüO *ZÍ:²c\'Ð×¯^Å€Ês\\§‹ìãmá@\nk—šÇbV&øÉÿ\0Íê(ÜÞo8úW¸x^É`Wb6“Þ¼¿ödðn¥sàý_Y[Sý˜·>RÎHÁp9\0u¯]„ìb¥®¢±¿§{\0zÖ¼7‰·“øWá®¯6¡>Ë\'”Ä÷>ÕÔ¬$¢Ÿï+¡ô ñ>®¶šUÄ…K*¡$(äõ¯|Q2^KpÐHcfc•ô¯¬|Wq¾rÏîÎ#_\Z^Þy—³îçúÔÆ÷5ƒHçf¶“Î*ïÏ½K¹¶e<7­>y7ÌH9Áª—7B<ÃÈé[2êÀ#ÔUYmÀÉê*k‰È@3óW«ü9ø	¨ø¢Â=SP¹K-.EÞ3Ë:ûz~4ÑG”èž¿Ö®Åµ•¼·S€‘)&½Â³¶«QÝëò2&ÆØ‚î•¿Õô/Ã‡ú‚­é¨’;žs‚[ñ«þ*šX¯¡!€B‡cÑ‡ÿ\0ZµŠÓPM=ÊøgÀ¾Ð\r;7ØÂÍx »õé[7Ý_ü¾g“n«—	Á›k]Ý1Ø2÷?ZÕK+m6Yå–]æA÷¥+dŒÛ=`º·’yÒAó³zWC§Gý‘q1šeÚýTZ¸1”Š QÅb×/æHHýiÙ!]Ér²ÕÇ‰KåmÉ‘ÁôªPÏq3Î.Näa‘ÏJuÅå†–¬d‘ÕÁøâTvÎÉi‘ó€ÄqRä–åÂ““÷Î£]–4ÛÈ\'`±ËBIöÆkäõì=GQDüÅd!Oì7z¦£¬«yó7–GÝÏâÞ+¶:ÌÈy9ëP¦ìjðò§fÎ¯á–±}o=²ÎÂ$|íºkïAw¢U!îkŠøO>«<Ù.2{v“á™d™D.¤ò*%7¡Õ\ZÐ¥\r¯øR¤Q±ÁÊñÁ®_Ã^\'Ö<\r~gÓ.žÝÁù€?+B;×Ø!ðE–¥¦ˆVVS‘Šó_|¶ò¤—oËÔ\"\nµ¡+§xÏááŸÚ,øa²½+c;á7¡ùXýOJôOµõÁšY\ZE~N\"¾\\ñÃÛí%ÝíâsôÏZ›Ã|Oàò!ŽúI R‘9Ü¸™éEù·¥¥èaZéVšt%R1Çp9§º¸Rá¶®:W“ø7ö„Ñu¤jMýŸpp0ÿ\0u±¯Lµ¼·ÖlŒ°\\¤‘ÁFÍh’G›.kûç$é½q°å\\uuiz{Ö^µ\niÚÜ>^\\7½kF–ô\'ov…¢)6–_<âªK%ÚßF)·#“ß4%ffªË´óH²e÷vÆ*ÄŽ´«!U µ6m,¡K}æ¤$;¶9úT;4ƒ8$v¢ÀõZ’	\0?JC;AoéQ‚J\nƒT•‡	w^ùô¡C`’:g­Vˆ”1ÜiìØhJåjOŒÒŸÎ­+dzVj¾Í:9Cµ¸=hø^€´5Cu©#uTlŒ“Y–ó(VV?-\\€Ãd`S‹k7–>_»ýÚšË†ÇQT©Ë	P˜‘q®Us¸ŽÔ‹pßÞ©S]¬Ëv4&4Ëo)–S»´G ‘:óéU#uùÎ{S7ŽyÇÒØÓf”evà¶â+3ÄzÄzV•q;0áz{ÓšR¨Íœ€+Ì~,ë/ŠÀŒFþÔ!/3Ã¼{®É¬k3ÈNXóšõ>†ËOþÖ™7Í7Ü$tÕáZÙoí\rì:ú×Ô¿o-õY<D\nÀv\"®;éçv.C\Z¡,œ°êž•a˜–äç5&[˜ÁSüU(V3æ8-³ŸOz\"A\nséVç·	ÏQïPFÆ3éB)hY·_+<sVI©¬ô›,Ø9ÅYŽãûÜý*÷×Ràažµ<Rªc¯½e	¤Eän©íåvå‡)[bms¡³œ\0A#olUû{€ à+õ5Î‹’Ê\0*ý³—PàU+ŽçJ“‡Bš\"›vWŠ§á(rqÚ¬Û¡1sÏ±¦öÔ™zÙÌªÉœJ•còÎ7õªðå>îsVàvpY¹ÏlQw`M\\´—\r·i>Õ,1ù„ç ª0Ì’+3dc°§G¨ˆÎ$}8¥Ì\ZnI*þñ¶‚E(@-“P¥V;sÍ,ÎL}qêjÓ°µcÝFr­ß¥J²»JüÞý*¼Ld9UÎ)áÈÔ÷¥ÅjI¹¾‘­UÕrz‘T/ä’U‚då<ý)öm$–²†]¸“Nf¼³2à¦F*ºè|êqo>XôàU©¦Xæ\r€èj/²Islî‘ŽªÔv¹\0KÈQÖ“c²Ib¼WtL>õ=,Š^<ªÇkv«jz”0Ulž(@E’ÂîÙÎîÕ<¬\\\"\0:œ\ní1À¸-ˆÔ‚ônXÔV¢ÉËRRE\rÔWÂ?í\ZÏÅ*FœI}Ø«½H_þÑºrÚø’ô¶7n\rXTihiksÂüCòÝÛÎz\Zê¬nCY¦ÐFWšæ5dØ«/-œVÏ‡æól¹ùÔb³õ-ìp>1¶ÛªÆAÎþ5ô~„Ë{ Ú:þíz×Ïž6AçîÏ â½»á­áºð­™ÈázÚ-µ¡,µ©EÄ€®šóÿ\0‚ºUÐc’ó^‹«y™=@¯>ñš¥]ÝN?:–‹è]ýš5[˜íõkAq\'Ùƒò·¹õÅ{œGz†?z¾}ýœIû^¤ƒ¦5ô UUèµõ\'ÐtË[&¸–$1¼¹±ÜÖ¥æ¤Hu¬Ô—Ê´bAÖ±n/²7dú×$Þ¦‰\"O^+i÷9n6M|©Ü¢_]mæ¾šÔÝZO¶R+Ï`øc¥K#’+’I©ƒ³/CÂ¤’I]‚¯\'ÐT‰¢ß\\¨Ùnì{q^ó,4òHµE?îóV¡Ò!·?*(ü+nf¶›!€µFDcÂ¼q_X|6ðäúÇÂ4™®	[™cäŽx?­|ãñkÄ:†“ªÅog+EÀ~Zõ¯Ù_ÅÚ¦£¦êÖ7í#Ç,±;ŽÄ`ŠÚäˆfÅŒÓáŒðŽZÄ÷“BÇ|Ó1ÆO ¯X’{}ODŽât¬Á‘‘\\vw¤ë¾3Ô£:QiíÛcÝHÃ¶\rv÷I6¯\0tª³ê;ÓVåNýNZ	ÏÍ¬>O<¿søÕ‹xn3>sïÍaê^\"K`ÞRoQü*­aßë·2ÂCo„¸ã¿\Z‡4·:#FSÕÍÞ¿§é1…^Ms\Z·Ä‹‰X¥²“A<µr$Í.òò`\Z|p.Ñ´dúúÖ.§cª8x/ˆW»¹Ô™™BÇš­öhÔW>äVµž‡u,ÊvíŽ¾•µƒZIØHÙOïUF{ŽUáI{§)io$¡‚ÄI^æ¼‹â®œmµ‡Ü\näµõ>Ÿ¢ÛY²œã×Ž~Ñ:T¶¿\0S”fùÖÊ”`pÏ*·]+à¹|Un_,íÅ}G+\n\rƒõòÃSû?^¶|.UÀÏ¶kê¡®ZÛÛ#½Âá€kMYÌä“5Õ‹3PHñäóX^ÕÏÃâI/§’(RÅ¥<—r%;\\r3G-·\Z•ö2uÓµÅ’8!V áæÞ,ø/ç™5¸Á#îŠõ”Ó-´Y¤pr[œ\nXŒ·Ïèk&“z\ZBR†©Ÿ\"kÔ´‰åS\0R*øÃ_ðeÁ67’Â¹¢$”?…}s«éº¤MÛ‡$pØ®Äm/ ‘áÅEšØëxÍZª8ÿ\0ü_“Ä×vÖ·¶ëÐoõŠ~Sþëð>c\0wóì?ï|5®GrdGæ½ÓO5Œ/œnQB9\'){›ÉÇ|S£ÄUe¸É =ê5N;çÚÌ®‘ Œ9Á£r®NzÕhÆÎ3Ò†VqÎ8ªÑ´&iJQëLk‡oªìüìÇ—ëÎi¦@¯òô¤ßa;–™Û#húÔžo#Š¥F9ÏJŽYƒ¦9¨M–Ú®Y—8¢WßãëUwõ¦™±‘´Öº“k!“iàñS‹±µº‚k9Œ| ôýÜõâ‹1ÙšVÒ\r“ÍZŠFÁ\np=k	–6$œÕ¸oW<c¥+…´5må-¹XœnÕgpÇZ¥â²üÇ>âÝ€¤*…§¸÷.³ü¼\Za)K•Qî~c´´ÖœË÷Ëß“Äív¹ÈR~´æ‰<:\Z¦ì£•Éõ\ZÜ‰s“º©\\Weè®@Œ«ó^]ñ‚\"-c˜/½åX”±Ïá\\ÿ\0‰-#Ö4ËˆYs¹~\\ö4? JÇÏ—újÚ|“B3<\\ìH«¾$Üx2éíîwIhç™éVÕo<3¨°q·Á&¥áD÷v,]Z3ÐŸéN,m\'¹îš‹tí~1%­Ò8Ç(\"µ\Zã¾3ø×Èó[êþºoõÖäta\ru~ø×©X¢Åv>Ð‰Ý¾÷çV’d;£èIe-ÉÉ5Vi¶t\'µp\ZWÆ}*øfv6çý®Et–ž)°Ô¼7Q¸aÐ5J\\£[÷$¸â§W8 ƒXË{ÆJ¾ìzRâŠB1çò¦¤?Si¤ù¿»š–+¢¤ø?ÝÍa$›£Î}ªí¤¨NXý\rJ² µ˜gqgŠØ€†ƒšæ­ñ\'øÖ·mgAÃ\n¯1k±½m(ãrŸ¡­yÃ1ŠÅ‚W#p+è	­Iry^OzhhØóœ”ÇÐÑ9,W¿Zm´«†íSÇ¬Sò4öˆþP’|»Xöªð®ÜUå,TîM28Uww„ì;v#ãRÜ|Ô8ErOËÚœû\"$ŸzŽH“a=C•7¤¶“íO$óÅH	“8_OZ£M´ÓùUè¨ š¢Z·öeç\0¯­5mãq¹þíG%êÅ	fnFªÒÝù[w=jîsÆÅ´P¯Ãü´ˆ1\0žzâ³ä¸)tƒ8CHª±Þó’ÔÒÔqV-%ÿ\0¢.ª*8å{›\'&@¥zÓCùw5Þ;Uh\0K‰¢è}(Š‰žãí å2jÈ½_³ÄÄr¸É\r¥”©ž¢¥Óôç0:Ëò“íLHÛ²dœcwÍ|ÍûOÙ/öÃ²©&D>«é»awâ¾ý§“$(98÷¬ê+Ät÷gÈ·ÑÙN¬3´ñŠ¹áû¥Y~u¬ÌmîæŒ7cTt-E¢¹Ž&Æ»Ö	4™7Žâ*ŒÈ	Rs^‰ðfù¦ðâ©8¹P3\\ØýŠYdíª\r|mu¥ÛÜ@Š\0\'#5ÓFZ#9ÉE]žÿ\0­Ï‚¸â¸L«§Ï’6•<×?«xçP»Q™GÅrú¶«}¨\r²1)éNT¥œk)lzgìÅbo5iCXáß’zó^úõü+ço€Ë£øÎöÜž&¶û õä\Zú%	9íX\Z«Ý²Wì­‚k\nHv³lZèD[á;_v*‰„©vÛ‘\\s¼ÍâìŒÉmYãrÇ9ý#K‹ã$r+9$Ôõ/4@ÐÙÆ>iø¾•×ÙÚ}–¸óÞœ}ä&Ì-CJŽÌ€qÔW7ucä—„\në~Ø«4‰ÇJkTº|…æ®ÆiŸ6üfŒÅ­Úg\'zz{×µ|.ÖWLÒ´ÆHÆÙ\"\nÅGQŠóßÚFû%Æ—0V	=ë£ð¾©ý›àíP1Æ\'¨ÀjÚ±_=ÓM¶™®<È HUþfl`“WuËYX+.È=\rEª=Ýæ™gq¦ò+§¨\"´cI¿²ÓÎ\\Ìª3õ­ÛObcu¹ÇG¢C—vMÒÑºÂªëú3]Ø/’¥§SÂÚ·.\'Xä;ò\\óÀ©av-–Tvõ¬\\SGDj´îqúo‚&˜¼!ÿ\0\0ë[)à»T’\"Ü¾YÎzè&fqÀùh·eO”òÙëNQw	Õ”•™^;0¼*r(eÍYº¾†Î&’GUAß5u­…Þ52`qÇZÕ&ÝÑÏbú…HÈÇZó/ío}áI¡OšUep}+¤f¿Ôgf,b—•ïQ_xjÛP²š†ýèFH¡ÆÊí„_cä;v–ÏP_(Ÿ¼9¯¥<&-dÐ šòc)eÈ¾xñ>›.‘¬ÞÚIò¼R•Î;f½+áÏŠâþÈ6³mÝFÏ5µ&eSsÓå×ÌNb·„Dƒ¡=ëZÏU‘\n=ÃàŽ{×™ßx“ím¶<Ý¥¥ø\\ÖäŽ{©Œ1¡áXÿ\0JÂ¤ÕìÎ¸QÒïCÓg1Ér»…e,ÓÍ)EŒ¢Ž•¥kòZ(a«ƒP}­€%(”L‘nhcù=êþª!s\\÷VçUÐîÇ¥GG~ñ•ÜT’fê:rMi+»#<\ZÎÐæo±+Ðâ¶..Ùâ–=˜B¼W1¢O²Kˆû 5èj¸ÃZm¹ëHãð©BC·ŸZE|ƒÍ4|êX”w¨LÁwb†¬ZgÜOj §vzS!ŸÍBHÇjz¾zÒå\ZCÈ857päTrK´1ê¢ªP³½Aô=i«V$–çiÚýõP™ßnqP3ØÏÒª=Ã©*v‚;Šc.4à»¹¥Ï ¬“!,NsNY°r¤ä÷’°ZÝ\r¨&Ç<Œv«1\\©cÎbC1-ó5]†E!Nx¡>‚é¡±\rëµN1ê*âOæDp9«&•c·œúÔâm§Š{‰&Lò1fÉÛþÍNÓªÆÁ[-Ò³$º	Àå…0_½)$;šå¼²¸É=ê²É‡8=ª	/@VÛœö\"³šýZLç¯p)ŒÛsÁæªÈQþVéëPGv]Npêh·rñŠ¶…FÈÄñ†mõerÑŒã†åwºEî…vL{¶©áÖ½²iKBÈ¸>†²åÓa¼ÌÃæ”B;E§ˆ\"Ôm~Ï\nÊÎ3T5‡\Z6¯™c\'Ùe<•ÎEtZ×ƒ‘KI\0uÀ®Zay¦9`[ëU/#šÔ~êvyhq8=\nñXRéú¶”ç|rÆWÛ¥zu¯‹d,£*8­H5K+íÂECþðª»C¿sÉ,|g«éßvi8ìÇ\"·,þ.êh@•ÇsÒ»yü3¤_Œ›xÉnãŠÇ¼ø]a3³Fæ0„”s_rl‰t¯6øÙ=³g¹º;ŠšMÄ`v?ujóËŸ…WJÊ•sŽÕyà­RÁ›1nºœÐ¬ÊQì}¦øËOÔdwIþ×Òé\Z´R;!O¡Ý_%GmlH\nêG~jkmoS±bb¹š&?+T¬$´ì®€ùs•þökzÊáÀÁô¯Šl¾&x‚ÉÛéˆôcŸç[š_Ç¿Y™¼ÅóÑsJÞb>ÎŠé`\Z³m0ÚÛF}ëä‹OÚ[X€ækx¥\'ÜŠétŸÚÁ!mÎ’Îz’ãúU¥ØJçÓr0qÛ¥@×yÝŽ3^cûUh’7ïlî;žõ­[oÚ3ÃåÄÒÆ	èèx¤’Ïg³ØT±äž¦¥’5—åÁëÚ¼çHø×á+Í£ûb\'³äbºk_èwÀ}ŸW³“>’¯øÒQÑ¾a@4èœF¸c‘ýê¡¥ÆDWQÈHùJ°4#|¥KÏåM+-A½RIcžÇsÄxì*9®,Õ”ÛÐc¥&Ÿ!Ý,G’§½[‚v¾ò=1M#Ø­tŒð#2½hžq§ÌÃ5f;eEeûÃÞ®BƒËÀ$8Ù”ä…šD}Ä×êx-c3ÈÃ´\nž02Ÿ›oBjDnØÈ#ž)!.bÒ8s€\rMÚzÕ\r:`ÖÙÏ>õy+»<U\'mE­µ ŠYb½p\\í=+Æÿ\0iöÖgnXÁìW›Ñ‘Õ¸ÏJóŽQ}¢dÛ¸\'&²–ÅCsâ?\Z[¼jÄt=k´‹ÐÃ¹Î+¿ø£`aRÃ•S^u›$‰‡BqšÊèÔéõ£öýÁé³¬o…:7º¤ðLÇ•à\nÐwXM!I™ðÓS:gŠ†A\ZÞ”ô3©Å¦z«xN8,G÷«Uðí­•»”q‘Œ×Us®¬«À*HÍsš¾ ²Á4}>µR”žæT©Æ;èÖòhŸt9ÂªÇwh«œà‚? ¯tWq§5ã_¢þÏÀZ’c6aßœŠö{<Mm‡Êk\rll¢Ím7-œ~µqÑB}Ú£ir«`â˜ndše=½+™¤Û¹¢z\Zvj±‡b£=ë:öð«Êª:Ž*yf6ñÝ\rdÜ™ø8´ã!îcA´å˜óžki¤J1Œw¨í Œå¾ñêÃL¥0X`\ZIsÆ~Ó¼cinºŠ³	(±×Ö¹}[ÂioáÉt‹LGÝ«“Ò·> ø’mKO²¾&s€qÐWiW—þ!ŽòI®ŸÌ‰7\03YJ¬bìtÓ¡9®e±ôÂÛÉ‡„,­.dIf¶A7¨+£Wµ¸ž[hæI$AóÆ­’>µà?|Zñx’m6yIŽt!wâêº„cÒ5ÛÝ@\\<­sÁR8»!>tšFS¥ì›‹{ï\nÃ#3.H>•%äsBWqÐTš„jÏþÉâ¡‰\n:V‰æbsƒÅ)”í9çÜÓƒ§ò¦Æîjl$ÙSZÒ£Õí–)IT7’8RÒ0¡s´}ãTåžctãy	œŠÏÕ|Wi§îVK u<Õsµ ùo±²\\`ãŠÇÔüEa¥Ææâu?„šå.üO©ê¬ÑÚ#\"·QÏçQYxKçioå`OUÏ5z]\ZÆœañ»KñNâS[–þÙ\nÆãœŽ¦°>Yý·ÄÇ4Æ8g¯5ï¾/ðŸyá›˜ ˆ$ª7FÝó_:X\\¾‹ª«ó$˜\'ñ§µfMÔ]à}A¢ø^ÇLEh¡¿¾yÍt0Ž6Á®Âz—ö¦‰o1~ª3ZrÈ°FÛ˜îhQQ2rmÝ”§ñ5µ«:	7¶v½I=Ü’\"ˆˆy<sXRYÙX	§Çš]·Îj­KQº(–Q ó[{;­	M›Çód?7¿Z’Ü‰°AãÖ©Zé“Êá®[s\0«OˆAP1ŽÂ¡¤j3Q»ŠXŒ·u®/O¾#Z”ˆÛµmêÒ\0ÅŠîcýÚåC„ÕØm+6WC²ó8È9ÅU†òæíP5ÆÈØ\rAÑÜÀµQØ.X{¦\nÃîÖ«Ã6ðH8˜Ó©\r†\nŠ\0B¶ôÍfZ4-ÈBÌOjtŒÄ’Ÿ\rÏÎTŠ•¦\n“Å^ÄÙ²mìF3ÅA$£~	úUÞçz>Jªó2†ŽÑÚˆy’eI8Ï­WšàygoZ¯qt¦2yù}j“_)êl-nX38Î#¿4±ÎÁXg­f½Ëa°p\rF.“–#èi¥¡[£n¦~„w5j)	8b3íX\\…\rƒƒVí/8fÎzŠ­ŸóDW\nÀ…#4àø8Ï>•‹ot;6Ò¦Y8õÒ’nÚ”j°§\'9¨>Öà5UÈÁö4×l’Ùæ˜\\°×‡\rÓ=ªF3YÏ#È¹c•ÏëS¤±\"…\rÀö¥¸·4¡ºÚ\nãöjÁ—\nNN+)Ân|óéW¡ºV^Nå÷­ÐI–¤cä±SÔu¨ Ÿnà/­WžëËCè:\n§\ráÉïSk…úš³Æ$»©ïYW:t©WŒ~UpÞT§»WR çÞ’]Ç‡7©è)b€\\ýæ—%™Ü™?Jìç•ÙŽOj¤Êã¢R“êsV7·Ï—ÎmÃâ&ÁØRµœR+ž8ª7:ll¤Ž•wDÙ\ZPk+*ãUä¾fVR Š¥klTœ\rÊ;SåŒ«ãúT4]ô±=¤\\–-\Z±\'‘Š×¶ðÍ„Ä™m#pÞ¢²´÷hœEt6w…OË“ŽÕI\\¬2_†Z-ÎI·	‘Ú¨¿Á-*à°ŽI#ÇãŠê-õ?”™§JÐ±¿Â’9=Å5Ð\\ÍœDŸ³Å¤ˆ6j­ÙŠæšß²åìÉ›mF?í‚+ÑcÔJ¶OºÏkpX“Ò©E‰JÚ>_~Ì>+¶Ï‘öyÇ@VLgó¬i~xÎËp:[Éî:Ÿë_eÛÌÏÏQS Þ¼õ\rM¥Ñ‚vÕŸ\nÜü3ñEƒ²Ë¤^)JÄHý+9ôí^ÅòñÜBG*E}ÿ\0ªI)G­C6‰ct²	-a‘G÷\Z»É!®VÏƒ¬üM®iÇ÷W÷1‘Ó5túOÆïéyª<£ÒU\r_Sjü1©†èöäœå•01\\V»û6ønî76¢k\"Ã’»LÓU4Ô¤¢Ï¯–%\nrïZ`ÊƒÉt9]¤Š…ÉÜ}ªžÇ]Ê“Ý˜n&_½ÜÒý År#ÜHeéQê1)!á”ÔÏ2ùK PØèjV…î>ÞfŽê@I úÕ›‚&†D+Ž*”¯ºT“v3ž*Øb…²7nïFúÒEL¤°²•ÚxÏzÙH@¸ã½cÀ¶¤_8êk`0û½wSOK‰~^01^añF397oz×§8Ìn:dc5æþ/¶ó&“<íõ¬¥±¤—~(hçû>çåÜkÂ›åFÉÆÓ_WüEÑÌºs‚[8óý‹Csyzòk–‰L Ø«êžµÍé—&Ë]YãcÖÆ™’ÈÄÍ½“Ž+›Ôìú£“ÏZÖÁkžëKûXd,dÈ\0Ö6°†ipyÇzƒ/VâÊØ1Ë$`Sx–8ü©02p)¶cò_Å?\nü9~¼‹G‰Áãè¾ÔÎ£ ÙÍœïMs¾(ÒÎ­ðvŒ¼vqÌ?à\'?ÈS>\rêcUðM¨CóE˜ÏàjS½Ñ£½‘èÖXŽ&-þzÕ¨$YI#FÕNÆ’Kn$Îx¬e¹i;ï!óá*{úVD¶’ +Ÿ”V±”3ry5FrNsóv¤®š¶Å[xLa†sUä·qÐ’*`¤Kž€ÔwEÀ\'¨íŠVÆ|SEm\"&ÈùX\nâ|t‘\\Ý‚à+BÙ\'§Jëþ#E,š6~ð\rÍy]–¨–<nÀB2+Ïšýæ‡¹‡KêÎåŸ\nxš+Æ¶r†ùVà\rÞ€œf¾ñ/ì<¥‹ËÀÆ7`ª©É$×Åp‘ý¢¬¹fÞÇÖ¾¾Ðl´ßx:Åu(æ0ƒpnÌ8¯C\r¤Z8q.óMìt0êë\ZL7ÖÀùr ‘r:ƒYë¨7šÊ1×Þµ`·†ÖÔ[Â¡#UÚªƒ\0\\^¹=«N‘\0\nœd÷®½ŽH«èû«Øã]ï\"¦;“\\ö¯ãXlÐ¬\0Îäã# ®bkKíNei$!{î8ý+¡Ó|9k\Zæ\\ÈzüÝ+8¾Æ¾Î1øÙ„·º®¿!Ù¹ôÛÀ­=7À¨XÉy!vþèé]LðÀUè)Xœt¡FàªÙZ*Ä–PY\0°ÆJs;wUàqOUÙ¼õÍT»ÔâµŒ—`­T‘‹×V%Û<0$tà\nùâV€úF¹+ºŒJK®ÑÓš÷}KÄ—\r¾;H‰cÑq¾8ðuçˆt‰.äaçÆ»‚ÖžÍÅs35+»<e‹c§³fUås]íÐ¼Õc6Ìñ^àíOû_O7å]Û[5ôu”ëqiªA\Zi¨ê‚+ [é‹{XïoSZv\"„ð\0k=µ8‘‚ºT‘JÇvq†ô©ror•ËGSŠ9Wg­gÝÍ™	Ï\'­\"«¯&¨ÜJXÁ©lMí¢(ê³yCŒ\\†¥1ÌpCv®‚ïÎ¸g\0àg\0×7®@–ÎK7Í×Š—Uô7–s$<7éUEÈIY3ƒê*+iÖK$÷zT«òNÒ§¡bð’IÏ5\"Lá^ž•J<¤;N˜¥Žã;nsÁÅ5c]‹(Vêõ¤ó³üKøÕ6““œÓc*QÃ“íF†iÜ´n<T/.IÉëPùÊ*9%rjUÅf÷,¡73Çšä¥K4½rÀÐÕ¸Âž ö(W-³Œ1\'å)‘NªÎ{öª’Í°óŒ\ZåÇAŸzq\\¥%sVÞe,ç¥N²òyÆ++5N«pJ#b\\òE8“næÕ›œ±ÎEZK¦\\¯‡Ú«£Þ¯E{z7¿¥5°+#AHn=IŒòÙùÕ(n·»i^ç@ç\ZMìJòí×8ôÈåg\\‘¶³Ì…™‰<Óƒdc<Ul\ZRòŒšE¸1ç^jªßùi†äŠ«Þvö ŒÓ‹v6\rçš›rLÜùNÜcYd*VëTï®¶«\0y=h»akšMv\nÍŸJ®÷Œ«p¾•“k;;2±U¥P>fb«íÞ›»)AGbbYÓr‘zŽ.\nî‚\0îã©ëPùÜ±i4$ú€Ý€N#×5XÌcV%°{â«5À-·v­=öËö„o<òGtG»9“€zàv«Ð9ºr)%a¥¡vÚÜ3î¯jÚ²ÓÆ2£å5‘dÄÉŒ}k¡Ó¤p@è¢ˆ†K¶ú?š„ñÇ­$šLè¬Éž9âµí>U<V”_¾…”(çµRMj4Ó8Ù¼ÅˆžwµsÂž#6w€Çt7\ZLR@Ë·“ß¥yî£šv¥€r¡¨æaecß´ÙL‘,ªàçÐÖš6ì`‚=úW	à­HÜÚ¢cœWck.X¨ŠÒ$-K¹1¹4æ¹Âþ\Z‰‰1°MUP’Ë¸¯sJï¨öÜ·ì‘´R<ÌÊyTmæØÀˆ>VïTÝîRHöˆnhƒdò3ÅKÂ¬±X>½ûf›ó°%xãšÜŠ0äƒÅh¤ö9TH.¢G‚Uc‘Ž1Þ«[6Œ˜Ý·°«¤uŸ¥SµR’Ê˜Æ}jA\r>ÓfXe\\w«¶Ë\n¹?0=jl\"ín?½MÓ$V2.\nàñBô,jp,m rcWmœIßŠ¯qoÔ^[’¹5-²¢TîP1MFÂæÓ˜µ¸”kÏ¼J]®§VÁÅwÌå#bÏž=+Ïõl¼Óc©5”`yï‰ôïµXÌ¸É^•òÿ\0Ž4‡ÓõIX©cšúÓT;‹®:xÿ\0Äï­Ò„Qß\'f‡Ïzd-äÊ[\0úÖ²|½MÛƒÏJèõl5o)¸õ5…â˜ñrFF)-BÇKàdÆÍ+ÅuZäÌºD¥Õ±Œæ¼ÇA¾kIÑÇLcë^‡!ºÑ$;ÉÅ1rësÞ|+ÔþÚÁ×ÎÓ™@>»NyïÀK·‹M¾³\'æŠr¸ô¯KøP†O†zXbØJþ5å?AÑ|â	;¹*?àGüjVìn7‰íöm˜Øž£Šzê<›27zUk)1GJÌ¹g}DxÛÃf±šnÍã(#­UJ7\rÄþjœ¾dY`yíUìQÞW,jÐÒ¶ÅÒIbIäÒ™	P½© å¶ô>ô3í[«™>\"µŽãLš€ÚËÁ¯\0Õ¼!u%Û”Éã&¾‚½–+¡4d—Ö¼ÿ\0U·¶ÈY1ÏJæ•;Ë˜ë§ZtãË}IðßØ®¿ÎÝa_@ü »_ì©ìÉù£mãèýUäÓM«yk»ozê>kOkâ/\"N#˜mäÖôôÑÊn{ž¡§x†âëÄ—V\rnV²‘Ö“X°Yn$e\n3Îk`4hå€=ÀæªjDæÇJéÝÁë¡Ï´H[vÜ‘Þ­Z®ô|8\0pqU‘Ø‚ØP{Tñ‘r£ïpM%ïËjé\níÝº±õ?%œ7d(sÌ\0àŸJ§=Œ3Mæ˜Ã7½TmmI÷º0øŠöö=Áx8Å=­$½98\'8­D°G9\0 ö§ÃÂ[œÖÇ¡1‰FÎÐF¿p+t©®¼¸ÑÄòcœÔ­r2ªóTîÂÏà¸5ÝÁFÇÎÿ\0ôdÓ|A4¶œ[Èw©¡î+¯økâ;bÈÙ´Û|¡“]GŒ4M.ãH¸‚FPäe¸5á–:½Ï…uf’èp}\r’Žˆv¹ô=½„‰æÏ\'Üçs\Z§wâû+{˜Ñ%ÄãŠá,o5BŒ®VÉ9À­ë%³oÃuúTÊNFÊJògS-ì›±ùOLUw¹$¶:\Z£uv->W?*ŒW-©ø–h˜Ç\0f\'Œç¥EùH„\\¶75}UlAmá}‰¯?Ö<SÅÁ‹óÖ¬:óWÜóî\0Ž¬k:]\nRß.ìw&•Ñº‚[³¥Ó/ÉÓÑ‡=©ßhmçsqþÍeéw ÛÉåA«ö÷ª·cÅ\ZMt±¡$ZQp¬8~k2[•Û’Å©‹v¬z•¤\nÆ€¼aÔgñ«pªž\re,À“Ç­#\\\\ç#µ$öº	 yNylÕ¼ûÛËPµéüÃŠaÊZ‘Ð–cÖ¨ÊùÝÎ)¯>ð~`F|Œ‚=©Çb¹R\\JY\0Ï½\rŸ!·6=ê¸;Km‡jfö“$šI…ýÒ8K¤¥·|½«F)„ àãÚ³jkc‰9ééU°XÒŒõâ§ŠRœuE§\n3Šž9¶¨aÇÖ§®„Ê75‘ÃôúÐdÆgÅrUŽI#ÜÒ5Ë0*[¥AdY–FÚ]XÓÅ¹g`3°zÕE•¶²œš‰ä+lséLe¹æÎEñÇñ~•”f|òÝª$¿ÈP…ïKF%cy/p¬IËUY¥³†÷¬çºrx8¡nd·oJe$‡¤‚ÞcÎáÒ­5ÐdfRÖ,÷\\€h[“Í?tV.ý©Ë¶1NKÀƒijÏ\rØði®àgæÏ½	¢ÒF¨¹G<\Z¥ÎòAÊÕ\"I^â­ÙåÍšJFŠ*Ú“	HÀ&µ,ät@Ùæ²ãO0í(­u\">§r2P¾ÆÞ™*É&o©®’Ê`Ìg\"¹}8ˆÀp	&¶-år>Rim±Ym0Ü0ÜVå›¨RwW1e.P)9aZÜ­ZÚÀt2Ü›\0½kÏ|XŸé÷®´\\œc8®3Ä³6ã»%‰ïI$=R;‡·n›pxÇq^¯l›£b¼_áô…_ïu¯\\Ó.	Œ‚À\n.J/gß•çØTr!`A\0à\Ztmaœ°éïR>éUˆ 7^”ì?R‰‚m$©ö¤xw)¾†+rpx¨üÅN‡ršW)¡á.M.9—hHÙ³[€“Ó¥41\0€x=i\0Çz¸ÊÇ(§ƒ×ñªR»Gv­Â¡$ÕÜg\rÈˆ&é>êÒÊîfPÈÉ‰‡\"ˆ[Þ¡Žþô\\]âÝdCQK5ç”‰\'cT\\¾dlu”î$xØãMo\'9\0½Uš6MC1«m#’zÒ¾¡ÐÐœ~îB~bp—q7˜ÌÊTæ»åÎÃæcð¬û*;€Òc¯e¨š¹q´v<ší÷Îøë‚ø›\'‘¡\\ü½G§J÷ëo\nXÉ;£ÆuÉïMÕ¼	¢jv’ÚÜY#£Ö\\®Å)+ž7vñÍu¾osÁ®wÆP¤qÂñ¸lœjôŽ:xÇ7š\\ùveDž¼÷ü+Êµ9†¡ÁlíÆ(Ž¥!<9h÷síŠ€1ŠôYá)¤É$a85„|(šL,ò–ËF:•¡­FRÚlr›p3MÝí¿¤ÙðæÃ\rò*?:òëv\Z_Æ»›ä¸zîþ^ˆ¾ZDH;\ZEwùyçÛû;â‹zª~f\nX}úõýíDŸºÒ=²“ÉSOòü¹7`óÍV²A(<õ°¶±y{HÝîk9.f8=5)Îx¬öBÎã§½l”XÁÂŒ\nå¼a­dh×WHü¥Ý´ž´’ÐnÝ	çÔdsY²j¯’\ZSŠóÛO‰3ÞÛ4žRDONæ²/ücp¯ûÐØbš¹:žs­ÃÌCï\Zçµ-wJ³‘ži¡Ïu.3^I®k—RHÌ×Oa“\\¥ÅÄ³¹;ØŸsT“SÕ<q§	¤òç>ÁERÓ> CoÄ~fcpÀc^ZK}ÓÎ+FÇNwfµZK–ÇÙ^\'Ô5›ÿ\0ZÝøxnžp¯×¤VÞœ×K£Â—¥ZèF„{×ð[\\]WÀV+¿-n¾KsÏWf—±HÏÊ’02ƒ’+]nbš1în\'Üv£Ð­K²`ïÂû7àá$•qòŽE4Ü‚ØU&¤Ùq÷ýª6ºEBÌp­5\'eaŽÕBöDò\\9Æi‚eØuæ“bÒµÁœg<þUÇÜx’ËGBûŒ’(èµÆê>3Ö<A3Cf†$\'ªú}k;šr6zF¥â‹-0ó©“û ä×\râˆ×Ž^;8ºž3U4ÿ\0Ý\\‘-ôÌó´\Zèí4[;&ÊA˜òi6Æ¢£¹ÇÚhÚ¾»ûÛ×xÔúÖ‹¾¬:cOnYåNN{×¥nÛ•O˜\nSf÷áðŒir¾ãrÓcÈ>x«û#SûÌŒ!sµsÐ\Zöøî€P€¤u¯øà\'Ó%mBÈVÕO­[ð_Å‚Åí/Øù‘#â­¢ÑÌù¯¡èZ¾˜n.%Ã®9•ÊI§%µÎâwÝ»Óbøƒ&¥}\ZÅ“‚zšÕ»ŒH…ø=«7«¹®°EIn×aù÷kùÃ+œuì*åÅßzdÖmÔ¼Œf‚(Ú8IåP1žjÃJpFF+.9?ÒÃdäœU·=ÎxíMj\n7wÖ”8ÅD®r¼Ô8FlŽÔYd]Ü=l¨ð:U7¹ÁÂr=MS‹çð¥`ID™cH¨~cÂ«G:$M¸nç<ô¬X|KöË÷€®{Ó@¹dRÎ§“ØÕub	É¤,MFePÄäzÒZÔ•§1¦:îì)ŠqZMË‚AâåþëtªHieryÏµ*N°ŸSëP+í}¬Ùü)ÅAä÷§a­	ãº3ƒRvBs‘ØU(—k79§¬Ø\'\rŠ›h2â]ûüŠkÝ’…G_Z¥ç‡-“šíÏ?*öõ¦´BH´·m±†wg½0\\»9ËgMfåŽvÓ£“¸üê+­šVi[6Ó–B¼Ò¢\r¥·e»æ I6©7U·-4ƒ~Ü“ŸZ]ûF7b ‘Š®AïLlœ“B•ÐôC\\å‰ÎiÀ\"œÍúTNHS´dÓ!«0[JGP%²ÔÈ?Û©JnêÝzV{2ÒJ${ØÉÍMnXƒ’p:S£ˆFsR¢ù‡\0Ö«@E«03×-_…Ý@È¬ÛiT9ÏAV\rÊ«ÀÇqI[a#jÊã ©8Åk[^‚Oã\\Å¼†Cu­yö+§Ú›²Ø›DÄ¯}Mii÷[‹†l{W3cpÊ6»<äVµÆÓ†à\ZjÖ\'©ÖYÊ\n¹\'$Wâk‚×dní]¥ÎËvïÇZãuw/zHçu1Å£²ø|Ãq#šõ[	0ØÏäÞ·“åy8¯M³.#F=GZ/t\rXØ³m$íéÅhByBy…†>­[†ð…È8\"™(¹uòÏÌIíQ&cˆnÉÎ—Î2&Ka…Vk‰¶º\rBØ-}y4d3:zP:SFOÝ‘Š$BJ0â¡¹Q-¼ˆÀž8©Y:Ž\rsž2H§ %©™[ì\Z,dÐRÀ<ËCã*x¥…Z;Ã ƒÈœÍöù u\n¿Â}i¢½M$0Ïj‹R¸’CFpsÉ&ˆ\Z£P7Sî\"2ÛÈ½ÏLÓNÆ~E¸gYmÕÆy$sªð±õÍgé3m¶xò-[ÁU>þ”®$¬DÍ¶éT£­\\–0Ç$®qôª³Ç¾0Û¶ã“S\"	a¾ozGÊ_¶—…ØÉ£ëqG•\nÖòÛ¸?Î¾<Šì·½~~Ò>\ZþÜøc©•MóZ9}xÝ_ÎÌG9ëQ«:ì{ï‚î#Ôü?¬ŠNÀ3PxŽÎ1c?\0Õ_ƒ’Åq¦Kjy1ž\05Õx“M‰tËƒ³TÓmu#]Š_&aán	!erã\\·Å0òøƒIU˜?ÝZ¯àOˆö±“O`Ó]´ä(Œ×5éº6ƒ½2êˆ’KÕe‹Þå&•ÑÔh¨ïm\Z°Á*+i‘1ž•›fÜ…ãhéZJDÀá¿*ÎMÜpÑeÜ»ŽIçÿ\0ä)á‹äaÃŒf½&å\0…ñÓÖ¼ÏâµÂKá[Ñ†	ÔR¤ÙQGŽxt-Í¼•û§­j]iÑÛZ<¬8Qœ×-¡k1Y\\o;±Ðâ»ŸMÞk«WVVÂÖžh¤ììÙå\ZÆ¢“Þ9~QÀ¬ùn°NÒqDÑ#ÎjSŽ‡5iŠú‘É2ªäö¨ã½uÝ°=J¶û÷\r ç­6+b¤ã ªˆ›è}ý™<@L:®˜ï“òÍ\ZŸÈÿ\0Jï¼%àÄÚ¶«s~×?k”CÆÐNkçßƒšÿ\0ö-œŸ’`baõÿ\0õWÒZÇ‰ÖÂÝ&º™-!c…y3[F-«£šNÍ¦iêmä–Á\'<f³V·³,ep§ÜÕûóö$\\DþfTEpZ†•5ÍÑrä!Áùz‰huR\\ËSRÿ\0ÆjC,(HìÇ¥cMq«ƒqŒô©a¡¤JŒWÌÇ?=j˜v)(}êÚ–šŽÇ?cá\0›¹‹7÷GJØŽÆÖÆ5XQSop:Õ¸\"y—ß¾*t±UÈsJ#Í´Sˆ<‘£-ïKö@Ü±Ï°¢óX±ÑÑÞiUF:\\~¯ñ/Ì‘âÓ­üÆ=Š{ÆóØì%h,ã,ä*Ž¤šæµ_YÙy‹ïÜvÌý‡^ñî¹f†&çŸð­]7Á6–`<­æËþÕK}T~6`]ë:·Š#–(âòán1Ú¸¿x&ïEQrËº3É+Ú½²xmö…\n˜ê\0ëTõe†þÖH¦PPŒE8ÛÝG™xÅöv±›;¨ÂJNÏ­vRjŒÑ²/B+Ìü[áVÑç76¯˜IÈÇPj-Æ¯h¾MÑ.1…bj·!jv7{ÖFvfN@¬}KÄIod’G½Aw«I|‡æù¥sz»Ô‚s»¥+‰jhiúÓ_ÎÀ\r›Hêx®¢)„Š7§+Îôiö]‘ŒgŽk¶‚oÜ.9ã­2¶&2Ž@;‘ÇµF$Ú7gô+œõ£¡äT‘ê1.DŒqÚ’$ÓJV\n?ïšï>¢šV)+c dµZd;J±üÍßÖ­\0p9¤Én1À¦•Æ7…€\0ö¦Ÿ.B;žÕ!S´äãÚ¢01ÏµMw\Z°ÁoÃÙô¢\0ëœ|ËNÿ\0–dá¦ÛÎhZ+Š\ZÑ«gmHµHÉ4<êF(à!È#Þ„’\Z·A>ÑÆ1Í@Ì94²±ÀÈ¡ÀÛ»¾”¹×By[Ül.âM=Ø`Ž1TÈ`ì:Q¸<®ê¨èèO¹IÏ¥9@$\Z‰Wwzz®ß­dÒùG¦Ùå¶¥0ànÏ>•\"Æ JœÔ.AcŽ”ãÜUo”÷Å0®rwc—uü)„Ýx«H*\"•ÉjB¨ù\0@\nriñ«ÏÞ•ÚCô+ÈÆ2	éRZ•cš$RAV¨\"ß–©l-M ˜OçN?Ê«Ã+†98ç¾E4h=eŒr{b”¸+’*ºœwÅHÒ!Àþ4íc8;“C1NjØÎ¦>Æ°â`Xç8«¶ÙzNÉ vgMot<í?Z½À\nr>^ÕÏC2¯Á>Æµ¬n£•”u©V$èa¸Ùhkž‰nAÚI\'jÖ–õ ¶!”\nÌÓÜK8Ç=©6†zƒ@W$Œ×smxcv`g£WáøŠªá‡˜CÞº¨&Å$^zU\\§‘ÊNãÍ5oÎ›xþõE%¨Š=Êqºš‘†Î;õ4+tMK)tËÔî©-.LáøÜ{\n`@h9Å$1ÅlY÷ê)$º‡+>ƒ99æ£|\"’OãUµCû/O¸ºØd.í£©¬¿x…|O¤µÚÄbbJ•=Eh‘Ìã oê1K‰pÈÍbkß.ƒtl1%àCå‚23KàÛ›Ë6ÔeØâE´XJæ¬±Åžq@j•ÆRñ(!¿ˆÔúŠ1‡pÇ­W.²[«’¯$&.#›?/=ñBÌEñFrAíQM\"q3\n8Í\r(\r€0ô \"‹¯w2F˜ì*ð\'ik%­oÈ»A5§ ÷¤Ñ+QÒÅºQÔ÷ô©-r‘à¾Hýhó>GLg8¨­cîQÏãN»kÚ|zž‘{k*ù‰,MÏ¸\"¿0¼e ¿†üI¨éÎ»M¼Ìƒ=q“_©R·™žÅ|ûYø\\èŸ¦»EÄ7‘‰àY ÿ\0*Î{›ÁîŽGá§öMsËgÚ®1Šö_¨þÈ¹$ƒ”<WÎ>\ZÔÆ›©Epq…a‘^Ýqã=3WÑdòî£ßååEeöGd™óå‡îüOÔÿ\0®þµõƒ¾š€Ã‘_4ø[A}cÄÒ²Ñ¤™Ïã_Mxn4··TáBN;	Þ÷:[pXÄ·½]‰dgÖ¡´2wã­FoV,¼\nÅ­JŠ[“Þ#KnêQŠð_ŠžÔt;Û‹o6k•y;O­{¤\ZŠ]!)‚*«õ+k‹yãWIiR8\"¡hiì|Iev[8 VçÛ§“O{D˜˜ä®x®ƒâ×Â¹<\'q.¥¦«I`Çs ÿ\0–ýjå4K ê§°­¾¨¶Ž@ðY¹ÓMÉBí“Ç¥gjžq!ÄX¶+ªðÏ‰&Ó¡1*‡RrA­OTµ»·,±1ãm\r´?#ÈÍ‹Å¼®ja\'8$©ô»â9ìdRà “1Vì4¯6ÝNGãO˜,sºX“MÔ`¸O½†ü}3áû?ˆº™+ÈÊŠƒN†¾{»³êPÁÌÎyÍ}\rðÆãÊðè…ßˆsø\nÚ.êÆ2Vw:‹[T²°ŽÕOÉ\Z…J¬Ö	+“‘´ž•[HñE¦¹5Ô6¯¼ÂpÀž\r>ãP]?˜Á\0çžÔý4E‚‰n\n*‚j\'š(Õ·ªrk˜½ñ’—e€nÿ\0hð+\nðjúÙÌr/#=…ÖE¨I³­Ô<a¦éÊàÉºEþç5ÌOãMCVvKH]#<aGõ§Yø9m”Ï|þi@é]Š[ÚÅþEõ£W±ªä†¯VrÁ·zˆ9Œ¤äÖî›¡iúB¨†\ròtÜy5z{ñ¼îù,wqÆ¬X)ÇéJ*ËRUIH“Î\n„*zUY%UÉlcÞ²îüK-&>‚¹ÛïËrÒ|ácÅR²V!;›ºŽ³kf.8é\\Íÿ\0‰DŠËÌzç.î’¹iKj²å†@â•î8Ç¹­y º·d“æSÚ¸-o@U•Ì}:àv®¸+\"ç?-g^G·sÖ•Ê²ZM¾«=1³ÐÕ™u¿•vòE^Ô4XîrÊ0ÕÍÍ¶2œpEVãZ\ZVò*êŸ\\Wy§ä/?5y„7/ç+3`ç­z3<\rŸaBìÆû—ØŒZfÒTœà\nÇ’šÐ”‡c#$Ó‚mRÄdzÓÎ9âœÓ`àRwbœ¿….âAÀæ«»’HÛ´R‚Ñ¡\'ŸlÕrMÙ!õÎ)ÊøSŽj$40Æ1Ž´nœJ-Ðš0cƒÞªH\0Èæ¬¶ŸZˆFðÆ¥¢º2`zÔØzçÃQˆ¾}¢žñ”µZ÷·!^7»àPG)ÂBW¥V•‹äg¥+$h¤8ùxäÎ™å`œç¢™·®O\"Ÿ½‚qP•¶wwÀÅ `¼\nPä†˜G\'½ÌÍ\"UÁéLt“œše(`ñ“NÖ-$„Až	æ·\0óQ,›Ïåõ§ÓÁ€ÈíOVâ¢çÚ”J[ŸJ¹SÎ‚p{S\\\'’iŒÀž”)9n1ŽôX¥d¬-9%Îy$TM(9¥‹t§\niŠ×\'-…ÉÁ H\nŸ›i¦,e†G4¹Îq×Ò¸”yu%‰€;s»ÜUØ#2FB¾Óž•– –ÀàÖ£•R‰¡;{–’Ø©|œv­M=Ä-’gÒ³RBW=«BÇ{~î9aVÖ‚NåÍFgt/­XÐ gglò1T¦»…xlv­o:HÝ3ƒŠKÌLô_Å„’HëqJ¤9¬-4˜ãýÙùMZI1,yìj¢‘3Ýƒ\0DPÇ€I¥Ž]ŒT¶3Ú³-®¶DT8$TrÞ3¿8ÙŽ¢„˜-M´+†äsëO‚ØI»ž+ïP*ƒž8æ´m.üÕ\n‡°Í	h\nçÿÙ',NULL,'2013-12-17'),(74,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0àÐ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýE¢Š+# ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(Åw?fÒg|ãkñ×öàñ\'Ûüg<A²°0~µúÑñ{U]3Â—nxù5øƒûIøµ¯êroÜ‹!ÁüMo¡´v<râf,zâª´Ÿ#v=©ï\'Q“P\\š¥dCmhˆL ëÍ\'˜¾´œ\na1¯½Kw)$€ÍÁâš_y8ÏœÜçúÔ$`ÓHMÛRbû2¹Å ›ï\Z€riGSPÉçdíq…ÿ\0j¢ó9¦“Æ1HA8¬®ÙW}	¼æÜT¾ECš¡S´1e§×îÖ×%6‹0ËæƒÆ¡å*ØÅ%²€„úÓe#~ÑQ}\r˜øå»ž”Á.íß5@>GðiL„Òæ&2]IþÒ\0ÁëH·$ð±öªÕbÓøÿ\0\nlW¹aˆäm>•ÓhkŽ«œˆõÕèP»›ó«C-ß9“žEr·³ÍÏ&º=SýY¦+—½Áo~õ#¹BY[qâ¢ŠPî\0õ¦LûÉ\"¬h°›Bñ’ÎëO›°\\ýý´3‡-\\®]ÕõœLX>µá¿³.„,|kµ1„…{µ¢mNG5‚+t`[ŒR·ÆjÀîE0úV|¢Lâõ´Yo0yÖxJ×»}+¼fŸP*\0ëÅzOƒmwl¼âœFwþ‡=»ÿ\0ŸzèY˜§\0p+3J‡ÊSëí[,ëä‰ò÷>• ÒI»ŒW3¨HHÀ«¨ÕPüü™®;UV†Þcž@<ÐÄ_¶ï‰Béÿ\0dæ-Óþú¯‡÷œb¾—ýµ5voÅP_1¥ÜEHcŠ¤iÐ±4€í=¸¦¬¨Aù‡ãJ8$Æ	\Ze|ü •õ¤óHŽjE¹§\'¸£D;¤07‘·µµàhëÄ¶h£#Ì±ÌySœ]ŸÁ-¯¼gj>ðF­\\I¹úSðZÈÛøR\0ƒ´\nëüDÂ\r2ç?Ýª_\r­·†í‚Œ\r‚™ñ\Zck Ü2¤)Æ+\'ñ	.§çíª›ß(lª±â žN0k¾ø·ªGÅš$œH@ÏÔ×\0üµ²Øo˜„¹Š¬×@’&¤˜åN”V„·aírár1Tå¹r[&¥Ý¸7¥Dã(ENŒ¸¶Uiy¥¶˜ä‘SHIè¡–«å’1øU­‰½ž¥èõ	ã\rµñUå»iX³¶O©¨šMÃj=¡³JýåØÙÓ|Ms§äDøíÅW¼Õe½‘¤vÉj¡c,jxSp9£Ì¤ÛoS–ÉúW¯þÏ–f}y:s^F€/ãÒ½÷öh°j-&8UÃ©\'ØÚ$†+HÑºc¥tZt\r#‚ãÖ²4«RñÇœr+¯´–&Í¦”€ª3ÍsîÁ;—nm­þcõ¢âî(ØíuÝßšðˆÿ\0´•‡‡X¢™w(<_9kµn¯uxí’,Yãæ­#$ÏÑ7S…ãÃH¹õ ’Äü«ƒø×æÍŸíQ¯Ä$“ëšÚ³ý®õÈJù’3cÞŽB[hý•#eˆ\"³®¬ã-ŒgŽõñ%§íÑ!%‡¨5µiûhÉ´ùœŸ\\QÊì%#ë‘n›pFê¥wkæF:×ÌP~ÙPK‚Ê§Ô\Z·í¦LáYW¯ÍƒJÌ»Ü÷û2F8®cWð¬7\r¸~çñþÔÚÑ•fP}sS§í)á«ˆÊïÆ>”Y‚i©4QEdHQE\0QE\0QE\0QE\0QE\0QE\0QE\0QEá?µˆWHðué-ŒFÜžÜ\ZüCø©CÄ7óÒ1Ïâkõ£öðñ9Óüy\Z¾!\\f¿õÙüûÙßvIbsø×D[r¾µsœ÷©ÏCŽ¿þº‚©»\n#KmFÜsP9Þ7TÍmß/>¾µ]†ÂËR†öHO£±¦ÔÊ]¹À¡HÚOzJU\\‚Ef›”¾aW<šJ*FB &˜­–>õ$cæéOTRÞÅÈFýj´ nÀ9«kŒ|¼j¥ ÎÓ‘ëTÊlmò€ÉµNFqšn1Pf%X´<°¨\0ÍMj³|¼Ž„ö¦·\ZÜÑ±]ÒŸjí4x“Ècœ\0:×!¥¦éúdWqco¶Ñ°2Z¢ŒmbbŒÃ8ÿ\0\nånd,]»ãŠèµÂIlúå\\ëu<Ðò\\íé]Ã}<ê>,°„\0Ù•xÇ½sDâ½WönÒ¥ñÕˆÝåÜÔ¢Qú}ðkJ[/Û€0\nô%F+Á6‚ÓC·@06\nè\0$àsH,(’;‡zeìl-ßœ \\b¥·RŠÅ¸Ö£Ôçòí$ÜÔ«¶8›h·êL~ðÍzÏƒíÀLƒÆ>•åº*ÔcÕìÞµ\n’?N´â$v\Zu¿Êí«Ò‚\"lß¥-¢ˆc©æ8\r-Zì±Ëê­»wé\\Î±šÖEîx®§Rwöâ¹Ë Ä·÷j\0üýý²¾jzÔÇRÓãiä‡$¢Ž¢¾Ô4Ëí6áâ¸†Hd^ªêA¯ÛOøjÛUIXÃdc‘^M¯~Î>×Ú{d\'ÕFE%&cfµ?%¾Ñ*õ\'ñõ¿‘3Î}«ô§WýŒü3tä®Ÿ\ZŸT®OVý†ô‰Ú;wB;†5|è;Ÿÿ\0k2g’ãDzÔ˜c¸â¾Ë»ý‡t÷f´ê}ÿ\0Z²î?`÷·‘u:óýÐ¥ZœEo3å}ZIpŠzúöRøc{¨ê«©\\@â2F21Åw~\0ý…mtËôŸP–K § 8Àüq_\\ü?øiaáK8á¶€(P:Qqlt:\r¢YØÅ\\mP+‡øÝ¨]°;p‡šõ(¬¶žFÑí^ûS_gøQuê\"j•°â~`ø¶ìÝëwÒ‡Ü­)¬Ï31íê3œÒ^Kæ]Êç‚ÌMH /GåZ}’YLœ‚«9³ÈÇ«=œ¤´æ¨5¼ŠÊsRJý3Þ’žb|‘ƒÅ7PRçÚ¡•	)FI7a±Ü•oŽçÇâî&ì*BdRF*HíømÜÕ8¢˜( Ž02ŠrG’{R)Á©¢ çƒInëaK‘_T~Ëš&èüÎ™ÆO­|¼°‘së_g~Ë–iÑ¹+Fô%_©ôž‰b År<J|/á¹U¶‡ó¯EÐÀãŒzWÎß¶–¦ÐxdÂ§È~5Ì®\\UÙñgŠ<Qq­^Ë$²´ŒXõ¬ëfÌyö2¾üž3WmßäÕÒôZµÐÓIS“Š‘X7+È¬å“\0ääÓ’rç½EÊÖúšôeUÁHÝ6ˆîJç?5>o1]2él‚1úÓ	Àæ«‹¬†ãéP›£†Îi§pVè_GBAúÓL¤‘)Z¢njÁÇ5+B¬J´QEbfQE\0QE\0QE\0QE\0QE\0QE\0QE\0ÙdlÞƒ4ê«ªMäi×è¦…¸#óþ\n+âÒ°1\'.ÇÎ¿4/Ÿüšû7öþñ3j1k]ÙØOzø²è»OA[¢îRŒñÖ£§¸\0œuÿ\0õÓ:\nrì5‹a±éÅT«.§\r—ÂÕs!(ô“²&CA÷¤sÅRmqš†Ù*Â3`qJ?:E\0g4½*\nxõ¥¤žÔ´„-«\'#¨ÅESZæaM\r%$FÄuÅQ«ò\0îéÞ©\"3çhÎ)±±7»sÆsIRÍÇÑ¹ô¥…?w#{JÂ±\rX´þ?Â«ÕÛXÀLƒœòM›\Z\no¸ÇNŸÖ»¶+B£ƒŠå<7lw”{ÿ\0Ÿ¥u·ÑýžÍ¹ÏÊªE#‰Õß;ÎyÀÏçXNÁ,qZÚ¿ßažÿ\0Ò±eˆ°c¼Ž¨@Še€¯£ÿ\0cMßøµ¦#€?:ù½†OQ_jþÂ^ódk¢½X\r$$}û¢Yˆì!O»µGnµ§;W™gG^ÀTü¦i$¬a±ÃÆ²µÀa·qÙ»ÖÜd¿oÊ±üFHŒ¡íÿ\0×¤†ì–IËc<×°øf×e¸\'µyÇ…,‰TÀäòkÖ|?/¦”A¶ãñÓ4Ûû¶ú\Z±oòsÓ½E|«ñÅPyœÎ§ü_Oñ¬9\' ­»éöÏ\0W|Gñ¥¿„ô‹‹‰)Q‘“ŠCCõ­jÇMn&E>æ¹ãã]ÏËv‡ñ¯„~2þÒÚ®µ«Ko§ÎË±ƒW™CñgÄfFmsøÓ·B]í¡ú‹kâ=.~é¹5bK»A|g>õù‰§üqñ5¶í·LXwÍkÛþÒ>#‹®€ÿ\0hÓäBMŸ£ñiÖÒîmÈÃØÕ˜¬!ÚF«óãNý©õØ#ÉÞqþÖk¦Ð¿l+øfÏõ¤¡`‹gÝ¶úzà² æ®AnbÝœ~â¿h[Æ‘4«½±Ôóš÷{AÜb¶Tô\"¬4îUšuµ‰™úWÏÿ\0´f›/‹ü+¨ZZ.\\Æ@¯¡otãu  ŠÃ—ÁÖòÁ$oÃt¨¹qÓV~\"xN¹Ñõ+›iÐÇ,nT†5N\rMàC“‘_¦ß?c}Æ÷Ü¤^EÁ\'÷‘Œ\ZðM_þ	÷xŒßgÔ\\Áã§Î¶erßcä£­0œ\n#Ö#ç!Oà+è‹ÿ\0ØCÄ¶êæ+ÈØú\"¹‹¯ØÓÆvå•#Èúÿ\0…R”{‹ÙÈò%¾„˜\n‘e´6T~½\n÷öMølþ%aÇm§ÿ\0­X?\0¼sdÎE¹Èô«º‹Øçü‹7¨_ÂXÙ7Bj{†-´ÜG½@½3	¬ëkvññarŸïBÃúRAf\\\ZE£¾AúÒbBÄ•–±ü­F2CÃ êi¦{Èù\0¨ªƒ¡´t(Çü´ÇáSC¡à6Ç®yõK…êÖ¦·Öç#œ÷4hB7#Ò]fT-À q_s~Ìú?Ù´X¯*¹ükä…>Ô¼c«Áû–hCÌ~‡ü*ð;è:D12ãÆÚ/ ÎÚÂÌˆ™€ÁÇJùöØ¼Ì6ðg\0ÉÓ×­}¯öq“’:\nøöÌÔŒ¾!·€¶B’k8îTO•®Sl„{T`1R]gÎ>Ÿþº‹\0ë]Èž<Ç<\0=ªR\\—ëPÚ©PÙïV+îh¶µ=Tí\'8§ÚEö™\n)äñ]­ÂýNòÄOg¢ÓPßC‡\r×53rAàWG¨x/RÓƒy–ÏÜÖÐImÈÊG¨¨Zk5Â\rÀGOz¤9b	¦Ês#qj‡qïÈ¤›#VMÔQEfHQE\0QE\0QE\0QE\0QE\0QE\0QE\0W=ã«õÓü;w#\r‡ù\ZèkËÿ\0hmtoÞH[ŒŸçN;‚?¿k¶³ñQbÛ•_=Nùvèu¿íêS±Èi3^w3`±Åoô vÜxéL8Ç=)IÉéŠiä4Krã±”]Êõ	C¸ó}*[ƒ™>‚£ÉÚF\n\\·F]Ft¤Àq@än£SYlÊŠDdœÓ‡\"Š2I$Ñ@\0éÍZ²AË~V®ÙýsM\rÓ­Ž\rS\n[ \'éV®1¿k>3Ò–7î¡§kŽ×*rO©5$py…†î‡Ó­-ÏúÁôÿ\0\Z\\ ã¦)XV\Z«ó—OQÚ­@žÞµ^÷	S<f®ØÂ¡ÔZhhì¼+4àã+žkw^c¹ÛèóªÞ‡lmž1Rø™ö@AéëøÓçšŒ»ænk2mÛdþï«×X2±Îk6áÉrdzRè.„q®÷Qï_£Ÿ°ï‡|ŸÛLnW\'=ù¯Î­2=ôH9ÜÀWêïì›¢\r;ÂV€®Ò\"ZOáô`€iê›øŸJ’ãqÛ·ýªO,ÈY—‘š›‡™$6å±#ð®WÄ3¤¢ghõ®ÂöDAí\\n¹žøJv(ë<*¾ø¯VÑíH@2kÍüm€Ÿ•z¶™Ôö¥\"äQˆÐT5aóZž_•~ƒÆ¨g/¨ÆLò|YûiøÆM3A’Ý$ É‘€kí-\\ù0JÃÐ×æçíÍ®<ºœVÁ°:ãó¤ùEK\\ÌîHËóK»k:ÇÈ<zÓ­b3ò{`Q4ûÆÕéëëT!ŒH<ç>õ=…ºO0V`sÚ«Ç—8Çµ¯£Y¤×‘¯@OZwæGw¢øVÎk\0Ì×5¯xVÚÎ%±Ò»½;ÃÛô´hf\0‘Ó5ç¾+7v7Dí¹=ª­a‰ð¿Å³xkÄvì²0xR÷¯Ô/„>!msÃVÎÄ±(+òwÂÖÿ\0lñ%¢)ÎdŠýMø	hl¼%m»;¶\r6î‰Z˜Ó4E†Þ=zTñ…tÍF»X·Ý®ÇŸ4ß[;M:ÆËØšÅFå\\îšÖ7\' Õ+&¶Šù/Ä_¶•…ì±Á.õ‚¼Õ{_ÛnÞUù˜‘î)¨Ùõ¬Ú³!Xcì*¬~¶%‹ÄŸ•|é¤~Ù:]ÂîyS]N“ûYèD‡ÔÓTì%#ÙÇ„­$ùZ%ü³Jß4ç\\5ºþè®Ný¥|3?Ì.#ãßÐX|}ðÝØÀ»#¨\rO•‡2%¼øU¤\\3n³„ú|‚±oþhªÁôèØá]<=;åo#9ÿ\0hUØ>\"h“ä‹ÈÏÑ…._0UêyN¡û2x^àHL‡Ö1Ír÷ÿ\0±ïƒîÙ³¤@Iî±_E§‰t©W\"ò3øÔ‹¬ØH¸VX¥7mÏ’µ?Ø[Á÷A‡öthOu5•aûx^	™Í |Ð×Ùn³˜œHô4è\Z	˜ìÁ¦_3<Á³îà¨Õ-­coM«Šî­ôå·8\\m±^…=šºðô¬«(F§¿×¡¤frú‚ì±—Ónkósö³¹ûG™x%	}M~“ø,:løàm=+óCö€µ:—Œõ	ÏÌTÓŠÔq>y¸SçµDÈW õ«—ŒZáÕ„æ©âµµÌÚ°øc/»æÅMæ`ã?ìÔJû3‡¦n9ÎNh±IòšsyƒÈ5ê>ø•q§Ú]	Qßç~†Þæþ%ƒ!aÖ¾šðÇ|;>”²Æ#2Í\\omsOñ…¶±I-7õuü\r¤ë±ÖŠ„úTš½ŒZcº¸ÔW©üT¸Ò™Ñcd#Ú›IŽí|ðrÓN²–æÕ‚3¶¼Jx¼‰$LçßøŸâ®£¬DÑ´Çb¼êY¼É	\',Mckl4îNQEbfQE\0QE\0QE\0QE\0QE\0QE\0QE\0ò÷íÃâ_ì‡ú‚\nZ2£Ÿjú†¿?¿à£^-û.ŽlÃg{cíþM\\Ë\\‹ë†\'’Æ°_,[wSZZ›‡–bzæ²Øeùõ­Ò!+œ‚):( çjæˆ­çžý=©Œ¥NZsÆ±ƒóóéŠˆ‚WƒÍ8™?1àÑJ)2zÂÃÜÒ§Œ`ÓqNÖÄÇ=M-T€äRì\0êjý¼{#ëTíAóO5!“À§Ð}\nÒAæ>sñ©®Ð8ô 0,Fy©jË#ò#,Üdúg¥*B#rËÐŒb„ˆ#3g%>„ Š»¦Ã¾U\'¦qT«_AˆK\"ƒÓuè¾·Ùg»ŽFk\'Ås2îãÖivë\r‡l\\7Šetƒ=ø©D#‹œæFç½SºÚW¥Z—F çžµJá²åHw§Ð®†ßÃÍ;ûOÅºtr\ZeÈüköàf’4ÿ\0	[íÊ/Zü¬ý´í?ˆv\0Œ„lšý€øu¤‹ÚÄE‰:KS÷†=óVIâ’4	Ðb­CvÛÎ1Ú¢ÝY[hV˜ˆàr3\\sJfÔÉ3]®¦ž]³íô®SI´2_1Ç%©\\G¡x>Ñ•Pã×¦éÑí‹ÓµqÞ´òáP;b»«8BÆ~™4ÉÒ²57á±ÇA[¦ÒËùV=á\\¿¥>…#’ñùzuÃpÓÍ~X~ØÚ·Û¼t`8r}«õ/Æ.±i\rœ\r§šüˆý¤u#}ñ/PÃn\nÄ~¦’Ü¥³<Æ’4+€=	5>ÝÀŽ£½(ëÍ?Ê- “Zì¤j™Ú1SA3[>ä85b×I¹¼V1ÄÄ/^*-Ú2U:ƒ@´6¬üqAA8úÕ\rSX›R,Òpæ¨*Sœæ“ Å6Ûbtl>Ûã[E<€ÕúµðÇM[OZ®>mƒ5ùû6i©øÚ6+¤WêŸƒ¬V\r\nÿ\0`v¤öQñ^¢tÍ.i³ªI¯Ì¿Ú_ãÞ¯âk«{ƒå#àõ¯Ðÿ\0Z Ó|/¨6zDßÈ×ãÿ\0ŒïßSñ]ü¥‹)™¹üMB*Ú\\½¤Jn33êI­hí\'<Ön”¢ž@­¨ñƒO¡=	mìË)Ã=ªÜVe3¶FÏÖ›\n*€AÍY‚Ug**îúwbÍ½µÚŒ%Ë¯Õ«FÖMJ&ÿ\0©?ï£L·e8ÉÈ«ip¸ .~µw¸-vÛVÖ#o–òLznëWcñ^½mÊ]¶GlÖl7©ÇO­L×Àn cÞ’`µÜÕ¼Ol8¼”{n5m>9ø–ÐÓÈÁÚ®ZmE[*H¬ë›”MÙÁ¦+.Ç¢ZþÒ~ ´$´Ïø×qà¯ÚÖôÞÆ—²mÉà×ÍW7±•$X·J­¹N4î+.‡êÏ€~$Áã+xwÊƒ]{e—×Ãÿ\0²oå3$.ìÜ…<×ÙÑkb£9t¬ÜGšø\"Úè×à…=?\ZüÔø¥wöST“<–oë_¢ÿ\0µ·ðÕÛç‡û\ZüÏø|®u\rÁsÈúÖ”úš#Çî4ÎvóšˆFs»#8žNMFÏ»éRZ‡#	´/¯zjÁ»vOÌ*`§æËd˜íLXvÃ‘ùP™‹zMÄÓùvÊÒKÛé>´ñe‚…H¦õï\\W„uè´›õ™Ð¤g5ë­ñÊÎ+=«\n’£Ò¶…í ´5´‹­^TÛ{	#ýªØØké‹›d‹æ?É.cV³%øõz…„NéE“Üwñcá}¯†#3Ú“°ö\'¥xÑ\r¹”œW]â¿‰W¾%ˆ¤ò–û¹®/Ï,Ç&°jÏB£g¡ý?ÑE‰˜QE\0QE\0QE\0QE\0QE\0QE\0QEÃùVò?¢“_“ßðQ?Ï}‘…ãóú¡â{¿±hwrçCÍ~(þÙÞ%:ÏÄKü1!¯_sZÀ¨Ÿ2ÜÎœ\rg³Ì\rY¸åØ{bª¦¶Z]‹v!ç>ôÍÞT6[ÜS‹Þ£Ü†|{t¬·/d2wŒ6G¥B9ã?Jêªî9ã¥CëÍC.¢P=è t¬FQGZ\0)Ãæo™±ïÖˆÓÌ`½3C\0#×-§Þn;u«­÷MU²Lî?…[Ÿ%Ldð28ªE\"¬Pû²jb0i‘¦ÅÁ;©ÕH¤QE1Šzs]G„`r¼sÚ¹˜ÀçÖ»¿Û;Ì#<pjI;¿/Ë°ãÓ­y§‰Ÿ|Ì¿Þïù×¦^JO\'8ã5å!˜´²úRD­ŽyúõªÈÇ9ç­^=MR›kb‡°ÞÇÐ¿±®‚ÚŽøÊ¦?ZýeðÕ·‘¦ÅWçGìáÓ5ÍÅÖÞ\Z@2}«ôšÆ#\r²`r\0äT²äÏPI§[._ŠH÷HÄv«Gåš†ì†®gx‚}–Ì+\'ÃhZè{W<K0TÒxBÜ´¸=èˆÖÇªèå~­uÖ±‚3XZ\r¾Èêq]	±MRìVEt¸L÷é\\Åãž½ë§»+Ô×=q†.q{S·b7ø¥|l|=vå°úWäÅK“ªx÷U—qd36âkõwö‰ÕNðuód!c_‘úýÇÚõËÉwnÝ!æšìRŠwÀæ½?À‚x‡Úaóã¨é\\‡,iy•ˆP{WÑt¸±Èˆc¤W0®S‹áìv¡žÜ*+vÅq!ð´Ü<¤+Œšö©b\0Ã~µÇxÜ[4#ÍêxÍ&:ÜÂ\"šU![Œ!\'Š×ñ´PÞJ!9@Õ•9àcb”PºŸ@~ÈZ(¸ñÍŒ|À\ný/Ò-E¾ŸƒŸ”WÁ?±v€„Çrß1<þµ÷Õ›âÕGeÁnxíM©j„6?tp\nü›™Þ­<£æÜç¯Ö¿L?m}im|pYHõù¦ƒ%ç¾êˆ+”¶:ý1Ä=@â´\"\' ª–C‚qÛ­[NC\n½…Ðž6æ­@\0\0T#Îœ·/M4ï¹)Y›1ÎWî·”ß	$b±Vì $œHoÄœçZ®ºbß7øR>¦q÷óXQLÄOÒ‰.vpy£µÍíF\nNk>}M‰#<z\nÏ’rTäájŸÚW\'æ5CD÷:–	ü«>mD œ\Z«u6	9Öy”†îÆ’ZõOì¡*‚ù\'ð¯¶ô‹ÏÞò@Æ+äoÙOÅ$d¹¾³ÓÐG8À¥!E\\âÿ\0h-CìÞ»}Ø3Ö¿3¼m|d†eR>g=ëôö«ÖÒÃÁ_>ÒÜ`žÜ×æž¹¨™ÝòO$šp{š#6ûNxôÈ¨¤có~5<dóÚ¨É÷ñ§X™anHNy>µ”–bNiŠø_za8©Ö,¾ãÚSnx¨¾Ûîß•W3å\nçw½Dn÷›ó¦Ÿ.‚òDÒÜî\rž*·š}¨.qÈ¨Ù‚Œš˜Ô{Ž\'\'4”…€ç¥-IgõEVFAEPEPEPEPEPEPEPñ›R]/ÁÓ³mÛ¾ÕøYñÇ\\þÙñŽ¡9$ƒ+O¹¯Øÿ\0ÛÄ£Aøe¨ûKBqõæ¿¼_x×º­Ë·$¹ü+¢+Ý4NÈååÚÎç¡ªŒ0Æ¬ÍíŠÔ…ûÙ«‰Ô‰ÆQ…UbIäæ­õÏµUeUlf³‰RZ–&“šuDx›š9êf…ÝìhL·¿¥€¤N2+…tE#6>´«óƒøšV‡Ç•Üãøi”ðåcdÇSùSxÏµ\0jØD7… zÑ{ƒ#)ã<~•&ŸŸ˜ôã¥Aq 3°\'$ž*Ë«Ž~¤sŽ´åRGZq8íš.#Å*€IíN+»½1~SBwîKo2\0kÓ|§ù« Ž+Î,Ð¼Êc^Åà%Ku9éJä7¡{ÄÊ-­6*ã#·ã^=¬Ì\ZIMz×çÛnËÜ\nñíQÁf=Fhˆ¢Ì²zœþ5IW|¸Rzõ«R¸XØÎ:S,\"ßr¨Wq.Ò›4géìáÕ‹ÃV³Áa»>µ÷hÚ¾dý4¦x2À°ÿ\0–@ãõÈÅ#>¬Š€É<šcÏ \nXÓ#š·\n(¾•¶ÑO‰ŽgÛŽ•³à›n‡ÐŽqXúûùºŽÜÍv^€$h}hFˆô]Dl„ V~Ž§h=¹­&û¦®\"L§x Ç\\õßü´ü­nÜnÜÛ«ô*+ãÒî|£ûbkÙþ¿RøÜ›kó&k™YyË_}~Ýþ hôI-Ë\0YñÅ|hÂ6lò\ri>…‹,Å2¹)ãüþUëÞñõ½„À$\0y#*È¡»ú­:LXÚrâ®6[cèy|m\0³wÜ÷5çþ-ñTzžŸ Þ/B\rpO«\\KÖv{æ«6ç.O½[iŠ:ì0nä;ŽO­Uš-¬5jÙAsì)?:ú8Ôu`+%ØQgÝ_±®†!Ñ­Ü\';G?ZúýbÀØþíxì­£ýÃv¯°ÝŒþUôÛ,v²Î)~ÞZÉ‹MkrH/Ò¾ÐÔ°HÎO5õ¯íå®,º¬ÊsÎ1_*è·ñR¦SzD†\0 ä×¦øáƒjÃÏ»RTôZá<)›©BŽ»—pà×Ó¾T±Ó#!s1ŠÕFä\'sŒÕ>iknÈ#hÜŽ\ry·ˆ¾\\é;žeLg¯£nociUdMÜzV/Š¬!šÝ¶ –†Š>Oœù%‘†íUÏ–ÀcñÍhø±ËZºˆÕÏd”*œçŠ•©èkÇ<Œ[nOëNt|e#Þ½SáwÃ»[«1qv»‰®ÏUøw¡j0IaCü\'¡§gØ£æÉòá¶Õ\'mŠMwž+ðÖxWc4~VµY¶ø|·Z[NFni¡;U+«“ƒœt¤†/6tSÜW¯lÖÖæHŠ”ã¥&›\n\\jP)û¥‡ó§r­Ôû›ö^ÓE®‰„cåïÑÝ¢±9ÁãcŽ×Ã1‘ÝGò¯Fû[,§àž•”·<öÍÔø>B•\'o~~Ë(žLgœ×èÿ\0í#à«¯x6éa¤u€ë_œzÍ“é—²Ã\"¥Š²‘ŒJ.Åô/9üÀf³nl¥BÜTö^!hcÚyÅJúÚ°,@­‘6îd4L¤‚9¨dc\02qÒ· ¿„œ²‚(™­$CÅBCG*ÑúŒ\ZaP=k¢{KiÁÎ«¾™ÚxúÔØHÃ£­§F¹Ãz…¬yá°=é”Ê„ELÖ¬h4ß³¿÷OåJású¢Š+30¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢ŠF`ªXô€>$ÿ\0‚øµtÿ\0Éf$ÿ\0[…Àú×äv©)–w=yë_¡?ðRµÎ³\rˆ|…$•üëóºéØ»÷æº–Ã[™ÎIsžµ]ÎXÔìrIÍW#“M^Â[±…rN½V“ïsïVê+òƒß5šeËb¾1HÌ–€F\rhb6•z\ZCÓó .Ì´Ø¡Þœ«œà{š@1RFáC+CzTŒO1¼ÍýêUŠ9YŠ’1Ú³¾vîù>´èÆtÎà9ÈªK¹Iw4¬Gç§LUØÓ~úú÷­8Óe©úV\\*|évyÅ1“îã§£žùúRà\ZMœæ§BtM=~îizS3œŽ(@&-×Ž‡Š÷Ù¤:xb01^)á‹c-ÚöäW½h6»4¼ƒÚš!œoŽæ]ò\0qŠò[ù3!ï^‹ãë’óH™8Íy¤çç­‰V`3ûÖ‚,Î¡â++u—™FÖ²®*Ë1ŒZï>i\'Vø‡§&Üª¸cGRúŸ®³Ž4ïÙŒË1øq^Î‘	Ï¸o„¶ÏÃ6Ë€\0@8®üª”MfÙ)\\UŒ*\Zc¶È˜gµ>(ØŽNi·©²ÒCžÕ	2º<ïöI¹ÏÍ^‘á+<Ä½‡çv¬º“V¯Yð¼!QqþÎ*Ña§D\"ƒŠµL·]±O¦2æ3\\î¥ HecÀºã×Ú¸ßÍäi·œ|§¥\0~t~ÞzÒËªA6IbH¯‘­¢YA\rÖ½ÏöÀ×?µ<~ð‡Ü‘d`zæ¼RÚ #Ï­Rõoâ•#ÛOÇ<ÒpÜÓ¸\\L1¤U\0ú58žjEQõ¢úHŠüÛNj÷…­…ÿ\0‰¬¡+œÈ8üj¢ÀÇµtÿ\0	l´<ml d«ÄÑÙúcðKK?\nÛ»O–2z»(‹K¸9çmr¿\níÚÏÃð¡ç\n+SÇwÂÓC¸f=Ò‘Gåçí“ª=×Žä„œªž?Zñ@Y³Œs]Ÿí­küC½;·ml\näôCå[7|ÖVEHét;ÿ\0±ÝG\'u5ôW‚¼Gi¨éñ£H1Í|º$9\'9÷­]\'Å÷ZA>LÜzf·ƒ¶ŒÊö>Åµ·¶òËI20Ç\\×ãÿ\0Yé–2l•~QÇ½xoü.;å‹nyÇ\\×)¯xÂ÷X%¦”‘ýÐhmX¤Ê\"½:Ž¡,ää»YVÏö{”cÐ\Z$¼ûÛJâð»Àë%dCê‡š„7Þò¢”,…0í\\ž­6«á\rE¦–s,%°\ry†<{w »ä,˜éšÒñÄ»n÷ïZß°•ÏzÐuý7Æ‹ÁFCÔUÏé0hZ\rËE›x¯˜ü?â›­&ådŽBsÖ»-câ½Ö¥¦µ³¹*Ãš\ZVúN£ ’öfë–=*ß‡-V}fØ>qüë\'Ìó&rA*Nk§ð¨½ñº¯PÃ¥g\r\ngÜ?\n[øj£å]‚Ì¬ãå¶k›ð%¹³Ð 8ê;×El1ÉŠÊ[ÈI[CµÒtËmgOhæPù9á?bÍÆ—RÝÛ/Ùgoœ´c¯xð½´±a€À5ÜZ’ñÃ8õ¡DÒ-£ó3_ýõËWsgv¬£³¡Íp÷ß±¯-›#ªúf¿Z¥Ó tý+:M.Ïæ4oÂ‹±©.¨ü~¾ý›<k`_\Zs°ÔÖßÂià‰t»€GH¯Ù|;¦M‘äÆIö¬›ßéwJA·FCßh§v5ÉØüj»ðŽ·f?{a:¼†²ÚÆò3óÃ\'ÐŠýxÖþèwÁ³ˆŸ÷qúŸÀO\rÞ£gN„¶:”“å?,Î@Ãa…W-&9ÉZý Öf/\r]«a\Z·÷•z×œx‡öNÑSsÅ¡ö§påLø§9åŽiVé‘0+é­Sö]…\ZO&F_@ErWß³uäa„O“Û4]’¢BQEf@QE\0QE\0QE\0QE\0QE\0QE\0U]Rao§\\HN¡9«UÍüDÔ†•á\rJrØÄGð4ã¸#ñÓöãñiÖþ)j(pˆì¯•.2Ûùæ½cöƒÖÎ·ãýfçvíÓ¶9íšò98<bºWÂR*ÔR}ïóïRÔN»Nzzhˆî0ðµFådB7bžçjýéa÷k$i~ƒqÒ›JG¾h ƒÏZÑ»‘®Nr)Ä~T) ô5’K–âê6¬Å\n´<ŽOsUúU¨Ô@…·+8—ÑIæ)8Æ(µS¹”âÀ¨¼ßùeösŸÂ¯i°Ÿ5T|Øª(½tž]¯·ONk:1Ö´µ_ÝDUF{sÞ³#êitbèÉ\0Í\0dûÑSwg;úw5(”Fce\\ãŠb¯aR³|¬)‘ýê=	OC®ðm›Ip£Ç½ÞÊ!o¤‚Ëü=+È¾Y™¦U’F+Ú5\ZÏFlœaj‘HðßIþ™(\'©â¼þS»qõ9®ÃÅ÷®åù²T×çh#¡¤†ŠWXÜ=q^ûû\Zè#Uø†%`\nD cÔ“ÿ\0Ö¯\0¸$Èr1Ž•ö\'ìá¯·ë—7`E>£ê~xJÃìš=ºê+u¼wTZU›Cc\rŒ(|\03ŠÎÆqó\nl\\U\rjc«çŠÒÅdxŠE[F\rÜRµ‘KCžðõ¿›x[9ç5ì\Zˆ$@c9æ^´ýæ{“Ö½oÃöÁG#4!XÞŒ|´§îš\0ÀÅîš±õ3nr]ýkÏ¾(]}Ã×n0§šôÃµŸØWž|M´kÿ\0\\Æ£$ƒÅK¹øïñ³X:§ÄIØŸ–Bãîk–µÝ°ç¥nþÑz÷†~ ê\"x^8ÚBÊì85æÐx¨Ä6“œúUÇU Ú;:nÑž•ÍÅâøÀù¹úÔëâ˜›<õéŠ(Ø,ÇJTaŸ\\V\\> ¶•›-ÇåSG¬Úï9ôwEsõGÇÝ¯Rýš´Æ½ñ˜ÁJÖ¼‚mrÙPª°\'ë_LþÇÞ\Z’êÿ\0í¬˜Wq·ŽÔ\"R±úá8–ÓH·P1…ÊüdÕE§†nävÀšì´õò­#W‰þÓZïöƒµ?tßÊ¡„OË¯ˆº‘Ô¼c©I×÷§¿½Gc?•lÒ±5Ÿ¶kRŸÖ¯¬ÞM¿={VØÒ^EÉ.çmT{ò3‚úU9.K““U%¸\npy§2-sGíru\'4Ç¾lYm~Oª6»ÊòØª¡yî†OÍT..÷7cëUžè)#5FYþrI¨h¬ùïš³o*îÎî+)ò:\Z³À–É½Uú¥Í¸nb9ÅMæCY¶Ò*H©Öè1äcÞ…!iÔÐ¶Ÿ¸¯Cø?™âxƒa¾a^i`õ¯[øb.uÄnáª–ºm¶46K·P:(Öx{NóäÜÕÍi\'Ù AýÑ][].¥Ë ;v.k.‡Cªx»Kð–û‰Q0;žµÁ^þÒz-´Ì‹:qï_~ÐŸ®õ\rrm>Öå•ààôö¯\'Ò5+Ëõi¤‰ÏRk¢œcmI³?G­iaþ¹Jß´‹rØ\0gÞ¿;?µ§ˆ“ö†SRÃ­Ý‚vÎÃëE¡}©ú9eñkIº ­Êóï]¯Ž´ÙW‹„bWkóbÇÅ:µ¿\"æLzÜ´ø­Ûò·6=\rR„P»?CeÖlî~o9nMUkÛWÞC£Æká(~3ë¶ƒ<€¼jÜ?5ˆ:Ìä{š—E=˜ÓgÙ·M³m#ŽµªÚV{×Ëq~Ò:Œ\r—rqêjY¿iÛ–Bi{Ñ6{~«¦®I$\ZÁ—L]¹šñ‰?i6Äã¾ê’?ÚÙãËŸsYò´Zv?mh¢ŠÈ€¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¯ý©<D¾øYªÌ[ÊoäkØ+ä_ø(o‹HøiqfkL6~upÜùã‹ï·k7’œüÒŸÄ×%3¥zš×Öî>Ñu!ÏCXï\Zå½k¡lWr«0ù‡5êjY”AQCš¨‰Èê8ašcíÇËRIž•˜lÛŠÅ\Z^Ä4¥‰\'ŠJ\0ÏÖ¬Á sAu©ÒØÙü)Œ›\rß…Bµ¬;0¶PÌÙPF;Õª¯nêK3›ÔÕŽ«ÁëÐÖqØÒ;D6¼Ÿ&ozÓÑS3äŒ\0:zVtaðCßJÜÐ¡ÆçÏQG@èG­8Ê¯ÿ\0]gGÐÕ­]÷Ý¶¢µˆ999·­ °;#£vzVoL·#ô§*ö©BíBÐ…ybEä})¶ƒ28©\'@P¶9ãNÓ\"-05{¢zž»ð²Ä4ˆÃ\'ßøÎïìÚS¦0Äbü&±ÛîaÎ]ø*ÅjÞ˜¨#©à>!™d¸›ŸZçXæµµ—/+Š²1B5E\"»åÆî½Í~‹Á>4!m¤‚¼É&ìã­~w[/™y\Z¯ré_¬_±?…™àËÚrcSÅ#>‡×Vó,ø©nRÝ\Z»Íd˜=,Dœ\nç¼Pv(R{×S\0mÝ«‘ñ4¾mÂ ìi]Ñ¥àØ\0ã“^¯£ dt¯;ð}¦Ô_Â½\'MMþ•Hh·HßtÒÒ7Ý5H›9ÁjÀÔíRæ	†A»sÞzV\\¬q©èÌÿ\0f=#â42}¢ÕZSœ8ê+ä_Á>gŠYŽŸw\"€x3_¨w(ŽH\"²¥°‰Ê©?í\nÊÍlËSî~Fk?°ß‹¬Ì3, {\\~©û)xæÁ3\"ŽêköZëÃ³!&%Ç°¬{¯iò‚Jß…R”‡ÍÇâ¾¡ð?ÆºZ¹}*àã¸¬ð\'Šá|6•wŸúäÃúWí]ïÃ=.pÊÖÉø¨¬i>hÅ÷µ¢~\"ˆÎQÝÜê~U|1øâ¿jpùÖ[nšD#\"¿Hþ|#ÁšT1˜°QFI¯JÑ¾iº[f;t\\z-t>RZ¡‘Çªl—`i„Q°î|­ûbëeðuê‡åÆ¾¢‘·+Ö¾Yý¯´u?j\0ÌU	\0æ¥±SGæ³nº“Óÿ\0¯Z2³†zv®|ÜµË¤ˆUàƒV£×Q“\rÚ·E2y¥Æåýjœœçó«Q·”mõ¥+nàóùP¹”nH-ÐóÅBn\'ç5¯&¶°ªi?x,Ÿˆ¢Í‹Ô£$ØÎ[üMUó³(=\0«òèò1áÆ=ê£ÈqFÁè.à¼ç$MƒéP¥œêÌJç>ÔõÀÃŒ7z6ûš	p®p äÔÑÆ¨F¬[åÎjÔ;Æw~’Õw5-Iò¾†½Ïöv‹~¢¬-º¼ßs«cŠú?ög…|Ýàt8Íi×Úâ rTâ§ø©{ý—á;·ß°¬&¬ø_“Œÿ\0“\\Çí~¶þ¿9Áòø?¬Eä~lxŽñõ?ÞÜ,\ZSƒøšé4y~Í¦óÆk”`{+)îk¢Áÿ\0]mÐi\n×ŒÌÃ8«6’äoåYÊ»Ž+[N¶ä†ã(,lÚ²•%‡QW`pÃ…QT!@^•nÙHÉíBØ•¸’K¸2ãYÕv’zÕ©Öj¯\"ü¼6j¯d$ÝÌéÕšÌ¹·GVn†µ®#ªƒ´äñëJæ‰jcOd£8äš¢ñpqÒ´çWW%yõIÝU+ó\Z¯QlG”QEsQE\0QE\0QE\0QE\0QE\0QE\0ù»ÿ\06ñg™-¾š²ñ»qôÏú=q\'“o#ÿ\0uI¯Çø(\'Š›Xø=¾ýÞVF=95­44|u{Ë¿µP•Ô?Š®]}óÏz§,@î Ö¯a«ëbžíÅû¢¢©ÝNÒ1ÍAV¶DG¥WewÅMæzb¡p­b´4µÈ)Ñ7–ÙëK°nëòúÐê¼l$ÕhÌlÑ;Ê7sÒªã½X¡Gàvªôä:-Û†Îµn™\nª©ÁÝÏ&žHQ“Ò¥—d(5ÓhqF–l_¯ë\\´.œà×_¹ƒKÞøx¨`În÷]ÌAÈÏûx›r±_–««ï’CïÍ]·“z`œ‘Kv-Ù<}éõ\Zš¤\'žâ{•çL£zŠ·£Aþ’€Ç#ü*„×²žÙ­ÿ\0\nCç^&ìƒÁ«¸ô>‰ømgzr±¦9®câýÚÂW xOO[}1ýÚñÿ\0ŠwEî%V|…5$-Ï$Ô>ã×\'²dÊ«zWnÿ\0ÖŸ§øÕF9&š4E¯\nY›ívÒ2ÒN«·ñ¯ÚÙ“CþÏðm¢í¶%ü+òàÎ’u?ˆ:T(¹ýðoÈ×í_Á‹/°øVÞ01„QRö$ô@´ôb‡\"£PÙäÔÉjÍXL‘™Œdã8ï\\N¨LºŸ>¹®Þå¼›F+ŠOßêŒ}\rNâG{á4ÄIí]ýšâ­q~ƒ1Ò»ˆ“Ë@µqêkŸÓª¦\"&ÅP#:àå\\×ã_ÙøZÖG¸‘T¨îkµÕ.…¥œ®z_?¶WÆ˜oäÓm\'+’réÖ·â/ÚûH°¹–¹F ö9ÅdØþØ\Z}ÄáZu ž¹¯Ï¤»–åÞG‘™›œæ¥‚W\\°ñêkX¨õ2jÇé¦—ûOè×1€ÓFOûÕ­Ç­w¸Œf¯Ë¸õk¸ŽRwZÄÚªü‘ÜÉÇ£\Z¯g\0»?Rmþ/h7#‹„ÏûÕ£gã­\'P;Rå?:ü±Æ~ ·RÄñ[ZÆ¯è“×NÉ‘ÆŽH±Ù£õ>Úâ+…Ý†¸4\\¦Tö¾Xøñí¼B#†iIb@ä×Ó°ß-Íªº6íÃÒ²jÃNú‘9ÀÅq>:ðÌ>!°š)\0*F0GZì°[\"ª]Úð[ô¬Ú¾…-Ïo‹_±Òê—÷š[}™ØäÆ ×ƒëŸ²¯Šô¹%(‰*©ã×ëTÚl+X{Šåõß\rØ²–1)ãŠ•)-ù¢÷?$®þx«O:t„zšÃ¹ðWˆ¬‰a0ú)¯Õ‹ïiÓoðÞ«\\ýïÃm.`ÀÛÆ}À­c7ÔK”üº{-VÕO™m(ú©ª¿jº‹;‘‡ûÂ¿L5ƒZ5Äm›h‰÷Q\\†§û9è7ŒI²„äóòÕ9Û ¬ÏØõYAÃ+ô¥mW5ö¾©û.h’Ùj¨Ã¦ÞµÇ_þÉÖO#,€zQ§¸‘ò¸Õ†ã¸O\Z >Ÿ•}ª~ÉÏlÐ\\6ïB+“¼ý™uxƒ¥R}M]ÐùdyHÕc=ªhµ]ˆâºíGö}ñ5žâ±	\0ô5—oðgÄ’Oå‹FëI4ÅfEg:NÁQOõ¿ìãáƒoc¬¥IÁ¯(øoð\nüÜÆ÷Š0â¾ÁøàõÑm#‰P)P­1ö\0žÀW~Õ\ZâÛxBé’Ûp+Þ4Í3Ê¶$úWÊŸµýÛE§´jr¬p@¬ã¸‘ñª óKnä\ZÜŒ•0{V2|’BkUz\rk{bÅ±ùaÅmØ°\0Žõ•i9-Î+VÆ2\Z#N¿éZ ©æ«YÇ”`y¬ÛÀ4›îJ\Zëµ[Ò¨¹SÓŠÒ’)3´\ZÎxÙÜ?J¥ªw*\\m#p+5Ôe…_š-ÅEà~uŸ&îp*Q¢Ñ•.Êò\0ù¸æ¨4yéô«–fÉÏ½@àá°0E;‰YŸÑ}QYQE\0QE\0QE\0QE\0QE\0QE\0dø²ôiþ¾œ6ÆNOã_†Ÿµ‰¿·~\"ë31ÜÌú_²Ÿ´?ˆ‡¾êÓ–Ú|–ÁÏµ~üGÕÎ£âéÉ/ºV<Ÿs]ÖƒG+nsÎj¬²críüjv9$ôªoó1çMj;èDûˆ>•LUNI¨j¾ËFÈå@ÍWFòØ÷«-»¶*\'M¿JÉk™v²â §6`¿v‘FMRÐÍêì+HÎ99¦€O\0dûT¯ÅoÞd÷)\'M+“näÖ§æaS60sÒ™n &G$õ©*^æ±ØvŸ›v¢1â»]X›m ž>î+–Ñ 2^¡\\\ZÞñ4çì‰N:þµ˜ŽbÌŒ@«±D\"Ý‚N}j­ª¸s·÷«è2i®ã]Çªã§$Ó¤Œ ÃqKRAÛ´f™+–8$š+VP“kMò¯Ö»Ï‡6jÕ£g‘\\<CmÃ‚wqœ×ªü\"³ê(Ç˜t¤#èx,–ËDÏL%|Ýñ.ã}ôÜç“_HøŠUµÐdù€!x¯•|oqæßKÎrH¨Nì\"´8›†Ý)ªŽHzšž\\±oZ©7oZÑ-JíŸ²FŒ5‰HÊ6ÇÃšýŽð%ØôHÑE~Y~ÁÞkßÏpËŒ2¨5úÇ Ååiñ\'¢ŠÍ’Í(SqàsW	XWÏó¨h\\žO¥M$ÖLHÌÔäÙhä•Ëèˆe¿-ÉÉ®“^\"+w«ÃJ>Óòò2j–â[¡á«P±©ï]5cø}D8­Š¨ìPTXòOU®Øì#ê†Ž/ÇwFÛH¸;°6\Zü…ý¤õY5ˆ÷ñ¼›‚¹é_¬ßn~ËáË§ÏÝBkñÓâ– 5?jr¹Éóˆñ©¼ÄaÚÇû¾WŠ”~ï4Ø Ü±O(v°-œÖÈ*³rÞµ«áëS<§óY÷½k¦ð}õ½£~ô\0wMLu%­¬uãÒ¹\rIãrØQ^«júuÍ³ca8Çæwê‹+˜ÈÛž‚žÅ×À}j[?E±Ub;u¯ÒŸKö½Í—Ú+óközÒ\rïŒìÈVÎ¿I|%döºD*á@¢[ÔÔ—ly9ùk—ñì4hË:¦=MXñ¾¶4}*iw`…5ùÙñçã¦¡©k7–—,ˆ¤”ÔE\\¥v}‡yñëE†GQpœz\ZÍºøÝ£].¿:añ«1g72ûÕˆõíJ?ùyb?Þ5Ð¡L,ÏÐx¾#iWLqp˜>õcþM>t;\'B=š¿?,üi«DN.Žy5§ÅbË3qïMSƒÙ‚½»–ê)ˆp\Z‰Ødr+ãÚR·Æùó®ƒOý¥¥LùŒàFŸ°]Â.ÇÓò¹9=j„’¨cµU¾¢¼2Óö‘¶a¤\\ûÕø~?éò‚/çSì$‡ÌW˜£d>*ìër¹Ø¦¼¦OŽ\Zao¾¾j{Ozk¾zçëRéÉnRhô™4»K„(c_®*+OY‡Ï–¤öâ¸¨>-éLN.cûÖÖ™ñÂð…Žtb}Mgiç¤h6Ö : àñÅuz^Äp\0ç=+Ðµ»TmÙÉëšêtùþ˜­µÈKVöñ§íi3_\\¬JIäñ_YËrÉðyÛ_~Ð7ku¬²ƒ’	éøÕSWd£åé òf*Ãîš½ú¡LÕÎýJ\\Å:ßv\n•àw­$´\Zf–žy<u®†ÙFvôè+Ÿ´àžŸÖ¶íÈ9äVº\ZÖpñœ“ŸJì<=à×Ô¤êvc95Êè¿¼š5\'Œ×¸è±‹-Ê9«JúˆÏƒÂ\Zm¤Ef	œsš†Oh×ÊÈŠ2xâ¸oÅ×R]J¦B\0n)|=ã9­®7<™PyÍRŠa©­©ü+Ž#¦LxÈ¯0ñ>œš]ÓÆ„µï°x²fÍ£QœŒ+À¾ #C¬ÎdSËbŽd¾ÜÔR†œŠR7“Šg™†pH\0b¡\r+Ñ•QYQE\0QE\0QE\0QE\0QE\0QE\0|½ûyø°è_.¡G¤M¸=óšü`ñßh¾ó÷˜×é¿ü³Æ(4Õ“ïHÏnkòçP›|Œsšé‚+¡I‡Î1U\\Œ¶rjs:ò*³Œçø¿­p{†cßµGŽÔáƒ¸“Í6´èÁ™0JªäÒH„//O\n¬2BûýuŠ\Z½Æ\'pÐ†~^”gœãŠ™ÍB;Š­‰I2ÝŽ)±’XmûÕ,¿r?¥:Ùv³ç¨â•ÞäÛ[…w9$ÓË)b¤ŒúRÒ\0YùQÐÖ{\ZìmxuŸw¡ÿ\0?ÎŸâŒŽªÜcœTþˆÅ¸äõÅdêÒù·²{qHCmP’H;@ãŠ¸£¾3Tì›æ#=E^µ-¶B¯®E2Gê{\nUêqÒšzšhijGo!‘°W8ï^ÓðzÔ™Õ¶òjñë8·ÈªÇ<×Ð?´åXŽ8Ù\'aã›ß\'G‘KrF+æ?Mæ]H3’\Z¾€ø£wök\0òGóŽ«\'ï¤$ò+(Q6w¿®{Õ|ŒšÜ¹ËÔ(<Ç\n¼äâ´‰Q?@?àŸ>Q¦ý¥eßq?•~ŒYD\"‰qØf¾2ý„¼<tÿ\0Ø»IPOkíNìZÈË¨ðs‘éW`ÚÚª ùðjp8\'8ÅHF7Ôç¼W>\"eÎ(ð}®öVÅgx–]óÏ®“Á°lUãŠú¤E²qWêµ‡úª³T†Jín†®Õ;’zö¦5³<?öˆ×àíA³†·ò¯È]bo·k÷Óîi˜þ¦¿R¿kýMlü¨°n±â¿,\"a-ä¯êÄÒ†à¶/ª*Œ(ÇÒ¢fXwÿ\0õÔÝ©¥	\'ŠÒ,D3I“ùZ¦’	KÀµ\\sÅ\'¡š¸á3“Ë·çO0…€¹j9jI”÷g¿þÊZ?Úu–ŸnFüWè.šRÓ9!kâÿ\0ÙG\rLT†-œ×ÚQÛböŠaÔñŸÚY:†oNÜ!ï_–:íûê\ZõÔ®Û‰”õú×éígª%§ƒ¯8b¤WæŒcÏ¾•º|Äþµ0.;¶È<•Á©ˆÈÅFv`ïV`…Y	e>Æ«V\Z²³.WÇÒ³î	ównŸJ×š=¹ÇJÍ¹‰.qÖº	ÔU6\'œûŠÒòaÒ¡H¶“µqëV¥b­ÌPŒóQ<åFK‘Vî£Û’SY×JçšZ÷¥Æ=ä¡N&céšlZœ¤ñ1È÷ªr1Ub>lTowÞ@î}j¹˜XÚ‡WºSÄìqï[Ú/‹o¬eV1ük+BÆPFÜô¡0µ«þüJ{õŽdÉ\0µô¨ùà6îZ¾ø_tñjQ”$sÞ¾ºð]Ã´Qï=†\r@zf§wåiÒ0<…5ñoÅUfñ\rÒ»rµõ§ˆ.\Z\ZbÍÈS_\nüRÕ|Ïß€só\ZªBG$Ë5ü×,Oó©ª’–fcWTœñI”´,Ø¶\\úãúÖÝ³à§zÇ´ÆXúbµ­$Á+z‘#_L»6Ó†=¯rð†±m¨i¢q†\\u¯…‡5­¥x–},Åi¥ˆêwÞ(ødó\\I=©óó\\¢|>Ô–SÔÕÑi6Ä#”öïN¼ø¥o\Z0UÍ­YÑôoì-9ÚWÁ$“^-ãM@jZÄÌ¹(	¿âïˆ·:£4HvGíÞ¸)®JK\r\ZíµJ¯/\0ó~÷—s`–£“Î*-¡WÓCú;¢Š+0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¦Êþ\\NÞƒ4êÌñ-à°Ð¯g\'c?Ê„ä¿üCÅÇVñü–‚MÉ<}M|ItÀ»Ò½óö±ñkõyKîb£ŸL×Ï³IÇ½v%tR*¹ñQ²ŽÔúË¡æ’3C#¨¤¥ö¤$J%#Tˆå9õ¨ÝM>O½øF\0lî?ð*„SzõÍIáÆìTxç,L±¡\'’i½Œã½È™\nžF*{vÜ×9ªå·““O‰Ù	Ú3žÔn‰NÌµJ½x¦«‚0¬	§Â¥˜‚OqY\ZžVy\'sX,džV<ó[r0ŽËqÅsãælf’,EŽjå°ùZªB›³‘Í]„œœšKff·lr‘JŒŒ‚)OZ*’±ªEÍ×ý%6ö\"¾ˆøxßdÓÆWŒ×ƒxf-âqÜWÐ^\Zmô A<Š–fsõS*y¼3PmÏ!ê_/“Ê`g¥yeÁœŽœÒ‰q2Ûîš—D¶ûV¯m	-\"¯æj)\\ƒÅtŸ	ôóªøãK€àÌ¹¾õQØHýpý”´XôÏY.Ü¯¡bu#ƒ^]ðSFû… \0Ê\nô«ttëY¹x@Íœb¬mÄ,ð­$?r‹‰v[Iž˜¬¯w¨ZÛ¯J_P+é]Ï„÷cJáo]j­Žy¯Mð¨H–©vvK¶SS!]±O­‚³/$?½ÛZu¨%cØPÄ¿·Wˆ\r¯…î!\r3 \nüîÓãÜîÞõöí÷®¤¦+A\'!Éâ¾4Ó£Â“×µ(¶64ûspàc<úWy£x0_ÃÌx8ëŠæ<1³vÒFö<f½×Â±À°B$\0©^H­¢®JÐóoÀ’Ae!e¾ª9¯7ÖôÅ±*c9¾ ñ6¾\\¡@+¶¾~ñ¼I!A‚	À©±V8ÈY†wŒj|¯–Ú–Ä1Å-œ]Bº–p¿­%©)rþÊ:W•¤[³ÀŽõõ qöROaŠñÙ¯Eû/‡¡8ÁÚ;W¶Ý…‚ÖB„TÈ…©ñOí­®lÐ¦„>7½~µðŽ•yZúóöÚ¾O4B­ÕºßUòv‡É\'+íN;XÙ-\rû8ö¡läž>•`(QÆ\0ô°DpÇ­NmÇ÷Óó«¸\\©\")RMTš-‡nsÆkIárâ«½²»’s“FâßTgìùNF}ª/!?(æµ…ºmo–©H¡KN3G¨ýLkôòÕÁv¬;¨ÁÝÇø×E|¡‹×uä\'ÓšB2.	XÛJ¨¨ Ö­\\mÁ\rÇûXª”˜™=´¸%IqÆkONùœã‘X«Ö¶4¥ÉôªŽÀ™ëSþ&1dàg5õW„eÑ _/|-¶Íò7P¢¾–ðäÂ2™ö¦ØO5amá¹Û qùWÀ>/Õ\rÞµ|ÞfAÿ\0:û?âÞ¢¶þºÜÝ#\"¾½¹ûEôÌO%Í]7ÊU´6té1ËU”bÅ½*½”\nmˆô8Í9ÆX£q£ZÐ»Ÿš¯ÄÄÖ=¬ß6ãÚ´‘þ^\"¥hCWV4D ¦Ð²\'@Â¨†È$PdÇ“rûÈy5F[– äð;Ó<Ìvª×gäàâšez•\'“s±\"³¦6î~j±+üØ=ª»m*ß-;hÈ‰›M.qÖ•ºñÞ¢+œß7j”ã¢?¤Š(¢³3\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nóïŽzàÐ¾js’ò›ú\Zô\ZùÃöÜñ8Ñ>_FcÉQøæ®šÔhüsø³©GÅ:„Ìû™¤bO¯&¼êár¹ÏNÕÐø–çÎ½‰êÇ­s²ÈŽ˜&ºº¡G&3ïÞ¥¨ï\Z• £¸„ä“IG~¿…‘±Q••¾jNTÓ™·n¦+Ds ¥åÐŠJBqCÐÆ¡É¶ýiaV$ì8ÅE“J®Èr\reÎŠE¤‰UX)Îx<Õ«ùã>¦©@Îc8\0Ó&¯éD–É9%zÔô4èijÌØ&yÿ\0?áXéŒóW5I™˜)äûÕHúš:B{vÛ çƒÅJ·@õ~µZŸ<À\nîÍJd¦ZIUØ€zR†ŠŽ¢“Ê_3zTÿ\0Z~ƒùš²Î·ÁVÛ¯£y½þŽ×F9a«Ä|¤Î¿Q^§©ß˜´¶ùò1Š†Aäþ6»ó®%»šágmªÕÑø’q%Ô¤p3\\ÕÀ$|½3BêTJR¾âI95ëŸ²¾‰ý«ñ:È‘‘9÷Èÿ\0ë×È3ÁéŠú{öðë_øÊK¦BçÞ›øEÐýVø}iö_@˜ÁÚ+¨‰NI«/ÃÖÿ\0gÓaN˜QZ±°ZÏ¡ÈÆŽ•_TGg\'¸©àmÊk+Ä“ùVoÇjÅnQËécÎÔ]³œšõÏÄ<µúWøXo˜îà\Zö XÇkbQº(¢ŠÔb7Ý5‹­Î`´E³!Â×ã[ñg£Ü9 )SÖ“\ZØüÀý¶µÑ{ã‘¿Ôø|õdLhx$u¯Gý¥5‘ªüL½Ë}ÆÛŒ×œ@àçÞª\Z¡JFÆ‘¨%œû‰â½CñÇ“oå£dZò’ñ…õ547/ù~_lÕ­ž¥­xá¥ˆ¤rÉŒ×—ëz‡Ÿw!ŒÕio$“$“TË’Ä““Ò¥é ÓÒÄ‘rqÍixFÓí¾%²ÌƒùÖdGƒÅu	mMçl”íj1Üýø#§ýÃžŸ ®ß^E§JO¥bü3´6Þ…@ÇÊ*ï&i’qòšÍ.‡æïí‹«¯ùA²ªqúšðíÔIñ·ñ¯Aý¥µOµøæåÜzátC²î[šµ±¡:Ç2¾ÔÖÍ¶™t;FÜ{U4j\n³ ¦½çEƒE¸±UqwÅW+z¡\0a(0ÀƒêEW[wbG¥}\rá=xŸ	#<b¸‹ßY%Ã„?.{T$ú…’<ÍlŽîžÕFk0³É®×]°K,¢ó\\¤I$Œ\0¡ÎêP„ã=+—¼S‰r}k×-~ÝjÐËéšçµ¿…:¤Ìh_5eXò[’|Â3Ç¥Uäwýk°Ô>k11cjüJç/4[Ëùð2cÖ„	2´l+gG!JsÞ°GZÝÐþgPyÉÆ?\Z¥Ø›X÷„‘©}ÁHÇ­{žŒû0kÇ¾Ùì¶\rß­zÆ™#+.OJMXhÉøã4‰àëÉŽ#$æ¾ Š|Þº·fÅ}÷ãMüCá»¸9mñ+áøvïÃ:ÜðO!V88ëR˜ŽžÊßÍ³Ü€cš€«ÆÌKt¬]/Ä­Df­®½€ï#ŠÑ\r\Z+pÊy9«Q\\’¤)$w™±™.ÑéWío-NrØúPJ/CtÇpoÎž.ˆ\\“LŠkWÎõ¦ùHäícÜâ€ÔG¹/ž\n­,Û•†î=*imÙŽªRÀÁN[ò¡­ÐäÉ$šˆ±9É õ5IÉ@ÛzÕ1Z™`Î›I\'éTÚLtäÒÝ©…‰Ï<UEŠ×Üþ–h¢ŠÄ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¯‚ÿ\0à¤Þ0šV\nø.Ø zz×ÞnÛ›Ðf¿\'?à£>/ûg‹ÍŠ>QœçÞµ¦µ\Z>ÔæûEÃ“Þ²$\0;c¦jýË|îzãÒ³IÀ&·d±A¡ÍE»vA8Âž[;†3ŠfG–ÙÅH­3ËÏV&œÁHÁ¦£©ÊäñýêÄ·kÙ‘ËÞ`\n†®0¤gò¨Œ\nªÇuRbq¾ÄœÒ”àoj“fØ³CÚÄÅ\\ƒÖ‘_ÁúÒ¶2x¦ß5¬Æµ$Ù+Ö¶´á±[?­bÛ–ó9\"·,È1\'¡¡ŠW×[®@?tS£ tªS)’à€zôÍ9!•X\0Ü{(÷Žh¯¢ÿ\0gßÙêééut¥Õÿ\0‡«×µ?Ø~ÂE&$g±\r¤ì+D¸rIÿ\0z­Z¨.ÛjúXýˆõfû<î=L×©þÈ¾,ÓšÐ3UÇ¸Ô9/ƒHé[þ\"ÖØÊƒÛµV„^1Ð_÷št…GP¼Ö&¹¡ëÐ«	ôù°£“´ÒæO¨¹Zg¨Ìe•¹¬»–ÂmÏ$ô­k›°ß½·‘OºšÎžÜ‘‚¤7Óš®Œ}—&H>µ÷üÛÃ¾e«Þ²ž^	•ð¯ÙËM°d’q_¦ÿ\0°§†äÒ<)h^3’~µ]½¶-Gj;S(Éªö¯”¬Äzâ±L‚í¿úºæ¼gpVÙ•~•ÑG2ª“‘\\_‹®ƒJVIj4Gà¸L“Ï\\W´è1íˆW–ø&Ûvï^·¤G¶qÚ´Žà‹ôQEXM(E#½yoÆMYl|9y!;B¡9üëÒ¯8\'ŒWÎß´ö¼4¿j/»¤-ùÔ°?,¾%jiªøßP˜Ù”àçÞ²\0½jíàºÕî&\'%œœÕŠ´ì„ÕËQì`8§Fä#íû¢¡F\Z]ß•VÜÍ{¬²]°i¸ç¤ýãœS®zÒÜ´ìLÎV2zôÏÙÏMþ/YÝ‚ë^Qusò­_A~È6qª<ì2|Á‚}*£ \'¡úá(¶VÅ;¡pÄãMuº`T±ˆc£¥yWÇíPZøbðïÚ6k1ÄüÃøµ©\rCÆ·Ì HF\Z­¦Ä1ŽkÄ÷jñ-ãîÈ2ž\ZÜÒÈû8çµh¶4fí‰2œ5mÅwqíY\\­dÙ\\( çŽ•£ÂE$\Z°\Zkw¨1ç1Z™u{ 2ìßf©éíWÔî\\Ž”\'p‰ŸªN×˜œÖ47+or­m^\0›ù\0W1|ã{sÚ¡=Dz5·m41\0°^+”Ÿã4;ˆ’.A¯?ÕoßËtÞMqºŒäùºt®˜Ô°Ñÿ\0kKœ·š¡k˜ñ—ŒôVÉ–4Vb:×Ïs´œ’ÄÕSxÄ`±49&Bû‘æ±^„ö®ƒÃqïºˆž­r–®W¹ï]W…ŸuäyõÔÂÌ¨¾ÚìÈúFk¹b P@À®áõÔqXBt»#v.*Â¦ Dî|0é}”ã*GzÄñ÷ìÿ\0£øÊ9HÍ#;”s[Ñ·Þ½#M‘vî,3Žõ);ëÿ\0±´ë+µÃ*õÁL×©~Ë>#³ócÌQíŒ×èÜFÙ,ªÞÀTRÚÙMbwîúÌ;¿(²,¬â°î¼â-8°{†:ü¦¿RäðîŸpN`Œþ©IðûI½cºÞ<žÄU\\K”ü²}?WµR\ZÞUÇû&¡MRîOâ+õïàŽ“g¢Šá|Aû2xzì9q©Ï÷Eå%·??ˆæO½’)ÇÄ¬AÏó¯±õŸÙ+Gšòã(Ã¦Úà5Ù68ÃdeúŠ…d|éÿ\0	yíÍ\'öÚg“øq^§ª~Ì\Z…¶æƒz\ZäuzÝ–ãä–Ç ©¸ùNd_F}¾´w_¿Ò¦½øm­ÚnÝläAYámI\r¼€ûŠ6%&MtQEIEPEPEPEPEPräZis€ˆNkñöÌñ#k¿52*ŽT`ûšý‘øÅ­.‡àMJàœb&ïìkð“ãF°Ú·Œõk‚Û‹ÌÇ?‰®šKA£Ìçf°¹ÎzUCÎAç5biye#>õY˜/Z¶K#)Ž­Í2žß6p:S;Ræ-!¡ÍœÔs)S¼SÜ©êÕŽrËÛ5š%Ûað0\nùjŽGßLÈMª°siaAp*Ã3y9èjºpÃ·½Kq\'âjB:&V?6EF3†ýjBp\r20	9¬‘KbÍ¦|ÃÏnk[U©ù¹aÅfØÇ¹‰ÐóùUËÉÀõQÍJÜåäÉÉõ­M:ØÜ\\Æžà\ZÍ³PTýk«ð]ŸÛ5Ë(”n- Íú-û\'hñéþ³ùŸ,f¾‘†(äÎà+Æ¾iâËÃcäëQNBädf°\"É²à²‰Ìj~µh–n0`L}(Žèž¼ÔË*·CùÔÛª/C&çÁZ]Îw[\'=NÚÆ¹ø;¡ßnÒ3ŸUÙ¬€g-V \'9©Q[1]£É5Ù‹Ãz‚>ûInáq:ïìgáÛÝÅ-#CÛŠúf;¼Ÿ˜þ”ÿ\0µ&:Ð¢ÖÅ)³ã˜?a-E%p¬Px5õOÂ¿‡öÞÓc‚(Â*\0\0­èn‰\'´-®‘S¶+XÝ{šÑÊ#«Üg9â±Mâ‚FjXï—n2GµšÏ0Inp:õà“QÁ=ë¦¹¿X­¤bý»W˜jZ°—V+œà÷¨Ž€\\ðd›U9¯VÒt¯ðUðÚ£<×®h—GËÖ‘¿HÍ´S|ÕÙ¬ûÝDFÏ`G}t_æ¯‘m=M¢ð.¨œ˜Èçñ¯¦µü«|Õóoí%á¹<SáËëU™ÐYn~R[ßî¸c’H=ëRòÀŒóî+Æ~Õ¼!«ÏÕ» V8`8#5µ,g¹úšÕj…fÎü^ã¨Í!ÔSüë‰%\'??ëÿ\0×©¿…äð=iŠÖ:Ïí<ž\nbÝ\rÜ0ú\næWXÁ;”ý*UÕc\nÁ[¯ZE\\ßººU\\Ò¾µý´õXaãæläzø¢;—º[$8¯¼¿e½9ì´«BT©Ú	&©uCì»;ÔKP¹-|ëûVx’;?ßø%HÆ+ÖŸVòá$¾0+äÛÅ;´Iâ`±ÇZÁ„UÙñ3Ü™¯¦žY²?3]\r†¡å¨çñ®FÒcæ0\'©ëZ‘NÑ·V¦Œì­ua÷¿ZÖšˆÇ\\{×ŸÚ_²KcÞ¶-u2;ñúTØ•¡ÞÚN$žk5ÀH²0k„±Ö0>ökHëˆ®M>£NåíBõp\rƒÖ¹Bä mÇ“RMz¸r_ŸÒ¹ÍN÷,HmÆ¦)‚)jSä±¹ù‰‘5­yã?Zæ/\'Ë85Q-¤3±ÍD3ïHÍÁ=hÎçiDÖï†œs]o„I7ƒœàŠãTí5Øx†ºR}E\\7%è}á«£mcÒ3]ç‡fóçFÎx¯#°Õ<”r2Jí4_¥¥›HïÎ1‘Y½ÁÂ¾*µÐ¬÷I\"¢¯s\\Åïí§YHÈ·*vœ|¦¾jø§ñBêòâK[i]c§­y3jsLÄ³°Ç½\\R\rY÷Þ›ûFé·&å>„×Aeñ»Kºé:ßUùÒºÌð¯Ë1{f¥·ñeô‘;¡­”i²5?L¬~(i×-p£þ[v^:²<‰×žû«óÛâf³m÷.äãýªÚ²øÛ­Û(ÿ\0Kv>æ¥Â=µ?Mí<alêBL‡>õ9Ö¡¹Î]:üàÓ?híf×†˜œWY¦~Ô×±.$5.Ÿf4Ï¸oµ8‚žA÷®~æò-Ðû×ÊÐþÔ^`\"Wýjõ¿í-i\'vâ£‘sß®švÈ_Ê³.mm%SžØ¯\Zÿ\0†€Óæ¾9sV¡øÇa9Ü\'\0úÑÊÇÌzç‡lX3Pq\\õß‚4Ù0áXãâ…¤ÿ\0*Ì§ñ§/Œ!¸S¶AcR×B“?jh¢Šƒ0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(çßÛ3Äÿ\0Ø_õ\0$\nLgŒû\ZüDñeû]êwNÇ‚Ç\'ñ¯ÕŸø)‹>Ááu³‚Ü:ü‘Ô¥ón%$ä\Zë‚Ð¤fK wãŠˆºô&œÿ\0&sÔTD©\rÇ9âšÔ…¨„Œ·zS7QC©ÆiŠá@PwšÍ»š¡‘{f¡9lµ9ö“÷³M GÞš0¸Ð:š)™Û»ºÓ—§=j†-$÷Žw{Ð½é„ó×“–ƒHil®;Ñ¿ŒS¾_jl}MB±¢±£¦€p;f}*°#ÏaE§Š†íòû\ZµØö`šô¿ƒºaÔ¼a` gi¼æÂòIÇz÷/Ù‡O[Ÿ¬¸ÜVObÑ‡vÉ§èê8%Ev1]c9«’ÐåXtØ“8ÂŠ¾·€Å`B:¼PN*T¹ø¿:çMîÎK~ªFEÞå±š°—¡üÕÈ›ñœ‚sJuVéšfiTZŽ	ççÔ€ÏÏ\\‘ÕXÔëy$fDí`Ô·çSÇ­yg€®5à€|ÿ\0­8øƒå?54R;§Ö0Çæü©S[Ú1º¼å¼JTŠ¼NF~Ö˜þ±â/*ÎOÞv¯.ÿ\0„„¾¢ä¾~jÏñWŒ„¬¥ùÅyåŠCÝ3ÝÏ­$8­§üâ‘Æ€kÙ¼5âE’%;«ãÏ\rø­r¤6Åz¿‡¼v°¢þó§½Zèóâœ¿ê+Uñ$j­óŠóQãxåƒ>héë\\Þ±ãu°ùüi\\ßßx¬|À6y®_WÕ!Ô¢håÁÏ×ÞxÇp$?ëYrø¸Ù—sH/ˆŸ\n4<¦[xäÎyÀ¯ñì¹¤H¬ðÃ·×ï3x¦\'Î².¼D¬¬f©i±JOcåmoöYHÌº~Äêÿ\0³Î«l­å±“ÓŠû>M^9AÊƒïY—rZÊ	*¹ªæcõ>Ô¾ëºiaå3\0{V:ø;ZYJýšLz‘_vÜéÖWÌ@çÔVTžÓbbOÊÁ$|ñð«á-íî¡ÍìeUH _q|9†iqÇÂàWšéIg¦|¨ª1è+U¼FB…ŒzU\\†®{5Ï‰ã6Ò|ã§­|aû\\k-un0Ù]õíCÄLñ°ßÆ+Â¾:hÒëÖ’Ë0É—Q¤|¹öÂw}«ãQÊýñõ5“©Ù\\X;£!\\Uvê¸8?ZÐgH—ü3,‡óVâÕ™åç>•ÊÒ?‡õ§-ðÈ4ØÛkÌ¤ßj¼ž!bçô®ÀÊp}êÜW˜ÈcŸzÇ[6ªÅ“ÇŠÇ»Ôw†ÜxéšÎ”öaÚªÏp_ðéŠcurqÝòŠÆšO1ÉéRK+üÊÍß ª’JIÏÍØP\r–,ŒÔ2\\\\´w¦;³ýãšEvLí8ÍMÉ¹4‘ä‘ë]¿‚¦ÿ\0¼k„Œ|ø#½uþ}:ƒ[Ca¦z\\Z€Ü¿>•§q¬´:tŠt®*¶ÜOqO¿Ô\\Ú¸ÏjŽ¥[CÖ§3]ÌÙÈÎ9¬g““ƒZ­»yëóV-Ä¸Aç½[v$ŸÍùwnãÖ•fÜ¹ëYå¹Í;Ìö¬oä=þa¥óqÚ¨­ËƒÏÌ)ÍtOE5WBÐº’ã©¥YˆgJ¤·?\'#-J—Îþ1Ó´»b÷K¢å†~cBÝÈ™Ã}j¡¸_oÎ‘&Ànõ)ö/”¼·ó¯I\rOµuàH:É[ŸUü8Ü®q‚iÝŠèÞƒÅ‘“ûÃùÖî™ñæ\0WyüMp>~ð@SÄÜp(R\ZcúŠ¢Š+0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¤f\n¤ž‚–©ëBÏL¹˜œCÍ	\\ùƒÿ\0)ñrÝkBÉîN£?Züìº„Œsÿ\0×¯©ÿ\0n/¶¹ñ2ùåP‘×Ý«å+‚7þØ¶FÇ~sP…Â6zÔ¤àf¢‘‰Èü)_ADgnj«ö©å8CU•¶æ¢%·ÐJPp9¤¢¨Í·îþï£ý\\~ôçm«îj1Íº­µ%ãmFTžôüàQ—ö®W®Á†9ÛNŒãX´qíNÅ½‹ë•öª26éÛŽ*ã1X›Þ¨Ã&%Ï¥LÐŒF+é¿ÙGI\rzÓŸ˜/JùŽÝ3´\\WØß²öö[ea€ß5K%½.}[mrÑÀ \0©Rõ†r2+ïvyÏµDofJÉ¤mÉ¨¶[òªï¨2çk­bòOÖ£{ãÛŠ,‡c¡‹W œ~µšÐ\'ïšçZìyŠ¤÷¤1ÇÝ¢Á«:ÏÈß7ëTfÖ¶“Î+˜—V*\'ò›.®w0ó¤QÖI­›¿­U“Ä„	Íròê™VþU“6«†8n=ª¬QÙ\\xlo“È¬ïøHÎÍúW!q«n\'æ¬ÙõfÚ~l\n`]ñ¯Šs\'\'Šã4}üÌ—ÎkÅúÑgeÝXÚn¨õ©4ŠV=ÏBñ¨>~†»+Åm°eÏç^£ëd\02q]EŽ¾p>jBq=¸xÆHã#Ì\'ñ¬»Ÿ<»þ|þ5çCÄX‹¹ÅR“Ä$îJi$v×Þ\'h#f2qZòoüpDY$ÜãÐÓ|[ây-ôé[Œ\Zù[Æ:ä·×Ó³HXn=ëH!Ù¹/í%|e`¶}kSOý£ä$yŒ_2y­Ï=iVâEèÆ­$Š³>¿²øÿ\0k %¥\\ú\Z¼Ÿlç\0™>†¾7[ù”ðäTÉ¬ÜGÒFüè²§Ùp|S³›¤ƒóÅLž?†á°$èkãˆ¼QwâFüëcIñÕÌò1îir HúÍ|DXd7¹¦\'ˆägÁaùu¯)ð¿Œ…å²	$Äz×C®§?8ÅFÛ+Àñ3FßŠ­}«Å}IpF;×\Zú ùŽìzµ\\±\0Ô¢Ôm¹GÄ>´ÔZF¹nø®\Z÷á‚åŠsøW¡I®?Z…õ0rüª“®yLß&‰›hãéY“xê>H#é^Ãöµ|ð()\nz•žqá›¨3òœj«ýŸuì!¯q–ÞÖMÙU#ëY·\ZU›evôª‹ˆr2ËqÆÖÕ<„œçÒ½fo\rZ²’Y³xN§\0Â’Vy‹ÁþõV—yûãÜW¢\\øB §\0{Ö=×„Ù3‘Un„Û¡Ç+Ð‘ô¤­ét	#ÏÊj©ÒdS¿­Eƒ•w([dÉì+°ðü4ÝŽÕCKÐÅqí]-µºÛ¦Õ­Vˆ±2¶ÜÕ}Jl[žÆ¬ ÎjŽªß¹oj•¹¦¼§5tß»cÆklù­šÕ¹“ïÕÄ–9ëDŒX”QEf ¢Š(\0¢•P¹ÂŒšÚÈqš\0Š—wËŠJnñÏùÍ¸Õú¥-•hî)( ANGÛM¢§cú•¢Š(QE\0QE\0QE\0QE\0WñoW\Z?‚u·ì\"3Ívuá_µÏˆÆ‡ðÓP!€&\"N:ÕÃpGãOÇtë~6Ô§-¸™[œû×“LIrjé¼oz×šÍÜÙåœŸÖ¹RIÉêk¤ÉŒžõHÅAn9¨dåVl¥¢!üÏóS}î3šR6†çu2š3LQ!@ppZh9Ïµ5Žâš¯Ä÷§n;h?×4\nnïÖž¬0ÀÆ¹ÐÆ‘‘É¨ùCN-Éô¦SH¸ ­Ù·$„U$Ýš®Ùu?J ó%¸”˜nöëU-ÇÎ§ÜSî\0V`8¦@@ ·#564øÌ×1(9ËÆ¾åø§‹-‚	Q_øJ!q¬[©Æ?}åð¾!m B:6ÑCêC‘èÿ\0iùqŸš£iqœµgý£¯5÷`u5šÜ—yÉíUéT¶P–á˜œ±ª­1²i„UÍ¾³øÕ9oJî%°*«ÝàqÖ³.®ÊÎZ‚—‘j{ü°+6{ý¹ù³êj¤×€ç-øVl÷‹†‡Ò Óê„‚¹ÍfO‘÷·V|×!²Iâ©ÉuÁ\0çÞª6\Z/MòÄ\0jŒú€Tb>¦©I2 äâ³¯¯öDý6Ö€s^#½2^¶©ÙÜmÉ?gêwF[‡Ãw¢ÚN2ãX›Åhuº~ Cã#Î¶íµR§†üëŠµœŽsWcº*:çñªCGhº¿ n¤þÕbN5ÊÃr\\sÓ½XŠsü\'ð5¡	\"j@X9Ýü&¾uÖ&ó.¥=\0=ëÛ<yuåé³ç¦6×„Ü±i[\'<ÕÚÈÉüÄþòþt›‡ÎwŒÒ–?»÷·ûŠ®%õX>æ‘Dùýßßÿ\0S%ÿ\0W/ÔJoï£ÿ\0l~uÍ3úŸåJâ¹,.C?W÷©Ó!Fï½U¢‹ÌÏ8¦Ùó‘ÇcZ2bÎçÁú‹ÄsÒ½\nßPm§kÌ|*Ÿ08ú~ußÙž¼çÚ²f´Í·pwqïYWž%ŠÕˆ-ŸÆªj×¦˜”â¼ëYÔ¤•ŸŸjqHm÷ü\'¶ã©\\}jX|mk7ñ(?Zñ§º\' 3Sc»‘\rV¹L®sƒÄ–²‚wVÓR¶¬kÂâÕä‰p³V ñÔC‰OÐÑî¶4Ùí€‡9Y{Ðbv†çë^Eoãk˜Á;ÇÒµ,þ Ê€îl}(P]jG É\rÂŽ\Z«m—p5ÍÛ|E×y«‰ã[yÓ;‡ãISq\Z’{—œ’NŠ¯*’¸æªZ¹$ÇÖ¥UóóÎ’‹E®VBö«,mÐ¥BºlmÆ©äNÌwŠ|Ee\'b	²#X>\0Å)‹Ž:ÔÎ»XŠNNOçBˆÓh€(ù³Ú±5–(¬?Ïùâ·GÏÎë¯·j˜j9»—Ê¿¸&³\\òÕ¡;lú\nÍ\';ª¤sôæ–Š+1Q@´ÕL’ý3Í]½¹… e\\¥cE+Ež‡4Œìç$æ˜Ä¤+KE!«·4½i`uÍ*Ùö {†:ûTŠ0*:T8<Ò*\r&R”QE2Š( Š( Š( Š( ¾-ÿ\0‚ˆx¨Yx*{U“”ŒüWÚûcfô¯Ìø(ï‹Þ[Ód’duÆkjkq£ó«W¸in%9êÄ:Êf#85výòíþÑÍfVé\\[‡j­!;š§wÙ×¥WpWpv³½ØHHÝàÒM!Æx¢™€Õ)SÍ+ýóF~LSø†ˆmH‡¥0\0Açœ®+Ø§a½I¤¢Ž•EZ[§jª:õÅ\\Äq¹ïBÜ–Vå¹ëÖ–?»MsÍ9@Žj:¡Ý|*´ûOˆm÷rWÝ>Ûo¥Â£®Ð+ãoZWÚuÄ8É¾ÉÓ—Ê´AÓA(Øi—{Š£#e˜æ£2Žj¹Ažr}ªtêRó-ÆÀk=îvç©%Ä¾éªÊ>v°èJBµÇ½îGŸzË¼»ÎáßùRÏ>ÀBžk6êã\0–æ¨ÕÐŽ69æ°.ueFú—TºýÛsÍqº…ÞÙg51\Z:í$ä­B÷d±ÁÀúW?is!,sVdœ` ­\0µ-ØÃs“YZ•ãfÉÍH\\üV^¯&\"+Sa£š–a$¬@ïVmebÇ<U-ùsÏ5vÍFÜ÷¬ú‰hhÛ¶Iõ«±‚¯Àâ¨Ûòx«ˆÜ¯SJ¸õ1{²ÔMµºg5rÜ°pPÖ–ž»ä-ßPW%³ø>Ë	\0þ*ñ9[ï·\\s^½ñbm°\r‚kÆndä®8#?­i-–ƒ\07¬™j“÷;?‡­2Ý6ônMuø&i,„Š	]¹\0Š„ä!—ÊÏÍh“ûß¥kÿ\0Â7+†Úœ/|Öl–ÞLŽ’)S¸íKQjCŒ½ãÒ­Û.\0ù·J¤½jå’îÀõj¸ü\"Gká€\n¨ÚwWelÈí\\Ÿ†Ðì\rœÿ\0]uÖ˜þ*OVm™•â\"VÞCì?­yÆ¢åAöÿ\0?•z?‰åÛlÃ?5yž¤änöÞÄTOSš(¬È\n(¢€\n(¢€®WîšrM\"än5|Â\'râ5\"j2§ñš©EìiØÒ‹V™	ùÍhØøŠXœÕÎäÐƒqO™ÌzŽŸ¨­ä}jÖð3\\o…n’¤õ®§vÞû©³X´É%ÉVôÌk2“Ÿ›«£á	®jý÷Îja¢Ì³ò·j¡ÜÕË÷Ë:œÕ:$s‰‘œRÒ‚}éj\0Ažô´Q@J(##Š»E\0(¤çy¥¤Žy „àu¥Ï8¤Ç´\0£ŽE.2	¤\0c)QKqÅGõ)EP ¢Š(\0¢Š(\0¢Š(\0¢Š(ž±p-4»©Oð¡5øÉûux±µ¯ßC¸‘c¯Ö¿^>)jãHð}ôÙÁ\n­~þÑ~#þÚñî­+6zØoMh4xôòeÎzU[†=*i©îj¤„ìlqŽõW{™2çräzS_ŽÞ”pi´\"¢óOò©j&ÇÍëÅ2¢2Š(©»{š€8éR!ù~•¯LVm\\\Z¸QEÆ*Æ¥ÏËL½9È–º™½]ˆªh×$MDÚžÝKÊ£Þ“)žýû>éçíR¹Éë_NA.ÕÛÖ¼3à•`Œ8¯lÜ@8¥±ï±4³­“ÅT’`‘Lº›	Œõª/.Aæ£PI¢I.I\05^IUTóU®%#€ßZ¤òm\'š4iÕ3“ÍeOx7O5=Ä€ƒ†Èô¬;¹ñ¸ŠHV#»¹V.	ô®vú4’Sòæ­Mt›ŸzÍ¸”€XœÕ¤cU‰XÆ{Òý²*¿›• Í,R\0NòO¥;¢Ó‰aYNÓÒ°õ©pŒ|Ý+P”\nH\'}sÚô¹R1ÅCÞãŽæ\\cæ5vÑöîBÝ‹w«öª	nk++3®÷fŒGCW-›+úUºÕ¨X\0Ý½êâÌ^Œ¶AÁ­M1–(‹15“0jôXKI	ÏN+h|G6Ç™üV¿óî~†¼ÅH$pzt®ÃÇ×žv©&OC\\i˜æOö¿JrÖM¶t;sƒšúÀ7×šW—4`¸¯ðä)5üjê¥sÞ¾‰ð¿‡-àÒÄÑ>»\nºhHÆ×ô;L‚G\n uæ¼?\\™$¼¸xÔ-Å{gÄK4ÙÎäñ^ryv=i>È«hÈªíŽ®Ñš©ª—`ZÐÓ—çAíMìDNãÃ±Ÿ,ú×Yg0æ¹­\r1\n®>mµÓX»JÄÙls¾-p£aàâ¼ëR92~è^1#ÎX\nó{Ç\r»\'æ<Ö’3)ÑE‰!EPEPEPEP@ëE*ÓŽ¬GOáhðá«¨‘ÕXã¥aøNÜ2nÏ»1Û+(»ØÙ!ŽvNk–ÔIiœô®¢N#nÞõË^H7Ižõ(:Wg÷¿‡øÔ5ÓfSì*\ZÄÈ4QHj\0Z(¢€\Z2IæHœÓ¹çQNØÞ”„•ÆŽ”P¨¢€q´ç¯jtC$ÒDzÓ•·R5ŠÙŸÔQLÈ(¢Š\0(¢Š\0(¢Š\0(¢Š\0ñÚ»Ä+¢ü;¼;ð|¶þF¿> jgRñüùÎéŸÆ¿[oÿ\0}ƒÁ÷P	6œëõ¯Ç]nãÌ»”ƒ»s]qVC3dn«TÚM¬T}Ú°Ä\0IàU2Ù$ã­&„ô@Í¹‰õ¤¢Š¯Ã6*3‘Ûç8ùGAL¡¿3T‚ŠSÔÒVEŠ§ã4¥Î)´R°¬)ªá˜ÔS©;LcãšWéDcƒC‘Ò£©D­\\Òâ2^F£®sTãkwÂ6ÿ\0hÕ¡N¿0£¨u>¯øCgö]\Z6Æ2‚½æ\"Ø®SÀ]!ÓåºfeääQs4ú‰$Þ`ù±Tfœ.Bž•Kq8U u¬éŸ!¹ÅIi‹$àn%³ŠÎ•Ã;0éR;²nÆÑôëTî$§z’\rˆ.§Æ@nõƒyp	-éÇÖ®ßÎGs\\ýÌÅÉ©¡¢©òô5žÒ,MKrÛ˜¯aU•€4$†Ë{SîåM=Í8sŠbŽ9®kXŸtŒ:gŠè§`±±\'¥r:Œ„Ü>OCGCZbZ½W­Ø!ÇZÎ€žjõºî?7ZÅu:VÊÆœ.2ËÞ¬ÃÔóŠ¦òñóf¬ÂüçQ‹²3—RÒžõ¡3ªÙž\0¬åïSjó˜4™[ÃŠé¦ï©âž0œIªÌO@k˜­mv_:îv8Îk r\r8™³oÂšdš†¡\ZÄpz×Ñzf‡}g¤ ‹ü+Ã>jPÙjëçŒgšú«O×4ûí&&Yv zÕÅhR>~ñ¾¥wS¬™=G5å“.Gy¸¯_ø¹sj#™c#s15ã>igûU‹Ø­})|ÉGÈâ²¡8ŸZÜÑ†%\'«‘1Øîtp#ˆ+zÜ‡‹¥íò†êÙ¶Â{\nÎ;›t8ïÎÆW\rÛ­yýÓn“•Øx¦ç|Ò`û}kœæV¡ìgÐŽŠ(¨$×Òôu,lÕ}[G›I™’e+é^ðM.òL€ éMøÍmmo,B0¡ñZ¸érÒ<’Š(=+\"ŠÑ²Ðîoc,±¶=qTî-d¶‘‘Ô‚:ñE‚ÄTR§ŒRÐO…wHqL©ìÐ´À\n¨îqáˆŒv¤ãµ^\',Þh°`Ø=E1Ás[3X\ržOÝy®få˜™síüë£¸m°“íýkš»N{Ò¾‚hÃŸýkTt¯÷ÛœóÖ’°3íEƒÍ\0-E\0`b€»—µ>œÐ5=õúŠ¼E!ÏlP¹Ç4„8zRR§Þ£aô¤;]h¸?-Xƒi-ÅB€üÍSAÁ$óïUÜÒ;ÔeQHÈ(¢Š\0(¢Š\0(¢Š\0)²6ÈÙ½iÕG\\¹û&•s&q„4 Gæ‡ü{Å¾c=šI·æÁ\0×æ­ä»¥`\r}‰ûyx°j¾6¸ƒ~U¯\'ýêøÞáƒHÜWdFTLëÅ1œ6êi8ÈíLc€y¨HÍv›½yç¥!“\rŠŠ­\"’$#<–ùiŠÛ}é#Š+©ªB““IE $äó@Å œ{\n)íR}\05eG8&œ¬dŠ«o¶zb¬¢ì\\n-îi\'q\'rdû´ÂrM=~éíQó“Í%»ÝŽC€k³øciö­n3·vWƒ9¯Tø+cæjaˆG4º‰ŸNè+äØÆ£W¥¹]§æÍT´Q\ZŒíZI™I89¨3‹Ð†W1$Ök;A\'™«sÉŒñ‘ëYîä“Wn…%ÐG˜*“éYÓÍ½‰è{SË«b9=*•Þ6œÔŠWsnÜsœVÌ˜F\0àŒ:¿váx\'ÍbÜ0.ÅNj3äžx¤¨Ø¡8m¿9¤U\0–4â÷+aÔTq•%Ø6s×Ú•œ¡ä|ÍP^Î±ÄÙêk“¸—|­ÜWA¨I·yã5Ì·SPÍiêM˜ÍhC\'éYÑqŠÐGÊàV}Mzmß ‚ÜÕ¨äÀíTa\'æÇ¥\\r­žEi}.cÔ¿‚¡‡JÎñfª\"Òä]Ã¦*xäÙ×=ÏÒ¸êDÊ­×µiÏ?Ô_{¿9;¿Æ©*Kƒ™[œÔu›%· 0b¾âº;Oj6–â%™ð=ë—\\ôU©4#OR×®56&gfüqY”QY€ø1æ\0Wvk Ñfÿ\0>õƒl3/Òº_ÿ\0¬üj–Å-ŽÊÄ€<ŠÓ¸¹òí›>•™eòsÖ—S¸ÙNqT·4èq\ZôêòÉóqŸÒ¹¦9$úÖÆ¦Ë$²~\\Ö;cqÇJOc*[lyœþ(1Ü}øKqgo§ä+Ï~+ÞIq¯Ìw~è–¹í\'Ä÷Z\\^\\nqéš§«jòj’““[Iè4P«Z]±ººXúä÷ªµ5•Ù´˜:ðA¬£¾ ¢¼/áí6ËÃ&i¶î	’Õáž/¸ŽãVœÅ€àb´eñíä–Ùf*„`ó\\œ’$g=IÍi).€6Š(¬DkL¹QÖªÕísÏZ¸n£Ùb=8c­Tó>|‘RDì¶*½*9lVFmQó…G®bù²5Ðj.LJæõäœñÒ„IE˜Í`f-Q@Q@0y£b–Î(G\"}ÚŽ¤•¤Í)î5ê)´g$ÐM2<‰\"<0ÍMSP\'\nMZ³º/§Uµê\"Š(¤bQE\0QE\0QE\0Ç|TÕWJðä¬Û@F?¥v5áŸµG‰ÓDð=éÜ2#oåW\rÁŽŸ´ö¾uŸjr–ÜŒüMx[ÈªzúWgñ/Z:·‰/î²ZFþf¸Y985·‘KKŒ\'$“Þ’ŒòG¥FÒÄv§±šW|`-GKÔšJÎ÷6JÁERQME`æÝøb’&vxÒ€Q¤»‹ç¢÷§³ROAU6Gÿ\0=?ñÚM‰±b}¾nÁÛ\"§¶ÞSæçÓ5^FÝ¼ôr/‘@ëŠ”J$$…÷¨·\rÛsÎ3Ov¼\n­jw­5 Ö…¤v?J÷ö#ÎGLs^#j›¦=\r}ðbÌCf¬>´Œç±ëå˜&ÜñÞ ”‘`œûSÙð¿J¬Òàµg°â´Ô¨X“’yªw2r@æ§šP„ò>µJi-Ž}éù´!‘°¤ô¬‰ä*¬Õ¡3•Ry¬KùŽ[\'8 6(]»moÖ²g›h\'?1«sLNá»ŒñYw,žzU\"†ÁÝÔŽh-–ÏéQ+`òx©Qk\nÖó‘ÇÒ§Žä…mÜžÜT’2p=h¤„Š:¼¤«õ¬o˜Œã©¬KŸ—5‘\0)3ªšv-E&GQWâaë‘Yê\0Uët*lf£©k©eNÖeyªaàÊ­ Ï;³šÖ©‹$v*ì:×›øºf20\'Œâ½—tDgµyÏŒ,_ÌfùŠŽ¢©#Šf,Äž¦’•”£zŠJ‚BŠ( Š( 	m¿ÖõÇõ®›Ããq÷®bÜ(Çjëü;P1íT¶.\'SjÛSŸJÉ×îöBüóZ±3F¸¹ŸÎ@Æyö§i#˜»rQ¯STj{—%¶ƒÇqPT³QE!Q@Q@R9ýhh¤è9¥ ´ô(·\\\0æ³+ÃO¡­)îëd\"EíŠ‚$\'uZ¼\0:\nª£äàÒ–çD~3Tr©Á®zùËÆÙöþu·©±ÜFr+ô­õoc•˜ëKÔqX’Rt´¹ëí@Q@Q@\0ç>Õ$`ìëN¶ˆÊÅGSÅuZOƒÚâ\rÎ8J74Ž‡J§ñšëo¼ÑFíÈ«•ž¬­Á¬M¬<ííš³b	#oÕ(ûÖ–œ2HÇài{«ŸÔá\'ö»ðp_øýƒ?õÐU?lßÄp×pƒþø£•˜ØúŠùÑÿ\0m(?é°qêõŸsûsx2·ÀqÓæëG(ì}7E|´ß·ƒB“öØGÕê­Çíñá†ì\rî®\r¡cêú+ä¿à ¾‡pûZ1öj ÿ\0ðQª7újwÝJÁcì™çKx™Ý°|ûwüLŽîÒòJ‘€~µ™ã¯ø(~ƒ-”«ixƒ_|wý .þ$_Í‡aN2y5¬RDîx®¿sö‹©›~rÄþµV.§óŽsUëD!€ýîÍQ–µëIHHÇQŠ‹³[$-t¢¤¡‚“GPp}¸íKLù<¾Û1LBÆÛ“;·{ãü½ÿ\0ŸJ‹æ…ýýjÂÜGŒr¸ö¨½Å{Œû\'û¥6H¼¼sœÓ¾×þÇëQUÂÝvè:\rŸ6ütïWcMQ·ÿ\0Z*è)5šØ¥°Ç`ŠXô‘Çåî¡9×ðþ5,Qùk·9ªêWRö”»ïb_V¾¦øgfm´ÈÜw¾gð¥©ºÕc \"¾°ðu ·ÒbÁç—Rµ,ä¯£Uf~2jiØ‚Ù\\{Õ9\'Æ³^`—r+†Ê°Ü3éU¶©4ùdW|Ž*	¤zP»vRžrùÉ;OjÇ¹37åZ7[?v±n¦ØœSfÎá3“Åe³géV®œ3ãÒ³%”,¤2ã~t×p,R†Ç¿ÖªÛÏ•X¡éVµ)j;yÅ\r&¸è)›8f¡šuØÊ\rAdbê’Ç9ÅT¶ÁSRê¹ˆŽ•¨ùMc#X m‡ŒqëW-Ø¶Kuª±ÆNp2E\\‰sÆ)®Rú“ÆIÀÏ¯5j&,¼œš¯g;KdTêŸ/Ý\rš¸õ3}‰ÃµfêšZj°Ç8«þ´tªZlecÎõ7˜v!\0ô¬{ÜDH\0“ü«Öñšb‰ƒŒP¢<aô[ˆÁ,Œ1×åª­m*g(F+Ú¤Ò­eÏÉÅe^xbÞ`Å@aì)8¤+LT¯PGÖ’»«ß˜¨â³ÿ\0á`~èÇáK”V04è’g¦x®ëC·1F8ªú‡„G‘[À\"Ó[\ZEÁØq\\oˆØ›ŒWp#Ú·ÕÌø‹JfFuŽhµŠoC‡—ýktëÚ™SMnÑ±à‘êj\Zƒ\0¢Š(\0£¥PEP\0i2=E-\0QE\0\0t¾\0Lí\\Ð®‹ÃyÜqéZÓ\Z:›§21äÔ* !§\ZŽCˆÛÞ¢þñ¿Ù±“¨¼óü=k›½??_Â·/˜±\'¿5…v~~MhÌ^Š(¬DÄþ,Séª»i¡¡@\n\r `ßýzu!\0-:Ëm¦“N^E8¡Çƒô/dA\'Ú½÷GH4Æ[sóÔW“xvúäN±£‘šõ;6;idê9æº¢•´5‰•ka:ÂæSœz×ø…QoåÛŽµèÚœÓY|³‘ŽÕå—ìípåÎNk–ˆ?6+_I‹â²PocÚ·tˆX“ž•šØüøÇP9ÅÔ„ún5V_^œ±º”ŸMÆ°’pCgéH0Xî?uÚÇ2w6—Ä·„7ïäÇûÆ¡—_ºó+ýI¬¦!wÒ˜²oÝ·¨õ¥e¹KC]u›µÝûæüé‡]¸‘çŸ®k¥Ç\0î~xÈ4¬ˆ»6YŸ$´§ñ5RmNS±ªO)o¼ÕŒ@àóC)>ÂÜjr>Aý*‹Ü9R2E1ÛsÕg½fôWòg\'=;T;©§?8aMÞqŒñTš-!(¢Ž™9â³,@Œ1d%ÊíÁóQ<Rd“ó{Ô‘ü´zUX‹± ¹o.AÝÅ%¸ýÜŸ7ÿ\0[Þ•üîqŒcøjº©cÉ¬¶\r…ØÃwŽ´FÛJŸî©<ö\"Èc%e‡^y¤„ˆ÷\'~¾´´Áßõ¥P|»’>Ü1mü~•t”ŒÕ[AËžõdñÚˆ­\r\"´ ùþÑÛ§éSŠŠ)ÄŒF0LzSCGaðêÌÏ«#c$_Th Åbƒp¯ó—Â+B÷ÊÅ‹‚kè¸T,*‘Žµ;±j[ÊÃ­d\\°21ÕÉXí \nÏ|Àõ£RJ¢ì÷EG,ùéëLv\\Õf“rŒT+±%\"­Ì€Œgœæ±ï2sÚ¯Îànõ¬™œrr=éss2fß¸úÖk0Üÿ\0(ç¥\\šMŠ{â¨4®äç$zvªH:”lŽ£Ö”JêÄ†äõ¨rAëFã´ŒñU`±(½ƒ“I!%2E21×<R³pF\nVÔwèdJw1Í-¼$qœÔ­ÎGZ|P—R1JýánMl;žµzÉëÖ¡‚\r€ž™«vêTàŠ”6í„rxÏ½X2;\0;šuº†žqS*àmíMi©¾¤¸æ›Vš%ÎçÞ›°aëÔÕÞÄ¤ÊØãÝ­Ÿ½ÅXD;Jàÿ\0:‰—ƒTÃb\"€)9ÏÒš¨[=±ëS\0AŠZarŒ‘GãQ-¾rp*è„ó|Õ§JË›qF%$€Ý¶Ó| ’y«^Y0ÑÜƒÍUÝW+°\0ñJ¶ñÜ\rúÓ‚m&šÇ?J¤ÌS¹“{àØeÉdôÅeÞx#llI®¨LßÞ<T†ð…ù†j×+\ZGšÉàë•$…${\Z¥?‡îaÿ\0–mþ5ëQ^Å“¹\0¥shäîQÏµ\n	ì+/%ŒÑ©%J¢u+ÅzüÚ%”ùÀZÈ¹ðŒ23>•<„žiMØ=ë½—ÁK†1ñëYòøURG4”XÒ9J+v	ÜÁ»*Ç5›.•qw&*,+(§IÊšm!Zéü>v’£¨ÎÛÀÓ6\0${WY¤Z#%‡5qCPŒ‚*¼Í±\r<È@éUî›t/Çj˜¦ts+W7;™ÆkgÞäöè*óçszÖyêh{½„¢Š)QE\0RšZ\0U;M%ÏjH\0i\04\rk¡µáÓ²éNÖ½q-íœk•#¯5…àË;)—©®ªê!\\C(ãÐ×\\4F‰™Rig\'œÝ»×š]¾ë‰9É®ÓÄ^iÆÿ\0Ê¸wûæ³{Ž,-ûóšétQÀù³\\Ý¿$¯­uz, F	õéY-PúŒûIÇAškJ[pìi²H\\äð*5pÙíŠêÔæÔ“yÃµÖ˜dÚ¤gð [ŸþµBT¯Z¸Ò¹ ”w¤i23ŒØ\'Š«\"¬‡*¤vª“Jpx§5ÁÏËÀ÷ªîp†¡êÅ~ˆ\\ƒŸnµ¿­.öÛžÞ´ÊÊZ”¢9±×4Ú\r(¤#¸A“KHÇ\nO ¦ÄX§ÍÖ¨±¿9“Zjy{~læœÔIŒ{ÓDD˜`U£ƒãe„`É¸vçÇ×<ãÓšª¬Pä\ZXã26ëX\\Òâ´„ÊYr	¦TÐD$/»9÷ˆÇóEÇ¨¥kê+_Rµ(vQ€Ä}\r%„Z´]¨[ÔÔ“LsÏ ¤‰<´Þ™r?wøÿ\0_Bú¶ ÊØéš¹$ŒU{e+#ž3VíFéUG\\ÑÐ:Åð‚Ïk† w¯lBvs‘^eð²ÇÊ±V¨¯L*˜\'&¥0D2Lê[åàwªrH“Ž•<³Ï8Z¦ó¨\rƒÈ¤²ÌIÏ¿­C$P“ÚŸ#ç<Õ	¤Îy¤¤™+B¥ÈÈ\'5xÿ\0!ZÖ¹ed\'8aX÷G*Ü÷©`d]>HS=MX¹¸óõª…Ã)Û‡öÍkêZ`#\' =éK\0¤çVPñ ~„cÚŒ¤T1¾U·088ÝNFÉnx÷¤’ ‘päÕnÜb:…DƒpÜJŽ |¿v²K]ˆ»-K(0µ<;JmïÞªBÌä¶~_J¹\0¸éíDw3nå¨Pc=Oò¤êj$“å;O—w9}*ùu!êL§gÝjpŸäl–¨úÒ*NZbW3“šš«ïàäS4¹n8è=‰çÒ“ÏáH1Þœ\0Žµ[°ÌqŽÔžZúS¨ª(ˆ \nÛZ£Ç«\nÁºÒy<dÔ+\"‘ØsÖ«ª(V\'š¶UŽÕ­C]‹^eb /½Fî:š´À7é¦ ƒÒ’—pµµE2ƒi ñMÛÆ{UƒPTt¨žØ(\'w\\Ú‹\"\rŠUv®7©8»jS—AhJ—I ÿ\0½SG©rªG­RíM\'Ž\Z…6>[šn¶”1çUd´µ€5XmØÃ<ûÔjÅxÉ­c.æn(¥y Á.íŠ3íY‡@@Äbº;îªîÇ£RÐ9Jvz4pýå«n5Ú \0*m­ýïÒ«°ÃS\'d8¡rƒ5™…X4è”óŠˆ—§-ŽVòÁãgnHõÅcÉF`Àï^•´7(UÀçµE/„ ¸û™Éô­R“ØÁ£Íhýk¹¸ð³åCb¨\\xîp…½*9Z&Ç+Ek\\xjòæ&ãÚ¨µ„éÕ©°r²ª¶ìÓ—’ÜqOhXuZEm¹\ryÇ_j\\àñÅ\'^ôt¤+—-u9­¾ãô«£ÄWc\'Ì9úÖ>\r\'JÙIÇpLÖŸ[žå\n–ÎjˆËzfKƒRÁ÷K|ÌÙh‰ík`×a£Çˆ‡zæl#ÜÝ=ë±ÑàS{}ÎoÍ>Ôˆ¡‰Éæ›»h$ŸÆŠëz#!<×„•8 Tm3·SÇµKQ´Ê&¢÷%ÆÝDO03gæþT!èx¨ã‘×å_Ê±\'–4[Ro b¡— §³\0:â Ï^h{R+ÎqJN=…fjPFGJc0-°ç‘@\rgBßëÇ¥:3û¿—çÇ•Y—kéG˜víÏ•v2R,‚¹VqÐúÕidó8ÇjI$i4å—å6In•…î;ÜŽ§µ;VCéPƒÓ?Zš&ò¢f’p(@‰b–b{ÔÄ\03š¯jÛƒç®sšœ0*G^j–Å-Šm$zqIVäˆJ¹\\gÖ«Gþ±~¢¦ÄØº\0 ¨îb>Õ-W’}®ê@aÛÚ­ì[Ø}®<®=y­-5ê)õª6øÁ­ŸBeÔ£ôÍ.‚è}ðþÞ;}-Kp+§’à\"•QøÖ„£	¥¦F9­FÇ9ˆOR‰B£sóUlŠ³,ˆQæªÃõ6¹[lWšM ŸÊ¨ÈFÖÉÅY¸ny±ÅR¸eU$ÒŠR„Är:V]Ô›™½¸­9˜eˆç&±.·Òª#F|¿$žMP2d“\0š¸Ø<ƒT^F%mÂžÈ6Cà•c’qÚ&ü\0*Ø#d®ïcN0,½Ö’bLœB‘‚v–ýirCü¼¨ýi‹9ÊyÏCBÆ…ØÀ\r;öû+DŽ”è`*#+çk}E1ÉÚ=iÜÓE¡z)v–ÈïVa™yAªIæíHwã9º LÓ[„Ãq´ÿ\0:’9U×;…f	v¯ÍÁ>¦‘nI$ÒÔ•sXzÐHQ“Y«wýÓŠzÝg“óSL¢ò8q‘Ò—pÆsÅPó\ndéOWå….aGRÒ¶K`t¥;‘ùÔÎ1†â˜Ónëšˆ»n	¢s7 ¥2€8æª†Æïz<ÐUsh–6ÂÔ¥ð¸P#e‰yëŒçZ.ö±Q×r]ÇŸzk1Ub)¢@zóBKQ©¥‡(Á99 °Æ{TløÝ’1MR<çÛÒ.„‡Çµ38¤YFP¬#Ò‹š#’\rüƒP¦ü•h¿¥0þm¿z†»‚þéPŒŒRÀ\"¦HÐõéJð˜¾n¸56™[oÊÙ¦*œÂ¦Å7Ë÷¦˜h÷#ÚéÆ£eVàôõ©Á\nN*2UO@j“VC\0ÀÅGßgjã\'){3Œf´FH¬F\r.SÊ;õ4˜;±ß5[—qŠJœƒSC¨MñT\\­&\r	¸ì&“5­üHéÁÅ]‡ÄÑƒ¶HÁ®l\0:S‚1Ö©TdªgW.µ§Ü¨Ì`þŸymasœ¬A!‘œ©?>_´Ot>KÞøvÖ@Ä\rb\\øaqR¤ý+UnGÞ\'ÚƒpIî\Z^ëÜ›ÄúˆÌqš¦Ú\\‹‘ƒšëË9ni¥CšVB±Æ=›¨æ£17MµØIiªF=ª¸Óabp¹¥Ê‡ÊŽYTœŒdÕ‹d<àVðÒ˜®kBÏAŒáxÏ\\ÒQkQ¤eé°gœ×c¤[†o8ªÐi)ã…néÐv#¬Ù¼ç˜¦—Uêj1&ô›\nŽzâºms‘H‘‡ñnÊÓ)÷¦÷Æx¤ã8Í;¡¦€AbOÆ,z¢’¸²?EDsÇJZ:VW¹ªVBnnr{Œô ýÓÎ=ý(`{Ž”ÝãËÎñÓïRÈÉt}ý)Â@¼dÈ}TTQÇ\'Ò€›[À|ö«±šb4™>´ÊÁ<æ”©+¼žøæ¨ÌfÆÛ»/­%)b@àt¤®RÇ&ÜüÙ#Ú›Œœh¢€¨êrúTÖÍÈzŠ†\"€¿#¾y«Sn‘²<U\"“–XÆÔŠ†Ýs(ïŽiÑ“?½ úf¤·ˆ¦K”nÃvMU~dÎ3ŽIýjÌŸêßéþ5VÆPÀgžM66[\0€0=«¨ð-¿›«&GË\rsØü<]ÚšŽ¿0¡ƒ>‰ÐÓÈÓÐuã5fI:žÕVÇ	d‡8ã&›–vþçjH”¬ÈælÈÆ«“štœtæ¡‘Ùc%FHïBe.åiK99¬û£—olU©\\„5BI7æ³]Œ™RgQÇŽ•“xAFÇOþ½j\\«o_þ½cÜ(Ù5F¦|Ï€Ø`§¶j÷©î]‡Ëü$URW9ªê(=(Ô’àûiŠr(÷¢ÃNÄ‚P‹Š#˜†ÝÖ™ÒŠÌÉ¢g,UNÐiY¾RD™Ü8â•GÓNÚî4àÍËf™E#4ìM»ïRGpWÜTCŽô‡½5r¹®ZûOÒt1U@ã„ÎiÝ‡1mnG;Ôô¹QÔâ¨œíKJâæ4~Ð®ÙÈÇ¡§‰#“¯Ú³C+Ûµ7ÍÆÿ\0›éÅØÑGQ¸õZ1Ï^*ŒråNiÉp0pqTš…ÿ\01OCŸ¥GæðÇUo;nî@¥2Þ’åEóH]‹6O”Ü\r¼rjº9\\óLÏ\\\Z.‚-¢Á~HÎ=éMªÁC’¨ØÎ9¦¤˜’¶£ÖfQŽ¢•‰)Ù¶**JÎábC)ì1L4™ö¤SŒ‚Ù¥\Z!ÔâéL“Ò—^)Xqiì)@G¹¦d+á¹ô§?*Üô«üÀ(9ÁÍDSÒ¥Û±SQ¨ÀÆsBcµ÷T¯Pi‡væíRI<çá‚¾Õfj7+,CøÍ×F*S¹¤;[ŠxL®ÔÚûìV£\0ö¥ldã¦ip\0\'<Ô¤Q *GOzbÅòò9©s‘×­!8É¡6\Zn1\"P3÷©¬«õ§°eä”v¦íÛ‘M0Š\" c<ÓÈùp5¯QZ\'r\ZåœƒŠhpìÔ¸Á\'u	ílSwƒÁ&¯Ù³ç­R‚’Iæ´ìàÂç¹©eEh\\‚&bp9»amÁÏSëYvn\'×GglHÆp1ŠÁ›#ÿÙ','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0àÐ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ø#í !ÚH&š—\r¿·J¤&‘Ù°:zÔ*û˜üÕ]=ƒ™—Úc““Lk¬\'\'/TÆ\\ç9§G,l¼¯åFÂö’-›ðÝriLä¯Ê¿@²¤ÊÈ¼0¨Ö;€ä€\Z’‘\\Ò-,²î5‘™I/µiP±:í4ÈÀ\nQ©èÁ6ÌëËymåG’éZ:šÜE‚ 8ëš‘0aëYòÙ´n]Ëê)FÈWfÂÍ»!ÀÅ1çcLã<}jµÖNó5d¨níÜI²3\rÂ®a`Ü}Úbê/Û:}GJgsòn^Ø§ÇªÆùŠhùé†—^û’,Ö·YÎ7ô=¬ê™¶pØìj)´ë{…/ymìj8â¾³ä~õçSŽ÷Ðš\r~âÔ²Ê„^Õaomõ4Ã»×½S‡R†çtS&Óßp§¾“m:–Ì\'Âj´ÚÙ\\Û’ÖÒÇf©mu«ˆ¸\nc¥U)}bå3 î*{}R+¼¤‰ƒèE/Bù›Veãy\rôgQÆEV’ÑÖmð¾ïcM}&)´2Ï\\Uhÿ\0´-žjy:ÐEÝ‹VºÌÖ3‘ô­X5Õ™›nj´{dŒùÉ»Ž¦‘th~gü·ô¢Á¡<—,ìp9j«-Ó(%ŽGÒ¤ˆ†òGJÓ\'{Þ¢§»¿üSîä‹ÝãžG¹¥ßý í½aµ¸:€A­]2É¡»·=©RwAŒoÚ3®¹¹X­CB\näWPóî²àçµõë¦†Äªœgµrö¥ƒ9­tGŸ\rÿ\0µ–ˆ¤ƒr\ZÆÕ—k†‹<õ¯Að·ƒÆ±d³4€äô«Z—ÃèãÈnŸJ\\ñØ­{ži¦I `H9®’Ê[…\"–S×Šèô¿ZÃr™]Ü×§øZÙ!bN=©)¤-¶<¶;K‹†l[•Ï·Zì~h—ë°BªO¥v‰ ÛÄ»¶jØð…Œ/¯Bˆ¹#«\n…;è=RÐö?Ù(@XàdSÞãy½èµà•#mJ Lr7{š{­»dm´Ã´6ãŸ”´ë4ÎÞ”Îˆœc>‚¤á—ÔNÁa¨[q\rš—F{Ò¦îëI¸ã÷ï°ô‘Š•\'Ja$Ž´à¹ç<zRƒ×8ü*v&ã²ŒŽ)Tç<dÓ·n\'Œb—€\\wèFÌA\"šª±÷§’<SF3Ï4ÖÀ¶†;æš@#©ìÜ\Ze44ÄH©ƒ5m óRÇ#8?Z–„Û#ÜOëCíd#ÖœXŽ´ÃÅ4	„\0xÇ•NÓ@§\"l8ü)ì6ô±Ç ¦Ô›AcÏáJ¨[=óÚ’}®‘\0Œ”ªÁ8æ‘ˆ\\äô¥Ú}8§¡IØaN¸8ÏZzŽÃQù 6jl<šm“wÔBÄäS¢ 1\'îÑ…\'\"Œæ©NÀ¥a[ƒƒÒ•™Häî\r3`¤\Zv±éTÝÑ-²ÌBKt<Ô2¶šE“2zšb8ÃdROA¦)ùsß4Ä“Ëv=A§® \Z\0PÄ•ÍUíD˜Ä%³VLªåU°=\r@¸ÉÀ¥C0äv¨²ÜW&gYQ¸ÆÞœÔo^iXn^¸¨¾éàƒG)IÜÎqŒŠÎ4xã¦*[{l®âx>”Æµ	¹›¯AUˆDîi®Àx§¨\n	þ!LeÏ$µDtØ:êQyR9ŒäñNæ©âžmL®K€§ÚžË@¹«LW+Ä¦!ÇðÓ‘¼·É¤q†á³ïLyˆR¼çÖÂ6¹<“€¥‰ù}«VmªH$’{ŠÒýá¹ïÒ³µâbF}\r\"îK¥£q“{UÀêŽëéT´¿3É*G@\0«\">âI5:!-†½º»î$SClèqS7§?QPI*¡;ˆÍ	”˜ô˜s“šc|Å—=iª\rÀRü TLnÏ€¶Í\0åwö¨Ò(æ?)=³Sædç‡µEçÇ3aÓ²µö&$©j²©ÍM˜\'>µGnåéÚ¤KÉ\"R7áV¼ÁKk\n–ÆcoPj \'€.ÆÞ=©ÒK×Ë÷Hîi\nË\Z|¹@ì+=ŠnãÒûiÛ\"cëOòâ”GJ.#œbuÚEj¬sjµ%‹s\ZÇ;»Ž)\n§?­C¾æ2T¦áê*HU^0Hæ’ì5mŠR§’YÔ}G­[³¸Y“Óhx÷í~_ïUY\"{w%?Ô×a+t4cr›€9õ‰bŠq‰P1õª–—BLñÈ«9pIÅ.b&Ò]6÷sÙ©öò^[;G2‡£v«ÖVrÝ1!b;V¿‡u+°ÊÀ2(vERYÛÜ«o@O¯Je®”ÖÌZ)H_îšìáø|Ã/€¥^Ó¾¿›¶v\'ÐQÏLã\"$Ü?•=,£œ±0sØ¨¯Wµø{g´3®xï[6ž°€€ ÷\"¦5Ù\r&ƒJžc„ˆíÅiØøoS| €…õ5í0èv°–%zŠ±å[Â¼*¯Ò‡Qì.E¹äVþ\0Ô&bÛ6ZÑµø_4ë¾Yv‘ØW¢É¨ÛÅ‘¼dv¤>\"„úã Ræ“ØKSˆo…i³&BOzâ¼_ \nåcLàŠ÷=;UK§`Ã>•ç¿¬wo:®L×4¥-›=,*¨­¹ã‚@—ŠTg-ƒ]F‘ï1ÏÍŽžÕÊˆÙïâ\0däs]u‚ÉH\níÛ]T>Çû³2µóçÌ#-ÔóŠÈe¿µhË›»—nËTnP£ò2+Yl^‡¢|1×¾Ásöyß19ãwjô½QUã\rœ®+çí>fFIáÐæ½gÃ~!þÒ±òe`%AŒÉ¬¥°M\"Å£*^…\n:×co:¥³r}«ŒòŒWEÀêz×B’³ØŒgð©Ó¡i¶A«ê“›w1“œà]÷ÁÛ\'¹Ss(ùÇçÈ»Û‘šö_…–â-)É]¬OJpÑƒGl¬Åˆ+Øç­2`Ê7†#ª\\dbŠÔ’!’7îõíR¨À¯Ö•zÓÔŒ‘Žil-…Ž˜¦l$àT”T§bS°‡…8¤\rÇsQÏx¶ÿ\0yKqÀÍ>6¤€Wë@CÁ=ýéâR¯cLè\r>4Ý’Ü(êhæhDdd9ªï:£`äŸj¸Jó€zñÍSž,€¨úši”˜A2ÊN9«@^j{3–SœñŠ´ i:)¤»ÈX\rÆ—xõ«n61ÏÝö¤hÙS\'§¥=ÝÑ\\Gòÿ\0xQ³*ÇÖ¥òñRIù9õ£™‹˜¯\ZíSj•H‘¸zRÅšØÎ)D.wq÷zÒÜ[ˆÊozdï!¾ïzp·cžƒ(åìÞ™éŽø¥Š…A¥+Ž1S¥¹Á,vJ–ýJ¸8<SJäÙ•¶÷ÔTŠ…†IZ\\†VùyìsL®sÅ ÖÃpU›\'\"¦†CìcŸZo’Ä·ÜñGÍ÷OEý*£¸‡¼ä‚¡vJ‹·^}*pÎä§ÉòõÍJ ]›yÇZ-r­ršŒóg4 tÉ«1@¡X›5pä¶~\\uªŽªâ³#Û±ðã uÅ1×¨ú\Z{2–lp)£9ã¥+XI‚&ÚÙ9 dÓÚ3Áêy£Ê\0ÇqÖ“\'Ï•\05£2 ‘ô¦ºañÔŽ2*T g#<qFí„ŸJ¸ì4ÇFìŠpzÔ‹gÅ<¸Ç¡”nàü£Á~Ñ“ô©IùFiy8§31Æ•î&òÐ‘÷ªœr´¬X“Çµ^’1 ÃSB¤Kƒ€µTJiX­p‡`9ÏÒ FORjÕÄªà€xQQ™X‘òƒO –¢z«{(ØÑç‚9©¥Ø\rÄÖ=ë@Ká¥Ðf®šÉåjôÓùƒp=k/HL@HäÕòK»ƒR$U¹l$Ec%Ñ,NÐ+jSó6G@írÊ9öªµ‚å«i˜Âàv¤\\ó¿æË4ÊsÇÖ«ê\ZÝ’žæ8—Õ›hGÁª“Aæ\'jzÎ%ÊÊ˜ü*kK®gòÑ°Ç¿­mEá‹™…Àüj–Ä¥c¬9ð}\r*‡Œ\'Ïï]%§„P†|œö­(ü%®_-õ©L´Ž(£”}Â¹î*ÄVû¬{›>¢»ëo[ÄÊµ­i¢Z•Â¢ƒô©RDžk‹qp¤n}Ö®Aák‘÷cÚ+Ó¡ÓáU|ãµ2Q¶7Ï¥G:\ZVZžz<-p€ç¥IeàÁyv#y<°‹Ò»9®¡ÏËŒQ§Ëo4Ì»@Çz\\ÌI\\àüAáYtÙÂZËöˆñœŽµ†ÊAdt ï\nõ«½(<›×‘X\Zç„Òx¤ž/–AÔôF§FZZuƒKp|±µ½M\\ò¤…™Xçž´ûˆeµ‘Õ†š$%zƒî+TB¹Ñx/W‚Âéãœ\rŽxb:WªYÇ‰\0`Üñ^´õÎ+¼ð\'‹ŒoöK§ùx\nÆ¡Æú•vM¶QÈ<úU€±G—8U4Éõî)ò³<Dmæ³²BWµŠš¯ˆOÇË”&¨¿‹W9¢îÞ;†+\"åA¦Ç¥ÛðÁ(¦Ãb)üGuö„1å¢až•º½íÉõäV˜ŽãqšX“c°\núÔ&\\­\rœ“’Ù9\'Ö¬&™“‡nù\"¬Æà¦!YrªvØi=Å´¶K%#={×5ñB3yáá&rñ0\"º`äÕ‡ãkCq Ü <…Î+)|\'N¨ÕßSÁnÏVE<©ÍmYê/5ƒHÇ¨æ²uXO”À\n]*liÅ>ñ\rŒS¡³Lôs$½Ù\"å„`£ÉÜš¯x¸È5Ûø‹ÁÏ¢i¶×óÇ\"Äv$WtŸ!ºbÒG‹¹^Äg gŸÊ·ôÛÆÒåG\\õçmsVÍ‰Vµ7îŒßð\Zi&Bz©§ÜÇ¨ÃêÙÍušX\rŒ€}«Å|)®>ðC#â8ç±¯hÑ]dˆ2òÎkµ+ IgåÜ\nM{G„m~Ï¤Û‚‡æEy¥½¨›P‰1»,+ÚtÛo\"Æ(ñÀ\\UÅXäûp\0€;S”gžqô§„ÞŸLÃœS¿asmxäŠrü “OØwc>˜©#µf±Æ}ªW`Ühoµ4¦‚¨ù‚ž”›û§ò©Z“!Ü¬ÀZsBTéS.%)ži’Î\"\\0\0z5]•†Êéò·#p«Kr©Ûj§Ÿf_Î¦µ—æÀä5Ìi÷%6£ç¶i!µòØîÃÕbŠ«\"ìŠïjK¤}=*H\"1)ÉÉ?•? ’3È¦\"ªÛó7~y¢ÖX’€FÈ¤\0ŠvÂWŠ•-6€Œ`b–›Ðb•X ŒÒæ¶Œ¢…$Ö…R²1ÏÊhRrXÏJpÍ(=,$F%ýáNôÙc,ùÀQýüÔ¸çŠqzŠ¨ °Æ]Ñ°&«F¤—ù°R*Ä„ÇØ?.ÕXFSãŒô£áØ–5”‚~R{ÒvçTÑ+ˆÛh\r»Ž½)±–”.}³Þ…ˆ<ˆÈ1SK†FU#v:\n²HQÉ\0Sct$…úð+Hè;U\n0-)Œ\0ŠE\rRÈ ¨`AäP/@5›n\0¦=Æ4+°mPOó¨	\nHù³Ö¤]ÁøçýœÒ!8 DvÐÊZnÁCsžÕÕ¢±¯Q¶ p7œŠ­Ð†&6œÓï;»zTŠŽÙqHÅ#J\\Üº\ràdõ\'¥5‰$Ò•ç–Å*ªàœrzš”ìVÚU?¥&iÅúþ•0A’p(C^eY);œóØÔn‰¿Ol>[oËši—!ÀùE^ˆ’.™ã>ôõ“`Úgµ!!æÍD»S$Å5%k!­D–M‹Éè+÷|×\0\0µhÜI¹þSŽÙª3ÜC¹fÆzY¦‹Vêiéèc¶PO5|DC~uÉj~:Ò4+C%ÍÜi·€r\nòŸþÒfá¤µÐíÜž%qÅiEûß©ê¶ºm³Ë<«\Zc«\ZóümÐtMënæòQÚ>™¯	Õ5¯xžF“VÔ([„àÂ±åÔô}$ý*QÜÑdÊ·s¿ñÇ]wTgû¿Ùbnzàµ‹íVþ\'ŸPÔ“ü;¿¥aj^6¹ºˆEb$éòÖP[ËÁóÈvú1¢*+qòØ½gs5¼Á”í#Ö»ßëPßÄQþIõ›â?M§Ÿ2ÝKÂ1\\ÊNÖÎv–¥bãr\"W‚ìúÒÉU†ß­r>ñcN<‰ÎÙ:{×S¡Ó®TÖ-r¡hŒýFùí# w ´Ôî+l Wd„+r¾õ$8¢~5QhI¦D’ÞÓ­lç‘œ»å}\r[É )àª‚‹$j¬†Åb0ÀœCRGoˆëëJ\'l£åÙŽ2{Ö2Ê‹Ü4|1ù}M[‚HfÝÀ|ö¬Æ;†5kO\'É^\r$œ‰V3<Ká85XdšUÞ¼ÚæÒK)\Zc(À÷¯xEÜ7(ëÞ¹xNRÝæˆmGï[ÆVÑFÇ”\0A$cò©#/7#îâ¥º²’ÎVŽe*ã±¨c\'ÔVé¦\ZžŸðóÆ+4_b½“•û®Æ»èÄgsÇ\"¶Fzñ_:FÆ3¹†ëk¸ð‡‹%ÊÛO ÝÐÜV2õB=úÜòÊk*+§wuÛ€+nY­‡ÌzUËu‹æ^§š€vèWÉvå°jí²‡v	ž¤g­Z†ëÁ”lË¿rÄ±;)(pËQÙÉ4OÉïÐÔ«{FÀ•É÷¨–örà\Z6š4‘·Ÿ—šƒQ‰oìçˆñ¹HÍT\Z¤*o$TgT¹\ršIi`\\×<[V°kIg‰Î\n±ZËÑ—7ñÛ¹¤‘@Qõ®»Æ–áuId¤œâ¹½Õ¿á+ÓÜ·ÎRqõ¨¢í6})*˜^hô>žÔ<9§¢5´ŠÈ\0Èèkçÿ\0h3è·“[Ì0§E}®6|Ãh#­r>=Ð\"ñ&žÏâ>U»ÖÉÙŸ7Ò>‘|©Ž*üSÆnàI÷¨uKIm\'‘$R®§~5{i;þö\"C-k³6ßwÿ\0wkÕ~x›í°I˜£à{Šñ«Úî0®y^Mmh:”º=êÏØTàç¸ªÒÄŸVx:Å¯5¨H)¯fˆ*®.åæ:­œWœr ×«c\"¢â¹©+ºùl8=*ü*Ç{f¡‚3#îO”ýÕ\0³ÝÍ44I†Õ~•(ÎNqŽÔ–ñ·Ì\\SÀÈ8G@ˆß,\rÜcw_zBrÜSNäúškŒ©ÝíTPÈÕ3´ŒµC}¦ØÂƒœñSÅ\"±*W-ê*ÄiÉ¬ÖÄh‘ŽúLƒjùE_µ²ò““V€Íî!ª˜Îy¨äc“Š”0$ƒ×Ò˜ÉÉ=ª]ú©±/»-‘ž	§¤X•›=iÜ\n~^ùªJÅ*pi„˜Ãcš’¨ô¡2\"Ï©Í/\0`zRˆÁ$g\"šc*sœûQvX œRW…ŒõéJä(©©ÂÜÓ€\01?wÖ‘ õ¨¦N·­UýÑ\nB“)ûC÷ªÉ)Aƒóz±ŒŒQ Ÿ0€\0æ¢ùêØÇ¥	C•o÷©ÐÄc\r“–\'“U+_qÝW9ù³ëOE¡Oµ Rw†ÁSÐSÀìOJe\"8vv?-Lƒ\'\'¥,kéíJAÆ\0â•ú´ÐkÃ‘Å4žzS€ã4Ç~iìVÂ»¥\0óÍ;)¨ö|Û·§j\0V@{)>¤f˜é€\n»Ú£žVS´qL‰‹ä=²zÑ\\W0hÐ`ðM2Eb§,içœ°¼oózuÄª ©¥¸”Jm×ÓÞ¢i^2\0BÀÔÏÏ¥!\rÉëŠ`Z¡›‹†™,BPqS€6‚hxð»ºäÓCMlgÇÀÞ¡F?\'c¥\\ª÷	a€\0ëùÓ“¸X¦ó.H2(rÜ}k+Ä(Ó|5³_\\GQŸ˜õ¯ñ§Ç}KÄÉaá¸X+¦à\nkA¦‘ë>)ø…¤ømÜ\\¨áE9&¼c_ø—®øÆvƒFµ’Uï¥scI¶´ÿ\0Ä×æy	Ï”$Õ=WâÛÇÙh6‰iC 1¤¢º‚dZ†›:JÒk—å™y([&ª\\xïOÓ-¾Ï¥Z)â•Ç9®u¡Ô5»‡–áÞY	®›@ø_¨êL|»3ƒŒ³\n»Åfr·ú¦¥«»™¤%OaÀ¦Yè¯(\rµ¤5íÚ7À†t7oµN2z†…ð{EÒ#PÐ	X/R½é9¦´¬|»¦ø2úúEXm˜Ÿ]µÛé?5[µaBké;oØÚÝ[¢`c…«¶Ð¤%¶¨QŽµÛn¨ñt‚;‹q¹Œt5äÿ\0<?$—0@NJ\nõ\r:ëý“…¼â^¨Ò=ÉJ®@¦ÝÌUÎN9È`èÜŽà×Uá¯˜‚[Ü7ËØ“ÍyUŽ§<r”9Òº;{…ÇM¹ãµ	&µÏn¶ž;¨ÃÇ4ÿ\0+Ýy¯7ðïˆÞÉÕ‹GÐŠô]6ö+»pèà©íXÊ6ØjHCd}iVt9\Z±%°`Î£¥dµßäuj„¯¨®ËÊÌÅ½©¨¬¥‹6j›_m]ã&«IÎzÓÕ–Ÿsem«¶²©Œç¨÷®v×}À}êÕ½ÄŠ„“õ¤•4Ž–ÚüBÇ,\núf¯$É:î\"¹Hâ–d`	9ö­ý&ŠØëïGÒêbø«Â1j0´Ñ.&äw¯/½°’ÎCñ•aØ×¼©\0ë\\ÏŒ<-©lòF6Ì9œ%m^çIp–ªr\n¯­:ÃQŽV/ò;Š“QÓ^Ô¼S®\nœsXqÛµ„Ûâ$¡ê+Au±ë¾ñˆ$Aprq€I®ïrL7kçÛK¦À17s^›à¯-ÄBÚà‘\"ô\'½fâ’ºn·5u¸¥µs,g	ô¬„¼˜ÿ\0v\nÜFC¨e=+\Zõmì\\)ŒàòN+4ìZ\\ÛÆidlîbjÄ6÷2ÃqþÍj[]Û<a–5nÇ5¥§Ý#™€\\t¥tM¤aZéwr±ŸJŸþû¸Ûœ¥tÖz„1M€0}qVîµ›y°¡rO÷hcM£Êüi¢Iol“°ÝƒÖ¸ûÁe¨Ú\\€1ŠNGl×¨øÀ5å«G·\nsŒ×•ÜEå‡ÇÌ­Y½Ï¡ÁMU£*Osè­>Ho,¢•pÈÊ4²ZBXíï\\Ã¯ý«Gû4×\n†dö®¸kº}”X’éþ¹­4è|ôÓ¦ÜYÄ|QðjËj×ö©—O¼½yM³aƒÒ½Ë_ñž”öSEæ‡%z\nð»»ˆÚþfO•ñZÁ¶Jh§}²›zp‡µ^Ò$3*[$\neÎÉàÚy8¦ø2“Ä¶–üÒ\nÕ&>æø+¦­† Àù¶æ½	ŽIãà1m|=©*+xFÐîaƒPØ’c­J€wf¬¨I*+U%b¬´RZ\r=Á$µJ9¨|øÑ¶3\0OLÔér­SÔ”Œ›§íÚyéV#rFi$ú	k±P(Q€1N^½3V¿ÃLØªß$ÐÕ…©;ñÒ”m9Ï·ŸZAâx5(›î!\nä:TþPÉ¦4A\0ÁÎjíÜ´ÓŒ46òpÜ\n•N2*1RÜw©Zbíã×…»Í:Š.	ˆ¨NxË{SXt9©S9àâžB®s÷¨Šì@X\"dô£0ÈèjSÎ•(‹#M;Š¢RdÙ¶§S…<Pbý*A	n$`ö¦¶ÊË\n®p:ÓÕ1Ðt©°})Q7ô4\\\\Ä%H÷§}Õõ\"FÒj6ä\Z/ ®F„œç¥!<ŒTÃ`Cœ–¦É´“´=\r Liê\r²2IÉ§îj_ y{ò:ôªZŽåhãØÏ’H\'4¡wgR¨P­‘ÉéL9ÒL.4®z\nkgÉô©ÏéM\nPqÉÓ\Ze)!`AaøU„Y;ò¦£ÇÓšqØÄ‰W?Åõ¨gagìMNˆªÍ·¯qéUåfrCp=*·²EfUbÒ(¬9Å+.ÆàåjÀ%Œ·ÜÇ“h<‘\0`ÃŠRŸ.Cié±IÝóØ¬}Äv^²šêæe‚5ù=ÉK±næî+8žId\0É,q^\'ñ3ö†³ÐÝìt½·W0§ \Zó/‹?/¼Mq5†‘3EeÊ™«\nò‹Kû}5Úy[Î¸\'p÷¡G©G{>Ÿ®xÒY5M~ùà³ÎíŒØ\0zb©êþ9Ò¼7fö:!¦Ær+•½×µ¶‰¤œ/”‡ƒøWàÙöûWÛs¨–¶„œàŽMXE7¹åÑZj~\"¼v‘¥•›Ó&½#ÀŸ5A„—a=Û©¯~Ð¾i^µT†Ù÷ˆäšèlí¼Ì\0{Öwû#Z†þhú2\rÐ‡uÇ-Îk³´Òá¶R¨TvQW\"Ã1MJÊ2B“ŠI	ÈˆÆ}(ÜKpH¥xŠ\n`Ž‚šˆÉza\0w©TR0„dïSf„ž¼õ²²eQÐWˆüAÔšË³%Ûœ~5égVóí¥ÚsŽ+Å<k}$šÃã˜Ç}è¹0M-FøjX-ï® íVu[ñ$þd(“‚zÌÒ˜4›™~PGZÙÖUîÛÎ†ŠUŠCwc\nJèB8Ê“[žñÖS++nNàšÌÑ¼D“[Þ‹Â1©n,£3Är‡Ò—*h^Òuèõk}¨Á[¡–óHó—pûÕäÚN­-”þbHTŽÙé^¡ø²+¸Ds8Y09ÍdámZÚŽ]?fäw×5\"i±ùŽIsr–1ÎªßZ.’8ö4ÊÄw³¾¡ËtjÚigrð=júÙDŠr¬˜¼Cg~[MŒv¨_Å6Q©aaO^À’]NžÜÛÆ½§P‰Fr@õ®._\ZÛB¬7çYÓøó–8€^æ’‹z¡Þúžƒ>§\ZD]j¯¦fG\rÇÖ¼ÚëÆ×ŒˆêƒéYsø¢îN<Öÿ\0€œUF\rŠö;i¶zŒ2;2‰pkÌå°dÆì\Z–]fwcºF`GLÕ´É\n7â­Ò\Zv*ð’Ê3ê*ý®¢ñ0a•aÜ\ZªÒ‚#9¨eÂ¥€Ü>´ÆÏeðÄ;O²ˆ¯˜$€pÇ½n_øÓÃòÛìyUØzu¯‚à:åjc ëœšÍE¤ã±ê2x»I€¸…I\\ðqMâ¤ í¶$úâ¼Ñ.U{ôæž³†\r€p)û(—Í\'»;ù~%:c¶ª·ÄË¸ã|@¬Ýq1Í¿p°ü3RÕ(¡$v\Zg‰oõó\'ÚHUQÀÏjí)Ç´¼+˜’v\0:\ZÄ½O7Q™³ß4§Å£§SØÖæDO4¶så\\¢ŸJ°/$qŸ0ŸÆ™*}¢×gñ¯ Õ{a¹\nŸ¼8¬h´ÕŽüÆŠRUWRv|ä““XóÊ¨ÌIàž¿m¥±`OQíXZâýš6=×E\ZÃãq\"är+¶ø=¢®«ãKBcÞ#;‰æÚUábêT“í_A~Ìz/ö‡ˆd›`\n>SŠ\0úÿ\0C¶òtÈPöQZ,®ÓÒ–„1,kÐT¬Œ®Þ©ëroÐb.ÑƒN9È?…*g4£i4®&ÎcÄ¹Õu;iâ¹h#„äªÿ\0t°Æb@82&ð}ªAšjý«DKŽµ –LóR4iÇk·çëN*ÛŽÒB©\'¨Å.îq@\0«Ô…	^\rhhF#MìGZ³\'Íòâœ±ªîÛòÿ\0µH‘qóTD›>ƒ\0Ê“éP>sƒW<µô¨^2Å²yM\\‹rîDcÔPˆÀæ­ÛÄ<¶úT^K!o—ufÕjW#*E¼dN[l\rÍ÷jd†)u±QJDBÝ‘ÍBbaŸZ´$g-¸`Ö”D­ÎÑÅ³cå*Ã	vÁ©”]†\rN}*AÐ¯cëV’‘[k`7J‘cŒñ…ÝN?u·ßTÏ0:¶æZ­„•ˆñÁ=…:w&IÆi#]ÙÝÀ<k±\0\'8ïYÅ\\#îBÑy}(Œ®ãŠ{:ÊYCÔ¦$9«g ¬®KÙ7eECånb«óc½IëÅ6eÎÞô0OB=§ÁÇ­.Ò;N=qRÅ\ZêÇ/Qï1‡PA©¥bì4ZTžpi´ÓòçÞ’BµÃiÉÅ0Ô¹àŒã5c“Çj¸—á²4Ö1à’¨§ +Ž3K­…ÖÄû*}î‚˜\"ósšŸ~d›Î8©äéÒ¨KÞ)eÎT|S‰ÎÑjÑãšÍ¿-­¤˜áBå‰4îØZÆW‰|Gkáý2[›§X£rKWÆ?þ/^xçQ’Ú\'h´è˜…P~ÿ\0¹­ŸÚâœ¾\"Ô¤Ò,®	³ˆþóiáš¼C÷³Kå!ÜÌqUØ„ÆùÐ2G’Ozë|\rðËRñmÂ7–V6#çaÀ®Ïá7Áõ–ûv¢¥ ê¨Ã­})áÿ\0ÛhÖ‚Ö8× u¤æ=ŽOá÷Â7Ã0#´K=ÀçyZôx`H€Uþù«0B\nçñ¦¼ ®ÐqŠèRÇ¡C€EF–Þb9ÛSª§ÜÛŸz³aíZw°¢µòùÆ\nŒÃ¸ÈËŠºÇ¡ó†	>jbØ-w+<!\'¥F€)ù›¯­\\yÖÝŒƒT^PìxÚ\rkPšìZIÈÄµPÖ#ýÉòÀ8æžWM=N@wY|Zsã[{¿/E‘ß!°[5æRE{<íÕ‰®÷R»hî„Œ±À®\")g”ímŽ[¥ka X,ŽVSƒžu–2=è·	á|\\uý3Ã†ÒxÝÛ;0~µèÚ¦ÉÚ¼¥ öªp’Ô˜×§+Äòø>M:én-£>LœàsŠ·á«˜ïí…´ÜÊ8Á¯SÕì£p #°\"¼ÃÄºé7mydËíJ(¨»Ôü?%¹2Æ8êk>¢ŽT6WU kë~\\ŠžjŒ0=ë#Ä\ZDP1™>Lú”ÒdØªºŒê.OãSÚÍ4¹ÚY¾•KÈù~ðn;WÐ<éW\ZŽ£n“Åp\0‹pÏÖ±o•\\KVxÄV÷RýØ¥b{í4ÿ\0ìF\\¯Ùf|ôù\r}_¡xbÊÂâO>Ö$¯È8ö­Ï³iÇvÛXU}\nÎ5_DiÊ|CyÍ³<o«È#UfŽyyÚHõÅ{ÏÄ-:ÂÝHmÔ Œ\rsnÚqB›;Su,Z…Ï\'X\'9Â1¡a>ïõ-Ÿ­wºœq@I…Sé\\ÝÌä–%8ªŒù†án¦\"y¬`¦šÚXa2éV$™$Fý*›È|²¥ŽÚÒæ|¤9™—?*Qrm\'ÍÎª—fÈ$=M!-Ó°õ¥rnmYZ¥Ñ(§kžsÚ¶ÓÂ™‰³q’A\\¶töÓsší´[¡qf`I\"›vsOiäÈâF*©\"‚0:î÷­Ý_J’ëæ†&o ®~âÖ[RË (ÃøMB’eZÚ–¡ŠOoÂºØX\\[ÊdØ_Ó®+ƒ7\r~l\nµ¦kS[³°=x«Z‡CÑ¬ù¦Âãšä¡hþßsæÃ$kw@¼{­:f~z×##•¼Ÿo$Òo@ŽRÜ¬\"fTUIwÃ8“o¥·ŽI	Ü*Ð‹íHËßµq6àî¦¡%‹¤éÏræ<m½Žõ‰ãCˆ u¦Ù»ZÊèÜàT:Ø3Bÿ\0Ä=kª\Z«žZNœÜY \"Ç^zWØ²Þ€Õn±·qÏñþ–vÜ*€HWßß³æŠtÿ\0\nZ’¹-?YÌÏTP]ªf€íÜy\"ªD\0$Ž§½Dòª†U÷ÍM‰å!#šTb¼h–RÝ‡sOH·ƒÆ)^Äù\n„(8X·|‡ÉÅV«vðåI#9§™*âÀOÍ“šsm\'­(ÂƒŽ‚šªCnlê)õ-]\"9®ßz!rËŽÕ!RÑØcP¼{g¡ªZ“¯Ä2Ga•#J’O›åæˆbß»xæ¦dùv©ÛP…«Ô:ãŠv8Å$*Û~M;hRqÎh¹w¸BŒHThÜ	\"•~lãµ-\"$e11¥S…,¥dzpi¬p¸\nJ#‹l¦f\09#–«qa£`Tn$a†U•\\8š\rˆÎs´\'´ãžµ6Ð óMÅ4Æ™Ä¯ž:Tb\n3óTÅ7¶C~U)ÞÅ¾o÷{UD‹ùVvÀlŽåjO+jœŸzXÂÆ¤îé÷¸¤Yî\'¥%âÆGØähnU¶Ÿ˜Sñ¹px¦Ì¹Fäþ\\¨­ˆ‹:®ýêbþè°ÝSy´:o˜²îù~j,eÒÄÙÎ9¦¢§ŒÖ¤xóÐSDŒøÔí¸âôŠB2§n$b……¨!¡@éLcžØ©‡Ë¸ÏJ‰±Ï­*;€ÂTÒ	’8÷¨e$G·×û´È,„©È=êÔF‹%¶gŠ‰ã\' {S¦\"4<äÖ{Þ	$;j¢„Òz÷ª7ŽÙ¯ý¢~\"øJhmåÅÝÀ1 žzšô¹®ÄQ»ž08¯Š?h¯·ˆüi$*ÇÊµýÖ3Æ{Ð“\Zhò»‰^MÎX™d9$õ¯Zø\rð¢O^Fî/ôhØžæ¼×GÓTÔà·A–‘‚×Üÿ\0\r<;…áû[8)ÜÕ¤•…½”\"€àVŒ6áSÿ\0×Wd±Š‚^™\\’}k1ûB§\'Ö‘­Â¨9ëÒ¤H£E\rž}3D¨¾IbÅcLÈ±ŽaëQÃ&íl)ô©^åd÷§Ekµ2N¤âb2G•BUÆì}ÚÒ€XíÅe\\Í¼¼çG‘Z1ŽÜb£Ý’G¥(äÕƒ\0q•:Ð•-Í’jxÜ98#¢ÓVÛvàNN\"òSnx¦ZççÇˆ5e[t@rÝx5•£L÷š„q¦sœ‘Y÷s®2XÚ»Ï„Þ¹ñ ÷\n»b‹‚[Ö®šÖìÆm¸´Ž„G$È«YÀWWá½îæùAºí?ÂvºdEö‡“¹4³º*°ôí[NI«#’…\'yäß½1¿ËjÉÖRÞ9^F]µh³Æ]FÖö®?X²–òÕ f*Ãšä]®vü;u#6•vnm‰òËgmIâ-}nô²S‚F\r:ú/+|NÈjd¬¯\0,@=*Úhµ+¢Î‹¬:L\"‘‰@Í}©ð§U€xÂÞ7]ÊŸ2“È5ñÇ´í]vÚ»¾`NGjúƒ@Ñ^Æê#*}ÑÒ°šº£=@ÜäzzT\r~ ›?eÛ¤“»ƒV¢±•¤ÆÐqë\\–+™ž{ñoOûU¸½ˆ‘°|Ø¯¸Õ\\#©\'xï_TëþÒ´š	*ãÅ|Åâ]M[º³™pQÎ¨íWfm6Š:v£$„¬Ø3QÝê1£T(5+X%¼&Bã8èkQ‘¤8*;Õ­^„¹Yšâ7c·éT¦]Ä•lûUs›™°~µ4@ëË*–†~è‚*JÕ˜ˆbZ†=Ä ;}ª+5·ÔûqZ-FÔKJŽÄž\rv~	±óg1Ì}1\\4V2/Ê9¯WðNšM”YïŒÔÉÙ1Ájtòµ¥¬ªÞ‚¸o¡¿,¡0èV½\nÿ\0Â³ÜÁû‡ØÃûÂ¹û¯Ýy€ÊË¸zw®Hµ»gO&‡‘ÞØOàQA	L“’G¥zoŠ¼6‘é¥Èù—œ×®Ælà©õ®ºnèå”luÏöLàž2NÒ±<Œ^Jã¦NEt‰\"Óga÷y±¶\\ÈjÜt¹1z‘ÜG\"ggÞö¨íZDÉïšÐW#ÌÇ¥néúw¦(#¦r¬lšÔí¥UÒš”YÊßÚ‡O9OÍÞ³n®Éu`v‘Ò»ßx>OÊ‹+oWó®+R´Û›Fàkž•U{t=ÜNë4½­=Ìÿ\0Ú}»_µ„óJún¯Ò_…úwöo†­£Æ~ELWÀ|5.­ã‹@ñ7•nbú?áËUƒG¶@\0;Fk¿cå$¬õ\'˜	W~ª­©ÎHö5q¢,øïRÈFß-MŒ¢Ù^0yÛVSi^ÃéUÄaäÚ§#Ö§1,}7ÿ\0ÀiDjB¢ÆO‚*Q…\\*¶^7}«•úUŒ24	l*ŒöÍÇ^”ª8<àÐŠ\\àR(@ ‚j¥ÃaÏ\\*TïŠ .§9ÛEí°Zäv®Î	#Š°@Çˆâ\n˜SÇÝÁ\\W#W>”ì†àñG–\'ò¦ãò¤ƒpÁÆjH‚ã$f“iÊØèb¸˜È¨&Œ²2ƒƒëV1Á>”Ò›W¡>â„(•­mÚ0À°9©öasJ/9¥P1ëEÇq¨Ø”•\'ÒŸŽœÓ\ní=h\Zd?tã8ZG]ÅpØ¥(9ÍFxlmãÖª)¤ƒ‚“ša:R–çhÇ4õPÇåUpVEke/¿</O­JÊzb¥Á=ª\"x qBwé †må†9êiHÅUœ’í·=9ÅQd²L˜#qÿ\0€Õv™Jœ7áRÀ«µƒ}ìÔO÷²F¥KÚä\\fyÅ¶ò>•åÐAŽyªë<¥ˆûÞØ¤\"Ñq¿æsŽÕWcË!\"¦Š6ˆ±sT˜Ôˆe•–FPØyîA¹©\'€HF>´Ãn\"ˆ“Ë{Sº7q’3yg#\'?z²ÕdXØgÖª4xbãžÕNVTäò*V¡žñ¦¦Úf…s3¨ù#\'$÷¯€uë÷¿ñä¬Ù\r!$×Û¿oD^¿!À>QÆkáñ›ù	lÜÕ­Àî~[ŸØÄ1†g?Zû‡IˆYD¤‘Œt¯ˆ¾Î¶ž6Ó™Û\nÎ&¾â[q5¸elàZ6X&YÁÀâ’T$¤z«¦ÆÈŽO#u_1—5–ÏA”ÜÈgmXXB¦ÒwcÖ¦X÷6ß^†«Ëº)7ù=)Þû²ª0F85êcg©ÕƒƒÅC4ŠÜÓÊeKˆùÚÄ7j¨·TÌ]•Ì‡$\nˆõëš#®ÂV)ÅÆp6Š³\Z€9—Ë‹N;\Zp¦˜ÐÇ‘U6ìÍ+.@m¹ô¡×±4Ó)ØÄ/CŽijÇ¢GæÅ¦™æKó_OüÒF™á4+-)ÜNz×Ïz}«Kz‘œ³Í}UàøËAµ‡#äFqíU¡ƒd×ÜŽ•:œžsÒº+õ\rl=+•L‰&[§jMÜ9’ØËvIÓÒ°µ=èì¶Jù[°sYú„¨#m£æ÷¨²[gcÌ|[b ¤“Þ¼Õ³,Ï#y¯Hø‰~°Ù²ËñšóËYî:‚E%&ÊJÇ²|ð¹ž[FeýÚáWŽýÿ\0¥{¾2-è8àW\'ðßI\Z7…­ 1üÒ\rÇõéÑÞ3#/>†¥1»\ZZe’Mq!ÇõÑC¡ˆ0¦i±F‰ó(ÍmZÎ#c*kžKQ\'¡žº.È‰¯Ÿ>6x7Ìñ$sÀ7Ä7}ry¯¤®/Ò8Ü¶Þ¾cø¯â/¶x†âC#O•px¨K]\r ûqy IRs‘íYi6öüí¶/|B9\nsîM`Ï©›’ÀÊµW\Zó[FFsôªpÙÄ1MšG\\ðHª«tU˜¶@ö«ˆ%°‹k>1Žæ’Hão›©žº‹2ãvwSNgÝ¸Öš3Øµ–e\0ä×²ø.ÁÛJXBƒ’v+Å-—®{^ãá»ÆFŠHFX(ËV5“±½-õ:ÙÇ’wÉ¬ReÞ	—œô®fïÆ­my,r0bA\\þ¯âÆ™X†ù»b¹ãMÉ›9¥¤ñ…Ôw:|‰öôäáÈgBv·@k^ÀëzµÚ¥¥¼ó¹8œ×¥ø[önñ‹d3X\r>2Fã9ÚqëŠìŒNg.cðäxÒ$îk=:æêéâ†‘Ëc\n¹¯WñgÃIþÏý›q(v1ïÈ÷ÏøW¢þÈÚEî¯â´ÛErÉlžjçiÜkmÌµÏ/ðwÀ?kA%M2V÷KŒ/Ö½Áÿ\0²F¶÷\\jÑÙmä,Ycí_TiÊ–‘„XÂ€:(ÅiBC{T¸)n\n£[ì¿¡L“jO6¡;ƒó1À_ ¯~-ü5›À)»Òæ;à\'t÷”ç~–ÝB³Æ8¯ÿ\0i6?xˆ[¡\r:ð­Þ¹êQI{§¯Ç:3q¨ïy¿ìé¤¿öÌûcI`+íM: p5ó¯ìÿ\0áY´[¢“ÄD¡û÷÷¯¥#HUÁû§1ÆUäâ´ ž#–*0ÔÕƒ‚	ÎkVÃ+)\n@ªÒÛˆÛÛÖ´½Žo‰ã€FÞjPŸ/Aš1…àÒ©QþõHn&Á@UÎ)ñÅzÐ\ZØUP	©£µ÷qÅD½y5e\"8çTÓH‚±øªH!OÍM\\nºTñº¨;GëBW)JÛ‘lØNJþ4†7„f¤PHïJ°SŽµVÐˆ²°O‘˜þ$jvíçÔš0Ä(â¦òÎÆZ³æ±²]ÊäcƒJ r>”2•84ðÆxÁQÖv2\n§ô‡p‹È0Ø\n†ÝšüÏ›¾)ï¡¤WA«“8¤Ç‘ÅIxTÿ\0v—	ó7ÞÑí çµ\"àÆ)g\0~4BFy»Sæm	ÆÚ–Œf£c…8©|¼\ZnÞzb… ÓH® œTª6ƒÞ‡Â1ÀëëI»+žž•HÓqùãã4üŒâ¢n„c&œB%t¼VÎTŒS&]Ä°pGÖ¢äg±¦98<RÕ†äÐ¸Œ±cÇ¥$’	p¨Bš!{\nH^@ÄsÎ*¬O‚Û—mX~ã5U ÇûUkAÆÃ\Z}¬àº:ÒHLÇmUžPˆû½iÖÌ&Â0yÝÞ“ÌQC7 qLv+éü<T†#æb}Éª¯!òÊç¾i©\nÄÎ±ðO”žZH9#Ÿâª2“)lh&9ä{ÒNÁsƒøåaž»ðá3_jÍ²íÈf¾úñþšúÎ—u	çrŠøWÄºqÓõ+»v\'t.G?SIo©Iè\\ðÖ¦lï­®·sƒú×ÞÞ\0ÕÓ]Ð-n#pwF3ƒ_¶…\"<÷ë_SþÍŸ£6ÇG¹”¬‹÷2zÖ¶3nÇÑ1í†VúÕÅ%xPÆ³®ð@\'½Y‰²1œÔîÐo9?7ÍE,bÇŠ’XËÇz‰äžM5äU®ØE?\0*³drF§Í\"È˜—=©›wá]°RºBzè6w]Ç`¢\nI9üêfˆlÜj&¸È\"£áw\Z°Ôâª5âŽýªËÂ¯Oz®ÖŠä‘Û©ªM1¢Är¼Šr`ƒ»ÜCÔâ˜³†ÝÇšnÁd|à‹#}¯YÅ‚Í¸f¾£±ÇF6¨ó×Â+E—^˜Á\"¾µByèzÑŒÛÖÂß2ùD§½s·2Ñ°¸5³zÄ#g©â°nœ\0Ëžk7Vf]À*ŽÀ¡®sQ»b»xÁU‰\\ç½q~ »T†FU\"—B¬Ï5ñÌíw¨2¹ƒV¾xlëž!µ€\rÀ°\'ÏÞ\\‹Ë·89ÜzW¶þÎÞi.§Ô\\p˜Doz•kƒØ÷}2Æ;8’1Â\03[PNíBÀp=êµ¼$p9cVm´ss¨C4„ìŒt¦ôBÍûH‰\\c8ïW£ùx\0Šhšx°Š§&°`®kš+$sµ“¥xníÖq…~RN9¯—µ\r^Kås?Ì3Þµèß¼Rnf[$¯V¯!adÇu¦‘q³)\\G²`qš$ÒÖÚ/;Ò¢b7œÑq}#Æca€;VŠ@¼Ë`#[;éëÞ³¤¶VÎ852O¾ÙÁÈ¶Œ%%B’(×¡*ÌÌhðÄw©íòSh=+¦Ð<©xS†kIYÀ-°àõ¯¯|%û$øSN±†Kñ%ôœ9\'åªJú‚µµ>/Ót{»ÉÃo$ŒÄ`\"“^Ýá†^%½ÐvÃa*»|£*F+èË/éš-Ü–Z‹l©tª1Ÿ­tÚ~´låŽÚö(Èâ5x¹P{f«—›F\\n•Ò>sðïì‘©Ý‡›V¼H›$“Šôö`ðn“†¿Íã¯?¼l×u}«êyéD‘Í°ªŽ«YðhW—ðÉ+]ŸÝ¹ùXóŠI$8©½Ý‹ºNáÆ£O³sÀÚ£<W] êªÛ;F»0y\\s\\Ž‰§Á-ëm2˜[<ó“í]—ƒ Ùm$¯‰‰Æ¥\\le8Y=O™ÿ\0i¢Ðø²>àÛ.sõ5¡û<rëÞ&\0p!Œóõ5ŸûOËçxÖP†ÿ\0öjgìmp¶^1×¢wÛæÛ \0ñ’ÒŽ¦éb´‘ƒ•ÓáNCb±®5hâ\0Í\nîeqM³Ô$–ö$lRÅ¼5RÓQFýM^ùm,\'•˜\"ª’Xž+ä›ûåñ/Ä‰Õ\\H¨Ü×»|L¹žÏÂZá’b¬9‰‡¦Gÿ\0^¾~ø+aý©â­Jÿ\0qe	’}óPŸCKYÓàÍ;\Z”ò/U®ôÄÀíXµ;ndþóp}Eu!‹åQÀ¥ñÙ¹ ápµ8–™åÅ0\\.Íª1VQ· =3HJéØ…\"Spê´»sV$\rµ¸ª’FFW5)Ü¶Gæ\0ÄTÐ®âAéÞ™‚3SÅ1ùGJds\rÛœ~5jH,ß/Ö– n\'\"Ÿå‡ÆE%.¤ar¯Ê)²7^7TÛ«\0j0‡?/ËY¿ˆ¸+ª:®õmÕ;!çæõ¦G^¬Ôñßæâ«š$¤28T|Ô¯þË}êx\\PÔ‰ûªÄ`1<ãýêùcål¯¥Jc$ã8Z…¡`Ä‘Bi‚æ\ZHÉÀÀ=¨PcbAÎi)é\"înjŠˆô;‡Ì)ÑmŒ7+µ©XŸ*ý)Œ	NiEØÔ“;{Tj<µf55ˆñS©I…ª%jÊç¥0„÷©Èf%—õ¦B»îçŽsH•&]ã®i8#­XXÀœc­&Õù™[uRcÕ\"ºnÁÝŒûT2+lln+êMOMçi«CµÊ,æ9¨„-&JŒâ¤›‚TÔLæ’Ð#rÅ¾*ÇQËò1xzÑ.HÚIö¦·Ý4Zˆ¼f©Þ(^xÜ*áJ§u‚Û³ÏLS)hU‘r;SÙä7oÆªùß¼	œ*ÄN³€Ôl7€¹o—ëY²¦àÞã«ò/œ£õ&©º‘òžiŒÌxŒLAèz\Z‰ÓÌ<­h\\\"…ËoZ©\n™Ø¨ázÒô¡{n¦&\\ðÃ¯‘><ø1´Iz‰ˆn9cŽõö\\ÖÁAR2=kËþ/x5<MáË„Dýú•±“Þ¦ýK½¡ðìÑ›yØŽ™âº¿x–}þËwÚèÃ<ô¬Í_M’Úâh$Œ¬ˆÄG5Ÿi7Ù¤éÇ¥ohK]¿þøòhqK0(3Þ»‹@bgV<WÂÿ\0¾$Oá\rV	D™µb7¦kì-ÅvÞ$Ó¢¼´2²‚@=(zêˆQ¶‡\\Çä \Z¨ÌÊ7zRY»¼mžG­C;¯˜ã4“îVÈj¡F2rqéMÞ	É4ŸiÚýßAQ$âSŒœ\nÑXVèËêÊ\" ¾ì¯CUvß?Zi8)Å»ƒ’z+Æ²6È˜€3U¡‘˜¶Iü*V_5YCT0À!œ’{S[P\\8TJ­¼;Õ‰¡äìè*\rŠ;U%Ù‰ùŸ|/ÔçÒŒÓGÆáÞ½wLø’m¸0àšâ¼ðúõ´E¸Œ©Î\rCªèW¶lÌÐ±_Q]‘¦¤5ÎQ•Ñè7>3¶¼bR`öõ¤:”w1‡¯¥xìÓK8;”ŸZ³kâK»d*°W;¡%­Íã^úXô}VèEàäÒ¼ÃÆzË[ÀÈ§–ëO¼ñtò£#°\0{W¯_Iy($õ5Ï$ÑÕstôi.GSŽ+ëÿ\0ƒ~:?†má¤ˆ=y¯˜þh²êzô”Ü¥†xí_fx~Ím,b@¸( zQÐ±ZŽëìá?VŒùqîÏBærò¤àVU%bà®hI¨†\'sŒzV^¥­Gkk3“…PIÏ\\£¶y¬­jÕ5g¶r~n¸®tÛ4Iâÿ\0mkw‘…-…ÕÎÝ\\¼ƒ^ãÂý2DbaÜ{1ªðÇKE`!çÜV±in+ØñƒíUÞg2•ÉØ×¹Â´Ó‡ü²Z†÷ÀÒ¡78‰:e4û¹âñ3»Œô5õ×Ãß„~ð¯-µÍrÞ6 O+È8æ¼—ÂþÐ<A®[ÛC:9i9æ¾Ç×t\r>çÂ²Ø^ kD‡qØþµkä§Øæ¾êz‰,æ¸Ò,â}™ÙŒ×§‰‚X°N¡O5ó‡ñZãKOÐt¥†ÑhÚ½kè½\"wþÃ‚[¢i\0õ#š´âÖŒs¥:vsV¹Âé—RHž&fVyC <ç{V¥µ”—–6öÊ ÊÓ,Œÿ\0Ý³I,\Zl#wEÝŠ8ÉäÕ¸5O³«%´XÝü]éZæüßÊ]´ÐîV{™¥Q\'å«gcelg\r.ó)Á¬“åÚòìwKÓŒ(þfXœú\ZîÙ~GµÒ•jC\rÜµê÷FÎàÛÁ—P6…?Î¦‡HL$›ˆÏz™æ¶µ(<R×¡\Z3åŒ÷^5¸’qµÚð=8?Ö²ÿ\0fÚ_ˆ—I\nˆMßýjÛý ž&ñyš\n©ç9#5Æ|ñLñÜÒ£,e2¼ã½RÑjLbÜ¬´å•L³Ì¨eØÇÔf£k ‘P`Ú¼’ïâ½Ã¬±ÚÁ´8Æ[šÂ¹ñ&³¨ç2¸_@H›œV·;éàêKuc¢ý¢<cg¦xFhMÌeÝprI¯+øâxáµ¼ÆZI~\\þ5Ä|hiÚÖYn¤×eðBòôØ”î‘ûÔÂ¢eO\r\Zió3êo[5¶—<;ŒóZ÷‚dãð£M„Ge\ZãT\n[¢6m­.ywV*/<ñš·ÛÇðîªq(QÒ¥bO9÷¬Ù³,´»wTHž{1Æ(µÝÆjÊ®=êPÒor%¶yæ”#8a¶œ1“ÜSmÀV#iÙ\nèXÓ\nU°ßJ’ ž˜ö¡˜F6úôÛD2Ü\0éÒ®á¦ÂÉŠ¯¹ã5#!\'­*¦2zûÔY¶i~mýªNTÿ\0z€q\rÆêP†0yù*leGÝ5^fecópjDÛ—ÇÌ´×pÛzÐŠnèjÄÌ¿~Á—©¦\rëgp¢9`:®R¡ØfÒ¹¤(S¾iYÎHÏÔr¤äd\Z´&„•Ž<ä–¨–F\'8È©÷’>[±Ó]JÄ0Fã\"–4Â?Ê»…8³—o4‹êÕWˆÒì;H<zS†HÝŸ—éMoÝ+™í\rƒÿ\0}TØ®aåKœãå¦²F\0óNI]ØÅ$˜Œ0ÏQÖ‰þñYŽŽ;Ñæ(]§õ¨„ŠAp*º#}à)ï°•ÖâMnlÙËUD]ÇÅ]¹Ï–@\Z§ž2\rUÍI9Ç§8¦‡IíïC¶’jŒÌì€‘´zR%l[2„œŽ}3YW—…°\0Î\0«y\rL‚Mg\\©í\\œU‚ u,@«¶Cm~ž­PC#\0•³ýê˜ó8¥n¤¤iP.›5¿Ê1N·ÛåäpifùÀSÞšÔvÒåNç8¨¶ˆó´~Ujâ5UÛÜŽj°ùA8äzÐŠDC\nÀ‚¿ZÍ½µVI“uk«y‹¸}©¯n¬rFhÏŽ>=xôÍVMJÞ\" üÁG\0×‰Þ@pÎìkïïx^iSÛJœ:žÝëãø>_k²©	’T‘ÔRŽšµ86ûËm­’3×Ò½ŸàçÅ™¼-v-frÖrž•ãPXívÍK¦ÞrFãœâ·NäØýðîµ£f·Òù‘¸Š»+oM|ð‡âäþž+Éí$ldÿ\0\r}?¥ê±jVi4N$V\0®*yz„]·4 E\0ã{ÒOÇzS ”¸ õ©;TÛR—r+Ë©´u4¶ÌÒÆXö¨$9vç<ÒÅ.ÀOcÚ«—BÔ™GÈBá[éI´Ç7WªñÊÅˆŠ™dwFþt­¦…]60]6\'§µFÎ@8Æ}hÆÜägÚ«K+««”x©÷‘)ÜñÍìý&+PFTmjn \"•v²+¸ÅbÃ¨J¦I‰!HàÅ%¾²nav”l à{ÖëMŽ~W±SSðµê¶cP}«ŽÕ<±	MÓµvÞ{²“»?SY:åÉA´¶N*š4ŒWSÊu\rTœE÷šFÀ¬^È[êÒCÿ\0<~Sõ¯Mð½Ö5ë«©\0û%ŒFG=‡§ò¯3»º7Ú¼ïœïrZÁ¾cH¥fýô=Ü÷ÒG¹S\0Ø×Ò6é¶>kÉþéeáˆÜ/Í)ÞIî+Ö F~Ç¥R²BOQ®pÚ[ÛAâw%ô­cfcÜpG­W¹˜Z@ò°8AÍr»6\\[)y$§ÝåG&ª¦ž\'¶7}jž“¯\\j×r¬6®-ÉÆò+¬Ó,ŒL]¨÷1CM¢t˜c´,@ÝŽ¢¹ë»\" wë]œª“JS$cµQÔìÑ#!Af«²6©l[æ#šñÿ\0úá’K{lUÜø¯o’ßnòÜ(WÌÞ(fñ7Žæ·‡ÓˆÔûg£vôìÿ\0á\r^óâ…9†Ad\'NqÏô¯®~&üL¶ðkÚiÒÚÉq|ŽÞ1’Ã¡®[á•­¿‡#³ŒÆª\"@;×¡]éÖúÖ¥ow%ˆ¸’vHË¿Jë„\\•ÌÝ“5´iÙKE·`Ê“Z—ñ,zyˆ0x#´–úfð»YW8®;[Õnnm­X1+)ªŽƒ5Ë±q½G«%¢;Ãsš°ºÅ´°S\\…Æ™¨^aU]pÄ’ÜdséUõ{Í£ŒãpÜyëY¹$wF‹{³µ_ZÛ’ÊÆp8ÚµJãâLÁE\0z¸X­	RK3œ\n³kn¬®§-X{[ltG\r¹¯qñR»ÈóÙ8¬ÇÕïîÜ’CŸV¢+eÎÕjhmÊ]*j]I3HÒ§‡•üDŠyu²®I^9ë\\Wƒaâèba€[i¯Eø¦­©	\nAÛÁ5ÂøNßŒìÁùZIBƒîk¢	Î<ÙÉB½Ñï6zd1Ä ÏÒ¥P¨X(\0{\nèíü-r,Ò@¥×nM>ÃF?-n|½¤ÃØÔ}^]t;ž2=Ï•>3^=Ö¸°¨ùc<ƒ^ëð#Kcc¥ _”€Ç5ã^4Ó£¾ñìð}õóB>¼×Ô_\n´XôÖ…#_’8Åh©(ÇVyÕk¹écÔXùq\0+>Kƒ!ÅY–ìaÛÔÕ$*ùù¹©ŠÄŠ3“ÏãKSÛp­÷±íR‘µK(Þ~´[BHa]¡±Ë-L„õ&¢26ÎŸ7µ>\0~ñ©QdüZ\"h¶.â)\0˜ƒNó‚V’2¤675GÝÐ¤Í ûÜ\n°Ã`¹4Â2¤ž•Qv“Ür®äù†(X‚’{ÒÇ’§\'4à\0þU 7ï/‘¶Ü“¸ÔÞjí##Ž¦£y\rØv4\0`»P¨*X¨SJæ\"\\RÉþÍ-dÁ÷#i÷.6Š‰›Ojº•û¿7­3ùÐ´õrÇ±¨±Øw©#“oñL¸ÚúŠ”ž3N…œHrxïBÌö…©Â)Z#¾¤®n…yPŽKn¢—ãŠYdÉeÛQ.Aã¯µ%°‹i]­ÂÔ_êßÚ•VI7&qõ¦}™Ô’A8§ËmŠŽÂÚIÅV“ ©HAýêr²ª¶ÓÍ=·)y™óÀ@ã¨õ¨ö°P¶þjG,ÇŠ$ó2iÚåÇr´ªã©È¨*Ìˆ]Ø»!\\‚(ÖÄ­ù§êŒ@=)²Èënç¨¤šÍ\'ŸvNWµIòSiû´ì?™Ÿi#˜ÙÛ‚i³Íåú’zU¹íÖ‘P.wäqT˜Ö„Vù–-øÅÌJ’	©Š»AÚ3Ú“csI0R\'µÞƒnsõ§ÜJÀà6E$Eœ:ó•\"Â6°?yº‘T¶™MÉcž¦¡•elàà{UÉ£`üÔD`‘œã½MÉ¿B¬1Û–â­•ö¦Œç½?ºzRa¢3o` G¼{ãÃEñ.—,ðF\rÄc*Øæ½¾â=êF:\ZÏžÕg¶e ÿ\0À–´²f‘v?;õ]\"[9¥¶š2®¼`ŠÀº¶{bGå_Püuø^B>§e]yuQÚ¾z¹ÓþÐ¥*Êh‰V[£3JÕ6Uvé^ëð{âäš\\éa}&è$ #1ûµóåÕ·Ù€qÅ\\Òõ7†EùˆÛÐÖ‰¦KGè^ŸpoaIb`êFr*ÚÅ)1ãÜ×Í?þ5I¦°¿s$…W\'‘_FéºÄwöË<n²Fã ƒI&ˆV$1˜ÆíÁ·wÇ¼?Þ‘çÜ\0$\0¾•ÊTp¹>•šæ(™*îÏ4øå=€íP,ÙRH<v§D–ÏJ¸¾à“yl‚›É%z\nvÍ„Œƒî)G+×58Å‚C#üÍÎ{Õ-JÞKm‰Œu4L.î¼ó—TJŽêGò®\'*Jô\0Ö·±¬dAw*ÞJwþèA¬sUó#rv8vòU·³ÀÎyÏ¥sÚnœú÷‰ml\"Éà¾;Q{šÁ+µ¶Ÿÿ\0Á}oR]ß	ë‚ýuáZ=°¹¾ERK;ã\"½÷öÔIð®‰ Àp­™c:3^9ðÿ\0Nûwˆ,âÅ\"ƒÇ½Jw4JÈúÓÀšö_‡,£PIX×–ÕéÌóNAê••‰·³Š5ÁÚ b¶´˜DQ–n´7¡œV†”eHÃŽ=ªb—eÑ—*Ü`Ð×[ÜõzÕ@I®~ššk†A¥ZØC¶8ÕÐ\nŽîT‰K0:òà(#=+V™¥ˆ*±Î{wªM%¡>¤Qê9¸ÈäÕÄwž7ãƒT´Ë@Xs[\n™p `P=ÎSÆ’ÿ\0`øcQÔ\\\0cŒàŸSÀ¯œ>iGXñÔs>d*ÆW5ô×ÅÞø£Â/§Y#)\'Ô\nó…_î|#}yqw\"4Œ›Wm\nÑÝ†¶=×á¾›m}}t“*Ëå…8=Žx®ºÙYkßÙqC¾UÀv_á\'µr&\Z…Ïˆ˜õW	?ð\Zô|#fº´ÚŠÆòXú‘Åt\'Ê’3ÑÜ¿r…­ˆoºG&°\ZÆ8nlÆÌw®šû1ÙñÁÅs’ÞD“”3H*ž¥Áò­KZa!RW#µrþ3ÓeºÔcKxZ\\ Ž¦»8g%1D’22kRÎ!ö}î€¹ëPãÌ¬tB«ƒ¹åVžÔgV&1>µn]ØØ4¡„“Â¨¯Ifb\n=ªÚEæF ¨ÏNk8SŠwe¼TÚ²<÷Ã>2Ú«ÝÆ|Ò¼ƒØæ·-ü%\r¼ñÌ±¨(;÷®­ Û‚4ÿ\0,ç¾khÚ-Ù®¤ÞìðÚÂpÅ£Ûjq«+ÂûŒþ½|ý¤\\ýƒÄ¶œâ9Ñ±ôa_c|iÑ…÷ÃíPmÉE}6œÿ\0JøÏPƒÈqƒÁªŽ®æSmŸ@ñ\\ØÆcPE`q‚+;V¶K].îWo»\noƒµ½ð¦‘q¸|ö±wÿ\0dU?‰:ªé¾\rÔfbXN+7æ\\òž¦ÿ\0â9‰¸É${×ÖÞ¶1Ø´Ýp>•ò/Ã›Èõ/‰T‡ËçŽÜ×Ù¾ŒA£\"ŸLýi-‰“¹:ó#\0Ù!½)P²1$CÌ|cŸ˜z/ò…ødlŽ~U©\n¼Ž>”ÔEVŽ*­Êc{ÏÈ3Q’àdÕ¦•{ÓK†85žÅ{„v‰¼¸úUà\0ÏÕxÂ¢pp)êÅ}ê’´& ;ÒíM\'¯4¢BƒE…ah4‹ÈÎsHÏµIÏJ\0ERÚŒR¹2:\Zg<óšenA>àD(Qzš˜HpA¨äb àf²éd%Ý‘²/ÍòóíQ6ælµeSrg½@¬Cmqœ\Z¤[Q#Táˆ4àTÍ&ÒF:T%ðÇ5HÍ]“@Ýž”ä…‰fÝTÑ˜ÍN²1^´—sMÔrHIù›ŠXœ¢¾Ú|+ˆÉ*¦ƒ´Âäµ8îggnaS¡*6Ÿ÷iÁ~µrùR2õ§‹’{U¤l¤‘VMà‘·AMò¤äƒV™ÙË0÷¦òCe¿>ôí¡Æ|èì0ãQlxC!«EÔyŒªò\n•vZÕ™‰¨í!c·Ò¥’S «lÙB1¸ÕNFùJ”Ái¤\rX‡z}£žøªòº2°Ü²È\"fÛÆê®îXŽztªØIÛBÂ•Hwc…é»­E3ù‡ eW¸¨ÙŽÂ	9ô4ø$uRwQ~ƒ¹Šd‚GÒ¤eÌWƒýÚ§3H€¼RH|¬•9o›qbÞPŽ71Ú:U%uH·¨Ëb‘gvF,½)õÐŸSN[…‘\0xïY×PÀûÆ§†pcaß¸ªwI¹·g\0RGpÒ’„…ôÅ]ˆ˜ˆ=MPŒÄÒü¹ô«¨KSUöJÔV;ƒyª3–‰y|çÚ¯cå9ýjäñ˜›\'šqLÆ>«gý»E\"îW9¯—¾-ü5—D¾šòÒ3öw9#+ê¾TÉÀÏø†Ò\rjÆhfpaÞŽ[ŸCâû!q\\ë[=»Ã^ÅñÀ“hòI!¹Æ:WŸ^Ø¬èË·škR­c&ÇS00\nÜzö…§Ñž;ÙLÖÄà<­x]ÆŸ-»±ÇëRÙÞHçœÕ«XÎÇß\Z~­­l“ÛÌ$ùÊš×ƒXÁÍ|—ðÃâµÆ…2[ÊKÚ’Éé_RxoXµ×,âÚU‘X}ÐzTµ`Z\Z°©–ëJ «õÇ½*¡Î3Å&	8ëJK}\0k†!€9& ž)väçØÕ–ÀÎ:ÕTQ¹Û*rŠ¤¥ª>s´š;5„çt‡­>òè`[ŽPrMeØ	/n·†Üˆ3ƒMº¾1Ã;2áºÑ-Ly¬Ìvë|îê7G\0×aðÃŸnº¾Ö¦\0ùQú×›j÷F8LKÒœb¾˜øm Eá¿iÐ¾c¡šB}O5=\r4G~Ñú±Ô<d-£åmc¡ê¥Uø\r¤µ÷Šcr»„`5s_õªø»Q¸2y›¦l}3Åzßì×£‚//vå†g­@ö=êùÔ\nÓŠß#\rÀÅQ·C¹²yUø¥ÜûsÆ*eäD|ËövË–$d\nKË ‘ŒéÞ¬BØƒŽHª“Û›…%›9&²ÖÆš²œŠóÈ+ïEµ “;ÇNÕ\"Û23R[!ˆ2“É§¡\Z“ÚÀ±~µamÁ˜·ATÄ­O5)»hí$™›…RÜÐ‹ŠemSÄVš|†)§XøèM`Íâ-1ÙöÝ\'=9¯ ñ­>£¨ÜLÒ±Ž{VÚø~+\rEÛ3`×ÖS½–Ç¨ð©sKsÞþZÚX&¦-œ9¸—Î|õè’øŠÆ;õ±{˜Äîp±ç“øW†þÌ™åÕÐ¶íŠ¤gßŽ?*ôM+á€‹Å²ê×&Cç—œcžzß4±çU¤¡RQoc·Ôœ0FÕ#¨¬E†36é\nƒ[zª+[°\'5ƒ&”ng2s“Z#8ll¤H±¨LŽµ7¡If\'é–p< dp«wåHÊýjÓ„·EÙ”ýêÂ³#g¿µ$(#sÅ/R{Öw&âÉ{,D²*ŸsQG¬C²‘ø×1â¯ÝjúœC!Ž8ÎO½lÛi\n!˜ðsÍoÉ&Ù•Ýô1¼m¬ÛßøcY…Wqòú‚+âûü—€yÇ¾äoÚ¼Q²îY†=ëãßˆÚÐüW©Ù*le%~‡‘Qx­‡­gø)«êZç„lR,ù6Íä6}±ý1]ÇyZ_FdÎ»z×\'û)\\—Óu«nc•dÓ#Ò¦ý£­ŒZÛ½Ãm,®}kg.}´U·<càVƒ\nëRÍ9õ¯³´øÖÞÅòªàWÌ_³v†¾r¹_¼ùÉ¯ªØ¤D‡8¥sÊC½Êaq’?*tEÆ@ qÏ_jtQ»gk× ö¸ýÒ®9ê4“ž[iò\0NÁÇÖ¢•$54¹ƒBÒ°fÝŽ(P«ÊíjrÁ´~´ÕA\Zºç=)(¾ƒ‘:•#ü*E\0˜¦$^Xl±¦±“ï”tî€¾Y†Üc½9Så÷÷ªä’yëRFå·nj1*WÐ°1Ûô¤Ç^* ë¸ß$/ò d…—R)À=óMˆþë¨ÜqùSE-…ÚsÍDc\\7j`Ç¦œg¥¸÷ MÂF_á§$\0d÷4â›œqš”GïR—qE¥±YÆÀÃnê¥)Ú2¿z´g#kgŠÍ›F{Qv«;c¸&R§¥[G8ÀäÕL¹Wõ«NÍÙjq*êÛ–Õ·Ç€˜÷¨Ì…rãOÀŽ2ªyõ4ß-\nõÁ¦DJ@\'úÒ‡#½8\'\nnß›+[§Âšfç§ÆñƒÇ½J\"]¬A§r¯}ˆ$õ¨™XçÒ¬9r»†£<Pµfl-²bzT7Œs&Þ„Õ«ˆÔ1;«2ñÈÂçƒ@÷+»\0\r\"HbÉ“ÅîH8<Š£ »ƒ†-Ý¨€¶ó\Z·ãIÒ–\"}Ýi”™}-„C+Î{š§{\ZÆð¾Õ<wè«†9jÅÕµp²´x$zŠ¤wlÛÃ)Á#‘šŠK‡ŠšŽÈ«©`@\'ûÔû¬Ç–f5V\rË6ìÒ)%BóÛ½2é—nÃÉëP,ÌéÄƒëM’pêAl‘FúýFÛ ãÞµa\Z–\rò‘Íd	cÛã4ÃŒŒ”!šßîG\0w5—w(c·8õæ«ÜÝî#?ð\ZÌ»¸—cséLE‹µVÎ‘Û5P8Á¨£gpwpiÏ8<Ð¦\'‰ü=o¯YIÈ•ÀÈ¯šügáü?y(¾,ðkêèm[ßxú×?â_Å­[È²D0ëY«\'rÔ´³>@š×í(ÊÜW?sa%¼Œ1+ÔüaàkÏ^Ê\n1‡<0Ç]ÙyÊA1éZ\'Øw9èîZ*œW©|.ø³uák¤¤2[’2„×˜]Ø›w;…W†c8=;ŠÖ.êÌ›v>þðßŒ,|Ib—Ò« †·¢s´œä\nø—À.|3}I’HÜ„×Õ>ñíŸŠì­äPäî)rõFIôgY,Ê›™Z¢ó,®Xt¦·ÍÇ9õ¨ŠìF*8…a¹{Ÿ4hs:ijË#š­â	¤ !ldµh[J¨UPg¹­sSó„ìFÑÍ6gr·ƒtwñ‡Žl¬ðZäÈôþªúoÇ\Z”z.{\"«Aü1^aû1øYå—QÖ¦n|´f­ßzÊØøRâ-Ùyßn=…KÚÅ¥v|Ávës¨ÈùÎç?Î¾Ÿø¥7Ãc/2Ùô¯—,b3Ý¢Ž¬À\nû/áíƒé^³·có,c‘N åÊuÖŠgÕûxvgÄÕ;[˜í³sÞ¯Ç8)¹O‘X¶¯q¤ËqÊBà~4(QP‹ƒ\'·Jh”¾Z‹è4ä…ó;bž‹Ÿ­3p#Šz(\0àâ¡jõ%Žhw(ËV_Š¯ÒÃ@»%‚|…Gãš¼Ùå«Íþ*jO¬vÊÇIo¥MIòE³¯\riV1<í$3ªçÍŽ+·ñ­Úi~°ÓÆðÍùW FSŒ>_˜æ°ükâkWXœ~HŽÅôÀ¯.œn ­+ÔŠ{-O¥eû,i:•Ú`‰$=1^õ(Î[$×…þÊ¡Ç€nœÎnÊê:Ô~)\\-êË–’°òŠþïgcŸ^•ìÓj1Œ­U«9.‡¸j yº÷ªöçkÓõ\'ò­FOÍÚ²#¼˜³Ž…q‚{ÖÇ<W2:¶NO”£ò¨a”˜ÁsÉÉ±Ì¬¼²çòª(±\0‘œ{Õ[DZÜˆÂîfî)^ö™%Dÿ\0VïˆôÁr¦WÛÁÍ+Uô:Ï¶ÄÌ@`UÃ­p×¿¬´ö+inÒg®x¬k¯ˆ:…Ã£¨AèqPÚ[—\Z–©¦]â}kåß¶‘¯„Ñ²:Í$ƒÜdW£,Úî¯“¾r§°\nóÏ‹~Ôôû{}Nê=±Ù’yá%},<¡¶g|ñ|ñ¤³†+<C\0àÕïŽ¾<MsF¸H-Ï$\0Mq^	Š¯épNHŠydzúâÃ&ÓÂÒ Ì£cÉ<ÕJR[Š¡ÊÝMÎ_ösÑš-	$\\¹]Õî€&ìWð‡NšIUL\00+¼’ÌÊ3œPÙÉ¢z£V\'+Ú®I*D˜þ,T3ãwJDŽwu¢Ú­HÝwE»ñ§ùmŠØ\rÏµI°5’CåC×§­?iÎ*¾O5fÞ§úÕ&J”„ÈPØ94\n¹¤#6îjEwM\\¥2\0\'\'SªŽ¥(9õ¡AS×Š¾`Š±x ãŸ­H±ûâxÀ§rP†þ<³Ï5\"H7Rdî}Ô?\ZnZ*ÄøãŠ@89æ‘\"£YsGåHD­§=1Q+³+1ê´1%$R…;N(EX¤ò»dâ 1žA­³r7\"«8*ççÒ’%6Q‘V4$þu,t â¦x2„2ðÔ–±)_àª–ƒ½Ç`äçéA!@ÃuíVÌ‚vòj¬0l\0síLVî1[!±OŠ\rÙ9¢ò[~õH#V\\­8­KH‰X#uâ¤a5La©<ÆÛ×5;1&ºˆxZY6ŽnªÁbÀñŠ†ÕryQVå)[ Õy#FjÌ±­ó¥C£nrz¾£Šq3Z\" äT{°¥hOe8éÜU2Þ` ñô¤	Ø‰òp2M þ N*T+\Zås»ô¨<õ.P‚óª¹d\"DWs¿9ÇïDÃj±>¢Ÿqi·*‚§¨ÍCv¨˜\n1U¨õ ‰W·»;22´¢o.B¬F;cúÔáƒ.{R©Ú`b¡½cŒî;€ô§4Ëäœæ©MyæÆWÍJå7º@HçŠª÷äí8­,(¼ê3QIj´Š¡ØŽÜ1r0Û–;_$õ«š~Ì€ç5~$G.ì¸DVèd[@s‘ïOkRA+ùUýª3À‰\"í+ŽOz®Q-Jp1L#®jµ¸Á¦HáSå]Æ«}±wcÐâRó1<]ámkO•\nØ85óO‹¼\'6ƒy *D`ðqÅ}hß½Œ®v·¥s^\'ð]¯ˆ,eÀóÈ$sš™Iô>Bº±K¡†ú×3¨éo#­zŒ<qáÛùP«yYë\\Ä–É  “ëU}..ÚWŒ÷Èõ®ãÁ^:»ðåÂM‘´ò¹à×)©éÍo#cîõª0NÊÌ½\rZm™YjxâMŠlÓ|ª—\0\0W5ØFW\rƒÁî;×Ãþñ-Î™2¼3+ÇZúOá·Å5»d¶¸|Ü\0IëPãØV±æÍ ´Ó1å‡Q\\/ˆ§]ºãšéµË­ó˜âb#AÒ±|¦ÿ\0ÂKã{;\\|žh$‘‘ÍCH˜ì}AðÃE‹Ãž²ˆðíví’y¯ý¡5•fŽË ãÓµ{ˆõTÓ¬D(v€ vÅ|¡ñ[Z}OÄ2ÜÔ÷¬®ïb¢¬Œ¯éÚ>!²€)•r=³_fé‘*[Ä‡€ \nù‹à6öÿ\0$ÍÊD»ûWÔVãc€£\0õ«{»+ë/# Ž»\'’;V”íöTÝŸº*;{Ò3sëVä…¢LqžÕÈ½ÝdÕ´${°\";†}MIoq¹p«ŒÖxo6U\\=ëRH×…\\Yšd¨žµ\"(^i\"äjH3œ{ÕEuA*œdf¼«âô-°Ì+´ƒÅzÅÛíˆàg‚¼ûÄpBGŽUÜ˜ÀÍeVŸ<ltá«{\ZŠgƒAâ9lï&òÀÞ~^j+>mbáŠ¡%ŽMzAðVŸ–>H-ž¸«ú.…»³ö¯®+Rv±ß<bwqZžõû8éÃKð>Í¸Ì¤þ=ëÕâD?4jzí®\'á$ÚøF6ÎÑ¹›üþUoKø…i¨ëÏ§À™*Jï	é¤’<YJRm³k^q;˜ä\nãµoý‘Š$-#ãvk­ñ2]Z”OÈ\rond2;A³Ú•ìmF*JìÏ¾ø¨F‘¬ óƒž•\r¾»ª_„-;€êNt=«^ÓÃÇ#*[)*x&ºí>Ò\"\nbU ¦t·N=/¶ðæ»©Î²IåmÙ|9½p|ÙU3ß­z5ª„SÐ³ŠŸz¨É56îKÄ5ð«u—ÃK2TÜHÒcž8®‡OðÎ›b¬\"¶@Þ¸­fªâ§Wp_Â—*0uæ÷ca#‡— ®#ã/‡ŸYð\rú*’&Qßåæ½+n8\'¸¨¯í\"º²žÃB¤~ª:§}Ï„ô¹Ž™ªX^nÏ‘pø__xºò=KÃÕY]~†¾Jñ.˜Ú6«©Ø²mû<¬ª\0ÇCÅ{‚µŸøH|£1rf|—Éô$,V&®D^¶=KÀ¶dÑcÿ\0kœbº&È\'ŽÞõGAìÚliœáEZ–_”•äö“¾ÆMêE<{›å¦ÛÉÕ?‹Òšžk–Í>ÚÓÊ”»œƒJÖÜkMD]©\'Nµ1?ÃIpÈ€¿Z¥\rÌW\r\"§hH5&ÔÊ¨qŒUfyQéË#<…†©êEŸ1eëL›sÝ8¦˜Ù4°‡E9©[W¨_;I®$ ,cq?JñOãŒí¬ˆ-”y[¶’¼×¯k?ÚZuÅ¸loR+ÈtŸ‚÷°ê«,Å\Z0Ù&³riÙ\ZÂ1³mž»£jPÓáŸ£:ƒÍh¨/óÂ Ó´åµ³H€ÆÐY`èEk¡‹WTóU¤nÈeÉ\0úS\"bÙàÐ7Z•ÕeÜÜmÏ­J	`qÉ¥i\\©ëN@ˆHéš‡%ä6\',ÿ\0©<t¨<Ï+qÒE\';½kK¥¡d®#\"ª‡Y?‡§­Fn$Ý×Š²\"Uˆí8“Üob¼²±Ê¿…Ì#\r\"K1]ª*#ß¸ªØW\'[ì6?†¬¤ŠÃrãê+(Å“¹ºŽôåg+ÐSVe¤Mpé¸àóéM¶}Þô,[Æ?‹Â¥TàÑg¹6,»Ó‘Q+Gó¤¤=\r$7Ü^§Ši<{Ð²\0=)¤†J¤†“*ÜÅ´dTÉ#5bIK–]ÜUb\0\'B9Õ€e\'Ÿj ÃÍiÊë·qíY·Q-ÈÜ>\\zSµÄØÉlÈÀ¬ÿ\01ävÎ{zV„‘,‰ATÀò<Â„T¢“\Z·FƒŠÌÔ/L²Q€;Õ×›dN@ëÖ²T|ÿ\00Ï5WËñ,eGi—’,jTjvå3ò»U¦V“8c“ÜÐ²§l\'æûÝª„Q2]9\'+Žµ<#\0\'?Þ4É`.0¯¶¯E’°\n¥õªÑº™# þ´ï³†ìæª ØÄ7+tæXˆˆY±´GŸZ½\rÚ*\0G¨¬ÔU¸i7~,qÇŸZ\Z×Ryä,Ígýµ³ò¯J¸ò…CšÍ ƒ•¥vƒm	„¬TîÎ=éŽbÊ4¿3¦ÜdQå«EŒVžä!É+c#ƒSícÿ\0ª›öŸLT±ÊT|¼ÕÛ°âí¹‡ão	ÛxƒOth“+æOxjoßK¨Bçƒ_\\¼¡Ð‚>jâ<uàÛ_Ú?É‰\0?0©µµ4Rè–nãŽhÙ[“\\Î¡¦ù?2\rw~%ðíÆ‰$n¤¦xoZÆ1©Ï­	÷+˜ãá+#$Vö‰â9téÄ‘¾Â½Áª\ZŽ”ñ1d•–¡Ñ[°i¢Gªx¶æ;u”ŽŽ¢º_ÙïLUº¼ÕgŒkµ¡5ç>,»iïRßø‰Æ{gôVÒ|q’:ïoSX=	]kÿ\0j2aðŠÉ¯›¼Cxº–·q 9ˆ¯Nø¯&—e$*ß¾äVª×6Gñw©Z¶ÊÛsß¿g-(¬·Dä(5ï6ÌrÛ8=ëÎ~\né#NðŒ|ÓÆ½^É×fÚ%bRêVdW`£‘RÊdu\nWŸj¶i8 Ê©’q\\öŒ†…ã¿Cš´oŒ*2›¿Ý®cÄþ8Ót‹±ousåKØuúREâ;£—KÇ \Z¿BçP5…C·i£WYrª\n·­r“k¶k½ÅÔMÔÉ|Yj¡Y.br3ÔÓƒ¶å]¶£å@ë#³·b}+—Ôõd‘óŸje¿‰íeB\ZâÇ¨¨?µôÖÜ$xØzî5ÜESul­P‹Ô.Q[\0ž*Æ©šâ5FLðCR}ª/1v <Ž(Z\rh}=ðÞ-ž²Þ!<}jÞ‡à­;E¿’êÞ\0²¹ÉbsZ¯àWø?N.<´Ïa[:V³g©E´ë1C†\nzWOC\"}@îaŽÜV+®Ö,±õ­[õVu*qÎk+Ifó7Kò†ã&ÐÕËƒ»iÍmÁjÝÏzÏŽÊ4Æï˜ŽA­+yv®ÓÚ·Ü±b1·==jCµ:àUhüÉàµÌjòê’jkD†H«„Ý‘›‘Ø¤ñ(É`\r*ÞÄÊÅ\\6ÁÎ\rpK¤jqj²\\\\NÞA„ÏG±ºS6dÜ±ô­½…¶f<ÇMuâH­mœ²8àÖ¡â™¡xÄ1/ÉÀÎ*uÒI…‘ÏÊiiöùrú\Z”¡Xõ>Wø»k0ñ}ÕÛÄaK£‘‘Á `ÖïÁ$öYL›”v¯Eý <(—ÞŽþ4ìä\rÀçiàÿ\0JÉø-¥\rñH¢äâ²”“Ønèö{Dò¢€¤˜˜úsõ©ã©Lk´ñY.äóX­\0Âb¤.qØ¦¢…cÍ8®ìç‘SÔzH‹(a‘š¯ö4ˆ1LÝsR8Ë05€SÈªå! %Nj`J/‘þÍÚ—$àUµ€á²(ìE$.ÜÕˆ¡óCqŠyô \nŸP,An¬~´’§–p\0jXÜªq‘RApKšj:]»ÂíŒñÍ\ZóÎê¸Öªc\'µFg(ÌéI¡Ù‘<[ÁËcÚšSËRsóôªáÜJWÆ=éùÏ¡QäQ+µ ucÊóJÑ«ç\"Äª1÷j‘VhrÛ•”ŠaT ^*HÑ€Ç¥D]¹Ð…Ì¬VpÁÎF*Ý›f6\rÈªÒÄÎ[ø½Å6Þ7ÚAüêb5©~R&Ægò|U½€GµÈúÔVìx\'å¢ÀF±;®@¦¬­@ÍYyJ”qTÞãæ ‘Gº5®Ä‘Éßô©%dÆÓ­U\r×ëIæîSƒÈïF£å*¿ÅÖ¡š]„qšrFv¶ï˜šk)Ž6\'æoZjýØŽ=ŒŽþÒqò¯Ü\ZIö§nO5ißVg},Gó\"ƒÖ¢“nÒH#.žI¨eÊ‚@ÍJ-jC,¾r2¨ÁÎªëÄ.„óÚ¦EÛ“¹E2ãiË­Tv•Ìˆí5¹9“1zT¿g(\\—cž \n¶.\\ub®h••#Ý»4ïböÜÌn“ç­UŠ5%†ìš¼åLnÄŒ·@\rf,Š’¸qÆx©CIu!‘·1 asÅ0¾ÅfäàU›‰Wj£–}À°Å+]‰$:ÞD•KG¥?îÊŒcÖ Œ,Q•>æ ,ÑÄJ±9l|Õk`°ÛÉ^<Œî_J­åÛ ð\r2YÆNã“ëQ@D…ßv{bŸ@FŠJ²OÕ9‘YS‡€À÷©¤RN\0ôªZ’Ÿ(ÉyÜzTçvÐ)²Ä%`ŒN=ªÄ+kóÇJ[¡¤:È±,Ý¡¥ØdU^\rFÒ²·„ô¦yƒ4¬Ç¯B!>%q´w5j\"&*pA©\'ºD\'ŒšÅœ³\\d/Ò©1t4nõt‚&|çª´\ZÒÝFNÐ¡ª76†àÛ\07¥S6&)–ùQÖ«q”<iá5ÛVe@\\{Wx“Ãóh—ï©Ú:\Zúe\'ýÑS“ï\\ÇŠ|)o­ÂÙŒy˜àÖjÅ-t>t_uaj\ZPÜX×sâ\rãE¹’9\"(‰„c\rÁN†¼·Ø‚/uõ¸—	ðI>™¯IÖ>6éÚE¸³Ó¢ûDª¡|Æà\nòÛ™\nyœ‚@í\\º-ÓÉ-ÅB÷‘“±¿®k>&ÔyX–sòªŽ•±á/^ê×ÐÇä°Ga“zí¾|<‡SE»ž=Ê@5ï\Z/…lìQ0ª•ïŠ«h+¥¹³á\Z=3I¶€. \0\nÜHJƒƒŠ‚Ð‘Ìuz·)¹«.£Š*œw›ªê1ØZO4Ž\"“Ö¶e‰~mÜZòÞ þÍÓb‚\'ÃÌ@?JZ45³Ë5]^øºk§$Ä¤àAÒ´íÆ\n© ++ÁP=ÍÍÁ$Ší­´’#’Iõ\"¢éh5;¼×’ˆØï#ñ®wUÔÚÙN$#ñ­Ïëv\r(4§Œ\ná..þÛ3±È­b•„ãb;NçÍb·ú9¨$Ö/QmÄŸ÷Ñ¨›’i…ÁUsr’.Ùø—R]Ø¹“þú5Õøs\\Ô&¸Œ=ÔŒìÀ©ÍqÚ{ ™wƒ]ßÿ\0è¶¨?Ö]F>¼çúS‹¸ì¬}èº4÷ŸF›o1Šæ[?,MÝX¯Z¥ðŸÀW^\r°˜_]›»©ÌÃ¥uZl>MŒq†ÎÔ…^¶*#é‚·å9¹´±Ÿ¨LVP\0û£5—o¬Hï·ËÚ3Íj\\:éã£‡N‹q8ÈúTu:#ð–`‘dŽEH€GAQÅ‰v­KÈÏJÉ\'´-‚OJ²Šþà$ûTváV3ž8É©¢¹Ž&Èuüè¹Kb9tö¹ÿ\0XÙÅi>\\­Ž*ìÄ³)ã$ÎÉæ«™™¥ÜAb›H\'­YŠÚ8ÀÔP‹œg®:ÔÀÒ¥»\Z4‘â]*-GC½µC¤‘• Šã>ék§ÛJ ch5Ûøšå`Ógù°JšÉðe¨‹KßÎi).¤7do#cw9¤y	C·­A\Z2·TŠ¤ƒžh»èd•õ\"™ï8ªÂG˜ÎOÝ¦ã®iÊ¥— þ¸Y!0Ì{ŠO³áŽ9ëS\"lÏzžÃäž@ªå²»#ÐŠ;FnOJ•`tœASù{—`oÆ«0ÉÉü¨K{óÃÏZzF»>a“ëP¼¤nÁ¦Ã>à2sO]‹÷{ˆ°	n8BsJì\nÙj5PÄ{ÓZ­HZjYûJ´d*›ÆfgÚ?\Z”\'Þ^­Ú¥‚&Œ¶{ÒvYœ¶¡ÓÞŸå·¥hÉš™ôªñA\'Üç\n#»E­æÛÒ€99ãbæ,µSËd´ËŒ¯¡2dƒš\0ÏQIìæÝJÌ9ÍH+²`ùXƒEºM­Å$I»vt\\3¯N§Ë©1}Jïd`ÎG§½V(èÄîù}*yg,¸?xUIo	b„Ç½4­¡hy™ü¢SŸ¥SIö³³ŒƒëVã\"0•SQePJHë@†\rA1cëP[Èd™ˆl\'J¢Êø³š³ÔˆmïKâ-{Æœ’Ás•éRI´«Õ(eyõ¥™ò	cZ_¨Eò‘’j)ådÀSƒJ\']¤Ÿ—ØÕYg]ÌÄÒŽâ¾šc}ÑíÅB¨ò=~µ\\\\dusëOŽfUb¼S½¶]Ç«²9EDH%‰\'’7Ìf\"Tdd\Z–ÊWD/*(àdúU{™°çŒgm!\\ÿ\0A=¡f%NE=,	Ë©žY·88íU˜HT‚ Š»qlD,Aùúb©,JAžæ®(¢›3nÀTs3\"±Ï5;zV}ÓÙ¥h5±-©$0íÚ(| \Z†;€±•GzŒÜ³]í¨ÓÒÅ;•À-U\"*IçÕæýè`ÃŠªm˜ía­Rabõ”ø<ŒÕÙ9ù÷|•B ±‘èH¥@ÀÉ¤“µÉòd»Imã•§Ér0«MVqmè*0²È94ZÂŽƒ9ÉÉãÞ©\\8É\nsV¿}w(lwZÞFßÂ£ÞÜ§¼É;¥E,AcQ])G`{UK™K®5V)=ÇÏ2‚J¶qÔš«ö¥ œàRJÞXgfÂYßhY†QƒüÒ¬iE:HØÏ>•/™‚IíÚ°ŒíàÀô«^xb77ÌjGk”<Gá¨<Aæ0[Ö¼[Å—IžDØ|¬íÜ+ß!™£Ü3œÖn·¢Ã«[²J€±î(Š¹JvØùsYq´Ÿxg€j‡‡m^æú4UÜY€Å]×bó&òƒnÝü1ð,’\\Ãq*œ0ÍB3löÿ\0‡:BØiPÆ\0/5èv¶›Ô\0Hö¬}NHlÔ)ä]-ƒ$gç8>ôïmˆQ¾å«[«¸Ži’¿ÙÃ0?tV¤r	‘øÔ6Âuq·‚1X£U¡æ×_¬?µŽìs‚Æ¼[ã_ˆSñiÝh­?âþ•/†<Sq*’‰)óŽ•æ3jÇS¹2JÅ›¦I¡“êz\'€uX\"Ô¡ÆÕ…&½âEÂxsAp¿zO»^-¥‡†â)‘öì äV×<_wâ·‰u1ÇsG*lwÐá/&’âWgbÇ5]	Ïµ†næ{!@G÷jÎ=¨95µì„“±• Ávfê*$¹eŒýjÑÓßæÉ\'4Ác°ù\'ò¥Éh‰\'b	ÛœzW§þÏª×ÿ\0t‚ïvâ=\0×œGo³žæ½‹öT²|V³“náNØü1W®‚oCë?~.Ö|3áxÎ…lóßÍ „4kƒÖ·þ^kW~´›]móXcv®…£µ¹Œ‘7Õûy­X!G­Ý\\Æ63¢Ü;±÷¥KÈÎäS‚;\n§¨`ù¼ãžµŸ-¼l]œŒdš”Í’Ð×„ÎO\'µL€\'<ŠÉ“ÄÚ|$ƒ:p=k*oÀ¬D14™ä”ÖšA½‘Ø\\\0 ÀûØÎêÃ··¸uä1;ë›¼øƒsŒù\nøùgMã­I’ATúÔ;Ó¡6¶=r’ÖÌûHäÕ¿iöQ“-ÌkìMx=î£â]e×ìó\\È¤à…È«V?5ýL†Šó÷ª¢–âT]ýæzÔß´¨T¬Nf`z\nÄÕ~-IÏ$n5™eð‹cžðŽŸ*\nè-þén§Ì\r1|çµMÍ9hÇws‹µø•}âÍ@[4idãåkØôx>Ï§D d¯?“Ã\ZvŸ¬ÚCiÄs¸í¯Iˆy1SÀ•Zt8j5{-†,ÊÄR¦NpTiRÍëOŠu†x•Œ¯¡/ðáŽiÑÅ•`O4ŠCŠT~:ÖÄ\'aw\'Š°“,KÈÆhKr0Üj%‰‰ÇéH¤¤$s¤hzÕw™$ÜTæžÑ\"¦ù½j!Æ˜’]‰VdKàÙãŠ|Ý€jTmÊ\rH\0\Z›ì/f˜r=©¹äŽâ–7qŒÕ¤+2Å»˜Ši™c‘,Ojzb8ýýjEîÇNÕ©ª‹E„¸R½qíHÓ¯#½B¿*S5\rÞßJ­ô\"ý4Ã‚yíT¼­[žÄÕ³“ÔvªÎ¡œóøT+–ûó”u§¬ƒæ\0åª	Ü?\n8è”Fç&ªÅ¦É€,3»i¦O!TÁÏ5*J¬:óéPÉ0ÿ\01ÕŠ*ÈƒËVFe\'ŽÆ³§·P—­^–~X‡µ@Ø`}è±IUÊ£aºUrå¡møÍY™0YGëU‚€IÇ>µO@HÌ6Ò<ŒÁ¾Uê)ÌïÇ…õ­\nS*F=ª…ì…â‘ON•>ƒ½ŠËª“ÓÖ¯‰\ZT,F>íc}‘ÑI5bœ.`Ši‹M‰§ù=}ª´ŽÌTm÷«úÒ`zSNÆ„q²”\'Ž)ðÌ¬8ªÒ\0ŒÀt¢2oÛšmÄ²\\`}Á«ÖroB1ŽõB	ÜsVPùdåBi´\'•UqÓ¥Uy7¨ô§«+©\'ƒUÎØ‹4…Fdf-•ÂúµQºýè}­œ\Z–úBÈvgŠËi]p{ÕØ¡.2çæ\"²/~]Û\'¹«’NÅÛæÜ*ÍÏÈAçÒ¤W)Åq„;ÁíS–â>yüéÎŒ9÷ª…”¯`i©¢•!@8ªjÅƒ3Þ–ò÷õ5Èv…\'5ZîJw$°dâ«¤×Q]Æ3<ƒÚ¬E*ùeãÒ¬y›¢Úùª“¹H¿$£éžôž[!lŽ=j”P§¯­[7%P‚Ýxæ•ÈÑ¡Þ£ÖªKæb0EY,¸\'#á4Ø-™UdrJŒÖmÌÁ\'(œVÌ± \ržõ“:ª³có©õ\Z³)M\nÜÆë»‚6Õ+]>+5`U†jì  bÒ©=Æ8c­+\"µ)Î‚	·•\"LŽ¥Ø\0V’öUd \rÌ+<NPa†ÜÑÜ°“¨ŒQ€±;³ŠÎ6õŠˆIËÀÏ­]´Ð§Íú-ªk0gæ‡S_MxVÀCJ©·\0ví_?|0°kX6yCÖ¾¡ðí°Šó×MbCgK¦E±@Ö­ÝJ²\0àö¦éÜC)€:Õt”3°ç>õœ‡fÊór‘œ\ZÑŠ|£þJæ•¶ƒÅjZOæÅÉäu§¡[qñûÂƒ]ðÍÅäî¸µRÿ\0/RQ_\ZX\\˜nœIÆN+ôRöÂ;ëˆCÇ\"`{ƒ_üUðŒ¾\rñ…å™R±ï-ºçŠ”ììk{«Z\Z™“iû‡Šï¼#á(urØ¹æ ÷¯?ðMÇÚ­Ðã$b½3Ã“½•×š8àÒ#S®ñ/…Z³`(ìy~¿ :—vŒ‡Çz÷\r\'Ä°jöË\rÈ0àZä<söHÄ¡0ÎðÖ|ÖeFç…µ£¬‡ â«Ë< ùEt72ÆÓ±\'8«úš4®=ª¡+”á¥ÎZpÞ^Ô\\W¸~ÈÚL×2»™LPœãÜ^Ws§v=¸¯ ¿cÛ&ƒVÕå+†òÀÎ=ë²›Ôç•¬{G‹¼u¥x>îÚÓR¼òå™¸AÉÔ× hêLã%•×z“Ü\Zó¯ü±ñ‡‹âÖn¥vØª=C^—)ee+÷UB€}«G>ekr¨³…×n§xïvNP©Â…5Ëéö··NUüÙ— <^•>›’9UP[®;ÔV:6ÆS‚»zŸZÁ¦ÎúSŒQÆCá»™ü•XÖ6#3V¬^	›!$œáÖ.”ZmÊ>UïVZ2¬{ã¸¡ªúÞÓÊ<´›9zÒ³ðöŸn~[d_¨ÍhÅÉœUÈ4ÙÃŠ›	Ö›êTŽÚp»=vŠžÑ‚M^‡F³ÀÔ°Y c¸ü¢©#.~ì¨@p@-´¶+rXd/Ë¿.iXñ…Í½IæGY“uâ§f^#Û¢í\\[Ü×!áˆÌ÷×·»mº¸\\ ¶vÑdbåy’ÇåÅF¶ÅzÓÄ¹Æ!\0÷4´{“¨Å”§zÔÑ¶Æ<Õg”ÛGÍíN·bñ’Ç&ª,EÅ™IÍX‹2EËUEíš‘Uy8 qÜ’I\0$zU9$!ýE:Vlw¥€\r ?J›YÏ}ÂG?Ä)û°§Òž4ÈæšÑ¤©¦{ÏAœ)\'Ö£IŠ»b•£#sf \0«;c9©m–RÙ\'œT‘¾Ö\'ª±>Ò~\\U”p2GZqwBhvâÜg·ñT] ò;R<ËÎM,OÆAÉ¦­°–‚¹gÿ\0\Z‚K<±Ïz³åž[ëN`Ì¹4©<\n¿„Õ_-‡àUëˆšGÂãšIÐŽx4’cNæq”ä¾FzTÈŒc-Ùj¼Ébx^K™:!âœÔ¬LJ|ÇÓ­F»I%j³¹e$ä\Za‘•Iþ”t[î`oJ nœùÑ}9~â²ÄŒ7œò½¨±Zšë8Úp:TS~÷·V““ÅJ¯[¥5bSlcFFNsMKT8Á¤iFOÌ?:šqÈ¢(½ÈZØÒªˆ× õ¨þÓÏ+úÒ<Ûœ7µcŠ[¡áB±rÙôü“ŽµJküÅ9oH#5#.	\0Þ:ã­F7V?Åèj˜“{\ZUl9úÖšX†=¤<óP4Œr3‘U™%iùc°žÔ“Éµ¶°ÊúÓiì5ij‘YwNpÅzU©nqY÷L\n¶;SØ¯C>YÈo-ØUÔ?xF1Žç½O;‡lƒ½Q•P±f f…{	;KpÛ›	M”ÌŠÃ>µP¶Éc|´³ÊG<ïRh¸Ž7/ÚXïH·«ßJÍŽë{ÜZ’yÂ\0Üjì…tkC(š2FxïA™TuéT!g)îÝ©­ F*yPy\Z	Œçôv	ÒeÃšÃ mô9ÍKmtÈ§û¢…n‚JÛP(FÉÈ?…S”$1Ki¨CÆìTÊ6±cÍRB±ÅÉŒœô5—sv°Ç5næUæ³çpAPi+õ.Ö3î®\nIÜ;UDŠÙ5=öH g}£‚Ð¶\r‰„HrÕRID€•9¥¸™0TäÕ7œ&ìôíŠ˜¡ß°óxÐ¡À¢r€‘Á5VY!$æ«ÅxrA<Z~Hv9_ƒšo™q$¸ÈíŠ÷Ý-6}q^Sð–Õm4¦d¼×©xfîMJsRzÔó$`ã­ÎÎÞ\r–ÓÃ5E.•…ócð«Yc(Lð*ü$²2Áæ°Zîj—C—Èˆ°uçT¶×*œzV¦«§,Öìè0Ý«˜·w†cà‚z¨…­±×é×`‚‡Ž:×þÖ	kÝ*Û[·MÒBû$*:¯½{5¼¹PÊqéRkZU¯‰´+‹¹$B¤\ZÍÇª.\'Ã^Ô…×—9Â\ZõM?S‰¤wb¼·Æ~½ðgŠ.l¦VA™V?Ä½v>ºì±HN)­UÊò:øî®dueŠÔ^[é°ønKÛ–nÞKuÍbÙê–òZóÃ½eëüöv×34vÌã!Me{°²]N7H‚=SZ,ªvg8è±è(bQ«]ÎƒðëL´±F´\nêê>Zš÷Â2G•û£œÓm´Öç‹x‚Ý-õmmrÒ¹ÁïŠúwölð»év7“H1æà|µá7í¥xWûd­æÎ§…¡¯¦¾ßM/‚ÅòÃµ¦ŒÊ‹Ž}…oI=Ù…´²=A0¼Lœ ·L×“|6ÔüM®xŽIµ!$vÙmÑH1@+Õ/fÛœ«Ò·ºY¦>×`8úþu3(l\0W;yâû-0ì’MÄŠ9ªkñ&—÷1³`dfŸ Ô$ö;KH‚’·sVÖ8øÚ«øW–ê/- †eµP&$\0zÖt¿5‰I ú/57FñÃU}gŠ$ˆ¶X÷ÅêÚu¢,ëœr	¯]KÄ:ã2´? ^]ÓüâÆRèPgþZ5C’6ú¥•ç$R“Çú5¾àgWû£5ÍêŸôË\'‘bFwô#¬û?…˜´]*ätQZV_4¥Éw#\\·R\rC“û#,<~9\\æn¾8ßÎLv¶ÝÏZÊ¹ñçˆ5,™]ÄGýœW¬hþÐ c½¤g/+šÎø‡ooi¦$Q¢‚Ì„¥»W´„|m$zJHI.üŸjé\"L÷¬Í	\r­„HF0£<V¤X`Ì´ÝÏ/¨‘±,ùjí^[2gu\rƒòš>ÇžKsU1¤‡}å,ƒ-ºVÝßŠKxÂäœzR’å÷»N*àô,#dc§EF#<Óãû¦ªÀ*!O—© 3“J~^NE4AÃb§ µÎNAúR‚yª¾H>Õa1·ƒšQw†HàÆÜãëQ*63÷½êW\n»R(Ã+cŒRv`¬EªN)ÑWŽ”˜È#µÆ±†SS5(R€æ¤·LœŽ‚˜cfCƒKjOCÆ;U!^ÄòmàñQ‰©çŠqù¸&¡š<¡Çz­‘+QâEe$sŠ£vw¡ìiUÂÆøo™j¿˜JI$Tî;4T—Ëe&¨‹Ÿ)ˆS‘ß5$òsßš¡rË´÷MrG¼,N¹w¨Vm¹¦}¡c|îê´ÝË†B:\Z¯!TM§Ó­6êëaÜÚ˜×qË½J}Ê‹ÓA¢BWŠ–YÃa³U|Ð	\\ð})_\'#=x«Ü,ÙnWV\\´¨\rÈ\'Òª‰Ulð;Ó£¹1©=E$´Ðwçc0=ºÔ/\"î;GŽÄœƒÁíUå*ÈAlRzè8ÇBLŒœâ•dsœÕMÆNx5\\ÍÊ÷¦¢;ÛFi+$Ž´†]„ŠÏ7,£;Ž~µ—Øÿ\0ê­UÞ€‘~;‘!n*µÃåÈíORD+ƒU™ú“P¬‡ä\"¡LŒæªÞÁâ¬yçŸO­VžýPËŸJ«§¸­ÜÎ¸•TœóÅcÜpw7Ê­Þ´/®|ì€0+\nîBY‰#°©ø‹CV~XÅAu(*Tqšt2F3ó~tÙd>o~Ô/4\ZkbœVò¼…ƒð*õ¼d‚_¨¨’p¼*R¥Ã\0Áð*’BÐ•dÊ¾­WòÛ%Ïèg!‰ÛÛµ>\'YI\0ã´/!FÍjJìÁEÉJMOÊRÚsÜÖˆ\n±¿]ÞµBkE›“ÀúTØ¨—,50û òM,úˆfa»ŠŠÞÝ2É=ê¼ÑF›²Niê®:IÕ‘°Ç>Õ,ä+sÍ;*’‘YÓÏ³w¥	ßA‰wt7`óïYï&ÅcÛÒ›qy¸•Æ1U\Zä(äqõ¤˜ùX·”Á<çŠ«%Ó8ÇJ‚æç¦AªMrîx\r&Æ‹îøÈÏYæ;X ù½ª).‘‚E@ÒˆU˜T¦‡¶Œï>éK…q·Ž}ëÐüqÍ3(WÒ¹ïi4xâfJê´TþÎ´‘1’ç­g#£^ó\'g÷âµ­Ý9ûõ‘mÎãÇõ«->Ñ‚p}iEšÄ³=Â,GŒ^/ñkâbø_S·†ÈÇ.3ÐW©j—_gµšG8Œ.s_.xÕGŠõ‹‹Æl*ƒéÒ©+h+ê{?‚~\"Yx’Ý62‡”=A®úÂé$åqõ¯‘´®|=2ÝC)Þ9ÚîžñäWð\"Lê’ô9=j­¡ìÌïÚÀ¿ÛÚ(Õí£æÕI}£–Zù×Âš›Ç;[·NË_l»Ç{i,2/™‹‚Jù‹ÄþƒÂ~4whØZÉ&åolÖKÝº7Nè–ÉÝPî>õ§öx®U\Z@I^•éšO€t­WOŠx?y¹AÜ\rNÿ\0\nà#ÈW5‹Œ¢ÑÌ7%Ðô|C6Ò¸K¿‹\ZíÜ2Â×¯µ¸â½#]ø;6£—ÉUtWsð\'URÂ)°q“M5-ÁÙxdºÔ¯<´ŽïŽNs“_ ¿\r,³ü5¦ÚùxXío”WÊ>ø-«éÚõ½ÅÒ+ÆŒG9¯±´ýŸ§†˜ˆÒ8ÕyíÅuÓµŽy_¡±oQgb*çÐVOŠàšhQ’FsZÚeäð´±¶õUkõyÙ•NXUnD·8¡àµKã4³M¸U¹cðêÒ—’F c­Í.	-ÓçùŸÞ´b…•	È“FÞÖKc<!¤ ExP7sZÚ>™\n7—kTd\rµy-ÀqÉ¦ÌÞ@Ú«ÔTÚ!ígÜ‡M•\\\r–þZ}+r	2Å°kyg‰1ëVín¿t\ZW9æ©.†M_SNâà>\0lqRÛÂ»‡ÜsXÏ,\0+<€{©—ÄÖñ`J¸Ýæ§Ð–kÙé±Û‰\npHÎMpÞ:“í:Í¨lŒäÖÉñ”AX¸z×e<šï‹^}ØŠ>‹J!º¹ÛÛ~íz`Ò¦[Œb¢ãÅ*œvëWk˜¤›s½³R†¤ƒš€™ZƒßÜVf‘L{±\"¢320/˜(*¤óÍ$Éßf<|É‚¼Ô í\\“LŒŽsN/Ôf´ŠÒã°ú‹ËÉ$Pd\'·ãHnqÞ“i‚VQÏ8È©N)-Û1œö4üc8êiÅX”ÄtÜ¤w¨–Ppy©äJ’z`Sjã»µŠ>k#<ûÔ‚lx+Þ’î%QpÆª#zâ¥+[\Z/vŠ0¤\Z\"T!óYÎBõÔ‘HÇ\n­øS&Æ‰p?ZŒ¹ Šjn+ƒË{SeÜíëI¶ö*ÖECŽGcTîÆ‚O½Oæ±,áY·Ó)‚V3înLÜuªBçvãš|÷+.w\nÏ;SqFÆ)$U‡Ë!,ÄñíP´Ø:To:óÏÖ«M._¥UÂ0¸é®V@Täœö£öž’•}Ø«&xæR¦§sD†›²²z\n›ÍR…³ØmÈšb¹RC¥$R4EÚàñÏ¥,î‚\rg,òTæ¦W)ÛšÖ=lC4Ù‚Œ*Œ²FÄíÇ|ÔrÝ•_˜’*ƒ\\;µP´.yÊWæ4’*ìlž+;¡%&•®ØåsšW°÷Øº³&\n³}hi”†f­À\\áÆO¡¨\rÊ†ûÃÐÑªn†Þ£¹#x J£$ÛW Ò4û#$Œš4êV¥‚ãaæ±oåÊvR™°8È÷ª“eO©©¸¢ˆd•›9cT._\0»Â¥{‚#lY×R	÷~ZWì5â<Û\'§­F·»ˆÞ¨6†\\ƒŽÔ‘]cvª7¶ •úÖàÇœ`š™.„Š{5e­Øf*2i‹p¤‚*–‚^fÏÚ6d3Ôz‹+ÄûVS^îB1ózÔ«#\\31ÊÒˆô:eºgèÜ}jV”È½*ÅIÛiŒt¨ãž_´0g;;SO Î%òc#“U..ç\0ñUÍæ\n¡s/,wn Ñ–¦¾UVÚqô¬{»±6{ŸïTsJ\\þU•=öÒ};VhjÄ·áO5M¤o˜·ÝRk§?wå¡i^@rx“(žKÛ”co­U/“ÁéQ=Ê€À0úÕV¹ÇÜ4%q\"óÈSŠ«< n³UŽßy²jœy¦‘[JÂ¡YcÂ¶< ¸®wÃiggœŽ\0×PNà@5„ßCÇ—RkgØ<-XXÆöbzÓ-â¹äŸSR–Âš”ìh•ŽWâ ¶š<‘0Óþìb¾xm*XuK×\n¶àç{\nõŠú½¬¶þeÈC\0,ccÖ¼§‹Äúl‘Ãr¶î%,ÛQT®ÉæKqú®“pŸfX$Åppj¢Ë{¥I4‘¶Å¶9,8É­­[µ±UA\"Ëœ|dýãYþ;ñ,2hÐ¤q,rÜ|òô÷¡]	YßÃŒ‰w ±Õ‰ÂJ{×wãŸEâÍš¯*®èÙkä(îÄ/½«Jõ_†®tyE¦¢æ[FùrO+NQæZ]¶=Oá&¹%«K£Þ|’ÆJ¨nõê‘ÆQŽ+^Q­ÛÛÞIiâ\rE}¤Tî+Ó4J+ûåCG5…ú\rEn(­üòG¥XK8¢CµA5N=N(PŒsëOþÖO,ñóPÖ…ýÍî5hT(Ú¬	â»Ý[K{ë?*#ŽGJá<=­¬7\"SN8®©|Q$Ã÷hWE=‰“w6t-4é–ÌŒÊ	ëšÌpM!,ý¬Ö3^ÏrŽ^|öj™ù$ž¥54‰³gB|Cf’æ÷iïâëu?yˆöÈ„HÉ\n1ïMkerx¥íœ¢ãÅÖñP3X—Þ>0—ÀtÜj‰XÃ¶[óªW6‘O61Pê4ŠŒHo¼¨N›aÛtÈæ³F£«]0Ýw ¬º$@nÜN=jKkE2d(Ùùf’ªÊåCÖòKtÝpÎzòidkô<œZÙ{m‘î8¦À‹\"·˜qŠ\\Íî+ù¾¹Éc´VßÃ˜YÞæäõfÀÍC«Ã½”¬¸bzs[ž·0é»ŽkZd=¬t©–b2>´+d‘LåI(VÛ[XÊÄè¬ÙÛÚŸ\nqõ¨Ó!¸8©ø`ÝEC¹›	VéÅ=ùqQ†ûÿ\0=$l§ŽžÔ|,²(=)RÝé6n9­ocK÷nvîÍ\"Ë¾F\\`\nPhˆ€2µœ|„•‰•vŒRö¦‡d\ZUbTûUŠÄr»)%yâ˜·\rå’W‘N)ÃwJ„¡õâ³»-$5äÞ›™sš€.îÙ©dõ\"¢ GJh•Dí–úSã“žzŠBÊ¨Àõêš\\çå8÷¡-KQº±¯ä¾ Ó.®\n\Z­ÆT‘QI&âx¤C\'œ/^sY×ò\"m¢­Ü¨hØð+:Gd§jk¹OCi\0Wîª‰ëVï—2ZÉ¸g›$ý)yáq&Xç“ÓŠtû¬ñøVtò8©í®³äV‹T8û¯RIäíÅS–eU ›Ú¤–ó¨-Š¢g*Í›=ë=H$|õ9¦NOÍ0O·žžù¨\rúîÀ¢h‹2ËÌ\"½E:ÓQYU²y÷ª/p¬¯Ï5H’†Í$Á.Æû\\°$“‘ô¨>ÒKòMe‰å\nT±j•\'\\`·>µ]J™fYÂœy¨ä™0ÁO5U§ÚXŸöª»HÀç¨íSt5~…ëp¹`ØÏji‡.Y±¶ªÄYÓq84 w@G±;²‘ò’*ùÈ,*ÕÛG2ò6ç•ˆÐ¹þVéÉªµÐnõ6®Ý\reÜÊÛçšÛA¬éçv<JJ!®r~fÇµP{—ÚÀž=j‹‘‡9ù½*¯Û7ÆWolg54Ês»=;Óïnì|Ý¹ª³\\ífQÉªæä\0ÀrÆµº°¢‘xÌwœ74ápXõÏcY-+nÈ8§y›0sÍLCäiyŠ¯ÔiEîÒvŽGaYw‡;ØíÅ@/Xœ\"æ”P’Hèâ½ÈÆÝÍVØUfÚÕËÃ¨e¶±íZ_lžri­ô¬“—BsŠ‚æQ³ŽyÍUi‰M¤~5Nêå¶7ÍŒ}ãVÓ±ZÝ_à>ËX×2Å†@¥¹œÄœ¨¬©n©%¸«K{#)è*´±B7ÕW˜2œ?5M¦?8ß´ôH´¯¹4×E~ƒ\0½Ê»“ôªÞiMÈyúÔ{·Õ¢Óa«\"ìWÅ·ƒÒ¡iK+‚ÕYr»€4Tu4†ì}}¤Xâ6p<VšZ²œsîiš^>È®å­´3Åqndµ+B6åXjW`¨wÔ/9#\0m¦f\0ÅZAt¶>jø½5–¥â›‘3H¦<#ÁÝÙYA	6·¿Ð÷¯°¯</£ê%ŒÖPÈäòÌ¹&²føcá©iÓ¡\0öU¦§ËÐ,Ž7É<°Í6i^à\rå˜(Àö¯¯§ø-á{‘“d€öÁÆk>ãö|ðÝÀýÜo<­KuCHù-!ÛÔnü*Nax¯¦gýšô·\'Ê¸‘G`y¬ûŸÙu\Z#åßàŽyJ=¬AG±æ_|a§êÐØ2[Ü0Ë\'Ö¾šðÆ›6—;[Ï•¾eÉï^wà¯ÙòçÃ~(´¿ší&‚sÚ½æ[XæŒ+(ã½K´µŠ±é¸Éeü*ÄZTH0Ãp¥]2Is±¸õ5#i÷i¯»Žy©³0Û	ô©‘šÃUx…Äg¥€©%m½TŒÐ®	;“Å’	`{TñêLr÷ÍR´¸‰Ÿ÷¬ª£¥^kË=¬L‘…÷5C%†4ÇÞ¤ó‘–Æ=+ž¾ñ± Ê‹èI¬¬Û¼¹AŒwÝS¢Ð•s¹šâÛ’X=*½¬žsîŒg¸[ØyŒf»CÛ†®ŽÃÅº]´LÉ:?íSI1ÓÀ#“QÁp…Ž~Rzšå®üig$ÅRå1õéKe­[^nòçSCIn‡eÖ2ªÙSV¢…dCëXZ>©ne*î¿t‹s)hÝ[†…¶¡êckËäÄ‘˜±+³Ñ û6\nŒ(®&ñö·J~U`H®õ1!9Æ:×L*¹ÐŸ®ry Sbç9$\ZwJÔÉ;’ƒ´ä\Z]Ç“ëLaè)@ÀÅIÔ‘\rªI=j5m™=i‚wZ[è8»jZR»v“ºžNjŸ\' ÍÛK®3º³å%;h8HÙÛœúÓÁÅ4\03øÒ:ä}à2d­+Á !‡ëR¨ù¸5ºµºþ•)éZô4ŠÐ\ZNÀØ<æ“Ìâ£2p1XêÊR‰Ø²c?-C,¡NnjC,G¥3ìœ’íWèC	É<ÔR U“Âœâ«K.±I¤8°‰©Áæ£/—dvÅFó®Ó´üßJ®ó+p7zŠiw*Ý†Ï(PÜô¬©¦,çŽ*{«¢!rzšÉkÈÊx4X˜ìG4ŠìÄÖmÓ¤ˆW­WÕ5O°~Hª‚ïíVìÃ\"«BÉno\\ŒÖ£‰Á\'æÚ}ê¸ÈïU%™ÁT¤ÊÓ©zW@H-Ï¥V•ÙNCäj¢nŽyÅ=\'äÕn+Iy€©,Y½ª ¸Ã6s’¤(Àj¤“	n}\r;ip™lK¸œŒS•Ô0\'¥T†çr1<ƒÒ IËNÓÔÔZÅ«3U®£Sß2YùCÖ²V@‡qÁJ›íÛ“åU+éN÷lIöÐ ¡§¬Ê#%xŒVœ¦£y;ei­J[\\µñYqR¼çÒ³ì|ÆÕ\\]?;r;f…¨–†…ÄÃhÞëY7\ZT&ãÍeùÇB*Cy…b¤çÒ˜·\r#s×ùÕlJièY™|¸çñ¬‹É;¼z»sòcãX÷×hŽÌœúûT–¬g\\\\$hÄŸš³ùPË»-ýÊü÷¬v™P6OZP¶/¬ncÉ¦­ÊÇµb­ôŠäqžµoÎ,¼~tÕšn]’à.qÉ¨£ºÁù˜œÿ\0\rPiö“Á¡¦TÃuôÅ-z—fh=ÊÈ¥phŽq\ZmÛŸz¥ö”Àù…)c’w`*XjI*—˜0$(íWíÙ™A-×½e¬«µ˜â©Ë­Ì.Œq© žNi Ž›A”|ÅŽ+:úì…sœŠˆ\\´€néTnï€Ü¸ö­- ¬îEuzZ2\0æ²..‹\r¤m4²‚Ï=«&y†ç\'Ö‹$irCvAÈ>µ\\î-PÇ#sžE,Ò©CBq¥ÊKæ¨<cµ@dÚ\Z’ OÌF(pA>•2ò.1º÷‰X“íÕ\\äœæŸ¿ï¹¨ÏÊ¤I>¾ð¸—ÞµdV—79®²Êùnb.Ò¾ðßÅÝ{ÂöÞM­Çî»«ŠôÏ	~ÓYX·BZrÜ•=k›•îdãd}1*¢çvÜûÔ	nÌCm¯+±ý¡t=BÇÏl Ç!ºÔÖ_¼9pÅ<ó{Ò³îO{y6ÞÆ£HdËdúšãíþ*hªÃS„1ç«JÏâV‰8?éð1öRw®çEF@Ù8§ÂÆ3\"îÍfÚx»J¹[¸·\0*ãÏk\"ïY•³ýÖ¤´\Zò/$Àç“éKß,¤’­f	•I!±ïH—‹–Äƒß57¸•Ñ»ö¼¡ÈüAÅH—…àœ{×:—›X°Ç­Hº°\r¤Õ\r\\êmîV ß0ÅMØpÙ“…r‚ÿ\0±¤“RÚ~Sýj®;3®Šm‡æaƒëToõe*¸Ísmâ\']ÀšÌeÛpæ¥¾Á|Î¬ÇšÇÔ4¿¶9\"gQŒ`1ªÐëHÄå±ïš—ûI8lþ5•Øíc÷Àö÷Á¼É¥:Æ²$ø\\¯*ê7\n¨ÅuÂý×ó¥ª=\nWb±Â\'Áõ@VÙWÜš¥}ðPdq¨èç§&½-oJýÖ•,w=Oj|Ï¡j6[\'7ÁE¥5\'g=óƒMÑþøÏG\\]Ç?,œ~µî/(<³N·»P\"«ÚHŽDyµ‘ñEÁ2E#.9ù³X×>6ñæ›®méhÌYr+Ú¾Ò p‚‘V	#|Æ7{Šjm’â¬lü2šmVâ)î²fÛ“ŸZõ$m¤«gÚ¸ß\0Z¤0I.ÑóúWdá]w^‚øNYÄ°§pÅ(õüj¼\rò‘Ž:ÔÈà¯Uj‡ÑH8r)àƒÔ~5*à*rI§*ãÞš¬\"ž…\'ƒHÈ@3Œ÷¤rMDžõ,mq¢Ág°&NTw¤Z(¤I2¸B±ù©Èç«‚GCŠ\0É·‚}êlkt%C¾#ÅgË¼ªÊå@ëŠµ“å®:S(HÏTK*«\r#È*.”¤[ýiò6íUƒÆAïVø*{Ôh `S.+˜¶Ã¡ªF Üž\0íV®©ÝÀ¬Éç`sòÒ°hÈ.TnrO°µ	FY•ºÕ­Bù6@pßJæMÜ…ß~J/CDMP·ÄH›XgÜÕ?0CœšŽîbøÚùªw\r¸œÓó\"ý2Lª„ƒÍS¸r#Ü¬ÕZy\n(]ÜÖ|“<Jß5%îy“É~@Ã`SR÷ƒœíYŽæ~HÀíL*F0xÖ£NÆ•ÅÑØ>nB*¹»\n‡æ¨ý­äÁþ•Nf0àñBÔÆ¬wUjl¡Šï\'¯¥fÆà«n½)~Ò–êbÔÁ+—%™¶ÉC6!eïU† &áÔ\nˆ´q–`ÜžÀÒ)h´,¥áG#;TQqzXí\rº²®ÞO•¸ÇZdLÊÃ-‘ô£}Åfh‰Ë”“ÈÅgO;	=úÔÆLü¹¨åPbb{QÔVvæ>gàûT»m*¯…÷¬Ã4Œ!*_<2p~lt4/2’C®¦åÎHïX×rd=êk«†PüüÃÒ°®/ËÇm=´!Ûkc­fÊìÎA#ð§M¨`°$núÖMÍèÊIÝýáB\ZŽ–4p0iÉpÉ:V(¼mÇ\rÓÖ‰/YÁËð)Ùt\ZF¼—%Á5š1‚y¬¡t@8qùÔgsœæ¥¤ZW6ÖM½ÅL·,TäçÒ°ÒR£–úÔðÊ¼‰hBhÒŽPO\\TÁ Sœ¶k.Dá¸=êÄw´å·¥		+jhI+:œûU;–ƒ<ÓEê¨àçÚ žàXz´Ák¹Zò]¬Hf³e“yÇ U«‰ƒ©\\ò\rU$«qŽjy†ŸAƒç¥.P&6Ò•$·\0ãÒ!ïÅ%¦æ‰0V6‘ŸzLà:RÆêŒw`Ó¼°IÁÅ&Ñ^1Øô£š\0ùsž)nÂéG©;„Ñ†BÍH–H£+Ö´Ešç9ÈúT‰j¼ák¦„Ý¢œK$hÈ¤…îIb@Rww«ñÚí\0ÚjÔa‰ãšW²›2gYDO™\rf<³£6ÉO±­ëÈ6ï}kâ½›·­8¶TcäW·×µK)p·“(;5Ñéßµû%ÚšœÄvËt®RC÷°j#	ÇÞ­ynŒšg§Xüsñ7ÜþÔ#ÝÀ5\"ü}ñr­\"•nÇZòØÓË“žµ&Í¬ÏíK‘>‚Ž¨õûÚY\nùgo·ZÙµý¢¯•ƒ=¸aþÉ¯\n…ÀLWmdã¥C¦¯±ItgÑ¿´œ)ûE»tþWàý ´k†ûÌ‡ý¡_7m=)*¸ù‰1„ZÔ\ZwÐúšÛã‡s‚n6±ë‘À«cÇÚÃ’ºœ9<`œWÊ©+€ÀE,¦]£l‡?ZË‘lk¾Œú’Oé±®áw‹ê¦«Gã»8Žã¿­|×Üöè~v9íšµi¬8\'q8ªTÒêN½O¥ ñœ$æ®FÍ^ÅPqûÐsï_8ÛkAÇ°Çµ]³ÔÝCbá¿Péy‰3è¸üQn¼o>õzAƒûå9íšù»ûjè“‹Ž=ÍX‹\\¿C‘t:^ÉØi³éhõhdŒ\rá¿\Ztwñ“ò“_:[x³S„ä\\“ƒëZ–ŸuØÿ\0ËB=êU6Ä®{ØÕO «ÖÚ“Œ“Šñ]?â”ä…¸·àu9ä×¡ø_‡ÄWK·(A\Ztàùµ\r‘ô‚”A¥.ŒÖêd6OQT48DV1GÓŠÑ‰J6âyô¯AYlsr¹lJ‡\'nÜb¤ÜqŠ®…~mÆ¥TTÎ3Q±QwDñ°#éTä¶:T^aU=Å(tóéZC]	²D…±@<8Å `zúP§;»\n°@ü¨\\cŽ”)\0õ=I4»¶òy4Ìòx{Ò±6J¬T“Ó*<õ=(ÉëšV‡«ðÔÈ\' Š7\r¾­KÝôÍÐu=Å7q+ê=iKAæšN1õ¡\rìwëQºädri¢/Þ31ã·4¹dR1Å/RâTŸc1ÀÆdj, 6Ýß© $¹\"²5BQ²\0¥a#™Ô#,Û«*évÄß6>µ·¨Ê7ãÎßÊ¦2CÑcH™\rµŸ³>ÐImÍ‘O–àÀ{Õ	.QK\rØoZ ÜœÝb1ÀïY—,ÌŽÃ­!ŸÅT¹¸eÉå=©Ý2ZDöÒe2y\"-ÈXÈ=«8]ìV9¡¯£nmÂ§r—÷„KÏÞ61ô¤7	!`ËCTÆÝÇnµEö²zF…«2Ð¸ÜìƒµB.˜Io—ÓR[¬Àd*º–%œžWÖ‹\\›šBåC7¡{Î2qíTÅÒ»À®)goÝœšZ­Jé¡tÎÀ’3I’KÏ½Q\0é}\\…ƒ7û¦ž·ÔZ²úNQ‹“LkÒÙß°ªŸo\0ŒƒÞœŒ$\\©ÈÍ;bc7”¬wcÖªÉvQŽÒ­W–Gf œ€jÕÉ”TDBÍ|Òæ²î§Ú\nç­E%ÇÌY~Qÿ\0ë¬û›¦‰üê¹X’Co]UrMbO&O&­ÜÎZ6àzVc0v$z}KAë Œàôá(+ŒÕY€(Ø<ŠH¥R˜çp¡]-ËbÚ¶U¹¥N‡,jß.(È#¿•\\›q\0€sþÐ«8òØ“Ò©–ýß¡4ôS´ç¯-„œ‰Ø¡à–üM>;‘°üÄãÒ¨¾sÓ4‘¹Œœw¥rô.C>Kn4ë‰÷)Ž*ûÙÏ>´ég8$qKÐ¤ÐÆl¶2OÖ²¨$õ¤SXŒRº©è	õ$™\'SÐguDÑŒqÁ§ï qÍ\rv\Z²zŽ@	çš\n\rF­×#5Çæ{õ-\\¨É\"@wî4É\Z3ƒL„}ãIäüÙýj­ÐIÙ›gê=ªHàT\\W²g€GÒ¤‰C9ÎÞ¹“ƒD[ç9àT›D(H5§ºÇzûÔWÆå~lz–Ñ¢c›ºÇ!\'“Ö°ç%bpÕ·¨\0®ë×‡|Ü“ZSIìD®‘˜GÌy R´R÷óúQl;à³ŠìŒt0RØÀ¦Š3ÎiÊ\n© â•­¡]bFß÷1W-Gï\0CêÀü¸aV¬C3ÛŠ%tˆ“:°å#SAl“ÔSOVÇ5fÜ…‡Zçi-QªÜM™Ï$gÐÒtþÛOP[ §¨ü+4âiè\"©8àÓã*AÔª7g¥$,É&…¨µ!P8§(u9¤È}ÄibeU%Ž}	¢UÇÃpñÿ\0µëR}·$õHß´`\ZIÜ	±UÌº2¬ÍkàIM¾Æ¦KÖ¶±jæä™²8>‚¤†òXA@§Ì…©ÓÁ¨LËÄ‡•ôWì÷`÷B9]Cdç5óŽ %‘Q†T‘È¯²ÿ\0gí0AahÊ2\nƒóV°·C)Ýn{åºyQ*ú\n•@e#ŒŽsQ‡”°ëKG*g\0Ôðž¢«R†íÔuÅ&®%½ËEð¬7Óãû¿2ŸÆªy„ŸCëV%”ÆªqÉ¢1]F›<ïl¶jdÉ<Š­dæ¦Y7ä‚´¸£µ‰7Ú’6óP´Ê­·œÓ”H9Í!“äsŠrœTJØç­<û\ZV=(Å0ÈÁˆÆàFF(\\ŽY†(Ô›ŽR§w¨ £“øÔDœôÂùVÁéÞ‹Ö&ßÏµ&ìŽ•ºªäž*8fÜÏ“òõÊØžWÚ¹»Þ©	›a^Å\r!rÇèŠE@CƒPJ\'ËYZ†Ù‘ógµ_–@›±È¬«ÉISØ{v§m­ŽgSc»ãÉê7†?0zßÖ.rH&¸Ý^à2¾[æ©4z#*kŒ—n€Öt×@ÏÍQ\\Ý˜Ô“ÓÐV|“†É-CA2Ä“pOèR¸¸i3Žƒ ¨%ºŽ=*—ö‚ø§qX´ÎäãZN£<ÕO¶®ÞàûSVäívÈˆ´ËIL£àŽÆªK3lz…®‘Aç&¢šq*Ç4$‘Ä‰v÷Ï¯5$——ß½cÊv’¹ÅF³ºñ¸Ô#XÜÑ„$@î)ò\\î_ïjÌ3ŽrØõ¨–÷¡¾cQŸ\0·Zíe¸InÃ®cØÐ²/$Õ/4_Äh´¨±g†jjÝ2~QTÄŸ)ÈªóßÊ`*•‹ÿ\0nÃ7pzU+»±–Ü7\Z¨g.TýÒ*»°Àãj¥©Z1¯p‡pf³.\'™:ãŠdÒåúðj«ÈÇ#¿cV¼‹Q[›æÎãUì\"¤yu5‚Tâ›ÐK[ŽuÞ¤)äÓ|¼mªÒ[ÈÙpNìw©	Ï8¬Ó 4cnN)TxëH{Õ4ÐÐªÅAÀÍ\nÅhÞ>ï$xn1·Þ 	K‘œRg®FsS¹ØŒ\0<sš…pÜúU{¨«2¸vwùsŠ˜gŒ\ZvÀ‡ üÇû´ãµóóßíQt	mmÝxô d6sÇ¥;½…1œï \Z`JNsÅ\nN\r7#¦FijDŠ6‚	Îh\\ãžM!A°€9¦”rqÎi¸Á\0´ûrPüä\Z”áŸœR.Ü¸¦6SµÔãŠtp)ÜTŽkKÛˆTå²¥M¹p	ÁmµÄâä5.S³U9*µ‹¨Gd_s+Ö¨§‰äÛµ—Ú²uû`b|æ´ŒZö$›P[–gÞö¬‰¤2ÊOðÓ’ÅÁîEJöW\nkhYng+´T@àp;Ñ´Ó\0{U“hè¤f ÚÉÃñ®”ãmlúŒÙÉ?Âi‚2I•*íÊ†i dÕ\'}‡{\r\r¬§œÕ»hð…±ÏôªÐ©àu&µLGÉé’+{ºÍ©n<7CW—÷i…éýê­365pC•8ükšNÆ±W3–À)Î>´€p_šzA´/ZKõ^APZÑn\n¡sŠr…Un94Ü…ã<PÒíéÔQ¹(vÑýáHÎª0~õV–ð¯Öª™‹Ù©Nà´,Ëx~`9ªê+æ˜^*H×4Æ—0ÕN	n•\"JÅ°¿7ÖS¸œýiÈ›•¿½ëBÜ%¹¯á{?·jÖÑÉqø×ßßtu²Ña@!5ñÂM!µÛ¯$+n8¯ÐÙ].0xùEtATWÑ!O94Üp\r7ÜÓÃ\r§ úÖÑ2Ù]£¿4áùSÔm8°Bž®G²*¹g9\0r*A¼œšÅn…™AéML[;vÓ¶ÖGzhÏ\'–›ŠÅåpËxªâv|ŽÔ×“j£Þ…M¨µWa-‰ª[ð©D€®íÜzÕf]ÝM)UH~aóšzÉ.õÇQê¦„ mßD²Tÿ\0ëQ±\\N{Q}	µ¤<Ïµ[4­XØ–äzT\0ÔfŸ$¾`ç­+°IÎ1ëBÈS }ßJe&à3EŠJÛäM/±N8¤.À¨šLV\\ŸZkPz!$¹%XàïXšŒ¤+œð?iJüŽ•…¬ÈÌ”ÅÎWX€ÛNïjâ5yH.Aãÿ\0¯]N§>¨Šâ5ÉJ+öæ¡3[\\Á¼¼ùœîùMP{ÅS÷³ôª×s.ö9¬é.Bî9¥~`JÅ—¹ffª!H$T-zp@«½ÆÐI94)t)ÆûVì\rÙÎ*3vØnËYr^»8=é¢íÊØ©Cµ•5H žE0ÎÃ85—ÁìÔ×›ŽîM&„•‹Ít¥‰$æ«5ÆãÉù‡½Tk ñšõ‚cÞ‹0iìi£gv¦’Iêk\'íLã“ÅIö—÷¸”[Ì,Ñ¢çO&5Ú\0õˆ5\"Ù?•)½|cp5ZìR]M¡xÀOÒ«=Êç%ÿ\0Yj$äšÁƒ	>¢•ŠK¹}¯PŽ¤Õ\"û™¾j…\nrÙö59E\'¨ô§a¨‘£vlÆª»`ðùü(Yƒ19±`Fx4l	ßF#¸äÔ\\°R2jÌqï\'½\'„à#DB×oÝ,µ=£\\$úÕµ`	$mÛJJ¶¯½4ƒ••>hÀùOsP¼»déœU©³9\"£\nTôâ„ÄÆÄå×$bŸ„G”€qÓQ•`p8¹ªLVÒÌ°òŽjü°<bšÀ(ïŸZb8gùºzÓl¥Àm¡ZYœ–Î:FÛð¨rvšWº‡Eà\ZŒ0A!Ï>µåõ¥nÈ¨¸Õ‡cqõ§Gž@8¦¬»ãøpÇ5¥¬+¦H¹\0äÐOÊqŽ*/8\0K}ÚX™;I¤Cûuõ©£”ˆÉ#\"™/@)¾k*)Zå/#Y’I§	Ib¢D-ó9æ”&åaŒ\\–‘¬VšŠÇw)È©“š‹Œ{Ð‰8Í=cÔÉ[±c\nãéê6¦Üþ5QA$ã5aK7ÒŸ=Š^ö¬“c>Fwýj»Û¶qÔw©–FE9á½©«>œf…$ÅË¡¶(FìãZ‘‘»Ÿ¥h+î‘·ëLh„™`qšµ6‰pL£\nIãõ­D¸Þ§#ÊªýŸrà>\r4¬‘ Ô¹_q(ò—XŽHÜ*xeSœw¬øˆ!¿•hEˆC´úÒ•‡Ü1‚yÍLgæéP°uF9Î=*”·2l ŠÂÅ¹®ÔÎ}*=øŒ·r8¹ñófûŽ7ñÜŽ´¹lT]É[²Xâ¤HÂ\0çëQ+áŸÜzÔ‚UóøRw.#Ó9>VbOZj “OUÝß‘PÇº÷†ùEñÀ\0yãSÂ•çv*M¬O@EZ÷–›Åû;èÿ\0j×–cœ/zû‡EAŒkž‹šùKömÑ\"IvîÜsÅ}Wm¹\"TÉƒ]°*8\\®Ù¤¬89¦ˆÔäã“LPDŒµ6ÝØ¹ÜzÖ—#Ô¹´Š]Èq¹ªx$q@9Ò·B–„‘©G\'4âIç­0Èã­(~phBÔpïE5$ƒKž¼`zÐ\"N]IféëHdm»sòÓTîû§?JA§ŽEC•Šç§·ƒËTJIQ¸`ÒÑä-ÅÜ}i»Ç<ÒœŒæ¢\"„R±&ñ×4ˆá”x¦cé­\"åxÎWÒªÈ^ƒ›\'5²ðV™pX£…¨••X†Z›ƒ}¬…#ûÀžÔÒÁ±¹=qÚ‘äPÌŠŒŸSNì”„‘7Ü{×9¬Hª§æ÷äVÅäØAÏ­s\ZìÁQÿ\0½ŠF±8ýfuˆ|×¯ê?,‹ÜzWO¬]gÍyßˆo,ŒŠ‚¢îc\\Ý§sY³]gv\"¢–ä¶A<\ZªÓa[Ï¹©°Ò¹1”€ß6Aªßk\nNj¸¸+“sUÌ¬ÄœÕ¨-44À\ncüU—%Xí Õg“rŸ˜“UÆð[$Jž[u\Z¹kÍË¹G430lœÔ>´”õ(4ÙnëP¬¹Ü	¢|ÎÒ?\nÏwÚû@\'4ÊØÑiÔ&dŠh¹;Xw=1TÄdœ*\\Çôì­s6ÀýÝÝéêr*»d\ZmcËsH»îRx94!d\'šˆd}jD”®sÍ;\nÄªÿ\0{ssLÚå[æâ£=sÁ£œŸË½_ºlx•@é“PIÎM8®>”c5*ËaÞâG!WaéS€¬	#wªÁ6³6O?•I¼ã%}Ä›CÌ@‚Tä\n` g¨ä#\nU)¦-C#æ†SŽTô§±Vô\r5„]‰¢d“;àY¨&Q´àâŒç¥!šF—Ób11•fÍ0!F*FlÚ*\0îû8(VbZlLòmp¤|§½#ùx )6wn#¥5ðìIIò‚¹VHÉ9$ñVíWÍC×Š!PêÊ@Ü*D,ü¨[\n>d2Äpß{Y•Ô æ®Ç´+¦°ü£ŠZô*Ú•ã/*í\'TÑE°žrM=#Â–Æ(ªŠ,roÝ¼R)%_©Å~PsK\0œzÒ±Q]Î}?\0€=1OQ…aÖ™ìü§Ò¸ÔeÜÓ–Ã•=±Ú‘]@b:ô¦!®qºžRµž¢^ôDðF)ëÉãŸ­4\r€ã;½i±‡$•÷§kìMÜw&e,ÄH«×=©‚GçB|åòqšV6ô%ÎYà”ªAHâ£Œ±Ü;R™6qšµ%°îšµŽîpÔ(b½OÖŸ±\'œÔƒÀÍ_=Á$ŠË!ARÅtÊyéíJÀj.IÇÒ³Ž¤ÚDÊøR:æ£|ƒøÒä(éÖœ\0I«BÒ#’Õ$MÙéÅW\ZK–Ý»Š°à2*ÅµÉE*ÃrúR^AÐ®4À°î<Õ2«‘»¥tÜ+®ÓŒûV}Í‚HX¡\0Ò¿B-¥Ìï7Ú—Í+Î÷ª²ÚÍ0<2HTîÅU‘%˜e2ç*qZú|Hò*˜’9¬(ïL)@?\nßðÄÑßê0ÇŽw\0?:•¶=°¾èâÓIƒ7^â§>ÕçtØíô˜Iå‚Ž\rzLk¼ã#ŠìZ#Ž÷Ôz8\rÓ54rob1U·ÉçÖž’1}ÄóK•½ÒÌ±sŒŽôå!ÆTäT/0’2SKØVVùqV™WÔx„¹?7éRm?…%1&Þ‡\rŒw§pJÛŒ(ÏSÒ”¶Tâ˜¼ž?JBp	&ÉŒb”| ÷¦€6“Þš	äqŠ\0‘OÊ8Çµ\'˜¯•ÏÝ¤R0ÙÛŸnõÈ¡Û›Ö‹ÛH’G8ùFï\\R&IÆ0EEfRw\r	!‹(ÍJ/dæêÄ«nn1Þ1V“qÀ)rJ²ã˜íPî!qž=(vã ÷”äá²}i7g“M9Çi»ñÇçRXqÆzTRÍŒ?ZŽk«É¨åœm¼ã½Z]ÄöÐ©zøF#æ÷®_Zaå¿=GZßº¸u$­rzõÆøØiX¤‘ÀëW@äçšó¿\\…fè+µÕç¦ä^k¯Ý1÷òÜ`\nÉìi¡‰s.X€xïUàŸÒ›4ÛrNzòE4W=3Í–­&xÈÈ¦	FÞœúRyß61Å(Ï~íU‹DJÌÁºí÷©\"|+r¥!™X)‚]½9­=Á=4™êvŠ‰Ÿž9Z©ïMb½Mäús–Æ*7\\’zš’=¯œSýà:ŠÉly¹ÛÍŠýic†U9õG,x$ÕûÌ|‚öù¸¦ªîÎ;Rçš’Ûž\n–ƒŠ òÛûæˆÉU ƒR1Ëg§µ\0:äÕÆÙ9ü)\\…É T‡½jàn1Ôx0À ý(íLXö3~õEä¹B?\Z`‹T~w^:SÕƒt9¦1Üm÷£ /#¥:4,­ŠjÇ¤!¹ûRÒ¶Ü`SUv¨\0ôªLc™øÉàTeðØÅ>’2õR}©hƒDFÑî\r÷³HUaÈ³VŒ[‰ÚF*´Ë†<æ§G±I¬ Œœ¯Öœ®í?JM»Ü1QÀe²Ù«¸Y1ùe¶“‘N€ºeBçÞ›¡‰š“É3I$E®:!X0§`²üûb¡’wŽ¢ûK¤‡…5dR&0È_¨ÛMþ[3o§5ÏlŒÐ²n\0\r\Z‡/QíŒmSš…¦(0M<°f=½©½É]-Á§mÿÙ','2013-12-17');
/*!40000 ALTER TABLE `tabtmpinoutimageinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabtmpinoutrecordinfo`
--

DROP TABLE IF EXISTS `tabtmpinoutrecordinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabtmpinoutrecordinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `LocationID` varchar(16) NOT NULL,
  `EnterTime` datetime NOT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  `EnterPlate` varchar(45) DEFAULT NULL,
  `LeavePlate` varchar(45) DEFAULT NULL,
  `State` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`RecordID`,`EnterTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH(EnterTime))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabtmpinoutrecordinfo`
--

LOCK TABLES `tabtmpinoutrecordinfo` WRITE;
/*!40000 ALTER TABLE `tabtmpinoutrecordinfo` DISABLE KEYS */;
INSERT INTO `tabtmpinoutrecordinfo` VALUES (41,'5107010001001001','2013-12-09 13:47:43',NULL,NULL,NULL,1),(42,'5107010001001001','2013-12-09 13:48:58',NULL,'å·A88888',NULL,1),(43,'5107010001001001','2013-12-09 13:49:58',NULL,NULL,NULL,1),(44,'5107010001001001','2013-12-09 13:50:00',NULL,NULL,NULL,1),(45,'5107010001001001','2013-12-09 13:50:51',NULL,NULL,NULL,1),(46,'5107010001001001','2013-12-09 13:51:36',NULL,NULL,NULL,1),(47,'5107010001001001','2013-12-09 13:51:37',NULL,NULL,NULL,1),(48,'5107010001001001','2013-12-09 13:52:06',NULL,NULL,NULL,1),(49,'5107010001001001','2013-12-09 13:52:20','2013-12-09 13:54:24',NULL,'å·A88888',1),(50,'5107010001001001','2013-12-09 13:58:04','2013-12-09 13:59:54',NULL,NULL,1),(51,'5107010001001006','2013-12-09 14:04:01',NULL,NULL,NULL,1),(52,'5107010001001012','2013-12-09 14:06:44','2013-12-09 14:06:54',NULL,NULL,1),(53,'5107010001001015','2013-12-09 14:06:59',NULL,NULL,NULL,1),(54,'5107010001001012','2013-12-09 14:07:35','2013-12-09 14:07:38','å·A88888','å·A88888',1),(55,'5107010001001025','2013-12-09 14:08:02',NULL,NULL,NULL,1),(56,'5107010001001017','2013-12-09 14:08:28',NULL,NULL,NULL,1),(57,'5107010001001012','2013-12-09 14:08:57','2013-12-09 14:08:59','å·A88888','å·A88888',1),(58,'5107010001001006','2013-12-09 14:09:00',NULL,NULL,NULL,1),(59,'5107010001001023','2013-12-09 14:11:04',NULL,NULL,NULL,1),(60,'5107010001001012','2013-12-09 14:11:10','2013-12-09 14:11:12',NULL,NULL,1),(61,'5107010001001015','2013-12-09 14:12:15',NULL,NULL,NULL,1),(62,'5107010001001012','2013-12-09 14:17:11','2013-12-09 14:17:14','å·A88888','å·A88888',1),(63,'5107010001001008','2013-12-03 12:19:57','3000-01-01 12:01:01','å·A88888','å·A88888',1),(64,'5107010001001012','2013-12-17 20:16:09','2013-12-17 20:16:10',NULL,NULL,1),(65,'5107010001001012','2013-12-17 20:18:59','2013-12-17 20:19:00',NULL,NULL,1),(66,'5107010001001012','2013-12-17 20:22:30','2013-12-17 20:22:32',NULL,NULL,1),(67,'5107010001001012','2013-12-17 20:24:21','2013-12-17 20:24:23',NULL,NULL,1),(68,'5107010001001012','2013-12-17 20:28:01','2013-12-17 20:28:04',NULL,NULL,1),(69,'5107010001001012','2013-12-17 20:29:44','2013-12-17 20:29:46',NULL,NULL,1),(70,'5107010001001012','2013-12-17 20:32:39','2013-12-17 20:32:40',NULL,NULL,1),(71,'5107010001001012','2013-12-17 20:35:26','2013-12-17 20:35:28',NULL,NULL,1),(72,'5107010001001012','2013-12-17 20:37:43','2013-12-17 20:37:45',NULL,NULL,1),(73,'5107010001001012','2013-12-17 20:38:23',NULL,'å·A88888',NULL,1),(74,'5107010001001012','2013-12-17 20:44:01','2013-12-17 20:44:43','å·A88888','å·A88888',1),(75,'5107010001001028','2013-12-17 20:44:34','2013-12-17 20:44:41',NULL,NULL,1),(76,'5107010001001012','2013-12-17 20:49:39','2013-12-17 20:52:16',NULL,NULL,1),(77,'5107010001001028','2013-12-17 20:50:50','2013-12-17 20:50:57',NULL,NULL,1),(78,'5107010001001012','2013-12-17 21:03:09','2013-12-17 21:07:36',NULL,NULL,1),(79,'5107010001001012','2013-12-17 21:10:12','2013-12-17 21:12:43',NULL,NULL,1),(80,'5107010001001012','2013-12-17 21:25:09','2013-12-17 21:28:04',NULL,NULL,1),(81,'5107010001001012','2013-12-17 21:29:10','2013-12-17 21:33:11',NULL,NULL,1),(82,'5107010001001028','2013-12-17 21:40:41','2013-12-17 21:46:15',NULL,NULL,1),(39,'5101070001001006','2013-11-01 17:00:53','2013-11-01 17:00:56','1123','456',1),(40,'5101070001001007','2013-11-01 17:03:55','2013-11-01 17:00:56','1324','4353',1);
/*!40000 ALTER TABLE `tabtmpinoutrecordinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabtmploginfo`
--

DROP TABLE IF EXISTS `tabtmploginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabtmploginfo` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LogInfo` longtext COMMENT 'IP@ClientID@Serial@Credit@Type@SQL',
  `LogDateTime` datetime NOT NULL,
  PRIMARY KEY (`LogID`,`LogDateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (MONTH( LogDateTime ))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabtmploginfo`
--

LOCK TABLES `tabtmploginfo` WRITE;
/*!40000 ALTER TABLE `tabtmploginfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabtmploginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabtmpuserloginoutinfo`
--

DROP TABLE IF EXISTS `tabtmpuserloginoutinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabtmpuserloginoutinfo` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LogUserID` bigint(20) unsigned DEFAULT NULL,
  `LogTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LogType` enum('Login','Logout') DEFAULT NULL,
  `LogClientID` varchar(45) DEFAULT NULL,
  `LogIP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabtmpuserloginoutinfo`
--

LOCK TABLES `tabtmpuserloginoutinfo` WRITE;
/*!40000 ALTER TABLE `tabtmpuserloginoutinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabtmpuserloginoutinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabunitinfo`
--

DROP TABLE IF EXISTS `tabunitinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabunitinfo` (
  `UnitID` varchar(9) NOT NULL,
  `UnitName` varchar(45) NOT NULL,
  `UnitComments` varchar(45) DEFAULT NULL,
  `AdministrativeID` varchar(6) NOT NULL,
  `UnitAddress` varchar(500) NOT NULL,
  PRIMARY KEY (`UnitID`),
  UNIQUE KEY `UnitID_UNIQUE` (`UnitID`),
  UNIQUE KEY `UnitName_UNIQUE` (`UnitName`),
  KEY `UnitAdministrative_idx` (`AdministrativeID`),
  CONSTRAINT `UnitAdministrative` FOREIGN KEY (`AdministrativeID`) REFERENCES `tabadministrativeinfo` (`AdministrativeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabunitinfo`
--

LOCK TABLES `tabunitinfo` WRITE;
/*!40000 ALTER TABLE `tabunitinfo` DISABLE KEYS */;
INSERT INTO `tabunitinfo` VALUES ('771237583','å››å·å‰é€”é«˜ç§‘',NULL,'510107','æµ‹è¯•åœ°å€');
/*!40000 ALTER TABLE `tabunitinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabuploadfeeinfo`
--

DROP TABLE IF EXISTS `tabuploadfeeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabuploadfeeinfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `Prepayment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Payment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrepaymentOperator` varchar(45) NOT NULL,
  `PrepaymentTime` datetime NOT NULL,
  `PaymentTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PaymentOperator` varchar(45) DEFAULT NULL,
  `PrepaymentUserID` varchar(45) NOT NULL,
  `PaymentUserID` varchar(45) DEFAULT NULL,
  `FeeReceivable` smallint(6) NOT NULL DEFAULT '0',
  `FreeType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabuploadfeeinfo`
--

LOCK TABLES `tabuploadfeeinfo` WRITE;
/*!40000 ALTER TABLE `tabuploadfeeinfo` DISABLE KEYS */;
INSERT INTO `tabuploadfeeinfo` VALUES (39,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(40,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(41,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(42,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(43,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(44,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(45,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(46,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(47,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(48,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(49,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(51,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(52,1,0,'222','2013-11-04 12:23:23','2013-11-04 13:23:23','111','22','11',0,0),(54,0,0,'æœªçŸ¥','2013-12-09 14:07:35','2013-12-09 14:07:38','æœªçŸ¥','002','002',0,0),(57,0,0,'æœªçŸ¥','2013-12-09 14:08:57','2013-12-09 14:08:59','æœªçŸ¥','002','002',0,0),(62,0,0,'æœªçŸ¥','2013-12-09 14:17:11','2013-12-09 14:17:14','æœªçŸ¥','002','002',0,0),(63,0,0,'','2013-12-03 12:19:57','3000-01-01 12:01:01','','1','1',0,0),(74,0,0,'æœªçŸ¥','2013-12-17 20:44:01','2013-12-17 20:44:23','æœªçŸ¥','001','001',0,0);
/*!40000 ALTER TABLE `tabuploadfeeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabuploadinoutdatainfo`
--

DROP TABLE IF EXISTS `tabuploadinoutdatainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabuploadinoutdatainfo` (
  `RecordID` bigint(20) unsigned NOT NULL,
  `LocationID` varchar(16) NOT NULL,
  `EnterTime` datetime NOT NULL,
  `LeaveTime` datetime DEFAULT NULL,
  `EnterPlate` varchar(45) DEFAULT NULL,
  `LeavePlate` varchar(45) DEFAULT NULL,
  `State` tinyint(4) NOT NULL COMMENT '1è¡¨æ¬ è´¹ 2è¡¨æ­£å¸¸ç¦»å¼€ 3è¡¨é€ƒè´¹ï¼Œé»˜è®¤å€¼ä¸º1',
  `Type` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`RecordID`,`EnterTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabuploadinoutdatainfo`
--

LOCK TABLES `tabuploadinoutdatainfo` WRITE;
/*!40000 ALTER TABLE `tabuploadinoutdatainfo` DISABLE KEYS */;
INSERT INTO `tabuploadinoutdatainfo` VALUES (57,'5107010001001012','2013-12-09 14:08:57','2013-12-09 14:08:59','å·A88888','å·A88888',3,4),(58,'5107010001001006','2013-12-09 14:09:00',NULL,NULL,NULL,1,0),(59,'5107010001001023','2013-12-09 14:11:04',NULL,NULL,NULL,1,0),(60,'5107010001001012','2013-12-09 14:11:10','2013-12-09 14:11:12',NULL,NULL,1,3),(61,'5107010001001015','2013-12-09 14:12:15',NULL,NULL,NULL,1,0),(62,'5107010001001012','2013-12-09 14:17:11','2013-12-09 14:17:14','å·A88888','å·A88888',3,4),(63,'5107010001001008','2013-12-03 12:19:57','3000-01-01 12:01:01','å·A88888','å·A88888',1,1),(64,'5107010001001012','2013-12-17 20:16:09','2013-12-17 20:16:10',NULL,NULL,1,3),(65,'5107010001001012','2013-12-17 20:18:59','2013-12-17 20:19:00',NULL,NULL,1,3),(66,'5107010001001012','2013-12-17 20:22:30','2013-12-17 20:22:32',NULL,NULL,1,3),(67,'5107010001001012','2013-12-17 20:24:21','2013-12-17 20:24:23',NULL,NULL,1,3),(68,'5107010001001012','2013-12-17 20:28:01','2013-12-17 20:28:04',NULL,NULL,1,3),(69,'5107010001001012','2013-12-17 20:29:44','2013-12-17 20:29:46',NULL,NULL,1,3),(73,'5107010001001012','2013-12-17 20:38:23',NULL,'å·A88888',NULL,1,2),(74,'5107010001001012','2013-12-17 20:44:01','2013-12-17 20:44:43','å·A88888','å·A88888',3,4),(76,'5107010001001012','2013-12-17 20:49:39','2013-12-17 20:52:16',NULL,NULL,1,3),(78,'5107010001001012','2013-12-17 21:03:09','2013-12-17 21:07:36',NULL,NULL,1,3),(79,'5107010001001012','2013-12-17 21:10:12','2013-12-17 21:12:43',NULL,NULL,1,3),(80,'5107010001001012','2013-12-17 21:25:09','2013-12-17 21:28:04',NULL,NULL,1,3),(82,'5107010001001028','2013-12-17 21:40:41','2013-12-17 21:46:15',NULL,NULL,1,3);
/*!40000 ALTER TABLE `tabuploadinoutdatainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabuserinfo`
--

DROP TABLE IF EXISTS `tabuserinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabuserinfo` (
  `UserID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `UserComments` varchar(45) DEFAULT NULL,
  `GroupID` bigint(20) unsigned NOT NULL,
  `UserPwd` varchar(128) NOT NULL,
  `UserAddress` varchar(512) DEFAULT NULL,
  `UserImage` longblob,
  `UserTelephone` varchar(45) DEFAULT NULL,
  `UserIdentity` varchar(18) DEFAULT NULL,
  `UserState` enum('Login','Logout') DEFAULT 'Logout',
  `UserJobNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`),
  KEY `UserGroup_idx` (`GroupID`),
  CONSTRAINT `UserGroup` FOREIGN KEY (`GroupID`) REFERENCES `tabgroupinfo` (`GroupID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabuserinfo`
--

LOCK TABLES `tabuserinfo` WRITE;
/*!40000 ALTER TABLE `tabuserinfo` DISABLE KEYS */;
INSERT INTO `tabuserinfo` VALUES (1,'Test',NULL,1,'dGVzdDEyMw==','äººæ°‘å—è·¯',NULL,NULL,NULL,'Login','12345');
/*!40000 ALTER TABLE `tabuserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabuserloginoutinfo`
--

DROP TABLE IF EXISTS `tabuserloginoutinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabuserloginoutinfo` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LogUserID` bigint(20) unsigned DEFAULT NULL,
  `LogTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LogType` enum('Login','Logout') DEFAULT NULL,
  `LogClientID` varchar(45) DEFAULT NULL,
  `LogIP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabuserloginoutinfo`
--

LOCK TABLES `tabuserloginoutinfo` WRITE;
/*!40000 ALTER TABLE `tabuserloginoutinfo` DISABLE KEYS */;
INSERT INTO `tabuserloginoutinfo` VALUES (1,1,'2013-08-06 10:37:45','Login','359732008920329','192.168.1.109'),(2,1,'2013-08-06 11:21:17','Login','359732008920329','192.168.1.109'),(3,1,'2013-08-06 11:25:53','Login','359732008920329','192.168.1.109'),(4,1,'2013-08-06 11:34:57','Login','359732008920329','192.168.1.109'),(5,1,'2013-08-06 11:56:13','Login','359732008920329','192.168.1.109'),(6,1,'2013-10-15 14:34:15','Login','359732008920329','192.168.1.115'),(7,1,'2013-10-15 14:39:49','Login','359732008920329','192.168.1.115'),(8,1,'2013-10-15 16:17:12','Login','352273015731935','192.168.1.116'),(9,1,'2013-10-15 16:17:46','Login','352273015731935','192.168.1.116'),(10,1,'2013-10-15 16:19:17','Login','352273015731935','192.168.1.116'),(11,1,'2013-10-15 16:19:29','Login','352273015731935','192.168.1.116'),(12,1,'2013-10-15 16:21:44','Login','352273015731935','192.168.1.116'),(13,1,'2013-10-15 17:07:17','Login','357070002869859','192.168.1.116'),(14,1,'2013-10-15 17:07:51','Login','357070002869859','192.168.1.116'),(15,1,'2013-10-15 17:08:36','Login','357070002869859','192.168.1.116'),(16,1,'2013-10-15 17:09:06','Login','357070002869859','192.168.1.116'),(17,1,'2013-10-15 17:11:10','Login','359732008920329','192.168.1.115'),(18,1,'2013-10-15 17:18:32','Login','359365002838583','192.168.1.115'),(19,1,'2013-10-15 17:18:44','Login','359365002838583','192.168.1.115'),(20,1,'2013-10-15 17:19:40','Login','359365002838583','192.168.1.115'),(21,1,'2013-10-21 13:42:13','Login','357070002869859','192.168.1.116'),(22,1,'2013-10-21 13:42:24','Login','357070002869859','192.168.1.116'),(23,1,'2013-10-21 17:48:22','Login','357070002869859','192.168.1.116'),(24,1,'2013-10-21 17:48:28','Login','357070002869859','192.168.1.116'),(25,1,'2013-10-21 18:01:29','Login','357070002869859','192.168.1.116'),(26,1,'2013-10-21 18:06:00','Login','357070002869859','192.168.1.116'),(27,1,'2013-10-21 18:08:13','Login','357070002869859','192.168.1.116'),(28,1,'2013-10-21 18:10:13','Login','357070002869859','192.168.1.116'),(29,1,'2013-11-01 12:33:21','Login','860457022846720','192.168.1.104'),(30,1,'2013-11-01 12:34:23','Login','860457022846720','192.168.1.104'),(31,1,'2013-11-01 12:45:31','Login','860457022846720','192.168.1.104'),(32,1,'2013-11-01 12:48:36','Login','357070002869859','192.168.1.109'),(33,1,'2013-11-01 12:49:23','Login','860457022846720','192.168.1.104'),(34,1,'2013-11-01 12:53:09','Login','860457022846720','192.168.1.104'),(35,1,'2013-11-01 13:49:06','Login','357070002869859','192.168.1.109'),(36,1,'2013-11-11 18:41:55','Login','99000216376401','192.168.1.106'),(37,1,'2013-11-11 18:45:08','Login','99000216376401','192.168.1.106'),(38,1,'2013-11-11 18:53:39','Login','99000216376401','192.168.1.106'),(39,1,'2013-11-11 18:58:16','Login','99000216376401','192.168.1.106'),(40,1,'2013-11-11 19:01:29','Login','99000216376401','192.168.1.106'),(41,1,'2013-11-11 19:17:45','Login','99000216376401','192.168.1.106'),(42,1,'2013-11-11 19:20:44','Login','99000216376401','192.168.1.106'),(43,1,'2013-11-11 19:22:55','Login','99000216376401','192.168.1.106'),(44,1,'2013-11-11 19:24:39','Login','99000216376401','192.168.1.106'),(45,1,'2013-11-11 19:30:32','Login','99000216376401','192.168.1.106'),(46,1,'2013-11-11 19:32:22','Login','99000216376401','192.168.1.106'),(47,1,'2013-11-11 19:53:02','Login','99000216376401','192.168.1.106'),(48,1,'2013-11-11 19:56:03','Login','99000216376401','192.168.1.106'),(49,510108001,'2013-11-15 16:39:27','Login','123','127.0.0.1'),(50,510108001,'2013-11-15 16:40:00','Login','123','127.0.0.1'),(51,2,'2013-12-09 13:37:02','Login','860702021288287','192.168.1.103'),(52,2,'2013-12-09 13:45:45','Login','99000316909329','192.168.1.104'),(53,2,'2013-12-09 14:11:22','Login','99000316909329','192.168.1.104'),(54,2,'2013-12-09 14:16:48','Login','99000316909329','192.168.1.104'),(55,1,'2013-12-09 17:21:09','Login','A000004909E1BA','192.168.1.105'),(56,1,'2013-12-17 20:18:42','Login','355031040749448','192.168.1.105'),(57,1,'2013-12-17 20:20:28','Login','860702021288287','192.168.1.103'),(58,1,'2013-12-17 20:21:51','Login','355031040749448','192.168.1.105'),(59,1,'2013-12-17 20:27:43','Login','355031040749448','192.168.1.105'),(60,1,'2013-12-17 20:35:09','Login','355031040749448','192.168.1.105'),(61,1,'2013-12-17 20:43:39','Login','355031040749448','192.168.1.105'),(62,1,'2013-12-17 20:57:44','Login','355031040749448','192.168.1.105'),(63,1,'2013-12-17 21:07:29','Login','355031040749448','192.168.1.105'),(64,1,'2013-12-17 21:12:49','Login','355031040749448','192.168.1.105'),(65,1,'2013-12-17 21:20:51','Login','355031040749448','192.168.1.105'),(66,1,'2013-12-17 21:24:17','Login','355031040749448','192.168.1.105'),(67,1,'2013-12-17 21:29:34','Login','355031040749448','192.168.1.105'),(68,1,'2013-12-17 21:32:33','Login','355031040749448','192.168.1.105'),(69,1,'2013-12-17 21:37:21','Login','355031040749448','192.168.1.105'),(70,1,'2013-12-17 21:41:46','Login','355031040749448','192.168.1.105');
/*!40000 ALTER TABLE `tabuserloginoutinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `viewconfiginfo`
--

DROP TABLE IF EXISTS `viewconfiginfo`;
/*!50001 DROP VIEW IF EXISTS `viewconfiginfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewconfiginfo` (
  `DeviceID` tinyint NOT NULL,
  `UnitID` tinyint NOT NULL,
  `UnitName` tinyint NOT NULL,
  `ParkID` tinyint NOT NULL,
  `ParkName` tinyint NOT NULL,
  `ReceiverID` tinyint NOT NULL,
  `ReceiverName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewfeeinfo`
--

DROP TABLE IF EXISTS `viewfeeinfo`;
/*!50001 DROP VIEW IF EXISTS `viewfeeinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewfeeinfo` (
  `RecordID` tinyint NOT NULL,
  `Prepayment` tinyint NOT NULL,
  `Payment` tinyint NOT NULL,
  `PrepaymentOperator` tinyint NOT NULL,
  `PrepaymentTime` tinyint NOT NULL,
  `PaymentTime` tinyint NOT NULL,
  `PaymentOperator` tinyint NOT NULL,
  `PrepaymentUserID` tinyint NOT NULL,
  `PaymentUserID` tinyint NOT NULL,
  `LocationID` tinyint NOT NULL,
  `UnitName` tinyint NOT NULL,
  `UnitID` tinyint NOT NULL,
  `AdministrativeName` tinyint NOT NULL,
  `AdministrativeType` tinyint NOT NULL,
  `AdministrativeID` tinyint NOT NULL,
  `ParkName` tinyint NOT NULL,
  `ParkID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewinoutrecord`
--

DROP TABLE IF EXISTS `viewinoutrecord`;
/*!50001 DROP VIEW IF EXISTS `viewinoutrecord`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewinoutrecord` (
  `RecordID` tinyint NOT NULL,
  `LocationID` tinyint NOT NULL,
  `EnterTime` tinyint NOT NULL,
  `LeaveTime` tinyint NOT NULL,
  `EnterPlate` tinyint NOT NULL,
  `LeavePlate` tinyint NOT NULL,
  `EnterImage` tinyint NOT NULL,
  `LeaveImage` tinyint NOT NULL,
  `Prepayment` tinyint NOT NULL,
  `Payment` tinyint NOT NULL,
  `PrepaymentOperator` tinyint NOT NULL,
  `PrepaymentTime` tinyint NOT NULL,
  `PaymentOperator` tinyint NOT NULL,
  `PaymentTime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewwholefeerecordquery`
--

DROP TABLE IF EXISTS `viewwholefeerecordquery`;
/*!50001 DROP VIEW IF EXISTS `viewwholefeerecordquery`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewwholefeerecordquery` (
  `RecordID` tinyint NOT NULL,
  `Prepayment` tinyint NOT NULL,
  `Payment` tinyint NOT NULL,
  `PrepaymentOperator` tinyint NOT NULL,
  `PrepaymentTime` tinyint NOT NULL,
  `PaymentTime` tinyint NOT NULL,
  `PaymentOperator` tinyint NOT NULL,
  `PrepaymentUserID` tinyint NOT NULL,
  `PaymentUserID` tinyint NOT NULL,
  `LocationID` tinyint NOT NULL,
  `UnitName` tinyint NOT NULL,
  `UnitID` tinyint NOT NULL,
  `AdministrativeName` tinyint NOT NULL,
  `AdministrativeType` tinyint NOT NULL,
  `AdministrativeID` tinyint NOT NULL,
  `ParkName` tinyint NOT NULL,
  `ParkID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewwholeinoutrecordquery`
--

DROP TABLE IF EXISTS `viewwholeinoutrecordquery`;
/*!50001 DROP VIEW IF EXISTS `viewwholeinoutrecordquery`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewwholeinoutrecordquery` (
  `RecordID` tinyint NOT NULL,
  `LocationID` tinyint NOT NULL,
  `EnterTime` tinyint NOT NULL,
  `LeaveTime` tinyint NOT NULL,
  `EnterPlate` tinyint NOT NULL,
  `LeavePlate` tinyint NOT NULL,
  `EnterImage` tinyint NOT NULL,
  `LeaveImage` tinyint NOT NULL,
  `Prepayment` tinyint NOT NULL,
  `Payment` tinyint NOT NULL,
  `PrepaymentOperator` tinyint NOT NULL,
  `PrepaymentTime` tinyint NOT NULL,
  `PaymentOperator` tinyint NOT NULL,
  `PaymentTime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewwholelogrecordquery`
--

DROP TABLE IF EXISTS `viewwholelogrecordquery`;
/*!50001 DROP VIEW IF EXISTS `viewwholelogrecordquery`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewwholelogrecordquery` (
  `LogID` tinyint NOT NULL,
  `LogInfo` tinyint NOT NULL,
  `LogDateTime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `viewwholeuserloginoutrecordquery`
--

DROP TABLE IF EXISTS `viewwholeuserloginoutrecordquery`;
/*!50001 DROP VIEW IF EXISTS `viewwholeuserloginoutrecordquery`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewwholeuserloginoutrecordquery` (
  `LogID` tinyint NOT NULL,
  `LogUserID` tinyint NOT NULL,
  `LogTime` tinyint NOT NULL,
  `LogType` tinyint NOT NULL,
  `LogClientID` tinyint NOT NULL,
  `LogIP` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `parkadmin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `parkadmin` /*!40100 DEFAULT CHARACTER SET gb2312 */;

USE `parkadmin`;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plate` varchar(45) DEFAULT NULL,
  `kind` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='é»‘åå•';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardright`
--

DROP TABLE IF EXISTS `cardright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardright` (
  `cardsetind` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cardno` varchar(50) NOT NULL DEFAULT '0',
  `roadconind` int(10) unsigned NOT NULL,
  `starttime` time NOT NULL DEFAULT '00:00:00',
  `endtime` time NOT NULL DEFAULT '23:59:59',
  `shebeiname` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  PRIMARY KEY (`cardsetind`),
  KEY `roadconind` (`roadconind`),
  KEY `cardno_starttime_endtime` (`cardno`,`starttime`,`endtime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardright`
--

LOCK TABLES `cardright` WRITE;
/*!40000 ALTER TABLE `cardright` DISABLE KEYS */;
INSERT INTO `cardright` VALUES (13,'0',134,'00:00:00','23:59:59','10-1'),(14,'0',135,'00:00:00','23:59:59','10-2'),(15,'0',138,'00:00:00','23:59:59','10-3'),(16,'0',172,'00:00:00','23:59:59','53-1'),(17,'0',173,'00:00:00','23:59:59','53-2'),(18,'0',174,'00:00:00','23:59:59','53-33'),(19,'0',178,'00:00:00','23:59:59','156-1'),(20,'0',179,'00:00:00','23:59:59','156-2'),(21,'0',180,'00:00:00','23:59:59','24-1'),(22,'0',181,'00:00:00','23:59:59','24-2'),(23,'0',182,'00:00:00','23:59:59','24-33'),(24,'0',183,'00:00:00','23:59:59','24-1');
/*!40000 ALTER TABLE `cardright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardstoprdid`
--

DROP TABLE IF EXISTS `cardstoprdid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardstoprdid` (
  `cardno` varchar(50) NOT NULL,
  `stoprdid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cardno`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardstoprdid`
--

LOCK TABLES `cardstoprdid` WRITE;
/*!40000 ALTER TABLE `cardstoprdid` DISABLE KEYS */;
INSERT INTO `cardstoprdid` VALUES ('0',26);
/*!40000 ALTER TABLE `cardstoprdid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carinfo`
--

DROP TABLE IF EXISTS `carinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carinfo` (
  `carid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carcp` varchar(50) NOT NULL DEFAULT 'æœªçŸ¥',
  `carmodel` varchar(50) NOT NULL DEFAULT 'å°åž‹è½¦',
  `carpic` longblob,
  `cardindex` varchar(50) NOT NULL DEFAULT '0',
  `carhaoma` varchar(50) NOT NULL DEFAULT 'æœªçŸ¥',
  PRIMARY KEY (`carid`),
  KEY `cardindex` (`cardindex`),
  KEY `carcp` (`carcp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carinfo`
--

LOCK TABLES `carinfo` WRITE;
/*!40000 ALTER TABLE `carinfo` DISABLE KEYS */;
INSERT INTO `carinfo` VALUES (1,'æœªçŸ¥','å°åž‹è½¦',NULL,'0','æœªçŸ¥');
/*!40000 ALTER TABLE `carinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feerate`
--

DROP TABLE IF EXISTS `feerate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feerate` (
  `RParkid` int(10) DEFAULT NULL,
  `RFeeModel` int(10) DEFAULT NULL,
  `RTimeIndex` int(10) DEFAULT NULL,
  `RSmTime` int(10) DEFAULT NULL,
  `RBmTime` int(10) DEFAULT NULL,
  `RMoney` int(10) DEFAULT NULL,
  `RMoneyDw` int(10) DEFAULT NULL,
  `RIncTime` tinyint(1) NOT NULL DEFAULT '0',
  `RIndex` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`RIndex`),
  KEY `RParkid` (`RParkid`)
) ENGINE=InnoDB AUTO_INCREMENT=1594 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feerate`
--

LOCK TABLES `feerate` WRITE;
/*!40000 ALTER TABLE `feerate` DISABLE KEYS */;
INSERT INTO `feerate` VALUES (27,0,0,0,0,7,0,0,1522),(27,0,1,1,2,0,0,0,1523),(27,0,2,0,0,0,0,0,1524),(27,0,3,0,0,0,0,0,1525),(27,0,4,0,0,0,0,0,1526),(27,0,5,0,0,0,0,0,1527),(27,0,6,0,0,0,0,0,1528),(27,0,7,0,0,0,0,0,1529),(27,0,8,0,0,0,0,0,1530),(27,1,0,0,0,7,0,0,1531),(27,1,1,1,2,0,0,0,1532),(27,1,2,0,0,0,0,0,1533),(27,1,3,0,0,0,0,0,1534),(27,1,4,0,0,0,0,0,1535),(27,1,5,0,0,0,0,0,1536),(27,1,6,0,0,0,0,0,1537),(27,1,7,0,0,0,0,0,1538),(27,1,8,0,0,0,0,0,1539),(27,2,0,0,0,2,0,1,1540),(27,2,1,1,2,6,0,0,1541),(27,2,2,3,5,1,2,0,1542),(27,2,3,6,1000,2,3,0,1543),(27,2,4,0,0,0,0,0,1544),(27,2,5,0,0,0,0,0,1545),(27,2,6,0,0,0,0,0,1546),(27,2,7,0,0,0,0,0,1547),(27,2,8,0,0,0,0,0,1548),(27,3,0,0,0,7,0,0,1549),(27,3,1,1,2,0,0,0,1550),(27,3,2,0,0,0,0,0,1551),(27,3,3,0,0,0,0,0,1552),(27,3,4,0,0,0,0,0,1553),(27,3,5,0,0,0,0,0,1554),(27,3,6,0,0,0,0,0,1555),(27,3,7,0,0,0,0,0,1556),(27,3,8,0,0,0,0,0,1557),(27,4,0,0,0,7,0,0,1558),(27,4,1,1,2,0,0,0,1559),(27,4,2,0,0,0,0,0,1560),(27,4,3,0,0,0,0,0,1561),(27,4,4,0,0,0,0,0,1562),(27,4,5,0,0,0,0,0,1563),(27,4,6,0,0,0,0,0,1564),(27,4,7,0,0,0,0,0,1565),(27,4,8,0,0,0,0,0,1566),(27,5,0,0,0,7,0,0,1567),(27,5,1,1,2,0,0,0,1568),(27,5,2,0,0,0,0,0,1569),(27,5,3,0,0,0,0,0,1570),(27,5,4,0,0,0,0,0,1571),(27,5,5,0,0,0,0,0,1572),(27,5,6,0,0,0,0,0,1573),(27,5,7,0,0,0,0,0,1574),(27,5,8,0,0,0,0,0,1575),(27,6,0,0,0,7,0,0,1576),(27,6,1,1,2,0,0,0,1577),(27,6,2,0,0,0,0,0,1578),(27,6,3,0,0,0,0,0,1579),(27,6,4,0,0,0,0,0,1580),(27,6,5,0,0,0,0,0,1581),(27,6,6,0,0,0,0,0,1582),(27,6,7,0,0,0,0,0,1583),(27,6,8,0,0,0,0,0,1584),(27,7,0,0,0,7,0,0,1585),(27,7,1,1,2,0,0,0,1586),(27,7,2,0,0,0,0,0,1587),(27,7,3,0,0,0,0,0,1588),(27,7,4,0,0,0,0,0,1589),(27,7,5,0,0,0,0,0,1590),(27,7,6,0,0,0,0,0,1591),(27,7,7,0,0,0,0,0,1592),(27,7,8,0,0,0,0,0,1593);
/*!40000 ALTER TABLE `feerate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feerate1`
--

DROP TABLE IF EXISTS `feerate1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feerate1` (
  `rparkid` int(11) DEFAULT '0' COMMENT 'ÃÂ£',
  `rfeemodel` int(11) DEFAULT '0',
  `gz1t` int(11) DEFAULT '0',
  `gz1f` int(11) DEFAULT '0',
  `gz2t` int(11) DEFAULT '0',
  `gz2f` int(11) DEFAULT '0',
  `gz3t` int(11) DEFAULT '0',
  `gz3f` int(11) DEFAULT '0',
  `gz4t` int(11) DEFAULT '0',
  `gz4f` int(11) DEFAULT '0',
  `gz5t` int(11) DEFAULT '0',
  `gz5f` int(11) DEFAULT '0',
  `gz6t` int(11) DEFAULT '0',
  `gz6f` int(11) DEFAULT '0',
  `gz7t` int(11) DEFAULT '0',
  `gz7f` int(11) DEFAULT '0',
  `gz8t` int(11) DEFAULT '0',
  `gz8f` int(11) DEFAULT '0',
  `gz9t` int(11) DEFAULT '0',
  `gz9f` int(11) DEFAULT '0',
  `gz10t` int(11) DEFAULT '0',
  `gz10f` int(11) DEFAULT '0',
  `gz11t` int(11) DEFAULT '0',
  `gz11f` int(11) DEFAULT '0',
  `gz12t` int(11) DEFAULT '0',
  `gz12f` int(11) DEFAULT '0',
  `xhdw` int(11) DEFAULT '0',
  `xhfh` int(11) DEFAULT '0',
  `kxiant` int(11) DEFAULT '0',
  `freet` int(11) DEFAULT '0' COMMENT 'Â¿Ã­ÃÃžÃŠÂ±Â¼Ã¤',
  `fdtimestar` time DEFAULT '00:00:00',
  `fdtimeend` time DEFAULT '23:59:59',
  `dldwt` int(11) DEFAULT '0',
  `dldwf` int(11) DEFAULT '0',
  `dlxianfee` int(11) DEFAULT '0',
  `dwdwt` int(11) DEFAULT '0',
  `dwdwf` int(11) DEFAULT '0',
  `dwxianfee` int(11) DEFAULT '0',
  `firstjstime` int(11) DEFAULT '0',
  `Section` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feerate1`
--

LOCK TABLES `feerate1` WRITE;
/*!40000 ALTER TABLE `feerate1` DISABLE KEYS */;
INSERT INTO `feerate1` VALUES (5,0,13,14,15,16,17,18,19,20,21,22,23,24,0,0,0,0,0,0,0,0,0,0,0,0,27,28,11,12,'00:00:00','23:59:59',25,26,0,0,0,0,29,0),(5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(5,2,240,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1440,140,0,0,'00:00:00','23:59:59',120,10,0,0,0,0,0,0),(5,3,60,40,120,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,5,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(5,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(6,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(7,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(21,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(22,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,0,720,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1440,300,0,1,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,2,720,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1440,200,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0),(27,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'00:00:00','23:59:59',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `feerate1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeratebackup`
--

DROP TABLE IF EXISTS `feeratebackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeratebackup` (
  `RParkid` int(10) DEFAULT NULL,
  `RFeeModel` int(10) DEFAULT NULL,
  `RTimeIndex` int(10) DEFAULT NULL,
  `RSmTime` int(10) DEFAULT NULL,
  `RBmTime` int(10) DEFAULT NULL,
  `RMoney` int(10) DEFAULT NULL,
  `RMoneyDw` int(10) DEFAULT NULL,
  `RIncTime` tinyint(1) NOT NULL DEFAULT '0',
  KEY `RParkid` (`RParkid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeratebackup`
--

LOCK TABLES `feeratebackup` WRITE;
/*!40000 ALTER TABLE `feeratebackup` DISABLE KEYS */;
INSERT INTO `feeratebackup` VALUES (29,0,0,0,0,7,0,0),(29,0,1,1,2,0,0,0),(29,0,2,0,0,0,0,0),(29,0,3,0,0,0,0,0),(29,0,4,0,0,0,0,0),(29,0,5,0,0,0,0,0),(29,0,6,0,0,0,0,0),(29,0,7,0,0,0,0,0),(29,0,8,0,0,0,0,0),(29,1,0,0,0,7,0,0),(29,1,1,1,2,0,0,0),(29,1,2,0,0,0,0,0),(29,1,3,0,0,0,0,0),(29,1,4,0,0,0,0,0),(29,1,5,0,0,0,0,0),(29,1,6,0,0,0,0,0),(29,1,7,0,0,0,0,0),(29,1,8,0,0,0,0,0),(29,2,0,0,0,2,0,1),(29,2,1,1,2,6,0,0),(29,2,2,3,5,1,2,0),(29,2,3,6,1000,2,3,0),(29,2,4,0,0,0,0,0),(29,2,5,0,0,0,0,0),(29,2,6,0,0,0,0,0),(29,2,7,0,0,0,0,0),(29,2,8,0,0,0,0,0),(29,3,0,0,0,7,0,0),(29,3,1,1,2,0,0,0),(29,3,2,0,0,0,0,0),(29,3,3,0,0,0,0,0),(29,3,4,0,0,0,0,0),(29,3,5,0,0,0,0,0),(29,3,6,0,0,0,0,0),(29,3,7,0,0,0,0,0),(29,3,8,0,0,0,0,0),(29,4,0,0,0,7,0,0),(29,4,1,1,2,0,0,0),(29,4,2,0,0,0,0,0),(29,4,3,0,0,0,0,0),(29,4,4,0,0,0,0,0),(29,4,5,0,0,0,0,0),(29,4,6,0,0,0,0,0),(29,4,7,0,0,0,0,0),(29,4,8,0,0,0,0,0),(29,5,0,0,0,7,0,0),(29,5,1,1,2,0,0,0),(29,5,2,0,0,0,0,0),(29,5,3,0,0,0,0,0),(29,5,4,0,0,0,0,0),(29,5,5,0,0,0,0,0),(29,5,6,0,0,0,0,0),(29,5,7,0,0,0,0,0),(29,5,8,0,0,0,0,0),(29,6,0,0,0,7,0,0),(29,6,1,1,2,0,0,0),(29,6,2,0,0,0,0,0),(29,6,3,0,0,0,0,0),(29,6,4,0,0,0,0,0),(29,6,5,0,0,0,0,0),(29,6,6,0,0,0,0,0),(29,6,7,0,0,0,0,0),(29,6,8,0,0,0,0,0),(29,7,0,0,0,7,0,0),(29,7,1,1,2,0,0,0),(29,7,2,0,0,0,0,0),(29,7,3,0,0,0,0,0),(29,7,4,0,0,0,0,0),(29,7,5,0,0,0,0,0),(29,7,6,0,0,0,0,0),(29,7,7,0,0,0,0,0),(29,7,8,0,0,0,0,0);
/*!40000 ALTER TABLE `feeratebackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feerd`
--

DROP TABLE IF EXISTS `feerd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feerd` (
  `feeindex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feenumb` int(10) unsigned NOT NULL,
  `feetime` datetime NOT NULL,
  `feekind` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `feeoperator` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `cardno` varchar(50) NOT NULL DEFAULT 'æœªçŸ¥',
  `timelen` int(10) unsigned DEFAULT NULL,
  `Transfered` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`feeindex`),
  KEY `feetime` (`feetime`),
  KEY `cardno` (`cardno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feerd`
--

LOCK TABLES `feerd` WRITE;
/*!40000 ALTER TABLE `feerd` DISABLE KEYS */;
INSERT INTO `feerd` VALUES (1,100,'2014-02-08 13:15:01','æœˆç§Ÿå¡ç»­è´¹','ç³»ç»Ÿç®¡ç†å‘˜','0',31,0);
/*!40000 ALTER TABLE `feerd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garageingarage`
--

DROP TABLE IF EXISTS `garageingarage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garageingarage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CardID` varchar(45) DEFAULT NULL,
  `PlateID` varchar(45) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `InOutFlag` tinyint(1) DEFAULT NULL,
  `ChannelName` varchar(45) DEFAULT NULL,
  `Level` int(8) DEFAULT NULL,
  `Image` longblob,
  `Cardkind` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garageingarage`
--

LOCK TABLES `garageingarage` WRITE;
/*!40000 ALTER TABLE `garageingarage` DISABLE KEYS */;
/*!40000 ALTER TABLE `garageingarage` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`%`*/ /*!50003 TRIGGER `parkadmin`.`garageingarage_AINS`
AFTER INSERT ON `parkadmin`.`garageingarage`
FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one

begin
	if ( 'è‡ªç”±å¡' <> new.cardkind ) then
		replace garagestoprdid( cardno, stoprdid ) value( new.cardid, new.id );
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `garagestoprdid`
--

DROP TABLE IF EXISTS `garagestoprdid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garagestoprdid` (
  `CardNo` varchar(45) NOT NULL,
  `stoprdid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garagestoprdid`
--

LOCK TABLES `garagestoprdid` WRITE;
/*!40000 ALTER TABLE `garagestoprdid` DISABLE KEYS */;
/*!40000 ALTER TABLE `garagestoprdid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license` (
  `AdministrativeID` varchar(50) NOT NULL COMMENT '(åŒºå·) + åœè½¦åœºç¼–å·\n\n510107 + 0001\n\n510107 + 9999',
  `KeyContent` blob,
  PRIMARY KEY (`AdministrativeID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES ('5101040001','UE1TWuY2dBvFzgp4xxrpwF5ja0kLFWiDCSqgaclMhGNTDDdIJ7Zra/tWvdA7Xmc64R/hqiDyvbx38F0Lippnbi23K73fmEhXgy8e+uqkiraG8LrHsxqolXFLEqOQNnNWFdxiXy7PKRsRsfnu54VDCkGC2BO9b/e7LQquOLu7s16sXfTBPl8K20WOar1+I8PslKPb2uyc1iDw2C1/uE7HDofM5AtuijH9Whun3fESXhHjEKx/8AWzVzuhANsSrXHMtO0eIx8/74DQgHkzVZmPJZJoBARHHMCJrxPx9rG6nynHXbImKG2TzbneF+4tczFPhFbKLigAin2EPPjy5gyxuO/Yfu4LtNswtRffJU/4m7IVX0WMOtnUASVoED3JB9aLTBf6eazXLoa2rgdohnV61837mKX3ovuqJPlagHwFtdiYjs5IaVXP5qWe335/3nGvu1S/7QEYKf3IjY74TGQ6nRRnyZ1wEO/h+REtL6eWBp6NESM8R34MF3j/Uqxt1T/kfWQcJMP464NbHTDKmnBUiwYkcloU6cRs1KdUm/ASAU29qsVCG1c7SkO/ySbJi6n6lgGFF9tgRBGyNg5PD3xdV36GGcILRDRdZBOWeSx01cYngiBJzV2w1Ek3cqLt193ZwH9ACEa+OsIM/l4i5tTx1BpE1gvcXMsAIL0AXMLLuZdqJmjcoqP/cRlaRu2olQ4NUaO2HlGaNu35Tx2t6ldIgZar+wSxTYEGnpYUGOrL2gCraJLEwq55k115hRK0Q6xfRONDTJuINWiXzr8HaY6YBleoYwhBtbXWj4jwxnav66kJVqYK/b7jICTIJM8a037uPIe+SqmucHq1gDVpBCfjGOHZVdsizrkZMme6nWv9+U1A8X5zlTIx0jsRTsBkNbbPF1MNrxPqJcGcfxo5fDiy5EMOA+zLDwqgIXQCqqKsqzShuyTVuQl2sCCDBONkkVhjY5+cLmLz1HKuLb/Xc+VTwTI5IS4xPqyrMgu+pbrBpPdH1krwcKryN1/yg/fCPYKjso6PZ4rPUzLHWbhS80UR8c8uJgGI+ZVog8jlxg=='),('5101070001','UE1TWuY2dBvFzgp4xxrpwF5ja0kLFWiDCSqganFX6WA9UsOD+fIv2RKQzcXpNcxJXK6Zhy6bkRiApYklIy1YaqDxqZdxltQKj1yFrSikJLOFZUrIUVuCGAHtGcEXP19Pcr4IRfPxUn/yvJP+sK9SYnLRvgbv2yP3vI4Adpnw0C53ZPR4Xru+8jvPsUh5ypAFitGwNM98Z4LQ/GQdl7thPnH7t8pIeUlxEXl8yv0TMEN85H2TyZnp3p6h2Ol3V5OltGGpICd/Sy7oCc2m1lu69Qf7WbUM0sFO1QwaqeS2LtjJcZi0NH1y51f5YMFuhDyouMhEhlk0eXGbJSMD+B18lPpuOhYFkWpzETd+MmyBw5bSUhJwOEddpKVH8wOymCiHdukrZdwdr27roQp+BM2Vbu3fQ27aHCotac/tpPKMPW0n74mP4PpuV/UeD6kF3VzLPe1TY5bF7iS9Zgej3WCkJSiDuUenLur5Vh7gt+aj3IgYS7At9xoM8uodfmZ/7YWMZy18P6ccUFAmgRHDpLHcIJVakl8aQ0/dRS5cQ+rIAAGtWGiivQmMPbj9IxqZ0N5OT+MWDPRYOBw19saeRcqnt0Iuki5AnWAZNIW5PQWfnxdC4HMpe8KWFJG5EebZ94CyEfZjXsE8D3gmssLuugN0n0aFyeiT8v1MMIkzcHC8hGmBQnkU5vIxegqCoIZGr6DRZm568QYiCw3YvMtaWL7QeYZGep4='),('5101070002','UE1TWuY2dBvFzgp4xxrpwF5ja0kLFWiDCSqganFX6WM9UsODnWPjuu3TDuRB56I0bm8RsdWbYrF95MbpuYop1y2jM7KrOlSM24rumT+vIMC/qbOaQg1LfD7E2AFsQLz74sXzjbkmLrwYchvvhfo25d3866UBB1WAgCQq0XQsM4KDH5E8K6LUb4e3U1uY4jOeLDLMrsgL1VznUR5TisfVgyA+Wk8/pmBSq7amnwT+O3yzo/4vnpDjEfigu82KvRB/cJIqbxmUPHhEY3fpi3+gbaeg6v6N6YlGqmbsh01oap8eG3GEAzUJer6MKtNT3Evbd+wBz5exVaoOSHQFtv0xehDxmT7ITpvzlEZtxt9IWbC6WKw8AHDHPBcYhzY7zSN75pyEozsDdOFhh7g4cWepWnnX2ux/a+ziZnMQkt0SW2NPSSzgAJu6OwZVCUGpk+aP+4g3EkZSRqziE0W/LU2VyoKhgVlbCqITz+HpWG4GVdONkvo580gxkI9g+AgSyHgW1sIlwct5W0Twiu9Fgmlp3S34B9o6KpLCRvjFZMerYDRuG/vhOo7kjoqpsKB89qdNV/oIw1SBb02cZYXnMVbAUbYiezMcJXGRMHTSAQYKhjUXRWZmy5JZnmPm0qgLdJfq1tsXgH9cqgc+3t3p2xm6bvciRVmwq28h4s1fWtA3tWlqJXImZsnFe/kkGRpOtcuod4A+HjMjb1HnvH0c/DmAqHClNAOROSzaDrN8YmFko1hjhvcM5yEFEqPJO1RunFInRZQ3xwnLDYYGH5IImrIhQ8EtXZEk76w4OJc+a4ChCkF1GHitiuUMnjD3XWqYeC+AGiR+v8VCkLFMsxyL6WB/sbGQ57MUdCUmyieLD3ZJ8HbaC7U310SjcLvfEGfryVRSRN6prTcv4ooR9cR5qXskKYtdcnUZNhaPKPrcFnQZ+efB2Epkl3d8YxHSbeQ8rUW6F8HhjRUJEtXvOXJ4QCZsh2GWePOBWgIjFbd6uxSeWSmLvd6tSQ7v2lmdXdpD1WsIbhqU4yx7dX9KUxEtBdVT0iEfCaOPul8SHrYUTg=='),('5101810001','UE1TWuY2dBvFzgp4xxrpwF5ja0kLFWiDCSqobNmewWExJhRBAYmkKdOsr2MffMjg7FMYr4K/0/f42D+VG+PAN4w4pfvQyWCjFlzo0znrlhyxAi4Lzn552eqQDVaoVVAvD/hn/W7GFCYFAYpiEYKsEGStUSfzGAqdskUM8ks+N9rj/WgjuZJA4w5lBSvi3TnC5nqLtEWk9+wURFTAmnOHSyOZtVhEonO1UPUtqDXQWykETCmXVyuz9B1fFEIegDm2baYCoY1MrPMVJrwd2lcMiBe0wMPFOCyrB3wICiF6f7b8aY7V3FPVYsultGGB5vN8WclUW4+czx7FZLPEBUK9d1VkLaNrZeZWWBnRdhQr5VQLYnpBED20a8eiA3+AmfOT44TnP7BGTjoZx7ehtSZwDk3/3dYEF7I+sp/B3PVTE//kdxxB0Fwv7rdsr0fLElkIPdcjodWba+HafqqdDkdWWoyntYUqn2LS0INpWxhaXA2/wdL9yjHiv71ys9zlmVy0E/p6AzTmLsXAL7ZEYu1zJZRmF4Ev8h+uHlot5qVVR+PuDWVMG4WMok4TDMTffb/rHOW4b7wNbWgiP8sqyhz2Ii9vUI7RX8vTu7vQ6kbpnlNcD1ozuuoiqSda0uIp9nSZrowzVJ7n7K35IoR5ZaF425OyF5M15oGa95TudeAlz7pGeZO2Tjkf/v3TwziLKhAdThCUGzpDL47Hy7Z5DUqfAHqpGroB41kLbJbo6XUg0E22ZmqDxRTQTrocsQ9ZNvpUBSPAZ3rGzSjgN9TypRRml9d9yFe9PrBLaPt6owG+DJq6jI9Mg31mtle3dlZh+p0uAlKEsAUGZ9wpK4+T54u2o80fJtmjapu2i1Z1dN9BzaY4/X5I/OZnn1dg7z2rGh7aI7V6+FPDki2Fl12ASAKY5KU1yl1qMRGkaPdu5lTCgieoty+50BltCOLf132bhpweBYi+G8yh3qg3JmDy/AtmSmwkCZSnlZBOf3VpExjTKkInORik1JCEI7lQzZ4mSsS0p1Zv2yF4p8gd52gHwSimHOOhpu6JCrRytP6iOiGrnlheO8o1KNkfAlGwykxbCC2daCAQQV6W540KMWJUJzcYhuN6bClfueeJpPvMr8u8Q3j5so+MBB5ZNHo1pzxZdci4xgB02sJ4dkK719cNNuCfMA2eTXyoK00Ekdb5GFcZKMK4S6xHz7a+hwQRpDThInYmZf2/SlGFke2YlJ8U+rtTaf0Ilq91GDzH51rJ0NYwUbbi9fNN3hh+gLQjidx8ehOiHYGOPw=='),('5115020001','UE1TWuY2dBvFzgp4xxrpwF5ja0kLFWiDCC6gb6MIT+KQXiCkEnJiGhVzk4fmqww9kt5mbWE95UL2A+yH8RLwxiRNUTQnxAXiy5bHPJIOQC6+uJWJwTKOtdLBn1Mzu3mteNOtROm1LBi7kgoybAdFHDp/nepMzHQGAfJ0ZlBuQsogaXzV6X0D4OPeImo='),('5118020001','UE1TWuY2dBvFzgp4xxrpwF5ja0kLFWiDCCOgby4xQ4KLoXFcGxHCgwVZMQWBtzKS//tBGwUX3yyFa4d+Mp+nbOhhS2HGrTb61P5OMKYqViaaV48KkWofN5cWaHl1BpheWVRvFnJeO/hExvZG9ZtTrBPW9grHaPxdZPAzJl3h019/bqnRPLRfauA1Zhh/isoI4/10BixV+gj04Gr7VLwzIZPL4lAgQ/CcGIiyDijMQXeEBmm5yG9A2GYXaAd8+5wbEBqBt2a83ymw9d/MapNLngB4N6JK5CDsWo0/zg==');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthcard`
--

DROP TABLE IF EXISTS `monthcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthcard` (
  `cardno` varchar(50) NOT NULL DEFAULT '0',
  `starttime` datetime NOT NULL DEFAULT '2006-06-01 12:00:00',
  `endtime` datetime NOT NULL DEFAULT '2006-06-01 12:00:00',
  `cardstate` varchar(30) NOT NULL DEFAULT 'å¯ç”¨',
  `cardkind` varchar(30) DEFAULT 'EMIDå¡',
  `cardselfno` varchar(50) DEFAULT 'æœªçŸ¥',
  `cardcomment` varchar(100) DEFAULT 'æœªçŸ¥',
  `cardcreator` varchar(30) DEFAULT 'æœªçŸ¥',
  `Inside` int(10) DEFAULT '0',
  `EnterMustCard` int(10) DEFAULT '0',
  `LeaveMustCard` int(10) DEFAULT '0',
  `MIMO` int(10) DEFAULT '0',
  PRIMARY KEY (`cardno`),
  KEY `cardno_starttime_endtime` (`cardno`,`starttime`,`endtime`),
  KEY `cardselfno` (`cardselfno`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthcard`
--

LOCK TABLES `monthcard` WRITE;
/*!40000 ALTER TABLE `monthcard` DISABLE KEYS */;
INSERT INTO `monthcard` VALUES ('0','2014-02-08 13:14:21','2014-04-08 13:14:21','å¯ç”¨','EMIDå¡','','æœªçŸ¥','ç³»ç»Ÿç®¡ç†å‘˜',0,0,0,1);
/*!40000 ALTER TABLE `monthcard` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`monthcard_ai`
AFTER INSERT ON `parkadmin`.`monthcard`
FOR EACH ROW
BEGIN
DECLARE a,b INT;
DECLARE ai char(30);
DECLARE cur_1 CURSOR FOR SELECT shebeiid FROM roadconerinfo;
DECLARE cur_2 CURSOR FOR SELECT shebeiname FROM roadconerinfo;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET b = 1;
OPEN cur_1;
OPEN cur_2;
set b = 0;
while b<>1 do
FETCH cur_1 INTO a;
FETCH cur_2 INTO ai;
if b<>1 then
insert into cardright(cardno,roadconind,shebeiname) values(NEW.cardno,a,ai);
end if;
END while;
CLOSE cur_1;
CLOSE cur_2;
insert into userinfo(cardindex) values(NEW.cardno);
insert into carinfo(cardindex) values(NEW.cardno); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`monthcard_au`
AFTER UPDATE ON `parkadmin`.`monthcard`
FOR EACH ROW
BEGIN
if new.cardno<>old.cardno then
update userinfo set userinfo.cardindex=new.cardno where userinfo.cardindex=old.cardno;
update carinfo set carinfo.cardindex=new.cardno where carinfo.cardindex=old.cardno;
update cardright set cardright.cardno=new.cardno where cardright.cardno=old.cardno;
update feerd set feerd.cardno=new.cardno where feerd.cardno=old.cardno;
update stoprd set stoprd.cardno=new.cardno where stoprd.cardno=old.cardno;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`monthcard_ad`
AFTER DELETE ON `parkadmin`.`monthcard`
FOR EACH ROW
BEGIN
delete from userinfo where userinfo.cardindex=OLD.cardno;
delete from carinfo where carinfo.cardindex=OLD.cardno;
delete from cardright where cardright.cardno=OLD.cardno;
delete from stoprd where stoprd.cardno=OLD.cardno and stoprd.outtime is NULL; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator` (
  `operatorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operatorname` varchar(50) NOT NULL DEFAULT 'æœªçŸ¥',
  `operatorphone` varchar(50) DEFAULT NULL,
  `operatorsex` varchar(50) DEFAULT 'ç”·',
  `operatoraddress` varchar(50) DEFAULT NULL,
  `operatorpassword` varchar(50) DEFAULT '123',
  `qxgl` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'æƒé™ç®¡ç†',
  `cardgl` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'å¡ç¥¨ç®¡ç†',
  `exitgl` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'é€€å‡ºç³»ç»Ÿ',
  `datagl` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'æ•°æ®ç»´æŠ¤',
  `setgl` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'é«˜çº§è®¾ç½®',
  `sfgl` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'æŸ¥è¯¢æŠ¥è¡¨',
  `operatorright` varchar(50) NOT NULL DEFAULT 'æ™®é€šç”¨æˆ·',
  `sysinfo` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ç³»ç»Ÿæ—¥å¿—',
  `feerate` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'è´¹çŽ‡è®¾ç½®',
  `surecardno` varchar(50) DEFAULT NULL,
  `StartVideo` tinyint(1) NOT NULL DEFAULT '0',
  `StartPlate` tinyint(1) NOT NULL DEFAULT '0',
  `ConnectDB` tinyint(1) NOT NULL DEFAULT '0',
  `MonthCard` tinyint(1) NOT NULL DEFAULT '0',
  `ValueCard` tinyint(1) NOT NULL DEFAULT '0',
  `TimeCard` tinyint(1) NOT NULL DEFAULT '0',
  `LedInfo` tinyint(1) NOT NULL DEFAULT '0',
  `DeviceConfig` tinyint(1) NOT NULL DEFAULT '0',
  `SystemSet` tinyint(1) NOT NULL DEFAULT '0',
  `CardRightSet` tinyint(1) NOT NULL DEFAULT '0',
  `DiscountSet` tinyint(1) NOT NULL DEFAULT '0',
  `SerialPortSet` tinyint(1) NOT NULL DEFAULT '0',
  `PlateRecogSet` tinyint(1) NOT NULL DEFAULT '0',
  `PassRecord` tinyint(1) NOT NULL DEFAULT '0',
  `FeeRecord` tinyint(1) NOT NULL DEFAULT '0',
  `DiscountReport` tinyint(1) NOT NULL DEFAULT '0',
  `DailyReport` tinyint(1) NOT NULL DEFAULT '0',
  `MonthlyReport` tinyint(1) NOT NULL DEFAULT '0',
  `YearlyReport` tinyint(1) NOT NULL DEFAULT '0',
  `SyncTime` tinyint(1) NOT NULL DEFAULT '0',
  `Blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `EmployeeID` varchar(45) NOT NULL,
  PRIMARY KEY (`operatorid`),
  KEY `surecardno` (`surecardno`),
  KEY `operatorname` (`operatorname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator`
--

LOCK TABLES `operator` WRITE;
/*!40000 ALTER TABLE `operator` DISABLE KEYS */;
INSERT INTO `operator` VALUES (1,'ç³»ç»Ÿç®¡ç†å‘˜','','ç”·','','aaa',-1,0,-1,-1,0,0,'è¶…çº§ç”¨æˆ·',-1,-1,NULL,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,'18804'),(2,'åœè½¦åœºç®¡ç†å‘˜','','ç”·','','aaa',-1,0,-1,-1,0,0,'æ™®é€šç”¨æˆ·',-1,-1,NULL,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,'9400336'),(3,'ç»´æŠ¤äººå‘˜','','ç”·','','aaa',-1,0,-1,-1,0,0,'è¶…çº§ç”¨æˆ·',-1,-1,NULL,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,'17338');
/*!40000 ALTER TABLE `operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkadminset`
--

DROP TABLE IF EXISTS `parkadminset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parkadminset` (
  `feejsbz` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkadminset`
--

LOCK TABLES `parkadminset` WRITE;
/*!40000 ALTER TABLE `parkadminset` DISABLE KEYS */;
INSERT INTO `parkadminset` VALUES (1);
/*!40000 ALTER TABLE `parkadminset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkdongleinfo`
--

DROP TABLE IF EXISTS `parkdongleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parkdongleinfo` (
  `AdministrativeID` varchar(50) NOT NULL,
  `BriefName` varchar(256) NOT NULL,
  `DongleHID` varbinary(2048) DEFAULT NULL,
  PRIMARY KEY (`AdministrativeID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkdongleinfo`
--

LOCK TABLES `parkdongleinfo` WRITE;
/*!40000 ALTER TABLE `parkdongleinfo` DISABLE KEYS */;
INSERT INTO `parkdongleinfo` VALUES ('5101040001','å››å·çœè‚¿ç˜¤åŒ»é™¢',' J\\iWå{è¡\ZÕ±ƒî[˜z!]´ËY1A¢°{ã7ö/Jl•V}jéžtgÇÛZ\\’“¥}òlr†vúaÐ€²Y—*pŽo‰RW”ã¼nøëdú¹ð‘òè2ñþ>Æ“¹-«Ð’£+úp_ÂÀ×J$f¸W`Xš…gw@ØqNZˆœ?9Åœ^ßÐÐ1¯°ë`M”%¬u¶Uˆ$H'),('5101070001','å‰é€”é«˜ç§‘æµ‹è¯•','\Z5]wgiQ€y¿¾#e,<^‘êŠ‹¿¹–áñÅ²#4,Í°0ô,º'),('5101070002','æˆéƒ½æ­¦ä¾¯åŒºé•¿å¯¿è‹‘','/yþˆé+\nšî¯S…ô±>,Wƒ˜\nŽÖùŽ9¡5÷AÅSøfoµÒaT0AN\'õs”\'*µË¹Nè.v	ëãÿ35qáë*øÙº‡eqP›Š=ýM¾Gãm@ÏZˆ\04jMÍi»jâ”õYìXa¾ÄéGˆô7¯DÜÈÂ`aÊ¸Ö°\'&‹8&;õÀ™\nöc‡ëRe\rÑ•g\rÄY}S'),('5101810001','é’åŸŽå±±éƒ½æ±Ÿå °æ™¯åŒº','2ÎÊ„°]F^¤WtGÅÈv‘4_\r~dt÷åpÔ]e•8p.>\0\nÀ[8.XøXìÇ2±ã­Ú8:²äcŠ>N·~S)¬ƒÌ$ÏÚòÓª¼8,Ö$íc÷}f¥\Zf4ÆOÜ¼ìV ­ÜÙÿõ±¡ÉÃr)ýv‡DŽ¾¹B¦È«ÄM^Æ&©[Êlr!îý8 pßÂÌÃêlCábÜðÈYAÑ<Ë‡±.Å#.ÃÿkwUÒ—ØÁ×ìË'),('5115020001','äº”ç²®æ¶²é›†å›¢ç£…æˆ¿','/yþˆé+\nšî¯S…ô±¯89Ðˆ›\'·{y“ìBm²#4,Í°0ô,º'),('5118020001','é›…å®‰æ¸…æ±ŸèŠ±å›­','/yþˆé+\nšî¯S…ô±ìÎB\0vTç·x@†xG/');
/*!40000 ALTER TABLE `parkdongleinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkinfo`
--

DROP TABLE IF EXISTS `parkinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parkinfo` (
  `parkindex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shebeiid` int(10) unsigned NOT NULL,
  `parknum` int(10) unsigned DEFAULT '88',
  `parkname` varchar(30) NOT NULL DEFAULT 'æ–°å»ºåœè½¦åœº',
  `usedSpace` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`parkindex`),
  KEY `shebeiid` (`shebeiid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkinfo`
--

LOCK TABLES `parkinfo` WRITE;
/*!40000 ALTER TABLE `parkinfo` DISABLE KEYS */;
INSERT INTO `parkinfo` VALUES (27,131,888,'***åœè½¦åœº',1);
/*!40000 ALTER TABLE `parkinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`parkinfo_ai`
AFTER INSERT ON `parkadmin`.`parkinfo`
FOR EACH ROW
BEGIN
 
    update feeratebackup set RParkid=New.parkindex;
    insert into feerate(RParkid,RFeeModel,RTimeIndex,RSmTime,RBmTime,RMoney,RMoneyDw,RIncTime) select * from feeratebackup;
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,0);
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,1);
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,2);
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,3);
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,4);
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,5);
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,6);
    insert into feerate1(RParkid,RFeeModel) values(New.parkindex,7);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`parkinfo_au`
AFTER UPDATE ON `parkadmin`.`parkinfo`
FOR EACH ROW
BEGIN
if new.parkname<>old.parkname then 
update treeview set treeview.shebeiname=new.parkname where treeview.shebeiid=old.shebeiid;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`parkinfo_ad`
AFTER DELETE ON `parkadmin`.`parkinfo`
FOR EACH ROW
BEGIN
    delete from feerate where RParkid=Old.parkindex;
    delete from feerate1 where RParkid=Old.parkindex;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pmslog`
--

DROP TABLE IF EXISTS `pmslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmslog` (
  `MsgID` int(11) NOT NULL AUTO_INCREMENT,
  `MsgKind` varchar(45) DEFAULT NULL,
  `MsgText` varchar(10240) DEFAULT NULL,
  `MsgDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`MsgID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmslog`
--

LOCK TABLES `pmslog` WRITE;
/*!40000 ALTER TABLE `pmslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pmslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rawplatetable`
--

DROP TABLE IF EXISTS `rawplatetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rawplatetable` (
  `RawPlate` varchar(32) NOT NULL,
  PRIMARY KEY (`RawPlate`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rawplatetable`
--

LOCK TABLES `rawplatetable` WRITE;
/*!40000 ALTER TABLE `rawplatetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `rawplatetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roadconerinfo`
--

DROP TABLE IF EXISTS `roadconerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roadconerinfo` (
  `roadconerind` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shebeiid` int(10) unsigned NOT NULL DEFAULT '0',
  `shebeiadr` int(10) unsigned NOT NULL DEFAULT '0',
  `video1` int(11) NOT NULL DEFAULT '0',
  `video2` int(11) NOT NULL DEFAULT '0',
  `video3` int(11) NOT NULL DEFAULT '0',
  `video4` int(11) NOT NULL DEFAULT '0',
  `shebeiname` varchar(30) NOT NULL DEFAULT 'æ–°å»ºæŽ§åˆ¶å™¨',
  `video1ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `video2ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `video3ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `video4ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `ifdoor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roadconerind`),
  KEY `shebeiid` (`shebeiid`),
  KEY `shebeiadr` (`shebeiadr`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roadconerinfo`
--

LOCK TABLES `roadconerinfo` WRITE;
/*!40000 ALTER TABLE `roadconerinfo` DISABLE KEYS */;
INSERT INTO `roadconerinfo` VALUES (54,134,1,0,0,0,0,'10-1','192.168.1.10','192.168.1.101','127.0.0.1','127.0.0.1',0),(55,135,2,0,0,0,0,'10-2','192.168.1.10','192.168.1.102','127.0.0.1','127.0.0.1',0),(58,138,3,0,0,0,0,'10-3','192.168.1.10','192.168.1.10','127.0.0.1','127.0.0.1',0),(86,172,1,0,0,0,0,'53-1','192.168.1.53','192.168.1.64','127.0.0.1','127.0.0.1',0),(87,173,2,0,0,0,0,'53-2','192.168.1.53','192.168.1.65','127.0.0.1','127.0.0.1',0),(88,174,33,0,0,0,0,'53-33','192.168.1.53','192.168.1.111','127.0.0.1','127.0.0.1',0),(92,178,1,0,0,0,0,'156-1','192.168.1.156','192.168.1.64','127.0.0.1','127.0.0.1',0),(93,179,2,0,0,0,0,'156-2','192.168.1.156','192.168.1.65','127.0.0.1','127.0.0.1',0),(94,180,1,0,0,0,0,'24-1','192.168.1.206','192.168.1.70','127.0.0.1','127.0.0.1',0),(95,181,2,0,0,0,0,'24-2','192.168.1.206','192.168.2.73','127.0.0.1','127.0.0.1',0),(96,182,33,0,0,0,0,'24-33','192.168.1.24','192.168.1.111','127.0.0.1','127.0.0.1',0),(97,183,1,0,0,0,0,'24-1','192.168.1.206','192.168.2.70','127.0.0.1','127.0.0.1',0);
/*!40000 ALTER TABLE `roadconerinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`roadconerinfo_au`
AFTER UPDATE ON `parkadmin`.`roadconerinfo`
FOR EACH ROW
BEGIN
if new.shebeiname<>old.shebeiname then 
update cardright set  cardright.shebeiname=new.shebeiname where cardright.roadconind=old.shebeiid;
update treeview set treeview.shebeiname=new.shebeiname where treeview.shebeiid=old.shebeiid;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `savecard`
--

DROP TABLE IF EXISTS `savecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savecard` (
  `cardno` varchar(50) NOT NULL DEFAULT '0',
  `cardstate` varchar(30) NOT NULL DEFAULT 'å¯ç”¨',
  `cardkind` varchar(30) DEFAULT 'EMIDå¡',
  `cardselfno` varchar(50) DEFAULT NULL,
  `cardcomment` varchar(100) DEFAULT NULL,
  `cardcreator` varchar(30) DEFAULT NULL,
  `cardfeebz` varchar(30) NOT NULL DEFAULT 'çŽ°åœºé€‰æ‹©',
  `cardfee` int(10) unsigned DEFAULT '0',
  `Inside` int(11) NOT NULL DEFAULT '0',
  `EnterMustCard` int(11) DEFAULT '0',
  `LeaveMustCard` int(11) DEFAULT '0',
  PRIMARY KEY (`cardno`),
  KEY `cardselfno` (`cardselfno`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savecard`
--

LOCK TABLES `savecard` WRITE;
/*!40000 ALTER TABLE `savecard` DISABLE KEYS */;
/*!40000 ALTER TABLE `savecard` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`savecard_ai`
AFTER INSERT ON `parkadmin`.`savecard`
FOR EACH ROW
BEGIN
DECLARE a,b INT;
DECLARE ai char(30);
DECLARE cur_1 CURSOR FOR SELECT shebeiid FROM roadconerinfo;
DECLARE cur_2 CURSOR FOR SELECT shebeiname FROM roadconerinfo;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET b = 1;
OPEN cur_1;
OPEN cur_2;
set b = 0;
while b<>1 do
FETCH cur_1 INTO a;
FETCH cur_2 INTO ai;
if b<>1 then
insert into cardright(cardno,roadconind,shebeiname) values(NEW.cardno,a,ai);
end if;
END while;
CLOSE cur_1;
CLOSE cur_2;
insert into userinfo(cardindex) values(NEW.cardno);
insert into carinfo(cardindex) values(NEW.cardno); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`savecard_au`
AFTER UPDATE ON `parkadmin`.`savecard`
FOR EACH ROW
BEGIN
if new.cardno<>old.cardno then
update userinfo set userinfo.cardindex=new.cardno where userinfo.cardindex=old.cardno;
update carinfo set carinfo.cardindex=new.cardno where carinfo.cardindex=old.cardno;
update cardright set cardright.cardno=new.cardno where cardright.cardno=old.cardno;
update feerd set feerd.cardno=new.cardno where feerd.cardno=old.cardno;
update stoprd set stoprd.cardno=new.cardno where stoprd.cardno=old.cardno;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`savecard_ad`
AFTER DELETE ON `parkadmin`.`savecard`
FOR EACH ROW
BEGIN
delete from userinfo where userinfo.cardindex=OLD.cardno;
delete from carinfo where carinfo.cardindex=OLD.cardno;
delete from cardright where cardright.cardno=OLD.cardno;
delete from stoprd where stoprd.cardno=OLD.cardno and stoprd.outtime is NULL;  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stoprd`
--

DROP TABLE IF EXISTS `stoprd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stoprd` (
  `stoprdid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cardno` varchar(50) NOT NULL DEFAULT '0',
  `inshebeiname` varchar(30) DEFAULT NULL,
  `outshebeiname` varchar(30) DEFAULT NULL,
  `invideo1` longblob,
  `invideo2` longblob,
  `invideo3` longblob,
  `invideo4` longblob,
  `outvideo1` longblob,
  `outvideo2` longblob,
  `outvideo3` longblob,
  `outvideo4` longblob,
  `intime` datetime DEFAULT NULL,
  `outtime` datetime DEFAULT NULL,
  `childrdindx` int(10) unsigned DEFAULT NULL,
  `feebeizhu` varchar(30) DEFAULT NULL,
  `feenum` int(10) unsigned DEFAULT NULL,
  `feetime` datetime DEFAULT NULL,
  `feeoperator` varchar(30) DEFAULT NULL,
  `feefactnum` int(10) unsigned DEFAULT NULL,
  `carcp` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `username` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `cardselfno` varchar(50) DEFAULT NULL,
  `carkind` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `feekind` varchar(30) DEFAULT NULL,
  `cardkind` varchar(30) DEFAULT NULL,
  `parkid` int(11) NOT NULL DEFAULT '-1',
  `feezkh` int(10) unsigned DEFAULT NULL,
  `feezkyy` varchar(30) NOT NULL DEFAULT 'æ— ä¼˜æƒ ',
  `carcpout` varchar(30) DEFAULT 'æœªçŸ¥',
  `MayDelete` tinyint(1) NOT NULL DEFAULT '0',
  `Transfered` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`stoprdid`),
  KEY `cardno_outtime_parkid` (`cardno`,`outtime`,`parkid`),
  KEY `outtime_parkid` (`outtime`,`parkid`),
  KEY `intime_cardno` (`intime`,`cardno`),
  KEY `inshebeiname` (`inshebeiname`),
  KEY `outshebeiname` (`outshebeiname`),
  KEY `cardno` (`cardno`),
  KEY `intime` (`intime`),
  KEY `outtime` (`outtime`),
  KEY `feetime` (`feetime`),
  KEY `feeoperator` (`feeoperator`),
  KEY `carcp` (`carcp`),
  KEY `username` (`username`),
  KEY `cardselfno` (`cardselfno`),
  KEY `cardkind` (`cardkind`),
  KEY `parkid` (`parkid`),
  KEY `feekind` (`feekind`),
  KEY `childrdindx` (`childrdindx`),
  KEY `cardkind_outtime_parkid` (`cardkind`,`outtime`,`parkid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stoprd`
--

LOCK TABLES `stoprd` WRITE;
/*!40000 ALTER TABLE `stoprd` DISABLE KEYS */;
INSERT INTO `stoprd` VALUES (1,'0','24-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-08 13:18:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(2,'0','24-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 22:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(3,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:02:42','2014-02-09 23:20:21',NULL,NULL,0,'2014-02-09 23:20:21','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(4,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:21:10','2014-02-09 23:21:50',NULL,NULL,0,'2014-02-09 23:21:50','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(5,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:21:52','2014-02-09 23:21:53',NULL,NULL,0,'2014-02-09 23:21:53','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(6,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:21:54','2014-02-09 23:21:56',NULL,NULL,0,'2014-02-09 23:21:56','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(7,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:21:57','2014-02-09 23:21:59',NULL,NULL,0,'2014-02-09 23:21:59','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(8,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:23:21','2014-02-09 23:25:45',NULL,NULL,0,'2014-02-09 23:25:45','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(9,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:25:47','2014-02-09 23:25:49',NULL,NULL,0,'2014-02-09 23:25:49','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(10,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-09 23:26:00','2014-02-09 23:26:03',NULL,NULL,0,'2014-02-09 23:26:03','ç³»ç»Ÿç®¡ç†å‘˜',0,'å·A12345','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',2,0),(11,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-10 14:04:32','2014-02-10 14:04:34',NULL,NULL,0,'2014-02-10 14:04:34','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(12,'0','24-1','24-2',NULL,NULL,NULL,NULL,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0Å\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿÀ\0Ð\0\"\0ÿÄ¢\0\0\0\0\0\0\0\0\0\0	\n\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùú\0\0\0\0\0\0\0	\n\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÝ\0\0\0ÿÚ\0\0\0?\0Ö·øw1VÔuÝ£ºÁý	­[o‡:ÝµÕãu>d„ø\nêÆiê8WUäÌÌÛ\rh\0}›Iµtb»ëZñ‰BÃ\ZF=bšœzÑÊØó\\õcFIÓ’2zÔÑÛ»}Ô?•R¥ ±©§ª\Z½;	ßŠyµŠ!™®!@?ÛÏò¦©y‡+3pñ>õYÆI=y«ö?Ùm<{¥y‰8Ú\"m¿‰ÅmgØír–¬ì@ù†}²iIÂÍ2¹;œÈCŽ†¤H$|RIôRk~i€ýÞiÞMçôÖ­´n.R,vŽ0/m²S-2åÀýÛ~?/ó«1èò™\n ÷lÖºYüÙ’ââN:Àý\0¥ŽÆÕ²Â…v?­C¯.ƒ²3WM·A–¸ðÕ˜ìíÇHæ“ê1þ¢ª\0À\0\nZ‡Vov;\"š[ªœ%¬`z±ÿ\0õÔê²mÆQ}€éRÑPÛ{‰¿ŠW?¨îlmîc1ÜGæ!ê5fŠkT8t»Gîí å?™ªz÷‡tíjÉà¹¶ˆ9,¡å>¾ÿ\0JØ¢©Tš|É»Žìðïìóc4ÖÏ÷¢r„óÎ;óK·¹âÔøŠôä1üFk5S—4¹»áONOé^Û¦ãû:×<¤ÿ\0ÐEx•ÙÍ»àó´×ªøWP2xgM‘ÆâËå“‘Á€? +¦µokF0ê˜ØÝd@èr¦\\\"\n(¢€\n(¢€\n(¢€\n(¢€\n(¨¤žó$EÇ© 	hªj–êÍÎ}ª¬š´‡ý\\j¿^h\'™4Ç’8ÇÎê¿SŠç¤½¸½)Ç·Ê«qœäçëK™\"]Do¾©l¿u‹ÿ\0º?ÆªÉ¬1ÿ\0W=Øæ²·SwT¹ö%Í—%Ô.ŸþZíŠ1Täc#n–oRM4µ4š—6O3bäHZ˜OÒj[âi¤ÓIâ“4€	¦A4ÓHBL=)Ç¥0ô cM!éJi¦^&ö;VC•—¡8ìk–×/õK8mÅ”ÂIXÒå€ãÓŠì5ÕÝ¥Ý][õ®CÄãýÉû	±ŸÀÓFÐØåµø—N–D–}28Ð…ßåžIîk¼k¯ÎÁW_ÓÓ\'\0GŸ×{Æ–q\\Å*Î€=Æ3\\­†Ô²D6ÑîÎÕÉ8­#Ñv:;)üq®LmôQî§Ù¼¤SÇUÎ3‚Gã5lx#â}ÇúË› ÷µ$ÈÕ‡\Zô\ZŒ^öÒD’G‡ìïjêPºnÉ*OpBýy¯~Ð¼G§ëž`°˜‰£xaÀõÇq]\n)t–>}Ô|â»]DYj7›å1‰ro›iz|^»aûëÛtnÿ\0éÕô©¤éz´±ÉªZ	äv©ÜWÓ‚3ÔþuOþ_\r(ÈÒcÏ¼Ž­_*ìMO‡öf	ÝÝ³\\9Â±‘›hþu§†ôûX–5º°h+hÌ×±ÇáýFëm¥[Æì¥Cà’8õ5OÃBÜøwM˜ZÛùÍV,dprqê(å;­ÚÚéºEÍÅŒ«ytT*FöÃžHÇLWQá‡º}þƒc¨knŽöé<Ç…\\¢§ Ç^žõêvÈ£nÿ\0²1Uå™¦!¤$µRVÛ”>ðí¶Ò–²·¦n$ÿ\0â«/ÆZTz…î…çY<wJ%š,ÊÈ…X9+µv\0TbfSòµ&®8ß[½RW–Y…ÀWóâ8è8ÿ\0õšéYžWxÀfÍWÅrÔV`†ãŠ)Ø†²*õ”«Ú€+Ùøù_I?¥Y^Û‹«Åé÷Z¬cŠ\0J^Ô”PE-	J))GÒ€9Ÿ&o4ç6þÿ\0¯Xõ»ã±‹]6Aÿ\0=@¥açZÃa0½©JJ±t7òüI§ýæeüÐ×q Á\"¼þÉ¼½gL“Òu™Çõ¯A”~ñ¾µC:RŠJQ@\0§”‚”t¦ŠZ@)Â€QÝC,ÑªÁ\"£†,*QÒœ¼\Z@eê\Z-Íü…žþ8þìdÿ\0Zª¾ºÏ:ëãÐ@?ÆºNç8|\'1ë­Nßð\0)‚¡“ý~­tÃÛºQÒ”P9fð˜ò“%åÁCØGæjx|§Âs\rýÂ}\"Lþx®R­v`\nL“î‹^˜ÁŒyO\0þ`Š–O\n#®?µ%Së±þÍ[ƒ¥8P;³Û*‘.¡,Ä÷d?üUJž°™‰Ïý3?üUmŠQ@®c\néÃø>ññ¥_Zçý|_ø\n¿ã[\"”S¾µþ>#KD©Ã–}æéoþ•ª)Â-áØ!oåE#,çÿ\0A§Eáø‘@\ZŒÇÌñ5ª)E\0g.Šƒþ_çaÿ\0\\£û-J4ˆ;ÜNû-]¢Ü¦ºU°ÿ\0–ÓŸûçü)ÃL·Çúëø¯øUº(•?²­Ï\"âéIîÂ“û\"sy|àkÿ\0ÄÕÚvS\ZT?óù|?í¢ÿ\0ñ4\r*,Çö ?í ÿ\0\nº( .R\ZT_óÿ\0¨ÿ\0ßÑþ\r\"/ùÿ\0Ôïêÿ\0ñ5{µÙDi1`§ê÷ñøš?²bÇ÷þÿ\0:ÿ\0ñ5{µ‚ì¤4˜øÿ\0O¿ÿ\0¾×ÿ\0‰ iIŽ5ÿ\0ûéøš»é@é@\\¤4´ÿ\0 …÷ýô¿üMÙJGü„oGâŸüM]Å(éLEì @ÿ\0‰•ïþ9ÿ\0ÄÐt…ÿ\0 ÷æŸüM_¤í@½õãìJÿ\0ñ4á¥Ä0Måé?ï¯øUÚ(œñ?‡l¯ôà·rÝO°;ð3õ\0ZÀƒÃzºzåÆóú×sª.tÙ‡Ð×6ÝcPi‘Å0 Cj:@*C+“×Jib°¬ìG$Ó	âŸŠi(€RNíM4\0ÓHiM%IÚÚšqŠ\0Nh¥¤ bâ“ìqIÚ€ÇÌ8ï\\–«‘âžäŠë“ï\nä5ì\'ˆWŽ¦©…ßßªÊF*kÓûÃéš¬½QcêKS‹ˆù¨A¥ˆâdÏ­\0wÚxÜ±Ÿj»*mñ^œHûð‘ú\Z§¥Ãö©z˜ñŠÿ\0ÞR¿¡¨CÎ¯ÄZ‚ôùó5&N)úú…ñ^ ¿íúšˆbœÖ¦U7=®äû±?ýóVšê3+Æ€y€®haÁ·R¯e~‚¦‡CÓb ‹HÙ‡wËgó¯WÛÓ[\nÈä€°C†¸goHµ]‚p>Í§\\Ë‘ÃIû±ú×_1B¸†4Œz*O©x®ËúùC™†ÃS|âÒÎÛÐ³ï? «)£ß¸ýî¨ÉþÌQ€?:Ý¢²uäöþ¾ð¹Ž<?fÇ7-=Áÿ\0¦¯ÇéŠµo¤éðÝYÂ>ªó«ÔT:“{°»@U\0\0\0ì)h¢ AEPEC5Õ¼\'Od}À¬ËŸhöù{aÙrsý*”dö@lÑ\\Ô¾1Ó‚æ%šCé€?­PŸÆ’Ë%ý·ùU{)v´¢¼îãÅÚŒ‡÷f8G¢ ?ÌÖtÚæ£(!ïe*z€HþFŸ³îÀõ)$Ž ®¨=XTî5:ßmä#èÛ¿•yL—ü»±ÏûGüj#.\0?™£’=Âç¤Oã\r\"& Jòcûª?©Fo\Z+emm2Ç¡‘Æ?JàZ~;þt‹1Yzƒš™r­‘-Ø±{s=Íäó]¾ùÙÈcôíTŸ’zS®d/<’í»ïZ‹Ü¡ÒÆF{WI¤j±EðúþÛÎT¹†@Ê¬À¾bôõè:æ0;{úRë2Amáí“,Y@8ç®Iü³ZÓ\\öˆzž»áUò¬LjŽàH¥sò†ÉÇçšÛ®Oá´2ÿ\0Â>/.Wl·n\\D/õ®²ž!%VI;Š;U;NÆÔf{¨—cvOä+¨Ë”W??Š¬Ô£Ç$ÍŸe™¨íuë‹¤ˆ’,tþ/ëM«n\'$Ž’¢–âó%EÇ©®z[©åI+{úT×ó©æH‡PÝ“UAòÃH}¸RMZfFŠŸ^k4µ7w<ýˆçl³-ÔÒV õ\0àT\0õê2Ôf§™²orMÜSwTy£57å©qLÝIšWäÒLÍâši<RRÀ¤0Ï„ñHM&x Až)	¤\'ŠLÐ\0i†”ši \0šaéN4Òii¤¥Í7<P}Qwi—#\05Èx‰whÿ\0çœŠßÒ»;‘ºÒuõCü«“ÕÓ‡nýV=ß•Ö™Åø¡vLOîL bZâ-†ŸËl)`k»ñŸñ)·Rxž	îEyÕ³†Y@$gô­á±ªØÞÔ4ôÔ‚ÈãÊ»UÊH¾¾æ™c¯ê:EìP‘à¸„&íOcê*²ÊÖF42³C\"@8#éR,`*èµÕœŸu˜ä¡þ•²vžÝá¯Yêéå-/Ü\0u)õSý\ruåÖà×ËéÆ“¦ãO,SÕÂ½Á;t,õ9~Ñc±\\±ùà=•ýG¡«@zìíÁÉ\0sXž(š‹ò.&‹ò‘ªà•€¬2r¬¹Ž^\"~æ¡!ü+çNâ7	R\0¨Î2sUŒç8šÎHªŠ„‘Ïæjˆµ‘‘KÚ¢Ýó\n–¹kn€J){Òb°\0 P:RŽ”\\jsƒüQ)ýjÀéUñZ3Ù¡#ò\"¬ÐRö¤íKÚj)h  v£°¥J\0ÂñÊçCû¤ÿ\0ÍMs€åW>‚º¿&ÿ\0\rOÇÝto×Ö¹(H1!ö­iì!ÔQÆ(ü*ÄE#”šÚN&F?@À×¥N?zßy†¢qi#w5éòÅXteô¦†F)E ¥Š`(§”‚”t¦Ž”«H:RŽ”\0áJ)¥(éH\np¤¢€RŠ( íNZhéN^Ô\0¢œ)(é@\n)ÂRŠ\0QNÚp áÒš)Ãµ\n^Ô‚œ)€\nQÒRŠ\0QKIK@(¤£¥\0–RŠ\0;Q@ P\0:P()E @¢ŽÔÀ((£µ \nJ(Å0Š(ü(ñ»Oœ{W1ü ûWUt3e8ÿ\0f¹Q÷Ò±¨NÔ˜â”t¢°ÜRcŠqéIÚ€#4ÓO4Ã@Æši§\ZCÒ€\Z))\nJ\0´bÇJ1Å8ô¢€\Z£šã|XvxŽÙ?Ò»1Ôq\\OŽÉ_Ú™Çòª‰QÜÍ¼c¼ýj¸4ëÖÄÆ¡Vâ™dÀœP¬C¡÷¨Õ©`‚;\Zz>ŠÛ­!>Õµ¨\05]½\\Ð×?áÆÝ§BO¥t\Z¯øyÈÿ\0—´†p^*Rž1¿\\ûþ¦©ŽÙ­/\Z©O\ZÝúùÖhéN¡”Ï¬(¦K$q.é]Q}XàV}Ö¿¥ZœM}?ìßÊº[ÙiÑ\\µÇŽ4¤!ófqÐ\0\0?‰5™qãÉ	ÿ\0F±@=^@–*ý”ú ;Ê+Ì.|eªÊO—,pƒÙc‰5—q­êl÷³:ÿ\0t±ô4ýŸv=zk˜!8šx£=~wùÖeÏ‰4›|‡¼˜v\\œÿ\0JòV›qËO¹?ãMóñÐŸÌÑËÔW=.\Zéê?Ñã–Sï…Î²o¼y<hÍoeûïŸê+ˆ7Žj¹‹[IƒÎ(æ‚ÙÎ‚ëÆº¼ÊBÜþäj?\\ÖUÎ»¨\\\\_M ô,qüëœ$¨9¦™òqžk^{l‰æf´—%Î]Øÿ\0ÀøÔOsµxcÇ¹¬³1ÇZcKF{Rso¨®u‘\\–…zŠçÖ²´ùwØÄsÓŠŸ}KeŒÇÖšf>µ[}&úWÏ˜i¦CŠƒu!qŠWVsëJŒJŠ¬ÍÇZ|-º0GJÎ£Ð™	ÈëÈ¨þ}À``Ž¹£&Ø¬®\nv¹D;c$€%”6WÑ]xžIE¼<«tÞÒqÉfÎ\0ÏÎOµ*IÒ¬)®5uAÎÎÍ¾  B–\ZDžR±—&o”>™ª²ø¿X¹\0F!µþÜS\\â\Z™èö¹™~KËë¡‹»Ù¥^¸,@ü³I\ZªôþuYŽµ*·I2[e¥jÑÑœï™Ù²â®èï‹Ò=R¢÷B6‹Rf˜M&j.HýÜRf›šLñ@Í¦fŠ\0vi3MÍ gŠLÒf“4€wzLô¦çŠ3@\nM%!4”\0¤ÓI ÓIâ%éIš\03HhÍ%\0!¦Õ{Ëû{7T›yv‚¨ÏIµ°Gî­ã»°¢ÞÆ™éIƒŽ•Ú¥Û‘\"ðÍF×Wn>k‚û#¬R¦Í²§cdpTŠæ&ˆ¾—uêbaúS¿xo~y¤`S¡cSÆ»ƒ þ%#ô¦•#SÎõÜ>ƒ¦8Û3\'æ§ü+6Ü¸ìWŒW¡ß¨>oXn¾œ‘ýk€”âø\09\0Öµ¢$šÒõ´øïqdB74€Ï¥8CsaK%Í»ù„b8Én­G\Z#i2ËüÀÍI€ÖPä…5Ð‰.Cv\'ò¡voâ„žµ\Z)y.¬£1²“¾õö¦ÏpD¬áðÃž\rKk{³‡Þ§‚Ãø¾´Ös§ðß/¬Ò³ž6Š\"´¸‰Àlñ]¿†¼Kis¯êp0ò&»hæŽ9xä Ðô¯\'¹Òá¼ùãcùê:5FÓÍ²ßn!\n\"žW\"Óè+®A\nÒ£37s^u£øâêÉaXŒ^Y(¼Œüê?Ú^ÿ\0Zï£‘$†9¡‘e†EŽ§!ªL—=ê2ÔŒsô¦LÜjÙíÇaYÎøSô«êAU9êsÖèŠJ(®p\nQÚ’Ûš@E&õ¡þðeý*Ïj¯7Ú6F‘ÏÒ¬g­\0&=©ÀqÒ¢˜Äl\'œŒñQ»È\"cÔb€,\Z=(5û„Gc”l€Ð\"\\JJ®Ìä2‰¤jX‰hcbrÄriWÄ+¿ÃzˆêV=Ãð ÿ\0Já­Nmãç Á¯@¿ÍÒ¯£þô?ñÓ^wbsj?Þ?Î´§ÔEœÑÍ éGCZ‚øoµ‘}V½\ZÎO;N²—ûð!ÿ\0ÇEyäüÂþ›Mw^3ÃšcgþX*ŸÀcúSC/”P:RŠ`(§”‚”P\0)ÂRŠ\0QNÑNZ\0rô¥\nQ@\n)E éJ(E8t¦Ž”áÒ€)Âš)GJ\0p¥‚”P…(¤¢\n)Âš)Ë@\n)Âš)E\08t t¤á@\0¥íI@ ¥¤½¨\0¢@é@\0 t RÐ@£µ˜€P)E  aE´„%-P1(¢Š$£6óT5É¨ù+¬nb°•r‹Ñ‡¡¬ª\r\rRŽ‚ŒV\Zi§¥8ÓJ5©©ÆšzPSiM\'j\0JJu%QŠ)E\0\'aGjwjNÔ\0Ñô®#â&W[°aþÈý+¸®\'âPÛ¨iì}?4Tw0oÖQ\'J}ïÞü3Q%Qd€âšÝ3J)¯Ò€=ÂÇ:\\>Ù®‡Y;m´ô¼Zæü\"s¤GŸSüë£×ÿ\0ä\r¦HOÜ¼CHkc‘ø„»<k/£B§ùÖ:ô®‡â‚mñ|\rÓtýkž)Ôèg3ºšåå$É#¹>¬Æ¢Ó#ñ5œf¤2œWk«\'ÔÌÐ7\'OçL7÷ª>aõ¤ßYóºf>´Ó1ãš¨€Ô®umZ×IÓå¾Ô%ò­bÆ÷Ú[ \0\'©‡gñÃW—p[[ê[ç™Ö8×È”nbpJã©¯-ºÖ®þ!øžÏMIçÒìçˆÆð‰L±±@Ï¸¯Ê	àÀWSâßÛÃáëK­>â++­Õåy ·\n÷ˆ¤1`A(NyÆê›ŽÇ¨o¬/x·DÑ&û&«{äO$^b¯”í•$€r Ž ×ðŸÅ÷\Z¢®w²ÏoÌ×rÎ]¤ýàÀ Œôp:ž•gKøvë¯[j\ZÖ²ÚÂÄ¬†¸7†X–vàÏN´\\_xt(Qÿ\0Èñ5»¦êVÚ•”wvRù–ògkm+œg¨5Ëx¦ÇB±Òu’ÓL·¸hff8Ñ™‚œmã9É=«œøVu!|þoÛ?³~ÎþVíÞNíë÷{gït÷­˜­¥ÏT/ïH_Šªe|à/Ja‘ñ÷sVIÑh²n±eÏÝj¼ãŠÆÐ\\”¸R;‚+“ø­â-SL°6ZuäQÍ\Z9Ô¡vQo?&@àü£øº7J–ìR:/øM´íoìÏ·ÿ\0§yÿ\0fò¼™?ÖnÛ·;q×ŒçÑ)Ïó\'…ŒÓøãH7O#\\I¨Ãæ<„–,e-žsžµô|÷Ò[NÊš|’*œ	ZUU?Ö§›A’ÚjV—Zêh¶­$ú«ƒ‹xÀ…,ybpS[·žÕ µ’w³+h]‰‘	\0žVåÓ“áŸ„µzæ(µýF;Ÿ>\'òV	d)Œ?Î@\'>çŠã>|DÖ®<My¹oö›=fö8íàžè±£»\r€lùÆGðço¿\nã&iÈ\rWÕ<AiáïI©jî<ÑQ(ù¤sÐÈÕ¯š)ðã·ˆŽ¹=®ŸssºXÛ[(Ÿ(ä†Ï91“Ðu®M}7Çž\rñ¤“]—°xî.(pH#¾SŸcùLµDÈâ½Ì‘‡6Éü%®2?•RO‰zöà.4‹\"‡û¬Àù×ŸXÍ=ä¶ÖvQ4—R\0«õ&»Ûø€¼bmÝ7›v?>3MÂPåHÜÓ~&èì@Õ$k1Ê˜ÚAøµ£ø›á09Õ¿òZoþ\"¼oFÐ®àñfšš•¬ÓÇö•ŽA<%‘†y9W¯xçKð¾— j«%†‹gu%¬ÿ\0fÝQ»8CœH$tõI2lŽÓCÕ-56ý6o:Òlì}¥s‚Tð@=A©uVÏEÓ&Ô59¼‹8vï“k62ÁG\n	êGjñ¯€ŸÛ?Ú²}£ûCûìry÷ýŸš¹ÛŸ—?§=}ë&ï_½ø¡âû*;‹Æâ,Í4lÈMÅ>PO\0~\0Ò¶¡Ë©ëÚÄŸ\n_^ÛÙÚê»î.$X£O³J73\0É\\Ozí×x×áÕ´²¼Ó.aÓï4+7™ç·µ	%Ó¢)YXl¡9ùˆ-ùÉðKÇ:ÐMö)¦¸µ·’v¾šäÈòþô`Fxr~ïä­Õ	¥k£×Ôð+žÓ¾\"xa<U‘ý§ÿ\0sö/+ìòÿ\0­-³nvãïqœâ¹O‹zïˆ ¶“FðöªÌ÷Ç(Ô¬|ÌÂÂNSä^¸Oïóñ›•ø™ ›ÿ\0;íƒW€ÍççÌßç.íÙçvsœóših5«³îÞ›š$áš¹ˆ~8Óü¢ÜÝK%­Æ£\Z#Ç§µÒÅ,ÊÎ*0NÌrû¦³2Ü»âÏh>û\'ü$7ÿ\0cûVÿ\0\'÷2I»nÝßqN1¹zúÖ†­XxƒHƒSÒ\'ûEŒû¼¹v2nÚÅO‚:WÆž=Ô¼A¬jS×\"Õa±½–[>+Æ‘£HÜ†Û`P\n¨}«éŸ€òI´/ûoÿ\0£äªq²¹r•ÏBÏJ)¹£=*5Ë|Nñ\rß…¼©k:|pIumålYÔ²Ò¢€AèÇ½tùâ¸C?	uãéäéDt-ÇYËéÞ+ø½¨éö·Ö^Ðäµ¹‰f‰üÀ»‘€*pgÈàŽµcûã7ý\nZ\'ýý_þH®I³µ‹Ãúl’üf¼±vµ‰þÁšßgÊåq0oÝíÓ ¬ëÛÛ…;tÿ\0ŠZÝÃzË)„~h5v4²=,kßO	hŸ÷õù\"¸?ˆzÄŸx5üE¡iöšŒW™Ó\"…ÁYåßÊÿ\0½l\rÂ1Õzž}(ZÎA¤ˆzÉ¬íý<êÏ×ã¿‹Ä~û_Ÿ_—í`£ÇxÓ›3¾>AÞÛIàñ¹M+1¤}MáFÖåðÕ¥Ï‹-mtýU·ùðÆãËL;ÁÜÃ•\nzž¿…qŸ¯l›áf·w–òNÞFÔGOïã=½«‰žÊ.\"šk‹›™.Ó¹\'?RøÓ Ü>q«ÛêsAe#éê—+Ì~lgæÝ„¨Ù¦ÉŒu=;Â+ÒtÏøi\'û\\²\r:Ù\nÅ	?0‰r2p+‘ðUÚßþÑ>)ºH%·Y4´\"9GÌ-‡?^¿pž\ZÐb½Òm_ŠI¦‘o­³\\å£äÎÛÓ éÚ£ðŸ†u\rkâv­§i~7º3Åf%mbÙÙÚát6²d€X¼~àãÐI+•&ÏQø‰ãi><Ó¼7áM;N½žòÌ\\*\\‚¶dÜyŠ m<û×?âkâ´¾ÕãÕ<3¤C§½œËs,r©dˆ¡ÞÃ÷ç2z¡«~3¾µÓÿ\0hÝj0ZÛG¦6ù¦\".EÈcÀäø×UãŸønçÁ^ ‚ßÄ\ZD³Ë§Ü$qÇ{3±€\0É$ö£khNÖÐæg«Ï¾gky§ÚÇá„‚fµ»Vl’ùÇ*Ãy8É“øGÝúû\ryÿ\0À“ÿ\0§Cÿ\0¶ÿ\0ú>JïsS-Å-ÌŸ]Z7bŒ\rR\\`T|A¦xgK±½Õì/o–yŒ-¼¢0­Œòzò3ùV?ƒ<I‰n5!žtøíÒ6†ÈûNA,ÝÎG§LUF\rÇ™t5„•¬t\"—µ©{TšIÅÕ±õ%J±Ê«Ýü¦Ý±ÀU…âP{fŸ@8}B\"t=r0c%Ç¶×Ïô¯8ºãQB9ËkÔuÉ“ÄËÅ!ù¯)¼r÷¾1§ô«†à‹‘Û4Sý¦ÿ\0Èec¶%ˆ±n=zVøð±ÿ\0YÕÛMºxšÐÝù¦æ «Ýû¶îÝ÷yÆ3í]ÂB–ìêÚî±¦D°Ìñ>óËýêùcó7L·÷O+ù{7ŠÅ·ü+Í`Xù\"Ïû*a“/g’víÇqŒcŒV©‰Ÿ-^a¥ï·ÓáŽMªLÅË1õ§êS£…6Ã`‚hµf5Êf˜¼ã’›x®›Á>»ñv£gk°YI¸>¡öV’(Ê¡lÀÉÀˆUì!|9á½_ÄÂæ-2Í¯×h‰’2›³¼F~ééTõM6ÿ\0Ã÷×z~­ÓRñ–\r´ä:_PxOJÒôk²Ó…‹]Aq]Ko\Z#ÊÊ1º@9É;$õ5àÃAñ[”Ï, F	,’i\'}\0âZÖkcçXÈ^¼È{\nè¼%â·ÒcÛn,Ù³%¡ëîTŸå\\ý¶¡l	FwY\0È@>õz4ÿ\0	„þ_Úêí§OâØ[u>^ý›·þÇáU{n3¤ÒõKMVÌ]ióoCÃ)áúÚµ¬t»íB-¤EãVÚNåàçÜWÏÚ6½w¦êXXCv§k£}Ù—Ðë^ç¥|H´Öôé¬¬,F•zØc\ZLI\\(ÝÀÅ;µ°XÒo\rjåHû)çþš§øÒËo-¡Ü&ÉP\0ËqÀ=©ž¾Õnµp³ÞÍÌ‚_™˜*–ïè1šéü[öo³\ržOÚ|Ñ¿ß§¯OÒ²«vµ—â¹qãÿ\0\rmÿ\0diÄÃídò¼‰ÖîÛ·;q×ŒçÏüYÖõø-¤Ñô\rT™®!ŽA¨Ùy™…„œ§Ê½p¿Þ7çâ>ûOü,-íþwÚÿ\0µ!ó¼ìïßæÛ³ÎsœçœÖ*7W`}n(ƒ¥ ï˜ã.Õpy«8PH¼Žÿ\0âÆ|Q/‡ÿ\0±~íÿ\0ØþÑö¯I6nÛ³ñÆ\ZõÌäê¡¦·„—â—ƒ.5ŒçÖoþ\"˜ÿ\0<°ãYã§Ùfÿ\0â+Ä>Ú[_|BÒm¯­á¹·7|S tlBäd \Zú6ãÁÞ‡£Ç õ±ˆƒõjÚQÐøwÆ¾ñ%ëÙè·ÿ\0i¹HŒ¬žL‰…rÊV¿pU-¤w \"\rÄžÂ±´í%4›†—Nðþ‹m#.Ã=´kààí\0ã qì+ˆø·«x£É}#KÓ5;…ž”]éèábo0åNÕ$œ/÷‡Þéë6»Ð‹þÿ\0Xi‹ªn¾3ý˜D-åæMÛvçn:ñœâº»6/j„«.I8aƒ_%øOí#âöï8]R;ÎÎýþpÝ»<ç9ÎyÍ}sš©+|k½]?¼…JòÛIZ8ö „®s“ ê\nÛH5Hi\Z.âÇF°f\',ÍbO¯4£.Q¸oúwÏýtyçûÖüÓQ]ïö^ŒMÇý{\'øP4òÓðÂ¯Ú.Â8›*rÖã#þz\ní|\'›á-=‰RFñòœ¾ÕdiZ7mMÿ\0Àdÿ\0\n·l‘E\0ŽÞá‰z$kµGÐUFi» ¥(©GJÐ`(é@¥\0”¢K@ÓÅ4S‡J\0p¥”\n\0QÒ”R”¢€S–š)Ë@áMáÒ\n)E ¥(áJ:R\nQ@…áÒš)ËÒ€S…4RŠ\0QJ:R\nQÒ€”R\nQ@\n(( t \n€QÚE\0\n(\0£ ¢Š)€\n(¢¥P!(¢Š\0U0õSü«“Ë{]lcæÇ¨5Ê‰$·\ZÎ{\rbŽÔ\ZçÆ¦”ãM=)i¦S7µ\0%\'jZAÒ˜%(”LRÒŠQ@	ÚŠv8£µ\\WÅ‰´öàð?­vÂ¸ÏŠC÷Z{úñª[ns7¿ÂsØT)Ú¦¾?*ÝEAàS,”)÷M8zÓ_€hè;´…Ç÷ó®›^çÂð¾>åÌmüë–ðIÿ\0‰OÑu\ZÑÏ„&=ÖT?­ŠÉÿ\0%ƒzÀ?­sÖºßŠÀWIqüVãù×$½éÏdg3k}ºT9àÒŽEks2]Ô¦\0x¤gD\0¼Š£ÜÒ¸‰A4 Õ&Ôm0¹ôQšµBN!¶v÷<Q¨ÏøYÿ\0#æ—ÿ\0môS×yi¬ê\Z§Ä+kÙüØ,£š8b®ÅÄÃ\0g…sÒ¸-	xÂÂ]kýª<›ï0¬Ž ü¹ïÅz‹u»4ðä†çRroí$û2„lI”ã ãï¸ëE†r_ÝÅWfF\n¿b~OýtŽ½wZÖítm}Nq$¶ð•Ü\"\0±Ëã$§Ö¼—áF“tšƒj3ÛæÊkwHäÜ§-½{g?ÂÝ«/M˜øëÆZ}¾¬«oD~Ê6]ÇÞÝÎJ\Zê¸VóÇ^ žw™Lµ¹Þ±L68…Ûî£“µq×ñ¯GÓìíôë(íl£òíãÎÔÜ[$žO=I§ÞÃo¢À‘aigj«½¹mˆ¸ÉÀäàv¤ø‡KÕ®\Z\r>ëÍ•Sy_-—åÈÉÔV‘µˆzœùø‡¤““¡ÿ\0|\'ÿ\0Iÿ\0Hÿ\0ž\Z‡ýðŸüUvý)\0Î*µ£7Àþ2ÓuMNæÞ%¸„ˆ›¦U‚8cÏ\"ªxŸ[»ÕTé—6B{&`ÄÂ	È#\'±­˜ÅµÍÿ\0Ù.ƒ±Ù½Ugû:Â²äP=\\š=FÁ_mŠV¸X‰ÁÌásúW¡Ço¬Îr¶°/ývŸ5Ä²øXf1÷µvþuz–©orD>Wüjb6ÏxøÓo%ßÃ=bgò7“‰?»‰£?Ò¼ÆëÁ\Z&—¨ü/Ô-¼Èï®$·šâC3¸¸ì1!y$áp>oa^¡â[˜<oà=N/\r8¾f‘\"?™]Ÿ¹¯*ð/†5I¼]•h1¥ÞÅöÃ½?uµþ¼ýÆéž”–Ãlîÿ\0hh’OBÏJÑ^,ˆŒ2äÿ\0\\÷€~x“B»ÕR¸Ñ½ÜJª–ÒHpÀ÷ÌcŒV¿Ç=fÊm4˜\'Ý¨CuË–Ü!¹Î0~ò÷ï_>ü“ìß<Œ$¶š,}9þ”­t&{Ö‹ð²ûO×\rö4•H2Á¹ÿ\0€UwÃ·º<ss4ÈÙ‰É÷Ò¸ø\\?£í®†é~bj\'¹Ç3ãit‹K[ÛŸ1 Ã2Æb2#Ö¸+$Õ>(ø¢k›‹˜¤Ñ´ûÀâ€\"qŽNÀPrvÇŽO^ýëž‚ö_øËOWT„<föPWåPî>öîrkèxV×DðÜäaeah ÈãqÆN\'°¡»\rû¾¤Ú›g£é°Øi±y6çbn-Œ’Ç’IêM|íðkþJNÿ\0m¿ôK×¹øsÆ\Z¿zöšE÷Ú.3+/’é…rÊR+Ä¼)k7>!éRø©>Á\ZG$¬r%Â²H€ü›¿‹Š•Ô#ÔôK-RÕì¾(Zj>u¾Ÿñ[\'–«å®\'È\0žzç¥r_³·üŽ·¿öýzo¼S£Ûx.:óoö¾Ÿ7Ø¿tçÍÝË÷×ïc­pß³þ©Ûê²ks[mÒîläŠ)¼Å;˜JœmÎá÷¨íO º3Þ×ËJqñ¸Ogÿ\0&kê5<\nùi¿äµŸûöæ”BO³³†õ\0×Å°øµ<Aã\rOâ/Ÿ«ØÃC,p\"Äì˜r€l)ÑÛ=>•ölMº›ÕE-Jv\"2å>Iø¹ãMÅ:‡,|9i}kk¤Å$!.•FˆÂ\0C±8	ßÛ­z§ìíã>óÃö~Š¡¨XÁ5Ä’2¨ˆ©˜œ)ÝœþñzÐÖí[ÿ\02·ý½í\Zô€¿òIô/ûoÿ\0£ä¦íÊS·!è£Ò’\ZÌÈvk—ø¥>“oðï[“ÄÓ]i¢4\'XÈ¡;‡G*O=~‡¦ÍyßÆÈuïÁZsùÞ&ÔâŠkK<óeÇyÂ,NyaÓÜe­JŽçšéÞðÎ§¥ÚÝC¡Eš5s9<Œôß\\ÇÄiz.‡ÎŸmåJ÷+\"Go”«|Äú\n¿£|5ÓçÓãmF[èoË4i\"a\\p@ùOzÇñÿ\0ƒtÿ\0èðÝÙMvò<ë:‘‚¬{(çåº6OS·ÿ\0„Ã`ÿ\0È8Ÿûo\'ÿ\0Yš†áoêúB2auu8ï®Á2à¶_¦Xv4ãð»Eÿ\0Ÿ­Gþþ\'ÿ\0YÚü1¨Ý^[Ùê\ZŒ“Y¿—:ä\r’1’œò§§¥ó;›®®\rIñ^O;á}ìƒø¢ƒÿ\0F¥géú\\:.›oajò41µ¤ ·,O8¹¬_\ZøÛ@Õ>Üi–wþeûU‹Ég«u+Žƒ=jd¶œÿ\0‡õo†°Y[®·áíRâä@‹+Å#\0ÒànaûáÁ9ì>•Õü¸Ò.>/jÒønÖk=%ôâ!†c—OšÙ%›«n=OZ×ð\'ÄiZnö©å<1Ã(û<­µ„`Âœò;V6‡ãŸZük×µùµºMÍ’ÅþD‡s…„ch]Ãî7QÛéKWp‘·ñG±×¾>xoMÕ ûE”Úcy‘ïdÝ·í9RPZ×ñ‡ÂßéþÖïlô.æÚÆy¢µLvºÆÄÁäµÄx«Åo¯|bÐõ?‡ÞF«{\r‰†4™\Z$gÄÅÞS¢6zþ}+oÅ\Z×ÅI|3«GªxkH‡O{9–âXäRÉC¹‡ï dô?CK]×C²øâÕhößÿ\0GÉXð¾¼/ÿ\0>\Z×ýù‹ÿ\0ŽV÷À¯ù%zý·ÿ\0ÑòWxMCi7r]®î|íñcâ®‰âÿ\0Ùéúe®¥Õ½ôw[®#E]ª¬ÈrsóÕ‰à¿ˆv:»\råÄ7	‰¡œFŠY”Ž1–ñ^áñº?áˆdÈ=±*L×é³k‘1WÀe#‚óÅuá—<e¡qjÇ¢žÏZ¾?ë”ürªê¿\Zty4»ÈôëmRæ…ÖÞG†\"©!S´Ÿœð;¥z¶Ÿzš®‘c¨GŒ\\Ä®Àá¿ˆ~\"¤y®}–5Gš|.ñËx¦Å4»¿´Ï­ÛÂ÷3ÎbE”H\0ÆÓ×£îŽ‡ñôÙchäÃp\ry7Åÿ\0júO‹­­­5k‹K3h“¬11PçqRþízN‘)šÈåÚL;˜äà€zÒkK™xƒþ;¤=%ˆ~9\\WŒß|² î„øW´êcgˆ­ß~?S^7âò®ïø’iäÔéîR\Z^À]?ö½*Ê6¥ª‚Xû“Ò¾Þ‰ðk|qŒhX¥=GÙøVþF¾\\žLIõ\\WÔÀ|-Øx{?ù-[|¿¦êwçI{XVÊ(†õb!B9îkëïÜé~¹Ó|,zméÚmäÚTC•Îw‡þGCýkäM6xQ\'Áä¹À9ÍKWwº|ÐØÙÜN˜e,ˆvƒõªh¨~xWXðõÖ·w¯\\Ú\\Ýj/¬öîÇ.–$P2_ ãé^kñßÂ×¶š½çˆÝíÞÎöX­â‰¼ÝÂr1ùf{úWOû<Ü‹­2íù,––‘1\'9#Í¯?øðc—Ç—êÒìx&zäÆœ\Z”õÏ5Hn¬¯Wpf«•bqÒ»[ïø·OÑ Ñn5¸Å¤–¢HàˆM»wmÏÝã9Ï½ckÖ–ÚÍÝÍÌqO,ï$Xp 0\\sšõ=Gáž‘7Âá­\\Í{ý§Œ.Ô‰ªÈ°ïÀù~îxëÓ½>kØ–¶Æ©:Ÿ8tu«^Ò5=wÄ–šR,7Sï0M#2„*ŒùÈôSÚ©Áu-‘Epñ†^HþôÝí¼\n>j×š|÷š€Žu¸&ð¬ŒYÚ8ÈBqŽ?¥>f‡rf½³ð>¥é×²í»ëO,Ü!Ü’O\Z(,w2Ï‘ÇáÚ²lon5§žõ÷ÏæÍ´à\0:qÐWÏi}s«x–êëMÒ£¹Ôu›ÒÈ³±TYdr@Qž>fî~¦½£áÖâý\'FÔÓÆ–¢fClÂXß ƒ‘ò1éÖ¢kÝÐ×Ëÿ\0óZî`ÿ\0Ûšú‚¾_ÿ\0šÑÿ\0sþÜÖPêÔ4Å74Å@­×€<2Ú„ú¯öoüLL¦ëÎóåÿ\0[»ví»±×œcÖ@Ûíáp~ò^2ß5³ãæÐ>Ë§}Œêaßå¾ýžnÌç~7cÛí^Á§6í>Üú.ßÊ›Mn†è¿	üa¢jpê\Zf©¤Ayí’ovÆT©á£#¡=« Õm>)iš]åüþ$ÒÚX^w	–*ªX˜zàWc¢øûÃZÞ¥Ÿ¦j~}äÛ¶GäJ¹Â–<²Ðõ{Çò%xƒþÁ÷ú-©ó;ê+ð“Çÿ\0ð“[G¥ß›™µ¨a’yçhÑ#u`cië†Q÷GCøú>M|íû;ÿ\0Èë{ÿ\0`çÿ\0Ñ‘WÑIYòçüÖ¿û˜öæ¾¤ükå¿ù­_÷0ÿ\0íÍ}GN}Qš;Ô\0”Rv¥\0”è9\rõ¦\Z|Æ>†®žàJ:RŽ”‚”cÐ £¥\0\nP(\0¾”J(\0Zp¦Šp ŠZh§\n\0( )@ \0S… á@\n´£¥ éJ(áJ)( \nQÒRŠ\0péJ´ÑN\0£¥(éH)E\0(¥¤)Ã¥\0”RP(ÂÒRŽ”\0¢H)E\0-””\0\n¨QE¥(íE¨\0¢Š(‚—µ’€ÞËMÄóF®¡:Šåîx»œwÝYÔØh‹¶i„Ó™%})OJçeM7µ/ÐSi\0†›ÚÚ“µ\0% RÐ(\n1J(Å0RÑŠZ\0AÍ&8§ÅâÇ|Tñ-²oLÿ\0ZìÀ®Câ¢ÿ\0Ä–Ðÿ\0´E5¸Öç{ÌQÛAARÝÁ¸*éTY8¤oºhRqíHÇå ëÀíÿ\0Çþ:êõO›Á—¾Ì§õ®CÀ‡þ%ó/£fºëÂƒµ,u?ÊšÜfOÅ_õúúÂ+“ºÏŠ\'uŸ‡dÏXÇþƒ\\¨Ñ?…H¢9ò¡fúñQµåÛ•R1õ¬ãu!è\0úS»ubknS2ó<¬{tqè¦£&Ø˜3“ëÍUœ T\\´·*ŸêâQøR}ªbx!~•\0éN,¸´ÔnWˆôXu»I#”D—,ª«pbèg\0ð}{÷¬|/Ú,ÚïW{¸-™JÃ,D®ÐFTÄ\0@¥uíq}éQ~¬*Ž¯¯éúMšÏ<‚WbDqFr\\ÒjÛ…Í­>m­Ò+x£†%û©\Z…Qß€+ŠÓ>Ï×›iâ	-çŒedŠÜ«ñÁ‘Æj²ü@ÔKn‘g8 ’×wánßY˜¼$¾^$‹<©¤ÓhÑÊê¾ÕT¬w+¾%R­½\\‚äÉÈ¥ð¯…ÃºŒ·M¨,ûâ1m1lÆH9Îãé^¡áï/5É-n¯e´²´O2SÃ¡¯A²ø;áH7’ÍG sq>Gè\\TRÔg‡K©ZÆqç+0þäþB¬ÙC«jOåéz6¡rÇ¡ã_Ci¾ðö˜Ï5®‰n…ÆÕFöôçžüWZ^81€OÊª\0ÀéWí\"–ˆI#å+#[ÐuÝ>çÄ\ZSYGxM¼ŸCí×¥bx—A¿ÕušÏ\\ºÓãXÂ¢Ý‚A\'w=@ü+Þÿ\0hX³àí>ì~Ë©BäŽÊCüÅyjE¹‰Æ+?‹QÝt<Ïþ¼ÿ\0iûGöä†ã™æyvìçvwç9ç5£‡µ&K{»ÍjëPŠBbÊ\nzç–>Ÿ­wÂ‡*2ûÑïŽ+¶Œ>ƒ2@ï Ž5–päå&-‚=©¨ÛQ6mx;Ä¾ŠxŒòZ+³Éj³”ŽF+·$r3Ðôì+­Ÿâ-c¨®¡Ecu{+ÜA8WÞAÃ’Abz×épÃÄ­c< ûD2˜æÏQžÄWGdAAüê¹SØ¡ªÏs1–kéå¸¸|fI\\»“ÏJã>\ZÆÃâÅ²Œ†á›é°ÿ\0vú²îWÅrßaañNùÆ1”²gê Z„Eðæ\rÍÌšàŠé\'Ýë\\ß†0ÖQÑî\Zºw\0“ÅsKrYâÉðÊk\rJßìºü‘NrVXíÊ2ñØ‡®~k—–M¾8ÔÞ£ÄË#)R0An®ŸP9Ö­=Ðé›b=\Zœ˜93ˆðÃÏøDu™¯ÿ\0µ>×æ@`Ùö/elçqþïOzè|gáK/é3Á\"[Ã{\"¢GzÖë$‘*¸lÁÁäuxÖûŽ3Kè*/ÔW{žgiðšäÞérj~%›Q´°‘-n-‹&ÀW1€Ò …¦1Ú½NÂÒÚÆÕ-ì­á··LíŠ«““€8’iR¥Z¸›lä<eá[_Õ\"ºÓ|U£ÂˆŒáö³c¿‰œ:v®7þÏÛ~Ûÿ\0	\\ßló<ï?ì‡ÌßœîÝægvyÏ\\×²©§Ši´5&Œ‡^\rÖtç¾Ôü_¨kVò@Ð­­À}ˆÅ”ï¤aœ)?ˆó]þj¦–Ù²#ÑêÎj!»ž=âïƒz‡‰µ{›ËïÝ<<²ÛÛÍnÒ­²»gbf\\\0\0tVÿ\0ÃO‡×þ¼f—Ä÷ZŽŸä4QØ´mQ³:¶õc\0xnƒø5è9â“<SæmX|ÎÖž(Šni3Ò¤‘Ùâ¼îÇá½ÚørêÒçÄsÜø†IC[kòBMÕ¬y\\ÆŒ\\¸RŒ÷Ç\'>„\ry\Zè²1â½?õÉùš*\'7u¨u+ûSã\rGu¼íl8Þs÷¿Öwë\\ÏÄj:>\rÅö½w©D×Š`ÛA*Çw.yàÆ»=SGø‘o­ÝÇs¯iMvÛd’E‰pù~çúVV½áokÖIi«k\ZdöèâULlÃ\0Fr±Ä×BÕ&[×ñŸøKõ=÷ÿ\0ñÊ‚ÃÀ·Z%÷öƒøšeŒJ\'¹Ê…;Žó¿‘×$ç©©¤Ó¾ ¯/¯éŸŠ/ÿ\0\Z¬íNÓÆRÚMmyâ\r.H¥C¢ ÉR0Gg¡¢Àv·ÃugçÙO±·Ü•2œ×½T¿ƒ@Ñ<ªIáÍ2ííeQ± Ke_½´ã³Ò¹?	E­éK§K½9\"aQ.6¹`s’ ã–ïÞ¶<1öŸ9Û\"åßXÍòÉ$ nYFp	ŒýáÐñê¤´ÔiXê,´ýM×Y‹ÂºmÄh.ÖÉmcc#÷ÁÙÉ\'Œãð­¯ÚxO_´ˆ]ø[BÓu¬óéRÛDgC`R€ ©ÉQÃQVm ‹O·³·µM[„Ž5É;Up\0Éç ®{Å$_üGÕ¬¼	ÿ\0ß\ZG\ZI{¨]|ÐKm²?‘AÞ7e¡þ÷O>¸­E2œ\Ze„¿¼=¨øNÊÕô(­$IîtÈ”Û$Û&ÈgŒm†N	Ï+ê+Ò<~âƒñýƒnôST¾ðî•á›	,´;_²ÛI)™“ÌwË9bOE•p\'Õ5­*}[Bñ-â]§‰Úk-[¢…µJ1Ú§½‹‘¼ü­ø­Ù–ìÛøâÕèŸößÿ\0GÉ]æk˜øo¡]xcÁzv‘$2\\Ûy›ÚJÒ3èÃµt„Òz±=Ì¿@·üM\0CiÓ=Â?P+æ­›NÄ‹#\0òÊœaëë)m–þÆòÊAò\\Àñ7Ñ”ë_$è1Jžk’Ç˜ÜgrqÅu`Ý¤Ó*,öß„\Z‰»ðíæŸ!&K9|ÔÏ÷$ÉÀú0oÎ»3Ó5äæ—Ãþ=´´¹dÙ{…ÊœŒ8ÜŸøðzôªUŠžÇ±Jw]M¢ô1¼Iá½\'Ä‘Åý©l4CÊAÜƒÛTšF•jÐ[K$Šq’ýk@ÓqXckgn¥¦È{‚¿•y7Œã	âMW 4¥ºx^³â@BX¾:JGæ+Í<üT³ã£¤oÿ\0ŽãúS†àix#Åº.‡¥-®¯á‹ZI%2™Â@U@@õï]dÿ\0\ZâXŽ–<²0ùB»QÛ·Ë#n8ÇLWŒ?6)ÇCŠŽ7ê3q#lQ€AÎ+t®ô\r{ÇV7öF×ÃÞÓ4¥•d’âË®+\Z÷ ç=«‰¶»½X®`·ÈÎè´1n¹«Ï\"Û]¾é@T©ëL‚S=ãÇkóÊ@%Q	Å;ö|R²ðÇ‚4§³ð½¸‘”ZÊÐÎ±™Z%Æö\">I9<ç©äÖÄ/éþ,ðÉ¾ƒÃÖº}û\\£Mr¬¯$T¨VmŠHÆÞ§øEqk²xËUÉo¨0!Î\n‚	5JÆx[F›Mœ¹óÍVSÏÒ–Â.ëPE¾–dýà¹F›“€=ªåÏˆõh¼CWÔE›+[>Òû<°6ìÛœmÇéŠeßÙ.4=âê)gŽæRˆØ9ŒžÝ+Öxµ/\rý‘Z0YÚAƒ÷G\\~¯qùrneU,ÅTt¥{Ýÿ\0Ç8/¬ÚÛRðlsÛÊhn.ƒ#Œ‚	S \Zñ«-Bí<>¶°Ï6î$Cs}[­Tyd’$ó&’R€\"³zÕc=‚ÛâÇ‡¡1Moð÷LŠh\\IVJ09¤CÁ½uÞø¡$Õ4ñ¥ý†K%Irn<Ýàä6®1Ç¯ZùÕÚQ\n3>wp¥uß%òþ#êp1\0Í¦6=Èt?È\Z‰¯uˆîügá=[^Õ\"ºÓ¼S}¤BˆŒÚÌŽþyÁ§jãáL\\ý·íŸð•Mö¿3ÎóþÊwïÎwnó3œóž¹¯bcÍ4šÁI­€ãüá=WAÔå¹Ô|Q}«Âð˜Ä‡Ú¬YNî]¹À#§zì¦ö¡M+Ü\náíí¿l:>œnüÏ7Ïû2y›óÛ±Ùç=sW4¾,¶ÿ\0vG­L‡T6(¹OîÊQHÄßcÔ5Û}O@Ô“Ãí\"0¶V¡ì¶[(Ë‚Ccè*”ÿ\0µûˆ$†j’Ã\"”xÝ$ee#eäÚ½Kµ-W3œð?„l¼+¤ÛÛÆ–ÓßF®’_-ºÇ$ªÎ[òp8Éû¢©xÏÂZ¶¿ªEu¦øªûG…!-ÃífÇw¼àÓµv=¨¥~ xØø+söß¶ÂW7ÚüÏ;Ïû!ó7ç;·y™ÎyÏ\\×gà¿	jÚ©-Ö¥â›ýb„Ä ¸µX²Ü»s€GNõØö¥íO™°\n(¤íHAKH¢€ô§Zÿ\0¬qŽÂšiÖ§êµPÜ=¨)GJJéBP:P:RŠ\0(é@¢€RŽ”‚œ´\0áÒ”R”¢€t¥((\0£¥(¤)Â€RŽ”‚”t \nQH)GJ(éNÑÒœ(E(¦Šp \nQH)E\0(¥ƒ¥(  R\nQ@\n(((\0¢”R\nZ\0-\'jJ\0ZPŠJJ\0-©(Z‚€QŠrpÂ¹mY–Úîíä`X’k¨SÈ¬]W@žûQvú¼–gº,!Á>ù52Õâ_[:äJ¸4å»·<	“?ZéJÕ”\0|C¸ÆÉ?Æ”è÷L>}R\'?íY\'øÖ^Èw9Ñ<G¤¨àT¡”‡_Î·Î†Ì¸k¸	ÿ\0¯Eÿ\0\Zlž¶\0Óm=ÊFhöAs`ô¦ãÚ¶G„´ü“ö«¼ÿ\0¿À¤ÿ\0„NÛ-ýØüA¥ì˜Ó1ù t­qáh×¦¡1úþ½!ðÓÅæsOÙ0º2…¨|90-Îqþ×ÿ\0Z£môt™Oü\ndÂèÏ¥pèš€<#ê)§IÔGDòÿ\0\Z^ÍŽålQSEx6ùúTmÚžÙ¿4{)ÆàW\'ñLÅ=l}ÿ\0*êXÜ¯KIô¬iÚŽ³¢EmagºtrJ»…ú“õ¡AÜižs)Ýn˜ÃQÅ÷Ò´%ðÇ‹Q¥BvŒqr‡úÔ) øž5MR@þ	¿­_³eÜjô¤n†œö\Zä_ë4+ðG¢gùT.šŠ‚HÔú˜ü){6GiàFýÅÂý\rv6ïêÃÑ?¨®À“2‘<RÂHH…v\"doëpÇ–{õ¥f˜îPø–Á´/\r?ªÿ\0Ž×2¼þU«ñ\"õÃ>,ÀíUÝíòãŸÆ±cº…•H‘p@ïD“åH‰êNM+Ê‘.dePsŠXôË™î¸?ÙZÛðw„,u½u-n•®Y¬Ø`œãðÇã]qK©’W9gÖlÔ€²3ÿ\0<Ô·ò«6O¨ê®™£ß\\ãø„dõ\'¥}#ki¢hW§é\ZE´S\0yqÍÇ¯Zè$Ðà–ÏýÉipÊäb0qÐŒâªN)\'aÙ5Zx\'Æ—›wXÚØ+tiåþBº}á*Í2x‚ELó\r ÿ\0õzóxrV´·k›‰¤’«\0Hö8äÖrnD—Q|¡?ñzŠ•Q­ŽoIð	b›G’êî9\n+M,™”díb7qÆ3Æ?•|ßñF¾\'j–ZU¢[XØ*Åi“¹±¹˜äžä õm¼¦ñ¦-,QNC`±ÆO±õ¯›þ%èGFø…o5Â ‚òÔ”Ÿqa<›É%‰þ.qaëYJü×cWnÇ	8 óZÕdÑüSgt¤í‘„R(þ j…ä-ixÐHÆà~´í2xm5í6îõIµ†Pî1ØUÅèU¬ì}=ðÊo/ÇV¾b¢\\ÚŸ½Æp	¯[¹ñ6‡bªfÔ î!Ýü«À­\ZÖ]VÖàá¡™IR½×á]UŽ¨\\¸þÏÑ®Y[îÈñùjGûÍI.mÉ;Wøg¹š;¹9Â€õ>Ÿ­cjž5Õ¯åŒØÛÇcg ¾$b*„ø[TQµ+Ý/MF8ýì¹lqÓ±ëëYÚ•¶•fðÇk®É¨Üy„J‘Å…Ž ôê1×¿·.ÑÇ÷:®©¡™5=AæŠU„ \0§‘Yè¿7N \ZÝñ{éòøSV†ÇH‘¥6ä‰f”ðGB\0=G_þµcØC+i¶\r+/šÖÑ–É\'hÍTIØba$Ïzf«\Z\rê«\n*³§˜vŽ¤w©ÌJ\\†’0«QÜMov³\\BªÑ0åÇ¥P¬xòÇ\0o\0’SS@ø\0t¨à’ÔCk˜rc—qQµÍª·Pÿ\0ßb€&¸Ã3{ÖÃôÇzýÇQ–ãñÜô­‹ë%9pœr~j‹Á¶ ]øºöÜ³ÆÖŠˆÁz’r@ý*À·:¯©]\në3ŸÖº^¤\Zçô0SÃÖD©˜·æk¤Ž	•IµË\'©,ç/Á\ZÝ·ã[ZS|²/¡¬½JÞE×-›a\n=~•sM“3!ëD˜™³Õi«Á)âõ¨a*ž*¼MÀ©”ÐÊzT€ÔJzSÔÐ#OJoÝÎ¹èA«y¬ý,þöažª\r^Í&!sFx¦æ“4„;4g¥74ž”\0ìñJ¦™šæœg#Ûâtpp&µOÌÖû¾ôcŠè¼p¸¼Ó&õW?‘ÿ\0\ZÄu,¬£©R8®šoÝF‘Ø¡&›nãçÞßVª²éöÑ`¢`Ö¥·üyÁ“’}Mcß^3ëö–‘4Ãû¨æjÊ¡AÐv­=…¿	Œ+@Oâ\rQ\'\0žôýàý¾Üû”þY¨’º\Z:õGÔs]˜\"K{yñÆ§ô®2~co¥uºcyš5‹ùçÈ‘\\¢©²$Fi	Á¤ƒÙ¤¤£4fÅ±pžçòp¶6wÚ¶šçþ=ïf‰»nÚæ¾«¶Ê§=\r|ùâ;U´ñ×ˆ!’Ë¦¤÷[˜rÊà0Ûœ×V\rÚ¥‹‰ÎÈî…gŽFó£ÁS»G#ë_GYÞGªiVZŒXÙu\nÉÁÎ	ÀäW…Ë\"‹{ô[t?iPÇ1àç\"½àæ£ö¿]é’dÓæ,¹ÿ\0žnI¨oÎºqPn)ÛcH3¯\"˜EHÄzÔdóŒ×42¼J¿ñ)WÇÜ•Oôþµç?ãÛªÙMÿ\0=m€üUø×¥øwhWcº€Ãð5çŸ\06Z<ç®$ÿ\0A4“³@pÞ^ëIœ\0ÇùÕQ-µ»¡{7œžìøux3ö³úVuá\0\'\\gŠèCov`»7Ã¢‘‘Šy½»}Ræh/gˆÍ\Zï1\r½;UXHé€iñÉ,s–ƒ;º`äSoMQ&…«F\\ÊVU—,rO<š©`¡îÑ7S¦jö²çLñRÇY	µTô\'?áU|Çw«Gq·Ù3‚rsš]ÄÍY€Ðº²tõÏGMbŽq@,(Y±Ðf­@þ]AÐ†h$V-ŽÙ¨ü1\'ÚTƒ\0?Z]y™:<8B5ÎjÊ’ÖQ9Fò²UXŽ	j\r&êeÑ.¬Ñaï–%2Ü€úqV#’FÓ’&´hä…ì	«XtÛÛ­0Þ!·[X÷¼À1Ç\\-nü$ò—ân“8œ™gŠxÌaxÀ‰\'ú{W=m-ƒpÎ	­\\‹/xrQÀkÅ‡ï‚ŸÖ“Õ0>ŠaÈ¦S§âWä\Za®@:\n¦ñÅ  	TÔ6§w‹ëµª@zT1|ºŒÃz hßjPi” ÐûP) ñÖ€i€êâ›šPx¤æŒÒfŽÔ)ÀÓ;Rƒ@N¶ÿ\0•ã¨4Âx¢‹ˆþµQÜÝ©h)Eu!\0¥€RÅ\0½©/nhE(¤\n\0zô¥ÕéO\0\np¦ŠQ@\n:RŠAJ(¢œ:SGJQ@£¥ ¥\0áJ:SE8PŠp¦Šp áM)Gj\0p¥ÑJ(E-4RŠ\0^Ô¢RŽ”\0¢IJ(E©(í@\n)iJ\0( t¤(  t¢Š\0;P(¤Z;QE\0QEJ(íH(hP(((”\0RRÒv íI@¤ É£\'Ö’Š`›Ö—{c©¦Òv C¼ÆÇ4Òùì?*)1E†!z¢Â˜b±˜Sò§â“µ!û-±ÿ\0–*>”Ï±Ûÿ\0eú1©Í\'jV¤šu³ãw˜~­š®Ú5©È ÏQ€sZ&’˜îÌ©t9RAˆ¿tI°OJ­\'…ô÷ûÖö‡þØ[¦›Ú€<iZÓðmÓYxÆÒHŸd’asœóÖ²òkKÂ:…®“ã&óRPlÁ(XòpƒøV°IÞã[žÃêYüMX.\0ÝsjªŽëŒW{^\rñÅ¶Zˆ4Ÿ[l’Ò0cóG#¯\'Œà?\nò¯þÐ~&×5IÃ‹&™¦\'.píîÄ‘Y·Î•Š>¤ñUÝâÜµ´€‹˜‚„_¼9þµONðµÊOièìjèãcœã£jðŸ‚Ÿ¢½ÕâÓüC2Zj·Etùd“Œmlž3ê?úõî:ŸÄ_ÂÙké$‘>ïÙÆyöäf“\\»×S¥M²Ò,î%³·O1¤]ß1ÈÏjà<mà­#ÇžÔ|øíôûØ™çŠécæQœ•ëïüªÿ\0ŠæY‰Ò4†v#nù‰éôâ¼7â—ÅŸj2ê>³i°\\ö¹ B®Ã©U$çž„÷Á*_˜]õÅôŒnd1p1¼õ;Äf…“\0‚*;X#‚FF*â°åªZì<!ã4Ò×LƒSÅöWù.¢çhÆ9{›jš†¯j·k²ÜØÈ2¦	0¤zWËLCðÃŠè¾xŠ_\rø¢Ö&¸+¥Þ7•23|ªOFöª²bÜ÷Sa	 ¾\\ÿ\0¶I«Æ‘ \n RN›$ÀäA¤Q‘@ÜöW(KF@§æÖöò}‘%–+)Xeƒœc·ê œw<W\'ák‹ìë¨*–÷2F8ëÎ­TDsRKXéxõÙ!¨Ì…;ãÒ£\0s›9\Z»¦¸`F[½5åy>V?+~´ÄyüÚ‚¼`Á-› éäiÌk2âîæHÝ<‰ÎGU³Û]TWß`µg™˜CîŒdŽj[Û™Yƒ‰k.F}\rˆðþ€š†¡uö÷kåÛ=ÆéWòóÈ¬»ùX.f…%\\ºD[oÐ€}ëÖ¼#Ï¦xŽúgs5µ·”œðwg9ü¿Zç#Ó\"Ó|n\"sºþò$`ýóYÍjtÒÄ:qåµÈ|7â[\r3EKKùæ’e•œb6À™¨¼aqs4–WóIy­Ú°…YÊ\0àù&«ê·“Åk, Fa‹¦Tdwë^Ã{¥Xkš.˜Ú”>j½´r…nÓ´¬åMZäÓ«É?hÕÏ´2¥Ô\Zï\"EÁrÜò:d×£X\\´·îàðMlÝh–÷zj\\Ë,ŠðÆÛ€\0œ•ËèR“²F¸²jÁˆ¯íšÒÖ:øœâ¥ÝœUx¹2Ô„ÈO*1â CÍH§¥\0[BqR)â«ÆzTé@‹ºqÅÎ;Å_&²ìÎ.b=³ƒZmÁ5,L\\ñIšni3Åš3Ò™š3ÒÍ\0Ó3FiŒÄñ¸`±”ÿ\0Ë;¿ššÃµé]‹Ô¿‡%8ÉŽDüxë\\d÷ßfÕ4•gØ“Ìï:VÔŸºi\rŒÏj)qáËù\'oøò¾¸FöPwækÀ·¨¶»­Mþ¶y$Ïð.3·òÅgxn±Ù|GÓß\"H¦’EÐ—þU§ðþ&ƒÁqÈÝnîaþïÝÊ´½Ùfë)4Ç	«B¾çùSAç[ÎXomæÜ\0óTPÐÑÙ¿ú¿Âº°—ÃñzÇ#\'Óœÿ\0ZäÜ1¶E=¸5ÔøU›LÔ#;&VB1ÿ\0²šåi¡TøKÒpøö¦ƒR^©ŽEÈÆzT Ò0\r&i3Iš\0z0¯$ø‰á½bëÇw×še¼sÅu-þ°) ^‡é^±ž8¥Yz7ZÒ•GN\\ÈhñKox®aÆ›©ï%Â­u?\r¼­xo[½½Õ§“-¿’#‰÷†É\rœñŒ^€Ò1êÆ˜Äã­iSRjÌ¥&¶\Z\\sûˆÅE @ü8šcž+ží‡33uDó4›Ô“cò¯;ñŠ	|\'fýã¸Æ}2§ü+ÓwC2c†F¥y¶°<ßL˜ÉY‡ýõëVÑç0Þ¿|€j•XíuÈ=i¦däg \09?CJnaŸp2:]PW)‘\"ìåQsšeÆ¥qèí¥ç†*£4“LÁ]\"Æã‘LhBÛ«mÌ™Á§bKž‘-›VŠglÝ[ì\\ó–ç©«zN›¥É&£{ö$	@¦pX“þÍUðí«ÝjÐÀJ©fgÐTZ-œsk,â\0å¦1=@ä\n‡½€ÐÒæt­SMÚÍ%ÊƒdÓ4{y´{ÄkµÇÚSf7SivÏ>­qUVÜ1 ž£i¬\rÃö¯Ùðš„ÝZV*.=H-@ŠK¸×î‰ÔfŸü’(ã“O·Ûgª]G%²Îvl\0¶\0>´¶³Ê‘ÜD»BJ¡\\mÉàÕ-„ü‰ôË[«÷’;(\ZV\\Çj‹MÅ¶·ey<ÑÂl/b©9-µÆqùgð¤´Þ®ê²HŠÀd+š¥¨ÄÚ|•ù²zðiõ]ÿ\0RqÞ«‚)òÎ·1ÛÜ&\nÍ\nH±P­F5È!Ù {Ssš¤€ñQg\ZŠÍñŠŽ.­ÎG Š\0³Fi¹àRÐ!Ô\nnhÏ\0ài{S3@=8 çŠ74f€ÚMÍ\0Ð¤RD±Ÿö…&i¬pTú0¦€Öï@éJzšAÒºÐ…\n(é@j P(\0”P)E\0*Ó…4u§PŽ”¢t¥\0¢”R\nQ@\n)E4S‡J\0QJ)( BŠpÅ4RŠ\0xéJ)£¥(í@¢š:S…\0(¥ƒ¥¥ µ”\nQ@\0¥íH){Sh”¢€Ò–P({QÚŽÔPŠ;R\n3@E\'jâ€P);P(´v¤P1h¢’€µt¥í@”P  P:P(\0¢ŽÔPE%\0ÐE(¥4Æ4\n1O¼P\"<{R`T˜â“m\0GŠNÕ!Ò(3M4óM4i¦ö§”Ó@	Ú›øS©´âÈ~oÂ£»hÄ¶br¢™RV=OÒäTÓFÒRY—jîÜ§Þí¨-oÚ{SÓEÿ\0‡<%¡²ImcÚ§tmÀ³€qß9ÿ\0j¼@ŠžêÏÏÖf•îÕdœ–i®±cÉäÔ—ºEÝ„1Éu=¸÷\0<°õÓrÛ2.Ç\"O+\"‚+Þt­jÝ&Ê{H|É¤ˆúC^s“sÅ}Kû!ýŠïÃÉ<IuáK $.NyüGùÍu8¥fÎÓtífòáàû¸5ÀÙ‘êzñï‰š¾£ã†ŠÆh§‚Æ?)çŒq#’w`÷§çŽµõçÅ­¥ðŒ—Ë#Ù“#Æ®IhˆÃŸoÀ×Ãi4w:ýÔPˆ¢žwt‰zF¹8QôW%Û`Zçi!˜ŽÙ àý*ÈY~5b-î\'Q^À^ÕÆ~`2¡§.ðT‚q‘ŠiØyøc®Ç®ø\ZÂY&Ash†nAÎkn]wH·`²_Æòr \\þ•áÿ\0®ìÿ\0á)›EÔâY`¼àqæÿ\0J÷«[d€”µ·Ž<qò ÄVTSÆ–Ö7¢l4î¡BPZÊ´1[ëZýÄ—6i2È’ºà’GÍØgžõ½u”&KûÛ{t“,ª¿Ì×\rmâ.?jDÝ+[K”°ÏJiê&m;øô4Ùîa·‡Í¹•bŒ71Ç&¹{¿ÚE;ª+ÉÏP+\'P×.u·’/1-floãÇoÖ­ì#júkh$¾i&Hà,»‰È SjÆÁY2•X®b·Z[K*Ûý¡ñç´\r™IäsìjÂ ²Ò­â	${T•IÌ œ€~™¤[á@ðG‹gSó´Š€ç€çük;T|5¡©#*Êç˜?ãLðÕÔpü,ñ2³ÿ\0¤} ³/}¥B©üIý)5†¹}+M·³µšfÇ»`ÎÜŽk9½CcœÕœKgzëÛwî6#>ÑOsc8ÿ\0tWˆjZ~£äÝ*é·AY>ñN:W°A¯èÖžÐšûP†ÑZÊ4S>P3\0úŠ%°_M	¥V\Z¡Ì!““ô5ÀèÏ˜­Î06Ž+±\ZæŽÚ+ Ôaf’7TÚs¸œãÇi‘”´‡pù€æ¹å¹,ì 9P}ª`yRÛýZý*Êö¬‰&SR)¨V¤S@¡éV¥USÀ©ã<Sf6Úê}­V?1üë\rjg P)11Ù£<S3Fj@vi3À¦æ“4~i3MÍ!<P2ŠŽ<\'¬¾2c¶y1þèÏô¯ø‘¥—‡/`Ñ\\	SiÉÆÜçó½ÂuK‹YíæPðÍ×ûÊFüª…–…£Yˆü2Ì2ck4aÊã‘‚kJm$î\\]‚{ý~û^¼Ò4}FâmFÑ &*dr8ó]ï…üâxü=ac-”&;šâq’KÑr{×ªIy.0éPù’6	sWíRØ®dr–Ÿ‰*Ú¦¹)Èù£µˆ(ü³ü«N×Á¾µd³–õÐä=ÌÌß  ~•­ŽrI?SJb¥Öl\\ìÂ8|»}2ØF:/– *rÝËm³†ÞÕdŒUd<S‰â³rl—&Ç¼“K´Ï+HGLö Ty¥‘#óFi¹£4€uÌÐ\r0HqŠ@x¥×œRc!séQ1«Ò¦Ò¢üÃQÖ¨}–ùË3[u<\rÂ«•Úã·Q±æ}«Îï¯†õhÏ&\"ñ×¯HŠÒñH-lÝ}EqÚ¦«ÖaI»•.]†5%³ŒsÍR‹fñzªÆÎ.c^KÏ5ÒkšÄ~3¹ðÆ‘á?\r°Ö ´‚Þ{¸–á£nÜ€€rXó€3€*†¡á›‡1xcYÇ@E£‘Óé_G|\nðæ™á_EuyvZä¡ÍûÜ`J€1Âàò ­ŽùÕÙT®ËlùUµ¿Ñ5‹/]±k-AÌMÎGª‘ÁâšÓA89ì+Ó~1É®ø÷Å–O£øcRM2Àà¼6NZpÝ\\œ}ÞÑžç¦xâ|aà¿ø_TžÒóJº¿ˆÃyi<r/¾3´ûgüi½®É¹owskwÝ´¡.Ÿœ®qøT$Œ$q#åÎY”íäý*–æ¶M:ù<î†)ø Ár¿/üò=ir /i—WVwÙÊÏÌ7§ëEÄN·E¢™\\V}¶§ÛOÇ .\0å\rZ7±I `&Úc\nHCÅO(ìY•‰Õ7\0~e*dDŒ¡NGJ\röœ²—7% ÚvÉôã¥%ž³dn¥n9\'ŒgŠXD²y€\0\"’öÆy#’$RÒÈ‡\0\ne¦±oÚJ’Ç‘Ÿ¿È§^jñ\\Ï$v¡Ù1ò½±O•‚>†ðû—ð®‚ää›Aú„úUÌ×;ðîãÍøy¡<óÝ9>’0 ­Õ‘Oñ\nä’w(9Å(è)ïN±HÚ™1Ä1=\Zœ úR\\#lCƒÃÒ“Fx£Ës‚óíNò%=Ð!¹ã­\0ñHÊW‚0i gŠ¦f”\Z\0vhÍ4Qš\0p<Q“ŠAIš\0x<TrŸžüRæ™)Äl}© 708> RŽ”È¹†&õ@iã¥u-„£¥ ¥À(éIô PÒŠAJ(GZu0SÇj\0QÒ”SGJpé@…¢š)Ã¥\0(¥t¥ ´‚–€Òœ)´´\0áNÁN€zô¥)¢œ:PŠZAJ:PÐ(PŠ^Ô””ÀZ ¥ \nJ;PŠ))E\0QE\0Q@é@H( PÑH\r¨{RQE\0(é@¤íE\nJJ(h”PÒv¢’˜!8 ÓM\0H¤œT±ŒÖ]ë9tXædçm@AÈóëš\0ßÇi‡¾p\'oÆ>ä$ð¤×œV:ÝÜƒ‚iEäàóë@\ZøÂ8¬Ïíœ²6\0æ£_X’¨]Ë“… \r&¦\ZO00t4›©€†ÒöÓL=))i)àÁ˜ùÍsõ=J->ÊÂÃÌn˜‰YrŽËô©<Y­\\éw–ðÙ²¼¶3V«6·qi-ö×”§Ë…àRzÖ\Z$’O³¤gƒ.X¥tÚ·‡W·KËÍUmí @Ÿ$%s[û\'ŠVh”0ÇNô³]Á\r¨2¨ŽJc½+”s‘x/HHÑ]\\ÝLˆæ;GéV<ãß‡¾#Ž+)BYÝ8ÞOE×ÔT÷šÌoÚÉ\nÊ›K7ñjçüg§Ä×V£cruïZÂ£Z0GÙ<]>‰á[Ò­GX+mlò\0b]ËÌŒ9ÈÁéÈçœŽÃ6Q~Ò¡ÕöLé¹NAÁê¥lj¾!ÖáÒ¬a—S¸•à\r¾ìHA~gó?ŽE¤^D\nƒê}Íd·\'Ç©¨¿‰°2jCÓÞ˜‡ƒÚ¨CÑ[9\'Õ0Lã-š€Hr8ÇZ˜8\0hµ«ÍgªAwg!†ê$€àƒ].©âêAÅÎ¹<qƒÌvÇË\0~ãë\\œç7‘ ä4‹=3]/ˆîl »-¦ÛÎ\"D`\nÛG¹&ª×Ü¶’óE\Z”³¼óîÜÛØ±?‰§ÜÍÊ,B7Â²ôMBãViÙ‚ÍæÇ­kÎÐºD’Ïû¸Žˆó4]\\lt6†9­£/ïÅK&2@Ò³-µ8a	ç£‘ý×K}¨*À†è7Š¢K£Pû>©fäü†&ˆÖ©ê÷ž|ÅòqÒª]ÄóIm,(ÎQ²Ë‘Ò •¤D&t*3ÀôØðéø/Å§®LQÏ?áZ¾1Ó¦K_Ec4Ë,H²r<Ï—Œâ²<$Ëÿ\0V¿\"ô{´_ÉsVoå‘<;áéw±•-Uby7*æ\r¦¿æø´w>}Á˜Ù„‘Ü)`Hê¨®ËÅúJ_øOK·º²…nàIÝÉ–=¿!ùWŠÛLÖ^+±¼w.Âõ&gc’Il’Oã_DëVÒO¨ZE\0°Ÿ5·zf¡è\rècêÖRA¯h–‰8[[{¢hxg\0‚AZÑÛ¨cŠ§ªïØè-Ì`#œá»þ_­n:Ðb²—AIÜšÛî-X}ª¼\n=*Ö8³ rÔ‹Ú›1OaŒREè*h@‡Š‘4ÄY^AúV”G0¡ö¬Ä=*õ³fö4˜‰‰¤ÏÜÒÅHŒÓsIš;4„Ò”„ñ@IÈ£<RIÇd™Í9OËHyæ›¸ñÅQÚ˜>ÔíÔ„\0Nãyö¥Ï\0ðh˜\r CóFi™â—<SÙ£4ÌÒn CóTïÜbC´ÕjñÌ–Ç°•08¨ï/#i#ŽãjÆì€ykÆ	• ÔoÁÿ\0‘ÿ\0~“ü*¼ãmíàÇü·r?ï£I^ôiÅÅ6Žg\'rÐÔõÒàßµÿ\0\n‘5­UHÅÏþ:òªŠ~ÆŸasÈÔ_kÇÚ	ÿ\0°þ´ßííDÉ½›tƒ£åüš³aO±J¬ÖÌÎñOÅý_ÃºÛi‡Oû[ˆ–MËw*ð\ZÎ‹ãÞ¦œ\Zuõ\"íßùšä>\'ø¸jßÞ°Cÿ\0ý+=ëÍª”dÒGm97Ùêñü~¹\0o³Ô”û?ÌÓ—ö“ Ô‡ÔEÿ\0Äšò^:â¦ÑôÝS_ÖKÐ,¾×zÈd °EDÄI ÈüêS]‹µÏ_‡ãÔnù§Lÿ\0Ï@¿ÒZºÅ×Ôà–K0.#‚¹!\0RG\r¯?„’Ø4gÅþ0ÒtÁ*e\"³Gº•Žq÷@ü‚y­§èÿ\0¼5¢;=k^¸;D†öqi#?0Q‡Ç~A«„ Þªä¸»hÎžˆÖr²­Þ§ÌÝ0öqJ mé7k,>ËàK	TŒ‰fÑcÿ\0yœ\nãÓâ±FÃzV•¤t\nö¶~d„z?ð\\þµâmsYÞºåÜñ¹¤×-´dM©úVŽ“ŸÃ|ÉO—vzåÜ~\ZÓ7ÙxÉ×¡),Ãþ\0¤šÆÖ¼MðîÙ%KoØ^Ê¸Ã6Ÿ¢0>…þoüv¼‰VU<âŠßybQo¨šFœª.}M\\pWø˜:«¡Ý]üOÑ´··‹À–~Là´)orÜŒö%}xÆ+fÏÆº…úo°øCªÎ¼|ÑÉ(˜Œ×áwßñ;áó8Võcç§úÔÿ\0\Zûr°œ!ãkšEÝ&|Ç.³ãY×\ZwÂy­Ø÷¹y\\%©­­¾/ÝFM¯ƒô[Uÿ\0¦´Á¦þ•ôµsBßüÌ´|ÎÞøÙpÙ¤ÚE0Ÿçº¬Aðûã5Ð+7‰4«Q×æTÿ\0Ùb5ô…ý¢µ”WÜ+#ç~|V¹í;´Oúã$‹ü£â¯„¿ôj\Z¬ž;¹Ÿìp´íw“)eQ“‚qÎ+êjÄñÄk/‚µøÜe[O¸þýµO´v¶Ÿrÿ\0!ì|ïàOiš¿‡4´Ö®oWU Å,©äf\0’;ãŽ}«µU°`\n_]ïjÜþ•ò÷‡$Q±PJLGáº½([ÀØe@â¶§‚EtìsÔªàícÖ6˜âþ_ÆÙ… Š×ò_øL+Ê>Ïår>†ž¢DÆÉç_¤„Uÿ\0gx…ˆ=OË€5cõ8£ÊC÷omOü¼À]^¢á/î×é)£íúÆ5[áÿ\0mOöt»¡¬DOO·ià?G¥ò$þôgþ+Ë[UÔÕyÕ®€ÿ\0iþtëm[Z™ÂZ]]Ý6:%²¿òZ——Io$R®žÈôóƒ°üS$ö°ÛÚ¸èl¼`Ñ¦¸´±€™.ÄIÃm9µ;+2E÷ŠþEh4ûUoÃpýEsJ„c§5ËSo¡è¶‡6väÿ\0p\n”t¬¿\n^Ã©ø_O½µÝäÊ)n§k²çô­J¥¢,-\'QJ:S\0¢“µ-J);Rö \0uñÒ£iàÐ‡JQM Ðâ”SA¥\0áNÑNZ\0QJ:RKž)\0QGj`*Ó…‘÷OåK´Ž¢•ÀQNÑN(E8SE(é@J)( R”¢€P)¥\08RfI@KH(Š`(éGjJ)\0´v¤&ŒÐçŠ;RQÚ€4”Üô£4Àp SA¥ÚŠLÒÐ1(RfH\r&h˜š3MÍ.x \0ž*\'\'&x¨Ÿ¡¤i†X;Tg5^ñÜk°Dùm\0m¾ù?áV)€‡8àâš	§6\nÓ\0\0à9ÍúÒgŠJ\0tgæäu®jäbWãŠéQÕAw8DRÌ}\0ËO*JdxÎT“ƒC)zTÎÐ®æ\'ZÕŽLŽkGlÛ¯Òµâ<\n”\"Öx£5\Z·àj„/jJ;RPË^0‘!ñ$^mºÊÒÀ2x©¬–h-¥q\n(26·ANñÅŒ·:}Ü\'˜²¬\0ìMI¦H‹\rÂJ–è1ÅMô)éÌÏ ¹i	ó{UæE–Ù„ñ»€+#™b ÎwãƒÐf´¯\"žF‚@ä,\\”=\ZÊ†Ú ˆ³\rÁå‡¥eêæo\".ìŽkJå®\ZÙÝ¢U‘›\ntµ…©ûEª»!†æ#\"˜¼II§2BÛš&ó\nãµf£n[ÈÒj!y„{Z1	%±Œ×-~èf„’6˜€ãã­0±ip.8â¨îZ¤PœqP©éJeTêFhÿ\0…lPø…£XÈ\nÃ$ê\\¯]£$ÿ\0*ú\'û;ÃÑ††âÍnb-ö¦Þ¼²N+Á>\ZÏl> ÛËu)‰VÝÂ>F?‘5ÚøßZÑ´ßêÂëíšÎm“sAn¬>ƒ\'ëŠ%+h±ÎkÚÜ~ ñ4“é¶Öö:-™k{HmãTVù˜ãÔóøýI­vYcb6ìR³.@êEgiIäÁ)‚\0Õ¡=êÍms\0O¼…KV7irA£o,5û<°û­¥c­0ÛhoËx–ÁO|é­Çþ=X1’aŒ>UÛAtÒŒîk}*Õí|S§Ë/U‰¬ä@ÇÓ9¦¿•0ŒË£ŒLœVAEÇ R®Ò¤‘ÐqÅ\ZS·ðÜIÃ[Ê’µ±go8çòü*Ö¹µ|7£œ®ÔÒ²Iè2k;ÃŸ»øM9è^þV>äþµhx‚!sá›8\"c!\ZR!XÆã»8¬å¹Lò=y<¹#•O£qÛô–§|és¤KR·ÑF	>ƒšùÏV³¼`Iaz¸Ë[¸ñ\"½»O™®ü5à¹Ümt†5mücoÿ\0ß4KPèhja×â’*©ˆ(Ppk~^¦°µ°#ñõ”§î00 Ž†¶\ZerÛNyíXK¡,³Ý«\nr‚ªÙbUr¬¸A–9Æ>µi#ÀdlŒà0<Ttg§ê*¨<Š°­HB©Æ*U<Š„õ§©â˜‹qœŠ¹lO–G½gÂÜÕØQíI>i3MÏ€ñRHâØ]å¾ß‹tµÛž²–ÏéRïU$Þ@‘œ(êqH%ö°—·ëLôô@DÐHwîô\nzÿ\0žM]´º·½ˆIk2¸#•<2ûy	bÆµPÕâ‚ñÚ!/@Ü“ ù£nÆ’\\œRdVgö”ÖvÈuÅŽ<­u1ûÃü«D©\00!‘†CG¨§q¡sÅ!<T\"êßûLéÞhûhƒí^9Ùœgó§nâ€žE.xëQæÔ“4™â™º7~x£uDZ6E\0M»Þ—&¡QóVˆ<máïê±éº„÷Fé€-åE¹c¹$Ó4\\GGœŠ¬ÍcÄ¾ÑDÚzÄ4ñ‰bUÙÔô8PqŸzÐ´¹´½µ6wQ¼;Šß!VT©Á=Í4ÄH:U=K‹mßÝ`Z¹Ž*ž¢7YËôªÕ—ËÕî“=Ã~c5\\š·¯øžÌÃ£ÅËÒ©ö¯zŽ°LåŸÄÒL-ŽsHg­h\"\\ñ@ô¦ëNS“ÁÅ0<Çâ=¶>ºrÿ\0èoþÏƒ‘]Å^<scï¦/þ’¹¼ñ^Mž…á¡Mu¿ç{Š¶q®6]ÚÏ:æ¢¹ûÖÏÃ›³cñCÃS÷\"Â@Sÿ\0f¬Ñ©ëàUS*„\")+ÆpËÇäMyôVñ\'*‹œzW¨üX‹~lÇ¤r¸?Šÿ\0²ŠóÎcSê+·	ð³\n«è\0\0¨ß­<ÔdƒøWaˆÃÒ˜Çµ<Ônx¦k)Ä^•NWú²é_yWÀ2¯4™3÷o¾ÿ\0¯;¤¿¯#²›¼BŠ(®bÂŠ( ³<MÚ<7ªÅÏÏi2ñî„V#(e*À#ôùß¢ü±ÝGÝ&aú×¤iò‰,áaÐ¨¯9°=GTˆõ\r^ð÷Ko´öÍvÖÑÚÄ²1E˜GúW¥‡¨£Èå¯)hXgQÔP¬âIvé,ÒD…Ïä+¤ñ\Z„RÔK¤ËªÍ0.$¼Ÿj(í=Gï\\íÏÄ=PD!ÒÞÓLˆg÷Z} \0÷ß¿ÑhxËü¹\n‡vjÚøg_»ˆJ¶Ik2d¼D\0õ óúT2Øè6n«ªøgŸ6Ú\\^q>Û€?¨Äê\Z•î¤Ê÷Ï-Ô‹œ=ÜÍ)ðòþ•QŒG•¼±ü…Qø\nÉÔ­>¶-S‚;‰|CáÛQ§xt\\6Ü‰õY‡Þ5Ýü…R½øƒ¬OÅip¶co“c\0ˆ£¶OärI/@*QÅG²¿ÄîUÒØšêúîúA%Ó4’cç‘¦oü{ ~¢—Íš2³Îî p	àPz^ÄvÅ\\a²3=£à¼ÂO…úbLOÿ\0¿…¿öjì—$tÅyÿ\0À6ÝàÅí§*ÿ\0ã‘šôœòx®W£f‚Š;R\nZ@´ž”PÐ(PéNÚQ@)A¦Ž”¾”À\\ÒƒMã«H	Ñ1¿?… ª÷™‚§‘Ò€-áï7ýóR&\\e#éŠÉšK¸ìäšÕYP#‘Äa½FãÒ¹+½kâ¬²CáÛ=*Ì+\0Z;¨¦”{X^ƒµMì3ÒÒb¹+…ë“ÅC|.¬ì®f·…f¸Ž&xã=€àWÏ%Ñµ»R;\rSY¸ñª«ZÚJò¬2	=:öéƒé]|	â/‰/.uÇÒ\" 3YÀDùûÛ¾P:›±šn½ã]bc5†±~gÊ£ç:Â½“ÃO«M¦Äš¤†âíMwûñÅyÖ¡àÏ\Z[-NÕ„„¹hË@êO|Ír—þñµêÍ-æ§wƒ•¼µ¥`?ÝÈ`\n–ÝÀú%[l€©÷§¯Ñ¼U­é{b·\Z‚Bq-¶¤Föéœ1ùëê+Òt\rnË[¶ylÜ¬Ññ5»‘¾3ýG¸âœfžƒqi]›JÂœ]_Š‘wâ´(¢Š^Ô\0¢ŠJ;PŠ  v v¤gŠ\0^ÔSsÅ¦!ÀÑM€ivi;RQÚ€))3Gj`-%š™¤¤ï@ÉcGáj¦­ªØh´šÊ+•iúë\\¯Æë½;ÀÂ[‡…¥œBû8,\'¯^ß­yÎ›g[A.ÏÞ²XœžEg9ò«•\\ôýÇÖwú’XÝØ½”’’!ráÃût5Õé^#láuíçü¸\"½~r0Æ•9óãÊËÁï@<Upiêõª ›4€ñQîÀ“5ž)Ùâ¢s@wÇ!µ#þ}ú~&¬’rxÁ¥˜)‘\\¨,î*\"pzP2BxÝÔgåô¦cÞé@cQŒã“FxëLÊÐî¿ëƒÿ\0è&¸Ë)iÊÃÞ»,ÑLŠ2^\'P=IWµ‰‚a‰S Œ÷©{Ž«EoôuúVÔ]sž‘äµSŽÝjÙñ>ƒor-fÕ!ûI`›-†éŽ*S7× §\nb²•‡*FA¥Þ©0ÚŠNÔSó?Œn%µÓ­e‡´á_éŠŒ^G\r»Ë;@™æ¯x¦/;E¿ˆÿ\0Ë6WËÜ´VúCHÄ¼Ž¡W\'8& ¤hÙJ\'°ŠW–D9/òžµ¥s=Ì–‘}“ÌGÌÞêµ¼8 ~à@$â­X«¤L¸a\Zœ(<ÐPj^]¼2Os1…o½sºš£ZÇ*.S99­ù¢¶šKÆÞç#qY·RZµ¯î†Pô@:R¸‘Œuî4›˜ž<M·\0ŠÃ±\Zý*K¹þÉ©L¼âE•‘ÌcR\"ÈùN*ÇC÷‰ëéR€{šŽ\"Þ¤Éª›W6M=vÀ¦Ç5^k‘^¾˜ i¸±¿·½²Åqù_\0àý\rXžæïP¸\Z”íq1çs\0:Öt²‡ˆÙ`VQ´\n‰\rKá\rÉâ¦7©;rÝØÕ]–b@è1ÎO)$øyO©Í/jŠÙ³úâ¤Ï½is&O§ØÍ¨®¬Ð: Ó¬šñ÷s¼áø¡Ò`¸ÕÊÚÝ›Þ>üƒ±FHõ5É´–í“îÝ[µ¼£ûÊEG¦Jté&’6 =»[Éî„r) Ðé¬ßþ,Ý“)9’ââOÔŠŸRÓ´M!!Ôo­µ)-VK’…ˆËûã¯n*O\'á‘þ?=¿ñö«cE’GÀÞ°AãÚ¦å\\ÝÒ!Óo,Œ²ø§VFÉYÀ\0{‚µ¥qc¡É¥Ci¨êš…Æ’T´ÂA|“Ó tëÚ¼gZŒ<<néµs…b9®ÿ\0Áîò|$˜–“|ärx<*vè\ré©è~Ð<7oè¶r\\EÝ’í™˜·Ð~˜¨>%¶£¤ø2ò÷Lt·žÜ‡(±m™\0óê3ŸÏÚ¼óâ_‰|A¥Mgi¦Ï.—¦\\À&Žkv!î¸nŒzÇÞ¬ÚÏp|?â=5[ûõm2	»›ÌR\\Å}8íþœÌ{j`MâÙ®¶­Íýí¨1€î\'àû\\\nÖøqwkÄ+ì»»›¨.\"’)Ùâe\0•%r{ò+«ðo†´Óà»I­ll×Stoô©!Y88ÏÌ=…lO¦k>–Æù3k wòÆÕ“ŒŒ{š¹Ù^)\rÏš66ä*ŒCHƒÖ‘¯-¢™äb;Tž*¼6Œgf—†,ªƒ¯µsqj7·\ZÕé4…¶3\"åTnÆk›”Ë”ên5(ãT1ÚÍ uÜ§ qKm©ÚÈšëlÀr%`?ZÌþËÕ&ˆHÏm+\n¹w¸À ž ŸŽ*h—¥ìóo´Å˜Jë$¾_œáJœqì)¨&\r#N=WO	\n\\‰gq•Ž%.Äc<íQÃãmIå³^€Ö“È;T^súW9ý¡emâ=\"ö›‹Ûh-¼¹Š¦ÆSÈ!F5Ÿ¦Z]jw·QZ åywÜ§k1Á8Ï?JµBV»NÂ´{ž©°Ü[Çqk*Mo ÊH‡ ÓøÅbx[K›D±¸‚{¤˜ÌâM‘Œ*øÏ¯•jîÍs=6!ÜK\"`(-¸Ó÷Æ±Ž~nõ_VÔ!Ó4›ËéÁhíâ2:ŸAYzMÓêÚ-®£#2I]Œ:Š›ˆÐ»¾X¤´Œ!/3”Fã<þU¼–öš‚Ú<ûï¥Êm$ãžIè:Ê¹ÿ\0jñYkúVžò©A—÷Œ•ÀäÒ¹Æ>)¾ñ<7V6ñ*ê%¶Z¼,¨€»Ïp¹éŽM$Àö!•ã’1$N6º0È`{\\õ–™¨išœú^—ªÏg¦ÜÆf´ffHZ<7b9?[×ïcƒLQ“X}%—.‡iä‘íU´]q®â”ýº-R80šÖ·û%\0Ñ{Ÿ½îŸã¨u=~úëè,RßOCç\\.H§<·OîŠ¹£xó@ÕoM¡{‹­ÛBÝ @[û¹ÉÁúâ¹?A}âi÷ú‘­Z_AŽIgƒÉP%Y[=y?^•»áÑ£x÷H’ë_Òá}fÉü›™T4NÇ c´ƒÛ¡î\r5~¥t;iPÆØjŒAgVVpÚÛ™®Ôó±Ó&¤˜Åâ˜›¸ B–æš¿(ç¦sFxç­4ò)…ã]k[Ò´‹›\nÆØÇfInîd\\\'²&~fúñÛ“^GâøŠm.%ñZv£$íþ?”±ÜB¦ÜÏÿ\0JöÝOO³Õô»­7SBÖ·)±¶¶t ƒêð¯ñÃÃ|––z¥¦¡jçÍŠâåÌo\0õõíúTsF:ÉÙwc‘O²AâI—6¦Ù’Qö¤,ªÀç•î3Î;×Kàÿ\0…ø‡wªêÖƒXkç;­áµ$äAŒpAQÔž3žµO]ð^¹¦/Û5‹ˆongo/}»´˜8ÈfÜ°ãëêñå–‘áÅ[­&ÖÆu›kEk7–$ã!¾n½qÔÖ´ç\Z‹Üw×.ŒôkI–îÂ‘ksh$Ü¦Éœr;zþ4—6òÍk*Ãw*vŽœýk:_x~ÞÙno¥µ‡pÒ–Fÿ\0dsúVV£ñCÂÒD¬\'Ô™GCh„~{€õ­T.f•Èuý>ò;È®.­ž(Ñ²õD+’Ä·@=Íy®¹ñÆÚò+=ºwp†êlˆÁ\'*õaïÅg|Yø•?ˆ„z.’×ph¨·ÚH\\·\\¾8\n@88ÉíŽwKÓ-ìmíâ´×\r†×hÏjîi((¡û·Í#³&»þÐšÂìÁçE)‹|q•ÒÇâÝ(ß-›Í*ÜØFÌ¨>çµfŸ6mxÜAi3Þs\r§“éVô/„>*¾¾}VâÙì¬îI™\n’L1ÈÊî1]R«È“9©SSnçLn¶ºÇ\ZI,ÑKø\nÝÒ|;>£ne½Õ`ÒÔŸ–6PòcÔŒŒ}*îŸ§]xCCÖn¤¸’;ùàHíH±”„Q“×#?LÔ÷w\Z—ˆü\r$–?k¼šB¦9|œãaGN¼ô÷¬ªâ%%hhm\ZWg)ã„—>%šÓUð÷‰mî]!û0ûL{Uö³”r2[±éÔ×ŠjÐßhwóiºÝ¤Öº”\'kBËÃz=ÁìGöfƒc› i°¼mn–°(‘J\0ØË}É®ÄšLþ(Ò¢{˜¡¼ºƒR/¨ñÂÒ}Üÿ\0wëé^<œ½ãHÉÇÝ<Xð·Š´]&=SVÑe·ÓÛi2P…ÔWñ¨iËcâ-QÏîíï!˜ãÑ\\\Zú×âÇkàÏ\\jO1µŒñ ‘ÇÎJ {“ŒWÅ÷ÏP[¤3pƒ!A9Î½86îi	9Y|M€Ë \\(+pŸ€\'oþÍ^?	ÌcÛŠöŸË÷†®n#ù’H#¹_üu«Æ BªTõV þuÝ„Ý£*›\r?Za©˜TDs]ÈÄŒÔoœT®UzžjaŽ\r\"‘™¬8E³bq¶å¯¿ôÛµéÖ·<~ú$“põ¯Ï¿Ç$Úc-º3Ì’+ª¨ÉãÚ½KBý¡¼ci¢ÙØAá8®d¶…bóY%%‚ŒdJáÄ\')Y#¦›´O®¨¯îþ?|HhRHü=…Éafçpõ9þ˜¬¹h‰ÛËwoan–¨pÒ%ƒ4iÈ,sÜÉî+MÇrù´(¯‰îþ3|D½Ò¤½ŸYk,…òÖÅc9ÆÆ±Ÿâ?ÅIñkU@FGx«T4»züÃ˜ûÄP+à‰¼[ñ*î2·>(ÔUªµÆèj	5Kjmäñ†¢-Êí1‹¹6àöÀ=)º\ZhÉser<O®ÇýÛ“ÇâkÑ>\n>Ïêg‰,Ž=ðëþ&¼çCÒg²IL²‰¤‚[ŸÎ»¯†öß,Ôð&†XÏýð[ÿ\0e­TZ¦Ó!Êò¹Ôüf‹va ÇüµNà\rÿ\0²×˜&\n)ö¯\\ø¬‚ODHÿ\0W3Î7ÿ\0\nòNbCíQGf‚[!Ç¥4Ó4ô­Hœ\r4cšPi\0áô¥ìy¦ƒN^)ŒõÙþptÚs˜¯–_ûíqÿ\0²×¥‘^Sû?6.<]#­³øH+ÕErÏâf¨(éIš3P1E-&N:qJ‘Âš\0)GJrÅ#tBißg—pÐb”R22õSL2Áâ€%v¨ÄƒiwŠ`8R©¦n§!UäuHÔfc€©¤Ê\"y§‘\"‚1¹å‘‚ªRMrRøâÃP¹’×Ãöíw#uÅüÿ\0º·…{±\'“ôâ³õ\rGâ¢¾t³i¾·o‘@Û%áÄíîx»Óþ Ø&•ðãX]6&ß|1ykÒ8TŒ|·SÔçšÎMÛA‰¼Iw©iO«Y´š†‡iz!žÚPYx!ˆ89ã=8®‚h	àÍe¼3og§H–ÈB¦Ô¤$(G$ycýjoh6gÁZ{êÎÐé1}p’FR9å\'!¤\'ª¨À¡Çp+ø“{ánøê{¯í]Ùw[|A7brpA÷Ç>Æjé]Ž64¾k¿Ùú¾£¤Üº/ÚàYíäd‰^sÔñÎ=©¯JÔ/FŽÄ™=&¼OÂ·© ø‰5‹½>KËU€À«\0ñ¶A.#<Wlÿ\0tW¸óRÃW\0.Ñ˜ž¿ÇDf¬Ìïíc É÷}*?í	\"›0e#5ÍiÞ!Ò5%_.â[gº·Q˜óô=?ZÛ‚ÆÐÊã¯\rš´ÓýÔÖúœ^^£mÒæ($}QU´ÍA²»[›M5 ¸^’	ŸÔâ‘#daÇÖ­Ç84Xf¼[HEH\0#‘YðùzUälz´\"E§qQæ•IÍ\0H)iªx§S\0¢E\0©;RÓs@x Rf€i€áÒRFhêâ“4v\0fŠJLñ@ž)J3Iž)Rj6`(f¨˜ó@·ÅhþÓà’?†;”sø+WžXJ>ÁoÎï—­zg”Éà­Dzþ‡ükÉôYšM¶F5UtmObÉ”ÿ\0ki-žÊt÷ W±!Æ+Åç>]Å“’>[˜Ïþ<+Ù²ª}@©¥°ªb“ SÅQŒãj6âº‘-7uñM¦!á W|€¤Ó¡L¾\\a@É&¼ƒÄ~=¾¿½¼°²Åg˜Ê[Jc‘±ØœQCv\ZW=X*Ë3GÐ¼Š9UpHúŠ“ìS’§ãØxnHî¢ŽÞ@>dìd?ˆ5÷zžV+-K]‹Œï³¹m¿©¬•R¹zÐÑ0ƒM10t×[ø BÙ‡Å>\"Ñ‰žkF\ZjaO£¨íu¦ý@ªöÊÏM*@9SM m®/ë2Ayá»¼zï¿-Õv\ZjÛ2ú…ÑŸ³_úB¨…ÊÎ¶\0Þrã¥y†µpF±v¤ô$þµÓ§ŽÄ\0=ï†5Xý2)(Ïæ+Ìu}OW¿Õî.m4Yaµs»}Ãm8úPæ¬TS6RãP¿³0É{$vÀà,GnG¾*«ÙÁnmR1¸´è	=zŠn$žKn;G÷})o®9l‹çhNGo˜W3“nÆ©$d°˜ˆ#SÐŠ¼­‘ÅbÙ¸1¦=+F\'âºc±Î\\Š\\ñQ£dSêÀð]f/5õ(?ç¤9•y–¨%pà(Ç>†½ZýÕBö‘6þ•ã—rÊ†î×Ê$Ç;òyã&³E#°Iü«[{¿´Rƒ9=ñTdñTvrEmæO;A#…&¹7\r0]ìÅ@àgNBâ¯–û¤Þ#ÕÞŽ6Ž$Îdçß­T7ú‡$Ü‘Ž0œiàS²µËÉ4›å;œŒf­G«]}œC$„ Â«ÌHÆ:ÔG‘JÈi—aÚ5’<>õ ŠLr?ZM&LÛ´}Ôæ®üØÍ‹Å)Ï µÒü,ÒöúçUºÚélDH„gæ=ÿ\0*ÅÇQÞ»?„„¦}R¥Ÿ~åJMò°9ˆù>;¿V\\Du\0cøEb¡ì+«ø¿	ÆWù\'´QŸR	ÏóÈ‚F1S\rb€ÐŒü˜ÝHIª±¾3œôíVîîÍZ@Y´<mV{TZDm1ry~µ¡öd´‚õ\rR3eJŽp|‰½ÐÔóˆ RÒùˆ½x!¿­Gmºš4:M–«{3Ãj_œ{SÛqXìo>xz/ï[–‹šÄsº[…ô’5ü€­›ÿ\0\nx„øsDY4Å³¶²¶EžK»˜â\0	ãwzâ³o´MgÆÒÜÏá»h&²%^êIÕcVcß±ã=G­Nƒ³ÜáõQ9Ã†WsðýÐ|8Ò˜\0÷s!Ï¹5~ÏàÜÓÄˆ¼K(9xlbÞ1þûcð®¦×Dðo‡4¸ì ®Œ$¼o<åÛyï…ù{{UZúDM¤µ8oËisui¡kVWVžH¸‚kS‰¡l•m¾£\0qô¨´\r:ôÛ›mÂþÞÚWýõÎ B¼Ø?\n·ãçÒ®t=FÝKOçÉnBõ!Ôäj”3k7WË<¶­<E÷-¹œÿ\0â¶¥dÓDÉ9FÆý½õö›f¶öZ¬p¢tŽ5ç“ŒUKÇ×ºmœ»u/npv†µTP{g¿ë[ú-µþ¥g{â6ê\"\0Š%¥H8ç¯jçGÕ£Fi<6I~hX¿¾{géDœe&šbã¶ÿ\0„škmqN^hUšÂ5F#žOZä¥Ö¬,lg¶ŸZ†;iÝ¡†O01ëŒ\0sP.‡ªxŠ_±I¢%„H¼ÛÍÌ£Ó¿…YŽÞûCX,­nž\\ëiÕ#¯ùõ¤Ô!¢Z‰^OQÐ‰ïlà¸K\rNî= `cØ5,[X•{gÇðÈþU¯tö×÷‹uªÁ0GƒÎ•™€c‚JŽƒ>ÔÛ-jÊÚ­w¨Èn^4)Õ\\ã$àqš!ˆœv)ÓLµÀÊ†Èâ´t;Ø´ÝEçœ±ˆ€­°dŒô¨xg±‚ço–ò´L0Ê=é¡î–;hŽéHU03W:ó©’\"0ŒZ¹ßX^[_ÛùöS	cè{ìGj™¤*§°<;£Üé—rÝ\\\\B|Øö˜¢Î=‰ÏzÚPdÆ¯&I\'d\r[cÅ–“êžÕ¬­¿ãâhÇ–r~•Âø‚ó]ð…!Žo.1~#f‘O*ã¯×z§Ù¦Ýò!Ç­yçÆKk}[NÒleÕtûi\"º/(–áÅØy#9ëÇ­f·*2¶…OiÚŽ¹â‹ÏG	[›íÞ9ÝUãÃØÏ¶?ZÏŽÒóÂwšmÏöÔwÃO}¯l	¸ÁO¼yý+<aao3›‰£nq‘)ù‡¾­bjž$þÐ%`V[ÌbÇ’Þ¸ª9¾…¨ö=3ÄzÊ=Ø—_Ñà’hÉ[b.#÷ c€Øüýk¢ðÏ‰\'¼ÿ\0-×BÐ-É5Ô›^VÇGôÎsõ¯½ñ>·{cœÓÂ`ƒ)—È÷4ãâ¯™\ZC¬È]“Ë%¢Œá}²¼U*#{ŸNiwË©[,ÖsÇ\'\'*®)ŠŽ-:+=Búö„S^ªyØà1\\á±ëÍ|ýàMRÊöú{Z^ÌÞ^èîl8•NqÊŽ÷íééÓiZ®£¦EªZxsSß¤Ûžúh·)à§ òÜ?J™G‘Ù’âÑëÛ¹§y†+k‰–â‰äXTàÈ@$(÷8År>ñ}Æ¯0Óõ»Hà¿*Z+ˆÕO’1Ù±ÏàzWWm?—2°#Ž´‰<WNø÷w¾FÔ|;i4þì[ÌÑ2Œ÷\'p<{\néôÏŒþ¿)öF´·$d¤H’øîÊ¼¯â—†áñŒÑÛÇ·IÔ3qhqò®OÍüöô+ëYÞq±.GX·\nÝS„£tkË®{ÓüKÐöZÂt0\'ÿ\0Uçø‘(:g‡5	Ç÷§‘aý9¯×u	\\¿—!SÈÈ5$ºµì¶ö¡n¥\n±€@8É£ØÄ9.zÕÇuùÛýGÓmTwšVr?\"g\\ë¾#º`n5kKe^‚EýH&¼¦Iîd9i¥?V5	†F%™˜“êj½„-ª\ZéÚª¯ü…¼Gq8ì0ü€¬»ŸèÉeŽâç7\0¹®1`êjA\08j£Åh>[îm¿Šà¬´{xæ#ƒ\'ÍÍ`Û_Ï$Žg|¹lŒpáR0“ŒŽ•ž¿ë¡ªCI#Ô~éÚ?‰õÝvÛÄV0êÃoÛ¬É‰»C’œõëêk;Æ§¶»{‘Zµ¬‘Ú¶¥±ŽóõÍWø-®[øwâ1’õ-®ìÞtBåNCÉå@ükÕ<Ÿ†RjO|òÛ›¹$2³²J§qïíDjFNi+™Ô‹’´]ŽD¼K©.®Úîi‰€|ÌØ@ä‘¯ç^»aãLÒtË{ÛÛu•m¢]w•\0+8#=~†¸x_Cñ÷£xÆËM¾i\"hƒ—|¸±`O¡Ïë\\Ì	­—>OôFÏ÷¡ÿ\0ãÆ´ž*Š[SÃr¶Û½ÏbÕµ‡þ#‚õÝ^Þæ4>bÆuŒ)Ç}’\0z‘ß­k/Š´I,£µÑ¼AáÍ2Ò5	k¸Ë¦Òp?Zð´øM7ü²ñ_†¤ôÜ *”|#Ô\\+]ð™#Ÿõ‡ŸÒ±uaÑ›òicÔµ=7Ãz©©xÿ\0N¼eä	5Â©ö±Y—þð¼–³¥¯4%’DÚï¯¹ý+ÏÇÁÍ`n#Zð©Ï¬¬¥+ü×dPF­árË7|þ‹ÍKœ{”Œ|9·³¼YÇˆ<ªìmÆ9õ\'ÚGû[GÒ»=;EÖî­U´?áÒEü6VÍ3FA#rñŒ‚^â¸~´+öJ;íIÃ\0--£XŒòwd’?ï“K¨Kâsa>á-\ZûHðû³%Â[E¹¥~²ä–è ¨9¡¶þžÉåG\'…’Ú…¹ŒXù2\0›Wnp8+ÈK¨y\\1l“Ž\rzOÃ˜&‡áþ‹mx’%ÄqÉ$‹†;‘ô\"¹ßxj=F{ëOL·ÔR7Ž8\"žGTªŒž89Ü:ŽÕÕB¢¦Ûf21ÂÜkV(ûLêOµ½ýã²ÛXÌ«€D’aÙÆkÝÖÂÂ[e©xnÂ;A÷bƒc ü01ßó¬ù<+á8æÝmá&•±’ë9@ôëWŠ»Ð¨SŠÕ£Í4»o\nÙuUÔd½\n<Æ¸¢Sßo•ýjëø/D»^ÏÄ²Ù+Ÿ•]ôÝ´Ì×A¨xŠÆþèC§iR›„Ê\0H³œrªöë‘REáÝwS…\"½u¶¶`rfÛ\\žÑ¦I8õ\"±–\"ÚÜn=Ï[x#CÓ¤ûEßŒ,¦tù¶ÈFñôTsŸÊº}3ÁPxËšêÏEKÞyF9®ýR5n@õsôæ¹ïëš‚¤:O4èïü@.5+˜Ä‚Ù±ÑqÀlŸÃ¡ÏnZo|D¼UY¼C<GÌqF™úà\nJMê†{M¿‚¼9§Ê¦xm.®Bù×Ò4ç×8r@?@+â&½…-…ž·yrd¹F“ì–*§j‚1»$`sÇÐúW–?ˆ¼u <Q¨Œz8ôöÅd¬:·Û¤½¹¾šâú_•î.X;SÛŠzŠÞf÷‹µ+=_D¼·‚Þð™äydR‚$§­ci××i°=ÛººFnÎ;Ð×J®n \\)à2-S‹Q¸ˆÿ\0Çýšç€<ä;EW5†¡¡¯¥ˆµ{ókkpˆ÷“´íãþ5¼¾ÔÃE‰³ÜœÎ¹¿ŸËt‹XŒ‰‰*?*±ÿ\0·ˆ\ZÖßmìì#…~ÔÌ:g<céSíd¶`àuCAÕãp¿f…ýÒLÿ\0JÒÐ,îth2ß$P4—S(,Û‘‡Jäô?EoJæÊk9d‰¯b>c¾\\’Tc’p}1U´ÍC@ÿ\0„¯B¼ƒW¼»¾\ZŒ/#ÜÆAa¼d–?‡áB¯QèÉTÒ=³âBo\\.~äñ·à[oþÍ^\'lÄÄ=³üëÝ|d™ðæ¬¤d¢üUþ•áP»ÔõWaúÕÐÝ„¶$íMô§\Zi­ÌÄ”SiÂ€;S…1M9hÜ|	˜§Œ5ûnÒØ¤¿Š¸û5{ã^\'ðRAÄ‹¥\'ý~›\"¨t?Ò½±»×5O‰š­€b©kšÖáû5¸Ôä}Ïþ®×sÉôÔÕäÁaŸZóßG/Ž5»[ÐXG)?Â6ÇâI©JîÀÝ‘¬<[­êPô«->ÆÐŽ$üÙG¾\0úY×ž\"™BÝk×ø?óíB?5¬$Ó\"“/ö8«é³™åþðñZ($G1h[_¼„^jzÌÈßw}ã\0?Z¯<\Zm±V¹Ô®£~ãílÇô4çÐ¬Ê¯™3¹#œ’hm*ÊØe61ÿ\0všŠ7r¥æ²!ˆ\rW×„à‚¦cü­oø3Æ·Ú€Ò5ÀtêM½Ê O7%X3ŒœJÁŸËXþQúU=%ho¡.A÷#Œ})¸FÀ¤ÙëBSžjD—Š«!ÛëKt¬.«Œu§6Ùbhä‘¸*zUÇJrg=iÓG_)¤žEŠ—s»p¨£¿Ò¸»û»ŸÙË%¦s¨h¨æ;kd•b82HÄŒ(Ï\0gŸJŠEÆ»©[øVÉÝ ÂÜj3/ðÇÔ/Ôú}+3âWŒŽƒ>ð¦Û[”Œ,Ó§ü»!*ÿ\0¶G$öúô–3’ñæ¯¯_ß>â9b‚;}‡û2ÍD8ÁùŽ1ÆHCY¸Ž+{_²ÄÀniŸq-Ü“Ú³ìíVv,ÒLÄ³Êç,Äõ$ÓnÒ{–·±´Ûö›¹’·tÌ\0\'ó®I¾gdMõªÞ^[ÄdtéòõëŠë´ÏÍ«Ý_Gkâí6Hì‰ùquã?2äéHàúUø`ø__ŽÂd–Ââ/6“‚>ò’\0Î?‹ko6ŸªÃ©iR}–þ\"w0YTŒqÜ\Z¡¸l_ð=ëøƒÄZf™ua²4¾`Ú| \'Æxã=HíðÚÛY/•goŽŠƒ¼ŸÂÞ\"¸°™’ÂÛLÒ!ÈûA´´ÜÏ’p˜ž3œzW]iãK˜&UÖ-a–8Û\r¥G®3ƒøS„ãbÒlëÎpëS[¹ÎÓcx¤Š9apñ:†V=\r(‘ŽµÒ„]BéR)ªÑ·2“L	”ÓÁ¨TÓÁé@ƒNŠˆ\Zp<S@h˜\r \nCÒ“4‡¥\0)¤Í0œ\nMÔ\ZQQålÓùâŠ|q;®T¥4¡¡¥p“µñÅ\'j`&i3Å„ÒÖ5SÍFÔ›â„ó</¨¯ ?¨Ö¼[O•VÆ08Á#õ¯oÖT>ƒ¨+/8úkç†¸1£C»Ë³39(,qYN7F°v4õ€ÑÆ‚ÂD?NE{›ªY]Z$±ÞÛ„û¹ióéÍxM¶»cym\"¯™÷C:²àsÓ“œñYZÖ¥y©ß´¶Ö&Ê)\0R\"™]xïz˜A­‚NçÓñ2²ŽDt=SFÃÖ¾xðÎ¹.:&îB«%‹É$Hùè zs]e§Ä\"ƒ&‘`êzgx?£VÊësÜö\0Â¥¶\ndÈI¯+·ø™«Û\'†¢‘¿Ø—ùŠbüb±þÑ]:çL‘n%·dÚHÇ·éŸ¡§qœ‰þ5x–-[P\ZY†8b˜ª1ÉÚ£¶Üí9÷÷«wsË«@uK’òö¦sÊ¡™Aãó¯ž	ç\Zœ‘FÆ!#31ãšõ¨&1xBÉ_ïhÚ2IØ+*ÎËCXhÎnu’1+Ëu.Bð×iá«[½\ZÑ®\"YMp:†›­\\ÊÍ“{$}ù\"##é[º×ÖV‘@Þr˜ÆîŽ?•LS¶¥IßDw‹¡iMŒ@WýÖ\"Ÿÿ\0å„‹5ÊgÏó¬5k¬\0eR}Å^ƒV¹$F\Z².É®<c(%u”$uOôª_ð‚$d¾z”Ú0kEu©Gß‹#ØÔ¿ÛQã÷ŠËL.Ì™4-JÜ¡^Ë6ÌÕ\0Ä!€¹¾ãèËAý+ ‹P†¹ -èjL†µKHi¾§5+°’ ‘y#¿?z«ê2,·6P³}ùa~´†ÊëV×$²‚ímÒ4IäkbÓÃvÖ¬qÜL‡\"C.p}qX9(½MB²b‰7°U«Uè5;;Mä;‡ûB¸9î­UðÑO4£øzøÕIg½™JÛÇkd‡º¯˜ÿ\0™ãô«ULÕ;ž·ðÊ¡¢š7ÍS«‚+ÆôŸ>ËZµŸí“Ìç*ÞcpAôá^¯k)xÔœdŠÖæ&Qå<‹Vníßßæ\ZÜk¿ªEŽT‰ö\"½G]ìªãªs^añ\nIl¼L²DË›eŽ¸ëý)Ä“œˆç$tÍJ1À¨bÍ=Î#ŠÔa#e€ì)ÄñUc$¶}jØû´ÄV˜ò­3¼SååúÓO8QR4I§H#¼RxWàÖÓdšÀhß¨e­Ø_0¡b2GQI¡]È°¨ üäw?Ò½ÁQÞ+Á$Z]÷ðïä0¿\Zç<	$pøóKÝ†2nO˜g©Á‡ W¨IâÛÈ¤tr@V+Þ†´)MZ$ÊJ\'ž|dµ¹•tK¸ìî‡”$Ï”xèGõ¯67Š£çWR=F+é<wp®¨¢Iÿ\0\n¦ò\0+¢ÓµvýC.•²3üw1ì©ÏéSì¥MY¡)ÜùB-Fy$~4Z”X\'c•’¾´’ÎÊà­éÚ,ì9\0[,„~,*®£q¡\r=¬_@±¸ÓÁù£	Œc¾\0ÆF\nZ™:x2ÒëÄšÃXérC*y,Ë¹UrNýk±Ôtÿ\0\0xrù¢ñF³­ÞÂÀ½­ŠB ã£ý{5z´7^{3ko¦[Z[±ÉKRäú¸¬[ÿ\0ü?Õgy§²¹Y¤ùšE»bÄÿ\0ßFªJ[tÏ4‡Æ~².þøudJ±­Ö¤Íp¡A†áOÑª¿ˆþ(øÆéäµƒR‡L´ìÓãŒ>`±í^™ÂÏ-ŒÖ°jšä6Ó0fŒJ¬»‡C‡‘ëÖ²î>xið-<W}|O¸ÿ\0Ùj,–ãMKã\r>æÞÙêº­Î©,K‹™˜åÃ n„ž™Ç^ÕÝ|&Õo-|-}ck/”±Ýyª@üÊëþè®“Tø1©{ö³ã¨ž-#ËÚ¨ÈQ€8qééùÔúÂMsH{‘gâ\r\"æ9€¶å<tàdw5Ó‡t—ÆgVî6‰Ä³]6ë¹å˜ÿ\0¶Ù¨ÂÇ\Zä(À®¾x¦5Ê¾—?û³°ÏæµV_ø¼£J…‡ª\\¡þdWr­I+&ròM³â’C\nK¯™eqi{aÆrW‘éÍá6ÏW¸ŸYñ+Ç4‹ûëhS†?¥jøÒÖI®+è<«¯²ySDX6a—‘×¡51š/¶ù±Â›¦Š¦Iâ¼×+lu]¡šf££XYM.€uéÚòJ¤ƒöŽ+AüMÄk©J–ÑIÊ…C9ÏqÅs^Óîn“Wµ>|¬ÌÁˆÀ,O§Ò©kÖ—vò “NšâHE–(×o®EfõcW{eÏ¼9Ð×·ÓÈOÁhÌOçŠå/ïm¼A{$³i÷öor’!šMŽ6Œüªãxr+µµ\\_«NŠ@ä\0õ ñ‘éRÉá¨të¨ Hf“2Ê_§¹£•-YWEi.¬¦Ô¯\'6¦[ lÊ£;89©†¢Ž£|â\rý<ÇQº¦m<‰]ÝHÄòˆÖN©©h62EªÑÉ*.ä]…ˆüºVŠ·+÷Q©î\\˜rìGJ}¸’+»y™\nì`àŒŠç¯¼w£ +g¦¹ù@ÜX€}ñÍIeñµ­VÖÐéäÊT¤x—$ýx­ž*ml%E#Ô¢×ô•Óîo\'»ò ³|þ`Á\0Ã¾zwâ¼[øÛ­ÞÌÖÞÓá²ˆÌ~|çßåôÁÇ­uÙºÀ„\\è“KÊ­,EQ2ƒ’»ÈÏ¨æº¯x‡GŽH|?á¢ÄHÈÓ4Õbøé–è*óý’½ÊåHó$ðÅ¯‡køµU¶vÅüßeˆ{ùdŽ>‹Z_ô}=ãÿ\0„¯Æ–I6ü]*#pì;ßÂ~ªkOXÖ|Sÿ\0!=#]”×QJê?à ý+]FéË¸Ñ/üò[vŒ~@WD(7Õ!ó[c¥>øk¤[ì‡Ã×ú£g™õ;óðÎqÿ\0®â.‡§iòhwÚš¶Þ™b’®$–2WiRüÀáˆ=¸kV…£%b*Hþ4 þµ«¬Ú®§á=-˜m.@\\úÊ˜üªªQTâ¤ÄªkfyÔV°ÜòE\Z“žÕ^TxdÍ€OLw©îä•a¿µ‘JÊŽPý®ƒÇYÝè\Z‰ˆ¼f0Jœ1\\`‚=Ž+Ÿ™¦‹¿r€¤øÞÑÊˆe€08Ã8ýEz\'€ôkícJ×ç2¤qÜF,ÓÍ_–V%½°{ûšñë[ßìígJÔHÜ¶·QÌWÔ+Šú®å#´+ok\ZCoÄhƒ\0\nÎº\"gœü?Ôn´ÿ\0djP|·ŠA“ |¬¾Ç¦G\\×¢³mrÁ³56ÓQ¾²¼™JÝÚ:ºJ‡€s´úŠÐvÜÅ½Nkˆþ/ð…ÅœJ£k›‹6èKŽ©ŸF\\Õó–rRìHÀ«ìdaŒ`×ÕQJcpÃ¨¯øÉáá¡x¶=ZÒ2º~¬K¶:G?ñÇ;¿éZR•Ÿ+ê\\C»ÃFOSÖ’	ÊÀ‹ž”ÐAžØª®J\r½+ Ô¿ö°{ÁÅfîcÚ›€±lÝ±îi†áûTXñKå’:ÐXy™›ŒÓâÉrN:T;UFY±B\\ÃíÍÎ>´ìË1q&¯iŒ²Åy#„‰âb¬ôÁí[’?ŒíÜ«jZàÁï#šÇðõ–¹©êp\\xgM¿»º¶‘dI-àg¶x$€@ükÛôo|W¹S.µ©é:=¸a¹®|·|w  #ó\"³šwÒÃ½&\Z×ŒbSÿ\0mCþz.˜ªòø³Å(vÉªo>oŸý×ÐVº6nvëž\"Ô<Apú«8|˜Ï±Ûÿ\0Å\n›þ#Ãí#EÒ´é\0 O)ÌAõÛ–üÍ8Å½œÑâš•ñ\'ÄL­§é4N»–k>£aêÔø\Zï,>ë° —Å¾%ðþ•PDpØÃ+ýUp~™­MWÇw÷„w}p‡øcÅª~™b?\Zç¤Ô¯ÙáXm	êPoûé²k¢8j’éc\'R(êàÐ¼alÀi÷šìØÉžUñlŠà~µËøÅ4{_\nêÚ–‹áû;‹£%ËÏ’dU!³ÇBzzV|è÷\'}Ü²\\?¬š¹\ZG\'ƒ<[lÊ\ný…äÐª3Ô\nª˜^H96(ÕMØà×ÇZÜ–ä}ƒHÃH§ŸB§‹â½\"8ôÝF½•\'øýr–D5¤8ì¢§#\"¹9Qµø=­Ï¯x<ÜÝERÃ}$,\")PŽ¤ÿ\0{…yî¯â‹½^¿±\ZdwÅq/+w,M#÷N:JÜýî[û_²?v¨¦ð5`ôXž5²²O\ZêÏ}paÎÜ ½¹CtüjÒýí‰½ž„vŸ§Wº×m#bßPÉÓúÖÕ¿Åˆ™”M}©íè~Û¦G(üÑ®&æ]1ú«³y†ÑYÓ\\N[²öEKŠèR=‚Óâµ¤¤6Ú–±r[)­Çæ©kñÞB®dðôíÔyZ FüœWÏ²F%lÈ7Ÿö¹ªóÛ[,eÞ%y8Ÿ²‹ï2èÞ\nÕg’òëÂ2M$‡sµ¦¡½IöTÒˆü=ðØKá-Z/RÑÜ0ý×ŒižÔn,–êåÕÙdŠV#&?PxíSC£ø†À&âþÐŽÐLëÊ‹%§0Y½hGøJ„°‚ô¸KüÍkÙèßäì¶žoúè£ÿ\0f¯\n‹Qñe«ºÞ«Çi%2É³NŸÄ^*´_Ã:úMcì´ZýGÊÏ¢ ðÏƒ$ìúG…äôÛ-O¾ð¥„6›ô_øròàœx¢@õ$)ü«çDñ¦‰‰4sýãhQ¿5\"¥·ñTÑ¶eðõ¡ÿ\0®“Åÿ\0³\Z\\¯¸¹ê:×<}«[Él!ðÅ…›ÿ\0Ëµ¦cAõÂ:ân¾ø×OŒºÜé‹\Z1 ,®zöû*¤^=¹©—«Ûçö}Yå¹\r_µøžÑ/úEïŠ”t Ë£?ð *¯4´¬qº×‡u:ä¥îƒ<Œ@>m¼m\"7âéL·ð¶·:Ez,–Îs/ï&Uq·æû™Ýž8ãòë^‰ÅëtÀ:Žª½¿{aè.*Ä¿´éàbÚÌ%ñ“éŒ2~ œP§>Å¯3Õ|D>Ó§j‘©ÿ\0Ynøü«ÁXÿ\0¥\\zþf½ÊÞxïtË{ˆŽèîíE8ÆC¦Gó¯¸R—²¯L*ŸÒºè?xÁ­&šiÔÜ×Q©E74£¥\08zÓ”óLzÒïQÔÐ3¡ø\\æ?Šº8ä	!¿î˜ÿ\0J÷™æ<WÏßãø“áÉ‚8S,‰¸©…­})ùÛë\\Õ>#Hì <æ¼Óâ¥˜°ñ-Ž°£0ê1ù2ñÒHÇ>ëÈ×¤nÅsŸìµ<¨ª®é¬ñy8ÁO¼ï’Õ	ÙÜoSŒ°º‚IÊ˜ìÝëR5B7sƒï\\¶…qòÆëóPO½uŸâ$äöÇJÙ™(ªzv¨ä	ÆjÃsŒõ¨ Ž(@Wºƒm´’K,PÃ™Î\0¬¯\rêÖ:±±°w¸™F’M„\"¨CÈ\'ßñ§øåd›ÁÚ’D»¤rŠ z—€-n“âÔ—þO±”ø	uëîyüé·£¤zd[ õ:š§Û\"š½3X–‰<T¶ø2 cšˆý(VÁ¸©Î¼úÝ¦…®_é±ÃýõäŒ·<‹tU±ÔÀç®k€ðW5iójÚ¤¯o‘É$!‰3]Éƒ‚Iè¤þ\'ñÍzØŒË©sµÃ‚»G@§·åWìe4*¸H\0\0à\0;T43ç­)Œ–JOÊã;—ÐúVçl£¼ñ_Û.qö\Z¿™Ï#!HQõ-ÿ\0¬1xßP¿˜óO$„uÉf5êžðËiÞ¿±¸=OXÌìGú½êUWþæMs¨ê.§Œk>\'¿×5[Ÿê9“¶(K|±ÇžÆ¶ô¥—VòWL’7.2VFÆÚÄñ›âCF·žI-íPnNÑœ®qýz×Sð{Ã\Z~½ámFI\'–ÓV³Ô] ¼ŒüÈ…ª²ôeÈ<~X¢Tù‹pÑ3GáüwºÄ;;v\nË<GpÌ»Bî¨ñÇzõtÍ.è476•\'ø2Ÿªâ¸Ý@×-<g§ßjPZù0y¹º‚L¬»®\0ê9õ®ÕäiÛÞ(YZA¶ÄÖvpÙZEmj¥`ˆa¶p=2jp¤w¨£—åÅL§\"·Bd±çazUhûU”<Sð)ÀÓJPh\"µ.î0\Z3@4¨å–{i®n_d®÷o@+„ºø¥¦J\Z-šë%Wí›‘Iÿ\0€‚?Q@$ÙèH¬ÝÕ}VòÏH±{ÍZê+;dë$§ðõ¯›Æ¾3Ôn›ÌÓ>Ñð±YÜ4J}Î$úVeô·ú•§ÛDš{”“2ZÝ^y‘ÇRr:óQÎŠäg»µþžR&þÑ³*‡tê»{ŽjÃDØ0Tô ä\Zù¢M\ZÆGºšêÏRŽùÁhc‚ÌI7¹ –ª:ž¥¤ÝY=ö§¦É \"$&£ÀûÄ(¾”sëbm}£üM¯éÞÒö­*¢tDÜ9öëƒ·øË¥\\—w0é–ÙÀiÉšO®ÅÄâ¼CÇO>¥5¤úž¥¨jè¦’Ú@ëòƒ×Œžk*-3D† _\\Ôar?çÉ—©ÏçOÌvV=Ë^ñDúÉÓÿ\0W{X]™ìc³ë¤ÁqÎ1‘×¦iOŠ¼_k¥.§uâ( ´kG%´rºs·¾¾¾õáQèë(f¶ñŸ(è¾t†6ÇÑ…léšf¼aq¥Ú‰@ËE¨R}vîæ¦W¶€k·øŸ¬Ár`»Ñ­õ0@1Ëe6Öpze>b?•Mañ‚¬6Ÿ¯è“é@<æbÊ1ëÆÁ¯’ïÄÚ^¥\ríÍ»Cs(ò·¡Pv¦p}ë£›]žõ?Óìíîny´Š~´ÕÄÒè}¢ø›E×Y—JÕ-nd^±«á¾ H÷¨\\f¾NÒn·‹ô‹Õ™’T˜—1àm=}«éÛ§š2cvÈªH¶i¦¡ÞiCç­0#ÔWÌÑõ$Û¹ü”šùÄó\\êWcËÆ©µ„hNHc÷½+êxØ…r¤n±+æíKQ¸ÑÚîx v7êÅ_\0ŒçŸÌÒ½ ®cXÞÛYéÖÐÝxqnš Ä´‘’Ìäõ$sAšîl&ºŠ{](XÚZBÞk|ÀÊäq‘íV4™ÓP²ûCCq`wbbK~‚Ÿ§Ûx‹RÓUm®æ‹s»ðÛÆqžž•*J÷‹±6‹i¥ÜiðÝë\Zµ–›=Øß<‚«Ó<šÆÔf6ZœðéÚÌ³@ŸvXf8o§8­ýoBÔæÝ-á´¸Ž‚3Ïb[š†\r\"d„¬Úe™”žÑ€¸ü(½µ#½îsÚŽ±¨Ë¢…{›Õ…œ†vüÞÙªž·ŸûVÖæ8H†&,Îçnxíë]„:g2C©éÑ¥”9tKy-ô5¨×ÚMµ¤’}†îUÀó#=:ÔÊ¥´Š4ŒWSÍ­u/³hz´(’m™Ø‚O\ny®æ+|)c ›l¾L$‚FsUu=ð’çNÕíãÝ‰\ZÙ¢$×¨ÍoïÛRðî“yå¨S#1^\0ÇI)-+3‡›T¿‹Q2}¾ùC7ÌÉ#W]o®ÛÚiöÒ]kú¬S72Úè¿˜©í®4[ˆÙ£]:\'%“¦;T-¥è“]4Â8Ü”Ù‚ÂM¾áOJ¥Q_T\r\\Ê¿ñ„Ðê*°É\rå›ò²MnŸÄSÿ\0á5Ó¢b/,àÉÿ\0ž[³O›ÂºuÔÃ&±w,HÄ¬-¿UÔ|—LZ]ì6àÿ\0ËK‘…üHÉªs‹\'–ÈÞÓuVŽ_±O$3\"oUbHooje´æc–É÷=++Að{è7/,š¥…Ì†6\\@ù?_¥h.—<Ày—1¨ƒb“šCQ6´›užà¼RFXqÀWF4ù…³Ê `)\'¸4Ð¢†Lž¤=ZMºµhØÌéSûâALÒçL,?ÃÌGï¥ºŸÖºÆ\'&¸ß<oãëï.Ep-S}ë°~§Ò¹ª;ÈÑ\'cæJfx§Oþ²£Ž…„\'7ößïW§YœDŸJòøúu¯ûõéÖ‡÷Kô­éleSty¶¨»ôùGµy‡ÅÉ]àc4gëÇøW«L»à‘}Ey¯ÄX|ß	A/{k‘úñZ£ˆV¯SÒ™+äc8§FÀ \'ŠGh¼–w`éÍmaŒ^æ¬/ÝÅf‹¨\0±~ÁFs]>àÏë*Ÿ¡],dgÌ¸>à¾3øSVr<Ré‚[ÍJ[XüÙçq\Z ’OÒ½+Lø%ª\\aµÍvÒÏ#\";d3·ÐýÐ?Zí<5áxV¶¸Ši/ub—%ÌªÛ8ä„_þ¹¡jô2[ž! èºÖ§âÆÑ,-?â`£dp\"ÇRÞ˜®Îûá‡-5¶Š]CriÒEŽ8ŽqŽqž1Û×®3^®þ\'Óâ¹¹“MµO´9Û4±Â#.}Û©¬ûßMŠ±RÅë[GR}Ýx£—ðßÂmJÏQµ¿Ö5ëX$Ä‚;D2ŽÅŽ\0ýk³mÃ62´—a¯$$±3Ë¸gýÕ5‡5ÝÝÀÿ\0H¹‘Ç¡<T\ZÀ•tÃ×Å#	b/²:•ñ•Œb=&Í#NÂ(„có¬ë¿ê$•Û¸%ëY‡¥o58ô¹“«&:êêæà´\\I\'ÔÕ½,¶öä™üë5óƒV¼1(]Nâ2xxÇó§U%M¤mËS&8Ôõ ‘Ò¤§\\sI!ÜL¤ã7ó©\Z»Ý&-n9iùY‡ÐÔñÍsýÝÔËì\Z¢§RÒ{¡¦Ñd_ê\0`^Íø¶iWQ¿gïF§úUj/gÃr‘~-jú3Àˆþ•-Þ»«O\0ŽÞåíydšC‘ô\'žXÍC%Ô1Œ¼Š*\noV†ªIh‹\rsy‚óÉÌ2Ùeç5”Þ%ñ\"(K=BÞÙlÕˆhÛ­õâa¥j7ŽÐb¶ÿ\0ßDb¤ëáÔÝiÚDO-5ä@ãè	®z¡Ù¤ßB®â;›{q«j——²àAYõ*£šÒƒâk!V³Œ…ä•˜ƒÊš4++oš}oN97\Z€Ž<ý2Ký>ÝLW	¦Ámÿ\0>vÅÿ\0yÿ\0‹ùV„%ð+š©;j\\9þÔ\"-\"ÊæœK{\"îHÿ\0ÜÄk\\±µÔnE¿Õ/.Š•.ólÇÐ/¬j>/¹»ÊŽôuU	Ø vÂŠãnæ¸vqæÔöCŠqÂÍï {Hš’x:öúã}]ì•r	3»“HŸ	í¦DÇ‰â€Ž¥9?™ªºe ›F“÷’‰·!ÈôÅ>Þ¸3‚÷óU3“i=†ê[vtü6„5Þ³qzÃªùé\ZŸÀsú×aáÿ\0ø{C›ÎÒl-c›2y†FÇü	Ž?\nó…K±ÒæNðiàÞÄùú¨«x9ôdûTÏl€ñÊ¨éœñI.¹¦Û²ê—V<¹ý+É!×5¸lVÒˆ–ÛÁ)’òÇáQÃyr7Ã;¹Êçò¬þ¥P\\ñîze÷--p–qËs98XÃÄÿ\0º¹5‹¯üIÔbgÒ|?-¬\0ðL!\\þéY:‰fÒîÚé¶ñ3¬ÑHÊHôÍtÑøê÷*Z+…ÿ\0vã?Íi}R¢è78.§›j6^6¼»{cA×.®>èo²–Ú=ÑŒsM½°ø2îÒûMÕlf½KÚÈ„|êzãŽz¼=›øÞíGº+…]‹âJ?y<Ùÿ\0j×üÑ:uœy9teÞçË×+¤‰æ–üÈß3oSóù¦Ëq¥:H£(®ÊpXr?:úµ<we2áæ·`z‡‰Çô¨ëÂ—ìZçGÐnõi!‹\'þúƒ§5¼KS‹ÑÜÜE-©]Ãv?Zú‡ÃZŠê~Ðo¼ÂÍ-š+±îê6·ê¦·®<1à=B=³xcD\0÷cCù¡®ÚxoÃv¶qÚÙiÓAl™Ø‰,¤.}>cYÔŒ¦–-L ãÔSÕø5²þÑ+-Ô\'þºê\r7þ‹#ÄZ¥Òr§ú\nÃÙ3;3 œŽµ•âí\n?øZ÷I|	Ø	-œÿ\0«÷O°<ƒìMuMáVÇîµÁ¡ÿ\0f¦GáJDj²È(?–j}œ·C±ò¦ñYI#bŽ­ÁuÍ%Üñ!°9ô¯i½ø­\\ëWz…Íæ™qÔï;AÃÄf-Ô¡ãšÓÓ>êVM¶§ÄÀðð¸šOÿ\0ÂºÕS<ÞÞöâ${]:öh˜íWŽ`ÇÐ9«vZ&»¨Jc´Ò.r;ÊžZÅ°+éŸøBžÎßÏÕõH´¸†ù 36=sÇä)ékáX#W[íd§Ì%¾¤@ýô¥~Ãºê|Ã}¢ëV:Œz|Ö-5ä€lŠÔ‰˜’3Œ.NŸl×U |\"ñÞ¸¨ÿ\0ÙcM·~²ßÈ\"ÛõN_ÿ\0¯p›Çéñµ½‡ö~š™ÿ\0Ucoæ·çÂ×9¨øªîûp’)îÆx7s¿÷ÂàV±¥RKDCšFŸðOD±ØÞ+ñiž\\|öºdy!½Ùð]e‡ü\rá¨–M?ÂÖóÈ)¸Ö%[ý­ŒO?EÍÉ¨êN¥Ù·ˆõŽÝBÌŸÎ©}š=ÅØosÎæ95´pmüLÉ×]ëPøƒ1ŒCmxbUDV6ÛTMíÓðÌÞë×w¼Û¡“´—2´Íù?JÎ\0€)k¢8Zqés7U±n./.ã	yy4©ýÌíQø*¼pEù#QøT´‡¥n¢£¢!É½ÄÅ\'j(üiˆiéZþofÕ¬_î\\Ù˜ü+ýk#µkx>A‰-òxu9úk*êôÙtô–§‡imþƒ$\02953ÜÆ¼±•Z{3a{fÿ\03[\\<\'þØþ”Òáx•yiê?³ÍïüMüGg·khçðÛÿ\0µ)>-Ã³Æ~oð¼Q8ã¹]¿û%d|»X~ ÜBü«	bQî\n¿òC]/ÆXÈÕté»<\0þëŸþ,SêOÚ8SQH3S±æ¡n½((¬éUç‹z=Á«Œj&Æ)5tÿ\0ø³Jµ·µµÔ£’ÖÅ°©Ú p3Œñõ­¤øâe¶Y%²Òç\0ã•qÿ\0³b¸‰\0fÇp3V#`t¹Ÿ¹óT:qz´=Žâ/‰×EºïÃÒç©Ž}¿¡SREãÝeûÂ×úùedÿ\0âk‰µÿ\0R‡<•ÍKÝæ—±‡`Lì¿á(ð%ÁÄºv¡n}íø“\Zq¼øu>1©Ë=ž	@ÿ\0ÐkŒ g)m÷‘OÔRöK»Ù£«ßiqjV£8žÉXùªŠUˆõÉÿ\0¥b^Í¨R+QbBá²Üö5`DŠ>Pjx3FÑ5bòÜË\nÆŠm£GÛæžwdûqÇ½U”Ø·9rð’pÇÐÑy½¬Ÿ!äb½‚	xy>M:üAê¡\'êi“ø%B\"Ô pGBŸàj=´J²êwgð_†dSÿ\0.1F~ª¡Oê+Êõ„òµ™×íù+Óühúo…4«\'ef·Þ›”äc{üëÎ|\\†/Î³eØaA?ÄOõ®ºÞ¹„º™¦š}êÝ¶™¨\\íÙE=Üàþ]jëhVÖ I©ßªz£0§ZÞUaÙŸ+f#H£#9ö&¬[ÙÞ\\ÿ\0¨€ãÕþZ¿ý£¥Zq§Ù¼ïýâ6/æy5ÚÖ£1\"KD=¡þgšÉâÙEªe¨¼?¶1.¡v¶ëé?:;Ì³Â÷“/ñ*`øþ‚±Y<Çß34²uÜç&¤N1Ž+)NRÝš(#oN×.&ñ†\0‚;x¿´aL),H.3É¯{¹âW†¾h3]KHº\'Ød\'èâ¾–¾ÿ\0‰>´!²iÑD—+%´ÃtSÆÑ0õ?Î£&¥±âî,xUx…äd·PØÝ²sßÝ[«pC	¯=‚CõÜcEä€{|æ½‘£RAÉ½´FOrSÓšúšvÕ¸ÇÞ–Ìß¨o	j8J˜ßå88	Á¨þØ>ŸãMe\'âi¬\"“&S!l°ä“Þ¤ñ	sáL)é@y#<Ô¹–érÝ]}¡µ)@¡0›¶qéùÓk@LôT^E]‹ ¬õp“Ò­C0$ÉôÖ&…ªi5\"A+€BàZy´›åpu,pKi«ž9¢)SÎæ8Vã¾*¼ú’–âK§Á?» ú¹Àrzï‰ÌÓÏŠØ©À[eóŸþúû£õ©ÖZE¶ç=¤øy ñmÑÕ. †ÂÆí¦çæçrzráï]>¥ã8£W¹²ÓµMGo;–Hóþñÿ\0\nâ|©Câ%¸–,’³ÊÅžFÆ9íßô¯V·‰f¶’EÂœ|§ ÇçXÊÌqW<B{©/u«­JõVÖòå¼É#n\n’zsíŠuè¼;}ª[Çu[Æc$å—8ðOÖ½›û\'L»&KÍ:Êåâ!4*ûÛ52%¶š–VñZÄ~WH\"\0|Ö’f­]Xæ4Ý{S¹Ó%¼žÒ{(!Áar›I¸qïZ–Z„·\04sÛ1?ôÐçSë²=Æ•«å¤Rl¤([Ô)é^k¤ëš£Æ¬×Åû\rñ#1]iJ¦ÆSj\nç«ÁqvúµŽÉ 5ioîTÖ\'ýÕÝü«Ïíõ«ÍêdŠÊQÜ´ ,VÍ¯ˆfLcOµ8þì².ZÛêÕVÈÉU‹Üë£Ô×h\'O]Ñš‘5›\\à»)ôe\"¹ø<W \0=ŒˆØ»cüÁ©×ÄÑÈq2Þªÿ\0À$¨¾¯UtiçG§jGúÕSSÇ{nã‰Pþ5ÍL#ç’QþýˆoäiÉªè’ûÛø´‰üª=•OåesG¹Õ,¨FC)Û†:×/úT­û©-3írÑÿ\0èUj8íÈù$\'?Ü½CüÍKMn†š{²yRC,3Æ’Ã*ítaÃÐ×™xûÀémd—¾†H*ZâtÁvõÜ‚\0?Ÿµv¯g&ÂRkÔlpv«ÐÖ}Ý¾ ÐËê™YT¡Z\0*YIòžAoy¨î×T•gO‘wa€ìGšŽ«,²<–v“ÈÄ’î\nîüE6óRÖ´[©,MŒ’¤$*Hñ1Ô9=êí¯ˆ..ÞF†çì¥#ån-ˆ.ÝÂmàÖ-;èkubîµ8c°D#¼7N*Ô~%Õ R¦Kôb?ç¢Éûê²[Äò=½ÒÆá	Ph]VÖ~Z7,?½Yò¾¨½-diÏâè¥\"j+»ÈÇ?=¸ ß8¬÷ºðtÒ3-¸›±†U\"œ·6ò’ñÂèÇ€äcéS>LctWOqh²]±^îßÁÓAnÀñÁlþµ…«ø{I-ÿ\0½1	SÄ³~]+¦’Ýfb–ðË\'©•FîlË·ŠÑŽTK5³ø†šºÕ1Zç\"18Hì¥·d<æf*ãV—RÍDOÞ(6Õ\'õ®¢â¯-€Öuó2\'Kh`©úã“TZÚÚ(=ÔXàË)òÈÂ­O ¹QÙx?IÓõ+{{ÛhÖE˜e1Ízµ1¢Æxÿ\0Ã[‰.å“KžBl¬×÷m(rO##®?­zmµ•-K†^„sŸ­hŸs&tÊAQEg[ê,Qù²¨‘˜&ÁËdœ:õïWä-ít ûÕ\\DöüÉU#ô¯žü@QÐ´Lpö¯ í4È0Ex7ˆ=ÝÚ‚ŸüxéS\'¡­=ÎZã|‘2–ÀQÀº¯nÚ¸$²–û\\åÂë]Ã½ÿ\0Ø,$	QÜ&î€äÖ1w.{\ZÖÒFï4\nÿ\0¾C–B0FjP¥PðõŽ±%ÅÅö¾áî	òã\nª¿ éÒµvßtçéZ™îP¿ºµ°…§¼F ’Bæ™‡ugÃ©yæEoÀó\"€Á’FxÉÏô­[E¹¾o´*›Hc2J¡ö5Õê“Jòãr‘ò¨ì+ExÐ<‹„\\‘æ®4‹xæŠúE’\\Ç *zw¬m5ƒ©ê÷÷Íub]ÔgžÜVßà’ÚâÖw˜çr…Hþ 3ŸÆªi»²ê¹ÉZŠuãZŸ<z•(r»3˜Ô¬ ‰ÈXS%ŽN*×ƒm”ê×™AµQE\Zƒn#‘ÕoÁMæ Û²úUSwZ—=Ž¨Y@ê7D)¿Ù¶åJ…;OlñWSnÑÍ+€ZÝ™ÇEµê¨ ŽàT3i1²¸ÖÀt#’ÖšáqÔbžsœ})ùãÖ™ý›.6‚¡}rky”Á¤	òõÇYÎkÂÐ5·Ž¯œ6lÓ¸ï]«·$W 6<yp	ÉkEþu×¹95ÇSâ4EYÎëQfŸuÃ¥@Z’-l:#þ›mþýzu¡ýÊö¯-Fÿ\0K¶ÿ\0|W§ÙœÂŸJè¤eSs€7€A`xè9®[[ÐõsE¿±Ót©æó\\w\"59êØ®ðëº]‚âÆÝCÿ\0°\Z§uâ«É†#Œ(ìI5Û5G²9T;Ò~k3¨:Î±e§¡rgqõè?S]U—ÃèÐîÔÞçT“ùÓùkŸ`„ÌÔ×\ZõÏ]HTÿ\08FPñ O5GÞ\\r}òk¥a½æfëßDu\Zv© h€&‡¤ZY¹@.=Û©¨ï¼Wy4ÉŽ	\\±n•Ì·”ª²ÎNrz£væ²¼N&òâ½ˆžÅ‚¸KXU{(E^×;“³7µÝZõ`EšîC$®öÏ5HØ 1ÛG{¹y,¯Ï”£ßÖvbÕ5(.æ·‰w.:8#õ¨îqp÷6­3Gí÷³ƒß²Û\"¶“ºDkdžå»Y\"L6€Éo!çfÈÓ=ÍOžl{ÕHC÷O¯½U†(æµI&ìzd?êÑÎc¡&¤ƒR·»w[ fÆåûµºf-_bÈ4åÁ¦óß­AxåmeÚpÛNáMÊÈIÄNq„cøP-g`>E¦CVUŒ÷°@ž]ä¨\nŒá½½*ûKpê¡çv8ëÒ¼š¸ùÇdwÃ¬–k1&i{`b¢ì–ÄË\n¯ŽsT%¾¶_72´­Ë*åE5ÔÄ‘¡cŒ‚í´W±5g»7ÇdCªÈE½ÍÂ\"D.p9&¢Ðo>Ýgæç¡Á©•n%Žd¸Tã*yÁúÖ€eÝcsûÉ&®ü\riJñ“0ÄSI]z)ã‘Q§AR•èƒ»UíAÔ5Åg´šÖum,Ìz÷\0T8®·á¼¸P·=UÖ_Ï\"³«77¡Ý™Lx{ÃvR°Ôõ«ýFd80ÚE±sèOÿ\0^”xƒÃú3ì­ÂÚEåe¸o>O¯Çýõ\\×‹àû>¥q\Z’Ü’T{ŒÖ*Æ‹ÑEaNœª®iH·%×j>?Õ.²æáÿ\0cÈ_ÓŸÖ¹ùµ}BV%dçºÇó<Õ>©3[B„#²!Ôllåçm×<Íêç4Àª m\0\nãMö­ÒIhKliúUK”ÉÎ*á¨ä\0ž”ì\"_ÑÜÅŽ2\rX±N}ÇëMðâÿ\0§ÎŸÞAÀÓír³È­Óyü³YÓV¨Ñ¤õ‰tG‘Ò•#Ú S×¥H+s‘¬~ÔáO–¬ÂUYdû±FÎ\0Oô¯/‡Ç>\"¸C,rZ$‘@§Ó=MeR´iîT!)ìzRGíVÐœ^cõÄÈ’ÎÂ_ûdWÿ\0f«qüH½L	´kv÷IŠÿ\0CR±TÊtfz8ÐS°;Šàíþ&[ËÖ‹p‡Ö9Õ¿˜¿ x·N×.~ÏmÄ•Y¶üÜgŒZF´$ì™œã«FîÐ{\nIŸº?*‚“¸â£(Î©\Z¼²€±©cù\nÒýÄ®Ç›hOð/¯JT…ü™SíÅjØxs_¿Uh4óg«Ü·—ÀóúV€ð½…¦Ó®xñóCh¡çÉý+âiGvZ§6a%õÕ°ýÕýÌCÚSVm5MzêA•Î¡tsÙ7Ä‘ŠÞFðî’ÏE8¸Ô >øcü…Q¿ñó„òá»€0\"±€?àmýr¼BŸÁ›(4µ‘£e¦x¹×Ì½»±²€rZeŒ°‚ãõ«éy¦ÚÆ§.£q»kòãõ¯:½ñÅÛû(wí-ÔÍ+}qÀý*…ÅåýÒl¸½”Äåšaò—°©S{\"¹ãÒoü\\,”,Vööê8\ru6÷ÿ\0¾šËÒ<G}¬xŠþÔ–K<€ð¤>Hç=ÁÉýkŽÞ$åPg×·á	<k=7Èü\'ô¢xXÂW»Ôæ’FgÃÝJóQñ×4Næ{Ãœmü÷/åˆå+òç¦A^ž”ÍA×÷fi69\n³ž(ðÐJý¤<Cbƒå¿†LgûÏ\ZLPj}aZÌéùf„ýqÍFûö*·ÃrªÆª>Uè){QI^‰ÊÓIã¥)¤=()(>ôS”ÓNÍ6	Iü©i(;qV´6)®XÕßgæ\rU=*KêvSÏ9CTÍ]48î.ñ”/oã¯FãÞË ú3–¡‘Çå]OÅU1üIÕr08{þæ?ëšåëÅxËc½GÂ)VŠ:!s€æXÿ\0‰Ô~¤W¤|hýM”u\r,yüPÿ\0ì¦¼ƒÂ‹øzbvªê}¼ÅÏé^ßñŠ,øuònO>™GÏ=Éz4y99QÓ‘QžMÀÅïM\'š\n\Zý*	\0ëR;¯¨¨¥;“ÎÈ¹$œõ©#b,/cîéòóß5Zi”é…ªÍ#zœ{ÐÀÜ·æ\n3ÍIùG½sRe?1˜âº\r>U{h†~m ­,MÀ§’3ŠU\0Ð[OãV|8Â\Zø~M ƒxˆIÞù­7gSc“ìÚž›qŽb»‰ÇàÀÒ\Z=¦öÖÝåmöñ7<åER:Mƒþ‰ïQ‘Z×ë‹—¥P$’6X¦hd?u€é\\	´lµ4ü;ÛiJgjJØÉÏ^k‘ñ]ói>!ºd¶IžvãsåqÖºO\n½ËZ_¥á\r$sQŠå¾$®Ýf\'ÇUOÔcúWl600îumNäkŸ\"#ÆÈÑ¯ZÎ mÄn~ìÇ&¦=)µ[ll7 ¥šzP9\0ðOþTõÎx¦-8u e=t‘§oUÔþ¢¾¢¿9Ž:ó_/ëcv•?|×Òv·kÓ4ûÒkh¤üÐëT„ÇO‚d·ó.%!b…ŒO`Oò¨ë7Å\"sàíxY {ƒe\"ª“Œ‚¸l{íÎ*úx>™$º‚Ìc·=ÃÉ»§‰®î[ù`%®Þ0ª;óXºQC¤Û†UÝ’+lÝÀºSvyå“ËXÐîr=€æºº$avÛì$h@’æR{üØÍU–Ò$áæ?‹Öý‡ƒuÝV$1XýŽ¿ëoä1œû ù¿A]›ð£H¼ÝnêãPaÉˆ7“ãÉ\'ë‘PêF=C•³Êî/k”ÒÏvñ”Ž‘ˆ8\0\n¹á¯øËVºÑo†—‰‹	|ëéO™)ÎÉÃ#±ë^Ù§É è‹ö}\nÆ|\0VÆIÇ3ÿ\0RjŽ§â“2Ë=½ é„ÿ\0H˜þå_ÄÔ{YOH¢ÔTV¤¶Þ·„™uÉ.[¿Hãÿ\0Ö¥[Ý:åéñ™ˆ+n¹_Å­q·¾ kƒ…¶k–&½rÜúˆÇÊ+2îîöùÞ\\É$}£TðÅ\\pµ%ñhK©uÚ—‰ÝŠIq\r¹ä€}¢OÄýÑ\\Íöºó°òí|ÆÄ×nd`}B”VrÆˆ¸U\0{SXq[Ãï©³{u[‹«ÔòæI”tBp£ðV\rê\"DB¨…mÜôëX×¸òÛ\'Þ·I%¡7osœðÝÉ´ñî—&à¾c´Yc€î\ZvÙL¯}i-‚:àvÁ¯u‡ŠI¬é#¯žTäsøu¯^ÑµMY©§ßecçÚ¨•%Ç~:W•‰³–‡m5e©Ü£%©1Cd#*û´âçí1,ˆT$÷‰¡ &hmu	\06IlU†=*ÇÚ\'ºŒ3ZM›÷¤Gùç¥rj“LÅw‰…¨Ìï€–ògÔäc™¯)ÒNØ”~\"º?]E}llm§§$~êÝ·ôë¼ôü+\nÖÏP¶t`’HBýôeÏåÖ»ð•#ù™…h9+#jÝò\0­KGÊó×j/.f	m¤ß£*£ñ\"¶#µ¹´`·Q¬o€v‡\r]ð­	;Eœr§$®ÑqO\"ž*<dS—¥t#px¥À=ª54àiˆ]‹œíúS0æ5üªLñE!‘-º!ùß÷x©’kÈ³ä^ÜÇþì†E\'÷ÚÔI¯µ·_“U¸ã³á¿˜ªR\\êÌ¢Òsë,\n¥^Í›£MôFžÒ]Ìóq>ÌK¤XIŽè\ngò¨[v$Oáô*{¥Ëñø\Z×ïF ¬Þ“èRÄMlsí‘Œ6ÿ\0¦rƒ¦EF-t•bé«kQ>ä‘‡ùWDcCÕE1­¡aÊŠ‰`©²–\"Ks&É­-¥Yëh_;¶ÜÙ¶×ššôÞjvÂØkVX0(>oÄ{šµ%„\rü\"«¾‘nÝTVP‡FWÖ[3ÛÃ—óÈµ“äczÎŸÖº?á†žñ¸º¾•˜|ÊUÓi˜4x>QçVa´HqåŒcÓŠ_ÙëùŠx½4FÅ§ƒ…uº4ÀÚŒ‰-æ·p~ ä÷­­ÿ\0Qtõ¨´ÈcË´•ÕÈÇpGo­bÃqw0^\\ÆÙ”Šœk\ZºŸ—S¹üXæ)<º4JÄ\'¹Îi–6ÚåýÌZGˆ.SUˆ´m<öäNTpÛ€Áô<Öîáoh%¶¥yy9Äm\"ùÉë–“øÓßW¿ûP˜´O·žÉéííVbñÊ(ßcbäw“ù\Z‡ƒ¨¶Ôµ^&w>#k>š+{6ÚßÍ@EÌÈK&w\0v+~VÇ=«”ºo-RìL$3¦âåvî9É8ükºŸ\\Ži#–}9¢Ê“¶å¨ç<V5ÌZÌæ[›Ee?Æ%}g<%[li\ZôÑç>s_Ý}šÃl‚YÙ°‰õ5·á›«oøin®/ìÞK›Ã)“ˆºüÇ¾3ø×¥XjÚ$6ñÃålE@}=HÇ§3GàËµ\"m;FrÝwØ4gô’ÃÍ}–S­-YæËãé-üÔ‘­n[j5°\'Õ¹áÿ\0C©]=¦£oÒprü~µ¿7‚|~Û—IÓUýa»hˆü	¢Ëáß…¡½y“Oy%“•st³çð\'­\'O—{‹™5 jŒmô-LF’hÂ†SÓšµ®ÚßKvÊüÚÄ¨‚IÀ«w´[7·‚[»xIg‘¹xç\Z–òÎââft¾´ŒÏ‹^~>…J´íMQœbýæp>5¶˜øn?µÍçÍ¥Ä˜Ú³-”Elï¿SøVßŠ£Ôoµ8|9mj¢BL²]“ˆŠtê{äVv»jºSµ½Û\0á2›XhÂQ:\n3ZšM©KC„¾•£”.\\’Oµjø*EŠÛP¹|0.6¨ïÅP“EÔï5+{©t›ÇÓ%á}²v s]bŠÔ-•Œ6i“˜Â²~†·ŠqHÞ5Z\\·\"¹Õ5ycfX~ÍnxWòèzW7a;èRÌÂúîv‘·`g\\ýk¦C¬\\I\Z‹Ô·´Lâ69ü\r_’vfn\'Í²/–SŸÊ´S²ÔÎxj—ÑÔÞ\"éûÍBØh](°ñ5Í¾Ësj·¤.C@çŽkI´ÝTÌÆþïíJ2$‰FÑø\n¡$/)+û©Wi¥ˆú`T©F÷DJ•D¬Ð±øú.–-OO’ÝXõ·þ•ÖéZ¥†±gq63¸‰IeuÚGÄ[­ë$ÖÖÚl1x¸˜àøÒéÖþ˜YÇ¨E=Ìà‡	†çÓŠÑµÐÏÙÊ×±Ãr3xùÁ9&ÐÖ»¦àž+„Ñ\0_ˆ‘»wÙö5Ý±85ÉQûß\"âR¿ 2öâª³`TÚ¡j|Ý«>YqRÄ¢@.­ùþ1^¥bÿ\0¸NüWµÁû]¨óÐq^­ñÛY¤“È¨¸OZè¦cSV¬yÏáNÍCÿ\0˜¶iæñæÊ©ž›«éîxö{¤L€–A(ôAƒúÒ!Ü¡‘ƒ õÆ¹.ë„(Ÿßà(¨“™Í¹{QæB>[›sË.{û`UFÃ[ù(wÆc?g|çt}Áõ>õkQŽt0ê:k1™G+\"¿¥WW·¸¶ûM±\"Îs¸Œó—ÛéX½Í&ÒP[i6Ë\0,Jàg¯×ð©É‚!q;±Bpª:ÜHzJ[ev¶€I„}¤³v\n:þtåq…¼‘s\Zü–zƒÑˆúÕ%mÞ·\"šÑõ+ˆåÔ‹	1º;aÂÄ?Ú	­8\"ŽÞ î}im!tŒ™Hißæ‘»gÚ©>µ§–¶ŠW¹N`BÛO¹­‘\r¹h‹­U®9B3ÔU§{#\"ú·ª“ºùR:þób“…=p(“ÐQ+C${UÆäàŒÕ¦¹T«+fAÁÇëT|3:½ÌÎ_ì°˜\Zvvt¼V€¶X\"¶³ºÜEæGæ.Úð1´™ëSz$ÊbaŠ¶ð(\r’ì£œÔrÝ\\˜7È«»“ŒÔÍxV$v±´~u\\Ë¨Ms½“ËrÙ>TC{XF-š2´¢ùùÉ\0€Oj§£F¶¾\'Ô-Ða^—¹îjåÌwúUÉ·Ö-®`¸q½R@G¶*(4ýZ_A{k£jOAå;ý€>‡8®Ü,¹\'©…UÍq:\n•i±Û^…‚kI •º,Ë·5¦šMÈRÒ¨\0u¯RU¡ï3‰BOdQÇJÝð˜µÛ¨È8–¨9ªŸÙÇcÈÑW´x$±Ö¬d•¢Q)1ü¥‰\0ÍsTÅBiÆ:ÜÖZwfgÄh¶êr8à2¤¿—ÊƒÅwŸ Ê¤€rÐº~#¸ù@{‘Záác:‹Qi?Zwn´•Ôd4ÓM8ÑŠhóMaO\"Õ!èD®µn¸ÿ\0Y”ý)÷#ÊÕ&QÓ\0Š­e\'“©YËýÉA«šêùz¸aÑ”-dôªŸth¾ê¯^µ 5^”J”°=«sKöo\nëSŒZ:îÊT~¤WØ\0–‘l×¥øªIõOÝiš=¥ÕõõÃ ÛÂÒ¡²zjÏÐ>øãU\Z{{]\"Û`!¯fÃþêäƒìq^n*qç³;0êÉ³ŠfL}àÖ©Í{l|ý9¯rÓþøOO“>#ñ-Þ©0Áò, Ïpq¸ŸÌWa§ÛxOÂÊ²h~Ó¬ÝNå¹¾`Ò©õ]ÅŸò\"¸ù¿•]#çÂÞ(ñ!C¡è³ÄùÄîž\\G~vÂþµéÞø5®Ø]A¨x‡ZÓ´uEÈDo:@}p½	äþ–¥ãùgÈKë™Güóµ‹ÉR?ß<×5q¯]Ìåà·†	:ù®LÒ©n?JÞë7u¡©Y¾‘áKWbEþ·0ê_åŒ~?(þu$Þ0¶Ò‘¡°‡LÒ“vóœþù×ž]Mu{·]Í8ÛøTI T\0=«£êÒ–µ%sh—ÂŽ—Rñ„÷„ôËÕ=òSþø_ñ¬‡Õµ&C2Y¡þtÿ\0Z¨(¬0ôã²%ÔlcÂ$É34®NK9ÜiêŒ\0\0¢€kk[b.Ø£¥âž)(ê³¤¾ÍN\"½J²þ†ªæ¥±pš¥“7ÝŒþF¢jñh¨î†xˆÅ¥~Ò~»ÏÐD[êèðä*ÿ\0ŠcòµùxÁÚWòv¬o‹¬–7ø{®ÈÜb4aªÇÿ\0C5Ô|A‹ÉÖ•ún•‡þ:ø×™…v¨ŽªŠñ9ìñIÚÒ’½SN´©i§¥\0’ŠJ\0)3Ò–“ñ ÒRÒ@	QÊp‚¤\Zô¨.y‚LuÚM&R*üRÑ?µ|Sâ\\ˆK+û½ÛÈv¾›*òéâ6÷wVÌûÌ2”ÝŒg¯lñ¦ž¸\Z&‹òT?Ìšñÿ\0Eäø›TCÿ\0=‰?Ö¼W£;c}ŒÉ¤h$†xØ‡ƒ)ô äWÒßc[ßœð’Å(úoù\Zù¢ðf\"3Ðæ¾Õ¤}Ká¯œÜ¼ÚDs“î#QIôgˆÅ.-U±’âª. ]@\0àóJNÑ\"Â¹±È7díŠA@$7¯Ò´¥MÔ—*iz»l¯øì¼ÆÝµ/½ÛÉ÷\"HÈêG9¨ß/÷Øš†JŒž{ÔßgaÀJG×çÚž´\0‡§\'šÒÓ!­óÿ\0é,wì1ëYÍšÖÑR6Óö1d#=èä“dî\0ÐJt2eñUõ%1]ÂÈƒl«‡9èi`8ph¢8KUâÆF•ù†*êrA¨Ç¾ÎeÖ#Úõy&Y#¼QÑ\\\0UÂN;¿ßQý(°“ÏÑt¹OW³„“ï°SÏ\0’	ÀÏÀï{%¡kAókÕ‘‘·?(Ç#?ýjæþ\'FD¶²ÁE?‘#úÖîƒ}os©O,ÂO+s+)1ëõ¬¿‰q“¦ZÉþË/ê+®ž‹S|G\rÚšqGðƒM5`!\')†Ò’/N´õéQd¤­V“R·FØ¬eœŒn\'ò¦•À±ªÚ]Àÿ\0`×Ð>?ƒ¼=\'®ŸOý³Zò-À3ñ, [éO³“ƒq¨+\0Ž»~ñü¯yðçƒ›LÐ4í>úõ®M¤\"\"ÑŠqúàtíOa7¡šó\"¹Ë€rMšV©«h—övQ¥³ÝBÐ‰®2¡CÏL×@o4]-Ìvû$¸éåÛ\'šù÷ÇOÄÖ~©âi-Àßöm=HÎgo6cô?©ªM½æô„VVÐÆÚþ©s¨2˜aýÌCÔÔ~+«±hìÚ5¬)0JYEæ9ÿ\0yÿ\0Ä×¨xˆ\\çÜj³]¹Š1ôzþ5™q¨jyMtb·Æ<‹p#@>ƒŸÖº#‡«?‹C\'R1;WÅ\ro‘3ÛØäno´LàÀüMr×þ\"ûC±O}é%ë•Qôxüë8cŒ|ˆ£=HiõÑ$#«ÔÍÖ}	.ooîÓË¹»#Ç„Œ ªÑÄ‘Œ\"€1ØT”•Ô¢£¢FNMî7¶(\'Š^ÔÚdˆzSÈ¥4Ãõ¥aÜšËFŸV–H­åŽ2Šî=sÅ-ÇÃ{éås,°Ë¨2ø?dj–q^Á²Eù‡B+™‡MkåÃ-Äx=¥5Ç^Y¿vVGM*‰zž†>\ZÄ7N23qøŠ’Ûá­Õ±&ÎðØ!9)Ãÿ\0¾H¯9xeaƒwtG§œßãU¢ÓÑnàfwoœgyÝüë‹ê5?˜ÝVG«¿ƒ®á¯<Pð ê^UÏJãAðº)m[Æ?i^ëö¤\'òšã¼Y¢ÛGƒ¬Ió»)ÊõùA¬¨tËxÀÛÂ¦–	Ô3‘R«Ë¡ßÇ©|;Ò£ag=ÅÑR+g%×\0~µ¾<Ò #ûÃÒJ¿pDxÿ\0ÐrZ <(…\\ŠQÒºc—Á|M³]ìjÝøÃÄš—Ë–ú|G´\nYñþógô¤³ó¼½×3É<­Ë<’j¥¼C ö­(—å®ÊT!KáG=JŽ[’ÆzT€ÔJ0jEé]$ªiÀò*1Òœ¦€$¹¤((Ô¢š)GJ\0QGj(é@ÄŠZP8£Ò‚ŠZ;P1´S%0\Zi;RšJ‡¥-%\0V»o-£—’£ä`=ÏZ™O¥,¨¦ÞV‘ÂF¨Y˜œ\01Ö©é­ÖŸÈáÑ—†éuè¹Æ)¨¥£ðª$BíI´c 4½¨ ŽU*ŠKX™FP~U=&\rMÜHXÀ0Ï4Gý‡\"®®­« Äz•Ðú¾Q^”îÕ<‘–è|Î/F]:ÖªÊ×b`?ç¤j¥W¸Õ%^éšmÒ…âÁJŠàÔ:å¼FªÉkråŸˆžÙBG¥ªF:yW.¸ü*¶«¨iZ•ÂK©X^y©Ñ’]ßþºˆN•ÂsY¼\'²6Ž&¤]îgêzg„/ä2^[ÈÄõ/nÙüÔŠ£ÿ\0g…®ÑŽœ÷HŠF|—‘0àDÖ»[/LV—†ôå0]¸Ì€~•ÏWEÉGäõ9øBeÚ;?êË€Qdºþ üêuðÏ‹Hµñ:Ü.:KmüŽk[ÅZr6­†P@{{V7öR”O¨â³†	N*W5x©AÚÿ\0‰BûÂ>.ÔU­¯µh£‰¸Ý,IøéøU{/…w:8kó¨Ú\\˜”·–!pÇó­ûh.mˆh¯.Q½œñZjÚÌ@lÔî1èØ?ÌSúŒ—ÂÑ/æï&p^¹k¿\ZÛÜG„Ž’1Šô>¤ñÁª×:Ö©1ÅÓÇ `óŸ-ö¦‡0µ¡_IŽ#\\µ²ú­Þ(¸b`÷Ð—Y`³ ÇðŠÂ¾¿¶¶âi@r8QÉ5ræúK©CjãqþŽÄ:Ûð½Ö—§ï•žå]¿½n$ÀúÖKU-Q«ÄA-*5Ô\'¼·š=>ëìÊû‹˜Î1ëž‚ºßjöëé×\ræ0ùÔå€9ô5×ÿ\0miw6òÆ÷È…Ô¨/jSŽ¼W¨xrV-%–¿m c¹ÛßÞ©Ð’[X¼>&¨§&Q˜¸ŽhÜ	œor{\0y«\\tÚ2+7Hqr×š“:•wD3÷WÔÕ™\'+ò±Tlt=A¯u5cÆk[<Y!£cŽœñùSZö(q¤Æß4à+\ZPé\ròÀsƒNš¯-JL›âqÁþ¢‡®Â¿ró¼7reMóé2žGSéœžÕ-ÂÃfæöÜ¬š]à>h^‡¥Q·º›B”Zjy¸ÒäùRSüàML«ý‡#.DúØ#ž|¢x\'µd_Ÿôÿ\0à—ìb_±Á”¼H»¤“=‡AŸz·d¿h‘¯§#\nDJz*zš£§[ Óí¬àr`;¾sœjfÿ\0‰ÍËÚÆ|­:fn#œéOa=D…®5é¤hÉƒF0d4äwtZ½lí´Zè±G@s9\\¨þ¦±…ÅÏ‰u±i1IƒjÁ^X9‡EtkÆ×shVÙÇ·–á	P§%PqùÔ:ÑŽì¯fÝ’\"ÒÓíÚ½üÓ]Éqmj<Ÿ°ŽøÉ t«1Ý¬ÎñÚ&T¼éU#ŠÏLÒt½9®HÑ»µQ’ÌGÊœWO¡Y‰¬E0K ,îñ#¹¥ŠJ:\Zª]ÎJÞXàÔþKW£_š5BÀóÜ\nÚÔ¼A­%·™i$AFFsŽ\0ü+®Ó-ì´õû–â]Û®.:äûž™ö­l\"¨Âsë^}ZœÏc®\Z>Ÿáý^þ%–CŸjýPYÈöQýk¥ð†™iáým§¯.dxŠIq2ã\'ŒaGOþ½nÅ{*\"ªÊÀ(À¥kÉ_‚Ùý*’Øm·¹O[K«ÍrË7 ÆîØÏ\\Ô;F^æââAØ9U«r¿}¼Õvù‡z9îMŽsÅË$Ÿ`šVÀP(\'ŒZÈV+•[ƒq·Ì®‡Æ Ë,xi¡uu^çžL×\Z—:\\®£ˆÊß39æ³“f´ö±«²ip\rÄëž2Šåô-*iuøµ!f±»C#Êìîß6@ç·øVüÖé,oÁÎ™•dßj1è³ë1ÈÌê’G´Ž\r]	{Öa5¦‡¤øþ!6ŸŽÓmüb¼¾!…ÇpHýkÕ5–¾ŽáAbÐG7=s€Myq]³L1üdÄ×¯„{£ÏªƒRbŸŠ6ñ]¨ÀQŠ“˜ªB#\"˜{T­Q1Å;ÃmMÝ×š×ñ!Ì¶’€Ø?šæ²%TeE,HÆ*þ¨óÉ¦ÚfeÈTº¶1\\õj(Ê,Úm2Å³|‚—P,,ä+Á5^ÄÏ\n,7ª«6~ðo”ûf´.­œÚHYHB§œñ[ª°{3\'·GµÛÎcÑ-ÿ\0³‚Âj\Z áIPzW˜ê^#½e‰n£7³H›‹M3^HÀQô®ïÁ·K}àý\Zt!”Ãådçi+ý+Í5Ø|‰ÔwK‰béÿ\0þµæÓ„eRÒ:äýÛÄ†]SS•J}¬ÁãËB}G&¨~öŸ»7&¥Œô¯F0Œ~r¹·¸ŠZJBp	=2E¥ÐAP{\Zoúä>D€8ôçÐŠW‡–UÚ‚’p=MWÔ®Í„–»ãÝ¯å³gî’x¡z€šÊ\\GxƒpSÆHä0öÍg4í¬xRbãmõ”ª\'_FS’~˜¬ç;h‹QînJ»¯R\r3+æy[×ÌÛ»fyÇ­%œëq§[Ý±Z îsÓŽk#Ãîn%ÔõëÙvÇ1C»€ƒý)ûE¥º‰G{ô6ªPÜ¼Ó¬ ®™Š.ì§9«mÁ;’j”“ØZÜ\\Ò3(ÀýÖ—5ùò\\Ž dS#ø÷›ÁžÔAÿ\0{¹`ð1¸èºì~ H·kc{ýÔ«Ê}C!ÿ\0\\ÿ\0Å«c}ð…åCÅ•ì3¡]ŸÎJÒ¹u½øiáÛ´çn™\'Ý©ýs^E7ËUz’W…ŒAÒô¤#ëFk×8Àš\r¤=(\0¤£\"’€JJ4†€ÒQHhJdƒ(ÃÔS‰Çz‰æ\\í³z(É¤Æ‹ž(Ì¾Ð\'Îw%Xÿ\0¼ÿ\0Ùyw<_|{:ÆÃþøZõf9ÃàdFG‚é$ÚÃ.ìgÿ\0®_ÐîuŸÝMo4Aoi³Ë)?(<É?ç5ãÕ²“;a{mÈ&_Dx\"Sª|2Ò•†KØIm÷KF?ô\ZñÙô=.ÍIyî¯ä#~\\“ù×­|#ºYüdŠŠ‚©áÚ¹ÀËoÀÏûõ—2kB¤´<P‚\ZLõ$1üFjˆ;KqÞµ5e[MRò)]²2Ÿî’¿Ò³INÞ Õ\"†§ž*CÒ˜GÏéïOíL#“Iž¼Ò;\'&£`‘+Èç¢¢äÒSŒg5« °0O2|ÀÙö¨mt\r^åýœ[FŠvÛúuý+_NÑÆŸ¼Ësç;ã!FŠ—8 µÈµqˆã=÷\n	Î}ê}WtŒ\rÆ«GÁ¦ÕÅ±­Üƒµ,ë˜œîœTV„m5eÆTÞ€G¤xVs/„4ƒå–Û ÿ\0uŠÿ\0J¾Ò„ ºÈ¹öÍcx	÷ø2×Ö;‰“ÿ\0Ïõ­§c€3Þ¸§¤š5[’ðÿ\0ÂA¨`òBÉ’¤g¥Cñ	7èPœ}×aÿ\0ŽçúT¶ŽWTµ\'Ü~•/ŒÉáéGu~ ŠÞ“÷LêhÑåñœÆ§ÚŒñM€æ$úbœkP\ZO&‘§jZþµ“¢Ç]J¥Ì“>Ô‰Vcè3ÛšŒô­ï„ò¾*éˆÄÖó¡÷2ßÒ„yáß‚\ZvQüU®Ï{&6öN±ÆpXœ°íÐW¢éÖþ\nðDMýeea$`–tŒË0Õ¹l~8ª¦ÖüÄ¹Ï¥r>*šíõY´öc™ü©ÿ\0=ØÙ\'ÐzV°ƒœ”H“²»;;ïM,&Khà„ãß¾Ò}Äc,}yÅrþ!Õ..KK4:Œþæ@ð üóøÖXE\'%Ao\\S±Œ`Wt0_§3®ú$Õo¦‹Ê2=•¾?ÔÚ€‘Ä|Çñª‰o\ZP+sËr~µ(4Ã,ÑŽ#õ¼`¡ð™¹sn.))Cpá_Ó±úPF*Ó¹;\r¤íN¤¦!””ãIÚ˜\ríM=©ý©¦š)Tm@=P¼…_æÇ5 â¡q‘AHÃxH<UYò›Xƒò°5³4xlÕ±û¦õ©å./SwÅË›<ààLFOýs†ˆ1ÏZé|\\é¶Çû“ƒù­sè=«*÷ªîî*-On<SbBÄ`UØP(ÅtXÉ±ñ.\0Å[‹T(:TéÚ™°)Ë@ SñNÑN\0áJ\r%( \nQLàhÃ¥(¤)GN”\0¢H:Rö¤1”\n\06ÓÍ%\04ÓiØ£µ\06’øS{SÍøÖÍR;=\"ÁÌpNÅ®äB0¿ŽJÝ´·ŠÎÒhD¡T{\nŸ¾qÍ4Š”µ¸ï¥„íE.8¤íT!;QÚŠ)ˆ*ž¯%ü:s>•Kv]@WéŽäÕÊi\\ŽhèFGÈÈ¾h]ø€õ©4F\'½<PQKH)€˜RþPqÒ¶ü,3kuŸùëX¾•·áOøóºãþ[…sâ†Í)îUñ7:ÁöE¬°£Ò´üIÿ\0!™=”VojªÃC«ñ\r*=)…T”„V¦eyÒªMJÐ#Ú›°‚(ÌNHÅO\ZmÎE^h†8¦ˆñÖ•Šæ+ìR¼Š«qd’/Ê£ñ¤Pb›³Ä¤svPÁ¯$+²¨ûç®\n©§+O~óÎÁ®.O˜±öTÒ ½¸h4ûK8²g¹ýì‡ûªüjDŸû&É®qæj¤GouN„ý;×gw©»Mjk¨F¹há#ýóéíT5îôâ×\Zk‰9{w%²?ÙÏJD‰,¬bI·¼’HîŒrÌ})\nê\Z{¼ö¨Ïkž`“æ“¡‰­›¹+N¥?Q²ÖížHGÏ‘U­iR>z|Í>`DNüì8Àš«sak¯Göý\"_³ß¡ÉPOä@©t½QuÚf¯†ùAaØî))wûÅËkÛæ‹–m´«{H‚AËp3þ—Ú„IgýŠ³ÛZÛ¹Ä“>wcÓ>õ^Ç\Z~–±;–“qQ¸óŒÕ\rB‘\nï-ÜŽ¦¦¢º¶ÅG{³Ñ´ï\ZYiÚ|6ÖRZÀ»#Kk¥ÉúŽ¿Zó\rsU»×|EsªjJ¢BDqÄ¿v$ZŠ-ÅªY´‘ÇQ“,ƒ<¹÷¨no1·ÇšòÚQ‘×¡Þx\r´e•õ/^¤V&ž6Ç†éÏ~uÜÅ?öü\\jVö\ZY8, K0ÿ\0k?tNµâgYÖ,í ?ÛRCIˆã‡wüú\nÎ¹ñf§=ÚÍ>Ÿap¨»TMsîpE&®î;v>“²ÓàŠÙbÒä·0§apßž*Áµ¸Uù…|Õaâ«su›á«$—<5´òDsø[¶¿ã”*kvÇ¿“t$ðaYJ›e«£Ý2ª*6ŸîšòKOŠ0ÿ\0ÐsS‹ÚêÉdøé­ko‰ÑHpšî—)ôžÚH\\V|’èÅAG•Æêäí¼xó\nt	óÿ\0<ïÀ\'ð8­(¼NÓ&NŽî=mî#qú\Z,Äk}–\"e©Ühúdÿ\0ññco)ÿ\0iªÿ\0ð’Úƒûû\rJ.?çÜ·ò§hÇïÉuýt·eþb”“\Zd\rá=ò,V3ÿ\0L™“ù\ZDðž‚³¬Íb²ÊÊÓ»I·è	\"¯G¯èL?ä\'ÿ\0xâ§MKJ˜/Qµoûh)+¡¶I2,š|¶ê\0_(ª€:q^Wp»nˆ=LjkÕ¢h]É‚XäL`”`•y–«¿Ú-íæ•hð‘“Ðž3^¦VzœµôELRt$UÈ4=bàüÐÇl‡ø²*Õµðzo.fœÿ\0t.Õý+®Xªpêb¨ÉœÔ—§’}NŠ;™À0ÀÛOvùk½³ðí¥°uŒúž*üVÑBAdaÓŽsËü¨ÑP]NßÃ×ù×)o@1’ÇÚ¯ÛøU‚]\\úšëöî;Ÿæo¥=Q‰á­sÏR]MU4¶0­|<r1zKí+LÓc\Z¤ñ[ù@±ÜûŠ\\uª-u©-ËéZýõ¤{Gú,äî=þuä~µä?iÔ-$”j:UõÆP©iK›?xqPŸ:»ìúƒ©xëÃñ£Å¦XÜê„YÓÊõçô®\'XÖ®õWÞQláT*ÄìTÆ³íõ«h@Y`žð~^*ô\Z®‹!Ä‡vzƒÅtÒŒR]×CÛþ]µÇÃHãcŸ±ßKúa[ÿ\0f5™ãx¼»ë¥é¶åeüHþ”¿¯,æÓ¼Ei§+$PÍà4›³¹H?¨þ^•{âCí7RcïZ	ÕXëUËQ1Ms#’£>ôÀI\0úŠPkÓ8‡\nHxœdü§kRLþTaÉÂ†\0þ&‘pš¼¶¤ñs•ºŒb¥ÊÃ4ÑAÉ3r¨ g’p*¨f–4šÅÄ7ŠNÔ~Ž z§ªÝ´X.$Uku•‘÷••ªÞ¡ö\rON‘Ý)\\<sDÜ£zˆ¬å=Ó)&¬Æ­Ä±Çv	·½·m®„|Ê{­6YV\rRÞ÷ÊŽ;;ò`¹ìÁ˜`Ú¢—7n^ÝB]DÁÚtÇ-Vîâ†îÚ]¤}žäoÆ~äƒ§?ZçræWfœ¼º#6Ð5¶q¤y¬&F<7;cQó¥Vºœê7¶6Q–±‡müôÇü´>ßZšââ5™ã-,xpñõ\rÕâè6M\n	î¤‹|ì9ò‰8ŽÂ±rijh£}z›Zr+™o®Uåyr\\ñ0¥:ÆS5”WN\ný¨ùˆ§®ÞƒùV5­¨I\r¼$÷\rÀ’wQÍkZ²4’Þ¸Ù¬bÖ%íÓ\'õâ·£VúR»,3*Ä9”‚Û}½iÌ‡iãµW°G{	u†æeÞ]Çú¨þÏzÏ³Õ`¿¤<1\'Ïtàîcë€p¹ì+GˆìŒÕ&ÕÎ¯]‚MCáˆíÇT¶KŽé›†?¢Tu¼ø\'¥ªœ´BæöùÙ±ùb¯x~ÎçRðÆ©n–òªÜXÜÃÊNI*@\'×9®àç›}ðÒú+{*H5 ¹V\Zžýyóv¨ÙÐ“å°èÎc_¥.j8îÀ<‘ù\Z~\rzéœmYØ^Ô‡¥9Q»)ü¨d`9R¸¦!””1\0d‘ùÔjæIA’¹ìŠ[ùQ ÇÒ1Wít-Nè®R8¿¼Û›òÖµ†´í=DšÅâ•ë‰Ü(ürk	â)Ç©j›g/ç)p¨\ZG?Â€“úUû]T»\nRÝaCŽe8#þÖµÇˆ4‹òôk).ª§’ŸŸST.µýbäŽhìb?Án¼ãýãÍsË\'ð£UG¹u|-ki›W¾Ú¸äJÂ5üSBë\Zœ1¤Z=Äƒþx§–¿÷Ñä×:Ð+ÈešiO%äbÄþu*àcW4§)|LÕA\"îµy.¯àÿ\0Éä[Z<h„à’\0Þ¬YR@ò®bÆÆí­µ»ë›­H¥ÓÖÙÝ\0«	ôïúWIe	»ÑüEbœµÅœ˜Ï¯–À~¤W‘ÛøBæâÞ)b– Cö¬\'«™¡©ê:|+´\\	dÇ\"?›Ÿ¯Jîþ	Þ¤¾Ôâ^Â@= ÿ\0@5ÀAà×Qþ‘t¼uŠï~X­¤šõ¤\nÿ\00†@[©Æàqÿ\0}P’H$îŒŸGk¦kW’E§ÛMs#™RY—y˜œ\0xëžÕÃ^«bUðÒKc¹®×Çºž–úåÝ£]´ê É°¸fë´èSŠ{xwÂg=ÅÃ\0â)îc¶êÈ©RåÕ”­dyíßî¦‘Hû„ŽVÖ™á-FþÒÚêæâÚÆÒá|Ä.K;¦z…ÔŠÔ»øs­^Lòé‘éÆÝÏËå^y€©®žMóKÑô[+í¾u¼/¸?/Þ$\0~‡ô¢URZ1£œƒÂÚ%±\r4—ZƒÏ˜|´?€çõ­(ž;T)am\rª”sõ=êµþ³¤YnÞ‰dÁ\0Þsõ~µuâ¹dÊéöa´“ŸÈõë4¥2´GBÉ$§æ,ÞäÕ«»;f\"k¨ƒª¸þ•Ë]]ê7ÃmÕäŽ§þY§ò–š]ÑeÛlúšµJÛ±\\Ø¹Õáì‚Î)×?~PAü1UÖî\"~}?þýËçRC¦8\0Íòû\n²–‘®0	úÖ‰%¢%Ž¶»ÒØ ’-R:”Úâ¯¬ú#‚Xº‰½&´oéT¼¼c\0HÊö1…ðùâÿ\0„~î+{”¸Ž;Æ!ÔÕW±®€ô>ÕÆ|+”-¾¹l…â”që¸A]“Ö¸êé6k†œ¥Í¤„€ÄÖ—ˆ—ÌÑnÁþ­ù\Zæu(î¢1ÏmráDŠZ2:Šë5•ß¦_*Ž±’?mGb*nƒ\"0bE?¶hû³N¸àHE¶bô­†ò~*øqÏFi£ÿ\0¾¢`?c•cÃR|}ágø˜Ä¿›\04Ò²ã{W5ãDË@ýÌÄÿ\0lÖº[Ž$q\\÷Œ†b¶>’†?ŠcúVô>8™Ïág:¤ž½iÝ©¤b”\ZõNGJ\04 qG\0×Eu*ß\\ŽÆ’2pQÎ]QëO¦K•Úê2À…ü	¤ûvÒbž@Ói¢FIN4˜¦M0Ž*CÒ›Ú€#5*VéLaÅŠ°ÀÔ¼q!iX(óEÆŠîÖuêV¤÷—ÃýÛåÏúÉ–¿¨É«cÃM \"ös.GÜLÖ°ž&=Ù¬)É»ŒñÈÚ9%†Uãn¾Æ±¢BX+ppq]Ö…mö=’¿•9éL¹Óô·òÞy $(@Û¹â¹)c#-ÔÚTngF€.\0â¦AZ#Cƒ™±ÿ\0\ZC`A[¹~…A®…Œ¦÷2t$¶* ©“V‘p¸Û0o÷”\n?³ï×þYÀÃÚOþµh±4ŸS7Fk¡éJ:R›k´Ì¶#ÝX5DeÚHxå_¬mþª©³!ÂKtJ:S×¥WYã?Åù‚*de=~udÙ­É)E\0QƒŠ\0(¤ÁÍ*Ð‡Jp¦ŠQ@ÇŽ”áÚ˜áÐRh P:PQŠZLŒq@„\"“ñ§v¤ ã§4˜§RLãŠB)ôÓ@\r#ŠLSˆâŠ\0m…;˜â˜„Å%;”\0˜£´b€F)i)€¨4¸ Ò§µoxPÄ¾sÿ\0Mô¬*è<(?âXäw™¿¥sâ†Íi+³3Ä_ò›žŠ+>´<Aÿ\0!›l\n¡WGøhSø„¤§sIéZ™#ŠCNÇÚ\0m¥-€iâŠJ\0óÄ•n5-FýÈòaeŽ?Lß4ù§Q¸Ú%lµFþýqõ«–Ÿh‚8°VÕ¹¸~€(éšfiqâRêþ$)aj3WŒvä^ÝNÔŠÚË^[i0_ÜKµ¼Õ£=ÇzÐ¼ÕçÒœ%üfá%‰e ÀPxç5[â¶ãCò–¸œ‰Wk‚iç8üx§êsXßêþ´ZæËìèn·e|Ìc#ôýiûuî‚2÷‹í¡Üê0¥ÿ\0‡Þ1\"ãæ…céZ~‘ikâÙžËUitÝz×Ÿ/\n…±ü@ž£Ú™4×Ún©>£á¤ûnqöU9B·LÖmÕÄ~!ÖÓíeáÔJ|²1çpíô¨•y=´)A[SGÃ—zuÎ£½<7R[1òÝcÞY†rnxü©WP™ —RÔ,—Ëo–nÝ;Ö4\"âÞa=ê!+9GÚ:‘We–kÍVÎ;…?d\ræ\"éÞ²”¤Ö¬¥Æêí:¤RßmIW¦Õ#5Ç\\ë‘¬þM¤\"iÂ0äûõÜë`êþ$·ŠxÅæ+I\Zÿ\0p\nßþû	X4˜a•FÐbƒQXóYj‹K©æ6\Z&³qsö»å1+ÈÜGÓµ^}\"ázF}kÐ³vKÙiÚTiŒ†¹·~B².®õ(·>ŽHêâVcŸ­\'Q”ŒmE²hÿ\0âakÊIÄ!Pµ¬žÓæOô}KOÉþ•N?ZÉº»šâ0%¶Ã œY3i‘Êrñ¨úTÝ½ÙI3©ŸáíËÂÐH=f\\øý2\r²÷H5‡ö ƒÓDz|ŽGò«1êZå°fÖ¯”€ÌÄ~´\'.ãÔKŸ]/-c.=vÕðÄ‘+;E,J£–Æ1[PøÃÅ6ãRóTv–$o×¤Ô<_¯êvâÚíí,`”‡©óHF$M{kµ–§vˆT”~†—þ\r~m¾!¿>ÞiaúÖÁÒg„¹ÚjT­l„Ž…<kâ•ÂTºôýä1¶5«xÏ]ãíi—?õÒÍ?¦+œ¨«H)¤„Ï`ø/â)5›½fÖâÖÒÝâD™Eº\'ŒŸoÖ¢Ö<Gý‹âËý9ŸRG–áD_eÚÃ.iük•ø-söOˆm-Ý¤‘r0ÿ\0û-o|Dÿ\0‰Ä;Pò÷(ÎG®Ö*CTÖ¶#fl¿Žmâ–k(µ½>KØ˜£-äMu‡Ëšèì¼A$öûŸN[”ÀÌ¶I(ü³šðÝCÃÇûnøo3¼L:•c¸góÅV:U•œ‚O´´R©à£`ƒøT:q¶ãM@&·£HÁgyíÒæ&AùšÔµû%Ê³»¶”î¸¯ãñ?ˆlAZ½ÜÑŽÜ‘\"þL\rOŽoÃjZ™t{Ë´øŸéQìßB¡ÚÖUÇ\0jˆ£.21^5§|JÓeÛ]ÒÛû°Ê·)ÿ\0à×_eã˜ä;`ÖôÛ‚ª’úµ`BXñRâÐ©g\0cô¦HÅÆqYvºìÓ@%“KYãÿ\0ž–+2ÿ\0<Ô±ëúim²½Å©ô¸…£™¨qqÓéš}È\"æÂÚLõÝ¬‹¿øfë&M\ZØÝ2§ô5ÑÁ=½Ên¶º‚PzmpjSŽ«BVáÿ\0‡´Ï\rëZ’é±<>}°…·g\"­xÝÅc\"X¥‹uÈþU5ÜÓXïã„ÉäÈ à²tl~\'‰²8¬%‘%Î0[ úk®“Ñ39+èy¤\'1\'=±O#zÔ)˜×6ìJw@{‚	ª\Z6¨[P—HÕ?u~‡1¹áf_Qï^Ï:V¹Äã½+Ö,f36Ô8\\‘À$ã5•%ÌÇKI±»PÑçA&:¼Yå¾˜«7—qÇ¬M£jCÊ¶½‹÷30ý1ùâ°-®$±½h¯K‹‹d6·#H‡¿åÞ¹jÔ³4„nÆhå¸{uÁµ4¹MÝl¹?…W¹ÌW2]ivhÚhº&@[\0P=«>Ð–›bóÚÁ…FA–(S].™sguja2K\Z¡1ÊF¾õ”_>å|(W‘u£¾±8pFÜaz•5R6[æ\"7hl¤rŒ\0Æ&íUì.ŸNñ|öÙe<~x_îö8ú`Òx]Ä‘jP»£BoƒžøùHª¾º…¬´\"[¦}gS´†Žå•-¼ÓÑA\09øª7Q[­Þ¡§C0ò%(‹#|ÅŠµbÞÄê~&ŸÏ”D$šp7\0+&Öî7ñ(@ª–öÃÌs×€3Šä¨Ù¼RZùQNþuÚ/\nP¶yÍ]Â›;h\'Í­…¢ù÷s9Æyíëô¬Ûñ\n5ÏÝNg“wËµ?‡ôVþWñ>¬m,ƒfÆûˆ;d~äAQíhîÆÒ{ô«jÒø’áT+Ûi1·î`VÚd÷oOéZštSÝB‘[I1·‰€Z¦ÈÁÙÿ\0‹ð©c±Ót•ß<rÜ\\ò´‰¹0ƒúÓæÔVæ,Üø†k4„ŠÈÀü×m:|º³)KKDê<¦êi|5y,BÊDqæSÉ\\±àa\\çÂ«•ð­—‰áÕÀ´ç‰`ùYÖfBùÚFxåNîœŠ›KððÔŒžf¯©KhU[r\\6~cŽB}«&ÛÃ†÷ÅÚ¯†£žX.le¸œoÞƒn	¹Üã\\ÕW¿k\ZCU¹¯\rÔN®ÖVòNdve]Ê¸ÉÏ9úÓ¦žRÿ\0¦é–ž«1Þ@üêƒø7T€»NDHÆx¡á¸äuý+{8á_1u­2YTÇ)uvúqŠÑbeÕƒ¥ª:&€ÈÀÜøŽ9NxKq³?ˆ­›-ÏhÃjp q¦äÈçðéù×	¡}‚Yœßê¿dlü…0ÈOûÃ¥t2é\Zˆ>¯NÐ‘Èó_k¨5/.ì’Ñ³¯—Ãú&—ûÍ^æ\'=¼ù7l\"ÿ\0õéÄš}¬^V‘§Ép¾®1þC“\\¥¦žmcLÜ1b>ea¸ìO5là¸öâ¥ÎRø˜¹Qzë\\ÕîSr¶ž<»eÛÿ\0u¬Å·Œ1vä<–c’jaÓši<ÒØ®€G\0b’ƒÒši\0ìŒRf“\')	 \r_\ní:¼±7I¢	ÿ\0W§ÞË™-Á¶±HS}Öã»Ü\nít	<­rÙûÏVkCä__FÁ_eÃ€gæ¥ŽýI.¢U->µ\nû[Ã’j…Ç{$Icq©…\r–¸aäþXä×V°©Ï¢\nŠD22±véIÎxÀ4•¸sÊ·$™&’/6BÇ®OZÄŸÃwz‚$êé\Zc\n®¸8íÅw‰\Z«8\'¿­´\\æòøNú2\nmcÛoË­3^š4Žêù£N<…Ô}9â½ •Q÷±Q\\]Å’` v-B»Î\n×Ã×ÅÀ6f{¹éZðøv8ÀûCÐq]^‘a¬ø’o/Ãº=íñ$(B±ƒîçøÖÝßÃˆVÑþÂ‚uqÝFÄ{cvIúSwÎ\Z+!\\E­8¡ÓŠ»}m©é·‘Ùëz]æq ,‹qMÿ\0îç­ qS`(ÉÆ3aÏ=«OÉÇ8¦˜2{gÒ˜Œ³ÉïIä|¸ëZ‚ßÍ\'’\08£ðØõMn9kxŸF?ã]£+uÚGá^n‹=¼Í-¤òÁ)\0‰°H¬«ŸxÒÆæE†þæH³ò–$ú•5„é9JèÑ4Q¼ÿ\0göÇó®’CçY¶Žü«ÄOÄÅ	[»	—3I+É€ý+Ùô;¡¨è:MîÐ¿jµIAáI^@ú\Ztá(nMGty-ÀÛyp¿ígó¦šŸS]š­Àú~œUsÒ¶„ñQÚMöox~å¸XuŸ@SÍfkO²ÜuYþ¢„Öw¼\\H;f°|T7Y†ô1ÿ\0&­ûâ>Ðç×šÃñ8\'Gv ò?ýzÚ“´“2šº±ÌE…û£ŠJõŽ!GJQÖ…¥\0¨8ãŒŠQAàã¿·jOa¡¦“Šq¤¦„0Ò\ZSHN)€‡§4ÓM’D7HÁG¹¢Ö;½A¶éÖ­ IO–ƒñ=\n™ME]±¨·°ÒªµÂq+Í)8	\Z–?§JÞƒÃ;Â¾§pòœs|\'çÔþ•±ii¤^U¼p\'¢WLlc¤u6÷9k}Q»¹t²‹°\\;‘ü…iÙèv6Œ®#ó§ýl¼·øÂ¶Š“Ö“Ëâ¸êb\'=Ù¼iÆ=\n®…º“Qù#Ö®Àè)>Zær5H¦öÉ\"m–4‘}dR%­ºåÙÛ!õX”\Z¼Ž†£Ò’“|¿l~ª8«AG­8&}\r5 ±T\'N)ÁFA«3ÝivØÕ&+Àâ—‚0jmƒÖ—ËÈ¢áb«Áƒ\Z°ô\"«¶•§¹É³‡žàb´|¡ëKå{Õ)µ³*fQÑ¬ñû¸Ìî“P¶ˆ)y:M«ŠÚ8ÍªÄT[2]8½Ñ‡ý2“²ïwûÈFÚeúœ ·qîøþ•¿ƒéG9­2ªêC£ÐçMúšÙû²ƒQÈ&ˆeà“þ¥¿•tßZp\'Mh±Ó[¢^69#vŠä}PéRGqŽ^+¨\'\"¢’ÚÞOõ°FßU«XþèŸ«+n`+©<0?8GV±Ò´öÿ\0—HAõ\0ŠaÑ­9(?ÝlÖ‹º\'êï¹Å\'jÐm\Z<åo.ÛjšaÒdQò^n>Œ€V‹Iõ#ØL¢Aô¤ÁÅ[“N½S…¸õ/éQ›;ÕÀ‡é ­zoiì§Ø¯ƒF*FŽd\\¼ÿ\0¿•@ÒªŸ™%XØJÑN/fKŒ–èw4†Mèß¡¥ÊžŒ)“°¨4ìqIŠbE.(í@\rÀ£áHG½0F/j(;RS…\0Ê1NÅ€Et>Ò—Þi?˜®|Ž+¢ð‚îÒ##¼Ïÿ\0¡W6+ølÞ‡Äcë|ë7?Z¥ŽÕsW9Ö.?{úÕ\\V”¾Dþ!¸éHŽ(Åjf0ô¤=©ø¤Å\0GŽ(§Å&(†’ŸI@oªêW¿µžûv¥*Û¡\r÷cêx«º­ô¾ð2ÙGrÑSˆÓ‚ÌGò¬-6#«x¢Ú)ÛtVêúV’ê-_Ä—\Z•Ö[LÓr#R8vì+ç“ÐôŽu ŽÛOµe‘ei—-‚ICèk{EÏkµ^<ˆñõäšÆ¿º[»‡’Ðß“,©³ý_°«¾o+ZÞˆ~fíž(˜üÎÂê)ZÞ@Ž|Ð2½¹¬Ë¨×TÓúÝz•©‚ðr:æ®[¥àËIyæyÂàU+¯?J¼\Z‚8hd;gLvõªd¢V¸Õô»ë†*ª’o\n½Kw©l§3[G;Ë/“&©¼¯¤ë’Ãk\"µ½Ê¬€Ÿ5QŠf¶¸¿YÈ@	8 \Z‹Œí´í\rNüìHÄ‡ØsZâúÐ:¤YžCÎÔÎ©hÆ´o´·“§˜å—³ÿ\0ÖªðCÌ6Ÿˆ`ÏúÎ…¾‚°voSoB•ý—ˆ¯5çž	íÍœ,§ì+\"‚WßóO_Io=‹Ø\\ç!•o¡©áê·W¯q4‘Lƒ\n­·k}GZ—S°ƒíÌa°Y‰ Òml4¬Q»i#ë2QÚµä\\(äc©¬ùÓæ¡gÈ€ƒU:ñWœb¢eíÅRE—ÔSBô«´Ý½*€æõ˜ü½X€00E@£5£âdÄ–2ö9CYËúÖ‘Ö$F=¾•n.ÕZ3Wab4|uöh$à•‰³|§ù×£üc‰âŸJ¼N	a$Žø#^Gvío-µÌ~	@}0s^ßñZ1uá›{¤åRâ9ÿ\0Ù©Ë¡ò{¹®.ôÛk©¦v!ÌOŽ¨ªATv«Vc~›}nÇ”\"DàÕaÊƒH¡\r4ŒŒÓ4ŽÝ©§áŸÝx—O¹¾[…Ž¥1L$u\'Ò´¯¼#`÷M#tƒŽ>•ËÛÍ{e!}:öâÑ‰É0ÈS?\\VÝ—ŽüSdWuê^ væ%lþ#õ¨š›z2“±	ðãÛH²Z³ÂëÈhÉR?WáÕ¼Y`?q¬Ýºÿ\0v|L1ÿ\0®Añ4Hjþ‚Lžd¶©èÀÿ\0:ÑƒÅ~¾$K-Þžý„°’?5ÝYûëtU×S&?êáµK»aÉ–8Úü	Oô­[/ˆ6JwM¹¦ŸH&[•ÿ\0ÇðkV\rKÔÀ:^©es¸p«*îü³ŸÒ©j{t/q	œgÖ—´]GhÚÆÆã«;»«X—WŽ[wž8Ü][4LÊH\ró}ÞÉ®ƒ\\IÃž!Ðä9»ÒH½´ÿ\0n\0Û×»pWò¯	Ô&·K¹ kuŽ8ÉÌ„çt?Ÿ5îv\ZÄž#Ð­õÄ¶d×tØ€¼¶*A¸—$¨=U‡Ì=ÅtÇDe6q²Ì—7Q]ÂFÉßÌùz|Ã&¨x‡H\ZÄ\0DÂ-Fßç‚AÆ@ä©úÔZL‘ÿ\0gÜE,f‹#Ë ~UjëPŠÖþ9î‡—o-¾btmØ¯EN2‚LãqjZv—1x³Lm#S?fÖí¿Õ³q–çš¢ó½ÌL5äëv‚e~<Ô÷õ>õ«â]ïaƒUÓÁ[ÔPçoÀçqŠ¤Æ/Ù#X|Cl˜ð.PrAµ…Dö*\roÓò.i¶5˜x.-\nî„¡àƒÎÖõ¨­âkËâ¸\ZÈÎ0vÇ8ÇaT´½^}h»·f°í•°ÀèIþU½{ko­ÚÀúqY®\0ó£™IHþÜgÒª)[Ìië±Zþô.§áû©[ÞÅ)³š&Á\0>~”í Ee¯kÖr7Ë°ù@w/LÆ³&»:Ÿ…omZ-JÒ@Û”à­Î{æ´\Z[qâS}Ì±4.ûåãæ)œÆ±•KIËî˜úEÔm©êOóKƒîÉÛ’qÖ³<?hëq,÷“)„Gç\\?\\¯\\~&©i¶ìÆ[›™ÑŒ¹ç©ô®£Âz,š¦•öÙóo¤BK\\]JÞZÉàSÜøúW<S›µÍn¶ÂëSs<0	ŒÃ¼8UNÂ¶Í¨ŠÞõ=Bp>ìp~éGÔ÷¥²:×‰\"+á{%´Ò‘Âù×®>UÆO×óÅti>ðãùºÎ¡¥©}ã#¯žùôUåWŸZèNôZ²/)jô1ôõy$Îž>ÑŒ¨r3îçŠÓÑôÛFêâÊúä-Ú­pälðG½]ŸÆq6Ñ§iŒÈ£å–è²ŽŸsw:µËiz–©+íg2â0\0Çà)ýbii {4ÍÒ-ô?˜tFbö1‹«ˆžmÂf„P8‚\nÇ¹¿³oÚ@;Ma©[«ˆ’ÜÛì@èÁÐqØâ¯øacÓþÏw|ël²#Mq!þTõü+#Äz•Äž\"Ò|W„V2ùú|l£uÔQðÅÏ÷˜0Àôzœ$Ûwf‰[COS{Ûk™t›P¬{VæíóÂ±Ï¦9ªÚ¥ÚÙ„óíb¹°p6:Æ“ëýáIs¤Hí5·zÖ­ºëPùaˆ ?Ä\Z±y²ÞÝ Œ\"¦6ªã…Ò¡¹B-;DÔlží¬mí‚°Û$\0¦ïªŽ)“h—ö¯ö#S€XÉÀÛèCOòrÑÞ[›`wÃ\'1È§¹Í3Y·DU™d´Œÿ\0}NÀÙ4\rùXjÓÎDW-“€C §CZÁìAô5¡§ÛÊb»V…Á\\‰£¯­6Ð¡Éºt!¹+øÓR%¤õ&æ“?ýj0\0àñœsIøÕ¦HÇZJCIš\0Rr)3ùÑž)J@O§>5[Ÿ•¥\n~†“U€êø0•qÛ U}æ9\"uW~u{Å3Çk®ÈåÂ¡…â})1”Ä{@ÏQÞ•”èœÚ–µpaÐ4Ë­JP@>\\d*óŒ–è¹®ëHøIâ]E„ºî£i£@AÌ0þþ_Ç(üè·p8K‰b‚=ò:(=	`(Òmu-zaƒ¥Þß¶@%\"\"5\'¦æ<©¯vÐþxSF)3Ù¶¥p‡?hÔdÞÝáqßk oiÖÈ¶–A®\0U·²*£¦8áhÐW<‹Gø7®j Iâ\rN×Kˆƒû‹açI×¡9Ú> šô=áƒü>v°Ó§?hÔœIÛû§úRêÞ(–Û)sqg¥©Î´N}>EàW\'{âH§“1ZÍ¨>r&Ô¤!—Îµ…*•6DÊinÏI“Äšz*[iÉ-áPb´ qŒýÑ\\ö·âË‹x¤Yo¬ô²ÂB>Ó7â\\5Þ£©_EåÝ_H-ñ8Ž0=0:þ9ª\rQÀêˆª\nž‚º¡i˜ÊºèIñ’)î4]Ïq-ËExñ‰eûÄI\Z°ú}Þ•ÃíùF5èÚ<¦ÉŒˆïmä?C/ó®D ½«‚JÚ7¹P¯FÓŒU™) \"òqÈâ`Ry$÷« d¹úPS®E!y@“íN\\€‚GLb¥Ý†=év°3JÃ(ÝÚÇ-¼ˆê¸aÜf»ßxOIAÒ%h‡Ð1Ç‚AVÿ\0ƒõ]:×DŽÎ÷Rµ‚æ)\\ìžP„‚sži¢^Çâ5òõé—ëÿ\0¡\ZÎw\0rkWÅ—\ZTšôò>©ŒÛ5Ÿ<ñŽ+95\0§\Z^›åÇÚ.¾gú…è)Ü¤,w3ÄdXÄPŽ²Ìv(üMekÆÆ=6U[™.nAF¸yçæ=xô«SÅsxÁïf’áÇO1¸AÒªê–ØÓfGÀ¡nÔð\\}®ÊÎäûûxåãý¥úÕ-{\r¢ÏþÌ.ñå¨ü0Ûü#á÷õÓ­ÿ\0ôZÔºÀÝ¢Ý(êÑ²ÿ\0_éZGtCv94åG¥)íÅ60<µúSñÇëœ ¢œ‘R-¿ú›xÞNr8ÇsP(v\\Lã?ìeis_`·V+8baŸ¿p>´\"„R3–=O­/\0aF*9fHWtŒb…æ?$>ð)Öv÷×çV¤®qæL|µ˜Éü+V\nÆØmNöIÛÃÚŸŸSYTÄS§»*4¥#ž7däœKÒ´aðþ¥xÁ§xì`>áä?‡Aù×QiimcK+h S×`Æj\\ÉÍqTÆÉécxÐKs\ZËÃzm¦×hMÔëÿ\0-g9?€è+W¨¥?\0w§\0q\\r“–²w6JÄ­O¥OŽ”`ûb¦ã Ú})¤r\rYÛÅ&Ò&ÆWÅ4‚qÎ*Ë.O SBqÅCcH‹A£o¨©J¶>îhÀî­ŠWˆ‚‚\rT‘R…³øŠP(L,D{?\Zz¡þöiáAô§ºp=*“Fôð¤+ÀÊŠ˜DÃþtaT˜ˆ6îšO-{*Æ¸‡§+Nà@c8á¸¤þÆ¬d\nßJ.[û¹¦•õZ²ú‘JÑ‡ãNàTÚ¸¥Ø1Ö­loE4Ý§r‹ˆ¯åÒyuh3‚(ÀÀæ‹WËéÍ\'—ŽÕoh=¤òý)Ü\nÁ(Ú*ÆÃè)<¾:\n.}ž”lÈäÔûE_¥\\)?)¾OãR„÷¦”>¢ÂÅw†>üjßQU›J°c“i}—¢Ž”úÕ)ÉlÄâ™’tkM¸HÊ}	¨dÐÔœ¥Üéí…5¶zt¤#Ú´XŠ‹iéÅîŒ£N l»-þò\n‰ôËõ`‰þ­Šèé‘Z,]UÔ—F/¡Ì[ôûöÈÝ\Z–d¼ÇÐnþUÕäRnµ¢ÇMnˆú¼N@N½\nÈ¼dJrÍô®°zóQ¼H1$(Ùõ¢Ç÷‰?V]Îh#¨¥Ç¸úUƒu´ˆ}*£Z`”‡Ú´XèuD¼3îdbŠÓmIùo&ÛTÓF˜–çpÿ\0i@­.“êG°™œÀâºOø•[{Êçÿ\05ŽúUðû‹÷ñý+sÃ£ìvVÐÎ»]\\–ÁÈå‰¬±5¡:vLÒŒ$¥ª9ÝK\'S¹?íZƒ> H¿¸b’-B“UÃ©Ç\'ñWU&œŒ¦Ø Rbœ8Á¥Ç©‘)ö§â“\0Â8¤Å?Ô˜ È¤\"žE4ô ·¾m9.ÖÝÿ\0Ò&RØtÈÅkOZéö>Ó%˜§;ƒÃ7ÿ\0Z²DŒfFEÊœ‚FsW®ŽËí13ÜÉ°•8)_:zv1á†{¡*È¥íAö5Â³¼:ëFªJoJ©{ncE\nîyùÐ>¢¥mŽk›˜¦Ü±ÄÁ7uÜF\0¡hc#y@ÜZ¶èØòAúT<wÈÛ†R9‡¦ÝJ¶QÚ\0¿è6âYNz’kC\\Qý—5õ¿ÊDaþS÷…SØV0Š,¶€—˜:…\'¨ª-–’â)r¤{Öµ˜Kû½Né#1Î–ë0³õ‹lÒ]ê(/,¹oÆ³ê3¸Ñn]lìÿ\0á!K5·aó\rÃ³VÒ´×3»H­íÿ\0åœqüÌÞçÒ³ôÑZý£ó\0bpyÆ•n´û´Xßu˜ õëYÊ×5Z›2d.Ø÷àõ9éU5pQ­¤w8\'g=ø§Çy½e•÷b9.Þ¿JŽòWNI.ÜÃîÛéYìQFFÊŒ;UI‡«oÞªÉÈéM£2àçŽ*ì£µUqÈª@V`9â˜Tf¦¼ÜS?\n¤##Å1nÒcuŠ\\þc†§#¥uZÄbMùqÈxü+“·;¢Cê+J{Ë	Æ*õ±ù\Z ¼w«öœ©ô­Iô2YÊ\0ÉÅ{Dî5o„qKœ·öz6}ããÿ\0e¯!x·Dëê1^­ðÁÖÿ\0áÉ´8>[ÏlsØGþ…CØ—±å‘9†íØ×vpi&@’e>ã|ËííI0)q´õØýGôW–ÚáÑIŽ·`zbÈO\"˜iäŒsLÇ4\0ÞÜÓYr)í€qM‘eX|Ño98Þ#$fJ;c\'Ò¢6ëƒ•žõe\0ôäõÍHp³ß¥-†W6qKjnc‘W#šùmÅ¿öïÙ¸ýÏžÛ?,Óí~kgFR„ù@8ÎzŠ7üJm%ù˜u\'“^ã¢Euwáø£@ãXµ³ÓCœ-ÜHv´mïÆGÿ\0ª¸Oè^Õmå“Pu0„Y_\n°ïø×I¡^Ýü=™Æ¤<Ï\n^LBI	ÜmeÇ\\vÓü“Ú&ùI‘|ˆº£^Ú+&›¨y‰0Á…ÏßŒŽØ&¨i×Q\\XØ.¥nVñµ²ç{ÁüëoÅ7)uªË§¬7š<ÌŽk0%%*2ÌA\'9ãÒ°4}¦ÒXåùÄwM·=»ÓçqØÅ«‹-Î«á‡KçŒÝè³à°˜OLdôþTšÕ”7Q/ˆ|;!hƒ†‘cûÈzîÇnœŠ…µmCEi®’Ü^èîB\\ÄFà¹ïÏJ›E±ÔB]kÞ¶K)[mÆž$Ý.ßdüñ]\niÅ\'±<Ž÷[ÿ\0[“Ykún¥Ý¦¢‚9.\0“\0±ÈHÆ}ª)mµßyöÒ½ÞŸ±Q EÎÑþ{Öå§ƒ4è]Çzñ¬×%lÉM·%\\w¡ˆãß˜ÐµûÍä±Ö¢†úyß)÷„e	PÊsó/\0ýj]Tô/o¸†[›mµÛv3¬—1µÌS3çË\'•^k0\\ÈÚÅp1ppsÎ1ÍiüKŠÓí1jú4	†£!ØxiW’Ätú{U?ÉnÞ+–X_Ì‚háv	Ù¶€ErÉó3EØ¯§[ÅwpÐi\\ «ÐS^w\0éòjíÚéñí¬@ÄJ@Àb?ˆýjŽ‡e‡ôðæ&¥wóþ%^ÃÚ¯*4h×Z“©~»sÂ{Z¨«OË>¯¦–œÃ«G\Z\r Ÿ âˆä±Š<¢8%?+ƒÉ•ÊñË7ÊîF;_­X†5Y˜ª(ÞrxÍ]Ã¡G[¿UÐæ6R¬’Ïˆc\nØ95[Vµ’óVÓ4c‘earL ý÷ÆNÏzŽöåo¼Gi*‹H$äŒžæ¯èá¦Öu¹;‡_Aÿ\0êêU¬®Uñs¾¡ªéZ$NUn¤q´óåç§óüª/‰šº6·§YØ\"ËmáÁöXð>û¹Sê\0U\\Óô›¡&µ¬ër‚VÚßl>Ý—úþuJ;þ:¥ã;ÝOxJ®r\\€K³~$b‹‰ht÷ï,ú¦«âé•ã¼gà¯\0žµŸ#Ã-íã‘cSêzb¦ÖnVêÏGÒ­Në[KU»¾u	ÝÉöüâ«ƒ†‹ŸÝ!8Ï¾)_AìD,¥ÔSûBõ£QŒ{Z’ïZ°Ý;±Íâ6e~ŸZªï=üòÇjÃ#lð©W4m&=2Þ/³ƒ+à†gÀ>ž”n;®¥+M5!µYâ­‹nHCœšÖÌnˆ*:\nEO#r`*À¦¹Už8ö±‚FAïMw$CHNsÇŽ¼}i®â5,ÄI5h{R\Z­ks.£sö}\"ÎëQ¸ÇÜ¶ˆ¿ãÇjìôo…~+Õ\n¾©5¦‰nO!›Î›¡WÌƒE»Œä&ž8”´’*×&£²–çT¸6ú-…Þ£8+o|RGoz÷\rá\'…ôÍ³êÏ«Ü.É{\'îÁHAcšê[Ñ´xE•—–p¶¶l/‹®sÇ4…>(ÔÊ>³sg£[ç%yÓà€§n>¤\Zô]/á¿†lZ9¯ ŸW¹‘.¡)uSß	÷qžpsVu?]Â¤ŽÏK„Œï»}ò‘í\Zó\\–£âX\'ÝÅî®Ýºcoú\"ò\Z¸ÓM\"‰rKsÐ_]Ó,Q,ìðþXÚ–¶1n\n=0¼\nÉÕ|I=²ÿ\0¤=–•ç÷ÏçLG´k\\ÎµªO”—ÊÛ ‚ÍDKùõ?e,Q¡,n=XòIú×U<zÉ˜Jº[§âh&æ;{­Qú‰/ßË~‘¯_Ç•q¬jwQ˜å½6ö£¥½¨ œsùš¢[ÚŸ§YOR‚Õ™ÒÜ°óä_àSÇêp+©P¥I]£/i9»t\róVv\ZlÇlq\'Ê¹ïï\Zëíü`‘¶_ÞM!ë³j(ü0Oë[±ùVÖÑÛZ Ž”*ªúR4‡WLTäýÝ¼i¤Œi¼	i* jwPÉÔ	Bºþ<\\ž³§_è“,:´J^\"ž3º9=³Øû\Zô»gb?Ï5¡qm¥¥Ïe\nO‹‚®8±†•<TàõwA*Qg—ø¨,ß\nî$<ù\"	?)¶ÿ\0#\\DJLj@È8ë^…â1l¾kPÈeìÍÄ-ßh•[éÈ¯;¶v0GÏG|Ö\ZrmE4’dœdåGŽqŽM8±4žaà1ê+2†À})\\àdâ»#Œškó‘ŸJ\0rHöéMl$JF0¦òŠ@.Ò3ÆÑÚ«ÜZZ\\àÜÛÃ)‚è\rL~é dô¦\"˜¥­­º…†£ÿ\0q\0¨äEc¹ÏZ”¹ôæxÛ­\0U1(ãhª×°†¶ÚkL¦G8¨f108ù†(C=ÀSý£À^~¸´Tÿ\0¾I_éZ·`µ”«Û\rÿ\0 \Zç~1?´Pz •¶%zèäíä_R\0üx­±\r\\ãa?»^9©3ÅTŽBƒaRX\0U$õö«ðé÷³…bˆûÌrß÷Íz®¤b¯&qò6ì‘TN=j8ç3È\"´ŠYä?ÝSõ=mÚhvHI¸óo\\œþõp£ðÖ·bB(G\n¼\\u1ÑZA\\Ú8wöŽfß@¿¹æîdµ\\ýØˆv#êx­lXh–¶E]m¡–ué,œ·ÿ\0Z´£E\nräz—ÀÃ\\SÄÔžìÚ4ãˆÏœÌ|Ä$˜4`\02Œ*PŒ:NC(^ÇÖ±4±Êþ4 ƒœ•?Qó &€©Ÿ¹¡ Bdgà*]¼q‘HC	üé\\m8¦•êlÛò `ÿ\0\rˆ@ôÅ.µJg¥*Ç»…^j[i1 Ôòˆàÿ\0_4Iì\\gòªW:Æ‘lŸ}\nÙÈ_çS¸Ñ>Çë@ŒYrx«@N>ßnçý™Tÿ\0#P7‹ôOàóÜîBíÿ\0 ©¢Ï°Í¼uüÅ.ÜŽÆ°Ç‹¬ú›MEþ–3ÿ\0ñ/Š^B¾‹©9÷¶*?ñâ)òË°®™¸\"qKågÖ±ÿ\0¶õ7PcÐ®—ýóÿ\0íJ¥uâMf|Ë]6ØùøÔ#Œÿ\0#M\\,Î”@ßÃšp‚^À×	?nÀÃëƒýí][€AY·?­ é~/Ñ—?óÂ9§ÿ\0ÐMU˜Nû<Ý—ó£É}à }kÇ®¾#hDdøÊåÏ÷-´×ÿ\0ÙÁ¬©þ$ø$6©â«ÿ\0Lí­ãù\Z|¬so,csÆ>¬)¦K`9–/Á«À¦ø—¢¢k¦xŠì÷óõþ€MS“âNšü·‚Œ¤wŸR‘ÿ\0šÓåacèV¸±QóLÒ¡7úVpnÐÛ5óŒßcVýÏ‚ôÁèfF“õâ­ÞøßQ´†ÉÛÃòîâó¢jÇåÎ?½MA‹cèˆæ±q˜î–¦ŒDÿ\0êî\"omâ¾lƒâ+î»ðvƒ\"ÿ\0Óh[óÉ­o‰\ZK¶.tZÁ?½g¨´˜ú+`QÉ$Ðßf}¾¿CM0?u?•xÄ-ÎÄzõŽ:}ªÉ$šk¡±ñå­Î—Œ4‰Hÿ\0Ÿ´–ØŸÅŽ?JVhIò±ü8ü)6{šå4ÿ\0ëwgF¿þÍ©$„þGó­ñ.¥\n¥øzèã«F¨ÿ\0ú“úRÔ\r¬QŽaih?Ól¯­ˆêZÚQÍqúÕ¸<YáÙ”cQŽ3èî þYÍ\Z¢G`Ò g­:½6åC[ßBà÷íùÔê‘0ýÜð9öQq±õ¤À«fÚAƒ·ò9¦4L£>Y§p+qéG6?Ø\"š@=¨¸HWÚ¦Ú1Ò§¦iÜ\näJiÚ\0ÅYÚqÖšUøÀ_Ê‹[Ò5knz Í7`þé‹X¦~´ÍX(¸Ç\"šSŽ\ZÀ€¡äÓîÆ§hŸM3Ë—?w#ëEÀ„–é†G9â¤—*vKžßãM[g$´„aÐQp\"Y&\0¿*ú÷5fÈ zRª0Š”)ÛÈ›º—99¨Þ8¥xÕ¾µ9A’H¦˜Çq•¶E)4»ëm>ÜT\r¢Û„y\"ÿ\0wŸçZ[cM!†+EZkfK‚fCh².<»×>Ì‚ “L½P|³ý[¸wv™`9ZÚ8º«©ŒCžk[ä=ºŸ÷\\\Z®ò4yE(ÿ\0€]FóŽE\'˜­ktú¢=YfºŸpEèk¥u…ÆúÕY4ë	96ñäLV±Ç.¨‡‡ìÏhŒ2‡„\'—Á^sƒWíÄsKy40ÛB{ÔzÅ¤ÞéöR$Nÿ\0˜Yö—7Zù21`W×ŠóÍB³ZÛ5ÕØ†KcŒ<`ü¿Z‚}&ßJí÷;¯lg;ÊÄv•üjž›quj“	JÍjx’zQVm¯â¹Ñn¬–i<¬\ZÈö4¦…­…„pý¶Ñ.£kÅ £¶ï–®è¥/l%Ód9xÔ¢ï/jåô«Ùí.c7ò,c`ñŠÒ‘vÆ÷º{s;ùè\r1Øa™¡·¶À\\Dïm6?‰;TvVë­èÊ#\n2=óVomaìn-\00Ü¡f ç2TÖv¿ˆI\0…Ž$™<©ÜÑðüÏÿ\0	 « þ=krye†\"$;]Ì<W3¦N±êëu1>TŒU•GÞQÐV”Ú~¥l÷W¶ú]¤„Ÿ2W‚ö\0jÊ¢Öæ±z®§r/Þ:Ú;Ý@ Ã’B[zÓ\r•Ã_O-Õë©,ì8ÀÕKE¶Óá¶è·SÌó$ûv‡=ùï[ÊŠIgpÁÉ¬ÛEYœîàÈ§ÔTR)ÀlƒŽGëHç4Ê*ÈsÖ«°«Ãb¢#¥4y5*ÃŽ•	H@ÍŽHû:?ˆ®×\"=§ª±»è&LuÍp÷1}NöÎÙK¡9­)½Z%^ÜÖ‰š§Ž*õù±[\"\rEäW |œý—Y³#9Ò`=˜¯?\\Òº¿„Ó<]}8[‹Cr¬øÓÝÎ_±”ø’kf{¹\"Aè	Èý\rE«Ü£H4Û+ajpqÿ\0-dþ&ÿ\0\nèü~›®kWj’H¢Fq´ŸÈ\ZãbPˆ\0¨Ü¨ZiëD²$jYÈ\0w¬ÙµAœ@…½ÏÆjGöÆõQêEh%ÆÙ\"Q¯ZFª0QÜ­qò]\\Mœ¹\0öZl1Ý+¢±(nyúT´=z³é\ruk-µÃÑeÎ~†°/>Ñg>É!;sóûÃéXû®j$òƒÔlùV­®±jþ&¹\0m$rG¸56’š-ZÜŽŸwº·¯µZ‡÷€p¡»óÖªÅöõÙ÷;%òÊa´þ½DÂH%Øë‚\rO3¸\\ÖðúøM´Ëy@\\È#ÜFy ÿ\0\\Wªxoéú¶¬Y‰m»eæOBÙàsÛã~ö·‘±\ro2±î9¯KÔ\Zâ?Š¿ÙÍ®\\iðÞéÁÄ¨WŒàŒÝj¯y {¼ð]¢Æ–I\"Z\\ Íüd†uÏÜŒþ5ÉYEqe¨êºmøÛwm0ÞÆì®CcÐŒÆ»TøŸÃv±D·Z­®É™E20ãœtcÒ¸Énšó]»¿’9ã¸¹Š3(˜r\\ úSz™ØÖÐ|R|5ö»kï-oU‚È‹ÒB0‰à©ãŽÝy¬o[êz>­þ˜ZÞ­¶écß»Îçæ9ø¡0hM¬byÕ¤‰±åàw¬¨c–ÆçNÕ´©$šþY›ÍFû?Â’“¦Æþ#ê\Z|ó¹”Í=ä„ÆçˆÙ°\\ãÜÖF¿j^·{(#Ð¢Ç0$aÛÜ}+cM»Š;=Núd¸¸y\Z2ÝqøÔ‡í6÷7³€é1*Äycøp?\n«Œç|Ue\r¥¦šöS7ØînK5¡9ÈQíÍAakqvÓê1,jÜÄ¿0ÏVÀ?m%²–ÀýÇ˜Ìør>µµ%„º‡¬)¶KuuNŽ8ääÂ’CZXè.B[ÜÍ$’—«Êßç¥fÙyº•Ñº˜2XÆr­ÖSýâ;Jµs\nÝ]¹rZÙ§¬ê}ªÈbÄg§òª@U3	5ß³íÉŽì}2F)ÚŒæÏH¼¹‘¹õ<çT¬]OŠuW-ÂÄ\0#œð8ª~+¸ûLVÚtA€,&›#(è?:\nìˆ-#lÄÌA}ƒ?LV»-¾‡u0ùZy|µügÚíVcºµvp­ged„´ü±àõü*.7©Y‘×ÃñÛÅÄ·“Æz¨àU›ûX¯tkëíig§E¼*“<Äå°=:ç”õŒO¨ÈPâ;hÄq±û»‡Õô¸±·Ò>Êïr„gnX·\\ûP/B\r6ÒÏZN·PZ%ÃI%Èy‚É&Ö!P©ì1ŸÆ:|‚2V+’\0ûíý+&æúÚ(c2ÁœH\n1¸š“q²Ç\n³0ÎÒ6Š7\ZF¼’F‘J±@¦à§ËIªWÚt—qàêsÛŒaQN}ñÍfÚêÁ2Æò¦ì„oÉöõ®Ãþñº“ÍýœlQ›÷wyRÐG×4Ò°ldÙÜÏ§i—°ëI\nù°Oœ°ÏCžõSûrÒBÓCtRgvŽp¢½KHøK¥—Ž]]¯µIÏúÅ•Äq·Ð/?­uÖñøoÂè ·O°vÀZ¨i¤üÌM0rV<[ÂÚ&¡â}A#ŠüYÚ€	¹’ÕŽNz(?xýqÒ½?GøG¡¬±M©ßjš³¡ÜÉ#ˆ oø÷Õm^x’æ(–ÖpØÛ·KRo/ò©úW¯øÇOh¥7Úö¦‘å«;qžßÞ?Ê­&ö!³Ô[Ñ´–ÂÛÈ·ÛÂÚXÇ“ÿ\0|¨ýj…÷‰oÄBD‚ßL†DÚ„ 9úF9\'Ú¾~ÿ\0…”ú=ƒXéîb¢ÁéºCÉÇLƒÚ¸ÍWÄº¶§+¼³ù;ùb„³·Õ»Õr¥¸$Ùï¾\"ñÖj„ê:•Î¦Üá%²Áô\n>cô5^ÛÄwš–™\rÆ‘s–0;Ê?/8àäŸ›#uë_:/’^I.Ä³ÈFC3d“ï^Åðå¿âÞèãÓÎÿ\0ÑÏ]XhÅÊÍV¼ctÍµ†5bänòY¹\'êj^\0àb™º´4ëO9ðÈ<`ö®ùÎ4£vr(¹;äœf ’L*­ö¯ö[Øéñ Ó-ÕâžDzR¤Ž}\0~4Û‰~bcN•ER<ÈR+±\'œ{×Wá–[)¡l)¼\r}ðŸÀ×$ï]—‡$1AmU‘²r+[ýÝhüGG§êWm–Ö\"ÅFq/~ž• ·ƒˆ\"¹“ÿ\0­\\¬Ž.o£òdÌw.øIÊÿ\0:º“²ø÷,qüMÞ¼“¬êTH×#Ë_ æ•uYå•VÞ7‘²;`\nçák¦#Éµ‰fÛŸçLÕ.O´k{XŽÖØ|ÄÇÊ95 HÒ‹¿†Úä$!’Ö;Ûsƒœ`3\0â?*ò-:@öØÉ%\0éí^­ðÅ Ô¼7q41»é÷÷“0IF@^G¸¯=ñ6„<-âË&\ZK)#ÎÇ\'aãiúEER=Z@0>”¡{œ~tƒï€9¤1½…!S»ð§ÛFGZ8í×h=»r3H}r)ìGÍÇ~(ééHdl§o_þ½4®¨5!#(ÁÓ’rNh6Q3LØN9<Õ(vâMàu9 B‚sƒéÍ5Â\0yè:b¤`ƒ’{S_œý;P¡|\'—Q3“ÜÑþ ÿ\0ìÕÑêwÚéW7ñy²Å±‚{æ}}+”øHGü#:Œ#þYß1üÑ?ÂºÇçx_VŒ	€GA¯ ¶f}¿ˆ-,›ŸßÙ–ù™ÒpIï•ÝZVÞ/ðôà»0·¤À!ƒkÀ-µŸÙM\"ÚëºŒ^S²l2îQƒºr*çü\'ž+Š@—SØê‘$¥Õªãÿ\0Å¡=ÓÏ¡á½Óe^Ä!ºÀüêÔB&å7ú8¯›í¼u\n¹7¾Ó¤—<Ia+Û‘ù[pøßFmŒíâ]6cÕ’éGýõ“úV.”‘G¼v“˜ÈP÷ä6>8°•-|eÈyÙ}i$D}Xak£Ó¼W®N1cw¢j„sþ¨£ûä¯õ¨³@wk\'špÇzåßÅú­¢ƒ{áû‡õ1Æÿ\0@cü©ñ|CÑƒ¼µ»µcýø\0ÿ\0¾ÕEc:`¬ZQ¸rEfÙø·Ã—ŽJ=çøq“ÿ\0Žæµb»Óæ8†þÕ¡)ü \Z6ã‘NÂ‘ÐÕ•¶gPS=T‚*;\r¤eï&Šõv\0Ñp\"ƒŒÌSÒÕÙIÊ…$“€+—Ô|ucßfÑ-fÔ®ñÇ–¹U=9Çñ\"¸ø¾T¾)×VÏ¡]?Ma4ÇØ‘Âþ?	6=3Xñ6‰£ü“\\ù÷ÂÅÜXûc¯ášå5ÏjBÑ.\'šÏÃúsƒ‰.Û·²Æâ{õJñ»ÿ\0Ý\"xgN‹LÃ^H|ë§õ%?Ö¹‘5íÓ]_ÜMsrÿ\0zI˜³ÄÖŠ•÷Òdñ¾5òYÙZj~\"¸¸({ùÍ¼;\0„QÈúYâ«o,‰aáÏZb™KRÌã®îk–Ñ]m<C¥Ü…ŠucøWMáÿ\0\nßk?j’Õ<ÊÒ…c•‰Á¢œ’†£Zî5¾\"xáÛêð/eŠÒ,ÍME/|sp1\'ˆ\'Qÿ\0LÒ4ÿ\0ÐTWKÃ}Lýûˆ“Ûx«Ñ|2¹8óo‘~„V^ÖE¨£“[ñl¤ïñ.­Ï÷nœ#Uå—\\¸Èº×u9sýû§?Ö½B?†QûÝA¿š±Ã{á®f}´½¼Ghž2ú7šs4Îìz–bh\Z%ºŽOç^åÃ­(`o›ò~/\0i#–†f>ëŠ>°ºÝG.“j\0ùTþ*i¶ëÂÆOü½üøCC¶MÒÛ¢¨ç2H~¦«¼>µÊÍu£ÆGg½?ú/o~ŒwG‡&œ˜ùmÜýÔ«¦·ðÛ?ì×³O®ø\ZÄeõ- c¨ŽO0ÿ\0ã¹ªßð°<ÂêPçý‹IþËG´›Ú\"çHò”Ò/\r¶R‘ì¦¬GáíMÀa/=>CþèÓüTð¤$y2_Ìüò³Àÿ\0Çˆª’ü`Ð•q†¯)ìhƒóÜi©Ud9×CŠok7<_Ùü8Ç<b³¼Ac¨i¶z%ž©lašÙ!–\r‘Ã§Ö»y>2Æ®|\\:ôKÀ¿ C\\¹­Þx‡P7WQÇî,±¡$/âzÖÔ¹ïï-nåB8éK´¸4˜8äÓ”qïZ’5¢¹eÙÀãƒmA§\01EÀÊ“M·=ŸjšÎ]CMû7S¾´Ïüñ“?‘«ûzŒSLbÀ½gãOXŒ[ø†ñÇý7Û7þ†\rhEñ7Å*¥oáÒõ5ÿ\0§›Aÿ\0²‘X1Hè d*l€è£ø…jÜê^ÒesüV®ÐäkRÏâ/†ü­·\ZN½§z;Ó*ûé‡ò¯?f]ÁG$ÓŒ õ•“\rU±ñï‡HO‹uÛ\rÕšÉúª“ú×C§xÖ9£ÿ\0BñÖ‘>;_FÐù°þUàÏl‡ï(¨Ê\"yJ\\‰‚>°ñˆ®µ©Ð5eõ¶½ôÁþutx‡W‰3á©½Í³¤Ÿû0?¥|¢Úl]@Áö«vw\Zžœ?â]ª_Zÿ\0×Ý?‘¥ìÁPéÈ\0½ÓuKSþÕ¬‡õ­Ooâÿ\0N5ˆúMòÈó_8Ùø×Æ–J¿ˆ.ØÓ}²ÿ\0è`Ö”ü]\Zí½M;Q_úyµû.)8£-µ\r*èf×P‚_÷[5iQ~îxØû8¯ðÇŠ×Ä_n7¾Ñ¦{TóÁ˜OCëŸJw‡üqá­Jí,¢Ñ5:w\'Êíœqí‘ü©r°G¾%šaY2œWŽ¯Œ|?i<ÿ\0ÂU¯é²£me¸·ó@#·Ý5³§xÆ)—6>>Ó\'Ý¿‹É?©_åEšÑ|­7åô\"¹‹-oÄ7 µ«h:ªö×{¡þuz=g[UÅ×†ßwý1™èCùR;WÎ\0îj&Üã	Â÷jãçñä>\'[WJ–1™µöãsÍt6Þ\"Ñ.ˆÞÄ¬€¸~Í–-™Ç>äRí§$ÖÒ\0RáOãSˆ‹‘‘¾EÀ­³Ö—gjs€	CMÙìEWdny™†Ï+ÇÖ¬ì<Í5”¯QŠi\\ãŽ´Ò½>aSðiéÆj®\"\r‡E4£ŒàdTåW¸¦áAÈb(¸ØåiÖ¬sŽ\ZiÐ\Zw±\nGÝ¦Cê*Ñ^ÅqMØ(¸´å¹7Ø^(†`Q£“\rR·ˆZêqÚê18Ørâ?îúŠZduIYb\'ŒU˜Lÿ\0l·¼’_6\"|†9äzf™7 Öm$Òo…Å™ólßî–äƒèiVk;ëG˜Û›kÅ.Ÿu¾µ³¯/öœ–ºu©Ùœ4ÏØV~™§ížâÖâx‘•YAÎGÒ—@1nÜ(]¯ò\0lõ5ÕLÚh§ÒÃKˆ-Àìr9ªºn“4Â\rI!’Ùcu‹i¶zv«p°‚mL1ü¬QUq™ñ°·²æE\nÒoƒ\'îœò*Õ¼¯—®\\Ì¨¡wÕŸª+¡Š8ÓÈBfÉniòIº>«olo®dˆ@õçš@ZKäÚÍ›V ¶?Šºuðí„—­{«I6£6ƒ1ùWØ(¬ë}&[]9-š8ÌÑ€0yù«JßÌº†9ÅIùNEg=´f‘F´3Fñâ\r«\ZŽF0>•:uVëœV1¶Gd0ÀÙÁ­d`#AýÐ`ô40µê§®ó¨ÝëÍ^ÖÆ5Ÿ³¦>¦©òÕ\' ¤ÎîµH«9â£`{Õ@@ÃåéU¥hãPÒ:¨<\rÇycfû þGQ‚8.môÆ°*ÛLŽ¸¡=D8ñ´ƒŸzäüH«ˆ$Îq$Jù¿äVŒ~ ³´´\"=ÔÊìªz.ÜñXºž¢úêK,hŒ«°,y$Ö°‹½Èb R8ïW¬#Ì~ºsMÓt]Jþ1%¾q27\0ð‹ùšÒ_kvç#M•Oý3‘Xþ†·\"è“>^Cå0{Ö·ƒ.ÛÇ\ZD¡†Ù\\ÂH=™Hþ¢²V}cLŒ¬Ö—	>ßzþuÖ•nì.¾ÇoÛÜ$»àIÁÈ¦…¹Þü`‰R;<ÞNÄŸ¢ûUç¡ƒƒÛšõO‹VþnŸksŒ¬w2=þµyBÝ}1P¶v2/¦{†#¢)Æ=j˜ùN\rYùõ\"  îöÎ)–\0œŒšS“ÔñíB|Îsž€rh‘È +0\n›Œi!Ú[\Zk.ÖeÈ88ã½îb³f0r¡¦Œsž1íHUIŽàÖ¥¦µ<p-¬È’Z–ÉÄ?\ZËŽ)éÌ¨¿Þc€(i=ÀÛÔ¡_±N±[•;C©ÉÍz7Ö×Ÿ|+upÑyi‰Šýd“\0ƒõÆéw¢}k	nây£¢•2ç™=¿Â¬]ÚËsu§Û!f‘YÈ¢éÛ1PH9õ•¬õÑ‹®Ltho­?´<9k|Ë,èÅ¤´R08Tnëÿ\0Ö®ZäÇsk§µ»™¿x`Ž@Ï9R\n“KŸXþÊiâ]X_Ùyw\nÍò˜Ûå,Ú5•¥´ú.¤Úd¬Þ]ŒÄ¦yÜùOÓi¹\"GêAÓâ·w«@¬[<Ž)Ú¥Üøb;@%°ÕôôBþS(vžùÒ<O&©cü´iåÆ2zÖö·{£ºù:ÌÐíaÎå,Tþ\r`èsò_=öš¨‚\'¾’uÜvçåÀ\0~\'ùVåÐ\Z:C7.Ì~Xí‚g{wÀì3X\ZÍ­­²§íPNÌ›Ô4tFÇÐ×Wh‹íu>\Zm»ÿ\0º½p*–À`k\n÷ºÞ¦^¨i÷ý¦ãoHâì¿ix¤Ç0ÓÃîæþ!Ç§¥Rð’½õÎ±®\\u¹\"(‹mAÏ_¦Ú/n$¬M†hoã™”¨Þæ˜WÎDæ8Ê£¹;r3Mü¨Y-Œêjµè˜k¶lå9ŽC#nÔ{T:€“QÖ¢Ó`}¨fqÛÖ„ô\Z#Ña‘õ™¤ˆÞ˜<ôÖt÷\rs}u1|©¢äâ®ø~qÖ£(vaœ„íX¶û…ŒaHRÜe¸äÔî6õ4w¥µšM>\0rHÉê*mmäÝN<´|í\r÷¬»ë«SÄ6P‰$ŸKÓâDò Bíu7Rªl÷éÇ¸®ÖÓÃ^1×Ø\rÛD³c‘q©¾ýóûçñ£—¨\'¥Œƒs\n UP¨?¼ÔZø†ÎÒT…4«-JéÉXÔ/šà‘€3ž{W¢hŸ	4È”Q¹Õä-¼Å\ZbíÆXþb»›+Ã6ø´¶±Ó#*1¨Wp=OÞoÇ4ìŠRI)ào	xºÞÞd·ÑívNU’ã[L¼$uÚ™Ü3×‘]¦—ðŠ7q7ˆµ{EØðD<˜°z¯ÊsÊ»†Öái4ëxÇÞ¸»o\"0=ry?•s\Z·Š`ÁK½Z{—èm´¸ö¦}§¯§®1”¾C’ZìlA£økÃ0¬VÐÙéàÜíÌ“RÉ¬<VÆK-ç›BO!\0õÚy5çòø–ñdYÚéaºÊ£Î˜úüì?¥`ß4—’ùÚ…Ä·Rÿ\0~fÜOÂºa‚›ø´1•h­ŽÇUñe´…–}FóQù÷²O³Áô.~cøW\râ\r6¿·´¶Òåƒ>Hµ¥fn9vç þtç‘Wî€+™ñ<Q†âcÊîCèÃ‘[Ë\rGMYšªäìö1o¼W¬ê4Ò˜VY>o5wÓq\'õ¬IZ[™7ÝË,íêìp>‚–Ø³ÚÅÇ;1NJ½}Mp¹\\ìK°Ø£’Yc†Üîpªµ-Ü1A0†)ŒÒ¨Ä…GÊ =êôPm…ŠÝN¿1U§¦i‘Æ°…¢¨Ï\'½gÍvÖg\\qšõ¿‡\'þ(0Ï(ÿ\0È¯^]¨16¯^›ðØ–ð€\'Î”œšíÁË[¿ëcB÷N¦Ö/:läûÓ|]©¾•¥Ggc“ª_þê ½Q{·ô§f!±³–òñ¶[À†G>Þ•Îh.©¨Mâ@~ö_–Ö\"8‰L~Ö³Ä×ç~HT)]Øä®mÛBñý”9·–Þ‘OBÙ#ñ=k£»âgèÆ±þ%mâÍøàoB¬{|Œ\Zµ^ê÷R\rÆk…$þð®Ôÿ\0¾Ñ©zw“*ú±%€\r{lÊ™k»¶¶W“p™TŸïW.¾ÕmíZi/mã½­(7.AÉ½Ç¿ÒqçBQûÈ±UÚåb¥Pñ>•âƒwÿ\0„/¬üÖAÝ­Ã\0ŽWî¸Ï|pzt¶P|G––Þ¶ËRìçêFHý*ü;\0ùOåZ1]±\0“\\&ç8|#ãkéHÕ<cigÿ\0ŸÎGÐ\0¿Î¤¶øW 5ÂÞx‹RÕõë°yóæØ‡Ó–ÿ\0Ç«§[‰[.>¦œ$c÷˜íH:\Z°½µ¤Vö0GmoíHã\n+…ø“¦¾²ö³YÁq-õ½¼¦1n-Ê§õük¨VXÕ»IÅ«,ì¤ã€ª2M\0xjnþMôRÛN8udÆ§ŠhŸ7Qžà×Ònj–Áu\r:+ˆO;n#?#\\Æ©ðÇÁúf\Z{XLÇ%ìå(.Wô¤;ž.¸à3–ïM mÆr*÷Œtá.“ä·vrÀ.\"i@Þ£qIïÒ¨6ÖŠCÙÆjkgpÀ¼íÆþ)§ ŽsH\'’1“õ –Æ;Q@ç¥!=€\0nIÏ½0ŽsÅ8’r3Ž{\ZM¼úq@\ré“Å!@r)÷ü9¥9ÁÆÖ€:ï„r£ëðuÛ<N2}Tý–»=HoÒo“ûÑ×ðˆÔüCêÑÀøúnÖ»Ë¾Òá½¢<Q°¸}oQH¢!>Ñ!ÿ\0*ãqîi\"ÑËÎZVŸ,cêÆºj0[Þ²Ek%ÅÈPY¦o‘sÏ¿\\×3}uux1s1)Ù……jêI« Qi­-ILïló?wñjÎžêIF#D}©üiôTdqX½JE-cbÄ¨$úÕGÓ`a÷\0>ÕªÝi‡¤2­Œú–˜¸Ó5[û5=¡À\ZÛµñÏŒ­P$zì² í<I&~¥?­e	Å7o\\QdÆtGâ¡1Uðöƒ~£ï3[”vürGé[:wŠ´I­\rÃøn÷OŒç-§Þ1ä{|¢¸=¼ôâ¶<(wÅhßÂC¨>ãÿ\0­K•X/mN·Nñ…×;<CâžVâÑ%ýv±©o<_áùÃˆ.µÍt¨Ç–è¶Ð¶{6Ð	üEy‘Œ	$R£‡\"¶¼\"‰›ÒÈ0¤ày‹®x·[¼V±´•49>Qm`<°GûMÔÿ\0*æâµŽ<aF}jÃ±’y_ËŸçAýjÒK`\Z”„ñJi»¹ ¦PèG9Åt~ñF³¥}•­,mnÞ#n\0Ëœö#‘X,ûÝ&«\\^ÜÌ‚%•£…O§4š³ÔGÄu˜ìÍêÂCÿ\0³T78ñ}ÊbÒm.2O]¶qÿ\0}^X¦@Ö¿>ô,³¦6Ï\"ÿ\0À«?cÀÎúü@C‘ªÄ9ãË¶„4¬û¿xúqûÍbûþxºÇÿ\0 â±l|M®X(X/×Û$jÃõdø®yT‹í.Ö|ŒVhÉü‰tBBÍªøÂ@|Ý[\\`zµH‘¬«¸õK†ÍéÔæ>²—oç[Iâ=!‘–]2þnÆí¿LR&¹¥ˆ6ý·SI0@c\'ùÕmÐ/s›:TÝ~ÅuøÆiF*’>Ãp}¼³[«¬Øˆ­ª;ž’y@íÖ¤‡ÄÍn8u‹ÖˆŽ­j›õØÑi7L]:Å«1i7ƒ9Ó¤ãŽ•jMjÕÔ‰µ]vRy9`~”©i²6ïí-jÿ\0dƒEØ\\€Û´\'Àñ‘ê´¡W\0U”½.Œ¶Ú¿Û	û©p›{g½0·šÉ†nŒ õ§v4È¶€\0¥_¥Kå÷ïJ\"5<År¶CÚž¿­+FiëzG2˜ŠOáR1I±€û´×b¡éTM˜æ<\Z21Î@÷«\rÜIÏ>Á8Aš­pìÀ—Àô ©rì5È$˜òUW–ù>GìUv$õëÅ+•d‹6˜gg#À«;»ÕxFÄQíRç¥4@üæƒŠ†iŒj»QžF`ˆŠ2Xž€\nìô†ºÝÜ+q¬:Ù‚2¶Êw7üôOåJRQWb94MüR‹lrO5ÜMà[È²;Yóø_Sˆs·²œÔs§³-DåZ#Ži…q[òi—pŒKlÀúš®l˜*Lÿ\0ºh¹V5>¯ï¼LHéÿ\0è/\\ÇÂµÇv ž6Ëÿ\0 šê¼=¾&¶/Y‘®¢ÛÚy!X~‘\\÷Ã{itÏÛ\\ê\0CÇa ŒžZz´õ#ñ”K\'Š5`ÊúIþB°ÎŸv®—ÄQ5ÇŠ5I£íä›r8=j˜¶#øy¢åXÂm)Ê’\r]¶ŸW³]–z½ü	Ð,w£ô5¢ 8éMòŽisŠ–úÞŸ©hÙj·IÞf±aèÛ³ŸÆºTø—â3T°ÑõOWºµùýò@ý+ENŽØ¿l/­+ ±ÑYüDÓÄ€OàØ£—<½…ÛÃ úÖì>Ðo¼I¦±ë¼%Â/ç“\\.Ä‰p£Ö©Üm*Û†N(Ð,{.™ã›	ŽË\ZØÈý…õ³ÁúäÒº;?k² 6Ë¤jIëm~§?Ö¾bH#q‚µN‡ÊP)œŽ\r7Iô7ˆ¼a}£ø{P»¹Ò&·ž8ŽÇ}¥7têúúVÃ‰jú‘øŽEKØ$*f#hu<Œöÿ\0*ñXä¿¯jÚá´n°X§äjÆ‰®kº•´YPCq‚é$AÕˆõÏãG³÷lÓ¶ÚÆ•uþ¢î\'ÿ\0uÁþF­+ÀÃå=²kç_øXWRÚ¯†t;±Ý–#ŸÇ&­Ú|GÐÔ…—@ÔlûÖWÌñÓSÈÀúÊÉÊ”o¡¦4MÝá^3gãÿ\0ÈG—â=nÇÚîÑeñPMtzg‹Eãªi>&Ñîäo»¡íÝ½°Oô¥f€ïŠrü)6z\ZçàÖ|@NL¶@ù¼‹´r?8ø©¢$^i:„XïörÃóRhÔ\rÝŒZhW,»€VD0Ñ¤8y¼“ßÍ?ý\nÓ´Ö,&`ö·©œpQþTîÏ7ú{Ù_‡Ó¡Œ†!ÕO¨¬Åš[©X)-½À®§PW–	Tä18ÅaØÚ›ý:I¢8¹‰òØèG¥Svfh±gº{y¼Ö’¸b8ªZí­½¼VsÛt„mrk{ÂvöÚÕÌRE½XÈï]&±gk/‡5Sb‘!¶•‹8àäTÎªƒ±j-«žyo|öÎ\\»9RY}jî£aªÉ5´×HšuëÌÌáŠÑØv¯ém¥¶{ÒÉa}*är®>òW¤k\r\0AáýdƒP·ÞàüÀCÞ”ê4“ˆ(÷9«YCâmCJ×ek¶[Pö²)(9çƒ×ÛùÖ.–Ò]Ýé÷¹µòÏ’6õ,¹äŠÛÐÝê:Ž•4®÷bßË¶¹o¼$^ƒ5— $¯iyr§h›%S×~îML[¾£;%š9îµ+Òd·¶g?ë%5¢éÓ6ž·7×\"äžIVs€OLÔ—³Ãa¤=ÕÏ0D‡ÊAÖI˜zSmtÛ¥Ò\"ŸV”ý¶DdábÏOÆ§»-\ZïN\rå@Èdø³R¬­°žØíPIq¦ÚÀ°Ë<s²¦Ã°n$ãÔWe‹-7‹]F·•I§FùsÆAéô¤£Ì;¦°|Ø­rUñøb X™ÎÍr’xîîÎ·¾Ól®$^‰#/?çÒ¨\'‰|O¯ÍäèñL;yvpçVçjœ¶2;KÑ”fKë˜m×ý·\0þUÏj>1Òm—QËy XykùžJM3á^¿©Ëçë7pÙ—ÉmïçÊ\0qÿ\0WB¾ðO†¾¯r÷Ó¯;d}ÄŸhÓú“T©¥»%Ìà_Äúî«7Ùô¸Ý‡YÆYÈúòk2öÎæÎùãÖÒxï6‡Û!É û×ª\\xÖKA†t¡má]ÐF«ï°uük0ø+Pñ­´\Zõö¸‚i—`ìUb0\0?SøÖ±\\º¥`äìr::4º‰‹S´¼d@±,L@W=ÛºVåÂG¤´)§Z[Úºî\"O¿!ú“Uo,¥ðŽ Ð‹µ¡ãÌÛ·>Ÿ/8?Sžá®äó]ÆÑžSV•Ù™ÌÓ¶éîfunOÎzÓ#…vI8Áí!VâöÇþ÷€¡rN~•cMÓ<Cu:}–ÂYÕŽJÈ†!ø–À§amïï­mï®•Gð´…ü\rGª\\[^ÀVM5>Û!\n’ÀJdŸQÒ—U†çNžK{Án—h«!Žób}i4éÕL×{L’[ÆZ4çBKp=[Å1›¯‡ò³8wŽ$“p9ÉLÏàkÈÛ$ƒý¬Šô?\rk6‘ü4ŽÊôËq|cšm—‘¾c‚}ÍÔ×šµÌf}®²ÄÅ@ùÆ#Š[	÷1<77k\"”(€G\\Õfb~jæ¤§s9%™¸9=j´ÉÃoåÈÍ!Bd}ÓžÔ1æ8Œ…ñðx\'ëK,E³&Ø¦åd\'\"®ØZéAºûQ–È?)ˆ²ƒÛ­m*Âí t³»ÓõK)Ö·‘Š1úg¡üj\\¬3œTg”Ce¥cò»åVåÓåþÊŠxƒ=À‘’e#îŽÇ¸–·F\"$m	Ý˜2ÑŸO¥I	s#üÑö¬‰™OñÔ¹>‚º9o&Hð$\\äÔ,çaÂ:ÖÌ¶©il%Ü\\O…e\\á\0íÿ\0ëªR5”×—Íjé›tüê“f;k-\"Æéoµ	äo6Ø¯Ê‘c†Ï¯øûs½¥ÅqâDµÑ ¹’[©%ùc~c·„³“ùqX7ëîeª‚=Üg¶|upÓêºM„Dê\ZÌImÊ3ä&Nò}¶ÿ\0*‰]Ä73šþY!ŸgØÙ­ãò$8“æ<PkLŸ2Û¼–‘¼©yåJŽü1ZÚ¦›±ÍÞ’ñXxÂÐyO0»Hfäwcõç1ÆŽâ\rFúyb–(&>vÔ9ÃŸO^•-hM®kêhÃJ°ÔL¬\'ží’>ppæoqŽ•c5¼R}²Vˆ–Ã2º÷Á¥·]>{qÑi–v¼ÌZIÑW§4X\r\ZK—ÐZi¦¹Ûm—îä»c€=±I0H—Ã1Þk>)i%®¥[bÙ8UNp2zzÖ—Šd6–/e4‰×GÊÞ§rªÿ\0Èö©† ös\\[*Ç½ÕÐŠ1Ó€Çó¬3¾³g`\"B€J/Wgãß´LfêÉ#ðÿ\0Øí5ËD´‰“q=³Þª½¼ša±{CFË±¦†o03zŸO¥tVÞÔ5Ø ¹wUƒ$hÁDH8ÚàŸSÖ¯¯Ãk‹s—-œÉr´7-…ƒ=Xçé€j%R)ÚãHæ4Û¸šàD² ¼Œb£ƒYú~¥\r‡ˆcšæBþaeÂÄäc æºÍáV¡e~ïª](³\'iX$-, žrÄqœtêZ‡áï\r¦ý;O¶Óz©žA—ç·˜Ù8öÍZ·@<[Ã>ñ]ô7B-)l-îã0ý£P—É\n3œì?9ü»×o¤ü!ÑÒÚüK­Üj¤1·´\"½Ôœaï‘øWt·º\\÷tû3©\\“ó<q€™÷sÅPÔ|F¶ ¥Þ¥kbçßNO´J}‹tZµôB½·6tÝ/EðÕ¢6ÎÃJ€(À\nÌ;eÌß‰¥]X\\î:}¥Åî:Ë\'îbð&ëø\nàæñyÛôí1Ãµß¹š_¨^‚³/ï/õ>u;Ù®—ûŒpƒþ0?Jé†rÕèe*±Gg©x’(KGwªì~öÚT{ÏÐÊxþUÏKâ)RV}+M·´sÿ\0/3±žsï–à~µ‘i\Z€€\0:`Rž•×O	N;êc*Ò{\r¿–çPpúÔ×l:y­>ƒ ü*¾F\0*G8jjêŒTV†.Mî5ÍRº|\n³+qT.ÏËC`ŠòÊk#SY®ü‹3‹»ÙDÝ¬}€Í^•°\r2Böú\rÝÐe¾Í”*?úqø×5iZ.ÆÔÖ¨áž;Xõ)âÓ%’k(ÛdRI€_[ \'8öÅ\\µ\nÌ˜þê>H=ýª¤ö¢ÇTkU@^sÁ£p\nÇl§	ÜÞæ¼¹+hvÇbðg•œÈ¹îjONk\rQ¥?»BO¨±æ$¯ Ü*\Zì2-A‚Zœ¶ï^·ð’ÎSà»9v™%‘ãû¥ºþ<×”Xy\Z–¥n·Üÿ\0e£æááL’;AìN\0ükÖ£øjê¶:‡qÁO&ÛÌ ,xQ×\0tÍkâ´3ž¥ÿ\0Éý¹®Å¡[9:}‘ßH§†nÉïçô­x£TŽ4AˆãT{T>ÒWKÓ’}÷.ÆK‰;³ž¿•jP½²xÏ)_C¦œ9Qæcÿ\0‰n:ì¸xÉÿ\0yz~•ï¶óÃ{/lûRhÖEŽgú×|Y…ƒUÇú-Ürž=Nó«ºmüþ,Òì´»I%¶Ðì­£ƒP¹L£]Hª…÷Gñý>ºÑÖ62¬µ6µvÂm@Á Ãªk—q±³AöpÃ¨2?,Õiu}j\'óÁšª!êö’-ÉP¢·¬,ma¶±-­¢H£\0VÅ®±:(ªÝÌ•Œ=2ñ.á–÷‘âI daõV¤r(À$®}F+rßZ,0üãÞ®G¨ÚË…–(Ø{€jFŽt:`ÃZ±mLÀC¿ÐVÚÙi/ ‘m#Þ9öüºUásh.;Hë]\"VÚd*ƒß­kC\r½¨^2ÿ\0ªr^3\n„ÈÍêh¡5æF«™‹0$Õ|>2TþTäÎFiä\ZÔè²“ÃÙä;r¿Ä[8öÍv¿£Æ£áY±×ÏCøm?Ö¸\\òNGÖÉžÔ…ˆPzÔÐ8ü9¤+€0Ä}h\0ù€#¿¸¤ØHù4¤óÉ9õ ‚W†€Ž>ö\0 ©a²8©úS²‚Ò\nØ dŠk¡ùwdúÕKˆ/\'‡h½6ÅŽs\ZóŠ’Öø—l—±Ü¯«&Ö ›áitñVª„üe¸gÙ×ükÑøÚãÕOò¯5øzÆ?\Z€T-œŠpzà©þ•èês!¿¢<sÅãW”c“dÿ\0ß8®yÅu~,LkÃEü˜Šæ\'\\L¥©FAÏZ—Š³ õéP0©c ~8¦â¥aêi§š@EÚ\nq‰ ·šÖð¼RC­¹Y-ÎTõõU\0b·Q°ù³0ÉlpŸOzŸÃò²xƒÌw\'|LžôÁìWº´•e¸6Ö­q#1 o\nÞ´´(VÙ&Ï˜²J¹dqÐã¥lEp‘DÀ¥™¸aéQÜ3} Nß-ˆü¨³Î3Ê’$Œ¸\0J)9¦–\0rqVZk[2¦òNzsLµžÄDe”\rçå eCq oûQæ `	Æzdbº·%¼\n­kEç+Ï>ô±\\HsykH>½ª¬9»¦Ä9øâª(À®Žÿ\0CŠê&6$Á2å–2ÙVöéY¶z#ÏnïÒ9zlØN¹¤3Í ´²¤ÖÓnWkŽ‡±÷ƒš.J¤?­ã9 ¡=è\0È¤9Éî)Fq@…eæ€&}é~¦€Ô„g¸4ÜÐ`õÆ}jÔŽÇ9Þƒî“ÔTSÅ1Š‘Ã?Ztš|‚s \\¾µ –ûfx6¼¼¾\'å[®+°ŠÍcþ}ëžr´¬iŒ¸¬29©’ÃZé*E‘Ys2ìclÒMh°ÅæH0£§ë}Pt#šÄñÿ\0¿XáPdà÷¡6Ø¬bNåØ–<ž¦³§`ŽõnêUD$æ²ÝšS‘Às[!lC#àôÍ6#¾aÇúÓ¤\n§9É¨$l\0A VˆeñÒž¼ý+>7`ÍV£”ãš¢	¡œÙêZuîÃ\"Ú\\Ç; 8,Çé^Ù¦øûIÔíEÌM\n´ùçŸø	5â·kÔþZÁsðû÷±†\"êLä{ŠÊµ”n	t>!ÒåÂF [ •J1W`š	ù…­æÿ\0r@•cM¡ÙHëûµ³®<-fÎJ‚=kŸš,µÌëÞ\"¿<\'ùÕ;Ý#O¼¡<A†&U‡ã\\ôZ%õ°dÔ.#ôCÊ¦aâ+nRûÍ\0ã\"ŸéB·F²è^‡ÂÖ1Y˜­åLÚ÷?7>æ³WÁÌð¦­¸›\'þ=†WJubÜq§ÛOƒ”ÿ\0\Z‘|N\"\0Þi—ú˜œ0ýqT¯Ü=äb\\x4©>[·ãTeð}Úä«ƒõ®ÎiRîbÿ\0~üÆjô:¥…ÎwöïþË0SúÐœƒ™ž_?‡5ÎØƒãÐõªm£Þ§úË|~5ì¢4e%B‘ŽªÙ®SÆr[^48`n:œŠ¥)7a©_CÏÅ–ÂL¸Õ\rÃ€6Ž\0­ÒpIïX³ä“ëV;ÊçœU+†m§# ÍNç“ÍW”üéŠ¤&Wƒ>P®Š/*;viX*„ïX6 ÔOÔn »Ýn³•Wk™±-ïâ”²“´çÞ­ƒÈ=G½`<HFÿ\0Ý©ÈoZÚ…U!²1‘VI+(pÅW–\0ÕŒñŠŠ‚X§=é8Ü¤È\ZÖªæ´<h‹ãÍ\rpÒ– û)5\Z²ËÏzÓðcBŸô’XÒ-î»˜àd¡\0gêjZiz|Zgø‡0·ýÙVŒ®;\nô/ˆ7šŽŒ44Òõ«gžCóÇqÐþ5ÁüSO7â‹/yâ^¸Ý|[8Ô<6ƒŸÞ“ú\n{´.§7ü_krñ½ì±!ÆË‹t þ@\ZšËÇÏ}#\rGÁú]ãùöV‰¿>kœº]×³’ˆÓíd–ÚA%»²?N)4Š±Úêb¼½ƒ8 ÈŠæ|):Ûß\\ÛrU8ù®ÎþÖþæøÜ› ahròFÃçeŒ\Z‚¹B0ç¢¥êÌWcjßQ}Äv·ñcVXýA¯Nó¡Ô4©ç´2)\"ný8é^c{$7ö’½½¤6ªƒvæ%ÝÏô¬«-SUÒýŠbÉ7%[§5¦¦i;XëRÍµOM£I´IBêØ0èÝÀªú=ÜúŽ‰¥MöæG·w@ÃŸjÍÆÆmf‡K-y\nbÒ|Œ>‚°eñ©5à†híažS#Å\nàSìäÇsNšÒþHd¹Tž)óêGçùTözÍ®’5‡½/5ÍÉÂ˜‡òOçX–6³NLÌ±“!&´ÍŽ˜.¿uI½·ŒþJÑ“Ôeßˆo5‹Ëh´Û1å[ ‘¼!îÇ¶jí÷¨˜—W»ž}Ÿ7ÎØú\nÝÑt}WÄ:$·Ë\"hú\rº»F«ÌûG\'¨ã¶jæ¥o£ÙÚIºÝ]gÃr‘ýàÎO+Ç§ZÑ$–Â»9»Xâ•…½‘„»ðª\\*“îk¥°øa©Þ7Q»´±„ýå·&WÇ×€?ZlÚ††³Ç6‘á[kkŠ|ÙXü­ŽÊ8ªº•ö¥ª€5Ù!À‰Äè8§fUÝtÐ|	á¦)åê7‹Îé3.àå>:hàú&ŽÂ¼!”íP=‘xÎ%¼Q\'È”ýŸˆ§Êºˆn£«kZžå½¿qÿ\0–qŠ?Y±Ú¢}ÔúšÑ1`R2`uÍ5 \\¦x#ð¨Öâæ–KÛ¨ Éo-%*¤úñW£¤c°á\0åAM” -“€0]»Óé`(4O,¡ÙZyÏw%‰¤–Ê0Œn‚‰á#ùâ{UÀ$P2íÏ\\SBÐÞ—Ãº>‡×ˆ¶ú“19Bò0ö p=©5ï@-dƒÃöw÷7n6	d#_V$žü+	“žÄö4ˆä	%»V‘Ÿ.Ä8§¹ËÁ¨½ÅÕÎ¥f\'¹•†YøPGlV„·æ-*Ò1\nÁ=Ék’ˆ?ƒ¢ÿ\0ZÚ]Zô‰®Ô¬£{ŒeP§4ÝjÖÖ{°ó¨h¥ˆ,3ÂØ!+6îÇttšDÑµ«yÐ9d\'¹W\\~\\W¯[ùz¥Ä,2WÓ?ýzêþÙµ†³yåß»y­À>`ÚÈCdd~&²~ ÃäxŽç\0üå%ˆÁþTžà·8çVkic?~3€}«<e¹“ÅmfùöU\n~s·­c\"œ¡e89ÈéAc»â¬Eya ™‘È\0*´˜Üy\0R£ƒÀ<Ð¤\ZÜŒ®‹°\\Ü}*å­ôo\Z¬ë<;Î\ZB¿(¬,`Z‘&‘¡žCê„ü¿•KÀéb˜ì¸]ÏäÜ.ÀAêÃ½g]CnêÓ<yBýÜ‘’>•WO¸F€á6rãò­ ãÍ™ÓFz‹X[ê¤£Ó-Ñ\\|Á™²>„šÕðååÅŽ¾Ðøv]Búi	fáú¸=ˆ¦¥äq•hŽ	ÎGÍŠ’ÐI£júuÕ“t²ˆâv9ÍÆO·&žaiþ—UÓü9u$öúf–Yï®g™¶\\LÌQ€v®IÉïÔu544‘u\r^ÎÂµµŠéàŠa&ñ;\0\'¯­v’&ÏLÿ\0„_ûJÆ9.%wS8bÄüÌÃÕÉè=+Jð7ˆ®%¸´ð~Ÿ(Óf›s^]“Dòº–ûØäåsI+¢]ï¡Ïê×hg²3(¹[6>u¼§Ïß8¨f×|¨ÅÃ4rjw2Ÿ‘ÇØ.+Öü?ð*/%ÛÅ:ô÷JÆIa±A|õ20Ëø¯IÑ|9áŸAæiºu‰@spÃt ¹vËcô¥È‚çÏ:O‚üo¯KÙô±i‰:ÎeÔ”¥€Îp~b>€×{¡|-´°ÔÛVñ.«-äüÑjc‰[I$’\0éÒ»ë¿Z\\\\´Û{VqÆ!_w?.?\ZæüG©ê\Z­Åì¶VþdMþ‡lþl€`ä3t”Þ‹@½ÎoTñuÂ_[Å¦;ˆ÷É–ü3FxV\'“Ïaï\\ÏöŒï«{u{tÚšÌÑÜÄêŽ1¬=JÊ’54©­ÔÙ^ï3ÜO$˜óÇ×ŒÖÄ,l|]x“¬Ç|WÍÉq ÈÉ®m¨zìw~ñI¹¸\Z¾¥öŸ2å¶˜¦ÝÃºŸ~Ÿ­zVö÷°•Û\rÌgªœ0ü«çÈu{}&ym\'ŠÈKÄ+#eÂzmý+v÷Q‡L½²[˜µ<ÜÂ.Á! ’0PñÛ§¸®š)ÏD\'Ýž¹«øoOÕmÖè$X”aDNcð~•ËÍðÆÚ0•¬][ãø\'‰d˜ÚETÑ|YrJ­§ˆa¸çV£	ˆãýî•×C¯Þ¤aï4*ÏK9D ÿ\0_ÒºTªSÛC6”Ž\ZçÁ>\'´Ž;+ôÿ\0¦3ì`>Œó¬{¤¼ÓÉþÓÓom\08Ý$-´ýq^·kâ]\ZW×/k\'÷gRŸÎ¶ •e@mî#‘OM¯Ö¶Ž.k}Ht“<*›y~äŠ}ªÕ­¬÷’lµ‚G?ÞÆ}Iâ½v÷@Ò¯Xµî—k#žKùaXÿ\0À†\rfÍáKEM–7—¶iÚ5}è?ÏëVñ®Ú\"UÜó™|9©K	{YlÝÃmòüÃœý@¬;Ø®ôùz¬°18‚È~Œ8¯\\ƒÃ—–‹û‹ÕœõÃ(ùTW6÷~KÃ¨éÏ=»2Hü\rb±Õ\"õWF¾Â\rny0eAªwXØkOÅÖ0x{RÉbºmÈ&1\'X˜rTŸNF3X²OËû¹‡¨9¯BUH©#šPpve6Ž[™¡µ·RÓÎâ4ÔÓ¼G,/­%®MžœžJsÎÎß‰þUFqe¥¬\r%¬^]®OfàÀsX	‹ËåŽKSÞ°Ÿ½/CX«#˜»J	²C˜C’;rj²Ç	•Øƒ#±Ï&µµ*!áHu¤–_´yæÍ£Œœ” }ïZIbÙÀ Qƒ%ˆå¸ë\\ŠŸ37æåF5µÍÚM±Ò¢9ÈWC¤økO´™/V{‡½Yc\"FÚ©&Òc ~¿…QÓ.£7œH­žVÇû5Ö\rB/øvI´ø|™í‚4óæF2ãÒ´4¤’\"Rv¹Šu‡·øq¤ÛØ°Šì\\1Ÿå]¤ðG×\'‚u{ë¯è±_OæFÍ\"¨*\0ËlÎ³ïíc[Io¡–?&ø} D½QÞÜæªh}—Æ›;Uo#ûƒüë]\ZÂÇ½¯Ê	ï“Q™˜F8\0\Z|ÌC°+ß¡só½+Šçj0>!Dn<­§uˆI÷XéR|=¸øLdà”6S½ò\"¯k6æóCÔí±ÌÖÎ£ëŠæþÏçx)£Ï0Ý@Q¨5µº9ë­™Ý+p*tsU—¨§©æ¶g:.Å)¥Yˆ#š¢­NÝPR:MbÎÃ¯\'ˆµ?ÃºLº–±+ÇmrÎO@­cC«Øèvšž«8ŠÒÞ=ÍêÇ²rx¯œü}ãkÆ÷ê÷Œ!ÓbmÖö¨~U‰õ8îin;\\ö­Cã_„--|ËG¼½›œ@°”9÷\'ú×}ñÿ\0Xy	Ò´>Þ\"87Ò°÷È ~•äŽª3Þ¥\n£§d;ÇG6éÂT\'!D(ƒW}á\Z%ëÃoâM:}2bµÄGÍ‹=É>™¯ŸÉù@Ïàj\'Eq£8ü©Ù¥~3ùzç…ô]c@q©Y[Lï$–§~Ô`$uàŽGQÞ¼²VÄ€<í­Óçñ®?Ã^!Öü\'x/|?}%£Ž]s˜äŒ§ƒÔ×±éü+®B‰ãß\n[Éy·i¸†”7àü¯æ\n†šÛP±Èêš½¾›`·r£M8‘œàŸéYrxÓN+û»Ö#Õ”U¿ŽRø$I£Eà4\0N¦{’ŽåTd„Xå[ïé´Ž<%¼o!09cÐQš¸¬u³xÖ- E¤àz¼¼ŸÈQ!üúT¸#ºoñ®qVÀ;òÞ¸©…Èà?*®T#¬µñ›t;\\Û98Ä‘qùŠ×Ž5™ÀâTõCšó§˜°ÆzSažkwY-f’\'õVÅ« ÏGÚcœãÓ¶\0¹Âƒî{W)¦ø®â\"TŒL¿óÙ~ðúŽõÑ™b¼³{‹YˆÈ@#¨>ô¬&jx\ZX¥ñM½Ôm)hUÃ*FJª*Y@7`W§FÀÊ§¶kÎ¾øà‹QÑîƒ‹Imà†EQ´$e·!ôÈ=É$ž¤× ¨ÚàtÁÅk(ò»	;žkãÛ¨ÁÇUqÿ\0Ÿñ®Zåy®ÇÆê?´ÕH£‘—ð*õ®Råx<T–´2¤UVàÕÙG&ª8*FBÃŽ”Ïá©[§4Ã@\ZJô¦ž(Ìf¬h¤\r~Õ[êÊ*€ò*M(ã^°÷$~”Ð™ÔÝÂ‘K±GžMVÕTFRTííVõQ‹¡ATµéc‚\ZR˜02zÓèJ9rÂÝ\nFß>2ÇëÚ²íÇÏ sÊµiÏ$aíÚy$Žj®‹~T²Ü°ß!Ü€úS(µìEŽìáæÈ=ªY¯^ñQcsGÐ(ùœ{Õ×[«¸’5ýÜ\\·¡©d¾òûtDÞþ‚€5m.\ZUÃ!.œç¾=sQßC*îº³‹åÈ2&zûŠÌ6××	ç†°0Îç\'\'ð­$ÓÖÙÔ‹ÙÝ¸<)ü(³¬W*N¹F+wS\\ýÕ³ÙÏå¹Ü‡•aÞ·,ÅÊˆÃg ô¦_D—VûKdõR;\ZB0Ï¨ë@<R.A*ßx\ZZCÖÉ¥ã4h\0—Œ\ZOÂŽÜÐ÷¤>Ù¥Ç\"ƒÐ\Z\0c”úÕÈ¦²òQ_MF|s\'˜EUÍ@ÝéÏJL\r	9‡U»1HðŸ/å(}ë®°Ö\\H¢IÌÀ˜H€~µÄøi–=N]ä\0SÖâÛ“#¼J¬XuÝXTJúšÇc°ƒS´p<ÈJû¡Í\\Šk)F\"¹UoGk„Ê‰æxˆlœäzT‰pæïÊ21ÈÎíY8.…Õò®Ÿ`÷r<eT|XÇé\\)NYßÇ$žµ£\0ßWíéš§s+’V$äu\'¥8«Ëº‹}Åµ¼g2Í \\žÃ½t\Z>{òÍnãâ;Z±ô\rÎµus+û*AØ3gúfºÛhaøS“kbNNçÀ×ÒÜ,>¯§`_ìî¾\\‡éÅsÚÆŸªé±ë:]Ý‘É\0Í(o¡<Â½ëáÍ‹2j:¡fRÄE03ŸÔ×am©]Û¡ŽXRæ#×)?\\u­ávµ2o[#ä»y‘ÈÃsWãàpkÚþ!xKÂZ…¤WGO}.ùÜ\"›\0?®åëŠóÛß‡z”D>‰{\rìDdG7î¤úwôª“QÜ•v®s@öÍz×Á³ÿ\0×ÔŸÒ¼Œ‰bšXn$Ñ1GPA\0q^·ðpøWìGüýIý+*ÿ\0QÜëÝ¾e\'µ6Fýéüèn´Æ¼$ý+ÙÆA*	ÀÍI2•ÉÆEgÝÆ³Æcl…öëTÒ{«v(šœê@Ê¬*’Mj\'saÂ°\nlð#Æ7 #éT×Q¿]¦Fµ¹OF?åL†úöâöT#Kv\"¡Î)8¤´`›$\Z}»“˜—§¥`xÉ,ô\rÜêÚ9%G\Z·qïøWMâ¹ÿ\0ˆúÄz\'‡!º–ÒÞðÉ6ÅŠuÜ¹ ãê8^èÍ|8†ó]µž]B9mÙ\\yR®Sx>ÞÕ¡¨@ÑÞL&™æ‘NÝÎrp+®²•Ÿì“4b&‘™ð¹\0â¹`çRº#‘¼Õ)·&	Xç/ÀÚxæ°.ÌyâºKá…n;W5s÷¹­ÙUZ¯7ú·>Õaóš­9Ìoô­ a»9À\n¹¬ApªîNãÍnÀŠñ¢:îR@ ×Oáë‹+¨,[ÃºUé¸—j´ð†aÇ©úUÞÈÌóûs¸e#Ó=+bÄ¯Ù×+gâ¾“«ÚÞÙXEcos8WjnPÀ\næ´iAó‘Ù…Td¤®„ÓF·iÞ†ÆçÅÖVzº1²º>P*ØÃŸ»úà~4ÅéÙSQ·ó¢R>òžê*ì#Ò`øo¡Ë«]XÛ¯· Ý¬¯å¦Ò>ð :’ïáÎ=˜‚>Öðð,£;‡å~•Ê/Œ5Á<	\"¸£òÅÃ.æ#ê{Öuæ­¬j7eþ©u;‘—8…	1Y÷!Ö-[N×ck‰¥½žÎtyš@¤ÉÏ8ï]çµ‹_¾‹yáç3=¾ZHÝv²’1‚?\náNùYžwidc’ÎrM$/=¤¢âÂSèr¬´š¾Å&_{Cæ9’2ŽNH\"[Šë|9âí\'Xxì¼Oo¥éùRåGÉ!÷þé®š÷ÂvŒ”¹SÈaÎk’U]¦“Læ®^øGB¾ÌEpÉ&Ö ˜Ž*ã®U¢¾hÉ]ˆÿ\0ÅÞ¶¼5{þ	{oí_³ÞZÊdH2¬3Àþ™®Ut»»yÝ£YÚzý+i-Nw¹§g+,†Òé#—>SŽçÒ‹[A-¡FÈ–& d}áQÜÏÖ‹\'÷–òy‘¹ãÒ­Ù]ï–*2¯\\ôjQ½µ.]\"\'Š)åfTb@+Ç>õ4ºU•–—Õ¤%Ý|›ŽxšÙÓ”KÅ¬òÉˆÖ™áÂ÷W6·@,™HõÅ{±Ží9ÞÇi¬}2YTGnƒI+Û¾áÕjï„œÀ—Z\\¸/o))J«}p,üKANß=$Ïaš-¨Ñ¹%ÕíÔ	§Ou3YÛ!aS…Àéœuª°ÇvØ] ÄSò«KÆ¹©§dÁçÞœñ†!ŠçŠ´1\0éøÒm9éS>”qì)ÂW88mnGJ›—Š@…ˆó@ãåÁŠü™ü”“ìn†¥*§#<ŽÔ›IN1Å\0<Ço||¸äû$¤ä@ßq¾‡µR’6…Ìs##ÄUŸ,ç ò9§û]×’ÍG÷”?:R†ÒâåKAm<€wúÓd´–Û2ì8èMXžK‰€óî§u\0lÈT^Zm;·1=	9 d\"(²U¥üfžåQmjÑÚDüI+±¹þ•&Ñ´pjãuö¦\"Em>î¢ÂÒÆBÜž·¡=–ªe^³¢Ímä¬#bå€@=sOH•4ÙaWœ»êÆ\rwŸMv}.Hš~;ŒƒíUu]GYÕ¯\"žE³µ’8ü±$jX‘œ÷«b%\\áx ¨ äP3\nm \\]ý¢êæ[‡?{yàšY4›9B¬±n¦+aÔ)Œƒ·Jc.…§©FíìXâ¤—H´’ ‚1¡kH§LSB`äÐ(ú.¤Ò0EC?+–\"¬AáÉÜŸ´\\*‘Ùy­ë›˜ É\"¨ÇsSé\ZN¹â“åh\Z5åìlv™‚˜âÜàÎ˜è¶ÈGóú¸Ëë‹+HŠ+eã\0ç?•z¯‡?gÛ™öMâmZ;Høcmc™Žà»pn\nõ?ü5ð†$±Ò ’á\0ÍÕéó_ çpÝò©ÿ\0t\n:ƒhù§Ã^ñG‰$I¼= ÝI÷ó*:á˜€~™Íz~‰ð\"i¶¿‹5ÐvM¦š¼?ç£_öOÖ½sRñ^™k\'“ö†º¸è!·RçéÇJÆÔ<A©ù^c¥žjGÞH„{ 9Í\nýrÏ‡üá_…}/G´Š`úEÀódÈîgéŠ³{â­>9|‹w›Pºÿ\0žvÈ_ó#ø×­ØHÄÈ×Úì½srLþèäþ5w¯jsEäÃ2iö¼’ˆ×óê:ÚiÈÍÎ(ìµ¯êq)WZno>r;aÿ\0¯\\]î·`Ï¾;K^qÈŸRr¨´cŒ}qX¾Jf*Øä±ä“JGµuC	ñjfê¾„×ÚÆ©~†+›ÇŽ× ··8ÀôÀäþ57‡#µó.,Œ¯k%Ü{hÔ„ð:sÞ³˜Òù¿ešÞåx1H¥m*QpqH…7ÍrýßÃfº´†)üW9ŽZdV±Cùßÿ\0Ö«Rü=Ðç¹ŽëSÕu›¹cT@¨ë°QŽr?<û×O5Ü‹§,â4ucØûU].gkÛ™p­0fÝÔûW’©-ÎŽv@šfáæ»¹µ°´°uŒÌò—ó®˜ãy-“õ®Gâœb?èw‘JòÛÞXåÆ	!²FU¯Od|q©Í<rIh²\0êx$…ÁÁôÈâ±üs$©aáX.ØùÈ.\'DÎâ‘1]¹ÿ\0=«º4U8BwÜÎ÷m\r²et\nà­nZ†ƒl–²É˜ûÑ±SúW-§Ü+\Zº‹<´\nzŠìMIjc$ÓÐÕM{VU	=Â^GýË˜ÃÏýjÍ¶µf§2éFÕY,gd?÷Éâ²¶šAïYÊ9t-T’;=?Äh§m¦½2Ò;û~?ï¥âºM{R)¹ììï£Çi8cùq^VÀƒƒQ¬b97Çò8èËÁ‹Â\'ð²•^ç°Gâ]8·qÜÙ9í,dÏ¥jÙÜÙÝ(k[Ø\\¾+Ç-õífÜMFY#é²`$_ÔTñkñ±ïE´\'©–ÙÚúñšÆXI­µ)T‹=†÷N·½·ê6·°gpIâY>¸\"¸íWágƒïÃ2é²éÓ1É–ÊfB>Šr£ò¬m?Äv‘°Ú¶§bÇ³Åæ§Ó#šétÿ\0jr¨ò¥ÒõEôŽP¯ÿ\0|žÿ\0bá8y¬ö8Ícàäï§­®‰âi1ÊfŽèAg^Oå\\F·ðËÇzyvN´ÔâEÎû)Á=;+a‰ú\n÷¡â‹hÎ5-:îÓÕ¼½ËùŠÒ±Õ´»ÏøôÔ\"-ýÖlB©4>WÒ-¯l¬µ]Ä:eÎš“@²ÛØL@Ì„œ†aŽFG^¼\nÍ°Õ¬!§ÏpÙ\"6è»O@Oc_f¨•€Ë,d`ò\\žµðóÁºÎ¥á?~r^Þ3«G‚\ZqªãÐSVgËÞ\ZûW½dùá‚ÝâR:9#Ÿå]…w}ŠÜý-•W•A€}ëÔn~èQ¬­áýcTÒ¦“#ç+<`z`àþµŠ~xŸI‡f¨iº¤1Œ v0ÊãÜ—õ­éÖ…ýíœNÇx²Ðé~\'šÝ›[”ûD)œ…ÜNGæ\rc]Nm¥µ¸_½ªãÛ5ÜüMð×Š`¼°»»ðÝú¥¬,²ËyÉÙÎäÈ\0{šó{ëÈ¥†HÈtÃŒúVU\Zrv4§~UséÛÇ+;d¹¸Ç¦:Ôds×µCet·–:uÀ#3ZDíÏC°gõ©Èàds^}¬zØDPÄ©þ%Çç^{ðe¼«mrÉŽR)Ç¡àÿ\0Jô48•Ià^kðîh-|kâ+y˜å’eã-¼úf´¤õfU•ÑéÀ‚ÎiA¨¢AäÈô4ïÞ/Þ^=«{Üå$R@§Æ°ÔÕQ*çœŒúŠt×)kg5ÓœÇ\n€dÔ±£Í~6xŠË‹_Ú>RÕ„×rÕñÂ{ã9¯4R¤|€ŸsÞ™í¨ÝÝÞÜ“æÍ+HÇ¯$ç&’Ð´V-\rÃ’FÑ“êiIžt¶†Ýæ¸íH£RÌÇÐÖ•Ô°Ïzì>´âHÈßéÂÜd+Jwª“Ðž?ÒnÊãŒyŽróG×4Ûo´êZ&£oi·q•ámª3ŽN0?\Z£¨ãä ¯cšöyüOw¥_ÅØý‚ÖL,‚vi³tõµŸâ/‡:]ßŠm&°f°±½ˆÉ4¨*®:ìô9ÇnÞ•Ó¹´¨Yhîyß‡4‡Öõ`,ßgS—ÇLzW¬Yü7Ñ#Ùqqj³Üùu­\nøOðÙ•¢¼šáYÃ umtÓÝ.vàœV5*6ýÑF\Zjx—ÆKM6ÃQÑ´ý:ÆÞÞsO)†0¤«ª	ï÷¯­s\nžLa\\sü«Câ&§öÿ\0êw.–Ì¶°ŽÀ \0ÿ\0ãÛãXD30yYÏ^x®Ši¨«™OVZwÏEP>´Íüò*¹Ò†8ÚzzÕ’Nfž\"«Óž)á¸Á4.î5bÂî{üËg+ž{0ªjÜ\ZpjhGoá­bÚçÄ:#\\ÈBq»,îRIØ0#šùNX„£’U‡FZô_üT»Ó„v>,I/¬†/fh‡û_Þý~µRmê.[lt>6%|Sr‡¡DøÒ¹Ë…×KâÙ­u-U5-.ê»9­Ð,‘¶q‚x#¨<Ž5ÏL85#F<Ãš¦ã5¥p¸ÉÍgºÝjJ  œR8æ¥Ùœb³ \n¥)\nU°œtâšÉÅ\0T1‘œ\Z[WY°cÓyþU+)°q¨ÙŸúiMÕê€µÊ€9 W5ãÉÑ§´·„+cù˜öcÏøWQªVg…L#&5=Û\nó[H!¾‘äÔ.¥YÝŽòG ý*‘(K©A´‘ˆäŒqAvÂA9Û€\n²ÚdBz€’#ž\nsš­{öÛQ\\LÇ¹Šº\rŽã¬PÈÌvàö«	5¥¬¬›<Ù:¨=3ô¨å£Š y[ QMßi-\"2ËŽg”ð§Ú—¤žöâÛÌºmã?u77¶*X­Lë•iyÀ\0\'^õë2dœ-œ^tßÅ3òé[0ÚNpÓj;ÇM­€?\nB*³ù’]ZÜ¦T 8\\}Çj¯m»Èˆ7(Úi’ßMgs-µùI—#l…pØõ©¥X€zàŠ`QÔ¡o3ÎP=üjŸ^õ®>å~AÖT©äJPçiäg¸¤1wâÀ \0g\'4î¢›“šQš\0SÔPO4($h;RB˜‡}ƒ`g&°=2~‚ïÇáH\ZaÅîÓÈ\"µYÌ(Y¯¨ë+Jµ5 d’jíì\r=ªGÔèjQ h„3)\0€[TË, ý¢ƒØæ¹m6îxï æAÏ°Üzß\'R„æ9@¿=k	FÎÆ©š–Ç9ÍdjóÜGì¥cHù=kNÝò¤‘ƒYwñÉ¨ÝAbŠXJør½”rjVåt:i‚×B†Yp×7$Ìç¿=å[7 Ç9àb­ÛÀ\"†4Qòª€*{1©ÛÛv»€qÜu? 51÷äNÈítÓ|?ehGï6np=O5¡\n”á­Xº\nFpMC$±­¼†m»’MvÅ×Òæ\'‹n–Ö‰KÎp¤s´µÊÜÞ\r+E¾Ô\\ÿ\0Ç´%”íÐÏ«â0£VŽ-¶‚àž„ó\\Å;·M&ÃI´V’âîO6DA“´}ß×ùV}æ¢k\r#sÍS{Ç<ìíæHYÏ|šö¯…*°ü<ÓÌj™åw÷\"Fü€…xÜ¶·–Ð¸²¸‰‘¼¡Ú?\ZöO…ø?tŸPÓüŠÕ5þ[Ae\'xæ…Øä°n½ˆ¨”üçÜQÌj‰–0NI#µT¹²óîœzâ­/\nµ#´rE01ÞÄ’ -Zµ„ÆàçŒU·v9ãÐÒ«üÜøR¸„ã ¬ßi¶Ú´v6÷vë<qÌ\\îì1þ ~U®ÛFHÈö¨Õ“p9ý)§an5€QQJäõ1›û÷Ív‘F¯:a#šâoYd¼¸d<oaúÕCF4bê\\)ôÅs_|æº}SO5Ì]uëÅkeGÁ&«Nq“éS¹ÇCƒUfåX\ZÑË¹-íººnñn†3ÏÚ¿öSX€ù°ö«Ãø4Ð·²ªý¡ŽIÀÎÃŽ~¤\n©lfoþÐ±¸Ó´Y€‹{‚½÷c¯åYÓx24ð–©§F“ï„JÓ©É\'ƒéƒ‘øUßÚQ%æd’FÊ£s`H\'=W1à¿Ýø[TŽÛÎ–MrEÍ³|Ê²ŽÇéÖ•¨ ž¬Ë¶“Í„d\0ÃƒŠ{È>”Ó%»ß]Éd\n[¼¥ÑOô§69ÐHÕa³½=dLpj½»oG$NWv“hÀ¿­\0Y\\žØ§ŒŒsB·ËK×­\0C<	2áÔÂºxÂÿ\0ÃóGey,“é\'¦ã–‡éÜjÄ=*7Æ*e%f4Íß‡6÷Ë«é÷Â\Z/5™ãÞÄqÀÿ\0>µ“â[8ôánQrÄXŽâ´<\Zí¥üYšÎF8w{|‘×+Çô©¾#Û£˜•$E>G°?þºÎ{Ü„ï©B‚Í/=îr}+am\"âV$¶†lªŸ”Õ¿Ænü.áXÇ2¹\nËU|Ef¶úwPi¢;nu9ïI+\r\Z#l\rq\"GûË(\0ò3éPZN?·Ò{cò¸Ë&:Õ«imKØJå‚_ÛSØ2ö¬Ë¨dÒuÛ;˜FWÍ\nÊzLKQä‹mf}JÜ³Ç4Øõ¥GãXæ7ò][Ý%´sœz¿r3¯må,oÇÚ#\0õã$Síßê7:dƒ1ÜéŒÑ9ç=ð>†^Æt—T¹t\0™-aŸ¨©:ž1ÓàË¶¹Rò²À¶íŸU®„r	V=ˆØ„óÚ—\0‚zãŒR…öÍ<§€)€ÒF4ÒrÃ§¥?é1Ö€ŽŽô›E8ÁÅ!PyÉ 8üÅ5—å>µ&3ô¤?tñíÅ\0@Ê}3I°“’qÅL‡ÞéëF2ßÎ”b24Í¬@ÆYÁ8ç­Fñ±Z\0ˆ#`ô<ö¤ØHö§ˆÎ‘ß4à›AÁÈõ 6œŸAÅ5¢\'§zžC\Z!wp©Ž¤â µ–Kû‘m¤Ú]j7}ËXÌ˜÷ãµ¥îƒ\" ¹’C4Ž¨©®ïHøQâ}Q„š­Å¶‡nzÞtØÇ*ñùk¾ðÿ\0Â\né.“\\ÚË¬^)Í¿mÊ²1ìsFsÀô¸u\rrv‡@Ó/5zf(ŽÅÉÆYºîk»Ñ~x‡PüCª[i0s¿ï¥üHùGÔÂ½ª÷ZÒ´KT†K‹{XpB\0\0ÁGò¬[^\\ÆÍ¤i¥ n¯˜B€zàò*/ØW+øwáwƒô-²¦š5•äÜj-æŸûçîþ•Ðj~&ÒôÐ\"ší7Œ‚¸ûaEyÖ¯âÈÕ5›«ùüºéÉ²,ú;¥bÂEs\nÑl­t¤=^1æJ~®ßáZÂ„ç²!Í-ÏE¼ñ.§4&[K(të\\ÇÎ¡ OÉzŸÒ¹\rOÄ»}®úûZ—¡Š0`€{g©rweÜæké¤¹˜õy[q§(\0`\nê†	/‰™:ýwñ¤bò´ä·Ò­Èå-~¬yüF+4F$”Í1ien®çsÄÔ`ÔˆØ®˜ÒŒºŒœÛÜ˜`b˜ýSY€É=\0¡èn)¤U»m6úéCÅ\0Eõ”íý1ZphvÑ¶ë©^á±÷\0søW<ñ†›F”¤så±£Èÿ\0ÝE,J°ÞÔ¯\"\"EŠÖ:»å¿*ê¡?gM–p$	èƒÖŽiOÎÌÇë\\sÆÉü*ÆÑ –äZE¾¡mg¼6ï}\Z\0¦DeÈ?îÕûm7X7\rp¶dÆ®%T	úæ©®’ò¸h¦šþôNTþ•¥…{(~©¨:w\r)þuÇ,CLÛØÅîE«höa+x¶}>ó½üƒ™Ó<úûW¨H<G¬Çq¦ÙK›k‚•pÒüGðÀÂ½?\ré6ò,³Ä“L½wÜGçSN-ˆ\n§Ð\"æ²úÄ™JŠÐá Ð Ú\rÌq·¶*ü\ZU¢F(BjèÚÕJn[geþóœ\nÈÖu])¯® ·Ú»¶o\0‘í“Í\\kÍ=%¤ô+5&b£Ó³õ>Ì±f;œcV6¥ãˆ•Šé÷\Z<?ë®æi[ê™®zOéÂí.5jz™NVK0©Ç¡ ~5ÛF½^däô0œ\"î’ÔëL˜¤ßž‡5ËÍã\r$S‘ªK8gyÑ=”gù×Gq%£Ê²é+YÈŠñ™>÷#½z”êÆnÈå”%Y0jr·ÕPôàÕ±™dGjkCÁ(2:qÒ¢\rJŠAviÚjú­Qi©\\¢à-¹#‘W×Ä2Éí\r2Âõ»¾ÓŸÄ…sêõ,oÒ³•KtZ©%Ôêí5ý9YY\'ÕtÉ?Ø>rÏšé4ÿ\0_¹ÏXÓ¯ÔÁòd?¯6\"šðÆãŠsíXË³4UßSØG‰%‡hÔôiw’Gâ3Ví<A£]±Ýˆœÿ\0ƒò¯³º½±±½¸·ˆäË¥i/‰5›oâ³Ô§úD@7æ¸®y`ä¶ÔÑU‹Üö˜d,£ìó£ƒý×ôª\ZÖ‹¥ë\0\roF°¿Âí\rqn®T{2?\nòëm{M\0y–WºsuÝe1uÿ\0¾[¿§xö…ÓüCž‘ßÆbýzW<¨Î;¢Ó‹Ù—åøyá“\Z%½Öš µ‚Á²?*Ï»ð\rú\0tÝj)pxK¸Šñþò“ü«~-SŽ0×zTwÏKI™ü¿Â§·ñF“#l¥´“ÒT+Ï‹‰ªœ£³<Û[Ñ¼_¥ÛÉ,Z¾Ø>V´”HIíòýì~ãÉÓu	Fµky¥ÞË¾Gk¨]	s’	Í}o=¼ê\ZÚê\'ÏO›©n#y hn¡Žxa’E¬=4%m†ê7¹ò÷‚oŸRDŠ\r^½Ý´@ò_é““øWeë¾Ùl–aÓ1¶?C^ƒªü7ð^© ’ëÃ–°MŽ$³ÝnTúü„ýE`j?ìîM·‰õ¦Œg6úŒïqã„xÏëI§}”—S˜ÔüU¦é’>®|©Tql¤4¬{\0ýzW1ªü@±¿ÒuKM&òšÚTY$eÀ%õ\"¯xŸàŸˆþÇ(Ó4¿\r^¹á%µšXgèq#möëþ5çº¿ÃŸ\ZxfÎ[íWF¹XQNãùÁG©Ù¹4ÒÓPÐåáGŠ$ÃwqNf\0æª‹Ø÷~óqqÁR0­Ë/\rëz„bk8 •@$ª*ÝŒýÊ«“ÂÔ¢[bÖÓZL|ø›w ‚§±õ®ŸÃÞÕäÔ :½­¼v*s 2-íÅz\\þðìí\r*Õ\n(\0Â?<T9¤i2Y`µñ‡„s„™%E`ÝÑ±ÔÄU…–ÚÞhƒÛÛ!g˜ÒØYYéÐ´VQy1u\n	 Ur`\ZÅé±Ð‘«6y«îU¯Qwp\Z–ïP)¹5ËÜßùW+&z0&¢ÄCpLúÖ¥1þ+™>åÍ\rÞ‘ÁÝ†;WÏr1ß“I½@ÂÄ×bÙ¯qäR\nwÌV›‚\r1µ9OšzRŽ‚˜×šPÇ®E0žž´™´:±$zSˆ¸#Š€8§+SKÔ.t©YÈ|¶9xO*ÕÚiÚ•¶¯n^²uûðž£éë\\\0=)Ñ¼‘J³@ì’¯!…-Æv÷H@5“(Ã\Z·¥êé©Äa¸;µº?½Ap…\\ƒÁ¤Æ2>ÕcgËïPÁÉÅ^HgÒ¢tãÞ®ÅFëÁ§`3Ù:Ôj¡ní˜pDƒ5fEëŠ…óa<q 4ÐUé<r»D˜ž€W›ß]-æ§st •ÉF+µñµÁ·Ñ¢Pv½ÑòÆ=:šáí Ø®dtÖÄ¢Hå\nSkÙêjÔÒÉG$XNMÅQb2Tpjs3/—ç9ô d“Nó;Fî—†=3Ko]¸3ºõ#½VEgU:¹ùk[kuTôÀ”ieŠØ }:T¢b1×?ZÎ´%ó#tíR<³õ \n\"C!Š|üÇå?Ò–Æc-²îl²ü¦—U¬÷u…S´•T\r¤ó@Í5`ŒIúb’éaš43,Dž\\R$›“$VôÝA4Ózÿ\0c³º2Æª­qqåAîsIˆÈûo+Ä.G÷ŽÓHmnW9ˆþËVî®ÂÉ4(„\r£Uo)@È\'ó b-¥É…¬ÀRý’_â–ïfƒÏ\'?SNT\0ç?J@Þ­s#DN?:‘ayXwû¹þ”~?…(<zb€ð\\¢ú(ÅU¼XÖç*T›®jÉ\0.sTå Èì(SF‘I¸•ÀÌlI=È©,q¶ØLVD²2‘€G=9¬¸;ˆ·»µtº?ˆ5)4;3P?j±¸„A\nÂ:6q’EH¸¸G¸·Û\r¦º\'Ö\ZÞäÁªÛ´‰–Sï\\‰VDÆ~el~µÝÏäßÛ ¹@êÊ?ŠŠ–V.#íg·£Ä¤Å#m¦ºÒKéd“b|€#u$û×#¢Ûn¬íCeV~}+­s–Îkž}‘¢7aóo\'X,\"k‰	Ú|±§ë²ðNŠöÎ÷WŸ»™hÜÉ=zý+€ð·Š.<5$öŸcŠ[k©w™Œ›\Z2@<Œ•ÞYx˜Ï*EºÒtoºVàg>˜­©$•ÑFÞ‡K,M&âøÁ9$TwVÈ‰]lcx,1Œ\n§«êVúf”×Z—™hÃîG¸ú(¯0ºñWˆu‹ü^Î-t¾\nAÈ#¶â{ÖüÉ\"[6Œ}¨Ë1ë\\œz\náuMv5Û‰X*¬»G<p8®§P½ŽÚÊDŠdûD‘‘L÷5Èè²iúL×SÞéË©]y\r.\nÄz“\\×4d›æfÍidY–ífÂãÏœéúXC¾âdÆ~€ã5Õø`‡Àú|v’`Y%\nä`Ÿœÿ\0Zó­oQ¸Öu˜g×.¬—8·^#^8ãú×màmcNO	ZDžti²/1_½ž {ŠššÇBTlõ:…Ès“ØšTn•\n]ZM2y7p±aÐ¶ëS*6Al÷5Ï±¨·Y¤otâ8ØíÜT?*³öw*>Ëjüt/´þF©Ýa\0®FzY²ChÊVâÊ÷+Í\\lÖ¤êtRÚ\\°BùœõŒ‚*X\0rs‚3\\Ü6ÖPÈ\ZÕÑˆ©.õ+Oi2j7Îón\'Ê‹9iÒ†—B•úBA,Ç„ûô¬ÍSVÑ´“OU´…‡TWß÷Êä×xƒÆz÷ˆ]Ö{·³²?vÚÝŠ®=­s‰o»–õ5¼pïí29j¸øákVcöÛc‚–ûTþ,Aý+ŠÂ7}›G,‹fY±Ôç Ç/Ý\0P	&´T`‰çgAwâ««¬¨±µ€{3Y²^Ë\'ß*>•GžNiAâ­B+d.fÉÌÄõbi™ëPæ€HïUd+’ïô¨fU”a¹úóJi2iì!°Ä±žNj}ùŠŒZ98¡&áŒ`b•[ª,œu¥§4ÄNŽ qžµ*F«óFIÏPj®{ÔÐHÚO^”v)Ï¥HtªÄï_Fõ¦oe?6~´À½Æ*¡d¢‚ \\€1ƒP\\˜äÃÇ•q×7~ ³hßVùNÐÍ\rÈÇa€þ‚k°øh²­áŒ³[‰©ƒñÂ×xÑu$IBÍôÁû5u.­á\rüã/‰Ï©Æò¬ž¨Ž‡ðöbúUâ1?+·® Y-§F\0Å2uïÏzæ~bÛPÕ­dÂˆÔ€|6+®NT¿{œzR¸3—ðçïtµ°Ÿ&K;†Enø=\rh_Û.«¤ÝÛÊ/m”¼MÐ’+.RtËcå\\…uúç¥uWQ´WÁãÉŒ£4Æax}µ¥ÝN¤‹¨öž¼ž9SÂmý¥íÓ[	¿ì·GÃú„º\'‰.Ë)HË•’3ÓÔÚõ±°¾Yâ}¶×ü¸ æ4iøz5³¼Ôm@æ+÷éÝXq] ƒÀÍqzv£~Rß(—g>¤t5ÜL˜‚sÞ­lH1€\r8)#&ŒsœþTñt¦mîsžÔ\0;~4àGSdðqž´\0€`ž¼Ð‡ŠUädšRE\0FÜ(Ú2\r\0¸§ôÓ»CÏn„Ðô¦®iNÕ˜ðyª“êvñI´’ÎxªI?€§`,ó´À4Œt<äÖ¾‘áë€5¾–º}³tžýŒˆ_¼*í´Ÿ„ZZ2Éâ\rBëT˜Py0ý09?\\Š4ÊÜorZG-ÕÉùV(P»é]F‹ð÷ÅºÂ«Ï¾lÀ÷M™>‘ŒG¡Å{U…–“áÛ2–Özt\0\rÆ5HØõ?SYòø¦Þiš.õº)~P}ØñúÑ~ÁsÑ>øzÍ–]^[­jàg‰›ËˆÄ\"œþ¸®Óí\Zfƒf!„Yéö«Ò8Uc_ÈW%«ë—Q©\Z®«m¦)ÿ\0—{OßÌ}Ž8ËÍ¯ÙÅ)}3LûDØÿ\0½E‹¿Ô\'AW\nS©²%É-Ùß?‰å»Üº.Ÿ5Þ?å¬Ÿ»þú?ýzæõtä¦­¯=í4µÞ~…úùW#¨ê:–©‘¨ßM,}¢jøâ©¬iTí]PÁ32uÒØÕù1Ñ´¸-d?òõpÆi¾O²¯®.õ©]ÍvÃ ä è)¤ÓI®¨Q„6F2©)ªª0\0dÑž4šÔÃ¥5%­Åôæ+UVp7Í´îjé¬4ÙDZŽ­c¤±$óè*\\ãØÔ[ØPhÜk>÷Ä~±“Ë–òòâLgðñÿ\0b³§ñÆ’¤‹=\"úàv3Ê¨?!šÉâ ´¹jœßC}çØŒÅ±[þ×4¥´‰e»±·¼³0B^i?îd8·Ðôø×±“tŸÔV|þ\"ÕnN^=:!ÛËµLÄæ¸ñXò­\réÓ”]Ùï°ËöÜ;€ç”³ùT­nñ#<°Ç\nŽ­4ækçuZeÚÚ­Ò¡ãlnQ!YÏbŽÅä/#w.Äçó¯;Ùy7gÑ· Ð­\"i.µ&0½vÝ,‡òRMbÜ|Mðºf;é.²þ,W‡%”@çËP}…L°(è\0?J=Œz°»=bëã&\ZŸìí/P™‡Máaž[ùVEßÆ\rbáJÚhñF?é½Ã¿þ‚¸\rœRŸ|ÓT¡Ø.t7_<Ypù†[+!ÿ\0L­Õ¿WÜk>x¶äboÞ ¡qÿ\0Ç@¬Ð¥8U(Ål€‹P}CS*uMNöø¯ÝûDìû~™5Z=:%< Í]\'Š3T˜ˆVÚ5 àdTòvbŒÀëIž)Iõ¦˜Vf1QHlë]öŠOöŠ–\rå¦ÀGpç¿.Ç3¹q]O€f2øvâ\'bLôAÇçšìÂÊÌÂº÷t: ÞôàÕ4å<W¤rÅ81Ç¡Špn)™[¥KsUÔûÔˆØ4Àº¤íö§PFr*E4(<\nPj<ð)A gƒéMdFûÊá@4Í°ëmö®ÎimßÖ&+ü«^k1®É®’ò/î]F®?<gõ¬piA¨•8ËtRœ£±½¿dX½[¿üõ±™ÿ\0ß\'Ö¶tïÚ©ËÄvç ŽúÅ—ükŠªž¢°–›ÛCE^]OW³Öõ‚¡„6\Z”c’ö³©8úñ«+â«5`ºÕ›gxÈŸOÖ¼t@ŠáÓ) çrœÎµmuíj×-NvN›%Äƒÿ\0¹å‚—ÙfŠº{žÃe©é·ƒýö&>›…hFdQ˜Ü0ÿ\0e²+Åÿ\0á!IüLtK	Î9’Ð¿éšÑ´×´ÀG‘¨êÚkÿ\0vDó3XK\rR;£E8½™è\ZÖ¡ë…Žµ¡é×ÒÛæOl¬à{62?\\­ÇÂo	³+i±ßi.9ÿ\0C¹8\'Ô‡Ýúb®Xkz›ãìZŽ™©®8S\'—!ü\riË©é0ã«Æ»Ô~#5š-6¶8»ÿ\0…úºÇ/ÄP\\ü°”Àÿ\0yIÏåXQøgÆ:1qu¢}®ÝxólæYIú.w~•ë¶šþvTGx#sü/ÁüºÖœe\\èÿ\0F¥bÕY-Ïž/õ¡i7“mwe7t¹ˆ¡E§ÜÇ<l£_GN­,-ÌK4L0É\"†R=Á®gTð\'„õ3›­ÕÝm˜×ä T¸£E_º<Jî}ÀsÖ°57>D‡ ì\ZÁ2P§H×õKî\':þå®;Zø9âÔB]iº­¡l2$Æ	XzüÃó©äµ‹<:ÖÂþüKs¹6ÅÛý\"Vòã\'=	úTé£ßˆ¦Ó¥`	Ú“Œý2xÍzˆô_iº»øFÈÒl”$6ò[o·XÀï´•ç¹Ü~µ˜š­ôòß}¾Û@°ââ(-@d p0Ç\'©äã§jÙ&ÌÔe-‘À»I¦ˆÞFÖG¨§wëšô?ˆú.†º+Ýxvs=“JhX¶ûbxhÉnJñœ•çXeb’:œ0Í;P”mqOjàPzQÛ¥\rÍ‘HÇ#€ñ@w‘J­48£½\0JŠzµ@œ\r\0L§2’®:Ú·,¯þÔ&À™G_ïW>­Ç\'Šr’¤2œÜÑ¸M¸Ãb¯Ž‚±t‹Áp|·âQúÖßE\0Ò\0ÇÆE9™Qw1â¨Í|	\"!øš`|¤æ©Ï6\Z0ƒøÔgñ¤‘Ù‰$äš|øËrƒsÒ€,üD¸ß¯[YƒòYÀ¹í7\'úV1%c\'ÐS5†¾Õ\'ºåæ|ýjI	*ÔâšØKDC,{‘F2qŸ­Tw#»u­#ÕaÀ¨Ù`$\rÇÚY+…;J «3ïžábNLûTÑ(òXãç\"ˆG” ËY>Â€$}¨¡îŠ¬íÎ)òžœÔ,Ç°Í\02rßg•s”#8ô5­iHÓýÖ¬Èúb—¢ÜÑ€:w&ÊpD éŸçInA@{t«<ô^\0#Há2@.8ÅTAÁSV˜žõ‰2qÎ)Û‡9Ï4¬1×ô¦\Z@?ÌïùR4¬Ê9¦ŒÒ60q@É+Ç„J¶á£=uDÖ·c,ÖíƒýÞkcJËiQårX~µiÑÐ‚¬;œóYó±¨˜6rÏkà6~drÇ´»ÆNÏp{U­\"_”«±$Þ¿\\ÖµìŒ4ËÞNu§á¤`ä€PiÅó\\V±F|–|ã;³ú×cfåíUð\0=0kŽ¹!ZP	88ØÚÄÙÀ±.`?‰56EGrkY7i;‘	úÖü2+¨+“øW-p_åÇ–Þ®ÚM0I™OÖ°’êY±++ÈËÒ¡žÖbdtÊžÃŠD»”üÒª¹éÓäº‰‡Ì=¹©»[³ŸnÉÔRJJ/–cwgÙôÏLÕ•ÆÌ•QF\Z4¸ýÜ˜,¸ÅIÇ/ú¶V?Zoq-½A$ðˆ6G‚ÝñY·*FM^v#\\»†CµR(ÈÈõZñºc¥C¹Kc¿ŒÊäÈI_C]ïÂV+àÐÈûD¼­pú‰,¼ô®Ûá?ü‰€ÿ\0ÓÄŸÎªnð%ît·6¶—\0yö°ÉõZˆéJC[¬–ÇÖ\"¬¹À¤\' zT]Œ mïÐ‡U˜§]²¢·ëÖ’GÔÐ0YÜƒß%\r\\Ç Ò™Gb\r;˜ÒJ™7\ZtŠG_)ƒŠóÏ‹Wßiñ\r”{ÄP@­µ†>fç?–+ÖCc½yÅáˆ9ìmâ#þù­hë4L¶9|œÒg\"›Ï4ŒÁP“]†C»ÑžzÕÝ\'F»Ô”JXAnz>côã¦À„‚îÄq’zÒæ[@Ž´ àqW\r¤	Ÿ—ó5‘¢ƒ€(¸X¬Ò*õ8ÍE=3ùVÎ“aØ²!8ã\"¤ºœ‚¡I”îF$ƒò·åO†+‰Ü%¼\r#V°‹pÆ5%¼‹e0™Ñ™\0ÚBœ\Z}	lÇkk¨Ü¬Ðùn:‚i\0,1ô5£wwÎÎ®Ä“Ÿ˜U79RGÝf„„«ÓZNMNÛ—\0©Á\Z®Ä9¦ƒq’i¶Þ”)²Ÿ—9æ€,GpÄàt©|ØÊâFÇ¿¥f£`òx«B8q–lÓUdQ·vñØÔˆ¨FH¨\n@àÎ¦2NŸ4Y>Ù g©|IµûwÃc6Òd±¸Wì	Ûüš ø{7öÃ)àûÒØÜzZé¿ö¯…õ‹qçÛ1SŽ‡gó®àMÀš]oJ‘°—ÛÀ÷ôjÈŽæ~ŽðˆRùg1\\¡Àé“·üEu,æ!‰eþUçöZ…Í½æ™{¨[ˆílfh	A‡lG­z=¦«gwkæÛXl7/š~b=jnÒÑÍøêŸG·¾‡m¼€nœ\ZÞŽO·i6wäX÷Ÿ} ¿ÒîíZ’9b!¸û§Ö¹ïjrÉgý™* h2ÊÄõ”E¶µ@®SÖ.|C:´`µÕ¦sÝdNÿ\0¥Cw0Ôô{9‹eâŒ¦ÑýåïVõôûŠôFEfy°Œ÷ý\rE©[\røÖØ¶›s.õd\0ÝGë@zÿ\0—åhÚ½ºá&d¡{:ý?•zD¬%ŽTü²\"¶\nóßÚ:ßRÒåf‘soéµ¿ýuØx~cqáÛfÉXÂœš¨½¡w>ùÎ>NzAŽr~˜£ŒJ°Œœ“A<FÒØ\nŠ{˜-”´²ªq¸Ð “Ûå¡`£G´ÖuÆÆ…¤Ü]!ÿ\0–Ì¾\\CþØÚé	ïg\"Ok+\nž¶ö#$BíÐý¦u{ml14é»(9?•hèºˆõÕS¥iý±þ•t|˜ð{ŒòÃé^Ïáÿ\0øw@+&¦@.þ^\'ýä™õËt?LUÍOÄ:}™Ùqu¾c€\"‹çcøhœ‘ð•+ø—X–àðM½˜òÐBç’?]î‹áýÃ±ì:ÒÏ\07ç¨ÞrZÌ»Öµ)!ó!¶ƒM¶#þ>/ä\në\\¦¡­é¬ÄÏs{®MÐ¯0@?ÉªŒ%=„Ý·;›ßØE)†’öçþy[©sŸ|tük+SÖµŒµÜöz%¹èda,Ä{ ®&j’EäÙùZe¶1åZ(_ÍºÖ?’¦F‘òò7%ØäŸÆº¡ƒ“ø´1u’Øè¯5Ý3~ø­®u‹ÈšùŠF>ˆ+:÷[Õï“Ê–ðÁkÐ[Û-\0ôã“øš£ÇWT0ôáÐÉÕ”ˆ£†8ÇÊ üu§Ò“M&·ØÈ	¦N5cŠC\Zß­0’\r+\Zaæ€šBIæ\Z3@j†A¡j+2;FW®3\\[ÞA¦jìÖI4ë1ÏFõÅwNžm´ñžþUæ2Ü¡ñøb¼ì^3«îšÞyg,„’zõ¤Ç½/j2\0®;´½…—Œô¤0ÀàÑšCÓÚ€x¤“Fy¤çg¥\0(9ïAô4ÐNi{P0éE½é\0œ‘Bö ž8£<Óh¤æžzÐ!ã¨­¿‡ÒbmZÛŸº²~YÖ°¹­Jañ4ÑƒÄÖî>½\rtaåi#:ªðhìË\0i<ÏJ¬IÉ§+Wª™ÅbÊµ=[Š¬\Zž¯Ç4´\Zž¦ VâŸ»Šb-Äý*`yF\'É­©ã­0&”* ÜSÁï@Ïf›ž(€\r8*0x¥¥\0H\r(54 Ð€ÒƒéQƒÒ”\Z\0(àžE0)ÀÐ4>F¤Ž‡vÏQÔ¬@ZÔ*:(|¯äxª™¥¦i8©-PÔšØÛ&½‘@Ôl¬5ë4{[óáVmµÍ\'u¾£¥°ÿ\0ŸIL‰ùð®t)ÜqXK\rN],h«IöŸ¯H@\Zwˆí¦ôŽõ\'é[‘ëº´(\ZïKKˆÏü´¶q&ŠòF9QÍ>ØÍhû¬®&¶oXœ¯ò¬%‚þVj«®¨õè|S¥HB\\	m_¸•JãóÅjÛÝYÜ¨k[¸ÜÁÝ^E‰u˜“d×	{÷.£â\0?­M»`íºóCXþzÙLÊGü§ëXK	Qt¹j¤ì L£(ÄcYÚž‘¦j¤WJ±½m»wO³è	ÂYkvA‡ØµûÛV#½‡ ÿ\0À‡ø×Cg¬k{AŒiú”c©·¸ÇÐÿ\0`á(î‹Nû3ZøEàíVÔÛ¥µîœŒrßc¸8\'·¸Wœë_³}ÁÝ.â„‘Éùc¿„¦»©9íü5ìÿ\0ð•ÁÆ¥§ÝÚvÜÑœ~dV•žµ¤Þ`[ÞG¸ôRFijSr{Ÿ&ë_> éVM*-Fÿ\0––S¬™ú)ÃŸûæ¸mRËTÑ¥kZ]õ„˜È[˜\Z3ÿ\0_~Å†\0Ã*?û­št…Ý\Z9I2¸ÜôÁ¥vÇç’Ý#ãæÇÖ¤W|§&¾ÙÖ~ø#YÇö‡…ôån~{d6ì~¦<gñ®Zýœü/t´mWSÓec²mž5€`7þ=NásæPzÓ=úW¯ë_³§Šm£jún¥ýÕ‘š	ð ¨ÿ\0¾«…Ö~xëDfÞ¿uq{dûBêL{€üh¸Îh°äSZtEäŒûT–—ÖvrlÔ´pá²Ë$ÓŽ•Óiÿ\0Ù‡N{í+@†kçqäÁöÃ+Câ¯QÐŒô¤ån€ŒK]\'Y¼ÌµÒnž>ÎP¨ýjúøS^,‚Vnæ>z£ß\'ŠŽOjWÒ8ÔÇœçå,®Ñ:víßê+:âêæî†{‰^è¬O¾À±>Ÿ¨Ø ¹–$@­…t•[ŸÀÖý–¹¦=šÉ©]=¼ã‚‰bÞãµrqÆ¨¿(ÀúÔ¸\\\rÈ®¹äõjáczïÅšdHË§Z\\ÜJz<øP?œÔSË5¢Ët‚9\\“ŒcŽÔûvµXKx¢„wÚ1Axg]’Ìˆ¬z·ô¢âH»¦é7z«¯6BIúò+{UÐí´/kJ<Û¿$ ºY•xüêo‡ËZsÅJÊ&|88=*¿Åû©­t\r6Ò6ÛÜ®ÒÔìLŸÒ¹å99òšÅ+\\ó›?œ€O UrÊ*µ‘ÂMNXýå?7ó®£1rX~´Žs!\'¢ŠXð#§“QHøêrht˜F9ä(ËsJŒÈ†YÖ?OöE-º\"@3.[œzÔ2Êdr#ë@\n[\'­!ÐàÓÆæ€Wp#¿jÈ\\‡lö&¶­f^®Ë–ÇF†Kd±\\p95¤¨p8¨t(Ä–²ûáù­AnÇ§&•À§·JkGžjùµ\'®h§Œ(-£Á9Æ9ÅlPI¤k5=ºÐ½zS	Èâ¶žÍv€Ã5ZKUOáühM¤#>•UV!›*MX±*c9</5”©‰ŽÆtºzÔö·—¸}’y»Ý“½dâËE»¶?Ù\'ÌÜ¥ˆ`õ¬­UµVPZ6`Î*íÖ£çé×0ÉlªÌ£§89ªúJˆõ;bï±w¾~í8­™›¨ª¥ÝÚGŠäŒq]m»fÒÜƒÁ•rúÈ#R¼üÀ[;½k¤²;´ûoMƒšRøPâ+»¬±4nP†8\"¯F£R9¹kV{ƒçEÏñJ·À“,˜8BC#\'ûÃ#ó§A<Lv,ŠÇ8àÐïˆúðzW5	5ˆM$¤Èw¡M¸ëÐ÷©Q¸7c©pžô‚Ú\'èÅd‚1N‘c;|¶‘ö#õ§¡1±>\\3GÊŸÌTë`,Û«‰I¤yI,Ç$Ó.¾aò}ûUÛ9àhØ›0„¨ß*µã™HAÂÿ\0tt©z²‘~\'ÌK0þÒ»o…ÿ\0„)O7qøŠå¦Ó/ï,ÞM:Ù.‚õXå]ãþœ×[ðºÖæÛÂ\"›ia™n$%$R§œv5R^á-«ØéO,µHÿ\0tS\n°äNnÜVcgˆÆIâ™4ñÀÌÁð	éVc‚F!¡Ê§þy¸4Y°¹^[ñ™1âÍ:qÿ\0-,Óó…z´ñÉCÂàý+Ì¾5Ç‹Í`Ì%?&Ïõ­hüh™jŽõ¤\n$¸·‰†Uä\0ûŠV<š-Ž5\"FGš8®Ó#Ðâ5ùQWJæß$·I®Žqó7Ò¹æÉfç¡5„6(¯\'<U9¸Ò¯J0=ê„çƒZ¡¡ÆÁÉ©<sŸ­D§\n>”å\'(²$â%—\rµŽÑM™evLŒ¤Œá©ä*±‰h9=*ÔÑËy4²»´`\0I®‰+%s;êeH1ô¡Àû8Q¸;E:X™†:S¥(\nŒ{5d2Ô³?’ŠaeÚ1œÖ{HÅ^dU\\´ËÇ†P|†æ„\0)ÉÜ$þ_&%Þ~”Áõ© ™à2ßh‘v7¸¡ìUå‡B9§Ž)È›A^ªy¦0;±š`Mqš¸×ÇŒä\Z ‡÷‹ÏêùPF@úSìþ›@#9ÝÊ¼ßÁ¤øâùµa²3s$íµ³·ÿ\0e®×Ã’ùnãº8q\\WÅ8Î“ñ\rBBÊ±\\†õeàÿ\0è#ó¨z2ã|Wekeã­Xj%¦	/;>o›ŸÄÖþ!¹°k²0îÛp:(ª§ÅÈ|U¦ê1ãÊ¾µ\0R9ÏäÂàö\'H¸Œ·Ü”T¥¡v\\¥Û÷eÈ\r„Æ[5Ìé±gøâfçqÁãi¶¼A©Å§¶•7O*eW©\0ô5É\\¼³J\'|´(õ‘(éüp-_JðÜÇ$ÑÌ(9*:f³<M®Yêº5½¤‘Ëöèv•u8¬{ˆmí­Ì±¹7\rËç5ZME-Š˜õqB\ZŠ±³¬ÞGªZYI³78òfç$€85\'„õÈtÈn ÔVS\0q‚ƒ;Ò¨è–Ú¥íÚÍ¥èzîzmÝ?P+Ðt/ƒ Ög–mnæÛ@¶—¡Sö‰˜ã”Ä‚=)ÅX4±–Þ$Ò&œ,7°ž7J»3ZZs]k2ˆ´BAÁòí_B[ õê~ø1á=¤³Z>©v0Â[ù7Œã´k…Æ{×i#Ûévkº·²µp¨Š¨ª=\0jÄÝU¥|/×oBÉ­ßÁ¦DzÅoûÙ~„ýÑø]¾‡ðÿ\0ÃZ;,‰aöû•ëïOš#òÊ¤}v[¥eÑ-n¯ßœJÃËó5©ê2Kg$ú†¬`[uÌöÚx2ý[·ÖšMˆêõ-bËN‡ý6î8PÏ?€úýåÔlÚNžD?óóxÞR|H®\r¼A»³hšl0ÈOü}\\±–SïÏ²ïîo5&ß©]Ër}¾Qô+¦IË}¥V(ë5=j×qþÔÖ./œË®ž¾\\`úî?\ZÇ>#¹Š6F³¶Òân¯ß)ú³\nÅDTU\0})àñ]ÂB;êc*Íìîæ3^Ë%Ä§«ÊÛ*€\0“4„×BI+#+¶<šni	¦“LIšLÑHAÚŸÎŒñHMž)Œiæ£n”\0ÆëL4ö¦\ZCô¤Í¥\'J\0žÔ4ÐŒW”Á…î è\"—CŠõ›{\ZóÍb/#Äú¼Xá¤ó\0ö ë\\8µ¢gEi2¿cKšhÎ¥ÍyçXÅ(úÓG$ÒŽÝhsÅÓ}\rã4€QÖý(ž™J\0vx¤çilÑÚ€œQÓ½ éé@Íž)E&yÅµ\08ô çÖ“ŸÂŽ´_nÕ6\'“â}9ò\0rPþ#õ¨es\rí„Ã¢L§?ˆ­)»;‰««ü˜0î\r n)nøý	ÍD\rzÑg2·iÁª\0ÜSƒqT\"Ônx÷“¦\rTWÀ >NiÜV.ÀÜõ«ñ¶TVT-È­F*¬Y\rNÔJzS 	3ïFi™àóFhàÓâ¢€Üu¦\"lÑšŒ74 Ð€Óö¨Ct§+P ñJ\rDŠp4”\ZU5=)ÊhPx§QÓšp=(Px§ÅDài.xîÕè)Â€ª°äL[xÕÃ Øàçrð:“ŒRŠC½‹ÖºÞµh‘©ÎT¹!?PjÑñœGö–§ÝÖD\'?ˆÍcæ”re*åº-U’:+}cGÊ˜îõm1»\0<ØÇáÉ®‚ÃXÔ	_ìínÂý{$íåH}°Â¼ðò9¨ä‚\'\02)ü+`âöfŠ»[£ÖGˆµ+`£RÑ¥ õx1 üÇøU›ohÓ²JÖïÜH»ž+Ém.¯¬‡úõÍ¸ôG8üºV¢xŸTØõ-5®büÆ+	`æ¶ÔÑV‹ÜõÈ\'µœ†ê6çiDª>F8ö5ãkZK’n4«‹=d±˜ŸÐâµ´ýbßpþÎñ$‘±éô%?6â°•ÇtZ”^Ìô\rSMÓõh–=gL²¿z-ÕºÈÓp5ÆjŸ	|¨x4Ùt¹Øÿ\0­Ó§hHöÊøV®³¯,a¼›-B!Õíç\rúZ<]l˜]FÂæÕvŒýk+©äºÿ\0ìßmu<×\Z7Šn’Fä%ü\"BÇÅ\"‘ß¾Úáu€Þ>ÓúV\Z²c9µ¹\0¨“oéšúžÓZÒ®ÿ\0Ô]®}	~Ul\\E¸,SÇ$˜ÎÕpHúúQ¨]Ÿêúˆô$-­h:’gd¶Î¨~ŒFçYqßDÜA÷¯ÐT{ÀÊß(þÈ5¬xSÃ:ÒÈ5oéW,ãGµQ\'ààn§qÜø‡D¾²‹W¶\ZƒfÂF)^Jïb½hŸé\ZŒ±\\Ëgi\0´ÂÊçsJ[œ©äôôõ¯XÕ>	ü>Ô!d]ì¤8Ä¶·2+À’¿¥qzßìÙ¦ÜÈÄ×¶è«òGy\nÌâ¥p?\nOPº<¿Ãž!Ót›ÉR{çTóE\'”Çrž™Ààâ¹Ÿj’ë\Z¤—Ý A² ç·¯ã]Þ©û?øßNì™ªŽËÆÆÜH~¦¸­{Âž+ÑbjþÔ­Ò3†›ÈfŒÀÆWõ¤£ùº•s\ZÝ3Æy©á^A9ª]F\0FÊ‘×5v)£b0êI÷«B%‘v¹aÑ¸ú\Zb ’USÍJ¿¼£Iõ§[\0±àž™À\'d÷F@Àªä.cšº³ƒŠL€}½è2Æh\\R0xÅ 4\\‘Š­¨®cÀû§§ïÍ6eó u’8 a²é^+lN+™Ð­ô£8Ê~µ»½ÏSùTo¹$ö¤S€8æªî`y£ÌlO€¶ p{Ò1×µSÕ(ç¿J\0ŸêA¦¼ã½DfAÁ§ùœpy \n“é³îÌ¬ŠzøaTÚÞHNdçÌ^?1[QÜ8·qV\"¹vðÀõÏ4‡s™žKgyEõGô¨”|í»ol[ž\"ŠÜho,P\"Oæ(£‘¤Ä×ËË¸ŒüÜŽ”-…s2å|ýã8­[›Å¶&9\"0Â¿vCƒøU=vµÕ§‰‚Œ*Ÿ”qÒ¦·…\rœ2´¬Ááã;:OTRv,Ã¨µÍÄ(Ð„$žA­˜†\0®~ÎÞHõbÍV\'=mE#ã¨ VSIlR-¹ýØ•…y$cR…‹•\\qåžã±ïZå÷.Áªæêå1I0VÀ8j•£(Ö·9‰M8ÿ\0¬`}*;Qû¥ïR0ýñÒ fÏ È£¦.3p¹üilVr;\0)Ð÷#=:Ô²ÑÃM\n5Ü®+o<© õö«–Ú–³f»lµ›øT\nÌØ?…UCºIXÿ\0}¿™©xÅw%¦§3ÜÜ³ñ×Š,äÝ5ÜWè6\\Æê¸5¹iñ>2Ê5M¨ÇÍ%¬Ùÿ\0ÇXZá‰8¦ÏJ—N )3Ô“Æ¾Ô¡òå½šÕ›—Vìæ¹­\\´Ót›Í§N{;£Ô›iÆïÈ×¼hßyAü*³YÂNTa½EG±]‡ÏÜ÷1oy§’mï¯­€èœ0ýkø»£NÐî\'™¦fyf\0ðkÓõ­wMl5‹¸Ñ~ìlû×òlŠ¿wâÛíNÖ+oi¶Z¬1±ec˜]sÁÁLÒ…NIÞ÷5ÑËç“H‡6­é*ÿ\0:Øhü/qæšÆ”Çî…+pŸ—õ¤µº•Lñ&/ñ»\rlß¨#õ­H¹ÔÜð[ýßéXî?Zê\'Ó5GƒÎ[T¹B¸Í¬«(Ïàk™•Œ2ÜE4›_çXÅX´Êóô<Ötý«·.÷[Ó³¤àòx­P2âýÐ{ÓƒÃ51Ú9©¨õ$P *7‚yÅKÏd+pÝA¡Ð†\'=ê´’´EWå|¥uTZ#ž/ Ë©9“ÔUB2G×54’eRœÏ=ªÚÙ[Í–€ÈtQÏ5©·1:¨ò\n1ò¹ÁªŒA<)†dÉFÊ‘ÔŠÎ9\0þÔÊ¶{P9i+ÇÖ˜Æ!;1×ò3Ç¯CQ¡ÁéÞ¥š6‰¶îVQÊ° ”Ý9r)ŠŒ1â¢tqÍ5zóÖ­¥>ÛÐ§þZ.+3ãU¸ŸGÑ5ÉFkvüFGþ‚jÌ.cž\'èU…jxæ×íÿ\0uÀ­˜N¾ÀOéš™s¾*sª|.ðÖ¦émBçÐr§õ ðÀ+¥Þ¼r#\0BÒx>Oí?…zþš~i-ÛÎAß aú­dø~;‹”lßlÌ0bj¢Ù¢¥ÌòyÒÏrÅî_‚ÍÛÚ¢kµXñr¬äãfÑÉ>•bæî%¼šÏW±$-†1¾k>òk]áÐ:¢8`‡žj¨FïP=Ã5írÖ-KZa³‚¶ûñ+\'©àííÆ3ô¯^ð—ÃÍKÚ-$bŸ¹n†3ô/’ì=‹cÚ¯øgX»þÇµ»µ›ÌIPHUÆAÜ3ýkGRÖ.®§¶·H£¶3£0™J‘WËÐ‡soË†ÎÔ$²Gon€\0¬À`}+&OXù†&ÞmBaÆ!\\¨ú·OÖ¸›ÍkL[Ë»Ö®û÷lR0}”uªšö«yˆL,í±\r¨Ø zzÖôð³ž»º‰nv\Z¦­zŠN§¨Zé1Ÿùcïæ?—¹{zÂ)7Øiò^Î?åçPbÇê ¬!\n+Ú¤õ4£¯Jë†+âÔÅ×}Z†«©êCmíì†.ÑGò üWÑ.SLÔã/²\\~æuÇM1›Š«xÛ:ûq]*œRåHË·vZ½¶m7Sº±l‘nŒãªTþTÌäUï³Lº NZâÏÊú”?ý•fîSwŽ¢’³¥ 4ÍÜÒnâ¬D¹¦´Š£æ`>µZyÄkîx\0u&¶›MÒü?¥Á©øÍd¸º¸_6×HFÁÙžSÛ>Ÿ‡\' gR¬i­JŒy™•¯;„µ·¸¹cü0DÒÐS®öÙ7ÜézŒ)ýçµÏý;Å·zœ“Ê<Amá[\0Û#µµƒ-°Œßßÿ\0­M›Æ×v\Z­²è>,Õ5U?ë~ÙØ¾€·?§âk‘âäÝ’7TêEÔ3®bp{b§´Ïˆ4/D_\\ŽÚÇSÝ´_Z6Û^ãü;VSE41ÊÈuG\r,\\cÔÐWM:Ê[èÌ%…íAïžµZëyNÑ \rýÖàÕ€C9­Hµ·˜jCÒ£n(t¦ÔöéL¤1)­ÒØS{R^+Œñzü[‡=°9õ ‘ý+²nõÊxñ16“r;ˆþ8?ã\\¸…xQÒhÁ_¯|QCðí\\Ð3^aÚ… šOÆ¥\0( ž´ÔRZ\\Ò\0cÅ £4@Å ÒfŒÐ\0IÅ\0ñM$úS†@æ€cS]—i€üj3q\Z2XûPÂ”ž*¿œìØÎ=M8HûrPcØÐ\"`}j\rDfÑ[¦ÇÍ*Í¸ýÆ¤¹\"[WNA<ŒÕGGp:Øµ˜d’¯`–ÍäE1¼ŸrAŽ0}êó+!Áª:P‹Uðµ¤7j$TO(ñÊ‘ÓZÎâm*á4ýFC%«ñmrÝ¿Øc^”\'¢lãqW²5³J\r6E(Ä55˜*“[&gaÎü€:Ô±ôëTÃe³V¢=9¡;ŽÅˆóÅM¨jpèúSÞÜ#J…US‚I¨c#5“ñOø’i¶á°..o ¨«QÂ7ES‡4’e«oéOµo,/`=Ù\n°þ†¶-<C ]\0bÔâ„ž‹?ÈkËÚ$€IúÓ\ZÑHíùW,qR[›º~G³Å\Z\\GºÖâ…ìbpßÊ‡‚TÎèØ~â©°’`–HÏª1SúV•Ÿˆ5«0<½Ràü2àþu´q]Ñ\rÙž¦r#¡v5ÄÙxÿ\0VVugep½ÎÂ‡óÍhÃã­.rÕ…Ü{Çµ—ükU‰ƒ3t&ŽŒIOp+.Û[Ñn€òõâcÚs°Ö„q‰Ty¢˜Ó7\rü«UR/fdá%º&YF5\"È\rTh¥^¨Ãê)›˜uÍY&€aëNsÆ+8JEH“ŸZ\0Ð\rN©¤õ*Ê§ÐiÀð*`qƒOâ€%S¨âœ\r\0L§Ž´ðx¨Aâž½!’æŒÔY¥€%”\ZŒ)Aé@gŠ)¹â”j\0Z))h\0¦´hÃ•ð§Q@È¢ˆBÛíÙ¡qÎä;Oæ+VÛÄ\Zå°ÄzœÒ§÷&Æ?ŸÖ³Å¥D¡|H¥&¶5ÿ\0á!Žb´´+	Áë$,Ñ7õ­M6þÞâÎíô—½¶heƒzLÛÂ«6\\ä`ÿ\0Jå8Á­?>Û_Ž›`‚OûæBk–¾ƒ”Q½:²rI\Zêz³Å±jöV.—SÛ°¸$HÆx=O^ý+b_ÄÆ$’ÖÖú/ïÛLòŸÖ¸ÏÄ?²Ü0šÃÿ\0ãÑf¹è#û<í]à~»£m§ô®zXkdÍ\'QEÙž°ž0¶BP²¹´cÿ\0=\"eÿ\0\ZÔ³ÖôË¼yjXöÈþ•å6Þ#×m†PyÓû“€àþ$gõ©ˆ-æoø˜èç¬‰¿LÑ,%E¶¢U Ï`ŽElyr£ýT‚YSŒœW“[êÚ6G“}«éÍýÖ_61üÍnØê:ƒm\Zfµ§_/÷%)Ïü°•9GtZiìÎ›XÐ4p“­èzmó•Û¾{dgÙˆÈ®Yøà-K\rog{¦?RlîO?ƒî–+¦\Zö«jöŽ‘3ïA‰ô\ZšÛÅš\\­²YwYR?<TXzž;¬~ÍÒ„vÐ<T[+\rìGâêOþƒ\\n¯ðSâ—,­5(c·ÙÜ)ÏÑ[køWÕP_ZÎ¡¡O|Õ”gÆPîÇ4îÂìøGVÑõýÏöÎ‹¨Yèg·tèHæ³ïscŸjý†Éü×9¬x?ÂšÒ2jžÓe,w3¬\"7\'×ràþ´î4Ï‰U¤nB>>”¢UçÊýE}Kªü\nðuÙ‘ôÙµM%Ø|«oq¾5>¸`Iüë’ÕgýJ3»IÖôÍH©©BñcèP¶J.‡txH`Ã‚Ò•@ï]¦¿ð£ÇZQ3/†HW‚tùDÁ½Âî/Â¸›Øï4©Ì:ÎŸ{e:ÿ\0Ë9áhÈüE¥º»/@A­ÐH\'Ê±4ù }m$WQ^sé[\r ÏË‚>´€dŠCœ}¨CŸ¦)IíHœSºãšj‚=iËË\nãÜÓ±À\'ö¦ÏJ~Üž”PÜž”<84¡A=iÁ\0ï@5wc§ˆØ‚€ÕM	Têá¤#m]ÕÀ[*82uªZL-qy\"\"Ž€EâðGˆ\'ç¬kÊ·<;&ÿ\0Z#\rØ.FˆÓ­<	âŸ]´é‘\"à/™q2¯ˆÎ=ñ[vÖ4{&·Õf[b”òÔº~-K¥„dÇj#½¶¾²EwïBÉ‘ŸqEÄÍ$òZEs»m³ä^JÑŸNÔ-T ÆúÈŽNµ\ZylÖ!çIÂú”Œ9ÊÊG÷Ô­fêëæ#0XJàdõa]œJ»B0.1óŒÕi4«r$¶Tã¬|T¨ÙÜ|ýÊVì(PñVwç<Ò®•´0´s÷e?I%µÝºï’dõˆîý:ÖN›èRš44àDw9R, ‰Ëç…RzÔ\Zv¡i+‰–S¨b š\\\\ÇtÉº(Ò&cÉïR î_:HâíÏOBíüê`xªÖg0©Ï\\šœp+¶Ç;ÜPÜš\\Ô`Œäš]Ãz;<SqÍ\0Ñš,0ÆÒô¦î	ÁëQÉ8åA÷Å?­â˜ˆ£„Àþe´²@ã¡ŠŸÒµ¡ñ\'ˆ RŸÚOqM—\n%øð¬ÒOn”¢–ã4ß^¶º`uoXLÄa¥¶fþ¼f«ˆ|3:‚.u:LýÙgL}F\rTJBàóE€×F’4½{K¼\0d,ÄÀä}­6mZµt3és¼yÌ·\"U#þšÆ{xÛï ©-d¹²pÖWwì:yrK”Wv5îöFŽd\rô‘Jÿ\0: ,î®aI­\"¯B\"®Çâ}pGåÜÜCR—q+çñëJšÕ–PË¡EnÊI/g)LçØñZ¹6BŒyín\"(.bh²Š­Áo5Ìw»,*Ûª[ˆ´­BbÍ«]ÚÈYâÞ ýA«:^‘r¥•/l¯í]qˆî6°ÿ\0€µCe6¯mp²4‰²¶2TdÖ6¢ÈÓ†ˆ.Ü\rm\\iðO]FÖà©Uó\n}óXº¤PÚÌ©¨éŒåM1¢¸ö4 i%ŠÁg•‚(õ\' ¨Lñ(ûÜÓ¬gVÕ,Ly%gFàg¡““E5½ËÛÜÄÑÌ‡X`ÓÔü¥H8÷¯gñß†lüKl—…—V…p²F„ù€ë^yüWp„ÿ\0e¬J7Ï*EŸ|1ô¨„ù£pvG5žL˜oºx«r(Ü:ó[óxþ(AÕ5íÍs¯pXÉqúÓÏ†ü3h©öï½Æ:­¶ì~;ò«¸®n9;N+¬Óu6æÖ_™.mŠøb¹&äu­ß\r\\ùbýÉ0~†‡±,á~Ëåk·útãh‘õSÓùÕ\rÉöMju?,7™\\Q$K¢|L“Î,‹°Ü¡ùü¹«~\'¶þÍñÅÒÄÂÌ€tê\rG™pÕ”|e‹ÅWlŸvDV\'Þ°o0GZè|U(¹¾Šà]\0?ZÆ‘CDàž\0ª§¥„¶>‡øK{öÏX!9xà\\Ÿ¡#ù]|¬l&=\"œú+Ë>^†Òã·ßÊc#ÜÃô½Ju/av‹÷‚ï_¨­#Ïn û.¥}oõs¾=$Ò“µhx¡BøƒÌP\\ÛG0úãùVié^½ÍÏ>¢³bL\'ŠñQ±â´ Õ{©[ÈÄô\\Ô„Ó¬-¥¬XØò€ÿ\0îOè(nÊìi\\¿âmí4\r=ÿ\0ÖÃln$ç§˜x¡¬ÀxéVu‹£ªx‡P¹A”äDG÷åÈŸÆ³oõ-;LÜ/®UYW%–ü«*vQ»*Z»\"ÈëHAA®xø‹RÔ0t;­íIîÆâßE¡a¦øòð²iÕ&âØB }N(u¢•Æ©³­ð%´ÚúÜê!\r´1¼¤¿@I\'ò¯=ñ¾¾ÚÎ°÷wa“{	dö_àEð¸Ühz>³­È4ño¼ÖÊÍu0|F¤uÁïÛó®zê\r:ÃÇqê:|òê1Y$s§’7©™qäp@ôü«ŽµHÉÞçE8µcPð×‹D›Z›ÃWhöë¹žl$0í„îÆsŒ{Õ-5Ú£Ç†|Àã í^…g¯ÚÁ«k·ž Ô/î´ÝbÆKIˆ¥‡Ìœt\0€:ûW	®ÛhúéF×¦Ôb¸ˆ¼°É\Z+@£IÚÌs÷O#ö®Nk=MýNŸáËeñÞÞKT¹\Z•¼–‡t{ÌA‡,Ó ûÛ5ëÚo5=P†ïÃrÛJŠIkæí3®y\0Œ“×·JùâÇY¼±Ô\rÞ:E3@ð³ç?#Œ€zý}+BÃÄ\ZÖ›%Þ¨Ì×ÌÐ\"œõÇLsÐ{V×mÝcèKŸøDüB^=RÆ¸ÆëuÇFî7G5‰ª|)Óß2hºÍ‰<ªdKážZÆðþ¨|Ga.­qisq+4Æ1„gîWÛúæº=S{-El^áE³FÒìvèFó¨Œåî²SÝ6©àÏéAŸì‘jPöócýÃÎ~•Í›èÖcÂÉo8àÇ2”`}0ké%,ŠÀðFj¾«¤éºÍ¿“ªØÁr˜À2 $}QøVðÅÉ|JænŠ{>2Aô¦\Zô}oá$\r™|3©Ii\'k{ž/ =@üëÏµ½]ðëíÝ5ãƒ!~ÕÏâGOÆºaˆ„Ì¥M¢¹¦žir¾^öeTÆwY²kvÙ-¤kÉÇD€d~-Ò¶m\"RobÕÄÑ[¦û‰V$Î79À¬ywžK‹Y£œApò6qž?­^ŽÚi¦wøiˆÂÄ>ìcÓÜûÕMwK†M2êh”Ç\"!rà6=EsÕ¼£cHÙ5s—’àú@éMS¾ÖÚ_ï.(=+Ì;…ïGãHsÐt£¶I©r2E-DÒ¢õaP½Ód„ŒŸÂ–©ÕGÌÀUui\\|ìØi6 `O\'ÜÐ!æå{oÂË+•\0÷4”âÜ}i€ÏÞÿ\0¥¶rÒ1Z_˜Ò\0s‚Ô\0žZéNRE¤Ôš	D=:æ€½ŽqÒ“ç+ØúP’è¬~¢“Ó•\0*¨Ç$Ÿ­¼`r:R\0äçf\0õ=ip\\‘‚=)¡	eªM§\\Â°Üm‚F\nêyœŠôgÃs\\E5´W]ÂxÃŒ§×ŠÅøwe§^ZÜÈl¡7¶¬7;|ÌC†éÓÖãÈ™Âí@ÀÎ?\Z§VqÑâ™ÈióÜÛNÚ>±Ç}ÌLyócì}ÍM$Ñ±Ú®2:Š½âwŠî(fµ¸c«Y6ûfEÝ“ÝO±¦ÛKoâ[/µÇako0;faþ±uôúÖÅ4½äK¤›º* <U”*«’F=K6‰0æÎô©ÇÜ”¹ü*©Ó¯ ¯-ÄÃÖÝúu­¡ˆŒ¶fn“[—!dq¹[ƒÇZç¼{ :†‘kÉ0¬’0ôÝŒ*ÙˆÂðH¨\Z78`Tƒø×;âÙ¾.IÏ‘oy÷Æ­*Óº±t¢ÓlÌèF)hÇ4¸8®SQ3ÅzPAÅ&xéŠ\0aHä~T”rƒØÓè§°ÞÔ1€cëH‘Ín‚Yâ>¨äUœP	ù¡64É­µírÏoå‘»1Ü?ZÔ·ñ½ú©ûe­› ,ˆC:Ç8=y¨.Q,6€ÌBŠÒ5d¶bqŒ·G¦Á4WVÑÏ	%C~c4àjžŽ«‰g,\Z±º½Jm¸¦Î\Zª*mGb`Ôõoz„\ZzµhdYÏÕ¨Ø+=OJ¹p)d1§Ò¢SO¨U<SÁâ¡^”ài&iA¦f”SàÓÔñQŽ”õè)\r”£éMK@(¤á@:RÐv a@éGj)\0véWü82úò¯§ù5P­\nó¬]Då­Œ©õè¥c_ZlÒž’F‡ŠNí;Sÿ\0bú	ï¨@®pt®‡]f™®“ÿ\0<lf÷¥s£8¬põ4®µBÒQI]g8¤r*\'·‰þò)ü*Z)Ød–—wÖ@+û˜\0èÈ—JÔOêâ=—‚×QŒ\rÌ@ÿ\0,V8éEg*P–è¥RKfmÃ­é26ë­K9ÿ\0[a1ãþp+JÏT°b>ÃâK»vÁñîßr]i\n+@5„°p{hh«5¹évš†½´4NÔ£íîF#Sµ¸Æ¥¦ÝÛ‘ÕÌD¯ýô3^R¶è®Ç†^­K]o[´#ÈÕ.\nãd!Çþ<\rc,º2Õd÷G§ÙøƒJº Et@Hò<Ö’K€c•Oã^R|M,äjhúméè\\©Güù©­õ]‚©ªéOßìÏæ\'ëþ„°õ#ÐµR/©ê¡åA•\'ð¥šE¹ »†9áq†ŽU¬=5ÀÙj28Kñ%¤çþyÞ\'’>	­uÕuÛtÝs¦-ÄCøí¥gè:ÖN-nZò\"Õþ\ZøXm×ž°GÆ7Zƒn,Œþ5Äêß³×‡\'Rt]gVÓ¤\'8¬Ñé”þµßGâûp—°Ïhþ“DÉþ5­k«é÷xû=Ê7°`• ÔùëUøâË?5´cLÔ¢^Qf-í‚ÿ\0Ç«‘Õ<ã­ñákéWßf¢àã„ãñ¯¯•ÃóŠßJ²J	üéj>f|,uŠCÔs[Éœ•\nâ­Eq¼¤ˆßFö¾¡ke©À!Õlm/¢!.aY\0>¸\"¸½cá/€õo1ŸBK9ŸþZYHÐíú(;JÌ|Æ1œä\nržµí:§ì÷¦ÈÅ´Oj«Žî%œgê\nñøW#©|ñÞžªÖRiZªtÛÞ[ýNð£õ£@º8] à’{SâŒód\nŸVðÿ\0Š´?5µ\rjP¤Gæ•!2F=÷Œ¯ëYëåöU»‰>\\~tˆ>K}„Ò‘N(ðŒ~n§ #‚„SuÛ˜g¶³H¦‰Ûy$+ƒŽ*oª6§9”¸P½S±¡ìÀÍ°Õõm\"y[OÔ&Š1!&6mÈH<eOÞxãÔ8‡Z·ÅÎæ÷Šà\'‘ùŸ¥yŽ£²Ç>qþf½çQø5¢êZ\\2érIcv±…ó‹#1–^yã¶3Ö“\\¹¦j¾ñ$BK¯±Ü`òŽTu<Ä\nf­áIXyÆÞ+èÇImÎ¥yŠ>øÃ7lÏk%Äw%Õ°=~:j<9ñ]ÑvÝ5ÔYÉYNÿ\0À‡_Ç4¬úÊÑÙ¾\"³‹IËI×ÉŸåaíUe­Ø˜Ú6÷ä¡­í#âvƒ­¬pø†ÕaŸn<Ç9öaÇçŠé‹k}m\Zþ9Õ€\"Œtö4z…ûœ!²?Zž6Á5«©øì²“qo5›Ÿã_š6üj”–·T,±Ã)ÏéJ×Œ®Ó¼Ž<Å\rÎi×Në¥jn¿&Ûwéô¦ä§f9ä\Z‡ZÂøgWlÞOOÆ•†Ï9²âëS\Z†Ôþá1éRÖÂb?4Š\0ç­8ÑÛ­+3ÇŸ¥%ÐÚ«¼¨‚øæ¤•ÊF[ÐfºÐCá‹y§g33G‹8¿LRzÎUÝ`\Z~xö®ìôiØ‰lR6=LLTÂ o\réòmu¨¤Š~˜¢àaŽžÔÚ´¤ðÞ¤»´ö—J=iügÜYê6§ý+O¸P:•RÃóh1¹â“ž¢˜¸ôe#¨aŠw|w f…4„dR(#<Ð!ùâçÖŒc½\0Sr*3lrñ\'SšR@\\Ð1$‚ÜDóÊÑƒ¬Ù¯éo¡ChQÒ..îGñ	Ê¡üZI¾Ï§[°U,ìIÈÏzX/d´bÑÅï¬‹‘Kp5£ñ™hØü)¥«c§Ì˜ü5,~8ÕâV[(´Ë0ßóÂÝTŠ­e¨ZÜÜÄº–Ÿn`~\"ýÓë[i>½I ’Í­n	2ÈÀ{¸¢É‘‡sâ-vñH¹Õî\nžÊqüª„³ÜÎ›n/nå_î¼¤Èš›P°ŸIº6÷iòÿ\0œ}j,8V]@ „û¼ýM=U\0â%ÏÒŸå¶xZ’;yÝwŸ  ÈÕ½&o*Y€ÈÜ©Q¿Zu›ùw±Ðœ\ZD š-WNÔd?5Ô9Ç÷JŸþ½jxæ©ÿ\0`jˆÙŠ{pŽAäœgùæ¬|M¶7>µºæ´¸ÚÝ<<Um5Î¡ðÎ÷¶ÇeÏ¡¬Ð&bk±ÿ\0¡C\".GéXêÙ\'ŽõÕy\"æÒHÎHuê}k’1´nñ·ÞCŠ¨”Žãà–¤-üaýžNãæŒ´:þ™¯¡á¸Úz8*kãû+é´}fËQµ8–ÞEqïŽÕõÜs¤ñÛÝD~YUe=ˆúÖŒMŠM.àš9dµoÃ‘üb“]O‹aÝ¥jJ:Á\"Ý/Ðð™®H¨#½zXI^Ž\ZËQ®Nj2y§IÅGé]FB“Ò¯ø~O±Úkº¹À6öÿ\0g€ŸùêÞŸ¥f»`z`f»è\Z×„¡TwòÛÌñ©ÆòO¥c^J0ÔÖ”\\™çSê×û?Ã¶s^ê%Aq\n(	ÁÏZ½áO„\ZÆ¥:Üø¶O²Ûì‰&ç÷ˆéùçé^û¤éöš}¨·Òíá‚ÉX×>§¹?Zº!ã‘^uJ®lé„TV‡1¦xwLÑâÖÒ•GÞT\0þt“Í$®Nà‘º\rnj¶{iöX®±ãÍÛ¾™®2Þô¶§w¥^Ü[K©BÆ3µ¶†ãªƒ×üEbÛ{#ñ/‰-ü;ã+;;gØÏÿ\0h€pøÏ\\çÔW\ràKáû;©tä·Råá4yÀ-Ÿ¯§ÇÖ½\'Ä\Z›®è³izžw°ÉæE|ƒmÎvƒŽ{õ${df¹¿ø5t˜ïtØu›ØÑ÷&„2±?€É©Ñ«2ã¡Èø~Î\r:s%Ü—³O)ImÖ2Waçvãß¶=ë2ýt[ÿ\0ÄÆÁ×C%^H#ùK=¹ÆyÀæ»[Ÿ\nx–çS–[2ðEq)q”‰Ó$ñV.þ^jš´±ê×:>u\nB}§Ì`=×Ž;g?\Z~§˜ê\Z½î¹t%±Ó`°±tvÖÖ‘`*çøñœŸÈf»/\0ü<ÕµÍ2[ëÛ„µÒ–L4(WœŽ¹=‡OÀÖô>ðÎ›]OÅ7Ó)\0Zi±qŸAŒþyÒéún»5ªÚøWÃë¥ÙJÝê²3‘ÉõÉõæ«›K\"}ÖÐÙi’kÉ–™f˜…\"aó€:Sô®wÃzV·ãm4\r¦hQ!†Ü3FzŸv#¿oÂ»­áüQM÷ˆ§}Výåÿ\0V¿Eé]ƒÜÛ[ EÇÊ0x…¡$ÑB‘F‘Æ \"(U€\n$š8GÎãéYw\Z‹ÉÂ\r£Ú¨´Œ@É&€HÖ›TUâüMcx‰çÕü?©Y3ÿ\0¯·t¶H¦áØ€¢Ÿ²à+,>P©\n\\äŽ2*XÚÐùŸLI<Couº=6F‘5ÇV>Ùí]ñ[ H#XÔt\n1Ul-¤Óî/4ï$™-§‘cPC­kÝ/Wµ³KÃ µ)½¼Ù¼¦O®xýkÒŒâ’rg,¢Û²)È\0RMUiVa-¬HóK,eF…ºƒéV¬çðýãÃ7·š½ü °ÛÂB§ûÍúu®ÎÂÇQ´‘×OÒ´ke99“Ì‘¿€?3\\Õ±qŠ´UÍ#JûŸ?Y>tÈÓ<ÄûMJÂ,õ-bÌËæˆ.¤U—þz\0ÄnüG5pzAôËs¥g8ëPmg9$ý3ŠY	¡àpx XÔg¯µ)\\tcŠ\\©èE\'Þ\0IûÆ—\0ƒHÀã#éLM¤àõ´\0¼âÅ\0*òy4à\0ž¼Óe›ËÛ…åFI¦ƒ;²3øÐÑÈÀîuO§5£aá¿êGýG»T?Ç8òTýc?…3]Ðµ?^Ãm«Åé“z<D²ž™õ¥tQ°\rÛˆàš$á×¡{ñÁ¢Cû²sÚ˜Œî@IÎEH:\n‚ÜåMÚ€‘éHã#“Å <PÍòž”“FÔ&Ò/Åí¼»aI22\ný+°	¢KuëZù–êâ5DªB\"‘‘’:uï\\K\0é\"‘Á^qIeáãu§$ÿ\0mo&p¶¶h…ÞAœb8A×¯¥LÆzæŸ§éÀÓ§µ”Ž‹¡åšÎžÊ-+Æú{ybµHž)0\"ò¿ð/ç\\ò|3•aÞšÚÑ‚bÚ û¶súT\Z®›ã„ÒZÖýþÊ7+£¬Ž„t(~÷ÿ\0®±V¾àzjé“)Ã*¯¦âjÔZtà±çýÖå\Z®›5‡ö¦§fšìR¶e/|Éu“#pükZOøWm¶Æ«kçá#”ÍB{“’1IÀgsq¦‹ÍfÊÖâÜ<h³†\\¸Àñ¯y¾Õ«jW$`I3°\0~X®€K^*ÓìtMKS–È0kÉe¸%eÇ$Æ@ägßñ®NFÙ$S$Îß­kÓ\Z^íËæ“¥VK†“•ïS«+xW($îkRG”\n;g4Sb“×Rõžô€;R§4¢ŽŸ\0½,+¾úÎ3÷L ·ÒŽ1SirÒ“rîìN(ºZ•vŽ¦9ÌpDƒ¢®L—Mgx‚ÚËFžÆ7ŸÌºß!IpEù9¨ààW¥B²œSGHësp]\09<TðNÒœ$r8õ\nqKà{MQïf»\"I `©tú×fö2¢ªÇ…^ÀqELZƒåHQ¡u©Ê€ê2Ñ°ü*Ì\rÈàÖáµeRe`«êM`Ëuš‹Ã†e\\œzS£Šö’å°J‡,[.!ô§–À¡‰³R0%Xíl)ÚN;×[ÐçJ¸©ÔŠ§Èê9§ `2â20)TôÍ@ŽiÊý(`)êxëP£Þ¥^” §\njŽ*EÀ=éÀqJ(\0Ð)qN éHc;i?RRµ£á?ù\Z¬—þz¤ˆï†?Ò³êï†[o‹tsë+/æŒ+:ªð~…Çthê>‘«ñ÷´«Wÿ\0¾…shr ûWK2–Òï—\"Uÿ\0¾%?ã\\Ìgä_¥rà¶hÞ¿AÔRf“5ÜsE&hÎ(GJQHzPŒâßŠJQõ AéJ:R\n(½ééE!´Hà‚ ƒíO¶iíuÄÖÍÿ\0Lœ¯ò¥¢“Iî4ÚØÕ·ñ>¹l’ì]ÇÝ.P0?ˆ\0þ´å×¬g#ûGÃ¶»‡ü´´Æ/þ½dQXËN]UdŽ–ÛRÑØâ×YÕt÷ì·ù¨?Ÿó­»+Í\\ýªiz’cîù¾[ŸÃ8ç¬€õÛDÇ%}qXËŒÑWîz£x‡RµãRÑîTc–…DÀ~+RÚø³J¶¼Â&î$Êùâ¼Æ×QÔì”=Jê%^‹¿+ù+Hx«Rt	¨ÛXêH;\\D3úqúVÁÍm©j´Yêp^ÚÌ›¡zƒ‘ùÕ…fÇÈAÇ5äÑjúŒMÆ‘s§Èå¥”Äþ‡§efägxžxÛ´wðÿ\0ìÇŒ¨Î;¢Ô¢ög¥%Ä¨:Ÿ¥gjºN‹¬œë\Z6|ämß=º»ìHÈ¬kßF¢ŽÃP‹ûÖ×ÿ\0f§ÿ\0ÂXm¸ÔôÛ»luv„íÿ\0¾…ebŒ=cà—€uUU…Ö™&r^Îá¹üpý+“¹ýž%¶ißÃ^*‘Y¾äVàîôÔþ»kÕìüK¤]ãeÒ=·\0#Ïé[ºeÄ\\Æb™NyÁàÓ³à-N9­î®m.¶¬ðÎRB§räE}sdóAgI©ªŸ:ØîÚqÜWÊ^(ÈñF©Ð‘|ÃÔgu}ƒkgå…ŽÑk!ëÀëüª¶4Š»#°¾‘ãü·@udÂÉuèk‘ñ?ÂÏø¤ÉskéWî3æ[\0¹oö£<ÃoÖ»‹H7–»´¹?ëáá¹ÅD°ÏDñ]Zàå¥;$J»&_©óÇŠ¾x£D/%”K¬ÙŽö£÷€{Ç×òÈ®OÔõá–ÒââÒTl´L07ï!ãô¯±í¯YS÷r	ãØú\Z‡Ä^Ð|MnÇ^Ó­ç\0Ž\nÈ£ÚA†üEK‰qìx/‡þ/ß[*Ã­[‹ˆpAdù³õSþ?…vºn­áoÄ^Æe³¸ÀÝå\0OªžGä>µâ€Ó i¼\'©yÜemoHñÈYû>µäÞ\"ðÞ»á›•]oL¹±pØIHùIÕÇð5¤8žë¨xjíWÌ!¿„†ˆáÿ\0*åõ»‹½P±´*·3 _.l¡ê¥p¾ñæ¹£È­Ù¹ŒâC†?ð!×ñÍz>“ñ;EÖ¢ŽßÄ6Ë¸Áy9öaÇò¥gÔZ£Ènà¼Ò`Õ-&¶aÀ.¿+}àÒÇ*ÈÖí_@\"ÓP·eÒ¯¡¸ÀÍµÐ¬§¯ë\\/ˆ>Ø™–	ô‰Žpðþò~‡ úT¤…sÎ²)	ã­ijž×4Å2,+l|ÛS¸ãÝzŠÄŽî6%[*Ã‚UµÞŠh`psA>üÐ|Ä*{ÖŒ:ååªªZÜËÀñùVx\'ÕdÛ\0ŸZV¸>/¸n/­,¯TŒfXö·ýô*ÄzÖ…p£Í³½±sÕ “Ì_ûäÖ€Á£ÚŒƒP<qIæ\"!”ã#ŒÑÊ$vçK•XYk;ž‹r†&Ò®Ô,mÚáÙZÝbðÊW$\n¨ûeËŒ«w¨£šE†HÓ >Á¥Ê2k«Éooe¸›–zAëQ\0\"œ2PÉÏÒ”ÒÎ(Î)\0=ñGÒ“µƒLŠB@çÚš:õ¦ÈØSÇj@%ë\"Ý3À3ïK\'ÞÓ¢–ÑÏk‘p^¸¬ûŒ	öŽÂ’X˜c«FÊîXx¹U<ŠÉCÇ¦Y*€ìmn`¾µònÌ„}è›¾â¹ýb]:ÂìÅ§ù³¯£b¢µ•ð­ŒñšÒ‰\"Û÷U›¹¡Ç:…Éå!HÇû¼ÔouvãgÑF+ (§¤KùTðÙI.\0Ž1îh\r¤œSI+†ŽiÆšpF)oj6ÿ\0ÚžÕíPfƒÍAþÐä~¢¹…r‹;[Ó‘$\"U¤p¥vÞ•XDü`ÄkÏ|ÇFøŒlß*­4–Ø>‡8þ•/{	uF¥›ˆÔqX¾$µÙ2ÞD¿#|¯ç[×Éö=VîßvBGÐóQO]@ðÉŒ?¤QÃ_&èK)WÒß\rï†¡à=ç9e‡Èª¿ÐWÍ×0´M4*Hæ½§öºûg„u+ÿ\05¥È‘G¢¸ÿ\0k^—=T€\\\"=.íÇWœÛ10¨<òŸc^•pv%¤¤ÿ\0¨™sîç·°›MWQ·ì“±Br?C]˜9Y¸œ•‘šˆÓ˜æ£\'šï9‰!ˆM&×ÿ\0V9a]o€5‡¿¼½±Ž5K->%yãt¤ç\0{OÔz×+nÛ —dOàk+áUéO\ZKq,Œb¼’Rƒ?) €8úgüŠäÄ^JÇM\rÏpŠâHÛ(ä\ZÓ·Õ¸p¹¢³IØ’0}¨0ûŒ\rpZr[\\Œ,‹ÏcX¾\"ð6‹â%F¿€‰£IámŽ£ëTÁ1¾ÓÂ®ÛÞËd8ô4š/c†ÚÜ	ì|M®Âã€\ZeÌVÌ¾HÂIâVEÈ?¥jÛêÄ³(Ç¨­îm^=Ë.O¡â¦Á©ÏÛ6Óu©ê—[yKŒÈRèbé®¥Ó¢šá€I‰æMjÍ}“æ5Ÿq{$€‚Ø_AEƒRÜ	c§¦ËX „uÄQ…þT©•»P©¬–|ÔeÏlšbåÍüÒ¹Î=+9î\0\'$RI\rÅÀ+ümÛð¢;+8¼ò½Û€0§…€%·o;”¯¯j”ìO¼rj\'¹gP€AÑTc0%–bßw¥2-Û‡<Ó‚€>j@B‘HÄ÷:…†©yk ZÙ%ôŽ²I<Ãq\nÃ¨Íy‰õ«h®%Muu][RÁU7Ÿº†3êˆ:ŠõŸÚÈž3±¹µÆ\'¶Ä¼õ*x\'ð8ª¿Û~Z;‰ð­ëRäú‘ä¾Òa[Ù%×±bŠŠ`û5»‡”ŸB¦+Ð“ÁöÚ‚ÿ\0Ä¯Ãf0ã?mÖn6}DJI>¼âºÝ[yRI\'Ó¼•Q¹œš×‚îÞéCG!óƒXMË±w>tñFŸ\'‡¼Y¦	UÄ†Aàzã¿JÌ}H/ÊnBç²×Ðºï„ô-rån5k1q*”î+ÇÔš†ãÂ>\ZM*ö!¤XZÂ }÷\" %ÚrÛúŽ=èURZŒùãÌ2Û·dõ5:Äy$~UJÚ9`ŸÈv¼|{‘ZF1œVà\'”¾‚“hÒŸz8¦HµG\"ípÝªRÞôÆçš\0T9âŸaw6Ÿ©Ú^Û¨im¤*“Áö>ÕQ˜§LiŸh$±pzp(«Ôü}âA›‰cžVÖ0¤ÀŽ[õ¬‰®nî|ýBök©ÀÆùd.qõ5LÜ«‘$oÃ€Ìq²5P{“I$€°ù\0úÔ2ÌÇË‚})¿g•ÏïŸaVaPp)€°!XÀÏ¥çñ Kž3@ü©¤>^´¼šPOnÔ\0<dF8®Ëáö©§ØøvXî]!ºK‡Á	g^éø×«ódó[>·Žû[¿²yÞ2!${\0ù˜G>Õ3IÇQ£¸MwF•€þÐTsÿ\0=“ùŠƒÄší—‡uh-ï•î¥¶dE,~n:ŽœÍ#øgKš=·I+ç–w<þÎxÚêéói¶¨C±ÐR?_©éù×?ºÝú~	Ñá›OÔõ-R;xô„A	žaÎàA!;ç§#Ö³u».êb4»g‚\0UTbÎ;–ÉþUÞø×JŽÓá\\VÃþ<|™›oñ1áÉü\\ŸÂ¼µ\',ƒ$3]4j$Üš¾ëþ	>†¾…o2êW ¾-¬™ñžíòÿ\0Ze´Q›8ãe´¶“<\Z¬ÌKý Çjã¸ÿ\0*HåGáÝãnÛ-Û•µ¤‹þ­ƒ~\r^Ñï.WK¿Ó–IVÂVLpqÚ™,*ÚÍ*Ã,qJÑ‰âúÓèIDŒP¹çò\0¦‚0i3ÚE\0ŠNô1ÀM\0)éZž…¦ñeÎBZÌâ·<2ØCyªH>[T’R?¼GÝLÝ‘p]LßÞý¯ÆmŸ¹³U¶OøÞÿ\0Ç·Sc’[–HíT´®Bª–b}\0äÕhÚ¶­]ÂÖŠ“JÀ<òm,ÙÉÀ\0“Íw~ñhš=™·ÓcþÚ³ºòo#Ø1<XoÞ	;\08>õÓ‡‹JÈæ«+¡Ðäðm¾‘w©JòO¨Èé2)ùbÀÊ€:ç“š–ë]e`¶>Üœ³žŸ…?Æ:½®»¤YBë%µêÈRAÎ@ý+5´ßâ¸#ÝÈU\"¦¥99j‹§8¨îEqu,L./X®sYº%À]VVRJl9o~+NK8ÉÜï\"žçŠ¯oä›[°‹å¢‚ro‡£(ÉIì*µ‹HÜ‚ä2°VQ!S·=3Š©x5Ôð¼×:MÛ\\j¶ë»,”ï¢õaúÖµèGU‘ÎMk\\kÃB±\ZžÖiQÕ#+ÁÉþœ\ZíÄEòèö9i{¯TXð¾µ‰4Ñ4;Rò!‰á÷‡±§jréö¿dÕnõ)íâW1‡tOì@ú™®kUKñ\"O©øve°Õî#\"æÍd²“É+èOqÐÿ\03Æm´]F8hmqþ\"9\'ñ\'ó®/¬É¤ºšª)Hîm®moái4ÛÛ[±×H¨ê)$vD;Ð©ãW–h™òYy­Œ\Zê<Šu7hôã<ºd„#ÜÞ1¨¤õúþ§Öù~!G\rÌôg [Ü.Ð	­8Ô2pOcE–…ibYå´Kýæ¥Owåì98^™&‰c¢ŸºŽªYd¤¯&Zpãµg6¥ hÕ@ÁäsùÔ+­G$›\"æoHˆcù\nÖ˜O©3ËëSÕ«£aiÀƒÐŒÔz~Ÿ«ê­‹kCi@3]¸ËÔ×U«xq Ó‘4¸ÖV··iw4¾ÇU-Ðpxr¯Ù®”ŽkPÙÞÛÞ[¤Ð6U‡~ÇÒ¦,¼ŒÖ¦V\ZzRv¥ÏÓ@ì!©tvÙâMÿ\0»t£óÈþµ	4Z¿—ªiÒ÷n£?øð¨ž©¢áº:†A¶H{Ék¨B?¸èNbSžÕÛH¤k6qãîob?ð$Ý\\-©ýÊä`äÿ\0:âÁ}¯‘­m“\'Ï„ÒP>µèÂŸ¥¦ƒKš.iE6E†8QIš3Å @¦ƒJhÂzJ3ÅIšJ(h¤ t¤\0i;ÑE\0!¤úÑIš\001MhÑ¾ðIÞ€\"HD/¾Ñ?]Èp:Ô¶ñ»k+TÔ¸p1T;R•.–è¥&¶6Ä¾{íMN»$s\"ƒŸÇš¹¤j^kØ\Z%ÕtÇËÙ£lsƒŒœ~¹Ÿjµ¥ÿ\0Çô^¹¬e…¦öÐÑV’>xÕˆmbí•ÞE7‡q†a¸òG­}©YÑ\n€@\0sŸ¯ë_^ø˜8ÿ\0§³ÿ\0¡WÛ’©	É$f¼ÙÆÎÇu6\\]û1&	ö¨/!‰¢ÞÑ©uà69§[ÈYv°9õíKt3nGlŠ©Ÿ6—j·,q,SËÇò“õõ¦³ÞÛFß\'ÛâNŸ‡­j(gÛ•SÆ«ÊÍ†\\ž p*®O¼K›u–Ûz)àÇ\"í*}1K¨\\$-½æž·–s|²# tüTõ­\"LÊd]ÎÇ×†¨%UT‚aÜ1ÃT…9ñ?Á_\nëæÑd—E»=¢ùâ\'=ÐœÀ¥xï‹>x³Ãjò›1©Ù/>}–dÀÿ\0i~ðü±ï_S7—#`QýÆ*g¹º† mãI]{Á4¬O*gÄ:^­}¥Ëþƒu%¹VÉøIªkÑ¼?ñnîXu»q4åÓæý?©úW¶x—Ãžñnäñ”¶·çþ^U|©3Ó;Ç\rÿ\0Íy_Š~jvŠ×Ô¢Ô¡ä‹{‚#—¯\07Ýn;ñCr\rí/Qð×ˆ#ótË¿±\\à”pz~ Uox=/ÕŸQÓíõÇçl ~ÿ\0:ðý_KÔôÿ\0#V±¹ÓîÐäB‡ØƒÜ{Šè<=ñ\\Ò´}®A!Îþ#ƒøƒJÏ¡Ÿ-‹š€Ý2Ú&£½‡[kÁ±þ›º~`W-ö—/•ªZMnÙÀf_”ý¡ü+Ø4¿ˆ^×Ö8µ»t†àƒ–qµön‡óü+vM+Ëv\ZUÜWp0ÏÙ®px¡;n>ŽEp\n°Å]ÒíôûË9 º¶)}<¡a¼3”Hú˜tÇ\\ší|AàK0þâãH¸=Ð…ôü\rr—š«¥ÙºRöß9@rGáÖžá¹&©à¿è°¬î,ç´~Dö÷*ÊN3ŽpJÎš-V «=›#03˜zÔÚh6ŒþI†U•AhŸž}®ŸÃ¾¾ñE¥ýüZœvPÙ8·H¼“\"±Ú¯\0gÞ«`8É^/œÍk s×	å±Œ=Ívw>ñÉåY?RñåÅ.Ç?ƒãô5ÅIç[ÝÏmwAsíxÜ`© ¡ÎêPsØÒwÍ(ãšC\r\0Òø r:Ðç§¥!Ï­.*NÔ\0«‘ßšŠäâ&æ¤ÉçšŽPX*y€¤A#ù6‘‡þàùVÁàšµªÜ—º†ÝUÍSœþýÈÇZQ\0SR+T*i{Uvç ÕŸ1ÀÊ6*•¹!íS¼riin§oâ†º¹#‰X}\rAÇfÍ¥PyÊšG¥.}¸¤& “G@›Ë•Æ~ãÈüFŒé^=KØ†QÊŸqÁþUÒi®ù<8Új—ÅËa>‘£ê\n2Ñ–·Ç‘üªe½Ã©{Æ\n«®ÁwÊ^@¯ÇÓÿ\0¯YˆIuÛ÷»\nµs?Û¼	¢jåíÏ“!úqþN•\\ž=il4ax’ûqd`\\¨Þèk®ýŸoM¿‹5=ŽòÔ?ÚSŸåšâdVY\'iÎä!}ëCÀWãJø‡¢]Ö79ìß)þu¤>ÇÒ×\nd±¸@y1ä}Eq^-×Reû·6±¾}Xä+»²åÐöb¿®7ÅÑ•Óôù¿Š‡·?î‘‘ü«|4­QUWG?øÓ\Z¤5õ¯Pã(ëÚˆÓ´IÓHv Ï¯¬¿…ê²Þøv8É2Áxé0ÿ\0d®ìÕ/Ü\\¥Ä*9µXÉ.«Ÿ›5gÀk>“àø‘…ÔÀYÚ!Ø|Ì=À?¥pÔ›Sz_ÕŽªQ\\¼Ç¿ÙIö›4¹WFó§5!r£(y®à¾°u/[ÄÌ\ZKbboÏÒ»Æ @5ÈÎ‚EºIT,ñ‚}{Ò}dÁtSý–¨0§§•NÎi°±KÄ›[Å<AsnèsS£«ðã·j@:I094Š€8 {Ó™ã”\\¶:š­$ìíÉ¤Ä¢ŸSLiØ&Gµ˜eA&¤HÁ…”À„³Ÿ¼M:$”ªBŽ¬x3H‹Â #ÔÓ^wnÐP!Â(c;aØR4½”\0*´²&Ÿm\rÅÂîXö§÷vìŠT˜áTÔê‘@yùÛ¿4†vè£Ú8øÉ£šîœ#Ìo$N²}×Ü\0þF±´‹Û»Y7Úµ¾£ë/oqê+ºø…›Ã«!0Î’èwc?­yÞ¯†7»U-rÊàtúûTù·>ñæˆeˆfíIà,Õ·ˆþPƒ‚k#G¾\Zœr5š;M·Ë•\0èGô«wÛv,ÃÊ1§wÊ>µ-…‹mr+h\"{É‘ä\'¼Ûâgµû¨cÓ ‹ì\ZUìGî¯Í8ÎKÃŒŽ:ûÖäº†‚—RIeÞß˜©s°\\\Zãüqe¨k2j‡	šœÅžŠÇ¢³Is]¢ºœR\nÈÈÒÜH9?NNÖVÏÊz“W|S¬hw¬0\\éq3@HÇ\"ªÝÚËpÇpT<±‰ç­j€pädbŽõ\0ýÐ¸â¥YŒÕwn´­&à\nEÎs@S4Ç9ÏOåN\0õÍ¥,``{\Zqç©üiU@æ€Œt¥É¥$´ÒêQŠBgÓñ£éM2¨û¢›æ±ì1“(éßŠxÍWóXw¢|u4dt¦èïqŠ4¦³âäÎ Px9öÆj¹P¤ÖÇ€â[n{û†86Eþñãùgó¤ô@zÅ¬bKì+›²sé^9m,Þ*ñÄ÷ÅKÀ’ÛŽ8PAø×©j7#NðÞ£x[´\r»HÃ\n\0úšâ´¸¬¼? e[J“ë\ZŽÓ{:6RúˆÁîzçO¯Ï\rÆzFœ±]éÓ‰Q$†f £Œ‚¾•›àŸO¦O\Zé–ö»—›…;J{äô­¯xwXÕ¬ ÙÓtÕññ:ïî«×ó¨|sð©µ=§´ñ>¤ë\Zïhn‚´\\ 1ù\Z^ÊMèìGxÖÆ×ALÒ¬\'Žp$k™Y\\?8\0gtÍsi8[¡ÎkºÔ>ø®ÊÕ%µÓí/a”nIùRî’m9öæ¸ÍFÆÿ\0K\0jÚeí˜\'\0Í(\'Øžµ¼W*k–í¯­Èßk{Šº…eXC\\Ø’ÆgßŠ¹i*Åžr1T#eH¤£¡ª¤lQ¥Ú2½£ÿ\0xt­?ìÛ›‚>Çucx½‚Êÿ\0#EìÔ)VRC©RëHpOÀ=(è=?Â€}hIÂ3€f¯jaí<\"C‰/g\nGª›ùâ¨LØÏLÈvÕ¼·Ú……ª3AkÄaKIÏä*e«Hµ³fœ¶Â+)0­(Iø›“úšØÐîmsgpžbÝCå‰G-xVÿ\0›y2Ks#3+F~öt^ÓDÞ °†ê	¢ŠUyYv•gUÀÏ­uÓ–†ŒZ³3RÎ{ˆ­®W—Ã#öpQZKºdä¨fk«mWQ:ŒÚ…¾^36Ž…Z\0	À^Ç=óY÷,°Ä¥Ž_¯«»šRiÉé$¬‹Z‘VJðTb©Yªýšýe¬~Qg+Ôæ¥ŽxgÓåPÌOÊ{Q§Úª^_Ä~d{fÜ~9¢UU‹Pº¹ÏK¨ÚN`¶³‚F`Ù3ÈyaéJ±¬³Iá›„<ªÈúÕ;	-%6²Fæ2Íåí@Æ3[ö~Õ¼Aæé~\ZÝ}¿l’(T„uÉ~Ÿ‡ZÂ®\"-Yõ5•V¬p7+lŠ§fÙ6„ë]vŸðÿ\0Ç×¶Ë•p–ó“í“Çcý×`Ãò¯GÐ>ÇàK«-cReÕµ]$ÕA‚3…<±ÆpÇØ€Ízî±jVpÜ™À·ÇšŒ„ƒ±¹É®îÍ¹tMž9á?„fÅ¢º×mÓQÔs»Êÿ\0£ÇÇï}OÕÛÏ¦êÈ¢7—L‚!Ñ¥BþrM.Á·kûÐOD™¶Ó—IÓ”q£’ßí¾Oêiò\'¹¬\'É±ÍßYOj“PÓ¥fÈ…ˆ>ù©m|7$†&¾‡Î#>j‹–\0ØÇÑ­’!-&Í\nôgÁÇéWaI|±¿Èó3ÈN˜ªPEKQ«&sºn•emzÍ}io{,M°\0ž=y3[V°Ã8­bc’¨`ß f¯©ŽQ\"F¾˜5Zí`hÝZåõS»š´‘„ªJOq‰o*ƒæ^¤œæ>¿­Mo5µ»G\nßÝ;–ÎçrA5B‰\n²#8Þ\'ð­Ò¯Ê©XèÛ:UhKÔó?i²xwÄM%ŸË¥êË\Z`mŽ_ã@{sÈ†’AK~;°q^‡â}.MK{Pµ}æoWuÔr¥y}¤l±”y<Í¬T8þ0;þ4}fpØíÃa©W‹SZ÷5c¿µo½(ŒûÕ„xä\0Ç*·Ò³Ã \0$“ŒV%î¹d·BÏNY5ìà¤dSîÀâ´†9·f‚®[N:©Xë@$*•Ä¾_—\'tuÈ×=¡ß^­ÕÂ_:aÜF,ª~¦µu	Ð¥aÙIÍvÅóFçV>ÎVNç¥Ü|¾$²ç…ÔØßvæ¼ú·Ì_î»/äMw—ÏzÇúÖAÿ\0mp²—·Šz‹‰Gþ>k‹ñ4i[áC¹¢\Z3^‰Ê:“<RqIš;<Qž)¤ñIš\0x4Ç^)™¥Š\0x4 ñQƒÒœ(â”\Zh¥\0¹éKÚ’Š@/jNÔqGj\0)j);R))OJJ\0;Rw£µ%\0¤\'Š(=:Pf­i‡ý:/­U«:güCéšO`>y»çPoúû?ú}³(ýÌ\rŽç§Ò¾\'˜nÔT¦ïÿ\0f¯µå!c·m¹ÎÐF}«Ç©ñ¥2k5ÀŽíR]ôsõ@‘€Z0yõ¢ì£ñýáI\Z¢±Vˆo u;NqSEt|³æŒœrE$³yd´*<S•Òe,TÆþ«MŒO*€\ZÚ{cÒš¶ì0~ó”ñoûÕm«•èëýEJ›‚üäê)WygÌ¡Áþøãó§´M& tòµa°F=ê!Oõ.TcîžE\0C9I#òï WCí¹i¶–ñ[9kf`„`.ìô©Ì8‘sÝFEFaÁxX)?Åþ”\\V}\r®§hÖš­¤–­ÉŠt¿\\\ZòÏ|Ðu=Óxnîm\"ç¯’ù–}9;—ó?JôàeN HÈàþTø¦F?+`ú\rjçÉ^.øqâ¯«¾£¦µÍ’rn­?{=N9^½À¬\r#]Ô4·_ìûÉTçËc•ÏÐôü1_nÅpñô\'•Éx§á¿„¼R^Kí5moäÝYb)	õ#î“îA¤CâúÅ©\0k¶á£\'æaó®?˜ýk®´×íÖm2äZHFIƒ >þŸŽ+–ñ_À}NÝ7‡.¢Ö-‡>SÃ¿BpŸjòË›mSC¿užÚ÷N¼‹–Ê4l¹õö¥c7Ãâ	TÉueÒöžØáÇ¿ýzätý#]Ð.d“ÂúÏ’e?¼†rÞ*ƒÃµm/	w‹¸I*B?ØÁü…z>‡âmÆ~r¾™a\0™v¶Nj-L»=kâM„]ÜxrÓY·›h¢G?„LHéÔ­yGŠuK‹ÿ\0^ßêV’ÙÜLùx]H*z`ää+Ñ>k³übÓ-âã·-:<qœ+¨V8#¿ uô¯¥¯Í½ì/omÔ\rÖ9£§ê\ri‹f|3ÄoÑ‡âj`Ê@¯­5O†ÞÕ›}×†í\"|c6…­ñï„ ~•Æê³÷‡g\\é\ZÖ§c!9ýðI{\06ŸÖÊº>~Ï½/nkÔµ_€^&µ26‘«éº„j2«!hdol@ÿ\0¾«Õ¾øãHÁ»ðÝÜªz5¨ÿ\0-Æ‹Î\nLf¡ži-eh¯ š	”á’D*Aú\ZXî\"aÃÆ˜çûPþÑ_¡”f£OB*k\0§jºK~@Ò{ú££y¦ÊI•¹ã4[÷„ž™&š~ùÅ$ƒëFxëIž´ œV˜ËÁ5(l€\n8È§¬¼q@‚0)C€=ê\0ãõ¤,1Ö˜ÆI4„í\'Š½m¢êSÅçN‘Ø[÷’å¶þ•^k¿\réä÷\ZÕÊõDù\"ëYÝW·gšæ5µŽId>â“úÖÞÕ¼}gsq]#¬‘Å»çÝqÎ²î|M«ÝEäÙ4«SÆËuù±þõcAc\n;Jù–w9gs’i=BÃü=¨Ï†dÒØä“šßÃŸAø\nšêcÚ­Ÿ¥HÑÀìâ‘HÀn“ ¦ôÎyªSº4S,&7‰Ã‚pk®-“Œf¢¸ˆIlêÊ ö«aßCè[;µ¼´³½Cò\\ÛÇ0üTf±üS›¥jÉýÅ[¥úŽµCáÆ ×>ÓCÞNû|úm<:è®ãYÝPýÛ˜ÚÝ¿Å\\_,“3šº<é[(¤t\"›\'L÷¢ØÆûÈÅÔRK÷kØNèàkR¾ò9àþ«Wc>\0ÓcþÔ¥ó\0ã9Vª6Ò¥ÕÁ‚ÚXZoî³…Çã[öÚ4Òx~];P![sˆîÁÆÏãYUqŠM÷5‚Ü›àÍµ¶Ÿ©ilU–^NNéÀÅ*ò0qÚ¼ûÁp[išðŠÑ1ö„(Å$Žk¹<1+‚«‹•ã±×µö²P†_nµ^9ö±Fá½«1ÈÊx<T®ÑÌ£ÍIì{ÖE!Cƒ·Ú¥QŸ»Ö£ò3=\r(˜ÈÁ¤ÞQaôõ¤HâŒeŽæô§Ð!<\n„Žô#L‡íP¼‡¹¥Á\'ÓëQD.I€þÀ +èsRÏVÅ\'Ê@©sÖ€«r3ã«sŠWšF3þ”ÄFs€\rH!Aƒ#ì(û›“VR#€OŠÊœF \n“@|Ma\r÷‡oàräù,ëƒŒ0Šðý\\ÕüFÑÁgV¶QíIfìp9äõ>Â½ý\0pQº0*~†¼“Ã¶zgÙMŒ¢É¾Épñ\"Ê ?Þ8éÍfÒ{ˆóÑãµ‹á¦A«B²I±^Ö&Tuå%Ôc§|ú×°ibâßÃº{x–fÕ‚fE 1\'±o|b¬ªZisÈö	‹¦\\™Š\'ÐõŸtîûÝØ¼ÉcPÝÂ×8ŸÙ_kþ%Ò¾ÄâÝËÝÐmÇÁçCÇ©­Ÿ[Zø{áþ°ÆSs,è-Õä<–bô?…Q¾¹ŽÒòÖOô‰›j¨êMeüW¸’=CÓ¥V\r4Ïpå»@ÿ\0ÇfîÚ]èrÚê¼ß|3vWˆe¹¶füC(ü³Rø™šO7˜¤4vÐ.ýs?­iøFå5ßxfí2¡üØXÿ\0zãèF\\åúÝØkW0kÞã\n7±Ée\nG¶+U¤¬Ä<.;QÓ ¨MÔ[NgéQ5Æ~è&´hÛŠ7Œ‘TüÆcœRe‰æ€±lÊ£8Í#M×åª¿5.	h¸ÉŒÇ°Ñ#w4Ä\0w£åêi\0n$ô ÀéLiˆS\rÂ¯Fãé@e©sÁÉª¦í1Üþ4°M-Ô¢;Ki\'”ôXÔ±?€ *~´§®pkgNðWŠuWK³FÃ!§;NHüEt?\n5)‚›íQ\"ï,hOäsý*X­ØìpRL©÷¶ƒõ«úŠ¦Ñìæ¶³²‚i¥¸–@X¯€¯Tð÷Â*[•Ž+{FPrÍ+áêFáÍz†“ðî×H±il-t¹u0CGñ•¶Cëµ~ñ§¿¥\n\\Âz+¡øÅn-fc,v¢³^\\‚‘©=DkœtàuíÞøsáÿ\0\n\"40hj nûMÂeC²½ó®£CMn;V\ZÕõ¬Ó`Kx¶¢þ8üªã™†ßÝ#ÔƒŠ»X†îV‘R$˜p1×ƒMòÔŽAdqš<hœH	<e2\0©à‰$Ï“,oèŒÂ˜¨C°ã§ôªÒÛ¬·ÂOPxÏøÖ£DP€ão~E4¡ÛH,xÁÎ(²Ï>Ô¾øoV¶¥£Ø)f,>Í’ÃêèCÆ¸­WàN›82hº•Õ›\'l„L zù[ñÉ¯q1ƒ¸÷=\r1­Ñ—;qž”¬Ë:ÏÂ_é€%°¾G}‘§åHÿ\0ƒàgØ\\~©¢júC3êú-åª¡Á”Âv~8?¯³šÍX§dVxÁ\nzíÏZ$·GL2zà•?˜ w>%Šý†Côz±ö¡\"`…o¡¯¬uŸøkWÞÚ–•jìÿ\0yÄJýt\\7ë\\µðW@òŒÖ­¨ÛÏ#lŽ9‹’xáÆñà>”\\.x`pAe©fÏ­õ®çÄÿ\0µke´Ô ¿–á¼¸­d£šFÆp\0Ü8îw`w8æ¹?xRð½ìv¾%Ò¤±¹™7ÄQÖEaœuRF}³žG¨¢ã!†q=Ý„2Gµ|ï˜ç‚1]zhaºU¼ñ*à43üøõÇ­qp”“PµdO(¸ß¸`ÜþUêv^°º\nñZ:2²Âä~ ƒXÕiY²ÖÖ2ô»K[Ã!¶Ü“ÅËÅt¢9zQî+±ðí­Äž!Ð§k¦¸ŠxÀ||ªPä~x®âo‡um*ÚÚè]Í{f¼~ûl\'±Èä¯N{­u¾¼³Ô´­.Úêå-õH¢™RS±š¸V´oº3q¾Çž5Ýšii5½Æí@Ý8x^<1Á\rßøZ½¯¾Ûô±1¼`ð=«Ó­ü¤Ú\ZÓq9cšæ<Cm·ˆÍ¬BŒ°i\"ºV9ÎÑ]©$îsºr³[ ‚ÒâF\'–T8­kx\'\Z¤e¡’8Ù\n³2ã Ž•Òé>u”c}ÔXçjž*wYyo`‚6GÞ~êØ¬åVReÅt+ZøkE¶BX¡%¾f9ÉÆkÔ´èÖ–\"Ù-¡°´Œp±‘\ZêsŸ|×h®À¾â¤½µˆÙLÓÄ0¿0#9ëš3î6Aòìu‹V“O¹G\rËúÎ­xzÂ{-!l/&2A\0ãå(N@ü+Âµ/è1MöÍÄº%Æ8ùJ¯NœÎ´ü%­øËBÕ-./5‹OéAŠË3˜¡ëŒ€Å»ã\'šèŠOf\'t¬Ï_…Ì=¤·H¼åW¹¦Gkte•#–ë¹¿é\\^±ñ`—htÞI2Œùº€ò”ñ”{óÇêz¯‰üGÝKS’ÚÕ²>Íj¢$úrGÖ­»nmJŒªê‘é Ô|7 ‡þÛÖb†@qä,†i‰ÇB«÷\Zçcø‹áâøÓa™u{—gô<Woá›8JŒärÌyüêA¡Ø° bzäVn½¶;aƒÛgn<Ssuû&¤Oû¿é;Èü)’x§]åŽÓN· [}ßÌ×ý„rÖø†Lãr§ó©b¹×´à|½A¤Uä,øpEgíßC¦8:=Ž¢çÄ$ºMªÍ\'¤±ÿ\0!šÎž	®ˆ7·—w-œæI˜ÿ\03U`ñ8#f¯h‘°ÿ\0–Öà¶}È«—Ú¥­’OËpî>HÓ“ŸJ^Þ]c‡„vHdV6ñ\0ØU¦«\\jÖÖàÇeÞ\\ôXãî{T}§Uº3j2¥¥”jY£‚*–©ã?IßkáË5šQÁ”Œ&}sÞ®<ÓÜÆ½xÑ÷Vå}bÛRº³ûg5Ð´BØ[;VÝ$çû sŸóÀ®pøªZhvgLÒÊÇ›(þóŸz£ªÝ_ëwIu¬\\y¬œF½1èK§é÷w(4ëf¹• •ýØú“ÅuS§É«<Š•eQÝ³{CÔ,äE1Ý cÔ?ÊZéåc.&AC‚+.?	nV÷Ä³Åqs€ ÇLúÖœ#E	Ø6áQFONžÕºÆÁ;3•áÜµG£ÜÉûôœžéÒçþŠåµaåëšŒ~—Í‰­cv³è2Ÿ4ûO0u’Ak+Ä„/Šu!žwƒ¨£ÿ\0xÅYhWÉ¤Ï½G»ŠL×¦ŽB\\ÑŸzˆÅ©&}èÈ¨‰â…4”žhŠkÉKq1ÄQ!w>Àf©èºö€¹ò¼ ÇåÒ•Õì;6®h\np¨þr©…1ŠQÒ£švi}-4\ZZ\0J)E¤w¤¥\"“Ò€ÒRšJ\0))h¤cŠB)Ô”héVtÏøýŽ«úÕ3þ?#¤ÀùëµhG­àøõ}©/ú«rxÿ\0õWÅ¶üë6ƒÖõô1_iJG—n3ëøñ^<þ#ÔjÐþäsÞ‹Ãûþð¦ÙŸôuàâ–ðæ¬)#Qeb’€1‚£\"‘AÎAR@Ò‰BÈêÊÇ zT-ËÓ)I‰AŸLÓ£ŸåhÁúb¢êÆ šÌ@þt€x*Ãå\"ÀúT+\ZPƒìx\"¦\nB€I?Z\0@x˜’ªžN;ÓéJ@4€~´É#cz†=³ÔSéE\0A²D»mÿ\0ì¿­(œ&ŠÊ~™MÔcµ#qÈ84Å`‚ò”ÇËæ¤àÑªYÙjÖßgÕ¬à¼‹²Ì±ô=GáYséw7JˆçþYÈñëJÍ}f8!ÿ\0ØnGçUdö\'cÀþ=xHð¬v\Zžˆ¯]ÈÈÖäîQ€A<÷sT~\r(X5yIãåèšêÿ\0i{ï´h^ã1KæÈÅ38ÿ\0*å¾üžÖdô-ÿ\0¢êmb\'©‹ðÊkÈ¾#Ãu§Gæ\\Eç8:~¹ÇÔ×½§Ž¤¶êšt°°8%â ~cŠùÇÁM\"ëæXe’)‡C‚9éV¾)×­¸ûwÚö~¸Ím\nšº1”Ò•™ëv.Ò.ñûðé‘ýkbëYÀ0ÜÆsêq^0¾\'‚àÿ\0ÄÓ@²Ÿ#—„”cW-µ?\rÈWÊ›TÒß°\0²çS*Žè“=•Y±•`ÃÔÔ‹q*†\"¼ËO–v´¯ÙÝz,ÇËo¥l&«â;P>Ñ§‰ÓÝóøu¬Ül3±¼û>¡n`Ô- º€õŽxÃ©ü®SUøiàmUËÜøvÖ#µf€|!ô¥Æ6èU/íf¶sÿ\0=\"+úÖ¥¦»¦Ý(ò®žÁ¥`<ßSýŸô	€:>·©Y>yóÕ&_À\r§õ®V÷àOŠ4ùž}UÓ5PB‰¢‘²:`‚ýõ_A$‘¿1Ê§êqR\ràdý)çÉWŸ<i¢Íº÷Ãw²©îµqÿ\0ŽÆ¹	ä’ÚgŽê`”‘\n}Á¯¹’yõ5âÛjæ\rFÒÞîÖ9ã§ð4j>Yãla‡ãR#‚G<f¾³Õ>øTr÷¶…ÈÆmY Ç¾úW©ü\0Ð&\\é\ZÖ£fùé2¤Ëúm?­;…Ñà€Œu ŠôíWà7‰­‹¶—ªé×ñò¬ŒÐ»{`‚?ñêä5o‡¾6ÒFn¼=w\"ÿ\0zØ	Çþ8N)Üf>;ÓK3P\\I-´¦+¸&‚U8)\"#ê\r0O\\ºðÝjyºä÷L:cøRÇ \nª{SÀ$NPx¨€S×sÅ ÇãAâ€r0~´þéMJP3ÚŠ1špüPˆ\'Œv§¯`r:S@vŸ	.H±Õ,y&¨ö<\Zô=ÿ\0è‹(ëªÿ\0…yWÃ;²xåbcò^ÂÑÛ8È¯XHÕà•\0Æõ*~¢­’ÎV¶ºíü aYüÕú7?Ö©Ê2§ŠÝñ4O&£esm#On#!A?2ñÖ ‹Ã÷· }ªEµŒõØC1Ò»ãˆŒi§&rºm»#ÍÖ=Úâò-Ff†áäß©åA­­Å+¡jßd½¸{í?ÉG*}9ÿ\0?Z›â\'ìmô¶ÔlÙÕ<²·dsõíÅqZÝ³^ióK¦¼mÜ¢&`?Jæx…VöØèŒ,H³Ô¡ÕoôŸÌN†Þ]ÑZg>gûgÛí^»2î;†0Ã\"¼V[ýGYf…áó,\0ûUèÛ´²¿þºö=.F›I²iXyžR«ã¦à0k¦Ð•@ÛÏ•wöÃsNd#îò?ZEÜ¼ŒŠ\"H7`CVC·E•vË(Í</¡âVñ—GU¨=j»0(AïPÌø  ,ÇÒ€X“Müi©²ö^jddŒ|«Ï© ³/SO\n‰þÑõ4Ç”žI¦	&€&2œcµA5Ô©ieUÀîi<†Ÿ™%ò£‡SOH-\"ÁKuvÆüš\0ŠÒK‹¤CF~3V‚0ì	ö¥y€ð;v¦dXâ€$‚È¤3_>x@Šïâ7ˆlðZ0•.âpNíÍ†ãþúý+ÞüÅ9+Ðu5ãäÓìüK&£¼×:ÜKXú\"¯ñ~\0ü+6M¨ÜÛ Ši$$JB(A–vôÀ¬?ë&ÎD°Ó­MÎ¥\"ñä\'»zS<<|EªhÖö–º`±“q&úvË(?Ý\\u®ÓÃžƒEˆ„S=Ì‡t³¿.çÔšç•EÒ<ÇQðÔš\\Z¥pn5‹ÝV‹jrHQè0+³ñ·‡“Ä\Z]Å”€y€–†B9Gô5oZŽ=_â‘¤[®ètukÛ§*’0Â/×§çí],¶ü’F}ë\'&Ò}GcåˆÅÕÜ¶“ù–×ÖÍ±ÇBïVu½N÷TŠÔ^”–{|…˜”ÿ\0	5êß¼&¹w§¤¸ŠùP$ˆßv@:}\ryV«£ë:C¨iÓÇÞ¿˜é]©¤Þä´c™ð~”Æ”’@«ð-ôø6ÚMÜ¿îÄÇù\nÒÓü?â‰®V[Ìtó­ˆøõkt„sÉ9eÊ± wÅé|Í“^†Ÿ\r<[¬È§S0YBy\nôQ]~ƒð“EÓÙd¾Yõ‡8—å@Ýk7Z(i3Äm~Ó|å,meœ÷Ú¤õ=«E|=âËÓdlöR§ú×Òvzµ´Iµ”PÆ£\nˆ¸\0UèôõQÌ`}dñ¢›lüâ›²?ÐD ÷–@éš×µøO¯K´ÝZB½Ê’çúWÐ+`;7éRÇc…ÉÏ°©öÓ%eðv3}ªÌÍÿ\0L/óÍtZÂï[\0^ÞK–årsøt¯Mò!@w°À– S^m:—¹·Þ™Gõ©s›Ý#ƒÁ¾„h–Úoç[Öv1Á\ZÅkpÆÆ¡@ü]þÙÑãáµ+Æå?Æ£oè ÈFÄ7µÂÿ\0CRe[ÈrZ?Z™-“¤ƒã>•Pø£B@âggí‰3üª¼Þ\'Ð¤ãûN!þê±þ”Ô$+óüS¹ðl£Mñ‡â’Ê2ËWÙæ(þ\"9Ëzôæº=â¿µ¢ªš¤–\0KÈÊçñ\0}H®jõ¼/«ÄcºÔ­%Süð?ñìW=¨|+Ðu42i¯\Zœ=¤¡‡å’+ªRV’±>³ò/áó´û«kÈ¿o(qúRHNCµ½\r|µ/Ãoè“-Ç‡µ‡WS•;Œl?Wí¾ üPðÆÄÔ¢}NÕH¸ˆNÕÇÍúÖªq–ÌŽSéqÊàƒU¦²·”åá]ý˜Î¼[Cøÿ\0¦\\H‘x‹B–ÖQÒÙÉÐÿ\0¸ßã^‡ |Eð†¸Ql¼C¼Œ2b½Sð#òþµb³:1o,xò®¥²?Î¿­æ\\	-ãeîÑ¶äkBæšÒX®bo»$.ÄS\Z\'2G­\0g´È\\.ÇRßßÖž¸ÚvîjÖÂxÛš­@É \"õ,NçE€®ÈŠ¡‚ŒÇ8ÍG4±A›;>×!@UÜU]Nkëy þÎ´Ð†ùÝ&\r´ý9¬Ôñ~”ú¼z,‹voÉÁHmÑXõ8Î1úÒ°I-´° o1o»ùæ™>Á×“I\r½’.^âäìH¾™þuÇø÷âO‡<\Ze‚iWZÖ”álàÀŠGonxääsŠùëÅ~0ñGÄ]D%Ô’I\nŸÝY[åaŒ}=}Ï4†•Îóâ\'Æ{mfØøžií ’Ýµ…[y•B:‚B¯–þûVÔ¦¿Ôo¥¹»s¹å™‹18¿°èzG‡~\Z[YÙ®¡â»¨­ ^JÈÁT~“XÞ/\n_\'ÃÚ|©$xÍáÌa½‚zwÉæ³UvJåØÈðœ—¶ºÎ©jtÐö‘›Ò@`xÀ’qŸòkZÏâˆJËžöšdg’±Eœû7dÂ¹Õ±!*$äŒ°äR9—|kµp29ÅW/6á±­uvn$K™ï.¯o¾ñ–v-ƒøÖÖŸã­~Ä°Øjö½<»ÈFqþðÇõ®j%ç#8éÈ«ÄC/Áô£•l¹è~\Zø™ao–ºæŸuÛŸ4\"ŸàÁÁÀííÚº‹¿xÀ\"6©\\(Â™	·‘}në^:’©ÜXXç¥!··“ïÆ§Û”[ºÐižÍÿ\0\nÊÆ4È¾Ôf…ºeÐƒô!jöŸá­+KlÛX‘(ó%ã^1¥Ïªis*h—÷–’±ÊÅ¤>ëÒ»½+Ç^+²Ò\Z÷[±±½¶‚0rbœó£iüª%	¾·ÎìÆ‹÷I_¨¨§}¼ËACXZoÄÏê#¼{2á°1<{“?ï.x÷ V¦»­Yið˜âhî.d\\ C•\0Ž	\"³å’ÒÃrKV`,Ïl<ÁnNâ1ŠÀÖ4Ý?Éó­•3\'ÌÁÁü+JêÑ¯4™ãiÐA<-2™8Àú×á=V²Ñog’ÂþM:M£ígo/\0žG~Üžƒ¹éT©Éj™­U9NÓZÖŸnÖš\\\"úôHøÜÏ4ƒ#<ãšŽmSHL¬Ú•¼~§9¹GX®36áÓ$æ«O§ÛÊ¤4HÞÅEV~ñìÆ’”o¡ÜÇªérˆÕ5G`p~S=k:çÅ\Z±Ù<×¡•ˆ&+6eÇ®k‰“JH¹|£þÂS[Ësnêæ«w§^æSö°èv:gŠ¼9©È-í/\nÜç\0](„7âN?Zß›HÕ.†×\n´¼R|ƒ^l×Z}ÎWSÐ-.—¡’1åIÿ\0}µ©áËé4i	ð‰u-!”äZ_2OáÇ´POfrýj¤~([h—^[M>‰åÀƒæ’U(«øœW?q?‡,/%»‚9ßò‘œ©fñ÷‹â…umo4øyiò¨WoR¼?çÖ¹k?ß²l%¶\n¹g¹_)GçW\Z	­Y/-’Åº—öž§$6—tÕUÀ8äšÎ²ƒÌ*Ú2ÄuÀà{“ÚºË–E–îíX<¦?3Éý+¢-tˆ„V°B¹ÇÞ?Ö¯ÛB’åŽ¬ç›•Is3’±°µ€©Gu pcòƒì:šëtÛ³öÚ‹HÀÆìm?‚öªÃÉµÐ‚%”õ„`â©Üê–å\ZIå>Bñòœ—>‚±WS@PKs@ï%X©\'’áúîj}>8­$\"77±ºFý«—]~K“\"ÛEqåŸ•c·‰ˆüp*ý¬šÌ“kcµ±…6ßÒ’VÜ|²–‘GG{}8¶»ŠÛpŒ ÔfŸâ‹ØäñmÆÂ?yN¯ËX6ºN´Sý6ê(C™c`ÇùV’i0›¥¸žêY¥ØQŽ+®xS•Ù/V¢ÑW$t\'è)@5Rñí’EI&EÕœdmžÕrCCv(š€p¼³£Ô×¡K	«œõòùÑJîí€—i«a´y-ž[mNÎdCƒå¶[?J£zâÖÀß\rílIQ»\0“OJÕWƒêcõJ–º@Ç¦‡\0Öu†¤šªÌƒi=‰©Œ†ª3RWFS§(;H|×w/ªE§½¢É§]BÈî:ä‚1T<\'¨[Þx=-©§¤\\<qæÅÎ×ü:~õ©uKÙl´k«¸A3ÀÆ<æ¼ûÅš•Ž±s£mnÚ}äü^ÛFÇa8ûãëþ}ù+IÆišRI¦D›S±…×v¥dpf\\Ô7þ ´¶Îx¯$|«z×œiZ®©yiilñÅ-ÆB¼ÎBäpHúW§|0ð4øKQ×nÚõ\ZñeµO—!‰2qÐtÇºà€§‹”z	QŠÕèž#MA‘$Ê”Œ0íŸjß¼ÚéWKñ±G2²‰”¡õQ‘øŠí­îÄ‘9ÕB§<SfUé¨KÝØÕ\rïN\"¶´Í>ÚçIûKF¡¶óõ®yydç¡#õª…E&ÒèC‹Jå•¥ªð9\'­O“V@\Z;RKô†\'jJSIÍ\0\'j)E\0”‡¥/¥¥\06¬é§ý2?lÿ\0*¬jÆÿ\0iô?Ê“óõ€-¯XÉ7È?ññ_gÆH6r£‚+âû\"ÃY±(…Ø_)\n:±Ü8¯¯­õ@–‘I%n‡Œ1Á÷¯\Z¢÷R™µn¦8ö–-EÓb$ÿ\0z¡µº‚ä~æA»©Fá‡áNº%cŒÕé#QÑO³;”÷!Š+€¬‡k\n€˜[+&â;6:SžØL-½}\"›ÿ\0&EûÜãŽôÄr²ªÀzR¤³\"ŽŠ:ƒ÷…XFIãŽðš\0ÍFâUúÖ¥PÊ2­½}ûS<­¬\Z<qü-N‰†YLe¯± eRpr­î)M)Ã\0)8\r4)Æ›Ò€<RHq‡ÃGjŽàâÚSþÍ\0D±Ÿ²Æà’=)‚vW?\'R5fÜ•·ˆgµ5Ñƒ¦#Áÿ\0iÆ_µxz8ÇÊcwÇÔ×;ðèù^\nÕäþöóÿ\0Žâ·?i—ÛÚ+À[bØú³…`xLù_\ru7þð“ùÐe=ÎsÁC:œì;Fk®\rÍržé7mè€WR3Þ½7ÀqÕø‰‘½jaƒÔUT<õ©U«¤ÊÄ¦›¬kŸ¥]³¹½³9²¾¹ƒÙùU$nœÔèÜPÒ–áv¶:_k°(IgŠò>ë<`çñ«âm>àçSðí¾OW¶b§ëþMsŠÔõ<VoN]ªÉ}®£áéú6¥©éÎ…Ô²ç[vr_±MÖôûÑÙ]¶1ü3^lUH9ß\"2AÚ+`¢öeªïª=hjšÝ®æ˜î¿Þ…„™ü:ÓãñE‘*·I%³žÒ¡Zó-CR²ìz…Ì tÎ?*Ú·ñŽ³\Zº×©Ž“G×òÅc,ÖÚ–«Eîz5½ýÈˆÛ>Œ\rXçøH¯9‹Ä:Dähh~ÕÊãðâ´m/ôY8±Öïìe(ÿ\0?ZÆT\'Ñjq}N×.´õ¸‘z+Ÿ·mPŒÙj\Zmúƒ~Æ?…Jú–¡oÿ\0ÚDàwhH~••Š5®þÏ}‚þÖ¨[ªMu?®WTøuàM÷ÜøvÒ7õ¶-\0üZqøƒMí’Fÿ\0»*•\"¯Ã<\nÆàÿ\0u¥aŸ.ƒÇ4½4íž(Æ=êF(ÆhÇ#\'Š8‘Nã4P.8“*9§Œ•r¯ôŒZPqŽ)UIæ˜gpÚ~¹¦ÞîÇ“2±úgŸÓ5ïD3m?+ÃèExòfÑù€È¯lðõßÛ´2èŸšH[ýåàÕ½„RþÛM:ò[+ÛvŠ$…”ŒsíVui:E¤S\\Ln¦˜âX>i$?Ð{šæ|d÷öW÷WÖDL‹ö‚NU‚õ®^Ê_ø’â+œÉ¦ê å–Äoô5ƒ…õ)Y«™ðö³â»ˆ/|QØt˜Žû}*&ÎãÙ¤=Ï·ò®—ìVÑ¨Q)Úãm­ÁÂÇ«êš|ùùd™!o®xÅlÁâ‰4çX<M\ZË	KûUÜ§ýð:~”“{ÆëÆ\nÆTñLðÅûµ\r6@že£+ v7OåMmÃ¶ÖæîMnËìê7`HÏ°AÎ\nÇðDê—º¿ˆ\'†[U¿p-UÆÊ^‘ïN›åÜí[#9Á¥Ï<ô5”m”dxUŒ|¹S‘[©\'°XB„Œ¦µ/+íõ¨Øñ•85\"1hÆyúÕ&!éƒÃT,0xàT«Ïp)Œí@†t\0[€)ŒäòiY¶©Éâ˜ä¡¼b}…8m \ndÈö£Ì$áM\0=°\' ¨Ä‹—&’C´ff\n¾†«Mväm´„úi!Â êj\\ÒÜi@f$¥DìƒåÝŸÆ¹ýWÄZklÔ/ŒóŸ»mn›˜û^:¡-æ¹{M6úšãu|Ãx\\uÙÐ~&³u/±\\§A¬Þ´-¶Tˆ`’N	Àçð®2Òï@Óõ¸/¡ºQº¸R$Œ—o~085ªêú>—¥fúöó_ŽêCiq…/ÞÀÀsÜW=sñGRy\Z‰¦é\0íMì?ý*lä\Z#ÖSÆ±HŒöZF­4CñÚasø‘\\çŒ¾$êzu¢ZéºeÝ¶©yˆí|à»²N7œúg½qÚ/‹µr)¬¯5«KÔ¤Ž[bÍ t`qZ¥åî¢—oy<·±¢áŸsäqÁ©T’c¹í¿—ÄZ&‹%´šMyq!žæâK´W•Ïv<“]0½ñ!?/‡í€ÿ\0oPüM|ß%ö«)Ìšµû±êZvÿ\0\Z®Ëy)Ì——\rõ‘õ¦àž¬v>—û_Š¸Û¢iKþýù?Éiâ…áàðÔ8í%ãœWÍ\"ÂGûÒÈiN–§ï3­O$Ef}\"ÚÖ¾œIá€õº~?Z†M{Q|ßxN¤¹þm_8\"&#æ#ò hè¼‰5ùI´}\r7ˆÿ\0[ã\n?úç\Z7õªrx’ÉqæüDµþ™ÙÆ¡¯6	ä#~…Ì}Å>D&{Œž,Ñ\'ÄkÏ*Ìä•ZoxX.eñ×ˆf?ôÊ6Lÿ\0ã‚¼]\ZÝÃ€½HŸö]ì“}œˆIÚ‡iò!¹\'¼\Z£¬ø®ï>®ÃúŠ®þ5ðÞYø†èŽ?zÄçÿ\0¯4’Æ[ivÏ,…wxü)Ë-åøâ—*)KMÏBxA0øNêsÿ\0MOø“Qÿ\0Â{á”9ƒÀP7¡iÿ\0k„\r*ƒ¶0~‚¬N—–òˆåDV Îr£— ´gl¿4ô\0[øMB:Gÿ\0N_Šs(ý×„t¥øW¦¥Î¢\'[xÓÍˆŒ©lV‚é\Z‰ê‘øCåNÏó)$tÇâ¶¥Ç•á©i‡â¶¼rBÑ\0ÿ\0®oþ5‰‡zzùcñ©wýè‡ãšžh•o3PüSÕ{á½xñÊ„a‘øæ´\'ñG… µÓ¯¯´;­/íÑ³¥ÆžØÚÊpÀ`Ž‡Ûð®^óF¸¶²¹¸‘ãòáŒ»sØVSO*x$’îVÒwTDI/qøþ¦®²ØÎnÚž¿ kýAð¿‰íu‚åÓSo.`;àà7æ1Z¯âí\\C¯i×:|‡3a’}xüëåµ·]Šêå\\c§cë]V…ñÅ\Z-ù¾´Áæ©™<Î›£}‰¿sß.ô_ƒÌk{ÈÛ€à+ÌW#¬|!Ò\'Üö2ÜY?`§zçèÆ¹ý#ÇÞ¿pu¿^±ÁºÓNSê@çðÚkÐ´‹ýJxDš§¥øŽÐœÊ\"¸ÐÆ~ Vvœ6c²g§‚¼iá»ƒqáí]Î8)š\'#Óüš×²øµñ#ÃEcÖm\Zúÿ\0Iƒxúï^Oç]ä^%±y\ZœZlý?Ò¢*‡èý\rk$P]D7ŽhÏñ+ñJ¼×Ä®.S˜Ò¿hMú5‡]Ò®ìXŒ4ÖRçýÓŒÆ»\r#ÅÞñ\"Î/ÛMg H51?P@Üp>õÍjþÑu ZçM·g=\\.ÖüÅqZ§Âfm:êâÝú…8e×õ­\"}	å=ªÿ\0ÄðnœÓ]k6Ij„ºZØÊ%yŒóÉ?ž½x7Ä?ŒÚÿ\0Šç\Z†’M2ÅŽvÄ™ä}çŽüuç5·ÁFYš[ýVÞy%l‚ª9\'žÖ¦‡Äþðš›_Y\rRýx{ë…!õÛôôýª—Ã¨(ØÍðÇÂÛ»¨>ÝâÓO²_™ŒŽ#ÜšÜŸÅÞðäOcàÍ>+»¤ùZêd+>Ãø¿W­êºž»¨E>©«KtË‚±ÐzT¾DJÛ¡ó\\ŒËz‡/üŠK±.§y­k·hÕ¦K–E%|é\0UìŽƒð¦Ímn¶¶Ìà†ß—~ðôÍO¨¬KgÊÃ»$ÝœqY—GqªÀ¾l±Y…Do-rPq¸¯¾*á&”Fì‘a¦Ìi„Œœ¨ÏAVâÔÒ8Â:ÜD0ZWëjÍýÝ©íçÃûQˆÎð\0 ã¿5WZ¹’I\'–O“Í%¶Ž\0ÏaZÎq}¯ÍkjZ´Fþs`­‹e7Œ>”í2þ_´’ Ç<3ŠÍ··–@aÚ=«sJ%n!ŒÆe`z\Zž–-\"R30ž˜­íÃ7Ú±·6W6+ç!$‡˜„zŠæe»ÃÈ’L\n+ ñš]+G½ñ=ßÙ<?¦K{>~wÇþóžçFÈ,t:Ž±ká‹©bÑdŽîu|ë¹;y£;”˜®L±Ô/4Æ]y¼ö¸þÎü$@œá?Â—Oð™áim®<Cx5U~q+ºÞ1Œ÷$sÉÀöã5»}iw¥Ë©]jÖ–ÈBÅ™ýáéÆ}k5-Þjš¤¹¤®ú#”‡ÃZ%œ’É»O)û¦àåb>Š?Ç5¹*YË¦Þÿ\0eÝGBˆwKÍ!\'3P‰ôí5® ºÓï—…x;€=Åi‘¶©§¶cµ†qò¬­‡Î2xªWîyÎno™¡Ú¾µcegeqf²K$jË$¢,Žæ®ø_Äz€_7Jñ4·ˆä7Ùî6|ƒÓiç«–Ö<;ªh÷wºn§‹…q#[ÌÇSÓ+Žj7Z[¹y5M\nÈËÉæ[ƒ1èk:´å8ûŽÌè¡8ÃV]kì¶çÌ‘âñæy\'•B€e»täÐ,<ËHî®|ë\'›!1àûñTo®¼9áû8ÍÛêÌ$­ó–ëŒLÓt85¯júòP²¡(¶²\0#ˆvÀî}éÓ¦Ôm\'2ý¼¡.j~èÍFÖ{ˆã¾‘?|32HÖ02~nÝëjO\nê0ó•\r´‹§³³O1Án¤ƒÜû\n­¢xvÚ-ZûEÖ5‰4ë‹yTr¡C¦Aõ©•$•ÏF†fÒýê2ÚÙ]A*iˆZÕ_å#`m~+JH¤Ïn×ÑÏ\Z;uo\\àž‡Ú¬YéfwY\\-yläý+=Vçz•*ñæ]JƒO€°{w–ÖRÌdŠeõµÍÄ‘ý¶íî.Ñ¸šÜ’Ù”¹Æ)c·HÊ«1g5^ÒInb°±¹ÊË\'†îmmW÷å\0‡9*½¶“¨HQî¤†3´g¸æ´ZvŽ½É¤fv-Ëµ)´_Õc¹Aü?\rÄ¤Þß\\Kÿ\0–|ý*ÚéZLqÅ\ZØ@Ëzæ§Ø¡€-œ¯QV-,Þã-÷WOz«»jÍ#B [ÎñFÒ5‰GPƒ†âRI.ÇÜÕåÓä\0\rà+u¦5°~s#UL©\n3\\ž:{ÔÌ¢5Þ8úÖŒZc¶ÕŒdÖŠ®Æž—+ÜaPS\'ïJ/}„£vsú¾¢mµpË–Ì7L$äcÓéº®©¤êþ¹±Ò´¸ìnæ yÐ&ÎÏ¨8Æ3ßóÀÓt™ž}EÚi‹ìÏÊ¹9Çë]=•”pD(Õt]²êpÔ„êÊòØÍð}™ÐìîátÍpÀ³8À\\tÀí[·R…³/¨Ë¶ÕFHc×è*UHm-žæé„p¨É\'¿ÓÖ¼ç_Õ®5û•1ÆE¤lBDþ<}Íh¤å 5\Z1²4F±—¨,!Ú¡ùpÏn•Ó[Ý,È\nž{Šà`aŠHÿ\0dâº¥J°¯B„’VG‘‰¼ß37uB[@ÕW¡û;íÅy­¼¯\"«ÝÃø\\èØ÷¯G•ÄÚ6£ùöý×›Øœ[)ôSKïc\n:\\–ÖVŽ8Úr­nSž†´­¼mâë-\"M6ËZºƒO¹0¬§ç-©ÉüO©Í+tvû2 ,eGr¬›„×&›3qšDDOºF/!9,NMwV·\r»=Jâ4ÖhõØØ\0þ\\lxr»°ò²9ê«³ÚtÈâ‹B€,ˆC $wÎ+Ï™ŠI2îà;có®ŽI.á‚Ú&>æ9ÇJåïÏ—9å4a¤ÛêeRÍ$‰í¥ÚÀŠÐGÜ+91ƒZ–íœ\Zí0-/J_­5O´€3E!éEÒŠJ_J\0)­-\'j\0CSØ\\è¤þ•\\ÔÖ÷çýÖþFú¤}wJVÎÖ¾888Þ½ëëce2F>Ìë,\\~â^ƒýÓÚ¾GÑÝ#×t‰‚\"ÞÆY@7¯5ö=©Yb\r8=+Å›´V)´ÝçÌºç}\r÷w˜à¿™Ûkgt«ÏçÞ´ö‚0Ã4Û˜Þ[r‰²OE”dji÷4&‘Ï˜Ø2õˆÚ?0‘”~Ä+sjë»}›÷O1ÇµZ[Ì(7	€Ã‡O™:vÓ@¹°Ì]ÆøÁûÊy§Æc}¬¼°ã\'ƒTc—\nL2eG#e0çŽã¨¤š3ÅA¶Ñµ¼ÁïÁ§¤ŠÀŽ‡ÐŒRù¤¤¢è)(ÏJLÐö¨¯?ãÎo÷jLÔÇýO~)$êSè)¬x§ŒlQì*6 GÎß´¤¹ñ¾þ5ýKëY\ZCy_\nîÛ<°oý\n­þÑ2oøŠ?êíc¦j‰&/…Ê ýí¿©¡Os+Áñ¿Ý¥t€Zç|…¶¼b:¸¥o¯Fƒ´QÇQ^L™M=M@­N\rï]Ì°¦¦»fª©U©‰—QúTªj’¿jT“ÞÉ±l\Zp5¸Å8=1ÔŠÜ\n¬®)áúQp±mŠqUaÈ«£ôæžÞ˜¬H°Fd[Ôpjý®«ªÚ(º•Ê¨ì[#õ¬Ñ%<IïIÆ2Z¡©IltQø¿UÙ²öKèý%NJrkº$¤Í­ßûö®Ã€Åsø£xÅc,57ÐÑV’<ï §õ<ÒœÍ;\0JñNÑŠ½©BœriËŽôáŒtäPÆp8§9õ riÀdûP 4 qÆqJ0G¥8c4Æ5:ÇQ^‹ðÂïÎðÄ–å²ösœýÿ\0®\ryðÆ}k¤øivmuBÌ­Ä;±îÆ©l#³Ö£S}aòJGèExuîžÍ5¹¼2²\r£\'‚q^í¬=ŠÊƒ”Ã~U6ž¾lÓÂ–vªà;ÜIäÕS’Ž¬“„ðõþ¿cB¾u‡t»8Àöï]ŽymttÇØÿ\0Ço2æ&>Ù¬-JïL‚BCË¨L?ˆœ%bßêWŠP·NËÆ?\ZÎiKÈÖ,ôë	tK°5OYZ\\‚™b¸lWsm4s¢µ»«¦00{WÏºo‰u-2#À]BÌŒæä¡®·ÃúÅµÛyž¾6— dÙÜ)>Õ„©õ)XõÕ\0Ó‚wSƒ\\ž›âñ«m­Àm¦þùåOÑ«¬‚X®=¼Šèz`ÖZÄv#”sóÄP‘º&c!Ó¯^•`ôÁ»ƒFÅ×­i\Z½É°‹‡ð¦ªü¤{Ô¬H?:àzŠ¨Â™ˆŸ—ç«hÍ1XY%Tlgš‹kOx…?É%wãjyÎ+?TÖtÍ&2öáqŒ1Æ~€ri:‰l\n-–VâÞ1+4ÒàŒgSÐS.æ›Ëc%Ìv0(É+‚Ø÷cÀ®z=gWÕ#Æƒ¦kLàÜßê©ük”×uo\ré’1ñ©qâ;õÿ\0—X”PýËù“QÏ)hW*GTÞ$·yšßA´¸ÕnÇÓ%÷ð?\nÊ×n%¶ƒÏñŽ¿•üùX>dqè[ïÀW«üC×5²éC¢Ø´%¯ßÇûØãðÅr&ÓÍ•¦¹všf9gs–\'Üšj›Ý…ìv÷m4Àðx\'CŠØž·—@´ïñ?…pÞ\"Ôµ}e^ãY¿žíÔeVFùWè£Vâ‰B€RÛY}·UÓlð6Ü\\\"7û¹çô­#…rï ]h\Z:°iºllÀŒ~öO™ÏãÅe¢\'f{UÏ8Õ<e©ßHçìÞ‘^r¨ÿ\0Lþ5B?Ý»„@àn¤J/ésGg¨Ç<™(R¸Åfé–v¶¡ÍÂ´¯Ÿ”€jVÃt|äúTEÆàê¤ ê\r&®2ãOhƒ)`þó\Zªú£3m¶¶‚6éßÎ§îŽOJ@ùJ =sŠžD;²6¹Ôáæ	žE)y²— u©â3ÀaÓ…1bÄzŠ¤—`¸ÂÄm8ÜÅ\r•\r»­;%¤mî*$(·ŽK)çÒ…phÂ.,½~´åvŽ6Äj£êË[²Û+`Ê·cô¨d‰BO8â–à9\03ÇcÞ€í^„ûÔr#­•°y‹g¢ƒ÷MM!pG¥@(zûS@,Ì©u\'–£R¨o~õ%½ÍÂLÉ2S±aU%\'í1BÄ‚Î9ö«%fpWqšV±ÜÊ-îUœüçøF)÷_öM™Ë¼åðÄöA~DáÉmàÓîe2YÃcmÜ´XøL]Ëœ±\n‚V`py¯[[;»dY5}+LŽ2>ú^ì\'ðjò­RþÄžëQC]´>]¸# >zšË¹y¯®^ëT•®®åä”î$ÿ\0O ¬¥Ož^E§dz×ü%Šëì×sËm( cÞƒþ¤ŠéáÓm.¡Y¬µÜ\'ÐÈ¯üx5¼ZIÜú®å³I1Æ>ye_ñ¬&MFßS…´7¸‚òG%ˆn¼ëøÔ<:èÃŸ]dø½\"i~[d#ŸQ¸“è‹ó1ý~5å+¸‹ûRâÓM¹-¥b6TCòýÐHükµøÅ«Ï{­éV÷›¶Vè²ª”ÊÊÏþƒ^c#–’FþóWB<°µe•%¾ÎwƒPI¸8!½\r5ùI²;9‰-ŠÔ‘¤)\"Mi2Ïi4L§*ñ±VB((Ïîo¢üUñ%„BßSh5‹.ên8ÿ\0xsùæºýÆ~ÔY|¹/¼)~ØÉ€æo~Øú^3ž*kXÒI0ëœÔ¸Eù\r6}=cy¯A\nMc-†½cÚh%&°ÊŸ¥hØxËL–_&þ,çRê3ü	àþuóŸ5ö“qçé·sz\nçëë]®ñWVH·‰tÛ=n×¡2(I1õ¥g*?2®}º}äˆä†UÚÑÈWSØö\"¸½{à¿„uRe³ŠãIœ‚CÙK”$ú«dcØb¸íÄ¾ÔŠ®‘¬^xnäòmæÉ\'þ•ýEvÖ×þ#Ó”Ha·Ô¬±•žÂL±îàkG…Ø-sÎu‚ž&ÒØË ßYjÐŒb9?q)öÁ;ñêã/cÔü6åuÝ\"þÎw%\Zi!!z#t?Zú3HñÝÔ‚)É‚làÇp¦ÏÑ¸?…uj·q˜‹+£åô<\Z§Rqø•Åcä\rBÞæð4ž\\±°ÛµAWäÒeºÓ%–ÔC¶&C(”Ó½}	â…Þ×Aiôxì¦ 5‡îH÷ÀùOâ+ÏuO·örùÞ×Òeþ=õÛÇ¡uÈ?ªU¢öÐ™ä­o41Oqvæ\"ØBÉÄuÇ­X·Óf”››„ûBŽs#c§ ®‡^Òü] Ø¼\Zï†ç–×r]D<èáÏR\näÄ×3i«\\^M¦k-ÍÓ©Q’Ì}0+e\'$&’Ø»\"FŠD³¬Q‘÷cM¥J×fÖËÃ¶Rêz¬ŒÁã’\"á²8úç]×…>jš¡[¿]\r6Øà‹+R¬?Ún‹ÛÔû\nöKÒô3m£XÇirìœ´‡Õ˜òÇëYN¬V‹QÆèòo\rü+[yõYÛ_ÝÉ‚–JwÇrÍÜû8ë[bk›kag§Áo§Z…†×Ë½w·`:œ>3Ø×\'­i^b7—ìœœÂ¹å6÷=, ´š9‘öYÉhY¦F\rûÀv±Îyõ®{Äš½ÿ\0ˆ®ÖÕ·YÞdŠ$L¬h™ÁÀì{õ5·q5Í•ë¬\Z›}žðÏ±<ÖUêZÜì{í>%ul‰lçÁ\'ÔŽõp©mÎÊø%]sDèu-JÃÂúº~’-oõE7 ‘“ü\n{ÿ\0œóW4kõ×†÷ZÔ­mæ¶’(ÝC #Ž{zz×¨i¦åîßL{G…Ô‚r#f÷¦k}6îÆ+&žÒêçk˜ÐÈÍ˜ÐŽ@eþozÚ2O®§‰WRž¶;µ]üK&‘o&¯¯\\\\¹	r€\rØQïÇJ·â=2}á#×ÛO\\‡S€³ýáÓ<U¯	xÇK³6&÷HþÈž8ü¸îí\rËèÝÈ=yïÍcëž\Z²ñ‹e¿›U¹Ô-ù®‡…aÙA–Gjw8¬›ièËm¶‰©6­·\ZœvÑ3Ïou\Z‚PáN8>õGXœøŽûH×,áÑ6ñ}ÒIœÇ=+BåÍî«u¶(mÜKÛîËar	Çlÿ\0*K{›½	^ž%ˆó†œe}IR´¹JW¶7Z…Üº¦™©Ýh×òy6¥“8îÄ\ZÂžþ\r9e´ÒÝõÙ3ÝÊwînüõ&ºÐu¿3¹—ì,ÇoÊYå\'ÔÖ¶#ðþ…á6º»1M,k€Ò’	õ\0Ræ‘ß‡ÁNzÔÛ±‹áˆ\rìL²Ùbi—´E•›¹×¥u1B-×Éª²amÇ>µ>ƒs=Äq_Áh–¶ÙÝm…\\c8<ó×ñ«w[¤œÍrÛÜ¶[¬Û»Ôõã]*²ÄòµQ	ò§•—-ÀB{}*ìÈÓËå®\0äœúUeBÅGEé„lˆ\0»qÈÎjD€´/(ÆÄ`½yçÒ¦—æºÐqKGfÐÏÖ’/ û+!pìØÄHÀy­ÈbT`•GCjŒã\'ÜÔËr6äŠWlkD8ÆIëÇZ’úd\Z¬nùáI4è®žBDjû±€\04µôÐ¸Òˆc22n@9¯+ñ$òÞjðÙÛæ@‡{÷Îs]þ³u%¦‹{pb‘™#$ “é~ŸyÆ§®Dw[Ã™˜œÊÍ–oN1ZA7±JÑ¤¯.§cc¦É[îgŠ$Æv—ü©\'×tÝ?ˆ­î¯¥%Dx\\ýs^Usw©]–7×’“¸‚9?•Cb’IYÚ>É­•+ë&yòÆßáG]¯]ëÞ »·fÓa‚Î3”f˜ÉÏSU<3£jpÝ\\.¡c4·äm¼Ÿ^† Ð£¶\rÚc†a\Z·o©Ïc},Zv£yYÀŠèåOÓ5¦‘V9%)Mó3~;6B<Ô;q×:é\0í\Z«â^\rSµñ, [ûrà\0ÚòOÕk£³K+™7ÇµðyBv¾?Ý©ZkDÞ¶‘‘&˜-´íB[{ÉY´„£¨ÆžõæöY6œc\"½¹ÚÄÃs.‹ ‰·C\'ÊYHížµá1„ÝB‡åGeUSZS­)»K¡*èt\Z9‹ÏIæ•’!`9;ûVk+\"0Ý¸ç\'Þµ¼Cg“¡èPH­4Ð›‘‚s€GÔvÿ\0€šÈy~`qÎ0j“¾¢AdHO½vÚ_ÛDAmÙ8ÄéÐÍw~c´\nYFì1®ÿ\0ÁV·Pø³I[Ûm‘³²–\r¸¡þ¸ý+ª•HÅY³\nÑmht¥T(pó\0€\05‰©4Û¼ÉQÓ=7pMv×¥²4žO˜wª$çµqž(¿Y[cC2n+hÔJI#–7k²¼3’@­ë6Jç4}?QÕ%F‚ŸãaŠê­4»È£í¼bEÆk£ÛÁ;6S¤Ë*23švÑŠ„¼ðñqjëÕáIå¼‡PÑ´SŒ¶d8Én‹únŸs©ÞÅgc›s&v¦à¹À$òH­Ãà/ÿ\0Ð7ÿ\0#Åÿ\0ÅWm¤ZøÃ—ZƒÃ¥uÒS‰Àm©´7Ì@äŸÄ×7Œ51¯}»íw¿fûOŸöOµ6Í»³åúctü+UFÝ;XÑÂ1Ò{˜ú…Î—}-ô^UÌxÞ›ƒc È$t\"ªƒ^ã_K×<\'g¨Ã”\Z¬×#ÍZePFã€ØázOjâ¬´­Bú#-•…ÝÌ`í-,à8Èy­9·ËBe;\"¦x¤Ï£6…«ÃË.•~‘¢–gkw@êIÇ³\rZiìM­¸ÅKhzçþ™·þ‚jñðî·ÿ\0@}Kÿ\0_ü*7Qžkˆ­l.å–,Ç*Ç1ŒFÁàõô5<Ë¸ìÏby¡{k›xËÉÂQòädF*úSÂ¾(Òµ`WÏm3QŒ\räÆ~§Óë^-­ø[_ðÌË-¬Ï³ªÊ#zGíŠw‡ômSÄuIÕ¤*æ6»Óí^UÝ€J¶ÐGB2c^MH´õ=*sOcêeºA‹ØÔá–>CZžŽdÝ‹ éòœâ¼\'ÂpüDð’\\¬z?ˆ.­²­¹ÓåxŸžA]¹^3Ò½\"ß^Ñ¤¼hnÄúª¡^Xå£ØXä|½GQÞ¡\Z¦™Ù2‘C)!†Aª©`¦ÛòSþyc(Õ‹câËºŽÑµ-/P‘³°Ù]Ç$„Ÿ¸O\0“Š¸Þ+ðê³+ëÚ\\n„«G-ÜhêGPTœƒNö‚É²Á¬ßcù£?_J.å·Á¸L¡çÍ‹æ\\±¼¶¿´K‹;ˆn­dÎÙbpèØ88#ƒÈ#ð¬ÍSPÑt¹ÄW:ÅŽ—pë¿ÊšáräŒíb8È<ûUsw©ÄS¨ ‚OB§š˜‚<Õõ=k ðü—)zÎ–.$`‘µ¥Ün]\0m9­ë{Éíâj-ÌóÒ3–ÜQnÁsF0B3E~¢œ$!SïPÃ5µà\'GcÁ R«¶å=šÉ3T5½ZËCÒæÔuI¼‹8vù’lfÆX(áA=HíV‚•ÀC€;v¯œ¯|E{ñWÆ6\ZJ\\\\è¶0˜¤giãf@òo)ò‚N{`\ZMØMØö‰ž¿¾·³´Õ¼Ë›‰(“ìÓ\rÎÄ\02S’:×U~ÑO¹å^9øomoá[Ý.ê>óA²y¤žÚÐ$—r\")YXl¡9ùˆ-ùÖø?ã»j|=¨G4·Ð¼í}5É‘æýèÂFxŒî?wò×Q&ïf{?(Ç¥rð°<2uÁ¤iÄÇí?dò¼‰ÖîÛ·vÜ}î3œVÅísÄöòhÚ‹ªÌ×G(Ô¬L™…„œ§È½pŸÞ7çážûOü,MíþwÛ?µaó¼ìù›üåÝ»<îÎsžsI»	ÊÚåßñ2øvH£_üv›«‘Ã›%îÛSøÍ/ñ+[lýÖùqW¼Wˆü¦ÆR£ôªDOs3ÂÇfŸ7»ÿ\0JÖXÚ!Ù§ã=Njð“Þ»©»#–kRèzzÉÅR{Ó„•¯1/	zÔŠüU’¤Y*¹Åbú¿Jz¾*Š½H®j”‰±ydÇ©LÕ\0æž®i©\nÅõ’¤Y8Öz¹â¤V<S¸XÑI=éÂN*’Å<Òªâ-y´¢^ùª™4}h¸X¹æûÒ‰½ê˜4£<R¸Xå€ç\0ñJÚ@Š$óK»Ž•àž€¤ÿ\0Z‘zþÁÉ” ÷ÆhAÓÎ“=Zjžx>”¹çžhþ	éŠÎ28íMRÇÒ…9 CW|;tÖ)ÓnXá<Á{ƒÅSçœž}êµá+‘ßÜUÄg·Èƒ3CÛ$¡®Åo‹N‘Ëð2çŒŽAþuÜÚÎ—¶š}à?ññn¬~¸æ¹À_L¾^öì·øiã%@À\\\n¥2`ÖÃ€êt#5JhècF\\ƒŽj“Û©“xù\\taÁ§*`ÖuÃ•à\n›Ø«›z‹oôø…¾£\ZêV8ÚV_¼£Ø×YáÍfÚè‡ðÎ¥äÌMÑÚ?à&¼¹˜·SP½²—™IF^¤Òe&}¥øÅ<ÕµÖ 6·­÷OÐô5ÔÇ=œÊ\Z;…ø¯œ4_ÚÄ¶Ú´K©ØŒK÷Ô{\Zë´­_E¸Œgø’ïLÈæ	Ð2¯Ó\"²+CØd¼³~y|Ïd®[Yñ–kr\"¶d¼#ºyÒŸn8q:®© ÛZyš·Š5-F?ù÷´@ŠÞÇ\0:ËO˜¬dÁÚU¾›	ÈóØnŸñúæ¥S\rÃP¹Öî¡k­bößÃÚ_2IÎÃñáq—>4ðÞ9mÆMSQ<CP\'“ê3Éü\0¯?½¼¼ÔõB5{‰n¥?Å+îçÛÓðªzäk	‰Ð`\nÕA-®vÞ<×5«Ý K}zâ9ŽÔý:×	Žà1]g_Ìð¥„Àü¯·ùW ’TtØ›šÐ¶Õ (÷¤šþÚÆFÿ\0f²]þûŸ¥7\0tþTÀèíf†á‰ÇÐõ­_\rž#¹[+inOà0?pë¹tlU‡<WGá»ÙWGñ=Ìç%-ÝO|»âôØ¯hìaBÊœÈÄŒòNj{Hînå¸ŠÞä/9c´(õ\r2ù›÷vó`Ž*xô\rb@LvŒ7q’áiXW(Ãy{Ÿj°ëÏZ@€ÊèkAü?ÿ\0I6ññÐÊ*&ÓâOõ×–«Ž¿¼å/˜wR(Xm m«LºTg÷š¤ýÜ·ò¨ÚïCŒàßK\'²DiÈFÝÀàœt§ïÉÎÓšš;Ý-Û¶ÚÃz,\\š·7óãì~Õd€Z&\0þ”®âSå*lQŽ~µ)¼Ÿû5¬€ŒDÏ¼á~b~µ½oá¿Î Áá@ƒ±–P?™§oàNÛ-&Ð· \'ôÍO´‚êo¡Æù—s[C´C¸è([K—8Hsí^ƒoð¯ÅÓnµ»oúä›ò¡ÁËÇÇÛüSvëÜE_×&§ÛÓ]F¢Ï5K 9‹h÷¤h\nñ$ð®=\\\nõ˜~\nhyëTÕ®=wJ Òµ-¾ø:´ù&#¼“¹Ïäj^\"PgƒË-ˆbd»ƒpç†ÍB5=HfsþÂ_KZøÂv ´ŽïïçšØ´Ñ´Û5ÓN´}#ˆ-KÄöCäó>\\†E¸ÿ\0;\rNëÓÊŽjý¾¬Ü‘äx_TcŽ²¯–?2+ê@«…EQíÅ2H·÷çÜÔ<Lº!ò\'k:N¯¥_XÁ¬Y-º$Å¹ÃŽÙ$ŒúôëíSêš<Úyg:……ä\n7…Ž@÷½ÿ\0Æž´ñu„v÷’´2ÂÅâž3ó!=x=Aô®[Jø¢Û¸mKU¾ºŒ6ã…[ëŒŸåZC­ïn\'Ò,5êB×L·iæ<±þóÂ½ÛÀ^´ðÄm}|ÊóÇ’{™ÝP2qè8¯BÑ´M\'C³[]&ÆXGh×–>¤õ\'ÜÖ\'Åèì|ssê2-˜qü(yý6+~u”êÊ£å[2’±ó7‰nÞóP»½”þòáÚR<;€üøV\'¥­ÜyÎŠ/˜í9Ç¡<ÀVw8®Ä¬¬f\"õ§À¤_½Ö—<S\0?Q@žâûRº~´\0ÑÉæ­YœJ1Ó½V\\ö5bÛEúÐâ¤Æ(Ç€­%´r2Œš¹¢êºÖ(}S¹µÁÜQ[(OºžåLÅè½÷ÝZ|V{¨–ÛÅúž¥C4Ck|3ô\"ºWðÞ¦Ê¾ñ%Æ“7kÀ@È×Žmr*)-#“ªÊ§’/mv})¯â]n¾ÓÖêØùº{™2;~ìóù\ZØÒ<m¥ê#isŽOŸM­Œþó>‰®ëþ+ýªÜÃ9ò‹nþù9Ø[üNŠùVxzÖõ}¸Ã|ÿ\0B+7Dw>Ž¶¼ŠP<‹ŸF;I¤H#·šI¡¶‚9eåäHÂ³ôêG^ƒò¯ÐµSeÿ\0„_ÅYKÚÂü\rƒØþ†ºxµÏhËON3Û¨Ï›§¿šÿ\0pò?:ÅÒ¶Ác¸v-÷©…Eai5Òµ¤D—¦Ç93þë`þUÐÃ-µÀýÌ«“Ù¸4¹Z\Z*L„Œ©<d…8­™ eŽ*ŽA©h¸ÊÇ9¨i–WèòÎF®[Uð\rŒù“Nso\'÷X–_Ã=?\nô)`\'8<UI\"#¯QQkloDá¬Yâú¿‡nôæÄðJ#ýbœ­g©ÛÇ¥ýÄhF\n«eH¯te,…CØŒÖ&¡á>ësEÙ¤nKCÆ~£½ínwÓÇ©+TG¶£t‘$WV–÷(ÛÀÃb¨y¯m;K¢\\Ii\'ïmeƒzv¯DÕ|!q‘Gq÷“å“òèk“@óÉ[{„Š@pc»ýÙü=kXUð¸|G½Î;Ã—Öö——×Z’]Or±b!$®O8ý?È­ï\rë:uõó6¥4ö—Dâ41þè÷lðh»ðÜ–HL÷p<˜¥W\'úÔšo‡õÌ\r>ÚY—©’t¨þ§ò­%R23¥‚TeÏ&ŽîmFêÊÞ9-Qî\'ùAîØ¬/Ã7Zæ¤.õ§y¢‰„’+œí°õª°xoÄ¶¬ù\"îR)ˆ‘©o¯êÚ$^£k«ÿ\0=ˆcùpk(»u:Üà×ºv·æ,ªD6‚£§ðàV]Î]û|À\nÉ‡Æ\Z|ÅLðÜ[£¯ÊO~N*ÄzåŒ²m\'‘þèÆ*Þ†põámÌ\nóœdS¾Í’8â²µéz|¬®,­Ò†öü‡JÄ¼ñÇˆ¦PÚv…eoß‘î\\—úã#LTÙ²åUGC³ŽÐ»qMK4)ond¹šX”rÒ¸Pã^s&¯âKø™gÕç…Ü`ýŸè@ÏëY±øFïTeÔõI¥NZY”1ú{ÓQ¾ìÊuÚWJç Üø“Ã¶›ûH]KÔGh†RÅRÕ|w£éqŒÛÜM3.V\"¸#ëé\\Ô––˜4[aZá€2?ãÚ±fÒQYˆß Ëw5\\°êÉöÕ\ZºGBŸ¯/.âƒOÑlížC´<²»cëòŠƒXñ‡‹’w[{›H\nœ´Ãgñ ×Ú¢$ \"ÁT‚I\'ªß‡e(T[N$ÃSi­=œV¶9^&oÝæ-K¬x‡Uo³jÚíÈ¶fËy­¹AÏ\\cµ>WÓL+w÷7E$ÌŽÃ\r×µt–š}žª1 X\'ô#‚jµç…d°¹I<…$†Qi¦½¥Ì÷w?öDvže¶tvyî”û\nÆ›MI$3\0DRr#°ü;Võ®£­[jñ^ÝÄnàŒ8#OBÕ\'µ–êÙ¬á\\.è¥l‡,OCê*•Ñ‹]Ì6Ðˆq5£Ënã£/µíæ¼#:žŸ§iœL	F=ºWMaáûˆ£ºÖ<G{5Ô1\0RÃOfáîqïÐ~u‰¡jöz–º¶šm¼Ð$ŽÑ¢Í×8\'Ÿ~)9«_±šwØX£×.#dÑôˆô‹983°Ý3éTllôÿ\0³\\_Ãysy\"¹ó$u\"]Ã¯áSØé¾ µÔ¥¹¼žæHK41Æ²½zdñÓÒ¶ Óa²€¿˜¶‘I¸Ë\Z¶g®MRjÚ\'mÌÅÕ¤OŽóR³Yì$‰îøc‘O¼Ð|7¬¬/k1ÒuPW\'tn}ÿ\0È¬›¯øG!ºÅ¦›-ä«÷•Œ`ý+cJ·Õu)IlãŠ!ª€*¬+ÜÌ×<5ãýF=Œf„QË¨ªÊ:}â*;o‡¾*»b³ÛZØ§w’en=‚“^aewµFçSWî§§@ÓKuD«Žy>Õr_	Hæ|1àKM\rYÚá®nÜ|ò€=€ì+~{_²ZË<lCF¹Ó‘[6v÷7:mµãÄŒ³D%ýÎHP}Mbßjì<Bt¤³QQy—äí2©éåŽüŽµœTÔ“zƒ³F-Ö«+ÄÈè0	`AêkÂâ-GÅE/ÐÉjØ#<á°­nÉ{á+­1u/Ýc\ró[*€Ãžx­/¼+¤—V÷€HpYc€©aLu®Ùâ–ˆä§	AÙìul-º|áQxF*ŠueóÕø=WjÝ±³»nlî¡“æRF*èIÑAA½}ÍdªXé²1‹ªÈ\0 0<’1ÅY’ÎÚxÝˆž0	,ØÀüjÌ—dugSëXVúpñ‰.ìå‘¢Ò­\ZHQ±¼¶p>œV‘©r\\OZøÅ-Ä?uW²‚[‹€`H]›3F\0uã5áVöºåÄ~bøT\0öh\nŸÈ×Ò·s®¥¤ÎtÖó›!F>^AõÇjåæãíg|íþY\\½œc?ZºX‰RVDÔ¦§©âw\r{b…µ2þÑ3òÛ°_Ï¯Døs‰o´9¥ðÖ©god.YePI}«“÷Œc¿jô;‹y-tØ¤Ÿp•ßcÆÄÇ?Ð\n­ñU¶xSoxôjVßYu-–¦j’½rÎ¦ëmk¨[x®òÚú„¢Â6áH`à«Ôÿ\0Ö¯ñå…®•â«ë;¼«hölMÅ±˜ÔžI\'©5Ú|é¬žÇÈÿ\0Ú•Ç|T¸Tñæ¦]Üy\\(ÿ\0¦IWIû:Ò‹z[Ó°¦¹ šG¹xƒVƒCÒ\'ÔnÒW‚»– °QŒ:‘Þ¹Ø5mB»Ónm¬®£ŸÄî’S»æb.ay—øsßÚ¤ø´Y~j¥#y[÷XD\'÷©\\Oˆî£‰þ$ÄÇ$ÞHUaƒŸô~>¼×5(Å­^÷ü¿ÌÚm§¡«ñ“L²´Ó£Õ¡‡mýÅÒE$»Øî_-¸Æqü+Ûµt×^:_…õ?ÀÒC¢_\\Ê\'YÂ‰\0“(ˆpÀåS?#Ía|v8ð™ÿ\0§äÿ\0ÑrVÏÅs\0j‡þ¹èÔªÖQ„o×ü‰ÑJLã´=ã¾½bú¿‹tK½%.#k„H$’Ãz€ %r>ðúŠÁý¦|3£ØéøšÖ\'µ×.ïâ·ší%.6”\'oD^Ý¾µÈééquuµªïžwX£\\¹˜àž&“Æß¥ŽÔ_k\Zwöt n`•	.A8*¤ç…<ãñ«–•èõk_txå…õï†õ˜o´»•Žê Z)BÀe*rÐ‘]†ÚöŸâ[ÏÎ²j÷P½Å„ˆX?k³€	bœŠç¼E£Ï¢_‹[‰Ò| t‘ARHäv9›¶Wv¢”$ª‰‚õ®kY´Î„ïª=Sà‰uiuS¡É7›¥[ÚI$pyh<¶2)-¸\rÇ—n	ï]ÅMOÁþ!¶Oè÷÷·ÆÕJI•Q÷ÂœH¼çqéß­p–^>ñ>šË5´ëqFˆ66CùÐõ÷#Þ±~\\ÛÙüCÒg¼•b|ÐÎÝbp?R)t*ýÅZÇ†’ûI¼ð.Ÿy¦\\ÚHe‘îü°*c 3¸à†üû×¾|2¹¸×|\r¦êw×\rý£?šd™SvÙ]FT\0:\0:Wž~Ñ®²Ãá©\"•%‰¾Óµ‘ƒùeÜWyðQ×þžŽ¹ç÷ßú9é­ÖŽÇEshÊÛ®!Éí<x}E:»¨S!–òø8ü+UXŽsU§³†fóùsÏDàÕß¹bÚ^ÛÝ`Fûdîò‘_0|ÿ\0’›£Ûoý%}#ufø|Kp ­^$…|ÝáŸÀŸ4«ŸÅöE$†;þVGA÷3ßŠ™t±Ý›eâ\rOX±ø§g¨ÝyÖÚ|wZ§–«å®\'È\0žzç¥pß\0\0o\ZÜÿ\0Boýz¯Ž¼i¡Ý¬×Oš®Ÿ0³V…ÏšZ>9Œï^¸ë\\À_j–ú¼zäö»t»«i\"†1Næ(#h;‡Ün£µ+jQïŽkå”çãj_ÿ\0íÍ}Lýëå¨ÿ\0ä·§ýŒCÿ\0JhK¡‹ñ&_´xÿ\0_`s›¦Qÿ\0}b¶ütvè\ZJvÎJæ<RþuVï½oýºOˆLž–€ôþ•hÎ[™šhÅ’jÐªÖQûŠ²:õ®¨l`÷´áL\\är)â¬‚E<Ô¨F*ëR©¦„J½*UÍD½ªE>•hDŠiËLZzÕ!/AR!¨‡J‘j‘$ëÒž5\Zž;8«ðxqŸÂšMÍ ž(Wÿ\0•6k‰Òfý+¦‚Æ(aÜÖëªKÌÒ\'3ÍFzt½8™ÈÅ\0Ò¼£¬vx§/QžžÔÀ¸<óNço_z\0ÉéJ8Á¥<–4…IéÔPn±íN‹R9÷§¢ÙÎ}¨\0PªÜ’M,ß¼Ð¢œ|SÁqùU =ÀwmqàËmç2YÎc>Êy£ªB$ºhˆù.bhÏâ+•ø]7úF¯§Ä‘ù¨=H5Öß16–óÿ\0šoq3Î,óöeFûÈJ¨â£˜sïWõ~Í­ßDŸÎ_£sþ5VeãÚs©äcšÍ»CÏµ*þuŸt™‘HÉÆ)T`\n{¨.p)šÍ,¶ñ8ËÆ­õ‘J™ŽV©0Â®-olŒk—MÑñüB ðLÿ\0¾¹²òåò4èg6·ÏÙgéDvM§ëFï’>áü&¥†åfÒXuàc\n åŽ)5ÛWº·bÚ$V$óÔb¶üc¦®£yjñÌb]™$¦›i¦9D\nXª¨ÈëRb\rlùŸ\rl7ÞÅ ½°ýUÊ à}+±Ô­@ðF©\n1qË.OQÈÍqðdÆ§=@4Ðƒuƒ¨9©=±Í(CØb˜Æ¯lÖ©1ø\'Zqÿ\0-o!ê5ž±ŽkFÝxWU0ßE!úŠÄ½„Ó¯ucUƒO‹Q’ ã.äà\"’Oà+Ó4„S_Ù¥Æ­âäó	dD?ÃØœôãµyÿ\0‚ol-Eô7øYå’‰Ï*“¹sÛ<WÓÏ¬A2Dé§NAA˜Ú;VUäãð—¯©ç|ðø!®uùýšAýj[ü\"ðl\0oµ’SþÔŒsú×bš’àíÒî?O:#.\\ûµr9MîË÷L+O‡þ¶ÊÐ­\\úºnþu­iáí\ZÐ£iPãû°¨©¾ßqÆ4öýúoö…ç YGö¤©Õî=±Á’8ÓýÑŠ~à1‡üe½íÈäÛZƒþÔ¸¨ÛR™9s§§Öà.T5LŒSMÞÇûÕuÐ€n½Ò“ër¿ãQ7Š-Ðaõ\Z?ûzOñ¡Dw6òÄôlSÔg£sø×3\'Œ´ôÆÿ\0èãé:Ÿäj¬¾=ÑüÞ(ÓÁÿ\0gŸä)¨¾Â¹Úvˆþ&˜W/ÄNÅ0ãýˆXÿ\0ìµVO‰Þ\Z{ÄÓ7²Z¿ÿ\0UÉ.Átz,‚vÆP=¸É¯4“â·…×þcZ„ƒý›fþµMþ.xYü}ë2ÿ\0»\0Í…Îo s#ÖDRqÁüM8Ç&>òƒõ¯“âÿ\0†vü±krwUû5T—ã‚3åé:›Ÿö¥Qþ4ý”ß@æGµùoÆeAøŠiL›˜ÇÕ…xk|cÓH?Nÿ\0ï]þ&«?Æxýß…¡#ý»’öZ~Â}ƒõæDƒçºˆ®kÏ~&µ¾·ªè–-,Ëd¾piåË2€x=±ŸÎ¸	>3Ým\"ÛÃzz7bò;…qz÷‹5Í{Q[ÛËŸ#b”Ž+‘#SÔïß5P£%+±9]XÄÔdYu;“\n1Ž2F>@p?APž´¬\0l)¬ÚëFbŒdPx¦ðM8\r\0)éÒ‚@Cž¹£>¾”J14\0!È©b09ïPÇÚ¥ïq@j2<`SÀàS\"9EúTªÞzÐqFÞiàp(ÒÆ…¥ž=)BŒq@\rK€Gµ)\0}*(äy®>Ïg—3Ÿà‰KcëŽ”l–qKŒ úâµô?x‹C*4Våa^»o›Oô«VÞ\Z»Tj.ž‘Fs©§IbÑŒFœ\nÍÕŽÛ”¢ÙÑÃñÏPUÆ^¶¸ãh¶`}p¡®“D¸Ò5Sá_Ío\'l¯*=‚¿#ð5åïlØù—qU¥Óáp	ŒnìqÒ¢ë¡\\§¾G¯x—FêZoÚ QŸ2ÅüÞ?ÜnZÙÒ|q¥jL#‘Ö)‰Ç–àÆùôÚØ\'ð¯Ÿô¯xB\0iú¤æé§zcÐÓð¯CÓ<AeâO\njø‹H·”C¿ÍòÓ$lêFO\'ÄÕ·=v&µ¸ÿ\0S(\'û§ƒD–`y&…>ªox­áŒ-Ëë€Ïå] ñ6‘Ÿí\r<]@¹ËØÈd8ÿ\0q¹ýk7O°#³’Ë=ª±²ÀàÕ\r#ÇšF Â)_ÈŸ yr©ò{mlgðÍtËmr Ã*’{\rC‹[…Ú0e´—\0¬ëý\nÞù\n^ÛÇ*QšëÞ9+Q´`‚1QÊi\Z­lq~Ò,dó-ì?\\°ÝÎµšÚT@U è·…¾[Åfßjº^±*E7Vâ4sûÑç¾{gê¡O™Ø%VMjUµÒo/Š…mÔÿ\0½WaÓ4++€·òÇqpGÚ!Hôihúæ‰®ÌñÚ_CÌ@ï…ßc®Â º»Ò ¸ó£³÷j~Y$\\ ?Ö»!J1ÜÅÕœ´5çÓbÕm|™­¡º´qó,è\n~kÊ>#x@ŠÅ£Ñµ‹‹9Ã6ÞÑ÷Ç°‘¸dôüÈã®³WÕ//ý²ãËƒ´Hv Nõ5”·–ÒÃk	\nãnö\0{UM¤‡IJ.÷8Í\'Áv–@6—\Z#Ç›Œ¹úš¹7…$‘³$Ž}Mv\Zt–±*g ®„ `kÏmÞ÷=Y¥dpCÂåF„¥Mu¥™áŠ8Ý–Þ¢€:zšíÂ!a»ŠÊ²B.î¬X‚ÑŸ5xêœUE»2eU¶®qòxxf\0z\n†M!-GœÅ˜(<mÝúWxð„°À¦‹w ˆéíSÌÂUGžK0¸ÓP±;²ºq$ÿ\0ã´¶\Z*ÜÝ\\Ìlü…gÈ&-…½È¯IV”.	 Ós7Ì	÷5Nm«”é{9s^çš¹`•oi–ÂÝDdù±rAšÔXâ9Ü˜©Ý:­\nM¹_r«è–—JZÝR9?¸G…sº×…\"žßkAÇò®Ò$ÇUüE_ŽE’!ê%O~¢¶…NæGŽ›\r[G‘šÁØ†ìNç\\L‘êñk!õ“j‘¹fÚnöãŸÆ¾‹¹Òa›-nIªµ‘>ƒÎVX˜eÍlš1²[G&¯yrDZh¸ºv;Ì“7zâ¥¶ð–©ªÈ$Õ&r„ýÜô¯\\´ðåšï–8 ìà\Z°·Vñ6Ë+W”ãa€)ÝEh+\\æ4Z[\"°CK0­ò–:ríšAÿ\0,ã\\ÕÖ‚{­u9Tÿ\0žiÀ©¡ŽqˆbÔã­fêö)G¹’Âöç8£´‹ÔòÔƒJ¶uÆë—þôœÖ»°n æ¡xÁ_”â²rliX·à›¸-éJ¿f90ÑAêŸNô¾(ð®©BtýnÜ\\Ù8\"Þäq,$ö\rØŽ=Ž+2ÎÂçQÖ!µµ;vòJB/¯Ö»Ci¨G+Ú-»ÜÚ²¸üë¦“vÔÎK]œüKðêÿ\0ÃÓ‹XØ=œ§ýê5eïµÁèßÎ³o­uË/–ÖÕ]2hHrCw¯¦î´;ëË9,®í`žÎA¦PQèG­yõö¬ø~Y!Ôìî¾Ä¬U.oŒ®pÒ®M­„’z3š³t\niv¶\Z„sNN$1¾Yr2^*\r7ÄSÛë¶°Í4¯ŒUÃ6sÇVÖ­¡ZêÖ¹‰\"ŠsÊÎˆ~c­cEá+äº×¨Uy_“~µŒgtÍ,wÌÒ‚JP2…Gà8¥“ÅZÃßÛÃn·Vê¾\\o»îž¹ú\ZçóÄÚT\'dvw¶ñŒÿ\0+cê+Ò¾é˜ÐN·¬F\"½¹ÌdÏF\0}G4S¿r]\r*\Zñ$†y¤¶±œ…bF3ééÛµh>¹o¾ké6â\\ïÜž¹ÎÞµÏÚë__Ì¾PŽÝx@O4ë×‘Ò·$“Yñ³K$ˆ¬V6rUN1XÓøôXisÚëZ|z¸š]Þ\\ò¸ùp»J¶pW5Vú@=+•	çj—\rædcrñÓŠI\\v4nü|¯¨é—\Z&ºDvò‰.`µŸbÝ\0T…}ª¹9ïÆOø¯þ‹Z]®—ç,’]‰Žê®ÒvzŽÿ\0Â+ŽÔ!‰IÎån~aÞm«ÑµÐŒsÁ¨öÉ«±8ö=kUñéÖt‰í#°HP¸qq¿0=6JÄÓõid½Ó†»oöˆm%I`w$ˆÊÃŸt~Uç²M=£ªÁkóARßêZÌ^T·;ba÷ŽtO+f·ÅŸŠ©¬Ak¤ÿ\0cªD—^wœ.·–\n¬¸´`üÙëÚ®øWâšA¡ÏaªÙÉ®‰eóOö…Ï ap›Y[ È÷5ãþ+¶ï-E²+”œ¶	§ZM$H†êÖXÈx.ì~\"»(¸Ê6lSMjv³ø¡¤±Ë‚ôèeBR9+ƒ\\ÿ\0‹¼Kwâ=FiÝç†ÍÙY-\Zré\n p2y=;šáì¤Žî=ÐO™fÎjô3º’­Ž™®¸F	ÞÚœòr9[¯Ou {­bYœ\r¡¤ˆ±Ó%©öÞ³1L.îåy›o•*.Ã3ÇSxü«±Ru¤d8£ØAk`ö’ÚçšßøYÐØËo-WþZB>`=×ÿ\0×Xð]E=Ìr¤ßcu]»¢\\yç‚=q^¼)¬mgÃºn¬Í	‚äóçCÁ?QÞ°žùMc[¤Ž!þÔJUÖþ6F\nÏ†)‘‚B°88Ç#ž¥w¿uû-\ZPú¶»wö3B¶%Y£‹†ßÇ¿ÄUô[Ý61°=ÜÉíÁÜ£ý¥¬»Ÿ³ùÊ—qœàš3†Îâã¹Ñ\'ª>¶°»‚òÑ.tû˜®­›£Æá‡éÒ¬,ªÝFÖô5òç…5KÃÚ²ßX]´Öì»f	Õ—ý¥î}ëØ<;ñ&ÃQEKÔ\nÝÇÉüW¨¤jÏG‚1\\ÏŽ|aâÍ*x%ŽÞ÷THï¸’H•\\6È8<Ž¿ÄkbÆîÈk„žÝ[8ö>•ee†MÜòAðŠùo4¹oüC.­e`èVÖxIQ+˜Ô3\n¥z&gŒ–öºyÚFI[cŒG’IÚ\0©\'ó­Àp84Ù\0i™AaÐ÷¦´Io¼#«kú¬WZoŠ¯ôxR··µ˜3üH¼àÓµqKðVçíÆ÷þ¹…à?Ïû!ó7çvíÞfwgœõÍ{;tª×/åÙÝIýÈ]¿%4¬„Ò>7*·ŒnæW[­­#ur©®“â™¸±OîÇ\\æûÝ}û÷,ß©5¯ã‰wêqäªT´2–äÖƒ±aR¥6+îŠxé]10cÖœÔ©\0ÏÒ´$UëR-1EH¢š\"ôéOZbŒbž½*‰<TkÒ¤D^¹©ëQŽ”õªB\'^Ô¹÷¦-.}*Ñ#¨\'Ž´ÜÒ@Ñµáh÷ÜO.3´ú×BËšËð\n‰ísœŠéd¶Çjñqrn«Gu(ž0ª}iW gÍ(ñŽ´â3Œž• 4p£Š9§ã>¦‚¼M\0\"¨À÷æœÉçŸJQŽëÚ¤QÇ\'R1N\0‘Ž„úÓÔdài	\0œ“ÐP\0Œs“Jªò>ÈÕ™½f­[i×2ÛG—×¯5J]aTIkf¦„‰FcKl†¢Í¿\n8Ò|Y§Ís,hgc	@Ù8>µè“Ä|«»sÕXãØW„^\\\Z˜Éß‡ÉëÁÍ{×œ·2Û\\§ú»ËepG®*“º¸IXá¼K/¬n»K…¿Þ_þµf²üµ¿â¨3¤¹æµœIŸöO°:€AÎyª%e_j£:pkNUªS©Áõ¤ÆcÈ˜cÅFTcŠ·0ùA·žjF1N*L’´ÆàÒƒT7	¾7_QŠÙÑu\r-L§/îÈïÅd¿L÷©¼#\'•®ÝÛòÏåâ€:8–ÎT1V)ÈéZ7Øø@2zšÍ\0‡+ƒÀÖ¤ƒ}±öYäâÇ‘¯ÚÈáRâÍ™I?Ä9ÅÚÀ™ôÅu^!‹ïzb¹X¾QƒØâ¤dÄæ€@óLÏ4½ºñ@LïàšÚðÜFæÇÄÚhåç³Žå£9À¬„Ü\0À­/Ý\r3Äšeãÿ\0«åÏ÷ƒüèÝŠ‘%Í´dŒ1šÖƒ[ñ½º[Ûk—ÑÀƒ\n‹1\0ALÕì²µýOOjE1hÆ?å›r¿¡X¸$N´ž»2ÑÖ|@ü>»¨Ÿ­ÃUyua‰ß«ß?Övÿ\0\Zh“9À÷¦ ’NQI§¥]†Fóê–Ôn[ë#Tj\'šSæ]LØ|ÄÖŒm13°ì£Š’±Ù`\\Ì¹ÿ\0žpüÇñ=H³lÇ¬Î\Z¬×»±úÕˆæŽ`Í²¨<ri¹§q”yêM5¬âÞ¬’{šØçƒG0ÊëošF>P9§ýž!ÔRÄÇö&ÇjWbäF;f—ÊŒ§=¨9õ\\Gƒò\nk$`chÍ8e¸\\“íNhÂÌÛG äÒ¸È×hVA§*¯B›¸tÖ¢ ä’sEØŒ¥ ŒzÒŠE8%ÐŽ\rV9Ô™çÎh»ÀÜ\08àŽ¢±¨ÖFOº\nx’6ûÊGE\0G)F3š|À6¶áQcÖšåÁ<ô§SGQJ4\0®jCÄmÍ)h yNsÜPS>¢§9]zdTñúç³oÌj}*Êôªv‡÷kWžô\0¸$zR…?(bž£¥\00/5’0tŠ¤šw;R(”³9ô\0U€?\Zè>L¶¿íÄ›GÚ-¤…Kc†ÆáBqŠOEq’è¯ï‚Ïâ	Í³r-a`Ò°ÿ\0hô_Ô×}¦é–ZE¯Ùô«Hm¢?x¨ù›Üž¦·¦7’êU½i©k2qô<Wå9îiTa¾œ³’JãÞ«Ï£F d×C(ÛÁùj¹>Õ;q·zW\\-cÜég\'úW£¼jF\nŠ­5œn1ŒSRhhó	´ù9É×ü4´7^Ôì]x3ËSèè?úõzçIÞ>QRøSw‡ä»žlsÈ²y¬\'¦¢z£ç{W6éÌgl‘HØƒš÷ÿ\0kzÇ‡ÒÂëFº!d˜ÆÑ8òägò5ä:¿„µ[tº0@’[™”#e€ÎGê=ž;¿é÷\ná®¢x$xÔüÛ¶a‡àI®‰IJÆI4déÿ\0tÍcþ0ðô2u}²îÇü¹ü+¯ÐåÑõ6Sàï¼À[+†G|~Gá^i¤È%y%R	b@ô`é1uµ»0ê)5Œ´ŸSèØüCâmOö®ö‹uÉól[Íã¶PóúÖ·Äm\"UlÆãªÌL,?àº\'ŠüM¡[MF[ˆ\rÏïƒ<À×QÄûk¥Æ½á˜¥d‰ƒø0þµ›…úA×~-iº}»ÿ\0g¥¬³€p|Ã þ+„øe¡â­OÄ\ZÖ¥«_DìÊ†8_brH>À``zÖ‰üU§êúlöºV“ö(¥\0;•PÝAÀÇN•«àKÍOÂÚH’}>wµy|ó-¸ó2¤n^¼Ö©G–-­š;Û_¦‘¨YÝ‹9#q£RÅ²;ãšé`·¹˜)HL1œüÒuüªÆ¶\Z’*Å,lHÎÀv¸ú¡æº‹;Û+¢9†ïî¸ÚZŽyìÀËµÑ\"¯&eóŠÔŽ=ªÌ€ÈjN@*N­g¾ár´–ñH>dZ©6ŸTÈ5¦B÷ÓYxùy©±JV0¦°qœsXº½”ñ:_Z¡7Gü´_Jí¶†ÕhaY<ÆqƒBÓR¹ô9h®óOóíÙ]QÜüU¥ØT0H§êSp÷ZlòXÜ8ùÌJ\n¹ÿ\0iMU†MZØ˜®l­nÑz:HQÏàF(qì5\"ç–àƒL0Œú\Z5;\'.d¸´—¦&Œªþ\rÒ¬O ¶\nKÈùpx4¹ZÝwØ„Û¡$šÃ›ÄÍ(wÈäåàŽ9ô¬­gÄ—V×Ç}iqLÇqBúŽœz×\'«^i\ZÕÜ¦Y¤s@ÖóêqÇZÖ4º±¶¢½ãÒ&ñiû»€‹»oÊ7ý^°Ôìo€kûiò:\0þF¸|?iõÞ[Á`ÃÍXV@daþÑ>~•V×Å\ZJÃª®»§²±¹d²1Ûãt\'îdv=ÉéÍW²OcRýYÈAd úŠuËÍ<!#‘Qûär+Ætëª^Å`<»H´qs\"2ŸR¦+±°ñô‚}cJAdy¶²dñê§ühösŽÂç‹:…Ó¡\r¾iZáýZ¬ƒ´\nÎÓ|A¡êxwèýÉÇ”Ãó­O(•ÜŽ®¾ªA¥K¿QîFqÞ›´ƒN;¸ÊÓJƒH˜È8Å@íÖÃ®@éš»§X.£¨¤ÈÉjƒÌ”ƒƒ´v«·^\Zw(4gX±´Mmo¯JWfƒ,ã±Ñ#»,<ûÁæHç°è}+Uõ),k25ŽÛO†ÖÚ6º²Qò‚Øp	Ï¡I4ðFd½‡ý—ˆœ~\"ºã¢2fÔw¬øÏv	ÙÆÃó«pTŒ‚=\rsoÓbý¢wÁÆdU;vâ25\r¸Q†’AóŒú\nv¸¬súý¤zoˆ/­´ØÁ¶iŽ%è¬@Ü¶sVît[˜Kááb€nRpr{\nm¬†Òö9ÑVI#Ï/ÎIîkTëm,@M§FÍÝÑÿ\0¡Ö²q‹zš«œŽ£p–ÓG$M+„©Áçœ\ZïõIÁŠXÀT`Ñè¢ª6½`b	sk2Æ\0hÃ`ûbª¥ÜrÞÚ1o”«(\'µ\n*;î÷+„	#2ñIq)+SÌ¡IÉëÍS›¦˜Œ@³Æã8â¹»bbÖ.žN¢UÛ=Ít—¿tâ¹Eö\\F£ï6iIÝ‘•ws@‹‡òùþ*µnÙDl¼ô$õ«/gä>]Ô)*¡…0xvÀ€Q§‡\0#p?:åmlÊ°Ù×xßý“Ö²od‚ÝIi\0lqÏ5³ÿ\0Ý®àÆâéˆé—©í´‹+gÞ–Ñ´Ÿßq“ùÒM!$rzn›=ä¿h™\'ðî&º+}9UFGï[\ZàeqŠ‘#]¼\ZÖí‰˜çF²—æ’Ú&ïcš«wáõuDòÂÙ\0×E³»ëXÕœVŒ—Î\ZãLÖ-[÷QZÝÆ=\\£…Tû]Üm¶{Iâ?îî˜¯Dh„q.!ˆr^B~µÆëÞ<ÐôàÑØ¡ÔnGq?^õµ<UDík’éÅ•£KË‘û¦@9aŒVN­ªA¦|“Þ,³tÙ8ükš×<C©k’–—e¬=¢‡#zÉHUI\'$ŸS]~Õµs5=M{¿j3ü¶Î`‹§“øÖ;nv-!Ë§Ö¤Ç>ÔŒ£”¥Ìi–Ä;ÚG!‡pjÝ¶±Ì\rÀýèÿ\0–±¬?Æ¡°°“VÖìtèÁýôƒq”rOä+Ô5ï\niºŠ„–Õct]«,?+¯¯ãY^Ì«œ®‰âcI–Iô›´Âì•[dƒŸ¥wÞ\ZøÆ¥–[nL…3Æ»$L÷dèßQùW—jžÕ´—2Ø1»„sòq ü;þ–uDºGƒR‹Ì|cq]MUîRm^X_Ax¥¬¥ àö>Õp9fPWWËúÞ²\ZÞ[\rIîC?—*@GZí¼3ñ‚òÒxí5Û6¼R@óysƒôû¯úS/™äÇŠÌñÞG‡5is÷-$?øéªþñ6“âH˜éW±Ë*ýèä•~¨yüª·¥ò|\r¯>y¬?>(çÊº:•»ùèÆ­ø¢O3TçîŠ§¡|·pç\0š“T&MM}K¨ýh¹‰ÓlÂ(ÇðŠhJ™ø8Ç@)\rv¤ŽkŒU§O\0R…ª°\rQR(éBŠ•WŠ†¨éOQ@ZP­R¢œ)\0¥HD‹Òž½ª1R\' sT‰%Z2{\ZAÓ¯4U!ÚƒÒ“µ!ï@~¼û-óy$zŠô…	<i,g*Ã\"¼všÞt™?„ò=Ez‡õ51+©ÝG÷My8ên2ö‹fuÑ––<¤‚FqN\0äÓÀã\'ò¥ã‚F+\"Æ¨äñÅ8ŽE8ØÏJÇlP!¸°´¥Kcåæœ¸ÇÊ8¡Ø8lž˜ 1\n@Ãí[z&Yüù†Iû ö§hšYg\\}ãÏ=«£ùUTaGëYN}¬cÕŒŠãÆÑÈ¬}Â–z±7³^ãN3õ­±Ø‘KšËÌ·©ä:þ—ªéJÑ^Û™!í<c#§Ò½gáý÷Û¼	¥LI2YÊÖïž¸çRÈË$e%PèG*Ã\"¤ðÕœv·Ö¶Ë±%>hQÀº)ÎêÌÎIîYÖm¼ô¹€øø…}zŠà­u²dòÔW£Ü’a·›©®æ²êW°vYK/Ðò?jŒÈUiWŠ¸Ýê	«„ÍVaÅh\\/MÇ^*FVaÉ¦®{ÔŽ)ƒ­1Œ~•^Îo²ø‡Nœœ)“ccVÜdVV¨\nÃæ/ÞŒ†…@˜lºaïW¡;¢aíYí žÞÚázI\Z·éW­§Ò˜ŽsÄüŒq\\+aeaï^—®E˜ÜcµyÕê•¹ ô©CœiÊØ4œŠLÒ:Í½Ò¤¹>u»ôãØÕL`äTS³,lT‘Ç84Ð/‰\'û~£kËÍÁ`º©eåOÔŒÖtV—R¨,#«ýãøWo£iZ-ï…Z;[£cÕ¹¹2üÊ…FK×7{âÛKfxô;–N‚îèn\'Ü/AS°®Igáý¶æiWdKÿ\0-®jþªwZž—e„ƒuô vcùšÁ¿½½Ôæóu©gö›ô6Ê+c>.¤tˆ.~A’O¥õ,^ë·ŠP¸†ÿ\0,âGÿ\0^³†ÔÓÎ2pÜñëŠš…ŠÖx¾Ï<˜Ä¬2Ê=½(Z1ÜãEOžEU€á×ž¼Už¸æ€ýj\'9Èîxéö¤Uçs¥ \0\0P;\n^8¥Ui“JÈ‘ŒÈw7÷E\00Ä…4æTŒ3óè95HÌ0 ÇAQ•IÐr~ì@\"þ´Å\0òÇ\'Þ˜ÏÅ;u\0¬}ºSI$ä\ZCøæž Ð‰94…¸è?*vF \ZaÚh\01Í4‘ÛŠxž\r!v‘@\rn:Ži¼cŠqVcMÛÏÀpúÒƒÀ¤#ò¤ã±æ€‰§‹r}[Ó€§±ÕTðC“š@F¾Õb‘×š®£ƒV\"ÇÓNÐþìUØê§\n>µ~#Å\0J½*E¦/JzP€Í2HÉ!ÑŠH¼«È>Õ(œ9â†z?Ã›ÝOSð¤³Ëxn.m®,MÎT\0FOã]z˜Põ»ÀÝÙ~eüëø1+lñ™8ÁŽU]Àÿ\0!]ÔDíÚàÄ\ZâªùfÑ¬Rh–’hÕ¢t™=Žiûb=Š7æ+9ôè‡ˆ$þô|Sd}BÏøRî<÷ùZ£FkcDÛ;r6•õ¢‘8\'æôªÖú­»¶ÙÛIé ÀüúVÄ‰’ÁA¢ÖknP|ŸðÕ…IùÀÅ_0GÆÂTú\Z­¤•ãØæ¥¢“Oc\ZæÉ;\0©]é{¡Á\\ŠèŒ<t¤*¦É£Tu¤’V².tÜ…ÅzDÑ£‚Yy5>œ’óŠ|ÖÍ¥µ‘AÀ8ªï|~uè:GøÖeÆ’ˆ$œG,ìz(J Î2áUcT<[j^*î«ëZ“¥Þ°ˆýèdù‘¿ý*±‚[¿XFchÔ!™PŽv`àãÞ¯\\Úµ¸/.sß½låk&B³:èº€ø³ÃÑùƒuh¹aøpS]F%µðÂž*[–þH‚G°Î~ã·7E²¨0¾¤Vl–‘9×Ä:Õ«?![±ô„~\'×4=£YÓ®aŒË[Cö˜±êF2tz7l5 0ÐÈ@çÉl8ú¡äWÍÚ7|U íš¤—0ùcuûÅÇ§<À×IÄê²\'ü%¾×9âòË’¯b?3IÂâõ>³¼±»Èº]Çø$ùOäjÓD@Î2=ExžŠñêQùžñT\Z˜ÆEž¢FñíÙÅlÅâkB\0jÖ¶È/mþ“Ô÷³pì3ÓY2Ø\0ƒëU^)á•¤TÞ¤s\\þ•ãí:æÙç¸–Õ ‰wË\"I±‘}Y5bßÅWZ²áácn0J\rT²É!ÇAŒë“ý)r±ju»;\\´MþØ§Ìm„^eÀM uëÄ5o^,Ó/šËTðþœ’FÅî]ƒèC`ýEhè´m`˜µˆN™6q‘¹ÓùqUì¥¹qI»7c¹Ôïã¸@–nmHÁ/ÎkŠÖâÖ¢Óa¿ð½´·vÖ®Qâ\\1¾õÇZo‹µ-Bòq‹-ÒY4Yi‘2?¯­f§Œ.¼1rtÁo$SíxcòŽÇpÄœä„uªŒZÑ\n¤ÕùbsøÕµ+›©uE­­íÂªéÖñó;wõÏ­mY1‚ÊØ´V¶k¤;ãgùÔgŒÿ\0:½§Ùiwÿ\0iÚ‹{»Ó#H÷J¸Úä’G>æ£×g¸µˆÍuo5Ìk‚éùˆ=qëZiØå”œ‡%¥¬öÌ·\r!nFò2§ÐzÔw6öA#y¾Tl 1‘T\'Õü;«[E\r–¢ú\\±’Þ]Ô~^G¹<~µOÄQ¦Ÿmº¼ë5“(y/—“¿¹ê{Nt¢ì`¡o{sf[yöÙX|ÄÁtzŸJ¨.ôâÍ§Y\"ÌblÊèK\0OQšçç½Ö<O ‚ÍfÒôhÀF\'å‘Ç©?ÐV†ƒ§›Y›NðÌ_i¹?$×L?v£ÔöÏÒºîag\'Ë¾-KxeÐ£xñb× ^Çýã¦GÝïœn®ãJMNë_þÐÓ<í3CŽŠ;s~ºäóïœž*]7ÃÚ_‡¢º¼†òý‡àn\'ÑGj×µ±Ô¼BCL\ZËL#^Ç½c7v™ÝN‡\"R™gMÖVòõ­c\r8AóH£åÓ5®c t«6:}®ŸÃi\nÆ vjR£*7&M7tG¤†òõUŒ5 Gr9ÍP„£Äp9£x&Y ;d^žõ$ñé·ï›˜šÎå¿å´?u¸«Z¢6,h{Î’’(†*FyëSµÒÆpë*óÝ3Ré6a§yU˜o,®¼d\Z|‡5ÑŒÞ§/©”]GW\ræÈ¯˜Æ=é’5É»žCÆ’*‚Ìß1ÀëŠÝ¸”ŒóX—ÒòMUÁL¾[ÆyëR%ÈÏ™4ÀHry¤ŽLA®inh¶6EÑœâ«^‘2‡F=j œô9¥YŸzÎöÕÂXjp‹’u¹ÕvÈY?1W®5M8&áv¤{š®ØŠ’0$ÏÒš¨ú‰Åwz‚Ì¤YÃ,ÏÛ*T~µŸo¥ÜIpÓÝÒºŠ8Zè¯¦µÓ¬ÚëRž+KuêÎÀgè;×˜x«âÁ_2ÏÂ¶àd`ÝÌ¿0÷Uÿ\0\Z¤å=\"ƒc½k	cPZ2Ò…‡h¯Ðþ#x§I½y&¹:«¼\\†úÈ5ê~ñç‡¼Fééº‹øö¹áIôWèCDèÊ;‰H×hÆsšh‡’jüöíË×=AªÅ=\rf‘W\"\0¤È§Ã¡Í0ò0EZè•eu@ÝkƒñÄˆm\'šÓBµÏi¥È‡\nêõRÏC³KÛòé	FpOÿ\0¨×ãÿ\0\0›‹¨µmEžØÇ÷žCÛ>¢®¿½±,àõ}WWÖå/ª^Ë\"ç\"<ü£è*”vêƒå\"¦¾[í1•5») SÂÌÊÄzü©‘ÆèØ<äW\\Z¶†lŒñŠFéÀÍ9þnÔÃV!ªN#ð eØ(êhïÖ*Ì¬q·úTŒè¾Ýiš\'ˆ\'¹ÕÝÕä@ËŒªg®}+Õ|´ºŒOi*Mr ×‹º+¨Ï*zTºmíî•/™¦]<=Êg*~¢¦ÃÜõ™cìËÏ¨¬\r{Ãºv©y\0,‹‘2|®?ñ¨´[Í¶n\"^žtc*~¾•oÆú½·‡–G)œ¬š,Mv—’Cîê‡\nýêØ»óc	w\ZÜ î~ðük8FJ‚ÙÜy4›YpV›*æÕ’*·›§N<Àw*¹Ù\"Å\\s]6§ã¿Má[#S‘o\"™|¶¸m•FGÿ\0O¯¿cÀ«ò)Ö®ÛKwtñÙ@­3Êß\"u$ŠkÑ£Ù|ª;-6oÞjÑú	*ÕŠO©0¹‰¢‘@Ê°ÅWŠ6{ÒÇ€§\"…«&é«£¨b7\Z³ÖFŒÔÉ9½vÆHÂÅÕ?H§Šª“ƒÔÔÈÃ¨­.I8ZzñLÆ*PïLÅ.)©ÀŠ¤H˜â€)üb€)ˆh¤N‚t§¯AMp£µ\0Ð}ªÄ4ÑJM4Ð\0zU½R—L¹£|-÷“5Lô¦sQ()®Yl\\[Nè„Œ§\Zw8äŠ\\r0p)Ä¨<òkÇ:Æ1ã¨§.qÒž¸þ(\0‘ŒÐ\0p\0ü«[H±9óf\0Ÿá¬¸–Û³Þº]>þ	ð®v8Ö¢w¶…BÝKñ\Zuç½;’A¤ØÃ“ŒQÛ5‰¨¹ý(&€M.;Ò‡Ö¦ÒßÊÔ#\'£å\rCÔó@:?B¤Uf\'ª7	\"¸„uJã<L›u[iÀùg€)ÿ\0yxþX®Ò<Ì¥PMrþ,ˆÿ\0g£ÿ\0´ù?î·á]Hçf¦¢~•1Æ8¨›¥P¦SŠ êA5§/CYó›Ò¤eVà´Ê•ÁÇ5RÊæ©Ý(xÝOB*ïlUyG4Àßð¼ÆçÃVåŽZhàkjÑ±Šå¼\':Ÿ¡úWIlNHÁãëL	5D\r÷æÚÔL—\0u¯Nºá\'ÐWâ(¾vì)0FãƒKžý©¤ààÐ:f¤b“Þ˜ÿ\04l3ÔS¹¦Ž”Ð§„1{áMiMNùâ¸8A‘‚\rw>v³ð•üíÂÞ^$	žáFXþµÊjÖâ×Z¿€}Õ”²ý#ùÒê\"¸8ãÞ1Í/ŠN{P1äRÅ8tæàc€ÁÕ3±à`çµWíïW\"ÁOµ\0$p;·\'ß §?“	ýëïî­HªÒ‰œÀÔWv&Ö“9pG¥!‘Is#€÷kè*!×ŠLœ\nGZ`.p­!$æƒGÓ¥ \0iÙôâ€@i;ñL¹éëG…\0&iB’xë@ûš’	29û óš@5cõÔöö­30ŒZº©ƒ#>†“Èdù¢r‡¾8¥p)Ý[˜›Ë\'çöªÒ!ŠYIÏ\0šÑË…þñ#’j9>7Ú„ÀÍÆ:šRAtA¯µWŸQQêmc$HÏ½d]ÃÛÚÀƒ\0Ò¿/=XÒ˜§P|Ó8«G¿!XgÐñUÔ£œ\nš8Éç8 \rPÑ‚^ˆŒ\Z£c}=¦GË*7$­8.4»£‚^ÆsÀî™ ®qO^Õ4ºuÜ1yˆ©qg…·qîWÁ8Î¡ê(P8©‘ÍFž¼q@WÂIL^.Ô¡\'‰ìÔ«èMzIùdo­y7€¦0|@ÒŽ~IÄŸ|£cõ½b_õ§Ú¹+¯zæÔÞ‚“À#µ9Ï*3ÚšO¦’3X+ÅÊVTWã5[û4FXØ\\=³c /*\n¹–QÞ\"˜åBxÍ5 nPûeôÝÛ,Ñ÷â<þUfÓP·›ˆ.\nIýÇOäjVà7¥W–ÖÞçt*üpqÍ5.ä¸\"ùD‰‘ê:ÔÜräz0Áª+cq\0Í•Û€:G\'Ì¿ãL\ZŒ°º…«GŒþò/˜S²dÙ­‹RÀÊ~t žæ¢Ø=EOmx“.`¸Yw¿åSŒ˜À>¢§”|ýÊ\r#ÐVG‰-é°Ñ!N äÝH8ò­×–9ížãZÚÝý¶b·w{ü´U–ëç^S{¬^kú¶£ªHÞLMÙ¢E<*)éøžµPƒzôÝhC{âE‹â4—¶°!¶dûQ¿M«ÀaøŒÕ]Jiî&i.d,ÙàÕÎÊÒM«Z#X\0}9®‚t%Ë»Ç¹­ä”ma$gÈ¹ëÒ“x«/Ó­Wã$ð=ib\'8ª÷H²\"îPJœóSÚÇs¨ÎaÓài›»ã¿SVo,ZÆýìïùDjÿ\0/NjÓÖÂlÄ†Óså²œ‡}+¯Ñ<qâ­*[jMyl8ò®Ï˜¸úõ®}íÏŸ$@à)«”Ç,Hô­»‘s¶oè¾\"×­eñv—ö8a\\)²ÈÝ!ÇÍ#pqÜc§½zF‘§\r>õš+ö¾I>X­ïXð¤óÓ·Ö¾wÕ\ný‘ˆê:W«|eƒ¬/#%[í16õàá£cüÀ©q¾ÁÍÊîw×V–SÈÌi6xÜ2¿q>)ðV§5åÍÜ:m†¤’íýäbA·Õ{žÕÊü2ñ­y¯E¤_ßÍsi,.Qfmå\nŒðO=uº—‰G‡5Iàž[”Š$Y7Fp}ªye¡ÓícQrËCsÃ·mu¤Ï¡ZÉ6ŸvP˜¡Y0@ÉŽG>µËü>²ñ†­¤ÝÜÚhƒVº²»uûl²bã%=}x\'¨ã¥tÚgŒ,5Èù’ÓQ@9YÎû§‘ZÞÔcÐ¤œøròM \\e€ x˜Žølãð¢6[£	Pm{Žç	`ãDÒÞe¹²’pòÜ+&äºœÿ\0/jè|-¡x–ÃÁñ6ŸNŽÍ?}Äóno,ó÷ºtÆ9ü«¦»Hõ)…ÅŒHû¾k9ƒŸöOOÎ¼§_ð»y&Ò}oPKT\'Ë³¼,`r~SÒ´Ñœò„£ñ#nMDÔ­LñOÙçC#LSqo^zŠåVËÃÚ…´nn“k¾ïAƒœ~Óéâ]GG‡ÃþÓ£y#O-î†Di‘‚w¦ºÁÚƒ¢[­FOµj$pÄÙôUíPÝ·f”hÊ¦ûtÿ\0\rÞx‚<ßìípËn§ õsÛé]\r½ÌV i^²ŽG_—r.\Z³gcªx™ƒLOÓ3ò áÜ{×e¥é¶zUºÃe\Z É¬\\ÛÑKÙÑVŠÔÁÑü*°H.µy\rÝÙççä\'°®…€À\n0\0ÆY<õ¦”è*lc)¹jÊ¥¥\'–­Ñ°jÉÍ0 üi’Steê8õ±î\\b´p1Ö¢p9 è3¨3[ÌHlå	éJ½:€¬k…`\0_”ŽCÕ_]¢àÄ’àu´D´bq¾¥« pkðVg`’jý^üC¥;V“¹ë«-oW}¶Eµ¶>L\'ï}}j¥Q‹\ZgûTìÊ¹Là\Z¹m…5NÓÞ0›r­\\6Ê“•ö,ÎHˆëøÔ«Ï_j¶ml\Zå¾ x²/}’µ:…Òoª9>½6rÑé\Z¡„Íq2A\nŒ—‘°+€ñÄëK9ZÓÃÑ}¦ä¦âd!ûõçZö»©k²G>§¨ÈÎ	òàNþùª¦m\0’òÎx²RËßJè†-fÉr\rPÔµi<Íváîf\r”çÊ³Ö¶µ+Gç;`)å…XDktk¶1™	ùQÎN>•mB\ZT-;Žtm¢&÷E”…–F¸ëÓJ†kXŒ®]TÊyõ«2Hë3KrÍ4î¸<ŠA¶µVVC4‡¡äó@¶6ü9ãÃ(±,ÿ\0Ú=´ä°QþÉê+Ô<7ãÍÄ&8\Z_ìÝA€ÿ\0G¹8ú+ô?Î¼Y”)XÔHóuéÚ©ÜØÇ$¬ò»zsŠÎT£!¦}54OÃ/â9	+ÜW†xoÆ¾ ðéH-çû}‚ø÷¸;€ìž¢½3ÃÞ<Ð5öò^S¦ßãýTçäcþËô?¥a*rˆîkkúlzæq¦³ìypbr2ÁàŸo_cX?µ]V\r*]\Zú?ô½2SIÕS9R§ºúWY4\"ƒÈaÐ×âû}A|g¥j\ZDê—×¯Fû³”çk}Aý*b×Â\r;Åi©Á%¼ÈŠa¡™AVü\ry÷ˆ¾ª;Ï¢Jl¥<ùNKÂßCÕZít\rVÇÄö$¢oáâ{i8’&Ì{Õûyî­‹Å ó¢þëui¸ì+>j6÷ÚMÀƒXµ’Ùº,„f7ú0â˜­•ƒÎE{ýÝ•¦¥ÃˆÝïÁ2Sõ¼çÄŸš\ZãCo²¹äÛÊÅ¢?î·Qô5¬j­¤MŽ\'\"šÙÅ-ìWzlâ\rVÖ[Ys€Y~Fú7CøS†È=Åk{€ø§š<©0;©7ÛäÇ1F~ƒWŽ1C=(Ã^³ŒÒ i©]ä\'÷GJŒ¾Ô‡š.1xÇ^i¤qÍ.	¥\nxæ€#+ÅE°†VV ©pA«.BŒµ2çº8·B=Y¸l‹xË4ÓNÅÞ^XžµjÑlîÐf¸·lü²àš–\r{¥—|½qŽtÐEö)Ä1²ãb³•N ¢s“Åqd	“ÁÚUþ£µI…âó”u*3Zi÷Vå±ÍÅ¶2acÈúUK¡»“ÍÒ.šÊðgtg€O¸­#U¤KˆÈçŽ7`ú*ÜLp9Í9¯£IiªÐ\\\"–\rïš»‰g<B]>åÕB„ùUÇ—Ä\'ÄHO:84¿Ù·qŒG$sýï”Ôr,ðó5»w_˜WTjÁìÌÜ\Z%2Qv³³*¨$“è\0ëJ­–e*ÊËÕXGáK¦ÞGey T±·&EVìGõ«:äš¼Òê*aó l\Zh§aªiÆ÷Ô’Þ[+iæÕ\0`ËòàÔ‚F°ŠâÒý&Œ¼<¼g§ZÍñ%­„\Z®u§Ï-âDèóÛÌÓŽqÇ¿ù5>»©ÚM©ý>Îk™ÀG\n>÷©5çýnn¢”ofh©(\'Ì·)ËúÕÝG›S†KÃ,iiÌ¡ˆ½@ª·©gö’Úd¬öÄqžÇ½zTñ›åOSIòó\rÏQÃ½7æõ®„ÌlHMÔ{›Ð\\`ñÒ˜…ùäuŠ%-#œï]—…­ÔÆukÕWqÂnÀ¨¼l²y·ÒµI\n~•&¤ßÚ]ùØÏRm»DÒ(ÿÙ',NULL,NULL,NULL,'2014-02-10 14:21:29','2014-02-10 14:21:31',NULL,NULL,0,'2014-02-10 14:21:31','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','å·B67890',3,0),(13,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 22:58:09','2014-02-28 22:58:12',NULL,NULL,0,'2014-02-28 22:58:12','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(14,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 22:58:20','2014-02-28 22:58:22',NULL,NULL,0,'2014-02-28 22:58:22','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(15,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 22:59:24','2014-02-28 22:59:26',NULL,NULL,0,'2014-02-28 22:59:26','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(16,'0','24-1','24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:05:15','2014-02-28 23:05:19',NULL,NULL,0,'2014-02-28 23:05:19','ç³»ç»Ÿç®¡ç†å‘˜',0,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥','','æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',1,0),(17,'0','24-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:07:20',NULL,1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(18,'0',NULL,'24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:07:22',1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(19,'0',NULL,'24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:07:24',1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(20,'0',NULL,'24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:07:25',1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(21,'0',NULL,'24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:07:26',1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(22,'0','24-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:19:56',NULL,1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(23,'0','24-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:20:30',NULL,1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(24,'0','24-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:22:53',NULL,1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(25,'0',NULL,'24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:22:56',1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0),(26,'0',NULL,'24-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-28 23:25:14',1,NULL,NULL,NULL,NULL,NULL,'æœªçŸ¥','æœªçŸ¥',NULL,'æœªçŸ¥',NULL,'æœˆç§Ÿå¡',-1,NULL,'æ— ä¼˜æƒ ','æœªçŸ¥',0,0);
/*!40000 ALTER TABLE `stoprd` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`InsertStoprd`
AFTER INSERT ON `parkadmin`.`stoprd`
FOR EACH ROW
BEGIN
	declare rdid bigint unsigned default null;
	set rdid = new.stoprdid;
	#select max( stoprdid ) into @stoprdid from stoprd; -- LAST_INSERT_ID()
	if ( 'è‡ªç”±å¡' <> new.cardkind ) then 
		if ( 'æ— å¡å·¥ä½œ' = new.cardkind ) then
			if ( 1 = new.parkid ) then
				REPLACE CardStoprdID( cardno, stoprdid ) values( new.carcp, rdid );
			end if;
		else
			REPLACE CardStoprdID( cardno, stoprdid ) values( new.cardno, rdid );
		end if;
	end if;

 if ( ( 'è®¡æ—¶å¡' = new.cardkind || 'æ— å¡å·¥ä½œ' = new.cardkind ) && Exists( Select Table_name from information_schema.tables as a where a.table_name = 'tmpcardintime' and table_schema = 'parkadmin' ) )  then
    -- select max( stoprdid ) into @stoprdid from stoprd; -- LAST_INSERT_ID()
    -- REPLACE CardStoprdID( cardno, stoprdid ) values( new.cardno, @stoprdid );
	if ( 'æ— å¡å·¥ä½œ' = new.cardkind ) then
		if ( 1 = new.parkid ) then
			if ( '' <> new.carcp and 'æœªçŸ¥' <> new.carcp ) then
				delete from tmpcardintime where cardno = new.carcp;
				insert tmpcardintime( cardno, intime, inshebeiname, stoprdid, invideo1, type ) values( new.carcp, new.intime, new.inshebeiname, rdid, new.invideo1, 1 );
			end if;
			#insert tmpcardintime( cardno, intime, inshebeiname, stoprdid, invideo1, type ) values( new.carcp, new.intime, new.inshebeiname, rdid, new.invideo1, 1 );
		else if ( 0 = new.parkid ) then
				if ( '' <> new.carcpout and 'æœªçŸ¥' <> new.carcpout ) then
					delete from tmpcardintime where cardno = new.carcpout;
				end if;
			end if;
		end if;
	else
		delete from tmpcardintime where cardno = new.cardno;
		insert tmpcardintime( cardno, intime, inshebeiname, stoprdid ) values( new.cardno, new.intime, new.inshebeiname, rdid );
	end if;
 end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`BeforeUpdateStoprd`
BEFORE UPDATE ON `parkadmin`.`stoprd`
FOR EACH ROW
BEGIN
 if ( true and new.Transfered = 0 ) then -- é’åŸŽå±± true else false
    set new.MayDelete = old.Maydelete + 1;
 end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`test`@`%`*/ /*!50003 TRIGGER `parkadmin`.`UpdateStoprd`
AFTER UPDATE ON `parkadmin`.`stoprd`
FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
 if ( ( 'è®¡æ—¶å¡' = new.cardkind  || 'æ— å¡å·¥ä½œ' = new.cardkind ) && Exists( Select Table_name from information_schema.tables as a where a.table_name = 'tmpcardintime'  and table_schema = 'parkadmin' ) ) then
  if ( new.invideo1 is not null ) then
    update tmpcardintime set invideo1 = new.invideo1 where stoprdid = old.stoprdid;
  
  end if;
 end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stoprd1`
--

DROP TABLE IF EXISTS `stoprd1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stoprd1` (
  `stoprdid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cardno` varchar(50) NOT NULL DEFAULT '0',
  `inshebeiname` varchar(30) DEFAULT NULL,
  `outshebeiname` varchar(30) DEFAULT NULL,
  `invideo1` longblob,
  `invideo2` longblob,
  `invideo3` longblob,
  `invideo4` longblob,
  `outvideo1` longblob,
  `outvideo2` longblob,
  `outvideo3` longblob,
  `outvideo4` longblob,
  `intime` datetime DEFAULT NULL,
  `outtime` datetime DEFAULT NULL,
  `childrdindx` int(10) unsigned DEFAULT NULL,
  `feebeizhu` varchar(30) DEFAULT NULL,
  `feenum` int(10) unsigned DEFAULT NULL,
  `feetime` datetime DEFAULT NULL,
  `feeoperator` varchar(30) DEFAULT NULL,
  `feefactnum` int(10) unsigned DEFAULT NULL,
  `carcp` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `username` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `cardselfno` varchar(50) DEFAULT NULL,
  `carkind` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `feekind` varchar(30) DEFAULT NULL,
  `cardkind` varchar(30) DEFAULT NULL,
  `parkid` int(11) NOT NULL DEFAULT '-1',
  `feezkh` int(10) unsigned DEFAULT NULL,
  `feezkyy` varchar(30) NOT NULL DEFAULT 'æ— ä¼˜æƒ ',
  `carcpout` varchar(30) DEFAULT 'æœªçŸ¥',
  `MayDelete` tinyint(1) NOT NULL DEFAULT '0',
  `Transfered` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`stoprdid`),
  KEY `cardno_outtime_parkid` (`cardno`,`outtime`,`parkid`),
  KEY `outtime_parkid` (`outtime`,`parkid`),
  KEY `intime_cardno` (`intime`,`cardno`),
  KEY `inshebeiname` (`inshebeiname`),
  KEY `outshebeiname` (`outshebeiname`),
  KEY `cardno` (`cardno`),
  KEY `intime` (`intime`),
  KEY `outtime` (`outtime`),
  KEY `feetime` (`feetime`),
  KEY `feeoperator` (`feeoperator`),
  KEY `carcp` (`carcp`),
  KEY `username` (`username`),
  KEY `cardselfno` (`cardselfno`),
  KEY `cardkind` (`cardkind`),
  KEY `parkid` (`parkid`),
  KEY `feekind` (`feekind`),
  KEY `childrdindx` (`childrdindx`),
  KEY `cardkind_outtime_parkid` (`cardkind`,`outtime`,`parkid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stoprd1`
--

LOCK TABLES `stoprd1` WRITE;
/*!40000 ALTER TABLE `stoprd1` DISABLE KEYS */;
/*!40000 ALTER TABLE `stoprd1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stoprd2`
--

DROP TABLE IF EXISTS `stoprd2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stoprd2` (
  `stoprdid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cardno` varchar(50) NOT NULL DEFAULT '0',
  `inshebeiname` varchar(30) DEFAULT NULL,
  `outshebeiname` varchar(30) DEFAULT NULL,
  `invideo1` longblob,
  `invideo2` longblob,
  `invideo3` longblob,
  `invideo4` longblob,
  `outvideo1` longblob,
  `outvideo2` longblob,
  `outvideo3` longblob,
  `outvideo4` longblob,
  `intime` datetime NOT NULL,
  `outtime` datetime DEFAULT NULL,
  `childrdindx` int(10) unsigned DEFAULT NULL,
  `feebeizhu` varchar(30) DEFAULT NULL,
  `feenum` int(10) unsigned DEFAULT NULL,
  `feetime` datetime DEFAULT NULL,
  `feeoperator` varchar(30) DEFAULT NULL,
  `feefactnum` int(10) unsigned DEFAULT NULL,
  `carcp` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `username` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `cardselfno` varchar(50) DEFAULT NULL,
  `carkind` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `feekind` varchar(30) DEFAULT NULL,
  `cardkind` varchar(30) DEFAULT NULL,
  `parkid` int(11) NOT NULL DEFAULT '-1',
  `feezkh` int(10) unsigned DEFAULT NULL,
  `feezkyy` varchar(30) NOT NULL DEFAULT 'æ— ä¼˜æƒ ',
  `carcpout` varchar(30) DEFAULT 'æœªçŸ¥',
  `MayDelete` tinyint(1) DEFAULT '0',
  `Transfered` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`stoprdid`),
  KEY `cardno_outtime_parkid` (`cardno`,`outtime`,`parkid`),
  KEY `outtime_parkid` (`outtime`,`parkid`),
  KEY `intime_cardno` (`intime`,`cardno`),
  KEY `inshebeiname` (`inshebeiname`),
  KEY `outshebeiname` (`outshebeiname`),
  KEY `cardno` (`cardno`),
  KEY `intime` (`intime`),
  KEY `outtime` (`outtime`),
  KEY `feetime` (`feetime`),
  KEY `feeoperator` (`feeoperator`),
  KEY `carcp` (`carcp`),
  KEY `username` (`username`),
  KEY `cardselfno` (`cardselfno`),
  KEY `cardkind` (`cardkind`),
  KEY `parkid` (`parkid`),
  KEY `feekind` (`feekind`),
  KEY `childrdindx` (`childrdindx`),
  KEY `cardkind_outtime_parkid` (`cardkind`,`outtime`,`parkid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stoprd2`
--

LOCK TABLES `stoprd2` WRITE;
/*!40000 ALTER TABLE `stoprd2` DISABLE KEYS */;
/*!40000 ALTER TABLE `stoprd2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysinfo`
--

DROP TABLE IF EXISTS `sysinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysinfo` (
  `infoindex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `infooperator` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  `infokind` varchar(50) NOT NULL DEFAULT 'æœªçŸ¥',
  `infotext` varchar(150) NOT NULL DEFAULT 'æœªçŸ¥',
  `infotime` datetime NOT NULL,
  `infopic1` longblob,
  `infopic2` longblob,
  `infopic3` longblob,
  `infopic4` longblob,
  PRIMARY KEY (`infoindex`),
  KEY `infotime` (`infotime`),
  KEY `infooperator` (`infooperator`)
) ENGINE=InnoDB AUTO_INCREMENT=1658 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysinfo`
--

LOCK TABLES `sysinfo` WRITE;
/*!40000 ALTER TABLE `sysinfo` DISABLE KEYS */;
INSERT INTO `sysinfo` VALUES (1509,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-08 11:59:47',NULL,NULL,NULL,NULL),(1510,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-08 12:00:00',NULL,NULL,NULL,NULL),(1511,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-08 13:01:32',NULL,NULL,NULL,NULL),(1512,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-08 13:01:50',NULL,NULL,NULL,NULL),(1513,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-08 13:05:14',NULL,NULL,NULL,NULL),(1514,'ç³»ç»Ÿç®¡ç†å‘˜','å¡ç‰‡ç®¡ç†','æ–°å¢žæœˆç§Ÿå¡ å¡å·ã€€ï¼š0','2014-02-08 13:14:31',NULL,NULL,NULL,NULL),(1515,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-08 13:16:13',NULL,NULL,NULL,NULL),(1516,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-08 13:16:39',NULL,NULL,NULL,NULL),(1517,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-08 13:17:54',NULL,NULL,NULL,NULL),(1518,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-08 13:18:18',NULL,NULL,NULL,NULL),(1519,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-08 13:26:14',NULL,NULL,NULL,NULL),(1520,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 22:48:04',NULL,NULL,NULL,NULL),(1521,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 22:50:43',NULL,NULL,NULL,NULL),(1522,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-09 22:51:03',NULL,NULL,NULL,NULL),(1523,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 22:52:13',NULL,NULL,NULL,NULL),(1524,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-09 22:55:18',NULL,NULL,NULL,NULL),(1525,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 22:59:13',NULL,NULL,NULL,NULL),(1526,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 23:01:03',NULL,NULL,NULL,NULL),(1527,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 23:02:35',NULL,NULL,NULL,NULL),(1528,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 23:13:55',NULL,NULL,NULL,NULL),(1529,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 23:18:29',NULL,NULL,NULL,NULL),(1530,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å¼€é—¸','2014-02-09 23:22:33',NULL,NULL,NULL,NULL),(1531,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å¼€é—¸','2014-02-09 23:22:35',NULL,NULL,NULL,NULL),(1532,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-09 23:25:04',NULL,NULL,NULL,NULL),(1533,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-09 23:25:35',NULL,NULL,NULL,NULL),(1534,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-09 23:26:21',NULL,NULL,NULL,NULL),(1535,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-10 13:27:38',NULL,NULL,NULL,NULL),(1536,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-10 14:20:47',NULL,NULL,NULL,NULL),(1537,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-10 14:20:57',NULL,NULL,NULL,NULL),(1538,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-10 15:12:32',NULL,NULL,NULL,NULL),(1539,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-12 10:31:51',NULL,NULL,NULL,NULL),(1540,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-12 12:19:44',NULL,NULL,NULL,NULL),(1541,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-12 15:14:13',NULL,NULL,NULL,NULL),(1542,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-12 16:04:41',NULL,NULL,NULL,NULL),(1543,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 10:12:02',NULL,NULL,NULL,NULL),(1544,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-19 10:12:08',NULL,NULL,NULL,NULL),(1545,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 12:48:18',NULL,NULL,NULL,NULL),(1546,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-19 12:48:26',NULL,NULL,NULL,NULL),(1547,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 13:09:58',NULL,NULL,NULL,NULL),(1548,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-19 13:14:03',NULL,NULL,NULL,NULL),(1549,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 13:15:00',NULL,NULL,NULL,NULL),(1550,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-19 13:28:46',NULL,NULL,NULL,NULL),(1551,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 16:33:56',NULL,NULL,NULL,NULL),(1552,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 16:35:49',NULL,NULL,NULL,NULL),(1553,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 16:38:54',NULL,NULL,NULL,NULL),(1554,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 16:42:20',NULL,NULL,NULL,NULL),(1555,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 16:47:16',NULL,NULL,NULL,NULL),(1556,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 16:53:17',NULL,NULL,NULL,NULL),(1557,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-19 16:55:14',NULL,NULL,NULL,NULL),(1558,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-19 17:22:09',NULL,NULL,NULL,NULL),(1559,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-19 17:22:29',NULL,NULL,NULL,NULL),(1560,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-27 12:18:51',NULL,NULL,NULL,NULL),(1561,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-27 12:19:28',NULL,NULL,NULL,NULL),(1562,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 15:46:38',NULL,NULL,NULL,NULL),(1563,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 15:47:16',NULL,NULL,NULL,NULL),(1564,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 15:54:40',NULL,NULL,NULL,NULL),(1565,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 15:55:41',NULL,NULL,NULL,NULL),(1566,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 15:57:11',NULL,NULL,NULL,NULL),(1567,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 15:58:04',NULL,NULL,NULL,NULL),(1568,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 16:51:37',NULL,NULL,NULL,NULL),(1569,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 16:51:45',NULL,NULL,NULL,NULL),(1570,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 16:52:28',NULL,NULL,NULL,NULL),(1571,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 16:53:06',NULL,NULL,NULL,NULL),(1572,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 17:32:38',NULL,NULL,NULL,NULL),(1573,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 17:34:06',NULL,NULL,NULL,NULL),(1574,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 17:45:04',NULL,NULL,NULL,NULL),(1575,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 17:45:13',NULL,NULL,NULL,NULL),(1576,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 17:46:38',NULL,NULL,NULL,NULL),(1577,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 17:47:35',NULL,NULL,NULL,NULL),(1578,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 22:55:12',NULL,NULL,NULL,NULL),(1579,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 22:56:36',NULL,NULL,NULL,NULL),(1580,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 22:56:57',NULL,NULL,NULL,NULL),(1581,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 22:57:58',NULL,NULL,NULL,NULL),(1582,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 22:58:04',NULL,NULL,NULL,NULL),(1583,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 23:01:45',NULL,NULL,NULL,NULL),(1584,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 23:05:08',NULL,NULL,NULL,NULL),(1585,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 23:07:12',NULL,NULL,NULL,NULL),(1586,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 23:07:47',NULL,NULL,NULL,NULL),(1587,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 23:19:45',NULL,NULL,NULL,NULL),(1588,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 23:22:48',NULL,NULL,NULL,NULL),(1589,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 23:23:21',NULL,NULL,NULL,NULL),(1590,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 23:24:22',NULL,NULL,NULL,NULL),(1591,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 23:24:55',NULL,NULL,NULL,NULL),(1592,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-02-28 23:25:01',NULL,NULL,NULL,NULL),(1593,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-02-28 23:25:54',NULL,NULL,NULL,NULL),(1594,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-06 14:09:56',NULL,NULL,NULL,NULL),(1595,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-06 14:10:42',NULL,NULL,NULL,NULL),(1596,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-06 14:50:37',NULL,NULL,NULL,NULL),(1597,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-06 14:52:05',NULL,NULL,NULL,NULL),(1598,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 16:24:57',NULL,NULL,NULL,NULL),(1599,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-21 16:26:54',NULL,NULL,NULL,NULL),(1600,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 16:27:28',NULL,NULL,NULL,NULL),(1601,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 16:31:50',NULL,NULL,NULL,NULL),(1602,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 16:32:56',NULL,NULL,NULL,NULL),(1603,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 16:33:48',NULL,NULL,NULL,NULL),(1604,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 16:34:38',NULL,NULL,NULL,NULL),(1605,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 17:12:04',NULL,NULL,NULL,NULL),(1606,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-21 17:13:06',NULL,NULL,NULL,NULL),(1607,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-21 17:13:40',NULL,NULL,NULL,NULL),(1608,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-21 17:39:38',NULL,NULL,NULL,NULL),(1609,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-24 10:37:45',NULL,NULL,NULL,NULL),(1610,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-24 10:37:53',NULL,NULL,NULL,NULL),(1611,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-24 10:38:31',NULL,NULL,NULL,NULL),(1612,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-24 10:38:42',NULL,NULL,NULL,NULL),(1613,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-24 10:50:52',NULL,NULL,NULL,NULL),(1614,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-24 10:51:13',NULL,NULL,NULL,NULL),(1615,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-24 10:51:41',NULL,NULL,NULL,NULL),(1616,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-24 10:51:52',NULL,NULL,NULL,NULL),(1617,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-24 10:53:13',NULL,NULL,NULL,NULL),(1618,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-24 10:53:35',NULL,NULL,NULL,NULL),(1619,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-24 10:54:00',NULL,NULL,NULL,NULL),(1620,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-24 10:54:10',NULL,NULL,NULL,NULL),(1621,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-24 13:34:28',NULL,NULL,NULL,NULL),(1622,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-24 13:34:35',NULL,NULL,NULL,NULL),(1623,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-27 09:42:21',NULL,NULL,NULL,NULL),(1624,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-27 09:42:56',NULL,NULL,NULL,NULL),(1625,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-27 16:58:40',NULL,NULL,NULL,NULL),(1626,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å…³é—¸','2014-03-27 16:58:51',NULL,NULL,NULL,NULL),(1627,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å¼€é—¸','2014-03-27 16:58:52',NULL,NULL,NULL,NULL),(1628,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å…³é—¸','2014-03-27 16:58:53',NULL,NULL,NULL,NULL),(1629,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å¼€é—¸','2014-03-27 16:58:53',NULL,NULL,NULL,NULL),(1630,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å…³é—¸','2014-03-27 16:59:49',NULL,NULL,NULL,NULL),(1631,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å¼€é—¸','2014-03-27 16:59:49',NULL,NULL,NULL,NULL),(1632,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-27 17:00:36',NULL,NULL,NULL,NULL),(1633,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-27 17:16:58',NULL,NULL,NULL,NULL),(1634,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å…³é—¸','2014-03-27 17:17:32',NULL,NULL,NULL,NULL),(1635,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å¼€é—¸','2014-03-27 17:17:33',NULL,NULL,NULL,NULL),(1636,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å…³é—¸','2014-03-27 17:17:34',NULL,NULL,NULL,NULL),(1637,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å¼€é—¸','2014-03-27 17:17:34',NULL,NULL,NULL,NULL),(1638,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å…³é—¸','2014-03-27 17:17:34',NULL,NULL,NULL,NULL),(1639,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å¼€é—¸','2014-03-27 17:17:35',NULL,NULL,NULL,NULL),(1640,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å…³é—¸','2014-03-27 17:17:36',NULL,NULL,NULL,NULL),(1641,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å¼€é—¸','2014-03-27 17:17:36',NULL,NULL,NULL,NULL),(1642,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å…³é—¸','2014-03-27 17:17:36',NULL,NULL,NULL,NULL),(1643,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å¼€é—¸','2014-03-27 17:17:37',NULL,NULL,NULL,NULL),(1644,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å…³é—¸','2014-03-27 17:17:37',NULL,NULL,NULL,NULL),(1645,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å¼€é—¸','2014-03-27 17:17:38',NULL,NULL,NULL,NULL),(1646,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å‡ºå£ å…³é—¸','2014-03-27 17:17:38',NULL,NULL,NULL,NULL),(1647,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-27 17:17:46',NULL,NULL,NULL,NULL),(1648,'åœè½¦åœºç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-28 09:48:54',NULL,NULL,NULL,NULL),(1649,'åœè½¦åœºç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-28 09:49:17',NULL,NULL,NULL,NULL),(1650,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-28 09:49:53',NULL,NULL,NULL,NULL),(1651,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-28 09:51:11',NULL,NULL,NULL,NULL),(1652,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-31 15:39:05',NULL,NULL,NULL,NULL),(1653,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-31 15:40:42',NULL,NULL,NULL,NULL),(1654,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','ç™»å½•ç³»ç»ŸæˆåŠŸ','2014-03-31 15:41:33',NULL,NULL,NULL,NULL),(1655,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å¼€é—¸','2014-03-31 15:44:05',NULL,NULL,NULL,NULL),(1656,'ç³»ç»Ÿç®¡ç†å‘˜','æ‰‹åŠ¨å¼€å…³é—¸','å…¥å£ å…³é—¸','2014-03-31 15:44:06',NULL,NULL,NULL,NULL),(1657,'ç³»ç»Ÿç®¡ç†å‘˜','æ¢ç­è®°å½•','é€€å‡ºè½¯ä»¶','2014-03-31 16:21:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sysinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `testcol` varchar(45) NOT NULL,
  `testcol1` varchar(45) NOT NULL,
  `testcol2` varchar(45) NOT NULL,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmpcard`
--

DROP TABLE IF EXISTS `tmpcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpcard` (
  `cardno` varchar(50) NOT NULL DEFAULT '0',
  `cardkind` varchar(50) DEFAULT 'EMIDå¡',
  `cardfeebz` varchar(30) NOT NULL DEFAULT 'çŽ°åœºé€‰æ‹©',
  `cardselfno` varchar(50) DEFAULT NULL,
  `cardstate` varchar(30) NOT NULL DEFAULT 'å¯ç”¨',
  `Inside` int(10) DEFAULT '0',
  `EnterMustCard` int(10) DEFAULT '0',
  `LeaveMustCard` int(10) DEFAULT '0',
  PRIMARY KEY (`cardno`),
  KEY `cardselfno` (`cardselfno`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmpcard`
--

LOCK TABLES `tmpcard` WRITE;
/*!40000 ALTER TABLE `tmpcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmpcard` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`tmpcard_ai`
AFTER INSERT ON `parkadmin`.`tmpcard`
FOR EACH ROW
BEGIN
DECLARE a,b INT;
DECLARE ai char(30);
DECLARE cur_1 CURSOR FOR SELECT shebeiid FROM roadconerinfo;
DECLARE cur_2 CURSOR FOR SELECT shebeiname FROM roadconerinfo;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET b = 1;
OPEN cur_1;
OPEN cur_2;
set b = 0;
while b<>1 do
FETCH cur_1 INTO a;
FETCH cur_2 INTO ai;
if b<>1 then
insert into cardright(cardno,roadconind,shebeiname) values(NEW.cardno,a,ai);
end if;
END while;
CLOSE cur_1;
CLOSE cur_2;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`tmpcard_au`
AFTER UPDATE ON `parkadmin`.`tmpcard`
FOR EACH ROW
BEGIN
if new.cardno<>old.cardno then
update cardright set cardright.cardno=new.cardno where cardright.cardno=old.cardno;
update stoprd set stoprd.cardno=new.cardno where stoprd.cardno=old.cardno;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`tmpcard_ad`
AFTER DELETE ON `parkadmin`.`tmpcard`
FOR EACH ROW
BEGIN
delete from cardright where cardright.cardno=OLD.cardno;
delete from stoprd where stoprd.cardno=OLD.cardno and stoprd.outtime is NULL;  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tmpcardintime`
--

DROP TABLE IF EXISTS `tmpcardintime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpcardintime` (
  `idtmpcardintime` int(11) NOT NULL AUTO_INCREMENT,
  `cardno` varchar(45) NOT NULL,
  `intime` datetime NOT NULL,
  `inshebeiname` varchar(30) DEFAULT NULL,
  `invideo1` longblob,
  `stoprdid` bigint(20) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idtmpcardintime`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmpcardintime`
--

LOCK TABLES `tmpcardintime` WRITE;
/*!40000 ALTER TABLE `tmpcardintime` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmpcardintime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treeview`
--

DROP TABLE IF EXISTS `treeview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treeview` (
  `shebeiid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `shebeikind` varchar(30) NOT NULL DEFAULT 'kzq',
  `shebeiname` varchar(30) NOT NULL DEFAULT 'æœªçŸ¥',
  PRIMARY KEY (`shebeiid`),
  KEY `parentid` (`parentid`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treeview`
--

LOCK TABLES `treeview` WRITE;
/*!40000 ALTER TABLE `treeview` DISABLE KEYS */;
INSERT INTO `treeview` VALUES (131,0,1,'tcc','***åœè½¦åœº'),(134,0,131,'kzq','10-1'),(135,0,131,'kzq','10-2'),(138,0,131,'kzq','10-3'),(172,0,131,'kzq','53-1'),(173,0,131,'kzq','53-2'),(174,0,131,'kzq','53-33'),(178,0,131,'kzq','156-1'),(179,0,131,'kzq','156-2'),(180,0,131,'kzq','24-1'),(181,0,131,'kzq','24-2'),(182,0,131,'kzq','24-33'),(183,0,131,'kzq','24-1');
/*!40000 ALTER TABLE `treeview` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`treeview_ai`
AFTER INSERT ON `parkadmin`.`treeview`
FOR EACH ROW
BEGIN
DECLARE a,b INT;
DECLARE ai char(50);
DECLARE cur_1 CURSOR FOR SELECT cardno FROM monthcard;
DECLARE cur_2 CURSOR FOR SELECT cardno FROM savecard;
DECLARE cur_3 CURSOR FOR SELECT cardno FROM tmpcard;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET b = 1;
OPEN cur_1;
OPEN cur_2;
OPEN cur_3;
set b = 0;
if NEW.shebeikind = 'kzq'   then
FETCH cur_1 INTO ai;
while b<>1 do
insert into cardright(cardno,roadconind,shebeiname) values(ai,new.shebeiid,shebeiname);
FETCH cur_1 INTO ai;
END while; 
set b = 0;
FETCH cur_2 INTO ai;
while b<>1 do
insert into cardright(cardno,roadconind,shebeiname) values(ai,new.shebeiid,shebeiname);
FETCH cur_2 INTO ai;
END while; 
set b = 0;
FETCH cur_3 INTO ai;
while b<>1 do
insert into cardright(cardno,roadconind,shebeiname) values(ai,new.shebeiid,shebeiname);
FETCH cur_3 INTO ai;
END while;
insert into roadconerinfo(shebeiid) values(NEW.shebeiid);
end if;
if NEW.shebeikind= 'tcc'  then
insert into parkinfo(shebeiid) values(NEW.shebeiid);
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parkadmin`.`treeview_ad`
AFTER DELETE ON `parkadmin`.`treeview`
FOR EACH ROW
BEGIN
delete from roadconerinfo where roadconerinfo.shebeiid=old.shebeiid;
delete from parkinfo where parkinfo.shebeiid=old.shebeiid;
delete from cardright where cardright.roadconind=old.shebeiid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT 'æœªçŸ¥',
  `usersex` varchar(30) DEFAULT 'æœªçŸ¥',
  `useradress` varchar(50) DEFAULT 'æœªçŸ¥',
  `usercorp` varchar(50) DEFAULT 'æœªçŸ¥',
  `userphone` varchar(50) DEFAULT 'æœªçŸ¥',
  `userhaoma` varchar(50) DEFAULT 'æœªçŸ¥',
  `userpic` longblob,
  `cardindex` varchar(50) NOT NULL DEFAULT '0',
  `Comments` varchar(250) DEFAULT '',
  PRIMARY KEY (`userid`),
  KEY `cardindex` (`cardindex`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'æœªçŸ¥','æœªçŸ¥','æœªçŸ¥','æœªçŸ¥','æœªçŸ¥','æœªçŸ¥',NULL,'0','');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zkset`
--

DROP TABLE IF EXISTS `zkset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zkset` (
  `zkindex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zkname` varchar(45) NOT NULL DEFAULT 'æœªçŸ¥',
  `zkflag` varchar(45) NOT NULL DEFAULT 'æœªçŸ¥',
  `zkdetail` varchar(90) DEFAULT NULL,
  `zknumb` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zkindex`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zkset`
--

LOCK TABLES `zkset` WRITE;
/*!40000 ALTER TABLE `zkset` DISABLE KEYS */;
/*!40000 ALTER TABLE `zkset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `parkcustomercenter`
--

USE `parkcustomercenter`;

--
-- Final view structure for view `viwcutomerallinfo`
--

/*!50001 DROP TABLE IF EXISTS `viwcutomerallinfo`*/;
/*!50001 DROP VIEW IF EXISTS `viwcutomerallinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`test`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viwcutomerallinfo` AS select `a`.`CustomerID` AS `CustomerID`,`a`.`Name` AS `Name`,`a`.`CredentialsID` AS `CredentialsID`,`a`.`Address` AS `Address`,`a`.`District` AS `District`,`a`.`MobilePhone` AS `MobilePhone`,`a`.`Landline` AS `Landline`,`a`.`EMail` AS `EMail`,`a`.`CustomerSource` AS `CustomerSource`,`a`.`CustomerDepartment` AS `CustomerDepartment`,`a`.`AccountExecutive` AS `AccountExecutive`,`a`.`VistFirstTime` AS `VistFirstTime`,`a`.`EntryTime` AS `EntryTime`,`a`.`CustomerCategory` AS `CustomerCategory`,`a`.`VistNewlyTime` AS `VistNewlyTime`,`a`.`ConsumptionAmount` AS `ConsumptionAmount`,`a`.`MembershipClass` AS `MembershipClass`,`a`.`MembershipCardSurplus` AS `MembershipCardSurplus`,`a`.`CustomerState` AS `CustomerState`,`b`.`PlateID` AS `PlateID`,`b`.`Brand` AS `Brand`,`b`.`Series` AS `Series`,`b`.`Color` AS `Color`,`b`.`Feature` AS `Feature`,`b`.`BuyDate` AS `BuyDate`,`b`.`MaintenanceFirstDate` AS `MaintenanceFirstDate`,`b`.`MaintenanceNextDate` AS `MaintenanceNextDate`,`b`.`AannualSurveyDate` AS `AannualSurveyDate`,`b`.`CommercialInsuranceExpiration` AS `CommercialInsuranceExpiration`,`b`.`MandatoryInsuranceExpiration` AS `MandatoryInsuranceExpiration`,`b`.`Insurer` AS `Insurer`,`b`.`VistCount` AS `VistCount`,`b`.`VehicleState` AS `VehicleState`,`b`.`MotorID` AS `MotorID`,`b`.`FrameID` AS `FrameID`,`b`.`Odometer` AS `Odometer`,`c`.`ServiceID` AS `ServiceID`,`c`.`Category` AS `Category`,`c`.`InsuranceAmount` AS `InsuranceAmount`,`c`.`ClaimAmount` AS `ClaimAmount`,`c`.`SettlementStyle` AS `SettlementStyle`,`c`.`MaintanceStartTime` AS `MaintanceStartTime`,`c`.`MaintanceEndTime` AS `MaintanceEndTime`,`c`.`PickupTime` AS `PickupTime`,`c`.`SubCategory` AS `SubCategory`,`c`.`ServiceDepartment` AS `ServiceDepartment`,`c`.`Maintanceman` AS `Maintanceman`,`c`.`ServiceConsumptionAmount` AS `ServiceConsumptionAmount` from ((`tabcustomerinfo` `a` join `tabvehicleinfo` `b`) join `tabservicerecord` `c`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viwnewcustomer`
--

/*!50001 DROP TABLE IF EXISTS `viwnewcustomer`*/;
/*!50001 DROP VIEW IF EXISTS `viwnewcustomer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`test`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viwnewcustomer` AS select `tabcustomerinfo`.`CustomerID` AS `CustomerID`,`tabcustomerinfo`.`Name` AS `Name`,`tabcustomerinfo`.`CredentialsID` AS `CredentialsID`,`tabcustomerinfo`.`Address` AS `Address`,`tabcustomerinfo`.`District` AS `District`,`tabcustomerinfo`.`MobilePhone` AS `MobilePhone`,`tabcustomerinfo`.`Landline` AS `Landline`,`tabcustomerinfo`.`EMail` AS `EMail`,`tabcustomerinfo`.`CustomerSource` AS `CustomerSource`,`tabcustomerinfo`.`CustomerDepartment` AS `CustomerDepartment`,`tabcustomerinfo`.`AccountExecutive` AS `AccountExecutive`,`tabcustomerinfo`.`VistFirstTime` AS `VistFirstTime`,`tabcustomerinfo`.`EntryTime` AS `EntryTime`,`tabcustomerinfo`.`CustomerCategory` AS `CustomerCategory`,`tabcustomerinfo`.`VistNewlyTime` AS `VistNewlyTime`,`tabcustomerinfo`.`ConsumptionAmount` AS `ConsumptionAmount`,`tabcustomerinfo`.`MembershipClass` AS `MembershipClass`,`tabcustomerinfo`.`MembershipCardSurplus` AS `MembershipCardSurplus`,`tabcustomerinfo`.`CustomerState` AS `CustomerState` from `tabcustomerinfo` where (`tabcustomerinfo`.`CustomerState` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viwupdatingcustomer`
--

/*!50001 DROP TABLE IF EXISTS `viwupdatingcustomer`*/;
/*!50001 DROP VIEW IF EXISTS `viwupdatingcustomer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`test`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viwupdatingcustomer` AS select `tabcustomerinfo`.`CustomerID` AS `CustomerID`,`tabcustomerinfo`.`Name` AS `Name`,`tabcustomerinfo`.`CredentialsID` AS `CredentialsID`,`tabcustomerinfo`.`Address` AS `Address`,`tabcustomerinfo`.`District` AS `District`,`tabcustomerinfo`.`MobilePhone` AS `MobilePhone`,`tabcustomerinfo`.`Landline` AS `Landline`,`tabcustomerinfo`.`EMail` AS `EMail`,`tabcustomerinfo`.`CustomerSource` AS `CustomerSource`,`tabcustomerinfo`.`CustomerDepartment` AS `CustomerDepartment`,`tabcustomerinfo`.`AccountExecutive` AS `AccountExecutive`,`tabcustomerinfo`.`VistFirstTime` AS `VistFirstTime`,`tabcustomerinfo`.`EntryTime` AS `EntryTime`,`tabcustomerinfo`.`CustomerCategory` AS `CustomerCategory`,`tabcustomerinfo`.`VistNewlyTime` AS `VistNewlyTime`,`tabcustomerinfo`.`ConsumptionAmount` AS `ConsumptionAmount`,`tabcustomerinfo`.`MembershipClass` AS `MembershipClass`,`tabcustomerinfo`.`MembershipCardSurplus` AS `MembershipCardSurplus`,`tabcustomerinfo`.`CustomerState` AS `CustomerState` from `tabcustomerinfo` where ((`tabcustomerinfo`.`CustomerState` = 0) and (`tabcustomerinfo`.`VistNewlyTime` between concat(curdate(),' 00:00:00') and concat(curdate(),' 23:59:59'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `parkcenterdb`
--

USE `parkcenterdb`;

--
-- Current Database: `streetroadpark`
--

USE `streetroadpark`;

--
-- Final view structure for view `viewconfiginfo`
--

/*!50001 DROP TABLE IF EXISTS `viewconfiginfo`*/;
/*!50001 DROP VIEW IF EXISTS `viewconfiginfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewconfiginfo` AS select `a`.`DeviceID` AS `DeviceID`,`a`.`UnitID` AS `UnitID`,`b`.`UnitName` AS `UnitName`,`c`.`ParkID` AS `ParkID`,`c`.`ParkName` AS `ParkName`,`d`.`ReceiverID` AS `ReceiverID`,`d`.`ReceiverName` AS `ReceiverName` from (((`tabdeviceregisterinfo` `a` join `tabunitinfo` `b`) join `tabparkinfo` `c`) join `tabreceiverinfo` `d`) where ((`a`.`UnitID` = `b`.`UnitID`) and (`b`.`UnitID` = `c`.`UnitID`) and (`c`.`ParkID` = `d`.`ParkID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewfeeinfo`
--

/*!50001 DROP TABLE IF EXISTS `viewfeeinfo`*/;
/*!50001 DROP VIEW IF EXISTS `viewfeeinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewfeeinfo` AS select `a`.`RecordID` AS `RecordID`,`a`.`Prepayment` AS `Prepayment`,`a`.`Payment` AS `Payment`,`a`.`PrepaymentOperator` AS `PrepaymentOperator`,`a`.`PrepaymentTime` AS `PrepaymentTime`,`a`.`PaymentTime` AS `PaymentTime`,`a`.`PaymentOperator` AS `PaymentOperator`,`a`.`PrepaymentUserID` AS `PrepaymentUserID`,`a`.`PaymentUserID` AS `PaymentUserID`,`b`.`LocationID` AS `LocationID`,`e`.`UnitName` AS `UnitName`,`e`.`UnitID` AS `UnitID`,`f`.`AdministrativeName` AS `AdministrativeName`,`f`.`AdministrativeType` AS `AdministrativeType`,`f`.`AdministrativeID` AS `AdministrativeID`,`g`.`ParkName` AS `ParkName`,`g`.`ParkID` AS `ParkID` from ((((((`tabfeeinfo` `a` join `tabinoutrecordinfo` `b`) join `tabuserinfo` `c`) join `tabgroupinfo` `d`) join `tabunitinfo` `e`) join `tabadministrativeinfo` `f`) join `tabparkinfo` `g`) where ((`a`.`RecordID` = `b`.`RecordID`) and (`a`.`PaymentUserID` = `c`.`UserID`) and (`c`.`GroupID` = `d`.`GroupID`) and (`d`.`UnitID` = `e`.`UnitID`) and (`e`.`AdministrativeID` = `f`.`AdministrativeID`) and (`d`.`UnitID` = `g`.`UnitID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewinoutrecord`
--

/*!50001 DROP TABLE IF EXISTS `viewinoutrecord`*/;
/*!50001 DROP VIEW IF EXISTS `viewinoutrecord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewinoutrecord` AS select `a`.`RecordID` AS `RecordID`,`a`.`LocationID` AS `LocationID`,`a`.`EnterTime` AS `EnterTime`,`a`.`LeaveTime` AS `LeaveTime`,`a`.`EnterPlate` AS `EnterPlate`,`a`.`LeavePlate` AS `LeavePlate`,`b`.`EnterImage` AS `EnterImage`,`b`.`LeaveImage` AS `LeaveImage`,`c`.`Prepayment` AS `Prepayment`,`c`.`Payment` AS `Payment`,`c`.`PrepaymentOperator` AS `PrepaymentOperator`,`c`.`PrepaymentTime` AS `PrepaymentTime`,`c`.`PaymentOperator` AS `PaymentOperator`,`c`.`PaymentTime` AS `PaymentTime` from ((`tabinoutrecordinfo` `a` join `tabinoutimageinfo` `b`) join `tabfeeinfo` `c`) where ((`a`.`RecordID` = `b`.`RecordID`) and (`a`.`RecordID` = `c`.`RecordID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewwholefeerecordquery`
--

/*!50001 DROP TABLE IF EXISTS `viewwholefeerecordquery`*/;
/*!50001 DROP VIEW IF EXISTS `viewwholefeerecordquery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewwholefeerecordquery` AS select `a`.`RecordID` AS `RecordID`,`a`.`Prepayment` AS `Prepayment`,`a`.`Payment` AS `Payment`,`a`.`PrepaymentOperator` AS `PrepaymentOperator`,`a`.`PrepaymentTime` AS `PrepaymentTime`,`a`.`PaymentTime` AS `PaymentTime`,`a`.`PaymentOperator` AS `PaymentOperator`,`a`.`PrepaymentUserID` AS `PrepaymentUserID`,`a`.`PaymentUserID` AS `PaymentUserID`,`b`.`LocationID` AS `LocationID`,`e`.`UnitName` AS `UnitName`,`e`.`UnitID` AS `UnitID`,`f`.`AdministrativeName` AS `AdministrativeName`,`f`.`AdministrativeType` AS `AdministrativeType`,`f`.`AdministrativeID` AS `AdministrativeID`,`g`.`ParkName` AS `ParkName`,`g`.`ParkID` AS `ParkID` from ((((((`tabtmpfeeinfo` `a` join `tabtmpinoutrecordinfo` `b`) join `tabuserinfo` `c`) join `tabgroupinfo` `d`) join `tabunitinfo` `e`) join `tabadministrativeinfo` `f`) join `tabparkinfo` `g`) where ((`a`.`RecordID` = `b`.`RecordID`) and (`a`.`PaymentUserID` = `c`.`UserID`) and (`c`.`GroupID` = `d`.`GroupID`) and (`d`.`UnitID` = `e`.`UnitID`) and (`e`.`AdministrativeID` = `f`.`AdministrativeID`) and (`d`.`UnitID` = `g`.`UnitID`)) union select `a`.`RecordID` AS `RecordID`,`a`.`Prepayment` AS `Prepayment`,`a`.`Payment` AS `Payment`,`a`.`PrepaymentOperator` AS `PrepaymentOperator`,`a`.`PrepaymentTime` AS `PrepaymentTime`,`a`.`PaymentTime` AS `PaymentTime`,`a`.`PaymentOperator` AS `PaymentOperator`,`a`.`PrepaymentUserID` AS `PrepaymentUserID`,`a`.`PaymentUserID` AS `PaymentUserID`,`b`.`LocationID` AS `LocationID`,`e`.`UnitName` AS `UnitName`,`e`.`UnitID` AS `UnitID`,`f`.`AdministrativeName` AS `AdministrativeName`,`f`.`AdministrativeType` AS `AdministrativeType`,`f`.`AdministrativeID` AS `AdministrativeID`,`g`.`ParkName` AS `ParkName`,`g`.`ParkID` AS `ParkID` from ((((((`tabhistoryfeeinfo` `a` join `tabhistoryinoutrecordinfo` `b`) join `tabuserinfo` `c`) join `tabgroupinfo` `d`) join `tabunitinfo` `e`) join `tabadministrativeinfo` `f`) join `tabparkinfo` `g`) where ((`a`.`RecordID` = `b`.`RecordID`) and (`a`.`PaymentUserID` = `c`.`UserID`) and (`c`.`GroupID` = `d`.`GroupID`) and (`d`.`UnitID` = `e`.`UnitID`) and (`e`.`AdministrativeID` = `f`.`AdministrativeID`) and (`d`.`UnitID` = `g`.`UnitID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewwholeinoutrecordquery`
--

/*!50001 DROP TABLE IF EXISTS `viewwholeinoutrecordquery`*/;
/*!50001 DROP VIEW IF EXISTS `viewwholeinoutrecordquery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewwholeinoutrecordquery` AS select `a`.`RecordID` AS `RecordID`,`a`.`LocationID` AS `LocationID`,`a`.`EnterTime` AS `EnterTime`,`a`.`LeaveTime` AS `LeaveTime`,`a`.`EnterPlate` AS `EnterPlate`,`a`.`LeavePlate` AS `LeavePlate`,`b`.`EnterImage` AS `EnterImage`,`b`.`LeaveImage` AS `LeaveImage`,`c`.`Prepayment` AS `Prepayment`,`c`.`Payment` AS `Payment`,`c`.`PrepaymentOperator` AS `PrepaymentOperator`,`c`.`PrepaymentTime` AS `PrepaymentTime`,`c`.`PaymentOperator` AS `PaymentOperator`,`c`.`PaymentTime` AS `PaymentTime` from ((`tabtmpinoutrecordinfo` `a` join `tabtmpinoutimageinfo` `b`) join `tabtmpfeeinfo` `c`) where ((`a`.`RecordID` = `b`.`RecordID`) and (`a`.`RecordID` = `c`.`RecordID`)) union select `a`.`RecordID` AS `RecordID`,`a`.`LocationID` AS `LocationID`,`a`.`EnterTime` AS `EnterTime`,`a`.`LeaveTime` AS `LeaveTime`,`a`.`EnterPlate` AS `EnterPlate`,`a`.`LeavePlate` AS `LeavePlate`,`b`.`EnterImage` AS `EnterImage`,`b`.`LeaveImage` AS `LeaveImage`,`c`.`Prepayment` AS `Prepayment`,`c`.`Payment` AS `Payment`,`c`.`PrepaymentOperator` AS `PrepaymentOperator`,`c`.`PrepaymentTime` AS `PrepaymentTime`,`c`.`PaymentOperator` AS `PaymentOperator`,`c`.`PaymentTime` AS `PaymentTime` from ((`tabhistoryinoutrecordinfo` `a` join `tabhistoryinoutimageinfo` `b`) join `tabhistoryfeeinfo` `c`) where ((`a`.`RecordID` = `b`.`RecordID`) and (`a`.`RecordID` = `c`.`RecordID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewwholelogrecordquery`
--

/*!50001 DROP TABLE IF EXISTS `viewwholelogrecordquery`*/;
/*!50001 DROP VIEW IF EXISTS `viewwholelogrecordquery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewwholelogrecordquery` AS select `streetroadpark`.`tabtmploginfo`.`LogID` AS `LogID`,`streetroadpark`.`tabtmploginfo`.`LogInfo` AS `LogInfo`,`streetroadpark`.`tabtmploginfo`.`LogDateTime` AS `LogDateTime` from `tabtmploginfo` union select `streetroadpark`.`tabhistoryloginfo`.`LogID` AS `LogID`,`streetroadpark`.`tabhistoryloginfo`.`LogInfo` AS `LogInfo`,`streetroadpark`.`tabhistoryloginfo`.`LogDateTime` AS `LogDateTime` from `tabhistoryloginfo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewwholeuserloginoutrecordquery`
--

/*!50001 DROP TABLE IF EXISTS `viewwholeuserloginoutrecordquery`*/;
/*!50001 DROP VIEW IF EXISTS `viewwholeuserloginoutrecordquery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewwholeuserloginoutrecordquery` AS select `streetroadpark`.`tabtmpuserloginoutinfo`.`LogID` AS `LogID`,`streetroadpark`.`tabtmpuserloginoutinfo`.`LogUserID` AS `LogUserID`,`streetroadpark`.`tabtmpuserloginoutinfo`.`LogTime` AS `LogTime`,`streetroadpark`.`tabtmpuserloginoutinfo`.`LogType` AS `LogType`,`streetroadpark`.`tabtmpuserloginoutinfo`.`LogClientID` AS `LogClientID`,`streetroadpark`.`tabtmpuserloginoutinfo`.`LogIP` AS `LogIP` from `tabtmpuserloginoutinfo` union select `streetroadpark`.`tabhistoryuserloginoutinfo`.`LogID` AS `LogID`,`streetroadpark`.`tabhistoryuserloginoutinfo`.`LogUserID` AS `LogUserID`,`streetroadpark`.`tabhistoryuserloginoutinfo`.`LogTime` AS `LogTime`,`streetroadpark`.`tabhistoryuserloginoutinfo`.`LogType` AS `LogType`,`streetroadpark`.`tabhistoryuserloginoutinfo`.`LogClientID` AS `LogClientID`,`streetroadpark`.`tabhistoryuserloginoutinfo`.`LogIP` AS `LogIP` from `tabhistoryuserloginoutinfo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `parkadmin`
--

USE `parkadmin`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-08 12:44:43
