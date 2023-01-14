create database blood_bank_project;
use blood_bank_project;

CREATE TABLE BB_manager
( manager_id int NOT NULL primary key,
 mng_first_name varchar(50) NOT NULL,
 mng_last_name varchar(50) NOT NULl,
 manager_phone_no bigint
);

INSERT INTO BB_manager 
VALUES (111, 'Adebayo', 'Rufai', 09125907611), 
(112, 'Nkeci', 'Emeka', 09148507694),
(113, 'Adamu', 'Abdullahi', '08075908123'),
(114, 'Sunday', 'Adegoke', '07026097613'),
(115, 'Jonathan', 'Bamidele', '08107835629');
select * from BB_manager;

CREATE TABLE Blood_Donor
( BD_id int NOT NULL primary key,
 BD_first_name varchar(50) NOT NULL,
 BD_last_name varchar(50) NOT NULL,
 BD_age int (4),
 BD_sex varchar(10),
 BD_Bgroup varchar(10),
 BD_reg_date date,
 reco_id int NOT NULL,
 City_id int NOT NULL
);
INSERT into Blood_Donor
VALUES (000121,'Adigun','Rahmoni', 19,'Male','B+','2019-11-20',101212,1001),
(000122,'Abdullahi','Kayode', 30,'Male','A+','2019-11-22',101212,1001),
(000123,'Samuel','Ajani', 22,'Male','O+','2010-01-04',101312,1002),
(000124,'Adedayo','Chidozie', 29,'Male','O+','2019-07-19',101412,1003),
(000125,'Cherechi','Augustina', 42,'Female','A-','2018-12-24',101412,1003),
(000126,'Olumide','Ayobami', 44,'Male','AB+','2019-08-28',101212,1002),
(000127,'Fareedah','Akande',30,'Female','AB-','2020-02-06',101212,1004),
(000128,'Victoria','Emmanuel',31,'Female','AB+','2020-09-10',101312,1002),
(000129,'Mahmud','Musa',24,'Male','B-','2019-10-15',101312,1005),
(000130,'Chinedu','Opeyemi',29,'Male','O-','2020-12-17',101212,1002);

-- 1001 = lagos, 1002 = Ibadan, 1003 = Kano, 1004 = Abuja, 1005 = Calabar --
select * from Blood_Donor;

-- BLOOD SPECIMEN TABLE
CREATE TABLE BloodSpecimen
( specimen_number int NOT NULL primary key,
 blood_group varchar(10) NOT NULL,
 status int,
 BSO_id int NOT NULL,
 manager_id int NOT NULL
);
INSERT into BloodSpecimen
VALUES(1011, 'B+', 1,11,111),
(1012, 'O+', 1,12,112),
(1013, 'AB+', 1,11,112),
(1014, 'O-', 1,13,113),
(1015, 'A+', 0,14,111),
(1016, 'A-', 1,13,114),
(1017, 'AB-', 1,15,114),
(1018, 'AB-', 0,11,115),
(1019, 'B+', 1,13,115),
(1020, 'O+', 0,12,115),
(1021, 'O+', 1,13,113),
(1022, 'O-', 1,14,112),
(1023, 'B-', 1,14,112),
(1024, 'AB+', 0,15,111);

Select * from BloodSpecimen;

-- CITY TABLE -- 1001 = lagos, 1002 = Ibadan, 1003 = Kano, 1004 = Abuja, 1005 = Calabar --
CREATE TABLE City
( City_id int NOT NULL primary key,
 City_name varchar(25) NOT NULL
);

INSERT into City
VALUES(1001,'LAGOS'),
(1002,'IBADAN'),
(1003,'KANO'),
(1004,'ABUJA'),
(1005,'CALABAR');
select * from city;

-- Blood screening officers table

CREATE TABLE Blood_screening
( BSO_id int NOT NULL primary key,
 BSO_first_name varchar(25) NOT NULL,
 BSO_last_name varchar(25) NOT NULL,
 BSO_PhNo bigint
);
INSERT into Blood_screening
VALUES(11,'Aliko','Dangote', 2348197462816),
(12,'Mike','Adenuga',2348490847123),
(13,'salamat','Bamidele',2348151235776),
(14,'Emmanuel','Babatunde',2348198711270),
(15,'Aisha','Ayobami',2347027864501);
select * from Blood_screening;

-- HOSPITAL INFO TABLES
 
CREATE TABLE Hospital_Info_1
( hosp_id varchar(100) NOT NULL primary key,
 hosp_name varchar(100) NOT NULL,
 City_id int NOT NULL,
 manager_id int NOT NULL
);
INSERT into Hospital_Info_1
VALUES('LAG/101','Eko hospital',1001,111),
('IBD/101','UCH',1002,113),
('KAN/101','AKTH',1003,113),
('ABJ/101','National hospital',1004,114),
('LAG/102','Lagoon hospital',1001,113),
('LAG/103','Gbagada general hospital',1001,112),
('CLB/101','Belma clinic',1005,115);

select * from Hospital_Info_1;

CREATE TABLE Hospital_Info_2
( hosp_id varchar(100) NOT NULL,
 hosp_name varchar(100) NOT NULL,
 hosp_needed_Bgrp varchar(10),
 hosp_needed_qnty int
);

