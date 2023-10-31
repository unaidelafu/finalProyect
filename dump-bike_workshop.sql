-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bike_workshop
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(100) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Shimano'),(2,'SRAM'),(3,'Campagnolo'),(4,'FSA'),(5,'Race Face'),(6,'RockShox'),(7,'Fox'),(8,'Hope'),(9,'Mavic'),(10,'DT Swiss'),(11,'Continental'),(12,'Maxxis'),(13,'Trek'),(14,'Giant'),(15,'Specialized'),(16,'Cannondale'),(17,'Scott'),(18,'Bianchi'),(19,'Pinarello'),(20,'BH');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands_types`
--

DROP TABLE IF EXISTS `brands_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands_types` (
  `bt_id` int(11) NOT NULL AUTO_INCREMENT,
  `bt_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands_types`
--

LOCK TABLES `brands_types` WRITE;
/*!40000 ALTER TABLE `brands_types` DISABLE KEYS */;
INSERT INTO `brands_types` VALUES (1,'Components'),(2,'Bikes');
/*!40000 ALTER TABLE `brands_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_sid` varchar(100) DEFAULT NULL,
  `c_name_1` varchar(100) NOT NULL,
  `c_name_2` varchar(100) DEFAULT NULL,
  `c_status` enum('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `customers_un` (`c_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'B41275986','Rodrigo','Saiz','ACTIVE'),(2,'Z85747120','Ciclos','Garate','ACTIVE'),(3,'D85741025','Sofia','Torres','ACTIVE'),(4,'G88774496','Andoni','Ortuzar','ACTIVE'),(5,'P47105966','Guillermo','Tolosa','ACTIVE'),(6,'Z87412558','Nerea','Saiz','ACTIVE');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_sid` varchar(100) NOT NULL,
  `e_surname` varchar(100) NOT NULL,
  `e_name` varchar(100) NOT NULL,
  `e_type_id` int(11) NOT NULL,
  `e_status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `e_img_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `employees_FK` (`e_type_id`),
  CONSTRAINT `employees_FK` FOREIGN KEY (`e_type_id`) REFERENCES `employees_types` (`et_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'48712506Y','Ordorika','Albert',1,'ACTIVE',NULL),(2,'47598213G','Granja','Sofia',2,'ACTIVE',NULL),(3,'5784486R','Petreli','Peter',4,'ACTIVE',NULL),(4,'58741258E','Calvo','Jaime',3,'ACTIVE',NULL),(5,'99862541D','Manin','Nerea',3,'ACTIVE',NULL),(6,'75841201S','Prado','Robert',4,'ACTIVE',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_types`
--

DROP TABLE IF EXISTS `employees_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_types` (
  `et_id` int(11) NOT NULL AUTO_INCREMENT,
  `et_name` varchar(100) NOT NULL,
  `et_admin` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`et_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_types`
--

LOCK TABLES `employees_types` WRITE;
/*!40000 ALTER TABLE `employees_types` DISABLE KEYS */;
INSERT INTO `employees_types` VALUES (1,'Admin','1'),(2,'Receptionist','0'),(3,'Mechanic','0'),(4,'Seller','0');
/*!40000 ALTER TABLE `employees_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_wharehouse_id` int(11) NOT NULL DEFAULT 1,
  `i_p_id` int(11) NOT NULL,
  `i_qty` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`i_id`),
  KEY `inventory_FK` (`i_wharehouse_id`),
  KEY `inventory_FK_1` (`i_p_id`),
  CONSTRAINT `inventory_FK` FOREIGN KEY (`i_wharehouse_id`) REFERENCES `wharehouses` (`w_id`),
  CONSTRAINT `inventory_FK_1` FOREIGN KEY (`i_p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,7),(2,1,2,18),(3,1,3,8),(4,1,4,5),(5,1,5,0),(6,1,6,10),(7,1,7,6),(8,1,8,20),(9,1,9,1),(10,1,10,7),(11,1,11,14),(12,1,12,7),(13,1,13,12),(14,1,14,1),(15,1,15,9),(16,1,16,0),(17,1,17,15),(18,1,18,15),(19,1,19,10),(20,1,20,6),(21,1,21,0),(22,1,22,3),(23,1,23,14),(24,1,24,20),(25,1,25,17),(26,1,28,4),(27,1,29,12),(28,1,30,6),(29,1,31,17),(32,2,1,2),(33,2,2,1),(34,2,3,3),(35,2,4,9),(36,2,5,17),(37,2,6,17),(38,2,7,14),(39,2,8,20),(40,2,9,17),(41,2,10,4),(42,2,11,10),(43,2,12,20),(44,2,13,6),(45,2,14,12),(46,2,15,1),(47,3,16,12),(48,3,17,17),(49,3,18,6),(50,3,19,1),(51,3,20,7),(52,3,21,11),(53,3,22,13),(54,3,23,13),(55,3,24,6),(56,3,25,13),(57,3,28,5),(58,3,29,9),(59,3,30,7),(60,3,31,9);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_product`
--

DROP TABLE IF EXISTS `master_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_product` (
  `mp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mp_product_code` varchar(100) NOT NULL,
  `mp_product_name` varchar(100) NOT NULL,
  `mp_brand_id` int(11) NOT NULL,
  `mp_bt_id` int(11) DEFAULT NULL COMMENT 'brand type id',
  `mp_price` float NOT NULL,
  `mp_img_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mp_id`),
  UNIQUE KEY `master_product_un` (`mp_product_code`),
  KEY `master_product_FK` (`mp_brand_id`),
  KEY `master_product_FK_1` (`mp_bt_id`),
  CONSTRAINT `master_product_FK` FOREIGN KEY (`mp_brand_id`) REFERENCES `brands` (`b_id`),
  CONSTRAINT `master_product_FK_1` FOREIGN KEY (`mp_bt_id`) REFERENCES `brands_types` (`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_product`
--

LOCK TABLES `master_product` WRITE;
/*!40000 ALTER TABLE `master_product` DISABLE KEYS */;
INSERT INTO `master_product` VALUES (1,'A201588','Wheel camera',11,1,5,NULL),(2,'A201589','Wheel camera top',11,1,9,NULL),(3,'B132547','Wheel cover',12,1,12,NULL),(4,'B132548','Wheel cover anti-puncture',12,1,20,NULL),(5,'B132549','Wheel cover tubeless',12,1,22,NULL),(6,'S346522','Brake pads',1,1,6,NULL),(7,'P124366','Brake pads',2,1,10,NULL),(8,'H212026','Helmet',5,1,12,NULL),(11,'L214718','Lock',8,1,11,NULL),(12,'L214788','Light',8,1,8,NULL),(13,'W214758','Water bottle',8,1,5,NULL),(14,'W224715','Water bottle',4,1,9,NULL),(15,'S234353','Sunglasses',7,1,21,NULL),(16,'P213345','Fork',7,1,57.2,NULL),(17,'P213352','Fork',7,1,96.4,NULL),(18,'Z342312','Fork',6,1,42.8,NULL),(19,'B847513','Brakes',1,1,36.12,NULL),(20,'Z587412','Brakes',2,1,67.2,NULL),(21,'G589471','Brake disc',9,1,46.22,NULL),(22,'F239471','Brake disc',2,1,52.3,NULL),(23,'P748471','Cycling clothes',3,1,22.4,NULL),(24,'P774859','Pedals',1,1,20.5,NULL);
/*!40000 ALTER TABLE `master_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_mp_id` int(11) NOT NULL,
  `p_description` varchar(100) DEFAULT NULL,
  `p_size` enum('XS','S','M','L','XL') DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `product_FK` (`p_mp_id`),
  CONSTRAINT `product_FK` FOREIGN KEY (`p_mp_id`) REFERENCES `master_product` (`mp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Wheel camera',NULL),(2,2,'Wheel camera top',NULL),(3,3,'Wheel cover',NULL),(4,4,'Wheel cover anti-puncture',NULL),(5,5,'Wheel cover tubeless',NULL),(6,6,'Brake pads',NULL),(7,7,'Brake pads',NULL),(8,8,'Helmet','XS'),(9,8,'Helmet','S'),(10,8,'Helmet','M'),(11,8,'Helmet','L'),(12,8,'Helmet','XL'),(13,11,'Lock',NULL),(14,12,'Light',NULL),(15,13,'Water bottle',NULL),(16,14,'Water bottle',NULL),(17,15,'Sunglasses',NULL),(18,16,'Fork',NULL),(19,17,'Fork',NULL),(20,18,'Fork',NULL),(21,19,'Brakes',NULL),(22,20,'Brakes',NULL),(23,21,'Brake disc',NULL),(24,22,'Brake disc',NULL),(25,23,'Cycling clothes','S'),(28,23,'Cycling clothes','M'),(29,23,'Cycling clothes','L'),(30,23,'Cycling clothes','XL'),(31,24,'Pedals',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wharehouses`
--

DROP TABLE IF EXISTS `wharehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wharehouses` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_name` varchar(100) NOT NULL,
  `w_location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wharehouses`
--

LOCK TABLES `wharehouses` WRITE;
/*!40000 ALTER TABLE `wharehouses` DISABLE KEYS */;
INSERT INTO `wharehouses` VALUES (1,'ALM1','Bilbao'),(2,'ALM2','Basauri'),(3,'ALM3','Barakaldo');
/*!40000 ALTER TABLE `wharehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bike_workshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-31 11:03:49
