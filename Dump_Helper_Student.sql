CREATE DATABASE  IF NOT EXISTS `helper_student_ip` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `helper_student_ip`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: helper_student_ip
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category_ subject',7,'add_category_subject'),(26,'Can change category_ subject',7,'change_category_subject'),(27,'Can delete category_ subject',7,'delete_category_subject'),(28,'Can view category_ subject',7,'view_category_subject'),(29,'Can add department',8,'add_department'),(30,'Can change department',8,'change_department'),(31,'Can delete department',8,'delete_department'),(32,'Can view department',8,'view_department'),(33,'Can add direction_ subject',9,'add_direction_subject'),(34,'Can change direction_ subject',9,'change_direction_subject'),(35,'Can delete direction_ subject',9,'delete_direction_subject'),(36,'Can view direction_ subject',9,'view_direction_subject'),(37,'Can add education program',10,'add_educationprogram'),(38,'Can change education program',10,'change_educationprogram'),(39,'Can delete education program',10,'delete_educationprogram'),(40,'Can view education program',10,'view_educationprogram'),(41,'Can add group student',11,'add_groupstudent'),(42,'Can change group student',11,'change_groupstudent'),(43,'Can delete group student',11,'delete_groupstudent'),(44,'Can view group student',11,'view_groupstudent'),(45,'Can add institute',12,'add_institute'),(46,'Can change institute',12,'change_institute'),(47,'Can delete institute',12,'delete_institute'),(48,'Can view institute',12,'view_institute'),(49,'Can add teacher',13,'add_teacher'),(50,'Can change teacher',13,'change_teacher'),(51,'Can delete teacher',13,'delete_teacher'),(52,'Can view teacher',13,'view_teacher'),(53,'Can add subject',14,'add_subject'),(54,'Can change subject',14,'change_subject'),(55,'Can delete subject',14,'delete_subject'),(56,'Can view subject',14,'view_subject'),(57,'Can add student',15,'add_student'),(58,'Can change student',15,'change_student'),(59,'Can delete student',15,'delete_student'),(60,'Can view student',15,'view_student'),(61,'Can add individual plan',16,'add_individualplan'),(62,'Can change individual plan',16,'change_individualplan'),(63,'Can delete individual plan',16,'delete_individualplan'),(64,'Can view individual plan',16,'view_individualplan'),(65,'Can add education program main subject',17,'add_educationprogrammainsubject'),(66,'Can change education program main subject',17,'change_educationprogrammainsubject'),(67,'Can delete education program main subject',17,'delete_educationprogrammainsubject'),(68,'Can view education program main subject',17,'view_educationprogrammainsubject'),(69,'Can add education program selective subject',18,'add_educationprogramselectivesubject'),(70,'Can change education program selective subject',18,'change_educationprogramselectivesubject'),(71,'Can delete education program selective subject',18,'delete_educationprogramselectivesubject'),(72,'Can view education program selective subject',18,'view_educationprogramselectivesubject');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$WmIu469CESuD6d8Gr0xTDV$YE8NpAdwSwGZGz66/fOARBh5qMKVWmtOPZipOLEM1Vo=','2022-12-21 00:41:13.300176',1,'admin','','','admin@admin.ua',1,1,'2022-12-18 21:47:50.130699'),(2,'pbkdf2_sha256$390000$GJJx9reSwmZRe3Fj5qvEKK$CCTEMAGbFUjsZYXrUYoY97IN1/wNN0HQ8wMBRGRNv2I=','2022-12-21 01:00:03.883054',0,'panchenko','Андрій','Панченко','',1,1,'2022-12-18 21:49:48.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-12-18 21:49:49.332927','2','panchenko',1,'[{\"added\": {}}]',4,1),(2,'2022-12-18 21:50:12.403938','2','panchenko',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\"]}}]',4,1),(3,'2022-12-18 21:54:05.904674','1','ІЕМ',1,'[{\"added\": {}}]',12,1),(4,'2022-12-18 21:54:32.667106','1','Журналістики та українознавства',1,'[{\"added\": {}}]',8,1),(5,'2022-12-18 21:55:14.337777','2','Іноземних мов',1,'[{\"added\": {}}]',8,1),(6,'2022-12-18 21:56:04.597260','3','Філософії та культорології',1,'[{\"added\": {}}]',8,1),(7,'2022-12-18 21:57:43.791223','2','ІАКОТ',1,'[{\"added\": {}}]',12,1),(8,'2022-12-18 21:58:47.924389','2','ІАКОТ',2,'[{\"changed\": {\"fields\": [\"Fullname\"]}}]',12,1),(9,'2022-12-18 21:59:07.439300','4','кафедра вищої математики',1,'[{\"added\": {}}]',8,1),(10,'2022-12-18 22:00:48.415468','2','АКОТ',2,'[{\"changed\": {\"fields\": [\"Shortname\"]}}]',12,1),(11,'2022-12-18 22:00:52.925212','5','кафедра комп\'ютерних технологій та економічної кібернетики',1,'[{\"added\": {}}]',8,1),(12,'2022-12-18 22:01:05.707613','1','кафедра журналістики та українознавства',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(13,'2022-12-18 22:01:15.342173','2','кафедра ыноземних мов',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(14,'2022-12-18 22:01:23.606423','2','кафедра іноземних мов',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(15,'2022-12-18 22:01:33.039990','3','кафедра філософії та культорології',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(16,'2022-12-18 22:02:25.269702','6','суспільних дисциплін',1,'[{\"added\": {}}]',8,1),(17,'2022-12-18 22:02:39.460911','2','кафедра іноземних мов',2,'[]',8,1),(18,'2022-12-18 22:02:50.071539','6','суспільних дисциплін',2,'[]',8,1),(19,'2022-12-18 22:03:12.160701','6','кафедра суспільних дисциплін',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(20,'2022-12-18 22:06:52.565625','3','ІАЗ',1,'[{\"added\": {}}]',12,1),(21,'2022-12-18 22:06:58.631340','7','кафедра екології, технології захисту навколишнього середовища та лісового господ',1,'[{\"added\": {}}]',8,1),(22,'2022-12-18 22:09:42.705965','4','ІП',1,'[{\"added\": {}}]',12,1),(23,'2022-12-18 22:09:45.725889','8','кафедра правових природоохоронних дисциплін',1,'[{\"added\": {}}]',8,1),(24,'2022-12-18 22:12:10.605931','1','загальної підготовки',1,'[{\"added\": {}}]',7,1),(25,'2022-12-18 22:12:33.420119','2','Цикл фахової підготовки',1,'[{\"added\": {}}]',7,1),(26,'2022-12-18 22:12:40.731571','2','фахової підготовки',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(27,'2022-12-18 22:13:27.503348','3','вільний вибір',1,'[{\"added\": {}}]',7,1),(28,'2022-12-18 22:50:07.421649','1','технологічний',1,'[{\"added\": {}}]',9,1),(29,'2022-12-18 22:50:33.535669','1','Електроніка та мікропроцесорні',1,'[{\"added\": {}}]',14,1),(30,'2022-12-18 22:50:50.423566','1','Електроніка та мікропроцесорні',2,'[{\"changed\": {\"fields\": [\"DepartmentId\"]}}]',14,1),(31,'2022-12-18 22:52:03.758057','2','гуманітарний',1,'[{\"added\": {}}]',9,1),(32,'2022-12-18 22:52:45.235599','2','Українська мова (за професійним спрямуванням)',1,'[{\"added\": {}}]',14,1),(33,'2022-12-18 22:53:51.484137','4','спецкурс',1,'[{\"added\": {}}]',7,1),(34,'2022-12-18 22:54:04.492374','3','Методи обчислень',1,'[{\"added\": {}}]',14,1),(35,'2022-12-18 22:54:48.866187','4','Технології створення програмних продуктів',1,'[{\"added\": {}}]',14,1),(36,'2022-12-18 22:56:32.865707','1','015.39 Професійна освіта (Цифрові технології)',1,'[{\"added\": {}}]',10,1),(37,'2022-12-18 22:56:38.969461','1','ЦТ-2020',1,'[{\"added\": {}}]',11,1),(38,'2022-12-18 22:57:20.420218','1','EducationProgramMainSubject object (1)',1,'[{\"added\": {}}]',17,1),(39,'2022-12-18 23:02:46.976541','3','ВК1.1 Методи обчислень',1,'[{\"added\": {}}]',18,1),(40,'2022-12-18 23:03:01.277011','4','ВК1.2 Технології створення програмних продуктів',1,'[{\"added\": {}}]',18,1),(41,'2022-12-18 23:04:43.728446','1','panchenko',1,'[{\"added\": {}}]',15,1),(42,'2022-12-18 23:05:32.305909','1','panchenko Технології створення програмних продуктів (2 семестр)',1,'[{\"added\": {}}]',16,1),(43,'2022-12-20 06:50:15.230553','4','Технології створення програмних продуктів',2,'[{\"changed\": {\"fields\": [\"DepartmentId\"]}}]',14,1),(44,'2022-12-20 07:27:44.172985','5','Історія  та культура України',1,'[{\"added\": {}}]',14,1),(45,'2022-12-20 07:35:18.009034','6','Історія  та культура України',1,'[{\"added\": {}}]',14,1),(46,'2022-12-20 07:35:20.890111','2','ОК02 Історія  та культура України',1,'[{\"added\": {}}]',17,1),(47,'2022-12-20 07:36:47.437134','7','Іноземна мов',1,'[{\"added\": {}}]',14,1),(48,'2022-12-20 07:37:03.067858','3','ОК03 Іноземна мов',1,'[{\"added\": {}}]',17,1),(49,'2022-12-20 07:40:41.959122','3','Право',1,'[{\"added\": {}}]',9,1),(50,'2022-12-20 07:40:52.744237','3','право',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(51,'2022-12-20 07:41:25.273566','4','соціально-економічний',1,'[{\"added\": {}}]',9,1),(52,'2022-12-20 07:41:41.964778','8','Філософія',1,'[{\"added\": {}}]',14,1),(53,'2022-12-20 07:41:48.710575','4','ОК04 Філософія',1,'[{\"added\": {}}]',17,1),(54,'2022-12-20 07:42:40.468271','5','інозені мови',1,'[{\"added\": {}}]',9,1),(55,'2022-12-20 07:42:44.321958','3','ОК03 Іноземна мов',2,'[]',17,1),(56,'2022-12-20 07:44:21.145921','6','соціально-психологічний',1,'[{\"added\": {}}]',9,1),(57,'2022-12-20 07:44:37.849523','9','Вища математика',1,'[{\"added\": {}}]',14,1),(58,'2022-12-20 07:44:45.138859','5','ОК05 Вища математика',1,'[{\"added\": {}}]',17,1),(59,'2022-12-20 07:48:29.481889','5','ОК05 Вища математика',2,'[]',17,1),(60,'2022-12-20 07:48:35.560050','4','ОК04 Філософія',2,'[{\"changed\": {\"fields\": [\"Semestr\"]}}]',17,1),(61,'2022-12-20 07:48:41.423560','1','ОК01 Українська мова (за професійним спрямуванням)',2,'[{\"changed\": {\"fields\": [\"Semestr\"]}}]',17,1),(62,'2022-12-20 07:49:35.286395','10','Комп\'ютерна дискретна математика',1,'[{\"added\": {}}]',14,1),(63,'2022-12-20 07:49:49.079978','6','ОК06 Комп\'ютерна дискретна математика',1,'[{\"added\": {}}]',17,1),(64,'2022-12-20 20:34:59.345179','2','ОК02 Історія  та культура України',2,'[]',17,1),(65,'2022-12-20 20:41:41.015135','6','Історія  та культура України',3,'',14,1),(66,'2022-12-20 23:02:28.208499','3','вільний вибір',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1),(67,'2022-12-20 23:02:49.074189','1','загальної підготовки',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1),(68,'2022-12-20 23:02:56.119275','4','спецкурс',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,1),(69,'2022-12-20 23:03:22.730209','2','фахова підготовка',2,'[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]',7,1),(70,'2022-12-20 23:03:55.076639','1','загальна підготовка',2,'[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]',7,1),(71,'2022-12-20 23:06:02.899190','3','вільний вибір',2,'[]',7,1),(72,'2022-12-20 23:06:06.383350','2','фахова підготовка',2,'[]',7,1),(73,'2022-12-20 23:06:10.273662','4','спецкурс',2,'[]',7,1),(74,'2022-12-20 23:06:13.708736','1','загальна підготовка',2,'[]',7,1),(75,'2022-12-21 00:41:26.232149','3','Вільний вибір',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(76,'2022-12-21 00:41:31.679336','1','загальна підготовка',2,'[]',7,1),(77,'2022-12-21 00:41:37.368786','3','вільний вибір',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(78,'2022-12-21 00:41:54.270891','2','ОК02 Історія  та культура України',2,'[{\"changed\": {\"fields\": [\"Mainsubject\"]}}]',17,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'indplan','category_subject'),(8,'indplan','department'),(9,'indplan','direction_subject'),(10,'indplan','educationprogram'),(17,'indplan','educationprogrammainsubject'),(18,'indplan','educationprogramselectivesubject'),(11,'indplan','groupstudent'),(16,'indplan','individualplan'),(12,'indplan','institute'),(15,'indplan','student'),(14,'indplan','subject'),(13,'indplan','teacher'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-12-18 21:43:37.513299'),(2,'auth','0001_initial','2022-12-18 21:43:38.819807'),(3,'admin','0001_initial','2022-12-18 21:43:39.060164'),(4,'admin','0002_logentry_remove_auto_add','2022-12-18 21:43:39.076123'),(5,'admin','0003_logentry_add_action_flag_choices','2022-12-18 21:43:39.091082'),(6,'contenttypes','0002_remove_content_type_name','2022-12-18 21:43:39.297533'),(7,'auth','0002_alter_permission_name_max_length','2022-12-18 21:43:39.433168'),(8,'auth','0003_alter_user_email_max_length','2022-12-18 21:43:39.554842'),(9,'auth','0004_alter_user_username_opts','2022-12-18 21:43:39.574789'),(10,'auth','0005_alter_user_last_login_null','2022-12-18 21:43:39.724387'),(11,'auth','0006_require_contenttypes_0002','2022-12-18 21:43:39.734361'),(12,'auth','0007_alter_validators_add_error_messages','2022-12-18 21:43:39.755305'),(13,'auth','0008_alter_user_username_max_length','2022-12-18 21:43:39.950783'),(14,'auth','0009_alter_user_last_name_max_length','2022-12-18 21:43:40.195129'),(15,'auth','0010_alter_group_name_max_length','2022-12-18 21:43:40.286883'),(16,'auth','0011_update_proxy_permissions','2022-12-18 21:43:40.308825'),(17,'auth','0012_alter_user_first_name_max_length','2022-12-18 21:43:40.451444'),(18,'indplan','0001_initial','2022-12-18 21:43:43.256942'),(19,'sessions','0001_initial','2022-12-18 21:43:43.315784'),(20,'indplan','0002_alter_subject_departmentid','2022-12-18 21:47:05.904653'),(21,'indplan','0003_alter_institute_fullname','2022-12-18 21:58:31.232668'),(22,'indplan','0004_alter_department_name','2022-12-18 22:00:10.232565'),(23,'indplan','0005_alter_department_name','2022-12-18 22:04:27.908615'),(24,'indplan','0006_educationprogrammainsubject_code_subject_and_more','2022-12-18 22:46:23.346610'),(25,'indplan','0007_alter_subject_name','2022-12-18 22:51:25.525053'),(26,'indplan','0008_educationprogrammainsubject_semestr_and_more','2022-12-20 06:29:46.181249'),(27,'indplan','0009_individualplan_code_subject','2022-12-20 06:57:23.448260'),(28,'indplan','0010_alter_groupstudent_slug_alter_subject_slug','2022-12-20 20:42:10.399881'),(29,'indplan','0011_category_subject_slug','2022-12-20 23:01:41.521207'),(30,'indplan','0012_alter_category_subject_slug','2022-12-20 23:06:36.704151');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('jbv7slddawtzyyc9i8utrvow2apq75qj','.eJxVjDsOwjAQBe_iGlle_BUlPWew1us1DiBbipMq4u4QKQW0b2beJiKuS43r4DlOWVzEWZx-t4T05LaD_MB275J6W-YpyV2RBx3y1jO_rof7d1Bx1G-NToNC67mg0gAUgIiKBnIIZLNT1kDmzMjoCylgxZwSaG-MCoaCeH8A-uk4lA:1p7nSl:nrPXeTqIkEIXUkQl2_js2rL6HrpY6Bbrz6hor5r5ugg','2023-01-04 01:00:03.888031'),('mniyh2k3680551jk42k8z4stwuekt5un','.eJxVjEEOwiAQRe_C2hAGihSX7nsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERIE6_G2F8pLoDvmO9NRlbXZeZ5K7Ig3Y5NU7P6-H-HRTs5VsnnUbKeI6OwJHyqAbtEIzP0bPylpEGnQFMBh49O8smIXgAsjlHBvH-APoiOIc:1p72R8:K_MDKhhIm0l4SuQNtlfFwxRVia3Ce7tHXK1Hs891HRE','2023-01-01 22:47:14.090254');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_category_subject`
--

DROP TABLE IF EXISTS `indplan_category_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_category_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indplan_category_subject_slug_db88d337` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_category_subject`
--

LOCK TABLES `indplan_category_subject` WRITE;
/*!40000 ALTER TABLE `indplan_category_subject` DISABLE KEYS */;
INSERT INTO `indplan_category_subject` VALUES (1,'загальна підготовка','zagalna_pidgotovka'),(2,'фахова підготовка','fahova_pidgotovka'),(3,'вільний вибір','vilniy_vibir'),(4,'спецкурс','speckurs');
/*!40000 ALTER TABLE `indplan_category_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_department`
--

DROP TABLE IF EXISTS `indplan_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `institute_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indplan_department_institute_id_34870c03_fk_indplan_institute_id` (`institute_id`),
  KEY `indplan_department_slug_f3ff402d` (`slug`),
  CONSTRAINT `indplan_department_institute_id_34870c03_fk_indplan_institute_id` FOREIGN KEY (`institute_id`) REFERENCES `indplan_institute` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_department`
--

LOCK TABLES `indplan_department` WRITE;
/*!40000 ALTER TABLE `indplan_department` DISABLE KEYS */;
INSERT INTO `indplan_department` VALUES (1,'кафедра журналістики та українознавства','kaf_j_and_ukr',1),(2,'кафедра іноземних мов','inozemnih_mov',1),(3,'кафедра філософії та культорології','filosofia_ta_kultura',1),(4,'кафедра вищої математики','vm',2),(5,'кафедра комп\'ютерних технологій та економічної кібернетики','ktek',2),(6,'кафедра суспільних дисциплін','suspilnih_disciplin',1),(7,'кафедра екології, технології захисту навколишнього середовища та лісового господ','kafedra_ekilogii',3),(8,'кафедра правових природоохоронних дисциплін','kaf_pravovih_disciplin',4);
/*!40000 ALTER TABLE `indplan_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_direction_subject`
--

DROP TABLE IF EXISTS `indplan_direction_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_direction_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_direction_subject`
--

LOCK TABLES `indplan_direction_subject` WRITE;
/*!40000 ALTER TABLE `indplan_direction_subject` DISABLE KEYS */;
INSERT INTO `indplan_direction_subject` VALUES (1,'технологічний'),(2,'гуманітарний'),(3,'право'),(4,'соціально-економічний'),(5,'інозені мови'),(6,'соціально-психологічний');
/*!40000 ALTER TABLE `indplan_direction_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_educationprogram`
--

DROP TABLE IF EXISTS `indplan_educationprogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_educationprogram` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `date_create` date NOT NULL,
  `direction_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indplan_educationpro_direction_id_578bafb9_fk_indplan_d` (`direction_id`),
  KEY `indplan_educationprogram_slug_004410ae` (`slug`),
  CONSTRAINT `indplan_educationpro_direction_id_578bafb9_fk_indplan_d` FOREIGN KEY (`direction_id`) REFERENCES `indplan_direction_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_educationprogram`
--

LOCK TABLES `indplan_educationprogram` WRITE;
/*!40000 ALTER TABLE `indplan_educationprogram` DISABLE KEYS */;
INSERT INTO `indplan_educationprogram` VALUES (1,'Професійна освіта (Цифрові технології)','prof_osvita_cifrivi_tehnologii','015.39','2020-09-01',1);
/*!40000 ALTER TABLE `indplan_educationprogram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_educationprogrammainsubject`
--

DROP TABLE IF EXISTS `indplan_educationprogrammainsubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_educationprogrammainsubject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `educationProg_id` bigint(20) DEFAULT NULL,
  `mainsubject_id` bigint(20) DEFAULT NULL,
  `code_subject` varchar(10) DEFAULT NULL,
  `semestr` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indplan_educationpro_educationProg_id_e0c488f8_fk_indplan_e` (`educationProg_id`),
  KEY `indplan_educationpro_mainsubject_id_8ca24d09_fk_indplan_s` (`mainsubject_id`),
  CONSTRAINT `indplan_educationpro_educationProg_id_e0c488f8_fk_indplan_e` FOREIGN KEY (`educationProg_id`) REFERENCES `indplan_educationprogram` (`id`),
  CONSTRAINT `indplan_educationpro_mainsubject_id_8ca24d09_fk_indplan_s` FOREIGN KEY (`mainsubject_id`) REFERENCES `indplan_subject` (`id`),
  CONSTRAINT `indplan_educationprogrammainsubject_chk_1` CHECK ((`semestr` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_educationprogrammainsubject`
--

LOCK TABLES `indplan_educationprogrammainsubject` WRITE;
/*!40000 ALTER TABLE `indplan_educationprogrammainsubject` DISABLE KEYS */;
INSERT INTO `indplan_educationprogrammainsubject` VALUES (1,1,2,'ОК01',2),(2,1,5,'ОК02',1),(3,1,7,'ОК03',1),(4,1,8,'ОК04',5),(5,1,9,'ОК05',1),(6,1,10,'ОК06',1);
/*!40000 ALTER TABLE `indplan_educationprogrammainsubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_educationprogramselectivesubject`
--

DROP TABLE IF EXISTS `indplan_educationprogramselectivesubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_educationprogramselectivesubject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_subject` varchar(10) DEFAULT NULL,
  `number_from_two` smallint(5) unsigned NOT NULL,
  `educationProg_id` bigint(20) DEFAULT NULL,
  `selectivesubject_id` bigint(20) DEFAULT NULL,
  `semestr` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indplan_educationpro_educationProg_id_2599868a_fk_indplan_e` (`educationProg_id`),
  KEY `indplan_educationpro_selectivesubject_id_ceea9ef6_fk_indplan_s` (`selectivesubject_id`),
  CONSTRAINT `indplan_educationpro_educationProg_id_2599868a_fk_indplan_e` FOREIGN KEY (`educationProg_id`) REFERENCES `indplan_educationprogram` (`id`),
  CONSTRAINT `indplan_educationpro_selectivesubject_id_ceea9ef6_fk_indplan_s` FOREIGN KEY (`selectivesubject_id`) REFERENCES `indplan_subject` (`id`),
  CONSTRAINT `indplan_educationprogramselectivesubject_chk_1` CHECK ((`number_from_two` >= 0)),
  CONSTRAINT `indplan_educationprogramselectivesubject_chk_2` CHECK ((`semestr` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_educationprogramselectivesubject`
--

LOCK TABLES `indplan_educationprogramselectivesubject` WRITE;
/*!40000 ALTER TABLE `indplan_educationprogramselectivesubject` DISABLE KEYS */;
INSERT INTO `indplan_educationprogramselectivesubject` VALUES (3,'ВК1',1,1,3,1),(4,'ВК1',2,1,4,1);
/*!40000 ALTER TABLE `indplan_educationprogramselectivesubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_groupstudent`
--

DROP TABLE IF EXISTS `indplan_groupstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_groupstudent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `education_id` bigint(20) NOT NULL,
  `institute_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `indplan_groupstudent_slug_207afe9b_uniq` (`slug`),
  KEY `indplan_groupstudent_institute_id_93253ef5_fk_indplan_i` (`institute_id`),
  KEY `indplan_groupstudent_education_id_786c24f5_fk_indplan_e` (`education_id`),
  CONSTRAINT `indplan_groupstudent_education_id_786c24f5_fk_indplan_e` FOREIGN KEY (`education_id`) REFERENCES `indplan_educationprogram` (`id`),
  CONSTRAINT `indplan_groupstudent_institute_id_93253ef5_fk_indplan_i` FOREIGN KEY (`institute_id`) REFERENCES `indplan_institute` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_groupstudent`
--

LOCK TABLES `indplan_groupstudent` WRITE;
/*!40000 ALTER TABLE `indplan_groupstudent` DISABLE KEYS */;
INSERT INTO `indplan_groupstudent` VALUES (1,'ЦТ-2020','ct2020',1,2);
/*!40000 ALTER TABLE `indplan_groupstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_individualplan`
--

DROP TABLE IF EXISTS `indplan_individualplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_individualplan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `semestr` int(10) unsigned NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `code_subject` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indplan_individualplan_student_id_0485d1fd_fk_indplan_student_id` (`student_id`),
  KEY `indplan_individualplan_subject_id_f1305982_fk_indplan_subject_id` (`subject_id`),
  CONSTRAINT `indplan_individualplan_student_id_0485d1fd_fk_indplan_student_id` FOREIGN KEY (`student_id`) REFERENCES `indplan_student` (`id`),
  CONSTRAINT `indplan_individualplan_subject_id_f1305982_fk_indplan_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `indplan_subject` (`id`),
  CONSTRAINT `indplan_individualplan_chk_1` CHECK ((`semestr` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_individualplan`
--

LOCK TABLES `indplan_individualplan` WRITE;
/*!40000 ALTER TABLE `indplan_individualplan` DISABLE KEYS */;
INSERT INTO `indplan_individualplan` VALUES (1,2,1,4,'ВК07');
/*!40000 ALTER TABLE `indplan_individualplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_institute`
--

DROP TABLE IF EXISTS `indplan_institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_institute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(60) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_institute`
--

LOCK TABLES `indplan_institute` WRITE;
/*!40000 ALTER TABLE `indplan_institute` DISABLE KEYS */;
INSERT INTO `indplan_institute` VALUES (1,'Інститут економіки та менеджменту','ІЕМ','institut_econom_ta_biznesu'),(2,'Інститут автоматики, кібернетики та обчислювальної техніки','АКОТ','acot'),(3,'Інститут агроекології та землеустрою','ІАЗ','agroekoloii_ta_zemleustroy'),(4,'Інститут права','ІП','institut_prava');
/*!40000 ALTER TABLE `indplan_institute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_student`
--

DROP TABLE IF EXISTS `indplan_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(100) NOT NULL,
  `student_ID` varchar(20) NOT NULL,
  `student_slug` varchar(50) NOT NULL,
  `year_entered` date NOT NULL,
  `group_st_id` bigint(20) NOT NULL,
  `user_student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_ID` (`student_ID`),
  UNIQUE KEY `student_slug` (`student_slug`),
  UNIQUE KEY `user_student_id` (`user_student_id`),
  UNIQUE KEY `indplan_student_user_student_id_group_st_id_d1168268_uniq` (`user_student_id`,`group_st_id`),
  KEY `indplan_student_group_st_id_e01513a2_fk_indplan_groupstudent_id` (`group_st_id`),
  CONSTRAINT `indplan_student_group_st_id_e01513a2_fk_indplan_groupstudent_id` FOREIGN KEY (`group_st_id`) REFERENCES `indplan_groupstudent` (`id`),
  CONSTRAINT `indplan_student_user_student_id_9cf2f783_fk_auth_user_id` FOREIGN KEY (`user_student_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_student`
--

LOCK TABLES `indplan_student` WRITE;
/*!40000 ALTER TABLE `indplan_student` DISABLE KEYS */;
INSERT INTO `indplan_student` VALUES (1,'','ct01','panchenko','2020-09-01',1,2);
/*!40000 ALTER TABLE `indplan_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_subject`
--

DROP TABLE IF EXISTS `indplan_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `credit` double NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `departmentId_id` bigint(20) DEFAULT NULL,
  `direction_id` bigint(20) DEFAULT NULL,
  `teacherId_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indplan_subject_slug_6974ca3d_uniq` (`slug`),
  KEY `indplan_subject_category_id_fa756dae_fk_indplan_c` (`category_id`),
  KEY `indplan_subject_direction_id_6c7ce0bf_fk_indplan_d` (`direction_id`),
  KEY `indplan_subject_teacherId_id_ca3cc867_fk_indplan_teacher_id` (`teacherId_id`),
  KEY `indplan_subject_departmentId_id_4de8ca64_fk_indplan_d` (`departmentId_id`),
  CONSTRAINT `indplan_subject_category_id_fa756dae_fk_indplan_c` FOREIGN KEY (`category_id`) REFERENCES `indplan_category_subject` (`id`),
  CONSTRAINT `indplan_subject_departmentId_id_4de8ca64_fk_indplan_d` FOREIGN KEY (`departmentId_id`) REFERENCES `indplan_department` (`id`),
  CONSTRAINT `indplan_subject_direction_id_6c7ce0bf_fk_indplan_d` FOREIGN KEY (`direction_id`) REFERENCES `indplan_direction_subject` (`id`),
  CONSTRAINT `indplan_subject_teacherId_id_ca3cc867_fk_indplan_teacher_id` FOREIGN KEY (`teacherId_id`) REFERENCES `indplan_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_subject`
--

LOCK TABLES `indplan_subject` WRITE;
/*!40000 ALTER TABLE `indplan_subject` DISABLE KEYS */;
INSERT INTO `indplan_subject` VALUES (1,'Електроніка та мікропроцесорні','elektriniki_ta_micropro',3,2,5,1,NULL),(2,'Українська мова (за професійним спрямуванням)','ukr_mova',3,1,1,2,NULL),(3,'Методи обчислень','metodi_obchislen',3,3,NULL,1,NULL),(4,'Технології створення програмних продуктів','tehn_stvorennya_pp',3,3,5,1,NULL),(5,'Історія  та культура України','istoriya_ukr',4,1,1,2,NULL),(7,'Іноземна мов','inozemna',5,1,2,2,NULL),(8,'Філософія','filosofiya',3,1,3,2,NULL),(9,'Вища математика','math',12,1,4,1,NULL),(10,'Комп\'ютерна дискретна математика','kdmath',4,1,5,1,NULL);
/*!40000 ALTER TABLE `indplan_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indplan_teacher`
--

DROP TABLE IF EXISTS `indplan_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indplan_teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(100) NOT NULL,
  `teacher_ID` varchar(20) NOT NULL,
  `academic_rank` varchar(100) NOT NULL,
  `teacher_slug` varchar(50) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_ID` (`teacher_ID`),
  UNIQUE KEY `teacher_slug` (`teacher_slug`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `indplan_teacher_teacher_ID_department_id_6103fbe0_uniq` (`teacher_ID`,`department_id`),
  KEY `indplan_teacher_department_id_d63d2cde_fk_indplan_department_id` (`department_id`),
  CONSTRAINT `indplan_teacher_department_id_d63d2cde_fk_indplan_department_id` FOREIGN KEY (`department_id`) REFERENCES `indplan_department` (`id`),
  CONSTRAINT `indplan_teacher_user_id_7c0266bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indplan_teacher`
--

LOCK TABLES `indplan_teacher` WRITE;
/*!40000 ALTER TABLE `indplan_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `indplan_teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-21  3:33:38
