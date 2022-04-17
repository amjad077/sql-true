# DDL - CREATE 
CREATE DATABASE store;
CREATE TABLE countries(
code int primary key,
name varchar(20) unique ,
continent_name varchar(20) not null
);
select * from countries;
CREATE TABLE users(
id int primary key ,
full_name varchar(20) ,
email varchar(20) unique ,
gender char(1) check(gender='m' or gender='f')  ,
date_of_birth varchar(15) ,
created_at datetime ,
country_code int,
foreign key (contry_code) references countries (code)
);
use store;
CREATE TABLE orders(
id int primary key,
user_id int(10) ,
status varchar(6)check(status='start' or status='finish') ,
created_at datetime,
foreign key (user_id) references users(id)
);
CREATE TABLE order_products (
order_id int ,
product_id int,
quantity int default 0 ,
foreign key (order_id) references orders(id),
foreign key (product_id) references orders(id)
);
CREATE TABLE products (
id int primary key,
name varchar(10) not null,
price int default 0,
status varchar(10) check(status='valid' or status='expired') ,
created_by datetime
);
insert INTO countries values(2,'salal','ASIA');
insert INTO users values(6,'amani alali','hotmail.email','m','06/08/1998','18-06-12 10:34:09 AM','2432');
insert INTO orders values(3,'435675','start','13-07-12 10:34:09 AM')
insert INTO products  values (5,'amjas','345','valid','12-09-12 10:33:09 AM')
# DML - UPdate
Update order_products  set name="abha" where code=1;
# DML - DELETE
delete from countries where name="ASIA";