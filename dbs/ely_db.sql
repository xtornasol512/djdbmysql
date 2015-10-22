-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ely_db
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add productor',7,'add_productor'),(20,'Can change productor',7,'change_productor'),(21,'Can delete productor',7,'delete_productor'),(22,'Can add hidroelectrica',8,'add_hidroelectrica'),(23,'Can change hidroelectrica',8,'change_hidroelectrica'),(24,'Can delete hidroelectrica',8,'delete_hidroelectrica'),(25,'Can add solar',9,'add_solar'),(26,'Can change solar',9,'change_solar'),(27,'Can delete solar',9,'delete_solar'),(28,'Can add termica',10,'add_termica'),(29,'Can change termica',10,'change_termica'),(30,'Can delete termica',10,'delete_termica'),(31,'Can add nuclear',11,'add_nuclear'),(32,'Can change nuclear',11,'change_nuclear'),(33,'Can delete nuclear',11,'delete_nuclear'),(34,'Can add suministrador',12,'add_suministrador'),(35,'Can change suministrador',12,'change_suministrador'),(36,'Can delete suministrador',12,'delete_suministrador'),(37,'Can add transportista',13,'add_transportista'),(38,'Can change transportista',13,'change_transportista'),(39,'Can delete transportista',13,'delete_transportista'),(40,'Can add compra_de_ plutonio',14,'add_compra_de_plutonio'),(41,'Can change compra_de_ plutonio',14,'change_compra_de_plutonio'),(42,'Can delete compra_de_ plutonio',14,'delete_compra_de_plutonio'),(43,'Can add estacion primaria',15,'add_estacionprimaria'),(44,'Can change estacion primaria',15,'change_estacionprimaria'),(45,'Can delete estacion primaria',15,'delete_estacionprimaria'),(46,'Can add energia producida diaria',16,'add_energiaproducidadiaria'),(47,'Can change energia producida diaria',16,'change_energiaproducidadiaria'),(48,'Can delete energia producida diaria',16,'delete_energiaproducidadiaria'),(49,'Can add red distribucion',17,'add_reddistribucion'),(50,'Can change red distribucion',17,'change_reddistribucion'),(51,'Can delete red distribucion',17,'delete_reddistribucion'),(52,'Can add compania electrica',18,'add_companiaelectrica'),(53,'Can change compania electrica',18,'change_companiaelectrica'),(54,'Can delete compania electrica',18,'delete_companiaelectrica'),(55,'Can add envio energia extra',19,'add_envioenergiaextra'),(56,'Can change envio energia extra',19,'change_envioenergiaextra'),(57,'Can delete envio energia extra',19,'delete_envioenergiaextra'),(58,'Can add linea',20,'add_linea'),(59,'Can change linea',20,'change_linea'),(60,'Can delete linea',20,'delete_linea'),(61,'Can add subestacion',21,'add_subestacion'),(62,'Can change subestacion',21,'change_subestacion'),(63,'Can delete subestacion',21,'delete_subestacion'),(64,'Can add zona servicio',22,'add_zonaservicio'),(65,'Can change zona servicio',22,'change_zonaservicio'),(66,'Can delete zona servicio',22,'delete_zonaservicio'),(67,'Can add provincia',23,'add_provincia'),(68,'Can change provincia',23,'change_provincia'),(69,'Can delete provincia',23,'delete_provincia');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$TTZw9s8xNsjH$cERUzAsyxiEhjf/s7QiMyrOdFe+u+pqMzp9rr9WdWp4=','2015-08-15 17:02:00',1,'cxuko','','','x@x.com',1,1,'2015-08-15 17:01:25');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
-- Table structure for table `distribucion_companiaelectrica`
--

DROP TABLE IF EXISTS `distribucion_companiaelectrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_companiaelectrica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_companiaelectrica`
--

