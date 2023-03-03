/* RAJESHWAR VOLETI
USN : 21BTRCD055
*/
CREATE USER 'Rajesh_Voleti'@'localhost' IDENTIFIED BY 'sivsup';
SHOW GRANTS FOR 'Rajesh_Voleti'@'localhost';
GRANT SELECT,DELETE,INSERT,UPDATE ON *.* TO 'Rajesh_Voleti'@'localhost';
SHOW GRANTS FOR 'Rajesh_Voleti'@'localhost';
REVOKE SELECT ON *.* FROM 'Rajesh_Voleti'@'localhost';
SHOW GRANTS FOR 'Rajesh_Voleti'@'localhost';
USE mysql;
SELECT User,Host FROM mysql.user;