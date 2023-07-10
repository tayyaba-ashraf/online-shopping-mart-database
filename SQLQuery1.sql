CREATE DATABASE Shopping_Mart_0220_0212;

USE  Shopping_Mart_0220_0212;

DROP TABLE ProductCategory;
DROP TABLE Product;

--   -----------    ProductCategory TABLE -------    ----


CREATE TABLE ProductCategory
(
product_category_id INT identity(1,1) NOT NULL,
product_category_name varchar(60) NOT NULL,
product_category_description varchar(250) ,
product_category_isDeleted BIT 

CONSTRAINT PK_product_category_id PRIMARY KEY(product_category_id),
);





--   -----------  INSERT INTO  ProductCategory TABLE -------    ----

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('Snacks AND Beverages','crisp and crunch delight used in many things as a topping','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted)VALUES('GROCERY','shipping charges applicable','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('FROZEN','Cooking Purposes','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('PHARMACY','Shield by virtue of its vast range is the leader in Oral','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('HOUSEHOLDS & PET FOOD','a gateway to unleashing human potential and encourages','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('BEAUTY & PERSONAL CARE','Beauty For Women','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('HOME & LIVING','shipping charges applicable ','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('FASHION','Shop for customizable Cranberry clothing on QnE From tank tops to t-shirts to hoodies','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted)VALUES('CELL PHONES & ACCESSORIERS','Best Prices Available','False')

INSERT INTO ProductCategory(product_category_name,product_category_description,product_category_isDeleted) VALUES('ELECTRONICS & HOME APPLIANCES','Available at Good Price','False')


SELECT * FROM ProductCategory;



--   -----------    Product TABLE -------    ----

DROP TABLE Product;
CREATE TABLE Product
(
product_id INT identity(1,1) NOT NULL,
product_name varchar(60) NOT NULL,
product_price INT NOT NULL,
product_category_id INT,

product_isDeleted BIT ,

CONSTRAINT PK_product_id PRIMARY KEY(product_id),

CONSTRAINT FK_product_category_id  FOREIGN KEY (product_category_id)REFERENCES ProductCategory(product_category_id),

);


--   -----------   INSERT INTO Product TABLE -------    ----



INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Rehmat-e-Shereen Bareek Sev Nimco ',140,1,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Cadbury Dairy Milk Crackle 24pcs x 21.5GM Box',1120,1,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Kheer - 250gm ',140,1,'False')

INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Get 1 Kg Bag Free with Lazzat Basmati Rice 5 Kg Bag',1260,2,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Shan Pilau Biryani',160,2,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Free Tapal Tea Bags 25 Pieces with Everyday 900gm',950,2,'False')

INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Dawn Plain Paratha Value Pack  ',390,3,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Sabroso Chicken Samosa Standard ',314,3,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Sabroso Chicken Wings',370,3,'False')

INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Shield Sanitization Kit ',170,4,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('EVOCHECK INFRARED THERMOMETER',9700,4,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Corona Prevention Kit',850,4,'False')



INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Surf Excel 320GM 2+1 Offer ',198,5,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Pack of 2 Robin Blue',130,5,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Dettol Multi Surface Cleaner',440,5,'False')


INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Nivea Deodorant Pearl & Beauty  ',420,6,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Fogg Scent Many Flowers',1427,6,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Schwarzkopf Osis Freeze Super Hold Hair Spray',1977,6,'False')



INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Disposable Plastic Box  ',130,7,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Rose Petal Pop Up Facial',118,7,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Swiss Pro Chur S-701 Spinner Black-25',8792,7,'False')


INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Black Chicken Top with Bell Sleeves ',1600,8,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Dark Purple Top with Net Sleeves',2100,8,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Peacock Green Pearl Embellished Net Sleeves',2000,8,'False')


INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Samsung M115 Display 6.4',24000,9,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('MI True Wirless Earbuds Basic S',2999,9,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Vivo Y51 Display 6.38',34800,9,'False')



INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Anex AG-2041 Sandwich Maker',2850,10,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Anex AG-3049ss Chopper',7550,10,'False')
INSERT INTO Product(product_name,product_price,product_category_id,product_isDeleted)VALUES('Anex AG-814 Hand Mixer',3380,10,'False')


