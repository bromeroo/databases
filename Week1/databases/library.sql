DROP TABLE IF EXISTS `library`;
CREATE DATABASE library;
CREATE TABLE `authors` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` CHAR(35) NOT NULL DEFAULT '',
  `Country` CHAR(35) NOT NULL DEFAULT '',
  `Born_in` CHAR(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
INSERT INTO `authors` VALUES (1,`Bea Johnson`,`United Kingdom`, `London`);
INSERT INTO `authors` VALUES (2,`Will McCallum`,`United Kingdom`, `London`);
INSERT INTO `authors` VALUES (3,`Emma Mitchell`, `United Kingdom`, `London`);
INSERT INTO `authors` VALUES (4,`Meik Wiking`, `United Kingdom`, `London`);
INSERT INTO `authors` VALUES (5,`Mark Manson`, `United Kingdom`, `London`);


CREATE TABLE `books` (
  `ISBN` INT(13) NOT NULL,
  `ID_author` INT(11) NOT NULL DEFAULT '',
  `Title` CHAR(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`ISBN`)
);
INSERT INTO `books` VALUES (9780141981765,1,`Zero Waste Home: The Ultimate Guide to Simplifying Your Life`);
INSERT INTO `books` VALUES (9780241388938, 2,`How to Give Up Plastic : Simple steps to living consciously on our blue planet`);
INSERT INTO `books` VALUES (9781789290424, 3,`The Wild Remedy : How Nature Mends Us - A Diary`);
INSERT INTO `books` VALUES (9781910552650,3,`Making Winter : A Creative Guide for Surviving the Winter Months`);
INSERT INTO `books` VALUES (9780241283912,4,`The Little Book of Hygge : The Danish Way to Live Well`);

CREATE TABLE `copies` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `ISBN` INT(11) NOT NULL DEFAULT '',
  `Is_available` BIT() NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);
INSERT INTO `copies` VALUES (1, 9780141981765, 1);
INSERT INTO `copies` VALUES (2, 9780141981765, 1);
INSERT INTO `copies` VALUES (3, 9781789290424, 1);
INSERT INTO `copies` VALUES (4, 9781910552650, 1);
INSERT INTO `copies` VALUES (5, 9780241283912, 1);

CREATE TABLE `rsvps` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `ID_copy` INT(11) NOT NULL,
  `ID_borrower` INT(11) NOT NULL,
  `Due_date` DATE NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `rsvps` VALUES (1,1,1,2019-09-01);
INSERT INTO `rsvps` VALUES (2,2,2,2019-09-01);
INSERT INTO `rsvps` VALUES (3,3,2,2019-09-01);
INSERT INTO `rsvps` VALUES (4,5,3,2019-09-01);
INSERT INTO `rsvps` VALUES (5,4,5,2019-09-01);

CREATE TABLE `borrowers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` CHAR(35) NOT NULL DEFAULT '',
  `Email` CHAR(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
INSERT INTO `borrowers` VALUES (1,'Alfi','alfi.yusrina@hotmail.com');
INSERT INTO `borrowers` VALUES (2,'Stan','Stan@hotmail.com');
INSERT INTO `borrowers` VALUES (3,'Mike','Mike@hotmail.com');
INSERT INTO `borrowers` VALUES (4,'Sasha','Sasha@hotmail.com');
INSERT INTO `borrowers` VALUES (5,'Rob','Rob@hotmail.com');
