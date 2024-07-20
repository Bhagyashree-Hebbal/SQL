/*task-1 13-7-24*/

CREATE DATABASE travel;
USE travel;
CREATE TABLE tourist_places(p_id int,source varchar(40),destination varchar(40),no_of_people int,famous_food varchar(40),
state varchar(40),country varchar(40),weather varchar(30),distance bigint,language varchar(30));
SELECT * FROM tourist_places;
INSERT INTO tourist_places values(1,'Bangalore','Nandi hills',2,'Idli','Karnataka','India','cloudy',61,'Kannada');
INSERT INTO tourist_places values(2,'Kalaburagi','Bangalore',5,'Ragi','Karnataka','India','cloudy',586,'Kannada');
INSERT INTO tourist_places values(3,'Bangalore','Mysore',7,'Mysore pak','Karnataka','India','Sunny',144,'Kannada');
INSERT INTO tourist_places values(4,'Bangalore','Chikkamagaluru',2,'Coffee','Karnataka','India','cloudy',243,'Kannada');
INSERT INTO tourist_places values(5,'Mysore','Gokarna',5,'Paneer Tikka','Karnataka','India','cloudy',456,'Kannada');
INSERT INTO tourist_places values(6,'Bangalore','Tajmahal',10,'Petha','Delhi','India','Cloudy',1937,'Hindi');
INSERT INTO tourist_places values(7,'Kalaburagi','Goa',15,'Goan Fish Curry','Southwestern','India','Sunny',471,'Konkani');
INSERT INTO tourist_places values(8,'Bangalore','Ladakh',10,'Momos','Jammu&Kashmir','India','Rainy',1700,'Ladakhi');
INSERT INTO tourist_places values(9,'Bangalore','ooty',15,'Momos','Tamilnadu','India','Rainy',550,'Tamil');
INSERT INTO tourist_places values(10,'Bangalore','Mountain',10,'Rajma','Jammu','India','Cold',2000,'Hindi');
INSERT INTO tourist_places values(11,'Bangalore','Kalaburagi',10,'Jawarroti','Karnataka','India','Hot',586,'Kannada');
INSERT INTO tourist_places values(12,'Bangalore','Mumbai',10,'Kebab gunj','Mumbai','India','Hot',100,'Hindi');
INSERT INTO tourist_places values(13,'Bangalore','Manali',10,'Kebab gunj','Himachal Pradesh','India','Cold',1769,'Manali');
INSERT INTO tourist_places values(14,'India','Namsantower',20,'Rameyon','gwangju','South korea','Cold',1937,'korea');
INSERT INTO tourist_places values(15,'India','chinawall',10,'Noodles','busan','China','Cloudy',5000,'chinese');
INSERT INTO tourist_places values(16,'India','Venicebeach',10,'Pasta','daiso','Italy','hot',6000,'italy');
INSERT INTO tourist_places values(17,'India','pyramid of giza',10,'Ful wa taameya','giza','egypt','hot',5800,'giza');
INSERT INTO tourist_places values(18,'India','Burj Khalifa',10,'Knafeh','giza','Dubai','Cloudy',3000,'Arabic');
INSERT INTO tourist_places values(19,'Bangalore','Red fort',10,'chole bature','Delhi','India','Cold',800,'Hindi');
INSERT INTO tourist_places values(20,'Kalaburagi','Amer fort',10,'Lal maas','Rajastan','India','hot',700,'Rajastan');
SELECT *FROM tourist_places;