SELECT *FROM Product;


--   -----------   Cart TABLE -------    ----

DROP TABLE Cart;

CREATE TABLE Cart
(
cart_id INT identity (1,1) NOT NULL,

quantity_of_Product INT ,

CONSTRAINT PK_cart_id PRIMARY KEY(cart_id),

--quantity_of_Product  count will tell count of products in cart by using product_id Pk as FK in it

CONSTRAINT FK_quantity_of_Product FOREIGN KEY (quantity_of_Product)REFERENCES Product(Product_id),

);

--   -----------   INSERT INTO Cart TABLE -------    ----

INSERT INTO Cart(quantity_of_Product)VALUES(1)

INSERT INTO Cart(quantity_of_Product)VALUES(1)

INSERT INTO Cart(quantity_of_Product)VALUES(2)

INSERT INTO Cart(quantity_of_Product)VALUES(2)

INSERT INTO Cart(quantity_of_Product)VALUES(3)

INSERT INTO Cart(quantity_of_Product)VALUES(3)

INSERT INTO Cart(quantity_of_Product)VALUES(5)

INSERT INTO Cart(quantity_of_Product)VALUES(5)

INSERT INTO Cart(quantity_of_Product)VALUES(8)

INSERT INTO Cart(quantity_of_Product)VALUES(8)

INSERT INTO Cart(quantity_of_Product)VALUES(10)

INSERT INTO Cart(quantity_of_Product)VALUES(10)





SELECT * FROM Cart;



--   -----------  Cart_Product TABLE -------    ----

CREATE TABLE Cart_Product
(
cart_Product_id INT identity (1,1) NOT NULL,
cart_id INT,
product_id INT,

CONSTRAINT cart_Product_id PRIMARY KEY(cart_Product_id),

CONSTRAINT FK_cart_id  FOREIGN KEY (cart_id )REFERENCES Cart(cart_id),
CONSTRAINT FK_product_id  FOREIGN KEY (product_id)REFERENCES Product(product_id),

);

--   ----------- INSERT INTO Cart_Product TABLE -------    ----

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(1,1)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(2,1)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(3,2)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(4,2)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(5,3)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(6,3)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(7,5)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(8,5)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(9,8)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(10,8)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(11,10)

INSERT INTO Cart_Product(cart_id ,product_id ) VALUES(12,10)


SELECT * FROM Cart_Product;



-- ------------------------BRAND Table   --------------------------

CREATE TABLE Brand
(
Brand_id INT identity(1,1) NOT NULL,
Brand_name varchar(60) NOT NULL,

CONSTRAINT PK_Brand_id PRIMARY KEY(Brand_id),

)

-- ------------INSERT INTO Brand -------------- ------

INSERT INTO Brand(Brand_name) VALUES('RS')

INSERT INTO Brand(Brand_name) VALUES('Cadbury')

INSERT INTO Brand(Brand_name) VALUES('QnE')

INSERT INTO Brand(Brand_name) VALUES('Shan Foods')

INSERT INTO Brand(Brand_name) VALUES('NESTLE Everyday')

INSERT INTO Brand(Brand_name) VALUES('Dwan Bread')

INSERT INTO Brand(Brand_name) VALUES('Sabroso')

INSERT INTO Brand(Brand_name) VALUES('Shield')

INSERT INTO Brand(Brand_name) VALUES('Pharm Evo')

INSERT INTO Brand(Brand_name) VALUES('Surf Excel')

INSERT INTO Brand(Brand_name) VALUES('Robin Blue')

INSERT INTO Brand(Brand_name) VALUES('Dettol')

INSERT INTO Brand(Brand_name) VALUES('Nivea')