LOCK TABLES `distribucion_companiaelectrica` WRITE;
/*!40000 ALTER TABLE `distribucion_companiaelectrica` DISABLE KEYS */;
INSERT INTO `distribucion_companiaelectrica` VALUES (1,'Electricité de France SA (EDF)'),(2,'Enel – Italia'),(3,'E.ON – Alemania'),(4,'Iberdrola – España');
/*!40000 ALTER TABLE `distribucion_companiaelectrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_companiaelectrica_redes_distribucion_propietarias`
--

DROP TABLE IF EXISTS `distribucion_companiaelectrica_redes_distribucion_propietarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_companiaelectrica_redes_distribucion_propietarias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companiaelectrica_id` int(11) NOT NULL,
  `reddistribucion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companiaelectrica_id` (`companiaelectrica_id`,`reddistribucion_id`),
  KEY `D4d2a334cfc4918283583d04a9fb8777` (`reddistribucion_id`),
  CONSTRAINT `D0dfa2d8338874c80716ebec6b45a379` FOREIGN KEY (`companiaelectrica_id`) REFERENCES `distribucion_companiaelectrica` (`id`),
  CONSTRAINT `D4d2a334cfc4918283583d04a9fb8777` FOREIGN KEY (`reddistribucion_id`) REFERENCES `distribucion_reddistribucion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_companiaelectrica_redes_distribucion_propietarias`
--

LOCK TABLES `distribucion_companiaelectrica_redes_distribucion_propietarias` WRITE;
/*!40000 ALTER TABLE `distribucion_companiaelectrica_redes_distribucion_propietarias` DISABLE KEYS */;
INSERT INTO `distribucion_companiaelectrica_redes_distribucion_propietarias` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,3),(5,3,4),(6,4,1),(7,4,2);
/*!40000 ALTER TABLE `distribucion_companiaelectrica_redes_distribucion_propietarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_energiaproducidadiaria`
--

DROP TABLE IF EXISTS `distribucion_energiaproducidadiaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_energiaproducidadiaria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `estacion_primaria_id` int(11) NOT NULL,
  `productor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distribucion_energiaproducidadiaria_27e8ae54` (`estacion_primaria_id`),
  KEY `distribucion_energiaproducidadiaria_b6090adb` (`productor_id`),
  CONSTRAINT `cf78b081d45e620e3a85566ebeda06b2` FOREIGN KEY (`estacion_primaria_id`) REFERENCES `distribucion_estacionprimaria` (`id`),
  CONSTRAINT `distribucio_productor_id_afc2c59ce506c4c_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_energiaproducidadiaria`
--

LOCK TABLES `distribucion_energiaproducidadiaria` WRITE;
/*!40000 ALTER TABLE `distribucion_energiaproducidadiaria` DISABLE KEYS */;
INSERT INTO `distribucion_energiaproducidadiaria` VALUES (1,20000,'2015-03-16 02:54:02',1,5),(2,30000,'2015-03-17 02:54:26',2,4),(3,30000,'2015-03-17 02:54:26',2,1);
/*!40000 ALTER TABLE `distribucion_energiaproducidadiaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_envioenergiaextra`
--

DROP TABLE IF EXISTS `distribucion_envioenergiaextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_envioenergiaextra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volumen_energia` double NOT NULL,
  `red_enviante_id` int(11) NOT NULL,
  `red_receptora_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distribucion_envioenergiaextra_38772411` (`red_enviante_id`),
  KEY `distribucion_envioenergiaextra_578f30de` (`red_receptora_id`),
  CONSTRAINT `a301046038de7316afbe6c9f08a9a2cc` FOREIGN KEY (`red_receptora_id`) REFERENCES `distribucion_reddistribucion` (`id`),
  CONSTRAINT `D2d28db66d8759fd38f6b0a57c3e123a` FOREIGN KEY (`red_enviante_id`) REFERENCES `distribucion_reddistribucion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_envioenergiaextra`
--

LOCK TABLES `distribucion_envioenergiaextra` WRITE;
/*!40000 ALTER TABLE `distribucion_envioenergiaextra` DISABLE KEYS */;
INSERT INTO `distribucion_envioenergiaextra` VALUES (1,300.2,1,2),(2,400.4,2,3);
/*!40000 ALTER TABLE `distribucion_envioenergiaextra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_estacionprimaria`
--

DROP TABLE IF EXISTS `distribucion_estacionprimaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_estacionprimaria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `num_transformadores` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_estacionprimaria`
--

LOCK TABLES `distribucion_estacionprimaria` WRITE;
/*!40000 ALTER TABLE `distribucion_estacionprimaria` DISABLE KEYS */;
INSERT INTO `distribucion_estacionprimaria` VALUES (1,'Enel – Italia',80),(2,'Estacion Primaria 5',70),(3,'Estacion Primaria 3',45),(4,'Estacion Primaria 1',50),(5,'Estacion Primaria 4',45);
/*!40000 ALTER TABLE `distribucion_estacionprimaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_linea`
--

DROP TABLE IF EXISTS `distribucion_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_linea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_linea` varchar(10) NOT NULL,
  `red_distribucion_perteneciente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distribucion_linea_81942fa5` (`red_distribucion_perteneciente_id`),
  CONSTRAINT `aff5092e4d2a651490dcfd005fcb90f6` FOREIGN KEY (`red_distribucion_perteneciente_id`) REFERENCES `distribucion_reddistribucion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_linea`
--

LOCK TABLES `distribucion_linea` WRITE;
/*!40000 ALTER TABLE `distribucion_linea` DISABLE KEYS */;
INSERT INTO `distribucion_linea` VALUES (1,'52300',1),(2,'52400',2),(3,'52500',3),(4,'52600',4);
/*!40000 ALTER TABLE `distribucion_linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_provincia`
--

DROP TABLE IF EXISTS `distribucion_provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `zona_servicio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distribucion_provincia_1546aca2` (`zona_servicio_id`),
  CONSTRAINT `D4ed492e1793ad902b3114d1bdd3ca2c` FOREIGN KEY (`zona_servicio_id`) REFERENCES `distribucion_zonaservicio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_provincia`
--

LOCK TABLES `distribucion_provincia` WRITE;
/*!40000 ALTER TABLE `distribucion_provincia` DISABLE KEYS */;
INSERT INTO `distribucion_provincia` VALUES (1,'89000','MICHIGAN',1),(2,'99008','ILLINOIS',2);
/*!40000 ALTER TABLE `distribucion_provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_reddistribucion`
--

DROP TABLE IF EXISTS `distribucion_reddistribucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_reddistribucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_red` int(11) NOT NULL,
  `cabezera_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `D3d59760c59e20dc7b83323a77ed9729` (`cabezera_id`),
  CONSTRAINT `D3d59760c59e20dc7b83323a77ed9729` FOREIGN KEY (`cabezera_id`) REFERENCES `distribucion_estacionprimaria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_reddistribucion`
--

LOCK TABLES `distribucion_reddistribucion` WRITE;
/*!40000 ALTER TABLE `distribucion_reddistribucion` DISABLE KEYS */;
INSERT INTO `distribucion_reddistribucion` VALUES (1,10001,1),(2,10002,2),(3,10003,3),(4,10004,4),(5,10005,5);
/*!40000 ALTER TABLE `distribucion_reddistribucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_subestacion`
--

DROP TABLE IF EXISTS `distribucion_subestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_subestacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linea_abastecimiento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `D12f669111d8ed01fb3cd0d14b29f7fe` (`linea_abastecimiento_id`),
  CONSTRAINT `D12f669111d8ed01fb3cd0d14b29f7fe` FOREIGN KEY (`linea_abastecimiento_id`) REFERENCES `distribucion_linea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_subestacion`
--

LOCK TABLES `distribucion_subestacion` WRITE;
/*!40000 ALTER TABLE `distribucion_subestacion` DISABLE KEYS */;
INSERT INTO `distribucion_subestacion` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `distribucion_subestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_zonaservicio`
--

