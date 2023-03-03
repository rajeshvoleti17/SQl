CREATE DATABASE library1;
USE library1;
CREATE TABLE Books (
	Book_ID INT PRIMARY KEY,
	Book_name VARCHAR(20) NOT NULL,
    Author VARCHAR(20) NOT NULL,
    Rack_no INT NOT NULL
);
INSERT INTO Books (Book_ID,Book_name,Author,Rack_no)
VALUES
(101,'The Guide','R.K. Narayan',12),
(102,'Midnight’s Children','Salman Rushdie',15),
(103,'A Suitable Boy','Vikram Seth',17),
(104,'Gitanjali','Rabindranath Tagore',20),
(105,'Kabuliwala','Rabindranath Tagore',22);
DESC Books;
SELECT * FROM Books;

CREATE TABLE Authors (
    Author_ID INT NOT NULL ,
    Author VARCHAR(20) NOT NULL,
    Place_of_birth VARCHAR(20) NOT NULL,
    Awards_count INT NOT NULL,
    PRIMARY KEY (Author_ID),
    FOREIGN KEY (Author) REFERENCES Books(Author)
);
INSERT INTO Authors (Author_ID,Author,Place_of_birth,Awards_count)
VALUES
(201,'Rabindranath Tagore','Kolkata',15),
(202,'Vikram Seth','Calcutta',12),
(203,'Salman Rushdie','Mumbai',10),
(204,'R.K. Narayan','Chennai',14);
DESC Authors;
SELECT * FROM Authors;
SELECT * FROM Books WHERE Author='Rabindranath Tagore';




