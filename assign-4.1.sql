/*Task-1  20-7-24*/
CREATE DATABASE state;
USE state;
CREATE TABLE state_info(id int,state varchar(50),district int,capital varchar(40),largestcity varchar(50),population int,
establisheddate int,pincode int,taluk int,government int);
select * from state_info;

ALTER TABLE state_info ADD COLUMN state_animal varchar(40);
ALTER TABLE state_info ADD COLUMN bird varchar(40);
ALTER TABLE state_info ADD COLUMN state_flower int;
ALTER TABLE state_info ADD COLUMN state_dance varchar(40);
ALTER TABLE state_info ADD COLUMN state_tree varchar(40);
DESC state_info;

ALTER TABLE state_info RENAME COLUMN district TO no_of_district;
ALTER TABLE state_info RENAME COLUMN capital TO capital_city;
ALTER TABLE state_info RENAME COLUMN largestcity TO largest_district;
ALTER TABLE state_info RENAME COLUMN establisheddate TO established_date;
ALTER TABLE state_info RENAME COLUMN bird TO state_bird;
ALTER TABLE state_info RENAME COLUMN taluk TO no_of_taluk;
ALTER TABLE state_info RENAME COLUMN no_of_taluk TO state_lang;

ALTER TABLE state_info MODIFY COLUMN population bigint;
ALTER TABLE state_info MODIFY COLUMN established_date bigint;
ALTER TABLE state_info MODIFY COLUMN pincode bigint;
ALTER TABLE state_info MODIFY COLUMN government varchar(40);
ALTER TABLE state_info MODIFY COLUMN state_flower varchar(40);
ALTER TABLE state_info MODIFY COLUMN state_lang varchar(40);

INSERT INTO state_info values(1,'Karnataka',30,'Bangalore','Belagavi',61130704,1956,560001,'Kannada','Congress','Asian Elephant','Indian Roller','Lotus','Veeragase Kunitha','Sandalwood');
INSERT INTO state_info values(2,'Maharashtra',36,'Mumbai','Ahmednagar',128256452,1960,414204,'Marathi','Shiv sena split','Indian giant squirrel','Yellow-footed green pigeon','Lagerstroemia speciosa','Lavani','Mango');
INSERT INTO state_info values(3,'Andhra Pradesh',26,'Amaravati','Prakasam',84580777,1956,515001,'Telugu','GoAP','Blackbuck','Rose-ringed parakeet','Jasmine','Kuchipudi','Neem');
INSERT INTO state_info values(4,'Arunachal Pradesh',25,'Itanagar','Belagavi',61130704,1971,560001,'English','BJP','Mithun','Great Hornbill','Foxtail orchid','Bardo chham','Hollong');
INSERT INTO state_info values(5,'Bihar',38,'Patna','Dibang valley',104099452,1950,800001,'Hindi','Janata Dal','Gaur','Indian Roller','Kachnar','Bidesia','Peepal');
INSERT INTO state_info values(6,'Chhattisgarh',1,'Raipur','Sarguja',25545198,2000,490001,'Hindi','BJP','Wild Buffalo','Hill Myna','French marigold','Karma naach','Sal');
INSERT INTO state_info values(7,'Goa',2,'Panaji','South goa',1458545,1986,403001,'Konkani','BJP','Gaur','Black Crested Bulbul','Red jasmine','Dekhni','Matti');
INSERT INTO state_info values(8,'Gujarat',33,'Gandhinagar','Kutch',60439692,1960,360001,'Gujarati','BJP','Asiatic Lion','Greater Flamingo','Marigold','Garba','Banyan');
INSERT INTO state_info values(9,'Haryana',22,'Shimls','Sirsa',25351462,1966,121001,'Hindi','BJP','Blackbuck','Black Francolin','Lotus','Saang','Peepal');
INSERT INTO state_info values(10,'Himachal Pradesh',12,'Shimla','Lahaul',6864602,1971,171001,'Hindi','INC','Musk Deer','Monal','Pink rhododendron','Nati','Deodar');
INSERT INTO state_info values(11,'Jharkhand',24,'ranchi','West Singhbhum',32988134,2000,813208,'Hindi','JMM','Elephant','koel','Palash','Paika','Sal');
INSERT INTO state_info values(12,'Kerala',14,'Thiruvsnabthapuram','Idukki',33406061,1956,670001,'Malayalam','Communist Party of India','Elephant','Great Hornbill','Golden shower','Kathakali','Coconut');
INSERT INTO state_info values(13,'Madhya Pradesh',55,'Bhopal','Chhindwara',72626809,1950,450001,'Hindi','BJP','Swamp Deer','Paradise Fly catcher','Palash','Maanch','Banyan');
INSERT INTO state_info values(14,'Manipur',16,'Imphal','Churachandpur',2570390,1972,795001,'Manipuri','BJP','Sangai','Mrs. Humes Pheasant','Siroi lily','Jagoi','Toon');
INSERT INTO state_info values(15,'Meghalaya',12,'Shillong','West khasi hills',2966889,1971,783123,'English','National peoples party','Clouded Leopard','Hill Myna','Ladys slipper orchid','Laho','Gamari');
INSERT INTO state_info values(16,'Punjab',23,'Chandigarh','Ludhiana',27743338,1966,140001,'Punjabi','AAP','Blackbuck','Northern Goshawk','Sword lily','Bhangra','Sheesham');
INSERT INTO state_info values(17,'Rajasthan',50,'Jaipur','Jaisalmer',68548437,1949,301001,'Hindi','BJP','Chinkara','Indian Bustard','Rohira','Ghoomar','Khejri');
INSERT INTO state_info values(18,'Tamil Nadu',38,'Chennai','Viluppuram',72147030,1956,600001,'Tamil','DMK','Nilgiri Tahr','Emerald Dove','Glory lily','Bharatanatyam','Palmera Palm');
INSERT INTO state_info values(19,'Telangana',33,'Hyderabad','Bhadradri kothagudem',35003674,2014,500001,'Telugu','INC','Jinka','Palapitta','Tanners cassia','Dandari','Jammi');
INSERT INTO state_info values(20,'Uttar Pradesh',75,'Lucknow','Lakhimpur kheri',199812341,1950,201001,'Hindi','BJP','Swamp Deer','Sarus Crane','Brahma kamal','Kathak','Ashok');
select * from state_info;

