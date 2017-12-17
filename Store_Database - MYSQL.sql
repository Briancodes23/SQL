/*Creating the database*/
CREATE DATABASE INFORMATION_ANALYSIS_DB;

/*Creating the database tables*/
CREATE TABLE Product
(
Product_ID int auto_increment,
Product_Name varchar(20),
Product_Category varchar(20),
Price decimal (10,0),
Qty int,
Product_Description varchar(25),
CONSTRAINT pk_Product_id PRIMARY KEY(Product_id)
);

CREATE TABLE Staff 
( 
Staff_id int auto_increment,
Staff_Fname varchar(30), 
DoB varchar(10),
Gender varchar(10),
Position varchar(20), 
Wage int,
Branch_Alocation varchar(30),
CONSTRAINT pk_Staff_id PRIMARY KEY(Staff_id) 
);

CREATE TABLE Branch 
( 
Branch_id int auto_increment,
Branch_Name varchar(20),
Branch_Address varchar(30),
Branch_Type varchar(30),
Postcode varchar(7),
Telephone varchar(15), 
Manager varchar(20), 
CONSTRAINT pk_Branch_id PRIMARY KEY(Branch_ID) 
);

CREATE TABLE Time_t 
( 
Time_t_id int auto_increment,
min int, 
Hour int, 
Date_of_sale int,
month int,
Year int, 
Week_No int, 
CONSTRAINT pk_Time_t_id PRIMARY KEY(time_t_id) 
);

CREATE TABLE Location
(
Location_ID int auto_increment, 
Location_Name varchar(20),
Location_Address varchar (20),
CONSTRAINT pk_Location_id PRIMARY KEY(Location_ID)
);

CREATE TABLE Sales_Memo 
( 
Sales_ID int auto_increment, 
Staff_ID int (10),
product_ID int (10),
Time_t_id int (10),
Amount decimal (10,0),
Branch_ID int (10),
Location_ID int (10),
CONSTRAINT pk_sales_ID PRIMARY KEY (Sales_ID),
foreign key (staff_ID) references staff(staff_ID),
foreign key (product_ID) references product (product_ID),
foreign key (Time_t_ID) references Time_t (Time_t_id),
foreign key (Branch_ID) references Branch (Branch_id),
foreign key (Location_ID) references location (Location_ID)
);


/*Tests performed against the database*/
SELECT * FROM sales_memo

SELECT * FROM product
WHERE Product_Name = '1 ';

SELECT * FROM staff
SELECT * FROM Product
SELECT * FROM Branch
SELECT * FROM Time_t
SELECT * FROM location
SELECT * FROM sales_memo
DROP TABLE Product


/*Inserting data into the tables created*/
/*Product*/
INSERT INTO product (Product_ID, Product_Name ,Product_Category, Price, Qty ,Product_Description) 
VALUES ('1','Birds eyeSalmon','fish','2.50','2','Sea food');

INSERT INTO product (Product_ID, Product_Name ,Product_Category, Price, Qty ,Product_Description)
VALUES ('2','Kingsmeal Bread','breads','4.25','4','Breakfast');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description)
VALUES ('3','Chilli chicken ','Poultry','4.35','5','hot meal');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description)
VALUES ('4','Prawns','fish','1.75','8','Meal');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description)
VALUES ('5',' Tuna chunks ','fish','3.75 ','7','Meal');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description) 
VALUES ('6','Cereal','Grains','4.80','5','Breakfast');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description)
VALUES ('7',' Bacon ','Pork','2.00','2','Breakfast');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description)
VALUES ('8',' Eggs ','Dairy','4.75 ','10','Breakfast');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description) 
VALUES ('9',' Biscuits ','Dairy','1.75 ','6','Confectionary');

INSERT INTO Product (Product_ID, Product_Name ,Product_Category ,Price, Qty ,Product_Description) 
VALUES ('10',' Roasted Beef ','Dairy','1.75 ','4','pork');


/*Staff*/
INSERT INTO Staff (Staff_ID, Staff_Fname,DoB,Gender,Position,Wage,Branch_Alocation) 
VALUES ('1','Fred','02/01/1989','Male','Store assistant','8.30','Meadow store');

