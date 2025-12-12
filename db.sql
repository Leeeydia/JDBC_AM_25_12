CREATE DATABASE `JDBC_AM_25_12`;
USE `JDBC_AM_25_12`;
SELECT DATABASE();
SHOW TABLES;
CREATE TABLE article (
                         id INT (10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         regeDate DATETIME NOT NULL,
                         updateDate DATETIME NOT NULL,
                         title CHAR(100) NOT NULL,
                         `body` TEXT NOT NULL
);

DESC article;

SELECT * FROM article;

INSERT INTO article
SET regDate = NOW(),
  updateDate = NOW(),
  title = CONCAT ('제목1',SUBSTRING(RAND()*1000 frim 1 FOR 2)),
  `body` = CONCAT('내용1',SUBSTRING(RAND()*1000 frim 1 FOR 2));

SELECT NOW();