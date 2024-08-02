CREATE DATABASE college;
USE college;
CREATE TABLE college_info(college_id int,college_name varchar(100)not null,location varchar(255),
established_year int,constraint established_year check (established_year>1800),college_email varchar(100) unique);
select * from college_info;
desc college_info;

INSERT INTO college_info values(1, 'Sharnbasva University', 'Vidyanagar,kalburagi', 2017, 'info@sbuniversity.edu');
INSERT INTO college_info values(2, 'R.V College', 'Mysuru road,Bangalore', 1963, 'admissions@rvcollege.edu');
INSERT INTO college_info values(3, 'Visvesvaraya Technology university', 'Belagavi', 1998, 'contact@vtu.edu');
INSERT INTO college_info values(4, 'IIT', 'Dharwad',2016, 'info@northernstate.edu');
INSERT INTO college_info values(5, 'PDA College', 'Gulbarga', 1958, 'admin@pda.edu');

ALTER TABLE college_info ADD CONSTRAINT location_pk primary key(location); 
ALTER TABLE college_info DROP CONSTRAINT established_year;
select * from college_info;



create table flight_info(id int not null,emp_name varchar(20)unique,salary int check(salary>10000),location varchar(20),ticket_id int primary key);
insert into flight_info values(1,'renuka',20000,'delhi',101);
insert into flight_info values(2,'rani',70000,'bangalore',102);
insert into flight_info values(3,'soumya',40000,'pune',103);
insert into flight_info values(4,'diksha',90000,'mumbai',104);
insert into flight_info values(5,'mitali',60000,'surat',105);

alter table flight_info add constraint name_uni unique(id);
alter table flight_info drop primary key;
select * from flight_info;