INSERT INTO Brand(Brand_name) VALUES('FOGG')

INSERT INTO Brand(Brand_name) VALUES('Schwarzkopf')

INSERT INTO Brand(Brand_name) VALUES('SSMCrockery')

INSERT INTO Brand(Brand_name) VALUES('Rose Petal')

INSERT INTO Brand(Brand_name) VALUES('Swiss Pro')

INSERT INTO Brand(Brand_name) VALUES('Cranberry Wardrobe')

INSERT INTO Brand(Brand_name) VALUES('Samsung')

INSERT INTO Brand(Brand_name) VALUES('MI')

INSERT INTO Brand(Brand_name) VALUES('Vivo')

INSERT INTO Brand(Brand_name) VALUES('Anex')



SELECT * FROM Brand;






--- ------------------- Brand_Of_Product TABLE  ----- ---------------
 CREATE TABLE Brand_Of_Product 
 (
Brand_Of_Product INT identity(1,1) NOT NULL,
Brand_id INT,
product_id INT,

CONSTRAINT PK_Brand_Of_Product PRIMARY KEY(Brand_Of_Product),

CONSTRAINT FK_Brand_id  FOREIGN KEY(Brand_id ) REFERENCES Brand(Brand_id),
CONSTRAINT FK1_product_id  FOREIGN KEY(product_id ) REFERENCES Product(product_id),
);

----- -------------------INSERT INTO  Brand_Of_Product TABLE  ----- ---------------

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(1,1)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(2,2)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(3,3)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(3,4)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(4,5)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(5,6)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(6,7)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(7,8)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(7,9)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(8,10)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(9,11)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(9,12)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(10,13)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(11,14)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(12,15)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(13,16)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(14,17)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(15,18)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(16,19)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(17,20)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(18,21)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(19,22)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(19,23)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(19,24)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(20,25)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(21,26)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(22,27)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(23,28)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(23,29)

INSERT INTO Brand_Of_Product(Brand_id,product_id)VALUES(23,30)



SELECT * FROM Brand_Of_Product;


-- -----------------OrderStatus TABLE ---------------------

CREATE TABLE OrderStatus
(
Orderstatus_id INT identity(1,1) NOT NULL,
Orderstatus_info varchar(50) NOT NULL,

CONSTRAINT PK_Orderstatus_id PRIMARY KEY(Orderstatus_id),
);

-- -----------INSERT INTO OrderStatus TABLE ---------------------


INSERT INTO OrderStatus(Orderstatus_info) VAlUES (' This Order is in PROPGRESSED')
INSERT INTO OrderStatus(Orderstatus_info) VAlUES (' This Order has been DELIEVERED')
INSERT INTO OrderStatus(Orderstatus_info) VAlUES (' This Order has been CANCELLED')

SELECT * FROM OrderStatus;

-- -----------------------------Customer TABLE  -------------------------------

CREATE TABLE Customer
(

Customer_id INT identity(1,1) NOT NULL,
Customer_name varchar(60) NOT NULL,
Customer_country_name varchar( 40)NOT NULL,
Customer_email varchar(25) NOT NULL,

Customer_CityName varchar(40) NOT NULL,
Customer_StreetNo NUMERIC(3) ,
Customer_HouseNo NUMERIC(3),


CONSTRAINT PK_Customer_id PRIMARY KEY (Customer_id),



);

DROP TABLE Customer;


