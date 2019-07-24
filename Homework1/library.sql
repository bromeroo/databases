DROP database IF EXISTS library;
CREATE database library;
USE library;

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `gender`  varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

INSERT INTO `authors` VALUES (1,'Knut Hamsun','Norway','m'),(2,'Pearl Buck','USA','w'),(3,'Hermann Hesse','Germany','m'),
(4,'Ernest Hemingway','USA','m');

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `ISBN` int(20) DEFAULT NULL,
  `authorID` int(50) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`book`)
) 

INSERT INTO `books` VALUES (9789754344073, 1,'Hunger'),(9789754344089, 2, 'Ana'), (9789754344078, 3,'Boncuk Oyunu'),
(9789754344567,4,'The Old Man And The Sea');
UNLOCK TABLES;

DROP TABLE IF EXISTS `copies`;

CREATE TABLE `copies` (
  `id` int(11) NOT NULL,
  `ISBN` int(20) NOT NULL,
  `quantity` int(19) NOT NULL,
  `available` int(19) DEFAULT NULL,
  PRIMARY KEY (`copy`)
) 

INSERT INTO `copies` VALUES (1,9789754344073,3, 2),(2,9789754344089,1,0),(3,9789754344078, 2, 1),(4,9789754344567,3,3);
UNLOCK TABLES;

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`member`)
) 

INSERT INTO `copies` VALUES (1,'sena','avci.msena@gmail.com'),(2,'emre','ynsemreavci@gmail.com'),(3,'asli', 'asli@gmail.com'),(4,'nazli','nazli@gmail.com');
UNLOCK TABLES;
