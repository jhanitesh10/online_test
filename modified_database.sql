/*
SQLyog Community v12.2.2 (64 bit)
MySQL - 5.6.30-0ubuntu0.14.04.1 : Database - nitesh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nitesh` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nitesh`;

/*Table structure for table `admin_login` */

DROP TABLE IF EXISTS `admin_login`;

CREATE TABLE `admin_login` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(50) NOT NULL,
  `admin_pass` varchar(50) NOT NULL,
  `created_on` datetime(5) NOT NULL,
  `updated_on` datetime(5) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin_login` */

LOCK TABLES `admin_login` WRITE;

insert  into `admin_login`(`id`,`admin_id`,`admin_pass`,`created_on`,`updated_on`) values 
(1,'admin','admin12345','2016-06-28 17:31:01.00000','2016-06-28 17:31:01.00000');

UNLOCK TABLES;

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `q_type` int(25) NOT NULL,
  `img_url` varchar(40) NOT NULL,
  `question` tinytext NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

LOCK TABLES `questions` WRITE;

insert  into `questions`(`id`,`q_type`,`img_url`,`question`,`answer1`,`answer2`,`answer3`,`answer4`,`answer`,`created_on`,`updated_on`) values 
(1,1,'','What  Default Data Type ?','String','Variant','Integer','Boolear','2','2016-07-01 13:12:48.000000','2016-07-01 13:12:48.000000'),
(2,1,'','What is Default Form Border Style ?','Fixed','Single','None','Sizeable','3','2016-07-01 13:16:24.000000','2016-07-01 13:16:24.000000'),
(3,1,'','Which is not type of Control ?','text','lable','checkbox','option button','1','2016-07-01 13:17:18.000000','2016-07-01 13:17:18.000000'),
(4,1,'','Which city is known as The City of Palaces','Kolkatta','Jerusalem','Mumbai','Udaipur','1','2016-07-01 13:18:07.000000','2016-07-01 13:18:07.000000'),
(5,1,'','The Gateway of India is ?','Delhi','Kolkatta','Mumbai','Udaipur','3','2016-07-01 13:19:04.000000','2016-07-01 13:19:04.000000'),
(6,1,'','Which city is known as Pink City?','Hyderabad','Jaipur','Mumbai','Udaipur','2','2016-07-01 13:20:00.000000','2016-07-01 13:20:00.000000'),
(7,1,'','Which is the city of Golden Temple?','Amritsar','Banaras','Mumbai','Udaipur','1','2016-07-01 13:20:47.000000','2016-07-01 13:20:47.000000'),
(8,1,'','The Land of Lilies ?','Finland','Banaras','Mumbai','Canada','4','2016-07-01 13:21:32.000000','2016-07-01 13:21:32.000000'),
(9,1,'','The symbol dove signifies ?','Strength','Dignity','Peace','Distress','3','2016-07-01 13:22:29.000000','2016-07-01 13:22:29.000000'),
(10,1,'','how year u old?','20','25','26','22','1','2016-07-01 14:11:05.000000','2016-07-01 14:11:05.000000'),
(11,2,'','PC Stands for','pocket computer','personal computer','phisycal computer','personal','2','2016-07-01 16:19:03.000000','2016-07-01 16:19:03.000000'),
(12,2,'','RAM Stands for','Random Access Memory','Random accelerated Memory','Random Access Machenism','Random Accurace Mantan','1','2016-07-01 16:20:06.000000','2016-07-01 16:20:06.000000'),
(13,2,'','mouse is the type of device','input','pointing','scanning','none of the above','2','2016-07-01 16:21:28.000000','2016-07-01 16:21:28.000000'),
(14,2,'','keybord is the type of device','input','pointing','scanning','none of the above','1','2016-07-01 16:22:02.000000','2016-07-01 16:22:02.000000'),
(15,2,'','scanner is the type of device','input','pointing','scanning','none of the above','3','2016-07-01 16:22:38.000000','2016-07-01 16:22:38.000000'),
(16,2,'','the touchable part of computer is called as','hardware','software','none','none of the above','1','2016-07-01 16:23:30.000000','2016-07-01 16:23:30.000000'),
(17,2,'','to deleter the character towards left side is','backspace','del','inst','none of the above','1','2016-07-01 16:24:23.000000','2016-07-01 16:24:23.000000'),
(18,2,'','to move the cursor beginning of the which key is used','end','home','pgup','pgdn','1','2016-07-01 16:25:37.000000','2016-07-01 16:25:37.000000'),
(19,2,'','to move the cursor beginning of the which key is used','end','home','pgup','pgdn','2','2016-07-01 16:26:28.000000','2016-07-01 16:26:28.000000'),
(20,2,'','f caps lock key is on then','small letters are printed','none','capital letters print','pgdn','3','2016-07-01 16:27:21.000000','2016-07-01 16:27:21.000000'),
(21,3,'','business is?','money','strategy','mind','game','1','2016-07-02 22:52:43.000000','2016-07-02 22:52:43.000000'),
(22,3,'','play business like?','money','strategy','mind','game','4','2016-07-02 22:54:42.000000','2016-07-02 22:54:42.000000'),
(23,3,'Screenshot from 2016-06-15 16:11:44.png','what u see in image?','logic ','none','game ','picture','none','2016-07-04 00:00:32.000000','2016-07-04 00:00:32.000000'),
(24,1,'','mumbai lies inside?','india','pakistan','us','uk','1','2016-07-08 16:09:01.000000','2016-07-08 16:09:01.000000'),
(25,1,'','delhi lies inside?','india','pakistan','us','uk','1','2016-07-08 16:09:13.000000','2016-07-08 16:09:13.000000'),
(26,1,'','panjab lies inside?','india','pakistan','us','uk','1','2016-07-08 16:09:27.000000','2016-07-08 16:09:27.000000'),
(27,1,'','us','united state','use system','uk','us','1','2016-07-08 16:10:05.000000','2016-07-08 16:10:05.000000'),
(28,2,'','linux is?','os','kernel','platform','os','2','2016-07-08 16:18:34.000000','2016-07-08 16:18:34.000000'),
(29,2,'','windows is?','os','kernel','platform','as','1','2016-07-08 16:18:56.000000','2016-07-08 16:18:56.000000'),
(30,2,'','pantos is?','os','kernel','platform','as','2','2016-07-08 16:19:17.000000','2016-07-08 16:19:17.000000'),
(31,2,'','cmos battery present on ?','motherbord ','display','hdd','ram','1','2016-07-08 16:20:00.000000','2016-07-08 16:20:00.000000'),
(32,2,'','processer present on ?','motherbord ','display','hdd','ram','1','2016-07-08 16:20:27.000000','2016-07-08 16:20:27.000000'),
(33,2,'','click nois error is due to present on ?','motherbord ','display','hdd','ram','3','2016-07-08 16:20:55.000000','2016-07-08 16:20:55.000000'),
(34,3,'9ba25796112cad616be27e473ae1e149.jpg','character identification?','tom','jerry','banna','bheem','1','2016-07-08 23:42:06.000000','2016-07-08 23:42:06.000000'),
(35,3,'images (2).jpg','character identification?','tom','jerry','banna','bheem','2','2016-07-08 23:42:36.000000','2016-07-08 23:42:36.000000'),
(36,3,'images (1).jpg','character identification?','tom','jerry','banna','minnions','4','2016-07-08 23:43:03.000000','2016-07-08 23:43:03.000000'),
(37,3,'images (3).jpg','character identification?','tom','jerry','novita','minnions','3','2016-07-08 23:43:22.000000','2016-07-08 23:43:22.000000'),
(38,3,'images (4).jpg','character identification?','tom','scooby','novita','minnions','2','2016-07-08 23:43:47.000000','2016-07-08 23:43:47.000000'),
(39,3,'images.jpg','character identification?','hero','scooby','novita','minnions','1','2016-07-08 23:44:13.000000','2016-07-08 23:44:13.000000'),
(40,3,'sql.png','what u see in pic?','database','game','only table','none','1','2016-07-09 13:14:44.000000','2016-07-09 13:14:44.000000'),
(41,3,'','hey?','a','b','c','d','1','2016-07-14 15:26:04.000000','2016-07-14 15:26:04.000000'),
(42,3,'','pic?','1','2','3','5','3','2016-07-14 16:44:12.000000','2016-07-14 16:44:12.000000'),
(43,3,'multiple_series.jpg','pic?','1','2','3','5','3','2016-07-14 16:44:50.000000','2016-07-14 16:44:50.000000');

UNLOCK TABLES;

/*Table structure for table `subject_status` */

DROP TABLE IF EXISTS `subject_status`;

CREATE TABLE `subject_status` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `subject_type` int(10) NOT NULL,
  `created_on` datetime(5) DEFAULT NULL,
  `updated_on` datetime(5) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `subject_status` */

LOCK TABLES `subject_status` WRITE;

insert  into `subject_status`(`id`,`user_id`,`status`,`subject_type`,`created_on`,`updated_on`) values 
(1,'1','1',1,'2016-07-14 13:48:36.00000','2016-07-14 13:48:36.00000'),
(2,'1','0',2,'2016-07-14 13:42:28.00000','2016-07-14 13:42:28.00000'),
(3,'1','0',3,'2016-07-14 13:42:31.00000','2016-07-14 13:42:31.00000'),
(4,'2','1',1,'2016-07-14 16:27:08.00000','2016-07-14 16:27:08.00000'),
(5,'2','1',2,'2016-07-14 16:30:30.00000','2016-07-14 16:30:30.00000'),
(6,'2','1',3,'2016-07-14 16:42:24.00000','2016-07-14 16:42:24.00000'),
(7,'3','1',1,'2016-07-14 17:07:23.00000','2016-07-14 17:07:23.00000'),
(8,'3','0',2,'2016-07-14 17:06:48.00000','2016-07-14 17:06:48.00000'),
(9,'3','0',3,'2016-07-14 17:06:50.00000','2016-07-14 17:06:50.00000');

UNLOCK TABLES;

/*Table structure for table `test_status` */

DROP TABLE IF EXISTS `test_status`;

CREATE TABLE `test_status` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `total_question` int(255) NOT NULL,
  `correct_ans` int(255) NOT NULL,
  `wrong_ans` int(255) NOT NULL,
  `percentage` float NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_on` datetime(5) NOT NULL,
  `updated_on` datetime(5) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `test_status` */

