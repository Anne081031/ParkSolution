CREATE DATABASE  IF NOT EXISTS `parkcustomercenter` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `parkcustomercenter`;
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
-- Table structure for table `tabcustomerinfo`
--

DROP TABLE IF EXISTS `tabcustomerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcustomerinfo` (
  `CustomerID` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT '客户号',
  `Name` varchar(45) DEFAULT NULL COMMENT '客户名',
  `CredentialsID` varchar(256) DEFAULT NULL COMMENT '证件号',
  `Address` varchar(45) DEFAULT NULL COMMENT '地址',
  `District` smallint(6) DEFAULT NULL COMMENT '区域',
  `MobilePhone` varchar(45) DEFAULT NULL COMMENT '移动电话',
  `Landline` varchar(45) DEFAULT NULL COMMENT '固话',
  `EMail` varchar(45) DEFAULT NULL COMMENT '电邮',
  `CustomerSource` smallint(6) DEFAULT NULL COMMENT '客户来源',
  `CustomerDepartment` smallint(6) DEFAULT NULL COMMENT '部门',
  `AccountExecutive` smallint(6) DEFAULT NULL COMMENT '客户专员',
  `VistFirstTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '首次到店时间',
  `EntryTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建档时间',
  `CustomerCategory` smallint(6) DEFAULT NULL COMMENT '客户分类',
  `VistNewlyTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最近到店时间, 当前入场时间',
  `ConsumptionAmount` int(10) unsigned DEFAULT '0' COMMENT '客户历史消费总额',
  `MembershipClass` smallint(6) DEFAULT NULL COMMENT '会员卡类别',
  `MembershipCardSurplus` int(10) unsigned DEFAULT '0' COMMENT '会员卡当前余额',
  `CustomerState` tinyint(1) DEFAULT NULL COMMENT '0 新客户\n1待更新客户',
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcustomerinfo`
--

LOCK TABLES `tabcustomerinfo` WRITE;
/*!40000 ALTER TABLE `tabcustomerinfo` DISABLE KEYS */;
INSERT INTO `tabcustomerinfo` VALUES (2,'李四','123','地址2',2,'2413525','6567','b@163.com',2,-1,2,'2014-02-26 11:05:00','2014-02-26 11:05:00',-1,'2014-02-26 11:05:00',0,-1,0,NULL),(4,'1','2','3',2,'5','6','d@163.com',1,1,2,'2014-02-25 11:53:06','2014-02-26 11:53:06',0,'2014-03-26 17:02:43',15,1,0,1),(5,'1','7','5',0,'2','3','4',0,0,0,'2014-03-07 16:10:46','2014-03-07 16:10:46',0,'2014-03-07 16:10:46',9,0,0,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:19:09','2014-03-13 16:19:09',NULL,'2014-03-13 16:19:09',0,NULL,0,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:19:09','2014-03-13 16:19:09',NULL,'2014-03-13 16:19:09',0,NULL,0,NULL),(8,'Test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:21:58','2014-03-13 16:21:58',NULL,'2014-03-13 16:21:58',0,NULL,0,NULL),(9,'Test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-13 16:21:58','2014-03-13 16:21:58',NULL,'2014-03-13 16:21:58',0,NULL,0,NULL),(10,'范杰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(11,'朱江',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(12,'刘力',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(13,'刘颖',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(14,'罗云勇',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(15,'何润林',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(16,'黄广轩',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(17,'黄冰容',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(18,'彭永久',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(19,'刘洪兵',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(20,'钟诗荣',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(21,'叶智全',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(22,'川师',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(23,'侯文凯',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(24,'谭冠杰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(25,'丁为',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(26,'无',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(27,'文勇',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(28,'黄俊力',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(29,'吴巧',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(30,'方向药业',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(31,'伍开俊',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(32,'饶皎',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-14 10:05:03','2014-03-14 10:05:03',NULL,'2014-03-14 10:05:03',0,NULL,0,NULL),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:05','2014-03-19 13:09:39',NULL,'2014-03-27 17:45:55',0,NULL,0,1),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:10','2014-03-19 13:09:51',NULL,'2014-03-27 17:46:02',0,NULL,0,1),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:15','2014-03-19 13:09:51',NULL,'2014-03-27 17:46:05',0,NULL,0,1),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:21','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:11',0,NULL,0,1),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:31','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:21',0,NULL,0,1),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:39','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:29',0,NULL,0,1),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:44','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:34',0,NULL,0,1),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:49','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:40',0,NULL,0,1),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:03:55','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:47',0,NULL,0,1),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:02','2014-03-19 13:09:52',NULL,'2014-03-27 17:46:52',0,NULL,0,1),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:10','2014-03-19 13:09:52',NULL,'2014-03-27 17:47:00',0,NULL,0,1),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:27','2014-03-19 13:09:53',NULL,'2014-03-27 17:44:30',0,NULL,0,1),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:31','2014-03-19 13:09:53',NULL,'2014-03-27 17:41:51',0,NULL,0,1),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:38','2014-03-19 13:09:53',NULL,'2014-03-27 17:41:57',0,NULL,0,1),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:43','2014-03-19 13:09:54',NULL,'2014-03-27 17:42:03',0,NULL,0,1),(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:50','2014-03-19 13:09:55',NULL,'2014-03-27 17:42:09',0,NULL,0,1),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:04:52','2014-03-19 13:09:55',NULL,'2014-03-27 17:42:12',0,NULL,0,1),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:01','2014-03-19 13:09:55',NULL,'2014-03-27 17:42:20',0,NULL,0,1),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:04','2014-03-19 13:09:55',NULL,'2014-03-27 17:42:23',0,NULL,0,1),(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:11','2014-03-19 13:09:55',NULL,'2014-03-27 17:45:14',0,NULL,0,1),(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:24','2014-03-19 13:09:55',NULL,'2014-03-27 17:45:29',0,NULL,0,1),(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:31','2014-03-19 13:09:56',NULL,'1970-02-12 10:58:48',0,NULL,0,1),(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:35','2014-03-19 13:09:56',NULL,'2014-03-27 17:45:39',0,NULL,0,1),(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:42','2014-03-19 13:09:56',NULL,'2014-03-27 17:45:46',0,NULL,0,1),(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:05:46','2014-03-19 13:09:56',NULL,'2014-03-27 17:45:50',0,NULL,0,1),(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:00','2014-03-19 13:11:00',NULL,'2014-03-27 17:45:19',0,NULL,0,1),(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:05','2014-03-19 13:11:04',NULL,'2014-03-27 17:45:24',0,NULL,0,1),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:16','2014-03-19 13:11:17',NULL,'2014-03-27 17:45:35',0,NULL,0,1),(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:08:56','2014-03-19 13:11:56',NULL,'2014-03-27 17:46:15',0,NULL,0,1),(62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:09:26','2014-03-19 13:12:26',NULL,'2014-03-27 16:43:22',0,NULL,0,1),(63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:09:50','2014-03-19 13:12:49',NULL,'2014-03-27 17:44:24',0,NULL,0,1),(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:49:28','2014-03-19 13:52:56',NULL,'2014-03-25 17:12:00',0,NULL,0,1),(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:50:23','2014-03-19 13:53:20',NULL,'2014-03-25 17:40:24',0,NULL,0,1),(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:54:20','2014-03-19 13:57:19',NULL,'1970-02-12 10:54:20',0,NULL,0,0),(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-12 10:58:20','2014-03-19 14:01:19',NULL,'1970-02-12 10:58:20',0,NULL,0,0),(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1970-02-14 06:43:50','2014-03-21 09:47:04',NULL,'1970-02-14 06:43:50',0,NULL,0,0),(70,'dsf','','',-1,'','','',-1,-1,-1,'2014-03-21 14:08:24','2014-03-21 14:08:24',-1,'2014-03-21 14:08:24',0,-1,0,NULL);
/*!40000 ALTER TABLE `tabcustomerinfo` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `tabcommondatainfo` VALUES (1,'王刚','AccountExecutive'),(1,'通用','Brand'),(1,'黑色','Color'),(1,'会员客户','CustomerCategory'),(1,'线下广告','CustomerSource'),(1,'青羊区','District'),(1,'企业公车','Feature'),(1,'大地','Insurer'),(1,'独立','Maintanceman'),(1,'超级会员','MembershipClass'),(1,'美系','Series'),(1,'保养','ServiceCategory'),(1,'检修部','ServiceDepartment'),(1,'保养','ServiceSubCategory'),(1,'会员卡','SettlementStyle'),(1,'破损','VehicleState'),(2,'樱桃','AccountExecutive'),(2,'现代','Brand'),(2,'白色','Color'),(2,'一次性消费','CustomerCategory'),(2,'朋友推荐','CustomerSource'),(2,'成华区','District'),(2,'私家车','Feature'),(2,'人保','Insurer'),(2,'阿朵','Maintanceman'),(2,'普通会员','MembershipClass'),(2,'韩系','Series'),(2,'洗车','ServiceCategory'),(2,'销售部','ServiceDepartment'),(2,'定期保养','ServiceSubCategory'),(2,'现金','SettlementStyle'),(2,'报废','VehicleState'),(3,'张力','AccountExecutive'),(3,'丰田','Brand'),(3,'银灰色','Color'),(3,'店面引导','CustomerSource'),(3,'武侯区','District'),(3,'政府用车','Feature'),(3,'平安','Insurer'),(3,'日系','Series'),(3,'客户部','ServiceDepartment'),(3,'免保','ServiceSubCategory'),(3,'完好','VehicleState'),(4,'标致','Brand'),(4,'红色','Color'),(4,'武侯区1','District'),(4,'法系','Series'),(4,'洗车部','ServiceDepartment'),(5,'大众','Brand'),(5,'武侯区wq','District'),(5,'德系','Series'),(6,'q','District');
/*!40000 ALTER TABLE `tabcommondatainfo` ENABLE KEYS */;
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
  `PlateID` varchar(45) NOT NULL COMMENT '车牌',
  `CustomerID` bigint(19) unsigned NOT NULL,
  `Brand` smallint(6) DEFAULT NULL COMMENT '品牌',
  `Series` smallint(6) DEFAULT NULL COMMENT '车系',
  `Color` smallint(6) DEFAULT NULL COMMENT '颜色',
  `Feature` smallint(6) DEFAULT NULL COMMENT '特性 \n政府用车、企业公车、私家车等',
  `BuyDate` date DEFAULT NULL COMMENT '购买日期',
  `MaintenanceFirstDate` date DEFAULT NULL COMMENT '首保养日',
  `MaintenanceNextDate` date DEFAULT NULL COMMENT '下次保养日',
  `AannualSurveyDate` date DEFAULT NULL COMMENT '年检日',
  `CommercialInsuranceExpiration` date DEFAULT NULL COMMENT '商业险到期日',
  `MandatoryInsuranceExpiration` date DEFAULT NULL COMMENT '交强险到期日',
  `Insurer` smallint(6) DEFAULT NULL COMMENT '保险公司',
  `VistCount` int(10) unsigned DEFAULT '0' COMMENT '来店次数',
  `VehicleState` smallint(6) DEFAULT NULL COMMENT '车辆状态',
  `MotorID` varchar(45) DEFAULT NULL COMMENT '发动机号',
  `FrameID` varchar(45) DEFAULT NULL COMMENT '车架号',
  `Odometer` int(10) unsigned DEFAULT '0' COMMENT '里程数',
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
INSERT INTO `tabvehicleinfo` VALUES ('川A039TV',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,26),('川A17T76',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12),('川A1CL35',32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,32),('川A561CK',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,16),('川A622YN',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,11),('川A66Z32',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,19),('川A67E76',15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15),('川A8QP62',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,10),('川AA2051',31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,31),('川AA261T',29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,29),('川AB0Z95',27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,27),('川AB9572',30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,30),('川ACS339',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,22),('川AD942Y',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,25),('川AEA366',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,21),('川AHB573',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,17),('川AJP987',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,14),('川AM125Y',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13),('川AQ1Q86',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,18),('川AS817S',28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,28),('川AST035',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,24),('川B56789',2,1,1,1,1,'2012-12-12','2012-12-13','2012-12-14','2012-12-15','2012-12-16','2012-12-17',2,2,2,'2','2',2,2),('川C12F34',70,-1,-1,-1,-1,'2014-03-21','2014-03-21','2014-03-21','2014-03-21','2014-03-21','2014-03-21',-1,0,-1,'',NULL,0,70),('川FR5353',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,20),('晋F12345',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,7),('晋F12346',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,9),('渝A12345',5,0,0,0,0,'2014-03-07','2014-03-07','2014-03-07','2014-03-07','2014-03-07','2014-03-07',0,12,0,'10',NULL,11,5),('渝F12345',4,2,2,3,2,'2012-12-12','2012-12-13','2012-12-14','2012-12-15','2012-12-16','2012-12-17',1,85,2,'8','9',10,4),('粤B14808',55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,0,55),('粤B1D502',64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,0,64),('粤B1D5D2',34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,0,34),('粤B2C720',38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66,NULL,NULL,NULL,0,38),('粤B3S961',49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,0,49),('粤B6Q757',43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,0,43),('粤B7A634',58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,0,58),('粤B7F152',61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,0,61),('粤B7F793',59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,0,59),('粤B8HH43',23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,23),('粤BB0138',35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,0,35),('粤BBR575',42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,0,42),('粤BC0959',36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,0,36),('粤BC4693',39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51,NULL,NULL,NULL,0,39),('粤BCJ537',37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,NULL,NULL,NULL,0,37),('粤BCL781',48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,0,48),('粤BCS936',45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,0,45),('粤BD6457',53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53,NULL,NULL,NULL,0,53),('粤BE9620',44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,0,44),('粤BEM399',47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,NULL,NULL,NULL,0,47),('粤BES309',60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,NULL,NULL,NULL,0,60),('粤BFS309',54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,0,54),('粤BHX476',51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,NULL,NULL,NULL,0,51),('粤BK72D6',57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,0,57),('粤BKK895',63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,NULL,0,63),('粤BM5920',50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,NULL,NULL,NULL,0,50),('粤BM59Z0',68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,68),('粤BMW208',66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,66),('粤BMW2D8',46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,NULL,NULL,NULL,0,46),('粤BU7344',33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54,NULL,NULL,NULL,0,33),('粤GE9620',65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,0,65),('粤L05838',56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,62,NULL,NULL,NULL,0,56),('粤SU7918',52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70,NULL,NULL,NULL,0,52),('粤ZAW47港',40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,NULL,NULL,NULL,0,40),('粤ZDT57A',62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,0,62),('粤ZDT57港',41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,NULL,0,41),('贵B3S961',67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,67),('辽F12345',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,6),('辽F12346',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,8);
/*!40000 ALTER TABLE `tabvehicleinfo` ENABLE KEYS */;
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
  `Category` smallint(6) DEFAULT NULL COMMENT '服务类别',
  `InsuranceAmount` int(10) unsigned DEFAULT '0' COMMENT '保险金额',
  `ClaimAmount` int(10) unsigned DEFAULT '0' COMMENT '索赔金额',
  `SettlementStyle` smallint(6) DEFAULT NULL COMMENT '结算方式',
  `MaintanceStartTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '维修起始时间',
  `MaintanceEndTime` datetime DEFAULT NULL COMMENT '维修截至时间',
  `PickupTime` datetime DEFAULT NULL COMMENT '取车时间',
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
INSERT INTO `tabservicerecord` VALUES (1,'渝F12345',1,0,0,0,1,'2014-03-26 13:27:04','2014-06-11 10:07:38','2014-08-11 10:07:38',1,1,0),(2,'渝F12345',2,1,3,4,1,'2014-03-26 13:27:44','2014-04-11 10:23:52','2014-05-11 10:23:52',3,1,5),(3,'渝F12345',2,1,1,2,1,'2014-03-12 11:13:34','2014-03-13 11:13:34','2014-03-14 11:13:34',2,0,5),(4,'渝F12345',1,0,1,2,1,'2014-03-11 11:17:12','2014-03-11 11:17:12','2014-03-11 11:17:12',1,0,3),(5,'渝F12345',-1,0,0,0,-1,'2014-03-14 14:41:12','2014-03-14 14:41:12','2014-03-14 14:41:12',-1,-1,1),(6,'川B56789',-1,0,0,0,-1,'2014-03-20 16:30:18','2014-03-20 16:30:18','2014-03-20 16:30:18',-1,-1,0),(7,'川B56789',-1,-1,0,0,-1,'2014-03-21 14:10:30','2014-03-21 14:10:30','2014-03-21 14:10:30',-1,-1,0),(8,'粤BMW208',-1,-1,0,0,-1,'2014-03-26 17:03:15','2014-03-26 17:03:15','2014-03-26 17:03:15',-1,-1,0),(9,'粤BMW208',-1,-1,0,0,-1,'2014-03-26 17:03:39','2014-03-26 17:03:39','2014-03-26 17:03:39',-1,-1,0);
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
-- Dumping events for database 'parkcustomercenter'
--

--
-- Dumping routines for database 'parkcustomercenter'
--
/*!50003 DROP PROCEDURE IF EXISTS `ChangeCommonData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `ChangeCommonData`( in txtValue LONGTEXT, out jsonValue LONGTEXT  )
EXITBODY:
BEGIN
	#<Data><Flag/><Customer><CustomerID></CustomerID><Customer><Vehicle><Plate/></Vehicle></Data>
	#0 Update
	#1 Insert
	#2 Delete 
	#Each SQL statement executed results in an error code, an SQLSTATE value, and an error message
	# ClientSide Error / ServerSide Error
	#The GET DIAGNOSTICS statement is typically used in a handler within a stored program. 其他地方也可以

	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' );
	declare strDataType varchar( 45 ) default ExtractValue( txtValue, '/Data/DataType' );
	declare nValueID SMALLINT unsigned default ExtractValue( txtValue, '/Data/ValueID' );
	declare strValue varchar( 45 ) default ExtractValue( txtValue, '/Data/Value' );

	declare strTip varchar( 45 ) default null;
	declare strError varchar( 45 ) default '';
	#DECLARE EXIT HANDLER FOR SQLWARNING BEGIN END;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
			BEGIN 
/*
				declare nNumber int default 0;
				declare strMsg TEXT;
				Get current Diagnostics nNumber = NUMBER;
				Get current diagnostics condition nNumber strMsg = MESSAGE_TEXT;
				set jsonValue = CONCAT( '{"Flag":0,"Message":"', strTip, '通用数据失败。\n', strError, '\n', strMsg,  '"}' );
*/
				set jsonValue = CONCAT( '{"Flag":0,"Message":"', strTip, '通用数据失败。\n', strError, '"}' );
				ROLLBACK; 
			END;

	set strTip = ( select case nFlag when 0 then '编辑' when 1 then '新增' when 2 then '删除' end );

	start transaction;#禁止隐式事务开启自己的事务
	
	if ( 0 = nFlag || 1 = nFlag ) then
		if ( exists ( select ValueID from  TabCommonDataInfo where DataType = strDataType and ValueID = nValueID ) ) then 
			begin
				if ( not exists ( select ValueID from  TabCommonDataInfo where DataType = strDataType and Value = strValue ) ) then
					Update TabCommonDataInfo Set Value = strValue where DataType = strDataType and ValueID = nValueID;
				else
					set strError = CONCAT( '【', strValue,'】已存在。' );
					SIGNAL SQLSTATE '22007';
				end if;
			end ;
		else
			begin
				select MAX( ValueID ) into nValueID from TabCommonDataInfo where DataType = strDataType;
				if ( nValueID is null ) then
					set nValueID = 1;
				else 
					set nValueID = nValueID + 1;
				end if;

				if ( not exists ( select ValueID from  TabCommonDataInfo where DataType = strDataType and Value = strValue ) ) then
					INSERT INTO TabCommonDataInfo( DataType, ValueID, Value ) VALUES ( strDataType, nValueID, strValue );
				else 
					set strError = CONCAT( '【', strValue,'】已存在。' );
					SIGNAL SQLSTATE '22007';#SIGNAL is the way to “return” an error. RESIGNAL / throw rethrow
				end if;
			end;
		end if;
	else if ( 2 = nFlag ) then
			begin
				Delete From TabCommonDataInfo where DataType = strDataType and ValueID = nValueID;
			end;
		end if;
	end if;

	commit;

	set jsonValue = CONCAT( '{"Flag":1,"Message":"', strTip, '通用数据成功。","ValueD":"', 
							nValueID, '","OperateCode":', nFlag, '}' );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeCustomerVehicleData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `ChangeCustomerVehicleData`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN #开启隐式事务
	#<Data><Flag/><Customer><CustomerID></CustomerID><Customer><Vehicle><Plate/></Vehicle></Data>
	#0 Update
	#1 Insert
	#2 Delete 

	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' );
	declare nCustomerID bigint unsigned default ExtractValue( txtValue, '/Data/Customer/CustomerID' );
	declare strName varchar( 45 ) default ExtractValue( txtValue, '/Data/Customer/Name' );
	declare strCredentialsID varchar( 45 ) default ExtractValue( txtValue, '/Data/Customer/CredentialsID' );
	declare strAddress varchar( 45 ) default ExtractValue( txtValue, '/Data/Customer/Address' );
	declare nDistrict SMALLINT default ExtractValue( txtValue, '/Data/Customer/District' );
	declare strMobilePhone varchar( 45 ) default ExtractValue( txtValue, '/Data/Customer/MobilePhone' );
	declare strLandline varchar( 45 ) default ExtractValue( txtValue, '/Data/Customer/Landline' );
	declare strEMail varchar( 45 ) default ExtractValue( txtValue, '/Data/Customer/EMail' );
	declare nCustomerSource SMALLINT default ExtractValue( txtValue, '/Data/Customer/CustomerSource' );
	declare nCustomerDepartment SMALLINT default ExtractValue( txtValue, '/Data/Customer/CustomerDepartment' );
	declare nAccountExecutive SMALLINT default ExtractValue( txtValue, '/Data/Customer/AccountExecutive' );
	declare dtVistFirstTime DateTime default ExtractValue( txtValue, '/Data/Customer/VistFirstTime' );
	declare dtEntryTime DateTime default ExtractValue( txtValue, '/Data/Customer/EntryTime' );
	declare nCustomerCategory SMALLINT default ExtractValue( txtValue, '/Data/Customer/CustomerCategory' );
	declare dtVistNewlyTime DateTime default ExtractValue( txtValue, '/Data/Customer/VistNewlyTime' );
	declare nConsumptionAmount bigint unsigned default ExtractValue( txtValue, '/Data/Customer/ConsumptionAmount' );
	declare nMembershipClass SMALLINT default ExtractValue( txtValue, '/Data/Customer/MembershipClass' );
	declare nMembershipCardSurplus bigint unsigned default ExtractValue( txtValue, '/Data/Customer/MembershipCardSurplus' );

	declare strPlateID varchar( 45 ) default ExtractValue( txtValue, '/Data/Vehicle/PlateID' );
	#declare nCustomerID bigint unsigned default ExtractValue( txtValue, '/Data/Vehicle/CustomerID' );
	declare nBrand SMALLINT default ExtractValue( txtValue, '/Data/Vehicle/Brand' );
	declare nSeries SMALLINT default ExtractValue( txtValue, '/Data/Vehicle/Series' );
	declare nColor SMALLINT default ExtractValue( txtValue, '/Data/Vehicle/Color' );
	declare nFeature SMALLINT default ExtractValue( txtValue, '/Data/Vehicle/Feature' );
	declare dtBuyDate DATE default ExtractValue( txtValue, '/Data/Vehicle/BuyDate' );
	declare dtMaintenanceFirstDate DATE default ExtractValue( txtValue, '/Data/Vehicle/MaintenanceFirstDate' );
	declare dtMaintenanceNextDate DATE default ExtractValue( txtValue, '/Data/Vehicle/MaintenanceNextDate' );
	declare dtAannualSurveyDate DATE default ExtractValue( txtValue, '/Data/Vehicle/AannualSurveyDate' );
	declare dtCommercialInsuranceExpiration DATE default ExtractValue( txtValue, '/Data/Vehicle/CommercialInsuranceExpiration' );
	declare dtMandatoryInsuranceExpiration DATE default ExtractValue( txtValue, '/Data/Vehicle/MandatoryInsuranceExpiration' );
	declare nInsurer SMALLINT default ExtractValue( txtValue, '/Data/Vehicle/Insurer' );
	declare nVistCount INT default ExtractValue( txtValue, '/Data/Vehicle/VistCount' );
	declare nVehicleState SMALLINT default ExtractValue( txtValue, '/Data/Vehicle/VehicleState' );
	declare strMotorID varchar( 45 ) default ExtractValue( txtValue, '/Data/Vehicle/MotorID' );
	#declare strFrameID varchar( 45 ) default ExtractValue( txtValue, '/Data/Vehicle/FrameID' );
	declare nOdometer INT unsigned default ExtractValue( txtValue, '/Data/Vehicle/Odometer' );
	declare nVehicleID bigint unsigned default ExtractValue( txtValue, '/Data/Vehicle/VehicleID' );

	declare strTip varchar( 45 ) default null;
	#DECLARE EXIT HANDLER FOR SQLWARNING BEGIN END;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
			BEGIN 
				set jsonValue = CONCAT( '{"Flag":0,"Message":"', strTip, '客户、车辆信息失败。"}' );
				ROLLBACK; 
			END;

	set strTip = ( select case nFlag when 0 then '编辑' when 1 then '新增' when 2 then '删除' end );

	start transaction;#禁止隐式事务开启自己的事务
	
	if ( 0 = nFlag || 1 = nFlag ) then
		if ( exists ( select CustomerID from  TabCustomerInfo where CustomerID = nCustomerID ) ) then 
			begin
				Update TabCustomerInfo Set Name = strName, CredentialsID = strCredentialsID,
										   Address = strAddress, District = nDistrict,
										   MobilePhone = strMobilePhone, Landline = strLandline,
										   EMail = strEMail, CustomerSource = nCustomerSource,
										   CustomerDepartment= nCustomerDepartment, AccountExecutive = nAccountExecutive,
										   VistFirstTime = dtVistFirstTime, EntryTime = dtEntryTime,
										   CustomerCategory = nCustomerCategory, VistNewlyTime = dtVistNewlyTime,
										   MembershipClass = nMembershipClass, ConsumptionAmount = nConsumptionAmount,
										   MembershipCardSurplus = nMembershipCardSurplus, CustomerState = null
					where CustomerID = nCustomerID;
				Update TabVehicleInfo Set PlateID = strPlateID, Brand = nBrand,
										  Series = nSeries, Color = nColor,
										  Feature = nFeature, BuyDate = dtBuyDate,
										  MaintenanceFirstDate = dtMaintenanceFirstDate, 
										  MaintenanceNextDate = dtMaintenanceNextDate,
										  AannualSurveyDate = dtAannualSurveyDate,
										  CommercialInsuranceExpiration = dtCommercialInsuranceExpiration,
										  MandatoryInsuranceExpiration = dtMandatoryInsuranceExpiration,
										  Insurer = nInsurer, VistCount = nVistCount,
										  VehicleState = nVehicleState, MotorID = strMotorID,
										  Odometer = nOdometer
					where VehicleID = nVehicleID;
			end ;
		else
			begin
				INSERT INTO TabCustomerInfo( Name, CredentialsID, Address, District, MobilePhone, Landline, EMail,
											 CustomerSource, CustomerDepartment, AccountExecutive, VistFirstTime,
											 EntryTime, CustomerCategory, VistNewlyTime, ConsumptionAmount, 
											 MembershipClass, MembershipCardSurplus, CustomerState ) VALUES (
											 strName, strCredentialsID, strAddress, nDistrict, strMobilePhone, strLandline,
											 strEMail, nCustomerSource, nCustomerDepartment, nAccountExecutive,
											dtVistFirstTime, dtEntryTime, nCustomerCategory,dtVistNewlyTime, nConsumptionAmount,
											nMembershipClass, nMembershipCardSurplus, null );
				set nCustomerID = last_insert_id( );

				INSERT INTO tabvehicleinfo( PlateID, CustomerID, Brand, Series, Color, Feature, BuyDate, MaintenanceFirstDate,
											MaintenanceNextDate, AannualSurveyDate, CommercialInsuranceExpiration,
											MandatoryInsuranceExpiration, Insurer, VistCount, VehicleState, MotorID, Odometer ) 
										VALUES ( strPlateID, nCustomerID, nBrand, nSeries, nColor, nFeature, dtBuyDate, 
											dtMaintenanceFirstDate, dtMaintenanceNextDate, dtAannualSurveyDate, 
											dtCommercialInsuranceExpiration, dtMandatoryInsuranceExpiration, nInsurer, 
											nVistCount, nVehicleState, strMotorID, nOdometer );
				set nVehicleID = last_insert_id( );
			end;
		end if;
	else if ( 2 = nFlag ) then
			begin
				Delete From TabCustomerInfo where CustomerID = nCustomerID;
			end;
		end if;
	end if;
/*
		case nFlag 
			when 0 then
				begin
					Update TabCustomerInfo Set Name = strName, CredentialsID = strCredentialsID,
											   Address = strAddress, District = nDistrict,
											   MobilePhone = strMobilePhone, Landline = strLandline,
											   EMail = strEMail, CustomerSource = nCustomerSource,
											   CustomerDepartment= nCustomerDepartment, AccountExecutive = nAccountExecutive,
											   VistFirstTime = dtVistFirstTime, EntryTime = dtEntryTime,
											   CustomerCategory = nCustomerCategory, VistNewlyTime = dtVistNewlyTime,
											   MembershipClass = nMembershipClass, ConsumptionAmount = nConsumptionAmount,
											   MembershipCardSurplus = nMembershipCardSurplus
						where CustomerID = nCustomerID;
					Update TabVehicleInfo Set PlateID = strPlateID, Brand = nBrand,
											  Series = nSeries, Color = nColor,
											  Feature = nFeature, BuyDate = dtBuyDate,
											  MaintenanceFirstDate = dtMaintenanceFirstDate, 
											  MaintenanceNextDate = dtMaintenanceNextDate,
											  AannualSurveyDate = dtAannualSurveyDate,
										      CommercialInsuranceExpiration = dtCommercialInsuranceExpiration,
											  MandatoryInsuranceExpiration = dtMandatoryInsuranceExpiration,
											  Insurer = nInsurer, VistCount = nVistCount,
											  VehicleState = nVehicleState, MotorID = strMotorID,
											  Odometer = nOdometer
						where VehicleID = nVehicleID;
				end ;
			when 1 then
				begin
					INSERT INTO TabCustomerInfo( Name, CredentialsID, Address, District, MobilePhone, Landline, EMail,
												 CustomerSource, CustomerDepartment, AccountExecutive, VistFirstTime,
												 EntryTime, CustomerCategory, VistNewlyTime, ConsumptionAmount, 
												 MembershipClass, MembershipCardSurplus, CustomerState ) VALUES (
												 strName, strCredentialsID, strAddress, nDistrict, strMobilePhone, strLandline,
												 strEMail, nCustomerSource, nCustomerDepartment, nAccountExecutive,
												dtVistFirstTime, dtEntryTime, nCustomerCategory,dtVistNewlyTime, nConsumptionAmount,
											    nMembershipClass, nMembershipCardSurplus, null );
					set nCustomerID = last_insert_id( );

					INSERT INTO tabvehicleinfo( PlateID, CustomerID, Brand, Series, Color, Feature, BuyDate, MaintenanceFirstDate,
												MaintenanceNextDate, AannualSurveyDate, CommercialInsuranceExpiration,
												MandatoryInsuranceExpiration, Insurer, VistCount, VehicleState, MotorID, Odometer ) 
											VALUES ( strPlateID, nCustomerID, nBrand, nSeries, nColor, nFeature, dtBuyDate, 
												dtMaintenanceFirstDate, dtMaintenanceNextDate, dtAannualSurveyDate, 
												dtCommercialInsuranceExpiration, dtMandatoryInsuranceExpiration, nInsurer, 
												nVistCount, nVehicleState, strMotorID, nOdometer );
					set nVehicleID = last_insert_id( );
				end;
			when 2 then
				begin
					Delete From TabCustomerInfo where CustomerID = nCustomerID;
				end;
		end case;
*/
	commit;

	set jsonValue = CONCAT( '{"Flag":1,"Message":"', strTip, '客户、车辆信息成功。","CustomerID":"', 
							nCustomerID, '","VehicleID":"', nVehicleID, '","OperateCode":', nFlag, '}' );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeServiceRecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `ChangeServiceRecord`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN #开启隐式事务
	#<Data><Flag/><Customer><CustomerID></CustomerID><Customer><Vehicle><Plate/></Vehicle></Data>
	#0 Update
	#1 Insert
	#2 Delete 

	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' );
	declare nServiceID bigint unsigned default ExtractValue( txtValue, '/Data/ServiceID' );
	declare strPlateID varchar( 45 ) default ExtractValue( txtValue, '/Data/PlateID' );
	declare nSubCategory SMALLINT default ExtractValue( txtValue, '/Data/SubCategory' );
	declare nCategory SMALLINT default ExtractValue( txtValue, '/Data/Category' );
	declare nInsuranceAmount INT unsigned default ExtractValue( txtValue, '/Data/InsuranceAmount' );
	declare nClaimAmount INT unsigned default ExtractValue( txtValue, '/Data/ClaimAmount' );
	declare nSettlementStyle SMALLINT default ExtractValue( txtValue, '/Data/SettlementStyle' );
	declare dtMaintanceStartTime DateTime default ExtractValue( txtValue, '/Data/MaintanceStartTime' );
	declare dtMaintanceEndTime DateTime default ExtractValue( txtValue, '/Data/MaintanceEndTime' );
	declare dtPickupTime DateTime default ExtractValue( txtValue, '/Data/PickupTime' );
	declare nServiceDepartment SMALLINT default ExtractValue( txtValue, '/Data/ServiceDepartment' );
	declare nMaintanceman SMALLINT default ExtractValue( txtValue, '/Data/Maintanceman' );
	declare nServiceConsumptionAmount SMALLINT unsigned default ExtractValue( txtValue, '/Data/ServiceConsumptionAmount' );

	declare strTip varchar( 45 ) default null;
	#DECLARE EXIT HANDLER FOR SQLWARNING BEGIN END;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
			BEGIN 
				set jsonValue = CONCAT( '{"Flag":0,"Message":"', strTip, '服务信息失败。"}' );
				ROLLBACK; 
			END;

	set strTip = ( select case nFlag when 0 then '编辑' when 1 then '新增' when 2 then '删除' end );

	start transaction;#禁止隐式事务开启自己的事务
	
	if ( 0 = nFlag || 1 = nFlag ) then
		if ( exists ( select ServiceID from  TabServiceRecord where ServiceID = nServiceID ) ) then 
			begin
				Update TabServiceRecord Set SubCategory = nSubCategory, Category = nCategory,
										   InsuranceAmount = nInsuranceAmount, ClaimAmount = nClaimAmount,
										   SettlementStyle = nSettlementStyle, MaintanceStartTime = dtMaintanceStartTime,
										   MaintanceEndTime = dtMaintanceEndTime, PickupTime = dtPickupTime,
										   ServiceDepartment= nServiceDepartment, Maintanceman = nMaintanceman,
										   ServiceConsumptionAmount = nServiceConsumptionAmount
					where ServiceID = nServiceID;
			end ;
		else
			begin
				INSERT INTO TabServiceRecord( PlateID, SubCategory, Category, InsuranceAmount, ClaimAmount, 
											 SettlementStyle, MaintanceStartTime, MaintanceEndTime, PickupTime,
											 ServiceDepartment, Maintanceman, ServiceConsumptionAmount ) VALUES (
											 strPlateID, nSubCategory, nCategory, nInsuranceAmount, nClaimAmount,
											 nSettlementStyle, dtMaintanceStartTime, dtMaintanceEndTime, dtPickupTime,
											 nServiceDepartment, nMaintanceman, nServiceConsumptionAmount );
				set nServiceID = last_insert_id( );
			end;
		end if;
	else if ( 2 = nFlag ) then
			begin
				Delete From TabServiceRecord where ServiceID = nServiceID;
			end;
		end if;
	end if;

	commit;

	set jsonValue = CONCAT( '{"Flag":1,"Message":"', strTip, '服务信息成功。","ServiceID":"', 
							nServiceID, '","OperateCode":', nFlag, '}' );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExecuteSQLDynamic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `ExecuteSQLDynamic`( inout strSQL LONGTEXT )
EXITBODY:
BEGIN
	SET @STMTSQL = strSQL;
	PREPARE STMT FROM @STMTSQL;
	EXECUTE STMT;
	DEALLOCATE PREPARE STMT;
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExportCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `ExportCustomer`( in txtValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><Where/></Data>
	declare strSQL LONGTEXT default null;
	declare strWhere varchar( 1024 ) default ExtractValue( txtValue, '/Data/Where' );

	set strSQL = CONCAT( "select a.CustomerID 客户编号, Name 客户名称,
						  b.PlateID 车牌号码, a.CredentialsID 证件号码, a.Address 客户地址,
						  ( select Value from tabcommondatainfo where a.District = ValueID and DataType = 'District' ) 所属区域,
						  a.MobilePhone 手机号码, a.Landline 固定号码, a.EMail 邮箱地址,
						  ( select Value from tabcommondatainfo where a.CustomerSource = ValueID and DataType = 'CustomerSource' ) 客户来源,
						  ( select Value from tabcommondatainfo where a.CustomerDepartment = ValueID and DataType = 'ServiceDepartment' ) 隶属部门,
						  ( select Value from tabcommondatainfo where a.AccountExecutive = ValueID and DataType = 'AccountExecutive' ) 客户专员,
						  a.VistFirstTime 初次来访日,a.EntryTime 建档日,
						  ( select Value from tabcommondatainfo where a.CustomerCategory = ValueID and DataType = 'CustomerCategory' ) 客户类别,
						  VistNewlyTime 最近一次到店时间,ConsumptionAmount 历史消费金额,
						  ( select Value from tabcommondatainfo where a.MembershipClass = ValueID and DataType = 'MembershipClass' ) 会员卡类别,
						  a.MembershipCardSurplus 会员卡余额,
					      b.Brand 品牌, b.Series 车系, b.Color 车辆颜色,
						  b.Feature 车辆颜色,b.BuyDate 购车日期,b.MaintenanceFirstDate 首保日期,
						  b.MaintenanceNextDate 下次保养日期,b.AannualSurveyDate 年检日期,
						  b.CommercialInsuranceExpiration 商业险到期日,b.MandatoryInsuranceExpiration 交强险到期日,
						  b.Insurer 保险公司,b.VistCount 历史来店次数,b.VehicleState 车辆总体状态,
						  b.MotorID 发动机号码,b.Odometer 公里数
						  From TabCustomerInfo a, TabVehicleInfo b Where a.CustomerID = b.CustomerID ", 
						  IF ( 0 = CHAR_LENGTH( strWhere ), '', ' AND ' ), strWhere );

	call ExecuteSQLDynamic( strSQL );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerJson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `GetCustomerJson`( inout txtValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><CustomerID/></Data>
	declare strCustomerID varchar( 45 ) default ExtractValue( txtValue, '/Data/CustomerID' );
	declare bAll bool default true;

	if ( 0 <> CHAR_LENGTH( strCustomerID ) ) then
		set	bAll = false;
	end if;

	if ( bAll ) then
/*
		set txtValue = ( select Concat( '"List":[',
                            GROUP_CONCAT( CONCAT( '{"CustomerID":"', CustomerID, '",' ),
                                          CONCAT( '"Name":"', IFNULL( Name, '' ), '",' ),
                                          CONCAT( '"CredentialsID":"', IFNULL( CredentialsID, '' ), '",' ),
                                          CONCAT( '"Address":"', IFNULL( Address, '' ), '",' ),
                                          CONCAT( '"District":"', IFNULL( District, '' ), '",' ),
                                          CONCAT( '"MobilePhone":"', IFNULL( MobilePhone, '' ), '",' ),
                                          CONCAT( '"Landline":"', IFNULL( Landline, '' ), '",' ),
                                          CONCAT( '"EMail":"', IFNULL( EMail, '' ), '",' ),
                                          CONCAT( '"CustomerSource":"', IFNULL( CustomerSource, '' ), '",' ),
                                          CONCAT( '"CustomerDepartment":"', IFNULL( CustomerDepartment, '' ), '",' ),
                                          CONCAT( '"AccountExecutive":"', IFNULL( AccountExecutive, '' ), '",' ),
                                          CONCAT( '"VistFirstTime":"', IFNULL( VistFirstTime, '' ), '",' ),
                                          CONCAT( '"EntryTime":"', IFNULL( EntryTime, '' ), '",' ),
                                          CONCAT( '"CustomerCategory":"', IFNULL( CustomerCategory, '' ), '",' ),
                                          CONCAT( '"VistNewlyTime":"', IFNULL( VistNewlyTime, '' ), '",' ),
                                          CONCAT( '"ConsumptionAmount":"', IFNULL( ConsumptionAmount, '' ), '",' ),
                                          CONCAT( '"MembershipClass":"', IFNULL( MembershipClass, '' ), '",' ),
                                          CONCAT( '"MembershipCardSurplus":"', IFNULL( MembershipCardSurplus, '' ), '",' ),
                                          CONCAT( '"CustomerState":"', IFNULL( CustomerState, '' ), '"}' )
                         ), ']' )
            from TabCustomerInfo );
*/
	set txtValue = ( select Concat( '"List":[',
                            GROUP_CONCAT( CONCAT( '{"CustomerID":"', CustomerID, '",' ),
                                          CONCAT( '"Name":"', IFNULL( Name, '' ), '",' ),
                                          CONCAT( '"CredentialsID":"', IFNULL( CredentialsID, '' ), '",' ),
                                          CONCAT( '"Address":"', IFNULL( Address, '' ), '",' ),
                                          CONCAT( '"District":"', IFNULL( ( select Value from tabcommondatainfo where District = ValueID and DataType = 'District' ), '' ), '",' ),
                                          CONCAT( '"MobilePhone":"', IFNULL( MobilePhone, '' ), '",' ),
                                          CONCAT( '"Landline":"', IFNULL( Landline, '' ), '",' ),
                                          CONCAT( '"EMail":"', IFNULL( EMail, '' ), '",' ),
                                          CONCAT( '"CustomerSource":"', IFNULL( ( select Value from tabcommondatainfo where CustomerSource = ValueID and DataType = 'CustomerSource' ), '' ), '",' ),
                                          CONCAT( '"CustomerDepartment":"', IFNULL( ( select Value from tabcommondatainfo where CustomerDepartment = ValueID and DataType = 'ServiceDepartment' ), '' ), '",' ),
                                          CONCAT( '"AccountExecutive":"', IFNULL( ( select Value from tabcommondatainfo where AccountExecutive = ValueID and DataType = 'AccountExecutive' ), '' ), '",' ),
                                          CONCAT( '"VistFirstTime":"', IFNULL( VistFirstTime, '' ), '",' ),
                                          CONCAT( '"EntryTime":"', IFNULL( EntryTime, '' ), '",' ),
                                          CONCAT( '"CustomerCategory":"', IFNULL( ( select Value from tabcommondatainfo where CustomerCategory = ValueID and DataType = 'CustomerCategory' ), '' ), '",' ),
                                          CONCAT( '"VistNewlyTime":"', IFNULL( VistNewlyTime, '' ), '",' ),
                                          CONCAT( '"ConsumptionAmount":"', IFNULL( ConsumptionAmount, '' ), '",' ),
                                          CONCAT( '"MembershipClass":"', IFNULL( ( select Value from tabcommondatainfo where MembershipClass = ValueID and DataType = 'MembershipClass' ), '' ), '",' ),
                                          CONCAT( '"MembershipCardSurplus":"', IFNULL( MembershipCardSurplus, '' ), '",' ),
                                          CONCAT( '"CustomerState":"', IFNULL( CustomerState, '' ), '"}' )
                         ), ']' )
            from TabCustomerInfo );
	else
		set txtValue = ( select Concat( '"List":[',
                            GROUP_CONCAT( CONCAT( '{"CustomerID":"', CustomerID, '",' ),
                                          CONCAT( '"Name":"', IFNULL( Name, '' ), '",' ),
                                          CONCAT( '"CredentialsID":"', IFNULL( CredentialsID, '' ), '",' ),
                                          CONCAT( '"Address":"', IFNULL( Address, '' ), '",' ),
                                          CONCAT( '"District":"', IFNULL( ( select Value from tabcommondatainfo where District = ValueID and DataType = 'District' ), '' ), '",' ),
                                          CONCAT( '"MobilePhone":"', IFNULL( MobilePhone, '' ), '",' ),
                                          CONCAT( '"Landline":"', IFNULL( Landline, '' ), '",' ),
                                          CONCAT( '"EMail":"', IFNULL( EMail, '' ), '",' ),
                                          CONCAT( '"CustomerSource":"', IFNULL( ( select Value from tabcommondatainfo where CustomerSource = ValueID and DataType = 'CustomerSource' ), '' ), '",' ),
                                          CONCAT( '"CustomerDepartment":"', IFNULL( ( select Value from tabcommondatainfo where CustomerDepartment = ValueID and DataType = 'ServiceDepartment' ), '' ), '",' ),
                                          CONCAT( '"AccountExecutive":"', IFNULL( ( select Value from tabcommondatainfo where AccountExecutive = ValueID and DataType = 'AccountExecutive' ), '' ), '",' ),
                                          CONCAT( '"VistFirstTime":"', IFNULL( VistFirstTime, '' ), '",' ),
                                          CONCAT( '"EntryTime":"', IFNULL( EntryTime, '' ), '",' ),
                                          CONCAT( '"CustomerCategory":"', IFNULL( ( select Value from tabcommondatainfo where CustomerCategory = ValueID and DataType = 'CustomerCategory' ), '' ), '",' ),
                                          CONCAT( '"VistNewlyTime":"', IFNULL( VistNewlyTime, '' ), '",' ),
                                          CONCAT( '"ConsumptionAmount":"', IFNULL( ConsumptionAmount, '' ), '",' ),
                                          CONCAT( '"MembershipClass":"', IFNULL( ( select Value from tabcommondatainfo where MembershipClass = ValueID and DataType = 'MembershipClass' ), '' ), '",' ),
                                          CONCAT( '"MembershipCardSurplus":"', IFNULL( MembershipCardSurplus, '' ), '",' ),
                                          CONCAT( '"CustomerState":"', IFNULL( CustomerState, '' ), '"}' )
                         ), ']' )
            from TabCustomerInfo where CustomerID = strCustomerID );	
	end if;
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerVehicleJson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `GetCustomerVehicleJson`( inout txtValue LONGTEXT )
EXITBODY:
BEGIN
	declare strCustomerID varchar( 45 ) default ExtractValue( txtValue, '/Data/CustomerID' );
	declare strPlate varchar( 45 ) default ExtractValue( txtValue, '/Data/Plate' );
	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' ); #0 All 1 CustomerID 2 Plate
	declare strSQL LONGTEXT default null;
/*
	set strSQL= CONCAT( "Select Concat( '\"List\":[',
											GROUP_CONCAT( 
												CONCAT( '{\"CustomerID\":\"', CustomerID, '\",' ),
												CONCAT( '\"CustomerInfo\":', IFNULL( CustomerInfo, 'null' ), ',' ),
												CONCAT( '\"VehicleInfo\":', IFNULL( VehicleInfo, 'null' ), '}' )
											 ), ']') into @Result from ( select Customer.CustomerID, Customer.CustomerInfo, Vehicle.VehicleInfo from
            ( select CustomerID,
                            GROUP_CONCAT( CONCAT( '{\"CustomerID\":\"', CustomerID, '\",' ),
                                          CONCAT( '\"Name\":\"', IFNULL( Name, '' ), '\",' ),
                                          CONCAT( '\"CredentialsID\":\"', IFNULL( CredentialsID, '' ), '\",' ),
                                          CONCAT( '\"Address\":\"', IFNULL( Address, '' ), '\",' ),
                                          CONCAT( '\"District\":\"', IFNULL( District, '' ), '\",' ),
                                          CONCAT( '\"MobilePhone\":\"', IFNULL( MobilePhone, '' ), '\",' ),
                                          CONCAT( '\"Landline\":\"', IFNULL( Landline, '' ), '\",' ),
                                          CONCAT( '\"EMail\":\"', IFNULL( EMail, '' ), '\",' ),
                                          CONCAT( '\"CustomerSource\":\"', IFNULL( CustomerSource, '' ), '\",' ),
                                          CONCAT( '\"CustomerDepartment\":\"', IFNULL( CustomerDepartment, '' ), '\",' ),
                                          CONCAT( '\"AccountExecutive\":\"', IFNULL( AccountExecutive, '' ), '\",' ),
                                          CONCAT( '\"VistFirstTime\":\"', IFNULL( VistFirstTime, '' ), '\",' ),
                                          CONCAT( '\"EntryTime\":\"', IFNULL( EntryTime, '' ), '\",' ),
                                          CONCAT( '\"CustomerCategory\":\"', IFNULL( CustomerCategory, '' ), '\",' ),
                                          CONCAT( '\"VistNewlyTime\":\"', IFNULL( VistNewlyTime, '' ), '\",' ),
                                          CONCAT( '\"ConsumptionAmount\":\"', IFNULL( ConsumptionAmount, '' ), '\",' ),
                                          CONCAT( '\"MembershipClass\":\"', IFNULL( MembershipClass, '' ), '\",' ),
                                          CONCAT( '\"MembershipCardSurplus\":\"', IFNULL( MembershipCardSurplus, '' ), '\",' ),
                                          CONCAT( '\"CustomerState\":\"', IFNULL( CustomerState, '' ), '\"}' )
                         ) as CustomerInfo
						from TabCustomerInfo group by CustomerID ", IF ( 1 = nFlag, CONCAT( "Having CustomerID = ", strCustomerID ) , "" ), ") Customer
        left join
            ( Select CustomerID, PlateID, CONCAT( '[',
                                                               GROUP_CONCAT( CONCAT( '{\"PlateID\":\"', PlateID, '\",' ),
                                                                             CONCAT( '\"CustomerID\":\"', CustomerID, '\",' ),
                                                                             CONCAT( '\"Brand\":\"', IFNULL( Brand, '' ), '\",' ),
                                                                             CONCAT( '\"Series\":\"', IFNULL( Series, '' ),'\",' ),
                                                                             CONCAT( '\"Color\":\"', IFNULL( Color, '' ),'\",' ),
                                                                             CONCAT( '\"Feature\":\"', IFNULL( Feature, '' ),'\",' ),
                                                                             CONCAT( '\"BuyDate\":\"', IFNULL( BuyDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceFirstDate\":\"', IFNULL( MaintenanceFirstDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceNextDate\":\"', IFNULL( MaintenanceNextDate, '' ),'\",' ),
                                                                             CONCAT( '\"AannualSurveyDate\":\"', IFNULL( AannualSurveyDate, '' ), '\",' ),
                                                                             CONCAT( '\"CommercialInsuranceExpiration\":\"', IFNULL( CommercialInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"MandatoryInsuranceExpiration\":\"', IFNULL( MandatoryInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"Insurer\":\"', IFNULL( Insurer, '' ), '\",' ),
                                                                             CONCAT( '\"VistCount\":\"', IFNULL( VistCount, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleState\":\"', IFNULL( VehicleState, '' ), '\",' ),
                                                                             CONCAT( '\"MotorID\":\"', IFNULL( MotorID, '' ), '\",' ),
                                                                             CONCAT( '\"FrameID\":\"', IFNULL( FrameID, '' ), '\",' ),
                                                                             CONCAT( '\"Odometer\":\"', IFNULL( Odometer, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleID\":\"', VehicleID, '\"}' ) ), ']' )  as VehicleInfo
                                     From TabVehicleInfo group by CustomerID ", IF ( 2 = nFlag, CONCAT( "Having PlateID ='", strPlate, "'" ), "" ),  " ) Vehicle
        on Customer.CustomerID = Vehicle.CustomerID ) TabJson " );
*/
	set strSQL= CONCAT( "Select Concat( '\"List\":[',
											GROUP_CONCAT( 
												CONCAT( '{\"CustomerID\":\"', CustomerID, '\",' ),
												CONCAT( '\"CustomerInfo\":', IFNULL( CustomerInfo, 'null' ), ',' ),
												CONCAT( '\"VehicleInfo\":', IFNULL( VehicleInfo, 'null' ), '}' )
											 ), ']') into @Result from ( select Customer.CustomerID, Customer.CustomerInfo, Vehicle.VehicleInfo from
            ( select a.CustomerID,
                            GROUP_CONCAT( CONCAT( '{\"CustomerID\":\"', a.CustomerID, '\",' ),
                                          CONCAT( '\"Name\":\"', IFNULL( Name, '' ), '\",' ),
                                          CONCAT( '\"CredentialsID\":\"', IFNULL( CredentialsID, '' ), '\",' ),
                                          CONCAT( '\"Address\":\"', IFNULL( Address, '' ), '\",' ),
                                          CONCAT( '\"District\":\"', IFNULL( ( select Value from tabcommondatainfo where District = ValueID and DataType = 'District' ), '' ), '\",' ),
                                          CONCAT( '\"MobilePhone\":\"', IFNULL( MobilePhone, '' ), '\",' ),
                                          CONCAT( '\"Landline\":\"', IFNULL( Landline, '' ), '\",' ),
                                          CONCAT( '\"EMail\":\"', IFNULL( EMail, '' ), '\",' ),
                                          CONCAT( '\"CustomerSource\":\"', IFNULL( ( select Value from tabcommondatainfo where CustomerSource = ValueID and DataType = 'CustomerSource' ), '' ), '\",' ),
                                          CONCAT( '\"CustomerDepartment\":\"', IFNULL( ( select Value from tabcommondatainfo where CustomerDepartment = ValueID and DataType = 'ServiceDepartment' ), '' ), '\",' ),
                                          CONCAT( '\"AccountExecutive\":\"', IFNULL( ( select Value from tabcommondatainfo where AccountExecutive = ValueID and DataType = 'AccountExecutive' ), '' ), '\",' ),
                                          CONCAT( '\"VistFirstTime\":\"', IFNULL( VistFirstTime, '' ), '\",' ),
                                          CONCAT( '\"EntryTime\":\"', IFNULL( EntryTime, '' ), '\",' ),
                                          CONCAT( '\"CustomerCategory\":\"', IFNULL( ( select Value from tabcommondatainfo where CustomerCategory = ValueID and DataType = 'CustomerCategory' ), '' ), '\",' ),
                                          CONCAT( '\"VistNewlyTime\":\"', IFNULL( VistNewlyTime, '' ), '\",' ),
                                          CONCAT( '\"ConsumptionAmount\":\"', IFNULL( ConsumptionAmount, '' ), '\",' ),
                                          CONCAT( '\"MembershipClass\":\"', IFNULL( ( select Value from tabcommondatainfo where MembershipClass = ValueID and DataType = 'MembershipClass' ), '' ), '\",' ),
                                          CONCAT( '\"MembershipCardSurplus\":\"', IFNULL( MembershipCardSurplus, '' ), '\",' ),
                                          CONCAT( '\"CustomerState\":\"', IFNULL( CustomerState, '' ), '\"}' )
                         ) as CustomerInfo
						from TabCustomerInfo a, TabVehicleInfo b where a.CustomerID = b.CustomerID ", 
IF ( 1 = nFlag, CONCAT( " and a.CustomerID = ", strCustomerID ) , "" ), IF ( 2 = nFlag, CONCAT( " and b.PlateID = '", strPlate, "'" ) , "" ), " group by a.CustomerID ) Customer
        left join
            ( Select CustomerID, PlateID, CONCAT( '[',
                                                               GROUP_CONCAT( CONCAT( '{\"PlateID\":\"', PlateID, '\",' ),
                                                                             CONCAT( '\"CustomerID\":\"', CustomerID, '\",' ),
                                                                             CONCAT( '\"Brand\":\"', IFNULL( ( select Value from tabcommondatainfo where Brand = ValueID and DataType = 'Brand' ), '' ), '\",' ),
                                                                             CONCAT( '\"Series\":\"', IFNULL( ( select Value from tabcommondatainfo where Series = ValueID and DataType = 'Series' ), '' ),'\",' ),
                                                                             CONCAT( '\"Color\":\"', IFNULL( ( select Value from tabcommondatainfo where Color = ValueID and DataType = 'Color' ), '' ),'\",' ),
                                                                             CONCAT( '\"Feature\":\"', IFNULL( ( select Value from tabcommondatainfo where Feature = ValueID and DataType = 'Feature' ), '' ),'\",' ),
                                                                             CONCAT( '\"BuyDate\":\"', IFNULL( BuyDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceFirstDate\":\"', IFNULL( MaintenanceFirstDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceNextDate\":\"', IFNULL( MaintenanceNextDate, '' ),'\",' ),
                                                                             CONCAT( '\"AannualSurveyDate\":\"', IFNULL( AannualSurveyDate, '' ), '\",' ),
                                                                             CONCAT( '\"CommercialInsuranceExpiration\":\"', IFNULL( CommercialInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"MandatoryInsuranceExpiration\":\"', IFNULL( MandatoryInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"Insurer\":\"', IFNULL( ( select Value from tabcommondatainfo where Insurer = ValueID and DataType = 'Insurer' ), '' ), '\",' ),
                                                                             CONCAT( '\"VistCount\":\"', IFNULL( VistCount, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleState\":\"', IFNULL( ( select Value from tabcommondatainfo where VehicleState = ValueID and DataType = 'VehicleState' ), '' ), '\",' ),
                                                                             CONCAT( '\"MotorID\":\"', IFNULL( MotorID, '' ), '\",' ),
                                                                             CONCAT( '\"FrameID\":\"', IFNULL( FrameID, '' ), '\",' ),
                                                                             CONCAT( '\"Odometer\":\"', IFNULL( Odometer, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleID\":\"', VehicleID, '\"}' ) ), ']' )  as VehicleInfo
                                     From TabVehicleInfo group by CustomerID ", IF ( 2 = nFlag, CONCAT( "Having PlateID ='", strPlate, "'" ), "" ),  " ) Vehicle
        on Customer.CustomerID = Vehicle.CustomerID ) TabJson " );

	call ExecuteSQLDynamic( strSQL );
	set txtValue = @Result;
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerVehicleServiceJson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `GetCustomerVehicleServiceJson`( inout txtValue LONGTEXT )
EXITBODY:
BEGIN
	declare strCustomerID varchar( 45 ) default ExtractValue( txtValue, '/Data/CustomerID' );
	declare strPlate varchar( 45 ) default ExtractValue( txtValue, '/Data/Plate' );
	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' ); #0 All 1 CustomerID 2 Plate
	declare strSQL LONGTEXT default null;
/*
	set strSQL= CONCAT( "Select Concat( '\"List\":[',
											GROUP_CONCAT( 
												CONCAT( '{\"CustomerID\":\"', CustomerID, '\",' ),
												CONCAT( '\"CustomerInfo\":', IFNULL( CustomerInfo, 'null' ), ',' ),
												CONCAT( '\"VehicleInfo\":', IFNULL( VehicleInfo, 'null' ), ',' ),
												CONCAT( '\"ServiceInfo\":', IFNULL( ServiceInfo, 'null' ), '}' )
											 ), ']') into @Result from ( select Customer.CustomerID, Customer.CustomerInfo, Vehicle.VehicleInfo, Service.ServiceInfo from
            ( select CustomerID,
                            GROUP_CONCAT( CONCAT( '{\"CustomerID\":\"', CustomerID, '\",' ),
                                          CONCAT( '\"Name\":\"', IFNULL( Name, '' ), '\",' ),
                                          CONCAT( '\"CredentialsID\":\"', IFNULL( CredentialsID, '' ), '\",' ),
                                          CONCAT( '\"Address\":\"', IFNULL( Address, '' ), '\",' ),
                                          CONCAT( '\"District\":\"', IFNULL( District, '' ), '\",' ),
                                          CONCAT( '\"MobilePhone\":\"', IFNULL( MobilePhone, '' ), '\",' ),
                                          CONCAT( '\"Landline\":\"', IFNULL( Landline, '' ), '\",' ),
                                          CONCAT( '\"EMail\":\"', IFNULL( EMail, '' ), '\",' ),
                                          CONCAT( '\"CustomerSource\":\"', IFNULL( CustomerSource, '' ), '\",' ),
                                          CONCAT( '\"CustomerDepartment\":\"', IFNULL( CustomerDepartment, '' ), '\",' ),
                                          CONCAT( '\"AccountExecutive\":\"', IFNULL( AccountExecutive, '' ), '\",' ),
                                          CONCAT( '\"VistFirstTime\":\"', IFNULL( VistFirstTime, '' ), '\",' ),
                                          CONCAT( '\"EntryTime\":\"', IFNULL( EntryTime, '' ), '\",' ),
                                          CONCAT( '\"CustomerCategory\":\"', IFNULL( CustomerCategory, '' ), '\",' ),
                                          CONCAT( '\"VistNewlyTime\":\"', IFNULL( VistNewlyTime, '' ), '\",' ),
                                          CONCAT( '\"ConsumptionAmount\":\"', IFNULL( ConsumptionAmount, '' ), '\",' ),
                                          CONCAT( '\"MembershipClass\":\"', IFNULL( MembershipClass, '' ), '\",' ),
                                          CONCAT( '\"MembershipCardSurplus\":\"', IFNULL( MembershipCardSurplus, '' ), '\",' ),
                                          CONCAT( '\"CustomerState\":\"', IFNULL( CustomerState, '' ), '\"}' )
                         ) as CustomerInfo
						from TabCustomerInfo group by CustomerID ", IF ( 1 = nFlag, CONCAT( "Having CustomerID = ", strCustomerID ) , "" ), ") Customer
        left join
            ( Select CustomerID, PlateID, CONCAT( '[',
                                                               GROUP_CONCAT( CONCAT( '{\"PlateID\":\"', PlateID, '\",' ),
                                                                             CONCAT( '\"CustomerID\":\"', CustomerID, '\",' ),
                                                                             CONCAT( '\"Brand\":\"', IFNULL( Brand, '' ), '\",' ),
                                                                             CONCAT( '\"Series\":\"', IFNULL( ( Series, '' ),'\",' ),
                                                                             CONCAT( '\"Color\":\"', IFNULL( Color, '' ),'\",' ),
                                                                             CONCAT( '\"Feature\":\"', IFNULL( Feature, '' ),'\",' ),
                                                                             CONCAT( '\"BuyDate\":\"', IFNULL( BuyDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceFirstDate\":\"', IFNULL( MaintenanceFirstDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceNextDate\":\"', IFNULL( MaintenanceNextDate, '' ),'\",' ),
                                                                             CONCAT( '\"AannualSurveyDate\":\"', IFNULL( AannualSurveyDate, '' ), '\",' ),
                                                                             CONCAT( '\"CommercialInsuranceExpiration\":\"', IFNULL( CommercialInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"MandatoryInsuranceExpiration\":\"', IFNULL( MandatoryInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"Insurer\":\"', IFNULL( Insurer, '' ), '\",' ),
                                                                             CONCAT( '\"VistCount\":\"', IFNULL( VistCount, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleState\":\"', IFNULL( VehicleState, '' ), '\",' ),
                                                                             CONCAT( '\"MotorID\":\"', IFNULL( MotorID, '' ), '\",' ),
                                                                             CONCAT( '\"FrameID\":\"', IFNULL( FrameID, '' ), '\",' ),
                                                                             CONCAT( '\"Odometer\":\"', IFNULL( Odometer, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleID\":\"', VehicleID, '\"}' ) ), ']' )  as VehicleInfo
                                     From TabVehicleInfo group by CustomerID ", IF ( 2 = nFlag, CONCAT( "Having PlateID ='", strPlate, "'" ), "" ),  " ) Vehicle
        on Customer.CustomerID = Vehicle.CustomerID
        left join
            ( Select PlateID, ServiceID, CONCAT( '[',
                                                               GROUP_CONCAT( CONCAT( '{\"ServiceID\":\"', ServiceID, '\",' ),
                                                                             CONCAT( '\"PlateID\":\"', PlateID, '\",' ),
                                                                             CONCAT( '\"SubCategory\":\"', IFNULL( SubCategory, '' ), '\",' ),
                                                                             CONCAT( '\"Category\":\"', IFNULL( Category, '' ), '\",' ),
                                                                             CONCAT( '\"InsuranceAmount\":\"', IFNULL( InsuranceAmount, '' ), '\",' ),
                                                                             CONCAT( '\"ClaimAmount\":\"', IFNULL( ClaimAmount, '' ), '\",' ),
                                                                             CONCAT( '\"SettlementStyle\":\"', IFNULL( SettlementStyle, '' ), '\",' ),
                                                                             CONCAT( '\"MaintanceStartTime\":\"', IFNULL( MaintanceStartTime, '' ), '\",' ),
                                                                             CONCAT( '\"MaintanceEndTime\":\"', IFNULL( MaintanceEndTime, '' ), '\",' ),
                                                                             CONCAT( '\"PickupTime\":\"', IFNULL( PickupTime, '' ), '\",' ),
                                                                             CONCAT( '\"ServiceDepartment\":\"', IFNULL( ServiceDepartment, '' ), '\",' ),
                                                                             CONCAT( '\"Maintanceman\":\"', IFNULL( Maintanceman, '' ), '\",' ),
                                                                             CONCAT( '\"ServiceConsumptionAmount\":\"', IFNULL( ServiceConsumptionAmount, '' ), '\"}' ) ), ']' ) as ServiceInfo
                                     From TabServiceRecord group by PlateID ) Service on Vehicle.PlateID = Service.PlateID ) TabJson " );
*/
	set strSQL= CONCAT( "Select Concat( '\"List\":[',
											GROUP_CONCAT( 
												CONCAT( '{\"CustomerID\":\"', CustomerID, '\",' ),
												CONCAT( '\"CustomerInfo\":', IFNULL( CustomerInfo, 'null' ), ',' ),
												CONCAT( '\"VehicleInfo\":', IFNULL( VehicleInfo, 'null' ), ',' ),
												CONCAT( '\"ServiceInfo\":', IFNULL( ServiceInfo, 'null' ), '}' )
											 ), ']') into @Result from ( select Customer.CustomerID, Customer.CustomerInfo, Vehicle.VehicleInfo, Service.ServiceInfo from
            ( select CustomerID,
                            GROUP_CONCAT( CONCAT( '{\"CustomerID\":\"', CustomerID, '\",' ),
                                          CONCAT( '\"Name\":\"', IFNULL( Name, '' ), '\",' ),
                                          CONCAT( '\"CredentialsID\":\"', IFNULL( CredentialsID, '' ), '\",' ),
                                          CONCAT( '\"Address\":\"', IFNULL( Address, '' ), '\",' ),
                                          CONCAT( '\"District\":\"', IFNULL( ( select Value from tabcommondatainfo where District = ValueID and DataType = 'District' ), '' ), '\",' ),
                                          CONCAT( '\"MobilePhone\":\"', IFNULL( MobilePhone, '' ), '\",' ),
                                          CONCAT( '\"Landline\":\"', IFNULL( Landline, '' ), '\",' ),
                                          CONCAT( '\"EMail\":\"', IFNULL( EMail, '' ), '\",' ),
                                          CONCAT( '\"CustomerSource\":\"', IFNULL( ( select Value from tabcommondatainfo where CustomerSource = ValueID and DataType = 'CustomerSource' ), '' ), '\",' ),
                                          CONCAT( '\"CustomerDepartment\":\"', IFNULL( ( select Value from tabcommondatainfo where CustomerDepartment = ValueID and DataType = 'ServiceDepartment' ), '' ), '\",' ),
                                          CONCAT( '\"AccountExecutive\":\"', IFNULL( ( select Value from tabcommondatainfo where AccountExecutive = ValueID and DataType = 'AccountExecutive' ), '' ), '\",' ),
                                          CONCAT( '\"VistFirstTime\":\"', IFNULL( VistFirstTime, '' ), '\",' ),
                                          CONCAT( '\"EntryTime\":\"', IFNULL( EntryTime, '' ), '\",' ),
                                          CONCAT( '\"CustomerCategory\":\"', IFNULL( ( select Value from tabcommondatainfo where CustomerCategory = ValueID and DataType = 'CustomerCategory' ), '' ), '\",' ),
                                          CONCAT( '\"VistNewlyTime\":\"', IFNULL( VistNewlyTime, '' ), '\",' ),
                                          CONCAT( '\"ConsumptionAmount\":\"', IFNULL( ConsumptionAmount, '' ), '\",' ),
                                          CONCAT( '\"MembershipClass\":\"', IFNULL( ( select Value from tabcommondatainfo where MembershipClass = ValueID and DataType = 'MembershipClass' ), '' ), '\",' ),
                                          CONCAT( '\"MembershipCardSurplus\":\"', IFNULL( MembershipCardSurplus, '' ), '\",' ),
                                          CONCAT( '\"CustomerState\":\"', IFNULL( CustomerState, '' ), '\"}' )
                         ) as CustomerInfo
						from TabCustomerInfo group by CustomerID ", IF ( 1 = nFlag, CONCAT( "Having CustomerID = ", strCustomerID ) , "" ), ") Customer
        left join
            ( Select CustomerID, PlateID, CONCAT( '[',
                                                               GROUP_CONCAT( CONCAT( '{\"PlateID\":\"', PlateID, '\",' ),
                                                                             CONCAT( '\"CustomerID\":\"', CustomerID, '\",' ),
                                                                             CONCAT( '\"Brand\":\"', IFNULL( ( select Value from tabcommondatainfo where Brand = ValueID and DataType = 'Brand' ), '' ), '\",' ),
                                                                             CONCAT( '\"Series\":\"', IFNULL( ( ( select Value from tabcommondatainfo where Series = ValueID and DataType = 'Series' ), '' ),'\",' ),
                                                                             CONCAT( '\"Color\":\"', IFNULL( ( select Value from tabcommondatainfo where Color = ValueID and DataType = 'Color' ), '' ),'\",' ),
                                                                             CONCAT( '\"Feature\":\"', IFNULL( ( select Value from tabcommondatainfo where Feature = ValueID and DataType = 'Feature' ), '' ),'\",' ),
                                                                             CONCAT( '\"BuyDate\":\"', IFNULL( BuyDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceFirstDate\":\"', IFNULL( MaintenanceFirstDate, '' ),'\",' ),
                                                                             CONCAT( '\"MaintenanceNextDate\":\"', IFNULL( MaintenanceNextDate, '' ),'\",' ),
                                                                             CONCAT( '\"AannualSurveyDate\":\"', IFNULL( AannualSurveyDate, '' ), '\",' ),
                                                                             CONCAT( '\"CommercialInsuranceExpiration\":\"', IFNULL( CommercialInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"MandatoryInsuranceExpiration\":\"', IFNULL( MandatoryInsuranceExpiration, '' ), '\",' ),
                                                                             CONCAT( '\"Insurer\":\"', IFNULL( ( select Value from tabcommondatainfo where Insurer = ValueID and DataType = 'Insurer' ), '' ), '\",' ),
                                                                             CONCAT( '\"VistCount\":\"', IFNULL( VistCount, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleState\":\"', IFNULL( ( select Value from tabcommondatainfo where VehicleState = ValueID and DataType = 'VehicleState' ), '' ), '\",' ),
                                                                             CONCAT( '\"MotorID\":\"', IFNULL( MotorID, '' ), '\",' ),
                                                                             CONCAT( '\"FrameID\":\"', IFNULL( FrameID, '' ), '\",' ),
                                                                             CONCAT( '\"Odometer\":\"', IFNULL( Odometer, '' ), '\",' ),
                                                                             CONCAT( '\"VehicleID\":\"', VehicleID, '\"}' ) ), ']' )  as VehicleInfo
                                     From TabVehicleInfo group by CustomerID ", IF ( 2 = nFlag, CONCAT( "Having PlateID ='", strPlate, "'" ), "" ),  " ) Vehicle
        on Customer.CustomerID = Vehicle.CustomerID
        left join
            ( Select PlateID, ServiceID, CONCAT( '[',
                                                               GROUP_CONCAT( CONCAT( '{\"ServiceID\":\"', ServiceID, '\",' ),
                                                                             CONCAT( '\"PlateID\":\"', PlateID, '\",' ),
                                                                             CONCAT( '\"SubCategory\":\"', IFNULL( ( select Value from tabcommondatainfo where SubCategory = ValueID and DataType = 'ServiceSubCategory' ), '' ), '\",' ),
                                                                             CONCAT( '\"Category\":\"', IFNULL( ( select Value from tabcommondatainfo where Category = ValueID and DataType = 'ServiceCategory' ), '' ), '\",' ),
                                                                             CONCAT( '\"InsuranceAmount\":\"', IFNULL( InsuranceAmount, '' ), '\",' ),
                                                                             CONCAT( '\"ClaimAmount\":\"', IFNULL( ClaimAmount, '' ), '\",' ),
                                                                             CONCAT( '\"SettlementStyle\":\"', IFNULL( ( select Value from tabcommondatainfo where SettlementStyle = ValueID and DataType = 'SettlementStyle' ), '' ), '\",' ),
                                                                             CONCAT( '\"MaintanceStartTime\":\"', IFNULL( MaintanceStartTime, '' ), '\",' ),
                                                                             CONCAT( '\"MaintanceEndTime\":\"', IFNULL( MaintanceEndTime, '' ), '\",' ),
                                                                             CONCAT( '\"PickupTime\":\"', IFNULL( PickupTime, '' ), '\",' ),
                                                                             CONCAT( '\"ServiceDepartment\":\"', IFNULL( ( select Value from tabcommondatainfo where ServiceDepartment = ValueID and DataType = 'ServiceDepartment' ), '' ), '\",' ),
                                                                             CONCAT( '\"Maintanceman\":\"', IFNULL( ( select Value from tabcommondatainfo where Maintanceman = ValueID and DataType = 'Maintanceman' ), '' ), '\",' ),
                                                                             CONCAT( '\"ServiceConsumptionAmount\":\"', IFNULL( ServiceConsumptionAmount, '' ), '\"}' ) ), ']' ) as ServiceInfo
                                     From TabServiceRecord group by PlateID ) Service on Vehicle.PlateID = Service.PlateID ) TabJson " );

	call ExecuteSQLDynamic( strSQL );
	set txtValue = @Result;
	
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVehicleJson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `GetVehicleJson`( inout txtValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><CustomerID/></Data>
	declare strPlate varchar( 45 ) default ExtractValue( txtValue, '/Data/Plate' );
	declare bAll bool default true;

	if ( 0 <> CHAR_LENGTH( strPlate ) ) then
		set	bAll = false;
	end if;

	if ( bAll ) then
/*
		set txtValue = ( Select Concat( '"List":[',
										   GROUP_CONCAT( CONCAT( '{"PlateID":"', PlateID, '",' ),
														 CONCAT( '"CustomerID":"', CustomerID, '",' ),
														 CONCAT( '"Brand":"', IFNULL( Brand, '' ), '",' ),
														 CONCAT( '"Series":"', IFNULL( Series, '' ),'",' ),
														 CONCAT( '"Color":"', IFNULL( Color, '' ),'",' ),
														 CONCAT( '"Feature":"', IFNULL( Feature, '' ),'",' ),
														 CONCAT( '"BuyDate":"', IFNULL( BuyDate, '' ),'",' ),
														 CONCAT( '"MaintenanceFirstDate":"', IFNULL( MaintenanceFirstDate, '' ),'",' ),
														 CONCAT( '"MaintenanceNextDate":"', IFNULL( MaintenanceNextDate, '' ),'",' ),
														 CONCAT( '"AannualSurveyDate":"', IFNULL( AannualSurveyDate, '' ), '",' ),
														 CONCAT( '"CommercialInsuranceExpiration":"', IFNULL( CommercialInsuranceExpiration, '' ), '",' ),
														 CONCAT( '"MandatoryInsuranceExpiration":"', IFNULL( MandatoryInsuranceExpiration, '' ), '",' ),
														 CONCAT( '"Insurer":"', IFNULL( Insurer, '' ), '",' ),
														 CONCAT( '"VistCount":"', IFNULL( VistCount, '' ), '",' ),
														 CONCAT( '"VehicleState":"', IFNULL( VehicleState, '' ), '",' ),
														 CONCAT( '"MotorID":"', IFNULL( MotorID, '' ), '",' ),
														 CONCAT( '"FrameID":"', IFNULL( FrameID, '' ), '",' ),
														 CONCAT( '"Odometer":"', IFNULL( Odometer, '' ), '",' ),
														 CONCAT( '"VehicleID":"', VehicleID, '"}' ) ), ']' )
                                     From TabVehicleInfo );
*/
		set txtValue = ( Select Concat( '"List":[',
										   GROUP_CONCAT( CONCAT( '{"PlateID":"', PlateID, '",' ),
														 CONCAT( '"CustomerID":"', CustomerID, '",' ),
														 CONCAT( '"Brand":"', IFNULL( ( select Value from tabcommondatainfo where Brand = ValueID and DataType = 'Brand' ), '' ), '",' ),
														 CONCAT( '"Series":"', IFNULL( ( select Value from tabcommondatainfo where Series = ValueID and DataType = 'Series' ), '' ),'",' ),
														 CONCAT( '"Color":"', IFNULL( ( select Value from tabcommondatainfo where Color = ValueID and DataType = 'Color' ), '' ),'",' ),
														 CONCAT( '"Feature":"', IFNULL( ( select Value from tabcommondatainfo where Feature = ValueID and DataType = 'Feature' ), '' ),'",' ),
														 CONCAT( '"BuyDate":"', IFNULL( BuyDate, '' ),'",' ),
														 CONCAT( '"MaintenanceFirstDate":"', IFNULL( MaintenanceFirstDate, '' ),'",' ),
														 CONCAT( '"MaintenanceNextDate":"', IFNULL( MaintenanceNextDate, '' ),'",' ),
														 CONCAT( '"AannualSurveyDate":"', IFNULL( AannualSurveyDate, '' ), '",' ),
														 CONCAT( '"CommercialInsuranceExpiration":"', IFNULL( CommercialInsuranceExpiration, '' ), '",' ),
														 CONCAT( '"MandatoryInsuranceExpiration":"', IFNULL( MandatoryInsuranceExpiration, '' ), '",' ),
														 CONCAT( '"Insurer":"', IFNULL( ( select Value from tabcommondatainfo where Insurer = ValueID and DataType = 'Insurer' ), '' ), '",' ),
														 CONCAT( '"VistCount":"', IFNULL( VistCount, '' ), '",' ),
														 CONCAT( '"VehicleState":"', IFNULL( ( select Value from tabcommondatainfo where VehicleState = ValueID and DataType = 'VehicleState' ), '' ), '",' ),
														 CONCAT( '"MotorID":"', IFNULL( MotorID, '' ), '",' ),
														 CONCAT( '"FrameID":"', IFNULL( FrameID, '' ), '",' ),
														 CONCAT( '"Odometer":"', IFNULL( Odometer, '' ), '",' ),
														 CONCAT( '"VehicleID":"', VehicleID, '"}' ) ), ']' )
                                     From TabVehicleInfo );
	else
		set txtValue = ( Select Concat( '"List":[',
										   GROUP_CONCAT( CONCAT( '{"PlateID":"', PlateID, '",' ),
														 CONCAT( '"CustomerID":"', CustomerID, '",' ),
														 CONCAT( '"Brand":"', IFNULL( ( select Value from tabcommondatainfo where Brand = ValueID and DataType = 'Brand' ), '' ), '",' ),
														 CONCAT( '"Series":"', IFNULL( ( select Value from tabcommondatainfo where Series = ValueID and DataType = 'Series' ), '' ),'",' ),
														 CONCAT( '"Color":"', IFNULL( ( select Value from tabcommondatainfo where Color = ValueID and DataType = 'Color' ), '' ),'",' ),
														 CONCAT( '"Feature":"', IFNULL( ( select Value from tabcommondatainfo where Feature = ValueID and DataType = 'Feature' ), '' ),'",' ),
														 CONCAT( '"BuyDate":"', IFNULL( BuyDate, '' ),'",' ),
														 CONCAT( '"MaintenanceFirstDate":"', IFNULL( MaintenanceFirstDate, '' ),'",' ),
														 CONCAT( '"MaintenanceNextDate":"', IFNULL( MaintenanceNextDate, '' ),'",' ),
														 CONCAT( '"AannualSurveyDate":"', IFNULL( AannualSurveyDate, '' ), '",' ),
														 CONCAT( '"CommercialInsuranceExpiration":"', IFNULL( CommercialInsuranceExpiration, '' ), '",' ),
														 CONCAT( '"MandatoryInsuranceExpiration":"', IFNULL( MandatoryInsuranceExpiration, '' ), '",' ),
														 CONCAT( '"Insurer":"', IFNULL( ( select Value from tabcommondatainfo where Insurer = ValueID and DataType = 'Insurer' ), '' ), '",' ),
														 CONCAT( '"VistCount":"', IFNULL( VistCount, '' ), '",' ),
														 CONCAT( '"VehicleState":"', IFNULL( ( select Value from tabcommondatainfo where VehicleState = ValueID and DataType = 'VehicleState' ), '' ), '",' ),
														 CONCAT( '"MotorID":"', IFNULL( MotorID, '' ), '",' ),
														 CONCAT( '"FrameID":"', IFNULL( FrameID, '' ), '",' ),
														 CONCAT( '"Odometer":"', IFNULL( Odometer, '' ), '",' ),
														 CONCAT( '"VehicleID":"', VehicleID, '"}' ) ), ']' )
                                     From TabVehicleInfo where PlateID =  strPlate );
	end if;
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IgnoreOrDeleteCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `IgnoreOrDeleteCustomer`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN #开启隐式事务 SQL==>Database / XQuery( XML Query )==>XML XPath XPointer XLink XSLT Schema
	#使用前缀来避免命名冲突 <X:a>hash<X:a>  xmlns:namespace-prefix="namespaceURI"
	# CSS===>HTML XSL(XSLT XPath XSL-FO)===>XML
	#选取节点 / // . .. @Attr 
	#谓语（Predicates）条件过滤 []
	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' ); #0 忽略待录入客户 1 忽略待更新 2 删除客户
	declare nCustomerID bigint unsigned default ExtractValue( txtValue, '/Data/Customer/CustomerID' );
	declare strTip varchar( 45 ) default null;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
			BEGIN 
				set jsonValue = CONCAT( '{"Flag":0,"Message":"', strTip, '客户信息失败。"}' );
				ROLLBACK; 
			END;
	
	set strTip = ( select case nFlag when 0 then '忽略待录入' when 1 then '忽略待更新' when 2 then '删除' end );

	start transaction;

	if ( 1 = nFlag ) then
		begin
			update TabCustomerInfo set CustomerState = null where CustomerID = nCustomerID;
		end;
	else if ( 0 = nFlag || 2 = nFlag ) then
			begin
				Delete From TabCustomerInfo where CustomerID = nCustomerID;
			end;
		 end if;
	end if;

	commit;

	set jsonValue = CONCAT( '{"Flag":1,"Message":"', strTip, '客户信息成功。"}' );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ImportCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `ImportCustomer`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN 
#<Data><Flag/><Customer><name>Test</name><Plate></Plate></Customer></Data>
# ExtractValue(@xml, '//b[$@i]') UserVariable SessionVariable
# ExtractValue(xml, '//a[$i]') LocalVariable
#Load_file( )==>String
	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' ); #
	declare nCustomerCount int default ExtractValue( txtValue, 'Count(/Data/Customer)' );
	declare nIndex int default 1;
	declare nCurrentIndex int default 1;
	declare strName Varchar( 45 ) default null;
	declare strPlate Varchar( 45 ) default null;
	declare nCustomerID bigint unsigned default null;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
			BEGIN 
				set jsonValue = CONCAT( '{"Flag":0,"Message":"导入客户信息失败。"}' );
				ROLLBACK; 
			END;

	start transaction;

	WLABEL:	while nIndex <= nCustomerCount do
		set nCurrentIndex = nIndex;
		set nIndex = nIndex + 1;

		set strName = ExtractValue( txtValue, '/Data/Customer[$nCurrentIndex]/Name' );
		if ( 0 = CHAR_LENGTH( strName ) ) then
			ITERATE WLABEL;
		end if;

		set strPlate = ExtractValue( txtValue, '/Data/Customer[$nCurrentIndex]/Plate' );
		if ( 0 = CHAR_LENGTH( strPlate ) ) then
			ITERATE WLABEL;
		end if;

		if ( exists( select PlateID from TabVehicleInfo where PlateID = strPlate ) ) then
			ITERATE WLABEL;
		end if;

		Insert Into TabCustomerInfo( Name, VistFirstTime, VistNewlyTime, CustomerState ) VALUES( strName, now( ), now( ), null ); # New
		set nCustomerID = last_insert_id( );
		Insert Into TabVehicleInfo( CustomerID, PlateID ) VALUES( nCustomerID, strPlate );
	end while WLABEL;

	commit;

	set jsonValue = CONCAT( '{"Flag":1,"Message":"导入客户信息成功。"}' );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MainCallSP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `MainCallSP`( inout txtXml LONGTEXT )
EXITBODY:
BEGIN
	#<Data><SubSP>OperateCommonDataInfo</SubSP><Params><Operate>Select</Operate></Params></Data>
	#In <Data><SubSP/><Params><p1/><p2></Params><Accessor/><Data>
	#Out <Data><Result>0 1</Result><Message/><Values><v1/></v2></Values></Data> Or JSON

	# 根据SubSP调用具体功能SP
	# 支持多Select语句返回结果集 客户连接加上多结果集选项 并遍历
	#SELECT * FROM test.t;
	#SELECT * FROM test.t;
	#SELECT * FROM test.t;
	#MySQL supports a very useful extension that enables the use of regular SELECT statements 
	#支持递归调用 其内部可以调用Sp function	
	#(that is, without using cursors or local variables) inside a stored procedure. 

	# CALL SP() out参数返回任何类型值
	# SQL statement use Function() /  A function can be called from inside a statement and can return a scalar value.
	#函数不支持递归调用 可以调用函数 SP
	declare strSubSP varchar( 45 ) default ExtractValue( txtXml, '/Data/SubSP' );
	declare strParams LONGTEXT default ExtractValue( txtXml, '/Data/Params' );
	
	case strSubSP 
		when 'OperateCommonDataInfo' then
		Call OperateCommonDataInfo( txtXml );
		when '' then
		Call OperateCommonDataInfo( txtXml );
	end case;
	
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `QueryCommonDataByType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `QueryCommonDataByType`( in txtValue LONGTEXT )
EXITBODY:
BEGIN
	#set @txtXml = '<Data><SubSP>OperateCommonDataInfo</SubSP><Params><Operate>Select</Operate><DataType>District</DataType></Params></Data>';
	#call ParkCustomerCenter.MainCallSP( @txtXml, @blob );
	#select @txtXml;

	declare strDataType LONGTEXT default ExtractValue( txtValue, '/Data/DataType' );

	select ValueID, Value, ValueID 数据项ID, Value 数据项值 from TabCommonDataInfo where DataType = strDataType;
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `QueryCommonDataInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `QueryCommonDataInfo`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN
	#set @txtXml = '<Data><SubSP>OperateCommonDataInfo</SubSP><Params><Operate>Select</Operate><DataType>District</DataType></Params></Data>';
	#call ParkCustomerCenter.MainCallSP( @txtXml, @blob );
	#select @txtXml;

	declare strDataType LONGTEXT default ExtractValue( txtValue, '/Data/DataType' );
	declare strSQL LONGTEXT default null;

	if ( 'All' = strDataType ) then
			set jsonValue = ( Select CONCAT( '{',
														   GROUP_CONCAT( Col ), '}' ) 
								 From ( Select CONCAT( '"', DataType, '":[',
														   GROUP_CONCAT( CONCAT( '{"ValueID":"',ValueID,'"' ),
																		 CONCAT( ',"Value":"', Value, '"}' ) ), ']' ) as Col 
								 From TabCommonDataInfo group by DataType order by ValueID ) Tab );
	else
			set strSQL = CONCAT( "Select CONCAT( '{',
													   GROUP_CONCAT( Col ), '}' ) into @Result
							 From ( Select CONCAT( '\"', DataType, '\":[',
													   GROUP_CONCAT( CONCAT( '{\"ValueID\":\"',ValueID,'\"' ),
																	 CONCAT( ',\"Value\":\"', Value, '\"}' ) ), ']' ) as Col 
							 From TabCommonDataInfo Where DataType in ( ", strDataType, " ) group by DataType order by ValueID ) Tab" );
			Call ExecuteSQLDynamic( strSQL );
			set jsonValue = @Result;
	end if;

END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `QueryCustomerData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `QueryCustomerData`( in txtValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><Flag/><Limit>100</Limit><Plate/></Data>
	#0待更新客户
	#1新客户
	#2所有客户 

	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' );
	declare strSQL LONGTEXT default null;
	declare nLimit int unsigned default ExtractValue( txtValue, '/Data/Limit' );
	declare strWhere varchar( 1024 ) default ExtractValue( txtValue, '/Data/Where' );
/*
	set strSQL = CONCAT( "select District DistrictID,
						  CustomerSource CustomerSourceID,
						  CustomerDepartment CustomerDepartmentID,
						  AccountExecutive AccountExecutiveID,
						  CustomerCategory CustomerCategoryID,
						  MembershipClass MembershipClassID,
						  CustomerID 客户编号, Name 客户名称,
						  CredentialsID 证件号码, Address 客户地址,
						  ( select Value from tabcommondatainfo where District = ValueID and DataType = 'District' ) 所属区域,
						  MobilePhone 手机号码, Landline 固定号码, EMail 邮箱地址,
						  ( select Value from tabcommondatainfo where CustomerSource = ValueID and DataType = 'CustomerSource' ) 客户来源,
						  ( select Value from tabcommondatainfo where CustomerDepartment = ValueID and DataType = 'ServiceDepartment' ) 隶属部门,
						  ( select Value from tabcommondatainfo where AccountExecutive = ValueID and DataType = 'AccountExecutive' ) 客户专员,
						  VistFirstTime 初次来访日,EntryTime 建档日,
						  ( select Value from tabcommondatainfo where CustomerCategory = ValueID and DataType = 'CustomerCategory' ) 客户类别,
						  VistNewlyTime 最近一次到店时间,ConsumptionAmount 历史消费金额,
						  ( select Value from tabcommondatainfo where MembershipClass = ValueID and DataType = 'MembershipClass' ) 会员卡类别,MembershipCardSurplus 会员卡余额或次数
						  From TabCustomerInfo ", 
						  IF ( 2 <> nFlag, CONCAT( 'Where CustomerState = ', nFlag ), '' ),
						  IF ( 0 < nLimit, Concat( ' Limit ', nLimit ), '' ) );
*/
	set strSQL = CONCAT( "select 
						  b.PlateID,b.CustomerID,b.Brand,b.Series,b.Color,b.Feature,b.BuyDate,b.MaintenanceFirstDate,
						  b.MaintenanceNextDate,b.AannualSurveyDate,b.CommercialInsuranceExpiration,b.MandatoryInsuranceExpiration,
						  b.Insurer,b.VistCount,b.VehicleState,b.MotorID,b.FrameID,b.Odometer,b.VehicleID,	
						  a.District DistrictID,
						  a.CustomerSource CustomerSourceID,
						  a.CustomerDepartment CustomerDepartmentID,
						  a.AccountExecutive AccountExecutiveID,
						  a.CustomerCategory CustomerCategoryID,
						  a.MembershipClass MembershipClassID,
						  a.CustomerID, Name,
						  a.CredentialsID, a.Address,
						  ( select Value from tabcommondatainfo where a.District = ValueID and DataType = 'District' ) District,
						  a.MobilePhone, a.Landline, a.EMail,
						  ( select Value from tabcommondatainfo where a.CustomerSource = ValueID and DataType = 'CustomerSource' ) CustomerSource,
						  ( select Value from tabcommondatainfo where a.CustomerDepartment = ValueID and DataType = 'ServiceDepartment' ) CustomerDepartment,
						  ( select Value from tabcommondatainfo where a.AccountExecutive = ValueID and DataType = 'AccountExecutive' ) AccountExecutive,
						  a.VistFirstTime,a.EntryTime,
						  ( select Value from tabcommondatainfo where a.CustomerCategory = ValueID and DataType = 'CustomerCategory' ) CustomerCategory,
						  VistNewlyTime,ConsumptionAmount,
						  ( select Value from tabcommondatainfo where a.MembershipClass = ValueID and DataType = 'MembershipClass' ) MembershipClass,
						  a.MembershipCardSurplus
						  From TabCustomerInfo a, TabVehicleInfo b Where a.CustomerID = b.CustomerID ", 
						  IF ( 2 <> nFlag, CONCAT( 'and CustomerState = ', nFlag ), '' ),
						  IF ( 0 = CHAR_LENGTH( strWhere ), '', ' AND ' ), strWhere, 
						  IF ( 0 < nLimit, Concat( ' Limit ', nLimit ), '' ) );

	call ExecuteSQLDynamic( strSQL );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `QueryCustomerVehicleData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `QueryCustomerVehicleData`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><Flag>2</Flag><CustomerID></CustomerID><Plate>渝F40799</Plate></Data>
	#declare strCustomerID varchar( 45 ) default ExtractValue( txtValue, '/Data/CustomerID' );
	#declare strPlate varchar( 45 ) default ExtractValue( txtValue, '/Data/Plate' );
	#declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' ); #0 All 1 CustomerID 2 Plate
	#declare strSQL LONGTEXT default null;
	#{ Flag:1/0,Message:失败/成功,List:[]}

	CALL GetCustomerVehicleJson( txtValue );

	if ( txtValue is null ) then
		set jsonValue = '{"Flag":0,"Message":"查询结果为空。"}';
	else
		set jsonValue = Concat( '{"Flag":2,', '"Message":"获取客户信息成功。",', txtValue, '}' );
	end if;
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `QueryInOutImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `QueryInOutImage`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><Flag>%1</Flag><Plate>%2</Plate><VistNewlyTime>%3</VistNewlyTime></Data>
	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' );
	declare strPlate LONGTEXT default ExtractValue( txtValue, '/Data/Plate' );
	declare dtDateTime DATETIME default ExtractValue( txtValue, '/Data/VistNewlyTime' );

	set jsonValue = ( select CONCAT( '[', GROUP_CONCAT( '{"EnterImagePath":"', IFNULL( EnterImagePath, '' ), '",',
														'"LeaveImagePath":"', IFNULL( LeaveImagePath, '' ), '"}' ) , ']' )
					   from TabInOutRecordInfo a, TabInOutImageInfo b 
					  where a.RecordID = b.RecordID and a.EnterTime = dtDateTime and a.EnterPlate = strPlate );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `QueryServiceData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `QueryServiceData`( in txtValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><Flag/><CustomerID/><Plate/><Limit>100</Limit></Data>
	declare strPlate varchar( 45 ) default ExtractValue( txtValue, '/Data/Plate' );
	declare strCustomerID varchar( 4 ) default ExtractValue( txtValue, '/Data/CustomerID' );
	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' ); #0 All 1 CustomerID 2 Plate
	declare strSQL LONGTEXT default null;
	declare nLimit int unsigned default ExtractValue( txtValue, '/Data/Limit' );
/*
	set strSQL = CONCAT( "Select ServiceID 服务项目编号, PlateID 车牌号码,
            ( select Value from tabcommondatainfo where Category = ValueID and DataType = 'ServiceCategory' ) 服务项目类别,
			( select Value from tabcommondatainfo where SubCategory = ValueID and DataType = 'ServiceSubCategory' ) 服务子类别,
            InsuranceAmount 保险金额,ClaimAmount 索赔金额,
            ( select Value from tabcommondatainfo where SettlementStyle = ValueID and DataType = 'SettlementStyle' ) 结算方式,
			MaintanceStartTime 维修起始时间,
            MaintanceEndTime 维修截止时间, PickupTime 取车时间,
            ( select Value from tabcommondatainfo where ServiceDepartment = ValueID and DataType = 'ServiceDepartment' ) 维修部门,
			( select Value from tabcommondatainfo where Maintanceman = ValueID and DataType = 'Maintanceman' ) 维修人员,
            ServiceConsumptionAmount 消费金额 
            From TabServiceRecord",
			IF ( 0 = nFlag, '', 
				IF ( 1 = nFlag, 
					CONCAT( ' where PlateID in ( select PlateID from TabVehicleInfo Where CustomerID = ', strCustomerID, ')' ), 
					CONCAT( ' Where PlateID = \'', strPlate, '\'' ) ) ),
			#IF ( 0 <> CHAR_LENGTH( strPlate ), CONCAT( ' Where PlateID = \'', strPlate, '\'' ), '' ),
			IF ( 0 < nLimit, Concat( ' Limit ', nLimit ), '' ) );
*/

	set strSQL = CONCAT( "Select SubCategory SubCategoryID, SubCategory SubCategoryID, 
			SettlementStyle SettlementStyleID, ServiceDepartment ServiceDepartmentID, 
			Maintanceman MaintancemanID,ServiceID, PlateID,
            ( select Value from tabcommondatainfo where Category = ValueID and DataType = 'ServiceCategory' ) ServiceCategory,
			( select Value from tabcommondatainfo where SubCategory = ValueID and DataType = 'ServiceSubCategory' ),
            InsuranceAmount,ClaimAmount,
            ( select Value from tabcommondatainfo where SettlementStyle = ValueID and DataType = 'SettlementStyle' ) SettlementStyle,
			MaintanceStartTime, MaintanceEndTime, PickupTime,
            ( select Value from tabcommondatainfo where ServiceDepartment = ValueID and DataType = 'ServiceDepartment' ) ServiceDepartment,
			( select Value from tabcommondatainfo where Maintanceman = ValueID and DataType = 'Maintanceman' ) Maintanceman,
            ServiceConsumptionAmount 
            From TabServiceRecord",
			IF ( 0 = nFlag, '', 
				IF ( 1 = nFlag, 
					CONCAT( ' where PlateID in ( select PlateID from TabVehicleInfo Where CustomerID = ', strCustomerID, ')' ), 
					CONCAT( ' Where PlateID = \'', strPlate, '\'' ) ) ),
			#IF ( 0 <> CHAR_LENGTH( strPlate ), CONCAT( ' Where PlateID = \'', strPlate, '\'' ), '' ),
			IF ( 0 < nLimit, Concat( ' Limit ', nLimit ), '' ) );

	call ExecuteSQLDynamic( strSQL );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `QueryUserInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `QueryUserInfo`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN
	#set @txtXml = '<Data><SubSP>OperateCommonDataInfo</SubSP><Params><Operate>Select</Operate><DataType>District</DataType></Params></Data>';
	#call ParkCustomerCenter.MainCallSP( @txtXml, @blob );
	#select @txtXml;

	declare strUserType LONGTEXT default ExtractValue( txtValue, '/Data/UserType' );
	declare strSQL LONGTEXT default null;

	set jsonValue = ( select Concat( '[', GROUP_concat( 
														CONCAT( '{"UserID":"', UserID, '",' ),
														CONCAT( '"LoginName":"', LoginName, '",' ),
														CONCAT( '"Pwd":"', IFNULL( LoginPwd, '' ), '"}' ) ) , ']')
						From TabuserInfo );
END EXITBODY ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VehicleEnter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `VehicleEnter`( in txtValue LONGTEXT, out jsonValue LONGTEXT )
EXITBODY:
BEGIN
	#<Data><Flag>2</Flag><CustomerID></CustomerID><Plate>渝F40799</Plate></Data>
	# 1 CustomerID 2 Plate 3 DoubleClick
	declare nFlag TINYINT default ExtractValue( txtValue, '/Data/Flag' );
	declare nDoubleClick TINYINT default ExtractValue( txtValue, '/Data/DoubleClick' );
	declare nCustomerID bigint unsigned default null;
	declare strPlate varchar( 45 ) default ExtractValue( txtValue, '/Data/Plate' );
	declare dtEnter DATETIME default ExtractValue( txtValue, '/Data/Time' );
	#{ Flag:1/0,Message:失败/成功,List:[]}
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
			BEGIN 
				set jsonValue = CONCAT( '{"Flag":0,"Message":"数据库操作失败。"}' );
				ROLLBACK; 
			END;

	if ( 0 = CHAR_LENGTH( strPlate ) ) then
		set jsonValue = '{"Flag":0,"Message":"车牌参数空值。"}';
		LEAVE EXITBODY;
	end if;

	if ( 1 = nDoubleClick ) then #双击图片查询
		CALL GetCustomerVehicleJson( txtValue );
		set jsonValue = Concat( '{"Flag":2,', '"Message":"双击获取客户信息成功。",', txtValue, '}' );
		LEAVE EXITBODY;
	end if;

	# 车辆进入自动查询
	Select distinct CustomerID into nCustomerID From TabVehicleInfo Where PlateID = strPlate;
	
	
	if ( nCustomerID is null ) then #New Customer
		start transaction;
		Insert Into TabCustomerInfo( VistFirstTime, VistNewlyTime, CustomerState ) VALUES( dtEnter, dtEnter, 0 ); # New
		set nCustomerID = last_insert_id( );
		Insert Into TabVehicleInfo( CustomerID, PlateID, VistCount ) VALUES( nCustomerID, strPlate, 1 );
		commit;

		set jsonValue = CONCAT( '{"Flag":1,"Message":"车牌【', strPlate, '】是新客户。"}' );
	else 
		start transaction;
		Update TabCustomerInfo set CustomerState = 1, VistNewlyTime = dtEnter where CustomerID = nCustomerID; #Updating
		update TabVehicleInfo set VistCount = VistCount + 1 where PlateID = strPlate;
		commit;

		CALL GetCustomerVehicleJson( txtValue );
		set jsonValue = Concat( '{"Flag":2,', '"Message":"获取老客户信息成功。",', txtValue, '}' );
	end if;
	
END EXITBODY ;;
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

-- Dump completed on 2014-03-28 14:10:15
