-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sitemanager
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `b_admin_notify`
--

DROP TABLE IF EXISTS `b_admin_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify`
--

LOCK TABLES `b_admin_notify` WRITE;
/*!40000 ALTER TABLE `b_admin_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify_lang`
--

DROP TABLE IF EXISTS `b_admin_notify_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify_lang`
--

LOCK TABLES `b_admin_notify_lang` WRITE;
/*!40000 ALTER TABLE `b_admin_notify_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_agent`
--

DROP TABLE IF EXISTS `b_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT 100,
  `NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT 86400,
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`),
  KEY `ix_agent_name` (`NAME`(100))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_agent`
--

LOCK TABLES `b_agent` WRITE;
/*!40000 ALTER TABLE `b_agent` DISABLE KEYS */;
INSERT INTO `b_agent` VALUES (1,'main',100,'\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();','Y','2019-11-22 16:20:52','2019-11-22 16:21:52',NULL,60,'N',NULL,'N'),(2,'main',100,'CCaptchaAgent::DeleteOldCaptcha(3600);','Y','2019-11-22 16:20:52','2019-11-22 17:20:52',NULL,3600,'N',NULL,'N'),(3,'main',100,'CSiteCheckerTest::CommonTest();','Y','2019-11-22 15:20:42','2019-11-23 15:20:42',NULL,86400,'N',NULL,'N'),(4,'main',100,'CEvent::CleanUpAgent();','Y','2019-11-22 15:20:43','2019-11-23 15:20:43',NULL,86400,'N',NULL,'N'),(5,'main',100,'CUser::CleanUpHitAuthAgent();','Y','2019-11-22 15:20:43','2019-11-23 15:20:43',NULL,86400,'N',NULL,'N'),(6,'main',100,'CUndo::CleanUpOld();','Y','2019-11-22 15:20:43','2019-11-23 15:20:43',NULL,86400,'N',NULL,'N'),(7,'main',100,'CUserCounter::DeleteOld();','Y','2019-11-22 15:20:44','2019-11-23 15:20:44',NULL,86400,'N',NULL,'N'),(8,'main',100,'\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent(22, 20);','Y','2019-11-22 15:20:45','2019-11-23 15:20:45',NULL,86400,'N',NULL,'N'),(9,'main',100,'CUser::AuthActionsCleanUpAgent();','Y','2019-11-22 15:20:45','2019-11-23 15:20:45',NULL,86400,'N',NULL,'N'),(10,'main',100,'CUser::CleanUpAgent();','Y','2019-11-22 15:20:45','2019-11-23 15:20:45',NULL,86400,'N',NULL,'N'),(11,'main',100,'CUser::DeactivateAgent();','Y','2019-11-22 15:20:45','2019-11-23 15:20:45',NULL,86400,'N',NULL,'N'),(12,'main',100,'CEventLog::CleanUpAgent();','Y','2019-11-22 15:20:45','2019-11-23 15:20:45',NULL,86400,'N',NULL,'N'),(13,'clouds',100,'CCloudStorage::CleanUp();','Y','2019-11-22 15:58:46','2019-11-23 15:58:46',NULL,86400,'N',NULL,'N'),(14,'messageservice',100,'\\Bitrix\\MessageService\\Queue::cleanUpAgent();','Y','2019-11-22 10:24:10','2019-11-23 00:00:00',NULL,86400,'Y',NULL,'N'),(15,'rest',100,'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();','Y','2019-11-22 15:58:46','2019-11-23 15:58:46',NULL,86400,'N',NULL,'N'),(16,'rest',100,'\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();','Y','2019-11-22 15:58:47','2019-11-23 15:58:47',NULL,86400,'N',NULL,'N'),(17,'rest',100,'\\Bitrix\\Rest\\StatTable::cleanUpAgent();','Y','2019-11-22 15:58:47','2019-11-23 15:58:47',NULL,86400,'N',NULL,'N'),(18,'search',10,'CSearchSuggest::CleanUpAgent();','Y','2019-11-22 15:58:47','2019-11-23 15:58:47',NULL,86400,'N',NULL,'N'),(19,'search',10,'CSearchStatistic::CleanUpAgent();','Y','2019-11-22 15:58:48','2019-11-23 15:58:48',NULL,86400,'N',NULL,'N'),(20,'seo',100,'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();','Y','2019-11-22 16:20:52','2019-11-22 17:20:52',NULL,3600,'N',NULL,'N'),(21,'seo',100,'Bitrix\\Seo\\Adv\\LogTable::clean();','Y','2019-11-22 15:58:47','2019-11-23 15:58:47',NULL,86400,'N',NULL,'N'),(22,'seo',100,'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();','Y','2019-11-22 16:20:52','2019-11-22 17:20:52',NULL,3600,'N',NULL,'N');
/*!40000 ALTER TABLE `b_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_app_password`
--

DROP TABLE IF EXISTS `b_app_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_app_password`
--

LOCK TABLES `b_app_password` WRITE;
/*!40000 ALTER TABLE `b_app_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_app_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_b24connector_buttons`
--

DROP TABLE IF EXISTS `b_b24connector_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_b24connector_buttons`
--

LOCK TABLES `b_b24connector_buttons` WRITE;
/*!40000 ALTER TABLE `b_b24connector_buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_bitrixcloud_option`
--

DROP TABLE IF EXISTS `b_bitrixcloud_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_bitrixcloud_option`
--

LOCK TABLES `b_bitrixcloud_option` WRITE;
/*!40000 ALTER TABLE `b_bitrixcloud_option` DISABLE KEYS */;
INSERT INTO `b_bitrixcloud_option` VALUES (1,'backup_quota',0,'0','0'),(2,'backup_total_size',0,'0','0'),(3,'backup_last_backup_time',0,'0','1574166042'),(4,'monitoring_expire_time',0,'0','1574429341');
/*!40000 ALTER TABLE `b_bitrixcloud_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_cache_tag`
--

DROP TABLE IF EXISTS `b_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_cache_tag`
--

LOCK TABLES `b_cache_tag` WRITE;
/*!40000 ALTER TABLE `b_cache_tag` DISABLE KEYS */;
INSERT INTO `b_cache_tag` VALUES (NULL,NULL,'0:1574425647','**');
/*!40000 ALTER TABLE `b_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_captcha`
--

DROP TABLE IF EXISTS `b_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_captcha`
--

LOCK TABLES `b_captcha` WRITE;
/*!40000 ALTER TABLE `b_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_checklist`
--

DROP TABLE IF EXISTS `b_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_checklist`
--

LOCK TABLES `b_checklist` WRITE;
/*!40000 ALTER TABLE `b_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_copy_queue`
--

DROP TABLE IF EXISTS `b_clouds_copy_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_copy_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `OP` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SOURCE_BUCKET_ID` int(11) NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TARGET_BUCKET_ID` int(11) NOT NULL,
  `TARGET_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL DEFAULT -1,
  `FILE_POS` int(11) NOT NULL DEFAULT 0,
  `FAIL_COUNTER` int(11) NOT NULL DEFAULT 0,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_copy_queue`
--

LOCK TABLES `b_clouds_copy_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_copy_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_copy_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_delete_queue`
--

DROP TABLE IF EXISTS `b_clouds_delete_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_delete_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_delete_queue`
--

LOCK TABLES `b_clouds_delete_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_delete_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_delete_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_bucket`
--

DROP TABLE IF EXISTS `b_clouds_file_bucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT 500,
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT 0,
  `FILE_SIZE` double DEFAULT 0,
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_RULES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAILOVER_ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int(11) DEFAULT NULL,
  `FAILOVER_COPY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_bucket`
--

LOCK TABLES `b_clouds_file_bucket` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_bucket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_resize`
--

DROP TABLE IF EXISTS `b_clouds_file_resize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_resize`
--

LOCK TABLES `b_clouds_file_resize` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_resize` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_resize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_save`
--

DROP TABLE IF EXISTS `b_clouds_file_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_save` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BUCKET_ID` int(11) NOT NULL,
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_save`
--

LOCK TABLES `b_clouds_file_save` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_upload`
--

DROP TABLE IF EXISTS `b_clouds_file_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_upload`
--

LOCK TABLES `b_clouds_file_upload` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_component_params`
--

DROP TABLE IF EXISTS `b_component_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_component_params`
--

LOCK TABLES `b_component_params` WRITE;
/*!40000 ALTER TABLE `b_component_params` DISABLE KEYS */;
INSERT INTO `b_component_params` VALUES (3,'s1','bitrix:menu','menu','/local/templates/blog/header.php','N',NULL,1543,2327,'a:12:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:14:\"ROOT_MENU_TYPE\";s:4:\"main\";s:7:\"USE_EXT\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:18:\"catalog_horizontal\";s:10:\"MENU_THEME\";s:4:\"site\";}'),(7,'s1','bitrix:news','blog','/blog/index.php','Y','/blog/',96,4431,'a:66:{s:17:\"ADD_ELEMENT_CHAIN\";s:1:\"N\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:13:\"BROWSER_TITLE\";s:1:\"-\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:25:\"DETAIL_ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:27:\"DETAIL_DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:24:\"DETAIL_DISPLAY_TOP_PAGER\";s:1:\"N\";s:17:\"DETAIL_FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:21:\"DETAIL_PAGER_SHOW_ALL\";s:1:\"Y\";s:21:\"DETAIL_PAGER_TEMPLATE\";s:0:\"\";s:18:\"DETAIL_PAGER_TITLE\";s:16:\"Страница\";s:20:\"DETAIL_PROPERTY_CODE\";a:2:{i:0;s:6:\"AUTHOR\";i:1;s:0:\"\";}s:24:\"DETAIL_SET_CANONICAL_URL\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"4\";s:11:\"IBLOCK_TYPE\";s:4:\"blog\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:23:\"LIST_ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:15:\"LIST_FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:18:\"LIST_PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"MESSAGE_404\";s:0:\"\";s:16:\"META_DESCRIPTION\";s:1:\"-\";s:13:\"META_KEYWORDS\";s:1:\"-\";s:10:\"NEWS_COUNT\";s:1:\"2\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:6:\"modern\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:10:\"SEF_FOLDER\";s:6:\"/blog/\";s:8:\"SEF_MODE\";s:1:\"Y\";s:17:\"SEF_URL_TEMPLATES\";a:3:{s:6:\"detail\";s:35:\"#SECTION_CODE_PATH#/#ELEMENT_CODE#/\";s:4:\"news\";s:0:\"\";s:7:\"section\";s:20:\"#SECTION_CODE_PATH#/\";}s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:14:\"SET_STATUS_404\";s:1:\"Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:14:\"USE_CATEGORIES\";s:1:\"N\";s:10:\"USE_FILTER\";s:1:\"N\";s:15:\"USE_PERMISSIONS\";s:1:\"N\";s:10:\"USE_RATING\";s:1:\"N\";s:7:\"USE_RSS\";s:1:\"N\";s:10:\"USE_SEARCH\";s:1:\"N\";s:9:\"USE_SHARE\";s:1:\"N\";}'),(8,'s1','bitrix:news.list','list_posts','/index.php','N',NULL,613,2237,'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"4\";s:11:\"IBLOCK_TYPE\";s:4:\"blog\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"2\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:6:\"modern\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:6:\"AUTHOR\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"N\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"N\";s:17:\"SET_META_KEYWORDS\";s:1:\"N\";s:14:\"SET_STATUS_404\";s:1:\"Y\";s:9:\"SET_TITLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),(10,'s1','bitrix:catalog.section.list','cats','/local/templates/blog/footer.php','N',NULL,981,2133,'a:18:{s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:14:\"COUNT_ELEMENTS\";s:1:\"Y\";s:11:\"FILTER_NAME\";s:14:\"sectionsFilter\";s:9:\"IBLOCK_ID\";s:1:\"4\";s:11:\"IBLOCK_TYPE\";s:4:\"blog\";s:12:\"SECTION_CODE\";s:0:\"\";s:14:\"SECTION_FIELDS\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:10:\"SECTION_ID\";s:26:\"={$_REQUEST[\"SECTION_ID\"]}\";s:11:\"SECTION_URL\";s:0:\"\";s:19:\"SECTION_USER_FIELDS\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:16:\"SHOW_PARENT_NAME\";s:1:\"Y\";s:9:\"TOP_DEPTH\";s:1:\"2\";s:9:\"VIEW_MODE\";s:4:\"TEXT\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";}');
/*!40000 ALTER TABLE `b_component_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_log`
--

DROP TABLE IF EXISTS `b_composite_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT 0,
  `PAGE_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_log`
--

LOCK TABLES `b_composite_log` WRITE;
/*!40000 ALTER TABLE `b_composite_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_page`
--

DROP TABLE IF EXISTS `b_composite_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT 0,
  `REWRITES` int(18) NOT NULL DEFAULT 0,
  `SIZE` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_page`
--

LOCK TABLES `b_composite_page` WRITE;
/*!40000 ALTER TABLE `b_composite_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_agreement`
--

DROP TABLE IF EXISTS `b_consent_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_agreement`
--

LOCK TABLES `b_consent_agreement` WRITE;
/*!40000 ALTER TABLE `b_consent_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_field`
--

DROP TABLE IF EXISTS `b_consent_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_field`
--

LOCK TABLES `b_consent_field` WRITE;
/*!40000 ALTER TABLE `b_consent_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_user_consent`
--

DROP TABLE IF EXISTS `b_consent_user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_user_consent`
--

LOCK TABLES `b_consent_user_consent` WRITE;
/*!40000 ALTER TABLE `b_consent_user_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_counter_data`
--

DROP TABLE IF EXISTS `b_counter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_counter_data`
--

LOCK TABLES `b_counter_data` WRITE;
/*!40000 ALTER TABLE `b_counter_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_counter_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_culture`
--

DROP TABLE IF EXISTS `b_culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT 1,
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j',
  `SHORT_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'am',
  `PM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT '.',
  `NUMBER_DECIMALS` tinyint(4) DEFAULT 2,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_culture`
--

LOCK TABLES `b_culture` WRITE;
/*!40000 ALTER TABLE `b_culture` DISABLE KEYS */;
INSERT INTO `b_culture` VALUES (1,'ru','ru','DD.MM.YYYY','DD.MM.YYYY HH:MI:SS','#NAME# #LAST_NAME#',1,'UTF-8','Y','d.m.Y','j M Y','j F Y','l, j F Y','j F','H:i','H:i:s','am','pm',' ',',',2),(2,'en','en','MM/DD/YYYY','MM/DD/YYYY H:MI:SS T','#NAME# #LAST_NAME#',0,'UTF-8','Y','n/j/Y','M j, Y','F j, Y','l, F j, Y','M j','g:i a','g:i:s a','am','pm',',','.',2);
/*!40000 ALTER TABLE `b_culture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event`
--

DROP TABLE IF EXISTS `b_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event`
--

LOCK TABLES `b_event` WRITE;
/*!40000 ALTER TABLE `b_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_attachment`
--

DROP TABLE IF EXISTS `b_event_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_attachment`
--

LOCK TABLES `b_event_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_log`
--

DROP TABLE IF EXISTS `b_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_log`
--

LOCK TABLES `b_event_log` WRITE;
/*!40000 ALTER TABLE `b_event_log` DISABLE KEYS */;
INSERT INTO `b_event_log` VALUES (1,'2019-11-20 06:06:17','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/','s1',NULL,NULL,''),(2,'2019-11-20 17:14:12','UNKNOWN','PAGE_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:15:\"about/index.php\";}'),(3,'2019-11-20 17:14:12','UNKNOWN','SECTION_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:5:\"about\";}'),(4,'2019-11-20 17:14:12','UNKNOWN','MENU_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=blog',NULL,1,NULL,'a:2:{s:4:\"path\";b:0;s:9:\"menu_name\";s:23:\"Главное меню\";}'),(5,'2019-11-20 17:14:45','UNKNOWN','PAGE_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:15:\"about/index.php\";}'),(6,'2019-11-20 17:26:21','UNKNOWN','PAGE_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:17:\"support/index.php\";}'),(7,'2019-11-20 17:26:21','UNKNOWN','SECTION_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:7:\"support\";}'),(8,'2019-11-20 17:26:21','UNKNOWN','MENU_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=blog',NULL,1,NULL,'a:2:{s:4:\"path\";b:0;s:9:\"menu_name\";s:23:\"Главное меню\";}'),(9,'2019-11-20 17:26:48','UNKNOWN','PAGE_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:17:\"support/index.php\";}'),(10,'2019-11-20 17:28:26','UNKNOWN','PAGE_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:17:\"contact/index.php\";}'),(11,'2019-11-20 17:28:26','UNKNOWN','SECTION_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:7:\"contact\";}'),(12,'2019-11-20 17:28:26','UNKNOWN','MENU_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=blog',NULL,1,NULL,'a:2:{s:4:\"path\";b:0;s:9:\"menu_name\";s:23:\"Главное меню\";}'),(13,'2019-11-20 17:28:44','UNKNOWN','PAGE_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:17:\"contact/index.php\";}'),(14,'2019-11-20 18:15:27','UNKNOWN','MENU_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2F&path=%2F&name=main&siteTemplateId=blog',NULL,1,NULL,'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";b:0;}'),(15,'2019-11-20 18:17:06','UNKNOWN','MENU_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252F&path=%2F&name=main&siteTemplateId=blog',NULL,1,NULL,'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";b:0;}'),(16,'2019-11-20 18:20:35','UNKNOWN','MENU_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2F&path=%2F&name=main&siteTemplateId=blog',NULL,1,NULL,'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";b:0;}'),(17,'2019-11-21 10:13:28','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/','s1',NULL,NULL,''),(18,'2019-11-21 14:49:57','UNKNOWN','IBLOCK_EDIT','iblock','4','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/iblock_edit.php?type=blog&lang=ru&admin=Y',NULL,1,NULL,'a:1:{s:4:\"NAME\";s:8:\"Блог\";}'),(19,'2019-11-21 14:49:58','UNKNOWN','IBLOCK_EDIT','iblock','4','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/iblock_edit.php?type=blog&lang=ru&admin=Y',NULL,1,NULL,'a:1:{s:4:\"NAME\";s:8:\"Блог\";}'),(20,'2019-11-21 14:52:09','UNKNOWN','PAGE_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:14:\"blog/index.php\";}'),(21,'2019-11-21 14:52:09','UNKNOWN','SECTION_ADD','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=blog&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY&siteTemplateId=blog',NULL,1,NULL,'a:1:{s:4:\"path\";s:4:\"blog\";}'),(22,'2019-11-21 14:59:27','UNKNOWN','PAGE_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:14:\"blog/index.php\";}'),(23,'2019-11-21 16:31:41','UNKNOWN','PAGE_EDIT','main','UNKNOWN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36','/bitrix/admin/public_file_edit.php','s1',1,NULL,'a:1:{s:4:\"path\";s:9:\"index.php\";}'),(24,'2019-11-22 12:20:42','WARNING','SITE_CHECKER_ERROR','main','CSiteCheckerTest::CommonTest();','-','-','/?bitrix_include_areas=Y&clear_cache=Y','s1',NULL,NULL,'');
/*!40000 ALTER TABLE `b_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message`
--

DROP TABLE IF EXISTS `b_event_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message`
--

LOCK TABLES `b_event_message` WRITE;
/*!40000 ALTER TABLE `b_event_message` DISABLE KEYS */;
INSERT INTO `b_event_message` VALUES (1,'2019-11-19 10:10:15','NEW_USER','s1','Y','#DEFAULT_EMAIL_FROM#','#DEFAULT_EMAIL_FROM#','#SITE_NAME#: Зарегистрировался новый пользователь','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(2,'2019-11-19 10:10:15','USER_INFO','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Регистрационная информация','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(3,'2019-11-19 10:10:15','USER_PASS_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос на смену пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(4,'2019-11-19 10:10:15','USER_PASS_CHANGED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение смены пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(5,'2019-11-19 10:10:16','NEW_USER_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение регистрации нового пользователя','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(6,'2019-11-19 10:10:16','USER_INVITE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Приглашение на сайт','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(7,'2019-11-19 10:10:16','FEEDBACK_FORM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Сообщение из формы обратной связи','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(8,'2019-11-19 10:10:16','MAIN_MAIL_CONFIRM_CODE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#MESSAGE_SUBJECT#','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_join',NULL,NULL);
/*!40000 ALTER TABLE `b_event_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_attachment`
--

DROP TABLE IF EXISTS `b_event_message_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_attachment`
--

LOCK TABLES `b_event_message_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_message_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_message_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_site`
--

DROP TABLE IF EXISTS `b_event_message_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_site`
--

LOCK TABLES `b_event_message_site` WRITE;
/*!40000 ALTER TABLE `b_event_message_site` DISABLE KEYS */;
INSERT INTO `b_event_message_site` VALUES (1,'s1'),(2,'s1'),(3,'s1'),(4,'s1'),(5,'s1'),(6,'s1'),(7,'s1'),(8,'s1');
/*!40000 ALTER TABLE `b_event_message_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_type`
--

DROP TABLE IF EXISTS `b_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT 150,
  `EVENT_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_type`
--

LOCK TABLES `b_event_type` WRITE;
/*!40000 ALTER TABLE `b_event_type` DISABLE KEYS */;
INSERT INTO `b_event_type` VALUES (1,'ru','NEW_USER','Зарегистрировался новый пользователь','\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n',1,'email'),(2,'ru','USER_INFO','Информация о пользователе','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',2,'email'),(3,'ru','NEW_USER_CONFIRM','Подтверждение регистрации нового пользователя','\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n',3,'email'),(4,'ru','USER_PASS_REQUEST','Запрос на смену пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',4,'email'),(5,'ru','USER_PASS_CHANGED','Подтверждение смены пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',5,'email'),(6,'ru','USER_INVITE','Приглашение на сайт нового пользователя','#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n',6,'email'),(7,'ru','FEEDBACK_FORM','Отправка сообщения через форму обратной связи','#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',7,'email'),(8,'ru','MAIN_MAIL_CONFIRM_CODE','Подтверждение email-адреса отправителя','\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения',8,'email'),(9,'ru','SMS_USER_CONFIRM_NUMBER','Подтверждение номера телефона по СМС','#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n',100,'sms'),(10,'ru','SMS_USER_RESTORE_PASSWORD','Восстановление пароля через СМС','#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n',100,'sms'),(11,'en','NEW_USER','New user was registered','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n',1,'email'),(12,'en','USER_INFO','Account Information','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',2,'email'),(13,'en','NEW_USER_CONFIRM','New user registration confirmation','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n',3,'email'),(14,'en','USER_PASS_REQUEST','Password Change Request','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',4,'email'),(15,'en','USER_PASS_CHANGED','Password Change Confirmation','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',5,'email'),(16,'en','USER_INVITE','Invitation of a new site user','#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n',6,'email'),(17,'en','FEEDBACK_FORM','Sending a message using a feedback form','#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address',7,'email'),(18,'en','MAIN_MAIL_CONFIRM_CODE','Confirm sender\'s email address','\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code',8,'email'),(19,'en','SMS_USER_CONFIRM_NUMBER','Verify phone number using SMS','#USER_PHONE# - phone number\n#CODE# - confirmation code',100,'sms'),(20,'en','SMS_USER_RESTORE_PASSWORD','Recover password using SMS','#USER_PHONE# - phone number\n#CODE# - recovery confirmation code',100,'sms');
/*!40000 ALTER TABLE `b_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_favorite`
--

DROP TABLE IF EXISTS `b_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_favorite`
--

LOCK TABLES `b_favorite` WRITE;
/*!40000 ALTER TABLE `b_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file`
--

DROP TABLE IF EXISTS `b_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file`
--

LOCK TABLES `b_file` WRITE;
/*!40000 ALTER TABLE `b_file` DISABLE KEYS */;
INSERT INTO `b_file` VALUES (1,'2019-11-21 12:03:40','iblock',333,500,21042,'image/jpeg','iblock/9be','9be3242014aed9d50f71d9311820cce5.jpg','img1.jpg','',NULL,'9adce251e682d0096099daf2b83e9970'),(2,'2019-11-21 12:03:41','iblock',461,1000,39573,'image/jpeg','iblock/fe3','fe3fed576029a65399eb05117a62df38.jpg','blog-img.jpg','',NULL,'de4b857a69610cef6c641962139c9e1a'),(3,'2019-11-21 12:10:00','iblock',333,500,16498,'image/jpeg','iblock/569','5698812b745bab127a245a741c369f67.jpg','img2.jpg','',NULL,'0f6453ae87cb02dcb6c67c3b37507b12'),(4,'2019-11-21 12:10:00','iblock',461,1000,39573,'image/jpeg','iblock/6f7','6f7b7f805c6af9f78f9462d8cef90703.jpg','blog-img.jpg','',NULL,'92d797fb3873ea7336f499dc1b1d7d9d'),(5,'2019-11-21 12:12:27','iblock',333,500,15023,'image/jpeg','iblock/a83','a8356f2a7ec6ae70127d38864d32dc6e.jpg','img3.jpg','',NULL,'5e0dbff0098a54b94abf1ef574dabe03'),(6,'2019-11-21 12:12:27','iblock',461,1000,39573,'image/jpeg','iblock/07e','07efae11093ca62addfc723e890cf5d5.jpg','blog-img.jpg','',NULL,'e069c9f27651343f05f3b6b6ac4574bd'),(7,'2019-11-21 12:13:55','iblock',333,500,18245,'image/jpeg','iblock/ba7','ba75f156aba155cdb89863c2c1671d0c.jpg','latest-post-img1.jpg','',NULL,'b8bb5ef4588665cb64ec831e56b62a6d'),(8,'2019-11-21 12:13:55','iblock',461,1000,39573,'image/jpeg','iblock/76c','76c2bcb43d1e0b791ffaa8887ea894c9.jpg','blog-img.jpg','',NULL,'6814ec1905aee6e458f6b104c1be2515'),(9,'2019-11-21 12:15:24','iblock',333,500,19838,'image/jpeg','iblock/cc4','cc41b055fc8ef287b5b19d7e01cd7149.jpg','latest-post-img2.jpg','',NULL,'2bc027d1c1e120a136f5b41a8210bc60'),(10,'2019-11-21 12:15:24','iblock',461,1000,39573,'image/jpeg','iblock/6ab','6abae36bad54faffe0335b8b158dbe83.jpg','blog-img.jpg','',NULL,'3c537871eb7a1761cb63fd3abb9cd279');
/*!40000 ALTER TABLE `b_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_preview`
--

DROP TABLE IF EXISTS `b_file_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_preview` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PREVIEW_ID` int(18) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(18) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  KEY `IX_B_FILE_PL_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_preview`
--

LOCK TABLES `b_file_preview` WRITE;
/*!40000 ALTER TABLE `b_file_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_search`
--

DROP TABLE IF EXISTS `b_file_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT 0,
  `F_SIZE` int(11) NOT NULL DEFAULT 0,
  `F_TIME` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_search`
--

LOCK TABLES `b_file_search` WRITE;
/*!40000 ALTER TABLE `b_file_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_filters`
--

DROP TABLE IF EXISTS `b_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_filters`
--

LOCK TABLES `b_filters` WRITE;
/*!40000 ALTER TABLE `b_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_finder_dest`
--

DROP TABLE IF EXISTS `b_finder_dest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_finder_dest`
--

LOCK TABLES `b_finder_dest` WRITE;
/*!40000 ALTER TABLE `b_finder_dest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_finder_dest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_geoip_handlers`
--

DROP TABLE IF EXISTS `b_geoip_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(10) NOT NULL DEFAULT 100,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_geoip_handlers`
--

LOCK TABLES `b_geoip_handlers` WRITE;
/*!40000 ALTER TABLE `b_geoip_handlers` DISABLE KEYS */;
INSERT INTO `b_geoip_handlers` VALUES (1,100,'N','\\Bitrix\\Main\\Service\\GeoIp\\MaxMind',NULL),(2,110,'Y','\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo',NULL);
/*!40000 ALTER TABLE `b_geoip_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group`
--

DROP TABLE IF EXISTS `b_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group`
--

LOCK TABLES `b_group` WRITE;
/*!40000 ALTER TABLE `b_group` DISABLE KEYS */;
INSERT INTO `b_group` VALUES (1,'2019-11-19 12:09:59','Y',1,'N','Y','Администраторы','Полный доступ к управлению сайтом.',NULL,NULL),(2,'2019-11-19 12:10:00','Y',2,'Y','Y','Все пользователи (в том числе неавторизованные)','Все пользователи, включая неавторизованных.',NULL,NULL),(3,'2019-11-19 12:10:00','Y',3,'N','Y','Пользователи, имеющие право голосовать за рейтинг','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE'),(4,'2019-11-19 12:10:00','Y',4,'N','Y','Пользователи имеющие право голосовать за авторитет','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE_AUTHORITY'),(5,'2019-11-19 12:19:19','Y',300,'N','Y','Контент-редакторы',NULL,NULL,'content_editor');
/*!40000 ALTER TABLE `b_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_collection_task`
--

DROP TABLE IF EXISTS `b_group_collection_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_collection_task`
--

LOCK TABLES `b_group_collection_task` WRITE;
/*!40000 ALTER TABLE `b_group_collection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_collection_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_subordinate`
--

DROP TABLE IF EXISTS `b_group_subordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_subordinate`
--

LOCK TABLES `b_group_subordinate` WRITE;
/*!40000 ALTER TABLE `b_group_subordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_subordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_task`
--

DROP TABLE IF EXISTS `b_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_task`
--

LOCK TABLES `b_group_task` WRITE;
/*!40000 ALTER TABLE `b_group_task` DISABLE KEYS */;
INSERT INTO `b_group_task` VALUES (5,44,'');
/*!40000 ALTER TABLE `b_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity`
--

DROP TABLE IF EXISTS `b_hlblock_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity`
--

LOCK TABLES `b_hlblock_entity` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_lang`
--

DROP TABLE IF EXISTS `b_hlblock_entity_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) unsigned NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_lang`
--

LOCK TABLES `b_hlblock_entity_lang` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_rights`
--

DROP TABLE IF EXISTS `b_hlblock_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HL_ID` int(11) unsigned NOT NULL,
  `TASK_ID` int(11) unsigned NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_rights`
--

LOCK TABLES `b_hlblock_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys`
--

DROP TABLE IF EXISTS `b_hot_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys`
--

LOCK TABLES `b_hot_keys` WRITE;
/*!40000 ALTER TABLE `b_hot_keys` DISABLE KEYS */;
INSERT INTO `b_hot_keys` VALUES (1,'Ctrl+Alt+85',139,0),(2,'Ctrl+Alt+80',17,0),(3,'Ctrl+Alt+70',120,0),(4,'Ctrl+Alt+68',117,0),(5,'Ctrl+Alt+81',3,0),(6,'Ctrl+Alt+75',106,0),(7,'Ctrl+Alt+79',133,0),(8,'Ctrl+Alt+70',121,0),(9,'Ctrl+Alt+69',118,0),(10,'Ctrl+Shift+83',87,0),(11,'Ctrl+Shift+88',88,0),(12,'Ctrl+Shift+76',89,0),(13,'Ctrl+Alt+85',139,1),(14,'Ctrl+Alt+80',17,1),(15,'Ctrl+Alt+70',120,1),(16,'Ctrl+Alt+68',117,1),(17,'Ctrl+Alt+81',3,1),(18,'Ctrl+Alt+75',106,1),(19,'Ctrl+Alt+79',133,1),(20,'Ctrl+Alt+70',121,1),(21,'Ctrl+Alt+69',118,1),(22,'Ctrl+Shift+83',87,1),(23,'Ctrl+Shift+88',88,1),(24,'Ctrl+Shift+76',89,1);
/*!40000 ALTER TABLE `b_hot_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys_code`
--

DROP TABLE IF EXISTS `b_hot_keys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys_code`
--

LOCK TABLES `b_hot_keys_code` WRITE;
/*!40000 ALTER TABLE `b_hot_keys_code` DISABLE KEYS */;
INSERT INTO `b_hot_keys_code` VALUES (3,'CAdminTabControl','NextTab();','HK_DB_CADMINTC','HK_DB_CADMINTC_C','tab-container','',0),(5,'btn_new','var d=BX (\'btn_new\'); if (d) location.href = d.href;','HK_DB_BUT_ADD','HK_DB_BUT_ADD_C','btn_new','',0),(6,'btn_excel','var d=BX(\'btn_excel\'); if (d) location.href = d.href;','HK_DB_BUT_EXL','HK_DB_BUT_EXL_C','btn_excel','',0),(7,'btn_settings','var d=BX(\'btn_settings\'); if (d) location.href = d.href;','HK_DB_BUT_OPT','HK_DB_BUT_OPT_C','btn_settings','',0),(8,'btn_list','var d=BX(\'btn_list\'); if (d) location.href = d.href;','HK_DB_BUT_LST','HK_DB_BUT_LST_C','btn_list','',0),(9,'Edit_Save_Button','var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();','HK_DB_BUT_SAVE','HK_DB_BUT_SAVE_C','Edit_Save_Button','',0),(10,'btn_delete','var d=BX(\'btn_delete\'); if (d) location.href = d.href;','HK_DB_BUT_DEL','HK_DB_BUT_DEL_C','btn_delete','',0),(12,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();','HK_DB_FLT_FND','HK_DB_FLT_FND_C','find','',0),(13,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_F','HK_DB_FLT_BUT_F_C','set_filter','',0),(14,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_CNL','HK_DB_FLT_BUT_CNL_C','del_filter','',0),(15,'bx-panel-admin-button-help-icon-id','var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;','HK_DB_BUT_HLP','HK_DB_BUT_HLP_C','bx-panel-admin-button-help-icon-id','',0),(17,'Global','BXHotKeys.ShowSettings();','HK_DB_SHW_L','HK_DB_SHW_L_C','bx-panel-hotkeys','',0),(19,'Edit_Apply_Button','var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();','HK_DB_BUT_APPL','HK_DB_BUT_APPL_C','Edit_Apply_Button','',0),(20,'Edit_Cancel_Button','var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();','HK_DB_BUT_CANCEL','HK_DB_BUT_CANCEL_C','Edit_Cancel_Button','',0),(54,'top_panel_org_fav','','-=AUTONAME=-',NULL,'top_panel_org_fav',NULL,0),(55,'top_panel_module_settings','','-=AUTONAME=-',NULL,'top_panel_module_settings','',0),(56,'top_panel_interface_settings','','-=AUTONAME=-',NULL,'top_panel_interface_settings','',0),(57,'top_panel_help','','-=AUTONAME=-',NULL,'top_panel_help','',0),(58,'top_panel_bizproc_tasks','','-=AUTONAME=-',NULL,'top_panel_bizproc_tasks','',0),(59,'top_panel_add_fav','','-=AUTONAME=-',NULL,'top_panel_add_fav',NULL,0),(60,'top_panel_create_page','','-=AUTONAME=-',NULL,'top_panel_create_page','',0),(62,'top_panel_create_folder','','-=AUTONAME=-',NULL,'top_panel_create_folder','',0),(63,'top_panel_edit_page','','-=AUTONAME=-',NULL,'top_panel_edit_page','',0),(64,'top_panel_page_prop','','-=AUTONAME=-',NULL,'top_panel_page_prop','',0),(65,'top_panel_edit_page_html','','-=AUTONAME=-',NULL,'top_panel_edit_page_html','',0),(67,'top_panel_edit_page_php','','-=AUTONAME=-',NULL,'top_panel_edit_page_php','',0),(68,'top_panel_del_page','','-=AUTONAME=-',NULL,'top_panel_del_page','',0),(69,'top_panel_folder_prop','','-=AUTONAME=-',NULL,'top_panel_folder_prop','',0),(70,'top_panel_access_folder_new','','-=AUTONAME=-',NULL,'top_panel_access_folder_new','',0),(71,'main_top_panel_struct_panel','','-=AUTONAME=-',NULL,'main_top_panel_struct_panel','',0),(72,'top_panel_cache_page','','-=AUTONAME=-',NULL,'top_panel_cache_page','',0),(73,'top_panel_cache_comp','','-=AUTONAME=-',NULL,'top_panel_cache_comp','',0),(74,'top_panel_cache_not','','-=AUTONAME=-',NULL,'top_panel_cache_not','',0),(75,'top_panel_edit_mode','','-=AUTONAME=-',NULL,'top_panel_edit_mode','',0),(76,'top_panel_templ_site_css','','-=AUTONAME=-',NULL,'top_panel_templ_site_css','',0),(77,'top_panel_templ_templ_css','','-=AUTONAME=-',NULL,'top_panel_templ_templ_css','',0),(78,'top_panel_templ_site','','-=AUTONAME=-',NULL,'top_panel_templ_site','',0),(81,'top_panel_debug_time','','-=AUTONAME=-',NULL,'top_panel_debug_time','',0),(82,'top_panel_debug_incl','','-=AUTONAME=-',NULL,'top_panel_debug_incl','',0),(83,'top_panel_debug_sql','','-=AUTONAME=-',NULL,'top_panel_debug_sql',NULL,0),(84,'top_panel_debug_compr','','-=AUTONAME=-',NULL,'top_panel_debug_compr','',0),(85,'MTP_SHORT_URI1','','-=AUTONAME=-',NULL,'MTP_SHORT_URI1','',0),(86,'MTP_SHORT_URI_LIST','','-=AUTONAME=-',NULL,'MTP_SHORT_URI_LIST','',0),(87,'FMST_PANEL_STICKER_ADD','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKER_ADD','',0),(88,'FMST_PANEL_STICKERS_SHOW','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS_SHOW','',0),(89,'FMST_PANEL_CUR_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_CUR_STICKER_LIST','',0),(90,'FMST_PANEL_ALL_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_ALL_STICKER_LIST','',0),(91,'top_panel_menu','var d=BX(\"bx-panel-menu\"); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-menu','',0),(92,'top_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(93,'admin_panel_site','var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-view-tab','',0),(94,'admin_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(96,'top_panel_folder_prop_new','','-=AUTONAME=-',NULL,'top_panel_folder_prop_new','',0),(97,'main_top_panel_structure','','-=AUTONAME=-',NULL,'main_top_panel_structure','',0),(98,'top_panel_clear_cache','','-=AUTONAME=-',NULL,'top_panel_clear_cache','',0),(99,'top_panel_templ','','-=AUTONAME=-',NULL,'top_panel_templ','',0),(100,'top_panel_debug','','-=AUTONAME=-',NULL,'top_panel_debug','',0),(101,'MTP_SHORT_URI','','-=AUTONAME=-',NULL,'MTP_SHORT_URI','',0),(102,'FMST_PANEL_STICKERS','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS','',0),(103,'top_panel_settings','','-=AUTONAME=-',NULL,'top_panel_settings','',0),(104,'top_panel_fav','','-=AUTONAME=-',NULL,'top_panel_fav','',0),(106,'Global','location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';','HK_DB_SHW_HK','','','',0),(107,'top_panel_edit_new','','-=AUTONAME=-',NULL,'top_panel_edit_new','',0),(108,'FLOW_PANEL_CREATE_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_CREATE_WITH_WF','',0),(109,'FLOW_PANEL_EDIT_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_EDIT_WITH_WF','',0),(110,'FLOW_PANEL_HISTORY','','-=AUTONAME=-',NULL,'FLOW_PANEL_HISTORY','',0),(111,'top_panel_create_new','','-=AUTONAME=-',NULL,'top_panel_create_new','',0),(112,'top_panel_create_folder_new','','-=AUTONAME=-',NULL,'top_panel_create_folder_new','',0),(116,'bx-panel-toggle','','-=AUTONAME=-',NULL,'bx-panel-toggle','',0),(117,'bx-panel-small-toggle','','-=AUTONAME=-',NULL,'bx-panel-small-toggle','',0),(118,'bx-panel-expander','var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');','-=AUTONAME=-',NULL,'bx-panel-expander','',0),(119,'bx-panel-hider','var d=BX(\'bx-panel-hider\'); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-hider','',0),(120,'search-textbox-input','var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}','-=AUTONAME=-','','search','',0),(121,'bx-search-input','var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }','-=AUTONAME=-','','bx-search-input','',0),(133,'bx-panel-logout','var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;','-=AUTONAME=-','','bx-panel-logout','',0),(135,'CDialog','var d=BX(\'cancel\'); if (d) d.click();','HK_DB_D_CANCEL','','cancel','',0),(136,'CDialog','var d=BX(\'close\'); if (d) d.click();','HK_DB_D_CLOSE','','close','',0),(137,'CDialog','var d=BX(\'savebtn\'); if (d) d.click();','HK_DB_D_SAVE','','savebtn','',0),(138,'CDialog','var d=BX(\'btn_popup_save\'); if (d) d.click();','HK_DB_D_EDIT_SAVE','','btn_popup_save','',0),(139,'Global','location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;','HK_DB_SHW_U','','','',0);
/*!40000 ALTER TABLE `b_hot_keys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock`
--

DROP TABLE IF EXISTS `b_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT 24,
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT 0,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock`
--

LOCK TABLES `b_iblock` WRITE;
/*!40000 ALTER TABLE `b_iblock` DISABLE KEYS */;
INSERT INTO `b_iblock` VALUES (4,'2019-11-21 14:49:57','blog','s1','blog','Блог','Y',500,'#SITE_DIR#/blog/','#SITE_DIR#/blog/#SECTION_CODE_PATH#/#ELEMENT_CODE#','#SITE_DIR#/blog/#SECTION_CODE_PATH#/','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,'49794c1b0e46e38f94b1a202bf11d711','Y','Y','N','N','L','','S',NULL,NULL,1,0,NULL,'','','Категории','Категория','Статьи','Статья');
/*!40000 ALTER TABLE `b_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_cache`
--

DROP TABLE IF EXISTS `b_iblock_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL,
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_cache`
--

LOCK TABLES `b_iblock_cache` WRITE;
/*!40000 ALTER TABLE `b_iblock_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element`
--

DROP TABLE IF EXISTS `b_iblock_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT 0,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_STATUS_ID` int(18) DEFAULT 1,
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element`
--

LOCK TABLES `b_iblock_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_element` DISABLE KEYS */;
INSERT INTO `b_iblock_element` VALUES (7,'2019-11-21 15:03:41',1,'2019-11-21 15:03:41',1,4,1,'Y',NULL,NULL,500,'Making it look like readable English. Many desktop packages and web page1',1,'Статья 1.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text',2,'Статья 1. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE1\r\nСТАТЬЯ 1.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 1. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS',1,NULL,NULL,NULL,NULL,NULL,'Y','7','making-it-look-like-readable-english-many-desktop-packages-and-web-page1','','0',NULL,NULL,NULL),(8,'2019-11-21 15:10:00',1,'2019-11-21 15:10:00',1,4,1,'Y',NULL,NULL,500,'Making it look like readable English. Many desktop packages and web page2',3,'Статья 2.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text',4,'Статья 2. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE2\r\nСТАТЬЯ 2.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 2. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS',1,NULL,NULL,NULL,NULL,NULL,'Y','8','making-it-look-like-readable-english-many-desktop-packages-and-web-page2','','0',NULL,NULL,NULL),(9,'2019-11-21 15:12:27',1,'2019-11-21 15:11:28',1,4,1,'Y',NULL,NULL,500,'Making it look like readable English. Many desktop packages and web page3',5,'Статья 3.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text',6,'Статья 3. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE3\r\nСТАТЬЯ 3.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 3. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS',1,NULL,NULL,NULL,NULL,NULL,'Y','9','making-it-look-like-readable-english-many-desktop-packages-and-web-page3','','0',NULL,NULL,NULL),(10,'2019-11-21 15:13:55',1,'2019-11-21 15:13:55',1,4,1,'Y',NULL,NULL,500,'Making it look like readable English. Many desktop packages and web page4',7,'Статья 4.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text',8,'Статья 4. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE4\r\nСТАТЬЯ 4.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 4. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS',1,NULL,NULL,NULL,NULL,NULL,'Y','10','making-it-look-like-readable-english-many-desktop-packages-and-web-page4','','0',NULL,NULL,NULL),(11,'2019-11-21 15:15:24',1,'2019-11-21 15:15:24',1,4,1,'Y',NULL,NULL,500,'Making it look like readable English. Many desktop packages and web page5',9,'Статья 5.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text',10,'Статья 5. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','text','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE5\r\nСТАТЬЯ 5.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 5. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS',1,NULL,NULL,NULL,NULL,NULL,'Y','11','making-it-look-like-readable-english-many-desktop-packages-and-web-page5','','0',NULL,2,'2019-11-21 23:15:24');
/*!40000 ALTER TABLE `b_iblock_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_iprop`
--

DROP TABLE IF EXISTS `b_iblock_element_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_iprop`
--

LOCK TABLES `b_iblock_element_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_lock`
--

DROP TABLE IF EXISTS `b_iblock_element_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_lock`
--

LOCK TABLES `b_iblock_element_lock` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_property`
--

DROP TABLE IF EXISTS `b_iblock_element_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_property`
--

LOCK TABLES `b_iblock_element_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_property` DISABLE KEYS */;
INSERT INTO `b_iblock_element_property` VALUES (1,2,7,'Kieth Deviec','text',NULL,0.0000,''),(2,2,8,'Fred G.Meyer','text',NULL,0.0000,''),(3,2,9,'R.J Cliton','text',NULL,0.0000,''),(4,2,10,' Kieth Deviec','text',NULL,0.0000,''),(5,2,11,'Fred G.Meyer','text',NULL,0.0000,'');
/*!40000 ALTER TABLE `b_iblock_element_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_right`
--

DROP TABLE IF EXISTS `b_iblock_element_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_right`
--

LOCK TABLES `b_iblock_element_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_fields`
--

DROP TABLE IF EXISTS `b_iblock_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_fields`
--

LOCK TABLES `b_iblock_fields` WRITE;
/*!40000 ALTER TABLE `b_iblock_fields` DISABLE KEYS */;
INSERT INTO `b_iblock_fields` VALUES (4,'ACTIVE','Y','Y'),(4,'ACTIVE_FROM','N',''),(4,'ACTIVE_TO','N',''),(4,'CODE','Y','a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(4,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:1000;s:6:\"HEIGHT\";i:461;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'DETAIL_TEXT','N',''),(4,'DETAIL_TEXT_TYPE','Y','text'),(4,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(4,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(4,'LOG_ELEMENT_ADD','N',NULL),(4,'LOG_ELEMENT_DELETE','N',NULL),(4,'LOG_ELEMENT_EDIT','N',NULL),(4,'LOG_SECTION_ADD','N',NULL),(4,'LOG_SECTION_DELETE','N',NULL),(4,'LOG_SECTION_EDIT','N',NULL),(4,'NAME','Y',''),(4,'PREVIEW_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"Y\";s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'PREVIEW_TEXT','N',''),(4,'PREVIEW_TEXT_TYPE','Y','text'),(4,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(4,'SECTION_CODE','Y','a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(4,'SECTION_DESCRIPTION','N',''),(4,'SECTION_DESCRIPTION_TYPE','Y','text'),(4,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(4,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'SECTION_NAME','Y',''),(4,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'SECTION_XML_ID','N',''),(4,'SORT','N','0'),(4,'TAGS','N',''),(4,'XML_ID','Y',''),(4,'XML_IMPORT_START_TIME','N',NULL);
/*!40000 ALTER TABLE `b_iblock_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_group`
--

DROP TABLE IF EXISTS `b_iblock_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_group`
--

LOCK TABLES `b_iblock_group` WRITE;
/*!40000 ALTER TABLE `b_iblock_group` DISABLE KEYS */;
INSERT INTO `b_iblock_group` VALUES (4,1,'X'),(4,2,'R');
/*!40000 ALTER TABLE `b_iblock_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iblock_iprop`
--

DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iblock_iprop`
--

LOCK TABLES `b_iblock_iblock_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iproperty`
--

DROP TABLE IF EXISTS `b_iblock_iproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iproperty`
--

LOCK TABLES `b_iblock_iproperty` WRITE;
/*!40000 ALTER TABLE `b_iblock_iproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_messages`
--

DROP TABLE IF EXISTS `b_iblock_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_messages`
--

LOCK TABLES `b_iblock_messages` WRITE;
/*!40000 ALTER TABLE `b_iblock_messages` DISABLE KEYS */;
INSERT INTO `b_iblock_messages` VALUES (4,'ELEMENT_ADD','Добавить статью'),(4,'ELEMENT_DELETE','Удалить статью'),(4,'ELEMENT_EDIT','Изменить статью'),(4,'ELEMENT_NAME','Статья'),(4,'ELEMENTS_NAME','Статьи'),(4,'SECTION_ADD','Добавить категорию'),(4,'SECTION_DELETE','Удалить категорию'),(4,'SECTION_EDIT','Изменить категорию'),(4,'SECTION_NAME','Категория'),(4,'SECTIONS_NAME','Категории');
/*!40000 ALTER TABLE `b_iblock_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_offers_tmp`
--

DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int(11) unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_offers_tmp`
--

LOCK TABLES `b_iblock_offers_tmp` WRITE;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property`
--

DROP TABLE IF EXISTS `b_iblock_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT 1,
  `COL_COUNT` int(11) NOT NULL DEFAULT 30,
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property`
--

LOCK TABLES `b_iblock_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_property` DISABLE KEYS */;
INSERT INTO `b_iblock_property` VALUES (2,'2019-11-21 11:28:12',4,'Автор','Y',500,'AUTHOR','','S',1,30,'L','N',NULL,'',5,NULL,0,'N','N','N','N',1,NULL,NULL,'');
/*!40000 ALTER TABLE `b_iblock_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_enum`
--

DROP TABLE IF EXISTS `b_iblock_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_enum`
--

LOCK TABLES `b_iblock_property_enum` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_feature`
--

DROP TABLE IF EXISTS `b_iblock_property_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_feature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_feature`
--

LOCK TABLES `b_iblock_property_feature` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_right`
--

DROP TABLE IF EXISTS `b_iblock_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_right`
--

LOCK TABLES `b_iblock_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_rss`
--

DROP TABLE IF EXISTS `b_iblock_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_rss`
--

LOCK TABLES `b_iblock_rss` WRITE;
/*!40000 ALTER TABLE `b_iblock_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section`
--

DROP TABLE IF EXISTS `b_iblock_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section`
--

LOCK TABLES `b_iblock_section` WRITE;
/*!40000 ALTER TABLE `b_iblock_section` DISABLE KEYS */;
INSERT INTO `b_iblock_section` VALUES (1,'2019-11-21 11:31:24',1,'2019-11-21 14:31:24',1,4,NULL,'Y','Y',500,'Design',NULL,1,2,1,'','text','DESIGN\r\n','design',NULL,NULL,NULL,NULL),(2,'2019-11-21 11:31:55',1,'2019-11-21 14:31:55',1,4,NULL,'Y','Y',500,'Music',NULL,5,6,1,'','text','MUSIC\r\n','music',NULL,NULL,NULL,NULL),(3,'2019-11-21 11:32:30',1,'2019-11-21 14:32:30',1,4,NULL,'Y','Y',500,'Technology',NULL,9,10,1,'','text','TECHNOLOGY\r\n','technology',NULL,NULL,NULL,NULL),(4,'2019-11-21 11:34:17',1,'2019-11-21 14:34:17',1,4,NULL,'Y','Y',500,'Nature',NULL,7,8,1,'','text','NATURE\r\n','nature',NULL,NULL,NULL,NULL),(5,'2019-11-21 11:35:02',1,'2019-11-21 14:35:02',1,4,NULL,'Y','Y',500,'Fashion',NULL,3,4,1,'','text','FASHION\r\n','fashion',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_element`
--

DROP TABLE IF EXISTS `b_iblock_section_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_element`
--

LOCK TABLES `b_iblock_section_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_element` DISABLE KEYS */;
INSERT INTO `b_iblock_section_element` VALUES (1,7,NULL),(1,8,NULL),(1,9,NULL),(1,10,NULL),(1,11,NULL);
/*!40000 ALTER TABLE `b_iblock_section_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_iprop`
--

DROP TABLE IF EXISTS `b_iblock_section_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_iprop`
--

LOCK TABLES `b_iblock_section_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_property`
--

DROP TABLE IF EXISTS `b_iblock_section_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_property`
--

LOCK TABLES `b_iblock_section_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_right`
--

DROP TABLE IF EXISTS `b_iblock_section_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_right`
--

LOCK TABLES `b_iblock_section_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_sequence`
--

DROP TABLE IF EXISTS `b_iblock_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_sequence`
--

LOCK TABLES `b_iblock_sequence` WRITE;
/*!40000 ALTER TABLE `b_iblock_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_site`
--

DROP TABLE IF EXISTS `b_iblock_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_site`
--

LOCK TABLES `b_iblock_site` WRITE;
/*!40000 ALTER TABLE `b_iblock_site` DISABLE KEYS */;
INSERT INTO `b_iblock_site` VALUES (4,'s1');
/*!40000 ALTER TABLE `b_iblock_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type`
--

DROP TABLE IF EXISTS `b_iblock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT 500,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type`
--

LOCK TABLES `b_iblock_type` WRITE;
/*!40000 ALTER TABLE `b_iblock_type` DISABLE KEYS */;
INSERT INTO `b_iblock_type` VALUES ('blog','Y','','','N',500);
/*!40000 ALTER TABLE `b_iblock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type_lang`
--

DROP TABLE IF EXISTS `b_iblock_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type_lang`
--

LOCK TABLES `b_iblock_type_lang` WRITE;
/*!40000 ALTER TABLE `b_iblock_type_lang` DISABLE KEYS */;
INSERT INTO `b_iblock_type_lang` VALUES ('blog','ru','Блог','',''),('blog','en','Blog','','');
/*!40000 ALTER TABLE `b_iblock_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_entity_rights`
--

DROP TABLE IF EXISTS `b_landing_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_entity_rights` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_ID` int(18) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_entity_rights`
--

LOCK TABLES `b_landing_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_landing_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_file`
--

DROP TABLE IF EXISTS `b_landing_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_file`
--

LOCK TABLES `b_landing_file` WRITE;
/*!40000 ALTER TABLE `b_landing_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_block`
--

DROP TABLE IF EXISTS `b_landing_filter_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_filter_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILTER_ID` int(18) NOT NULL,
  `BLOCK_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`),
  KEY `IX_B_FILTER_ID` (`FILTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_block`
--

LOCK TABLES `b_landing_filter_block` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_hook_data`
--

DROP TABLE IF EXISTS `b_landing_hook_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_hook_data`
--

LOCK TABLES `b_landing_hook_data` WRITE;
/*!40000 ALTER TABLE `b_landing_hook_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_hook_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_syspage`
--

DROP TABLE IF EXISTS `b_landing_syspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_ID` (`SITE_ID`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_syspage`
--

LOCK TABLES `b_landing_syspage` WRITE;
/*!40000 ALTER TABLE `b_landing_syspage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_syspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template_ref`
--

DROP TABLE IF EXISTS `b_landing_template_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_LANDING_ID` (`LANDING_ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template_ref`
--

LOCK TABLES `b_landing_template_ref` WRITE;
/*!40000 ALTER TABLE `b_landing_template_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_template_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang`
--

DROP TABLE IF EXISTS `b_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT 100,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang`
--

LOCK TABLES `b_lang` WRITE;
/*!40000 ALTER TABLE `b_lang` DISABLE KEYS */;
INSERT INTO `b_lang` VALUES ('s1',1,'Y','Y','Корпоративный сайт (Сайт по умолчанию)','/',NULL,NULL,NULL,NULL,NULL,'ru','','N','','Корпоративный сайт','',1);
/*!40000 ALTER TABLE `b_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang_domain`
--

DROP TABLE IF EXISTS `b_lang_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang_domain`
--

LOCK TABLES `b_lang_domain` WRITE;
/*!40000 ALTER TABLE `b_lang_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_lang_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_language`
--

DROP TABLE IF EXISTS `b_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_language`
--

LOCK TABLES `b_language` WRITE;
/*!40000 ALTER TABLE `b_language` DISABLE KEYS */;
INSERT INTO `b_language` VALUES ('en',2,'N','Y','English',NULL,NULL,NULL,NULL,NULL,NULL,2),('ru',1,'Y','Y','Russian',NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `b_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification`
--

DROP TABLE IF EXISTS `b_log_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_notification` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_INTERVAL` int(11) DEFAULT NULL,
  `ALERT_COUNT` int(11) DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification`
--

LOCK TABLES `b_log_notification` WRITE;
/*!40000 ALTER TABLE `b_log_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification_action`
--

DROP TABLE IF EXISTS `b_log_notification_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_notification_action` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NOTIFICATION_ID` int(10) unsigned NOT NULL,
  `NOTIFICATION_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `RECIPIENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_log_notification_action_notification_id` (`NOTIFICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification_action`
--

LOCK TABLES `b_log_notification_action` WRITE;
/*!40000 ALTER TABLE `b_log_notification_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_blacklist`
--

DROP TABLE IF EXISTS `b_main_mail_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_blacklist`
--

LOCK TABLES `b_main_mail_blacklist` WRITE;
/*!40000 ALTER TABLE `b_main_mail_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_sender`
--

DROP TABLE IF EXISTS `b_main_mail_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT 0,
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT 0,
  `OPTIONS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_sender`
--

LOCK TABLES `b_main_mail_sender` WRITE;
/*!40000 ALTER TABLE `b_main_mail_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection`
--

DROP TABLE IF EXISTS `b_medialib_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection`
--

LOCK TABLES `b_medialib_collection` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection_item`
--

DROP TABLE IF EXISTS `b_medialib_collection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection_item`
--

LOCK TABLES `b_medialib_collection_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_item`
--

DROP TABLE IF EXISTS `b_medialib_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_item`
--

LOCK TABLES `b_medialib_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_type`
--

DROP TABLE IF EXISTS `b_medialib_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_type`
--

LOCK TABLES `b_medialib_type` WRITE;
/*!40000 ALTER TABLE `b_medialib_type` DISABLE KEYS */;
INSERT INTO `b_medialib_type` VALUES (1,'image_name','image','jpg,jpeg,gif,png','Y','image_desc'),(2,'video_name','video','flv,mp4,wmv','Y','video_desc'),(3,'sound_name','sound','mp3,wma,aac','Y','sound_desc');
/*!40000 ALTER TABLE `b_medialib_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_message`
--

DROP TABLE IF EXISTS `b_messageservice_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT 0,
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_message`
--

LOCK TABLES `b_messageservice_message` WRITE;
/*!40000 ALTER TABLE `b_messageservice_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app`
--

LOCK TABLES `b_messageservice_rest_app` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app_lang`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app_lang`
--

LOCK TABLES `b_messageservice_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module`
--

DROP TABLE IF EXISTS `b_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module`
--

LOCK TABLES `b_module` WRITE;
/*!40000 ALTER TABLE `b_module` DISABLE KEYS */;
INSERT INTO `b_module` VALUES ('b24connector','2019-11-19 12:12:33'),('bitrix.sitecorporate','2019-11-19 12:12:41'),('bitrixcloud','2019-11-19 12:12:46'),('clouds','2019-11-19 12:12:53'),('compression','2019-11-19 12:12:56'),('fileman','2019-11-19 12:13:03'),('highloadblock','2019-11-19 12:13:41'),('iblock','2019-11-19 12:14:03'),('main','2019-11-19 12:10:02'),('messageservice','2019-11-19 12:15:06'),('perfmon','2019-11-19 12:15:17'),('rest','2019-11-19 12:15:24'),('search','2019-11-19 12:15:39'),('seo','2019-11-19 12:15:53'),('socialservices','2019-11-19 12:16:02'),('translate','2019-11-19 12:16:06'),('ui','2019-11-19 12:16:08');
/*!40000 ALTER TABLE `b_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_group`
--

DROP TABLE IF EXISTS `b_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_group`
--

LOCK TABLES `b_module_group` WRITE;
/*!40000 ALTER TABLE `b_module_group` DISABLE KEYS */;
INSERT INTO `b_module_group` VALUES (1,'main',5,'Q',NULL);
/*!40000 ALTER TABLE `b_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_to_module`
--

DROP TABLE IF EXISTS `b_module_to_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SORT` int(18) NOT NULL DEFAULT 100,
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  `UNIQUE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_to_module`
--

LOCK TABLES `b_module_to_module` WRITE;
/*!40000 ALTER TABLE `b_module_to_module` DISABLE KEYS */;
INSERT INTO `b_module_to_module` VALUES (1,'2019-11-19 12:10:02',100,'iblock','OnIBlockPropertyBuildList','main','/modules/main/tools/prop_userid.php','CIBlockPropertyUserID','GetUserTypeDescription','',1,'2b30c309bf87645959b9bfbed51b49c6'),(2,'2019-11-19 12:10:02',100,'main','OnUserDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnUserDelete','',1,'f437e170e4daf957766b0b0579f08fb4'),(3,'2019-11-19 12:10:02',100,'main','OnLanguageDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnLanguageDelete','',1,'9211999c5cfc3a4d374e4f957d5079f6'),(4,'2019-11-19 12:10:02',100,'main','OnUserDelete','main','','CUserOptions','OnUserDelete','',1,'9ef4e969f975b6425c7113444d210a90'),(5,'2019-11-19 12:10:02',100,'main','OnChangeFile','main','','CMain','OnChangeFileComponent','',1,'332179402f77c4d41c6c2e524acde4d0'),(6,'2019-11-19 12:10:03',100,'main','OnUserTypeRightsCheck','main','','CUser','UserTypeRightsCheck','',1,'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),(7,'2019-11-19 12:10:03',100,'main','OnUserLogin','main','','UpdateTools','CheckUpdates','',1,'a2986b9f6e9a99c0351c2ba858dafc85'),(8,'2019-11-19 12:10:03',100,'main','OnModuleUpdate','main','','UpdateTools','SetUpdateResult','',1,'f9b70c6a75b6341063b23bde5d32e582'),(9,'2019-11-19 12:10:03',100,'main','OnUpdateCheck','main','','UpdateTools','SetUpdateError','',1,'a0aecef95a192ec3dd134f71f0f4f175'),(10,'2019-11-19 12:10:03',100,'main','OnPanelCreate','main','','CUndo','CheckNotifyMessage','',1,'6476f96ffba6ab2b4a7dbe644f42edf6'),(11,'2019-11-19 12:10:03',100,'main','OnAfterAddRating','main','','CRatingsComponentsMain','OnAfterAddRating','',1,'6122bee2ad083f8f72e35655cee48859'),(12,'2019-11-19 12:10:03',100,'main','OnAfterUpdateRating','main','','CRatingsComponentsMain','OnAfterUpdateRating','',1,'f8f806e33dc35737bdbe6b9bc42626a4'),(13,'2019-11-19 12:10:03',100,'main','OnSetRatingsConfigs','main','','CRatingsComponentsMain','OnSetRatingConfigs','',1,'9244ca7fd6964757ca191c9407cb1218'),(14,'2019-11-19 12:10:03',100,'main','OnGetRatingsConfigs','main','','CRatingsComponentsMain','OnGetRatingConfigs','',1,'d8ae8e1f8889b1fbb6af276fb14c8411'),(15,'2019-11-19 12:10:03',100,'main','OnGetRatingsObjects','main','','CRatingsComponentsMain','OnGetRatingObject','',1,'129315715250c195ee115002b445a156'),(16,'2019-11-19 12:10:03',100,'main','OnGetRatingContentOwner','main','','CRatingsComponentsMain','OnGetRatingContentOwner','',1,'bf1f5deaa1532fe9a28acd6d19d23a80'),(17,'2019-11-19 12:10:03',100,'main','OnAfterAddRatingRule','main','','CRatingRulesMain','OnAfterAddRatingRule','',1,'298e763431f7f7d6c3af9798663f410d'),(18,'2019-11-19 12:10:03',100,'main','OnAfterUpdateRatingRule','main','','CRatingRulesMain','OnAfterUpdateRatingRule','',1,'4ecdc4a15e24c49f0fa8f44064bf1511'),(19,'2019-11-19 12:10:03',100,'main','OnGetRatingRuleObjects','main','','CRatingRulesMain','OnGetRatingRuleObjects','',1,'6ac10928b76183004ba0e88ace0a1b5b'),(20,'2019-11-19 12:10:03',100,'main','OnGetRatingRuleConfigs','main','','CRatingRulesMain','OnGetRatingRuleConfigs','',1,'06769c4f6bbba4fad79c1619a874ee97'),(21,'2019-11-19 12:10:03',100,'main','OnAfterUserAdd','main','','CRatings','OnAfterUserRegister','',1,'ecb9ae0476db69da6c95b06bcb3aebbb'),(22,'2019-11-19 12:10:03',100,'main','OnUserDelete','main','','CRatings','OnUserDelete','',1,'9fe6984fd29b7ab9508ac02c23690094'),(23,'2019-11-19 12:10:03',100,'main','OnUserDelete','main','','CAccess','OnUserDelete','',1,'71909f221d70fa277429e80412f97f41'),(24,'2019-11-19 12:10:04',100,'main','OnAfterGroupAdd','main','','CGroupAuthProvider','OnAfterGroupAdd','',1,'02f2fe70b9068a6b307192321fe74430'),(25,'2019-11-19 12:10:04',100,'main','OnBeforeGroupUpdate','main','','CGroupAuthProvider','OnBeforeGroupUpdate','',1,'ef0f2e4d0ae7bbf59d0798e8078143f9'),(26,'2019-11-19 12:10:04',100,'main','OnBeforeGroupDelete','main','','CGroupAuthProvider','OnBeforeGroupDelete','',1,'d3ec9527c0e77709402a05ae4249afca'),(27,'2019-11-19 12:10:04',100,'main','OnAfterSetUserGroup','main','','CGroupAuthProvider','OnAfterSetUserGroup','',1,'0de6c5b48e9382f6e857d79f76d95f25'),(28,'2019-11-19 12:10:04',100,'main','OnUserLogin','main','','CGroupAuthProvider','OnUserLogin','',1,'954e2c4ca8624f90f1aee6f40183d5fc'),(29,'2019-11-19 12:10:04',100,'main','OnEventLogGetAuditTypes','main','','CEventMain','GetAuditTypes','',1,'ac0b8b7a5e703131a3bd41b4399bc032'),(30,'2019-11-19 12:10:04',100,'main','OnEventLogGetAuditHandlers','main','','CEventMain','MakeMainObject','',1,'1ddb38ccf35a8a9da5d3b2bc80591ad6'),(31,'2019-11-19 12:10:04',100,'perfmon','OnGetTableSchema','main','','CTableSchema','OnGetTableSchema','',1,'c1f65f88d449e8b8a3b7af9d54ef3f50'),(32,'2019-11-19 12:10:04',100,'sender','OnConnectorList','main','','\\Bitrix\\Main\\SenderEventHandler','onConnectorListUser','',1,'8af99568465a1ccdb6a84e868cf5aad8'),(33,'2019-11-19 12:10:04',110,'main','OnUserTypeBuildList','main','','CUserTypeString','GetUserTypeDescription','',1,'09f8200652932044934bd3c522e920c5'),(34,'2019-11-19 12:10:04',120,'main','OnUserTypeBuildList','main','','CUserTypeInteger','GetUserTypeDescription','',1,'71ef247b3eb3b07e4bd6940791b89497'),(35,'2019-11-19 12:10:04',130,'main','OnUserTypeBuildList','main','','CUserTypeDouble','GetUserTypeDescription','',1,'4fe2008255fe567423cc0c2f080ca741'),(36,'2019-11-19 12:10:04',140,'main','OnUserTypeBuildList','main','','CUserTypeDateTime','GetUserTypeDescription','',1,'686c0679e60bee52dbcc27f5502277b6'),(37,'2019-11-19 12:10:04',145,'main','OnUserTypeBuildList','main','','CUserTypeDate','GetUserTypeDescription','',1,'7e19b5fc5fc48b1cd317a6ac44d84236'),(38,'2019-11-19 12:10:04',150,'main','OnUserTypeBuildList','main','','CUserTypeBoolean','GetUserTypeDescription','',1,'4d5e1dd2369089f2db9480549241205f'),(39,'2019-11-19 12:10:05',155,'main','OnUserTypeBuildList','main','','CUserTypeUrl','GetUserTypeDescription','',1,'79fcd650625b296abf13216cd5af2428'),(40,'2019-11-19 12:10:05',160,'main','OnUserTypeBuildList','main','','CUserTypeFile','GetUserTypeDescription','',1,'67b9a4fbc45240a7887b73e3a246eba0'),(41,'2019-11-19 12:10:05',170,'main','OnUserTypeBuildList','main','','CUserTypeEnum','GetUserTypeDescription','',1,'fbebdb289fe38c1fbfeda4d3d8ee43ef'),(42,'2019-11-19 12:10:05',180,'main','OnUserTypeBuildList','main','','CUserTypeIBlockSection','GetUserTypeDescription','',1,'2065f8305645790970bac0b99f127f47'),(43,'2019-11-19 12:10:05',190,'main','OnUserTypeBuildList','main','','CUserTypeIBlockElement','GetUserTypeDescription','',1,'65bda5818e3545f1683a3ff5271cc891'),(44,'2019-11-19 12:10:05',200,'main','OnUserTypeBuildList','main','','CUserTypeStringFormatted','GetUserTypeDescription','',1,'47e3cf1c280e01dbaed43f9989a6747b'),(45,'2019-11-19 12:10:05',210,'main','OnUserTypeBuildList','main','','\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType','getUserTypeDescription','',1,'719d15ee5f60f6348d2bd6a8911aeed1'),(46,'2019-11-19 12:10:05',100,'main','OnBeforeEndBufferContent','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeEndBufferContent','',1,'ff5eb984fe6ce3e8d769bf3ba646b902'),(47,'2019-11-19 12:10:05',100,'main','OnBeforeRestartBuffer','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeRestartBuffer','',1,'0782f5a6df6dd52d834caea88c3ba3a7'),(48,'2019-11-19 12:10:05',100,'main','OnFileDelete','main','','\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable','onFileDelete','',1,'54c80cd94412db221338aeb59902f059'),(49,'2019-11-19 12:10:05',100,'disk','onAfterAjaxActionCreateFolderWithSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'bfd508b9d33aff2527add538ca8ce0da'),(50,'2019-11-19 12:10:05',100,'disk','onAfterAjaxActionAppendSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'a98030c3e6d284d10916eadb1153cb68'),(51,'2019-11-19 12:10:05',100,'disk','onAfterAjaxActionChangeSharingAndRights','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'6787372096415bcfe93bd50d8b24f608'),(52,'2019-11-19 12:10:05',100,'socialnetwork','OnSocNetLogDelete','main','','CUserCounter','OnSocNetLogDelete','',1,'33e603755a0bc07abd51a1f8ed52966e'),(53,'2019-11-19 12:10:05',100,'socialnetwork','OnSocNetLogCommentDelete','main','','CUserCounter','OnSocNetLogCommentDelete','',1,'51ee2214895be904a880046f43e84138'),(54,'2019-11-19 12:10:05',100,'main','OnAdminInformerInsertItems','main','','CMpNotifications','OnAdminInformerInsertItemsHandlerMP','',1,'c89c0e94ac1110c334a24c70e1773daa'),(55,'2019-11-19 12:10:05',100,'rest','OnRestServiceBuildDescription','main','','\\Bitrix\\Main\\Rest\\Handlers','onRestServiceBuildDescription','',1,'c0b0c358a21b648d4f9c5d29d17a5ab2'),(56,'2019-11-19 12:10:07',100,'sale','OnSaleBasketItemSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogBasket','',2,'fa4fc3924ff2585e92f8bdabaf287864'),(57,'2019-11-19 12:10:07',100,'sale','OnSaleOrderSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrder','',2,'6b358bb17b30da91b105fb1451ed9aaa'),(58,'2019-11-19 12:10:07',100,'sale','OnSaleOrderPaid','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrderPayment','',2,'8f5ca6e1c5136cb4bbf30474f0ff4183'),(59,'2019-11-19 12:10:07',1000,'sale','onBuildDiscountConditionInterfaceControls','main','','\\Bitrix\\Main\\Discount\\UserConditionControl','onBuildDiscountConditionInterfaceControls','',1,'9f0d91c081704e52b52f540b3acaf52e'),(60,'2019-11-19 12:10:07',100,'main','OnBeforePhpMail','main','','\\Bitrix\\Main\\Mail\\Sender','applyCustomSmtp','',2,'10fbf5b8dec05a02d8d7010e594f16ec'),(61,'2019-11-19 12:10:07',100,'main','OnBuildFilterFactoryMethods','main','','\\Bitrix\\Main\\Filter\\FactoryMain','onBuildFilterFactoryMethods','',2,'19f10c2686a955bd8b8116ea1f1ad829'),(62,'2019-11-19 12:12:33',100,'main','OnBuildGlobalMenu','b24connector','','\\Bitrix\\B24Connector\\Helper','onBuildGlobalMenu','',1,'9c4452a442bacc2d4d70635962485be1'),(63,'2019-11-19 12:12:33',100,'main','OnBeforeProlog','b24connector','','\\Bitrix\\B24Connector\\Helper','onBeforeProlog','',1,'641053ff6ee8ff57518d7c30724530e5'),(64,'2019-11-19 12:12:41',100,'main','OnBeforeProlog','bitrix.sitecorporate','','CSiteCorporate','ShowPanel','',1,'bc7c322534797a9ed3493c40e1b8fdac'),(65,'2019-11-19 12:12:46',100,'main','OnAdminInformerInsertItems','bitrixcloud','','CBitrixCloudBackup','OnAdminInformerInsertItems','',1,'5499039afdd0fdb38d4b245c8b886dcb'),(66,'2019-11-19 12:12:47',100,'mobileapp','OnBeforeAdminMobileMenuBuild','bitrixcloud','','CBitrixCloudMobile','OnBeforeAdminMobileMenuBuild','',1,'5828a8cdb2cc45e2724ef1c76139df88'),(67,'2019-11-19 12:12:53',100,'main','OnEventLogGetAuditTypes','clouds','','CCloudStorage','GetAuditTypes','',1,'da69722ba95497cf263381b46e24df40'),(68,'2019-11-19 12:12:53',90,'main','OnBeforeProlog','clouds','','CCloudStorage','OnBeforeProlog','',1,'f8c39ff182ad873715f10a7091f928a4'),(69,'2019-11-19 12:12:53',100,'main','OnAdminListDisplay','clouds','','CCloudStorage','OnAdminListDisplay','',1,'8ddf4f578e7229a63cba4d2124c7643c'),(70,'2019-11-19 12:12:53',100,'main','OnBuildGlobalMenu','clouds','','CCloudStorage','OnBuildGlobalMenu','',1,'d6d308843a6521ad50bfa230a2fcef8f'),(71,'2019-11-19 12:12:53',100,'main','OnFileSave','clouds','','CCloudStorage','OnFileSave','',1,'1e4f94a842d6166359ed1789a6f21245'),(72,'2019-11-19 12:12:53',100,'main','OnAfterFileSave','clouds','','CCloudStorage','OnAfterFileSave','',1,'c36bae07a3080f9b5bc5d422ec96933f'),(73,'2019-11-19 12:12:54',100,'main','OnGetFileSRC','clouds','','CCloudStorage','OnGetFileSRC','',1,'7ec03b3b7ad3f2f54c1e438a1172e5a8'),(74,'2019-11-19 12:12:54',100,'main','OnFileCopy','clouds','','CCloudStorage','OnFileCopy','',1,'6880b56c76f7d3c5d09f887fca6341ca'),(75,'2019-11-19 12:12:54',100,'main','OnFileDelete','clouds','','CCloudStorage','OnFileDelete','',1,'fefe695dc9f0e579e949c2dfcbe90d9d'),(76,'2019-11-19 12:12:54',100,'main','OnMakeFileArray','clouds','','CCloudStorage','OnMakeFileArray','',1,'713ea8a7a25764b1af60f7a1ec3032d5'),(77,'2019-11-19 12:12:54',100,'main','OnBeforeResizeImage','clouds','','CCloudStorage','OnBeforeResizeImage','',1,'705cd310c52f9c7e8e0c8a0578a22667'),(78,'2019-11-19 12:12:54',100,'main','OnAfterResizeImage','clouds','','CCloudStorage','OnAfterResizeImage','',1,'a403ad2328227153475df0c478a465cc'),(79,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_AmazonS3','GetObjectInstance','',1,'a4eb7ed1f50b5931474c565f448a4069'),(80,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_GoogleStorage','GetObjectInstance','',1,'1e559e2225608e8d40eeede5b7526f2a'),(81,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_OpenStackStorage','GetObjectInstance','',1,'5ad09feff5dab28ab571ad034ccdf2ea'),(82,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_RackSpaceCloudFiles','GetObjectInstance','',1,'cc976773610cf809bb56871ac7dd9f01'),(83,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_ClodoRU','GetObjectInstance','',1,'faadad31436e94c420ed787e4424714b'),(84,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Selectel','GetObjectInstance','',1,'5e63a8eebed42bd099b4a9ef62e8d52b'),(85,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_HotBox','GetObjectInstance','',1,'1913169adcd6d6f3b7fb5f3b70ba1fd8'),(86,'2019-11-19 12:12:54',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Yandex','GetObjectInstance','',1,'12bd1d4f0d145d5b1681955612fe61c8'),(87,'2019-11-19 12:12:54',100,'perfmon','OnGetTableSchema','clouds','','clouds','OnGetTableSchema','',1,'d31a1f80f07441976eb1711db4902a71'),(88,'2019-11-19 12:12:56',1,'main','OnPageStart','compression','','CCompress','OnPageStart','',1,'b5b3b05c97cb867ae7494ab99fa9a119'),(89,'2019-11-19 12:12:56',10000,'main','OnAfterEpilog','compression','','CCompress','OnAfterEpilog','',1,'397a459912acd1c78fc9129065807860'),(90,'2019-11-19 12:13:03',100,'main','OnGroupDelete','fileman','','CFileman','OnGroupDelete','',1,'d10f791d422ba0e7551ab267db50404c'),(91,'2019-11-19 12:13:03',100,'main','OnPanelCreate','fileman','','CFileman','OnPanelCreate','',1,'b00a6174fb1763684c299ccf5e054c65'),(92,'2019-11-19 12:13:03',100,'main','OnModuleUpdate','fileman','','CFileman','OnModuleUpdate','',1,'58ae853e2b7c230b5cdb51129efd8a05'),(93,'2019-11-19 12:13:03',100,'main','OnModuleInstalled','fileman','','CFileman','ClearComponentsListCache','',1,'7bdbd354eab11f376fa257a998587277'),(94,'2019-11-19 12:13:03',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapGoogle','GetUserTypeDescription','',1,'d9d06fd05f80b33379359ebd8e36e655'),(95,'2019-11-19 12:13:03',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapYandex','GetUserTypeDescription','',1,'20ca1d02998884b5abec68b32fdb561d'),(96,'2019-11-19 12:13:03',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyVideo','GetUserTypeDescription','',1,'991c32062e05844708a5cf7aba37bf9a'),(97,'2019-11-19 12:13:03',100,'main','OnUserTypeBuildList','fileman','','CUserTypeVideo','GetUserTypeDescription','',1,'41bc5efb49ebf8d165acd4e4d556f60c'),(98,'2019-11-19 12:13:03',100,'main','OnEventLogGetAuditTypes','fileman','','CEventFileman','GetAuditTypes','',1,'e0a610651ffec1fbddb2f261223fb2e9'),(99,'2019-11-19 12:13:03',100,'main','OnEventLogGetAuditHandlers','fileman','','CEventFileman','MakeFilemanObject','',1,'fbfef1ef99530f6eae191da293f9566c'),(100,'2019-11-19 12:13:03',154,'main','OnUserTypeBuildList','fileman','','\\Bitrix\\Fileman\\UserField\\Address','getUserTypeDescription','',1,'f0583a376e38d3d2675513b1a367ed3c'),(101,'2019-11-19 12:13:41',100,'main','OnBeforeUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeAdd','',1,'f9dcff287cf7753e5c56974d37975507'),(102,'2019-11-19 12:13:41',100,'main','OnAfterUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','onAfterUserTypeAdd','',1,'d1fa2865e72eca144b964b6fb1eefc15'),(103,'2019-11-19 12:13:41',100,'main','OnBeforeUserTypeDelete','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeDelete','',1,'1bf13707e1a45b8320c2ecd35534cbb4'),(104,'2019-11-19 12:13:41',100,'main','OnUserTypeBuildList','highloadblock','','CUserTypeHlblock','GetUserTypeDescription','',1,'2ac4a2154f4fd85d67b50f412ed5ed48'),(105,'2019-11-19 12:13:41',100,'iblock','OnIBlockPropertyBuildList','highloadblock','','CIBlockPropertyDirectory','GetUserTypeDescription','',1,'a6f7df502db8a04590e43188d7cbfc99'),(106,'2019-11-19 12:14:03',100,'main','OnGroupDelete','iblock','','CIBlock','OnGroupDelete','',1,'f2320df213f38adf32364d3169d5b197'),(107,'2019-11-19 12:14:03',100,'main','OnBeforeLangDelete','iblock','','CIBlock','OnBeforeLangDelete','',1,'46aef774958db327c1170a12d3a70ee5'),(108,'2019-11-19 12:14:03',100,'main','OnLangDelete','iblock','','CIBlock','OnLangDelete','',1,'861f6ee2ca56bf63c3af07db0553606b'),(109,'2019-11-19 12:14:03',100,'main','OnUserTypeRightsCheck','iblock','','CIBlockSection','UserTypeRightsCheck','',1,'2a6d446893d46f04f2c151f458d2908c'),(110,'2019-11-19 12:14:03',100,'search','OnReindex','iblock','','CIBlock','OnSearchReindex','',1,'c6c8111f129e0eb19e558106e354e6f6'),(111,'2019-11-19 12:14:03',100,'search','OnSearchGetURL','iblock','','CIBlock','OnSearchGetURL','',1,'0ae9fc756bfb1273309240cd8f535672'),(112,'2019-11-19 12:14:03',100,'main','OnEventLogGetAuditTypes','iblock','','CIBlock','GetAuditTypes','',1,'182d19c163e3a5a965bca170c3fb0e83'),(113,'2019-11-19 12:14:03',100,'main','OnEventLogGetAuditHandlers','iblock','','CEventIBlock','MakeIBlockObject','',1,'f7a182e8d9b204970d111e4703b9f523'),(114,'2019-11-19 12:14:03',200,'main','OnGetRatingContentOwner','iblock','','CRatingsComponentsIBlock','OnGetRatingContentOwner','',1,'6da245944e376d586a3fa2aaee02c70b'),(115,'2019-11-19 12:14:03',100,'main','OnTaskOperationsChanged','iblock','','CIBlockRightsStorage','OnTaskOperationsChanged','',1,'01b3f9984fa07b1dfb4bc35d107d5672'),(116,'2019-11-19 12:14:03',100,'main','OnGroupDelete','iblock','','CIBlockRightsStorage','OnGroupDelete','',1,'2dbbccdee3f2e7bd86446bec02be1d54'),(117,'2019-11-19 12:14:04',100,'main','OnUserDelete','iblock','','CIBlockRightsStorage','OnUserDelete','',1,'78f090ee29030c54788098b0782d28f9'),(118,'2019-11-19 12:14:04',100,'perfmon','OnGetTableSchema','iblock','','iblock','OnGetTableSchema','',1,'4b71a345c136beed338aa7137943d80b'),(119,'2019-11-19 12:14:04',100,'sender','OnConnectorList','iblock','','\\Bitrix\\Iblock\\SenderEventHandler','onConnectorListIblock','',1,'3de75587a47352dd3cb6d10866f69385'),(120,'2019-11-19 12:14:04',10,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDate','GetUserTypeDescription','',1,'fa608e2c397b6793c54ad296619a22e2'),(121,'2019-11-19 12:14:04',20,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDateTime','GetUserTypeDescription','',1,'78554c9e3c38ac383d51f0ee4d013120'),(122,'2019-11-19 12:14:04',30,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyXmlID','GetUserTypeDescription','',1,'952fe5f2ea67493fb9f9b924ce1b992b'),(123,'2019-11-19 12:14:04',40,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyFileMan','GetUserTypeDescription','',1,'fd688441d5e8203751fb47374931e011'),(124,'2019-11-19 12:14:04',50,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyHTML','GetUserTypeDescription','',1,'27645f81ce5d6d9f19a47cc171860beb'),(125,'2019-11-19 12:14:04',60,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementList','GetUserTypeDescription','',1,'c53e9314ae43c30267b32310a02d7df4'),(126,'2019-11-19 12:14:04',70,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySequence','GetUserTypeDescription','',1,'3ff9528d1264fc77697248957aafdab5'),(127,'2019-11-19 12:14:04',80,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementAutoComplete','GetUserTypeDescription','',1,'0d233a1e7a0d6a52a52e13df88291024'),(128,'2019-11-19 12:14:04',90,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySKU','GetUserTypeDescription','',1,'8678bc826ced4f66640fba3775b18516'),(129,'2019-11-19 12:14:04',100,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySectionAutoComplete','GetUserTypeDescription','',1,'26ff6f651cb94a1fe4ce9827566f0730'),(130,'2019-11-19 12:15:06',100,'main','OnAfterEpilog','messageservice','','\\Bitrix\\MessageService\\Queue','run','',1,'6bcb21b0ccc5ac89d9531ddf8b94683c'),(131,'2019-11-19 12:15:06',100,'rest','OnRestServiceBuildDescription','messageservice','','\\Bitrix\\MessageService\\RestService','onRestServiceBuildDescription','',1,'7524628243223e572590eea87cc03f73'),(132,'2019-11-19 12:15:06',100,'rest','OnRestAppDelete','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppDelete','',1,'5febc41cd526ecba95dbb4843dd9c134'),(133,'2019-11-19 12:15:06',100,'rest','OnRestAppUpdate','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppUpdate','',1,'7e77b4d550c200a4ec06872af7857ee6'),(134,'2019-11-19 12:15:18',100,'perfmon','OnGetTableSchema','perfmon','','perfmon','OnGetTableSchema','',1,'3a4da255b44f05899b64e66a40c12662'),(135,'2019-11-19 12:15:24',49,'main','OnBeforeProlog','rest','','CRestEventHandlers','OnBeforeProlog','',2,'395c9c42c3cc9392de1e5887617afe6d'),(136,'2019-11-19 12:15:24',100,'rest','OnRestServiceBuildDescription','rest','','CBitrixRestEntity','OnRestServiceBuildDescription','',2,'f63068b1eb62c36219518206e1e2827c'),(137,'2019-11-19 12:15:24',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\User','onRestServiceBuildDescription','',2,'c9a03e9019564649e55f5409b661e050'),(138,'2019-11-19 12:15:24',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Placement','onRestServiceBuildDescription','',2,'9751a266c2b6f6be5c34b1541bf7c194'),(139,'2019-11-19 12:15:24',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Event','onRestServiceBuildDescription','',2,'842ad63f19aff6d810059c7e56739aae'),(140,'2019-11-19 12:15:24',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\UserFieldType','onRestServiceBuildDescription','',2,'4caf68a5256aabe4abef37f24562e59b'),(141,'2019-11-19 12:15:25',100,'rest','onFindMethodDescription','rest','','\\Bitrix\\Rest\\Engine\\RestManager','onFindMethodDescription','',2,'4d0614f880674af333326dd5ba9b2828'),(142,'2019-11-19 12:15:25',100,'main','OnApplicationsBuildList','main','modules/rest/lib/apauth/application.php','\\Bitrix\\Rest\\APAuth\\Application','onApplicationsBuildList','',2,'9c39129872987f8dcc8baacc0c446ed7'),(143,'2019-11-19 12:15:25',100,'im','OnAfterConfirmNotify','rest','','\\Bitrix\\Rest\\NotifyIm','receive','',2,'2ac9c19fe69d4e106deaa6f4a7a4371b'),(144,'2019-11-19 12:15:25',100,'rest','\\Bitrix\\Rest\\APAuth\\Password::OnDelete','rest','','\\Bitrix\\Rest\\APAuth\\PermissionTable','onPasswordDelete','',2,'f04447ca635f045ec1a64e593964fc90'),(145,'2019-11-19 12:15:25',100,'perfmon','OnGetTableSchema','rest','','rest','OnGetTableSchema','',2,'47a76003c8f9f2d8c820f446e084ff39'),(146,'2019-11-19 12:15:26',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\OAuth\\Auth','onRestCheckAuth','',2,'70e923729089b8cba69bb3b4311da11e'),(147,'2019-11-19 12:15:26',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\APAuth\\Auth','onRestCheckAuth','',2,'3550e6c95772564101770e0c9cb54470'),(148,'2019-11-19 12:15:26',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\SessionAuth\\Auth','onRestCheckAuth','',2,'8e33ae5a47b59d21df7d26f916d19e38'),(149,'2019-11-19 12:15:40',100,'main','OnChangePermissions','search','','CSearch','OnChangeFilePermissions','',1,'1c37aedc2ec89f94624291d097fe7adf'),(150,'2019-11-19 12:15:40',100,'main','OnChangeFile','search','','CSearch','OnChangeFile','',1,'d51170fc3433fde7eab8edc1c2b933a0'),(151,'2019-11-19 12:15:40',100,'main','OnGroupDelete','search','','CSearch','OnGroupDelete','',1,'05382d7448b1ba259b89bf9e87e4eb44'),(152,'2019-11-19 12:15:40',100,'main','OnLangDelete','search','','CSearch','OnLangDelete','',1,'15ebda82514af5a966b3466cd26992a4'),(153,'2019-11-19 12:15:40',100,'main','OnAfterUserUpdate','search','','CSearchUser','OnAfterUserUpdate','',1,'9e0cea5039973193afc706ec8978d674'),(154,'2019-11-19 12:15:40',100,'main','OnUserDelete','search','','CSearchUser','DeleteByUserID','',1,'524a910f381ba144bf50caa152222ed6'),(155,'2019-11-19 12:15:40',100,'cluster','OnGetTableList','search','','search','OnGetTableList','',1,'a40ffd36df151e2c0294b5639e81d665'),(156,'2019-11-19 12:15:40',100,'perfmon','OnGetTableSchema','search','','search','OnGetTableSchema','',1,'9c8df2577e0cb80c68afa2030e193efb'),(157,'2019-11-19 12:15:41',90,'main','OnEpilog','search','','CSearchStatistic','OnEpilog','',1,'6b3591ad78ac2a3ce6ad411f0aff47fe'),(158,'2019-11-19 12:15:54',100,'main','OnPanelCreate','seo','','CSeoEventHandlers','SeoOnPanelCreate','',2,'79688b0b4a106b805d09e63ffe88f580'),(159,'2019-11-19 12:15:54',100,'fileman','OnIncludeHTMLEditorScript','seo','','CSeoEventHandlers','OnIncludeHTMLEditorScript','',2,'7995eac5813e40f6b3e82b146631397e'),(160,'2019-11-19 12:15:54',100,'fileman','OnBeforeHTMLEditorScriptRuns','seo','','CSeoEventHandlers','OnBeforeHTMLEditorScriptRuns','',2,'313b34609f1fa34d34cde1c2103c09ff'),(161,'2019-11-19 12:15:54',100,'iblock','OnAfterIBlockSectionAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addSection','',2,'c61de21b0b0873525fa5c39427324664'),(162,'2019-11-19 12:15:54',100,'iblock','OnAfterIBlockElementAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addElement','',2,'1b167ab85d6d744bba456e559546f13e'),(163,'2019-11-19 12:15:54',100,'iblock','OnBeforeIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteSection','',2,'148ce014df9dd9f99f17ebfc5d766e8a'),(164,'2019-11-19 12:15:54',100,'iblock','OnBeforeIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteElement','',2,'4b1e9896d9f0aa37a7039a321f25f9a5'),(165,'2019-11-19 12:15:55',100,'iblock','OnAfterIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteSection','',2,'b699c1c0d6665f9cffe7ff76ab108a24'),(166,'2019-11-19 12:15:55',100,'iblock','OnAfterIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteElement','',2,'ff3a36654015c53890f4cf2204b030c4'),(167,'2019-11-19 12:15:55',100,'iblock','OnBeforeIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateSection','',2,'aa5f8c360ed88eb5e2884c57b6f1f2f3'),(168,'2019-11-19 12:15:55',100,'iblock','OnBeforeIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateElement','',2,'a1022e0619263c0e91139fb3f9837085'),(169,'2019-11-19 12:15:55',100,'iblock','OnAfterIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateSection','',2,'27930cffcd40b84666d0a22e1a953c41'),(170,'2019-11-19 12:15:55',100,'iblock','OnAfterIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateElement','',2,'f0151e07363564774d45acba4100aebe'),(171,'2019-11-19 12:15:55',100,'forum','onAfterTopicAdd','seo','','\\Bitrix\\Seo\\SitemapForum','addTopic','',2,'d4d54756116942c9ee0bda9b31e9d0e7'),(172,'2019-11-19 12:15:55',100,'forum','onAfterTopicUpdate','seo','','\\Bitrix\\Seo\\SitemapForum','updateTopic','',2,'3e0a8569016a4c941f3eb4aa9fca6e8b'),(173,'2019-11-19 12:15:55',100,'forum','onAfterTopicDelete','seo','','\\Bitrix\\Seo\\SitemapForum','deleteTopic','',2,'7f4379c818231561b41589d3de41e36b'),(174,'2019-11-19 12:15:55',100,'main','OnAdminIBlockElementEdit','seo','','\\Bitrix\\Seo\\AdvTabEngine','eventHandler','',2,'c894d167ef03c35375b8eb8f2551a798'),(175,'2019-11-19 12:15:55',100,'main','OnBeforeProlog','seo','','\\Bitrix\\Seo\\AdvSession','checkSession','',2,'5fdf8dd9fd70719e442efcb589175bf0'),(176,'2019-11-19 12:15:55',100,'sale','OnOrderSave','seo','','\\Bitrix\\Seo\\AdvSession','onOrderSave','',2,'07d4ab0b1aa0aa130a0cbc06403f6eae'),(177,'2019-11-19 12:15:55',100,'sale','OnBasketOrder','seo','','\\Bitrix\\Seo\\AdvSession','onBasketOrder','',2,'cf6298b090e92e955b32c358c1d14b25'),(178,'2019-11-19 12:15:55',100,'sale','onSalePayOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSalePayOrder','',2,'745afed820778e33d5cd3e91cbd622f1'),(179,'2019-11-19 12:15:55',100,'sale','onSaleDeductOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeductOrder','',2,'12861bd5c6c27ffa2abe5cac90ea58d8'),(180,'2019-11-19 12:15:56',100,'sale','onSaleDeliveryOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeliveryOrder','',2,'ead8fb64fece572d1fabd3d6fd27af27'),(181,'2019-11-19 12:15:56',100,'sale','onSaleStatusOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleStatusOrder','',2,'b7b9ac4bbf458d433e1cf3835ff4cb6c'),(182,'2019-11-19 12:15:56',100,'conversion','OnSetDayContextAttributes','seo','','\\Bitrix\\Seo\\ConversionHandler','onSetDayContextAttributes','',2,'c19eb7659342fabc34b953f69e8b9eee'),(183,'2019-11-19 12:15:56',100,'conversion','OnGetAttributeTypes','seo','','\\Bitrix\\Seo\\ConversionHandler','onGetAttributeTypes','',2,'379294eefad289e474bf0c5ce2a281d8'),(184,'2019-11-19 12:15:56',100,'catalog','OnProductUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'0f4deda4d57adb4389d85a19e5bbcf2b'),(185,'2019-11-19 12:15:56',100,'catalog','OnProductSetAvailableUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'3d040ae51f0f6a4b2a08be0e6e1494d4'),(186,'2019-11-19 12:16:02',100,'main','OnUserDelete','socialservices','','CSocServAuthDB','OnUserDelete','',1,'1f5b8fc024dfdf83952d6c723466cdf5'),(187,'2019-11-19 12:16:02',100,'timeman','OnAfterTMReportDailyAdd','socialservices','','CSocServAuthDB','OnAfterTMReportDailyAdd','',1,'a16159f6a90f1b67cb9ec15b0c1bab3a'),(188,'2019-11-19 12:16:02',100,'timeman','OnAfterTMDayStart','socialservices','','CSocServAuthDB','OnAfterTMDayStart','',1,'9567feb38890d6581a3204dc5e65e8b6'),(189,'2019-11-19 12:16:02',100,'timeman','OnTimeManShow','socialservices','','CSocServEventHandlers','OnTimeManShow','',1,'b728f3cea11d374f7638c29f84e8e15e'),(190,'2019-11-19 12:16:02',100,'main','OnFindExternalUser','socialservices','','CSocServAuthDB','OnFindExternalUser','',1,'1ab251d15efc87c5b5cfe6396f5dec1b'),(191,'2019-11-19 12:16:02',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkOldUser','',1,'c3d7460e4ef694f5bc53b6a6ad902407'),(192,'2019-11-19 12:16:02',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkAbandonedUser','',1,'331f99f0b265544c33777c299eab16f6'),(193,'2019-11-19 12:16:06',100,'main','OnPanelCreate','translate','','CTranslateEventHandlers','TranslatOnPanelCreate','',1,'38070e5e7a0aa6ff4876ffc7f3feb94b'),(194,'2019-11-19 12:18:10',100,'main','OnBeforeProlog','main','/modules/main/install/wizard_sol/panel_button.php','CWizardSolPanel','ShowPanel','',1,'bbd7b8c1e518a0b3eae815eb91a95c11');
/*!40000 ALTER TABLE `b_module_to_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator`
--

DROP TABLE IF EXISTS `b_numerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator`
--

LOCK TABLES `b_numerator` WRITE;
/*!40000 ALTER TABLE `b_numerator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator_sequence`
--

DROP TABLE IF EXISTS `b_numerator_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT 0,
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMERATOR_ID`,`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator_sequence`
--

LOCK TABLES `b_numerator_sequence` WRITE;
/*!40000 ALTER TABLE `b_numerator_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_operation`
--

DROP TABLE IF EXISTS `b_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_operation`
--

LOCK TABLES `b_operation` WRITE;
/*!40000 ALTER TABLE `b_operation` DISABLE KEYS */;
INSERT INTO `b_operation` VALUES (1,'edit_php','main',NULL,'module'),(2,'view_own_profile','main',NULL,'module'),(3,'edit_own_profile','main',NULL,'module'),(4,'view_all_users','main',NULL,'module'),(5,'view_groups','main',NULL,'module'),(6,'view_tasks','main',NULL,'module'),(7,'view_other_settings','main',NULL,'module'),(8,'view_subordinate_users','main',NULL,'module'),(9,'edit_subordinate_users','main',NULL,'module'),(10,'edit_all_users','main',NULL,'module'),(11,'edit_groups','main',NULL,'module'),(12,'edit_tasks','main',NULL,'module'),(13,'edit_other_settings','main',NULL,'module'),(14,'cache_control','main',NULL,'module'),(15,'lpa_template_edit','main',NULL,'module'),(16,'view_event_log','main',NULL,'module'),(17,'edit_ratings','main',NULL,'module'),(18,'manage_short_uri','main',NULL,'module'),(19,'fm_view_permission','main',NULL,'file'),(20,'fm_view_file','main',NULL,'file'),(21,'fm_view_listing','main',NULL,'file'),(22,'fm_edit_existent_folder','main',NULL,'file'),(23,'fm_create_new_file','main',NULL,'file'),(24,'fm_edit_existent_file','main',NULL,'file'),(25,'fm_create_new_folder','main',NULL,'file'),(26,'fm_delete_file','main',NULL,'file'),(27,'fm_delete_folder','main',NULL,'file'),(28,'fm_edit_in_workflow','main',NULL,'file'),(29,'fm_rename_file','main',NULL,'file'),(30,'fm_rename_folder','main',NULL,'file'),(31,'fm_upload_file','main',NULL,'file'),(32,'fm_add_to_menu','main',NULL,'file'),(33,'fm_download_file','main',NULL,'file'),(34,'fm_lpa','main',NULL,'file'),(35,'fm_edit_permission','main',NULL,'file'),(36,'bitrixcloud_monitoring','bitrixcloud',NULL,'module'),(37,'bitrixcloud_backup','bitrixcloud',NULL,'module'),(38,'bitrixcloud_cdn','bitrixcloud',NULL,'module'),(39,'clouds_browse','clouds',NULL,'module'),(40,'clouds_upload','clouds',NULL,'module'),(41,'clouds_config','clouds',NULL,'module'),(42,'fileman_view_all_settings','fileman','','module'),(43,'fileman_edit_menu_types','fileman','','module'),(44,'fileman_add_element_to_menu','fileman','','module'),(45,'fileman_edit_menu_elements','fileman','','module'),(46,'fileman_edit_existent_files','fileman','','module'),(47,'fileman_edit_existent_folders','fileman','','module'),(48,'fileman_admin_files','fileman','','module'),(49,'fileman_admin_folders','fileman','','module'),(50,'fileman_view_permissions','fileman','','module'),(51,'fileman_edit_all_settings','fileman','','module'),(52,'fileman_upload_files','fileman','','module'),(53,'fileman_view_file_structure','fileman','','module'),(54,'fileman_install_control','fileman','','module'),(55,'medialib_view_collection','fileman','','medialib'),(56,'medialib_new_collection','fileman','','medialib'),(57,'medialib_edit_collection','fileman','','medialib'),(58,'medialib_del_collection','fileman','','medialib'),(59,'medialib_access','fileman','','medialib'),(60,'medialib_new_item','fileman','','medialib'),(61,'medialib_edit_item','fileman','','medialib'),(62,'medialib_del_item','fileman','','medialib'),(63,'sticker_view','fileman','','stickers'),(64,'sticker_edit','fileman','','stickers'),(65,'sticker_new','fileman','','stickers'),(66,'sticker_del','fileman','','stickers'),(67,'hl_element_read','highloadblock',NULL,'module'),(68,'hl_element_write','highloadblock',NULL,'module'),(69,'hl_element_delete','highloadblock',NULL,'module'),(70,'section_read','iblock',NULL,'iblock'),(71,'element_read','iblock',NULL,'iblock'),(72,'section_element_bind','iblock',NULL,'iblock'),(73,'iblock_admin_display','iblock',NULL,'iblock'),(74,'element_edit','iblock',NULL,'iblock'),(75,'element_edit_price','iblock',NULL,'iblock'),(76,'element_delete','iblock',NULL,'iblock'),(77,'element_bizproc_start','iblock',NULL,'iblock'),(78,'section_edit','iblock',NULL,'iblock'),(79,'section_delete','iblock',NULL,'iblock'),(80,'section_section_bind','iblock',NULL,'iblock'),(81,'element_edit_any_wf_status','iblock',NULL,'iblock'),(82,'iblock_edit','iblock',NULL,'iblock'),(83,'iblock_delete','iblock',NULL,'iblock'),(84,'iblock_rights_edit','iblock',NULL,'iblock'),(85,'iblock_export','iblock',NULL,'iblock'),(86,'section_rights_edit','iblock',NULL,'iblock'),(87,'element_rights_edit','iblock',NULL,'iblock'),(88,'seo_settings','seo','','module'),(89,'seo_tools','seo','','module');
/*!40000 ALTER TABLE `b_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option`
--

DROP TABLE IF EXISTS `b_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option`
--

LOCK TABLES `b_option` WRITE;
/*!40000 ALTER TABLE `b_option` DISABLE KEYS */;
INSERT INTO `b_option` VALUES ('fileman','~allowed_components','',NULL,NULL),('fileman','~script_files','php,php3,php4,php5,php6,phtml,pl,asp,aspx,cgi,exe,ico,shtm,shtml',NULL,NULL),('fileman','ar_entities','none',NULL,NULL),('fileman','archive_step_time','30',NULL,NULL),('fileman','default_edit','text',NULL,NULL),('fileman','default_edit_groups','',NULL,NULL),('fileman','different_set','Y',NULL,NULL),('fileman','editor_body_class','',NULL,NULL),('fileman','editor_body_id','',NULL,NULL),('fileman','google_map_api_key','',NULL,NULL),('fileman','GROUP_DEFAULT_RIGHT','D',NULL,NULL),('fileman','GROUP_DEFAULT_TASK','18',NULL,NULL),('fileman','hide_physical_struc','',NULL,NULL),('fileman','log_menu','Y',NULL,NULL),('fileman','log_page','Y',NULL,NULL),('fileman','ml_max_height','1024',NULL,NULL),('fileman','ml_max_width','1024',NULL,NULL),('fileman','ml_media_available_ext','jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt,aac',NULL,NULL),('fileman','ml_media_extentions','jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt',NULL,NULL),('fileman','ml_thumb_height','105',NULL,NULL),('fileman','ml_thumb_width','140',NULL,NULL),('fileman','ml_use_default','1',NULL,NULL),('fileman','replace_new_lines','Y',NULL,NULL),('fileman','search_mask','*.php',NULL,NULL),('fileman','search_max_open_file_size','1024',NULL,NULL),('fileman','search_max_res_count','',NULL,NULL),('fileman','search_time_step','5',NULL,NULL),('fileman','show_inc_icons','N',NULL,NULL),('fileman','stickers_use_hotkeys','N',NULL,NULL),('fileman','use_code_editor','Y',NULL,NULL),('fileman','use_custom_spell','N',NULL,NULL),('fileman','use_editor_3','Y',NULL,NULL),('fileman','use_medialib','Y',NULL,NULL),('fileman','use_pspell','N',NULL,NULL),('fileman','use_separeted_dics','N',NULL,NULL),('fileman','use_translit','1',NULL,NULL),('fileman','use_translit_google','1',NULL,NULL),('fileman','user_dics_path','/bitrix/modules/fileman/u_dics',NULL,NULL),('fileman','yandex_map_api_key','',NULL,NULL),('iblock','combined_list_mode','Y',NULL,NULL),('iblock','custom_edit_form_use_property_id','Y',NULL,NULL),('iblock','detail_image_size','200',NULL,NULL),('iblock','event_log_iblock','Y',NULL,NULL),('iblock','iblock_menu_max_sections','50',NULL,NULL),('iblock','list_full_date_edit','N',NULL,NULL),('iblock','list_image_size','50',NULL,NULL),('iblock','num_catalog_levels','3',NULL,NULL),('iblock','path2rss','/upload/',NULL,NULL),('iblock','property_features_enabled','Y',NULL,NULL),('iblock','show_xml_id','N',NULL,NULL),('iblock','use_htmledit','Y',NULL,NULL),('main','~crypto_b_user_phone_auth','a:1:{s:10:\"OTP_SECRET\";b:1;}',NULL,NULL),('main','~ft_b_user_index','a:3:{s:19:\"SEARCH_USER_CONTENT\";b:1;s:25:\"SEARCH_DEPARTMENT_CONTENT\";b:1;s:20:\"SEARCH_ADMIN_CONTENT\";b:1;}',NULL,NULL),('main','~ft_b_user_index_selector','a:1:{s:23:\"SEARCH_SELECTOR_CONTENT\";b:1;}',NULL,NULL),('main','~new_license11_sign','Y',NULL,NULL),('main','admin_lid','ru',NULL,NULL),('main','admin_passwordh','FVkQemYUBwYtCUVcDhcOCgsTAQ==',NULL,NULL),('main','component_cache_on','N',NULL,NULL),('main','component_managed_cache_on','N',NULL,NULL),('main','distributive6','Y',NULL,NULL),('main','dump_archive_size_limit','104857600',NULL,NULL),('main','dump_base','1',NULL,NULL),('main','dump_base_skip_log','0',NULL,NULL),('main','dump_base_skip_search','0',NULL,NULL),('main','dump_base_skip_stat','0',NULL,NULL),('main','dump_bucket_id','0',NULL,NULL),('main','dump_encrypt','0',NULL,NULL),('main','dump_file_kernel','1',NULL,NULL),('main','dump_file_public','1',NULL,NULL),('main','dump_integrity_check','1',NULL,NULL),('main','dump_max_exec_time','20',NULL,NULL),('main','dump_max_exec_time_sleep','1',NULL,NULL),('main','dump_max_file_size','0',NULL,NULL),('main','dump_site_id','a:0:{}',NULL,NULL),('main','dump_use_compression','1',NULL,NULL),('main','email_from','admin@admin.admin',NULL,NULL),('main','GROUP_DEFAULT_TASK','1',NULL,NULL),('main','last_files_count','37520',NULL,NULL),('main','optimize_css_files','Y',NULL,NULL),('main','optimize_js_files','Y',NULL,NULL),('main','PARAM_MAX_SITES','2',NULL,NULL),('main','PARAM_MAX_USERS','0',NULL,NULL),('main','rating_assign_authority_group','4',NULL,NULL),('main','rating_assign_authority_group_add','2',NULL,NULL),('main','rating_assign_authority_group_delete','2',NULL,NULL),('main','rating_assign_rating_group','3',NULL,NULL),('main','rating_assign_rating_group_add','1',NULL,NULL),('main','rating_assign_rating_group_delete','1',NULL,NULL),('main','rating_assign_type','auto',NULL,NULL),('main','rating_authority_rating','2',NULL,NULL),('main','rating_authority_weight_formula','Y',NULL,NULL),('main','rating_community_authority','30',NULL,NULL),('main','rating_community_last_visit','90',NULL,NULL),('main','rating_community_size','1',NULL,NULL),('main','rating_count_vote','10',NULL,NULL),('main','rating_normalization','10',NULL,NULL),('main','rating_normalization_type','auto',NULL,NULL),('main','rating_self_vote','Y',NULL,NULL),('main','rating_start_authority','3',NULL,NULL),('main','rating_text_like_d','Это нравится',NULL,NULL),('main','rating_text_like_n','Не нравится',NULL,NULL),('main','rating_text_like_y','Нравится',NULL,NULL),('main','rating_vote_show','Y',NULL,NULL),('main','rating_vote_template','like',NULL,NULL),('main','rating_vote_type','like',NULL,NULL),('main','rating_vote_weight','10',NULL,NULL),('main','server_uniq_id','33b55973ba02e359d6087d71d93a37da',NULL,NULL),('main','signer_default_key','84efce087710325599263f448d340545a2b2004f25701a76f36bae7d4f586c0f68b14b0f7d6e7c01517df4b409735b1fd9fa4b0f716ce60eb5f22315abb271cf',NULL,NULL),('main','site_checker_success',NULL,NULL,NULL),('main','skip_mask','0',NULL,NULL),('main','skip_symlinks','0',NULL,NULL),('main','update_site','www.bitrixsoft.com',NULL,NULL),('main','update_site_ns','Y',NULL,NULL),('main','vendor','1c_bitrix',NULL,NULL),('main','wizard_firstcorp_services_s1','Y',NULL,NULL),('messageservice','clean_up_period','14',NULL,NULL),('rest','entity_iblock_type','rest_entity',NULL,NULL),('rest','server_path','/rest',NULL,NULL),('search','dbnode_id','N',NULL,NULL),('search','dbnode_status','ok',NULL,NULL),('search','suggest_save_days','250',NULL,NULL),('search','use_social_rating','Y',NULL,NULL),('search','use_tf_cache','Y',NULL,NULL),('search','use_word_distance','Y',NULL,NULL),('search','version','v2.0',NULL,NULL),('socialnetwork','allow_tooltip','N',NULL,NULL),('socialservices','auth_services','a:12:{s:9:\"VKontakte\";s:1:\"N\";s:8:\"MyMailRu\";s:1:\"N\";s:7:\"Twitter\";s:1:\"N\";s:8:\"Facebook\";s:1:\"N\";s:11:\"Livejournal\";s:1:\"Y\";s:12:\"YandexOpenID\";s:1:\"Y\";s:7:\"Rambler\";s:1:\"Y\";s:12:\"MailRuOpenID\";s:1:\"Y\";s:12:\"Liveinternet\";s:1:\"Y\";s:7:\"Blogger\";s:1:\"Y\";s:6:\"OpenID\";s:1:\"Y\";s:6:\"LiveID\";s:1:\"N\";}',NULL,NULL);
/*!40000 ALTER TABLE `b_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option_site`
--

DROP TABLE IF EXISTS `b_option_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option_site` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option_site`
--

LOCK TABLES `b_option_site` WRITE;
/*!40000 ALTER TABLE `b_option_site` DISABLE KEYS */;
INSERT INTO `b_option_site` VALUES ('fileman','menutypes','s1','a:1:{s:4:\\\"main\\\";s:23:\\\"Главное меню\\\";}'),('fileman','num_menu_param','s1','2'),('fileman','propstypes','s1','a:4:{s:11:\\\"description\\\";s:33:\\\"Описание страницы\\\";s:8:\\\"keywords\\\";s:27:\\\"Ключевые слова\\\";s:5:\\\"title\\\";s:44:\\\"Заголовок окна браузера\\\";s:14:\\\"keywords_inner\\\";s:35:\\\"Продвигаемые слова\\\";}'),('main','wizard_corp_services_theme_id','s1','green'),('main','wizard_site_logo','s1','0'),('main','wizard_solution','s1','corp_services'),('main','wizard_template_id','s1','corp_services');
/*!40000 ALTER TABLE `b_option_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cache`
--

DROP TABLE IF EXISTS `b_perf_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BASE_DIR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `INIT_DIR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_PATH` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cache`
--

LOCK TABLES `b_perf_cache` WRITE;
/*!40000 ALTER TABLE `b_perf_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cluster`
--

DROP TABLE IF EXISTS `b_perf_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cluster`
--

LOCK TABLES `b_perf_cluster` WRITE;
/*!40000 ALTER TABLE `b_perf_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_component`
--

DROP TABLE IF EXISTS `b_perf_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_component`
--

LOCK TABLES `b_perf_component` WRITE;
/*!40000 ALTER TABLE `b_perf_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_error`
--

DROP TABLE IF EXISTS `b_perf_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERRFILE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERRLINE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_error`
--

LOCK TABLES `b_perf_error` WRITE;
/*!40000 ALTER TABLE `b_perf_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_history`
--

DROP TABLE IF EXISTS `b_perf_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_history`
--

LOCK TABLES `b_perf_history` WRITE;
/*!40000 ALTER TABLE `b_perf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_hit`
--

DROP TABLE IF EXISTS `b_perf_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_hit`
--

LOCK TABLES `b_perf_hit` WRITE;
/*!40000 ALTER TABLE `b_perf_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_ban`
--

DROP TABLE IF EXISTS `b_perf_index_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_ban`
--

LOCK TABLES `b_perf_index_ban` WRITE;
/*!40000 ALTER TABLE `b_perf_index_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_complete`
--

DROP TABLE IF EXISTS `b_perf_index_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_complete`
--

LOCK TABLES `b_perf_index_complete` WRITE;
/*!40000 ALTER TABLE `b_perf_index_complete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_complete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest`
--

DROP TABLE IF EXISTS `b_perf_index_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest`
--

LOCK TABLES `b_perf_index_suggest` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest_sql`
--

DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL,
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest_sql`
--

LOCK TABLES `b_perf_index_suggest_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql`
--

DROP TABLE IF EXISTS `b_perf_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql`
--

LOCK TABLES `b_perf_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql_backtrace`
--

DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql_backtrace`
--

LOCK TABLES `b_perf_sql_backtrace` WRITE;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_column_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_column_stat`
--

LOCK TABLES `b_perf_tab_column_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_stat`
--

LOCK TABLES `b_perf_tab_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_test`
--

DROP TABLE IF EXISTS `b_perf_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_test`
--

LOCK TABLES `b_perf_test` WRITE;
/*!40000 ALTER TABLE `b_perf_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating`
--

DROP TABLE IF EXISTS `b_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating`
--

LOCK TABLES `b_rating` WRITE;
/*!40000 ALTER TABLE `b_rating` DISABLE KEYS */;
INSERT INTO `b_rating` VALUES (1,'N','Рейтинг','USER','SUM','2019-11-19 15:10:00',NULL,NULL,'Y','N','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),(2,'N','Авторитет','USER','SUM','2019-11-19 15:10:00',NULL,NULL,'Y','Y','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:1:\"0\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:16:\"TODAY_TOPIC_COEF\";s:2:\"20\";s:15:\"WEEK_TOPIC_COEF\";s:2:\"10\";s:16:\"MONTH_TOPIC_COEF\";s:1:\"5\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}');
/*!40000 ALTER TABLE `b_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component`
--

DROP TABLE IF EXISTS `b_rating_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component`
--

LOCK TABLES `b_rating_component` WRITE;
/*!40000 ALTER TABLE `b_rating_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component_results`
--

DROP TABLE IF EXISTS `b_rating_component_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component_results`
--

LOCK TABLES `b_rating_component_results` WRITE;
/*!40000 ALTER TABLE `b_rating_component_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_prepare`
--

DROP TABLE IF EXISTS `b_rating_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_prepare`
--

LOCK TABLES `b_rating_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_results`
--

DROP TABLE IF EXISTS `b_rating_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT 0,
  `PREVIOUS_POSITION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_results`
--

LOCK TABLES `b_rating_results` WRITE;
/*!40000 ALTER TABLE `b_rating_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule`
--

DROP TABLE IF EXISTS `b_rating_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule`
--

LOCK TABLES `b_rating_rule` WRITE;
/*!40000 ALTER TABLE `b_rating_rule` DISABLE KEYS */;
INSERT INTO `b_rating_rule` VALUES (1,'N','Добавление в группу пользователей, имеющих право голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2019-11-19 15:10:00','2019-11-19 15:10:00',NULL),(2,'N','Удаление из группы пользователей, не имеющих права голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2019-11-19 15:10:00','2019-11-19 15:10:00',NULL),(3,'N','Добавление в группу пользователей, имеющих право голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2019-11-19 15:10:00','2019-11-19 15:10:00',NULL),(4,'N','Удаление из группы пользователей, не имеющих права голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2019-11-19 15:10:00','2019-11-19 15:10:00',NULL),(5,'Y','Автоматическое голосование за авторитет пользователя','USER','VOTE',NULL,'CRatingRulesMain','voteCheck','a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1;}}','empty','a:0:{}','N','empty','empty','N','empty ','empty','2019-11-19 15:10:01','2019-11-19 15:10:01',NULL);
/*!40000 ALTER TABLE `b_rating_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule_vetting`
--

DROP TABLE IF EXISTS `b_rating_rule_vetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule_vetting`
--

LOCK TABLES `b_rating_rule_vetting` WRITE;
/*!40000 ALTER TABLE `b_rating_rule_vetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_rule_vetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_user`
--

DROP TABLE IF EXISTS `b_rating_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT 0.0000,
  `VOTE_WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `VOTE_COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_user`
--

LOCK TABLES `b_rating_user` WRITE;
/*!40000 ALTER TABLE `b_rating_user` DISABLE KEYS */;
INSERT INTO `b_rating_user` VALUES (1,2,1,3.0000,30.0000,13);
/*!40000 ALTER TABLE `b_rating_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote`
--

DROP TABLE IF EXISTS `b_rating_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote`
--

LOCK TABLES `b_rating_vote` WRITE;
/*!40000 ALTER TABLE `b_rating_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote_group`
--

DROP TABLE IF EXISTS `b_rating_vote_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote_group`
--

LOCK TABLES `b_rating_vote_group` WRITE;
/*!40000 ALTER TABLE `b_rating_vote_group` DISABLE KEYS */;
INSERT INTO `b_rating_vote_group` VALUES (5,1,'A'),(1,1,'R'),(3,1,'R'),(2,3,'R'),(4,3,'R'),(6,4,'A');
/*!40000 ALTER TABLE `b_rating_vote_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting`
--

DROP TABLE IF EXISTS `b_rating_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting`
--

LOCK TABLES `b_rating_voting` WRITE;
/*!40000 ALTER TABLE `b_rating_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_prepare`
--

DROP TABLE IF EXISTS `b_rating_voting_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_prepare`
--

LOCK TABLES `b_rating_voting_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_reaction`
--

DROP TABLE IF EXISTS `b_rating_voting_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_reaction`
--

LOCK TABLES `b_rating_voting_reaction` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_weight`
--

DROP TABLE IF EXISTS `b_rating_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_weight`
--

LOCK TABLES `b_rating_weight` WRITE;
/*!40000 ALTER TABLE `b_rating_weight` DISABLE KEYS */;
INSERT INTO `b_rating_weight` VALUES (1,-1000000.0000,1000000.0000,1.0000,10);
/*!40000 ALTER TABLE `b_rating_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap`
--

DROP TABLE IF EXISTS `b_rest_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap`
--

LOCK TABLES `b_rest_ap` WRITE;
/*!40000 ALTER TABLE `b_rest_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap_permission`
--

DROP TABLE IF EXISTS `b_rest_ap_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap_permission`
--

LOCK TABLES `b_rest_ap_permission` WRITE;
/*!40000 ALTER TABLE `b_rest_ap_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app`
--

DROP TABLE IF EXISTS `b_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app`
--

LOCK TABLES `b_rest_app` WRITE;
/*!40000 ALTER TABLE `b_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_lang`
--

DROP TABLE IF EXISTS `b_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_lang`
--

LOCK TABLES `b_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_log`
--

DROP TABLE IF EXISTS `b_rest_app_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp(),
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_app_log1` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_log`
--

LOCK TABLES `b_rest_app_log` WRITE;
/*!40000 ALTER TABLE `b_rest_app_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event`
--

DROP TABLE IF EXISTS `b_rest_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT 0,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  KEY `ix_b_rest_event_app_id` (`APP_ID`),
  KEY `ix_b_rest_event_event_name` (`EVENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event`
--

LOCK TABLES `b_rest_event` WRITE;
/*!40000 ALTER TABLE `b_rest_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event_offline`
--

DROP TABLE IF EXISTS `b_rest_event_offline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event_offline`
--

LOCK TABLES `b_rest_event_offline` WRITE;
/*!40000 ALTER TABLE `b_rest_event_offline` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event_offline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_log`
--

DROP TABLE IF EXISTS `b_rest_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp(),
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_log`
--

LOCK TABLES `b_rest_log` WRITE;
/*!40000 ALTER TABLE `b_rest_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_placement`
--

DROP TABLE IF EXISTS `b_rest_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `GROUP_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_placement`
--

LOCK TABLES `b_rest_placement` WRITE;
/*!40000 ALTER TABLE `b_rest_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat`
--

DROP TABLE IF EXISTS `b_rest_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT 0,
  `HOUR_1` int(11) NOT NULL DEFAULT 0,
  `HOUR_2` int(11) NOT NULL DEFAULT 0,
  `HOUR_3` int(11) NOT NULL DEFAULT 0,
  `HOUR_4` int(11) NOT NULL DEFAULT 0,
  `HOUR_5` int(11) NOT NULL DEFAULT 0,
  `HOUR_6` int(11) NOT NULL DEFAULT 0,
  `HOUR_7` int(11) NOT NULL DEFAULT 0,
  `HOUR_8` int(11) NOT NULL DEFAULT 0,
  `HOUR_9` int(11) NOT NULL DEFAULT 0,
  `HOUR_10` int(11) NOT NULL DEFAULT 0,
  `HOUR_11` int(11) NOT NULL DEFAULT 0,
  `HOUR_12` int(11) NOT NULL DEFAULT 0,
  `HOUR_13` int(11) NOT NULL DEFAULT 0,
  `HOUR_14` int(11) NOT NULL DEFAULT 0,
  `HOUR_15` int(11) NOT NULL DEFAULT 0,
  `HOUR_16` int(11) NOT NULL DEFAULT 0,
  `HOUR_17` int(11) NOT NULL DEFAULT 0,
  `HOUR_18` int(11) NOT NULL DEFAULT 0,
  `HOUR_19` int(11) NOT NULL DEFAULT 0,
  `HOUR_20` int(11) NOT NULL DEFAULT 0,
  `HOUR_21` int(11) NOT NULL DEFAULT 0,
  `HOUR_22` int(11) NOT NULL DEFAULT 0,
  `HOUR_23` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat`
--

LOCK TABLES `b_rest_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_method`
--

DROP TABLE IF EXISTS `b_rest_stat_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_stat_method` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_method`
--

LOCK TABLES `b_rest_stat_method` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content`
--

DROP TABLE IF EXISTS `b_search_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT 0,
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BODY` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content`
--

LOCK TABLES `b_search_content` WRITE;
/*!40000 ALTER TABLE `b_search_content` DISABLE KEYS */;
INSERT INTO `b_search_content` VALUES (1,'2019-11-19 13:19:11','main','s1|/about/history.php',0,NULL,NULL,NULL,'/about/history.php','История компании','ЗАО «Банк» основан 18 января 1993 года.\rДо 1996 года Банк развивался как небольшой коммерческий банк.\r1996 год. Открывается первый дополнительный офис по работе с населением. Банк приступает к активному развитию филиальной сети. \r1997 год. Банк начинает выпуск и обслуживание пластиковых карт, использование которых позволяет вынести финансовый сервис за пределы привычных операционных залов банка и филиалов на места фактического востребования услуг.\rЯнварь 1998 года. Банк получает лицензию профессионального участника рынка ценных бумаг. По результатам анализа бухгалтерской и финансовой отчётности Банк относится по критериям ЦБ РФ к первой категории – финансово стабильные банки.\r1999 год. Банк, успешно преодолев кризис, продолжает активное развитие филиальной сети. В этом же году Банк приступает к реализации программы ипотечного кредитования муниципальных служащих.\r2004год. Банк приступает к выпуску карт платёжной системы Visa International. В течение 2004 года банк представил клиентам ряд высокотехнологичных продуктов. В области кредитования физических лиц – систему Интернет-кредитования на приобретение автомобилей, обучение в вузе, отдых и туризм. \r2006 год. Десять лет с начала работы Банка в области предоставления финансовых услуг населению. За это время в банке взяли кредит более 50 000 человек, более 200 000 человек доверили свои деньги, сделав вклады, более 50 000 человек стали держателями пластиковых карт Банка.\r2007 год. Банк получает Главную Всероссийскую Премию «Российский Национальный Олимп» в числе лучших предприятий малого и среднего бизнеса России.\r2008 год. По результатам Международного конкурса \"Золотая медаль \"Европейское качество\", проведенного Международной академией Качества и Маркетинга\" и Ассоциацией качественной продукции Банк становится Лауреатом международной награды \"Золотая Медаль \"Европейское качество\".\r2009 год. Переход на новую автоматизированную банковскую систему iBank System Российской компании «МКТ».\r2010 год. По данным финансовой отчётности на 1 января 2010 года Банк завершает 2009 год с положительными результатами. Размер прибыли за 2009 год составляет 95 149 тыс. рублей. Положительную динамику роста показывают почти все финансовые показатели.Уставный капитал банка увеличивается на 20 % и на данный момент составляет 415 240 тысяч рублей.Размер собственного капитала банка составляет 1 535 522 тысячи рублей, что на 31 % больше чем в прошлом году. \rЧасть дохода за 2009 год Банк направляет на формирование резерва на возможные потери по ссудам, ссудной и приравненной к ней задолженности. Объём такого резерва по состоянию на 1 февраля 2010 года составляет порядка 650 млн. рублей.\rСвое дальнейшее развитие Банк связывает с повышением качества и наращиванием объемов услуг, собственного капитала, внедрением новейших технологий, совершенствованием форм обслуживания клиентов и развитием новых перспективных направлений в работе.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(2,'2019-11-20 18:14:45','main','s1|/about/index.php',0,NULL,NULL,NULL,'/about/index.php','About','Страница About','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(3,'2019-11-19 13:19:11','main','s1|/about/management/index.php',0,NULL,NULL,NULL,'/about/management/index.php','Руководство','Коллегиальный исполнительный орган правления Банка\rДолжность\rОбразование\rПлешков Юрий Григорьевич \rНачальник экономического управления \rВ 1996 году окончил Иркутскую государственную экономическую академию по специальности &laquo;Финансы и кредит&raquo; \rСмирнов Вячеслав Евгеньевич \rЗаместитель Председателя Правления \rВ 1991 году окончил Университет Дружбы народов (Москва). В 2000 году получил степень MBA в бизнес-школе INSEAD. \rКорнева Ирина Станиславовна \rЗаместитель Председателя Правления \rВ 1997 году окончила Московскую государственную юридическую академию по специальности «Банковское дело» \rИгнатьев Вадим Михайлович \rПервый заместитель Председателя Правления \rВ 1988 году окончил Иркутскую государственную экономическую академию по специальности «Экономика и управление производством» \rВолошин Станислав Семенович \rПредседатель Правления \rВ 1986 году окончил Свердловский юридический институт по специальности «Правоведение» и Московский индустриальный институт по специальности «Экономика и управление на предприятии» \rСписок членов Совета директоров банка\rДолжность\rОбразование\rМихайлова Татьяна Васильевна \rДиректор по финансам \rВ 1996 году окончила Российскую экономическую академию им. Г.В. Плеханова по специальности «банковское дело». \rЛях Евгений Викторович \rДиректор по обеспечению банковской деятельности \rВ 1993 году окончил Российскую экономическую академию им. Плеханова, по специальности МВА «стратегический менеджмент». \rКондрусев Роман Александрович \rДиректор казначейства \rВ 1993 году окончил Кемеровский государственный университет по специальности «Правоведение» \rХрамов Анатолий Фёдорович \rДиректор по работе с персоналом \rВ 1996 году окончил Государственный университет управления по специализации «Управление персоналом». В 2002 прошел программу повышения квалификации «Современные технологии управления человеческими ресурсами» \rЖуравлева Ольга Николаевна \rГлавный бухгалтер \rВ 1985 году окончила Санкт-петербургский институт народного хозяйства по специальности «Бухгалтерский учет» \rКалинин Андрей Геннадьевич \rДиректор департамента корпоративного бизнеса \rВ 1998 году закончил Московский государственный институт международных отношений, в 2002 &ndash; Школу Менеджмента Университета Антверпена (UAMS) по специальности MBA.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(4,'2019-11-19 13:19:11','main','s1|/about/mission.php',0,NULL,NULL,NULL,'/about/mission.php','Миссия','Миссия Банка - предоставлять каждому клиенту максимально возможный набор банковских услуг высокого качества и надежности,следуя\rмировым стандартам и принципам корпоративной этики. Наш Банк - это современный высокотехнологичный банк,сочетающий\rв себе новейшие технологии оказания услуг и лучшие традиции банковского сообщества и российского предпринимательства.\rИндивидуальный подход\rНаша цель — предоставление каждому клиенту полного комплекса современных банковских продуктов и услуг с использованием последних достижений и инноваций в сфере финансовых технологий. Индивидуальный подход к ситуации и проблематике каждого клиента и философия партнерства - основы взаимодействия с нашими клиентами.\rУниверсальность\rБанк обеспечивает своим клиентам — частным лицам, крупнейшим отраслевым компаниям, предприятиям среднего и малого бизнеса, государственным структурам — широкий спектр услуг. Чтобы максимально полно обеспечить потребности клиентов, мы активно развиваем филиальную сеть в России и за ее пределами. Это позволяет нашим клиентам всегда и везде получать современные банковские услуги на уровне мировых стандартов.\rБанк — надежный партнер при реализации крупных социально-экономических проектов России и является одним из лидеров на рынке инвестиционного обеспечения региональных программ.\rПартнерство и помощь в развитии бизнеса\rВ своей деятельности мы опираемся на высочайшие стандарты предоставления финансовых услуг и тщательный анализ рынка.\rПредлагая адресные решения и соблюдая конфиденциальность взаимоотношений с партнерами, Банк проявляет гибкий подход к запросам клиентов, как розничных, так и корпоративных. Внедряя передовые технологии и инновационные решения, Банк гарантирует клиентам высокое качество обслуживания и стабильный доход.\rМы честны и открыты по отношению ко всем нашим партнерам и стремимся быть примером надежности и эффективности для всех, кто с нами сотрудничает.\rСоциальная ответственность\rБанк ориентирован на поддержку социально-экономического развития клиентов. Мы вносим вклад в повышение благосостояния общества, предоставляя нашим клиентам первоклассные экономические возможности, а также реализуя экологические программы, образовательные и культурные проекты. Банк оказывает благотворительную помощь социально незащищенным слоям общества, учреждениям медицины, образования и культуры, спортивным и религиозным организациям в регионах России. \rНаш Банк — это банк, работающий на благо общества, cтраны и каждого ее жителя.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(5,'2019-11-19 13:19:11','main','s1|/about/vacancies.php',0,NULL,NULL,NULL,'/about/vacancies.php','Вакансии','','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(6,'2019-11-19 13:19:11','main','s1|/auth.php',0,NULL,NULL,NULL,'/auth.php','Авторизация','Вы зарегистрированы и успешно авторизовались.\rИспользуйте административную панель в верхней части экрана для быстрого доступа к функциям управления структурой и информационным наполнением сайта. Набор кнопок верхней панели отличается для различных разделов сайта. Так отдельные наборы действий предусмотрены для управления статическим содержимым страниц, динамическими публикациями (новостями, каталогом, фотогалереей) и т.п.\rВернуться на главную страницу','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(7,'2019-11-19 13:19:11','main','s1|/contacts/feedback.php',0,NULL,NULL,NULL,'/contacts/feedback.php','Задать вопрос','','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(8,'2019-11-19 13:19:11','main','s1|/contacts/index.php',0,NULL,NULL,NULL,'/contacts/index.php','Контактная информация','Обратитесь к нашим специалистам и получите профессиональную консультацию по услугам нашего банка.\rВы можете обратиться к нам по телефону, по электронной почте или договориться о встрече в нашем офисе. Будем рады помочь вам и ответить на все ваши вопросы. \rТелефоны\rТелефон/факс: \n(495) 212-85-06\rТелефоны: \n(495) 212-85-07\r(495) 212-85-08\rНаш офис в Москве','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(9,'2019-11-19 13:19:11','main','s1|/contacts/requisites.php',0,NULL,NULL,NULL,'/contacts/requisites.php','Наши реквизиты','Наименование Банка\rЗакрытое акционерное общество \"Название банка\"\rСокращенное название\rЗАО \"Название банка\"\rПолное наименование на английском языке\r\"The Name of Bank\"\rОсновной государственный регистрационный номер\r152073950937987\rTelex\r911156 IRS RU\rS.W.I.F.T.\rIISARUMM\rSPRINT\rRU.BANK/BITEX\rЮридический адрес: \r175089, Россия, г. Москва, ул. Большая Дмитровка, д. 15, стр. 1\rКор/счет: \r30102810000000000569\rИНН:\r7860249880\rБИК:\r044591488\rОКПО:\r11806935\rОКОНХ:\r98122\rКПП:\r775021017\rПрочая информация\rБанковский идентификационный код: 0575249000\rПочтовый адрес: 115035, Россия, г. Москва, ул. Балчуг, д. 2\rТелефон: (495) 960-10-12\rФакс: (495) 240-38-12\rE-mail: \rRusBk@mail.rusbank.ru','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(10,'2019-11-19 13:19:11','main','s1|/news/index.php',0,NULL,NULL,NULL,'/news/index.php','Новости компании','','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(11,'2019-11-19 13:19:11','main','s1|/search/index.php',0,NULL,NULL,NULL,'/search/index.php','Поиск','','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(12,'2019-11-19 13:19:11','main','s1|/search/map.php',0,NULL,NULL,NULL,'/search/map.php','Карта сайта','','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(13,'2019-11-19 13:19:11','main','s1|/services/corp/ibank.php',0,NULL,NULL,NULL,'/services/corp/ibank.php','Интернет-банкинг','\"Интернет-Банк\" — это полнофункциональная, удобная и безопасная система дистанционного банковского обслуживания, с ее помощью вы можете в полном объеме управлять банковскими счетами в режиме реального времени. Понятный для клиента интерфейс позволяет не тратить время на обучение работе с Системой. Система снабжена внутренними подсказками.\r\"Интернет-Банк\" позволяет:\rчерез сайт Банка в Интернете получить доступ к Вашим банковским счетам практически с любого компьютера в любой точке земного шара, где есть доступ в Интернет \rвводить, редактировать и печатать платежные документы \rподписывать каждый платежный документ персонифицированной электронной-цифровой подписью \rнаправлять документы в Банк на исполнение \r«визировать» направляемые в Банк платежные документы уполномоченным лицом \rполучать выписки со всеми приложениями по счетам за определенный период времени \rосуществлять покупку/продажу иностранной валюты, конвертацию валют в режиме on-line по текущему рыночному курсу \rрезервировать на счете временно свободные денежные средства и получать дополнительный доход в виде начисленных процентов \rотслеживать текущее состояние счетов\rполучать актуальную информацию о платежах контрагентов из других банков, которые зачисляются на счет Клиента в момент поступления в Банк \rнаправлять в Банк бухгалтерскую отчетность в электронном виде \rконтролировать состояние ссудных счетов, погашение и уплату процентов \rПодключение к Системе, в том числе генерация ключей для формирования электронно-цифровой подписи, бесплатно. Абонентская плата за обслуживание не взимается.\rТехнические требования\rДля полноценной работы с Системой необходим компьютер с ОС Windows ,не ниже Windows 2000; Программа просмотра Интернет-страниц Internet Explorer версии не ниже 6.0; Приложение Java Runtime Environment (JRE) Version 1.5.0','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(14,'2019-11-19 13:19:11','main','s1|/services/corp/incass.php',0,NULL,NULL,NULL,'/services/corp/incass.php','Инкассация','Инкассация\r– доставка ценностей и денежных средств.\rБанк предлагает воспользоваться услугами службы инкассации. Служба инкассации Банка обеспечит:\rинкассацию наличных денежных средств, доставку их на специально оборудованном транспорте в Банк, по согласованному с Клиентом, графику работы;\rсопровождение ценностей и денежных средств Клиента по маршруту, указанному Клиентом; \rдоставку наличных денежных средств Клиенту; \rдоставку Клиенту разменной монеты.\rУслуги предоставляются как собственной службой инкассации, так и через другие специализированные организации.\rНеобходимая документация:\rДоговор на сбор (инкассацию) денежной выручки и доставку разменной монеты;\rЗаявка на инкассацию;\rПредварительная заявка на оказание услуг по доставке денежной наличности;\rДоговор на оказание услуг по доставке наличных денежных средств.\rОбъем инкассируемых денежных средств\rТарифы по ставке процента от объема инкассации\rТарифы от количества выездов\rТарифы с фиксированной стоимостью\rдо 0,5 млн. руб.\r0,45%\rот 120 руб/заезд\rНе менее 2500 руб. в месяц\rот 0,5 до 1,0 млн. руб.\r0,4 - 0,35%\rот 140 руб/заезд\rНе менее 3500 руб. в месяц\rот 1,0 до 1,5 млн. руб.\r0,35 -0,3%\rот 160 руб/заезд\rНе менее 4500 руб. в месяц\rот 1,5 до 2,0 млн. руб.\r0,3 -0,25%\rот 180 руб/заезд\rНе менее 5000 руб. в месяц\rот 2,0 млн до 3,0 млн. руб.\r0,25 - 0,2 %\rот 200 руб/заезд\rНе менее 6000 руб. в месяц\rот 4,0 млн. до 6 млн. руб.\r0,2 -0,15%\rот 220 руб/заезд\rНе менее 7000 руб. в месяц\rот 6,0 млн. до 10 млн. руб.\r0,15 -0,1 %\rот 240 руб/заезд\rНе менее 8000 руб. в месяц\rсвыше 10 млн. руб.\r0,1 - 0,05%\rот 260 руб/заезд\rНе менее 9000 руб. в месяц\rДругие условия\rИнкассация 5-10 торговых точек клиента\rплюс 5 % от тарифной ставки за каждую последующую точку\rИнкассация свыше 10 торговых точек клиента\rплюс 10 % от тарифной ставки за каждую последующую точку\rВремя инкассации устанавливает клиент\rплюс 10 % от тарифной ставки\rНочная инкассация (с 22:00)\rплюс 20% от тарифной ставки\rУтренняя инкассация для зачисления в 1ой половине дня\rбесплатно\rЕсли сдают на одном объекте несколько юридических лиц\rбесплатно\rДоставка разменной монеты\r0,4 % от суммы доставки\rРасходный материал\rбесплатно\rХранение денежных средств в ночное время, праздничные и выходные\rбесплатно\rЗагрузка банкоматов, подкрепление дополнительных офисов\rот 350 руб/час\rДоставка денежных средств из банка Клиенту\r0,5 % от суммы, либо по соглашению сторон','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(15,'2019-11-19 13:19:11','main','s1|/services/corp/index.php',0,NULL,NULL,NULL,'/services/corp/index.php','Корпоративным клиентам','Банк является одним из лидеров банковского рынка по обслуживанию корпоративных клиентов. \rКомплексное банковское обслуживание на основе максимального использования конкурентных преимуществ и возможностей Банка позволяет создать устойчивую \rфинансовую платформу для развития бизнеса предприятий и холдингов различных отраслей экономики. Уже более 15 лет Банк работает для своих клиентов, \rявляясь образцом надежности и высокого профессионализма.\rНаш Банк предлагает корпоративным клиентам следующие виды услуг:\rРасчетно-кассовое обслуживание\rИнкассация\rИнтернет-банкинг','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(16,'2019-11-19 13:19:11','main','s1|/services/corp/rko.php',0,NULL,NULL,NULL,'/services/corp/rko.php','Расчетно-кассовое обслуживание','Во всех странах мира самой распространенной функцией банков являются расчеты. Большинство оказываемых банком услуг связаны с быстрым и качественным проведением расчетных операций. Каждый клиент, независимо от вида осуществляемых в Банке операций, пользуется переводом средств.\rКорпоративным клиентам Банк оказывает следующие услуги:\rоткрытие и ведение счетов юридических лиц - резидентов и нерезидентов Российской Федерации — в валюте РФ и иностранной валюте; \rвсе виды расчетов в рублях и иностранной валюте; \rкассовое обслуживание в рублях и иностранной валюте; \rускоренные платежи по России по системе межрегиональных электронных платежей; \rплатежи в любую страну мира в кратчайшие сроки \rпроведение конверсионных операций по счетам Клиентов \rинкассация и доставка наличных денег и ценностей \rраспоряжение счетом посредством системы «Интернет-Банк» \rОперационный день в Банке установлен: ежедневно с 09.00 до 16.00, в пятницу и предпраздничные дни с 09.00 до 15.00.\rКассовое обслуживание осуществляется на договорной основе, плата взимается по факту совершения каждой операции в соответствии с утвержденными Банком Тарифами за услуги корпоративным клиентам.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(17,'2019-11-19 13:19:11','main','s1|/services/financialorg/depservices.php',0,NULL,NULL,NULL,'/services/financialorg/depservices.php','Депозитарные услуги','Депозитарий Банка имеет корреспондентские отношения со всеми крупными расчетными и уполномоченными депозитариями. Разветвленная сеть корреспондентских счетов позволяет клиентам депозитария осуществлять операции практически с любыми инструментами фондового рынка.\rУслуги депозитария Банка:\rоткрытие и ведение счетов депо клиентов;\rхранение и учет всех видов ценных бумаг, включая акции, облигации, паи, векселя, международных финансовых инструментов (еврооблигации, АДР, ГДР);\rконсультирование и проведение комплексных структурированных операций с ценными бумагами;\rперерегистрация прав собственности на ценные бумаги, в том числе при выполнении определенного условия;\rоформление и учет залоговых операций с ценными бумагами депонентов;\rпредоставление информации об эмитенте;\rпомощь депонентам в реализации прав, закрепленных за ними как за владельцами ценных бумаг;\rконсультационная поддержка при проведении операций по счетам депо;\rвыполнение функций платежного агента:\rхранение ценных бумаг на основании договоров ответственного хранения;\rпроведение экспертизы ценных бумаг;\rдругие услуги.\rСпособы обмена документов с Депозитарием:\rв бумажном виде с оригинальными подписями и печатями;\rпо факсу (поручения на зачисление ценных бумаг и предоставление выписок) с последующим предоставлением оригинала;\rпо системам S.W.I.F.T. и TELEX.\rТарифы на депозитарное обслуживание\rНаименование услуги\rТариф\rОткрытие счета депо для физических лиц (резидентов и нерезидентов)\n150 руб.\nОткрытие счета депо для юридических лиц – резидентов\n400 руб.\nОткрытие счета депо для юридических лиц – нерезидентов\n1600 руб.\nЗакрытие счета депо\nНе взимается\nВнесение изменения в Анкету Депонента\nНе взимается\nАбонентская плата в месяц за ведение счета депо для юридических лиц - резидентов,\nпри наличии остатка на счете депо\n500 руб.\nАбонентская плата в месяц за ведение счета депо для юридических лиц - нерезидентов,\nпри наличии остатка на счете депо\n2 500 руб.\nАбонентская плата в месяц за ведение счета депо для Депонентов, находящихся на брокерском\nобслуживании, при наличии движения по счету депо\n150 руб.\nФормирование отчета о совершенных по счету депо операциях за период после проведения\nоперации\nНе взимается\nФормирование отчета о совершенных по счету депо операциях за период, выписки о состоянии\nсчета (раздела счета) депо по информационному запросу Депонента\n150 руб.\nЗачисление (списание) бездокументарных ценных бумаг, за одно поручение\n300 руб.\nЗачисление (списание) документарных ценных бумаг, за одну ценную бумагу\n580 руб.\nПеревод (внутри Депозитария) бездокументарных и документарных ценных бумаг, за одно\nпоручение (взимается с Депонента - Инициатора операции)\n300 руб.\nИзменение мест хранения бездокументарных ценных бумаг (за одно поручение) и документарных\nценных бумаг (за одну ценную бумагу)\n580 руб.\nБлокировка (разблокировка), регистрация залога (возврата залога) бездокументарных\nценных бумаг\n870 руб.\nБлокировка (разблокировка), регистрация заклада (возврата заклада) документарных\nценных бумаг\n870 руб.\n*При взимании тарифов дополнительно взимается налог на добавленную стоимость по ставке 18%.\rПлата за иные услуги, не оговоренные в данных Тарифах Депозитария, за исключением услуг, оказываемых при проведении операций Депонента другими депозитариями и Реестродержателями, не взимается.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(18,'2019-11-19 13:19:11','main','s1|/services/financialorg/docoper.php',0,NULL,NULL,NULL,'/services/financialorg/docoper.php','Документарные операции','Наш Банк предлагает широкий спектр банковских услуг по проведению документарных расчетов в области международных торгово-экономических отношений ,в том числе по нестандартным и сложно структурированным схемам.\rБезусловным преимуществом работы с нашим Банком является возможность проводить операции в предельно сжатые сроки по конкурентоспособным тарифам, а также их обширная география: страны СНГ и Балтии, ближнего и дальнего зарубежья.\rСпектр услуг по банковским гарантиям: \rвыдача любых видов гарантий под контргарантии банков-корреспондентов в счет установленных на них документарных лимитов: 									 \nгарантии надлежащего исполнения контрактов;\rгарантии платежа (т.е. выполнения платежных обязательств по контрактам);\rгарантии возврата авансового платежа;\rгарантии в пользу таможенных органов;\rгарантии в пользу налоговых органов;\rтендерные гарантии (т.е. гарантии участия в торгах/конкурсах);\rгарантии возврата кредита;\rгарантии оплаты акций;\rгарантии, предоставляемые в качестве встречного обеспечения судебных исков;\rавизование гарантий иностранных и российских банков-корреспондентов в пользу отечественных и зарубежных бенефициаров;\rпредъявление требования платежа по поручению бенефициаров в счет банковских гарантий;\rзаверка подлинности подписей на гарантиях иностранных и российских банков по просьбе бенефициара;\rв случае необходимости иные виды операций, включая предварительную проработку условий гарантийной сделки.\rПредоставляемые услуги по документарным (в том числе резервным) аккредитивам:\rавизование аккредитивов иностранных и российских банков-корреспондентов в пользу отечественных и зарубежных бенефициаров;\rподтверждение аккредитивов банков-корреспондентов под предоставленное денежное покрытие или в счет документарных лимитов, установленных на банк-эмитент;\rподтверждение экспортных аккредитивов Котнрагента;\rисполнение аккредитивов;\rвыполнение функции рамбурсирующего банка на основании предоставленных полномочий по аккредитивам иностранных и российских банков-корреспондентов (при наличии у банка-эмитента корреспондентского счета ЛОРО в Газпромбанке);\rвыдача безотзывных рамбурсных обязательств по аккредитивам, открытым банками-корреспондентами, в счет документарных лимитов, установленных на банк-эмитент (при наличии у банка-эмитента корреспондентского счета ЛОРО в Газпромбанке);\rоформление трансферации и переуступки выручки по аккредитивам;\rоткрытие аккредитивов/предоставление платежных гарантий в рамках операций торгового финансирования;\rиные виды операций, включая предварительную проработку схемы расчетов и условий аккредитивной сделки.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(19,'2019-11-19 13:19:11','main','s1|/services/financialorg/index.php',0,NULL,NULL,NULL,'/services/financialorg/index.php','Финансовым организациям','Активное сотрудничество на финансовых рынках представляет собой одну из наиболее важных сторон бизнеса и является перспективным направлением деятельности нашего Банка. Политика банка направлена на расширение сотрудничества, увеличение объемов взаимных кредитных линий. Солидная деловая репутация Банка на рынке межбанковских операций способствует налаживанию стабильных и взаимовыгодных партнерских отношений с самыми крупными и надежными банками страны.\rОсобое внимание Банк уделяет развитию взаимоотношений с международными финансовыми институтами. Финансирование долгосрочных и среднесрочных проектов клиентов за счет привлечения средств на международных рынках капитала - одно из приоритетных направлений деятельности Банка. Наш Банк имеет развитую сеть корреспондентских счетов, что позволяет быстро и качественно осуществлять расчеты в различных валютах. Поручения клиентов могут быть исполнены Банком в сжатые сроки.\rВ целях минимизации рисков при поведении операций на финансовых рынках наш Банк максимально требовательно подходит к выбору своих банков-контрагентов. \rВ данном направлении Банк предлагает финансовым организациям следующие услуги:\rУслуги на межбанковском рынке\rДепозитарные услуги\rДокументарные операции','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(20,'2019-11-19 13:19:11','main','s1|/services/financialorg/mbank.php',0,NULL,NULL,NULL,'/services/financialorg/mbank.php','Услуги на межбанковском рынке','Межбанковское кредитование\rВид услуги\nОписание\nКредитование под валютный депозит\nКредиты выдаются в рублях на срок от 1 дня до 1 месяца с возможностью дальнейшей\nпролонгации. Тарифные ставки зависят от конкретных условий сделки.\nКредитование под залог ОВГВЗ\nКредиты выдаются в рублях и валюте на срок до 1 месяца с возможной пролонгацией.\nСтавка дисконта составляет 25—30%.\nКредитование под залог государственных ценных бумаг\nВ залог принимаются облигации федерального займа (ОФЗ) любого выпуска. Ставка дисконта:\nОФЗ с датой погашения до 91 дня — 5%;\rОФЗ с датой погашения до 365 дней — 8%;\rОФЗ с датой погашения свыше 365 дней — 13%.\rКредиты выдаются на срок до2 недель.\nКредитование под залог векселей\nДля консультаций по этому виду кредитования обратитесь в Управление вексельного\nобращения и работы с долговыми обязательствами по телефону (495) 978-78-78.\nКонверсионные операции\rНа внутреннем денежном рынке Банк осуществляет:\rБрокерское обслуживание банков по их участию в торгах ЕТС на ММВБ. Ставки комиссионного вознаграждения варьируются в зависимости от объема операций (в пределах 0,147—0,18%).\rКонверсионные операции. Банк предлагает банкам-контрагентам работу на валютном рынке по покупке и продаже иностранной валюты за российские рубли по текущим рыночным ценам. При отсутствии открытых линий при продаже иностранной валюты банк-контрагент производит предоплату по заключенной сделке, возможна работа под кредитовое авизо.\rБанкнотные операции\rпокупка и продажа наличной валюты за безналичную валюту;\rпродажа новых банкнот в упаковке американского банка-эмитента;\rпокупка и продажа банкнот, бывших в употреблении.\rУровень комиссионных зависит от объемов и конкретных условий сделки.\rДокументарные операции\rМеждународные расчеты:\nАккредитив\r- это условное денежное обязательство, принимаемое банком (банком-эмитентом) по поручению плательщика, произвести платежи в пользу получателя средств по предъявлении последним документов, соответствующих условиям аккредитива, или предоставить полномочия другому банку (исполняющему банку) произвести такие платежи.\rИнкассо\r- это расчетная операция, посредством которой банк на основании расчетных документов по поручению клиента получает причитающиеся клиенту денежные средства от плательщика за поступившие в адрес плательщика товары или оказанные ему услуги, после чего эти средства зачисляются на счет клиента в банке.\rОперации с векселями банка\rВексели нашего банка являются простыми векселями.\rПростой вексель — документ установленной законом формы, дающий его держателю (векселедержателю) безусловное право требовать с лица, указанного в данном документе (плательщика), уплаты оговоренной суммы по наступлению некоторого срока. Обязательство по простому векселю возникает с момента его составления и передачи первому векселедержателю.\rПеречень проводимых банком операций с собственными векселями:\nвыпуск векселей;\rпогашение векселей;\rдосрочный учет векселей;\rответственное хранение векселей;\rкредитование под залог векселей;\rвыдача кредитов на приобретение векселей;\rновация и размен векселей;\rпроверка подлинности векселей.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(21,'2019-11-19 13:19:11','main','s1|/services/fiz/cards.php',0,NULL,NULL,NULL,'/services/fiz/cards.php','Банковские карты','Кредитные Карты\rСрок действия Карты\r3 года\rКомиссия за ежегодное осуществление расчетов по операциям с Основной Картой.\r600 руб. / 25 долл. США / 25 евро\rЛьготный период оплаты\rдо 50 календарных дней\rЕжемесячный минимальный платеж \r(в процентах от суммы задолженности по Овердрафтам):\r10% \rДополнительные проценты/штрафы/комиссии/ на сумму неразрешенного Овердрафта\rне взимается (отменена с 1 марта) \rКомиссия за учет Отчетной суммы задолженности, непогашенной на последний календарный день Льготного периода оплаты.\rдля 1-6-го месяцев\rдля 6-го и последующих месяцев\r12% / 15% \r21% / 24% \rв пунктах выдачи наличных или банкоматах \"Банка\" \rв банкоматах банков-партнеров \"Объединенной расчетной системы (ОРС)\" \rв пунктах выдачи наличных или банкоматах иного банка \r0%\r0,5%\r2,5%\rМинимальная сумма комиссии по операциям получения наличных денежных средств в пунктах выдачи наличных или банкоматах иного банка. \r150 рублей\rКомиссия за осуществление конвертации по трансграничным операциям (совершенным за пределами территории РФ). \r0,75% \rРасчетные карты Банка\rВалюта Картсчета\rроссийские рубли / доллары США / евро\rСрок действия карты\r3 года\rКомиссия за осуществление расчетов в течение одного года по операциям с Основной Картой при ее первичном выпуске.\rВзимается перед началом каждого года расчетов по действующей Карте из средств на Картсчете.\r500 рублей/20 долл. США/20 евро\rКомиссия за операцию получения наличных денежных средств:\rдо 300 000 рублей (включительно)\rв пунктах выдачи наличных или банкоматах «Банка»\rв банкоматах банков-партнеров\rв пунктах выдачи наличных или банкоматах иного банка\r0%\r0,5%\r1,5% мин. 90 руб.\rот 300 001 до 10 000 000 рублей (включительно)\r2,5% \rот 10 000 001 рубля и выше\r5%\rМинимальная сумма комиссии по операциям получения наличных денежных средств в пунктах выдачи наличных или банкоматах иного банка. \r90 рублей\rКомиссия за перечисление и конверсию денежных средств в Интернет-банке. \r0%\rКомиссия за остановку операций по Картсчету, совершаемых с использованием Карты, при ее утрате. \r600 рублей/25 долл. США/25 евро\rКомиссия за осуществление конверсии по трансграничным операциям (совершенным за пределами территории РФ).\r0,75%\rВыдача Карточки доступа.\rБесплатно\rКомиссия за оплату услуг в Интернет - банке и в банкоматах Банка. \rБесплатно\rКомиссия за учет перерасхода средств (в процентах годовых от суммы перерасхода). \r36%\rКомиссия за отправку SMS сообщений о суммах проведенных по Карте операций и доступном балансе в течение ее срока действия.\rБесплатно','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(22,'2019-11-19 13:19:11','main','s1|/services/fiz/credit.php',0,NULL,NULL,NULL,'/services/fiz/credit.php','Потребительский кредит','Не важно, для чего вам нужны деньги — мы доверяем вам и не тратим время на лишние процедуры.\rТарифы кредитования физических лиц\rВ рублях\rСумма кредита: от 150 000 до 1 500 000 рублей\rСрок кредита: от 6 до 36 месяцев\r% ставка: от 18 до 21,5% годовых\rЕдиновременная комиссия за выдачу кредита: 2% от суммы кредита\rВ долларах США\rСумма кредита: от 5 000 до 50 000 долларов США\rСрок кредита: от 6 до 24 месяцев\r% ставка: от 14,5 до 16,5% годовых\rЕдиновременная комиссия за выдачу кредита: 2% от суммы кредита\rУсловия кредитного договора и применяемый тарифный план и/или тарифы определяются в индивидуальном порядке, в том числе в зависимости от подтвержденного дохода клиента. Изложенная информация не является публичной офертой и не влечет возникновения у ЗАО «Банк Интеза» обязанности предоставить кредит, как на указанных, так и на любых иных условиях.\rМинимальные требования к заемщику\rВы гражданин России.\rВам сейчас больше 23 лет и вам будет меньше 60 (для мужчин) или меньше 55 (для женщин) на момент погашения (то есть полной оплаты) кредита.\rУ вас есть официальное место работы, и вы работаете на нем по найму не менее шести месяцев и прошли испытательный срок.\rВаш общий трудовой стаж составляет не менее двух лет\rВы можете подтвердить свой доход официально при помощи стандартной формы 2НДФЛ или справкой по форме банка.\rВы обратились в отделение банка в том же городе, в котором вы работаете.\rС вами можно связаться по городскому телефону по месту работы.\rТелефон горячей линии: \r8 800 2002 808\r( Звонок по России бесплатный)','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(23,'2019-11-19 13:19:12','main','s1|/services/fiz/index.php',0,NULL,NULL,NULL,'/services/fiz/index.php','Частным лицам','Наш Банк предоставляет физическим лицам большое число различных возможностей, связанных с сохранением средств и совершением различных сделок. В частности, банк предлагает своим клиентам широкую линейку разнообразных вкладов, способных удовлетворить как долгосрочные, так и краткосрочные интересы, касающиеся размещения свободных средств по выгодным ставкам. В своей работе Банк активно применяет инновационные технологии динамично развивающейся банковской сферы.\rБанк предлагает своим клиентам качественный универсальный сервис по следующим направлениям:\rБанковские карты\rПотребительский кредит','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(24,'2019-11-19 13:19:12','main','s1|/services/index.php',0,NULL,NULL,NULL,'/services/index.php','Услуги','Наш Банк предоставляет физическим лицам большое число различных возможностей, связанных с сохранением средств и совершением различных сделок. В частности, банк предлагает своим клиентам широкую линейку разнообразных вкладов, способных удовлетворить как долгосрочные, так и краткосрочные интересы, касающиеся размещения свободных средств по выгодным ставкам. В своей работе Банк активно применяет инновационные технологии динамично развивающейся банковской сферы.\rБанк предлагает своим клиентам качественный универсальный сервис по следующим направлениям:\rБанковские карты\rПотребительский кредит\rМалому и среднему бизнесу\rРабота с предприятиями малого и среднего бизнеса - одно из стратегически важных направлений деятельности Банка. Наш Банк представляет современные программы обслуживания малого и среднего бизнеса, обеспечивает оптимальные и взаимовыгодные варианты сотрудничества, в основе которых лежит профессионализм сотрудников и высокое качество банковских услуг. Услуги нашего Банка отличаются оперативностью и надежностью, так как ориентированы на деловых людей - на тех, кто ценит свое время и деньги.\rБанк предлагает следующие виды услуг для предприятий малого и среднего бизнеса:\rКредитование\rЛизинг\rДепозиты\rПластиковые карты\rКорпоративным клиентам\rБанк является одним из лидеров банковского рынка по обслуживанию корпоративных клиентов. \rКомплексное банковское обслуживание на основе максимального использования конкурентных преимуществ и возможностей Банка позволяет создать устойчивую \rфинансовую платформу для развития бизнеса предприятий и холдингов различных отраслей экономики. Уже более 15 лет Банк работает для своих клиентов, \rявляясь образцом надежности и высокого профессионализма.\rНаш Банк предлагает корпоративным клиентам следующие виды услуг:\rРасчетно-кассовое обслуживание\rИнкассация\rИнтернет-банкинг\rФинансовым организациям\rАктивное сотрудничество на финансовых рынках представляет собой одну из наиболее важных сторон бизнеса и является перспективным направлением деятельности нашего Банка. Политика банка направлена на расширение сотрудничества, увеличение объемов взаимных кредитных линий. Солидная деловая репутация Банка на рынке межбанковских операций способствует налаживанию стабильных и взаимовыгодных партнерских отношений с самыми крупными и надежными банками страны.\rОсобое внимание Банк уделяет развитию взаимоотношений с международными финансовыми институтами. Финансирование долгосрочных и среднесрочных проектов клиентов за счет привлечения средств на международных рынках капитала - одно из приоритетных направлений деятельности Банка. Наш Банк имеет развитую сеть корреспондентских счетов, что позволяет быстро и качественно осуществлять расчеты в различных валютах. Поручения клиентов могут быть исполнены Банком в сжатые сроки.\rВ целях минимизации рисков при поведении операций на финансовых рынках наш Банк максимально требовательно подходит к выбору своих банков-контрагентов. \rВ данном направлении Банк предлагает финансовым организациям следующие услуги:\rУслуги на межбанковском рынке\rДепозитарные услуги\rДокументарные операции','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(25,'2019-11-19 13:19:12','main','s1|/services/smallbusiness/cards.php',0,NULL,NULL,NULL,'/services/smallbusiness/cards.php','Пластиковые карты','Наш Банк проводит операции с пластиковыми картами с 1997 г. Сегодня мы предлагаем пластиковые карты основных международных платёжных систем – Visa и MasterCard; от самых демократичных Еlеctron до элитных Gold и Platinum. В рамках персонального обслуживания В рамках персонального банковского обслуживания Банк дополнительно предлагает эксклюзивные карты Visa Infinite с бриллиантами и платиновым орнаментом.\rЗаказать международную пластиковую карту можно в любом отделении нашего Банка. Ваша карта будет готова уже через 3-5 дней. Наш Банк один из немногих в России, кто выдает карту сроком на два года, как и крупнейшие зарубежные банки.Каждый Пакет услуг Банка включает одну основную и до трех дополнительных пластиковых карт для вас и для членов вашей семьи (включая детей старше 14 лет). Вы сами устанавливаете ограничения: кто и сколько может потратить по карте.\rТеряя пластиковую карту, вы не теряете деньги. Потому что карты нашего Банка надежно защищены от незаконного использования. Просто соблюдайте правила безопасности при обращении со своей картой, а в случае ее пропажи или хищения без промедления обратитесь в Банк.\rПреимущества пластиковых карт Банка\rполучение наличных без комиссии в широкой сети банкоматов;\rсведения об остатке и совершённых операциях по карте приходят по SMS;\rсистема интернет-банкинга позволяет владельцу карты контролировать расходы и управлять средствами на карточных счетах.\rвсем владельцам карт Банка доступны cкидки и бонусные программы.\rВиды пластиковых карт\rДебетовые карты:\rудобство безналичной оплаты товаров и услуг\rбезопасное хранение собственных средств\rначисление процентов на остаток по карте\rконтроль над расходами и управление своими деньгами\rКредитные карты:\rкредитование без процентов до 55 дней\rпользоваться кредитом можно многократно, не обращаясь в Банк\rбезналичная оплата товаров и услуг без комиссий в любой точке мира\rпровоз денег через границу без таможенного оформления\rне нужно покупать валюту для выезда в другие страны\rвсе полезные функции дебетовых карт','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(26,'2019-11-19 13:19:12','main','s1|/services/smallbusiness/credit.php',0,NULL,NULL,NULL,'/services/smallbusiness/credit.php','Кредитование','Кредитование малого и среднего бизнеса является одним из стратегических направлений Банка.\rДанное направление включает в себя:\nкредитование юридических лиц\rкредитование индивидуальных предпринимателей\rВ зависимости от пожеланий клиента кредиты для бизнеса предоставляются в разных валютах: в рублях РФ, долларах США и евро. \nПреимущества получения кредита в нашем Банке:\rСрок рассмотрения кредитной заявки от 2-х рабочих дней; \rОтсутствие ежемесячной платы за ведение ссудного счета;\rОтсутствие требований по предоставлению бизнес-плана;\rПринимается к рассмотрению управленческая отчетность;\rВ качестве залога рассматриваются товары в обороте, автотранспорт, оборудование, недвижимость и другое ликвидное имущество; \rГибкие условия погашения кредита. \rДля получения кредита:\rПозвоните нам по телефону +7 (495) 757-57-57, обратитесь в ближайшее к Вам отделение Банка или заполните on-line заявку. \rНаши специалисты помогут Вам выбрать удобные условия кредитования и ответят на интересующие Вас вопросы.\rПодготовьте необходимые для рассмотрения кредитной заявки документы и договоритесь о встрече с кредитным экспертом Банка.\rПокажите кредитному эксперту Ваше предприятие и имущество, предлагаемое в залог.\rПолучите кредит на развитие Вашего бизнеса! \nПрограммы кредитования малого и среднего бизнеса:\rПрограмма\nСумма кредита\nПроцентная ставка\nСрок кредита\n«Овердрафт»\rот 300 000\nдо 5 000 000 рублей\nот 18% годовых\nдо 12 месяцев\n«Миникредит»\rот 150 000\nдо 1 000 000 рублей\nот 24% годовых\nдо 36 месяцев\n«Развитие»\nот 1 000 000\nдо 15 000 000 рублей\nот 17% годовых\nдо 36 месяцев\n«Инвест»\nот 1 000 000\nдо 30 000 000 рублей\nот 15% годовых\nдо 72 месяцев','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(27,'2019-11-19 13:19:12','main','s1|/services/smallbusiness/deposits.php',0,NULL,NULL,NULL,'/services/smallbusiness/deposits.php','Депозиты','Наш Банк предлагает вам эффективно разместить свободные деньги на банковском депозите и получить дополнительную прибыль.\rДепозитные продукты\r \rДосрочное расторжение\rПополнение\rЧастичное изъятие\rВыплата процентов\rДепозит с выплатой процентов в конце срока\rНе предусмотрено.\rНе предусмотрено.\rНе предусмотрено.\rВ конце срока.\rДепозит с выплатой процентов ежемесячно\rНе предусмотрено.\rНе предусмотрено.\rНе предусмотрено.\rЕжемесячно.\rДепозит с возможностью пополнения\rНе предусмотрено.\rПрекращается за 2 месяца до окончания срока действия депозита. \rНе предусмотрено \rВ конце срока. \rДепозит с возможностью пополнения и изъятия\rНе предусмотрено.\rПрекращается за 2 месяца до окончания срока действия депозита.\rНе более 40% от первоначальной суммы вклада за весь срок депозита \rВ конце срока. \rДепозит с возможностью досрочного расторжения \rВозможно при размещении на 12 месяцев, но не ранее чем через 6 месяцев.\rНе предусмотрено.\rНе предусмотрено. \rВ конце срока.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(28,'2019-11-19 13:19:12','main','s1|/services/smallbusiness/index.php',0,NULL,NULL,NULL,'/services/smallbusiness/index.php','Малому и среднему бизнесу','Работа с предприятиями малого и среднего бизнеса - одно из стратегически важных направлений деятельности Банка. Наш Банк представляет современные программы обслуживания малого и среднего бизнеса, обеспечивает оптимальные и взаимовыгодные варианты сотрудничества, в основе которых лежит профессионализм сотрудников и высокое качество банковских услуг. Услуги нашего Банка отличаются оперативностью и надежностью, так как ориентированы на деловых людей - на тех, кто ценит свое время и деньги.\rБанк предлагает следующие виды услуг для предприятий малого и среднего бизнеса:\rКредитование\rЛизинг\rДепозиты\rПластиковые карты','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(29,'2019-11-19 13:19:12','main','s1|/services/smallbusiness/leazing.php',0,NULL,NULL,NULL,'/services/smallbusiness/leazing.php','Лизинг','Наш Банк оказывает весь спектр услуг по финансовой аренде (лизингу) отечественного и импортного оборудования, транспорта и недвижимости.\rЛизинг оборудования и транспорта\rОсновные условия:\rСрок финансирования:\nоборудование и транспорт - до 5 лет\rж/д подвижной состав - до 10 лет\rВалюта финансирования: рубли, доллары США, евро\rМинимальная сумма финансирования: от 4,5 млн.руб.\rАванс: от 0%\rУдорожание: от 9%\rСрок принятия решения: от 14 дней\rФинансирование импортных поставок\rМы предоставляем предприятиям доступ к льготному финансированию импортных поставок оборудования и транспорта с использованием механизма лизинга при участии экспортных кредитных агентств.\rОсновные условия:\rСрок финансирования: до 7 лет\rВалюта финансирования: рубли, доллары США, евро\rМинимальная сумма финансирования: от 15 млн.руб. \rАванс: от 15% (без учета таможенных пошлин) \rУдорожание: от 5%\rСрок принятия решения: от 14 дней\rЛизинг коммерческой недвижимости\rПозволяет предприятиям приобрести объекты коммерческой недвижимости без единовременного отвлечения значительных средств.\rВ качестве предмета лизинга могут выступать:\rофисные здания;\rторговые, складские и производственные помещения;\rдругие объекты коммерческой недвижимости.\rОсновные условия:\rСрок финансирования: от 5 лет\rВалюта финансирования: рубли, доллары США, евро\rМинимальная сумма финансирования: от 50 млн.руб.* \rАванс: от 0%\rУдорожание: от 7%\rСрок принятия решения: от 14 дней\r* Размер суммы финансирования зависит от региона, в котором находится объект недвижимости.\rОсновным требованием, предъявляемым нашим Банком для рассмотрения заявки на лизинг коммерческой недвижимости, является наличие полного комплекта правоустанавливающих документов на недвижимость и наличие отчета независимого оценщика.','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(30,'2019-11-19 13:19:12','main','s1|/_index.php',0,NULL,NULL,NULL,'/_index.php','Новости банка','','','','','78057c8797a46a761d31f957b7fc509d',NULL,NULL),(37,'2019-11-21 17:31:40','main','s1|/index.php',0,NULL,NULL,NULL,'/index.php','Блог','Next\r1\r2\r3\r4\r5\r6\r... Next\rBack To : \rTop\r| \rHome\r-->','','','',NULL,NULL,NULL),(38,'2019-11-20 18:26:48','main','s1|/support/index.php',0,NULL,NULL,NULL,'/support/index.php','Support','Страница Support','','','',NULL,NULL,NULL),(39,'2019-11-20 18:28:44','main','s1|/contact/index.php',0,NULL,NULL,NULL,'/contact/index.php','Contact','Страница Contact','','','',NULL,NULL,NULL),(40,'2019-11-21 14:31:24','iblock','S1',0,NULL,NULL,NULL,'=ID=1&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=design','Design','',NULL,'blog','4',NULL,NULL,NULL),(41,'2019-11-21 14:31:55','iblock','S2',0,NULL,NULL,NULL,'=ID=2&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=music','Music','',NULL,'blog','4',NULL,NULL,NULL),(42,'2019-11-21 14:32:30','iblock','S3',0,NULL,NULL,NULL,'=ID=3&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=technology','Technology','',NULL,'blog','4',NULL,NULL,NULL),(43,'2019-11-21 14:34:17','iblock','S4',0,NULL,NULL,NULL,'=ID=4&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=nature','Nature','',NULL,'blog','4',NULL,NULL,NULL),(44,'2019-11-21 14:35:02','iblock','S5',0,NULL,NULL,NULL,'=ID=5&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=fashion','Fashion','',NULL,'blog','4',NULL,NULL,NULL),(45,'2019-11-21 15:03:41','iblock','7',0,NULL,NULL,NULL,'=ID=7&EXTERNAL_ID=7&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=making-it-look-like-readable-english-many-desktop-packages-and-web-page1','Making it look like readable English. Many desktop packages and web page1','Статья 1.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nСтатья 1. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','','blog','4',NULL,NULL,NULL),(46,'2019-11-21 15:10:00','iblock','8',0,NULL,NULL,NULL,'=ID=8&EXTERNAL_ID=8&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=making-it-look-like-readable-english-many-desktop-packages-and-web-page2','Making it look like readable English. Many desktop packages and web page2','Статья 2.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nСтатья 2. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','','blog','4',NULL,NULL,NULL),(47,'2019-11-21 15:12:27','iblock','9',0,NULL,NULL,NULL,'=ID=9&EXTERNAL_ID=9&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=making-it-look-like-readable-english-many-desktop-packages-and-web-page3','Making it look like readable English. Many desktop packages and web page3','Статья 3.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nСтатья 3. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','','blog','4',NULL,NULL,NULL),(48,'2019-11-21 15:13:55','iblock','10',0,NULL,NULL,NULL,'=ID=10&EXTERNAL_ID=10&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=making-it-look-like-readable-english-many-desktop-packages-and-web-page4','Making it look like readable English. Many desktop packages and web page4','Статья 4.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nСтатья 4. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','','blog','4',NULL,NULL,NULL),(49,'2019-11-21 15:15:24','iblock','11',0,NULL,NULL,NULL,'=ID=11&EXTERNAL_ID=11&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=blog&IBLOCK_ID=4&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=making-it-look-like-readable-english-many-desktop-packages-and-web-page5','Making it look like readable English. Many desktop packages and web page5','Статья 5.Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nСтатья 5. Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors\r\nLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors','','blog','4',NULL,NULL,NULL),(50,'2019-11-21 16:02:17','main','s1|/blog/index.php',0,NULL,NULL,NULL,'/blog/index.php','Блог','','','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_search_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_freq`
--

DROP TABLE IF EXISTS `b_search_content_freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT 0,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_freq`
--

LOCK TABLES `b_search_content_freq` WRITE;
/*!40000 ALTER TABLE `b_search_content_freq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_freq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_param`
--

DROP TABLE IF EXISTS `b_search_content_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_param`
--

LOCK TABLES `b_search_content_param` WRITE;
/*!40000 ALTER TABLE `b_search_content_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_right`
--

DROP TABLE IF EXISTS `b_search_content_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_right`
--

LOCK TABLES `b_search_content_right` WRITE;
/*!40000 ALTER TABLE `b_search_content_right` DISABLE KEYS */;
INSERT INTO `b_search_content_right` VALUES (1,'G2'),(2,'G2'),(3,'G2'),(4,'G2'),(5,'G2'),(6,'G2'),(7,'G2'),(8,'G2'),(9,'G2'),(10,'G2'),(11,'G2'),(12,'G2'),(13,'G2'),(14,'G2'),(15,'G2'),(16,'G2'),(17,'G2'),(18,'G2'),(19,'G2'),(20,'G2'),(21,'G2'),(22,'G2'),(23,'G2'),(24,'G2'),(25,'G2'),(26,'G2'),(27,'G2'),(28,'G2'),(29,'G2'),(30,'G2'),(37,'G2'),(38,'G2'),(39,'G2'),(40,'G1'),(40,'G2'),(41,'G1'),(41,'G2'),(42,'G1'),(42,'G2'),(43,'G1'),(43,'G2'),(44,'G1'),(44,'G2'),(45,'G1'),(45,'G2'),(46,'G1'),(46,'G2'),(47,'G1'),(47,'G2'),(48,'G1'),(48,'G2'),(49,'G1'),(49,'G2'),(50,'G2');
/*!40000 ALTER TABLE `b_search_content_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_site`
--

DROP TABLE IF EXISTS `b_search_content_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_site`
--

LOCK TABLES `b_search_content_site` WRITE;
/*!40000 ALTER TABLE `b_search_content_site` DISABLE KEYS */;
INSERT INTO `b_search_content_site` VALUES (1,'s1',''),(2,'s1',''),(3,'s1',''),(4,'s1',''),(5,'s1',''),(6,'s1',''),(7,'s1',''),(8,'s1',''),(9,'s1',''),(10,'s1',''),(11,'s1',''),(12,'s1',''),(13,'s1',''),(14,'s1',''),(15,'s1',''),(16,'s1',''),(17,'s1',''),(18,'s1',''),(19,'s1',''),(20,'s1',''),(21,'s1',''),(22,'s1',''),(23,'s1',''),(24,'s1',''),(25,'s1',''),(26,'s1',''),(27,'s1',''),(28,'s1',''),(29,'s1',''),(30,'s1',''),(37,'s1',''),(38,'s1',''),(39,'s1',''),(40,'s1',''),(41,'s1',''),(42,'s1',''),(43,'s1',''),(44,'s1',''),(45,'s1',''),(46,'s1',''),(47,'s1',''),(48,'s1',''),(49,'s1',''),(50,'s1','');
/*!40000 ALTER TABLE `b_search_content_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_stem`
--

DROP TABLE IF EXISTS `b_search_content_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_stem`
--

LOCK TABLES `b_search_content_stem` WRITE;
/*!40000 ALTER TABLE `b_search_content_stem` DISABLE KEYS */;
INSERT INTO `b_search_content_stem` VALUES (1,'ru',1,0.1192,1),(4,'ru',2,0.1256,116),(1,'ru',2,0.1889,191.5),(10,'ru',2,0.2314,2),(27,'ru',3,0.1508,3),(17,'ru',3,0.1852,23),(8,'ru',3,0.1892,14),(3,'ru',3,0.2012,68),(29,'ru',3,0.212,132),(30,'ru',3,0.2314,2),(22,'ru',3,0.2696,218.333),(14,'ru',3,0.2871,156.25),(26,'ru',3,0.3093,89.75),(9,'ru',3,0.3173,9),(18,'ru',3,0.3182,133.8),(28,'ru',3,0.3828,47),(15,'ru',3,0.3856,39.5),(23,'ru',3,0.3931,40.25),(13,'ru',3,0.3967,136.571),(21,'ru',3,0.4071,249.778),(16,'ru',3,0.4246,65.1429),(20,'ru',3,0.4449,319.75),(4,'ru',3,0.4504,201.454),(25,'ru',3,0.4577,153),(19,'ru',3,0.4874,92.7),(24,'ru',3,0.5413,233.546),(1,'ru',3,0.5463,224.783),(1,'ru',4,0.1192,5),(17,'ru',5,0.1168,520),(1,'ru',5,0.1192,6),(20,'ru',5,0.1202,209),(26,'ru',5,0.1332,221),(22,'ru',5,0.1348,50),(1,'ru',6,0.2383,169),(1,'ru',7,0.1192,8),(3,'ru',7,0.2012,197.5),(25,'ru',8,0.1277,111),(21,'ru',8,0.2846,152.75),(3,'ru',8,0.4698,140),(1,'ru',8,0.515,268.263),(1,'ru',9,0.1889,22.5),(3,'ru',9,0.2539,128.667),(1,'ru',10,0.1192,19),(24,'ru',10,0.1197,63),(4,'ru',10,0.1256,140),(23,'ru',10,0.1693,64),(1,'ru',11,0.1192,21),(1,'ru',12,0.1192,22),(29,'ru',12,0.3106,195.75),(1,'ru',13,0.1192,36),(20,'ru',14,0.1202,463),(3,'ru',14,0.127,82),(1,'ru',14,0.1889,85.5),(17,'ru',15,0.1168,512),(1,'ru',15,0.1192,38),(21,'ru',15,0.1226,60),(14,'ru',15,0.1236,537),(13,'ru',15,0.1322,147),(27,'ru',15,0.1508,15),(25,'ru',15,0.2023,93),(1,'ru',16,0.1192,39),(14,'ru',16,0.196,538),(8,'ru',16,0.2999,52),(18,'ru',17,0.1231,35),(14,'ru',17,0.1236,45),(3,'ru',17,0.127,226),(28,'ru',17,0.1649,5),(23,'ru',17,0.1693,57),(24,'ru',17,0.1896,72.5),(13,'ru',17,0.2096,133.5),(22,'ru',17,0.2137,246),(1,'ru',17,0.2383,287),(20,'ru',17,0.2405,215),(1,'ru',18,0.1889,150),(1,'ru',19,0.2383,136.667),(4,'ru',20,0.1256,139),(19,'ru',20,0.1409,3),(23,'ru',20,0.1693,59),(1,'ru',20,0.1889,104),(24,'ru',20,0.1896,162.5),(15,'ru',21,0.166,37),(4,'ru',21,0.1991,254.5),(26,'ru',21,0.2111,215.5),(19,'ru',21,0.2233,95),(24,'ru',21,0.2393,312.667),(1,'ru',21,0.2767,330),(4,'ru',22,0.1256,141),(1,'ru',22,0.1889,106),(17,'ru',23,0.1168,21),(24,'ru',23,0.1197,380),(4,'ru',23,0.1256,142),(25,'ru',23,0.1277,231),(19,'ru',23,0.1409,116),(1,'ru',23,0.1889,107),(1,'ru',24,0.1192,61),(3,'ru',24,0.127,68),(25,'ru',24,0.1277,11),(1,'ru',25,0.1192,69),(21,'ru',26,0.1226,206),(1,'ru',26,0.1889,131),(20,'ru',26,0.1906,285.5),(20,'ru',27,0.1202,180),(4,'ru',27,0.1256,262),(28,'ru',27,0.1649,30),(17,'ru',27,0.1852,278),(1,'ru',27,0.1889,317),(25,'ru',27,0.2023,49.5),(13,'ru',27,0.2096,112),(24,'ru',27,0.2778,193.5),(16,'ru',27,0.283,87.3333),(15,'ru',27,0.3321,37),(24,'ru',28,0.1197,182),(28,'ru',28,0.1649,98),(1,'ru',28,0.1889,181),(25,'ru',28,0.4047,112.875),(28,'ru',29,0.1649,99),(23,'ru',29,0.1693,83),(24,'ru',29,0.1896,132.5),(12,'ru',29,0.2314,1),(1,'ru',29,0.2383,185.667),(21,'ru',29,0.424,162.4),(25,'ru',29,0.5693,175.809),(1,'ru',30,0.1192,75),(24,'ru',30,0.1197,208),(21,'ru',30,0.1226,356),(4,'ru',30,0.1256,71),(25,'ru',30,0.1277,189),(29,'ru',30,0.1338,99),(15,'ru',30,0.166,25),(1,'ru',31,0.1192,76),(24,'ru',31,0.1197,127),(20,'ru',31,0.1202,364),(13,'ru',31,0.1322,166),(29,'ru',31,0.1338,248),(22,'ru',31,0.1348,268),(28,'ru',31,0.1649,43),(17,'ru',32,0.1168,24),(1,'ru',32,0.1192,77),(4,'ru',32,0.1256,155),(25,'ru',32,0.1277,246),(29,'ru',32,0.1338,161),(19,'ru',32,0.1409,120),(15,'ru',32,0.166,31),(24,'ru',32,0.1896,299),(13,'ru',32,0.2096,48),(1,'ru',33,0.1192,78),(17,'ru',34,0.1168,62),(29,'ru',34,0.1338,9),(15,'ru',34,0.166,34),(4,'ru',34,0.1991,146),(1,'ru',34,0.3345,239),(24,'ru',34,0.3359,326),(19,'ru',34,0.3642,83.8),(1,'ru',35,0.1192,80),(24,'ru',35,0.1197,77),(23,'ru',35,0.1693,78),(1,'ru',36,0.1192,82),(20,'ru',36,0.1202,205),(4,'ru',36,0.1256,148),(21,'ru',36,0.1942,276),(1,'ru',37,0.1192,83),(1,'ru',38,0.1192,84),(16,'ru',38,0.1415,126),(1,'ru',39,0.1192,85),(1,'ru',40,0.1889,85),(1,'ru',41,0.1192,88),(1,'ru',42,0.1192,88),(1,'ru',43,0.1192,88),(17,'ru',44,0.1168,454),(1,'ru',44,0.1192,90),(22,'ru',44,0.2137,245),(1,'ru',45,0.1192,91),(1,'ru',46,0.1192,92),(21,'ru',47,0.1226,409),(29,'ru',47,0.1338,7),(15,'ru',47,0.166,77),(8,'ru',47,0.1892,12),(1,'ru',47,0.2383,301),(20,'ru',47,0.2405,132.667),(18,'ru',47,0.2462,95.6667),(25,'ru',47,0.2553,244.667),(19,'ru',47,0.2818,182.333),(16,'ru',47,0.283,90.6667),(14,'ru',47,0.2871,76.5),(17,'ru',47,0.328,244.333),(28,'ru',47,0.3297,65.3333),(4,'ru',47,0.3527,104.667),(24,'ru',47,0.3793,256),(1,'ru',48,0.1192,100),(3,'ru',48,0.127,281),(20,'ru',49,0.1202,373),(4,'ru',49,0.1256,161),(1,'ru',49,0.1889,206.5),(13,'ru',49,0.2645,138.667),(1,'ru',50,0.1192,109),(1,'ru',51,0.1192,110),(8,'ru',51,0.1892,9),(1,'ru',52,0.1192,111),(17,'ru',53,0.1168,34),(1,'ru',53,0.1192,112),(15,'ru',53,0.166,9),(4,'ru',53,0.1991,204),(20,'ru',53,0.2405,136),(24,'ru',53,0.3359,334.5),(19,'ru',53,0.3642,99),(1,'ru',54,0.1192,113),(24,'ru',54,0.1197,158),(28,'ru',54,0.1649,74),(20,'ru',54,0.1906,162.5),(17,'ru',54,0.4872,287.647),(1,'ru',55,0.1192,114),(20,'ru',55,0.1202,85),(17,'ru',55,0.4872,288.647),(1,'ru',56,0.2383,288.333),(1,'ru',57,0.1192,122),(4,'ru',57,0.1256,218),(1,'ru',58,0.1192,123),(3,'ru',58,0.127,271),(13,'ru',58,0.1322,179),(21,'ru',59,0.1226,77),(13,'ru',59,0.1322,180),(26,'ru',59,0.1332,83),(1,'ru',59,0.1889,262),(1,'ru',60,0.1192,128),(1,'ru',61,0.1192,130),(1,'ru',62,0.1192,131),(1,'ru',63,0.1192,132),(26,'ru',63,0.1332,43),(16,'ru',63,0.1415,72),(21,'ru',63,0.1942,278),(1,'ru',64,0.1192,135),(1,'ru',65,0.1192,137),(24,'ru',65,0.1197,318),(4,'ru',65,0.1256,264),(19,'ru',65,0.1409,54),(1,'ru',66,0.1192,144),(1,'ru',67,0.1192,152),(6,'ru',67,0.1832,5),(1,'ru',68,0.1192,153),(1,'ru',69,0.1889,153),(1,'ru',70,0.1192,154),(1,'ru',71,0.1192,155),(17,'ru',72,0.1168,105),(1,'ru',72,0.1192,172),(4,'ru',72,0.1256,178),(1,'ru',73,0.1192,173),(24,'ru',73,0.1197,113),(3,'ru',73,0.127,248),(25,'ru',73,0.1277,270),(13,'ru',73,0.1322,237),(28,'ru',73,0.1649,29),(4,'ru',73,0.1991,261.5),(26,'ru',73,0.2111,201),(1,'ru',74,0.1192,174),(24,'ru',75,0.1197,179),(25,'ru',75,0.1277,306),(22,'ru',75,0.1348,26),(28,'ru',75,0.1649,95),(1,'ru',75,0.1889,197.5),(20,'ru',75,0.3607,131.857),(26,'ru',75,0.3739,65.1667),(1,'ru',76,0.1192,176),(1,'ru',77,0.1192,177),(1,'ru',78,0.1192,183),(17,'ru',79,0.1168,125),(1,'ru',79,0.1192,194),(25,'ru',79,0.1277,25),(18,'ru',79,0.1951,206.5),(13,'ru',79,0.2645,97.6667),(17,'ru',80,0.1168,174),(1,'ru',80,0.1192,195),(21,'ru',80,0.1226,117),(25,'ru',80,0.1277,244),(16,'ru',80,0.2243,110),(13,'ru',80,0.3418,104.6),(1,'ru',81,0.1192,196),(25,'ru',81,0.2023,42.5),(1,'ru',82,0.1192,197),(1,'ru',83,0.1192,204),(21,'ru',83,0.1942,325.5),(1,'ru',84,0.1192,205),(1,'ru',85,0.1192,208),(26,'ru',86,0.1332,33),(22,'ru',86,0.1348,123),(13,'ru',86,0.2096,102),(17,'ru',86,0.2337,40.3333),(1,'ru',86,0.2383,445),(20,'ru',86,0.2405,381.333),(23,'ru',86,0.2683,52.5),(19,'ru',86,0.3271,113),(16,'ru',86,0.3658,102.2),(14,'ru',86,0.4108,246.111),(24,'ru',86,0.4428,243.917),(15,'ru',86,0.4662,36.3333),(4,'ru',86,0.4908,177.071),(1,'ru',87,0.1192,210),(1,'ru',88,0.1192,211),(4,'ru',88,0.1256,34),(1,'ru',89,0.1192,212),(4,'ru',89,0.1256,67),(27,'ru',90,0.1508,23),(1,'ru',90,0.1889,212),(4,'ru',90,0.1991,67),(18,'ru',91,0.1231,15),(1,'ru',91,0.1889,236),(17,'ru',92,0.1168,223),(1,'ru',92,0.1192,221),(24,'ru',92,0.1197,5),(22,'ru',92,0.1348,27),(23,'ru',92,0.1693,6),(1,'ru',93,0.1192,222),(24,'ru',93,0.1197,6),(20,'ru',93,0.1202,434),(14,'ru',93,0.1236,511),(4,'ru',93,0.1256,113),(13,'ru',93,0.1322,112),(26,'ru',93,0.1332,25),(22,'ru',93,0.1348,28),(16,'ru',93,0.1415,63),(23,'ru',93,0.2683,4.5),(17,'ru',93,0.302,262.8),(25,'ru',94,0.1277,26),(1,'ru',94,0.1889,300),(1,'ru',95,0.1192,224),(1,'ru',96,0.1192,226),(20,'ru',96,0.1202,494),(1,'ru',97,0.1192,227),(1,'ru',98,0.1192,228),(13,'ru',98,0.1322,41),(1,'ru',99,0.1192,230),(1,'ru',100,0.1192,231),(1,'ru',101,0.1192,233),(1,'ru',102,0.1192,239),(1,'ru',103,0.1192,246),(1,'ru',104,0.1192,247),(24,'ru',104,0.1197,236),(25,'ru',104,0.1277,146),(15,'ru',104,0.166,53),(22,'ru',104,0.2137,206),(29,'ru',104,0.3106,101.75),(1,'ru',105,0.1192,249),(1,'ru',106,0.1192,254),(26,'ru',106,0.1332,77),(4,'ru',106,0.1991,136.5),(17,'ru',106,0.2337,145.333),(18,'ru',106,0.2462,265),(1,'ru',107,0.1192,265),(24,'ru',107,0.1197,160),(13,'ru',107,0.1322,39),(22,'ru',107,0.1348,16),(28,'ru',107,0.1649,76),(14,'ru',107,0.196,502.5),(1,'ru',108,0.1192,268),(1,'ru',109,0.1192,269),(24,'ru',109,0.1197,84),(20,'ru',109,0.1202,492),(3,'ru',109,0.127,27),(26,'ru',109,0.1332,188),(23,'ru',109,0.1693,85),(22,'ru',109,0.2137,73.5),(24,'ru',110,0.1197,234),(27,'ru',110,0.1508,162),(15,'ru',110,0.166,51),(1,'ru',110,0.2383,275.667),(21,'ru',111,0.1226,46),(29,'ru',111,0.1338,216),(22,'ru',111,0.1348,73),(1,'ru',111,0.1889,277.5),(1,'ru',112,0.2383,277.667),(21,'ru',112,0.2846,286.25),(22,'ru',112,0.313,54.75),(26,'ru',112,0.5204,241.357),(1,'ru',113,0.2383,278.667),(1,'ru',114,0.1192,275),(14,'ru',114,0.1236,313),(1,'ru',115,0.1192,278),(1,'ru',116,0.1192,280),(24,'ru',116,0.1197,162),(22,'ru',116,0.1348,9),(27,'ru',116,0.1508,9),(28,'ru',116,0.1649,78),(25,'ru',116,0.2023,238.5),(1,'ru',117,0.1192,281),(1,'ru',118,0.1192,282),(4,'ru',118,0.1256,315),(27,'ru',118,0.1508,167),(24,'ru',118,0.1896,33),(23,'ru',118,0.2683,34),(1,'ru',119,0.1192,287),(1,'ru',120,0.1192,288),(20,'ru',120,0.1202,428),(1,'ru',121,0.1192,297),(1,'ru',122,0.1192,306),(3,'ru',122,0.127,259),(6,'ru',122,0.1832,79),(1,'ru',123,0.1192,307),(1,'ru',124,0.1192,308),(20,'ru',125,0.1202,236),(21,'ru',125,0.1226,180),(4,'ru',125,0.1256,49),(16,'ru',125,0.1415,68),(1,'ru',125,0.1889,344.5),(3,'ru',125,0.2012,164.5),(18,'ru',125,0.2858,207.5),(1,'ru',126,0.1192,310),(1,'ru',127,0.1192,311),(17,'ru',128,0.1168,84),(1,'ru',128,0.1192,313),(24,'ru',128,0.1197,8),(13,'ru',128,0.1322,197),(22,'ru',128,0.1348,117),(23,'ru',128,0.1693,9),(18,'ru',128,0.1951,117.5),(1,'ru',129,0.1192,314),(4,'ru',129,0.1256,44),(1,'ru',130,0.1192,315),(4,'ru',130,0.1256,117),(3,'ru',130,0.127,125),(26,'ru',130,0.1332,176),(15,'ru',130,0.166,39),(29,'ru',130,0.212,125),(24,'ru',130,0.2393,162.333),(28,'ru',130,0.2613,48.5),(1,'ru',131,0.1192,316),(4,'ru',131,0.1256,120),(26,'ru',131,0.2111,101.5),(24,'ru',131,0.2778,116.75),(28,'ru',131,0.3828,32.75),(1,'ru',132,0.1192,318),(4,'ru',132,0.1256,118),(26,'ru',132,0.2111,103.5),(24,'ru',132,0.2778,118.75),(28,'ru',132,0.3828,34.75),(1,'ru',133,0.1192,319),(3,'ru',133,0.127,279),(19,'ru',133,0.1409,15),(15,'ru',133,0.166,38),(4,'ru',133,0.1991,162.5),(26,'ru',133,0.3093,109.25),(24,'ru',133,0.3359,163.167),(28,'ru',133,0.3828,35.75),(1,'ru',134,0.1192,320),(25,'ru',134,0.1277,104),(16,'ru',134,0.1415,94),(22,'ru',134,0.2137,233),(4,'ru',134,0.2513,228.333),(9,'ru',134,0.2514,102),(1,'ru',135,0.1192,326),(17,'ru',136,0.1168,61),(20,'ru',136,0.1202,316),(18,'ru',136,0.1231,16),(3,'ru',136,0.127,287),(24,'ru',136,0.1896,351.5),(25,'ru',136,0.2023,47.5),(19,'ru',136,0.2233,87.5),(1,'ru',136,0.2383,343.667),(1,'ru',137,0.1192,336),(18,'ru',137,0.1231,142),(1,'ru',138,0.1889,346.5),(1,'ru',139,0.1889,347.5),(1,'ru',140,0.1889,348.5),(24,'ru',141,0.1197,133),(18,'ru',141,0.1231,152),(26,'ru',141,0.1332,85),(29,'ru',141,0.1338,178),(28,'ru',141,0.1649,49),(4,'ru',141,0.1991,137.5),(1,'ru',141,0.2767,398.25),(1,'ru',142,0.1192,341),(21,'ru',142,0.1226,448),(18,'ru',142,0.1231,11),(16,'ru',142,0.2243,67.5),(17,'ru',142,0.302,245.8),(1,'ru',143,0.1192,343),(3,'ru',143,0.3282,104.4),(1,'ru',144,0.1192,346),(1,'ru',145,0.1192,348),(1,'ru',146,0.1192,349),(19,'ru',146,0.1409,123),(16,'ru',146,0.1415,26),(23,'ru',146,0.1693,76),(24,'ru',146,0.1896,231),(1,'ru',147,0.1192,350),(1,'ru',148,0.1192,352),(1,'ru',149,0.1192,353),(1,'ru',150,0.1192,355),(1,'ru',151,0.2767,421.25),(1,'ru',152,0.1192,372),(20,'ru',153,0.1202,282),(4,'ru',153,0.1256,39),(1,'ru',153,0.2383,499.333),(1,'ru',154,0.1192,375),(1,'ru',155,0.1192,376),(21,'ru',155,0.1226,1),(25,'ru',155,0.1277,51),(27,'ru',155,0.1508,11),(9,'ru',155,0.1586,121),(28,'ru',155,0.1649,50),(18,'ru',155,0.2462,85.3333),(3,'ru',155,0.2539,141.333),(15,'ru',155,0.2632,14),(13,'ru',155,0.2645,33.6667),(23,'ru',155,0.2683,73.5),(4,'ru',155,0.2917,71.5),(24,'ru',155,0.3093,134.6),(1,'ru',156,0.1192,378),(1,'ru',157,0.1192,379),(1,'ru',158,0.1192,382),(1,'ru',159,0.2383,438.667),(17,'ru',160,0.1168,533),(24,'ru',160,0.1197,437),(20,'ru',160,0.1202,437),(26,'ru',160,0.1332,18),(19,'ru',160,0.1409,173),(1,'ru',160,0.1889,426.5),(1,'ru',161,0.1192,405),(1,'ru',162,0.1889,422.5),(29,'ru',163,0.1338,241),(1,'ru',163,0.1889,442.5),(1,'ru',164,0.1192,417),(20,'ru',165,0.1202,72),(22,'ru',165,0.1348,232),(1,'ru',165,0.2767,470.25),(1,'ru',166,0.1192,422),(1,'ru',167,0.1192,423),(1,'ru',168,0.1192,424),(22,'ru',169,0.2137,35),(16,'ru',169,0.2243,83.5),(20,'ru',169,0.2405,102.667),(29,'ru',169,0.2675,126),(1,'ru',169,0.2767,477),(26,'ru',169,0.3443,202.2),(21,'ru',169,0.3885,265),(1,'ru',170,0.1192,437),(1,'ru',171,0.1192,438),(1,'ru',172,0.1192,439),(1,'ru',173,0.1192,440),(8,'ru',173,0.1892,29),(1,'ru',174,0.1192,443),(1,'ru',175,0.1192,449),(24,'ru',176,0.1197,363),(19,'ru',176,0.1409,99),(1,'ru',176,0.2383,492.333),(1,'ru',177,0.1192,452),(1,'ru',178,0.1192,454),(14,'ru',178,0.1236,491),(21,'ru',178,0.1942,236),(1,'ru',179,0.1192,458),(20,'ru',179,0.1202,458),(13,'ru',179,0.1322,172),(22,'ru',179,0.1348,190),(1,'ru',180,0.1192,460),(1,'ru',181,0.1192,461),(14,'ru',181,0.1236,397),(1,'ru',182,0.1889,469.5),(17,'ru',183,0.1168,78),(20,'ru',183,0.1202,475),(14,'ru',183,0.1236,73),(25,'ru',183,0.1277,289),(1,'ru',183,0.1889,512.5),(1,'ru',184,0.1192,475),(1,'ru',185,0.1192,476),(1,'ru',186,0.1192,481),(1,'ru',187,0.1192,482),(24,'ru',187,0.1197,7),(22,'ru',187,0.1348,174),(9,'ru',187,0.1586,90),(23,'ru',187,0.1693,8),(1,'ru',188,0.1192,485),(22,'ru',188,0.1348,220),(1,'ru',189,0.1192,492),(6,'ru',189,0.1832,17),(1,'ru',190,0.1192,493),(4,'ru',190,0.1256,265),(13,'ru',190,0.1322,148),(22,'ru',190,0.2137,181.5),(1,'ru',191,0.1192,498),(13,'ru',191,0.2645,127),(1,'ru',192,0.1192,500),(13,'ru',192,0.1322,201),(17,'ru',192,0.1852,362.5),(1,'ru',193,0.1889,510.5),(1,'ru',194,0.1192,503),(18,'ru',194,0.1231,40),(15,'ru',194,0.166,29),(23,'ru',194,0.1693,11),(24,'ru',194,0.1896,111),(4,'ru',194,0.1991,167),(20,'ru',194,0.2405,117),(27,'ru',194,0.3502,151),(1,'ru',195,0.1192,504),(1,'ru',196,0.1192,506),(1,'ru',197,0.1192,507),(13,'ru',197,0.1322,186),(26,'ru',197,0.1332,72),(1,'ru',198,0.1192,509),(1,'ru',199,0.1192,512),(21,'ru',199,0.1942,67.5),(24,'ru',200,0.1197,299),(20,'ru',200,0.1202,304),(14,'ru',200,0.1236,125),(19,'ru',200,0.1409,35),(1,'ru',200,0.1889,535.5),(17,'ru',201,0.1168,382),(1,'ru',201,0.1192,522),(13,'ru',201,0.2096,170),(1,'ru',202,0.1192,525),(1,'ru',203,0.1192,529),(22,'ru',203,0.1348,114),(1,'ru',204,0.1192,530),(1,'ru',205,0.1192,531),(29,'ru',205,0.2675,135.333),(14,'ru',205,0.4433,293.182),(1,'ru',206,0.1192,544),(20,'ru',206,0.1202,28),(18,'ru',206,0.1231,61),(1,'ru',207,0.1192,547),(1,'ru',208,0.1192,549),(4,'ru',208,0.1256,317),(3,'ru',208,0.127,249),(1,'ru',209,0.1192,552),(1,'ru',210,0.1192,553),(24,'ru',210,0.1197,299),(20,'ru',210,0.1202,304),(19,'ru',210,0.1409,35),(1,'ru',211,0.1192,553),(24,'ru',211,0.1197,299),(14,'ru',211,0.1236,134),(13,'ru',211,0.1322,19),(19,'ru',211,0.1409,35),(20,'ru',211,0.1906,253),(1,'ru',212,0.1192,557),(1,'ru',213,0.1192,559),(24,'ru',213,0.1197,61),(3,'ru',213,0.127,252),(23,'ru',213,0.1693,62),(4,'ru',213,0.2513,124),(1,'ru',214,0.1192,560),(1,'ru',215,0.1192,561),(20,'ru',215,0.1202,425),(22,'ru',215,0.2137,248.5),(17,'ru',216,0.1168,48),(1,'ru',216,0.1192,563),(16,'ru',216,0.1415,113),(19,'ru',216,0.2233,113),(4,'ru',216,0.2513,228),(15,'ru',216,0.2632,35.5),(24,'ru',216,0.2778,297.75),(1,'ru',217,0.1192,567),(24,'ru',217,0.1197,282),(19,'ru',217,0.1409,18),(1,'ru',218,0.1192,568),(28,'ru',218,0.1649,17),(23,'ru',218,0.1693,81),(26,'ru',218,0.2111,15),(19,'ru',218,0.2818,99),(24,'ru',218,0.3093,254),(17,'ru',219,0.1168,99),(13,'ru',219,0.1322,159),(22,'ru',219,0.1348,130),(9,'ru',219,0.1586,120),(8,'ru',219,0.1892,2),(25,'ru',220,0.1277,100),(17,'ru',221,0.1168,10),(24,'ru',221,0.1197,325),(25,'ru',221,0.1277,114),(19,'ru',221,0.1409,61),(4,'ru',221,0.1991,146.5),(24,'ru',223,0.1197,238),(4,'ru',223,0.1256,369),(15,'ru',223,0.166,55),(22,'ru',223,0.2137,240),(21,'ru',225,0.1226,84),(16,'ru',225,0.1415,127),(17,'ru',226,0.1168,27),(24,'ru',226,0.1197,388),(20,'ru',226,0.1202,178),(13,'ru',226,0.1322,124),(19,'ru',226,0.1409,124),(16,'ru',226,0.2243,108),(9,'ru',227,0.1586,24),(21,'ru',227,0.1942,109.5),(25,'ru',227,0.2023,75.5),(29,'ru',227,0.3106,149),(25,'ru',228,0.1277,276),(28,'ru',228,0.1649,87),(15,'ru',228,0.166,76),(24,'ru',228,0.1896,215),(20,'ru',228,0.1906,78.5),(13,'ru',228,0.2096,166.5),(16,'ru',228,0.2243,58),(17,'ru',228,0.2337,86.3333),(18,'ru',228,0.2858,165),(25,'ru',229,0.2023,122),(24,'ru',229,0.2393,395),(19,'ru',229,0.2818,131),(18,'ru',229,0.3182,173.4),(16,'ru',229,0.3286,92),(20,'ru',229,0.3811,302.25),(17,'ru',229,0.3881,267.222),(21,'ru',229,0.4071,250.667),(14,'ru',233,0.1236,538),(4,'ru',235,0.1256,358),(29,'ru',235,0.1338,246),(24,'ru',236,0.1197,329),(18,'ru',236,0.1231,55),(25,'ru',236,0.1277,346),(19,'ru',236,0.1409,65),(16,'ru',236,0.2243,54),(20,'ru',237,0.1202,223),(18,'ru',237,0.1231,5),(14,'ru',237,0.1236,14),(26,'ru',237,0.1332,179),(19,'ru',237,0.1409,176),(27,'ru',237,0.1508,4),(28,'ru',237,0.1649,85),(15,'ru',237,0.166,72),(25,'ru',237,0.2023,37.5),(23,'ru',237,0.2683,50.5),(24,'ru',237,0.3093,192.6),(29,'ru',238,0.2675,155.667),(29,'ru',245,0.1338,249),(4,'ru',247,0.1256,112),(23,'ru',247,0.1693,1),(24,'ru',249,0.1197,181),(28,'ru',249,0.1649,97),(27,'ru',249,0.3502,111.25),(20,'ru',250,0.1202,13),(27,'ru',250,0.4235,87.1667),(20,'ru',252,0.1906,378),(18,'ru',253,0.1231,145),(25,'ru',253,0.1277,313),(20,'ru',253,0.2792,172),(26,'ru',253,0.3739,119.167),(22,'ru',253,0.4478,81.5556),(20,'ru',254,0.1202,412),(18,'ru',254,0.1231,39),(4,'ru',254,0.1256,184),(26,'ru',254,0.1332,7),(29,'ru',254,0.1338,269),(22,'ru',254,0.1348,132),(19,'ru',254,0.1409,17),(16,'ru',254,0.1415,11),(15,'ru',254,0.166,4),(24,'ru',254,0.1896,234),(24,'ru',255,0.1197,76),(4,'ru',255,0.1256,107),(23,'ru',255,0.1693,77),(17,'ru',256,0.1168,539),(4,'ru',256,0.1256,341),(29,'ru',256,0.1338,4),(16,'ru',256,0.2243,37),(13,'ru',257,0.1322,18),(29,'ru',257,0.1338,271),(22,'ru',257,0.1348,194),(9,'ru',257,0.1586,15),(4,'ru',257,0.1991,98.5),(4,'ru',258,0.1256,125),(29,'ru',258,0.1338,6),(18,'ru',258,0.1951,37.5),(17,'ru',259,0.1168,56),(25,'ru',259,0.1277,142),(18,'ru',259,0.1951,257),(3,'ru',260,0.127,278),(4,'ru',260,0.1991,133.5),(16,'ru',260,0.2243,123.5),(24,'ru',260,0.2393,211.667),(15,'ru',260,0.3321,28.6667),(4,'ru',261,0.1256,190),(18,'ru',262,0.1231,312),(29,'ru',262,0.1338,185),(14,'ru',262,0.196,456.5),(24,'ru',263,0.1197,350),(18,'ru',263,0.1231,313),(19,'ru',263,0.1409,86),(29,'ru',263,0.495,128.083),(20,'ru',264,0.1202,154),(25,'ru',264,0.1277,301),(6,'ru',264,0.2903,39.5),(3,'ru',264,0.3564,160.167),(24,'ru',265,0.1197,4),(14,'ru',265,0.1236,71),(4,'ru',265,0.1256,5),(26,'ru',265,0.1332,37),(29,'ru',265,0.1338,87),(23,'ru',265,0.1693,5),(18,'ru',265,0.1951,179),(24,'ru',266,0.1197,83),(22,'ru',266,0.1348,1),(23,'ru',266,0.1693,84),(13,'ru',268,0.1322,9),(20,'ru',269,0.1202,396),(25,'ru',269,0.1277,256),(26,'ru',269,0.1332,73),(9,'ru',269,0.1586,107),(24,'ru',269,0.2393,373.667),(19,'ru',269,0.2818,109.667),(16,'ru',269,0.3286,89),(18,'ru',269,0.3456,223.167),(13,'ru',269,0.4393,134.111),(17,'ru',269,0.505,242.632),(24,'ru',270,0.1197,301),(21,'ru',270,0.1226,3),(25,'ru',270,0.1277,304),(29,'ru',270,0.1338,105),(22,'ru',270,0.1348,102),(19,'ru',270,0.1409,37),(26,'ru',270,0.3093,138.5),(29,'ru',271,0.1338,91),(21,'ru',271,0.1942,63.5),(13,'ru',272,0.1322,122),(17,'ru',272,0.1852,371.5),(21,'ru',272,0.1942,64.5),(29,'ru',274,0.1338,10),(18,'ru',277,0.1231,234),(13,'ru',277,0.1322,143),(20,'ru',277,0.2405,291),(21,'ru',277,0.2846,260),(14,'ru',277,0.4278,165.9),(17,'ru',278,0.1168,429),(16,'ru',278,0.1415,45),(21,'ru',279,0.1226,453),(25,'ru',279,0.1277,266),(20,'ru',280,0.1202,410),(27,'ru',280,0.1508,2),(9,'ru',280,0.1586,1),(15,'ru',280,0.166,70),(23,'ru',280,0.1693,3),(18,'ru',280,0.1951,20),(26,'ru',280,0.2111,95),(29,'ru',280,0.212,131),(28,'ru',280,0.2613,41.5),(19,'ru',280,0.2818,97),(25,'ru',280,0.2964,90.5),(24,'ru',280,0.359,227),(4,'ru',280,0.3769,186.857),(8,'ru',280,0.4393,30),(13,'ru',282,0.2096,78),(6,'ru',283,0.1832,12),(24,'ru',284,0.1197,112),(3,'ru',284,0.127,251),(28,'ru',284,0.1649,28),(4,'ru',284,0.2513,86.6667),(21,'ru',286,0.1226,196),(14,'ru',286,0.1236,507),(4,'ru',286,0.1256,185),(25,'ru',286,0.1277,127),(26,'ru',286,0.1332,8),(28,'ru',286,0.1649,13),(15,'ru',286,0.166,5),(19,'ru',286,0.2233,55.5),(24,'ru',286,0.2778,231),(17,'ru',286,0.302,437.6),(25,'ru',287,0.1277,185),(19,'ru',287,0.1409,63),(28,'ru',287,0.1649,63),(15,'ru',287,0.166,61),(24,'ru',287,0.2393,239.333),(4,'ru',287,0.2513,158.667),(20,'ru',288,0.1202,181),(18,'ru',288,0.1231,187),(13,'ru',288,0.1322,165),(16,'ru',288,0.1415,10),(16,'ru',289,0.1415,120),(14,'ru',289,0.196,25.5),(4,'ru',291,0.1256,207),(3,'ru',291,0.127,181),(28,'ru',291,0.1649,18),(19,'ru',291,0.2233,62.5),(24,'ru',291,0.2393,251.667),(28,'ru',295,0.1649,40),(19,'ru',295,0.2233,18.5),(24,'ru',295,0.2393,229.667),(24,'ru',299,0.1197,367),(19,'ru',299,0.1409,103),(17,'ru',301,0.1168,116),(4,'ru',301,0.1256,304),(25,'ru',307,0.1277,115),(18,'ru',307,0.1951,197),(21,'ru',309,0.1226,12),(3,'ru',316,0.127,1),(3,'ru',317,0.127,2),(3,'ru',318,0.127,3),(3,'ru',319,0.127,4),(18,'ru',319,0.1951,120.5),(3,'ru',320,0.3282,58.6),(3,'ru',321,0.2012,69),(4,'ru',322,0.1256,350),(3,'ru',322,0.2012,70),(3,'ru',323,0.127,9),(3,'ru',324,0.2012,9),(3,'ru',325,0.127,10),(3,'ru',326,0.127,11),(3,'ru',327,0.127,12),(4,'ru',328,0.1256,324),(3,'ru',328,0.3282,91.4),(3,'ru',329,0.4392,135.9),(3,'ru',330,0.2012,54.5),(20,'ru',331,0.1202,83),(4,'ru',331,0.1256,122),(9,'ru',331,0.1586,25),(3,'ru',331,0.3564,152.833),(14,'ru',332,0.1236,35),(3,'ru',332,0.4392,157.7),(24,'ru',333,0.1896,353),(3,'ru',333,0.2012,81.5),(19,'ru',333,0.2233,89),(3,'ru',334,0.127,28),(3,'ru',335,0.2012,28),(3,'ru',336,0.127,29),(3,'ru',337,0.127,30),(3,'ru',338,0.2539,59.3333),(3,'ru',339,0.2948,71),(3,'ru',340,0.127,35),(3,'ru',341,0.2948,195.5),(3,'ru',342,0.127,39),(3,'ru',343,0.127,40),(3,'ru',344,0.2012,40),(3,'ru',345,0.127,41),(8,'ru',345,0.1892,70),(9,'ru',345,0.2514,109),(3,'ru',346,0.127,48),(13,'ru',346,0.1322,236),(3,'ru',347,0.127,50),(13,'ru',347,0.1322,66),(26,'ru',347,0.1332,187),(27,'ru',347,0.1508,14),(8,'ru',347,0.1892,8),(3,'ru',348,0.127,51),(3,'ru',349,0.2012,175),(3,'ru',350,0.127,54),(3,'ru',351,0.127,55),(3,'ru',352,0.127,61),(3,'ru',353,0.127,61),(3,'ru',354,0.127,62),(3,'ru',355,0.127,63),(3,'ru',356,0.2539,157),(14,'ru',357,0.1236,510),(26,'ru',357,0.1332,24),(16,'ru',357,0.1415,62),(9,'ru',357,0.1586,73),(3,'ru',357,0.2012,91.5),(17,'ru',357,0.2713,271.5),(3,'ru',358,0.2012,123),(3,'ru',359,0.127,79),(3,'ru',360,0.127,79),(3,'ru',361,0.127,79),(3,'ru',362,0.127,80),(3,'ru',363,0.127,81),(3,'ru',364,0.127,87),(24,'ru',365,0.1197,227),(15,'ru',365,0.166,44),(3,'ru',365,0.2012,108.5),(3,'ru',366,0.127,99),(3,'ru',367,0.127,100),(3,'ru',368,0.127,101),(3,'ru',369,0.127,102),(3,'ru',370,0.127,106),(3,'ru',371,0.127,109),(24,'ru',372,0.1197,344),(19,'ru',372,0.1409,80),(3,'ru',372,0.2948,195.25),(3,'ru',373,0.2012,167),(3,'ru',374,0.127,117),(3,'ru',375,0.127,126),(3,'ru',376,0.127,127),(25,'ru',376,0.1277,139),(3,'ru',377,0.2012,127),(25,'ru',377,0.2023,139),(3,'ru',378,0.127,128),(3,'ru',379,0.127,129),(3,'ru',380,0.3809,182.857),(3,'ru',381,0.127,133),(3,'ru',382,0.127,133),(3,'ru',383,0.127,134),(3,'ru',384,0.127,135),(3,'ru',385,0.2012,179.5),(3,'ru',386,0.2012,179.5),(3,'ru',387,0.127,174),(3,'ru',388,0.127,175),(3,'ru',389,0.127,176),(18,'ru',390,0.1231,154),(4,'ru',390,0.1256,191),(3,'ru',390,0.127,179),(3,'ru',391,0.127,198),(24,'ru',392,0.1197,99),(3,'ru',392,0.127,199),(26,'ru',392,0.1332,10),(28,'ru',392,0.1649,15),(3,'ru',393,0.2012,246),(3,'ru',394,0.127,206),(3,'ru',395,0.2012,206),(3,'ru',396,0.127,207),(3,'ru',397,0.127,208),(3,'ru',398,0.127,210),(3,'ru',399,0.127,215),(3,'ru',400,0.127,221),(3,'ru',401,0.2012,221),(3,'ru',402,0.127,222),(3,'ru',403,0.127,223),(3,'ru',404,0.2012,233.5),(3,'ru',405,0.127,237),(22,'ru',406,0.1348,296),(3,'ru',406,0.2012,268),(3,'ru',407,0.127,247),(3,'ru',408,0.127,250),(3,'ru',409,0.127,254),(3,'ru',410,0.127,255),(3,'ru',411,0.127,256),(3,'ru',412,0.127,256),(3,'ru',413,0.127,257),(3,'ru',414,0.127,258),(3,'ru',415,0.127,260),(3,'ru',416,0.127,262),(3,'ru',417,0.127,265),(3,'ru',418,0.127,267),(3,'ru',419,0.127,268),(20,'ru',420,0.1202,482),(3,'ru',420,0.127,272),(29,'ru',420,0.1338,146),(17,'ru',420,0.1852,71),(21,'ru',420,0.1942,251),(3,'ru',421,0.127,273),(3,'ru',422,0.127,274),(3,'ru',423,0.127,275),(3,'ru',424,0.127,277),(3,'ru',425,0.127,283),(17,'ru',426,0.1168,7),(24,'ru',426,0.1197,322),(18,'ru',426,0.1231,18),(4,'ru',426,0.1256,276),(3,'ru',426,0.127,288),(19,'ru',426,0.1409,58),(3,'ru',427,0.127,291),(3,'ru',428,0.127,294),(3,'ru',429,0.127,295),(4,'ru',430,0.1991,1.5),(21,'ru',431,0.1226,215),(25,'ru',431,0.1277,122),(13,'ru',431,0.1322,93),(14,'ru',431,0.196,465.5),(16,'ru',431,0.2243,110),(4,'ru',431,0.2917,133.25),(19,'ru',432,0.1409,160),(15,'ru',432,0.166,24),(24,'ru',432,0.1896,315.5),(4,'ru',432,0.1991,70.5),(4,'ru',433,0.1256,10),(6,'ru',433,0.2903,43),(28,'ru',434,0.1649,48),(15,'ru',434,0.166,63),(24,'ru',434,0.1896,189),(4,'ru',434,0.1991,136.5),(4,'ru',435,0.1256,17),(4,'ru',436,0.1991,92.5),(4,'ru',437,0.1256,18),(25,'ru',437,0.1277,330),(16,'ru',437,0.2243,55),(4,'ru',438,0.2917,141.75),(4,'ru',439,0.1256,21),(4,'ru',440,0.1256,23),(4,'ru',441,0.1256,36),(4,'ru',442,0.1256,41),(14,'ru',442,0.196,109),(4,'ru',443,0.1256,45),(4,'ru',444,0.1256,47),(4,'ru',445,0.1256,50),(26,'ru',446,0.1332,27),(22,'ru',446,0.1348,113),(4,'ru',446,0.1991,70.5),(24,'ru',447,0.1197,426),(19,'ru',447,0.1409,162),(4,'ru',447,0.2513,126.667),(24,'ru',448,0.1197,413),(4,'ru',448,0.1256,59),(19,'ru',448,0.1409,149),(4,'ru',449,0.1256,64),(20,'ru',450,0.1202,338),(21,'ru',450,0.1226,82),(4,'ru',450,0.1256,72),(4,'ru',451,0.1256,73),(4,'ru',452,0.1256,75),(24,'ru',453,0.1197,65),(4,'ru',453,0.1256,77),(23,'ru',453,0.1693,66),(4,'ru',454,0.1256,88),(4,'ru',455,0.1256,90),(4,'ru',456,0.1256,94),(4,'ru',457,0.1991,147),(4,'ru',458,0.1256,97),(16,'ru',458,0.1415,179),(28,'ru',458,0.1649,42),(15,'ru',458,0.166,23),(24,'ru',458,0.1896,166),(4,'ru',459,0.1256,98),(24,'ru',460,0.1197,119),(4,'ru',460,0.1256,109),(28,'ru',460,0.1649,35),(4,'ru',461,0.1256,115),(24,'ru',462,0.1197,226),(4,'ru',462,0.1256,115),(15,'ru',462,0.166,43),(4,'ru',463,0.1256,123),(6,'ru',463,0.1832,25),(24,'ru',464,0.1197,30),(18,'ru',464,0.1231,6),(4,'ru',464,0.1256,124),(25,'ru',464,0.1277,230),(23,'ru',464,0.1693,31),(14,'ru',465,0.1236,27),(4,'ru',465,0.1256,135),(4,'ru',466,0.1256,136),(4,'ru',467,0.1256,158),(4,'ru',468,0.1256,160),(4,'ru',469,0.1256,166),(4,'ru',470,0.1256,168),(4,'ru',471,0.2513,229.667),(4,'ru',472,0.1991,242.5),(24,'ru',473,0.1197,354),(4,'ru',473,0.1256,181),(19,'ru',473,0.1409,90),(24,'ru',474,0.1896,354),(19,'ru',474,0.2233,90),(4,'ru',474,0.2513,232),(24,'ru',475,0.1197,190),(4,'ru',475,0.1256,187),(15,'ru',475,0.166,7),(24,'ru',476,0.1896,190),(4,'ru',476,0.1991,187),(15,'ru',476,0.2632,7),(4,'ru',477,0.1256,192),(17,'ru',478,0.1168,102),(13,'ru',478,0.1322,14),(22,'ru',478,0.1348,244),(4,'ru',478,0.1991,272),(4,'ru',479,0.1256,209),(4,'ru',480,0.1256,211),(4,'ru',481,0.1256,217),(4,'ru',482,0.1256,225),(4,'ru',483,0.1256,226),(4,'ru',484,0.1991,241.5),(29,'ru',484,0.2675,156.667),(4,'ru',485,0.1256,229),(4,'ru',486,0.1256,230),(24,'ru',487,0.1197,340),(4,'ru',487,0.1256,231),(19,'ru',487,0.1409,76),(4,'ru',488,0.1256,235),(4,'ru',489,0.1256,236),(26,'ru',489,0.1332,98),(17,'ru',490,0.1168,389),(4,'ru',490,0.1256,239),(4,'ru',491,0.1256,242),(4,'ru',492,0.1256,251),(4,'ru',493,0.1256,252),(24,'ru',494,0.1197,60),(4,'ru',494,0.1256,255),(23,'ru',494,0.1693,61),(4,'ru',495,0.1256,258),(4,'ru',496,0.1256,272),(20,'ru',497,0.1202,249),(4,'ru',497,0.1256,274),(16,'ru',497,0.1415,58),(18,'ru',497,0.1951,291.5),(17,'ru',497,0.2713,186.5),(4,'ru',498,0.1256,277),(17,'ru',499,0.1168,9),(4,'ru',499,0.1256,278),(25,'ru',499,0.1277,262),(13,'ru',499,0.1322,116),(4,'ru',500,0.1256,282),(4,'ru',501,0.1256,284),(4,'ru',502,0.1256,287),(27,'ru',502,0.1508,6),(17,'ru',503,0.1168,52),(4,'ru',503,0.1256,289),(16,'ru',503,0.1415,4),(4,'ru',504,0.1256,292),(26,'ru',504,0.1332,111),(8,'ru',504,0.1892,24),(4,'ru',505,0.1256,293),(4,'ru',506,0.1991,321.5),(17,'ru',507,0.1168,133),(20,'ru',507,0.1202,484),(4,'ru',507,0.1256,300),(24,'ru',508,0.1197,150),(4,'ru',508,0.1256,302),(28,'ru',508,0.1649,66),(4,'ru',509,0.1256,314),(4,'ru',510,0.1256,318),(9,'ru',511,0.1586,7),(4,'ru',511,0.2513,346),(4,'ru',512,0.1256,320),(4,'ru',513,0.1256,323),(18,'ru',514,0.1231,51),(4,'ru',514,0.1256,327),(4,'ru',515,0.1256,328),(4,'ru',516,0.1256,329),(4,'ru',517,0.1256,331),(4,'ru',518,0.1256,333),(4,'ru',519,0.1256,342),(4,'ru',520,0.1256,345),(4,'ru',521,0.1256,346),(4,'ru',522,0.1256,348),(4,'ru',523,0.1256,349),(4,'ru',524,0.1256,352),(4,'ru',525,0.1256,353),(4,'ru',526,0.1256,355),(14,'ru',527,0.1236,81),(4,'ru',527,0.1256,356),(24,'ru',527,0.1896,354),(19,'ru',527,0.2233,90),(4,'ru',528,0.1256,371),(4,'ru',529,0.1256,373),(4,'ru',530,0.1256,377),(5,'ru',531,0.2314,1),(6,'ru',532,0.1832,1),(6,'ru',533,0.1832,3),(6,'ru',534,0.1832,6),(6,'ru',535,0.1832,13),(6,'ru',536,0.2903,26),(6,'ru',537,0.2903,26.5),(6,'ru',538,0.1832,18),(24,'ru',539,0.1197,385),(19,'ru',539,0.1409,121),(16,'ru',539,0.1415,24),(6,'ru',539,0.1832,20),(21,'ru',540,0.1226,399),(29,'ru',540,0.1338,89),(6,'ru',540,0.1832,21),(13,'ru',540,0.2096,75),(17,'ru',541,0.1168,124),(18,'ru',541,0.1231,251),(25,'ru',541,0.1277,349),(16,'ru',541,0.1415,9),(6,'ru',541,0.1832,23),(17,'ru',542,0.1168,388),(6,'ru',542,0.1832,27),(6,'ru',543,0.1832,28),(13,'ru',544,0.1322,62),(12,'ru',544,0.2314,2),(6,'ru',544,0.2903,36),(6,'ru',545,0.1832,36),(24,'ru',546,0.1197,144),(28,'ru',546,0.1649,60),(6,'ru',546,0.1832,39),(19,'ru',547,0.1409,127),(15,'ru',547,0.166,42),(6,'ru',547,0.1832,41),(23,'ru',547,0.2683,14),(24,'ru',547,0.2778,160.5),(6,'ru',548,0.1832,42),(17,'ru',549,0.1168,384),(6,'ru',549,0.2903,42),(6,'ru',550,0.1832,50),(6,'ru',551,0.1832,52),(27,'ru',551,0.2391,135.5),(21,'ru',551,0.2846,217.5),(6,'ru',552,0.1832,53),(27,'ru',552,0.5408,105.727),(6,'ru',553,0.1832,56),(6,'ru',554,0.1832,57),(2,'ru',555,0.2314,2),(38,'ru',555,0.2314,2),(39,'ru',555,0.2314,2),(6,'ru',555,0.2903,69),(6,'ru',556,0.1832,59),(6,'ru',557,0.1832,60),(6,'ru',558,0.1832,61),(10,'ru',558,0.2314,1),(30,'ru',558,0.2314,1),(6,'ru',559,0.1832,62),(6,'ru',560,0.1832,63),(6,'ru',561,0.1832,77),(7,'ru',562,0.2314,1),(26,'ru',563,0.1332,146),(8,'ru',563,0.1892,51),(7,'ru',563,0.2314,2),(8,'ru',564,0.1892,1),(20,'ru',565,0.1202,152),(25,'ru',565,0.1277,213),(26,'ru',565,0.1332,117),(22,'ru',565,0.1348,259),(8,'ru',565,0.2999,12.5),(26,'ru',566,0.1332,134),(8,'ru',566,0.1892,6),(20,'ru',567,0.1202,147),(8,'ru',567,0.1892,10),(25,'ru',568,0.1277,159),(13,'ru',568,0.1322,16),(22,'ru',568,0.1348,238),(8,'ru',568,0.1892,21),(20,'ru',569,0.1202,163),(26,'ru',569,0.1332,113),(9,'ru',569,0.1586,150),(22,'ru',569,0.2137,286.5),(8,'ru',569,0.4393,50.75),(13,'ru',570,0.1322,182),(16,'ru',570,0.1415,98),(8,'ru',570,0.1892,28),(26,'ru',571,0.1332,160),(22,'ru',571,0.1348,103),(17,'ru',571,0.1852,132),(8,'ru',571,0.1892,31),(14,'ru',571,0.196,100),(26,'ru',572,0.1332,162),(8,'ru',572,0.1892,33),(8,'ru',573,0.1892,42),(8,'ru',574,0.1892,43),(8,'ru',575,0.1892,44),(26,'ru',576,0.1332,142),(8,'ru',576,0.1892,47),(17,'ru',577,0.1168,160),(9,'ru',577,0.1586,153),(8,'ru',577,0.1892,59),(20,'ru',578,0.1202,164),(26,'ru',578,0.1332,115),(9,'ru',578,0.2514,152.5),(8,'ru',578,0.3784,62.6667),(8,'ru',579,0.1892,61),(8,'ru',580,0.1892,64),(8,'ru',581,0.1892,66),(9,'ru',582,0.1586,2),(17,'ru',583,0.1168,216),(9,'ru',583,0.2514,9.5),(17,'ru',584,0.1168,263),(9,'ru',584,0.1586,5),(9,'ru',585,0.1586,6),(9,'ru',586,0.3173,10.6667),(9,'ru',587,0.1586,10),(9,'ru',588,0.1586,18),(9,'ru',589,0.1586,19),(9,'ru',590,0.1586,20),(9,'ru',591,0.1586,21),(9,'ru',592,0.1586,22),(45,'ru',592,0.4116,213.6),(46,'ru',592,0.4116,213.6),(47,'ru',592,0.4116,213.6),(48,'ru',592,0.4116,213.6),(49,'ru',592,0.4116,213.6),(9,'ru',593,0.2514,47),(9,'ru',594,0.1586,26),(9,'ru',595,0.1586,27),(9,'ru',596,0.1586,28),(17,'ru',597,0.1168,206),(9,'ru',597,0.1586,29),(9,'ru',598,0.1586,30),(9,'ru',599,0.1586,31),(9,'ru',600,0.1586,63),(9,'ru',601,0.1586,64),(9,'ru',602,0.1586,72),(20,'ru',603,0.1202,383),(9,'ru',603,0.2514,100),(9,'ru',604,0.1586,75),(9,'ru',605,0.2514,110),(9,'ru',606,0.1586,91),(24,'ru',607,0.1197,235),(21,'ru',607,0.1226,102),(16,'ru',607,0.1415,162),(9,'ru',607,0.1586,98),(15,'ru',607,0.166,52),(14,'ru',607,0.196,373),(26,'ru',607,0.2111,257.5),(29,'ru',607,0.212,136.5),(9,'ru',608,0.1586,99),(9,'ru',609,0.1586,106),(9,'ru',610,0.1586,108),(17,'ru',611,0.1168,528),(22,'ru',611,0.1348,153),(9,'ru',611,0.1586,109),(18,'ru',611,0.1951,254),(21,'ru',611,0.2846,216.5),(9,'ru',612,0.1586,110),(9,'ru',613,0.1586,111),(9,'ru',614,0.1586,112),(9,'ru',615,0.1586,113),(9,'ru',616,0.1586,114),(9,'ru',617,0.1586,115),(9,'ru',618,0.1586,116),(9,'ru',619,0.1586,117),(9,'ru',620,0.1586,118),(9,'ru',621,0.1586,119),(9,'ru',622,0.1586,122),(9,'ru',623,0.1586,123),(9,'ru',624,0.1586,124),(9,'ru',625,0.1586,125),(9,'ru',626,0.1586,127),(9,'ru',627,0.1586,142),(9,'ru',628,0.1586,152),(9,'ru',629,0.1586,155),(9,'ru',630,0.1586,156),(9,'ru',631,0.1586,157),(9,'ru',632,0.1586,158),(9,'ru',633,0.1586,164),(11,'ru',634,0.2314,1),(24,'ru',635,0.1197,264),(25,'ru',635,0.1277,245),(13,'ru',635,0.1322,1),(15,'ru',635,0.166,81),(21,'ru',636,0.1226,341),(16,'ru',636,0.1415,125),(13,'ru',636,0.2096,30.5),(13,'ru',637,0.1322,4),(13,'ru',638,0.1322,5),(26,'ru',638,0.1332,138),(13,'ru',639,0.1322,7),(25,'ru',639,0.2023,242.5),(25,'ru',640,0.1277,252),(13,'ru',640,0.1322,20),(13,'ru',641,0.1322,25),(13,'ru',642,0.2645,96.6667),(13,'ru',643,0.1322,32),(13,'ru',644,0.1322,35),(13,'ru',645,0.1322,38),(22,'ru',645,0.1348,15),(13,'ru',646,0.1322,51),(20,'ru',647,0.1202,174),(13,'ru',647,0.1322,52),(13,'ru',648,0.1322,53),(14,'ru',649,0.1236,78),(13,'ru',649,0.1322,61),(27,'ru',649,0.1508,195),(25,'ru',649,0.2023,211.5),(21,'ru',650,0.1226,411),(13,'ru',650,0.2096,75),(17,'ru',651,0.1168,29),(13,'ru',651,0.1322,72),(17,'ru',652,0.1168,31),(20,'ru',652,0.1202,93),(18,'ru',652,0.1231,74),(22,'ru',652,0.1348,152),(16,'ru',652,0.1415,102),(25,'ru',652,0.2023,202),(13,'ru',652,0.2096,75.5),(13,'ru',653,0.2096,152),(25,'ru',654,0.1277,329),(13,'ru',654,0.1322,78),(14,'ru',654,0.196,467.5),(13,'ru',655,0.1322,79),(13,'ru',656,0.1322,80),(13,'ru',657,0.1322,86),(13,'ru',658,0.1322,87),(13,'ru',659,0.1322,89),(26,'ru',660,0.1332,158),(17,'ru',660,0.1852,148),(29,'ru',660,0.212,274),(13,'ru',660,0.307,99),(20,'ru',660,0.3375,379.333),(13,'ru',661,0.1322,92),(13,'ru',662,0.1322,96),(13,'ru',663,0.1322,97),(17,'ru',664,0.1168,156),(18,'ru',664,0.1231,181),(13,'ru',664,0.2096,150.5),(13,'ru',665,0.1322,104),(18,'ru',665,0.1951,168.5),(13,'ru',666,0.1322,105),(17,'ru',667,0.1168,13),(13,'ru',667,0.1322,111),(17,'ru',668,0.1168,380),(13,'ru',668,0.1322,114),(17,'ru',669,0.1168,8),(25,'ru',669,0.1277,201),(13,'ru',669,0.1322,115),(13,'ru',670,0.2096,184.5),(17,'ru',671,0.1168,87),(13,'ru',671,0.1322,121),(13,'ru',672,0.1322,125),(20,'ru',672,0.2405,263.667),(13,'ru',673,0.1322,126),(20,'ru',673,0.3108,266),(13,'ru',674,0.1322,127),(20,'ru',674,0.1906,243),(16,'ru',674,0.283,81.6667),(18,'ru',674,0.2858,205.5),(24,'ru',675,0.1197,392),(21,'ru',675,0.1226,178),(25,'ru',675,0.1277,341),(26,'ru',675,0.1332,40),(19,'ru',675,0.1409,128),(13,'ru',675,0.2096,129),(29,'ru',675,0.2675,124),(20,'ru',675,0.3108,220.2),(16,'ru',675,0.3286,79.75),(21,'ru',676,0.1226,159),(13,'ru',676,0.1322,129),(13,'ru',677,0.1322,133),(26,'ru',677,0.1332,126),(20,'ru',678,0.1202,239),(13,'ru',678,0.2096,144.5),(20,'ru',679,0.1202,240),(13,'ru',679,0.1322,136),(13,'ru',680,0.1322,137),(13,'ru',681,0.1322,138),(24,'ru',682,0.1197,44),(13,'ru',682,0.1322,142),(27,'ru',682,0.1508,8),(23,'ru',682,0.1693,45),(13,'ru',683,0.1322,144),(29,'ru',683,0.1338,171),(19,'ru',683,0.1409,95),(16,'ru',683,0.1415,46),(25,'ru',683,0.2023,271.5),(24,'ru',683,0.2393,139.333),(20,'ru',683,0.2405,368.333),(23,'ru',683,0.2683,30.5),(21,'ru',683,0.344,282.333),(14,'ru',683,0.392,183.125),(25,'ru',684,0.1277,291),(13,'ru',684,0.1322,151),(25,'ru',685,0.2023,300),(13,'ru',685,0.2096,171.5),(27,'ru',685,0.3017,44.6667),(14,'ru',686,0.1236,132),(21,'ru',686,0.2451,181.333),(25,'ru',686,0.2964,300),(13,'ru',686,0.307,171.5),(27,'ru',686,0.4235,44.6667),(13,'ru',687,0.1322,153),(24,'ru',688,0.1197,382),(19,'ru',688,0.1409,118),(16,'ru',688,0.1415,61),(17,'ru',688,0.1852,34.5),(13,'ru',688,0.2096,171.5),(13,'ru',689,0.1322,158),(21,'ru',690,0.1226,51),(13,'ru',690,0.1322,161),(20,'ru',690,0.1906,341.5),(18,'ru',690,0.2462,125.333),(16,'ru',690,0.283,97),(13,'ru',691,0.1322,162),(13,'ru',692,0.2096,162),(20,'ru',693,0.1202,346),(25,'ru',693,0.1277,345),(13,'ru',693,0.1322,164),(26,'ru',693,0.1332,95),(29,'ru',693,0.1338,190),(17,'ru',693,0.1852,341.5),(14,'ru',693,0.196,262),(20,'ru',694,0.1202,394),(13,'ru',694,0.1322,167),(13,'ru',695,0.1322,173),(25,'ru',696,0.1277,249),(13,'ru',696,0.1322,184),(13,'ru',697,0.1322,188),(26,'ru',697,0.1332,100),(22,'ru',697,0.1348,191),(20,'ru',697,0.2792,204.5),(20,'ru',698,0.1202,440),(13,'ru',698,0.1322,190),(13,'ru',699,0.1322,192),(17,'ru',700,0.1168,83),(13,'ru',700,0.1322,196),(18,'ru',700,0.1951,116.5),(22,'ru',700,0.2137,190),(13,'ru',701,0.1322,198),(13,'ru',702,0.1322,199),(13,'ru',703,0.1322,202),(13,'ru',704,0.1322,204),(22,'ru',704,0.1348,301),(21,'ru',704,0.2451,431),(14,'ru',704,0.2871,517.75),(13,'ru',705,0.1322,210),(17,'ru',705,0.2337,301.333),(13,'ru',706,0.1322,211),(26,'ru',706,0.1332,69),(16,'ru',706,0.1415,180),(17,'ru',706,0.2713,358.25),(13,'ru',707,0.1322,215),(16,'ru',707,0.1415,181),(21,'ru',707,0.1942,140.5),(17,'ru',707,0.328,402),(13,'ru',708,0.1322,221),(18,'ru',709,0.1231,170),(13,'ru',709,0.1322,222),(26,'ru',709,0.1332,75),(29,'ru',709,0.1338,258),(22,'ru',709,0.1348,161),(13,'ru',710,0.1322,224),(13,'ru',711,0.1322,228),(13,'ru',712,0.1322,231),(13,'ru',713,0.2096,233.5),(13,'ru',714,0.2096,239),(13,'ru',715,0.1322,238),(13,'ru',716,0.1322,239),(13,'ru',717,0.1322,240),(13,'ru',718,0.1322,241),(13,'ru',719,0.1322,242),(13,'ru',720,0.1322,253),(13,'ru',721,0.1322,254),(13,'ru',722,0.1322,255),(13,'ru',723,0.1322,256),(13,'ru',724,0.1322,257),(24,'ru',725,0.1197,263),(16,'ru',725,0.1415,114),(15,'ru',725,0.166,80),(14,'ru',725,0.4831,203.143),(16,'ru',726,0.1415,116),(14,'ru',726,0.4278,204.8),(14,'ru',727,0.1236,15),(14,'ru',728,0.2473,38.3333),(20,'ru',729,0.1202,276),(25,'ru',729,0.1277,226),(16,'ru',729,0.1415,117),(14,'ru',729,0.2871,78.25),(21,'ru',729,0.4071,213.111),(14,'ru',730,0.1236,36),(14,'ru',731,0.1236,37),(29,'ru',731,0.3106,43.5),(14,'ru',732,0.1236,41),(14,'ru',733,0.1236,44),(14,'ru',734,0.1236,46),(14,'ru',735,0.1236,53),(20,'ru',736,0.1202,435),(14,'ru',736,0.1236,54),(22,'ru',736,0.1348,148),(14,'ru',737,0.2473,224.667),(14,'ru',738,0.2473,225.667),(14,'ru',739,0.1236,80),(18,'ru',740,0.1231,193),(14,'ru',740,0.1236,87),(26,'ru',740,0.1332,153),(14,'ru',741,0.1236,88),(14,'ru',742,0.1236,91),(18,'ru',743,0.1231,301),(14,'ru',743,0.1236,94),(29,'ru',744,0.1338,264),(14,'ru',744,0.196,101),(26,'ru',744,0.2664,115.333),(14,'ru',745,0.1236,102),(18,'ru',745,0.1951,258),(14,'ru',746,0.1236,126),(18,'ru',747,0.1231,49),(16,'ru',747,0.1415,192),(22,'ru',747,0.2137,67.5),(14,'ru',747,0.2473,135),(17,'ru',747,0.302,397.2),(17,'ru',748,0.1168,519),(24,'ru',748,0.1197,48),(26,'ru',748,0.1332,208),(23,'ru',748,0.1693,49),(22,'ru',748,0.2137,66),(20,'ru',748,0.2792,100.25),(14,'ru',748,0.3196,407.2),(14,'ru',749,0.1236,138),(14,'ru',750,0.1236,139),(25,'ru',751,0.1277,343),(14,'ru',751,0.196,139),(14,'ru',752,0.1236,142),(17,'ru',753,0.1168,517),(14,'ru',753,0.1236,143),(21,'ru',754,0.1942,155),(29,'ru',754,0.2675,141.333),(17,'ru',754,0.4449,371.154),(14,'ru',754,0.5812,304.6),(14,'ru',755,0.1236,160),(14,'ru',756,0.1236,162),(14,'ru',757,0.392,298.125),(14,'ru',758,0.1236,167),(20,'ru',759,0.1906,43),(17,'ru',759,0.2337,304.333),(21,'ru',759,0.2846,97.5),(22,'ru',759,0.3785,116),(14,'ru',759,0.392,309.125),(26,'ru',759,0.4222,248.25),(27,'ru',759,0.4235,172.833),(14,'ru',760,0.196,215.5),(14,'ru',761,0.1236,200),(14,'ru',762,0.1236,205),(14,'ru',763,0.2871,312.75),(14,'ru',764,0.1236,237),(14,'ru',765,0.1236,242),(20,'ru',766,0.1202,73),(14,'ru',766,0.196,290),(21,'ru',766,0.2846,204),(14,'ru',767,0.1236,274),(14,'ru',768,0.1236,279),(14,'ru',769,0.1236,318),(14,'ru',770,0.1236,355),(14,'ru',771,0.1236,360),(29,'ru',772,0.1338,45),(21,'ru',772,0.2451,218.333),(14,'ru',772,0.3196,440.6),(14,'ru',773,0.1236,402),(20,'ru',774,0.1202,122),(14,'ru',774,0.196,436.5),(14,'ru',775,0.1236,429),(14,'ru',776,0.1236,431),(14,'ru',777,0.1236,436),(17,'ru',778,0.1168,88),(14,'ru',778,0.1236,446),(18,'ru',778,0.1951,261.5),(26,'ru',778,0.2111,119),(22,'ru',778,0.2137,127.5),(20,'ru',778,0.2405,229.333),(29,'ru',778,0.2675,114),(14,'ru',779,0.1236,448),(14,'ru',780,0.196,457.5),(14,'ru',781,0.2871,472.25),(20,'ru',782,0.1202,35),(22,'ru',782,0.1348,106),(14,'ru',782,0.2871,475.25),(17,'ru',783,0.1168,170),(21,'ru',783,0.1226,99),(14,'ru',783,0.196,466.5),(14,'ru',784,0.1236,478),(25,'ru',784,0.1277,154),(14,'ru',785,0.196,506.5),(14,'ru',786,0.1236,488),(14,'ru',787,0.1236,489),(16,'ru',787,0.3286,153.5),(14,'ru',788,0.1236,495),(14,'ru',789,0.1236,498),(17,'ru',789,0.2337,324.667),(14,'ru',790,0.1236,500),(14,'ru',791,0.1236,501),(14,'ru',792,0.1236,502),(20,'ru',792,0.1906,65),(14,'ru',793,0.1236,505),(14,'ru',794,0.1236,508),(29,'ru',794,0.2675,201.667),(14,'ru',795,0.1236,509),(20,'ru',796,0.1202,442),(26,'ru',796,0.1332,205),(27,'ru',796,0.1508,166),(14,'ru',796,0.196,535.5),(29,'ru',796,0.3106,158.75),(22,'ru',796,0.313,64.75),(21,'ru',796,0.3677,217.286),(14,'ru',797,0.1236,521),(14,'ru',798,0.1236,522),(20,'ru',799,0.1202,485),(14,'ru',799,0.1236,524),(25,'ru',799,0.1277,288),(17,'ru',799,0.2713,191.25),(14,'ru',800,0.1236,530),(14,'ru',801,0.1236,532),(14,'ru',802,0.1236,534),(14,'ru',803,0.1236,535),(25,'ru',803,0.1277,232),(14,'ru',804,0.196,535),(25,'ru',804,0.2023,232),(21,'ru',804,0.4071,224.667),(14,'ru',805,0.1236,536),(14,'ru',806,0.1236,540),(14,'ru',807,0.1236,542),(14,'ru',808,0.1236,555),(24,'ru',809,0.1197,278),(14,'ru',809,0.1236,556),(19,'ru',809,0.1409,14),(17,'ru',810,0.1168,70),(24,'ru',810,0.1197,202),(15,'ru',810,0.166,19),(16,'ru',811,0.1415,179),(28,'ru',811,0.1649,42),(15,'ru',811,0.166,23),(24,'ru',811,0.1896,166),(24,'ru',812,0.1197,209),(15,'ru',812,0.166,26),(24,'ru',813,0.1197,210),(18,'ru',813,0.1231,34),(25,'ru',813,0.1277,221),(26,'ru',813,0.1332,53),(15,'ru',813,0.166,27),(24,'ru',814,0.1197,215),(15,'ru',814,0.166,32),(24,'ru',815,0.1197,216),(15,'ru',815,0.166,33),(24,'ru',816,0.1197,218),(15,'ru',816,0.166,35),(24,'ru',817,0.1197,224),(15,'ru',817,0.166,41),(24,'ru',818,0.1896,224),(15,'ru',818,0.2632,41),(24,'ru',819,0.1197,242),(15,'ru',819,0.166,59),(24,'ru',820,0.1197,243),(15,'ru',820,0.166,60),(28,'ru',821,0.1649,45),(15,'ru',821,0.166,64),(24,'ru',821,0.1896,188),(19,'ru',822,0.1409,179),(16,'ru',822,0.1415,56),(28,'ru',822,0.1649,86),(15,'ru',822,0.166,75),(23,'ru',822,0.1693,80),(24,'ru',822,0.2778,237.5),(24,'ru',823,0.1197,261),(16,'ru',823,0.1415,1),(15,'ru',823,0.166,78),(16,'ru',824,0.1415,8),(24,'ru',825,0.1197,389),(20,'ru',825,0.1202,317),(19,'ru',825,0.1409,125),(16,'ru',825,0.283,56),(18,'ru',825,0.2858,167),(21,'ru',825,0.344,141.333),(16,'ru',826,0.1415,18),(24,'ru',827,0.1197,11),(22,'ru',827,0.1348,279),(16,'ru',827,0.1415,22),(23,'ru',827,0.1693,12),(17,'ru',828,0.1168,11),(16,'ru',828,0.1415,28),(20,'ru',828,0.1906,364.5),(21,'ru',828,0.1942,145.5),(29,'ru',829,0.1338,280),(16,'ru',829,0.1415,37),(20,'ru',830,0.1202,333),(16,'ru',830,0.1415,44),(18,'ru',830,0.2858,156.25),(26,'ru',831,0.1332,71),(16,'ru',831,0.1415,60),(17,'ru',831,0.2713,241),(16,'ru',832,0.1415,65),(17,'ru',832,0.2337,251),(16,'ru',833,0.2243,65),(17,'ru',833,0.328,251),(16,'ru',834,0.1415,67),(17,'ru',834,0.2337,265),(16,'ru',835,0.2243,67),(17,'ru',835,0.328,265),(16,'ru',836,0.1415,69),(16,'ru',837,0.1415,78),(18,'ru',837,0.1951,167),(21,'ru',837,0.2451,141.333),(16,'ru',838,0.2243,129),(16,'ru',839,0.1415,91),(16,'ru',840,0.1415,97),(16,'ru',841,0.1415,106),(24,'ru',842,0.1197,406),(18,'ru',842,0.1231,46),(25,'ru',842,0.1277,108),(19,'ru',842,0.1409,142),(16,'ru',842,0.1415,107),(26,'ru',842,0.2111,134),(21,'ru',842,0.2451,216),(22,'ru',842,0.2696,113.333),(20,'ru',842,0.2792,164.25),(29,'ru',842,0.3755,134.833),(27,'ru',842,0.4782,132.25),(16,'ru',843,0.1415,109),(20,'ru',843,0.1906,193),(25,'ru',844,0.1277,332),(16,'ru',844,0.1415,118),(16,'ru',845,0.1415,121),(20,'ru',846,0.1202,363),(16,'ru',846,0.1415,123),(16,'ru',847,0.1415,130),(16,'ru',848,0.1415,131),(16,'ru',849,0.2243,143.5),(22,'ru',850,0.1348,89),(16,'ru',850,0.1415,141),(16,'ru',851,0.1415,149),(16,'ru',852,0.1415,151),(16,'ru',853,0.1415,152),(16,'ru',854,0.1415,178),(16,'ru',855,0.1415,183),(24,'ru',856,0.1197,16),(25,'ru',856,0.1277,237),(16,'ru',856,0.1415,184),(23,'ru',856,0.1693,17),(17,'ru',856,0.1852,365.5),(21,'ru',856,0.1942,274),(20,'ru',857,0.1202,340),(16,'ru',857,0.1415,188),(16,'ru',858,0.1415,190),(24,'ru',859,0.1197,449),(19,'ru',859,0.1409,185),(17,'ru',859,0.1852,107.5),(17,'ru',860,0.3704,218.125),(17,'ru',861,0.1168,5),(24,'ru',861,0.1197,378),(19,'ru',861,0.1409,114),(24,'ru',862,0.1197,381),(19,'ru',862,0.1409,117),(17,'ru',862,0.1852,14),(18,'ru',862,0.1951,280),(17,'ru',863,0.1168,20),(17,'ru',864,0.2337,52.6667),(17,'ru',865,0.1168,33),(17,'ru',866,0.4674,276.667),(17,'ru',867,0.1168,53),(18,'ru',867,0.1231,75),(17,'ru',868,0.1168,57),(18,'ru',868,0.1231,148),(17,'ru',869,0.1168,58),(20,'ru',869,0.1202,89),(17,'ru',870,0.1168,59),(17,'ru',871,0.1168,60),(20,'ru',871,0.4809,442.667),(17,'ru',872,0.1168,63),(17,'ru',873,0.1168,64),(17,'ru',874,0.1168,65),(17,'ru',875,0.1168,66),(17,'ru',876,0.1168,67),(17,'ru',877,0.1168,71),(18,'ru',877,0.1231,26),(17,'ru',878,0.1168,76),(20,'ru',879,0.1202,431),(25,'ru',879,0.1277,197),(17,'ru',879,0.1852,91.5),(17,'ru',880,0.1852,104.5),(18,'ru',880,0.1951,177.5),(17,'ru',881,0.1168,89),(18,'ru',881,0.1231,297),(25,'ru',881,0.1277,337),(17,'ru',882,0.1168,92),(17,'ru',883,0.1852,217),(17,'ru',884,0.3881,290.889),(17,'ru',885,0.1168,101),(17,'ru',886,0.1168,107),(17,'ru',887,0.1168,109),(17,'ru',888,0.1168,112),(25,'ru',888,0.2023,255),(17,'ru',889,0.1168,115),(17,'ru',890,0.1168,126),(17,'ru',891,0.1168,131),(20,'ru',891,0.1202,367),(18,'ru',891,0.1231,255),(17,'ru',892,0.1168,132),(17,'ru',893,0.1168,136),(17,'ru',894,0.1168,146),(17,'ru',895,0.1168,147),(17,'ru',896,0.1168,148),(29,'ru',896,0.1338,274),(20,'ru',896,0.1906,354),(17,'ru',897,0.1168,152),(17,'ru',898,0.1168,155),(17,'ru',899,0.1168,158),(24,'ru',900,0.1197,398),(18,'ru',900,0.1231,173),(19,'ru',900,0.1409,134),(20,'ru',900,0.1906,349.5),(17,'ru',900,0.2713,366.5),(17,'ru',901,0.1168,168),(17,'ru',902,0.1168,172),(21,'ru',903,0.1226,154),(26,'ru',903,0.1332,228),(22,'ru',903,0.1348,34),(17,'ru',903,0.2337,322.333),(17,'ru',904,0.1168,242),(17,'ru',905,0.1168,256),(17,'ru',906,0.1168,268),(17,'ru',907,0.1852,361),(17,'ru',908,0.1168,271),(18,'ru',909,0.1951,277),(29,'ru',909,0.212,274),(17,'ru',909,0.2337,315.667),(25,'ru',910,0.1277,235),(17,'ru',910,0.1852,303),(21,'ru',911,0.1226,230),(22,'ru',911,0.1348,38),(17,'ru',911,0.1852,307.5),(17,'ru',912,0.1168,338),(17,'ru',913,0.1168,340),(20,'ru',913,0.1202,179),(17,'ru',914,0.1168,344),(29,'ru',915,0.1338,279),(17,'ru',915,0.1852,363.5),(17,'ru',916,0.1168,365),(20,'ru',916,0.1202,390),(17,'ru',917,0.1852,406.5),(17,'ru',918,0.2713,442.75),(26,'ru',919,0.1332,213),(17,'ru',919,0.1852,426),(21,'ru',919,0.1942,270.5),(24,'ru',920,0.1197,451),(20,'ru',920,0.1202,314),(19,'ru',920,0.1409,187),(17,'ru',920,0.2713,452.75),(18,'ru',920,0.3456,138.5),(17,'ru',921,0.1852,446),(17,'ru',922,0.1168,430),(17,'ru',923,0.1168,444),(17,'ru',924,0.1852,485),(17,'ru',925,0.1852,486),(17,'ru',926,0.1852,487),(17,'ru',927,0.1852,481),(26,'ru',927,0.2111,133.5),(20,'ru',927,0.3108,170.2),(17,'ru',928,0.1852,489),(18,'ru',928,0.1951,127.5),(17,'ru',929,0.1852,494),(17,'ru',930,0.1852,497),(17,'ru',931,0.1168,510),(17,'ru',932,0.1168,511),(17,'ru',933,0.1168,514),(17,'ru',934,0.1168,516),(17,'ru',935,0.1168,531),(20,'ru',935,0.1202,441),(17,'ru',936,0.1168,537),(17,'ru',937,0.1168,547),(18,'ru',938,0.1231,17),(18,'ru',939,0.1231,23),(18,'ru',940,0.1231,25),(18,'ru',941,0.1951,173.5),(20,'ru',942,0.1202,430),(18,'ru',942,0.1231,33),(18,'ru',943,0.1231,41),(25,'ru',943,0.1277,5),(18,'ru',944,0.1231,44),(24,'ru',945,0.1197,405),(18,'ru',945,0.1231,45),(19,'ru',945,0.1409,141),(18,'ru',946,0.1231,48),(18,'ru',947,0.1231,53),(18,'ru',948,0.1231,54),(18,'ru',949,0.1231,56),(18,'ru',950,0.1231,58),(18,'ru',951,0.1231,59),(18,'ru',952,0.1231,62),(18,'ru',953,0.5031,137.312),(20,'ru',954,0.1202,491),(18,'ru',954,0.1951,173),(22,'ru',954,0.2137,76.5),(21,'ru',954,0.3677,230),(18,'ru',955,0.1231,78),(18,'ru',956,0.3182,191.4),(18,'ru',957,0.4258,191.4),(20,'ru',958,0.1202,423),(18,'ru',958,0.2462,202.667),(18,'ru',959,0.1231,84),(18,'ru',960,0.2462,203.333),(18,'ru',961,0.2462,203.333),(18,'ru',962,0.2462,203.333),(18,'ru',963,0.1231,88),(18,'ru',964,0.1231,90),(18,'ru',965,0.2462,96.3333),(18,'ru',966,0.1951,191.5),(20,'ru',966,0.2405,312),(18,'ru',967,0.1231,112),(18,'ru',968,0.1231,117),(25,'ru',968,0.1277,336),(29,'ru',968,0.1338,147),(18,'ru',969,0.1951,120.5),(18,'ru',970,0.1951,120.5),(18,'ru',971,0.1231,122),(18,'ru',972,0.1231,124),(20,'ru',973,0.1202,184),(18,'ru',973,0.1231,139),(29,'ru',973,0.1338,103),(20,'ru',974,0.1202,186),(18,'ru',974,0.1231,141),(18,'ru',975,0.1231,147),(22,'ru',975,0.1348,195),(25,'ru',975,0.2023,302),(21,'ru',975,0.2451,179.667),(18,'ru',976,0.1231,153),(18,'ru',977,0.1231,155),(18,'ru',978,0.1231,156),(18,'ru',979,0.1951,156),(18,'ru',980,0.1951,187),(29,'ru',981,0.1338,12),(18,'ru',981,0.1951,195),(18,'ru',982,0.2462,190),(18,'ru',983,0.3693,190),(20,'ru',984,0.1202,337),(18,'ru',984,0.1231,169),(18,'ru',985,0.1231,179),(20,'ru',986,0.1202,501),(18,'ru',986,0.1231,180),(18,'ru',987,0.1231,189),(18,'ru',988,0.1231,192),(25,'ru',988,0.1277,206),(18,'ru',989,0.1951,259),(18,'ru',990,0.1231,201),(18,'ru',991,0.1951,263.5),(20,'ru',991,0.2405,203),(18,'ru',992,0.1231,215),(20,'ru',993,0.1202,342),(18,'ru',993,0.4089,256),(18,'ru',994,0.3182,249.6),(20,'ru',995,0.1202,318),(18,'ru',995,0.3182,249.6),(22,'ru',996,0.1348,121),(18,'ru',996,0.1951,236.5),(18,'ru',997,0.1231,235),(18,'ru',998,0.1951,265),(18,'ru',999,0.1231,245),(29,'ru',999,0.1338,104),(18,'ru',1000,0.1231,247),(18,'ru',1001,0.1231,252),(20,'ru',1002,0.1202,345),(18,'ru',1002,0.1231,257),(20,'ru',1003,0.1202,287),(18,'ru',1003,0.1951,279),(18,'ru',1004,0.1951,282),(18,'ru',1005,0.1951,284),(18,'ru',1006,0.1231,274),(18,'ru',1007,0.1231,275),(18,'ru',1008,0.1231,280),(18,'ru',1009,0.1231,298),(18,'ru',1010,0.1231,300),(18,'ru',1011,0.1231,310),(25,'ru',1011,0.2023,47),(18,'ru',1012,0.1231,324),(19,'ru',1013,0.1409,8),(28,'ru',1013,0.1649,27),(24,'ru',1013,0.1896,191.5),(24,'ru',1014,0.1197,273),(19,'ru',1014,0.1409,9),(24,'ru',1015,0.1197,276),(19,'ru',1015,0.1409,12),(22,'ru',1016,0.1348,4),(19,'ru',1016,0.1409,13),(28,'ru',1016,0.1649,16),(24,'ru',1016,0.1896,188.5),(24,'ru',1017,0.1197,292),(19,'ru',1017,0.1409,28),(24,'ru',1018,0.1197,294),(19,'ru',1018,0.1409,30),(24,'ru',1019,0.1197,296),(19,'ru',1019,0.1409,32),(24,'ru',1020,0.1197,298),(19,'ru',1020,0.1409,34),(24,'ru',1021,0.1197,300),(19,'ru',1021,0.1409,36),(24,'ru',1022,0.1197,302),(20,'ru',1022,0.1202,250),(22,'ru',1022,0.1348,293),(19,'ru',1022,0.1409,38),(24,'ru',1023,0.1197,308),(19,'ru',1023,0.1409,44),(19,'ru',1024,0.1409,45),(28,'ru',1024,0.1649,68),(24,'ru',1024,0.1896,230.5),(24,'ru',1025,0.1197,310),(19,'ru',1025,0.1409,46),(24,'ru',1026,0.1896,380.5),(20,'ru',1026,0.1906,4),(19,'ru',1026,0.2233,116.5),(24,'ru',1027,0.1197,316),(19,'ru',1027,0.1409,52),(24,'ru',1028,0.1197,317),(19,'ru',1028,0.1409,53),(19,'ru',1029,0.1409,56),(28,'ru',1029,0.1649,38),(24,'ru',1029,0.1896,221),(24,'ru',1030,0.1197,321),(19,'ru',1030,0.1409,57),(24,'ru',1031,0.1197,335),(19,'ru',1031,0.1409,71),(24,'ru',1032,0.1197,336),(19,'ru',1032,0.1409,72),(24,'ru',1033,0.1197,338),(19,'ru',1033,0.1409,74),(19,'ru',1034,0.1409,87),(23,'ru',1034,0.1693,38),(24,'ru',1034,0.1896,194),(24,'ru',1035,0.1197,353),(19,'ru',1035,0.1409,89),(24,'ru',1036,0.1197,358),(19,'ru',1036,0.1409,94),(24,'ru',1037,0.1197,400),(29,'ru',1037,0.1338,181),(19,'ru',1037,0.1409,136),(24,'ru',1038,0.1197,402),(19,'ru',1038,0.1409,138),(24,'ru',1039,0.1197,414),(19,'ru',1039,0.1409,150),(24,'ru',1040,0.1197,415),(19,'ru',1040,0.1409,151),(24,'ru',1041,0.1896,415),(19,'ru',1041,0.2233,151),(24,'ru',1042,0.1197,417),(19,'ru',1042,0.1409,153),(24,'ru',1043,0.1197,425),(19,'ru',1043,0.1409,161),(24,'ru',1044,0.1197,428),(19,'ru',1044,0.1409,164),(24,'ru',1045,0.1197,430),(19,'ru',1045,0.1409,166),(24,'ru',1046,0.1896,430),(19,'ru',1046,0.2233,166),(20,'ru',1047,0.1202,9),(20,'ru',1048,0.1906,119.5),(25,'ru',1049,0.1277,106),(20,'ru',1049,0.2405,66.3333),(20,'ru',1050,0.1906,46.5),(29,'ru',1051,0.1338,244),(20,'ru',1051,0.1906,169.5),(20,'ru',1052,0.1906,172.5),(20,'ru',1053,0.1202,50),(20,'ru',1054,0.1906,86),(20,'ru',1055,0.1202,74),(26,'ru',1055,0.1332,263),(26,'ru',1056,0.1332,79),(20,'ru',1056,0.1906,206),(20,'ru',1057,0.1202,90),(20,'ru',1058,0.1202,91),(20,'ru',1059,0.2792,105.5),(20,'ru',1060,0.2405,112),(20,'ru',1061,0.1202,107),(20,'ru',1062,0.1906,119),(21,'ru',1063,0.1226,48),(26,'ru',1063,0.1332,66),(20,'ru',1063,0.1906,120),(25,'ru',1063,0.2023,201.5),(29,'ru',1063,0.2675,159.667),(20,'ru',1064,0.1202,125),(20,'ru',1065,0.1202,135),(20,'ru',1066,0.1202,136),(20,'ru',1067,0.1202,155),(20,'ru',1068,0.1202,156),(25,'ru',1068,0.1277,200),(20,'ru',1069,0.1202,160),(20,'ru',1070,0.1202,165),(20,'ru',1071,0.1202,187),(20,'ru',1072,0.1202,189),(20,'ru',1073,0.1906,248.5),(20,'ru',1074,0.1202,197),(20,'ru',1075,0.1202,198),(20,'ru',1076,0.1202,200),(26,'ru',1076,0.1332,30),(22,'ru',1076,0.1348,119),(20,'ru',1077,0.1202,207),(20,'ru',1078,0.1202,224),(20,'ru',1079,0.1202,248),(26,'ru',1079,0.2111,70.5),(20,'ru',1080,0.1202,255),(20,'ru',1081,0.1202,256),(20,'ru',1082,0.1202,257),(20,'ru',1083,0.1202,259),(20,'ru',1084,0.1202,265),(20,'ru',1085,0.1202,271),(20,'ru',1086,0.1202,279),(25,'ru',1086,0.2023,301),(20,'ru',1087,0.1906,287),(20,'ru',1088,0.1202,285),(20,'ru',1089,0.1202,286),(20,'ru',1090,0.1202,292),(20,'ru',1091,0.1202,294),(20,'ru',1092,0.1202,300),(20,'ru',1093,0.1202,321),(20,'ru',1094,0.1202,326),(20,'ru',1095,0.2792,382.75),(20,'ru',1096,0.1906,340),(20,'ru',1097,0.1202,334),(20,'ru',1098,0.1202,344),(22,'ru',1098,0.1348,144),(20,'ru',1099,0.1202,348),(20,'ru',1100,0.1202,358),(20,'ru',1101,0.1202,374),(20,'ru',1102,0.1202,381),(20,'ru',1103,0.1202,385),(26,'ru',1103,0.1332,88),(25,'ru',1103,0.2964,303),(20,'ru',1104,0.1202,387),(20,'ru',1105,0.1202,388),(25,'ru',1106,0.1277,195),(20,'ru',1106,0.2405,429),(20,'ru',1107,0.1202,424),(20,'ru',1108,0.1202,426),(20,'ru',1109,0.1906,446.5),(20,'ru',1110,0.1202,432),(20,'ru',1111,0.1202,444),(20,'ru',1112,0.1202,445),(20,'ru',1113,0.1202,456),(20,'ru',1114,0.1202,460),(20,'ru',1115,0.1202,462),(20,'ru',1116,0.1202,470),(20,'ru',1117,0.1202,471),(20,'ru',1118,0.1202,481),(27,'ru',1118,0.2391,103.5),(20,'ru',1119,0.1202,496),(20,'ru',1120,0.1202,498),(20,'ru',1121,0.1202,500),(25,'ru',1122,0.2023,277),(22,'ru',1122,0.2137,74.5),(21,'ru',1122,0.4788,250.714),(21,'ru',1123,0.2846,185.75),(21,'ru',1124,0.1942,195.5),(21,'ru',1125,0.2451,211.667),(26,'ru',1126,0.1332,45),(22,'ru',1126,0.2137,71),(29,'ru',1126,0.2675,128),(21,'ru',1126,0.2846,209),(26,'ru',1127,0.1332,47),(29,'ru',1127,0.2675,129),(21,'ru',1127,0.2846,210.75),(21,'ru',1128,0.1942,65),(21,'ru',1129,0.1226,49),(26,'ru',1129,0.1332,68),(27,'ru',1129,0.2391,82),(22,'ru',1130,0.1348,160),(21,'ru',1130,0.2451,163.667),(29,'ru',1130,0.2675,130),(26,'ru',1131,0.1332,211),(21,'ru',1131,0.1942,62.5),(21,'ru',1132,0.1226,62),(21,'ru',1133,0.1226,66),(21,'ru',1134,0.1226,70),(21,'ru',1135,0.1226,73),(21,'ru',1136,0.1226,80),(21,'ru',1137,0.1226,94),(21,'ru',1138,0.1942,97.5),(27,'ru',1138,0.2391,193.5),(22,'ru',1138,0.2696,116),(26,'ru',1138,0.3093,248.25),(21,'ru',1139,0.1226,97),(21,'ru',1140,0.1226,101),(26,'ru',1140,0.1332,224),(27,'ru',1140,0.1508,189),(21,'ru',1141,0.1226,103),(22,'ru',1141,0.1348,52),(21,'ru',1142,0.1226,104),(26,'ru',1142,0.1332,236),(22,'ru',1142,0.1348,82),(21,'ru',1143,0.344,201.167),(21,'ru',1144,0.1942,188.5),(21,'ru',1145,0.2846,188.5),(21,'ru',1146,0.1226,115),(21,'ru',1147,0.1226,118),(25,'ru',1148,0.1277,225),(26,'ru',1148,0.2111,81),(21,'ru',1148,0.2451,232),(21,'ru',1149,0.1942,272),(21,'ru',1150,0.1942,277),(21,'ru',1151,0.1942,285),(21,'ru',1152,0.2451,252),(21,'ru',1153,0.1226,182),(26,'ru',1153,0.1332,44),(29,'ru',1153,0.2675,127),(22,'ru',1153,0.2696,71.6667),(21,'ru',1154,0.1226,205),(21,'ru',1155,0.1226,213),(21,'ru',1156,0.1226,214),(21,'ru',1157,0.1942,275.5),(21,'ru',1158,0.1226,277),(21,'ru',1159,0.1942,307),(21,'ru',1160,0.1942,298),(21,'ru',1161,0.1226,307),(21,'ru',1162,0.1226,335),(21,'ru',1163,0.1942,359),(21,'ru',1164,0.1226,350),(21,'ru',1165,0.1226,354),(21,'ru',1166,0.1226,360),(21,'ru',1167,0.1226,398),(21,'ru',1168,0.1942,430.5),(21,'ru',1169,0.1226,431),(22,'ru',1169,0.2137,72.5),(26,'ru',1169,0.3093,245.25),(21,'ru',1170,0.1226,440),(22,'ru',1170,0.1348,46),(26,'ru',1170,0.2111,247),(21,'ru',1171,0.1226,443),(21,'ru',1172,0.1226,444),(25,'ru',1172,0.1277,243),(21,'ru',1173,0.1226,445),(21,'ru',1174,0.1226,454),(25,'ru',1175,0.1277,339),(22,'ru',1175,0.1348,8),(22,'ru',1176,0.1348,11),(22,'ru',1177,0.1348,18),(22,'ru',1178,0.1348,19),(29,'ru',1179,0.1338,168),(22,'ru',1179,0.2137,73.5),(22,'ru',1180,0.1348,75),(25,'ru',1181,0.1277,145),(22,'ru',1181,0.1348,86),(29,'ru',1181,0.2675,158.667),(24,'ru',1182,0.1197,59),(22,'ru',1182,0.1348,105),(23,'ru',1182,0.1693,60),(22,'ru',1183,0.1348,107),(22,'ru',1184,0.1348,111),(22,'ru',1185,0.1348,129),(22,'ru',1186,0.1348,133),(22,'ru',1187,0.1348,134),(22,'ru',1188,0.1348,137),(22,'ru',1189,0.1348,138),(22,'ru',1190,0.1348,142),(22,'ru',1191,0.1348,143),(22,'ru',1192,0.1348,163),(22,'ru',1193,0.1348,165),(22,'ru',1194,0.1348,173),(22,'ru',1195,0.1348,175),(25,'ru',1196,0.1277,87),(22,'ru',1196,0.1348,179),(22,'ru',1197,0.2137,182.5),(22,'ru',1198,0.1348,181),(22,'ru',1199,0.1348,183),(25,'ru',1200,0.1277,310),(22,'ru',1200,0.1348,186),(22,'ru',1201,0.1348,188),(25,'ru',1202,0.1277,136),(26,'ru',1202,0.1332,145),(22,'ru',1202,0.1348,203),(22,'ru',1203,0.2137,223.5),(22,'ru',1204,0.1348,212),(22,'ru',1205,0.1348,214),(22,'ru',1206,0.1348,217),(22,'ru',1207,0.1348,221),(22,'ru',1208,0.1348,229),(22,'ru',1209,0.1348,230),(22,'ru',1210,0.1348,231),(22,'ru',1211,0.1348,235),(22,'ru',1212,0.1348,239),(22,'ru',1213,0.1348,245),(22,'ru',1214,0.1348,247),(22,'ru',1215,0.1348,249),(25,'ru',1216,0.1277,77),(26,'ru',1216,0.1332,122),(22,'ru',1216,0.1348,261),(22,'ru',1217,0.1348,266),(22,'ru',1218,0.1348,278),(25,'ru',1218,0.2023,194),(22,'ru',1219,0.1348,281),(22,'ru',1220,0.1348,292),(22,'ru',1221,0.1348,295),(22,'ru',1222,0.1348,297),(22,'ru',1223,0.1348,298),(24,'ru',1224,0.1197,13),(23,'ru',1224,0.1693,14),(24,'ru',1225,0.1197,18),(23,'ru',1225,0.1693,19),(24,'ru',1226,0.1197,25),(23,'ru',1226,0.1693,26),(24,'ru',1227,0.1197,31),(23,'ru',1227,0.1693,32),(24,'ru',1228,0.1197,32),(23,'ru',1228,0.1693,33),(24,'ru',1229,0.1197,33),(23,'ru',1229,0.1693,34),(24,'ru',1230,0.1197,34),(23,'ru',1230,0.1693,35),(24,'ru',1231,0.1197,35),(23,'ru',1231,0.1693,36),(24,'ru',1232,0.1197,40),(23,'ru',1232,0.1693,41),(24,'ru',1233,0.1197,41),(26,'ru',1233,0.1332,144),(23,'ru',1233,0.1693,42),(24,'ru',1234,0.1197,42),(23,'ru',1234,0.1693,43),(24,'ru',1235,0.1197,43),(27,'ru',1235,0.1508,187),(23,'ru',1235,0.1693,44),(24,'ru',1236,0.1197,47),(23,'ru',1236,0.1693,48),(24,'ru',1237,0.1197,62),(23,'ru',1237,0.1693,63),(24,'ru',1238,0.1197,120),(28,'ru',1238,0.1649,36),(24,'ru',1239,0.1197,123),(28,'ru',1239,0.1649,39),(24,'ru',1240,0.1197,128),(28,'ru',1240,0.1649,44),(24,'ru',1241,0.1197,130),(28,'ru',1241,0.1649,46),(24,'ru',1242,0.1896,130),(28,'ru',1242,0.2613,46),(24,'ru',1243,0.1197,145),(28,'ru',1243,0.1649,61),(24,'ru',1244,0.1197,153),(28,'ru',1244,0.1649,69),(24,'ru',1245,0.1197,156),(28,'ru',1245,0.1649,72),(24,'ru',1246,0.1197,180),(28,'ru',1246,0.1649,96),(29,'ru',1246,0.4013,105.857),(25,'ru',1247,0.1277,18),(25,'ru',1248,0.1277,29),(25,'ru',1249,0.1277,32),(25,'ru',1250,0.1277,33),(25,'ru',1251,0.1277,35),(25,'ru',1252,0.1277,36),(25,'ru',1253,0.1277,38),(25,'ru',1254,0.2023,48),(25,'ru',1255,0.1277,56),(25,'ru',1256,0.1277,59),(25,'ru',1257,0.1277,61),(25,'ru',1258,0.1277,63),(25,'ru',1259,0.1277,63),(25,'ru',1260,0.1277,64),(25,'ru',1261,0.1277,70),(25,'ru',1262,0.1277,88),(25,'ru',1263,0.1277,88),(25,'ru',1264,0.1277,91),(25,'ru',1265,0.1277,102),(25,'ru',1266,0.1277,110),(25,'ru',1267,0.1277,123),(25,'ru',1268,0.1277,126),(26,'ru',1268,0.1332,20),(25,'ru',1269,0.1277,131),(25,'ru',1270,0.1277,141),(25,'ru',1271,0.1277,143),(25,'ru',1272,0.1277,144),(25,'ru',1273,0.1277,155),(25,'ru',1274,0.1277,158),(25,'ru',1275,0.1277,160),(25,'ru',1276,0.1277,168),(25,'ru',1277,0.1277,173),(25,'ru',1278,0.1277,180),(25,'ru',1279,0.1277,186),(25,'ru',1280,0.1277,188),(25,'ru',1281,0.1277,196),(25,'ru',1282,0.1277,208),(25,'ru',1283,0.1277,210),(25,'ru',1284,0.1277,212),(25,'ru',1285,0.1277,233),(25,'ru',1286,0.1277,241),(25,'ru',1287,0.2023,274.5),(25,'ru',1288,0.1277,255),(25,'ru',1289,0.1277,267),(25,'ru',1290,0.1277,269),(25,'ru',1291,0.2023,314.5),(25,'ru',1292,0.1277,281),(25,'ru',1293,0.2023,303),(25,'ru',1294,0.1277,294),(25,'ru',1295,0.1277,297),(25,'ru',1296,0.1277,312),(25,'ru',1297,0.1277,315),(25,'ru',1298,0.1277,317),(25,'ru',1299,0.1277,331),(25,'ru',1300,0.1277,334),(25,'ru',1301,0.1277,340),(25,'ru',1302,0.1277,348),(26,'ru',1303,0.1332,28),(26,'ru',1304,0.1332,32),(26,'ru',1305,0.1332,39),(29,'ru',1306,0.1338,263),(26,'ru',1306,0.2664,98.6667),(26,'ru',1307,0.1332,64),(26,'ru',1308,0.1332,65),(26,'ru',1309,0.1332,78),(26,'ru',1310,0.1332,82),(26,'ru',1311,0.1332,87),(26,'ru',1312,0.1332,90),(26,'ru',1313,0.1332,91),(26,'ru',1314,0.1332,92),(29,'ru',1314,0.3106,41.75),(26,'ru',1315,0.1332,93),(29,'ru',1315,0.4013,190.286),(26,'ru',1316,0.1332,96),(26,'ru',1317,0.2111,137.5),(26,'ru',1318,0.1332,110),(26,'ru',1319,0.1332,116),(26,'ru',1320,0.1332,119),(26,'ru',1321,0.1332,125),(26,'ru',1322,0.1332,135),(26,'ru',1323,0.1332,137),(26,'ru',1324,0.1332,152),(26,'ru',1325,0.2111,169.5),(26,'ru',1326,0.1332,172),(26,'ru',1327,0.1332,207),(26,'ru',1328,0.1332,226),(26,'ru',1329,0.1332,252),(26,'ru',1330,0.1332,257),(26,'ru',1331,0.1332,271),(27,'ru',1332,0.1508,7),(27,'ru',1333,0.1508,16),(27,'ru',1334,0.1508,22),(27,'ru',1335,0.2391,104.5),(27,'ru',1336,0.3017,88.3333),(27,'ru',1337,0.1508,27),(27,'ru',1338,0.2391,83.5),(27,'ru',1339,0.3017,43.6667),(27,'ru',1340,0.3899,122.8),(27,'ru',1341,0.2391,128.5),(27,'ru',1342,0.2391,133.5),(27,'ru',1343,0.1508,163),(27,'ru',1344,0.1508,165),(29,'ru',1345,0.1338,5),(27,'ru',1345,0.1508,169),(27,'ru',1346,0.1508,193),(29,'ru',1347,0.2675,63.6667),(29,'ru',1348,0.1338,41),(29,'ru',1349,0.1338,42),(29,'ru',1350,0.2675,147.333),(29,'ru',1351,0.2675,151.667),(29,'ru',1352,0.212,89.5),(29,'ru',1353,0.1338,100),(29,'ru',1354,0.1338,106),(29,'ru',1355,0.1338,148),(29,'ru',1356,0.1338,163),(29,'ru',1357,0.1338,169),(29,'ru',1358,0.1338,170),(29,'ru',1359,0.1338,179),(29,'ru',1360,0.1338,182),(29,'ru',1361,0.1338,183),(29,'ru',1362,0.1338,184),(29,'ru',1363,0.1338,186),(29,'ru',1364,0.1338,188),(29,'ru',1365,0.1338,189),(29,'ru',1366,0.1338,259),(29,'ru',1367,0.1338,272),(29,'ru',1368,0.1338,273),(29,'ru',1369,0.1338,281),(37,'ru',1467,0.2314,1),(50,'ru',1467,0.2314,1),(45,'ru',1468,0.4265,203.364),(46,'ru',1468,0.4265,203.364),(47,'ru',1468,0.4265,203.364),(48,'ru',1468,0.4265,203.364),(49,'ru',1468,0.4265,203.364),(45,'ru',1469,0.5306,205.905),(46,'ru',1469,0.5306,205.905),(47,'ru',1469,0.5306,205.905),(48,'ru',1469,0.5306,205.905),(49,'ru',1469,0.5306,205.905),(45,'ru',1470,0.4265,205.364),(46,'ru',1470,0.4265,205.364),(47,'ru',1470,0.4265,205.364),(48,'ru',1470,0.4265,205.364),(49,'ru',1470,0.4265,205.364),(45,'ru',1471,0.4265,206.364),(46,'ru',1471,0.4265,206.364),(47,'ru',1471,0.4265,206.364),(48,'ru',1471,0.4265,206.364),(49,'ru',1471,0.4265,206.364),(45,'ru',1472,0.4265,207.364),(46,'ru',1472,0.4265,207.364),(47,'ru',1472,0.4265,207.364),(48,'ru',1472,0.4265,207.364),(49,'ru',1472,0.4265,207.364),(45,'ru',1473,0.4265,208.364),(46,'ru',1473,0.4265,208.364),(47,'ru',1473,0.4265,208.364),(48,'ru',1473,0.4265,208.364),(49,'ru',1473,0.4265,208.364),(45,'ru',1474,0.4265,214.364),(46,'ru',1474,0.4265,214.364),(47,'ru',1474,0.4265,214.364),(48,'ru',1474,0.4265,214.364),(49,'ru',1474,0.4265,214.364),(45,'ru',1475,0.4265,215.364),(46,'ru',1475,0.4265,215.364),(47,'ru',1475,0.4265,215.364),(48,'ru',1475,0.4265,215.364),(49,'ru',1475,0.4265,215.364),(45,'ru',1476,0.4265,217.273),(46,'ru',1476,0.4265,217.273),(47,'ru',1476,0.4265,217.273),(48,'ru',1476,0.4265,217.273),(49,'ru',1476,0.4265,217.273),(45,'ru',1477,0.4265,218.273),(46,'ru',1477,0.4265,218.273),(47,'ru',1477,0.4265,218.273),(48,'ru',1477,0.4265,218.273),(49,'ru',1477,0.4265,218.273),(45,'ru',1478,0.4265,219.273),(46,'ru',1478,0.4265,219.273),(47,'ru',1478,0.4265,219.273),(48,'ru',1478,0.4265,219.273),(49,'ru',1478,0.4265,219.273),(45,'ru',1479,0.4116,240.6),(46,'ru',1479,0.4116,240.6),(47,'ru',1479,0.4116,240.6),(48,'ru',1479,0.4116,240.6),(49,'ru',1479,0.4116,240.6),(45,'ru',1488,0.3075,184.6),(46,'ru',1488,0.3075,184.6),(47,'ru',1488,0.3075,184.6),(48,'ru',1488,0.3075,184.6),(49,'ru',1488,0.3075,184.6),(45,'ru',1489,0.4116,204.6),(46,'ru',1489,0.4116,204.6),(47,'ru',1489,0.4116,204.6),(48,'ru',1489,0.4116,204.6),(49,'ru',1489,0.4116,204.6),(45,'ru',1490,0.4116,205.6),(46,'ru',1490,0.4116,205.6),(47,'ru',1490,0.4116,205.6),(48,'ru',1490,0.4116,205.6),(49,'ru',1490,0.4116,205.6),(45,'ru',1491,0.4116,206.6),(46,'ru',1491,0.4116,206.6),(47,'ru',1491,0.4116,206.6),(48,'ru',1491,0.4116,206.6),(49,'ru',1491,0.4116,206.6),(45,'ru',1492,0.4116,208.6),(46,'ru',1492,0.4116,208.6),(47,'ru',1492,0.4116,208.6),(48,'ru',1492,0.4116,208.6),(49,'ru',1492,0.4116,208.6),(45,'ru',1493,0.4116,210.6),(46,'ru',1493,0.4116,210.6),(47,'ru',1493,0.4116,210.6),(48,'ru',1493,0.4116,210.6),(49,'ru',1493,0.4116,210.6),(45,'ru',1494,0.4116,211.6),(46,'ru',1494,0.4116,211.6),(47,'ru',1494,0.4116,211.6),(48,'ru',1494,0.4116,211.6),(49,'ru',1494,0.4116,211.6),(45,'ru',1495,0.4116,212.6),(46,'ru',1495,0.4116,212.6),(47,'ru',1495,0.4116,212.6),(48,'ru',1495,0.4116,212.6),(49,'ru',1495,0.4116,212.6),(45,'ru',1496,0.4116,214.6),(46,'ru',1496,0.4116,214.6),(47,'ru',1496,0.4116,214.6),(48,'ru',1496,0.4116,214.6),(49,'ru',1496,0.4116,214.6),(45,'ru',1497,0.4116,215.6),(46,'ru',1497,0.4116,215.6),(47,'ru',1497,0.4116,215.6),(48,'ru',1497,0.4116,215.6),(49,'ru',1497,0.4116,215.6),(45,'ru',1498,0.4116,216.6),(46,'ru',1498,0.4116,216.6),(47,'ru',1498,0.4116,216.6),(48,'ru',1498,0.4116,216.6),(49,'ru',1498,0.4116,216.6),(37,'ru',1499,0.2314,26),(45,'ru',1499,0.4116,217.6),(46,'ru',1499,0.4116,217.6),(47,'ru',1499,0.4116,217.6),(48,'ru',1499,0.4116,217.6),(49,'ru',1499,0.4116,217.6),(45,'ru',1500,0.4116,218.6),(46,'ru',1500,0.4116,218.6),(47,'ru',1500,0.4116,218.6),(48,'ru',1500,0.4116,218.6),(49,'ru',1500,0.4116,218.6),(45,'ru',1501,0.5226,220.6),(46,'ru',1501,0.5226,220.6),(47,'ru',1501,0.5226,220.6),(48,'ru',1501,0.5226,220.6),(49,'ru',1501,0.5226,220.6),(45,'ru',1502,0.5226,221.6),(46,'ru',1502,0.5226,221.6),(47,'ru',1502,0.5226,221.6),(48,'ru',1502,0.5226,221.6),(49,'ru',1502,0.5226,221.6),(45,'ru',1503,0.4116,236.6),(46,'ru',1503,0.4116,236.6),(47,'ru',1503,0.4116,236.6),(48,'ru',1503,0.4116,236.6),(49,'ru',1503,0.4116,236.6),(45,'ru',1504,0.3075,222.6),(46,'ru',1504,0.3075,222.6),(47,'ru',1504,0.3075,222.6),(48,'ru',1504,0.3075,222.6),(49,'ru',1504,0.3075,222.6),(45,'ru',1505,0.3075,260.6),(46,'ru',1505,0.3075,260.6),(47,'ru',1505,0.3075,260.6),(48,'ru',1505,0.3075,260.6),(49,'ru',1505,0.3075,260.6),(37,'ru',1512,0.3667,13),(37,'ru',1513,0.2314,25),(37,'ru',1514,0.2314,27),(37,'ru',1515,0.2314,28),(2,'ru',1516,0.3667,2),(38,'ru',1518,0.3667,2),(39,'ru',1519,0.3667,2),(40,'ru',1520,0.2314,1),(41,'ru',1521,0.2314,1),(42,'ru',1522,0.2314,1),(43,'ru',1523,0.2314,1),(44,'ru',1524,0.2314,1),(45,'ru',1525,0.119,17),(45,'ru',1526,0.1886,60),(46,'ru',1526,0.1886,60),(47,'ru',1526,0.1886,60),(48,'ru',1526,0.1886,60),(49,'ru',1526,0.1886,60),(46,'ru',1527,0.119,17),(47,'ru',1528,0.119,17),(48,'ru',1529,0.119,17),(49,'ru',1530,0.119,17),(37,'ru',1531,0.2314,29);
/*!40000 ALTER TABLE `b_search_content_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_text`
--

DROP TABLE IF EXISTS `b_search_content_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_text`
--

LOCK TABLES `b_search_content_text` WRITE;
/*!40000 ALTER TABLE `b_search_content_text` DISABLE KEYS */;
INSERT INTO `b_search_content_text` VALUES (1,'adb27eea179be3c992aeb74e1acb2c41','ИСТОРИЯ КОМПАНИИ\r\nЗАО «БАНК» ОСНОВАН 18 ЯНВАРЯ 1993 ГОДА.\rДО 1996 ГОДА БАНК РАЗВИВАЛСЯ КАК НЕБОЛЬШОЙ КОММЕРЧЕСКИЙ БАНК.\r1996 ГОД. ОТКРЫВАЕТСЯ ПЕРВЫЙ ДОПОЛНИТЕЛЬНЫЙ ОФИС ПО РАБОТЕ С НАСЕЛЕНИЕМ. БАНК ПРИСТУПАЕТ К АКТИВНОМУ РАЗВИТИЮ ФИЛИАЛЬНОЙ СЕТИ. \r1997 ГОД. БАНК НАЧИНАЕТ ВЫПУСК И ОБСЛУЖИВАНИЕ ПЛАСТИКОВЫХ КАРТ, ИСПОЛЬЗОВАНИЕ КОТОРЫХ ПОЗВОЛЯЕТ ВЫНЕСТИ ФИНАНСОВЫЙ СЕРВИС ЗА ПРЕДЕЛЫ ПРИВЫЧНЫХ ОПЕРАЦИОННЫХ ЗАЛОВ БАНКА И ФИЛИАЛОВ НА МЕСТА ФАКТИЧЕСКОГО ВОСТРЕБОВАНИЯ УСЛУГ.\rЯНВАРЬ 1998 ГОДА. БАНК ПОЛУЧАЕТ ЛИЦЕНЗИЮ ПРОФЕССИОНАЛЬНОГО УЧАСТНИКА РЫНКА ЦЕННЫХ БУМАГ. ПО РЕЗУЛЬТАТАМ АНАЛИЗА БУХГАЛТЕРСКОЙ И ФИНАНСОВОЙ ОТЧЁТНОСТИ БАНК ОТНОСИТСЯ ПО КРИТЕРИЯМ ЦБ РФ К ПЕРВОЙ КАТЕГОРИИ – ФИНАНСОВО СТАБИЛЬНЫЕ БАНКИ.\r1999 ГОД. БАНК, УСПЕШНО ПРЕОДОЛЕВ КРИЗИС, ПРОДОЛЖАЕТ АКТИВНОЕ РАЗВИТИЕ ФИЛИАЛЬНОЙ СЕТИ. В ЭТОМ ЖЕ ГОДУ БАНК ПРИСТУПАЕТ К РЕАЛИЗАЦИИ ПРОГРАММЫ ИПОТЕЧНОГО КРЕДИТОВАНИЯ МУНИЦИПАЛЬНЫХ СЛУЖАЩИХ.\r2004ГОД. БАНК ПРИСТУПАЕТ К ВЫПУСКУ КАРТ ПЛАТЁЖНОЙ СИСТЕМЫ VISA INTERNATIONAL. В ТЕЧЕНИЕ 2004 ГОДА БАНК ПРЕДСТАВИЛ КЛИЕНТАМ РЯД ВЫСОКОТЕХНОЛОГИЧНЫХ ПРОДУКТОВ. В ОБЛАСТИ КРЕДИТОВАНИЯ ФИЗИЧЕСКИХ ЛИЦ – СИСТЕМУ ИНТЕРНЕТ-КРЕДИТОВАНИЯ НА ПРИОБРЕТЕНИЕ АВТОМОБИЛЕЙ, ОБУЧЕНИЕ В ВУЗЕ, ОТДЫХ И ТУРИЗМ. \r2006 ГОД. ДЕСЯТЬ ЛЕТ С НАЧАЛА РАБОТЫ БАНКА В ОБЛАСТИ ПРЕДОСТАВЛЕНИЯ ФИНАНСОВЫХ УСЛУГ НАСЕЛЕНИЮ. ЗА ЭТО ВРЕМЯ В БАНКЕ ВЗЯЛИ КРЕДИТ БОЛЕЕ 50 000 ЧЕЛОВЕК, БОЛЕЕ 200 000 ЧЕЛОВЕК ДОВЕРИЛИ СВОИ ДЕНЬГИ, СДЕЛАВ ВКЛАДЫ, БОЛЕЕ 50 000 ЧЕЛОВЕК СТАЛИ ДЕРЖАТЕЛЯМИ ПЛАСТИКОВЫХ КАРТ БАНКА.\r2007 ГОД. БАНК ПОЛУЧАЕТ ГЛАВНУЮ ВСЕРОССИЙСКУЮ ПРЕМИЮ «РОССИЙСКИЙ НАЦИОНАЛЬНЫЙ ОЛИМП» В ЧИСЛЕ ЛУЧШИХ ПРЕДПРИЯТИЙ МАЛОГО И СРЕДНЕГО БИЗНЕСА РОССИИ.\r2008 ГОД. ПО РЕЗУЛЬТАТАМ МЕЖДУНАРОДНОГО КОНКУРСА \"ЗОЛОТАЯ МЕДАЛЬ \"ЕВРОПЕЙСКОЕ КАЧЕСТВО\", ПРОВЕДЕННОГО МЕЖДУНАРОДНОЙ АКАДЕМИЕЙ КАЧЕСТВА И МАРКЕТИНГА\" И АССОЦИАЦИЕЙ КАЧЕСТВЕННОЙ ПРОДУКЦИИ БАНК СТАНОВИТСЯ ЛАУРЕАТОМ МЕЖДУНАРОДНОЙ НАГРАДЫ \"ЗОЛОТАЯ МЕДАЛЬ \"ЕВРОПЕЙСКОЕ КАЧЕСТВО\".\r2009 ГОД. ПЕРЕХОД НА НОВУЮ АВТОМАТИЗИРОВАННУЮ БАНКОВСКУЮ СИСТЕМУ IBANK SYSTEM РОССИЙСКОЙ КОМПАНИИ «МКТ».\r2010 ГОД. ПО ДАННЫМ ФИНАНСОВОЙ ОТЧЁТНОСТИ НА 1 ЯНВАРЯ 2010 ГОДА БАНК ЗАВЕРШАЕТ 2009 ГОД С ПОЛОЖИТЕЛЬНЫМИ РЕЗУЛЬТАТАМИ. РАЗМЕР ПРИБЫЛИ ЗА 2009 ГОД СОСТАВЛЯЕТ 95 149 ТЫС. РУБЛЕЙ. ПОЛОЖИТЕЛЬНУЮ ДИНАМИКУ РОСТА ПОКАЗЫВАЮТ ПОЧТИ ВСЕ ФИНАНСОВЫЕ ПОКАЗАТЕЛИ.УСТАВНЫЙ КАПИТАЛ БАНКА УВЕЛИЧИВАЕТСЯ НА 20 % И НА ДАННЫЙ МОМЕНТ СОСТАВЛЯЕТ 415 240 ТЫСЯЧ РУБЛЕЙ.РАЗМЕР СОБСТВЕННОГО КАПИТАЛА БАНКА СОСТАВЛЯЕТ 1 535 522 ТЫСЯЧИ РУБЛЕЙ, ЧТО НА 31 % БОЛЬШЕ ЧЕМ В ПРОШЛОМ ГОДУ. \rЧАСТЬ ДОХОДА ЗА 2009 ГОД БАНК НАПРАВЛЯЕТ НА ФОРМИРОВАНИЕ РЕЗЕРВА НА ВОЗМОЖНЫЕ ПОТЕРИ ПО ССУДАМ, ССУДНОЙ И ПРИРАВНЕННОЙ К НЕЙ ЗАДОЛЖЕННОСТИ. ОБЪЁМ ТАКОГО РЕЗЕРВА ПО СОСТОЯНИЮ НА 1 ФЕВРАЛЯ 2010 ГОДА СОСТАВЛЯЕТ ПОРЯДКА 650 МЛН. РУБЛЕЙ.\rСВОЕ ДАЛЬНЕЙШЕЕ РАЗВИТИЕ БАНК СВЯЗЫВАЕТ С ПОВЫШЕНИЕМ КАЧЕСТВА И НАРАЩИВАНИЕМ ОБЪЕМОВ УСЛУГ, СОБСТВЕННОГО КАПИТАЛА, ВНЕДРЕНИЕМ НОВЕЙШИХ ТЕХНОЛОГИЙ, СОВЕРШЕНСТВОВАНИЕМ ФОРМ ОБСЛУЖИВАНИЯ КЛИЕНТОВ И РАЗВИТИЕМ НОВЫХ ПЕРСПЕКТИВНЫХ НАПРАВЛЕНИЙ В РАБОТЕ.\r\n'),(2,'a7d99e2a8d6430997e7f7992554dcd81','ABOUT\r\nСТРАНИЦА ABOUT\r\n'),(3,'04af3cb7a7124d187c790f71d33d78bb','РУКОВОДСТВО\r\nКОЛЛЕГИАЛЬНЫЙ ИСПОЛНИТЕЛЬНЫЙ ОРГАН ПРАВЛЕНИЯ БАНКА\rДОЛЖНОСТЬ\rОБРАЗОВАНИЕ\rПЛЕШКОВ ЮРИЙ ГРИГОРЬЕВИЧ \rНАЧАЛЬНИК ЭКОНОМИЧЕСКОГО УПРАВЛЕНИЯ \rВ 1996 ГОДУ ОКОНЧИЛ ИРКУТСКУЮ ГОСУДАРСТВЕННУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ПО СПЕЦИАЛЬНОСТИ ФИНАНСЫ И КРЕДИТ \rСМИРНОВ ВЯЧЕСЛАВ ЕВГЕНЬЕВИЧ \rЗАМЕСТИТЕЛЬ ПРЕДСЕДАТЕЛЯ ПРАВЛЕНИЯ \rВ 1991 ГОДУ ОКОНЧИЛ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ (МОСКВА). В 2000 ГОДУ ПОЛУЧИЛ СТЕПЕНЬ MBA В БИЗНЕС-ШКОЛЕ INSEAD. \rКОРНЕВА ИРИНА СТАНИСЛАВОВНА \rЗАМЕСТИТЕЛЬ ПРЕДСЕДАТЕЛЯ ПРАВЛЕНИЯ \rВ 1997 ГОДУ ОКОНЧИЛА МОСКОВСКУЮ ГОСУДАРСТВЕННУЮ ЮРИДИЧЕСКУЮ АКАДЕМИЮ ПО СПЕЦИАЛЬНОСТИ «БАНКОВСКОЕ ДЕЛО» \rИГНАТЬЕВ ВАДИМ МИХАЙЛОВИЧ \rПЕРВЫЙ ЗАМЕСТИТЕЛЬ ПРЕДСЕДАТЕЛЯ ПРАВЛЕНИЯ \rВ 1988 ГОДУ ОКОНЧИЛ ИРКУТСКУЮ ГОСУДАРСТВЕННУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ПО СПЕЦИАЛЬНОСТИ «ЭКОНОМИКА И УПРАВЛЕНИЕ ПРОИЗВОДСТВОМ» \rВОЛОШИН СТАНИСЛАВ СЕМЕНОВИЧ \rПРЕДСЕДАТЕЛЬ ПРАВЛЕНИЯ \rВ 1986 ГОДУ ОКОНЧИЛ СВЕРДЛОВСКИЙ ЮРИДИЧЕСКИЙ ИНСТИТУТ ПО СПЕЦИАЛЬНОСТИ «ПРАВОВЕДЕНИЕ» И МОСКОВСКИЙ ИНДУСТРИАЛЬНЫЙ ИНСТИТУТ ПО СПЕЦИАЛЬНОСТИ «ЭКОНОМИКА И УПРАВЛЕНИЕ НА ПРЕДПРИЯТИИ» \rСПИСОК ЧЛЕНОВ СОВЕТА ДИРЕКТОРОВ БАНКА\rДОЛЖНОСТЬ\rОБРАЗОВАНИЕ\rМИХАЙЛОВА ТАТЬЯНА ВАСИЛЬЕВНА \rДИРЕКТОР ПО ФИНАНСАМ \rВ 1996 ГОДУ ОКОНЧИЛА РОССИЙСКУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ИМ. Г.В. ПЛЕХАНОВА ПО СПЕЦИАЛЬНОСТИ «БАНКОВСКОЕ ДЕЛО». \rЛЯХ ЕВГЕНИЙ ВИКТОРОВИЧ \rДИРЕКТОР ПО ОБЕСПЕЧЕНИЮ БАНКОВСКОЙ ДЕЯТЕЛЬНОСТИ \rВ 1993 ГОДУ ОКОНЧИЛ РОССИЙСКУЮ ЭКОНОМИЧЕСКУЮ АКАДЕМИЮ ИМ. ПЛЕХАНОВА, ПО СПЕЦИАЛЬНОСТИ МВА «СТРАТЕГИЧЕСКИЙ МЕНЕДЖМЕНТ». \rКОНДРУСЕВ РОМАН АЛЕКСАНДРОВИЧ \rДИРЕКТОР КАЗНАЧЕЙСТВА \rВ 1993 ГОДУ ОКОНЧИЛ КЕМЕРОВСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ ПО СПЕЦИАЛЬНОСТИ «ПРАВОВЕДЕНИЕ» \rХРАМОВ АНАТОЛИЙ ФЁДОРОВИЧ \rДИРЕКТОР ПО РАБОТЕ С ПЕРСОНАЛОМ \rВ 1996 ГОДУ ОКОНЧИЛ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ УПРАВЛЕНИЯ ПО СПЕЦИАЛИЗАЦИИ «УПРАВЛЕНИЕ ПЕРСОНАЛОМ». В 2002 ПРОШЕЛ ПРОГРАММУ ПОВЫШЕНИЯ КВАЛИФИКАЦИИ «СОВРЕМЕННЫЕ ТЕХНОЛОГИИ УПРАВЛЕНИЯ ЧЕЛОВЕЧЕСКИМИ РЕСУРСАМИ» \rЖУРАВЛЕВА ОЛЬГА НИКОЛАЕВНА \rГЛАВНЫЙ БУХГАЛТЕР \rВ 1985 ГОДУ ОКОНЧИЛА САНКТ-ПЕТЕРБУРГСКИЙ ИНСТИТУТ НАРОДНОГО ХОЗЯЙСТВА ПО СПЕЦИАЛЬНОСТИ «БУХГАЛТЕРСКИЙ УЧЕТ» \rКАЛИНИН АНДРЕЙ ГЕННАДЬЕВИЧ \rДИРЕКТОР ДЕПАРТАМЕНТА КОРПОРАТИВНОГО БИЗНЕСА \rВ 1998 ГОДУ ЗАКОНЧИЛ МОСКОВСКИЙ ГОСУДАРСТВЕННЫЙ ИНСТИТУТ МЕЖДУНАРОДНЫХ ОТНОШЕНИЙ, В 2002  ШКОЛУ МЕНЕДЖМЕНТА УНИВЕРСИТЕТА АНТВЕРПЕНА (UAMS) ПО СПЕЦИАЛЬНОСТИ MBA.\r\n'),(4,'17c27477cd3b1c927b1f739b9300ef80','МИССИЯ\r\nМИССИЯ БАНКА - ПРЕДОСТАВЛЯТЬ КАЖДОМУ КЛИЕНТУ МАКСИМАЛЬНО ВОЗМОЖНЫЙ НАБОР БАНКОВСКИХ УСЛУГ ВЫСОКОГО КАЧЕСТВА И НАДЕЖНОСТИ,СЛЕДУЯ\rМИРОВЫМ СТАНДАРТАМ И ПРИНЦИПАМ КОРПОРАТИВНОЙ ЭТИКИ. НАШ БАНК - ЭТО СОВРЕМЕННЫЙ ВЫСОКОТЕХНОЛОГИЧНЫЙ БАНК,СОЧЕТАЮЩИЙ\rВ СЕБЕ НОВЕЙШИЕ ТЕХНОЛОГИИ ОКАЗАНИЯ УСЛУГ И ЛУЧШИЕ ТРАДИЦИИ БАНКОВСКОГО СООБЩЕСТВА И РОССИЙСКОГО ПРЕДПРИНИМАТЕЛЬСТВА.\rИНДИВИДУАЛЬНЫЙ ПОДХОД\rНАША ЦЕЛЬ — ПРЕДОСТАВЛЕНИЕ КАЖДОМУ КЛИЕНТУ ПОЛНОГО КОМПЛЕКСА СОВРЕМЕННЫХ БАНКОВСКИХ ПРОДУКТОВ И УСЛУГ С ИСПОЛЬЗОВАНИЕМ ПОСЛЕДНИХ ДОСТИЖЕНИЙ И ИННОВАЦИЙ В СФЕРЕ ФИНАНСОВЫХ ТЕХНОЛОГИЙ. ИНДИВИДУАЛЬНЫЙ ПОДХОД К СИТУАЦИИ И ПРОБЛЕМАТИКЕ КАЖДОГО КЛИЕНТА И ФИЛОСОФИЯ ПАРТНЕРСТВА - ОСНОВЫ ВЗАИМОДЕЙСТВИЯ С НАШИМИ КЛИЕНТАМИ.\rУНИВЕРСАЛЬНОСТЬ\rБАНК ОБЕСПЕЧИВАЕТ СВОИМ КЛИЕНТАМ — ЧАСТНЫМ ЛИЦАМ, КРУПНЕЙШИМ ОТРАСЛЕВЫМ КОМПАНИЯМ, ПРЕДПРИЯТИЯМ СРЕДНЕГО И МАЛОГО БИЗНЕСА, ГОСУДАРСТВЕННЫМ СТРУКТУРАМ — ШИРОКИЙ СПЕКТР УСЛУГ. ЧТОБЫ МАКСИМАЛЬНО ПОЛНО ОБЕСПЕЧИТЬ ПОТРЕБНОСТИ КЛИЕНТОВ, МЫ АКТИВНО РАЗВИВАЕМ ФИЛИАЛЬНУЮ СЕТЬ В РОССИИ И ЗА ЕЕ ПРЕДЕЛАМИ. ЭТО ПОЗВОЛЯЕТ НАШИМ КЛИЕНТАМ ВСЕГДА И ВЕЗДЕ ПОЛУЧАТЬ СОВРЕМЕННЫЕ БАНКОВСКИЕ УСЛУГИ НА УРОВНЕ МИРОВЫХ СТАНДАРТОВ.\rБАНК — НАДЕЖНЫЙ ПАРТНЕР ПРИ РЕАЛИЗАЦИИ КРУПНЫХ СОЦИАЛЬНО-ЭКОНОМИЧЕСКИХ ПРОЕКТОВ РОССИИ И ЯВЛЯЕТСЯ ОДНИМ ИЗ ЛИДЕРОВ НА РЫНКЕ ИНВЕСТИЦИОННОГО ОБЕСПЕЧЕНИЯ РЕГИОНАЛЬНЫХ ПРОГРАММ.\rПАРТНЕРСТВО И ПОМОЩЬ В РАЗВИТИИ БИЗНЕСА\rВ СВОЕЙ ДЕЯТЕЛЬНОСТИ МЫ ОПИРАЕМСЯ НА ВЫСОЧАЙШИЕ СТАНДАРТЫ ПРЕДОСТАВЛЕНИЯ ФИНАНСОВЫХ УСЛУГ И ТЩАТЕЛЬНЫЙ АНАЛИЗ РЫНКА.\rПРЕДЛАГАЯ АДРЕСНЫЕ РЕШЕНИЯ И СОБЛЮДАЯ КОНФИДЕНЦИАЛЬНОСТЬ ВЗАИМООТНОШЕНИЙ С ПАРТНЕРАМИ, БАНК ПРОЯВЛЯЕТ ГИБКИЙ ПОДХОД К ЗАПРОСАМ КЛИЕНТОВ, КАК РОЗНИЧНЫХ, ТАК И КОРПОРАТИВНЫХ. ВНЕДРЯЯ ПЕРЕДОВЫЕ ТЕХНОЛОГИИ И ИННОВАЦИОННЫЕ РЕШЕНИЯ, БАНК ГАРАНТИРУЕТ КЛИЕНТАМ ВЫСОКОЕ КАЧЕСТВО ОБСЛУЖИВАНИЯ И СТАБИЛЬНЫЙ ДОХОД.\rМЫ ЧЕСТНЫ И ОТКРЫТЫ ПО ОТНОШЕНИЮ КО ВСЕМ НАШИМ ПАРТНЕРАМ И СТРЕМИМСЯ БЫТЬ ПРИМЕРОМ НАДЕЖНОСТИ И ЭФФЕКТИВНОСТИ ДЛЯ ВСЕХ, КТО С НАМИ СОТРУДНИЧАЕТ.\rСОЦИАЛЬНАЯ ОТВЕТСТВЕННОСТЬ\rБАНК ОРИЕНТИРОВАН НА ПОДДЕРЖКУ СОЦИАЛЬНО-ЭКОНОМИЧЕСКОГО РАЗВИТИЯ КЛИЕНТОВ. МЫ ВНОСИМ ВКЛАД В ПОВЫШЕНИЕ БЛАГОСОСТОЯНИЯ ОБЩЕСТВА, ПРЕДОСТАВЛЯЯ НАШИМ КЛИЕНТАМ ПЕРВОКЛАССНЫЕ ЭКОНОМИЧЕСКИЕ ВОЗМОЖНОСТИ, А ТАКЖЕ РЕАЛИЗУЯ ЭКОЛОГИЧЕСКИЕ ПРОГРАММЫ, ОБРАЗОВАТЕЛЬНЫЕ И КУЛЬТУРНЫЕ ПРОЕКТЫ. БАНК ОКАЗЫВАЕТ БЛАГОТВОРИТЕЛЬНУЮ ПОМОЩЬ СОЦИАЛЬНО НЕЗАЩИЩЕННЫМ СЛОЯМ ОБЩЕСТВА, УЧРЕЖДЕНИЯМ МЕДИЦИНЫ, ОБРАЗОВАНИЯ И КУЛЬТУРЫ, СПОРТИВНЫМ И РЕЛИГИОЗНЫМ ОРГАНИЗАЦИЯМ В РЕГИОНАХ РОССИИ. \rНАШ БАНК — ЭТО БАНК, РАБОТАЮЩИЙ НА БЛАГО ОБЩЕСТВА, CТРАНЫ И КАЖДОГО ЕЕ ЖИТЕЛЯ.\r\n'),(5,'d6ae18283686e0f65091531174c8b418','ВАКАНСИИ\r\n\r\n'),(6,'06cecc23c5cc18e8d1e0166639dc5c25','АВТОРИЗАЦИЯ\r\nВЫ ЗАРЕГИСТРИРОВАНЫ И УСПЕШНО АВТОРИЗОВАЛИСЬ.\rИСПОЛЬЗУЙТЕ АДМИНИСТРАТИВНУЮ ПАНЕЛЬ В ВЕРХНЕЙ ЧАСТИ ЭКРАНА ДЛЯ БЫСТРОГО ДОСТУПА К ФУНКЦИЯМ УПРАВЛЕНИЯ СТРУКТУРОЙ И ИНФОРМАЦИОННЫМ НАПОЛНЕНИЕМ САЙТА. НАБОР КНОПОК ВЕРХНЕЙ ПАНЕЛИ ОТЛИЧАЕТСЯ ДЛЯ РАЗЛИЧНЫХ РАЗДЕЛОВ САЙТА. ТАК ОТДЕЛЬНЫЕ НАБОРЫ ДЕЙСТВИЙ ПРЕДУСМОТРЕНЫ ДЛЯ УПРАВЛЕНИЯ СТАТИЧЕСКИМ СОДЕРЖИМЫМ СТРАНИЦ, ДИНАМИЧЕСКИМИ ПУБЛИКАЦИЯМИ (НОВОСТЯМИ, КАТАЛОГОМ, ФОТОГАЛЕРЕЕЙ) И Т.П.\rВЕРНУТЬСЯ НА ГЛАВНУЮ СТРАНИЦУ\r\n'),(7,'ea6b7e8f2315bef45aff06046bff51b8','ЗАДАТЬ ВОПРОС\r\n\r\n'),(8,'7535a1f25a1d9dccc214848d4086e066','КОНТАКТНАЯ ИНФОРМАЦИЯ\r\nОБРАТИТЕСЬ К НАШИМ СПЕЦИАЛИСТАМ И ПОЛУЧИТЕ ПРОФЕССИОНАЛЬНУЮ КОНСУЛЬТАЦИЮ ПО УСЛУГАМ НАШЕГО БАНКА.\rВЫ МОЖЕТЕ ОБРАТИТЬСЯ К НАМ ПО ТЕЛЕФОНУ, ПО ЭЛЕКТРОННОЙ ПОЧТЕ ИЛИ ДОГОВОРИТЬСЯ О ВСТРЕЧЕ В НАШЕМ ОФИСЕ. БУДЕМ РАДЫ ПОМОЧЬ ВАМ И ОТВЕТИТЬ НА ВСЕ ВАШИ ВОПРОСЫ. \rТЕЛЕФОНЫ\rТЕЛЕФОН/ФАКС: \n(495) 212-85-06\rТЕЛЕФОНЫ: \n(495) 212-85-07\r(495) 212-85-08\rНАШ ОФИС В МОСКВЕ\r\n'),(9,'5cb3783e398e7c6ed1983ad2cd1d6419','НАШИ РЕКВИЗИТЫ\r\nНАИМЕНОВАНИЕ БАНКА\rЗАКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"НАЗВАНИЕ БАНКА\"\rСОКРАЩЕННОЕ НАЗВАНИЕ\rЗАО \"НАЗВАНИЕ БАНКА\"\rПОЛНОЕ НАИМЕНОВАНИЕ НА АНГЛИЙСКОМ ЯЗЫКЕ\r\"THE NAME OF BANK\"\rОСНОВНОЙ ГОСУДАРСТВЕННЫЙ РЕГИСТРАЦИОННЫЙ НОМЕР\r152073950937987\rTELEX\r911156 IRS RU\rS.W.I.F.T.\rIISARUMM\rSPRINT\rRU.BANK/BITEX\rЮРИДИЧЕСКИЙ АДРЕС: \r175089, РОССИЯ, Г. МОСКВА, УЛ. БОЛЬШАЯ ДМИТРОВКА, Д. 15, СТР. 1\rКОР/СЧЕТ: \r30102810000000000569\rИНН:\r7860249880\rБИК:\r044591488\rОКПО:\r11806935\rОКОНХ:\r98122\rКПП:\r775021017\rПРОЧАЯ ИНФОРМАЦИЯ\rБАНКОВСКИЙ ИДЕНТИФИКАЦИОННЫЙ КОД: 0575249000\rПОЧТОВЫЙ АДРЕС: 115035, РОССИЯ, Г. МОСКВА, УЛ. БАЛЧУГ, Д. 2\rТЕЛЕФОН: (495) 960-10-12\rФАКС: (495) 240-38-12\rE-MAIL: \rRUSBK@MAIL.RUSBANK.RU\r\n'),(10,'21114cbd09d60ca232b3e53d004564dc','НОВОСТИ КОМПАНИИ\r\n\r\n'),(11,'f58e028735b5d07233c4a161c9231405','ПОИСК\r\n\r\n'),(12,'be3fe2336ca014ea48484837a6379cf7','КАРТА САЙТА\r\n\r\n'),(13,'ddea3137a2dc2052dfdc6ef265d0e1de','ИНТЕРНЕТ-БАНКИНГ\r\n\"ИНТЕРНЕТ-БАНК\" — ЭТО ПОЛНОФУНКЦИОНАЛЬНАЯ, УДОБНАЯ И БЕЗОПАСНАЯ СИСТЕМА ДИСТАНЦИОННОГО БАНКОВСКОГО ОБСЛУЖИВАНИЯ, С ЕЕ ПОМОЩЬЮ ВЫ МОЖЕТЕ В ПОЛНОМ ОБЪЕМЕ УПРАВЛЯТЬ БАНКОВСКИМИ СЧЕТАМИ В РЕЖИМЕ РЕАЛЬНОГО ВРЕМЕНИ. ПОНЯТНЫЙ ДЛЯ КЛИЕНТА ИНТЕРФЕЙС ПОЗВОЛЯЕТ НЕ ТРАТИТЬ ВРЕМЯ НА ОБУЧЕНИЕ РАБОТЕ С СИСТЕМОЙ. СИСТЕМА СНАБЖЕНА ВНУТРЕННИМИ ПОДСКАЗКАМИ.\r\"ИНТЕРНЕТ-БАНК\" ПОЗВОЛЯЕТ:\rЧЕРЕЗ САЙТ БАНКА В ИНТЕРНЕТЕ ПОЛУЧИТЬ ДОСТУП К ВАШИМ БАНКОВСКИМ СЧЕТАМ ПРАКТИЧЕСКИ С ЛЮБОГО КОМПЬЮТЕРА В ЛЮБОЙ ТОЧКЕ ЗЕМНОГО ШАРА, ГДЕ ЕСТЬ ДОСТУП В ИНТЕРНЕТ \rВВОДИТЬ, РЕДАКТИРОВАТЬ И ПЕЧАТАТЬ ПЛАТЕЖНЫЕ ДОКУМЕНТЫ \rПОДПИСЫВАТЬ КАЖДЫЙ ПЛАТЕЖНЫЙ ДОКУМЕНТ ПЕРСОНИФИЦИРОВАННОЙ ЭЛЕКТРОННОЙ-ЦИФРОВОЙ ПОДПИСЬЮ \rНАПРАВЛЯТЬ ДОКУМЕНТЫ В БАНК НА ИСПОЛНЕНИЕ \r«ВИЗИРОВАТЬ» НАПРАВЛЯЕМЫЕ В БАНК ПЛАТЕЖНЫЕ ДОКУМЕНТЫ УПОЛНОМОЧЕННЫМ ЛИЦОМ \rПОЛУЧАТЬ ВЫПИСКИ СО ВСЕМИ ПРИЛОЖЕНИЯМИ ПО СЧЕТАМ ЗА ОПРЕДЕЛЕННЫЙ ПЕРИОД ВРЕМЕНИ \rОСУЩЕСТВЛЯТЬ ПОКУПКУ/ПРОДАЖУ ИНОСТРАННОЙ ВАЛЮТЫ, КОНВЕРТАЦИЮ ВАЛЮТ В РЕЖИМЕ ON-LINE ПО ТЕКУЩЕМУ РЫНОЧНОМУ КУРСУ \rРЕЗЕРВИРОВАТЬ НА СЧЕТЕ ВРЕМЕННО СВОБОДНЫЕ ДЕНЕЖНЫЕ СРЕДСТВА И ПОЛУЧАТЬ ДОПОЛНИТЕЛЬНЫЙ ДОХОД В ВИДЕ НАЧИСЛЕННЫХ ПРОЦЕНТОВ \rОТСЛЕЖИВАТЬ ТЕКУЩЕЕ СОСТОЯНИЕ СЧЕТОВ\rПОЛУЧАТЬ АКТУАЛЬНУЮ ИНФОРМАЦИЮ О ПЛАТЕЖАХ КОНТРАГЕНТОВ ИЗ ДРУГИХ БАНКОВ, КОТОРЫЕ ЗАЧИСЛЯЮТСЯ НА СЧЕТ КЛИЕНТА В МОМЕНТ ПОСТУПЛЕНИЯ В БАНК \rНАПРАВЛЯТЬ В БАНК БУХГАЛТЕРСКУЮ ОТЧЕТНОСТЬ В ЭЛЕКТРОННОМ ВИДЕ \rКОНТРОЛИРОВАТЬ СОСТОЯНИЕ ССУДНЫХ СЧЕТОВ, ПОГАШЕНИЕ И УПЛАТУ ПРОЦЕНТОВ \rПОДКЛЮЧЕНИЕ К СИСТЕМЕ, В ТОМ ЧИСЛЕ ГЕНЕРАЦИЯ КЛЮЧЕЙ ДЛЯ ФОРМИРОВАНИЯ ЭЛЕКТРОННО-ЦИФРОВОЙ ПОДПИСИ, БЕСПЛАТНО. АБОНЕНТСКАЯ ПЛАТА ЗА ОБСЛУЖИВАНИЕ НЕ ВЗИМАЕТСЯ.\rТЕХНИЧЕСКИЕ ТРЕБОВАНИЯ\rДЛЯ ПОЛНОЦЕННОЙ РАБОТЫ С СИСТЕМОЙ НЕОБХОДИМ КОМПЬЮТЕР С ОС WINDOWS ,НЕ НИЖЕ WINDOWS 2000; ПРОГРАММА ПРОСМОТРА ИНТЕРНЕТ-СТРАНИЦ INTERNET EXPLORER ВЕРСИИ НЕ НИЖЕ 6.0; ПРИЛОЖЕНИЕ JAVA RUNTIME ENVIRONMENT (JRE) VERSION 1.5.0\r\n'),(14,'54c7cb63bd2ee9f4878bc248cccbab6b','ИНКАССАЦИЯ\r\nИНКАССАЦИЯ\r– ДОСТАВКА ЦЕННОСТЕЙ И ДЕНЕЖНЫХ СРЕДСТВ.\rБАНК ПРЕДЛАГАЕТ ВОСПОЛЬЗОВАТЬСЯ УСЛУГАМИ СЛУЖБЫ ИНКАССАЦИИ. СЛУЖБА ИНКАССАЦИИ БАНКА ОБЕСПЕЧИТ:\rИНКАССАЦИЮ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ, ДОСТАВКУ ИХ НА СПЕЦИАЛЬНО ОБОРУДОВАННОМ ТРАНСПОРТЕ В БАНК, ПО СОГЛАСОВАННОМУ С КЛИЕНТОМ, ГРАФИКУ РАБОТЫ;\rСОПРОВОЖДЕНИЕ ЦЕННОСТЕЙ И ДЕНЕЖНЫХ СРЕДСТВ КЛИЕНТА ПО МАРШРУТУ, УКАЗАННОМУ КЛИЕНТОМ; \rДОСТАВКУ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ КЛИЕНТУ; \rДОСТАВКУ КЛИЕНТУ РАЗМЕННОЙ МОНЕТЫ.\rУСЛУГИ ПРЕДОСТАВЛЯЮТСЯ КАК СОБСТВЕННОЙ СЛУЖБОЙ ИНКАССАЦИИ, ТАК И ЧЕРЕЗ ДРУГИЕ СПЕЦИАЛИЗИРОВАННЫЕ ОРГАНИЗАЦИИ.\rНЕОБХОДИМАЯ ДОКУМЕНТАЦИЯ:\rДОГОВОР НА СБОР (ИНКАССАЦИЮ) ДЕНЕЖНОЙ ВЫРУЧКИ И ДОСТАВКУ РАЗМЕННОЙ МОНЕТЫ;\rЗАЯВКА НА ИНКАССАЦИЮ;\rПРЕДВАРИТЕЛЬНАЯ ЗАЯВКА НА ОКАЗАНИЕ УСЛУГ ПО ДОСТАВКЕ ДЕНЕЖНОЙ НАЛИЧНОСТИ;\rДОГОВОР НА ОКАЗАНИЕ УСЛУГ ПО ДОСТАВКЕ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ.\rОБЪЕМ ИНКАССИРУЕМЫХ ДЕНЕЖНЫХ СРЕДСТВ\rТАРИФЫ ПО СТАВКЕ ПРОЦЕНТА ОТ ОБЪЕМА ИНКАССАЦИИ\rТАРИФЫ ОТ КОЛИЧЕСТВА ВЫЕЗДОВ\rТАРИФЫ С ФИКСИРОВАННОЙ СТОИМОСТЬЮ\rДО 0,5 МЛН. РУБ.\r0,45%\rОТ 120 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 2500 РУБ. В МЕСЯЦ\rОТ 0,5 ДО 1,0 МЛН. РУБ.\r0,4 - 0,35%\rОТ 140 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 3500 РУБ. В МЕСЯЦ\rОТ 1,0 ДО 1,5 МЛН. РУБ.\r0,35 -0,3%\rОТ 160 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 4500 РУБ. В МЕСЯЦ\rОТ 1,5 ДО 2,0 МЛН. РУБ.\r0,3 -0,25%\rОТ 180 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 5000 РУБ. В МЕСЯЦ\rОТ 2,0 МЛН ДО 3,0 МЛН. РУБ.\r0,25 - 0,2 %\rОТ 200 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 6000 РУБ. В МЕСЯЦ\rОТ 4,0 МЛН. ДО 6 МЛН. РУБ.\r0,2 -0,15%\rОТ 220 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 7000 РУБ. В МЕСЯЦ\rОТ 6,0 МЛН. ДО 10 МЛН. РУБ.\r0,15 -0,1 %\rОТ 240 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 8000 РУБ. В МЕСЯЦ\rСВЫШЕ 10 МЛН. РУБ.\r0,1 - 0,05%\rОТ 260 РУБ/ЗАЕЗД\rНЕ МЕНЕЕ 9000 РУБ. В МЕСЯЦ\rДРУГИЕ УСЛОВИЯ\rИНКАССАЦИЯ 5-10 ТОРГОВЫХ ТОЧЕК КЛИЕНТА\rПЛЮС 5 % ОТ ТАРИФНОЙ СТАВКИ ЗА КАЖДУЮ ПОСЛЕДУЮЩУЮ ТОЧКУ\rИНКАССАЦИЯ СВЫШЕ 10 ТОРГОВЫХ ТОЧЕК КЛИЕНТА\rПЛЮС 10 % ОТ ТАРИФНОЙ СТАВКИ ЗА КАЖДУЮ ПОСЛЕДУЮЩУЮ ТОЧКУ\rВРЕМЯ ИНКАССАЦИИ УСТАНАВЛИВАЕТ КЛИЕНТ\rПЛЮС 10 % ОТ ТАРИФНОЙ СТАВКИ\rНОЧНАЯ ИНКАССАЦИЯ (С 22:00)\rПЛЮС 20% ОТ ТАРИФНОЙ СТАВКИ\rУТРЕННЯЯ ИНКАССАЦИЯ ДЛЯ ЗАЧИСЛЕНИЯ В 1ОЙ ПОЛОВИНЕ ДНЯ\rБЕСПЛАТНО\rЕСЛИ СДАЮТ НА ОДНОМ ОБЪЕКТЕ НЕСКОЛЬКО ЮРИДИЧЕСКИХ ЛИЦ\rБЕСПЛАТНО\rДОСТАВКА РАЗМЕННОЙ МОНЕТЫ\r0,4 % ОТ СУММЫ ДОСТАВКИ\rРАСХОДНЫЙ МАТЕРИАЛ\rБЕСПЛАТНО\rХРАНЕНИЕ ДЕНЕЖНЫХ СРЕДСТВ В НОЧНОЕ ВРЕМЯ, ПРАЗДНИЧНЫЕ И ВЫХОДНЫЕ\rБЕСПЛАТНО\rЗАГРУЗКА БАНКОМАТОВ, ПОДКРЕПЛЕНИЕ ДОПОЛНИТЕЛЬНЫХ ОФИСОВ\rОТ 350 РУБ/ЧАС\rДОСТАВКА ДЕНЕЖНЫХ СРЕДСТВ ИЗ БАНКА КЛИЕНТУ\r0,5 % ОТ СУММЫ, ЛИБО ПО СОГЛАШЕНИЮ СТОРОН\r\n'),(15,'cbfa46d27f8efb5a7a8153fe51f3bf3b','КОРПОРАТИВНЫМ КЛИЕНТАМ\r\nБАНК ЯВЛЯЕТСЯ ОДНИМ ИЗ ЛИДЕРОВ БАНКОВСКОГО РЫНКА ПО ОБСЛУЖИВАНИЮ КОРПОРАТИВНЫХ КЛИЕНТОВ. \rКОМПЛЕКСНОЕ БАНКОВСКОЕ ОБСЛУЖИВАНИЕ НА ОСНОВЕ МАКСИМАЛЬНОГО ИСПОЛЬЗОВАНИЯ КОНКУРЕНТНЫХ ПРЕИМУЩЕСТВ И ВОЗМОЖНОСТЕЙ БАНКА ПОЗВОЛЯЕТ СОЗДАТЬ УСТОЙЧИВУЮ \rФИНАНСОВУЮ ПЛАТФОРМУ ДЛЯ РАЗВИТИЯ БИЗНЕСА ПРЕДПРИЯТИЙ И ХОЛДИНГОВ РАЗЛИЧНЫХ ОТРАСЛЕЙ ЭКОНОМИКИ. УЖЕ БОЛЕЕ 15 ЛЕТ БАНК РАБОТАЕТ ДЛЯ СВОИХ КЛИЕНТОВ, \rЯВЛЯЯСЬ ОБРАЗЦОМ НАДЕЖНОСТИ И ВЫСОКОГО ПРОФЕССИОНАЛИЗМА.\rНАШ БАНК ПРЕДЛАГАЕТ КОРПОРАТИВНЫМ КЛИЕНТАМ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ:\rРАСЧЕТНО-КАССОВОЕ ОБСЛУЖИВАНИЕ\rИНКАССАЦИЯ\rИНТЕРНЕТ-БАНКИНГ\r\n'),(16,'0081c8541e53a7f35c06cc7a74ff5a29','РАСЧЕТНО-КАССОВОЕ ОБСЛУЖИВАНИЕ\r\nВО ВСЕХ СТРАНАХ МИРА САМОЙ РАСПРОСТРАНЕННОЙ ФУНКЦИЕЙ БАНКОВ ЯВЛЯЮТСЯ РАСЧЕТЫ. БОЛЬШИНСТВО ОКАЗЫВАЕМЫХ БАНКОМ УСЛУГ СВЯЗАНЫ С БЫСТРЫМ И КАЧЕСТВЕННЫМ ПРОВЕДЕНИЕМ РАСЧЕТНЫХ ОПЕРАЦИЙ. КАЖДЫЙ КЛИЕНТ, НЕЗАВИСИМО ОТ ВИДА ОСУЩЕСТВЛЯЕМЫХ В БАНКЕ ОПЕРАЦИЙ, ПОЛЬЗУЕТСЯ ПЕРЕВОДОМ СРЕДСТВ.\rКОРПОРАТИВНЫМ КЛИЕНТАМ БАНК ОКАЗЫВАЕТ СЛЕДУЮЩИЕ УСЛУГИ:\rОТКРЫТИЕ И ВЕДЕНИЕ СЧЕТОВ ЮРИДИЧЕСКИХ ЛИЦ - РЕЗИДЕНТОВ И НЕРЕЗИДЕНТОВ РОССИЙСКОЙ ФЕДЕРАЦИИ — В ВАЛЮТЕ РФ И ИНОСТРАННОЙ ВАЛЮТЕ; \rВСЕ ВИДЫ РАСЧЕТОВ В РУБЛЯХ И ИНОСТРАННОЙ ВАЛЮТЕ; \rКАССОВОЕ ОБСЛУЖИВАНИЕ В РУБЛЯХ И ИНОСТРАННОЙ ВАЛЮТЕ; \rУСКОРЕННЫЕ ПЛАТЕЖИ ПО РОССИИ ПО СИСТЕМЕ МЕЖРЕГИОНАЛЬНЫХ ЭЛЕКТРОННЫХ ПЛАТЕЖЕЙ; \rПЛАТЕЖИ В ЛЮБУЮ СТРАНУ МИРА В КРАТЧАЙШИЕ СРОКИ \rПРОВЕДЕНИЕ КОНВЕРСИОННЫХ ОПЕРАЦИЙ ПО СЧЕТАМ КЛИЕНТОВ \rИНКАССАЦИЯ И ДОСТАВКА НАЛИЧНЫХ ДЕНЕГ И ЦЕННОСТЕЙ \rРАСПОРЯЖЕНИЕ СЧЕТОМ ПОСРЕДСТВОМ СИСТЕМЫ «ИНТЕРНЕТ-БАНК» \rОПЕРАЦИОННЫЙ ДЕНЬ В БАНКЕ УСТАНОВЛЕН: ЕЖЕДНЕВНО С 09.00 ДО 16.00, В ПЯТНИЦУ И ПРЕДПРАЗДНИЧНЫЕ ДНИ С 09.00 ДО 15.00.\rКАССОВОЕ ОБСЛУЖИВАНИЕ ОСУЩЕСТВЛЯЕТСЯ НА ДОГОВОРНОЙ ОСНОВЕ, ПЛАТА ВЗИМАЕТСЯ ПО ФАКТУ СОВЕРШЕНИЯ КАЖДОЙ ОПЕРАЦИИ В СООТВЕТСТВИИ С УТВЕРЖДЕННЫМИ БАНКОМ ТАРИФАМИ ЗА УСЛУГИ КОРПОРАТИВНЫМ КЛИЕНТАМ.\r\n'),(17,'c53e6ba1e8943d2df7ff449091252209','ДЕПОЗИТАРНЫЕ УСЛУГИ\r\nДЕПОЗИТАРИЙ БАНКА ИМЕЕТ КОРРЕСПОНДЕНТСКИЕ ОТНОШЕНИЯ СО ВСЕМИ КРУПНЫМИ РАСЧЕТНЫМИ И УПОЛНОМОЧЕННЫМИ ДЕПОЗИТАРИЯМИ. РАЗВЕТВЛЕННАЯ СЕТЬ КОРРЕСПОНДЕНТСКИХ СЧЕТОВ ПОЗВОЛЯЕТ КЛИЕНТАМ ДЕПОЗИТАРИЯ ОСУЩЕСТВЛЯТЬ ОПЕРАЦИИ ПРАКТИЧЕСКИ С ЛЮБЫМИ ИНСТРУМЕНТАМИ ФОНДОВОГО РЫНКА.\rУСЛУГИ ДЕПОЗИТАРИЯ БАНКА:\rОТКРЫТИЕ И ВЕДЕНИЕ СЧЕТОВ ДЕПО КЛИЕНТОВ;\rХРАНЕНИЕ И УЧЕТ ВСЕХ ВИДОВ ЦЕННЫХ БУМАГ, ВКЛЮЧАЯ АКЦИИ, ОБЛИГАЦИИ, ПАИ, ВЕКСЕЛЯ, МЕЖДУНАРОДНЫХ ФИНАНСОВЫХ ИНСТРУМЕНТОВ (ЕВРООБЛИГАЦИИ, АДР, ГДР);\rКОНСУЛЬТИРОВАНИЕ И ПРОВЕДЕНИЕ КОМПЛЕКСНЫХ СТРУКТУРИРОВАННЫХ ОПЕРАЦИЙ С ЦЕННЫМИ БУМАГАМИ;\rПЕРЕРЕГИСТРАЦИЯ ПРАВ СОБСТВЕННОСТИ НА ЦЕННЫЕ БУМАГИ, В ТОМ ЧИСЛЕ ПРИ ВЫПОЛНЕНИИ ОПРЕДЕЛЕННОГО УСЛОВИЯ;\rОФОРМЛЕНИЕ И УЧЕТ ЗАЛОГОВЫХ ОПЕРАЦИЙ С ЦЕННЫМИ БУМАГАМИ ДЕПОНЕНТОВ;\rПРЕДОСТАВЛЕНИЕ ИНФОРМАЦИИ ОБ ЭМИТЕНТЕ;\rПОМОЩЬ ДЕПОНЕНТАМ В РЕАЛИЗАЦИИ ПРАВ, ЗАКРЕПЛЕННЫХ ЗА НИМИ КАК ЗА ВЛАДЕЛЬЦАМИ ЦЕННЫХ БУМАГ;\rКОНСУЛЬТАЦИОННАЯ ПОДДЕРЖКА ПРИ ПРОВЕДЕНИИ ОПЕРАЦИЙ ПО СЧЕТАМ ДЕПО;\rВЫПОЛНЕНИЕ ФУНКЦИЙ ПЛАТЕЖНОГО АГЕНТА:\rХРАНЕНИЕ ЦЕННЫХ БУМАГ НА ОСНОВАНИИ ДОГОВОРОВ ОТВЕТСТВЕННОГО ХРАНЕНИЯ;\rПРОВЕДЕНИЕ ЭКСПЕРТИЗЫ ЦЕННЫХ БУМАГ;\rДРУГИЕ УСЛУГИ.\rСПОСОБЫ ОБМЕНА ДОКУМЕНТОВ С ДЕПОЗИТАРИЕМ:\rВ БУМАЖНОМ ВИДЕ С ОРИГИНАЛЬНЫМИ ПОДПИСЯМИ И ПЕЧАТЯМИ;\rПО ФАКСУ (ПОРУЧЕНИЯ НА ЗАЧИСЛЕНИЕ ЦЕННЫХ БУМАГ И ПРЕДОСТАВЛЕНИЕ ВЫПИСОК) С ПОСЛЕДУЮЩИМ ПРЕДОСТАВЛЕНИЕМ ОРИГИНАЛА;\rПО СИСТЕМАМ S.W.I.F.T. И TELEX.\rТАРИФЫ НА ДЕПОЗИТАРНОЕ ОБСЛУЖИВАНИЕ\rНАИМЕНОВАНИЕ УСЛУГИ\rТАРИФ\rОТКРЫТИЕ СЧЕТА ДЕПО ДЛЯ ФИЗИЧЕСКИХ ЛИЦ (РЕЗИДЕНТОВ И НЕРЕЗИДЕНТОВ)\n150 РУБ.\nОТКРЫТИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ – РЕЗИДЕНТОВ\n400 РУБ.\nОТКРЫТИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ – НЕРЕЗИДЕНТОВ\n1600 РУБ.\nЗАКРЫТИЕ СЧЕТА ДЕПО\nНЕ ВЗИМАЕТСЯ\nВНЕСЕНИЕ ИЗМЕНЕНИЯ В АНКЕТУ ДЕПОНЕНТА\nНЕ ВЗИМАЕТСЯ\nАБОНЕНТСКАЯ ПЛАТА В МЕСЯЦ ЗА ВЕДЕНИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ - РЕЗИДЕНТОВ,\nПРИ НАЛИЧИИ ОСТАТКА НА СЧЕТЕ ДЕПО\n500 РУБ.\nАБОНЕНТСКАЯ ПЛАТА В МЕСЯЦ ЗА ВЕДЕНИЕ СЧЕТА ДЕПО ДЛЯ ЮРИДИЧЕСКИХ ЛИЦ - НЕРЕЗИДЕНТОВ,\nПРИ НАЛИЧИИ ОСТАТКА НА СЧЕТЕ ДЕПО\n2 500 РУБ.\nАБОНЕНТСКАЯ ПЛАТА В МЕСЯЦ ЗА ВЕДЕНИЕ СЧЕТА ДЕПО ДЛЯ ДЕПОНЕНТОВ, НАХОДЯЩИХСЯ НА БРОКЕРСКОМ\nОБСЛУЖИВАНИИ, ПРИ НАЛИЧИИ ДВИЖЕНИЯ ПО СЧЕТУ ДЕПО\n150 РУБ.\nФОРМИРОВАНИЕ ОТЧЕТА О СОВЕРШЕННЫХ ПО СЧЕТУ ДЕПО ОПЕРАЦИЯХ ЗА ПЕРИОД ПОСЛЕ ПРОВЕДЕНИЯ\nОПЕРАЦИИ\nНЕ ВЗИМАЕТСЯ\nФОРМИРОВАНИЕ ОТЧЕТА О СОВЕРШЕННЫХ ПО СЧЕТУ ДЕПО ОПЕРАЦИЯХ ЗА ПЕРИОД, ВЫПИСКИ О СОСТОЯНИИ\nСЧЕТА (РАЗДЕЛА СЧЕТА) ДЕПО ПО ИНФОРМАЦИОННОМУ ЗАПРОСУ ДЕПОНЕНТА\n150 РУБ.\nЗАЧИСЛЕНИЕ (СПИСАНИЕ) БЕЗДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ, ЗА ОДНО ПОРУЧЕНИЕ\n300 РУБ.\nЗАЧИСЛЕНИЕ (СПИСАНИЕ) ДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ, ЗА ОДНУ ЦЕННУЮ БУМАГУ\n580 РУБ.\nПЕРЕВОД (ВНУТРИ ДЕПОЗИТАРИЯ) БЕЗДОКУМЕНТАРНЫХ И ДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ, ЗА ОДНО\nПОРУЧЕНИЕ (ВЗИМАЕТСЯ С ДЕПОНЕНТА - ИНИЦИАТОРА ОПЕРАЦИИ)\n300 РУБ.\nИЗМЕНЕНИЕ МЕСТ ХРАНЕНИЯ БЕЗДОКУМЕНТАРНЫХ ЦЕННЫХ БУМАГ (ЗА ОДНО ПОРУЧЕНИЕ) И ДОКУМЕНТАРНЫХ\nЦЕННЫХ БУМАГ (ЗА ОДНУ ЦЕННУЮ БУМАГУ)\n580 РУБ.\nБЛОКИРОВКА (РАЗБЛОКИРОВКА), РЕГИСТРАЦИЯ ЗАЛОГА (ВОЗВРАТА ЗАЛОГА) БЕЗДОКУМЕНТАРНЫХ\nЦЕННЫХ БУМАГ\n870 РУБ.\nБЛОКИРОВКА (РАЗБЛОКИРОВКА), РЕГИСТРАЦИЯ ЗАКЛАДА (ВОЗВРАТА ЗАКЛАДА) ДОКУМЕНТАРНЫХ\nЦЕННЫХ БУМАГ\n870 РУБ.\n*ПРИ ВЗИМАНИИ ТАРИФОВ ДОПОЛНИТЕЛЬНО ВЗИМАЕТСЯ НАЛОГ НА ДОБАВЛЕННУЮ СТОИМОСТЬ ПО СТАВКЕ 18%.\rПЛАТА ЗА ИНЫЕ УСЛУГИ, НЕ ОГОВОРЕННЫЕ В ДАННЫХ ТАРИФАХ ДЕПОЗИТАРИЯ, ЗА ИСКЛЮЧЕНИЕМ УСЛУГ, ОКАЗЫВАЕМЫХ ПРИ ПРОВЕДЕНИИ ОПЕРАЦИЙ ДЕПОНЕНТА ДРУГИМИ ДЕПОЗИТАРИЯМИ И РЕЕСТРОДЕРЖАТЕЛЯМИ, НЕ ВЗИМАЕТСЯ.\r\n'),(18,'65624a89c9bf009bafe9104c4ca2c703','ДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\r\nНАШ БАНК ПРЕДЛАГАЕТ ШИРОКИЙ СПЕКТР БАНКОВСКИХ УСЛУГ ПО ПРОВЕДЕНИЮ ДОКУМЕНТАРНЫХ РАСЧЕТОВ В ОБЛАСТИ МЕЖДУНАРОДНЫХ ТОРГОВО-ЭКОНОМИЧЕСКИХ ОТНОШЕНИЙ ,В ТОМ ЧИСЛЕ ПО НЕСТАНДАРТНЫМ И СЛОЖНО СТРУКТУРИРОВАННЫМ СХЕМАМ.\rБЕЗУСЛОВНЫМ ПРЕИМУЩЕСТВОМ РАБОТЫ С НАШИМ БАНКОМ ЯВЛЯЕТСЯ ВОЗМОЖНОСТЬ ПРОВОДИТЬ ОПЕРАЦИИ В ПРЕДЕЛЬНО СЖАТЫЕ СРОКИ ПО КОНКУРЕНТОСПОСОБНЫМ ТАРИФАМ, А ТАКЖЕ ИХ ОБШИРНАЯ ГЕОГРАФИЯ: СТРАНЫ СНГ И БАЛТИИ, БЛИЖНЕГО И ДАЛЬНЕГО ЗАРУБЕЖЬЯ.\rСПЕКТР УСЛУГ ПО БАНКОВСКИМ ГАРАНТИЯМ: \rВЫДАЧА ЛЮБЫХ ВИДОВ ГАРАНТИЙ ПОД КОНТРГАРАНТИИ БАНКОВ-КОРРЕСПОНДЕНТОВ В СЧЕТ УСТАНОВЛЕННЫХ НА НИХ ДОКУМЕНТАРНЫХ ЛИМИТОВ: 									 \nГАРАНТИИ НАДЛЕЖАЩЕГО ИСПОЛНЕНИЯ КОНТРАКТОВ;\rГАРАНТИИ ПЛАТЕЖА (Т.Е. ВЫПОЛНЕНИЯ ПЛАТЕЖНЫХ ОБЯЗАТЕЛЬСТВ ПО КОНТРАКТАМ);\rГАРАНТИИ ВОЗВРАТА АВАНСОВОГО ПЛАТЕЖА;\rГАРАНТИИ В ПОЛЬЗУ ТАМОЖЕННЫХ ОРГАНОВ;\rГАРАНТИИ В ПОЛЬЗУ НАЛОГОВЫХ ОРГАНОВ;\rТЕНДЕРНЫЕ ГАРАНТИИ (Т.Е. ГАРАНТИИ УЧАСТИЯ В ТОРГАХ/КОНКУРСАХ);\rГАРАНТИИ ВОЗВРАТА КРЕДИТА;\rГАРАНТИИ ОПЛАТЫ АКЦИЙ;\rГАРАНТИИ, ПРЕДОСТАВЛЯЕМЫЕ В КАЧЕСТВЕ ВСТРЕЧНОГО ОБЕСПЕЧЕНИЯ СУДЕБНЫХ ИСКОВ;\rАВИЗОВАНИЕ ГАРАНТИЙ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ-КОРРЕСПОНДЕНТОВ В ПОЛЬЗУ ОТЕЧЕСТВЕННЫХ И ЗАРУБЕЖНЫХ БЕНЕФИЦИАРОВ;\rПРЕДЪЯВЛЕНИЕ ТРЕБОВАНИЯ ПЛАТЕЖА ПО ПОРУЧЕНИЮ БЕНЕФИЦИАРОВ В СЧЕТ БАНКОВСКИХ ГАРАНТИЙ;\rЗАВЕРКА ПОДЛИННОСТИ ПОДПИСЕЙ НА ГАРАНТИЯХ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ ПО ПРОСЬБЕ БЕНЕФИЦИАРА;\rВ СЛУЧАЕ НЕОБХОДИМОСТИ ИНЫЕ ВИДЫ ОПЕРАЦИЙ, ВКЛЮЧАЯ ПРЕДВАРИТЕЛЬНУЮ ПРОРАБОТКУ УСЛОВИЙ ГАРАНТИЙНОЙ СДЕЛКИ.\rПРЕДОСТАВЛЯЕМЫЕ УСЛУГИ ПО ДОКУМЕНТАРНЫМ (В ТОМ ЧИСЛЕ РЕЗЕРВНЫМ) АККРЕДИТИВАМ:\rАВИЗОВАНИЕ АККРЕДИТИВОВ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ-КОРРЕСПОНДЕНТОВ В ПОЛЬЗУ ОТЕЧЕСТВЕННЫХ И ЗАРУБЕЖНЫХ БЕНЕФИЦИАРОВ;\rПОДТВЕРЖДЕНИЕ АККРЕДИТИВОВ БАНКОВ-КОРРЕСПОНДЕНТОВ ПОД ПРЕДОСТАВЛЕННОЕ ДЕНЕЖНОЕ ПОКРЫТИЕ ИЛИ В СЧЕТ ДОКУМЕНТАРНЫХ ЛИМИТОВ, УСТАНОВЛЕННЫХ НА БАНК-ЭМИТЕНТ;\rПОДТВЕРЖДЕНИЕ ЭКСПОРТНЫХ АККРЕДИТИВОВ КОТНРАГЕНТА;\rИСПОЛНЕНИЕ АККРЕДИТИВОВ;\rВЫПОЛНЕНИЕ ФУНКЦИИ РАМБУРСИРУЮЩЕГО БАНКА НА ОСНОВАНИИ ПРЕДОСТАВЛЕННЫХ ПОЛНОМОЧИЙ ПО АККРЕДИТИВАМ ИНОСТРАННЫХ И РОССИЙСКИХ БАНКОВ-КОРРЕСПОНДЕНТОВ (ПРИ НАЛИЧИИ У БАНКА-ЭМИТЕНТА КОРРЕСПОНДЕНТСКОГО СЧЕТА ЛОРО В ГАЗПРОМБАНКЕ);\rВЫДАЧА БЕЗОТЗЫВНЫХ РАМБУРСНЫХ ОБЯЗАТЕЛЬСТВ ПО АККРЕДИТИВАМ, ОТКРЫТЫМ БАНКАМИ-КОРРЕСПОНДЕНТАМИ, В СЧЕТ ДОКУМЕНТАРНЫХ ЛИМИТОВ, УСТАНОВЛЕННЫХ НА БАНК-ЭМИТЕНТ (ПРИ НАЛИЧИИ У БАНКА-ЭМИТЕНТА КОРРЕСПОНДЕНТСКОГО СЧЕТА ЛОРО В ГАЗПРОМБАНКЕ);\rОФОРМЛЕНИЕ ТРАНСФЕРАЦИИ И ПЕРЕУСТУПКИ ВЫРУЧКИ ПО АККРЕДИТИВАМ;\rОТКРЫТИЕ АККРЕДИТИВОВ/ПРЕДОСТАВЛЕНИЕ ПЛАТЕЖНЫХ ГАРАНТИЙ В РАМКАХ ОПЕРАЦИЙ ТОРГОВОГО ФИНАНСИРОВАНИЯ;\rИНЫЕ ВИДЫ ОПЕРАЦИЙ, ВКЛЮЧАЯ ПРЕДВАРИТЕЛЬНУЮ ПРОРАБОТКУ СХЕМЫ РАСЧЕТОВ И УСЛОВИЙ АККРЕДИТИВНОЙ СДЕЛКИ.\r\n'),(19,'c24ffbaa8b72cfcb3d011c1f2708c749','ФИНАНСОВЫМ ОРГАНИЗАЦИЯМ\r\nАКТИВНОЕ СОТРУДНИЧЕСТВО НА ФИНАНСОВЫХ РЫНКАХ ПРЕДСТАВЛЯЕТ СОБОЙ ОДНУ ИЗ НАИБОЛЕЕ ВАЖНЫХ СТОРОН БИЗНЕСА И ЯВЛЯЕТСЯ ПЕРСПЕКТИВНЫМ НАПРАВЛЕНИЕМ ДЕЯТЕЛЬНОСТИ НАШЕГО БАНКА. ПОЛИТИКА БАНКА НАПРАВЛЕНА НА РАСШИРЕНИЕ СОТРУДНИЧЕСТВА, УВЕЛИЧЕНИЕ ОБЪЕМОВ ВЗАИМНЫХ КРЕДИТНЫХ ЛИНИЙ. СОЛИДНАЯ ДЕЛОВАЯ РЕПУТАЦИЯ БАНКА НА РЫНКЕ МЕЖБАНКОВСКИХ ОПЕРАЦИЙ СПОСОБСТВУЕТ НАЛАЖИВАНИЮ СТАБИЛЬНЫХ И ВЗАИМОВЫГОДНЫХ ПАРТНЕРСКИХ ОТНОШЕНИЙ С САМЫМИ КРУПНЫМИ И НАДЕЖНЫМИ БАНКАМИ СТРАНЫ.\rОСОБОЕ ВНИМАНИЕ БАНК УДЕЛЯЕТ РАЗВИТИЮ ВЗАИМООТНОШЕНИЙ С МЕЖДУНАРОДНЫМИ ФИНАНСОВЫМИ ИНСТИТУТАМИ. ФИНАНСИРОВАНИЕ ДОЛГОСРОЧНЫХ И СРЕДНЕСРОЧНЫХ ПРОЕКТОВ КЛИЕНТОВ ЗА СЧЕТ ПРИВЛЕЧЕНИЯ СРЕДСТВ НА МЕЖДУНАРОДНЫХ РЫНКАХ КАПИТАЛА - ОДНО ИЗ ПРИОРИТЕТНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ИМЕЕТ РАЗВИТУЮ СЕТЬ КОРРЕСПОНДЕНТСКИХ СЧЕТОВ, ЧТО ПОЗВОЛЯЕТ БЫСТРО И КАЧЕСТВЕННО ОСУЩЕСТВЛЯТЬ РАСЧЕТЫ В РАЗЛИЧНЫХ ВАЛЮТАХ. ПОРУЧЕНИЯ КЛИЕНТОВ МОГУТ БЫТЬ ИСПОЛНЕНЫ БАНКОМ В СЖАТЫЕ СРОКИ.\rВ ЦЕЛЯХ МИНИМИЗАЦИИ РИСКОВ ПРИ ПОВЕДЕНИИ ОПЕРАЦИЙ НА ФИНАНСОВЫХ РЫНКАХ НАШ БАНК МАКСИМАЛЬНО ТРЕБОВАТЕЛЬНО ПОДХОДИТ К ВЫБОРУ СВОИХ БАНКОВ-КОНТРАГЕНТОВ. \rВ ДАННОМ НАПРАВЛЕНИИ БАНК ПРЕДЛАГАЕТ ФИНАНСОВЫМ ОРГАНИЗАЦИЯМ СЛЕДУЮЩИЕ УСЛУГИ:\rУСЛУГИ НА МЕЖБАНКОВСКОМ РЫНКЕ\rДЕПОЗИТАРНЫЕ УСЛУГИ\rДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\r\n'),(20,'53412cd449563f783dca67a6dbdc6d62','УСЛУГИ НА МЕЖБАНКОВСКОМ РЫНКЕ\r\nМЕЖБАНКОВСКОЕ КРЕДИТОВАНИЕ\rВИД УСЛУГИ\nОПИСАНИЕ\nКРЕДИТОВАНИЕ ПОД ВАЛЮТНЫЙ ДЕПОЗИТ\nКРЕДИТЫ ВЫДАЮТСЯ В РУБЛЯХ НА СРОК ОТ 1 ДНЯ ДО 1 МЕСЯЦА С ВОЗМОЖНОСТЬЮ ДАЛЬНЕЙШЕЙ\nПРОЛОНГАЦИИ. ТАРИФНЫЕ СТАВКИ ЗАВИСЯТ ОТ КОНКРЕТНЫХ УСЛОВИЙ СДЕЛКИ.\nКРЕДИТОВАНИЕ ПОД ЗАЛОГ ОВГВЗ\nКРЕДИТЫ ВЫДАЮТСЯ В РУБЛЯХ И ВАЛЮТЕ НА СРОК ДО 1 МЕСЯЦА С ВОЗМОЖНОЙ ПРОЛОНГАЦИЕЙ.\nСТАВКА ДИСКОНТА СОСТАВЛЯЕТ 25—30%.\nКРЕДИТОВАНИЕ ПОД ЗАЛОГ ГОСУДАРСТВЕННЫХ ЦЕННЫХ БУМАГ\nВ ЗАЛОГ ПРИНИМАЮТСЯ ОБЛИГАЦИИ ФЕДЕРАЛЬНОГО ЗАЙМА (ОФЗ) ЛЮБОГО ВЫПУСКА. СТАВКА ДИСКОНТА:\nОФЗ С ДАТОЙ ПОГАШЕНИЯ ДО 91 ДНЯ — 5%;\rОФЗ С ДАТОЙ ПОГАШЕНИЯ ДО 365 ДНЕЙ — 8%;\rОФЗ С ДАТОЙ ПОГАШЕНИЯ СВЫШЕ 365 ДНЕЙ — 13%.\rКРЕДИТЫ ВЫДАЮТСЯ НА СРОК ДО2 НЕДЕЛЬ.\nКРЕДИТОВАНИЕ ПОД ЗАЛОГ ВЕКСЕЛЕЙ\nДЛЯ КОНСУЛЬТАЦИЙ ПО ЭТОМУ ВИДУ КРЕДИТОВАНИЯ ОБРАТИТЕСЬ В УПРАВЛЕНИЕ ВЕКСЕЛЬНОГО\nОБРАЩЕНИЯ И РАБОТЫ С ДОЛГОВЫМИ ОБЯЗАТЕЛЬСТВАМИ ПО ТЕЛЕФОНУ (495) 978-78-78.\nКОНВЕРСИОННЫЕ ОПЕРАЦИИ\rНА ВНУТРЕННЕМ ДЕНЕЖНОМ РЫНКЕ БАНК ОСУЩЕСТВЛЯЕТ:\rБРОКЕРСКОЕ ОБСЛУЖИВАНИЕ БАНКОВ ПО ИХ УЧАСТИЮ В ТОРГАХ ЕТС НА ММВБ. СТАВКИ КОМИССИОННОГО ВОЗНАГРАЖДЕНИЯ ВАРЬИРУЮТСЯ В ЗАВИСИМОСТИ ОТ ОБЪЕМА ОПЕРАЦИЙ (В ПРЕДЕЛАХ 0,147—0,18%).\rКОНВЕРСИОННЫЕ ОПЕРАЦИИ. БАНК ПРЕДЛАГАЕТ БАНКАМ-КОНТРАГЕНТАМ РАБОТУ НА ВАЛЮТНОМ РЫНКЕ ПО ПОКУПКЕ И ПРОДАЖЕ ИНОСТРАННОЙ ВАЛЮТЫ ЗА РОССИЙСКИЕ РУБЛИ ПО ТЕКУЩИМ РЫНОЧНЫМ ЦЕНАМ. ПРИ ОТСУТСТВИИ ОТКРЫТЫХ ЛИНИЙ ПРИ ПРОДАЖЕ ИНОСТРАННОЙ ВАЛЮТЫ БАНК-КОНТРАГЕНТ ПРОИЗВОДИТ ПРЕДОПЛАТУ ПО ЗАКЛЮЧЕННОЙ СДЕЛКЕ, ВОЗМОЖНА РАБОТА ПОД КРЕДИТОВОЕ АВИЗО.\rБАНКНОТНЫЕ ОПЕРАЦИИ\rПОКУПКА И ПРОДАЖА НАЛИЧНОЙ ВАЛЮТЫ ЗА БЕЗНАЛИЧНУЮ ВАЛЮТУ;\rПРОДАЖА НОВЫХ БАНКНОТ В УПАКОВКЕ АМЕРИКАНСКОГО БАНКА-ЭМИТЕНТА;\rПОКУПКА И ПРОДАЖА БАНКНОТ, БЫВШИХ В УПОТРЕБЛЕНИИ.\rУРОВЕНЬ КОМИССИОННЫХ ЗАВИСИТ ОТ ОБЪЕМОВ И КОНКРЕТНЫХ УСЛОВИЙ СДЕЛКИ.\rДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\rМЕЖДУНАРОДНЫЕ РАСЧЕТЫ:\nАККРЕДИТИВ\r- ЭТО УСЛОВНОЕ ДЕНЕЖНОЕ ОБЯЗАТЕЛЬСТВО, ПРИНИМАЕМОЕ БАНКОМ (БАНКОМ-ЭМИТЕНТОМ) ПО ПОРУЧЕНИЮ ПЛАТЕЛЬЩИКА, ПРОИЗВЕСТИ ПЛАТЕЖИ В ПОЛЬЗУ ПОЛУЧАТЕЛЯ СРЕДСТВ ПО ПРЕДЪЯВЛЕНИИ ПОСЛЕДНИМ ДОКУМЕНТОВ, СООТВЕТСТВУЮЩИХ УСЛОВИЯМ АККРЕДИТИВА, ИЛИ ПРЕДОСТАВИТЬ ПОЛНОМОЧИЯ ДРУГОМУ БАНКУ (ИСПОЛНЯЮЩЕМУ БАНКУ) ПРОИЗВЕСТИ ТАКИЕ ПЛАТЕЖИ.\rИНКАССО\r- ЭТО РАСЧЕТНАЯ ОПЕРАЦИЯ, ПОСРЕДСТВОМ КОТОРОЙ БАНК НА ОСНОВАНИИ РАСЧЕТНЫХ ДОКУМЕНТОВ ПО ПОРУЧЕНИЮ КЛИЕНТА ПОЛУЧАЕТ ПРИЧИТАЮЩИЕСЯ КЛИЕНТУ ДЕНЕЖНЫЕ СРЕДСТВА ОТ ПЛАТЕЛЬЩИКА ЗА ПОСТУПИВШИЕ В АДРЕС ПЛАТЕЛЬЩИКА ТОВАРЫ ИЛИ ОКАЗАННЫЕ ЕМУ УСЛУГИ, ПОСЛЕ ЧЕГО ЭТИ СРЕДСТВА ЗАЧИСЛЯЮТСЯ НА СЧЕТ КЛИЕНТА В БАНКЕ.\rОПЕРАЦИИ С ВЕКСЕЛЯМИ БАНКА\rВЕКСЕЛИ НАШЕГО БАНКА ЯВЛЯЮТСЯ ПРОСТЫМИ ВЕКСЕЛЯМИ.\rПРОСТОЙ ВЕКСЕЛЬ — ДОКУМЕНТ УСТАНОВЛЕННОЙ ЗАКОНОМ ФОРМЫ, ДАЮЩИЙ ЕГО ДЕРЖАТЕЛЮ (ВЕКСЕЛЕДЕРЖАТЕЛЮ) БЕЗУСЛОВНОЕ ПРАВО ТРЕБОВАТЬ С ЛИЦА, УКАЗАННОГО В ДАННОМ ДОКУМЕНТЕ (ПЛАТЕЛЬЩИКА), УПЛАТЫ ОГОВОРЕННОЙ СУММЫ ПО НАСТУПЛЕНИЮ НЕКОТОРОГО СРОКА. ОБЯЗАТЕЛЬСТВО ПО ПРОСТОМУ ВЕКСЕЛЮ ВОЗНИКАЕТ С МОМЕНТА ЕГО СОСТАВЛЕНИЯ И ПЕРЕДАЧИ ПЕРВОМУ ВЕКСЕЛЕДЕРЖАТЕЛЮ.\rПЕРЕЧЕНЬ ПРОВОДИМЫХ БАНКОМ ОПЕРАЦИЙ С СОБСТВЕННЫМИ ВЕКСЕЛЯМИ:\nВЫПУСК ВЕКСЕЛЕЙ;\rПОГАШЕНИЕ ВЕКСЕЛЕЙ;\rДОСРОЧНЫЙ УЧЕТ ВЕКСЕЛЕЙ;\rОТВЕТСТВЕННОЕ ХРАНЕНИЕ ВЕКСЕЛЕЙ;\rКРЕДИТОВАНИЕ ПОД ЗАЛОГ ВЕКСЕЛЕЙ;\rВЫДАЧА КРЕДИТОВ НА ПРИОБРЕТЕНИЕ ВЕКСЕЛЕЙ;\rНОВАЦИЯ И РАЗМЕН ВЕКСЕЛЕЙ;\rПРОВЕРКА ПОДЛИННОСТИ ВЕКСЕЛЕЙ.\r\n'),(21,'89a00e9561c33cb54aca96d9d99c715e','БАНКОВСКИЕ КАРТЫ\r\nКРЕДИТНЫЕ КАРТЫ\rСРОК ДЕЙСТВИЯ КАРТЫ\r3 ГОДА\rКОМИССИЯ ЗА ЕЖЕГОДНОЕ ОСУЩЕСТВЛЕНИЕ РАСЧЕТОВ ПО ОПЕРАЦИЯМ С ОСНОВНОЙ КАРТОЙ.\r600 РУБ. / 25 ДОЛЛ. США / 25 ЕВРО\rЛЬГОТНЫЙ ПЕРИОД ОПЛАТЫ\rДО 50 КАЛЕНДАРНЫХ ДНЕЙ\rЕЖЕМЕСЯЧНЫЙ МИНИМАЛЬНЫЙ ПЛАТЕЖ \r(В ПРОЦЕНТАХ ОТ СУММЫ ЗАДОЛЖЕННОСТИ ПО ОВЕРДРАФТАМ):\r10% \rДОПОЛНИТЕЛЬНЫЕ ПРОЦЕНТЫ/ШТРАФЫ/КОМИССИИ/ НА СУММУ НЕРАЗРЕШЕННОГО ОВЕРДРАФТА\rНЕ ВЗИМАЕТСЯ (ОТМЕНЕНА С 1 МАРТА) \rКОМИССИЯ ЗА УЧЕТ ОТЧЕТНОЙ СУММЫ ЗАДОЛЖЕННОСТИ, НЕПОГАШЕННОЙ НА ПОСЛЕДНИЙ КАЛЕНДАРНЫЙ ДЕНЬ ЛЬГОТНОГО ПЕРИОДА ОПЛАТЫ.\rДЛЯ 1-6-ГО МЕСЯЦЕВ\rДЛЯ 6-ГО И ПОСЛЕДУЮЩИХ МЕСЯЦЕВ\r12% / 15% \r21% / 24% \rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ \"БАНКА\" \rВ БАНКОМАТАХ БАНКОВ-ПАРТНЕРОВ \"ОБЪЕДИНЕННОЙ РАСЧЕТНОЙ СИСТЕМЫ (ОРС)\" \rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА \r0%\r0,5%\r2,5%\rМИНИМАЛЬНАЯ СУММА КОМИССИИ ПО ОПЕРАЦИЯМ ПОЛУЧЕНИЯ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ В ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА. \r150 РУБЛЕЙ\rКОМИССИЯ ЗА ОСУЩЕСТВЛЕНИЕ КОНВЕРТАЦИИ ПО ТРАНСГРАНИЧНЫМ ОПЕРАЦИЯМ (СОВЕРШЕННЫМ ЗА ПРЕДЕЛАМИ ТЕРРИТОРИИ РФ). \r0,75% \rРАСЧЕТНЫЕ КАРТЫ БАНКА\rВАЛЮТА КАРТСЧЕТА\rРОССИЙСКИЕ РУБЛИ / ДОЛЛАРЫ США / ЕВРО\rСРОК ДЕЙСТВИЯ КАРТЫ\r3 ГОДА\rКОМИССИЯ ЗА ОСУЩЕСТВЛЕНИЕ РАСЧЕТОВ В ТЕЧЕНИЕ ОДНОГО ГОДА ПО ОПЕРАЦИЯМ С ОСНОВНОЙ КАРТОЙ ПРИ ЕЕ ПЕРВИЧНОМ ВЫПУСКЕ.\rВЗИМАЕТСЯ ПЕРЕД НАЧАЛОМ КАЖДОГО ГОДА РАСЧЕТОВ ПО ДЕЙСТВУЮЩЕЙ КАРТЕ ИЗ СРЕДСТВ НА КАРТСЧЕТЕ.\r500 РУБЛЕЙ/20 ДОЛЛ. США/20 ЕВРО\rКОМИССИЯ ЗА ОПЕРАЦИЮ ПОЛУЧЕНИЯ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ:\rДО 300 000 РУБЛЕЙ (ВКЛЮЧИТЕЛЬНО)\rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ «БАНКА»\rВ БАНКОМАТАХ БАНКОВ-ПАРТНЕРОВ\rВ ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА\r0%\r0,5%\r1,5% МИН. 90 РУБ.\rОТ 300 001 ДО 10 000 000 РУБЛЕЙ (ВКЛЮЧИТЕЛЬНО)\r2,5% \rОТ 10 000 001 РУБЛЯ И ВЫШЕ\r5%\rМИНИМАЛЬНАЯ СУММА КОМИССИИ ПО ОПЕРАЦИЯМ ПОЛУЧЕНИЯ НАЛИЧНЫХ ДЕНЕЖНЫХ СРЕДСТВ В ПУНКТАХ ВЫДАЧИ НАЛИЧНЫХ ИЛИ БАНКОМАТАХ ИНОГО БАНКА. \r90 РУБЛЕЙ\rКОМИССИЯ ЗА ПЕРЕЧИСЛЕНИЕ И КОНВЕРСИЮ ДЕНЕЖНЫХ СРЕДСТВ В ИНТЕРНЕТ-БАНКЕ. \r0%\rКОМИССИЯ ЗА ОСТАНОВКУ ОПЕРАЦИЙ ПО КАРТСЧЕТУ, СОВЕРШАЕМЫХ С ИСПОЛЬЗОВАНИЕМ КАРТЫ, ПРИ ЕЕ УТРАТЕ. \r600 РУБЛЕЙ/25 ДОЛЛ. США/25 ЕВРО\rКОМИССИЯ ЗА ОСУЩЕСТВЛЕНИЕ КОНВЕРСИИ ПО ТРАНСГРАНИЧНЫМ ОПЕРАЦИЯМ (СОВЕРШЕННЫМ ЗА ПРЕДЕЛАМИ ТЕРРИТОРИИ РФ).\r0,75%\rВЫДАЧА КАРТОЧКИ ДОСТУПА.\rБЕСПЛАТНО\rКОМИССИЯ ЗА ОПЛАТУ УСЛУГ В ИНТЕРНЕТ - БАНКЕ И В БАНКОМАТАХ БАНКА. \rБЕСПЛАТНО\rКОМИССИЯ ЗА УЧЕТ ПЕРЕРАСХОДА СРЕДСТВ (В ПРОЦЕНТАХ ГОДОВЫХ ОТ СУММЫ ПЕРЕРАСХОДА). \r36%\rКОМИССИЯ ЗА ОТПРАВКУ SMS СООБЩЕНИЙ О СУММАХ ПРОВЕДЕННЫХ ПО КАРТЕ ОПЕРАЦИЙ И ДОСТУПНОМ БАЛАНСЕ В ТЕЧЕНИЕ ЕЕ СРОКА ДЕЙСТВИЯ.\rБЕСПЛАТНО\r\n'),(22,'97cc4b8d5eae6669c6e5920eca22f9cd','ПОТРЕБИТЕЛЬСКИЙ КРЕДИТ\r\nНЕ ВАЖНО, ДЛЯ ЧЕГО ВАМ НУЖНЫ ДЕНЬГИ — МЫ ДОВЕРЯЕМ ВАМ И НЕ ТРАТИМ ВРЕМЯ НА ЛИШНИЕ ПРОЦЕДУРЫ.\rТАРИФЫ КРЕДИТОВАНИЯ ФИЗИЧЕСКИХ ЛИЦ\rВ РУБЛЯХ\rСУММА КРЕДИТА: ОТ 150 000 ДО 1 500 000 РУБЛЕЙ\rСРОК КРЕДИТА: ОТ 6 ДО 36 МЕСЯЦЕВ\r% СТАВКА: ОТ 18 ДО 21,5% ГОДОВЫХ\rЕДИНОВРЕМЕННАЯ КОМИССИЯ ЗА ВЫДАЧУ КРЕДИТА: 2% ОТ СУММЫ КРЕДИТА\rВ ДОЛЛАРАХ США\rСУММА КРЕДИТА: ОТ 5 000 ДО 50 000 ДОЛЛАРОВ США\rСРОК КРЕДИТА: ОТ 6 ДО 24 МЕСЯЦЕВ\r% СТАВКА: ОТ 14,5 ДО 16,5% ГОДОВЫХ\rЕДИНОВРЕМЕННАЯ КОМИССИЯ ЗА ВЫДАЧУ КРЕДИТА: 2% ОТ СУММЫ КРЕДИТА\rУСЛОВИЯ КРЕДИТНОГО ДОГОВОРА И ПРИМЕНЯЕМЫЙ ТАРИФНЫЙ ПЛАН И/ИЛИ ТАРИФЫ ОПРЕДЕЛЯЮТСЯ В ИНДИВИДУАЛЬНОМ ПОРЯДКЕ, В ТОМ ЧИСЛЕ В ЗАВИСИМОСТИ ОТ ПОДТВЕРЖДЕННОГО ДОХОДА КЛИЕНТА. ИЗЛОЖЕННАЯ ИНФОРМАЦИЯ НЕ ЯВЛЯЕТСЯ ПУБЛИЧНОЙ ОФЕРТОЙ И НЕ ВЛЕЧЕТ ВОЗНИКНОВЕНИЯ У ЗАО «БАНК ИНТЕЗА» ОБЯЗАННОСТИ ПРЕДОСТАВИТЬ КРЕДИТ, КАК НА УКАЗАННЫХ, ТАК И НА ЛЮБЫХ ИНЫХ УСЛОВИЯХ.\rМИНИМАЛЬНЫЕ ТРЕБОВАНИЯ К ЗАЕМЩИКУ\rВЫ ГРАЖДАНИН РОССИИ.\rВАМ СЕЙЧАС БОЛЬШЕ 23 ЛЕТ И ВАМ БУДЕТ МЕНЬШЕ 60 (ДЛЯ МУЖЧИН) ИЛИ МЕНЬШЕ 55 (ДЛЯ ЖЕНЩИН) НА МОМЕНТ ПОГАШЕНИЯ (ТО ЕСТЬ ПОЛНОЙ ОПЛАТЫ) КРЕДИТА.\rУ ВАС ЕСТЬ ОФИЦИАЛЬНОЕ МЕСТО РАБОТЫ, И ВЫ РАБОТАЕТЕ НА НЕМ ПО НАЙМУ НЕ МЕНЕЕ ШЕСТИ МЕСЯЦЕВ И ПРОШЛИ ИСПЫТАТЕЛЬНЫЙ СРОК.\rВАШ ОБЩИЙ ТРУДОВОЙ СТАЖ СОСТАВЛЯЕТ НЕ МЕНЕЕ ДВУХ ЛЕТ\rВЫ МОЖЕТЕ ПОДТВЕРДИТЬ СВОЙ ДОХОД ОФИЦИАЛЬНО ПРИ ПОМОЩИ СТАНДАРТНОЙ ФОРМЫ 2НДФЛ ИЛИ СПРАВКОЙ ПО ФОРМЕ БАНКА.\rВЫ ОБРАТИЛИСЬ В ОТДЕЛЕНИЕ БАНКА В ТОМ ЖЕ ГОРОДЕ, В КОТОРОМ ВЫ РАБОТАЕТЕ.\rС ВАМИ МОЖНО СВЯЗАТЬСЯ ПО ГОРОДСКОМУ ТЕЛЕФОНУ ПО МЕСТУ РАБОТЫ.\rТЕЛЕФОН ГОРЯЧЕЙ ЛИНИИ: \r8 800 2002 808\r( ЗВОНОК ПО РОССИИ БЕСПЛАТНЫЙ)\r\n'),(23,'1560168bdcc5a4573c23c7cacbbf48d8','ЧАСТНЫМ ЛИЦАМ\r\nНАШ БАНК ПРЕДОСТАВЛЯЕТ ФИЗИЧЕСКИМ ЛИЦАМ БОЛЬШОЕ ЧИСЛО РАЗЛИЧНЫХ ВОЗМОЖНОСТЕЙ, СВЯЗАННЫХ С СОХРАНЕНИЕМ СРЕДСТВ И СОВЕРШЕНИЕМ РАЗЛИЧНЫХ СДЕЛОК. В ЧАСТНОСТИ, БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ ШИРОКУЮ ЛИНЕЙКУ РАЗНООБРАЗНЫХ ВКЛАДОВ, СПОСОБНЫХ УДОВЛЕТВОРИТЬ КАК ДОЛГОСРОЧНЫЕ, ТАК И КРАТКОСРОЧНЫЕ ИНТЕРЕСЫ, КАСАЮЩИЕСЯ РАЗМЕЩЕНИЯ СВОБОДНЫХ СРЕДСТВ ПО ВЫГОДНЫМ СТАВКАМ. В СВОЕЙ РАБОТЕ БАНК АКТИВНО ПРИМЕНЯЕТ ИННОВАЦИОННЫЕ ТЕХНОЛОГИИ ДИНАМИЧНО РАЗВИВАЮЩЕЙСЯ БАНКОВСКОЙ СФЕРЫ.\rБАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ КАЧЕСТВЕННЫЙ УНИВЕРСАЛЬНЫЙ СЕРВИС ПО СЛЕДУЮЩИМ НАПРАВЛЕНИЯМ:\rБАНКОВСКИЕ КАРТЫ\rПОТРЕБИТЕЛЬСКИЙ КРЕДИТ\r\n'),(24,'5294819207cd629318e1de373aa1e6f3','УСЛУГИ\r\nНАШ БАНК ПРЕДОСТАВЛЯЕТ ФИЗИЧЕСКИМ ЛИЦАМ БОЛЬШОЕ ЧИСЛО РАЗЛИЧНЫХ ВОЗМОЖНОСТЕЙ, СВЯЗАННЫХ С СОХРАНЕНИЕМ СРЕДСТВ И СОВЕРШЕНИЕМ РАЗЛИЧНЫХ СДЕЛОК. В ЧАСТНОСТИ, БАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ ШИРОКУЮ ЛИНЕЙКУ РАЗНООБРАЗНЫХ ВКЛАДОВ, СПОСОБНЫХ УДОВЛЕТВОРИТЬ КАК ДОЛГОСРОЧНЫЕ, ТАК И КРАТКОСРОЧНЫЕ ИНТЕРЕСЫ, КАСАЮЩИЕСЯ РАЗМЕЩЕНИЯ СВОБОДНЫХ СРЕДСТВ ПО ВЫГОДНЫМ СТАВКАМ. В СВОЕЙ РАБОТЕ БАНК АКТИВНО ПРИМЕНЯЕТ ИННОВАЦИОННЫЕ ТЕХНОЛОГИИ ДИНАМИЧНО РАЗВИВАЮЩЕЙСЯ БАНКОВСКОЙ СФЕРЫ.\rБАНК ПРЕДЛАГАЕТ СВОИМ КЛИЕНТАМ КАЧЕСТВЕННЫЙ УНИВЕРСАЛЬНЫЙ СЕРВИС ПО СЛЕДУЮЩИМ НАПРАВЛЕНИЯМ:\rБАНКОВСКИЕ КАРТЫ\rПОТРЕБИТЕЛЬСКИЙ КРЕДИТ\rМАЛОМУ И СРЕДНЕМУ БИЗНЕСУ\rРАБОТА С ПРЕДПРИЯТИЯМИ МАЛОГО И СРЕДНЕГО БИЗНЕСА - ОДНО ИЗ СТРАТЕГИЧЕСКИ ВАЖНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ПРЕДСТАВЛЯЕТ СОВРЕМЕННЫЕ ПРОГРАММЫ ОБСЛУЖИВАНИЯ МАЛОГО И СРЕДНЕГО БИЗНЕСА, ОБЕСПЕЧИВАЕТ ОПТИМАЛЬНЫЕ И ВЗАИМОВЫГОДНЫЕ ВАРИАНТЫ СОТРУДНИЧЕСТВА, В ОСНОВЕ КОТОРЫХ ЛЕЖИТ ПРОФЕССИОНАЛИЗМ СОТРУДНИКОВ И ВЫСОКОЕ КАЧЕСТВО БАНКОВСКИХ УСЛУГ. УСЛУГИ НАШЕГО БАНКА ОТЛИЧАЮТСЯ ОПЕРАТИВНОСТЬЮ И НАДЕЖНОСТЬЮ, ТАК КАК ОРИЕНТИРОВАНЫ НА ДЕЛОВЫХ ЛЮДЕЙ - НА ТЕХ, КТО ЦЕНИТ СВОЕ ВРЕМЯ И ДЕНЬГИ.\rБАНК ПРЕДЛАГАЕТ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ ДЛЯ ПРЕДПРИЯТИЙ МАЛОГО И СРЕДНЕГО БИЗНЕСА:\rКРЕДИТОВАНИЕ\rЛИЗИНГ\rДЕПОЗИТЫ\rПЛАСТИКОВЫЕ КАРТЫ\rКОРПОРАТИВНЫМ КЛИЕНТАМ\rБАНК ЯВЛЯЕТСЯ ОДНИМ ИЗ ЛИДЕРОВ БАНКОВСКОГО РЫНКА ПО ОБСЛУЖИВАНИЮ КОРПОРАТИВНЫХ КЛИЕНТОВ. \rКОМПЛЕКСНОЕ БАНКОВСКОЕ ОБСЛУЖИВАНИЕ НА ОСНОВЕ МАКСИМАЛЬНОГО ИСПОЛЬЗОВАНИЯ КОНКУРЕНТНЫХ ПРЕИМУЩЕСТВ И ВОЗМОЖНОСТЕЙ БАНКА ПОЗВОЛЯЕТ СОЗДАТЬ УСТОЙЧИВУЮ \rФИНАНСОВУЮ ПЛАТФОРМУ ДЛЯ РАЗВИТИЯ БИЗНЕСА ПРЕДПРИЯТИЙ И ХОЛДИНГОВ РАЗЛИЧНЫХ ОТРАСЛЕЙ ЭКОНОМИКИ. УЖЕ БОЛЕЕ 15 ЛЕТ БАНК РАБОТАЕТ ДЛЯ СВОИХ КЛИЕНТОВ, \rЯВЛЯЯСЬ ОБРАЗЦОМ НАДЕЖНОСТИ И ВЫСОКОГО ПРОФЕССИОНАЛИЗМА.\rНАШ БАНК ПРЕДЛАГАЕТ КОРПОРАТИВНЫМ КЛИЕНТАМ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ:\rРАСЧЕТНО-КАССОВОЕ ОБСЛУЖИВАНИЕ\rИНКАССАЦИЯ\rИНТЕРНЕТ-БАНКИНГ\rФИНАНСОВЫМ ОРГАНИЗАЦИЯМ\rАКТИВНОЕ СОТРУДНИЧЕСТВО НА ФИНАНСОВЫХ РЫНКАХ ПРЕДСТАВЛЯЕТ СОБОЙ ОДНУ ИЗ НАИБОЛЕЕ ВАЖНЫХ СТОРОН БИЗНЕСА И ЯВЛЯЕТСЯ ПЕРСПЕКТИВНЫМ НАПРАВЛЕНИЕМ ДЕЯТЕЛЬНОСТИ НАШЕГО БАНКА. ПОЛИТИКА БАНКА НАПРАВЛЕНА НА РАСШИРЕНИЕ СОТРУДНИЧЕСТВА, УВЕЛИЧЕНИЕ ОБЪЕМОВ ВЗАИМНЫХ КРЕДИТНЫХ ЛИНИЙ. СОЛИДНАЯ ДЕЛОВАЯ РЕПУТАЦИЯ БАНКА НА РЫНКЕ МЕЖБАНКОВСКИХ ОПЕРАЦИЙ СПОСОБСТВУЕТ НАЛАЖИВАНИЮ СТАБИЛЬНЫХ И ВЗАИМОВЫГОДНЫХ ПАРТНЕРСКИХ ОТНОШЕНИЙ С САМЫМИ КРУПНЫМИ И НАДЕЖНЫМИ БАНКАМИ СТРАНЫ.\rОСОБОЕ ВНИМАНИЕ БАНК УДЕЛЯЕТ РАЗВИТИЮ ВЗАИМООТНОШЕНИЙ С МЕЖДУНАРОДНЫМИ ФИНАНСОВЫМИ ИНСТИТУТАМИ. ФИНАНСИРОВАНИЕ ДОЛГОСРОЧНЫХ И СРЕДНЕСРОЧНЫХ ПРОЕКТОВ КЛИЕНТОВ ЗА СЧЕТ ПРИВЛЕЧЕНИЯ СРЕДСТВ НА МЕЖДУНАРОДНЫХ РЫНКАХ КАПИТАЛА - ОДНО ИЗ ПРИОРИТЕТНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ИМЕЕТ РАЗВИТУЮ СЕТЬ КОРРЕСПОНДЕНТСКИХ СЧЕТОВ, ЧТО ПОЗВОЛЯЕТ БЫСТРО И КАЧЕСТВЕННО ОСУЩЕСТВЛЯТЬ РАСЧЕТЫ В РАЗЛИЧНЫХ ВАЛЮТАХ. ПОРУЧЕНИЯ КЛИЕНТОВ МОГУТ БЫТЬ ИСПОЛНЕНЫ БАНКОМ В СЖАТЫЕ СРОКИ.\rВ ЦЕЛЯХ МИНИМИЗАЦИИ РИСКОВ ПРИ ПОВЕДЕНИИ ОПЕРАЦИЙ НА ФИНАНСОВЫХ РЫНКАХ НАШ БАНК МАКСИМАЛЬНО ТРЕБОВАТЕЛЬНО ПОДХОДИТ К ВЫБОРУ СВОИХ БАНКОВ-КОНТРАГЕНТОВ. \rВ ДАННОМ НАПРАВЛЕНИИ БАНК ПРЕДЛАГАЕТ ФИНАНСОВЫМ ОРГАНИЗАЦИЯМ СЛЕДУЮЩИЕ УСЛУГИ:\rУСЛУГИ НА МЕЖБАНКОВСКОМ РЫНКЕ\rДЕПОЗИТАРНЫЕ УСЛУГИ\rДОКУМЕНТАРНЫЕ ОПЕРАЦИИ\r\n'),(25,'4c6e4f50a46679283be9c0d9734ef751','ПЛАСТИКОВЫЕ КАРТЫ\r\nНАШ БАНК ПРОВОДИТ ОПЕРАЦИИ С ПЛАСТИКОВЫМИ КАРТАМИ С 1997 Г. СЕГОДНЯ МЫ ПРЕДЛАГАЕМ ПЛАСТИКОВЫЕ КАРТЫ ОСНОВНЫХ МЕЖДУНАРОДНЫХ ПЛАТЁЖНЫХ СИСТЕМ – VISA И MASTERCARD; ОТ САМЫХ ДЕМОКРАТИЧНЫХ ЕLЕCTRON ДО ЭЛИТНЫХ GOLD И PLATINUM. В РАМКАХ ПЕРСОНАЛЬНОГО ОБСЛУЖИВАНИЯ В РАМКАХ ПЕРСОНАЛЬНОГО БАНКОВСКОГО ОБСЛУЖИВАНИЯ БАНК ДОПОЛНИТЕЛЬНО ПРЕДЛАГАЕТ ЭКСКЛЮЗИВНЫЕ КАРТЫ VISA INFINITE С БРИЛЛИАНТАМИ И ПЛАТИНОВЫМ ОРНАМЕНТОМ.\rЗАКАЗАТЬ МЕЖДУНАРОДНУЮ ПЛАСТИКОВУЮ КАРТУ МОЖНО В ЛЮБОМ ОТДЕЛЕНИИ НАШЕГО БАНКА. ВАША КАРТА БУДЕТ ГОТОВА УЖЕ ЧЕРЕЗ 3-5 ДНЕЙ. НАШ БАНК ОДИН ИЗ НЕМНОГИХ В РОССИИ, КТО ВЫДАЕТ КАРТУ СРОКОМ НА ДВА ГОДА, КАК И КРУПНЕЙШИЕ ЗАРУБЕЖНЫЕ БАНКИ.КАЖДЫЙ ПАКЕТ УСЛУГ БАНКА ВКЛЮЧАЕТ ОДНУ ОСНОВНУЮ И ДО ТРЕХ ДОПОЛНИТЕЛЬНЫХ ПЛАСТИКОВЫХ КАРТ ДЛЯ ВАС И ДЛЯ ЧЛЕНОВ ВАШЕЙ СЕМЬИ (ВКЛЮЧАЯ ДЕТЕЙ СТАРШЕ 14 ЛЕТ). ВЫ САМИ УСТАНАВЛИВАЕТЕ ОГРАНИЧЕНИЯ: КТО И СКОЛЬКО МОЖЕТ ПОТРАТИТЬ ПО КАРТЕ.\rТЕРЯЯ ПЛАСТИКОВУЮ КАРТУ, ВЫ НЕ ТЕРЯЕТЕ ДЕНЬГИ. ПОТОМУ ЧТО КАРТЫ НАШЕГО БАНКА НАДЕЖНО ЗАЩИЩЕНЫ ОТ НЕЗАКОННОГО ИСПОЛЬЗОВАНИЯ. ПРОСТО СОБЛЮДАЙТЕ ПРАВИЛА БЕЗОПАСНОСТИ ПРИ ОБРАЩЕНИИ СО СВОЕЙ КАРТОЙ, А В СЛУЧАЕ ЕЕ ПРОПАЖИ ИЛИ ХИЩЕНИЯ БЕЗ ПРОМЕДЛЕНИЯ ОБРАТИТЕСЬ В БАНК.\rПРЕИМУЩЕСТВА ПЛАСТИКОВЫХ КАРТ БАНКА\rПОЛУЧЕНИЕ НАЛИЧНЫХ БЕЗ КОМИССИИ В ШИРОКОЙ СЕТИ БАНКОМАТОВ;\rСВЕДЕНИЯ ОБ ОСТАТКЕ И СОВЕРШЁННЫХ ОПЕРАЦИЯХ ПО КАРТЕ ПРИХОДЯТ ПО SMS;\rСИСТЕМА ИНТЕРНЕТ-БАНКИНГА ПОЗВОЛЯЕТ ВЛАДЕЛЬЦУ КАРТЫ КОНТРОЛИРОВАТЬ РАСХОДЫ И УПРАВЛЯТЬ СРЕДСТВАМИ НА КАРТОЧНЫХ СЧЕТАХ.\rВСЕМ ВЛАДЕЛЬЦАМ КАРТ БАНКА ДОСТУПНЫ CКИДКИ И БОНУСНЫЕ ПРОГРАММЫ.\rВИДЫ ПЛАСТИКОВЫХ КАРТ\rДЕБЕТОВЫЕ КАРТЫ:\rУДОБСТВО БЕЗНАЛИЧНОЙ ОПЛАТЫ ТОВАРОВ И УСЛУГ\rБЕЗОПАСНОЕ ХРАНЕНИЕ СОБСТВЕННЫХ СРЕДСТВ\rНАЧИСЛЕНИЕ ПРОЦЕНТОВ НА ОСТАТОК ПО КАРТЕ\rКОНТРОЛЬ НАД РАСХОДАМИ И УПРАВЛЕНИЕ СВОИМИ ДЕНЬГАМИ\rКРЕДИТНЫЕ КАРТЫ:\rКРЕДИТОВАНИЕ БЕЗ ПРОЦЕНТОВ ДО 55 ДНЕЙ\rПОЛЬЗОВАТЬСЯ КРЕДИТОМ МОЖНО МНОГОКРАТНО, НЕ ОБРАЩАЯСЬ В БАНК\rБЕЗНАЛИЧНАЯ ОПЛАТА ТОВАРОВ И УСЛУГ БЕЗ КОМИССИЙ В ЛЮБОЙ ТОЧКЕ МИРА\rПРОВОЗ ДЕНЕГ ЧЕРЕЗ ГРАНИЦУ БЕЗ ТАМОЖЕННОГО ОФОРМЛЕНИЯ\rНЕ НУЖНО ПОКУПАТЬ ВАЛЮТУ ДЛЯ ВЫЕЗДА В ДРУГИЕ СТРАНЫ\rВСЕ ПОЛЕЗНЫЕ ФУНКЦИИ ДЕБЕТОВЫХ КАРТ\r\n'),(26,'344cad3205bd5c2e8cffcf29a17ae499','КРЕДИТОВАНИЕ\r\nКРЕДИТОВАНИЕ МАЛОГО И СРЕДНЕГО БИЗНЕСА ЯВЛЯЕТСЯ ОДНИМ ИЗ СТРАТЕГИЧЕСКИХ НАПРАВЛЕНИЙ БАНКА.\rДАННОЕ НАПРАВЛЕНИЕ ВКЛЮЧАЕТ В СЕБЯ:\nКРЕДИТОВАНИЕ ЮРИДИЧЕСКИХ ЛИЦ\rКРЕДИТОВАНИЕ ИНДИВИДУАЛЬНЫХ ПРЕДПРИНИМАТЕЛЕЙ\rВ ЗАВИСИМОСТИ ОТ ПОЖЕЛАНИЙ КЛИЕНТА КРЕДИТЫ ДЛЯ БИЗНЕСА ПРЕДОСТАВЛЯЮТСЯ В РАЗНЫХ ВАЛЮТАХ: В РУБЛЯХ РФ, ДОЛЛАРАХ США И ЕВРО. \nПРЕИМУЩЕСТВА ПОЛУЧЕНИЯ КРЕДИТА В НАШЕМ БАНКЕ:\rСРОК РАССМОТРЕНИЯ КРЕДИТНОЙ ЗАЯВКИ ОТ 2-Х РАБОЧИХ ДНЕЙ; \rОТСУТСТВИЕ ЕЖЕМЕСЯЧНОЙ ПЛАТЫ ЗА ВЕДЕНИЕ ССУДНОГО СЧЕТА;\rОТСУТСТВИЕ ТРЕБОВАНИЙ ПО ПРЕДОСТАВЛЕНИЮ БИЗНЕС-ПЛАНА;\rПРИНИМАЕТСЯ К РАССМОТРЕНИЮ УПРАВЛЕНЧЕСКАЯ ОТЧЕТНОСТЬ;\rВ КАЧЕСТВЕ ЗАЛОГА РАССМАТРИВАЮТСЯ ТОВАРЫ В ОБОРОТЕ, АВТОТРАНСПОРТ, ОБОРУДОВАНИЕ, НЕДВИЖИМОСТЬ И ДРУГОЕ ЛИКВИДНОЕ ИМУЩЕСТВО; \rГИБКИЕ УСЛОВИЯ ПОГАШЕНИЯ КРЕДИТА. \rДЛЯ ПОЛУЧЕНИЯ КРЕДИТА:\rПОЗВОНИТЕ НАМ ПО ТЕЛЕФОНУ +7 (495) 757-57-57, ОБРАТИТЕСЬ В БЛИЖАЙШЕЕ К ВАМ ОТДЕЛЕНИЕ БАНКА ИЛИ ЗАПОЛНИТЕ ON-LINE ЗАЯВКУ. \rНАШИ СПЕЦИАЛИСТЫ ПОМОГУТ ВАМ ВЫБРАТЬ УДОБНЫЕ УСЛОВИЯ КРЕДИТОВАНИЯ И ОТВЕТЯТ НА ИНТЕРЕСУЮЩИЕ ВАС ВОПРОСЫ.\rПОДГОТОВЬТЕ НЕОБХОДИМЫЕ ДЛЯ РАССМОТРЕНИЯ КРЕДИТНОЙ ЗАЯВКИ ДОКУМЕНТЫ И ДОГОВОРИТЕСЬ О ВСТРЕЧЕ С КРЕДИТНЫМ ЭКСПЕРТОМ БАНКА.\rПОКАЖИТЕ КРЕДИТНОМУ ЭКСПЕРТУ ВАШЕ ПРЕДПРИЯТИЕ И ИМУЩЕСТВО, ПРЕДЛАГАЕМОЕ В ЗАЛОГ.\rПОЛУЧИТЕ КРЕДИТ НА РАЗВИТИЕ ВАШЕГО БИЗНЕСА! \nПРОГРАММЫ КРЕДИТОВАНИЯ МАЛОГО И СРЕДНЕГО БИЗНЕСА:\rПРОГРАММА\nСУММА КРЕДИТА\nПРОЦЕНТНАЯ СТАВКА\nСРОК КРЕДИТА\n«ОВЕРДРАФТ»\rОТ 300 000\nДО 5 000 000 РУБЛЕЙ\nОТ 18% ГОДОВЫХ\nДО 12 МЕСЯЦЕВ\n«МИНИКРЕДИТ»\rОТ 150 000\nДО 1 000 000 РУБЛЕЙ\nОТ 24% ГОДОВЫХ\nДО 36 МЕСЯЦЕВ\n«РАЗВИТИЕ»\nОТ 1 000 000\nДО 15 000 000 РУБЛЕЙ\nОТ 17% ГОДОВЫХ\nДО 36 МЕСЯЦЕВ\n«ИНВЕСТ»\nОТ 1 000 000\nДО 30 000 000 РУБЛЕЙ\nОТ 15% ГОДОВЫХ\nДО 72 МЕСЯЦЕВ\r\n'),(27,'3e30b6e27a290bc4818f2de6a938fdf3','ДЕПОЗИТЫ\r\nНАШ БАНК ПРЕДЛАГАЕТ ВАМ ЭФФЕКТИВНО РАЗМЕСТИТЬ СВОБОДНЫЕ ДЕНЬГИ НА БАНКОВСКОМ ДЕПОЗИТЕ И ПОЛУЧИТЬ ДОПОЛНИТЕЛЬНУЮ ПРИБЫЛЬ.\rДЕПОЗИТНЫЕ ПРОДУКТЫ\r \rДОСРОЧНОЕ РАСТОРЖЕНИЕ\rПОПОЛНЕНИЕ\rЧАСТИЧНОЕ ИЗЪЯТИЕ\rВЫПЛАТА ПРОЦЕНТОВ\rДЕПОЗИТ С ВЫПЛАТОЙ ПРОЦЕНТОВ В КОНЦЕ СРОКА\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rВ КОНЦЕ СРОКА.\rДЕПОЗИТ С ВЫПЛАТОЙ ПРОЦЕНТОВ ЕЖЕМЕСЯЧНО\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО.\rЕЖЕМЕСЯЧНО.\rДЕПОЗИТ С ВОЗМОЖНОСТЬЮ ПОПОЛНЕНИЯ\rНЕ ПРЕДУСМОТРЕНО.\rПРЕКРАЩАЕТСЯ ЗА 2 МЕСЯЦА ДО ОКОНЧАНИЯ СРОКА ДЕЙСТВИЯ ДЕПОЗИТА. \rНЕ ПРЕДУСМОТРЕНО \rВ КОНЦЕ СРОКА. \rДЕПОЗИТ С ВОЗМОЖНОСТЬЮ ПОПОЛНЕНИЯ И ИЗЪЯТИЯ\rНЕ ПРЕДУСМОТРЕНО.\rПРЕКРАЩАЕТСЯ ЗА 2 МЕСЯЦА ДО ОКОНЧАНИЯ СРОКА ДЕЙСТВИЯ ДЕПОЗИТА.\rНЕ БОЛЕЕ 40% ОТ ПЕРВОНАЧАЛЬНОЙ СУММЫ ВКЛАДА ЗА ВЕСЬ СРОК ДЕПОЗИТА \rВ КОНЦЕ СРОКА. \rДЕПОЗИТ С ВОЗМОЖНОСТЬЮ ДОСРОЧНОГО РАСТОРЖЕНИЯ \rВОЗМОЖНО ПРИ РАЗМЕЩЕНИИ НА 12 МЕСЯЦЕВ, НО НЕ РАНЕЕ ЧЕМ ЧЕРЕЗ 6 МЕСЯЦЕВ.\rНЕ ПРЕДУСМОТРЕНО.\rНЕ ПРЕДУСМОТРЕНО. \rВ КОНЦЕ СРОКА.\r\n'),(28,'dc76e079e3571df6ebba5ee1fd4ce0cd','МАЛОМУ И СРЕДНЕМУ БИЗНЕСУ\r\nРАБОТА С ПРЕДПРИЯТИЯМИ МАЛОГО И СРЕДНЕГО БИЗНЕСА - ОДНО ИЗ СТРАТЕГИЧЕСКИ ВАЖНЫХ НАПРАВЛЕНИЙ ДЕЯТЕЛЬНОСТИ БАНКА. НАШ БАНК ПРЕДСТАВЛЯЕТ СОВРЕМЕННЫЕ ПРОГРАММЫ ОБСЛУЖИВАНИЯ МАЛОГО И СРЕДНЕГО БИЗНЕСА, ОБЕСПЕЧИВАЕТ ОПТИМАЛЬНЫЕ И ВЗАИМОВЫГОДНЫЕ ВАРИАНТЫ СОТРУДНИЧЕСТВА, В ОСНОВЕ КОТОРЫХ ЛЕЖИТ ПРОФЕССИОНАЛИЗМ СОТРУДНИКОВ И ВЫСОКОЕ КАЧЕСТВО БАНКОВСКИХ УСЛУГ. УСЛУГИ НАШЕГО БАНКА ОТЛИЧАЮТСЯ ОПЕРАТИВНОСТЬЮ И НАДЕЖНОСТЬЮ, ТАК КАК ОРИЕНТИРОВАНЫ НА ДЕЛОВЫХ ЛЮДЕЙ - НА ТЕХ, КТО ЦЕНИТ СВОЕ ВРЕМЯ И ДЕНЬГИ.\rБАНК ПРЕДЛАГАЕТ СЛЕДУЮЩИЕ ВИДЫ УСЛУГ ДЛЯ ПРЕДПРИЯТИЙ МАЛОГО И СРЕДНЕГО БИЗНЕСА:\rКРЕДИТОВАНИЕ\rЛИЗИНГ\rДЕПОЗИТЫ\rПЛАСТИКОВЫЕ КАРТЫ\r\n'),(29,'da1f66499efacd659dcf24c5c7f6fcb2','ЛИЗИНГ\r\nНАШ БАНК ОКАЗЫВАЕТ ВЕСЬ СПЕКТР УСЛУГ ПО ФИНАНСОВОЙ АРЕНДЕ (ЛИЗИНГУ) ОТЕЧЕСТВЕННОГО И ИМПОРТНОГО ОБОРУДОВАНИЯ, ТРАНСПОРТА И НЕДВИЖИМОСТИ.\rЛИЗИНГ ОБОРУДОВАНИЯ И ТРАНСПОРТА\rОСНОВНЫЕ УСЛОВИЯ:\rСРОК ФИНАНСИРОВАНИЯ:\nОБОРУДОВАНИЕ И ТРАНСПОРТ - ДО 5 ЛЕТ\rЖ/Д ПОДВИЖНОЙ СОСТАВ - ДО 10 ЛЕТ\rВАЛЮТА ФИНАНСИРОВАНИЯ: РУБЛИ, ДОЛЛАРЫ США, ЕВРО\rМИНИМАЛЬНАЯ СУММА ФИНАНСИРОВАНИЯ: ОТ 4,5 МЛН.РУБ.\rАВАНС: ОТ 0%\rУДОРОЖАНИЕ: ОТ 9%\rСРОК ПРИНЯТИЯ РЕШЕНИЯ: ОТ 14 ДНЕЙ\rФИНАНСИРОВАНИЕ ИМПОРТНЫХ ПОСТАВОК\rМЫ ПРЕДОСТАВЛЯЕМ ПРЕДПРИЯТИЯМ ДОСТУП К ЛЬГОТНОМУ ФИНАНСИРОВАНИЮ ИМПОРТНЫХ ПОСТАВОК ОБОРУДОВАНИЯ И ТРАНСПОРТА С ИСПОЛЬЗОВАНИЕМ МЕХАНИЗМА ЛИЗИНГА ПРИ УЧАСТИИ ЭКСПОРТНЫХ КРЕДИТНЫХ АГЕНТСТВ.\rОСНОВНЫЕ УСЛОВИЯ:\rСРОК ФИНАНСИРОВАНИЯ: ДО 7 ЛЕТ\rВАЛЮТА ФИНАНСИРОВАНИЯ: РУБЛИ, ДОЛЛАРЫ США, ЕВРО\rМИНИМАЛЬНАЯ СУММА ФИНАНСИРОВАНИЯ: ОТ 15 МЛН.РУБ. \rАВАНС: ОТ 15% (БЕЗ УЧЕТА ТАМОЖЕННЫХ ПОШЛИН) \rУДОРОЖАНИЕ: ОТ 5%\rСРОК ПРИНЯТИЯ РЕШЕНИЯ: ОТ 14 ДНЕЙ\rЛИЗИНГ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ\rПОЗВОЛЯЕТ ПРЕДПРИЯТИЯМ ПРИОБРЕСТИ ОБЪЕКТЫ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ БЕЗ ЕДИНОВРЕМЕННОГО ОТВЛЕЧЕНИЯ ЗНАЧИТЕЛЬНЫХ СРЕДСТВ.\rВ КАЧЕСТВЕ ПРЕДМЕТА ЛИЗИНГА МОГУТ ВЫСТУПАТЬ:\rОФИСНЫЕ ЗДАНИЯ;\rТОРГОВЫЕ, СКЛАДСКИЕ И ПРОИЗВОДСТВЕННЫЕ ПОМЕЩЕНИЯ;\rДРУГИЕ ОБЪЕКТЫ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ.\rОСНОВНЫЕ УСЛОВИЯ:\rСРОК ФИНАНСИРОВАНИЯ: ОТ 5 ЛЕТ\rВАЛЮТА ФИНАНСИРОВАНИЯ: РУБЛИ, ДОЛЛАРЫ США, ЕВРО\rМИНИМАЛЬНАЯ СУММА ФИНАНСИРОВАНИЯ: ОТ 50 МЛН.РУБ.* \rАВАНС: ОТ 0%\rУДОРОЖАНИЕ: ОТ 7%\rСРОК ПРИНЯТИЯ РЕШЕНИЯ: ОТ 14 ДНЕЙ\r* РАЗМЕР СУММЫ ФИНАНСИРОВАНИЯ ЗАВИСИТ ОТ РЕГИОНА, В КОТОРОМ НАХОДИТСЯ ОБЪЕКТ НЕДВИЖИМОСТИ.\rОСНОВНЫМ ТРЕБОВАНИЕМ, ПРЕДЪЯВЛЯЕМЫМ НАШИМ БАНКОМ ДЛЯ РАССМОТРЕНИЯ ЗАЯВКИ НА ЛИЗИНГ КОММЕРЧЕСКОЙ НЕДВИЖИМОСТИ, ЯВЛЯЕТСЯ НАЛИЧИЕ ПОЛНОГО КОМПЛЕКТА ПРАВОУСТАНАВЛИВАЮЩИХ ДОКУМЕНТОВ НА НЕДВИЖИМОСТЬ И НАЛИЧИЕ ОТЧЕТА НЕЗАВИСИМОГО ОЦЕНЩИКА.\r\n'),(30,'f38b1d21b4e881774aab9ca0e121ef4d','НОВОСТИ БАНКА\r\n\r\n'),(37,'8081eb3ed1e5f903a7139cf573a4702e','БЛОГ\r\nNEXT\r1\r2\r3\r4\r5\r6\r... NEXT\rBACK TO : \rTOP\r| \rHOME\r-->\r\n'),(38,'f6a5d984f4e20b7d79ccab6638c69cb2','SUPPORT\r\nСТРАНИЦА SUPPORT\r\n'),(39,'94b0101e331c4314898bcdf9d951dee9','CONTACT\r\nСТРАНИЦА CONTACT\r\n'),(40,'a64ed053442ebe7af6671b89001ba6dc','DESIGN\r\n\r\n'),(41,'3568b7b4656f428ebb97498775987e6a','MUSIC\r\n\r\n'),(42,'c1a11944d04d38ca3a60d2fdc577ed4c','TECHNOLOGY\r\n\r\n'),(43,'f22222564276a03e60ea44dbf02347cc','NATURE\r\n\r\n'),(44,'4d8ecc5d08668f2a8a43a654481f3bee','FASHION\r\n\r\n'),(45,'f812b4551322faa8e4bb4446c24a81d3','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE1\r\nСТАТЬЯ 1.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 1. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\n'),(46,'d086308d8dfea54d15114fde7c84d000','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE2\r\nСТАТЬЯ 2.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 2. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\n'),(47,'d06242ddc99a217ecec9f0dd8bf2cc84','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE3\r\nСТАТЬЯ 3.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 3. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\n'),(48,'709aca3d5f652d04245584bfd4c2bfe9','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE4\r\nСТАТЬЯ 4.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 4. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\n'),(49,'1a6f8c9ac59a395f399fa9f87ffa8bc4','MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PACKAGES AND WEB PAGE5\r\nСТАТЬЯ 5.LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nСТАТЬЯ 5. LOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\nLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORSLOREM IPSUM IS THAT IT HAS A MORE-OR-LESS NORMAL DISTRIBUTION OF LETTERS, AS OPPOSED TO USING \'CONTENT HERE, CONTENT HERE\', MAKING IT LOOK LIKE READABLE ENGLISH. MANY DESKTOP PUBLISHING PACKAGES AND WEB PAGE EDITORS\r\n'),(50,'d8392ffcfad9d9932414957ebe4b9a46','БЛОГ\r\n\r\n');
/*!40000 ALTER TABLE `b_search_content_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_title`
--

DROP TABLE IF EXISTS `b_search_content_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_title`
--

LOCK TABLES `b_search_content_title` WRITE;
/*!40000 ALTER TABLE `b_search_content_title` DISABLE KEYS */;
INSERT INTO `b_search_content_title` VALUES (2,'s1',0,'ABOUT'),(45,'s1',60,'AND'),(46,'s1',60,'AND'),(47,'s1',60,'AND'),(48,'s1',60,'AND'),(49,'s1',60,'AND'),(39,'s1',0,'CONTACT'),(40,'s1',0,'DESIGN'),(45,'s1',43,'DESKTOP'),(46,'s1',43,'DESKTOP'),(47,'s1',43,'DESKTOP'),(48,'s1',43,'DESKTOP'),(49,'s1',43,'DESKTOP'),(45,'s1',29,'ENGLISH'),(46,'s1',29,'ENGLISH'),(47,'s1',29,'ENGLISH'),(48,'s1',29,'ENGLISH'),(49,'s1',29,'ENGLISH'),(44,'s1',0,'FASHION'),(45,'s1',7,'IT'),(46,'s1',7,'IT'),(47,'s1',7,'IT'),(48,'s1',7,'IT'),(49,'s1',7,'IT'),(45,'s1',15,'LIKE'),(46,'s1',15,'LIKE'),(47,'s1',15,'LIKE'),(48,'s1',15,'LIKE'),(49,'s1',15,'LIKE'),(45,'s1',10,'LOOK'),(46,'s1',10,'LOOK'),(47,'s1',10,'LOOK'),(48,'s1',10,'LOOK'),(49,'s1',10,'LOOK'),(45,'s1',0,'MAKING'),(46,'s1',0,'MAKING'),(47,'s1',0,'MAKING'),(48,'s1',0,'MAKING'),(49,'s1',0,'MAKING'),(45,'s1',38,'MANY'),(46,'s1',38,'MANY'),(47,'s1',38,'MANY'),(48,'s1',38,'MANY'),(49,'s1',38,'MANY'),(41,'s1',0,'MUSIC'),(43,'s1',0,'NATURE'),(45,'s1',51,'PACKAGES'),(46,'s1',51,'PACKAGES'),(47,'s1',51,'PACKAGES'),(48,'s1',51,'PACKAGES'),(49,'s1',51,'PACKAGES'),(45,'s1',68,'PAGE1'),(46,'s1',68,'PAGE2'),(47,'s1',68,'PAGE3'),(48,'s1',68,'PAGE4'),(49,'s1',68,'PAGE5'),(45,'s1',20,'READABLE'),(46,'s1',20,'READABLE'),(47,'s1',20,'READABLE'),(48,'s1',20,'READABLE'),(49,'s1',20,'READABLE'),(38,'s1',0,'SUPPORT'),(42,'s1',0,'TECHNOLOGY'),(45,'s1',64,'WEB'),(46,'s1',64,'WEB'),(47,'s1',64,'WEB'),(48,'s1',64,'WEB'),(49,'s1',64,'WEB'),(6,'s1',0,'АВТОРИЗАЦИЯ'),(30,'s1',8,'БАНКА'),(21,'s1',0,'БАНКОВСКИЕ'),(28,'s1',18,'БИЗНЕСУ'),(37,'s1',0,'БЛОГ'),(50,'s1',0,'БЛОГ'),(5,'s1',0,'ВАКАНСИИ'),(7,'s1',7,'ВОПРОС'),(17,'s1',0,'ДЕПОЗИТАРНЫЕ'),(27,'s1',0,'ДЕПОЗИТЫ'),(18,'s1',0,'ДОКУМЕНТАРНЫЕ'),(7,'s1',0,'ЗАДАТЬ'),(28,'s1',7,'И'),(14,'s1',0,'ИНКАССАЦИЯ'),(13,'s1',0,'ИНТЕРНЕТ-БАНКИНГ'),(8,'s1',11,'ИНФОРМАЦИЯ'),(1,'s1',0,'ИСТОРИЯ'),(12,'s1',0,'КАРТА'),(21,'s1',11,'КАРТЫ'),(25,'s1',12,'КАРТЫ'),(15,'s1',14,'КЛИЕНТАМ'),(1,'s1',8,'КОМПАНИИ'),(10,'s1',8,'КОМПАНИИ'),(8,'s1',0,'КОНТАКТНАЯ'),(15,'s1',0,'КОРПОРАТИВНЫМ'),(22,'s1',16,'КРЕДИТ'),(26,'s1',0,'КРЕДИТОВАНИЕ'),(29,'s1',0,'ЛИЗИНГ'),(23,'s1',8,'ЛИЦАМ'),(28,'s1',0,'МАЛОМУ'),(20,'s1',10,'МЕЖБАНКОВСКОМ'),(4,'s1',0,'МИССИЯ'),(20,'s1',7,'НА'),(9,'s1',0,'НАШИ'),(10,'s1',0,'НОВОСТИ'),(30,'s1',0,'НОВОСТИ'),(16,'s1',18,'ОБСЛУЖИВАНИЕ'),(18,'s1',14,'ОПЕРАЦИИ'),(19,'s1',11,'ОРГАНИЗАЦИЯМ'),(25,'s1',0,'ПЛАСТИКОВЫЕ'),(11,'s1',0,'ПОИСК'),(22,'s1',0,'ПОТРЕБИТЕЛЬСКИЙ'),(16,'s1',0,'РАСЧЕТНО-КАССОВОЕ'),(9,'s1',5,'РЕКВИЗИТЫ'),(3,'s1',0,'РУКОВОДСТВО'),(20,'s1',24,'РЫНКЕ'),(12,'s1',6,'САЙТА'),(28,'s1',9,'СРЕДНЕМУ'),(17,'s1',13,'УСЛУГИ'),(20,'s1',0,'УСЛУГИ'),(24,'s1',0,'УСЛУГИ'),(19,'s1',0,'ФИНАНСОВЫМ'),(23,'s1',0,'ЧАСТНЫМ');
/*!40000 ALTER TABLE `b_search_content_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_custom_rank`
--

DROP TABLE IF EXISTS `b_search_custom_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT 0,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_custom_rank`
--

LOCK TABLES `b_search_custom_rank` WRITE;
/*!40000 ALTER TABLE `b_search_custom_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_custom_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_phrase`
--

DROP TABLE IF EXISTS `b_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_phrase`
--

LOCK TABLES `b_search_phrase` WRITE;
/*!40000 ALTER TABLE `b_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_stem`
--

DROP TABLE IF EXISTS `b_search_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB AUTO_INCREMENT=1532 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_stem`
--

LOCK TABLES `b_search_stem` WRITE;
/*!40000 ALTER TABLE `b_search_stem` DISABLE KEYS */;
INSERT INTO `b_search_stem` VALUES (1531,'--'),(763,'-0'),(787,'00'),(112,'000'),(1160,'001'),(614,'044591488'),(775,'05'),(624,'0575249000'),(849,'09'),(1137,'1-6-ГО'),(772,'10'),(626,'115035'),(616,'11806935'),(1140,'12'),(756,'120'),(1487,'124'),(1064,'13'),(1181,'14'),(761,'140'),(1077,'147'),(167,'149'),(607,'15'),(903,'150'),(596,'152073950937987'),(850,'16'),(764,'160'),(905,'1600'),(1329,'17'),(604,'175089'),(5,'18'),(767,'180'),(416,'1985'),(370,'1986'),(364,'1988'),(340,'1991'),(7,'1993'),(9,'1996'),(24,'1997'),(48,'1998'),(66,'1999'),(790,'1О'),(1307,'2-Х'),(178,'20'),(114,'200'),(346,'2000'),(1462,'20000'),(406,'2002'),(84,'2004'),(78,'2004ГОД'),(102,'2006'),(121,'2007'),(135,'2008'),(151,'2009'),(159,'2010'),(1141,'21'),(579,'212-85-06'),(580,'212-85-07'),(581,'212-85-08'),(786,'22'),(770,'220'),(1195,'23'),(1142,'24'),(181,'240'),(629,'240-38-12'),(766,'25'),(758,'2500'),(1466,'25000'),(1430,'254-П'),(776,'260'),(1214,'2НДФЛ'),(1264,'3-5'),(1420,'3-Х'),(1055,'30'),(919,'300'),(610,'30102810000000000569'),(186,'31'),(760,'35'),(806,'350'),(762,'3500'),(1170,'36'),(1062,'365'),(251,'4-М'),(1343,'40'),(904,'400'),(180,'415'),(755,'45'),(765,'4500'),(232,'490'),(578,'495'),(779,'5-10'),(246,'5-М'),(111,'50'),(911,'500'),(768,'5000'),(1451,'50000'),(185,'522'),(184,'535'),(1200,'55'),(1486,'566'),(921,'580'),(1139,'6-ГО'),(1198,'60'),(1124,'600'),(769,'6000'),(204,'650'),(241,'7-Е'),(234,'70'),(771,'7000'),(1331,'72'),(1151,'75'),(1319,'757-57-57'),(620,'775021017'),(612,'7860249880'),(1221,'800'),(773,'8000'),(1222,'808'),(929,'870'),(1159,'90'),(777,'9000'),(1061,'91'),(598,'911156'),(166,'95'),(628,'960-10-12'),(1070,'978-78-78'),(618,'98122'),(1516,'ABOUT'),(1484,'AGO'),(1477,'AND'),(1497,'AS'),(1513,'BACK'),(593,'BANK'),(602,'BITEX'),(1480,'BY'),(1510,'CLITON'),(1485,'COMMENTS'),(1519,'CONTACT'),(1501,'CONTENT'),(1506,'CONTINUE'),(1289,'CКИДК'),(529,'CТРАН'),(1511,'DAY'),(1520,'DESIGN'),(1475,'DESKTOP'),(1482,'DEVIEC-'),(1495,'DISTRIBUTION'),(630,'E-MAIL'),(1505,'EDITORS'),(1504,'EDITORSLOREM'),(1473,'ENGLISH'),(722,'ENVIRONMENT'),(718,'EXPLORER'),(1524,'FASHION'),(1508,'FRED'),(1252,'GOLD'),(1492,'HAS'),(1502,'HERE'),(1515,'HOME'),(1483,'HOURS'),(156,'IBANK'),(600,'IISARUMM'),(1256,'INFINITE'),(351,'INSEAD'),(82,'INTERNATIONAL'),(717,'INTERNET'),(1489,'IPSUM'),(599,'IRS'),(1490,'IS'),(1469,'IT'),(720,'JAVA'),(723,'JRE'),(1481,'KIETH'),(1496,'LETTERS'),(1471,'LIKE'),(1470,'LOOK'),(1488,'LOREM'),(632,'MAIL'),(1468,'MAKING'),(1474,'MANY'),(1248,'MASTERCARD'),(349,'MBA'),(1509,'MEYER-'),(1493,'MORE-OR-LESS'),(1521,'MUSIC'),(591,'NAME'),(1523,'NATURE'),(1512,'NEXT'),(1494,'NORMAL'),(592,'OF'),(677,'ON-LINE'),(1498,'OPPOSED'),(1476,'PACKAGES'),(1479,'PAGE'),(1525,'PAGE1'),(1527,'PAGE2'),(1528,'PAGE3'),(1529,'PAGE4'),(1530,'PAGE5'),(1253,'PLATINUM'),(1503,'PUBLISHING'),(1472,'READABLE'),(1507,'READING'),(721,'RUNTIME'),(633,'RUSBANK'),(631,'RUSBK'),(1172,'SMS'),(601,'SPRINT'),(1518,'SUPPORT'),(157,'SYSTEM'),(1522,'TECHNOLOGY'),(597,'TELEX'),(1517,'TEXT'),(1491,'THAT'),(590,'THE'),(1499,'TO'),(1514,'TOP'),(429,'UAMS'),(1500,'USING'),(724,'VERSION'),(81,'VISA'),(1478,'WEB'),(713,'WINDOWS'),(705,'АБОНЕНТСК'),(1350,'АВАНС'),(967,'АВАНСОВ'),(1084,'АВИЗ'),(980,'АВИЗОВАН'),(267,'АВТОКРЕДИТОВАН'),(154,'АВТОМАТИЗИРОВА'),(1391,'АВТОМАТИЧЕСК'),(97,'АВТОМОБИЛ'),(532,'АВТОРИЗАЦ'),(534,'АВТОРИЗОВА'),(1313,'АВТОТРАНСПОРТ'),(890,'АГЕНТ'),(1354,'АГЕНТСТВ'),(535,'АДМИНИСТРАТИВН'),(874,'АДР'),(603,'АДРЕС'),(483,'АДРЕСН'),(143,'АКАДЕМ'),(995,'АККРЕДИТ'),(993,'АККРЕДИТИВ'),(1012,'АККРЕДИТИВН'),(994,'АККРЕДИТИВОВ'),(244,'АКТ'),(243,'АКТИВ'),(20,'АКТИВН'),(242,'АКТИВОВ'),(689,'АКТУАЛЬН'),(868,'АКЦ'),(585,'АКЦИОНЕРН'),(397,'АЛЕКСАНДРОВИЧ'),(1089,'АМЕРИКАНСК'),(57,'АНАЛИЗ'),(402,'АНАТОЛ'),(588,'АНГЛИЙСК'),(1463,'АНДЕРРАЙТИНГ'),(422,'АНДР'),(908,'АНКЕТ'),(428,'АНТВЕРП'),(274,'АРЕНД'),(145,'АССОЦИАЦ'),(1424,'АФХД'),(1174,'БАЛАНС'),(950,'БАЛТ'),(627,'БАЛЧУГ'),(3,'БАНК'),(1080,'БАНК-КОНТРАГЕНТ'),(998,'БАНК-ЭМИТЕНТ'),(1003,'БАНКА-ЭМИТЕНТ'),(1078,'БАНКАМ-КОНТРАГЕНТ'),(1008,'БАНКАМИ-КОРРЕСПОНДЕНТ'),(1087,'БАНКНОТ'),(1085,'БАНКНОТН'),(288,'БАНКОВ'),(1046,'БАНКОВ-КОНТРАГЕНТ'),(1045,'БАНКОВ-КОНТРАГЕНТОВ'),(957,'БАНКОВ-КОРРЕСПОНДЕНТ'),(956,'БАНКОВ-КОРРЕСПОНДЕНТОВ'),(1145,'БАНКОВ-ПАРТНЕР'),(1144,'БАНКОВ-ПАРТНЕРОВ'),(155,'БАНКОВСК'),(1094,'БАНКОМ-ЭМИТЕНТ'),(804,'БАНКОМАТ'),(803,'БАНКОМАТОВ'),(918,'БЕЗДОКУМЕНТАРН'),(1086,'БЕЗНАЛИЧН'),(639,'БЕЗОПАСН'),(1006,'БЕЗОТЗЫВН'),(942,'БЕЗУСЛОВН'),(983,'БЕНЕФИЦИАР'),(982,'БЕНЕФИЦИАРОВ'),(704,'БЕСПЛАТН'),(133,'БИЗНЕС'),(1309,'БИЗНЕС-ПЛА'),(350,'БИЗНЕС-ШКОЛ'),(613,'БИК'),(528,'БЛАГ'),(510,'БЛАГОСОСТОЯН'),(519,'БЛАГОТВОРИТЕЛЬН'),(1320,'БЛИЖАЙШ'),(951,'БЛИЖН'),(1467,'БЛОГ'),(924,'БЛОКИРОВК'),(110,'БОЛ'),(187,'БОЛЬШ'),(826,'БОЛЬШИНСТВ'),(1290,'БОНУСН'),(1257,'БРИЛЛИАНТ'),(913,'БРОКЕРСК'),(573,'БУД'),(1196,'БУДЕТ'),(1377,'БУДУТ'),(55,'БУМАГ'),(897,'БУМАЖН'),(415,'БУХГАЛТЕР'),(58,'БУХГАЛТЕРСК'),(1090,'БЫВШ'),(539,'БЫСТР'),(362,'ВАД'),(1016,'ВАЖН'),(531,'ВАКАНС'),(675,'ВАЛЮТ'),(1048,'ВАЛЮТН'),(1239,'ВАРИАНТ'),(1075,'ВАРЬИР'),(1202,'ВАС'),(384,'ВАСИЛЬЕВН'),(1375,'ВВЕДЕН'),(657,'ВВОД'),(1345,'ВЕ'),(831,'ВЕДЕН'),(468,'ВЕЗД'),(871,'ВЕКСЕЛ'),(1109,'ВЕКСЕЛЕДЕРЖАТЕЛ'),(1067,'ВЕКСЕЛЬН'),(561,'ВЕРНУТ'),(719,'ВЕРС'),(537,'ВЕРХН'),(1021,'ВЗАИМН'),(1029,'ВЗАИМОВЫГОДН'),(459,'ВЗАИМОДЕЙСТВ'),(487,'ВЗАИМООТНОШЕН'),(707,'ВЗИМА'),(931,'ВЗИМАН'),(108,'ВЗЯЛ'),(228,'ВИД'),(867,'ВИДОВ'),(666,'ВИЗИРОВА'),(389,'ВИКТОРОВИЧ'),(118,'ВКЛАД'),(1229,'ВКЛАДОВ'),(259,'ВКЛЮЧ'),(1268,'ВКЛЮЧА'),(1157,'ВКЛЮЧИТЕЛЬН'),(888,'ВЛАДЕЛЬЦ'),(1188,'ВЛЕЧЕТ'),(492,'ВНЕДР'),(212,'ВНЕДРЕН'),(906,'ВНЕСЕН'),(1032,'ВНИМАН'),(509,'ВНОС'),(922,'ВНУТР'),(647,'ВНУТРЕН'),(928,'ВОЗВРАТ'),(194,'ВОЗМОЖН'),(1074,'ВОЗНАГРАЖДЕН'),(1113,'ВОЗНИКА'),(1189,'ВОЗНИКНОВЕН'),(1405,'ВОЗРОСШ'),(367,'ВОЛОШИН'),(563,'ВОПРОС'),(727,'ВОСПОЛЬЗОВА'),(46,'ВОСТРЕБОВАН'),(107,'ВРЕМ'),(642,'ВРЕМЕН'),(467,'ВСЕГД'),(499,'ВСЕМ'),(305,'ВСЕМИРН'),(123,'ВСЕРОССИЙСК'),(1402,'ВСЕСТОРОН'),(503,'ВСЕХ'),(572,'ВСТРЕЧ'),(976,'ВСТРЕЧН'),(1371,'ВСТУПЛЕН'),(99,'ВУЗ'),(1044,'ВЫБОР'),(1323,'ВЫБРА'),(1236,'ВЫГОДН'),(1049,'ВЫДА'),(954,'ВЫДАЧ'),(751,'ВЫЕЗД'),(750,'ВЫЕЗДОВ'),(33,'ВЫНЕСТ'),(668,'ВЫПИСК'),(901,'ВЫПИСОК'),(1339,'ВЫПЛАТ'),(880,'ВЫПОЛНЕН'),(26,'ВЫПУСК'),(743,'ВЫРУЧК'),(434,'ВЫСОК'),(88,'ВЫСОКОТЕХНОЛОГИЧН'),(480,'ВЫСОЧАЙШ'),(315,'ВЫСТАВК'),(1360,'ВЫСТУПА'),(1417,'ВЫСШ'),(801,'ВЫХОДН'),(1161,'ВЫШ'),(1437,'ВЫЯВЛЕН'),(336,'ВЯЧЕСЛА'),(1005,'ГАЗПРОМБАНК'),(953,'ГАРАНТ'),(990,'ГАРАНТИЙН'),(495,'ГАРАНТИР'),(875,'ГДР'),(701,'ГЕНЕРАЦ'),(423,'ГЕННАДЬЕВИЧ'),(948,'ГЕОГРАФ'),(489,'ГИБК'),(122,'ГЛАВН'),(8,'ГОД'),(1169,'ГОДОВ'),(1217,'ГОРОД'),(1219,'ГОРОДСК'),(1220,'ГОРЯЧ'),(331,'ГОСУДАРСТВЕН'),(1263,'ГОТ'),(1262,'ГОТОВ'),(1193,'ГРАЖДАНИН'),(1300,'ГРАНИЦ'),(733,'ГРАФИК'),(326,'ГРИГОРЬЕВИЧ'),(206,'ДАЛЬН'),(160,'ДАН'),(1060,'ДАТ'),(1108,'ДАЮЩ'),(1266,'ДВА'),(914,'ДВИЖЕН'),(1211,'ДВУХ'),(1291,'ДЕБЕТОВ'),(551,'ДЕЙСТВ'),(358,'ДЕЛ'),(1024,'ДЕЛОВ'),(1249,'ДЕМОКРАТИЧН'),(225,'ДЕН'),(844,'ДЕНЕГ'),(277,'ДЕНЕЖН'),(116,'ДЕНЬГ'),(866,'ДЕП'),(424,'ДЕПАРТАМЕНТ'),(250,'ДЕПОЗ'),(249,'ДЕПОЗИТ'),(860,'ДЕПОЗИТАР'),(859,'ДЕПОЗИТАРН'),(1334,'ДЕПОЗИТН'),(248,'ДЕПОЗИТОВ'),(884,'ДЕПОНЕНТ'),(883,'ДЕПОНЕНТОВ'),(120,'ДЕРЖАТЕЛ'),(103,'ДЕСЯ'),(1271,'ДЕТ'),(291,'ДЕЯТЕЛЬН'),(170,'ДИНАМИК'),(556,'ДИНАМИЧЕСК'),(1237,'ДИНАМИЧН'),(380,'ДИРЕКТОР'),(379,'ДИРЕКТОРОВ'),(1054,'ДИСКОНТ'),(268,'ДИСТАНЦИОН'),(606,'ДМИТРОВК'),(1063,'ДНЕ'),(853,'ДНИ'),(792,'ДНЯ'),(1065,'ДО2'),(934,'ДОБАВЛЕН'),(115,'ДОВЕР'),(1176,'ДОВЕРЯ'),(571,'ДОГОВОР'),(854,'ДОГОВОРН'),(892,'ДОГОВОРОВ'),(660,'ДОКУМЕНТ'),(920,'ДОКУМЕНТАРН'),(741,'ДОКУМЕНТАЦ'),(896,'ДОКУМЕНТОВ'),(1069,'ДОЛГОВ'),(1034,'ДОЛГОСРОЧН'),(321,'ДОЛЖНОСТ'),(1125,'ДОЛЛ'),(1153,'ДОЛЛАР'),(1180,'ДОЛЛАРОВ'),(15,'ДОПОЛНИТЕЛЬН'),(1440,'ДОРАБОТК'),(1118,'ДОСРОЧН'),(726,'ДОСТАВК'),(1414,'ДОСТАВЛЕН'),(1386,'ДОСТАТОЧН'),(451,'ДОСТИЖЕН'),(540,'ДОСТУП'),(279,'ДОСТУПН'),(190,'ДОХОД'),(693,'ДРУГ'),(342,'ДРУЖБ'),(1250,'ЕLЕCTRON'),(388,'ЕВГЕН'),(337,'ЕВГЕНЬЕВИЧ'),(1127,'ЕВР'),(873,'ЕВРООБЛИГАЦ'),(140,'ЕВРОПЕЙСК'),(1179,'ЕДИНОВРЕМЕН'),(309,'ЕЖЕГОДН'),(848,'ЕЖЕДНЕВН'),(1129,'ЕЖЕМЕСЯЧН'),(1105,'ЕМ'),(1071,'ЕТС'),(1422,'ЖЕЛАТЕЛ'),(1201,'ЖЕНЩИН'),(530,'ЖИТЕЛ'),(412,'ЖУРАВЛ'),(411,'ЖУРАВЛЕВ'),(985,'ЗАВЕРК'),(161,'ЗАВЕРША'),(1051,'ЗАВИС'),(1076,'ЗАВИСИМ'),(802,'ЗАГРУЗК'),(562,'ЗАДА'),(297,'ЗАДАЧ'),(199,'ЗАДОЛЖЕН'),(757,'ЗАЕЗД'),(1192,'ЗАЕМЩИК'),(1421,'ЗАЕМЩИКОВ'),(1058,'ЗАЙМ'),(1261,'ЗАКАЗА'),(930,'ЗАКЛАД'),(1083,'ЗАКЛЮЧЕН'),(1107,'ЗАКОН'),(1428,'ЗАКОНОДАТЕЛЬСТВ'),(425,'ЗАКОНЧ'),(886,'ЗАКРЕПЛЕН'),(584,'ЗАКРЫТ'),(40,'ЗАЛ'),(39,'ЗАЛОВ'),(927,'ЗАЛОГ'),(882,'ЗАЛОГОВ'),(338,'ЗАМЕСТИТЕЛ'),(240,'ЗАНИМА'),(1321,'ЗАПОЛН'),(490,'ЗАПРОС'),(1388,'ЗАПУСТ'),(533,'ЗАРЕГИСТРИРОВА'),(1450,'ЗАРПЛАТ'),(952,'ЗАРУБЕЖ'),(307,'ЗАРУБЕЖН'),(789,'ЗАЧИСЛЕН'),(694,'ЗАЧИСЛЯ'),(1445,'ЗАЩИТ'),(1279,'ЗАЩИЩ'),(744,'ЗАЯВК'),(1441,'ЗАЯВОК'),(1395,'ЗВОН'),(1223,'ЗВОНОК'),(1362,'ЗДАН'),(655,'ЗЕМН'),(1423,'ЗНАН'),(1358,'ЗНАЧИТЕЛЬН'),(138,'ЗОЛОТ'),(361,'ИГНА'),(360,'ИГНАТ'),(359,'ИГНАТЬЕВ'),(622,'ИДЕНТИФИКАЦИОН'),(306,'ИЗВЕСТН'),(1413,'ИЗВИНЕН'),(1185,'ИЗЛОЖЕН'),(907,'ИЗМЕНЕН'),(1392,'ИЗУЧЕН'),(1338,'ИЗЪЯТ'),(861,'ИМЕЕТ'),(1347,'ИМПОРТН'),(1317,'ИМУЩЕСТВ'),(611,'ИН'),(1330,'ИНВЕСТ'),(261,'ИНВЕСТИЦИОН'),(446,'ИНДИВИДУАЛЬН'),(374,'ИНДУСТРИАЛЬН'),(1460,'ИНИЦИАТИВН'),(923,'ИНИЦИАТОР'),(1100,'ИНКАСС'),(725,'ИНКАССАЦ'),(746,'ИНКАССИРУЕМ'),(452,'ИННОВАЦ'),(494,'ИННОВАЦИОН'),(674,'ИНОСТРА'),(372,'ИНСТИТУТ'),(1394,'ИНСТРУКЦ'),(864,'ИНСТРУМЕНТ'),(872,'ИНСТРУМЕНТОВ'),(1190,'ИНТЕЗ'),(1233,'ИНТЕРЕС'),(650,'ИНТЕРНЕТ'),(636,'ИНТЕРНЕТ-БАНК'),(635,'ИНТЕРНЕТ-БАНКИНГ'),(1379,'ИНТЕРНЕТ-КЛИЕНТ'),(95,'ИНТЕРНЕТ-КРЕДИТОВАН'),(716,'ИНТЕРНЕТ-СТРАНИЦ'),(644,'ИНТЕРФЕЙС'),(219,'ИНФОРМАЦ'),(542,'ИНФОРМАЦИОН'),(74,'ИПОТЕЧН'),(354,'ИРИН'),(330,'ИРКУТСК'),(979,'ИСК'),(936,'ИСКЛЮЧЕН'),(978,'ИСКОВ'),(1038,'ИСПОЛН'),(665,'ИСПОЛНЕН'),(318,'ИСПОЛНИТЕЛЬН'),(1099,'ИСПОЛНЯ'),(283,'ИСПОЛЬЗ'),(30,'ИСПОЛЬЗОВАН'),(1207,'ИСПЫТАТЕЛЬН'),(1403,'ИССЛЕДОВАН'),(1,'ИСТОР'),(431,'КАЖД'),(398,'КАЗНАЧЕЙСТВ'),(1128,'КАЛЕНДАРН'),(421,'КАЛИНИН'),(176,'КАПИТА'),(29,'КАРТ'),(1167,'КАРТОЧК'),(1288,'КАРТОЧН'),(1152,'КАРТСЧЕТ'),(1234,'КАСА'),(838,'КАССОВ'),(559,'КАТАЛОГ'),(64,'КАТЕГОР'),(141,'КАЧЕСТВ'),(146,'КАЧЕСТВЕН'),(408,'КВАЛИФИКАЦ'),(399,'КЕМЕРОВСК'),(1443,'КК'),(86,'КЛИЕНТ'),(216,'КЛИЕНТОВ'),(702,'КЛЮЧ'),(545,'КНОПОК'),(498,'КО'),(623,'КОД'),(749,'КОЛИЧЕСТВ'),(317,'КОЛЛЕГИАЛЬН'),(1122,'КОМИСС'),(1073,'КОМИССИОН'),(12,'КОММЕРЧЕСК'),(2,'КОМПАН'),(449,'КОМПЛЕКС'),(810,'КОМПЛЕКСН'),(1367,'КОМПЛЕКТ'),(653,'КОМПЬЮТЕР'),(1163,'КОНВЕРС'),(843,'КОНВЕРСИОН'),(676,'КОНВЕРТАЦ'),(395,'КОНДРУС'),(394,'КОНДРУСЕВ'),(1052,'КОНКРЕТН'),(812,'КОНКУРЕНТН'),(946,'КОНКУРЕНТОСПОСОБН'),(137,'КОНКУРС'),(567,'КОНСУЛЬТАЦ'),(889,'КОНСУЛЬТАЦИОН'),(876,'КОНСУЛЬТИРОВАН'),(564,'КОНТАКТН'),(692,'КОНТРАГЕНТ'),(691,'КОНТРАГЕНТОВ'),(965,'КОНТРАКТ'),(964,'КОНТРАКТОВ'),(955,'КОНТРГАРАНТ'),(1295,'КОНТРОЛ'),(696,'КОНТРОЛИРОВА'),(486,'КОНФИДЕНЦИАЛЬН'),(1340,'КОНЦ'),(313,'КОНЦЕРТ'),(609,'КОР'),(353,'КОРН'),(352,'КОРНЕВ'),(260,'КОРПОРАТИВН'),(862,'КОРРЕСПОНДЕНТСК'),(1000,'КОТНРАГЕНТ'),(31,'КОТОР'),(619,'КПП'),(1232,'КРАТКОСРОЧН'),(841,'КРАТЧАЙШ'),(109,'КРЕД'),(253,'КРЕДИТ'),(270,'КРЕДИТН'),(252,'КРЕДИТОВ'),(75,'КРЕДИТОВАН'),(1465,'КРЕДИТОСПОСОБН'),(70,'КРИЗИС'),(61,'КРИТЕР'),(281,'КРУГЛОСУТОЧН'),(221,'КРУПН'),(524,'КУЛЬТУР'),(518,'КУЛЬТУРН'),(300,'КУЛЬТУРНО-ПРОСВЕТИТЕЛЬСК'),(680,'КУРС'),(149,'ЛАУРЕАТ'),(1240,'ЛЕЖ'),(104,'ЛЕТ'),(476,'ЛИДЕР'),(475,'ЛИДЕРОВ'),(1246,'ЛИЗИНГ'),(1316,'ЛИКВИДН'),(962,'ЛИМ'),(961,'ЛИМИТ'),(960,'ЛИМИТОВ'),(1022,'ЛИН'),(1227,'ЛИНЕЙК'),(93,'ЛИЦ'),(50,'ЛИЦЕНЗ'),(1177,'ЛИШН'),(1004,'ЛОР'),(129,'ЛУЧШ'),(271,'ЛЬГОТН'),(652,'ЛЮБ'),(1244,'ЛЮД'),(387,'ЛЯХ'),(432,'МАКСИМАЛЬН'),(131,'МАЛ'),(144,'МАРКЕТИНГ'),(1135,'МАРТ'),(735,'МАРШРУТ'),(1381,'МАСТЕР'),(798,'МАТЕРИА'),(391,'МВА'),(139,'МЕДАЛ'),(523,'МЕДИЦИН'),(1026,'МЕЖБАНКОВСК'),(136,'МЕЖДУНАРОДН'),(840,'МЕЖРЕГИОНАЛЬН'),(393,'МЕНЕДЖМЕНТ'),(1197,'МЕНЬШ'),(44,'МЕСТ'),(759,'МЕСЯЦ'),(1138,'МЕСЯЦЕВ'),(1446,'МЕТОДОЛОГИЧЕСК'),(1353,'МЕХАНИЗМ'),(1158,'МИН'),(1328,'МИНИКРЕД'),(1130,'МИНИМАЛЬН'),(1039,'МИНИМИЗАЦ'),(437,'МИР'),(436,'МИРОВ'),(430,'МИСС'),(382,'МИХАЙЛ'),(381,'МИХАЙЛОВ'),(363,'МИХАЙЛОВИЧ'),(158,'МКТ'),(205,'МЛН'),(1072,'ММВБ'),(304,'МНОГ'),(1297,'МНОГОКРАТН'),(314,'МНОГОЧИСЛЕН'),(1037,'МОГУТ'),(568,'МОЖЕТ'),(1218,'МОЖН'),(179,'МОМЕНТ'),(738,'МОНЕТ'),(345,'МОСКВ'),(356,'МОСКОВСК'),(1199,'МУЖЧИН'),(308,'МУЗЫКАНТ'),(76,'МУНИЦИПАЛЬН'),(433,'НАБОР'),(1425,'НАВЫК'),(150,'НАГРАД'),(287,'НАДЕЖН'),(963,'НАДЛЕЖА'),(586,'НАЗВАН'),(1015,'НАИБОЛ'),(583,'НАИМЕНОВАН'),(1205,'НАЙМ'),(1028,'НАЛАЖИВАН'),(909,'НАЛИЧ'),(729,'НАЛИЧН'),(933,'НАЛОГ'),(971,'НАЛОГОВ'),(504,'НАМ'),(1426,'НАПИСАН'),(543,'НАПОЛНЕН'),(1018,'НАПРАВЛ'),(218,'НАПРАВЛЕН'),(191,'НАПРАВЛЯ'),(209,'НАРАЩИВАН'),(344,'НАРОД'),(418,'НАРОДН'),(343,'НАРОДОВ'),(18,'НАСЕЛЕН'),(1389,'НАСТРОЙК'),(1111,'НАСТУПЛЕН'),(245,'НАХОД'),(912,'НАХОДЯ'),(126,'НАЦИОНАЛЬН'),(105,'НАЧА'),(1156,'НАЧАЛ'),(327,'НАЧАЛЬНИК'),(25,'НАЧИНА'),(684,'НАЧИСЛЕН'),(280,'НАШ'),(11,'НЕБОЛЬШ'),(1315,'НЕДВИЖИМ'),(1066,'НЕДЕЛ'),(829,'НЕЗАВИСИМ'),(1280,'НЕЗАКОН'),(520,'НЕЗАЩИЩЕН'),(1112,'НЕКОТОР'),(1204,'НЕМ'),(1265,'НЕМНОГ'),(711,'НЕОБХОД'),(740,'НЕОБХОДИМ'),(1136,'НЕПОГАШЕН'),(1133,'НЕРАЗРЕШЕН'),(835,'НЕРЕЗИДЕНТ'),(834,'НЕРЕЗИДЕНТОВ'),(795,'НЕСКОЛЬК'),(939,'НЕСТАНДАРТН'),(1415,'НЕУДОБСТВ'),(714,'НИЖ'),(414,'НИКОЛАЕВН'),(887,'НИМ'),(959,'НИХ'),(153,'НОВ'),(1119,'НОВАЦ'),(558,'НОВОСТ'),(595,'НОМЕР'),(785,'НОЧН'),(1175,'НУЖН'),(465,'ОБЕСПЕЧ'),(390,'ОБЕСПЕЧЕН'),(460,'ОБЕСПЕЧИВА'),(91,'ОБЛАСТ'),(869,'ОБЛИГАЦ'),(895,'ОБМ'),(1312,'ОБОРОТ'),(730,'ОБОРУДОВА'),(1314,'ОБОРУДОВАН'),(1298,'ОБРА'),(322,'ОБРАЗОВАН'),(517,'ОБРАЗОВАТЕЛЬН'),(820,'ОБРАЗЦ'),(565,'ОБРАТ'),(1068,'ОБРАЩЕН'),(27,'ОБСЛУЖИВАН'),(98,'ОБУЧЕН'),(947,'ОБШИРН'),(1208,'ОБЩ'),(1459,'ОБЩЕН'),(511,'ОБЩЕСТВ'),(200,'ОБЪ'),(1146,'ОБЪЕДИНЕН'),(794,'ОБЪЕКТ'),(211,'ОБЪЕМ'),(1393,'ОБЪЕМН'),(210,'ОБЪЕМОВ'),(1191,'ОБЯЗАН'),(966,'ОБЯЗАТЕЛЬСТВ'),(1053,'ОВГВЗ'),(1131,'ОВЕРДРАФТ'),(935,'ОГОВОРЕН'),(1273,'ОГРАНИЧЕН'),(220,'ОДИН'),(286,'ОДН'),(1104,'ОКАЗА'),(442,'ОКАЗАН'),(256,'ОКАЗЫВА'),(1452,'ОКЛАД'),(617,'ОКОНХ'),(329,'ОКОНЧ'),(1342,'ОКОНЧАН'),(615,'ОКП'),(127,'ОЛИМП'),(413,'ОЛЬГ'),(1418,'ОП'),(1243,'ОПЕРАТИВН'),(229,'ОПЕРАЦ'),(38,'ОПЕРАЦИОН'),(479,'ОПИРА'),(1047,'ОПИСАН'),(975,'ОПЛАТ'),(671,'ОПРЕДЕЛЕН'),(1184,'ОПРЕДЕЛЯ'),(1238,'ОПТИМАЛЬН'),(1456,'ОПЫТН'),(319,'ОРГА'),(970,'ОРГАН'),(527,'ОРГАНИЗАЦ'),(969,'ОРГАНОВ'),(902,'ОРИГИНА'),(898,'ОРИГИНАЛЬН'),(508,'ОРИЕНТИРОВА'),(1260,'ОРНАМЕНТ'),(1147,'ОРС'),(712,'ОС'),(811,'ОСН'),(458,'ОСНОВ'),(4,'ОСНОВА'),(891,'ОСНОВАН'),(227,'ОСНОВН'),(1031,'ОСОБ'),(1164,'ОСТАНОВК'),(910,'ОСТАТК'),(1294,'ОСТАТОК'),(1123,'ОСУЩЕСТВЛЕН'),(226,'ОСУЩЕСТВЛЯ'),(576,'ОТВЕТ'),(507,'ОТВЕТСТВЕН'),(1357,'ОТВЛЕЧЕН'),(100,'ОТД'),(1416,'ОТДЕЛ'),(1216,'ОТДЕЛЕН'),(550,'ОТДЕЛЬН'),(981,'ОТЕЧЕСТВЕН'),(13,'ОТКРЫВА'),(497,'ОТКРЫТ'),(546,'ОТЛИЧА'),(1134,'ОТМЕН'),(60,'ОТНОС'),(426,'ОТНОШЕН'),(1171,'ОТПРАВК'),(462,'ОТРАСЛ'),(461,'ОТРАСЛЕВ'),(1409,'ОТРЕМОНТИРОВА'),(687,'ОТСЛЕЖИВА'),(1079,'ОТСУТСТВ'),(915,'ОТЧЕТ'),(59,'ОТЧЕТН'),(1187,'ОФЕРТ'),(1059,'ОФЗ'),(16,'ОФИС'),(1361,'ОФИСН'),(233,'ОФИСОВ'),(1203,'ОФИЦИАЛЬН'),(881,'ОФОРМЛЕН'),(1434,'ОЦЕНК'),(1369,'ОЦЕНЩИК'),(870,'ПА'),(1267,'ПАКЕТ'),(536,'ПАНЕЛ'),(1447,'ПАРК'),(471,'ПАРТНЕР'),(1030,'ПАРТНЕРСК'),(457,'ПАРТНЕРСТВ'),(14,'ПЕРВ'),(1154,'ПЕРВИЧН'),(513,'ПЕРВОКЛАССН'),(1344,'ПЕРВОНАЧАЛЬН'),(278,'ПЕРЕВОД'),(1155,'ПЕРЕД'),(1115,'ПЕРЕДАЧ'),(493,'ПЕРЕДОВ'),(1370,'ПЕРЕНОС'),(1410,'ПЕРЕОБОРУДОВА'),(1168,'ПЕРЕРАСХОД'),(878,'ПЕРЕРЕГИСТРАЦ'),(1010,'ПЕРЕУСТУПК'),(152,'ПЕРЕХОД'),(1116,'ПЕРЕЧЕН'),(1162,'ПЕРЕЧИСЛЕН'),(272,'ПЕРИОД'),(404,'ПЕРСОНАЛ'),(1254,'ПЕРСОНАЛЬН'),(662,'ПЕРСОНИФИЦИРОВА'),(217,'ПЕРСПЕКТИВН'),(899,'ПЕЧАТ'),(659,'ПЕЧАТА'),(1458,'ПК'),(1183,'ПЛАН'),(28,'ПЛАСТИКОВ'),(706,'ПЛАТ'),(690,'ПЛАТЕЖ'),(1464,'ПЛАТЕЖЕСПОСОБН'),(79,'ПЛАТЕЖН'),(1095,'ПЛАТЕЛЬЩИК'),(1259,'ПЛАТИН'),(1258,'ПЛАТИНОВ'),(816,'ПЛАТФОРМ'),(386,'ПЛЕХАН'),(385,'ПЛЕХАНОВ'),(324,'ПЛЕШК'),(323,'ПЛЕШКОВ'),(781,'ПЛЮС'),(1042,'ПОВЕДЕН'),(208,'ПОВЫШЕН'),(697,'ПОГАШЕН'),(1348,'ПОДВИЖН'),(1431,'ПОДГОТОВК'),(1324,'ПОДГОТОВЬТ'),(298,'ПОДДЕРЖАН'),(301,'ПОДДЕРЖК'),(699,'ПОДКЛЮЧЕН'),(805,'ПОДКРЕПЛЕН'),(986,'ПОДЛИН'),(664,'ПОДПИС'),(661,'ПОДПИСЫВА'),(648,'ПОДСКАЗК'),(1212,'ПОДТВЕРД'),(996,'ПОДТВЕРЖДЕН'),(447,'ПОДХОД'),(1304,'ПОЖЕЛАН'),(32,'ПОЗВОЛЯ'),(1318,'ПОЗВОН'),(634,'ПОИСК'),(1326,'ПОКАЖ'),(174,'ПОКАЗАТЕЛ'),(172,'ПОКАЗЫВА'),(997,'ПОКРЫТ'),(1301,'ПОКУПА'),(672,'ПОКУПК'),(1302,'ПОЛЕЗН'),(1017,'ПОЛИТИК'),(257,'ПОЛН'),(1002,'ПОЛНОМОЧ'),(1435,'ПОЛНОТ'),(637,'ПОЛНОФУНКЦИОНАЛЬН'),(710,'ПОЛНОЦЕН'),(791,'ПОЛОВИН'),(1429,'ПОЛОЖЕН'),(162,'ПОЛОЖИТЕЛЬН'),(347,'ПОЛУЧ'),(49,'ПОЛУЧА'),(1097,'ПОЛУЧАТЕЛ'),(1148,'ПОЛУЧЕН'),(830,'ПОЛЬЗ'),(1296,'ПОЛЬЗОВА'),(1457,'ПОЛЬЗОВАТЕЛ'),(1365,'ПОМЕЩЕН'),(1322,'ПОМОГУТ'),(575,'ПОМОЧ'),(478,'ПОМОЩ'),(643,'ПОНЯТН'),(1336,'ПОПОЛНЕН'),(900,'ПОРУЧЕН'),(203,'ПОРЯДК'),(303,'ПОСЕТ'),(916,'ПОСЛ'),(783,'ПОСЛЕД'),(450,'ПОСЛЕДН'),(846,'ПОСРЕДСТВ'),(1352,'ПОСТАВОК'),(1408,'ПОСТЕПЕН'),(1102,'ПОСТУП'),(695,'ПОСТУПЛЕН'),(1278,'ПОТ'),(195,'ПОТЕР'),(1275,'ПОТРАТ'),(266,'ПОТРЕБИТЕЛЬСК'),(466,'ПОТРЕБН'),(173,'ПОЧТ'),(625,'ПОЧТОВ'),(1355,'ПОШЛИН'),(879,'ПРАВ'),(320,'ПРАВЛЕН'),(373,'ПРАВОВЕДЕН'),(1368,'ПРАВОУСТАНАВЛИВА'),(800,'ПРАЗДНИЧН'),(239,'ПРАКТИК'),(651,'ПРАКТИЧЕСК'),(745,'ПРЕДВАРИТЕЛЬН'),(36,'ПРЕДЕЛ'),(944,'ПРЕДЕЛЬН'),(482,'ПРЕДЛАГ'),(237,'ПРЕДЛАГА'),(1432,'ПРЕДЛОЖЕН'),(1359,'ПРЕДМЕТ'),(1082,'ПРЕДОПЛАТ'),(1098,'ПРЕДОСТАВ'),(512,'ПРЕДОСТАВЛ'),(106,'ПРЕДОСТАВЛЕН'),(265,'ПРЕДОСТАВЛЯ'),(852,'ПРЕДПРАЗДНИЧН'),(1303,'ПРЕДПРИНИМАТЕЛ'),(445,'ПРЕДПРИНИМАТЕЛЬСТВ'),(130,'ПРЕДПРИЯТ'),(339,'ПРЕДСЕДАТЕЛ'),(85,'ПРЕДСТАВ'),(230,'ПРЕДСТАВЛЕН'),(1013,'ПРЕДСТАВЛЯ'),(552,'ПРЕДУСМОТР'),(984,'ПРЕДЪЯВЛЕН'),(1366,'ПРЕДЪЯВЛЯ'),(813,'ПРЕИМУЩЕСТВ'),(1341,'ПРЕКРАЩА'),(124,'ПРЕМ'),(69,'ПРЕОДОЛ'),(68,'ПРЕОДОЛЕВ'),(164,'ПРИБ'),(1333,'ПРИБЫЛ'),(1036,'ПРИВЛЕЧЕН'),(37,'ПРИВЫЧН'),(670,'ПРИЛОЖЕН'),(1182,'ПРИМЕНЯ'),(501,'ПРИМЕР'),(1056,'ПРИНИМА'),(1412,'ПРИНОС'),(439,'ПРИНЦИП'),(238,'ПРИНЯТ'),(1356,'ПРИОБРЕСТ'),(96,'ПРИОБРЕТЕН'),(299,'ПРИОРИТЕТН'),(198,'ПРИРАВНЕН'),(1406,'ПРИСПОСОБЛЕН'),(19,'ПРИСТУПА'),(1286,'ПРИХОД'),(1101,'ПРИЧИТА'),(455,'ПРОБЛЕМАТИК'),(1401,'ПРОВЕД'),(142,'ПРОВЕДЕН'),(1121,'ПРОВЕРК'),(943,'ПРОВОД'),(1117,'ПРОВОДИМ'),(1299,'ПРОВОЗ'),(73,'ПРОГРАММ'),(673,'ПРОДАЖ'),(71,'ПРОДОЛЖА'),(90,'ПРОДУКТ'),(89,'ПРОДУКТОВ'),(147,'ПРОДУКЦ'),(474,'ПРОЕКТ'),(473,'ПРОЕКТОВ'),(293,'ПРОЗРАЧН'),(1390,'ПРОИЗВЕД'),(1096,'ПРОИЗВЕСТ'),(1081,'ПРОИЗВОД'),(366,'ПРОИЗВОДСТВ'),(1364,'ПРОИЗВОДСТВЕН'),(1050,'ПРОЛОНГАЦ'),(1284,'ПРОМЕДЛЕН'),(1282,'ПРОПАЖ'),(989,'ПРОРАБОТК'),(715,'ПРОСМОТР'),(1106,'ПРОСТ'),(987,'ПРОСЬБ'),(821,'ПРОФЕССИОНАЛИЗМ'),(51,'ПРОФЕССИОНАЛЬН'),(310,'ПРОХОД'),(1178,'ПРОЦЕДУР'),(686,'ПРОЦЕНТ'),(1327,'ПРОЦЕНТН'),(685,'ПРОЦЕНТОВ'),(621,'ПРОЧ'),(407,'ПРОШЕЛ'),(188,'ПРОШЛ'),(1380,'ПРОЩ'),(488,'ПРОЯВЛЯ'),(1449,'ПТ'),(557,'ПУБЛИКАЦ'),(1186,'ПУБЛИЧН'),(1143,'ПУНКТ'),(1448,'ПЯТИДНЕВН'),(851,'ПЯТНИЦ'),(17,'РАБОТ'),(223,'РАБОТА'),(1308,'РАБОЧ'),(574,'РАД'),(925,'РАЗБЛОКИРОВК'),(863,'РАЗВЕТВЛЕН'),(10,'РАЗВИВА'),(21,'РАЗВИТ'),(549,'РАЗДЕЛ'),(548,'РАЗДЕЛОВ'),(547,'РАЗЛИЧН'),(1120,'РАЗМ'),(737,'РАЗМЕН'),(163,'РАЗМЕР'),(1332,'РАЗМЕСТ'),(1235,'РАЗМЕЩЕН'),(1305,'РАЗН'),(1228,'РАЗНООБРАЗН'),(1001,'РАМБУРСИР'),(1007,'РАМБУРСН'),(1011,'РАМК'),(1346,'РАН'),(845,'РАСПОРЯЖЕН'),(824,'РАСПРОСТРАНЕН'),(1311,'РАССМАТРИВА'),(1306,'РАССМОТРЕН'),(1335,'РАСТОРЖЕН'),(1407,'РАСТУЩ'),(1287,'РАСХОД'),(797,'РАСХОДН'),(825,'РАСЧЕТ'),(828,'РАСЧЕТН'),(823,'РАСЧЕТНО-КАССОВ'),(837,'РАСЧЕТОВ'),(1398,'РАСШИР'),(1019,'РАСШИРЕН'),(72,'РЕАЛИЗАЦ'),(515,'РЕАЛИЗУ'),(641,'РЕАЛЬН'),(235,'РЕГИОН'),(477,'РЕГИОНАЛЬН'),(926,'РЕГИСТРАЦ'),(594,'РЕГИСТРАЦИОН'),(658,'РЕДАКТИРОВА'),(1376,'РЕДАКЦ'),(937,'РЕЕСТРОДЕРЖАТЕЛ'),(282,'РЕЖИМ'),(193,'РЕЗЕРВ'),(681,'РЕЗЕРВИРОВА'),(992,'РЕЗЕРВН'),(833,'РЕЗИДЕНТ'),(832,'РЕЗИДЕНТОВ'),(56,'РЕЗУЛЬТАТ'),(582,'РЕКВИЗИТ'),(1442,'РЕКОМЕНДАЦ'),(526,'РЕЛИГИОЗН'),(1397,'РЕОРГАНИЗАЦ'),(1025,'РЕПУТАЦ'),(410,'РЕСУРС'),(484,'РЕШЕН'),(1041,'РИСК'),(1040,'РИСКОВ'),(491,'РОЗНИЧН'),(396,'РОМА'),(134,'РОСС'),(125,'РОССИЙСК'),(171,'РОСТ'),(754,'РУБ'),(169,'РУБЛ'),(316,'РУКОВОДСТВ'),(290,'РУКОВОДСТВУ'),(63,'РФ'),(53,'РЫНК'),(679,'РЫНОЧН'),(87,'РЯД'),(544,'САЙТ'),(417,'САНКТ-ПЕТЕРБУРГСК'),(742,'СБОР'),(1285,'СВЕДЕН'),(371,'СВЕРДЛОВСК'),(296,'СВОБОД'),(682,'СВОБОДН'),(774,'СВЫШ'),(1374,'СВЯЗ'),(827,'СВЯЗА'),(207,'СВЯЗЫВА'),(793,'СДАЮТ'),(117,'СДЕЛА'),(991,'СДЕЛК'),(1225,'СДЕЛОК'),(1247,'СЕГОДН'),(224,'СЕГОДНЯШН'),(275,'СЕЙФОВ'),(1194,'СЕЙЧАС'),(1270,'СЕМ'),(369,'СЕМЕНОВИЧ'),(35,'СЕРВИС'),(23,'СЕТ'),(945,'СЖАТ'),(94,'СИСТ'),(80,'СИСТЕМ'),(454,'СИТУАЦ'),(1387,'СКАЧА'),(1363,'СКЛАДСК'),(1274,'СКОЛЬК'),(822,'СЛЕД'),(435,'СЛЕДУ'),(521,'СЛО'),(940,'СЛОЖН'),(77,'СЛУЖА'),(728,'СЛУЖБ'),(988,'СЛУЧА'),(335,'СМИРН'),(334,'СМИРНОВ'),(1400,'СМОГУТ'),(1399,'СМОЖЕТ'),(646,'СНАБЖ'),(949,'СНГ'),(669,'СО'),(1014,'СОБ'),(485,'СОБЛЮД'),(1281,'СОБЛЮДА'),(183,'СОБСТВЕН'),(1165,'СОВЕРША'),(856,'СОВЕРШЕН'),(214,'СОВЕРШЕНСТВОВАН'),(378,'СОВЕТ'),(284,'СОВРЕМЕН'),(1454,'СОГЛАСН'),(732,'СОГЛАСОВА'),(808,'СОГЛАШЕН'),(302,'СОДЕЙСТВ'),(554,'СОДЕРЖИМ'),(814,'СОЗДА'),(587,'СОКРАЩЕН'),(1023,'СОЛИДН'),(1378,'СООБЩ'),(1373,'СООБЩА'),(1173,'СООБЩЕН'),(444,'СООБЩЕСТВ'),(857,'СООТВЕТСТВ'),(734,'СОПРОВОЖДЕН'),(1349,'СОСТА'),(1114,'СОСТАВЛЕН'),(165,'СОСТАВЛЯ'),(201,'СОСТОЯН'),(1242,'СОТРУДНИК'),(1241,'СОТРУДНИКОВ'),(505,'СОТРУДНИЧА'),(295,'СОТРУДНИЧЕСТВ'),(1224,'СОХРАНЕН'),(1453,'СОЦ'),(506,'СОЦИАЛЬН'),(472,'СОЦИАЛЬНО-ЭКОНОМИЧЕСК'),(441,'СОЧЕТА'),(258,'СПЕКТР'),(405,'СПЕЦИАЛИЗАЦ'),(739,'СПЕЦИАЛИЗИРОВА'),(566,'СПЕЦИАЛИСТ'),(332,'СПЕЦИАЛЬН'),(917,'СПИСАН'),(375,'СПИСОК'),(525,'СПОРТИВН'),(894,'СПОСОБ'),(1230,'СПОСОБН'),(1027,'СПОСОБСТВ'),(292,'СПРАВЕДЛИВ'),(1215,'СПРАВК'),(132,'СРЕДН'),(1035,'СРЕДНЕСРОЧН'),(683,'СРЕДСТВ'),(842,'СРОК'),(273,'СРОЧН'),(196,'ССУД'),(197,'ССУДН'),(65,'СТАБИЛЬН'),(748,'СТАВК'),(1210,'СТАЖ'),(119,'СТАЛ'),(438,'СТАНДАРТ'),(1213,'СТАНДАРТН'),(470,'СТАНДАРТОВ'),(368,'СТАНИСЛА'),(355,'СТАНИСЛАВОВН'),(148,'СТАНОВ'),(1411,'СТАНУТ'),(1272,'СТАРШ'),(1526,'СТАТ'),(553,'СТАТИЧЕСК'),(348,'СТЕПЕН'),(753,'СТОИМОСТ'),(1439,'СТОП-ФАКТОР'),(1438,'СТОП-ФАКТОРОВ'),(809,'СТОРОН'),(608,'СТР'),(236,'СТРАН'),(555,'СТРАНИЦ'),(392,'СТРАТЕГИЧЕСК'),(500,'СТРЕМ'),(463,'СТРУКТУР'),(877,'СТРУКТУРИРОВА'),(1433,'СТРУКТУРИРОВАН'),(977,'СУДЕБН'),(796,'СУММ'),(1383,'СУЩЕСТВЕН'),(453,'СФЕР'),(941,'СХЕМ'),(269,'СЧЕТ'),(688,'СЧЕТОВ'),(1126,'США'),(514,'ТАКЖ'),(968,'ТАМОЖЕН'),(747,'ТАРИФ'),(782,'ТАРИФН'),(932,'ТАРИФОВ'),(383,'ТАТЬЯ'),(311,'ТЕАТРАЛЬН'),(678,'ТЕКУЩ'),(285,'ТЕЛЕКОММУНИКАЦИОН'),(569,'ТЕЛЕФОН'),(972,'ТЕНДЕРН'),(1385,'ТЕПЕР'),(1276,'ТЕР'),(1150,'ТЕРРИТОР'),(1277,'ТЕРЯ'),(1245,'ТЕХ'),(708,'ТЕХНИЧЕСК'),(213,'ТЕХНОЛОГ'),(1396,'ТЕХПОДДЕРЖК'),(83,'ТЕЧЕН'),(1455,'ТК'),(1103,'ТОВАР'),(1293,'ТОВАРОВ'),(700,'ТОМ'),(1419,'ТОП-100'),(974,'ТОРГ'),(262,'ТОРГОВ'),(938,'ТОРГОВО-ЭКОНОМИЧЕСК'),(780,'ТОЧЕК'),(654,'ТОЧК'),(443,'ТРАДИЦ'),(1149,'ТРАНСГРАНИЧН'),(731,'ТРАНСПОРТ'),(1009,'ТРАНСФЕРАЦ'),(645,'ТРАТ'),(1110,'ТРЕБОВА'),(709,'ТРЕБОВАН'),(1043,'ТРЕБОВАТЕЛЬН'),(1269,'ТРЕХ'),(1209,'ТРУДОВ'),(1461,'ТРУДОУСТРОЙСТВ'),(101,'ТУРИЗМ'),(481,'ТЩАТЕЛЬН'),(168,'ТЫС'),(182,'ТЫСЯЧ'),(1372,'УВАЖА'),(294,'УВАЖЕН'),(1020,'УВЕЛИЧЕН'),(177,'УВЕЛИЧИВА'),(1033,'УДЕЛЯ'),(638,'УДОБН'),(1292,'УДОБСТВ'),(1231,'УДОВЛЕТВОР'),(1351,'УДОРОЖАН'),(736,'УКАЗА'),(605,'УЛ'),(255,'УНИВЕРСАЛЬН'),(341,'УНИВЕРСИТЕТ'),(1088,'УПАКОВК'),(698,'УПЛАТ'),(667,'УПОЛНОМОЧЕН'),(1091,'УПОТРЕБЛЕН'),(264,'УПРАВЛЕН'),(1310,'УПРАВЛЕНЧЕСК'),(640,'УПРАВЛЯ'),(1384,'УПРОСТ'),(1092,'УРОВЕН'),(469,'УРОВН'),(839,'УСКОРЕН'),(778,'УСЛОВ'),(1093,'УСЛОВН'),(47,'УСЛУГ'),(67,'УСПЕШН'),(175,'УСТАВН'),(784,'УСТАНАВЛИВА'),(1382,'УСТАНОВК'),(847,'УСТАНОВЛ'),(958,'УСТАНОВЛЕН'),(815,'УСТОЙЧИВ'),(858,'УТВЕРЖДЕН'),(1166,'УТРАТ'),(788,'УТРЕН'),(973,'УЧАСТ'),(52,'УЧАСТНИК'),(222,'УЧАСТНИКОВ'),(420,'УЧЕТ'),(522,'УЧРЕЖДЕН'),(577,'ФАКС'),(855,'ФАКТ'),(45,'ФАКТИЧЕСК'),(202,'ФЕВРАЛ'),(1057,'ФЕДЕРАЛЬН'),(836,'ФЕДЕРАЦ'),(403,'ФЕДОРОВИЧ'),(312,'ФЕСТИВА'),(92,'ФИЗИЧЕСК'),(752,'ФИКСИРОВА'),(43,'ФИЛИА'),(42,'ФИЛИАЛ'),(41,'ФИЛИАЛОВ'),(22,'ФИЛИАЛЬН'),(456,'ФИЛОСОФ'),(333,'ФИНАНС'),(263,'ФИНАНСИРОВАН'),(34,'ФИНАНСОВ'),(1444,'ФИНАНСОВО-ЭКОНОМИЧЕСК'),(865,'ФОНДОВ'),(215,'ФОРМ'),(231,'ФОРМИР'),(192,'ФОРМИРОВАН'),(1436,'ФОРМИРУЕМ'),(560,'ФОТОГАЛЕРЕ'),(541,'ФУНКЦ'),(1404,'ФУНКЦИОНИРОВАН'),(1283,'ХИЩЕН'),(419,'ХОЗЯЙСТВ'),(818,'ХОЛДИНГ'),(817,'ХОЛДИНГОВ'),(401,'ХРАМ'),(400,'ХРАМОВ'),(799,'ХРАНЕН'),(62,'ЦБ'),(448,'ЦЕЛ'),(54,'ЦЕН'),(289,'ЦЕННОСТ'),(807,'ЧАС'),(189,'ЧАСТ'),(1337,'ЧАСТИЧН'),(247,'ЧАСТН'),(1226,'ЧАСТНОСТ'),(113,'ЧЕЛОВЕК'),(409,'ЧЕЛОВЕЧЕСК'),(649,'ЧЕРЕЗ'),(496,'ЧЕСТН'),(128,'ЧИСЛ'),(377,'ЧЛЕН'),(376,'ЧЛЕНОВ'),(656,'ШАР'),(1206,'ШЕСТ'),(464,'ШИРОК'),(427,'ШКОЛ'),(1132,'ШТРАФ'),(516,'ЭКОЛОГИЧЕСК'),(365,'ЭКОНОМИК'),(328,'ЭКОНОМИЧЕСК'),(538,'ЭКРА'),(1255,'ЭКСКЛЮЗИВН'),(1325,'ЭКСПЕРТ'),(893,'ЭКСПЕРТИЗ'),(1427,'ЭКСПЕРТН'),(999,'ЭКСПОРТН'),(570,'ЭЛЕКТРОН'),(703,'ЭЛЕКТРОННО-ЦИФРОВ'),(663,'ЭЛЕКТРОННОЙ-ЦИФРОВ'),(1251,'ЭЛИТН'),(885,'ЭМИТЕНТ'),(440,'ЭТИК'),(502,'ЭФФЕКТИВН'),(325,'ЮР'),(357,'ЮРИДИЧЕСК'),(819,'ЯВЛ'),(254,'ЯВЛЯ'),(589,'ЯЗЫК'),(6,'ЯНВАР'),(276,'ЯЧЕЕК');
/*!40000 ALTER TABLE `b_search_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_suggest`
--

DROP TABLE IF EXISTS `b_search_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_suggest`
--

LOCK TABLES `b_search_suggest` WRITE;
/*!40000 ALTER TABLE `b_search_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_tags`
--

DROP TABLE IF EXISTS `b_search_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_tags`
--

LOCK TABLES `b_search_tags` WRITE;
/*!40000 ALTER TABLE `b_search_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_user_right`
--

DROP TABLE IF EXISTS `b_search_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_user_right`
--

LOCK TABLES `b_search_user_right` WRITE;
/*!40000 ALTER TABLE `b_search_user_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_autolog`
--

DROP TABLE IF EXISTS `b_seo_adv_autolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT 0,
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_autolog`
--

LOCK TABLES `b_seo_adv_autolog` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_autolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_autolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_banner`
--

DROP TABLE IF EXISTS `b_seo_adv_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_banner`
--

LOCK TABLES `b_seo_adv_banner` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_campaign`
--

DROP TABLE IF EXISTS `b_seo_adv_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_campaign`
--

LOCK TABLES `b_seo_adv_campaign` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_group`
--

DROP TABLE IF EXISTS `b_seo_adv_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_group`
--

LOCK TABLES `b_seo_adv_group` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_link`
--

DROP TABLE IF EXISTS `b_seo_adv_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_link`
--

LOCK TABLES `b_seo_adv_link` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_log`
--

DROP TABLE IF EXISTS `b_seo_adv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_log`
--

LOCK TABLES `b_seo_adv_log` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_order`
--

DROP TABLE IF EXISTS `b_seo_adv_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT 0,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_order`
--

LOCK TABLES `b_seo_adv_order` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_region`
--

DROP TABLE IF EXISTS `b_seo_adv_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_region`
--

LOCK TABLES `b_seo_adv_region` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_keywords`
--

DROP TABLE IF EXISTS `b_seo_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_keywords`
--

LOCK TABLES `b_seo_keywords` WRITE;
/*!40000 ALTER TABLE `b_seo_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_search_engine`
--

DROP TABLE IF EXISTS `b_seo_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT 100,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_search_engine`
--

LOCK TABLES `b_seo_search_engine` WRITE;
/*!40000 ALTER TABLE `b_seo_search_engine` DISABLE KEYS */;
INSERT INTO `b_seo_search_engine` VALUES (1,'google','Y',200,'Google','868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com','EItMlJpZLC2WRPKB6QsA5bV9','urn:ietf:wg:oauth:2.0:oob',NULL),(2,'yandex','Y',300,'Yandex','f848c7bfc1d34a94ba6d05439f81bbd7','da0e73b2d9cc4e809f3170e49cb9df01','https://oauth.yandex.ru/verification_code',NULL),(3,'yandex_direct','Y',400,'Yandex.Direct','','','https://oauth.yandex.ru/verification_code',NULL);
/*!40000 ALTER TABLE `b_seo_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_log`
--

DROP TABLE IF EXISTS `b_seo_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_log`
--

LOCK TABLES `b_seo_service_log` WRITE;
/*!40000 ALTER TABLE `b_seo_service_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_rtg_queue`
--

DROP TABLE IF EXISTS `b_seo_service_rtg_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_rtg_queue`
--

LOCK TABLES `b_seo_service_rtg_queue` WRITE;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_subscription`
--

DROP TABLE IF EXISTS `b_seo_service_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_subscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_subscription`
--

LOCK TABLES `b_seo_service_subscription` WRITE;
/*!40000 ALTER TABLE `b_seo_service_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_webhook`
--

DROP TABLE IF EXISTS `b_seo_service_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_webhook`
--

LOCK TABLES `b_seo_service_webhook` WRITE;
/*!40000 ALTER TABLE `b_seo_service_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_webhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap`
--

DROP TABLE IF EXISTS `b_seo_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap`
--

LOCK TABLES `b_seo_sitemap` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_entity`
--

DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_entity`
--

LOCK TABLES `b_seo_sitemap_entity` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_iblock`
--

DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_iblock`
--

LOCK TABLES `b_seo_sitemap_iblock` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_runtime`
--

DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_runtime`
--

LOCK TABLES `b_seo_sitemap_runtime` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_yandex_direct_stat`
--

DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT 0,
  `SUM_SEARCH` float DEFAULT 0,
  `SUM_CONTEXT` float DEFAULT 0,
  `CLICKS` int(7) DEFAULT 0,
  `CLICKS_SEARCH` int(7) DEFAULT 0,
  `CLICKS_CONTEXT` int(7) DEFAULT 0,
  `SHOWS` int(7) DEFAULT 0,
  `SHOWS_SEARCH` int(7) DEFAULT 0,
  `SHOWS_CONTEXT` int(7) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_yandex_direct_stat`
--

LOCK TABLES `b_seo_yandex_direct_stat` WRITE;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_short_uri`
--

DROP TABLE IF EXISTS `b_short_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT 301,
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_short_uri`
--

LOCK TABLES `b_short_uri` WRITE;
/*!40000 ALTER TABLE `b_short_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_short_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_site_template`
--

DROP TABLE IF EXISTS `b_site_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_site_template_site` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_site_template`
--

LOCK TABLES `b_site_template` WRITE;
/*!40000 ALTER TABLE `b_site_template` DISABLE KEYS */;
INSERT INTO `b_site_template` VALUES (2,'s1','',150,'blog');
/*!40000 ALTER TABLE `b_site_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sm_version_history`
--

DROP TABLE IF EXISTS `b_sm_version_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sm_version_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sm_version_history`
--

LOCK TABLES `b_sm_version_history` WRITE;
/*!40000 ALTER TABLE `b_sm_version_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sm_version_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile`
--

DROP TABLE IF EXISTS `b_smile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT 0,
  `SORT` int(10) NOT NULL DEFAULT 150,
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT 0,
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile`
--

LOCK TABLES `b_smile` WRITE;
/*!40000 ALTER TABLE `b_smile` DISABLE KEYS */;
INSERT INTO `b_smile` VALUES (1,'S',2,100,':) :-)','Y','N','bx_smile_smile.png','UHD',20,20),(2,'S',2,105,';) ;-)','Y','N','bx_smile_wink.png','UHD',20,20),(3,'S',2,110,':D :-D','Y','N','bx_smile_biggrin.png','UHD',20,20),(4,'S',2,115,'8-)','Y','N','bx_smile_cool.png','UHD',20,20),(5,'S',2,120,':facepalm:','Y','N','bx_smile_facepalm.png','UHD',20,20),(6,'S',2,125,':{} :-{}','Y','N','bx_smile_kiss.png','UHD',20,20),(7,'S',2,130,':( :-(','Y','N','bx_smile_sad.png','UHD',20,20),(8,'S',2,135,':| :-|','Y','N','bx_smile_neutral.png','UHD',20,20),(9,'S',2,140,':oops:','Y','N','bx_smile_redface.png','UHD',20,20),(10,'S',2,145,':cry: :~(','Y','N','bx_smile_cry.png','UHD',20,20),(11,'S',2,150,':evil: >:-<','Y','N','bx_smile_evil.png','UHD',20,20),(12,'S',2,155,':o :-o :shock:','Y','N','bx_smile_eek.png','UHD',20,20),(13,'S',2,160,':/ :-/','Y','N','bx_smile_confuse.png','UHD',20,20),(14,'S',2,165,':idea:','Y','N','bx_smile_idea.png','UHD',20,20),(15,'S',2,170,':?:','Y','N','bx_smile_question.png','UHD',20,20),(16,'S',2,175,':!:','Y','N','bx_smile_exclaim.png','UHD',20,20),(17,'S',2,180,':like:','Y','N','bx_smile_like.png','UHD',20,20),(18,'I',2,175,'ICON_NOTE','Y','N','bx_icon_1.gif','SD',15,15),(19,'I',2,180,'ICON_DIRRECTION','Y','N','bx_icon_2.gif','SD',15,15),(20,'I',2,185,'ICON_IDEA','Y','N','bx_icon_3.gif','SD',15,15),(21,'I',2,190,'ICON_ATTANSION','Y','N','bx_icon_4.gif','SD',15,15),(22,'I',2,195,'ICON_QUESTION','Y','N','bx_icon_5.gif','SD',15,15),(23,'I',2,200,'ICON_BAD','Y','N','bx_icon_6.gif','SD',15,15),(24,'I',2,205,'ICON_GOOD','Y','N','bx_icon_7.gif','SD',15,15);
/*!40000 ALTER TABLE `b_smile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_lang`
--

DROP TABLE IF EXISTS `b_smile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_lang`
--

LOCK TABLES `b_smile_lang` WRITE;
/*!40000 ALTER TABLE `b_smile_lang` DISABLE KEYS */;
INSERT INTO `b_smile_lang` VALUES (1,'P',1,'ru','Стандартная галерея'),(2,'P',1,'en','Standard gallery'),(3,'G',2,'ru','Основной набор'),(4,'G',2,'en','Default pack'),(5,'S',1,'ru','С улыбкой'),(6,'S',1,'en','Smile'),(7,'S',2,'ru','Шутливо'),(8,'S',2,'en','Wink'),(9,'S',3,'ru','Широкая улыбка'),(10,'S',3,'en','Big grin'),(11,'S',4,'ru','Здорово'),(12,'S',4,'en','Cool'),(13,'S',5,'ru','Разочарование'),(14,'S',5,'en','Facepalm'),(15,'S',6,'ru','Поцелуй'),(16,'S',6,'en','Kiss'),(17,'S',7,'ru','Печально'),(18,'S',7,'en','Sad'),(19,'S',8,'ru','Скептически'),(20,'S',8,'en','Skeptic'),(21,'S',9,'ru','Смущенный'),(22,'S',9,'en','Embarrassed'),(23,'S',10,'ru','Очень грустно'),(24,'S',10,'en','Crying'),(25,'S',11,'ru','Со злостью'),(26,'S',11,'en','Angry'),(27,'S',12,'ru','Удивленно'),(28,'S',12,'en','Surprised'),(29,'S',13,'ru','Смущенно'),(30,'S',13,'en','Confused'),(31,'S',14,'ru','Идея'),(32,'S',14,'en','Idea'),(33,'S',15,'ru','Вопрос'),(34,'S',15,'en','Question'),(35,'S',16,'ru','Восклицание'),(36,'S',16,'en','Exclamation'),(37,'S',17,'ru','Нравится'),(38,'S',17,'en','Like');
/*!40000 ALTER TABLE `b_smile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_set`
--

DROP TABLE IF EXISTS `b_smile_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT 0,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT 150,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_set`
--

LOCK TABLES `b_smile_set` WRITE;
/*!40000 ALTER TABLE `b_smile_set` DISABLE KEYS */;
INSERT INTO `b_smile_set` VALUES (1,'P',0,'bitrix',150),(2,'G',1,'bitrix_main',150);
/*!40000 ALTER TABLE `b_smile_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template`
--

DROP TABLE IF EXISTS `b_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_sms_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template`
--

LOCK TABLES `b_sms_template` WRITE;
/*!40000 ALTER TABLE `b_sms_template` DISABLE KEYS */;
INSERT INTO `b_sms_template` VALUES (1,'SMS_USER_CONFIRM_NUMBER','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код подтверждения #CODE#',NULL),(2,'SMS_USER_RESTORE_PASSWORD','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код для восстановления пароля #CODE#',NULL);
/*!40000 ALTER TABLE `b_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template_site`
--

DROP TABLE IF EXISTS `b_sms_template_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template_site`
--

LOCK TABLES `b_sms_template_site` WRITE;
/*!40000 ALTER TABLE `b_sms_template_site` DISABLE KEYS */;
INSERT INTO `b_sms_template_site` VALUES (1,'s1'),(2,'s1');
/*!40000 ALTER TABLE `b_sms_template_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_ap`
--

DROP TABLE IF EXISTS `b_socialservices_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_ap`
--

LOCK TABLES `b_socialservices_ap` WRITE;
/*!40000 ALTER TABLE `b_socialservices_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact`
--

DROP TABLE IF EXISTS `b_socialservices_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact`
--

LOCK TABLES `b_socialservices_contact` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact_connect`
--

DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact_connect`
--

LOCK TABLES `b_socialservices_contact_connect` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_message`
--

DROP TABLE IF EXISTS `b_socialservices_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_message`
--

LOCK TABLES `b_socialservices_message` WRITE;
/*!40000 ALTER TABLE `b_socialservices_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user`
--

DROP TABLE IF EXISTS `b_socialservices_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user`
--

LOCK TABLES `b_socialservices_user` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user_link`
--

DROP TABLE IF EXISTS `b_socialservices_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  KEY `ix_b_socialservices_user_link_7` (`LINK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user_link`
--

LOCK TABLES `b_socialservices_user_link` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker`
--

DROP TABLE IF EXISTS `b_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker`
--

LOCK TABLES `b_sticker` WRITE;
/*!40000 ALTER TABLE `b_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker_group_task`
--

DROP TABLE IF EXISTS `b_sticker_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker_group_task`
--

LOCK TABLES `b_sticker_group_task` WRITE;
/*!40000 ALTER TABLE `b_sticker_group_task` DISABLE KEYS */;
INSERT INTO `b_sticker_group_task` VALUES (5,29);
/*!40000 ALTER TABLE `b_sticker_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task`
--

DROP TABLE IF EXISTS `b_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task`
--

LOCK TABLES `b_task` WRITE;
/*!40000 ALTER TABLE `b_task` DISABLE KEYS */;
INSERT INTO `b_task` VALUES (1,'main_denied','D','main','Y',NULL,'module'),(2,'main_change_profile','P','main','Y',NULL,'module'),(3,'main_view_all_settings','R','main','Y',NULL,'module'),(4,'main_view_all_settings_change_profile','T','main','Y',NULL,'module'),(5,'main_edit_subordinate_users','V','main','Y',NULL,'module'),(6,'main_full_access','W','main','Y',NULL,'module'),(7,'fm_folder_access_denied','D','main','Y',NULL,'file'),(8,'fm_folder_access_read','R','main','Y',NULL,'file'),(9,'fm_folder_access_write','W','main','Y',NULL,'file'),(10,'fm_folder_access_full','X','main','Y',NULL,'file'),(11,'fm_folder_access_workflow','U','main','Y',NULL,'file'),(12,'bitrixcloud_deny','D','bitrixcloud','Y',NULL,'module'),(13,'bitrixcloud_control','W','bitrixcloud','Y',NULL,'module'),(14,'clouds_denied','D','clouds','Y',NULL,'module'),(15,'clouds_browse','F','clouds','Y',NULL,'module'),(16,'clouds_upload','U','clouds','Y',NULL,'module'),(17,'clouds_full_access','W','clouds','Y',NULL,'module'),(18,'fileman_denied','D','fileman','Y','','module'),(19,'fileman_allowed_folders','F','fileman','Y','','module'),(20,'fileman_full_access','W','fileman','Y','','module'),(21,'medialib_denied','D','fileman','Y','','medialib'),(22,'medialib_view','F','fileman','Y','','medialib'),(23,'medialib_only_new','R','fileman','Y','','medialib'),(24,'medialib_edit_items','V','fileman','Y','','medialib'),(25,'medialib_editor','W','fileman','Y','','medialib'),(26,'medialib_full','X','fileman','Y','','medialib'),(27,'stickers_denied','D','fileman','Y','','stickers'),(28,'stickers_read','R','fileman','Y','','stickers'),(29,'stickers_edit','W','fileman','Y','','stickers'),(30,'hblock_denied','D','highloadblock','Y',NULL,'module'),(31,'hblock_read','R','highloadblock','Y',NULL,'module'),(32,'hblock_write','W','highloadblock','Y',NULL,'module'),(33,'iblock_deny','D','iblock','Y',NULL,'iblock'),(34,'iblock_read','R','iblock','Y',NULL,'iblock'),(35,'iblock_element_add','E','iblock','Y',NULL,'iblock'),(36,'iblock_admin_read','S','iblock','Y',NULL,'iblock'),(37,'iblock_admin_add','T','iblock','Y',NULL,'iblock'),(38,'iblock_limited_edit','U','iblock','Y',NULL,'iblock'),(39,'iblock_full_edit','W','iblock','Y',NULL,'iblock'),(40,'iblock_full','X','iblock','Y',NULL,'iblock'),(41,'seo_denied','D','seo','Y','','module'),(42,'seo_edit','F','seo','Y','','module'),(43,'seo_full_access','W','seo','Y','','module'),(44,'Контент-редакторы','Q','main','N','Разрешено изменять информацию в своем профайле. Управление кешем','module');
/*!40000 ALTER TABLE `b_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task_operation`
--

DROP TABLE IF EXISTS `b_task_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task_operation`
--

LOCK TABLES `b_task_operation` WRITE;
/*!40000 ALTER TABLE `b_task_operation` DISABLE KEYS */;
INSERT INTO `b_task_operation` VALUES (2,2),(2,3),(3,2),(3,4),(3,5),(3,6),(3,7),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,9),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(8,19),(8,20),(8,21),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(9,34),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),(10,31),(10,32),(10,33),(10,34),(10,35),(11,19),(11,20),(11,21),(11,24),(11,28),(13,36),(13,37),(13,38),(15,39),(16,39),(16,40),(17,39),(17,40),(17,41),(19,44),(19,45),(19,46),(19,47),(19,48),(19,49),(19,50),(19,52),(19,53),(20,42),(20,43),(20,44),(20,45),(20,46),(20,47),(20,48),(20,49),(20,50),(20,51),(20,52),(20,53),(20,54),(22,55),(23,55),(23,56),(23,60),(24,55),(24,60),(24,61),(24,62),(25,55),(25,56),(25,57),(25,58),(25,60),(25,61),(25,62),(26,55),(26,56),(26,57),(26,58),(26,59),(26,60),(26,61),(26,62),(28,63),(29,63),(29,64),(29,65),(29,66),(31,67),(32,68),(32,69),(34,70),(34,71),(35,72),(36,70),(36,71),(36,73),(37,70),(37,71),(37,72),(37,73),(38,70),(38,71),(38,72),(38,73),(38,74),(38,75),(38,76),(38,77),(39,70),(39,71),(39,72),(39,73),(39,74),(39,75),(39,76),(39,77),(39,78),(39,79),(39,80),(39,81),(40,70),(40,71),(40,72),(40,73),(40,74),(40,75),(40,76),(40,77),(40,78),(40,79),(40,80),(40,81),(40,82),(40,83),(40,84),(40,85),(40,86),(40,87),(42,89),(43,88),(43,89),(44,2),(44,3),(44,14);
/*!40000 ALTER TABLE `b_task_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_undo`
--

DROP TABLE IF EXISTS `b_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_undo`
--

LOCK TABLES `b_undo` WRITE;
/*!40000 ALTER TABLE `b_undo` DISABLE KEYS */;
INSERT INTO `b_undo` VALUES ('171d2a819e8ac579a68bc72169755a353','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:47:\"C:/xampp/htdocs/local/templates/blog/footer.php\";s:7:\"content\";s:12479:\"<?if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();?>\r\n\r\n</div>\r\n<div class=\"sidebar\">\r\n    <!--<div class=\"sidebar_top\">\r\n        <h3>Blog Categories</h3>\r\n        <div class=\"sidebar_top_list\">\r\n            <ul>\r\n                <li><a href=\"#\"><span class=\"category-name\">Design</span> <span class=\"count\">(6)</span><div class=\"clear\"></div></a></li>\r\n                <li><a href=\"#\"><span class=\"category-name\">Music</span> <span class=\"count\">(22)</span><div class=\"clear\"></div></a></li>\r\n                <li><a href=\"#\"><span class=\"category-name\">Technology</span> <span class=\"count\">(44)</span><div class=\"clear\"></div></a></li>\r\n                <li><a href=\"#\"><span class=\"category-name\">Nature</span> <span class=\"count\">(32)</span><div class=\"clear\"></div></a></li>\r\n                <li><a href=\"#\"><span class=\"category-name\">Fashion</span> <span class=\"count\">(15)</span><div class=\"clear\"></div></a></li>\r\n            </ul>\r\n        </div>\r\n    </div>-->\r\n    <?$APPLICATION->IncludeComponent(\r\n        \"bitrix:catalog.section.list\",\r\n        \"\",\r\n        Array(\r\n            \"ADD_SECTIONS_CHAIN\" => \"Y\",\r\n            \"CACHE_FILTER\" => \"N\",\r\n            \"CACHE_GROUPS\" => \"Y\",\r\n            \"CACHE_TIME\" => \"36000000\",\r\n            \"CACHE_TYPE\" => \"A\",\r\n            \"COUNT_ELEMENTS\" => \"Y\",\r\n            \"FILTER_NAME\" => \"sectionsFilter\",\r\n            \"IBLOCK_ID\" => \"4\",\r\n            \"IBLOCK_TYPE\" => \"blog\",\r\n            \"SECTION_CODE\" => \"\",\r\n            \"SECTION_FIELDS\" => array(\"\",\"\"),\r\n            \"SECTION_ID\" => $_REQUEST[\"SECTION_ID\"],\r\n            \"SECTION_URL\" => \"\",\r\n            \"SECTION_USER_FIELDS\" => array(\"\",\"\"),\r\n            \"SHOW_PARENT_NAME\" => \"Y\",\r\n            \"TOP_DEPTH\" => \"2\",\r\n            \"VIEW_MODE\" => \"TEXT\"\r\n        )\r\n    );?>\r\n    <div class=\"popular-post\">\r\n        <h3>popular-posts</h3>\r\n        <div class=\"post-grid\">\r\n            <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img1.jpg\" title=\"post1\" alt=\"\"/>\r\n            <p>Lorem ipsum dolor sit amet consectetur dolor more normal of letters,<a href=\"#\">[...]</a></p>\r\n            <div class=\"clear\"> </div>\r\n        </div>\r\n        <div class=\"post-grid\">\r\n            <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img2.jpg\" title=\"post1\" alt=\"\"/>\r\n            <p>Lorem ipsum dolor sit dolor more normal consectetur of letters,<a href=\"#\">[...]</a></p>\r\n            <div class=\"clear\"> </div>\r\n        </div>\r\n        <div class=\"post-grid\">\r\n            <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img3.jpg\" title=\"post1\" alt=\"\"/>\r\n            <p>Lorem ipsum dolor sit dolor more normal consectetur of letters sit amet,<a href=\"#\">[...]</a></p>\r\n            <div class=\"clear\"> </div>\r\n        </div>\r\n        <div class=\"view-all\"><a href=\"#\">\r\n            </a><a href=\"#\">ViewAll</a>\r\n        </div>\r\n        <div class=\"clear\"></div>\r\n    </div>\r\n    <div class=\"latest_comments\">\r\n        <h3>Latest Comments</h3>\r\n        <div class=\"comments\">\r\n            <p><span>admin</span> commented on</p>\r\n            <h4><a href=\"#\">Lorem ipsum dolor sit dolor more normal!</a></h4>\r\n            <p>June 25th, 2013</p>\r\n        </div>\r\n        <div class=\"comments\">\r\n            <p><span>admin</span> commented on</p>\r\n            <h4><a href=\"#\">Lorem ipsum dolor sit dolor more normal!</a></h4>\r\n            <p>June 20th, 2013</p>\r\n        </div>\r\n        <div class=\"comments\">\r\n            <p><span>admin</span> commented on</p>\r\n            <h4><a href=\"#\">Lorem ipsum dolor sit dolor more normal!</a></h4>\r\n            <p>June 15th, 2013</p>\r\n        </div>\r\n    </div>\r\n    <div class=\"latest_photos\">\r\n        <h3>Latest Photos</h3>\r\n        <link rel=\"stylesheet\" href=\"<?=DEFAULT_TEMPLATE_PATH?>/css/swipebox.css\">\r\n        <script src=\"<?=DEFAULT_TEMPLATE_PATH?>/js/jquery.swipebox.min.js\"></script>\r\n        <script type=\"text/javascript\">\r\n            jQuery(function($) {\r\n                $(\".swipebox\").swipebox();\r\n            });\r\n        </script>\r\n        <div class=\"gallery-bottom\">\r\n            <div class=\"section group\">\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img1.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img1.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img2.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img2.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img3.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img3.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img1.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img1.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n            </div>\r\n            <div class=\"section group\">\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img2.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img2.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img3.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img3.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img1.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img1.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img2.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img2.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n            </div>\r\n            <div class=\"section group\">\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img3.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img3.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img1.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img1.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img2.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img2.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n                <div class=\"grid_1_of_4 images_1_of_4\">\r\n                    <a href=\"images/latest-post-img3.jpg\" class=\"b-link-stripe b-animate-go  swipebox\"  title=\"Image Title\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/latest-post-img3.jpg\" alt=\"\" class=\"img-responsive\">\r\n                    </a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n</div>\r\n<div class=\"clear\"></div>\r\n</div>\r\n</div>\r\n<!--------------------- End Main Content ----------------------------------->\r\n<div class=\"footer\">\r\n    <div class=\"footer_grides\">\r\n        <div class=\"wrap\">\r\n            <div class=\"footer_grid1\">\r\n                <h3>Popular Tweets</h3>\r\n                <div class=\"tweet_data\">\r\n                    <div class=\"tweet_img\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/tweet-img1.jpg\" alt=\"\"/>\r\n                    </div>\r\n                    <div class=\"tweet_desc\">\r\n                        <h4>June 24th, 2013</h4>\r\n                        <p>Integer eget tortor et elit venenatis auctor morbi turpis nulla</p>\r\n                    </div>\r\n                    <div class=\"clear\"></div>\r\n                </div>\r\n                <div class=\"tweet_data\">\r\n                    <div class=\"tweet_img\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/tweet-img2.jpg\" alt=\"\"/>\r\n                    </div>\r\n                    <div class=\"tweet_desc\">\r\n                        <h4>June 04th, 2013</h4>\r\n                        <p>Integer eget tortor et elit venenatis auctor morbi turpis nulla</p>\r\n                    </div>\r\n                    <div class=\"clear\"></div>\r\n                </div>\r\n                <div class=\"tweet_data\">\r\n                    <div class=\"tweet_img\">\r\n                        <img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/tweet-img3.jpg\" alt=\"\"/>\r\n                    </div>\r\n                    <div class=\"tweet_desc\">\r\n                        <h4>May 4th, 2013</h4>\r\n                        <p>Integer eget tortor et elit venenatis auctor morbi turpis nulla</p>\r\n                    </div>\r\n                    <div class=\"clear\"></div>\r\n                </div>\r\n            </div>\r\n            <div class=\"footer_grid2\">\r\n                <h3>Page Layout</h3>\r\n                <ul>\r\n                    <li><a href=\"index.html\">Home</a></li>\r\n                    <li><a href=\"single.html\">About</a></li>\r\n                    <li><a href=\"404.html\">Support</a></li>\r\n                    <li><a href=\"single.html\">Services</a></li>\r\n                    <li><a href=\"contact.html\">Contact</a></li>\r\n                </ul>\r\n                <div class=\"grid2_bottom\">\r\n                    <h3>Newsletters Signup</h3>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.......</p>\r\n                    <div class=\"signup\">\r\n                        <form>\r\n                            <input type=\"text\" value=\"Enter your e-mail here\" onfocus=\"this.value = \'\';\" onblur=\"if (this.value == \'\') {this.value = \'Enter your e-mail here\';\"><input type=\"submit\" value=\"Sign up\">\r\n                        </form>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"footer_grid3\">\r\n                <h3>Follow</h3>\r\n                <div class=\"social_icons\">\r\n                    <div class=\"img_list\">\r\n                        <ul>\r\n                            <li><img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/facebook.png\" alt=\"\" /><a href=\"#\">Facebook</a></li>\r\n                            <li><img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/google+.png\" alt=\"\" /><a href=\"#\">Google Plus</a></li>\r\n                            <li><img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/twitter.png\" alt=\"\" /><a href=\"#\">Twitter</a></li>\r\n                            <li><img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/linkedin.png\" alt=\"\" /><a href=\"#\">Likedin</a></li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"clear\"></div>\r\n        </div>\r\n    </div>\r\n    <div class=\"copy_right\">\r\n        <p> © 2013 Share_Blog. All Rights Reserved | Design by  <a href=\"http://w3layouts.com\">W3Layouts</a> </p>\r\n    </div>\r\n</div>\r\n</body>\r\n</html>\r\n\r\n\r\n\r\n\";}',1,1574409709),('1875b5ca86f3ccbf4cff154042bf8ced1','fileman','edit_file','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:25:\"C:/xampp/htdocs/index.php\";s:7:\"content\";s:5589:\"<?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Блог\");?>\n\n\n    <div class=\"page_links\">\n						<div class=\"next_button\">\n							 <a href=\"#\">Next</a>\n						</div>\n							<div class=\"page_numbers\">\n							    <ul>\n									<li><a href=\"#\">1</a>\n									<li class=\"active\"><a href=\"#\">2</a>\n									<li><a href=\"#\">3</a>\n									<li><a href=\"#\">4</a>\n									<li><a href=\"#\">5</a>\n									<li><a href=\"#\">6</a>\n									<li><a href=\"#\">... Next</a>\n								</ul>\n							</div>	\n						<div class=\"clear\"></div>\n					<div class=\"page_bottom\">\n						<p>Back To : <a href=\"#\">Top</a> |  <a href=\"#\">Home</a></p>\n					</div>\n			</div>-->\n\n<?$APPLICATION->IncludeComponent(\"bitrix:news.list\", \"list_posts\", Array(\n	\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",	// Формат показа даты\n		\"ADD_SECTIONS_CHAIN\" => \"N\",	// Включать раздел в цепочку навигации\n		\"AJAX_MODE\" => \"N\",	// Включить режим AJAX\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",	// Дополнительный идентификатор\n		\"AJAX_OPTION_HISTORY\" => \"N\",	// Включить эмуляцию навигации браузера\n		\"AJAX_OPTION_JUMP\" => \"N\",	// Включить прокрутку к началу компонента\n		\"AJAX_OPTION_STYLE\" => \"Y\",	// Включить подгрузку стилей\n		\"CACHE_FILTER\" => \"N\",	// Кешировать при установленном фильтре\n		\"CACHE_GROUPS\" => \"Y\",	// Учитывать права доступа\n		\"CACHE_TIME\" => \"36000000\",	// Время кеширования (сек.)\n		\"CACHE_TYPE\" => \"A\",	// Тип кеширования\n		\"CHECK_DATES\" => \"Y\",	// Показывать только активные на данный момент элементы\n		\"DETAIL_URL\" => \"\",	// URL страницы детального просмотра (по умолчанию - из настроек инфоблока)\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",	// Выводить под списком\n		\"DISPLAY_DATE\" => \"Y\",	// Выводить дату элемента\n		\"DISPLAY_NAME\" => \"Y\",	// Выводить название элемента\n		\"DISPLAY_PICTURE\" => \"Y\",	// Выводить изображение для анонса\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",	// Выводить текст анонса\n		\"DISPLAY_TOP_PAGER\" => \"N\",	// Выводить над списком\n		\"FIELD_CODE\" => array(	// Поля\n			0 => \"\",\n			1 => \"\",\n		),\n		\"FILTER_NAME\" => \"\",	// Фильтр\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",	// Скрывать ссылку, если нет детального описания\n		\"IBLOCK_ID\" => \"4\",	// Код информационного блока\n		\"IBLOCK_TYPE\" => \"blog\",	// Тип информационного блока (используется только для проверки)\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",	// Включать инфоблок в цепочку навигации\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",	// Показывать элементы подразделов раздела\n		\"MESSAGE_404\" => \"\",	// Сообщение для показа (по умолчанию из компонента)\n		\"NEWS_COUNT\" => \"2\",	// Количество новостей на странице\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",	// Включить обработку ссылок\n		\"PAGER_DESC_NUMBERING\" => \"N\",	// Использовать обратную навигацию\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",	// Время кеширования страниц для обратной навигации\n		\"PAGER_SHOW_ALL\" => \"N\",	// Показывать ссылку \"Все\"\n		\"PAGER_SHOW_ALWAYS\" => \"N\",	// Выводить всегда\n		\"PAGER_TEMPLATE\" => \"modern\",	// Шаблон постраничной навигации\n		\"PAGER_TITLE\" => \"Новости\",	// Название категорий\n		\"PARENT_SECTION\" => \"\",	// ID раздела\n		\"PARENT_SECTION_CODE\" => \"\",	// Код раздела\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",	// Максимальная длина анонса для вывода (только для типа текст)\n		\"PROPERTY_CODE\" => array(	// Свойства\n			0 => \"AUTHOR\",\n			1 => \"\",\n		),\n		\"SET_BROWSER_TITLE\" => \"N\",	// Устанавливать заголовок окна браузера\n		\"SET_LAST_MODIFIED\" => \"N\",	// Устанавливать в заголовках ответа время модификации страницы\n		\"SET_META_DESCRIPTION\" => \"N\",	// Устанавливать описание страницы\n		\"SET_META_KEYWORDS\" => \"N\",	// Устанавливать ключевые слова страницы\n		\"SET_STATUS_404\" => \"Y\",	// Устанавливать статус 404\n		\"SET_TITLE\" => \"N\",	// Устанавливать заголовок страницы\n		\"SHOW_404\" => \"N\",	// Показ специальной страницы\n		\"SORT_BY1\" => \"ACTIVE_FROM\",	// Поле для первой сортировки новостей\n		\"SORT_BY2\" => \"SORT\",	// Поле для второй сортировки новостей\n		\"SORT_ORDER1\" => \"DESC\",	// Направление для первой сортировки новостей\n		\"SORT_ORDER2\" => \"ASC\",	// Направление для второй сортировки новостей\n		\"STRICT_SECTION_CHECK\" => \"N\",	// Строгая проверка раздела для показа списка\n		\"COMPONENT_TEMPLATE\" => \".default\"\n	),\n	false\n);?>\n<?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1574353901),('1a27c65f58cbf25831c6d07c13ebe6f8d','fileman','edit_component_props','CFileman::UndoEditFile','a:2:{s:7:\"absPath\";s:25:\"C:/xampp/htdocs/index.php\";s:7:\"content\";s:3802:\"<?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\n$APPLICATION->SetTitle(\"Блог\");?>\n\n    <!--<div class=\"box1\">\n   				 <h3><a href=\"single.html\">Making it look like readable English. Many desktop packages and web page</a></h3>\n    				<span>By Kieth Deviec- 2 hours ago<span class=\"comments\">8 Comments</span></span> \n			   <div class=\"view\">\n					<div class=\"view-back\">\n						<span class=\"views\" title=\"views\">(566)</span>\n						<span class=\"likes\" title=\"likes\">(124)</span>\n						<span class=\"link\" title=\"link\">(24)</span>\n						<a href=\"single.html\"> </a>\n					</div>\n					<a href=\"single.html\"><img src=\"<?=DEFAULT_TEMPLATE_PATH?>/images/img1.jpg\"></a>\n				</div>\n				<div class=\"data\">\n				    <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editorsLorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors</p>\n				    <span><a href=\"single.html\">Continue reading >>></a></span>\n				</div>\n			<div class=\"clear\"></div>\n		</div>\n    <div class=\"page_links\">\n						<div class=\"next_button\">\n							 <a href=\"#\">Next</a>\n						</div>\n							<div class=\"page_numbers\">\n							    <ul>\n									<li><a href=\"#\">1</a>\n									<li class=\"active\"><a href=\"#\">2</a>\n									<li><a href=\"#\">3</a>\n									<li><a href=\"#\">4</a>\n									<li><a href=\"#\">5</a>\n									<li><a href=\"#\">6</a>\n									<li><a href=\"#\">... Next</a>\n								</ul>\n							</div>	\n						<div class=\"clear\"></div>\n					<div class=\"page_bottom\">\n						<p>Back To : <a href=\"#\">Top</a> |  <a href=\"#\">Home</a></p>\n					</div>\n			</div>-->\n\n<?$APPLICATION->IncludeComponent(\n    \"bitrix:news.list\",\n    \"\",\n    Array(\n        \"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n        \"ADD_SECTIONS_CHAIN\" => \"N\",\n        \"AJAX_MODE\" => \"N\",\n        \"AJAX_OPTION_ADDITIONAL\" => \"\",\n        \"AJAX_OPTION_HISTORY\" => \"N\",\n        \"AJAX_OPTION_JUMP\" => \"N\",\n        \"AJAX_OPTION_STYLE\" => \"Y\",\n        \"CACHE_FILTER\" => \"N\",\n        \"CACHE_GROUPS\" => \"Y\",\n        \"CACHE_TIME\" => \"36000000\",\n        \"CACHE_TYPE\" => \"A\",\n        \"CHECK_DATES\" => \"Y\",\n        \"DETAIL_URL\" => \"\",\n        \"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n        \"DISPLAY_DATE\" => \"Y\",\n        \"DISPLAY_NAME\" => \"Y\",\n        \"DISPLAY_PICTURE\" => \"Y\",\n        \"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n        \"DISPLAY_TOP_PAGER\" => \"N\",\n        \"FIELD_CODE\" => array(\"\",\"\"),\n        \"FILTER_NAME\" => \"\",\n        \"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n        \"IBLOCK_ID\" => \"4\",\n        \"IBLOCK_TYPE\" => \"blog\",\n        \"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",\n        \"INCLUDE_SUBSECTIONS\" => \"Y\",\n        \"MESSAGE_404\" => \"\",\n        \"NEWS_COUNT\" => \"2\",\n        \"PAGER_BASE_LINK_ENABLE\" => \"N\",\n        \"PAGER_DESC_NUMBERING\" => \"N\",\n        \"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n        \"PAGER_SHOW_ALL\" => \"N\",\n        \"PAGER_SHOW_ALWAYS\" => \"N\",\n        \"PAGER_TEMPLATE\" => \".default\",\n        \"PAGER_TITLE\" => \"Новости\",\n        \"PARENT_SECTION\" => \"\",\n        \"PARENT_SECTION_CODE\" => \"\",\n        \"PREVIEW_TRUNCATE_LEN\" => \"\",\n        \"PROPERTY_CODE\" => array(\"AUTHOR\",\"\"),\n        \"SET_BROWSER_TITLE\" => \"N\",\n        \"SET_LAST_MODIFIED\" => \"N\",\n        \"SET_META_DESCRIPTION\" => \"N\",\n        \"SET_META_KEYWORDS\" => \"N\",\n        \"SET_STATUS_404\" => \"Y\",\n        \"SET_TITLE\" => \"N\",\n        \"SHOW_404\" => \"N\",\n        \"SORT_BY1\" => \"ACTIVE_FROM\",\n        \"SORT_BY2\" => \"SORT\",\n        \"SORT_ORDER1\" => \"DESC\",\n        \"SORT_ORDER2\" => \"ASC\",\n        \"STRICT_SECTION_CHECK\" => \"N\"\n    )\n);?>\n<?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}',1,1574342771),('1df4e9d7bdfdaa71994eb0cd6d3104983','fileman','new_section','CFileman::UndoNewSection','a:3:{s:7:\"absPath\";s:20:\"C:/xampp/htdocs/blog\";s:4:\"path\";s:5:\"/blog\";s:4:\"site\";s:2:\"s1\";}',1,1574347929),('2c46515ccfc0160464148b54f3df32d2c','main','autosave','CAutoSave::_Restore','a:11:{s:9:\"submitbtn\";s:0:\"\";s:4:\"mode\";s:6:\"public\";s:4:\"save\";s:1:\"Y\";s:4:\"site\";s:2:\"s1\";s:8:\"template\";s:0:\"\";s:10:\"templateID\";s:4:\"blog\";s:9:\"subdialog\";s:0:\"\";s:8:\"back_url\";s:24:\"/?bitrix_include_areas=Y\";s:5:\"title\";s:8:\"Блог\";s:4:\"path\";s:10:\"/index.php\";s:11:\"filesrc_pub\";s:2859:\"<?$APPLICATION->IncludeComponent(\n	\"bitrix:catalog.section.list\",\n	\"\",\n	Array(\n		\"ADD_SECTIONS_CHAIN\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"COUNT_ELEMENTS\" => \"Y\",\n		\"FILTER_NAME\" => \"sectionsFilter\",\n		\"IBLOCK_ID\" => \"4\",\n		\"IBLOCK_TYPE\" => \"blog\",\n		\"SECTION_CODE\" => \"\",\n		\"SECTION_FIELDS\" => array(\"\",\"\"),\n		\"SECTION_ID\" => $_REQUEST[\"SECTION_ID\"],\n		\"SECTION_URL\" => \"\",\n		\"SECTION_USER_FIELDS\" => array(\"\",\"\"),\n		\"SHOW_PARENT_NAME\" => \"Y\",\n		\"TOP_DEPTH\" => \"2\",\n		\"VIEW_MODE\" => \"TEXT\"\n	)\n);?><!--\n<div class=\"page_links\">\n    <div class=\"next_button\">\n        <a href=\"#\">Next</a>\n    </div>\n\n    <div class=\"page_numbers\">\n        <ul>\n            <li><a href=\"#\">1</a> </li>\n            <li class=\"active\"><a href=\"#\">2</a> </li>\n            <li><a href=\"#\">3</a> </li>\n            <li><a href=\"#\">4</a> </li>\n            <li><a href=\"#\">5</a> </li>\n            <li><a href=\"#\">6</a> </li>\n            <li><a href=\"#\">... Next</a> </li>\n        </ul>\n    </div>\n\n    <div class=\"clear\">\n    </div>\n    <div class=\"page_bottom\">\n        <p>\n            Back To : <a href=\"#\">Top</a> | <a href=\"#\">Home</a>\n        </p>\n    </div>\n</div>\n--><?$APPLICATION->IncludeComponent(\n	\"bitrix:news.list\",\n	\"list_posts\",\n	Array(\n		\"ACTIVE_DATE_FORMAT\" => \"d.m.Y\",\n		\"ADD_SECTIONS_CHAIN\" => \"N\",\n		\"AJAX_MODE\" => \"N\",\n		\"AJAX_OPTION_ADDITIONAL\" => \"\",\n		\"AJAX_OPTION_HISTORY\" => \"N\",\n		\"AJAX_OPTION_JUMP\" => \"N\",\n		\"AJAX_OPTION_STYLE\" => \"Y\",\n		\"CACHE_FILTER\" => \"N\",\n		\"CACHE_GROUPS\" => \"Y\",\n		\"CACHE_TIME\" => \"36000000\",\n		\"CACHE_TYPE\" => \"A\",\n		\"CHECK_DATES\" => \"Y\",\n		\"COMPONENT_TEMPLATE\" => \".default\",\n		\"DETAIL_URL\" => \"\",\n		\"DISPLAY_BOTTOM_PAGER\" => \"Y\",\n		\"DISPLAY_DATE\" => \"Y\",\n		\"DISPLAY_NAME\" => \"Y\",\n		\"DISPLAY_PICTURE\" => \"Y\",\n		\"DISPLAY_PREVIEW_TEXT\" => \"Y\",\n		\"DISPLAY_TOP_PAGER\" => \"N\",\n		\"FIELD_CODE\" => array(0=>\"\",1=>\"\",),\n		\"FILTER_NAME\" => \"\",\n		\"HIDE_LINK_WHEN_NO_DETAIL\" => \"N\",\n		\"IBLOCK_ID\" => \"4\",\n		\"IBLOCK_TYPE\" => \"blog\",\n		\"INCLUDE_IBLOCK_INTO_CHAIN\" => \"N\",\n		\"INCLUDE_SUBSECTIONS\" => \"Y\",\n		\"MESSAGE_404\" => \"\",\n		\"NEWS_COUNT\" => \"2\",\n		\"PAGER_BASE_LINK_ENABLE\" => \"N\",\n		\"PAGER_DESC_NUMBERING\" => \"N\",\n		\"PAGER_DESC_NUMBERING_CACHE_TIME\" => \"36000\",\n		\"PAGER_SHOW_ALL\" => \"N\",\n		\"PAGER_SHOW_ALWAYS\" => \"N\",\n		\"PAGER_TEMPLATE\" => \"modern\",\n		\"PAGER_TITLE\" => \"Новости\",\n		\"PARENT_SECTION\" => \"\",\n		\"PARENT_SECTION_CODE\" => \"\",\n		\"PREVIEW_TRUNCATE_LEN\" => \"\",\n		\"PROPERTY_CODE\" => array(0=>\"AUTHOR\",1=>\"\",),\n		\"SET_BROWSER_TITLE\" => \"N\",\n		\"SET_LAST_MODIFIED\" => \"N\",\n		\"SET_META_DESCRIPTION\" => \"N\",\n		\"SET_META_KEYWORDS\" => \"N\",\n		\"SET_STATUS_404\" => \"Y\",\n		\"SET_TITLE\" => \"N\",\n		\"SHOW_404\" => \"N\",\n		\"SORT_BY1\" => \"ACTIVE_FROM\",\n		\"SORT_BY2\" => \"SORT\",\n		\"SORT_ORDER1\" => \"DESC\",\n		\"SORT_ORDER2\" => \"ASC\",\n		\"STRICT_SECTION_CHECK\" => \"N\"\n	)\n);?>\";}',1,1574408285);
/*!40000 ALTER TABLE `b_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_metadata`
--

DROP TABLE IF EXISTS `b_urlpreview_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTRA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_metadata`
--

LOCK TABLES `b_urlpreview_metadata` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_route`
--

DROP TABLE IF EXISTS `b_urlpreview_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_route`
--

LOCK TABLES `b_urlpreview_route` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`),
  KEY `ix_user_last_login` (`LAST_LOGIN`),
  KEY `ix_user_date_register` (`DATE_REGISTER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'2019-11-19 12:18:08','admin','0EnAO9fw9a894c138082dd494d2aa1e8635b3f7c','lMrg9yJ3107afb9ce05f8899eeb4ce687e319299','Y','','','admin@admin.admin','2019-11-22 15:58:54','2019-11-19 15:18:08',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-19 15:18:08',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access`
--

DROP TABLE IF EXISTS `b_user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access`
--

LOCK TABLES `b_user_access` WRITE;
/*!40000 ALTER TABLE `b_user_access` DISABLE KEYS */;
INSERT INTO `b_user_access` VALUES (0,'group','G2'),(1,'group','G1'),(1,'group','G3'),(1,'group','G4'),(1,'group','G2'),(1,'user','U1');
/*!40000 ALTER TABLE `b_user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access_check`
--

DROP TABLE IF EXISTS `b_user_access_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access_check`
--

LOCK TABLES `b_user_access_check` WRITE;
/*!40000 ALTER TABLE `b_user_access_check` DISABLE KEYS */;
INSERT INTO `b_user_access_check` VALUES (1,'group'),(1,'user');
/*!40000 ALTER TABLE `b_user_access_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_auth_action`
--

DROP TABLE IF EXISTS `b_user_auth_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT 100,
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  KEY `ix_auth_action_date` (`ACTION_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_auth_action`
--

LOCK TABLES `b_user_auth_action` WRITE;
/*!40000 ALTER TABLE `b_user_auth_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_auth_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_counter`
--

DROP TABLE IF EXISTS `b_user_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT 0,
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_counter`
--

LOCK TABLES `b_user_counter` WRITE;
/*!40000 ALTER TABLE `b_user_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_digest`
--

DROP TABLE IF EXISTS `b_user_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_digest`
--

LOCK TABLES `b_user_digest` WRITE;
/*!40000 ALTER TABLE `b_user_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field`
--

DROP TABLE IF EXISTS `b_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field`
--

LOCK TABLES `b_user_field` WRITE;
/*!40000 ALTER TABLE `b_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_confirm`
--

DROP TABLE IF EXISTS `b_user_field_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ATTEMPTS` int(18) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_confirm`
--

LOCK TABLES `b_user_field_confirm` WRITE;
/*!40000 ALTER TABLE `b_user_field_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_enum`
--

DROP TABLE IF EXISTS `b_user_field_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_enum`
--

LOCK TABLES `b_user_field_enum` WRITE;
/*!40000 ALTER TABLE `b_user_field_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_lang`
--

DROP TABLE IF EXISTS `b_user_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_lang`
--

LOCK TABLES `b_user_field_lang` WRITE;
/*!40000 ALTER TABLE `b_user_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_group`
--

DROP TABLE IF EXISTS `b_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_group`
--

LOCK TABLES `b_user_group` WRITE;
/*!40000 ALTER TABLE `b_user_group` DISABLE KEYS */;
INSERT INTO `b_user_group` VALUES (1,1,NULL,NULL),(1,3,NULL,NULL),(1,4,NULL,NULL);
/*!40000 ALTER TABLE `b_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_hit_auth`
--

DROP TABLE IF EXISTS `b_user_hit_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_hit_auth`
--

LOCK TABLES `b_user_hit_auth` WRITE;
/*!40000 ALTER TABLE `b_user_hit_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_hit_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index`
--

DROP TABLE IF EXISTS `b_user_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index`
--

LOCK TABLES `b_user_index` WRITE;
/*!40000 ALTER TABLE `b_user_index` DISABLE KEYS */;
INSERT INTO `b_user_index` VALUES (1,'001','','001 nqzva nqzva@nqzva.nqzva','','','','','');
/*!40000 ALTER TABLE `b_user_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index_selector`
--

DROP TABLE IF EXISTS `b_user_index_selector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_index_selector` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_SELECTOR_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_SELECTOR_1` (`SEARCH_SELECTOR_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index_selector`
--

LOCK TABLES `b_user_index_selector` WRITE;
/*!40000 ALTER TABLE `b_user_index_selector` DISABLE KEYS */;
INSERT INTO `b_user_index_selector` VALUES (1,'');
/*!40000 ALTER TABLE `b_user_index_selector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_option`
--

DROP TABLE IF EXISTS `b_user_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_option`
--

LOCK TABLES `b_user_option` WRITE;
/*!40000 ALTER TABLE `b_user_option` DISABLE KEYS */;
INSERT INTO `b_user_option` VALUES (1,0,'intranet','~gadgets_admin_index','a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}','Y'),(2,0,'main.interface','global','a:1:{s:5:\"theme\";s:5:\"green\";}','Y'),(3,1,'admin_panel','settings','a:1:{s:4:\"edit\";s:2:\"on\";}','N'),(4,1,'hot_keys','user_defined','b:1;','N'),(5,1,'favorite','favorite_menu','a:1:{s:5:\"stick\";s:1:\"Y\";}','N'),(7,1,'admin_menu','pos','a:1:{s:8:\"sections\";s:109:\"menu_util,menu_system,menu_module_settings,menu_iblock_%2Fblog%2F4,menu_iblock_/blog,menu_iblock,iblock_admin\";}','N'),(38,1,'html_editor','user_settings_','a:3:{s:13:\"taskbar_shown\";s:1:\"1\";s:4:\"view\";s:5:\"split\";s:14:\"split_vertical\";s:1:\"0\";}','N'),(51,1,'main.interface.grid','tbl_iblock_admin_126ac9f6149081eb0e97c2e939eaad52','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(57,1,'main.interface.grid','tbl_iblock_element_d7fe446a82c7a652980f2d7592dfe7f7','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(70,1,'main.ui.filter','tbl_iblock_section_297a17400e574c50843532d84d6c1e09','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(76,1,'main.interface.grid','tbl_iblock_section_297a17400e574c50843532d84d6c1e09','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(77,1,'main.ui.filter','tbl_iblock_element_297a17400e574c50843532d84d6c1e09','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:2:{s:14:\"default_filter\";a:0:{}s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(82,1,'main.interface.grid','tbl_iblock_element_297a17400e574c50843532d84d6c1e09','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(83,1,'main.interface.grid','tbl_iblock_126ac9f6149081eb0e97c2e939eaad52','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N'),(139,1,'main.ui.filter','tbl_iblock_list_297a17400e574c50843532d84d6c1e09','a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}','N'),(144,1,'main.interface.grid','tbl_iblock_list_297a17400e574c50843532d84d6c1e09','a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}','N');
/*!40000 ALTER TABLE `b_user_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_phone_auth`
--

DROP TABLE IF EXISTS `b_user_phone_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTEMPTS` int(11) DEFAULT 0,
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_phone_auth`
--

LOCK TABLES `b_user_phone_auth` WRITE;
/*!40000 ALTER TABLE `b_user_phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_phone_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_history`
--

DROP TABLE IF EXISTS `b_user_profile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATED_BY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_history_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_history`
--

LOCK TABLES `b_user_profile_history` WRITE;
/*!40000 ALTER TABLE `b_user_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_record`
--

DROP TABLE IF EXISTS `b_user_profile_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_record`
--

LOCK TABLES `b_user_profile_record` WRITE;
/*!40000 ALTER TABLE `b_user_profile_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_stored_auth`
--

DROP TABLE IF EXISTS `b_user_stored_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_stored_auth`
--

LOCK TABLES `b_user_stored_auth` WRITE;
/*!40000 ALTER TABLE `b_user_stored_auth` DISABLE KEYS */;
INSERT INTO `b_user_stored_auth` VALUES (1,1,'2019-11-19 15:18:10','2019-11-19 15:18:10','1c4f4f3b6d95e00fe0a38334f0cba64d','N',0);
/*!40000 ALTER TABLE `b_user_stored_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_xml_tree`
--

DROP TABLE IF EXISTS `b_xml_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_xml_tree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTRIBUTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_xml_tree_parent` (`PARENT_ID`),
  KEY `ix_b_xml_tree_left` (`LEFT_MARGIN`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_xml_tree`
--

LOCK TABLES `b_xml_tree` WRITE;
/*!40000 ALTER TABLE `b_xml_tree` DISABLE KEYS */;
INSERT INTO `b_xml_tree` VALUES (1,0,1,320,0,'КоммерческаяИнформация',NULL,'a:2:{s:22:\"ВерсияСхемы\";s:5:\"2.021\";s:32:\"ДатаФормирования\";s:19:\"2010-06-22T12:53:42\";}'),(2,1,2,67,1,'Классификатор',NULL,NULL),(3,2,3,4,2,'Ид','2',NULL),(4,2,5,6,2,'Наименование','Вакансии',NULL),(5,2,7,64,2,'Свойства',NULL,NULL),(6,5,8,15,3,'Свойство',NULL,NULL),(7,6,9,10,4,'Ид','CML2_ACTIVE',NULL),(8,6,11,12,4,'Наименование','БитриксАктивность',NULL),(9,6,13,14,4,'Множественное','false',NULL),(10,5,16,23,3,'Свойство',NULL,NULL),(11,10,17,18,4,'Ид','CML2_CODE',NULL),(12,10,19,20,4,'Наименование','Символьный код',NULL),(13,10,21,22,4,'Множественное','false',NULL),(14,5,24,31,3,'Свойство',NULL,NULL),(15,14,25,26,4,'Ид','CML2_SORT',NULL),(16,14,27,28,4,'Наименование','Сортировка',NULL),(17,14,29,30,4,'Множественное','false',NULL),(18,5,32,39,3,'Свойство',NULL,NULL),(19,18,33,34,4,'Ид','CML2_ACTIVE_FROM',NULL),(20,18,35,36,4,'Наименование','Начало активности',NULL),(21,18,37,38,4,'Множественное','false',NULL),(22,5,40,47,3,'Свойство',NULL,NULL),(23,22,41,42,4,'Ид','CML2_ACTIVE_TO',NULL),(24,22,43,44,4,'Наименование','Окончание активности',NULL),(25,22,45,46,4,'Множественное','false',NULL),(26,5,48,55,3,'Свойство',NULL,NULL),(27,26,49,50,4,'Ид','CML2_PREVIEW_TEXT',NULL),(28,26,51,52,4,'Наименование','Анонс',NULL),(29,26,53,54,4,'Множественное','false',NULL),(30,5,56,63,3,'Свойство',NULL,NULL),(31,30,57,58,4,'Ид','CML2_PREVIEW_PICTURE',NULL),(32,30,59,60,4,'Наименование','Картинка анонса',NULL),(33,30,61,62,4,'Множественное','false',NULL),(34,2,65,66,2,'Группы',NULL,NULL),(35,1,68,319,1,'Каталог',NULL,NULL),(36,35,69,70,2,'Ид','corp_vacancies',NULL),(37,35,71,72,2,'ИдКлассификатора','2',NULL),(38,35,73,74,2,'Наименование','Вакансии',NULL),(39,35,75,76,2,'БитриксКод','corp_vacancies',NULL),(40,35,77,78,2,'БитриксСортировка','500',NULL),(41,35,79,80,2,'БитриксURLСписок','#SITE_DIR#/about/vacancies.php',NULL),(42,35,81,82,2,'БитриксURLДеталь','#SITE_DIR#/about/vacancies.php##ID#',NULL),(43,35,83,84,2,'БитриксURLРаздел',NULL,NULL),(44,35,85,86,2,'БитриксКартинка',NULL,NULL),(45,35,87,88,2,'БитриксИндексироватьЭлементы','true',NULL),(46,35,89,90,2,'БитриксИндексироватьРазделы','false',NULL),(47,35,91,92,2,'БитриксДокументооборот','false',NULL),(48,35,93,154,2,'БитриксПодписи',NULL,NULL),(49,48,94,99,3,'БитриксПодпись',NULL,NULL),(50,49,95,96,4,'Ид','ELEMENT_NAME',NULL),(51,49,97,98,4,'Значение','Вакансия',NULL),(52,48,100,105,3,'БитриксПодпись',NULL,NULL),(53,52,101,102,4,'Ид','ELEMENTS_NAME',NULL),(54,52,103,104,4,'Значение','Вакансии',NULL),(55,48,106,111,3,'БитриксПодпись',NULL,NULL),(56,55,107,108,4,'Ид','ELEMENT_ADD',NULL),(57,55,109,110,4,'Значение','Добавить вакансию',NULL),(58,48,112,117,3,'БитриксПодпись',NULL,NULL),(59,58,113,114,4,'Ид','ELEMENT_EDIT',NULL),(60,58,115,116,4,'Значение','Изменить вакансию',NULL),(61,48,118,123,3,'БитриксПодпись',NULL,NULL),(62,61,119,120,4,'Ид','ELEMENT_DELETE',NULL),(63,61,121,122,4,'Значение','Удалить вакансию',NULL),(64,48,124,129,3,'БитриксПодпись',NULL,NULL),(65,64,125,126,4,'Ид','SECTION_NAME',NULL),(66,64,127,128,4,'Значение','Раздел',NULL),(67,48,130,135,3,'БитриксПодпись',NULL,NULL),(68,67,131,132,4,'Ид','SECTIONS_NAME',NULL),(69,67,133,134,4,'Значение','Разделы',NULL),(70,48,136,141,3,'БитриксПодпись',NULL,NULL),(71,70,137,138,4,'Ид','SECTION_ADD',NULL),(72,70,139,140,4,'Значение','Добавить раздел',NULL),(73,48,142,147,3,'БитриксПодпись',NULL,NULL),(74,73,143,144,4,'Ид','SECTION_EDIT',NULL),(75,73,145,146,4,'Значение','Изменить раздел',NULL),(76,48,148,153,3,'БитриксПодпись',NULL,NULL),(77,76,149,150,4,'Ид','SECTION_DELETE',NULL),(78,76,151,152,4,'Значение','Удалить раздел',NULL),(79,35,155,318,2,'Товары',NULL,NULL),(80,79,156,209,3,'Товар',NULL,NULL),(81,80,157,158,4,'Ид','2',NULL),(82,80,159,160,4,'Наименование','Главный специалист Отдела анализа кредитных проектов региональной сети',NULL),(83,80,161,162,4,'БитриксТеги',NULL,NULL),(84,80,163,164,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее экономическое/финансовое образование, опыт в банках топ-100 не менее 3-х лет в кредитном отделе (анализ заемщиков), желателен опыт работы с кредитными заявками филиалов, знание технологий АФХД предприятий, навыки написания экспертного заключения, знание законодательства (в т.ч. Положение ЦБ № 254-П).</p>\n 						 						<b>Обязанности</b> 						 \n<p>Анализ кредитных проектов филиалов Банка, подготовка предложений по структурированию кредитных проектов, оценка полноты и качества формируемых филиалами заключений, выявление стоп-факторов, доработка заявок филиалов в соответствии со стандартами Банка, подготовка заключения (рекомендаций) на КК по заявкам филиалов в части оценки финансово-экономического состояния заемщика, защита проектов на КК Банка, консультирование и методологическая помощь филиалам Банка в части корпоративного кредитования.</p>\n 						 						<b>Условия</b> 						 \n<p> Место работы: М.Парк Культуры. Графики работы: пятидневная рабочая неделя, с 9:00 до 18:00, пт. до 16:45. Зарплата: 50000 руб. оклад + премии, полный соц. пакет,оформление согласно ТК РФ</p>\n ',NULL),(85,80,165,208,4,'ЗначенияСвойств',NULL,NULL),(86,85,166,171,5,'ЗначенияСвойства',NULL,NULL),(87,86,167,168,6,'Ид','CML2_ACTIVE',NULL),(88,86,169,170,6,'Значение','true',NULL),(89,85,172,177,5,'ЗначенияСвойства',NULL,NULL),(90,89,173,174,6,'Ид','CML2_CODE',NULL),(91,89,175,176,6,'Значение',NULL,NULL),(92,85,178,183,5,'ЗначенияСвойства',NULL,NULL),(93,92,179,180,6,'Ид','CML2_SORT',NULL),(94,92,181,182,6,'Значение','200',NULL),(95,85,184,189,5,'ЗначенияСвойства',NULL,NULL),(96,95,185,186,6,'Ид','CML2_ACTIVE_FROM',NULL),(97,95,187,188,6,'Значение','2010-05-01 00:00:00',NULL),(98,85,190,195,5,'ЗначенияСвойства',NULL,NULL),(99,98,191,192,6,'Ид','CML2_ACTIVE_TO',NULL),(100,98,193,194,6,'Значение',NULL,NULL),(101,85,196,201,5,'ЗначенияСвойства',NULL,NULL),(102,101,197,198,6,'Ид','CML2_PREVIEW_TEXT',NULL),(103,101,199,200,6,'Значение',NULL,NULL),(104,85,202,207,5,'ЗначенияСвойства',NULL,NULL),(105,104,203,204,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(106,104,205,206,6,'Значение',NULL,NULL),(107,79,210,263,3,'Товар',NULL,NULL),(108,107,211,212,4,'Ид','3',NULL),(109,107,213,214,4,'Наименование','Специалист по продажам розничных банковских продуктов',NULL),(110,107,215,216,4,'БитриксТеги',NULL,NULL),(111,107,217,218,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее экономического образования ‚ опыт работы в сфере продаж банковских продуктов‚ опытный пользователь ПК‚ этика делового общения‚ ответственность‚ инициативность‚ активность.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Продажа розничных банковских продуктов, оформление документов.</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: 20000 руб. оклад + премии</p>\n ',NULL),(112,107,219,262,4,'ЗначенияСвойств',NULL,NULL),(113,112,220,225,5,'ЗначенияСвойства',NULL,NULL),(114,113,221,222,6,'Ид','CML2_ACTIVE',NULL),(115,113,223,224,6,'Значение','true',NULL),(116,112,226,231,5,'ЗначенияСвойства',NULL,NULL),(117,116,227,228,6,'Ид','CML2_CODE',NULL),(118,116,229,230,6,'Значение',NULL,NULL),(119,112,232,237,5,'ЗначенияСвойства',NULL,NULL),(120,119,233,234,6,'Ид','CML2_SORT',NULL),(121,119,235,236,6,'Значение','300',NULL),(122,112,238,243,5,'ЗначенияСвойства',NULL,NULL),(123,122,239,240,6,'Ид','CML2_ACTIVE_FROM',NULL),(124,122,241,242,6,'Значение','2010-05-01 00:00:00',NULL),(125,112,244,249,5,'ЗначенияСвойства',NULL,NULL),(126,125,245,246,6,'Ид','CML2_ACTIVE_TO',NULL),(127,125,247,248,6,'Значение',NULL,NULL),(128,112,250,255,5,'ЗначенияСвойства',NULL,NULL),(129,128,251,252,6,'Ид','CML2_PREVIEW_TEXT',NULL),(130,128,253,254,6,'Значение',NULL,NULL),(131,112,256,261,5,'ЗначенияСвойства',NULL,NULL),(132,131,257,258,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(133,131,259,260,6,'Значение',NULL,NULL),(134,79,264,317,3,'Товар',NULL,NULL),(135,134,265,266,4,'Ид','4',NULL),(136,134,267,268,4,'Наименование','Специалист Отдела андеррайтинга',NULL),(137,134,269,270,4,'БитриксТеги',NULL,NULL),(138,134,271,272,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее профессиональное образование, опыт работы от 2 лет в отделе по работе с физическими и юридическими лицами Банков, связанных с анализом платёжеспособности и кредитоспособности физических и юридических лиц.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Проверка соответствия документов, предоставленных клиентами Банка, анализ информации о риске</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: оклад 25000 руб.</p>\n ',NULL),(139,134,273,316,4,'ЗначенияСвойств',NULL,NULL),(140,139,274,279,5,'ЗначенияСвойства',NULL,NULL),(141,140,275,276,6,'Ид','CML2_ACTIVE',NULL),(142,140,277,278,6,'Значение','true',NULL),(143,139,280,285,5,'ЗначенияСвойства',NULL,NULL),(144,143,281,282,6,'Ид','CML2_CODE',NULL),(145,143,283,284,6,'Значение',NULL,NULL),(146,139,286,291,5,'ЗначенияСвойства',NULL,NULL),(147,146,287,288,6,'Ид','CML2_SORT',NULL),(148,146,289,290,6,'Значение','400',NULL),(149,139,292,297,5,'ЗначенияСвойства',NULL,NULL),(150,149,293,294,6,'Ид','CML2_ACTIVE_FROM',NULL),(151,149,295,296,6,'Значение','2010-05-01 00:00:00',NULL),(152,139,298,303,5,'ЗначенияСвойства',NULL,NULL),(153,152,299,300,6,'Ид','CML2_ACTIVE_TO',NULL),(154,152,301,302,6,'Значение',NULL,NULL),(155,139,304,309,5,'ЗначенияСвойства',NULL,NULL),(156,155,305,306,6,'Ид','CML2_PREVIEW_TEXT',NULL),(157,155,307,308,6,'Значение',NULL,NULL),(158,139,310,315,5,'ЗначенияСвойства',NULL,NULL),(159,158,311,312,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(160,158,313,314,6,'Значение',NULL,NULL),(161,0,4,0,0,'',NULL,NULL),(162,0,5,0,0,'',NULL,NULL),(163,0,6,0,0,'',NULL,NULL);
/*!40000 ALTER TABLE `b_xml_tree` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-22 16:26:01
