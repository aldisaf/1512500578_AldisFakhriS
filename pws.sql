# Host: localhost  (Version 5.5.5-10.1.30-MariaDB)
# Date: 2018-05-18 20:25:44
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "categories"
#

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "categories"
#

INSERT INTO `categories` VALUES (1,'2018-05-18 10:25:52',NULL,'2018-05-18 14:35:51','Magazine'),(2,'2018-05-18 10:28:26','2018-05-18 11:05:50','2018-05-18 11:05:50','Novel'),(3,'2018-05-18 10:29:44',NULL,'2018-05-18 10:29:44','Comic'),(4,'2018-05-18 14:34:44','2018-05-18 14:36:54','2018-05-18 14:36:54','Biography'),(5,'2018-05-18 14:34:54',NULL,'2018-05-18 14:34:54','Novel');

#
# Structure for table "books"
#

CREATE TABLE `books` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `category_id` bigint(20) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `synopsis` varchar(255) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "books"
#

