CREATE DATABASE showroom;
USE showroom;
CREATE TABLE showroom_info(id int,showroom_name varchar(40) not null,showroom_location varchar(40) not null,showroom_empname varchar(40),showroom_empdesignation varchar(40),
phone_number varchar(15) unique,email varchar(100) unique,established_year int check (established_year > 1900),no_of_emp int check (no_of_emp > 10),opening_hours varchar(50));
select * from showroom_info;

INSERT INTO showroom_info values(1, 'Central Motors', 'Downtown', 'John Doe', 'Manager', '123-456-7890', 'contact@centralmotors.com', 1950, 50, '9 AM - 5 PM');
INSERT INTO showroom_info values(2, 'Eastside Autos', 'Eastside', 'Jane Smith', 'Sales', '234-567-8901', 'sales@eastsideautos.com', 1975, 60, '8 AM - 6 PM');
INSERT INTO showroom_info values(3, 'Westend Cars', 'Westend', 'Bob Brown', 'Technician', '345-678-9012', 'service@westendcars.com', 1980, 70, '7 AM - 7 PM');
INSERT INTO showroom_info values(4, 'Northside Wheels', 'Northside', 'Alice Green', 'Accountant', '456-789-0123', 'info@northsidewheels.com', 1965, 80, '6 AM - 8 PM');
INSERT INTO showroom_info values(5, 'Southside Rides', 'Southside', 'Charlie Black', 'Sales', '567-890-1234', 'admin@southsiderides.com', 1990, 90, '7 AM - 9 PM');
INSERT INTO showroom_info values(6, 'Midtown Motors', 'Midtown', 'Eve White', 'Manager', '678-901-2345', 'contact@midtownmotors.com', 2000, 55, '9 AM - 5 PM');
INSERT INTO showroom_info values(7, 'Uptown Autos', 'Uptown', 'Frank Blue', 'Sales', '789-012-3456', 'sales@uptownautos.com', 1985, 65, '8 AM - 6 PM');
INSERT INTO showroom_info values(8, 'Downtown Cars', 'Downtown', 'Grace Yellow', 'Technician', '890-123-4567', 'service@downtowncars.com', 1995, 75, '7 AM - 7 PM');
INSERT INTO showroom_info values(9, 'Central Wheels', 'Downtown', 'Hank Red', 'Accountant', '901-234-5678', 'info@centralwheels.com', 1970, 85, '6 AM - 8 PM');
INSERT INTO showroom_info values(10, 'East Motors', 'Eastside', 'Ivy Pink', 'Manager', '012-345-6789', 'admin@eastmotors.com', 1988, 95, '7 AM - 9 PM');
INSERT INTO showroom_info values(11, 'Westside Autos', 'Westside', 'Jack Purple', 'Sales', '123-456-7899', 'contact@westsideautos.com', 1992, 52, '9 AM - 5 PM');
INSERT INTO showroom_info values(12, 'North Autos', 'Northside', 'Kelly Brown', 'Technician', '234-567-8902', 'sales@northautos.com', 1981, 62, '8 AM - 6 PM');
INSERT INTO showroom_info values(13, 'South Motors', 'Southside', 'Liam Green', 'Accountant', '345-678-9013', 'service@southmotors.com', 1998, 72, '7 AM - 7 PM');
INSERT INTO showroom_info values(14, 'Midwest Wheels', 'Midwest', 'Mia Blue', 'Manager', '456-789-0124', 'info@midwestwheels.com', 1960, 82, '6 AM - 8 PM');
INSERT INTO showroom_info values(15, 'Pacific Autos', 'Pacific', 'Noah Red', 'Sales', '567-890-1235', 'admin@pacificautos.com', 2005, 92, '7 AM - 9 PM');
INSERT INTO showroom_info values(16, 'Atlantic Cars', 'Atlantic', 'Olivia Yellow', 'Technician', '678-901-2346', 'contact@atlanticcars.com', 1999, 56, '9 AM - 5 PM');
INSERT INTO showroom_info values(17, 'Mountain Motors', 'Mountain', 'Pete White', 'Accountant', '789-012-3457', 'sales@mountainmotors.com', 1987, 66, '8 AM - 6 PM');
INSERT INTO showroom_info values(18, 'Desert Wheels', 'Desert', 'Quinn Blue', 'Manager', '890-123-4568', 'service@desertwheels.com', 2001, 76, '7 AM - 7 PM');
INSERT INTO showroom_info values(19, 'River Autos', 'River', 'Rachel Brown', 'Sales', '901-234-5679', 'info@riverautos.com', 1993, 86, '6 AM - 8 PM');
INSERT INTO showroom_info values(20, 'Lakeside Motors', 'Lakeside', 'Sam Green', 'Technician', '012-345-6790', 'admin@lakesidemotors.com', 1989, 96, '7 AM - 9 PM');
select * from showroom_info;
desc showroom_info;

ALTER TABLE showroom_info MODIFY COLUMN showroom_empname varchar(40) not null;
ALTER TABLE showroom_info ADD CONSTRAINT id_uni unique(id);
ALTER TABLE showroom_info ADD CONSTRAINT no_of_emp CHECK (no_of_emp>10);
ALTER TABLE showroom_info ADD CONSTRAINT established_year CHECK (established_year>1800);

