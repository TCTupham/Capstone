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

drop table questions;
CREATE TABLE `questions` (
  `id` char(40) NOT NULL,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` char(2) DEFAULT NULL,
  `topic` text,
  `datecreated` date DEFAULT NULL,
  `level` text not null,
  PRIMARY KEY (`id`)
);

INSERT INTO questions VALUES ('08b5e8dc-0690-4d86-9203-99fcf1d6dc49', 'What is the capital city of France?', 'Paris', 'Rome', 'Madrid', 'Berlin', '1', 'Geography', '2022-03-17', '1');
INSERT INTO questions VALUES ('a41c1a5e-559d-4c48-b1b2-7759829dc38f', 'What is the chemical formula for water?', 'H2O', 'CO2', 'NaCl', 'NH3', '1', 'Chemistry', '2022-07-12', '2');
INSERT INTO questions VALUES ('f3320cc8-8df9-4d0e-8c14-51da29ecf172', 'Who wrote "The Canterbury Tales"?', 'Geoffrey Chaucer', 'William Shakespeare', 'Jane Austen', 'Charles Dickens', '1', 'Literature', '2022-11-01', '3');
INSERT INTO questions VALUES ('1fbfebb6-31aa-43d3-b60b-6e3d3a39e6a9', 'What is the largest country in the world?', 'Russia', 'China', 'India', 'United States', '1', 'Geography', '2022-05-27', '1');
INSERT INTO questions VALUES ('7d019d0a-73fa-41e6-b9b6-2d6cb886c40a', 'What is the formula for the area of a triangle?', 'A = πr²', 'A = lw', 'A = bh', 'A = (1/2)bh', '3', 'Mathematics', '2022-09-03', '2');
INSERT INTO questions VALUES ('5a9b72e5-df5a-48f8-a15f-5a0c5d0c11a3', 'Who was the first president of the United States?', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'John F. Kennedy', '1', 'History', '2022-12-18', '1');
INSERT INTO questions VALUES ('45cc04e7-7a8f-4bde-b9e6-ee0311d88d3b', 'What is the capital city of Italy?', 'Rome', 'Paris', 'Madrid', 'Berlin', '1', 'Geography', '2022-02-28', '1');
INSERT INTO questions VALUES ('234b9f1c-01f6-4f97-a3d3-7b97ca478c0d', 'What is the smallest planet in the solar system?', 'Mercury', 'Venus', 'Earth', 'Mars', '1', 'Science', '2023-01-09', '2');
INSERT INTO questions VALUES ('15e88310-6d23-469c-91e2-2a8620c8f86e', 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Michelangelo', '1', 'Art', '2022-04-11', '2');
INSERT INTO questions VALUES ('c986f759-8b7d-4966-aa5b-839844f36463', 'Who wrote "Pride and Prejudice"?', 'Jane Austen', 'William Shakespeare', 'Charles Dickens', 'Mark Twain', '1', 'Literature', '2022-06-21', '3');
INSERT INTO questions VALUES ('bdf90fb6-56f6-4a0d-a62d-9d3b15d5bc2c', 'What is the capital city of Brazil?', 'Brasília', 'Rio de Janeiro', 'São Paulo', 'Buenos Aires', '1', 'Geography', '2022-08-02', '1');
INSERT INTO questions VALUES ('9e9a9438-1bfb-4d4e-82f4-4f337deebc4e', 'What is the symbol for the element sodium?', 'Na', 'Fe', 'Au', 'Ag', '1', 'Chemistry', '2022-10-15', '2');
INSERT INTO questions VALUES ('c77d0453-c12c-4f39-9502-464f05a70cb9', 'Who wrote "To Kill a Mockingbird"?', 'Harper Lee', 'F. Scott Fitzgerald', 'Mark Twain', 'Ernest Hemingway', '1', 'Literature', '2022-03-01', '3');
INSERT INTO questions VALUES ('7d234c3a-ba7a-40b5-b6b5-5c5e6aa5e6e5', 'What is the capital city of Australia?', 'Canberra', 'Sydney', 'Melbourne', 'Brisbane', '1', 'Geography', '2022-12-03', '1');
INSERT INTO questions VALUES ('2f1dcb89-7c38-4ee8-b56c-b6c3c6963da1', 'What is the symbol for the element gold?', 'Au', 'Ag', 'Cu', 'Fe', '1', 'Chemistry', '2022-05-09', '2');
INSERT INTO questions VALUES ('3c1f78a9-33b1-4d02-88f6-9968b2090675', 'What is the capital city of Spain?', 'Madrid', 'Barcelona', 'Seville', 'Valencia', '1', 'Geography', '2022-09-18', '1');
INSERT INTO questions VALUES ('2d5e5b5c-e83f-4a15-80c7-8790c0e6ba1a', 'Who wrote "1984"?', 'George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'J.D. Salinger', '1', 'Literature', '2022-11-28', '3');
INSERT INTO questions VALUES ('6f9023da-c3b6-4c87-ae4b-1ad2d7f8fbf6', 'What is the symbol for the element iron?', 'Fe', 'Au', 'Ag', 'Cu', '1', 'Chemistry', '2022-07-07', '2');
INSERT INTO questions VALUES ('9c9b01e1-73c1-4646-a7a6-58e71a8fb0dc', 'What is the symbol for the element hydrogen?', 'H', 'He', 'O', 'C', '1', 'Chemistry', '2023-01-20', '2');
INSERT INTO questions VALUES ('b15e99d4-95b4-4f4e-91bf-515e9e52c16e', 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', '1', 'Art', '2023-02-16', '3');
INSERT INTO questions VALUES ('c20f33a9-7d07-4db8-b7c2-e53720d1807a', 'What is the capital city of France?', 'Paris', 'Nice', 'Lyon', 'Marseille', '1', 'Geography', '2023-03-05', '1');
INSERT INTO questions VALUES ('65aa460f-34f8-4233-99c3-c1a2fc2c42fc', 'Who wrote "The Catcher in the Rye"?', 'J.D. Salinger', 'Harper Lee', 'F. Scott Fitzgerald', 'Ernest Hemingway', '1', 'Literature', '2023-04-11', '3');
INSERT INTO questions VALUES ('b8c9b187-9bdf-4bae-8c31-2bc739d76d92', 'What is the symbol for the element carbon?', 'C', 'H', 'O', 'N', '1', 'Chemistry', '2023-05-22', '2');
INSERT INTO questions VALUES ('f1d36d8a-3b3f-4e64-a6d3-8f372214c771', 'What is the capital city of South Korea?', 'Seoul', 'Busan', 'Incheon', 'Daegu', '1', 'Geography', '2023-06-01', '1');
INSERT INTO questions VALUES ('7ed5a5a5-5fb5-4ba8-a7f5-98e15d27a947', 'What is the largest organ in the human body?', 'Skin', 'Liver', 'Heart', 'Lungs', '1', 'Biology', '2023-09-10', '2');
INSERT INTO questions VALUES ('b1d8de01-0e49-48b7-9bba-f8b70255757b', 'What is the capital city of Japan?', 'Tokyo', 'Kyoto', 'Osaka', 'Hiroshima', '1', 'Geography', '2023-10-05', '1');
INSERT INTO questions VALUES ('f511c81d-22b7-47b2-8f1a-b2d23699d7c8', 'Who painted the "Sistine Chapel Ceiling"?', 'Michelangelo', 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', '1', 'Art', '2023-11-20', '3');
INSERT INTO questions VALUES ('f6d4be7c-06e4-4647-aef9-9e6e2b6f4ad3', 'What is the symbol for the element iron?', 'Fe', 'Au', 'Ag', 'Cu', '1', 'Chemistry', '2023-12-15', '2');
INSERT INTO questions VALUES ('ab74eb28-9e55-45c8-baaf-223e1c2c2d99', 'Who wrote "The Odyssey"?', 'Homer', 'Virgil', 'Sophocles', 'Euripides', '1', 'Literature', '2024-01-01', '3');
INSERT INTO questions VALUES ('146662f5-5b08-46e8-bc97-07ba30a7f644', 'What is the highest mountain in Africa?', 'Mount Kilimanjaro', 'Mount Kenya', 'Mount Elgon', 'Mount Meru', '1', 'Geography', '2024-02-03', '2');
INSERT INTO questions VALUES ('dcb54d21-0cd5-4bc2-8f90-68d0bba130dd', 'Who was the first U.S. President to be impeached?', 'Andrew Johnson', 'Richard Nixon', 'Bill Clinton', 'Donald Trump', '1', 'History', '2024-03-15', '3');
INSERT INTO questions VALUES ('eaae601d-187c-4a53-9a8c-426573294e32', 'What type of animal is a Komodo dragon?', 'Lizard', 'Snake', 'Crocodile', 'Turtle', '1', 'Biology', '2024-04-07', '2');
INSERT INTO questions VALUES ('5b5dc72d-2d2a-4b2c-a3f1-8f91e96a918d', 'What is the smallest planet in our solar system?', 'Mercury', 'Venus', 'Mars', 'Earth', '1', 'Astronomy', '2024-05-10', '2');
INSERT INTO questions VALUES ('38e874cb-7a2a-4711-a7e1-90570f9d015c', 'Who won the Best Actress Oscar in 2021?', 'Frances McDormand', 'Viola Davis', 'Andra Day', 'Carey Mulligan', '1', 'Movies', '2024-06-20', '3');
INSERT INTO questions VALUES ('ec9ebf58-f6e9-4bb2-a522-2b6d0e76d8dc', 'What is the smallest country in the world?', 'Vatican City', 'Monaco', 'Nauru', 'Tuvalu', '1', 'Geography', '2024-07-05', '1');
INSERT INTO questions VALUES ('988f4d4e-7e4e-4f5a-a7fa-5b5d5ab5c5a1', 'Who wrote the novel "Pride and Prejudice"?', 'Jane Austen', 'Emily Bronte', 'Charlotte Bronte', 'George Eliot', '1', 'Literature', '2024-08-11', '2');
INSERT INTO questions VALUES ('b3d82207-2cd7-41f2-9f16-86d8891a098f', 'What is the capital of Brazil?', 'Brasília', 'Rio de Janeiro', 'São Paulo', 'Belo Horizonte', '1', 'Geography', '2024-09-23', '2');
INSERT INTO questions VALUES ('b67f4179-0e02-47c1-958d-07e3c8a2dbf2', 'Who is the author of the Harry Potter series?', 'J.K. Rowling', 'Stephenie Meyer', 'Suzanne Collins', 'Veronica Roth', '1', 'Literature', '2024-10-15', '2');
INSERT INTO questions VALUES ('e5e1d293-b964-4f2a-9e69-c7f4ab4b4c25', 'Which is the largest organ in the human body?', 'Skin', 'Liver', 'Heart', 'Brain', '1', 'Biology', '2024-11-02', '1');





