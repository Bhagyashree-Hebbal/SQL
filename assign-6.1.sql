CREATE DATABASE order_info;
USE order_info;
CREATE TABLE order_info(id int,order_name varchar(40),cost bigint,order_id int primary key,created_at timestamp,
created_by varchar(40),modified_at timestamp,modified_by varchar(40)); 
select * from order_info;
desc order_info;
INSERT INTO order_info VALUES(1,'Bhagya',1000,101,now(),'Akash',now(),'Nitin');
INSERT INTO order_info VALUES(2,'Shanta',500,102,now(),'Prakash',now(),'Kruti');
INSERT INTO order_info VALUES(3,'Renuka',2000,103,now(),'Anil',now(),'Pranya');
INSERT INTO order_info VALUES(4,'Sohita',1500,104,now(),'Shruti',now(),'Prashanti');
INSERT INTO order_info VALUES(5,'Ashwini',5000,105,now(),'Prakruti',now(),'Kavana');

CREATE TABLE payment(id int,price bigint,payment_id int primary key,order_id int,payment_status varchar(40),created_at timestamp,
created_by varchar(40),modified_at timestamp,modified_by varchar(40),foreign key (order_id) references order_info(order_id)); 
select * from payment;
desc payment;
INSERT INTO payment VALUES(1,5000,3456,101,"Success",now(),'prashanti',now(),'shree');
INSERT INTO payment VALUES(2,3000,3457,102,"Waiting",now(),'praveen',now(),'Santosh');
INSERT INTO payment VALUES(3,2000,3458,103,"Not done",now(),'Sushant',now(),'Raji');
INSERT INTO payment VALUES(4,5500,3459,104,"Success",now(),'Neha',now(),'Vishu');
INSERT INTO payment VALUES(5,600,3460,105,"Waiting",now(),'Laxmi',now(),'Vidya');

CREATE TABLE restaurant(id int,restaurant_name varchar(40),restaurant_id int primary key,loc varchar(40),order_id int,
rating int,payment_id int,created_at timestamp,created_by varchar(40),modified_at timestamp,modified_by varchar(40),
foreign key (order_id) references order_info(order_id),foreign key (payment_id) references payment(payment_id)); 
select * from restaurant;
desc restaurant;
INSERT INTO restaurant VALUES(1,'Saptagiri Orange',421,'Gulbarga',101,4,3456,now(),'Akhaya',now(),'Anaveer');
INSERT INTO restaurant VALUES(2,'Shanti sagar',422,'Rajajinagar',102,4,3457,now(),'Prarthana',now(),'Chiranjeevi');
INSERT INTO restaurant VALUES(3,'Shri sagar',423,'Malleswaram',103,4,3458,now(),'Anup',now(),'Anrup');
INSERT INTO restaurant VALUES(4,'Geist Brewing',424,'Uttarahalli',104,4,3459,now(),'Abhinav',now(),'Akhilesh');
INSERT INTO restaurant VALUES(5,'Roxie',425,'HSR',105,4,3460,now(),'Appu',now(),'Shivu');

CREATE TABLE delivery(id int,person_name varchar(40),mode_of_payment enum('Online','Offline'),restaurant_id int,order_id int,
created_at timestamp,created_by varchar(40),modified_at timestamp,modified_by varchar(40),foreign key (order_id) references order_info(order_id),
foreign key (restaurant_id) references restaurant(restaurant_id));
select * from delivery;
desc delivery;
INSERT INTO delivery VALUES(1,'Pratiksha','Online',421,101,now(),'Akhaya',now(),'Anaveer');
INSERT INTO delivery VALUES(2,'Pranya',2,422,102,now(),'Aditi',now(),'Arun');
INSERT INTO delivery VALUES(3,'Siddu',1,423,103,now(),'Shankar',now(),'Sunil');
INSERT INTO delivery VALUES(4,'Kavya','Offline',424,104,now(),'Ashok',now(),'Chanveer');
INSERT INTO delivery VALUES(5,'Swati','2',425,105,now(),'Basavaraj',now(),'Mallamma');
