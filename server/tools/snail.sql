CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `alt` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;



 CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `bookid` varchar(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;