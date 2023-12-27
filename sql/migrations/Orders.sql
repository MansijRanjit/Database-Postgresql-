CREATE TABLE Orders(
	OrderID SERIAL PRIMARY KEY ,
	CustomerID INT CONSTRAINT cid REFERENCES Customers(CustomerID) ,
	EmployeeID INT CONSTRAINT eid REFERENCES Employees(EmployeeID),
	OrderDate date,
	ShipperID INT CONSTRAINT sid REFERENCES Shippers(ShipperID)
)
select * from orders

drop table orders