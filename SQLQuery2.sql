USE Shopping_Mart_0220_0212;


--Updating value of Product having id= 5----1

UPDATE Product SET product_isDeleted='True' WHERE product_id=5;

SELECT product_isDeleted FROM Product WHERE product_id=5;

SELECT * FROM Product;



--Retreiving product  which is not deleted---2
SELECT product_isDeleted ,product_name FROM Product WHERE product_isDeleted <>'True'


--REtreiving products having seconed letter is a----8
SELECT * FROM Product WHERE product_name LIKE '_a%';


--REtreiving products having seconed  last letter is a----9
SELECT * FROM Product WHERE product_name LIKE '%a_';


--all products of length 18 and has �n� as the second alphabet.----

SELECT * FROM Product   WHERE product_name  LIKE '________________n_' ; --LEN (product_name)=  ;


---- list of all products that start with either 'R','C','S' but ends at �s�.-----11

--SELECT * FROM Product;

SELECT * FROM Product   WHERE product_name LIKE '[RCS]%s';


--  retrieve customer name, order date, order status without using joins.---12

SELECT Customer.Customer_name,OrderOfProduct.order_datetime,OrderStatus.Orderstatus_info
FROM
Customer,OrderOfProduct,OrderStatus
WHERE Customer.Customer_id =OrderOfProduct.Customer_id
AND OrderStatus.Orderstatus_id=OrderOfProduct.Orderstatus_id;




--Write a query to retrieve customer name, order date, order status using joins.-----13
SELECT order_datetime , Customer_name,Customer_Phone_Number,Orderstatus_info 
FROM

Customer INNER JOIN   Customer_Phone_Number
ON
Customer_Phone_Number.Customer_id=.Customer.Customer_id 

INNER JOIN OrderOfProduct
ON 
Customer.Customer_id=OrderOfProduct.Customer_id

INNER JOIN OrderStatus
ON 
OrderStatus.Orderstatus_id=OrderOfProduct.Orderstatus_id;


--to see list of cancelled orders----15

SELECT * FROM OrderOfProduct WHERE Orderstatus_id=3 ;


-- see list of cancelled orders along with customer names.---16

SELECT order_datetime,order_total_price,Orderstatus_id,Customer_name FROM 
OrderOfProduct LEFT JOIN Customer
ON OrderOfProduct.Customer_id=Customer.Customer_id
WHERE Orderstatus_id=3 ;



-- see list of Both TABLES Brand_Of_Product , Brand and to get products FROM PRoduct WHERE Brand name='Sabroso' --16

SELECT * FROM
Brand_Of_Product FULL OUTER JOIN Brand

ON Brand.Brand_id=Brand_Of_Product.Brand_id

INNER JOIN Product

ON Brand_Of_Product.product_id=Product.product_id

WHERE Brand_name='Sabroso';


-- -----------SEe list of Bank and  Bank Payments Where Paymentamount=47890
SELECT * FROM 
BankUsed Right JOIN OrderPayment
ON BankUsed.BankUsed_id=OrderPayment.BankUsed_id

WHERE OrderforPayment_amount=47890;


--get the products whose price is greater than average price of products.----17

SELECT * FROM Product WHERE product_price> (SELECT AVG(product_price) FROM Product) ;


--a query to count all the products.----18

SELECT COUNT(product_id) AS Total_Products FROM Product;


---19  Write a query to display two columns. One to display list of product categories and second to
--display the total number of products associated with each category
SELECT ProductCategory.Product_category_id,ProductCategory.Product_category_name,
COUNT(Product.product_id)
AS
TotalNumberOfProducts
FROM Product
INNER JOIN ProductCategory
ON
ProductCategory.Product_category_id=Product.Product_category_id
GROUP BY Product.Product_category_id,ProductCategory.Product_category_id,ProductCategory.Product_category_name;




-----20-----

--e VIEW for customer order details that will display customer name, order number, order data
--and total amount

--Creating View

CREATE VIEW Customer_Order_Details
AS
SELECT order_datetime,order_total_price,Orderstatus_id,Customer_name,order_id AS Order_Number
FROM OrderOfProduct INNER JOIN Customer
ON OrderOfProduct.Customer_id=Customer.Customer_id;

--Calling VieW

SELECT * FROM Customer_Order_Details;


-------21---------

--VIEW for Product details that will display product name, description price and category
--name. It should also display the categories for which no product has been created.