DROP TABLE IF EXISTS `distribucion_zonaservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_zonaservicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumo_promedio` double NOT NULL,
  `consumidores_particulares` int(11) NOT NULL,
  `consumidores_empresas` int(11) NOT NULL,
  `consumidores_instituciones` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_zonaservicio`
--

LOCK TABLES `distribucion_zonaservicio` WRITE;
/*!40000 ALTER TABLE `distribucion_zonaservicio` DISABLE KEYS */;
INSERT INTO `distribucion_zonaservicio` VALUES (1,500.45,300,123,125),(2,700,450,100,110);
/*!40000 ALTER TABLE `distribucion_zonaservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribucion_zonaservicio_subestacion_distribuidora`
--

DROP TABLE IF EXISTS `distribucion_zonaservicio_subestacion_distribuidora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribucion_zonaservicio_subestacion_distribuidora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zonaservicio_id` int(11) NOT NULL,
  `subestacion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zonaservicio_id` (`zonaservicio_id`,`subestacion_id`),
  KEY `d_subestacion_id_3964033cb163a3d7_fk_distribucion_subestacion_id` (`subestacion_id`),
  CONSTRAINT `D4682a2bc27a1ec63234cd482e0896b7` FOREIGN KEY (`zonaservicio_id`) REFERENCES `distribucion_zonaservicio` (`id`),
  CONSTRAINT `d_subestacion_id_3964033cb163a3d7_fk_distribucion_subestacion_id` FOREIGN KEY (`subestacion_id`) REFERENCES `distribucion_subestacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribucion_zonaservicio_subestacion_distribuidora`
--

LOCK TABLES `distribucion_zonaservicio_subestacion_distribuidora` WRITE;
/*!40000 ALTER TABLE `distribucion_zonaservicio_subestacion_distribuidora` DISABLE KEYS */;
INSERT INTO `distribucion_zonaservicio_subestacion_distribuidora` VALUES (1,1,1),(2,2,1),(3,2,2);
/*!40000 ALTER TABLE `distribucion_zonaservicio_subestacion_distribuidora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-08-15 19:29:46','1','Planta H1',1,'',7,1),(2,'2015-08-16 01:21:11','2','Planta H2',1,'',7,1),(3,'2015-08-16 01:21:40','3','Planta T1',1,'',7,1),(4,'2015-08-16 01:22:13','4','Planta S1',1,'',7,1),(5,'2015-08-16 01:22:38','5','Planta N1',1,'',7,1),(6,'2015-08-16 01:27:25','1','Planta H1',1,'',8,1),(7,'2015-08-16 01:27:25','2','Planta H1',1,'',8,1),(8,'2015-08-16 01:28:21','1','Planta N1',1,'',11,1),(9,'2015-08-16 01:28:48','1','Planta T1',1,'',10,1),(10,'2015-08-16 01:29:32','1','Planta S1',1,'',9,1),(11,'2015-08-16 01:29:32','2','Planta S1',1,'',9,1),(12,'2015-08-16 01:29:58','1','Negrete',1,'',13,1),(13,'2015-08-16 01:30:13','2','Tum',1,'',13,1),(14,'2015-08-16 01:30:28','3','BSPJ',1,'',13,1),(15,'2015-08-16 01:30:38','4','Aguila',1,'',13,1),(16,'2015-08-16 01:30:49','5','Transervicio 2PJ',1,'',13,1),(17,'2015-08-16 01:31:23','1','Centro COGEMA de La Hague',1,'',12,1),(18,'2015-08-16 01:31:37','2','ENRESA',1,'',12,1),(19,'2015-08-16 01:32:00','3','FUA',1,'',12,1),(20,'2015-08-16 01:32:16','4','Malvési',1,'',12,1),(21,'2015-08-16 01:32:28','5','Whiteshell Laboratories.',1,'',12,1),(22,'2015-08-16 01:33:14','3','Planta H2',1,'',8,1),(23,'2015-08-16 01:33:52','6','Planta T2',1,'',7,1),(24,'2015-08-16 01:34:14','7','Planta S2',1,'',7,1),(25,'2015-08-16 01:34:36','8','Planta N2',1,'',7,1),(26,'2015-08-16 01:35:21','1','1800.0',1,'',14,1),(27,'2015-08-16 01:35:44','2','3490.0',1,'',14,1),(28,'2015-08-16 01:36:28','2','Planta N2',1,'',11,1),(29,'2015-08-16 01:37:49','3','2345.0',1,'',14,1),(30,'2015-08-16 01:39:50','1','Enel – Italia',1,'',15,1),(31,'2015-08-16 01:53:31','2','Estacion Primaria 5',1,'',15,1),(32,'2015-08-16 01:53:40','3','Estacion Primaria 3',1,'',15,1),(33,'2015-08-16 01:54:11','1','20000.0',1,'',16,1),(34,'2015-08-16 01:54:31','2','30000.0',1,'',16,1),(35,'2015-08-16 01:54:31','3','30000.0',1,'',16,1),(36,'2015-08-16 01:54:54','1','10001',1,'',17,1),(37,'2015-08-16 01:55:00','2','10002',1,'',17,1),(38,'2015-08-16 01:55:08','3','10003',1,'',17,1),(39,'2015-08-16 01:55:29','4','Estacion Primaria 1',1,'',15,1),(40,'2015-08-16 01:55:31','4','10004',1,'',17,1),(41,'2015-08-16 01:55:47','5','Estacion Primaria 4',1,'',15,1),(42,'2015-08-16 01:55:50','5','10005',1,'',17,1),(43,'2015-08-16 01:57:18','1','Electricité de France SA (EDF)',1,'',18,1),(44,'2015-08-16 01:57:25','2','Enel – Italia',1,'',18,1),(45,'2015-08-16 01:57:32','3','E.ON – Alemania',1,'',18,1),(46,'2015-08-16 01:57:38','4','Iberdrola – España',1,'',18,1),(47,'2015-08-16 01:58:01','1','300.2',1,'',19,1),(48,'2015-08-16 01:58:09','2','400.4',1,'',19,1),(49,'2015-08-16 01:58:29','1','52300',1,'',20,1),(50,'2015-08-16 01:58:36','2','52400',1,'',20,1),(51,'2015-08-16 01:58:44','3','52500',1,'',20,1),(52,'2015-08-16 01:58:53','4','52600',1,'',20,1),(53,'2015-08-16 02:00:41','1','52300',1,'',21,1),(54,'2015-08-16 02:00:44','2','52400',1,'',21,1),(55,'2015-08-16 02:00:46','3','52500',1,'',21,1),(56,'2015-08-16 02:00:49','4','52600',1,'',21,1),(57,'2015-08-16 02:01:54','1','500.45',1,'',22,1),(58,'2015-08-16 02:02:14','1','MICHIGAN',1,'',23,1),(59,'2015-08-16 02:03:12','2','700.0',1,'',22,1),(60,'2015-08-16 02:03:33','2','ILLINOIS',1,'',23,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'distribucion','companiaelectrica'),(16,'distribucion','energiaproducidadiaria'),(19,'distribucion','envioenergiaextra'),(15,'distribucion','estacionprimaria'),(20,'distribucion','linea'),(23,'distribucion','provincia'),(17,'distribucion','reddistribucion'),(21,'distribucion','subestacion'),(22,'distribucion','zonaservicio'),(14,'energia','compra_de_plutonio'),(8,'energia','hidroelectrica'),(11,'energia','nuclear'),(7,'energia','productor'),(9,'energia','solar'),(12,'energia','suministrador'),(10,'energia','termica'),(13,'energia','transportista'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-08-15 17:00:22'),(2,'auth','0001_initial','2015-08-15 17:00:26'),(3,'admin','0001_initial','2015-08-15 17:00:27'),(4,'contenttypes','0002_remove_content_type_name','2015-08-15 17:00:28'),(5,'auth','0002_alter_permission_name_max_length','2015-08-15 17:00:28'),(6,'auth','0003_alter_user_email_max_length','2015-08-15 17:00:28'),(7,'auth','0004_alter_user_username_opts','2015-08-15 17:00:28'),(8,'auth','0005_alter_user_last_login_null','2015-08-15 17:00:29'),(9,'auth','0006_require_contenttypes_0002','2015-08-15 17:00:29'),(10,'energia','0001_initial','2015-08-15 17:00:37'),(11,'distribucion','0001_initial','2015-08-15 17:00:46'),(12,'sessions','0001_initial','2015-08-15 17:00:46');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ybon1dxw2jgsz8nsa10ap5is1tcjsqf2','N2M0MWZiNjc3Y2ViOGYxODE3MzFjOTM4MzdhMWY2OTM3YzRhNzQ0Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNlZDY2YWZhZjk3ZmNiMTgxNWNmNTM1NThhZTU3OGIxNTYyMTcyYzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-08-29 17:02:00');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_compra_de_plutonio`
--

