CREATE TABLE Employees(
	EmployeeID SERIAL PRIMARY KEY,
	LastName char(50),
	FirstName char(50),
	BirthDate date,
	Photo varchar(50),
	Notes varchar(600)
);
select * from employees

drop table employees