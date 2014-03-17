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
-- Table structure for table `tabcommondatainfo`
--

DROP TABLE IF EXISTS `tabcommondatainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcommondatainfo` (
  `ValueID` smallint(5) unsigned NOT NULL COMMENT '0 1 2 3 4',
  `Value` varchar(45) DEFAULT NULL,
  `DataType` varchar(45) NOT NULL COMMENT 'District\nCustomerSource\nDepartment\nAccountExcutive\nCustomerClass\nMembershipClass\n\nConsumptionStyle',
  PRIMARY KEY (`ValueID`,`DataType`)
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
-- Table structure for table `tabcustomerinfo`
--

DROP TABLE IF EXISTS `tabcustomerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabcustomerinfo` (
  `CustomerID` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT '客户号',
  `Name` varchar(45) NOT NULL COMMENT '客户名',
  `CredentialsID` varchar(256) DEFAULT NULL COMMENT '证件号',
  `Address` varchar(45) DEFAULT NULL COMMENT '地址',
  `District` smallint(5) unsigned DEFAULT NULL COMMENT '区域',
  `MobilePhone` varchar(45) DEFAULT NULL COMMENT '移动电话',
  `Landline` varchar(45) DEFAULT NULL COMMENT '固话',
  `EMail` varchar(45) DEFAULT NULL COMMENT '电邮',
  `CustomerSource` smallint(5) unsigned DEFAULT NULL COMMENT '客户来源',
  `Department` smallint(5) unsigned DEFAULT NULL COMMENT '部门',
  `AccountExecutive` smallint(5) unsigned DEFAULT NULL COMMENT '客户专员',
  `VistFirstTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '首次到店时间',
  `EntryTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建档时间',
  `CustomerCategory` smallint(5) unsigned DEFAULT NULL COMMENT '客户分类',
  `VistNewlyTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最近到店时间',
  `ConsumptionAmount` int(10) unsigned DEFAULT '0' COMMENT '客户历史消费总额',
  `MembershipClass` smallint(5) unsigned DEFAULT NULL COMMENT '会员卡类别',
  `MembershipCardSurplus` int(10) unsigned DEFAULT '0' COMMENT '会员卡当前余额',
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabcustomerinfo`
--

LOCK TABLES `tabcustomerinfo` WRITE;
/*!40000 ALTER TABLE `tabcustomerinfo` DISABLE KEYS */;
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
  `EnterTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '进入时间',
  `LeaveTime` datetime DEFAULT NULL COMMENT '离开时间',
  `EnterPlate` varchar(45) DEFAULT NULL COMMENT '进入车牌',
  `LeavePlate` varchar(45) DEFAULT NULL COMMENT '离开车牌',
  `State` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0进入记录\n1进出完整记录',
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
  `Category` smallint(5) unsigned NOT NULL COMMENT '服务类别',
  `InsuranceAmount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '保险金额',
  `ClaimAmount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '索赔金额',
  `SettlementStyle` smallint(5) unsigned DEFAULT NULL COMMENT '结算方式',
  `MaintanceStartTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '维修起始时间',
  `MaintanceEndTime` datetime DEFAULT NULL COMMENT '维修截至时间',
  `PickupTime` datetime DEFAULT NULL COMMENT '取车时间',
  PRIMARY KEY (`ServiceID`),
  KEY `Service_Vehicle_ID_idx` (`PlateID`),
  CONSTRAINT `Service_Vehicle_ID` FOREIGN KEY (`PlateID`) REFERENCES `tabvehicleinfo` (`PlateID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabservicerecord`
--

LOCK TABLES `tabservicerecord` WRITE;
/*!40000 ALTER TABLE `tabservicerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabservicerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabsubservicerecord`
--

DROP TABLE IF EXISTS `tabsubservicerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabsubservicerecord` (
  `ServiceID` bigint(19) unsigned NOT NULL,
  `SubCategory` smallint(5) unsigned NOT NULL,
  `Department` varchar(45) DEFAULT NULL,
  `Maintanceman` smallint(5) unsigned NOT NULL,
  `ConsumptionAmount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ServiceID`),
  CONSTRAINT `SubService_Service_ID` FOREIGN KEY (`ServiceID`) REFERENCES `tabservicerecord` (`ServiceID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabsubservicerecord`
--

LOCK TABLES `tabsubservicerecord` WRITE;
/*!40000 ALTER TABLE `tabsubservicerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabsubservicerecord` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Right` bigint(19) unsigned DEFAULT NULL COMMENT '权限',
  `Class` smallint(5) unsigned DEFAULT NULL,
  `Comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabuserinfo`
--

LOCK TABLES `tabuserinfo` WRITE;
/*!40000 ALTER TABLE `tabuserinfo` DISABLE KEYS */;
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
  `PlateID` varchar(45) NOT NULL COMMENT '车牌',
  `CustomerID` bigint(19) unsigned NOT NULL,
  `Brand` smallint(6) NOT NULL COMMENT '品牌',
  `Series` smallint(6) NOT NULL COMMENT '车系',
  `Color` smallint(6) NOT NULL COMMENT '颜色',
  `Feature` smallint(6) NOT NULL COMMENT '特性 \n政府用车、企业公车、私家车等',
  `BuyDate` date DEFAULT NULL COMMENT '购买日期',
  `MaintenanceFirstDate` date DEFAULT NULL COMMENT '首保养日',
  `MaintenanceNextDate` date DEFAULT NULL COMMENT '下次保养日',
  `AannualSurveyDate` date DEFAULT NULL COMMENT '年检日',
  `CommercialInsuranceExpiration` date DEFAULT NULL COMMENT '商业险到期日',
  `MandatoryInsuranceExpiration` date DEFAULT NULL COMMENT '交强险到期日',
  `Insurer` smallint(6) DEFAULT NULL COMMENT '保险公司',
  `VistCount` int(10) unsigned DEFAULT NULL COMMENT '来店次数',
  `State` smallint(5) unsigned DEFAULT NULL COMMENT '车辆状态',
  `MotorID` varchar(45) DEFAULT NULL COMMENT '发动机号',
  `FrameID` varchar(45) DEFAULT NULL COMMENT '车架号',
  `Odometer` int(10) unsigned DEFAULT NULL COMMENT '里程数',
  PRIMARY KEY (`PlateID`),
  KEY `Vehicle_Customer_ID_idx` (`CustomerID`),
  CONSTRAINT `Vehicle_Customer_ID` FOREIGN KEY (`CustomerID`) REFERENCES `tabcustomerinfo` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
-- Dumping events for database 'parkcustomercenter'
--

--
-- Dumping routines for database 'parkcustomercenter'
--
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
CREATE DEFINER=`test`@`localhost` PROCEDURE `MainCallSP`( inout txtXml LONGTEXT, inout imgBlob LONGBLOB )
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
/*!50003 DROP PROCEDURE IF EXISTS `OperateCommonDataInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test`@`localhost` PROCEDURE `OperateCommonDataInfo`( inout txtXml LONGTEXT )
EXITBODY:
BEGIN
	#set @txtXml = '<Data><SubSP>OperateCommonDataInfo</SubSP><Params><Operate>Select</Operate><DataType>District</DataType></Params></Data>';
	#call ParkCustomerCenter.MainCallSP( @txtXml, @blob );
	#select @txtXml;

	declare strOperate varchar( 45 ) default ExtractValue( txtXml, '/Data/Params/Operate' );
	declare strDataType varchar( 45 ) default ExtractValue( txtXml, '/Data/Params/DataType' );

	case strOperate 
		when 'Select' then
			if ( 'All' = strDataType ) then
				set txtXml = ( Select CONCAT( '{"List":[',
														   GROUP_CONCAT( CONCAT( '{', Col,'}' ) ), ']}' ) 
								 From ( Select CONCAT( '"', DataType, '":[',
														   GROUP_CONCAT( CONCAT( '{"ValueID":"',ValueID,'"' ),
																		 CONCAT( ',"Value":"', Value, '"}' ) ), ']' ) as Col 
								 From ParkCustomerCenter.TabCommonDataInfo group by DataType order by ValueID ) Tab );
			else
				set txtXml = ( Select CONCAT( '{"List":[',
														   GROUP_CONCAT( CONCAT( '{', Col,'}' ) ), ']}' ) 
								 From ( Select CONCAT( '"', DataType, '":[',
														   GROUP_CONCAT( CONCAT( '{"ValueID":"',ValueID,'"' ),
																		 CONCAT( ',"Value":"', Value, '"}' ) ), ']' ) as Col 
								 From ParkCustomerCenter.TabCommonDataInfo group by DataType  having DataType = strDataType order by ValueID ) Tab );
			end if;
		when '' then
			set strOperate = '';
	end case;

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

-- Dump completed on 2014-02-21 10:34:17
