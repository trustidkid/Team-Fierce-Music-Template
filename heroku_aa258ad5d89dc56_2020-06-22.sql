# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: us-cdbr-east-05.cleardb.net (MySQL 5.5.62-log)
# Database: heroku_aa258ad5d89dc56
# Generation Time: 2020-06-22 12:34:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tokens`;

CREATE TABLE `tokens` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `tokenid` varchar(30) NOT NULL,
  `reqdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;

INSERT INTO `tokens` (`id`, `email`, `tokenid`, `reqdate`)
VALUES
	(1,'adebola@gmail.com','F023CEg95dI5I7IadC8i6aH9ieHcdH','2020-05-27 03:05:29'),
	(11,'adebola@gmail.com','4A5CbeH5EA7a5IHBc06I9e5587dd76','2020-05-27 03:05:44'),
	(21,'adebola@gmail.com','0H4f9i1h23Cg23fcB9I07FF823FHiH','2020-05-27 01:05:22'),
	(31,'adebola@gmail.com','4HEBb89i79C9abF74454Hh5CFbChcg','2020-05-28 02:05:04'),
	(41,'emmanuel@gmail.com','AbdH9Fb08Cc7fBgEH9234F9FBg6AAe','2020-05-28 03:05:39'),
	(51,'bolaa@gmail.com','E6IBc237f4I7a68B5FCF6F97AaI9gc','2020-05-30 03:05:32');

/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `datesubmit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `firstname`, `lastname`, `datesubmit`)
VALUES
	(1,'adebola@gmail.com','$2y$10$jVGj.0TfMM6ZS1QdKq.VJ.kh4GtDJDtmFrOQFLkKDa1ACFGk0efkO','abebola','ajayi','2020-05-27 11:28:34'),
	(11,'arikan.udoka@gmail.com','$2y$10$ihk4IbDuHlNtCD412P8yae3cxohhVYQZ3FRTgbBlHO4k0v5Ogd4Ve','Ari','Udoka','2020-05-27 12:00:41'),
	(21,'emmanuel@gmail.com','$2y$10$m8QDhsh3ld.4UkZr.Yr1yuezVgzZIn9Y/HU0FN07Pfv5HjMC0J0m6','emmanuel','ajayi','2020-05-27 13:28:17'),
	(31,'anumuduchukwuebuka@gmail.com','$2y$10$nbYvmMKiPhKHF/8QrjFfaO4mXklS0p4AYVbShFyf5.yD0/d6PvJjG','Victor','Anumudu','2020-05-27 14:15:02'),
	(41,'emmy1@yahoo.com','$2y$10$f.9eX7kWCVQDzHgyGvGxjedSh/dwTqt32aq1/M00aSh6wzAMTaeBe','Adeleye','Ladejobi','2020-05-27 15:54:19'),
	(51,'enibabe10@yahoo.com','$2y$10$cozqQ9JRDPas0EPIpwCnDOPwwG4zYfM3H0k6s061MtFv/w2TPbOu2','Ggh','Ggh','2020-05-30 14:24:03'),
	(61,'bolaa@gmail.com','$2y$10$A4.J/vOrM3Mbhn4ZhHgQ6OC4frmkWflQsFuRPMK762.w2.xa4ASNG','semiu','biliaminu','2020-05-30 14:45:57');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
