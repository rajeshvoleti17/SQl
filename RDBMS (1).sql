-- CREATED BY : Ashwini Kumar Mathur [ CSE - Data Science ]

/*

LET'S START THE PRACTICE

*/

-- DESIGN THE DATABASE FOR COMPANY

CREATE DATABASE company_database;
USE company_database;



-- CREATING A TABLE FOR COMPANY DATABASE
/*

The SQL CREATE TABLE Statement
The CREATE TABLE statement is used to create a new table in a database.

Syntax
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);
*/


CREATE TABLE Company (
  company_id INT PRIMARY KEY,
  company_name VARCHAR(50) NOT NULL,
  established_date DATE NOT NULL,
  headquarters VARCHAR(50) NOT NULL,
  CEO VARCHAR(50) NOT NULL,
  revenue FLOAT NOT NULL
);

DESC company;

-- INSERT FIVE RECORD INTO THE COMPANY TABLE 

/*
The SQL INSERT INTO Statement

The INSERT INTO statement is used to insert new records in a table.

INSERT INTO Syntax
It is possible to write the INSERT INTO statement in two ways:

1. Specify both the column names and the values to be inserted:

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

*/

INSERT INTO Company (company_id, company_name, established_date, headquarters, CEO, revenue)
VALUES
  (1, 'Apple', '1976-04-01', 'Cupertino, California', 'Tim Cook', 221800000000),
  (2, 'Microsoft', '1975-04-04', 'Redmond, Washington', 'Satya Nadella', 141000000000),
  (3, 'Amazon', '1994-07-05', 'Seattle, Washington', 'Jeff Bezos',386000000000),
  (4, 'Google', '1998-09-07', 'Mountain View, California', 'Sundar Pichai',172000000000),
  (5, 'Facebook', '2004-02-04', 'Menlo Park, California', 'Mark Zuckerberg',84600000000);
  
INSERT INTO Company (company_id, company_name, established_date, headquarters, CEO, revenue)
VALUES (6, 'IBM', '1976-04-01', 'Ashish, California', 'Shimmer', 224500000000);


-- SELECT STATEMENT 

/*The SQL SELECT Statement

The SELECT statement is used to select data from a database.

The data returned is stored in a result table, called the result-set.

*/


SELECT * 
FROM company;

-- Conditional retrieval using WHERE clause: 
/* The SQL WHERE Clause
The WHERE clause is used to filter records.

It is used to extract only those records that fulfill a specified condition.

WHERE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;
*/


SELECT *
FROM Company
WHERE headquarters = 'Menlo Park, California';


-- Query sorted using ORDER BY clause:

SELECT *
FROM Company
ORDER BY revenue DESC;

-- CREATING THE TABLE FOR STUDENTS 

CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50) NOT NULL,
  enrollment_date DATE NOT NULL,
  major VARCHAR(50) NOT NULL,
  GPA DECIMAL(3,2) NOT NULL
);

DROP table Student;

-- decimal [(p [,s])]

/*
Where,

p stands for Precision, the total number of digits in the value, i.e. on both sides of the decimal point
s stands for Scale, number of digits after the decimal point */

-- INSERTING 5 RECORDS INTO THE TABLE 

INSERT INTO Student (student_id, student_name, enrollment_date, major, GPA)
VALUES
  (1, 'John Doe', '2017-09-01', 'Computer Science', 3.7),
  (2, 'Jane Doe', '2017-09-01', 'Electrical Engineering', 3.5),
  (3, 'Jim Smith', '2018-09-01', 'Mechanical Engineering', 3.6),
  (4, 'Amy Johnson', '2018-09-01', 'Civil Engineering', 3.8),
  (5, 'Tom Wilson', '2019-09-01', 'Computer Science', 3.9);


SELECT * FROM Student;

SELECT *
FROM Student
WHERE major = 'Computer Science';

SELECT *
FROM Student
ORDER BY GPA DESC;

/*

The SQL ORDER BY Keyword
The ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

ORDER BY Syntax:

SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

*/






  