INSERT INTO Staff (Staff_ID, Staff_FNAME,DoB,Gender,Position,Wage,Branch_Alocation) 
VALUES ('2','Dave','04/05/1985','Male','Bakery cook','6.20','Avery store');

INSERT INTO Staff (Staff_ID, Staff_FNAME,DoB,Gender,Position,Wage,Branch_Alocation) 
VALUES  ('3','Tim','12/10/1990','Male','Cashier','8.20','Davis store');

INSERT INTO Staff (Staff_ID,Staff_FNAME,DoB,Gender,Position,Wage,Branch_Alocation) 
VALUES  ('4',' Rachael ','01/01/1984','Female','Manager assistant','17.30','Avery store');

INSERT INTO Staff (Staff_ID,Staff_FNAME,DoB,Gender,Position,Wage,Branch_Alocation) 
VALUES ('5',' Anne ','09/02/1982','Female','Cleaner','5.30','Meadow store');

INSERT INTO Staff (Staff_ID,Staff_FNAME,DoB,Gender,Position,Wage,Branch_Alocation) 
VALUES ('6',' Ted ','10/04/1979','male','Cleaner','5.30','Davis store')


/*Branch*/
INSERT INTO Branch (Branch_ID, Branch_Name, Branch_Address,Branch_Type,Postcode,Telephone,Manager) 
VALUES ('1',' Meadow store ','21 Meadow Avenue ','Supermarket','WC1 XRY','02080011911','Alan');

INSERT INTO Branch (Branch_ID, Branch_Name, Branch_Address,Branch_Type,Postcode,Telephone,Manager) 
VALUES ('2',' Avery store ','55 Avery Hill ', 'Supermarket' , 'WC4 CXZ','02070011912','Susie');

INSERT INTO Branch (Branch_ID, Branch_Name, Branch_Address,Branch_Type,Postcode,Telephone,Manager) 
VALUES ('3',' Davis store ','55 St Davis way ', 'Supermarket' , 'WC3 NVQ','02070011912','Peter');


