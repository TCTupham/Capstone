DROP DATABASE  IF EXISTS IELTS_DB;

CREATE DATABASE IELTS_DB;

Use IELTS_DB;

Create table Users(
ID INT NOT NULL AUTO_INCREMENT UNIQUE KEY,
FULLNAME VARCHAR(30) NOT NULL,
EMAIL VARCHAR(30) PRIMARY KEY,
USERNAME VARCHAR(30) NOT NULL UNIQUE KEY,
PASSWORD VARCHAR(30) NOT NULL,
ROLE VARCHAR(20)
);

INSERT INTO `ielts_db`.`users`
(
`FULLNAME`,
`EMAIL`,
`USERNAME`,
`PASSWORD`,
`ROLE`)
VALUES
("Admin",
"admin@algonquinlive.com",
"admin",
"admin",
"Admin");


INSERT INTO `ielts_db`.`users`
(
`FULLNAME`,
`EMAIL`,
`USERNAME`,
`PASSWORD`,
`ROLE`)
VALUES
("User 1",
"user1@algonquinlive.com",
"user1",
"12345678",
"User");

INSERT INTO `ielts_db`.`users`
(
`FULLNAME`,
`EMAIL`,
`USERNAME`,
`PASSWORD`,
`ROLE`)
VALUES
("User",
"user@algonquinlive.com",
"user",
"12345678",
"User");

CREATE TABLE `ielts_db`.`quiz` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(1000) NULL,
  `time` INT NULL,
  `level` VARCHAR(45) NOT NULL,
  `datecreated` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `level_UNIQUE` (`level` ASC) VISIBLE);

CREATE TABLE `ielts_db`.`questions` (
  `id` char(40) NOT NULL,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` char(2) DEFAULT NULL,
  `topic` text,
  `datecreated` date DEFAULT NULL,
  `idquiz` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idquiz_idx` (`idquiz`),
  CONSTRAINT `quiz_question_fk` FOREIGN KEY (`idquiz`) REFERENCES `quiz` (`id`)
);


