select ContactName , Address, City, Country from Customers ORDER BY ContactName ASC LIMIT 4;

select ContactName , Address, City, Country from Customers LIMIT 4;

select CustomerID, ContactName , Address, City, Country from Customers OFFSET 3 LIMIT 4 ;

select count(*) from customers;

select city,count(*) as CustomersInCity from customers group by city;

SELECT * FROM CUSTOMERS;

SELECT CITY,CUSTOMERID,CONTACTNAME,CUSTOMERNAME,ADDRESS FROM CUSTOMERS WHERE CITY 
IN ('London', 'Paris', 'Madrid') 
ORDER BY CITY;

SELECT CITY,CUSTOMERID,CONTACTNAME,CUSTOMERNAME,ADDRESS FROM CUSTOMERS WHERE CITY='London' 
UNION 
SELECT CITY,CUSTOMERID,CONTACTNAME,CUSTOMERNAME,ADDRESS FROM CUSTOMERS WHERE CITY='Paris'
UNION
SELECT CITY,CUSTOMERID,CONTACTNAME,CUSTOMERNAME,ADDRESS FROM CUSTOMERS WHERE CITY='Madrid' ORDER BY CITY;

SELECT CustomerID,ContactName,Address FROM Customers Where CustomerID 
NOT IN
(SELECT CustomerID FROM Orders);

SELECT CustomerID,ContactName,Address FROM Customers Where CustomerID 
IN
(SELECT CustomerID FROM Orders);

SELECT CustomerID,ContactName,Address FROM Customers c Where
NOT EXISTS
(SELECT CustomerID FROM Orders o WHERE o.CustomerID= c.CustomerID);

SELECT CustomerID,ContactName,Address FROM Customers c Where
EXISTS
(SELECT CustomerID FROM Orders o WHERE o.CustomerID= c.CustomerID);

--Number of Orders made by each customers--
SELECT c.CustomerID,c.CustomerName,c.ContactName,c.Address, Count(o.CustomerID)as OrderCount FROM Customers c 
INNER JOIN 
Orders o 
ON c.CustomerID=o.CustomerID GROUP BY c.CustomerID,c.ContactName ORDER BY c.CustomerID;

SELECT c.City,COUNT(*)AS "City Count" 
FROM Customers c 
INNER JOIN 
Orders o 
ON c.CustomerID=o.CustomerID 
GROUP BY
c.City;

SELECT c.CustomerID from Customers c LEFT JOIN  Orders o ON o.CustomerID=c.CustomerID where o.CustomerID IS NULL;