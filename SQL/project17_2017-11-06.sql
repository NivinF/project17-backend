# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Värd: 127.0.0.1 (MySQL 5.7.20)
# Databas: project17
# Genereringstid: 2017-11-06 11:35:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Tabelldump games
# ------------------------------------------------------------

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `play_time` int(11) DEFAULT NULL,
  `language` varchar(500) DEFAULT NULL,
  `game_category_id` int(11) DEFAULT NULL,
  `nbr_players` int(11) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;

INSERT INTO `games` (`id`, `title`, `rating`, `play_time`, `language`, `game_category_id`, `nbr_players`, `min_age`)
VALUES
	(1,'Exit',10,2,'Engelska',10,4,12),
	(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,'hej',10,2,'hej',10,4,12);

/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(65) DEFAULT '',
  `password` varchar(65) DEFAULT '',
  `avatar` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;

INSERT INTO `members` (`id`, `username`, `password`, `avatar`)
VALUES
	(1,'dani','dani',NULL),
	(2,'test1','test1',NULL),
	(3,'test2','test2',NULL);

/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
