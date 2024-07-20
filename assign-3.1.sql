/*task-1 13-7-24*/

CREATE DATABASE hospital;
USE hospital;
CREATE TABLE hospital_info(patients_id int,patients_name varchar(30),doctor_name varchar(50),doctor_charge int,medicine_charge bigint,
room_charge bigint,operation_charge bigint,no_of_days int,health_card varchar(40),bill bigint);
INSERT INTO hospital_info values(1,'Sashank','Dr.Anaroop Shah',1000,2000,500,10000,5,'ESI',50000);
INSERT INTO hospital_info values(2,'Sashi','Dr.Anaveer',1000,500,500,20000,10,'Emp card',30000);
INSERT INTO hospital_info values(3,'Hari','Dr.Nandini',100,200,100,5000,2,'Health Insurance',10000);
INSERT INTO hospital_info values(4,'Nitya','Dr.Pranati',1000,900,1000,10000,10,'ESI',50000);
INSERT INTO hospital_info values(5,'Shruti','Dr.Sanidhi',2000,200,600,15000,15,'ESI',40000);
INSERT INTO hospital_info values(6,'kalyani','Dr.Priya',500,2000,700,30000,5,'ESI',100000);
INSERT INTO hospital_info values(7,'Kruti','Dr.Arun',1500,200,600,16000,20,'ESI',100000);
INSERT INTO hospital_info values(8,'Nidhi','Dr.Sharn',900,200,500,1500,8,'Emp card',50000);
INSERT INTO hospital_info values(9,'Keerti','Dr.Kruti',1000,2000,500,10000,5,'Life Insurance',1300);
INSERT INTO hospital_info values(10,'Pragati','Dr.Sanjana',1000,2000,500,15000,9,'Health Insurance',10000);
INSERT INTO hospital_info values(11,'Prakruti','Dr.Srinidhi',100,200,500,15000,6,'ESI',5000);
INSERT INTO hospital_info values(12,'Samrudhi','Dr.Pagati',1000,2000,500,10000,25,'ESI',150000);
INSERT INTO hospital_info values(13,'Prashanti','Dr.Sashi',400,200,200,1000,2,'ESI',5000);
INSERT INTO hospital_info values(14,'Siddu','Dr.Suhanaa',1000,2000,500,10000,5,'Emp card',59000);
INSERT INTO hospital_info values(15,'Charu','Dr.Anaroop',1000,2000,500,14000,9,'ESI',50000);
INSERT INTO hospital_info values(16,'Charan','Dr.Ananda',400,200,200,1000,3,'Life Insurance',5000);
INSERT INTO hospital_info values(17,'Kavita','Dr.Goutham',100,200,200,1500,4,'Emp card',5200);
INSERT INTO hospital_info values(18,'karunya','Dr.Krishna',1500,2700,900,10000,14,'ESI',50000);
INSERT INTO hospital_info values(19,'malika','Dr.Anirudha',500,200,900,1000,7,'Life Insurance',5000);
INSERT INTO hospital_info values(20,'Sihi','Dr.Avinash',100,200,200,1000,9,'Emp card',5000);
SELECT * FROM hospital_info;
