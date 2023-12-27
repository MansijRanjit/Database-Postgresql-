select
    ContactName,
    Address,
    City,
    Country
from Customers
ORDER BY ContactName ASC
LIMIT 4;

select ContactName, Address, City, Country from Customers LIMIT 4;

select
    CustomerID,
    ContactName,
    Address,
    City,
    Country
from Customers
OFFSET 3
LIMIT 4;

select count(*) from customers;

select city, count(*) as CustomersInCity from customers group by city;

SELECT * FROM CUSTOMERS;

SELECT
    CITY,
    CUSTOMERID,
    CONTACTNAME,
    CUSTOMERNAME,
    ADDRESS
FROM CUSTOMERS
WHERE
    CITY IN ('London', 'Paris', 'Madrid')
ORDER BY CITY;

SELECT
    CITY,
    CUSTOMERID,
    CONTACTNAME,
    CUSTOMERNAME,
    ADDRESS
FROM CUSTOMERS
WHERE CITY = 'London'
UNION
SELECT
    CITY,
    CUSTOMERID,
    CONTACTNAME,
    CUSTOMERNAME,
    ADDRESS
FROM CUSTOMERS
WHERE CITY = 'Paris'
UNION
SELECT
    CITY,
    CUSTOMERID,
    CONTACTNAME,
    CUSTOMERNAME,
    ADDRESS
FROM CUSTOMERS
WHERE CITY = 'Madrid'
ORDER BY CITY;

SELECT
    CustomerID,
    ContactName,
    Address
FROM Customers
Where CustomerID NOT IN (
        SELECT CustomerID
        FROM Orders
    );

SELECT
    CustomerID,
    ContactName,
    Address
FROM Customers
Where CustomerID IN (
        SELECT CustomerID
        FROM Orders
    );