LOCK TABLES `test_status` WRITE;

insert  into `test_status`(`id`,`user_id`,`total_question`,`correct_ans`,`wrong_ans`,`percentage`,`status`,`created_on`,`updated_on`) values 
(1,'2',10,1,9,10,'FAIL','2016-07-14 16:27:12.00000','2016-07-14 16:27:12.00000'),
(2,'2',10,1,9,10,'FAIL','2016-07-14 16:27:30.00000','2016-07-14 16:27:30.00000'),
(3,'2',10,2,8,20,'FAIL','2016-07-14 16:30:36.00000','2016-07-14 16:30:36.00000'),
(4,'2',10,2,8,20,'FAIL','2016-07-14 16:30:52.00000','2016-07-14 16:30:52.00000'),
(5,'1',0,0,0,0,'FAIL','2016-07-14 16:32:27.00000','2016-07-14 16:32:27.00000'),
(6,'2',10,2,8,20,'FAIL','2016-07-14 16:42:27.00000','2016-07-14 16:42:27.00000'),
(7,'3',10,3,7,30,'FAIL','2016-07-14 17:07:27.00000','2016-07-14 17:07:27.00000');

UNLOCK TABLES;

/*Table structure for table `user_registration` */

DROP TABLE IF EXISTS `user_registration`;