INSERT into Hospital_Info_2
VALUES('LAG/101','Eko hospital','A+',15),
('LAG/101','Eko hospital','AB+',50),
('LAG/101','Eko hospital','A-',0),
('LAG/101','Eko hospital','B-',10),
('LAG/101','Eko hospital','AB-',20),
('LAG/102','Lagoon hospital','A+',40),
('LAG/102','Lagoon hospital','AB+',20),
('LAG/102','Lagoon hospital','A-',10),
('LAG/102','Lagoon hospital','B-',30),
('LAG/102','Lagoon hospital','O+',0),
('LAG/102','Lagoon hospital','AB-',10),
('LAG/103','Gbagada general hospital','A+',0),
('LAG/103','Gbagada general hospital','AB+',0),
('LAG/103','Gbagada general hospital','A-',0),
('LAG/103','Gbagada general hospital','B-',20),
('LAG/103','Gbagada general hospital','B+',10),
('IBD/101','UCH','O+',10),
('IBD/101','UCH','B+',30),
('IBD/101','UCH','A-',0),
('KAN/101','AKTH','B-',40),
('KAN/101','AKTH','B+',10),
('KAN/101','AKTH','AB-',20),
('ABJ/101','National hospital','A-',20),
('ABJ/101','National hospital','O+',10),
('ABJ/101','National hospital','AB-',30),
('CLB/101','Belma clinic','O+',10),
('CLB/101','Belma clinic','A-',40),
('CLB/101','Belma clinic','AB-',20),
('CLB/101','Belma clinic','AB-',30);

CREATE TABLE Recipient
( reci_id int NOT NULL primary key,
reci_first_name varchar(100) NOT NULL,
reci_last_name varchar(100) NOT NULL,
reci_age int NOT NULL,
reci_Brgp varchar(10),
reci_Bqnty float,
reco_id int NOT NULL,
City_id int NOT NULL,
manager_id int NOT NULL,
reci_sex varchar(10),
 reci_reg_date date
);
 INSERT INTO Recipient
 VALUES(10001,'Mark', 'Edwards', 25,'B+',1.5,101212,1001,111,'M','2019-11-20'),
(10002,'Daniel', 'Amokachi',60,'A+',1,101312,1001,112,'M','2015-12-16'),
(10003,'Razak','Bamidele',35,'AB+',0.5,101312,1002,112,'M','2015-10-17'),
(10004,'Peter','Rufai',66,'B+',1,101212,1003,114,'M','2010-1-04'),
(10005,'Halimah','Abubakar',53,'B-',1,101412,1004,115,'F','2015-04-17'),
(10006,'Adewale','Peter',45,'O+',1.5,101512,1005,115,'M','2015-12-17'),
(10007,'Barakah','Salami',22,'AB-',1,101212,1005,111,'F','2015-05-17'),
(10008,'Kabirah','abdul',25,'O+',2,101412,1003,113,'F','2015-12-14'),
(10009,'Kelechi','Nndidi',30,'A+',1.5,101312,1001,114,'M','2015-02-16'),
(10010,'Mary','Emeka',25,'A-',3.5,101212,1001,114,'F','2019-10-15');

select * from recipient;

-- Recording staff table--

CREATE TABLE Recording_Staff
( reco_id int NOT NULL primary key,
 reco_first_name varchar(50) NOT NULL,
reco_last_name varchar(50) NOT NULL,
 reco_phNo bigint
);
INSERT into Recording_Staff
VALUES(101212,'Waheed','Olawale',2340458065532),
(101312,'Henry','Nwakali',2340458065553),
(101412,'Muhammed','Dikko',2344580655380),
(101512,'Olapoju','Fashola',2348045806553),
(101612,'Rasheedi','Kbirat',2344045806553),
(101712,'Blessing','Ayodele',2398045816553),
(101812,'Jerry','Tunde',2344045826553),
(101912,'Desola','Olawale',2349045836553),
(101012,'Mercy','Johnson',2348044846553),
(101112,'Mark','Adamu',2349045856553);


/* QUERIES */
-- Create a View of recipients and donors names having the same blood group--

select blood_donor.BD_first_name, BD_last_name, Recipient.reci_first_name,reci_last_name, reco_first_name, 
reco_last_name,blood_donor.BD_Bgroup from Recording_Staff
inner join  blood_donor on Recording_Staff.reco_id = blood_donor.reco_id 
inner join Recipient on Recording_Staff.reco_id = Recipient.reco_id
where blood_donor.BD_Bgroup = Recipient.reci_Brgp;

-- Create a View of recipients and donors names registered on the same day--
select blood_donor.BD_first_name, BD_last_name, Recipient.reci_first_name,reci_last_name, reco_first_name, 
reco_last_name from Recording_Staff 
inner join  blood_donor on Recording_Staff.reco_id = blood_donor.reco_id 
inner join Recipient on Recording_Staff.reco_id = Recipient.reco_id
where blood_donor.bd_reg_date = Recipient.reci_reg_date;

-- Create a View of recipients and donors names from same city --
select blood_donor.BD_first_name,blood_donor.BD_last_name, recipient.reci_first_name, 
recipient.reci_first_name, recipient.reci_last_name, city.City_name 
from blood_donor, recipient,city
where blood_donor.City_ID = recipient.City_id;

/* pure blood specimen handled by Blood bank Manager who also handles a recipient needing 
the same blood group along with the details of the Manager and Recipient*/

select bb_manager.mng_first_name,mng_last_name, recipient.reci_first_name, recipient.reci_last_name, 
recipient.reci_Brgp,blood_group 
from bb_Manager,recipient,bloodspecimen
where recipient.manager_id = bloodspecimen.manager_id and recipient.reci_Brgp =
bloodspecimen.blood_group and status = 1;

-- Query showing details of hospitals handled by manager with ID '113' --

Select hosp_id,hosp_name,City_id, hospital_info_1.manager_id
from hospital_info_1,bb_manager
where bb_manager.manager_id=hospital_info_1.manager_id and bb_manager.manager_id=113;