CREATE VIEW  Product_details
AS
SELECT product_name,product_price ,product_category_name,product_category_description FROM
Product INNER JOIN ProductCategory
ON Product.product_category_id=ProductCategory.product_category_id;

--Calling VieW

SELECT * FROM Product_details;

------22----------

--Creating Stored Procedure
------------------------------------------------------------------------------------------------------
--Get_List of Product categories
CREATE PROCEDURE ProductCategory_List_All_Categories
AS
SELECT * FROM ProductCategory;

EXEC ProductCategory_List_All_Categories;

----Get_List of Products
CREATE PROCEDURE Product_List_All_Products
AS
SELECT * FROM Product;

EXEC Product_List_All_Products;


---------------------------------------------------------------------------------------------------

--Get Get_List of ProductsCategories --by using-- Categories_By_Id

CREATE PROCEDURE ProductCategory_Get_By_Id
@p_category_id INT
AS
SELECT * FROM ProductCategory
WHERE product_category_id=@p_category_id;

EXEC ProductCategory_Get_By_Id @p_category_id=10;

-------------------------------------------------------------------------------------

--Get Get_List of Products  --by using-- Products_By_Id

CREATE PROCEDURE Product_Get_By_Id
@p_id INT
AS
SELECT * FROM Product
WHERE product_id=@p_id;

EXEC Product_Get_By_Id @p_id=23;

---------------------------------------------------------------------------------------
--Updation of Product categories
CREATE PROCEDURE Product_Category

@pc_id INT ,
@pc_isDeleted BIT

AS
UPDATE ProductCategory 
SET product_category_isDeleted=@pc_isDeleted
WHERE product_category_id=@pc_id

EXEC Product_Category @pc_isDeleted='True',@pc_id=7;

SELECT * FROM ProductCategory;


----------------------------------------------------------------------------------

--Updation For Product
CREATE PROCEDURE Product_Update

@p_id INT ,
@p_isDeleted BIT

AS
UPDATE Product 
SET product_isDeleted=@p_isDeleted
WHERE product_id=@p_id

EXEC Product_Update @p_isDeleted='False',@p_id=5;

SELECT * FROM Product;


--------------------------------------------------------------
-- DISTINCT  Statement For Omitting Duplication in Columns of Product

SELECT DISTINCT product_name, product_isDeleted	FROM Product;

-----------------------------------------------
--DisplaY top 20  Products Where 'a' as First Letter  and any thing at last

SELECT TOP(20) product_name,product_price ,product_category_id,product_isDeleted FROM Product WHERE product_name LIKE 'a%';

--lists the number of Brands -----HAVING Brand_name='Anex' in Descending Order  

SELECT COUNT(Brand_id) AS  NUMBER_OF_Brands, Brand_name
FROM Brand
GROUP BY Brand_name 
HAVING Brand_name='Anex'
ORDER BY COUNT(Brand_id )  DESC;



--LIST OF Getting  OrderforPayment_amount IN Descending Order Of all Customers Who Have Paid amount

SELECT  Customer_id,OrderforPayment_amount
FROM OrderPayment

ORDER BY	Customer_id, OrderforPayment_amount DESC;

--Getting  MINIMUM_TOTAL_PRICE_FROM_ALL_ORDERS With Customer_Number-----  FROM Orders 

SELECT MIN(order_total_price) AS MINIMUM_TOTAL_PRICE_FROM_ALL_ORDERS ,COUNT(Customer_id) AS Customer_Number
FROM  OrderOfProduct;

--Getting  MAXIMUM_TOTAL_PRICE_FROM_ALL_ORDERS With Customer_Number-----  FROM Orders 

SELECT MAX(order_total_price) AS MAXIMUM_TOTAL_PRICE_FROM_ALL_ORDERS ,COUNT(Customer_id) AS Customer_Number
FROM  OrderOfProduct;


--Getting SUM of  Product_Prices of  FIRST 22 Prdocuts;
SELECT SUM(Product_Price)AS Total_Amount_Of_Price_Of_ALL_Products FROM Product 
WHERE product_id<23;

--all customers that are located in 'Pakistan', 'Canada', 'England':
SELECT * FROM Customer
WHERE Customer_country_name IN ('Pakistan', 'Canada', 'England');


--all products with a price BETWEEN 140 AND 1977 In Ascending Order;:

SELECT * FROM Product
WHERE product_price BETWEEN 140 AND 1977 
ORDER BY  product_price ASC;