CREATE TABLE `user_registration` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_userid` varchar(200) NOT NULL,
  `user_passid` varchar(200) NOT NULL,
  `user_country` varchar(200) NOT NULL,
  `created_on` datetime(5) NOT NULL,
  `updated_on` datetime(5) NOT NULL,
  KEY `student_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user_registration` */

LOCK TABLES `user_registration` WRITE;

insert  into `user_registration`(`user_id`,`user_name`,`user_email`,`user_userid`,`user_passid`,`user_country`,`created_on`,`updated_on`) values 
(1,'nitesh','jhanitesh10@gmail.com','nitesh','12345','male','2016-07-14 13:41:38.00000','2016-07-14 13:41:38.00000'),
(2,'vikas','vikas@gmai.com','vikas','12345','male','2016-07-14 16:26:19.00000','2016-07-14 16:26:19.00000'),
(3,'gaurav','gaurav@gmail.com','gaurav','12345','male','2016-07-14 17:03:20.00000','2016-07-14 17:03:20.00000');

UNLOCK TABLES;

/*Table structure for table `user_response` */

DROP TABLE IF EXISTS `user_response`;

CREATE TABLE `user_response` (
  `subject_id` varchar(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `option_id` int(255) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_response` */

LOCK TABLES `user_response` WRITE;

