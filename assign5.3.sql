create database templeinfo;
use templeinfo;
create table temple_info(id int unique,temple_name varchar(20) not null,temple_location varchar(20),temple_god_name varchar(20),
temple_visiters int,emp_name varchar(20) unique,emp_email varchar(20),employee_salary int,temple_timing datetime not null,temple_income int unique);
select* from temple_info;
desc temple_info;

insert into temple_info values(1,'iskon','banglore','krishna',1000,'renuka','renuka@gmail.com',80000,'2024-09-26 12:04:02',80000);
insert into temple_info values(2,'Siddhivinayak Temple','mumbai','ganesha',2000,'ashwini','ashwini@gmail.com',20000,'2024-09-20 11:06:04',90000);
insert into temple_info values(3,'Someshwara Swamy','banglore','shiva',1500,'bhagya','bhagya@gmail.com',23000,'2023-10-21 09:09:10',20000);
insert into temple_info values(4,'Birla Mandir','hydrabad','venkatesh',1700,'shanta','shanta@gmail.com',24000,'2025-01-07 09:04:01',24000);
insert into temple_info values(5,'Jagannath Temple','hydrabad','jaganath',1750,'kalpana','kalpana@gmail.com',24500,'2022-07-09 10:08:05',24300);
insert into temple_info values(6,'Khargeswar Temple','kharagpur','khargeswar',6067,'hareesha','hareesha@gmail.com',5600,'2028-10-09 01:08:04',24600);
insert into temple_info values(7,'Raja Rajeshwara','hydrabad','Rajanna',1509,'haji','haji@gmail.com',9000,'2020-10-10 09:20:20',24990);
insert into temple_info values(8,'Sri Ganesh Temple','hydrabad','vinayak',1509,'sunil','sunil@gmail.com',5600,'2019-08-02 06:45:01',25990);
insert into temple_info values(9,'Laxmi Narasimha','pune','narasimha',1400,'mani','mani@gmail.com',7065,'2020-12-08 06:09:15',24980);
insert into temple_info values(10,'Gauri Shankar','delhi','parwati',1890,'pinky','pinky@gmail.com',9513,'2015-07-05 05:04:14',24970);
insert into temple_info values(11,'Chokkanathaswamy ','banglore','vishnu',100,'soumya','soumya@gmail.com',80000,'2024-09-26 12:04:02',56000);
insert into temple_info values(12,'Walkeshwar Temple','mumbai','shankar',2000,'bhavya','bhavya@gmail.com',20000,'2024-09-20 11:06:04',32000);
insert into temple_info values(13,'Panchalinga','banglore','shivshankar',1500,'sunita','sunita@gmail.com',23000,'2023-10-21 09:09:10',88000);
insert into temple_info values(14,'Jagannath Temple','hydrabad','Jaganath',1700,'smriti','smriti@gmail.com',24000,'2025-01-07 09:04:01',76540);
insert into temple_info values(15,'Nagamma Temple','hydrabad','nagamma',1750,'vaishali','vaishali@gmail.com',24500,'2022-07-09 10:08:05',980300);
insert into temple_info values(16,'Balaji Mandir','kharagpur','balaji',6000,'kavya','kavya@gmail.com',5600,'2028-10-09 01:08:04',45600);
insert into temple_info values(17,'Venkateswara Swamy','hydrabad','venkateshwara',1509,'nivedita','nivedita@gmail.com',9000,'2020-10-10 09:20:20',90502);
insert into temple_info values(18,' Chilkur Balaji','hydrabad','balajiswamy',1509,'nikita','nikita@gmail.com',5600,'2019-08-02 06:45:01',45000);
insert into temple_info values(19,'Neelkanteshwar','pune','neelkanta',1400,'mytri','mytri@gmail.com',7065,'2020-12-08 06:09:15',1200);
insert into temple_info values(20,'Hanuman Mandir','delhi','hanuman',1890,'ramya','ramya@gmail.com',9513,'2015-07-05 05:04:14',53400);

select* from temple_info;

ALTER TABLE temple_info MODIFY COLUMN temple_location varchar(20) not null;
ALTER TABLE temple_info ADD CONSTRAINT emp_email_uni unique(emp_email);
ALTER TABLE temple_info ADD CONSTRAINT employee_salary CHECK (employee_salary<90000);
ALTER TABLE temple_info ADD CONSTRAINT temple_income CHECK (temple_income>1000);