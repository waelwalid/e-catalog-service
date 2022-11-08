CREATE DATABASE  IF NOT EXISTS `catalog_service` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `catalog_service`;
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 172.31.0.11    Database: catalog_service
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `catalog_categories`
--

DROP TABLE IF EXISTS `catalog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `catalog_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_categories`
--

LOCK TABLES `catalog_categories` WRITE;
/*!40000 ALTER TABLE `catalog_categories` DISABLE KEYS */;
INSERT INTO `catalog_categories` VALUES (1,1,1,NULL,NULL),(2,1,2,NULL,NULL);
/*!40000 ALTER TABLE `catalog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_metas`
--

DROP TABLE IF EXISTS `catalog_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog_metas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `catalog_id` bigint NOT NULL,
  `meta_key_id` bigint NOT NULL,
  `meta_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_metas`
--

LOCK TABLES `catalog_metas` WRITE;
/*!40000 ALTER TABLE `catalog_metas` DISABLE KEYS */;
INSERT INTO `catalog_metas` VALUES (1,1,1,NULL,NULL,NULL),(2,1,2,NULL,NULL,NULL),(3,1,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `catalog_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('DIGITAL','PHYSICAL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PHYSICAL',
  `stock` int NOT NULL DEFAULT '1',
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'Nesciunt in eos cupiditate cumque incidunt qui perferendis.','Doloremque sint et nisi sit enim. Ducimus eum accusantium commodi voluptate blanditiis. Quia ut aut a.','https://via.placeholder.com/640x480.png/003311?text=facere','DIGITAL',445,6106.00,1,'2022-11-07 20:51:34','2022-11-07 20:51:34',NULL),(2,'Dolores eos possimus aut a inventore repudiandae.','Sunt quisquam vitae molestiae architecto nobis. Dolores nobis magni sint ut dicta. Et sequi enim dolores quae id enim. Aut necessitatibus ab dicta architecto vitae. Ut blanditiis vel et sit.','https://via.placeholder.com/640x480.png/008811?text=magni','PHYSICAL',215,29177.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(3,'Ratione ut aut a aut illo ut consectetur sed.','Atque quas voluptatem ut blanditiis distinctio. Minima commodi harum sit id nostrum omnis recusandae. Enim ipsam autem quam dolore.','https://via.placeholder.com/640x480.png/009911?text=quia','PHYSICAL',175,9439.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(4,'Id et possimus voluptate.','Perferendis amet aut enim. Soluta vel eligendi praesentium beatae. Delectus quasi ad impedit et illum accusantium rerum. Officiis autem deserunt omnis porro beatae minus architecto.','https://via.placeholder.com/640x480.png/00ff55?text=porro','DIGITAL',817,17831.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(5,'Nobis dicta ipsam occaecati dignissimos sunt veniam.','Deserunt praesentium sit dolorem laboriosam. Qui sunt quidem quam voluptatibus. Veritatis dolores dicta non. Incidunt id facilis sapiente et.','https://via.placeholder.com/640x480.png/001177?text=doloribus','DIGITAL',724,31274.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(6,'Iure aspernatur ad fugit qui voluptatibus accusamus ut.','Iste qui vitae aliquid occaecati et omnis. Optio suscipit itaque voluptas dolorem quia excepturi. Nihil enim dolores molestiae voluptates voluptates ducimus velit suscipit.','https://via.placeholder.com/640x480.png/0055dd?text=ab','DIGITAL',2729,5643.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(7,'Voluptate ea dicta maxime sed ipsum odio.','Maiores tempora ex libero omnis fuga autem. Consequatur commodi provident quas ea. Occaecati id voluptatem beatae.','https://via.placeholder.com/640x480.png/0077aa?text=voluptate','DIGITAL',1885,15973.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(8,'Quaerat explicabo ut id neque.','Dolores eius atque totam sint laboriosam. Quam autem quis ea officiis iure iure natus facere. Est consequatur dolor et soluta sequi. Consequatur repellat omnis eos consequatur.','https://via.placeholder.com/640x480.png/009999?text=ullam','PHYSICAL',940,21721.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(9,'Voluptatem facere aspernatur aut sed.','Illum sunt reiciendis veniam non. Aut error doloribus eos quasi perferendis. At voluptatem sed nostrum sunt totam ut ut.','https://via.placeholder.com/640x480.png/00ffaa?text=quaerat','PHYSICAL',1703,43452.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(10,'Minus iste voluptates quo aliquid.','Eum nulla hic illo natus non. Dicta illum labore quo aut dolorem. Maxime sint voluptatem vero.','https://via.placeholder.com/640x480.png/004400?text=tempora','PHYSICAL',2230,3051.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL),(11,'Nam ipsa dolorum ut quis delectus.','Deserunt excepturi pariatur et autem qui necessitatibus facere explicabo. Quia autem animi voluptatem eos. Facere non eveniet quos inventore.','https://via.placeholder.com/640x480.png/0099bb?text=quibusdam','DIGITAL',891,34176.00,1,'2022-11-07 20:52:06','2022-11-07 20:52:06',NULL);
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Games','categories/November2022/BwkQJARPVCM9Ph6RWy7C.png',1,'2022-11-05 05:30:08','2022-11-05 05:30:08'),(2,'PS5','categories/November2022/qXhm8rA0ojo6cIHDWG7i.png',1,'2022-11-05 05:32:19','2022-11-05 05:32:19');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,4,'title','text','Title',1,1,1,1,1,1,'{}',2),(24,4,'body','rich_text_box','Body',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',4),(25,4,'image','image','Image',0,1,1,1,1,1,'{\"display\":{\"width\":\"6\"}}',5),(26,4,'type','radio_btn','Type',1,1,1,1,1,1,'{\"default\":\"DIGITAL\",\"options\":{\"DIGITAL\":\"DIGITAL\",\"PHYSICAL\":\"PHYSICAL\"},\"display\":{\"width\":\"3\"}}',6),(27,4,'stock','number','Stock',1,1,1,1,1,1,'{\"min\":0,\"max\":1000,\"default\":1,\"display\":{\"width\":\"3\"}}',7),(28,4,'price','number','Price',1,1,1,1,1,1,'{\"step\":0.1,\"min\":0,\"max\":1000,\"default\":1,\"display\":{\"width\":\"3\"}}',8),(29,4,'is_active','checkbox','Is Active',1,1,1,1,1,1,'{\"true\":\"Active\",\"false\":\"InActive\",\"checked\":true,\"display\":{\"width\":\"3\"}}',9),(30,4,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',10),(31,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(32,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(33,5,'title','text','Title',1,1,1,1,1,1,'{}',2),(34,5,'image','image','Image',0,1,1,1,1,1,'{}',3),(35,5,'is_active','text','Is Active',1,1,1,1,1,1,'{}',4),(36,5,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',5),(37,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(38,4,'catalog_hasmany_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"catalog_categories\",\"pivot\":\"1\",\"taggable\":\"0\"}',3),(39,4,'catalog_belongstomany_metakey_relationship','relationship','tags',0,1,1,1,1,1,'{\"foreign_pivot_key\":\"catalog_id\",\"related_pivot_key\":\"meta_key_id\",\"parent_key\":\"id\",\"model\":\"App\\\\Models\\\\Metakey\",\"table\":\"metakeys\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"catalog_metas\",\"pivot\":\"1\",\"taggable\":\"on\"}',12),(40,4,'meta_data','text','Meta Data',0,0,0,0,0,0,'{}',11),(41,6,'id','text','Id',1,0,0,0,0,0,'{}',1),(42,6,'name','text','Name',1,1,1,1,1,1,'{}',2),(43,6,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(44,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2022-11-05 04:20:05','2022-11-05 04:20:05'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2022-11-05 04:20:05','2022-11-05 04:20:05'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2022-11-05 04:20:05','2022-11-05 04:20:05'),(4,'catalogs','catalogs','Catalog','Catalogs','voyager-categories','App\\Models\\Catalog',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2022-11-05 05:21:48','2022-11-06 03:27:58'),(5,'categories','categories','Category','Categories','voyager-folder','App\\Models\\Category',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2022-11-05 05:22:29','2022-11-05 05:22:29'),(6,'metakeys','metakeys','Metakey','Tags','voyager-play','App\\Models\\Metakey',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-11-05 06:20:25','2022-11-06 03:31:48');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2022-11-05 04:20:05','2022-11-05 04:20:05','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,7,'2022-11-05 04:20:05','2022-11-06 03:32:23','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,6,'2022-11-05 04:20:05','2022-11-06 03:32:23','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,5,'2022-11-05 04:20:05','2022-11-06 03:32:23','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2022-11-05 04:20:05','2022-11-06 03:32:23',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2022-11-05 04:20:05','2022-11-06 03:32:18','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2022-11-05 04:20:05','2022-11-06 03:32:18','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2022-11-05 04:20:05','2022-11-06 03:32:18','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2022-11-05 04:20:05','2022-11-06 03:32:18','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,9,'2022-11-05 04:20:05','2022-11-06 03:32:23','voyager.settings.index',NULL),(11,1,'Catalogs','','_self','voyager-categories',NULL,NULL,2,'2022-11-05 05:21:48','2022-11-06 03:32:18','voyager.catalogs.index',NULL),(12,1,'Categories','','_self','voyager-folder',NULL,NULL,3,'2022-11-05 05:22:29','2022-11-06 03:32:21','voyager.categories.index',NULL),(13,1,'Tags','','_self','voyager-play','#000000',NULL,4,'2022-11-05 06:20:25','2022-11-06 03:32:23','voyager.metakeys.index','null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2022-11-05 04:20:05','2022-11-05 04:20:05');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metakeys`
--

DROP TABLE IF EXISTS `metakeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metakeys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metakeys`
--

LOCK TABLES `metakeys` WRITE;
/*!40000 ALTER TABLE `metakeys` DISABLE KEYS */;
INSERT INTO `metakeys` VALUES (1,'dimentions','2022-11-05 06:20:42','2022-11-05 06:20:42'),(2,'price','2022-11-05 06:20:49','2022-11-05 06:20:49'),(3,'name','2022-11-05 06:20:51','2022-11-05 06:20:51');
/*!40000 ALTER TABLE `metakeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_12_14_000001_create_personal_access_tokens_table',1),(25,'2022_11_05_050254_create_catalogs_table',2),(26,'2022_11_05_050420_create_categories_table',2),(27,'2022_11_05_050513_create_catalog_categories_table',2),(28,'2022_11_05_050605_create_metakeys_table',2),(29,'2022_11_05_050645_create_catalog_metas_table',2),(30,'2022_11_05_060221_add_tags_to_catalogs_table',3),(31,'2022_11_06_032845_remove_meta_valueupdate_catalog_meta_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2022-11-05 04:20:05','2022-11-05 04:20:05'),(2,'browse_bread',NULL,'2022-11-05 04:20:05','2022-11-05 04:20:05'),(3,'browse_database',NULL,'2022-11-05 04:20:06','2022-11-05 04:20:06'),(4,'browse_media',NULL,'2022-11-05 04:20:06','2022-11-05 04:20:06'),(5,'browse_compass',NULL,'2022-11-05 04:20:06','2022-11-05 04:20:06'),(6,'browse_menus','menus','2022-11-05 04:20:06','2022-11-05 04:20:06'),(7,'read_menus','menus','2022-11-05 04:20:06','2022-11-05 04:20:06'),(8,'edit_menus','menus','2022-11-05 04:20:06','2022-11-05 04:20:06'),(9,'add_menus','menus','2022-11-05 04:20:06','2022-11-05 04:20:06'),(10,'delete_menus','menus','2022-11-05 04:20:06','2022-11-05 04:20:06'),(11,'browse_roles','roles','2022-11-05 04:20:06','2022-11-05 04:20:06'),(12,'read_roles','roles','2022-11-05 04:20:06','2022-11-05 04:20:06'),(13,'edit_roles','roles','2022-11-05 04:20:06','2022-11-05 04:20:06'),(14,'add_roles','roles','2022-11-05 04:20:06','2022-11-05 04:20:06'),(15,'delete_roles','roles','2022-11-05 04:20:06','2022-11-05 04:20:06'),(16,'browse_users','users','2022-11-05 04:20:06','2022-11-05 04:20:06'),(17,'read_users','users','2022-11-05 04:20:06','2022-11-05 04:20:06'),(18,'edit_users','users','2022-11-05 04:20:06','2022-11-05 04:20:06'),(19,'add_users','users','2022-11-05 04:20:06','2022-11-05 04:20:06'),(20,'delete_users','users','2022-11-05 04:20:06','2022-11-05 04:20:06'),(21,'browse_settings','settings','2022-11-05 04:20:06','2022-11-05 04:20:06'),(22,'read_settings','settings','2022-11-05 04:20:06','2022-11-05 04:20:06'),(23,'edit_settings','settings','2022-11-05 04:20:06','2022-11-05 04:20:06'),(24,'add_settings','settings','2022-11-05 04:20:06','2022-11-05 04:20:06'),(25,'delete_settings','settings','2022-11-05 04:20:06','2022-11-05 04:20:06'),(26,'browse_catalogs','catalogs','2022-11-05 05:21:48','2022-11-05 05:21:48'),(27,'read_catalogs','catalogs','2022-11-05 05:21:48','2022-11-05 05:21:48'),(28,'edit_catalogs','catalogs','2022-11-05 05:21:48','2022-11-05 05:21:48'),(29,'add_catalogs','catalogs','2022-11-05 05:21:48','2022-11-05 05:21:48'),(30,'delete_catalogs','catalogs','2022-11-05 05:21:48','2022-11-05 05:21:48'),(31,'browse_categories','categories','2022-11-05 05:22:29','2022-11-05 05:22:29'),(32,'read_categories','categories','2022-11-05 05:22:29','2022-11-05 05:22:29'),(33,'edit_categories','categories','2022-11-05 05:22:29','2022-11-05 05:22:29'),(34,'add_categories','categories','2022-11-05 05:22:29','2022-11-05 05:22:29'),(35,'delete_categories','categories','2022-11-05 05:22:29','2022-11-05 05:22:29'),(36,'browse_metakeys','metakeys','2022-11-05 06:20:25','2022-11-05 06:20:25'),(37,'read_metakeys','metakeys','2022-11-05 06:20:25','2022-11-05 06:20:25'),(38,'edit_metakeys','metakeys','2022-11-05 06:20:25','2022-11-05 06:20:25'),(39,'add_metakeys','metakeys','2022-11-05 06:20:25','2022-11-05 06:20:25'),(40,'delete_metakeys','metakeys','2022-11-05 06:20:25','2022-11-05 06:20:25');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2022-11-05 04:20:05','2022-11-05 04:20:05'),(2,'user','Normal User','2022-11-05 04:20:05','2022-11-05 04:20:05');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Wael','admin@admin.com','users/default.png',NULL,'$2y$10$rmEktxPFaX063yAhm2Zkeukv0GYFD1gFjvJoYn4HAQhfLw1xF.GLG',NULL,NULL,'2022-11-05 04:22:18','2022-11-05 04:22:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08 16:15:47
