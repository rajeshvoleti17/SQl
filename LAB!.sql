CREATE DATABASE student;
USE student;
CREATE TABLE student1(
Name VARCHAR(20),
Student_id INT NOT NULL PRIMARY KEY,
Department VARCHAR(20)
);
DESC student1;
INSERT INTO student1 (Name,Student_id,Department)
VALUES
('Rajesh',01,'CSE'),
('Charan',02,'CSE'),
('Tharun',03,'CSE');
DESC student1;
SELECT * FROM student1;
SELECT Name FROM student1;
CREATE TABLE Courses(
Course VARCHAR(20),
Department VARCHAR(20)
);
INSERT INTO Courses (Course,Department)
VALUES
('RDBMS','DS'),
('TOC','IOT'),
('DPFE','CTMA'),
('COA','DS'),
('IS','IOT'),
('CNS','CTMA');
SELECT * FROM Courses;