UPDATE state_info SET no_of_district=31 where id=1;
UPDATE state_info SET population=6125305650 where id=1;
UPDATE state_info SET established_date=1972 where id=10;
UPDATE state_info SET population=7566530130 where id=15;
UPDATE state_info SET population=689532350 where id=19;
UPDATE state_info SET population=985313 where id=7;
UPDATE state_info SET government='Congress' where id=14;
UPDATE state_info SET government='Janata dal' where id=16;
UPDATE state_info SET population=534623666 where id=12;
UPDATE state_info SET government='Congress' where id=18;

DELETE FROM state_info WHERE id=20;
DELETE FROM state_info WHERE id=15;
DELETE FROM state_info WHERE id=12;

SELECT * FROM state_info WHERE established_date=1960 AND id=8;
SELECT * FROM state_info WHERE state_lang='Kannada' OR id=1;
SELECT * FROM state_info WHERE id in(1,7,10);





/*Task-1  20-7-24*/
CREATE TABLE scam_info(id int,scam_type VARCHAR(50), scam_date int, scam_amount int,victim_name VARCHAR(30),victim_contact int,
victim_address varchar(50),perpetrator_name VARCHAR(30),perpetrator_contact VARCHAR(20),perpetrator_address varchar(30));
select*from scam_info;

ALTER TABLE scam_info ADD COLUMN reporting_agency VARCHAR(30);
ALTER TABLE scam_info ADD COLUMN report_date int;
ALTER TABLE scam_info ADD COLUMN investigation_status varchar(20);
ALTER TABLE scam_info ADD COLUMN transaction_id int;
ALTER TABLE scam_info ADD COLUMN Payment_method varchar(30);

ALTER TABLE scam_info Rename COLUMN  scam_type TO Scam_Type;
ALTER TABLE scam_info RENAME COLUMN scam_date TO Scam_Date;
ALTER TABLE scam_info RENAME COLUMN scam_amount TO Scam_amount;
ALTER TABLE scam_info RENAME COLUMN victim_name TO Victim_Name;
ALTER TABLE scam_info RENAME COLUMN victim_contact TO Victim_Contact;

ALTER TABLE scam_info MODIFY COLUMN victim_contact bigint;
ALTER TABLE scam_info MODIFY COLUMN perpetrator_contact bigint;
ALTER TABLE scam_info MODIFY COLUMN perpetrator_address varchar(50);
ALTER TABLE scam_info MODIFY COLUMN investigation_status varchar(10); 
ALTER TABLE scam_info MODIFY COLUMN scam_type varchar(30);

