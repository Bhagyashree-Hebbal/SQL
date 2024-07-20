CREATE DATABASE student;
USE student;
CREATE TABLE details(id int primary key,name varchar(50),address varchar(50),course varchar(50), section varchar(50), roolno int,registration bigint,phone bigint);
INSERT INTO details values(1,'Soumya','Kalaburagi','B.Tech','A',11,120345,9900164225);
INSERT INTO details values(2,'Sony','Bangalore','B.Tech','B',12,120346,1234567890);
INSERT INTO details values(3,'Bhagya','Bangalore','B.Tech','C',13,120347,1235795690);
select * from details;


create table computer(id int primary key,name varchar(50),address varchar(50),course varchar(50), section varchar(50), roolno int,registration bigint,phone bigint);
insert into computer values(1,'Shree','Bidar','B.com','A',21,121345,9911164225);
insert into computer values(2,'Ambika','Gulbarga','B.com','B',22,121355,8151116425);
select * from computer;


create table employee(id int primary key,name varchar(50),address varchar(50),course varchar(50), section varchar(50), roolno int,registration bigint,phone bigint);
insert into employee values(1,'Anaveer','Hebbal','MBBS','A',31,120565,9911164225);
insert into employee values(2,'Ambika','Gulbarga','B.com','B',22,120566,8876654425);
select * from employee;



create table stock(id int primary key,shopname varchar(50),address varchar(50),item varchar(50), quality varchar(50), quantity int,unitprice bigint,stockdate bigint);
insert into stock values(1,'Anaveer tradings','Bangalore','Ball pen','premium',100,20,07-07-2024);
insert into stock values(2,'Anaveer tradings','Bangalore','Eraser','Good',300,40,08-07-2024);
select * from stock;



create table carden(id int primary key,Ccode bigint,carname varchar(50),address varchar(50),make varchar(50), color varchar(50), capacity int,charges bigint);
insert into carden values(1,501,'A-star','Mumbai','Suzuki','Red',3,14);
insert into carden values(2,503,'Indigo','Pune','Tata','Silver',3,12);
select * from carden;