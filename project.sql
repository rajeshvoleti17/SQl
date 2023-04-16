CREATE DATABASE product;
USE product;

DROP TABLE shoe_table;
CREATE TABLE shoe_table(
shoe_id int,
shoe_name varchar(1000)
);
desc shoe_table;
insert into shoe_table
values
(1,"nike"),
(2,"puma"),
(3,"woodland"),
(4,"adidas"),
(5,"new_balance");
select * from shoe_table;

DROP TABLE sizes;
create table sizes(
shoe_id int,
shoe_size int
);
desc sizes;
insert into sizes
values
(1,9),
(1,10),
(1,11),
(2,9),
(2,10),
(2,11),
(3,9),
(3,10),
(3,11),
(4,9),
(4,10),
(4,11),
(5,9),
(5,10),
(5,11);
select * from sizes;

DROP TABLE colours;
create table colours(
shoe_id int,
shoe_size int,
shoe_colour varchar(100)
);
desc colours;
insert into colours
values
(1,9,"black"),
(1,10,"white"),
(1,11,"blue"),
(2,9,"black"),
(2,10,"white"),
(2,11,"blue"),
(3,9,"black"),
(3,10,"white"),
(3,11,"blue"),
(4,9,"black"),
(4,10,"white"),
(4,11,"blue"),
(5,9,"black"),
(5,10,"white"),
(5,11,"blue");
select * from colours;

DROP TABLE shoe_material;
create table shoe_material(
shoe_id int,
shoe_material varchar(100)
);
desc shoe_material;
insert into shoe_material
values
(1,"leather"),
(2,"softtonic"),
(3,"leather"),
(4,"canvas"),
(5,"cotton");
select * from shoe_material;

select shoe_table.shoe_id,shoe_table.shoe_name,colours.shoe_size,colours.shoe_colour from 
shoe_table join colours on 
shoe_table.shoe_id=colours.shoe_id;

select shoe_table.shoe_id,shoe_table.shoe_name,colours.shoe_size,colours.shoe_colour from 
shoe_table join colours on 
shoe_table.shoe_id=colours.shoe_id where shoe_table.shoe_name="woodland";

select shoe_table.shoe_id,shoe_table.shoe_name,colours.shoe_size,colours.shoe_colour from 
shoe_table join colours on 
shoe_table.shoe_id=colours.shoe_id where shoe_table.shoe_name="nike" and colours.shoe_size=10;

select shoe_table.shoe_id,shoe_table.shoe_name,colours.shoe_size,colours.shoe_colour,shoe_material.shoe_material from ((shoe_table join colours on 
shoe_table.shoe_id=colours.shoe_id) join shoe_material on shoe_table.shoe_id=shoe_material.shoe_id);

select shoe_table.shoe_id,shoe_table.shoe_name,colours.shoe_size,colours.shoe_colour,shoe_material.shoe_material from ((shoe_table join colours on 
shoe_table.shoe_id=colours.shoe_id) join shoe_material on shoe_table.shoe_id=shoe_material.shoe_id) where shoe_table.shoe_name="new_balance" and colours.shoe_colour="blue";

select shoe_table.shoe_id,shoe_table.shoe_name,colours.shoe_size,colours.shoe_colour,shoe_material.shoe_material from ((shoe_table join colours on 
shoe_table.shoe_id=colours.shoe_id) join shoe_material on shoe_table.shoe_id=shoe_material.shoe_id) where colours.shoe_size=10 and colours.shoe_colour="blue" and shoe_material.shoe_material="cotton";