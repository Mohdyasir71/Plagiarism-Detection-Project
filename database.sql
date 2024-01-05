/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - plagiarism
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`plagiarism` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `plagiarism`;

/*Table structure for table `internet_content` */

DROP TABLE IF EXISTS `internet_content`;

CREATE TABLE `internet_content` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `internet_content` */

insert  into `internet_content`(`id`,`file_path`) values (1,'https://www.iul.ac.in/About/Overview/Overview.aspx'),(2,'https://www.iul.ac.in/About/Overview/Overview.aspx');

/*Table structure for table `login_info` */

DROP TABLE IF EXISTS `login_info`;

CREATE TABLE `login_info` (
  `user` varchar(30) NOT NULL,
  `pswd` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `mobile` decimal(10,0) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_info` */

insert  into `login_info`(`user`,`pswd`,`name`,`gender`,`mobile`,`addr`) values ('aa@gmail.com','656','656','Male','5675','hfh'),('analyze','123456','Mohd','Male','9839434821','Aliganj Lucknow'),('yasir@gmail.com','123456','Analyze Infoech','Female','1020304050','analyzeinfotech.in'),('anjali','123456','Anjali Verma','Male','10203050','Lucknow'),('apoorva','123456','Apoorva ','Female','1020304050','Lucknow'),('apoorva@gmail.com','123','apoorva','Female','3422','Lucknow');

/*Table structure for table `uploadfile` */

DROP TABLE IF EXISTS `uploadfile`;

CREATE TABLE `uploadfile` (
  `fileno` int(4) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`fileno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `uploadfile` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
