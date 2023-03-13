create database librarys;
use librarys;
create table books(
book_id int,
book_name varchar(100),
author_id int);
desc books;
insert into books
values
(1,"book1",01),
(2,"book2",02),
(3,"book3",03),
(4,"book4",04),
(5,"book5",05);
select *from books;
create table authors(
author_id int,
author_name varchar(100));
desc authors;
insert into authors
values
(01,"a"),
(02,"b"),
(03,"c"),
(04,"e"),
(05,"e");
select *from authors;
select *from books join authors on books.author_id=authors.author_id;
select *from books join authors on books.author_id=authors.author_id where author_name="c";
select *from books join authors on books.author_id=authors.author_id where author_name="e";
