CREATE TABLE OrderDetails(
	OrderDetailID SERIAL PRIMARY KEY,
	OrderID INT CONSTRAINT oid REFERENCES Orders(OrderID),
	ProductID INT CONSTRAINT pid REFERENCES Products(ProductID),
	Quantity INT
)

SELECT * FROM OrderDetails;

drop table OrderDetails;