INSERT INTO scam_info values(1,'Imposter scams',01052020,25000,'Raana',123654789,'RR Nagar','Bharath',789654123, 'door no.18/B, RK Nagar','Rao',12052020,'OnGoing',123654,'phone Pay');
INSERT INTO scam_info values(2,'shopping scame',25062022,12000,'Ramesh',52634178,'Rajrajeshwari nagar','Nikil',77665544,'Door no.91/C RB nager','Rakesh',14523678,'padding',2569874,'Google pay');
INSERT INTO scam_info values(3,'Sweepstakes',17062023,15000,'vikram',569874123,'Kengeri','Neeshant',852147963,'plot no 92/S RK Nagar','Reena',25896314,'rejected',859674123,'online payment');
INSERT INTO scam_info values(4,'Investing',14112022,4500,'Neha',778899665,'RN Nagar','Amrut',66445588,'plot no.12/A AK Nagar','Laxmi',22556633,'Ongoing',22556633,'PayTM');
INSERT INTO scam_info values(5,'Blackmail',06012023,55000,'Rethu',447785694,'plot no 72 HR Nager','Kalpana',89046669,'plot 92 KK Nager','Hari',16112022,'Procesing',256314,'phonrpay');
INSERT INTO scam_info values(6,'Selling nonexistent items',04042002,1000,'Sihi',25631489,'plot 345 BB Nagr','Raj',866099535,'KK road','shantala',30042014,'Finshed',44558,'google pay');
INSERT INTO scam_info values(7,'Romance scams',05062022,50000,'Chandana',88996655,'BGN','Tarun',55664412,'KB Road','Ragini',06082022,'ONgoing',225566,'online payment');
INSERT INTO scam_info values(8,'Various internet scams',07032024,4500,'Radhika',5847963,'Gandhi nagar','Sidhu',84625137,'Market Road','Arjun',14022022,'ongoing',147852,'online');
INSERT INTO scam_info values(9,'ATM scams',08122019,6000,'sharan',22665544,'Neharu nagar','lavanya',2255137,'RJ Nagar','Vedanta',15092019,'finished',060708,'online');
INSERT INTO scam_info values(10,'power scam',15092022,5500,'lata',58,'Gandhi nagar','Sidhu',84625137,'GR Nagar','kavya',14052022,'ongoing',55852,'online');
INSERT INTO scam_info values(11,'Imposter scams',01052020,25000,'Raana',123654789,'RR Nagar','Bharath',789654123, 'door no.18/B, RK Nagar','Rao',12052020,'OnGoing',123654,'phone Pay');
INSERT INTO scam_info values(12,'shopping scame',25062022,12000,'Ramesh',52634178,'Rajrajeshwari nagar','Nikil',77665544,'Door no.91/C RB nager','Rakesh',14523678,'padding',2569874,'Google pay');
INSERT INTO scam_info values(13,'Sweepstakes',17062023,15000,'vikram',569874123,'Kengeri','Neeshant',852147963,'plot no 92/S RK Nagar','Reena',25896314,'rejected',859674123,'online payment');
INSERT INTO scam_info values(14,'Investing',14112022,4500,'Neha',778899665,'RN Nagar','Amrut',66445588,'plot no.12/A AK Nagar','Laxmi',22556633,'Ongoing',22556633,'PayTM');
INSERT INTO scam_info values(15,'Blackmail',06012023,55000,'Rethu',447785694,'plot no 72 HR Nager','Kalpana',89046669,'plot 92 KK Nager','Hari',16112022,'Procesing',256314,'phonrpay');
INSERT INTO scam_info values(16,'Selling nonexistent items',04042002,1000,'Sihi',25631489,'plot 345 BB Nagr','Raj',866099535,'KK road','shantala',30042014,'Finshed',44558,'google pay');
INSERT INTO scam_info values(17,'Romance scams',05062022,50000,'Chandana',88996655,'BGN','Tarun',55664412,'KB Road','Ragini',06082022,'ONgoing',225566,'online payment');
INSERT INTO scam_info values(18,'Various internet scams',07032024,4500,'Radhika',5847963,'Gandhi nagar','Sidhu',84625137,'Market Road','Arjun',14022022,'ongoing',147852,'online');
INSERT INTO scam_info values(19,'ATM scams',08122019,6000,'sharan',22665544,'Neharu nagar','lavanya',2255137,'RJ Nagar','Vedanta',15092019,'finished',060708,'online');
INSERT INTO scam_info values(20,'power scam',15092022,5500,'lata',58,'Gandhi nagar','Sidhu',84625137,'GR Nagar','kavya',14052022,'ongoing',55852,'online');
select*from scam_info;

UPDATE scam_info SET victim_contact=852369741  WHERE id=10;
UPDATE scam_info SET report_date=07032020 WHERE id=2;
UPDATE scam_info SET report_date=08012022 WHERE id=3;
UPDATE scam_info SET report_date=15072023 WHERE id=4;
UPDATE scam_info SET victim_Name='Lata'  WHERE id=10;
UPDATE scam_info SET perpetrator_name='Lavanya H' WHERE id=9;
UPDATE scam_info SET perpetrator_address='Kengeri Road' WHERE id=6;
UPDATE scam_info SET Scam_amount=45000 WHERE id=4;
UPDATE scam_info SET victim_address='Bangalore' WHERE id=7;
UPDATE scam_info SET Payment_method='PAYTM' WHERE id=9;

DELETE FROM scam_info WHERE id=2;
DELETE FROM scam_info WHERE id=9;
DELETE FROM scam_info WHERE id=10;

select*from scam_info where scam_type='Blackmail' and id=5;
select*from scam_info where Victim_Name='Rethu' AND id=5;
select*from scam_info where Scam_amount=45000 or id=4;
select*from scam_info where id in(4,5,6);
