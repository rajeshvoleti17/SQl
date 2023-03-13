create database employees;
use employees;
create table employees(
id int,
name varchar(100),
age int,
salary int,
department varchar(100));
desc employees;
insert into employees
values
(1,"john doe",30,55000,"sales"),
(2,"jane smith",35,65000,"marketing"),
(3,"mark johnson",40,75000,"engineering"),
(4,"sarah lee",25,45000,"sales"),
(5,"david chen",28,50000,"marketing");
-- Use SELECT to retrieve the names and ages of all employees from the employees table
select name,age from employees;
-- Use INSERT to add a new employee with the following details: name: "Linda Green", age: 27, salary: $55,000, department: "Marketing".
insert into employees
values
(null,"linda green",27,55000,"marketing");
select *from employees;
-- Use UPDATE to change the salary of all employees in the "Engineering" department to $80,000.
update employees set salary=80000 where department="engineering";
select *from employees;
-- Use ALTER to add a new column called address to the employees table.
alter table employees add address varchar(100);
desc employees;
-- Use DELETE to remove all employees who are younger than 25 years old from the employees table.
delete from employees where age<25;
select *from employees;
drop table employees;
drop database employees;
-- Use ORDER BY to retrieve all employees from the employees table, ordered by their salary in descending order.
select *from employees order by salary desc;
-- Use HAVING to retrieve the average salary of all employees in the "Sales" department who earn more than $60,000 per year.
select avg(salary) from employees where department="sales" and salary>60000 having avg(salary)>60000;
-- Use WHERE to retrieve the names of all employees who work in the "Marketing" department and are older than 30 years.
select name from employees where department="marketing" and  age>30;
-- Use LIMIT to retrieve the first 5 employees from the employees table, ordered by their age in ascending order.
select *from employees order by age limit 5;
-- Use GROUP BY to retrieve the number of employees in each department from the employees table.
select department,count(*) as no_employees from employees group by department;
