CREATE DATABASE information;
USE information;
CREATE TABLE movie_info(id int,seat_no int,movie varchar(30),total_tickets int,language varchar(30)); 
select * from movie_info;

ALTER TABLE movie_info ADD COLUMN actors_name varchar(30);
ALTER TABLE movie_info ADD COLUMN movie_amount bigint;
ALTER TABLE movie_info ADD COLUMN movie_director varchar(30);
ALTER TABLE movie_info ADD COLUMN seat_type varchar(30);
ALTER TABLE movie_info ADD COLUMN total_audiance int;

ALTER TABLE movie_info RENAME COLUMN movie TO movie_name;
ALTER TABLE movie_info RENAME COLUMN movie_amount TO movie_budget;
ALTER TABLE movie_info RENAME COLUMN language TO movie_lang;
ALTER TABLE movie_info RENAME COLUMN seat_no TO seat_No;
ALTER TABLE movie_info RENAME COLUMN total_audiance TO no_of_audiance;

INSERT INTO movie_info values(1,55,'Kalki',2000,'Hindi','Prabhas',2000000,'Nag Ashwin','Gold',1000);
INSERT INTO movie_info values(2,36,'KGF',1000,'Kannada','Yash',5000000,'Prashant Neel','Silver',1500);
INSERT INTO movie_info values(3,76,'RRR',1500,'Telagu','NTR',1000000,'Rajamoli','First class',2000);
INSERT INTO movie_info values(4,13,'Googly',2000,'Kannada','Yash',200000,'Pawan wadeyar','Silver',600);
INSERT INTO movie_info values(5,52,'Bahubali',2500,'Tamil','Prabhas',2000000,'Rajamoli','Gold',1000);
INSERT INTO movie_info values(6,45,'12 fail',2500,'Hindi','Vikrant messy',3000000,'vindhu vinod chopra','first class',1000);
INSERT INTO movie_info values(7,98,'99',4000,'kannda','Ganesh',1000000,'pretham gubbi','first class',100);
INSERT INTO movie_info values(8,25,'Animal',250,'Hindi','Ranbir kapoor',1400000,'Sandeep Reddy','silver',600);
INSERT INTO movie_info values(9,67,'Miss India',4000,'Hindi','Keerti Suresh',200000,'Narendraathn','Gold',1000);
INSERT INTO movie_info values(10,58,'Maharaj',250,'Hindi','Junaid khan',5000000,'Sidharth','first class',300);

UPDATE movie_info SET total_tickets=3000 where id=1;
UPDATE movie_info SET total_tickets=3000 where id=5;
UPDATE movie_info SET movie_budget=200000 where id=1;
UPDATE movie_info SET movie_budget=3400000 where id=6;
UPDATE movie_info SET total_tickets=3000 where id=4;
UPDATE movie_info SET total_tickets=300 where id=9;
UPDATE movie_info SET  movie_budget=3400000 where id=4;
UPDATE movie_info SET total_tickets=5000 where id=10;
UPDATE movie_info SET movie_budget=3400000 where id=5;
UPDATE movie_info SET total_tickets=5000 where id=7;

DELETE FROM movie_info where id=5;
DELETE FROM movie_info where id=9;
DELETE FROM movie_info where id=7;

select * from movie_info where movie_name='RRR' AND id=3;
select * from movie_info where movie_lang='Hindi' OR id=6;
select * from movie_info where id in(1,4,10);
