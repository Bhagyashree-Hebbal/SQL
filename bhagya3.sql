create database bank;
use bank;
create table bank_info(id int,b_name varchar(20),acc_number bigint,branch varchar(20), city varchar(20));
select * from bank_info;

alter table bank_info add column depositAmount bigint;
alter table bank_info add column accountType varchar(20);
alter table bank_info add column acc_holder_name varchar(30);
alter table bank_info add column minimumCharges int;
alter table bank_info add column state varchar(20);

alter table bank_info rename column depositAmount to deposits;
alter table bank_info rename column accountType to type_of_account;
alter table bank_info rename column acc_holder_name to acc_holder;
alter table bank_info rename column minimumCharges to min_charges;
alter table bank_info rename column state to state_bank;

insert into bank_info values(1,'SBI','110006767672231','jaynagar','banglore','50000','saving','Bhagyashree',3000,'karnataka');
insert into bank_info values(2,'Pragati Gramin bank','11000676721187','Gunj','kalaburagi',24000,'current','shrinidhi',2500,'karnataka');
insert into bank_info values(3,'UNION','2600076891120','vidyanagar','kalaburagi',230000,'savings','swapna',1000,'karnataka');
insert into bank_info values(4,'CANARA','1500768561120','ahmedabad','hyderabad',700000,'current','priyanka',2000,'andhrapradesh');
insert into bank_info values(5,'PUNJAB','240034567899','ngo layout','kalaburagi',65000,'savings','aditirao',1000,'tamilnadu');
insert into bank_info values(6,'Krishana bank',12004567889,'JP nagar','kalaburagi',42000,'savings','madhuri',1000,'delhi');
insert into bank_info values(7,'AXIS',17043218900,'MSK mill','kalaburagi',22000,'current','aditi',2000,'kerala');
insert into bank_info values(8,'ICICI',11890005463,'BTM layout','bangalore',1007800,'saving','sudeep',3000,'karnataka');
insert into bank_info values(9,'Bank of baroda','1505678900','chikpet','Bangalore',190000,'savings','shanta',1000,'karnataka');
insert into bank_info values(10,'HDFC','11119086777','hospet','Bangalore',65000000,'current','suhas',3000,'jammukashmir');
select * from bank_info;

update bank_info set b_name='SBI'where id=1;
update bank_info set acc_number=427252826425 where id=4;
update bank_info set city='kalaburagi' where id=2;
update bank_info set branch='hospet' where id=10;
update bank_info set acc_holder='aditi' where id=7;
update bank_info set min_charges='2000' where id=7;
update bank_info set state_bank='karnataka' where id=9;
update bank_info set type_of_account='savings' where id=5;
update bank_info set deposits='42000' where id=6;

delete from bank_info where  id=2; 
delete from bank_info where b_name='UNION';
delete from bank_info where min_charges=1000;
select * from bank_info;

select * from bank_info where b_name='AXIS' AND id=7;
select * from bank_info where b_name='HDFC' OR id=10;
select * from bank_info where id in(1,4,10);