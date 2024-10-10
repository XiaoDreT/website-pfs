/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.6.21 : Database - forklift
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`forklift` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `forklift`;

/* Trigger structure for table `article` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `bein_article` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `bein_article` BEFORE INSERT ON `article` FOR EACH ROW BEGIN
	set new.insert_date = now();
    END */$$


DELIMITER ;

/* Trigger structure for table `article` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `beup_article` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `beup_article` BEFORE UPDATE ON `article` FOR EACH ROW BEGIN
	set new.update_date = now();
    END */$$


DELIMITER ;

/* Trigger structure for table `gallery` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `bein_gallery` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `bein_gallery` BEFORE INSERT ON `gallery` FOR EACH ROW BEGIN
	set new.upload_date = now();
    END */$$


DELIMITER ;

/* Trigger structure for table `users` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `bein_users` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `bein_users` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	set new.insert_date=now();
    END */$$


DELIMITER ;

/* Trigger structure for table `users` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `beup_users` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `beup_users` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	set new.update_date = now();
    END */$$


DELIMITER ;

/*Table structure for table `v_article` */

DROP TABLE IF EXISTS `v_article`;

/*!50001 DROP VIEW IF EXISTS `v_article` */;
/*!50001 DROP TABLE IF EXISTS `v_article` */;

/*!50001 CREATE TABLE  `v_article`(
 `id` int(5) ,
 `title` varchar(255) ,
 `preface` varchar(255) ,
 `detail` text ,
 `keyword` varchar(75) ,
 `image` varchar(255) ,
 `status` tinyint(1) ,
 `insert_user` int(11) ,
 `insert_date` datetime ,
 `update_user` int(11) ,
 `update_date` datetime ,
 `release_date` datetime ,
 `release_age` int(7) 
)*/;

/*View structure for view v_article */

/*!50001 DROP TABLE IF EXISTS `v_article` */;
/*!50001 DROP VIEW IF EXISTS `v_article` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_article` AS select `article`.`id` AS `id`,`article`.`title` AS `title`,`article`.`preface` AS `preface`,`article`.`detail` AS `detail`,`article`.`keyword` AS `keyword`,`article`.`image` AS `image`,`article`.`status` AS `status`,`article`.`insert_user` AS `insert_user`,`article`.`insert_date` AS `insert_date`,`article`.`update_user` AS `update_user`,`article`.`update_date` AS `update_date`,`article`.`release_date` AS `release_date`,(select (to_days(now()) - to_days(`article`.`release_date`))) AS `release_age` from `article` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
