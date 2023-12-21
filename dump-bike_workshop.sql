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
-- Table structure for table `bike_types`
--

DROP TABLE IF EXISTS `bike_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bike_types` (
  `bt_id` int(11) NOT NULL AUTO_INCREMENT,
  `bt_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike_types`
--

LOCK TABLES `bike_types` WRITE;
/*!40000 ALTER TABLE `bike_types` DISABLE KEYS */;
INSERT INTO `bike_types` VALUES (1,'Mountain bike'),(2,'Road bike'),(3,'Electric bike'),(4,'BMX bike'),(5,'Folding bike'),(6,'Cruiser bike'),(7,'Gravel bike'),(8,'Kids bike'),(9,'Tandem bike'),(10,'Fixie bike'),(11,'Downhill bike');
/*!40000 ALTER TABLE `bike_types` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Shimano'),(2,'SRAM'),(3,'Campagnolo'),(4,'FSA'),(5,'Race Face'),(6,'RockShox'),(7,'Fox'),(8,'Hope'),(9,'Mavic'),(10,'DT Swiss'),(11,'Continental'),(12,'Maxxis'),(13,'Trek'),(14,'Giant'),(15,'Specialized'),(16,'Cannondale'),(17,'Scott'),(18,'Bianchi'),(19,'Pinarello'),(20,'BH'),(22,'BTWIN');
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
  `bt_type` varchar(100) NOT NULL,
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
  `c_mail` varchar(255) DEFAULT NULL,
  `c_phone_num` varchar(255) DEFAULT NULL,
  `c_city` varchar(255) DEFAULT NULL,
  `c_status` enum('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `customers_un` (`c_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'B41275986','Rodrigo','Saiz','rodrigo.saiz@gmail.com','651857306','Bilbao','ACTIVE'),(2,'Z85747120','Ciclos','Garate','ciclos.garate@gmail.com','638367591','Bilbao','ACTIVE'),(3,'D85741025','Sofia','Torres','sofia.torres@gmail.com','635266042','Bilbao','ACTIVE'),(5,'P47105966','Guillermoa','Tolosa','guillermo.tolosa@gmail.com','695339075','Donostia','ACTIVE'),(6,'Z87412558','Nerea','Saiz','nerea.saiz@gmail.com','697013058','Donostia','ACTIVE'),(26,'P71872049','Elvira','Granja','elvira.granja@gmail.com','699048070','Santander','ACTIVE'),(31,'88244850P','Diego','Matusalen','diego.matusalen@gmail.com','624861692','Vitoria','ACTIVE'),(46,'587498550','Diego','Gimienez','diego.gimenez@gmail.com','657484855','Santander','ACTIVE'),(47,'8547112259R','Teresa','Benito','teresabenito@gmail.com','648547778','Bilbao','ACTIVE'),(48,'7415487999P','Carlos','Perico','carlos.perico@gmail.com','648777451','Huelva','ACTIVE');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_bikes`
--

DROP TABLE IF EXISTS `customers_bikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_bikes` (
  `cb_id` int(11) NOT NULL AUTO_INCREMENT,
  `cb_code` varchar(100) NOT NULL,
  `cb_description` varchar(100) NOT NULL,
  `cb_b_id` int(11) NOT NULL,
  `cb_bt_id` int(11) NOT NULL,
  `cb_c_id` int(11) DEFAULT NULL,
  `cb_status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`cb_id`),
  UNIQUE KEY `customers_bikes_un` (`cb_code`),
  KEY `customers_bikes_FK` (`cb_b_id`),
  KEY `customers_bikes_FK_1` (`cb_c_id`),
  KEY `customers_bikes_FK_2` (`cb_bt_id`),
  CONSTRAINT `customers_bikes_FK` FOREIGN KEY (`cb_b_id`) REFERENCES `brands` (`b_id`),
  CONSTRAINT `customers_bikes_FK_1` FOREIGN KEY (`cb_c_id`) REFERENCES `customers` (`c_id`),
  CONSTRAINT `customers_bikes_FK_2` FOREIGN KEY (`cb_bt_id`) REFERENCES `bike_types` (`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_bikes`
--

LOCK TABLES `customers_bikes` WRITE;
/*!40000 ALTER TABLE `customers_bikes` DISABLE KEYS */;
INSERT INTO `customers_bikes` VALUES (1,'100000000001','bh road bike red',20,2,1,'ACTIVE'),(2,'100000000002','Fox downhill bike pink',7,11,2,'ACTIVE');
/*!40000 ALTER TABLE `customers_bikes` ENABLE KEYS */;
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
  `e_mail` varchar(255) DEFAULT NULL,
  `e_phone_num` varchar(255) DEFAULT NULL,
  `e_pswrd` varchar(100) DEFAULT NULL,
  `e_type_id` int(11) NOT NULL,
  `e_status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `e_img_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  UNIQUE KEY `employees_un` (`e_sid`),
  KEY `employees_FK` (`e_type_id`),
  CONSTRAINT `employees_FK` FOREIGN KEY (`e_type_id`) REFERENCES `employees_types` (`et_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,'47598213G','Granja Guerra','Sofia','sofia.granja@unaibikeworkshop.com','635743164','*5CE8A9AC5415CEE09E999C635B72E05DEB94C86E',2,'ACTIVE','https://i.ibb.co/YpCp2M2/chica3.jpg'),(3,'5784486R','Petreli','Peter','peter.petreli@unaibikeworkshop.com','656397944','*34232A94B72D35BE04F9586546E1600613C6167B',4,'ACTIVE','https://i.ibb.co/C9cRkMp/chico1.jpg'),(5,'99862541D','Manin','Nerea','nerea.manin@unaibikeworkshop.com','656073271','*B38E477E8BD9B371E09E583C4AD96C1194DACB0A',3,'ACTIVE','https://i.ibb.co/258NfzC/chica1.jpg'),(6,'75841201S','Prado','Robert','robert.prado@unaibikeworkshop.com','699755947','*9BB4E91610D55131FE0C055F3339FDDB175C5B7E',4,'ACTIVE','https://i.ibb.co/6wX6bxW/chico2.jpg'),(15,'74158726M','Montesias','Maria','maria.montes@unaibikeworkshop.com','684957759','*12B8928ADA4FDF4D47CCF40D9150AD850B595B55',3,'ACTIVE','https://i.ibb.co/c1kt6w3/chica2.jpg'),(16,'58741258Y','Calvo','Jaime','jaime.calvo@unaibikeworkshop.com','625520955','*C5B69AB99C55C1825EABFCEA510F0BB1A5F1EF0A',3,'ACTIVE','https://i.ibb.co/rdnsfK8/chico4.jpg'),(17,'22334785P','Ordorika','Albert','albert.ordorika@unaibikeworkshop.com','669731501','*722B5FA62420283A1FCF7AC72286609B80326CD7',1,'ACTIVE','https://i.ibb.co/Dp5FkQJ/undefined.jpg'),(23,'78934350Y','De la fuente','Unai','unai.delafu@unaibikeworkshop.com','685120298','*99A857D4CDF8A72B3EA54EF74A5DCA3B91C12E4D',1,'ACTIVE','https://i.ibb.co/GQBbn8D/login.jpg'),(35,'74851420Y','Griego','David','david.griego@unaibikeworkshop.com','674392937','*A4B6157319038724E3560894F7F932C8886EBFCF',1,'ACTIVE','https://i.ibb.co/CH03nN0/chico3.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_product`
--

LOCK TABLES `master_product` WRITE;
/*!40000 ALTER TABLE `master_product` DISABLE KEYS */;
INSERT INTO `master_product` VALUES (1,'A201588','Wheel camera',11,1,32.14,'https://i.ibb.co/37QHBqV/1-wheel-continental.jpg'),(2,'A201589','Wheel camera top',11,1,50.72,'https://i.ibb.co/tHZpk4d/2-wheel-continental.jpg'),(3,'B132547','Wheel cover',11,1,47.23,'https://i.ibb.co/zGh6tPT/3-wheel-maxxis.jpg'),(4,'B132548','Wheel cover anti-puncture',12,1,41.65,'https://i.ibb.co/ZMwsQSJ/4-wheel-maxxis-Rekon-29.jpg'),(5,'B132549','Wheel cover tubeless',12,1,54.7,'https://i.ibb.co/1djxN18/5-wheel-tubeless-maxxis.jpg'),(6,'S346522','Brake pads',1,1,17.52,'https://i.ibb.co/ryqvj5C/6-brake-pads-shimano.jpg'),(7,'S124366','Brake pads',2,1,23.22,'https://i.ibb.co/Y2jqnLX/7-brake-pads-SRAM.jpg'),(8,'M212026','Helmet',5,1,25.78,'https://i.ibb.co/wg01FWx/8-helmet.jpg'),(11,'L214718','Lock',22,1,8.75,'https://i.ibb.co/m53KzxB/11-lock-btwin.jpg'),(12,'L214788','Light',8,1,8,'https://i.ibb.co/F5P8Y2r/12-light-hope.jpg'),(13,'W214758','Water bottle',22,1,5,'https://i.ibb.co/mBWW25b/13-bottle-btwin.jpg'),(14,'W224715','Water bottle',4,1,9,'https://i.ibb.co/f1JPsh8/14-bottle-shimano.jpg'),(15,'Q234353','Glasses',7,1,34.99,'https://i.ibb.co/DYYbswt/15-glasses-fox.jpg'),(16,'P213345','Fork',7,1,1500,'https://i.ibb.co/7RNhk4W/16-fork-fox.jpg'),(17,'P213352','Fork',7,1,1199.99,'https://i.ibb.co/M8cvxJN/17-fork-fox.jpg'),(18,'P342312','Fork',6,1,969,'https://i.ibb.co/LPPYDFR/18-fork-rockshox.jpg'),(19,'B847513','Brakes',1,1,192.18,'https://i.ibb.co/FzzPkcD/19-brakes-shimano.jpg'),(20,'B587412','Brakes',2,1,284.7,'https://i.ibb.co/xjX8BVT/20-brakes-sram.jpg'),(21,'G589471','Brake disc',2,1,46.22,'https://i.ibb.co/F7P0Dwk/21-brakes-disc-sram.jpg'),(22,'F239471','Brake disc',1,1,8.94,'https://i.ibb.co/7jq50wk/22-brakes-disc-shimano.jpg'),(23,'P748471','Cycling clothes',13,1,89.99,'https://i.ibb.co/qMv0L07/23-cycling-clothes.jpg'),(24,'P774859','Pedals',1,1,68.99,'https://i.ibb.co/37dnsdJ/24-pedals-shimano.jpg'),(25,'Y728349','Bike BH',20,2,1062,'https://i.ibb.co/zQfDNj4/25-BH-expert-4-5.jpg'),(26,'Y728348','Bike BH',20,2,2.869,'https://i.ibb.co/xYqP0TQ/26-BH-Ultimate-Evo-8-5.jpg'),(28,'D584715','Bike Pinarello',19,2,5450,'https://i.ibb.co/nPTnYJg/28-Pinarello-Prince-Disk.jpg'),(30,'D547016','Bike Giant',14,2,825,'https://i.ibb.co/zSbQGLP/30-giant-talon.jpg'),(31,'P877015','Bike Giant',14,2,825,'https://i.ibb.co/bzKmRdV/31-giant-MY21-Talon-Eplus-3-29.jpg'),(32,'Z728349','Bike BH3',20,2,1700,'https://i.ibb.co/zQfDNj4/25-BH-expert-4-5.jpg'),(58,'W3321','bike fox',7,2,2004,'https://i.ibb.co/jL9mm8T/default-Product-Image.jpg');
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
  `p_size` enum('NO SIZE','XS','S','M','L','XL') NOT NULL DEFAULT 'NO SIZE',
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `product_un` (`p_mp_id`,`p_description`,`p_size`),
  CONSTRAINT `product_FK` FOREIGN KEY (`p_mp_id`) REFERENCES `master_product` (`mp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Wheel camera','NO SIZE'),(2,2,'Wheel camera top','NO SIZE'),(3,3,'Wheel cover','NO SIZE'),(4,4,'Wheel cover Rekon 29','NO SIZE'),(5,5,'Wheel cover tubeless','NO SIZE'),(6,6,'Brake pads','NO SIZE'),(7,7,'Brake pads','NO SIZE'),(8,8,'Helmet','XS'),(9,8,'Helmet','S'),(10,8,'Helmet','M'),(11,8,'Helmet','L'),(12,8,'Helmet','XL'),(13,11,'Lock','NO SIZE'),(14,12,'Light','NO SIZE'),(15,13,'Water bottle','NO SIZE'),(87,14,'Prueba de stock updated','NO SIZE'),(16,14,'Water bottle','NO SIZE'),(17,15,'Glasses Main stray white color','NO SIZE'),(18,16,'Fork 36 Float E-Bike 27.5\" 140 Grip 2 Hi/Low Comp/Reb gloss black 15QRx110 BOOST tapered 44mm 2023','NO SIZE'),(19,17,'Fork 36 Float E-Optimized 29\" 160 Grip 3Pos matt black 15QRx110 BOOST tapered 44mm 2023','NO SIZE'),(20,18,'Fork Fork Zeb Ultimate Charger 2.1 RC2 29\'\' Boost 15x110 offset 44mm 190mm black','NO SIZE'),(21,19,'Brakes XC Race - Deore XT BL-M8100 + BR-M8100 I-Spec EV - J-Kit - Front and Rear set','NO SIZE'),(22,20,'Brakes - Level Stealth - Ultimate ','NO SIZE'),(23,21,'Brake disc - G2 CleanSweep','NO SIZE'),(24,22,'Brake disc - SM-RT30 Centerlock','NO SIZE'),(25,23,'Cycling clothes','S'),(28,23,'Cycling clothes','M'),(29,23,'Cycling clothes','L'),(30,23,'Cycling clothes','XL'),(31,24,'Pedals PD-M520 Automatic ','NO SIZE'),(33,25,'BH Expert 4.5','M'),(34,25,'BH Expert 4.5','L'),(35,25,'BH Expert 4.5','XL'),(43,25,'BH Expert 4.5.2','S'),(36,26,'BH Ultimate Evo 8.5','S'),(37,26,'BH Ultimate Evo 8.5','M'),(89,28,'Pinarello Prince Disk - L','L'),(38,28,'Pinarello Prince Disk - XL','XL'),(39,30,'Giant Talon 0','M'),(40,30,'Giant Talon 0','L'),(41,31,'Giant - MY21 - Talon-Eplus-3-29','M'),(42,31,'Giant - MY21 - Talon-Eplus-3-29','L'),(45,32,'BH Expert 5.5.2','S'),(47,32,'BH Expert 5.5.2','M'),(51,32,'BH Expert La mejor 2','XS'),(49,32,'BH Expert La mejor 2','S');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `bt_id` int(11) NOT NULL AUTO_INCREMENT,
  `bt_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'Components'),(2,'Bikes');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `pm_id` int(11) NOT NULL AUTO_INCREMENT,
  `pm_p_id` int(11) DEFAULT NULL,
  `pm_promotion` float NOT NULL,
  `pm_start_date` datetime NOT NULL,
  `pm_end_date` datetime NOT NULL,
  PRIMARY KEY (`pm_id`),
  KEY `promotions_FK` (`pm_p_id`),
  CONSTRAINT `promotions_FK` FOREIGN KEY (`pm_p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_w_id` int(11) NOT NULL,
  `s_p_id` int(11) NOT NULL,
  `s_qty` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`s_id`),
  UNIQUE KEY `stock_un` (`s_w_id`,`s_p_id`),
  KEY `stock_FK_1` (`s_p_id`),
  CONSTRAINT `stock_FK` FOREIGN KEY (`s_w_id`) REFERENCES `wharehouses` (`w_id`),
  CONSTRAINT `stock_FK_1` FOREIGN KEY (`s_p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,1,5),(2,1,2,19),(3,1,3,19),(4,1,4,16),(5,1,5,1),(6,1,6,12),(7,1,7,14),(8,1,8,12),(9,1,9,15),(10,1,10,18),(11,1,11,3),(12,1,12,6),(13,1,13,9),(14,1,14,4),(15,1,15,6),(16,1,16,11),(17,1,17,11),(18,1,18,1),(19,1,19,16),(20,1,20,14),(21,1,21,2),(22,1,22,8),(23,1,23,15),(24,1,24,11),(25,1,25,11),(26,1,28,3),(27,1,29,0),(28,1,30,13),(29,1,31,1),(30,1,33,11),(31,1,34,11),(32,1,35,3),(33,1,43,10),(34,1,36,9),(35,1,37,15),(36,1,38,7),(37,1,39,12),(38,1,40,17),(39,1,41,7),(40,1,42,6),(41,1,45,11),(42,1,47,16),(43,1,51,4),(44,1,49,17),(64,2,1,11),(65,2,2,17),(66,2,3,11),(67,2,4,2),(68,2,5,15),(69,2,6,7),(70,2,7,10),(71,2,8,4),(72,2,9,8),(73,2,10,9),(74,2,11,20),(75,2,12,8),(76,2,13,21),(77,2,14,15),(78,2,15,13),(79,2,16,17),(80,2,17,2),(81,2,18,20),(82,2,19,10),(83,2,20,10),(84,2,21,17),(95,3,13,14),(96,3,14,16),(97,3,15,14),(98,3,16,22),(99,3,17,5),(100,3,18,20),(101,3,19,19),(102,3,20,14),(103,3,21,12),(104,3,22,15),(105,3,23,16),(106,3,24,13),(107,3,25,17),(108,3,28,22),(109,3,29,18),(110,3,30,20),(111,3,31,3),(112,3,33,18),(113,3,34,14),(114,3,35,14),(115,3,36,5),(116,3,37,5),(117,3,38,6),(118,3,39,14),(119,3,40,7),(120,3,41,14),(121,3,42,7),(122,3,43,13),(123,3,45,20),(124,3,47,16),(125,3,49,19),(126,3,51,3),(182,2,87,12),(188,1,89,66);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
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
INSERT INTO `wharehouses` VALUES (1,'WHAREHOUSE_1','Bilbao'),(2,'WHAREHOUSE_2','Basauri'),(3,'WHAREHOUSE_3','Barakaldo');
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

-- Dump completed on 2023-12-21 20:15:46