DROP TABLE IF EXISTS `energia_compra_de_plutonio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_compra_de_plutonio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `planta_nuclear_id` int(11) NOT NULL,
  `suministrador_id` int(11) NOT NULL,
  `transportista_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `energia_compra_de_plutonio_032223ff` (`planta_nuclear_id`),
  KEY `energia_compra_de_plutonio_4e371469` (`suministrador_id`),
  KEY `energia_compra_de_plutonio_ab76f6ea` (`transportista_id`),
  CONSTRAINT `energia_planta_nuclear_id_3d69156e145df3f2_fk_energia_nuclear_id` FOREIGN KEY (`planta_nuclear_id`) REFERENCES `energia_nuclear` (`id`),
  CONSTRAINT `en_suministrador_id_3dc7e02f811b5d30_fk_energia_suministrador_id` FOREIGN KEY (`suministrador_id`) REFERENCES `energia_suministrador` (`id`),
  CONSTRAINT `en_transportista_id_733089646b318240_fk_energia_transportista_id` FOREIGN KEY (`transportista_id`) REFERENCES `energia_transportista` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_compra_de_plutonio`
--

LOCK TABLES `energia_compra_de_plutonio` WRITE;
/*!40000 ALTER TABLE `energia_compra_de_plutonio` DISABLE KEYS */;
INSERT INTO `energia_compra_de_plutonio` VALUES (1,1800,'2015-05-26 01:35:01',1,1,1),(2,3490,'2015-06-05 01:35:35',1,5,3),(3,2345,'2015-05-09 01:37:29',2,2,4);
/*!40000 ALTER TABLE `energia_compra_de_plutonio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_hidroelectrica`
--

DROP TABLE IF EXISTS `energia_hidroelectrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_hidroelectrica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocupacion` varchar(50) NOT NULL,
  `capacidad_maxima` double NOT NULL,
  `num_turbinas` int(11) NOT NULL,
  `productor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `energia_hidroelectrica_b6090adb` (`productor_id`),
  CONSTRAINT `energia_hi_productor_id_6e57af1e7af687d9_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_hidroelectrica`
