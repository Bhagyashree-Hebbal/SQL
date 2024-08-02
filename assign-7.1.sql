CREATE DATABASE airline;
USE airline;
CREATE TABLE airline_info(id int primary key,airline_name varchar(40) not null,source varchar(40),destination varchar(40) unique,ticket_price bigint);
select * from airline_info;
INSERT INTO airline_info values(1,'Kempegowda','Bangalore','Kalaburagi',2000);
INSERT INTO airline_info values(2,'IndiGo','Bangalore','Delhi',5000);
INSERT INTO airline_info values(3,'Air India','Mumbai','Bangalore',2500);
INSERT INTO airline_info values(4,'British Airways','Germany','Dubai',50000);
INSERT INTO airline_info values(5,'Air Asia','Delhi','Singapur',100000);
INSERT INTO airline_info values(6,'American Airline','UK','USA',90000);
INSERT INTO airline_info values(7,'Air Canada','Nether land','Canada',70000);
INSERT INTO airline_info values(8,'Malaysia Airlines','Bangalore','Malaysia',200000);
INSERT INTO airline_info values(9,'SpiceJet','Japan','Australia',250000);
INSERT INTO airline_info values(10,'Qater Airways','Qater','Saudi Arabia',300000);

select * from airline_info where id between 1 and 5;

select * from airline_info where airline_name like 'A%';
select * from airline_info where airline_name like 'A%A';
select * from airline_info where airline_name like 'I%O';

select * from airline_info order by id;
select * from airline_info order by source desc;

select UPPER(destination) as to_upper from airline_info;
select LOWER(destination) as to_lower from airline_info;
select CONCAT(source,destination) from airline_info;

select LENGTH('Air India');
 
select count(*) from airline_info;
create index Airoplane on airline_info(airline_name);
show indexes from airline_info;



CREATE TABLE mall_info(id int primary key,mall_name varchar(40) not null,cust_name varchar(40),mall_loc varchar(40),mobile bigint unique);
select * from mall_info;
desc mall_info;
INSERT INTO mall_info values(1,'Orian','Anaveer','Mahalaxmi Layout',9458666532);
INSERT INTO mall_info values(2,'Lulu','Renuka','Sujata Theatre',945848532);
INSERT INTO mall_info values(3,'Matri squd','Shanta','Gopalpur',94846712);
INSERT INTO mall_info values(4,'Orchid','Soumya','KBN,Kalaburagi',7846666532);
INSERT INTO mall_info values(5,'Asian','Preetham','Electonic city',36853666532);
INSERT INTO mall_info values(6,'Max','Vaishnavi','Super market,kalaburagi',9458684568);
INSERT INTO mall_info values(7,'Gopala','Vinyashree','RR nagar',945784532);
INSERT INTO mall_info values(8,'Vishal mart','Laxmi','Timapuri circle',845679135);
INSERT INTO mall_info values(9,'D mart','Nandini','Humanbad ring road,kalaburagi',7849953131);
INSERT INTO mall_info values(10,'GT world','Harshika','Magadi main road',9464361357);

select * from mall_info where id between 6 and 10;

select * from mall_info where mall_name like 'o%';
select * from mall_info where mall_name like 'a%n';
select * from mall_info where mall_name like 'v%t';

select * from mall_info order by id;
select * from mall_info order by cust_name desc;

select UPPER(mall_loc) as to_upper from mall_info;
select LOWER(mall_loc) as to_lower from mall_info;
select CONCAT(mall_name,mall_loc) from mall_info;

select LENGTH('Orchid');
 
select count(*) from mall_info;

create index bill on mall_info(cust_name);
show indexes from mall_info;