INSERT INTO Customer(Customer_name,Customer_country_name,Customer_email,Customer_CityName,Customer_StreetNo,Customer_HouseNo)VALUES('Saba','Pakistan','saba101@gmail.com','Lahore',007,001)
INSERT INTO Customer(Customer_name,Customer_country_name,Customer_email,Customer_CityName,Customer_StreetNo,Customer_HouseNo)VALUES('Rayan','England','Rayan67Y@gmail.com','Manchester',009,008)
INSERT INTO Customer(Customer_name,Customer_country_name,Customer_email,Customer_CityName,Customer_StreetNo,Customer_HouseNo)VALUES('Habib','Dubai','HabibYousaf@gmail.com','Abu-Dhabi',120,012)
INSERT INTO Customer(Customer_name,Customer_country_name,Customer_email,Customer_CityName,Customer_StreetNo,Customer_HouseNo)VALUES('Kasha','Caneda','KashaRahim78@gmail.com','Toronto',100,234)
INSERT INTO Customer(Customer_name,Customer_country_name,Customer_email,Customer_CityName,Customer_StreetNo,Customer_HouseNo)VALUES('Tayyaba','Pakistan','taiba@gmail.com','skl',006,002)




SELECT * FROM Customer;


---- -----------------Customer_Phone_Number   ---------

CREATE TABLE Customer_Phone_Number 
(

Customer_Phone_Number_id INT identity(1,1) NOT NULL,
Customer_id INT,



CONSTRAINT PK_Customer_Phone_Number_id PRIMARY KEY (Customer_Phone_Number_id),

CONSTRAINT FK_Customer_id  FOREIGN KEY (Customer_id )REFERENCES Customer(Customer_id),

);

ALTER TABLE Customer_Phone_Number
ADD Customer_Phone_Number Varchar(30) NOT NULL

---- -------------------INSERT INTO  Customer_Phone_Number  -- -----------

INSERT INTO Customer_Phone_Number(Customer_id,Customer_Phone_Number)VALUES(2,'032289')

INSERT INTO Customer_Phone_Number(Customer_id,Customer_Phone_Number)VALUES(2,'032278')

INSERT INTO Customer_Phone_Number(Customer_id,Customer_Phone_Number)VALUES(3,'032670')

INSERT INTO Customer_Phone_Number(Customer_id,Customer_Phone_Number)VALUES(4,'0321234')

INSERT INTO Customer_Phone_Number(Customer_id,Customer_Phone_Number)VALUES(5,'0300167')

INSERT INTO Customer_Phone_Number(Customer_id,Customer_Phone_Number)VALUES(6,'056789')

INSERT INTO Customer_Phone_Number(Customer_id,Customer_Phone_Number)VALUES(6,'078909')



SELECT * FROM Customer_Phone_Number;




----- -----------------OrderOfProduct---------------------

CREATE TABLE OrderOfProduct
(
order_id INT identity(1,1) NOT NULL,
order_datetime datetime NOT NULL,
order_total_price Numeric (7)  NOT NULL,
Orderstatus_id  INT ,
Customer_id INT ,


CONSTRAINT PK_order_id PRIMARY KEY (order_id),


CONSTRAINT FK_Orderstatus_id  FOREIGN KEY (Orderstatus_id )REFERENCES OrderStatus(Orderstatus_id) ,

CONSTRAINT FK1_Customer_id  FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id ) ,

);



--------   INSERT INTO OrderOfProduct ----------------

INSERT INTO OrderOfProduct(order_datetime,order_total_price,Orderstatus_id,Customer_id )VALUES('2005-09-18 10:50:50',47890,1,2)

INSERT INTO OrderOfProduct(order_datetime,order_total_price,Orderstatus_id,Customer_id )VALUES('2006-08-24 02:32:31',34562,2,3)

INSERT INTO OrderOfProduct(order_datetime,order_total_price,Orderstatus_id,Customer_id )VALUES('2007-05-18 08:32:08',92345,3,4)

INSERT INTO OrderOfProduct(order_datetime,order_total_price,Orderstatus_id,Customer_id )VALUES('2008-03-20 07:55:09',23456,2,5)

INSERT INTO OrderOfProduct(order_datetime,order_total_price,Orderstatus_id,Customer_id )VALUES('2009-07-25 10:48:21',456789,2,6)



SELECT * FROM OrderOfProduct;



----------------


