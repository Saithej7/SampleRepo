   CREATE TABLE `employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  UNIQUE KEY `EMP_EMAIL_UK` (`EMAIL`),
  KEY `EMP_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  KEY `EMP_JOB_IX` (`JOB_ID`),
  KEY `EMP_MANAGER_IX` (`MANAGER_ID`),
  KEY `EMP_NAME_IX` (`LAST_NAME`,`FIRST_NAME`)
);

  CREATE TABLE `departments` (
  `DEPARTMENT_ID` decimal(4,0) NOT NULL DEFAULT '0',
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `LOCATION_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`),
  KEY `DEPT_MGR_FK` (`MANAGER_ID`),
  KEY `DEPT_LOCATION_IX` (`LOCATION_ID`)
);


CREATE TABLE `locations` (
  `LOCATION_ID` decimal(4,0) NOT NULL DEFAULT '0',
  `STREET_ADDRESS` varchar(40) DEFAULT NULL,
  `POSTAL_CODE` varchar(12) DEFAULT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE_PROVINCE` varchar(25) DEFAULT NULL,
  `COUNTRY_ID` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`),
  KEY `LOC_CITY_IX` (`CITY`),
  KEY `LOC_COUNTRY_IX` (`COUNTRY_ID`),
  KEY `LOC_STATE_PROVINCE_IX` (`STATE_PROVINCE`)
);


INSERT INTO `employees` VALUES
 (100,'Steven','King','SKING','515.123.4567','1987-06-17','AD_PRES',24000.00,0.00,0,90),
(101,'Neena','Kochhar','NKOCHHAR','515.123.4568','1987-06-18','AD_VP',17000.00,0.00,100,90),
(102,'Lex','De Haan','LDEHAAN','515.123.4569','1987-06-19','AD_VP',17000.00,0.00,100,90),
(103,'Alexander','Hunold','AHUNOLD','590.423.4567','1987-06-20','IT_PROG',9000.00,0.00,102,60),
(104,'Bruce','Ernst','BERNST','590.423.4568','1987-06-21','IT_PROG',6000.00,0.00,103,60),
(105,'David','Austin','DAUSTIN','590.423.4569','1987-06-22','IT_PROG',4800.00,0.00,103,60),
(106,'Charles','Johnson','CJOHNSON','011.44.1644.429262','1987-09-04','SA_REP',6200.00,0.10,149,80),
(107,'Winston','Taylor','WTAYLOR','650.507.9876','1987-09-05','SH_CLERK',3200.00,0.00,120,50),
(108,'Jean','Fleaur','JFLEAUR','650.507.9877','1987-09-06','SH_CLERK',3100.00,0.00,120,50),
(109,'Martha','Sullivan','MSULLIVA','650.507.9878','1987-09-07','SH_CLERK',2500.00,0.00,120,50),
(110,'Girard','Geoni','GGEONI','650.507.9879','1987-09-08','SH_CLERK',2800.00,0.00,120,50),
(111,'Jennifer','Whalen','JWHALEN','515.123.4444','1987-09-25','AD_ASST',4400.00,0.00,101,10),
(112,'Michael','Hartstein','MHARTSTE','515.123.5555','1987-09-26','MK_MAN',13000.00,0.00,100,20),
(113,'Hermann','Baer','HBAER','515.123.8888','1987-09-29','PR_REP',10000.00,0.00,101,70),
(114,'Shelley','Higgins','SHIGGINS','515.123.8080','1987-09-30','AC_MGR',12000.00,0.00,101,110),
(115,'William','Gietz','WGIETZ','515.123.8181','1987-10-01','AC_ACCOUNT',8300.00,0.00,205,110);


INSERT INTO `departments` VALUES 
(10,'Administration',200,1700),
(20,'Marketing',201,1800),
(30,'Purchasing',114,1700),
(40,'Human Resources',203,2400),
(50,'Shipping',121,1500),
(60,'IT',103,1400),
(70,'Public Relations',204,2700),
(80,'Sales',145,2500),
(90,'Executive',100,1700),
(100,'Finance',108,1700);

INSERT INTO `locations` VALUES
 (1000,'1297 Via Cola di Rie','989','Roma','','IT'),
(1100,'93091 Calle della Testa','10934','Venice','','IT'),
(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),
(1300,'9450 Kamiya-cho','6823','Hiroshima','','JP'),
(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),
(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),
(1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),
(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),
(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),
(2000,'40-5-12 Laogianggen','190518','Beijing','','CN'),
(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN')
,(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),
(2300,'198 Clementi North','540198','Singapore','','SG'),
(2400,'8204 Arthur St','','London','','UK'),
(2500,'\"Magdalen Centre',' The Oxford ','OX9 9ZB','Oxford','Ox');


COMMIT;