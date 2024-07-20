CREATE DATABASE shop;
USE shop;
CREATE TABLE details(id int primary key,name varchar(50),address varchar(50),course varchar(50), section varchar(50), roolno int,registration bigint,phone bigint);
create table computer(id int primary key,name varchar(50),address varchar(50),course varchar(50), section varchar(50), roolno int,registration bigint,phone bigint);
create table employee(id int primary key,name varchar(50),address varchar(50),course varchar(50), section varchar(50), roolno int,registration bigint,phone bigint);
create table stock(id int primary key,shopname varchar(50),address varchar(50),item varchar(50), quality varchar(50), quantity int,unitprice bigint,stockdate bigint);
create table carden(id int primary key,Ccode bigint,carname varchar(50),address varchar(50),make varchar(50), color varchar(50), capacity int,charges bigint);
select * from details;
DESC details;