/*Time_t*/
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('1','15','5','17','8','2011','1');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('2','9','8','16','8','2011','2');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('3','2','6','13','5','2012','3');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('4','7','19','12','5','2012','4');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('5','37','16','12','5','2012','5');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('6','27','16','12','5','2011','6');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('7','17','16','10','5','2013','7');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('8','7','26','12','5','2011','8');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('9','7','16','10','9','2011','9');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('10','22','16','8','8','2013','1');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('11','33','16','9','9','2011','2');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('12','11','16','55','10','2011','3');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('13','44','16','20','9','2013','4');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('14','8','16','20','8','2011','5'); 
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('15','32','16','10','19','2013','6');
INSERT INTO Time_t  (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('16','17','16','10','9','2011','7');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('17','27','16','11','6','2011','8');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('18','47','16','13','12','2010','9');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('19','15','16','24','9','2011','10');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('20','23','16','15','8','2011','11');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('21','24','16','18','9','2011','12');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('22','27','14','24','5','2011','13');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('23','17','51','6','1','2014','14');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('24','18','52','6','1','2014','15');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('25','21','53','6','1','2014','16');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('26','7','54','6','1','2014','17');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('27','7','29','6','1','2013','18');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('28','7','50','6','1','2013','19');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('29','7','50','6','1','2013','20');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('30','7','10','6','1','2012','21'); 
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('31','7','33','6','1','2013','22');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('32','7','31','6','1','2013','23');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('33','7','50','6','1','2013','24');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('34','7','40','6','1','2014','25');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('35','7','10','6','1','2014','26');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('36','7','50','6','1','2014','27');
INSERT INTO  Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('37','7','15','6','1','2011','28');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('38','7','20','6','1','2011','29');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('39','7','50','6','1','2011','30');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('40','7','50','6','1','2013','31');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('41','7','11','6','1','2013','32');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('42','7','42','6','1','2012','33');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('43','7','58','6','1','2012','34');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('44','7','55','6','1','2013','35');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('45','7','5','6','1','2013','36'); 
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('46','53','50','6','1','2014','37');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('47','9','50','6','1','2014','38');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('48','35','53','6','1','2014','39');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('49','36','51','6','1','2013','40');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('50','11','40','6','1','2013','41');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('51','14','10','6','1','2013','42');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('52','15','60','6','1','2014','43');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('53','16','30','6','1','2014','44');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('54','28','20','6','1','2014','45');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('55','29','50','6','1','2013','46');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('56','37','50','6','1','2012','47');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('57','27','10','6','1','2012','48');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('58','17','30','6','1','2012','49');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('59','1','11','6','1','2011','50');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('60','2','50','6','1','2011','51');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('61','8','52','6','1','2012','52'); 
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('62','5','53','6','1','2012','53');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('63','7','41','6','1','2012','54');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('64','7','42','6','1','2013','55');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('65','10','18','6','1','2013','56');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('66','9','20','6','1','2013','57');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('67','4','23','6','1','2014','58');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('68','2','25','6','1','2014','59');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('69','12','11','6','10','2014','60');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('70','31','12','6','11','2013','61');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('71','14','13','6','12','2013','62');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('72','29','18','5','13','2013','63');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('73','27','44','5','14','2011','64');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('74','55','9','5','19','2011','65');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('75','31','28','9','8','2011','66');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('76','23','13','9','9','2012','67');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('77','32','17','18','5','2012','68'); 
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('78','1','50','6','16','2014','69');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('79','55','53','6','17','2014','70');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('80','21','51','6','18','2014','71');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('81','30','55','6','19','2013','72');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('82','40','58','6','21','2013','73');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('83','12','56','23','16','2011','74');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('84','11','51','24','16','2011','75');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('85','37','55','6','16','2011','76');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('86','54','52','9','16','2011','77');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('87','22','54','6','16','2012','78');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('88','4','56','6','16','2013','79');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('89','7','50','6','10','2013','80');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('90','22','54','6','11','2013','81');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('91','18','32','6','9','2013','82'); 
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('92','20','31','18','7','2012','83');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('93','22','57','16','8','2012','84');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('94','29','53','6','11','2014','85');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('95','14','17','6','12','2014','86');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('96','22','54','15','16','2011','87');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('97','22','54','9','16','2011','88');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('98','22','54','6','16','2012','89');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('99','22','54','34','16','2013','90');
INSERT INTO Time_t (Time_t_ID,min,Hour,Date_of_sale,Month,Year,Week_No) VALUES 
('100','18','42','13','16','2014','91');

/*LOCATION*/
INSERT INTO Location (Location_ID,Location_Name,Location_Address) 
VALUES ('1','store1','MeadowAvenue');

INSERT INTO Location (Location_ID,Location_Name,Location_Address) 
VALUES ('2','store2','AveryHill');

INSERT INTO Location (Location_ID,Location_Name,Location_Address) 
VALUES ('3','store3','StDavis');


/*SALES_MEMO*/
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('1','2','10','15','3.50','3','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('2','3','1','50','6.50','1','2');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('3','5','4','40','6.00','3','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('4','7','4','40','6.00','3','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('5','3','10','55','5.50','3','2');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('6','4','9','21','5.50','3','1');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('7','1','3','15','10.21','1','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('8','4','9','62','5.50','3','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('9','6','5','30','3.22','1','2');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('10','4','9','21','5.50','3','3'); 
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('11','3','7','35','2.20','3','1');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('12','5','2','21','8.81','3','2');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('13','5','3','24','9.20','2','1');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('14','6','9','21','3.51','3','1');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('15','3','5','41','4.54','2','1');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('16','5','6','33','9.22','2','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('17','5','4','28','7.32','2','2');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('18','4','9','21','5.50','3','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('19','3','2','32','7.13','1','2');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('20','3','2','37','8.42','3','1');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('21','1','4','27','2.21','1','2');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('22','3','2','33','6.61','2','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('23','6','9','71','4.44','2','1');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('24','5','7','28','9.50','1','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('25','4','5','52','3.31','2','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('26','2','7','25','5.11','3','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('27','1','10','29','4.51','1','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('28','5','9','23','6.12','2','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('29','2','4','56','9.31','2','3');
INSERT INTO sales_memo (Sales_ID,Staff_ID,product_ID,Time_t_id, Amount,Branch_ID,Location_ID)
VALUES ('30','4','8','51','7.41','1','2');


