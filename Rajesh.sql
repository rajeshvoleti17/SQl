CREATE DATABASE studentdb;
SELECT USER();
USE Studentdb;
CREATE TABLE student_t(
StudentID int,
Sname varchar(20),
Scity varchar(20)
);
DESC student_t;
INSERT INTO student_t(StudentID,Sname,Scity) VALUES (101,'RAJESH','DMM');
SELECT * FROM student_t;
