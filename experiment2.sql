/* RAJESHWAR VOLETI
USN : 21BTRCD055
*/
CREATE DATABASE db;
USE db;
CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
category VARCHAR(20) NOT NULL, price DECIMAL(10, 2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO products (name, category, price)
VALUES
('Red T-Shirt', 'T-Shirts', 14.99),
('Blue T-Shirt', 'T-Shirts', 14.99),
('Black Pants', 'Pants', 24.99),
('Khaki Pants', 'Pants', 24.99);

SELECT * FROM products;

START TRANSACTION;

UPDATE products
SET price = 19.99
WHERE category = 'T-Shirts';

UPDATE products
SET price = 29.99
WHERE category = 'Pants'; 
SELECT * FROM products;

COMMIT;

SELECT * FROM products;

UPDATE products
SET price = 10.00
WHERE category = 'T-Shirts';

ROLLBACK;
DROP TABLE products;

