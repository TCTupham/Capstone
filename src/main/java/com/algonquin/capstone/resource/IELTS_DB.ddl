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


CREATE TABLE `ielts_db`.`questions` (
  id CHAR(40) not null PRIMARY KEY,
  question TEXT,
  option1 TEXT,
  option2 TEXT,
  option3 TEXT,
  option4 TEXT,
  answer CHAR(2),
  topic TEXT,
  datecreated  Date
);