CREATE TABLE OrderedProductList
(

Product_id_Count INT identity(1,1) NOT NULL,

order_id INT FOREIGN KEY REFERENCES OrderOfProduct(order_id),
product_id INT FOREIGN KEY REFERENCES Product(product_id),


);





SELECT * FROM OrderedProductList;
DROP TABLE OrderedProductList;

INSERT INTO OrderedProductList(order_id,product_id)VALUES( 3,2)

INSERT INTO OrderedProductList(order_id,product_id)VALUES( 3,2)

INSERT INTO OrderedProductList(order_id,product_id)VALUES( 4,2)

INSERT INTO OrderedProductList(order_id,product_id)VALUES( 5,3)

INSERT INTO OrderedProductList(order_id,product_id)VALUES( 4,7)

INSERT INTO OrderedProductList(order_id,product_id)VALUES( 6,6)







----  ----------------- BankUsed Table   ----------------
CREATE TABLE BankUsed
(
BankUsed_id INT identity(1,1) NOT NULL,
BankUsed_name Varchar(50) NOT NULL,

BankUsed_Branch_Name Varchar(100) NOT NULL,

CONSTRAINT PK_BankUsed_id PRIMARY KEY (BankUsed_id),

);




-- -------------- INSERT INTO  BankUsed   ----------------

INSERT INTO BankUsed(BankUsed_name,BankUsed_Branch_Name)VALUES('HBL','HBL Railway Road')

INSERT INTO BankUsed(BankUsed_name,BankUsed_Branch_Name)VALUES('HBL','HBL GCUF Branch')

INSERT INTO BankUsed(BankUsed_name,BankUsed_Branch_Name)VALUES('Askari','Askari Bank Lahore Branch')

INSERT INTO BankUsed(BankUsed_name,BankUsed_Branch_Name)VALUES('Askari','Askari Bank GHJ Branch')

INSERT INTO BankUsed(BankUsed_name,BankUsed_Branch_Name)VALUES('MCB','MCB Bank  Branch')

INSERT INTO BankUsed(BankUsed_name,BankUsed_Branch_Name)VALUES('UBL','UBL GCUF Branch')






SELECT * FROM BankUsed;



-----------------PaymentForOrder TABLE ----- --------------

CREATE TABLE OrderPayment
(
OrderPayment_id INT identity(1,1) NOT NULL,
--     OrderPayment_type Varchar

Customer_id INT,
order_id INT,
BankUsed_id INT,
OrderforPayment_amount NUMERIC (7) NOT NULL,

---------------------------IMPOPRTANT NOTE------OrderforPayment_amount

-- UDHAR ak jung ha isi liay band ha....mang kr sharminda mat krain....
CONSTRAINT   PK1_OrderPayment_id PRIMARY KEY(OrderPayment_id ),

CONSTRAINT FK3_Customer_id  FOREIGN KEY (Customer_id)REFERENCES Customer(Customer_id ) ,
CONSTRAINT FK1_order_id  FOREIGN KEY( order_id)REFERENCES OrderOfProduct(order_id),
CONSTRAINT FK_BankUsed_id  FOREIGN KEY(BankUsed_id ) REFERENCES BankUsed(BankUsed_id),
);

------          INSERT INTO PaymentForOrder -------------- 

INSERT INTO OrderPayment(Customer_id,order_id,BankUsed_id,OrderforPayment_amount)VALUES(2,1,1,47890)

INSERT INTO OrderPayment(Customer_id,order_id,BankUsed_id,OrderforPayment_amount)VALUES(3,2,3,34562)

INSERT INTO OrderPayment(Customer_id,order_id,BankUsed_id,OrderforPayment_amount)VALUES(4,3,4,92345)

INSERT INTO OrderPayment(Customer_id,order_id,BankUsed_id,OrderforPayment_amount)VALUES(5,4,5,23456)

INSERT INTO OrderPayment(Customer_id,order_id,BankUsed_id,OrderforPayment_amount)VALUES(6,5,6,456789)


SELECT * FROM OrderPayment;