insert  into `user_response`(`subject_id`,`user_id`,`question_id`,`option_id`,`created_on`,`updated_on`) values 
('1',1,8,1,'2016-07-14 13:43:58.000000','2016-07-14 13:43:58.000000'),
('1',1,5,1,'2016-07-14 13:44:04.000000','2016-07-14 13:44:04.000000'),
('1',1,6,2,'2016-07-14 13:44:07.000000','2016-07-14 13:44:07.000000'),
('1',1,25,1,'2016-07-14 13:44:09.000000','2016-07-14 13:44:09.000000'),
('1',1,10,1,'2016-07-14 13:44:11.000000','2016-07-14 13:44:11.000000'),
('1',1,26,1,'2016-07-14 13:44:12.000000','2016-07-14 13:44:12.000000'),
('1',1,27,1,'2016-07-14 13:44:15.000000','2016-07-14 13:44:15.000000'),
('1',1,3,2,'2016-07-14 13:44:19.000000','2016-07-14 13:44:19.000000'),
('1',1,1,3,'2016-07-14 13:44:22.000000','2016-07-14 13:44:22.000000'),
('1',1,9,2,'2016-07-14 13:44:26.000000','2016-07-14 13:44:26.000000'),
('1',2,3,3,'2016-07-14 16:26:55.000000','2016-07-14 16:26:55.000000'),
('1',2,7,4,'2016-07-14 16:26:57.000000','2016-07-14 16:26:57.000000'),
('1',2,1,4,'2016-07-14 16:26:59.000000','2016-07-14 16:26:59.000000'),
('1',2,5,4,'2016-07-14 16:27:00.000000','2016-07-14 16:27:00.000000'),
('1',2,10,4,'2016-07-14 16:27:02.000000','2016-07-14 16:27:02.000000'),
('1',2,25,4,'2016-07-14 16:27:03.000000','2016-07-14 16:27:03.000000'),
('1',2,6,3,'2016-07-14 16:27:04.000000','2016-07-14 16:27:04.000000'),
('1',2,27,4,'2016-07-14 16:27:06.000000','2016-07-14 16:27:06.000000'),
('1',2,8,3,'2016-07-14 16:27:07.000000','2016-07-14 16:27:07.000000'),
('1',2,2,3,'2016-07-14 16:27:08.000000','2016-07-14 16:27:08.000000'),
('2',2,14,1,'2016-07-14 16:30:18.000000','2016-07-14 16:30:18.000000'),
('2',2,11,3,'2016-07-14 16:30:19.000000','2016-07-14 16:30:19.000000'),
('2',2,29,3,'2016-07-14 16:30:20.000000','2016-07-14 16:30:20.000000'),
('2',2,30,3,'2016-07-14 16:30:25.000000','2016-07-14 16:30:25.000000'),
('2',2,20,3,'2016-07-14 16:30:26.000000','2016-07-14 16:30:26.000000'),
('2',2,28,4,'2016-07-14 16:30:27.000000','2016-07-14 16:30:27.000000'),
('2',2,16,4,'2016-07-14 16:30:28.000000','2016-07-14 16:30:28.000000'),
('2',2,19,4,'2016-07-14 16:30:29.000000','2016-07-14 16:30:29.000000'),
('2',2,18,4,'2016-07-14 16:30:30.000000','2016-07-14 16:30:30.000000'),
('2',2,12,4,'2016-07-14 16:30:30.000000','2016-07-14 16:30:30.000000'),
('2',1,12,1,'2016-07-14 16:32:37.000000','2016-07-14 16:32:37.000000'),
('3',2,23,3,'2016-07-14 16:42:09.000000','2016-07-14 16:42:09.000000'),
('3',2,39,4,'2016-07-14 16:42:10.000000','2016-07-14 16:42:10.000000'),
('3',2,37,2,'2016-07-14 16:42:11.000000','2016-07-14 16:42:11.000000'),
('3',2,38,3,'2016-07-14 16:42:13.000000','2016-07-14 16:42:13.000000'),
('3',2,35,3,'2016-07-14 16:42:14.000000','2016-07-14 16:42:14.000000'),
('3',2,36,3,'2016-07-14 16:42:15.000000','2016-07-14 16:42:15.000000'),
('3',2,22,4,'2016-07-14 16:42:17.000000','2016-07-14 16:42:17.000000'),
('3',2,34,3,'2016-07-14 16:42:20.000000','2016-07-14 16:42:20.000000'),
('3',2,21,2,'2016-07-14 16:42:22.000000','2016-07-14 16:42:22.000000'),
('3',2,40,1,'2016-07-14 16:42:24.000000','2016-07-14 16:42:24.000000'),
('1',3,25,1,'2016-07-14 17:06:57.000000','2016-07-14 17:06:57.000000'),
('1',3,24,1,'2016-07-14 17:06:59.000000','2016-07-14 17:06:59.000000'),
('1',3,1,3,'2016-07-14 17:07:02.000000','2016-07-14 17:07:02.000000'),
('1',3,5,1,'2016-07-14 17:07:06.000000','2016-07-14 17:07:06.000000'),
('1',3,27,2,'2016-07-14 17:07:08.000000','2016-07-14 17:07:08.000000'),
('1',3,6,3,'2016-07-14 17:07:11.000000','2016-07-14 17:07:11.000000'),
('1',3,7,4,'2016-07-14 17:07:14.000000','2016-07-14 17:07:14.000000'),
('1',3,2,2,'2016-07-14 17:07:18.000000','2016-07-14 17:07:18.000000'),
('1',3,3,1,'2016-07-14 17:07:21.000000','2016-07-14 17:07:21.000000'),
('1',3,8,1,'2016-07-14 17:07:23.000000','2016-07-14 17:07:23.000000');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
