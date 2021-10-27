-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: g_shop_mall
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` VALUES (1,'QA','Quần áo'),(2,'GIAY','Giày'),(3,'PK','Phụ kiện');
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_email_record`
--

DROP TABLE IF EXISTS `tb_email_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_email_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `send_to` varchar(200) DEFAULT NULL,
  `content` text,
  `send_date` datetime DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_email_record`
--

LOCK TABLES `tb_email_record` WRITE;
/*!40000 ALTER TABLE `tb_email_record` DISABLE KEYS */;
INSERT INTO `tb_email_record` VALUES (1,'t@gmail','test','2021-10-25 10:50:08','FAILED'),(2,'toanvan2000t@gmail.com','<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>Spring Boot Email using FreeMarker</title>\r\n</head>\r\n<body>\r\n<div style=\"margin-top: 10px\">List product quantity < 10</div>\r\n<br/>\r\n<table border = \"1\">\r\n    <thead>\r\n    <tr>\r\n        <th>Code</th>\r\n        <th>Name</th>\r\n        <th>Quantity</th>\r\n        <th>Category Name</th>\r\n    </tr>\r\n    </thead>\r\n    <tbody>\r\n            <tr>\r\n            <td>VAY01</td>\r\n            <td>Váy xòe đỏ</td>\r\n            <td>2</td>\r\n            <td>Quần áo</td>\r\n        </tr>\r\n        <tr>\r\n            <td>DH02</td>\r\n            <td>Đồng hồ 02</td>\r\n            <td>9</td>\r\n            <td>Phụ kiện</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n <div><b>Time:</b> 09:58:44</div>\r\n</body>\r\n</html>','2021-10-25 10:59:05','FAILED'),(3,'toanvan2000t@gmail.com','<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>Spring Boot Email using FreeMarker</title>\r\n</head>\r\n<body>\r\n<div style=\"margin-top: 10px\">List product quantity < 10</div>\r\n<br/>\r\n<table border = \"1\">\r\n    <thead>\r\n    <tr>\r\n        <th>Code</th>\r\n        <th>Name</th>\r\n        <th>Quantity</th>\r\n        <th>Category Name</th>\r\n    </tr>\r\n    </thead>\r\n    <tbody>\r\n            <tr>\r\n            <td>VAY01</td>\r\n            <td>Váy xòe đỏ</td>\r\n            <td>2</td>\r\n            <td>Quần áo</td>\r\n        </tr>\r\n        <tr>\r\n            <td>DH02</td>\r\n            <td>Đồng hồ 02</td>\r\n            <td>9</td>\r\n            <td>Phụ kiện</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n <div><b>Time:</b> 09:59:45</div>\r\n</body>\r\n</html>','2021-10-25 11:00:06','SUCCESS'),(4,'toanvan2000t@gmail.com','<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>Spring Boot Email using FreeMarker</title>\r\n</head>\r\n<body>\r\n<div style=\"margin-top: 10px\">List product quantity < 10</div>\r\n<br/>\r\n<table border = \"1\">\r\n    <thead>\r\n    <tr>\r\n        <th>Code</th>\r\n        <th>Name</th>\r\n        <th>Quantity</th>\r\n        <th>Category Name</th>\r\n    </tr>\r\n    </thead>\r\n    <tbody>\r\n            <tr>\r\n            <td>VAY01</td>\r\n            <td>Váy xòe đỏ</td>\r\n            <td>2</td>\r\n            <td>Quần áo</td>\r\n        </tr>\r\n        <tr>\r\n            <td>GIAY01</td>\r\n            <td>Giày adidas</td>\r\n            <td>6</td>\r\n            <td>Giày</td>\r\n        </tr>\r\n        <tr>\r\n            <td>DH02</td>\r\n            <td>Đồng hồ 02</td>\r\n            <td>9</td>\r\n            <td>Phụ kiện</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n <div><b>Time:</b> 10:00:44</div>\r\n</body>\r\n</html>','2021-10-25 11:01:04','SUCCESS'),(5,'toanvan2000t@gmail.com','<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>Spring Boot Email using FreeMarker</title>\r\n</head>\r\n<body>\r\n<div style=\"margin-top: 10px\">List product quantity < 10</div>\r\n<br/>\r\n<table border = \"1\">\r\n    <thead>\r\n    <tr>\r\n        <th>Code</th>\r\n        <th>Name</th>\r\n        <th>Quantity</th>\r\n        <th>Category Name</th>\r\n    </tr>\r\n    </thead>\r\n    <tbody>\r\n            <tr>\r\n            <td>VAY01</td>\r\n            <td>Váy xòe đỏ</td>\r\n            <td>2</td>\r\n            <td>Quần áo</td>\r\n        </tr>\r\n        <tr>\r\n            <td>GIAY01</td>\r\n            <td>Giày adidas</td>\r\n            <td>6</td>\r\n            <td>Giày</td>\r\n        </tr>\r\n        <tr>\r\n            <td>DH02</td>\r\n            <td>Đồng hồ 02</td>\r\n            <td>9</td>\r\n            <td>Phụ kiện</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n <div><b>Time:</b> 10:01:44</div>\r\n</body>\r\n</html>','2021-10-25 11:02:04','SUCCESS'),(6,'toanvan2000t@gmail.com','<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>Spring Boot Email using FreeMarker</title>\r\n</head>\r\n<body>\r\n<div style=\"margin-top: 10px\">List product quantity < 10</div>\r\n<br/>\r\n<table border = \"1\">\r\n    <thead>\r\n    <tr>\r\n        <th>Code</th>\r\n        <th>Name</th>\r\n        <th>Quantity</th>\r\n        <th>Category Name</th>\r\n    </tr>\r\n    </thead>\r\n    <tbody>\r\n            <tr>\r\n            <td>VAY01</td>\r\n            <td>Váy xòe đỏ</td>\r\n            <td>2</td>\r\n            <td>Quần áo</td>\r\n        </tr>\r\n        <tr>\r\n            <td>GIAY01</td>\r\n            <td>Giày adidas</td>\r\n            <td>6</td>\r\n            <td>Giày</td>\r\n        </tr>\r\n        <tr>\r\n            <td>DH02</td>\r\n            <td>Đồng hồ 02</td>\r\n            <td>9</td>\r\n            <td>Phụ kiện</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n <div><b>Time:</b> 10:02:44</div>\r\n</body>\r\n</html>','2021-10-25 11:03:04','SUCCESS'),(7,'toanvan2000t@gmail.com','<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>Spring Boot Email using FreeMarker</title>\r\n</head>\r\n<body>\r\n<div style=\"margin-top: 10px\">List product quantity < 10</div>\r\n<br/>\r\n<table border = \"1\">\r\n    <thead>\r\n    <tr>\r\n        <th>Code</th>\r\n        <th>Name</th>\r\n        <th>Quantity</th>\r\n        <th>Category Name</th>\r\n    </tr>\r\n    </thead>\r\n    <tbody>\r\n            <tr>\r\n            <td>VAY01</td>\r\n            <td>Váy xòe đỏ</td>\r\n            <td>2</td>\r\n            <td>Quần áo</td>\r\n        </tr>\r\n        <tr>\r\n            <td>GIAY01</td>\r\n            <td>Giày adidas</td>\r\n            <td>6</td>\r\n            <td>Giày</td>\r\n        </tr>\r\n        <tr>\r\n            <td>DH02</td>\r\n            <td>Đồng hồ 02</td>\r\n            <td>9</td>\r\n            <td>Phụ kiện</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n <div><b>Time:</b> 10:03:44</div>\r\n</body>\r\n</html>','2021-10-25 11:04:04','SUCCESS'),(8,'toanvan2000t@gmail.com','<!doctype html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n    <title>Spring Boot Email using FreeMarker</title>\r\n</head>\r\n<body>\r\n<div style=\"margin-top: 10px\">List product quantity < 10</div>\r\n<br/>\r\n<table border = \"1\">\r\n    <thead>\r\n    <tr>\r\n        <th>Code</th>\r\n        <th>Name</th>\r\n        <th>Quantity</th>\r\n        <th>Category Name</th>\r\n    </tr>\r\n    </thead>\r\n    <tbody>\r\n            <tr>\r\n            <td>VAY01</td>\r\n            <td>Váy xòe đỏ</td>\r\n            <td>2</td>\r\n            <td>Quần áo</td>\r\n        </tr>\r\n        <tr>\r\n            <td>GIAY01</td>\r\n            <td>Giày adidas</td>\r\n            <td>6</td>\r\n            <td>Giày</td>\r\n        </tr>\r\n        <tr>\r\n            <td>DH02</td>\r\n            <td>Đồng hồ 02</td>\r\n            <td>9</td>\r\n            <td>Phụ kiện</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n <div><b>Time:</b> 10:19:42</div>\r\n</body>\r\n</html>','2021-10-25 11:20:02','SUCCESS');
/*!40000 ALTER TABLE `tb_email_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `categoty_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`categoty_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `category_id_fk` FOREIGN KEY (`categoty_id`) REFERENCES `tb_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` VALUES (1,'VAY01','Váy xòe đỏ',2,1),(2,'AO01','Áo phông',50,1),(3,'SM01','Áo Sơ mi kẻ tím',50,1),(4,'GIAY01','Giày adidas',6,2),(5,'DH01','Đồng hồ 01',50,3),(6,'DH02','Đồng hồ 02',9,3),(7,'AO02','Áo lửng',11,1);
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'toannv','Ngo Van Toan','toanvan2000t@gmail.com'),(2,'toanv1','Ngo Van Toan','T@gmail.com');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-27  7:06:28
