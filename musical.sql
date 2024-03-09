/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.4.28-MariaDB : Database - musical
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`musical` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;

USE `musical`;

/*Table structure for table `about_us` */

DROP TABLE IF EXISTS `about_us`;

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `about_us` */

/*Table structure for table `alboms` */

DROP TABLE IF EXISTS `alboms`;

CREATE TABLE `alboms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `music_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `alboms` */

insert  into `alboms`(`id`,`fullname`,`create_date`,`artist_id`,`music_id`) values (1,'Cool','2024-02-15',1,1),(2,'Только твоя','2024-02-16',2,2);

/*Table structure for table `artist` */

DROP TABLE IF EXISTS `artist`;

CREATE TABLE `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `discription` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `artist` */

insert  into `artist`(`id`,`fullname`,`birthday`,`email`,`phone`,`discription`) values (1,'Achilov Fazliddin','2024-02-23','fazik.it@mail.ru',' 992927699972','545455445454544'),(2,'Ирина Ортман','2024-02-13','irina@mail.ru','9292929922','64645464546\r\n\r\n\r\n'),(3,'Лера Огонёк','2024-02-13','lera@mail.ru','454654665464','456464564646454				'),(8,'Джонгук','2024-02-12','john@mail.ru','89899898','5564545\r\n5\r\n22');

/*Table structure for table `music` */

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `albom_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_constraint_name` (`fullname`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `music` */

insert  into `music`(`id`,`fullname`,`artist_id`,`albom_id`) values (3,'Ed Sheeran - Shape of You (Official Music Video)',1,1),(31,'Egzod_Maestro_Chives_Neoni_-_Royalty_73235442',2,2),(41,'1656698893_basster-x-leo-sohil-premera-treka-original-version-2022',NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`email`,`phone`) values (1,'abdu','abdu','abdu','abdu'),(2,'fazik','pass','fazik.it@mail.ru','92-769-99-72');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