--

LOCK TABLES `energia_hidroelectrica` WRITE;
/*!40000 ALTER TABLE `energia_hidroelectrica` DISABLE KEYS */;
INSERT INTO `energia_hidroelectrica` VALUES (1,'1045',22500,70,1),(2,'1045',22500,70,1),(3,'4250',10200,50,2);
/*!40000 ALTER TABLE `energia_hidroelectrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_nuclear`
--

DROP TABLE IF EXISTS `energia_nuclear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_nuclear` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plutonio` double NOT NULL,
  `num_reactores` int(11) NOT NULL,
  `num_residuos` int(11) NOT NULL,
  `productor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `energia_nuclear_b6090adb` (`productor_id`),
  CONSTRAINT `energia_nu_productor_id_56e685477ec71164_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_nuclear`
--

LOCK TABLES `energia_nuclear` WRITE;
/*!40000 ALTER TABLE `energia_nuclear` DISABLE KEYS */;
INSERT INTO `energia_nuclear` VALUES (1,14.8,8,1500,5),(2,17.9,58,4500,8);
/*!40000 ALTER TABLE `energia_nuclear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_productor`
--

DROP TABLE IF EXISTS `energia_productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_productor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `produccion_media` double NOT NULL,
  `produccion_maxima` double NOT NULL,
  `f_entrada` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_productor`
--

LOCK TABLES `energia_productor` WRITE;
/*!40000 ALTER TABLE `energia_productor` DISABLE KEYS */;
INSERT INTO `energia_productor` VALUES (1,'Planta H1',179,200,'2015-03-15 18:00:00'),(2,'Planta H2',259,300,'2015-03-17 02:21:10'),(3,'Planta T1',220,250,'2015-03-21 02:21:39'),(4,'Planta S1',234,250,'2015-03-26 02:22:05'),(5,'Planta N1',78,100,'2015-03-31 02:22:36'),(6,'Planta T2',120,150,'2015-03-22 02:33:51'),(7,'Planta S2',890,900,'2015-03-27 02:34:13'),(8,'Planta N2',120,200,'2015-04-01 02:34:33');
/*!40000 ALTER TABLE `energia_productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_solar`
--

DROP TABLE IF EXISTS `energia_solar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_solar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_energia` varchar(20) NOT NULL,
  `num_paneles_solares` int(11) NOT NULL,
  `media_anual_hrs_sol` int(11) NOT NULL,
  `productor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `energia_so_productor_id_5e6c5da4a1c5f037_fk_energia_productor_id` (`productor_id`),
  CONSTRAINT `energia_so_productor_id_5e6c5da4a1c5f037_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_solar`
--

LOCK TABLES `energia_solar` WRITE;
/*!40000 ALTER TABLE `energia_solar` DISABLE KEYS */;
INSERT INTO `energia_solar` VALUES (1,'fotovoltaica',28,12,4),(2,'fotovoltaica',28,12,4);
/*!40000 ALTER TABLE `energia_solar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_suministrador`
--

DROP TABLE IF EXISTS `energia_suministrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_suministrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_suministrador`
--

LOCK TABLES `energia_suministrador` WRITE;
/*!40000 ALTER TABLE `energia_suministrador` DISABLE KEYS */;
INSERT INTO `energia_suministrador` VALUES (1,'Centro COGEMA de La Hague','Normandía'),(2,'ENRESA','España'),(3,'FUA','Andújar'),(4,'Malvési','Francia'),(5,'Whiteshell Laboratories.','Pinawa');
/*!40000 ALTER TABLE `energia_suministrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_suministrador_plantas_nucleares`
--

DROP TABLE IF EXISTS `energia_suministrador_plantas_nucleares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_suministrador_plantas_nucleares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suministrador_id` int(11) NOT NULL,
  `nuclear_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suministrador_id` (`suministrador_id`,`nuclear_id`),
  KEY `energia_sumini_nuclear_id_7ae853ce5388d3d1_fk_energia_nuclear_id` (`nuclear_id`),
  CONSTRAINT `energia_sumini_nuclear_id_7ae853ce5388d3d1_fk_energia_nuclear_id` FOREIGN KEY (`nuclear_id`) REFERENCES `energia_nuclear` (`id`),
  CONSTRAINT `en_suministrador_id_27cabdadd47dc7d3_fk_energia_suministrador_id` FOREIGN KEY (`suministrador_id`) REFERENCES `energia_suministrador` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_suministrador_plantas_nucleares`
--

LOCK TABLES `energia_suministrador_plantas_nucleares` WRITE;
/*!40000 ALTER TABLE `energia_suministrador_plantas_nucleares` DISABLE KEYS */;
INSERT INTO `energia_suministrador_plantas_nucleares` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1);
/*!40000 ALTER TABLE `energia_suministrador_plantas_nucleares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_termica`
--

DROP TABLE IF EXISTS `energia_termica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_termica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_hornos` int(11) NOT NULL,
  `volumen_carbon_consumido` double NOT NULL,
  `productor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `energia_te_productor_id_15e849de92744161_fk_energia_productor_id` (`productor_id`),
  CONSTRAINT `energia_te_productor_id_15e849de92744161_fk_energia_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `energia_productor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_termica`
--

LOCK TABLES `energia_termica` WRITE;
/*!40000 ALTER TABLE `energia_termica` DISABLE KEYS */;
INSERT INTO `energia_termica` VALUES (1,45,80,3);
/*!40000 ALTER TABLE `energia_termica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energia_transportista`
--

DROP TABLE IF EXISTS `energia_transportista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energia_transportista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energia_transportista`
--

LOCK TABLES `energia_transportista` WRITE;
/*!40000 ALTER TABLE `energia_transportista` DISABLE KEYS */;
INSERT INTO `energia_transportista` VALUES (1,'Negrete','Av. las Animas Col. Vella vista No. 23, Puebla.			'),(2,'Tum','Av. Azcapotzalco 308 Col. Angel Zimbrón Del. Azcapotzalco, México, DF'),(3,'BSPJ','1917 SN, Lomas de San Pedrito, 44100 Guadalajara, Jal.'),(4,'Aguila','Av de los Insurgentes Sur 1106, Benito Juárez,, Tlacoquemécatl, 03200 Ciudad de México, D.F.'),(5,'Transervicio 2PJ','Carretera a Zamora Km 2 Hermosillo, Sonora.');
/*!40000 ALTER TABLE `energia_transportista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-15 21:07:22
