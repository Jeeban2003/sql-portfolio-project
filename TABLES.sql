CREATE TABLE Books (
	Book_id SERIAL PRIMARY KEY , 
	Title VARCHAR(100),
	Author VARCHAR(100),
	Genre VARCHAR(100),
	Published_year INT,
	Price NUMERIC(10 , 2),
	Stock INT
);

CREATE TABLE Customers (
	Customer_id SERIAL PRIMARY KEY , 
	Name VARCHAR(100),
	Email VARCHAR(100),
	Phone VARCHAR(15),
	City VARCHAR(150),
	Country VARCHAR(150)
);

CREATE TABLE Orders (
	Order_id SERIAL PRIMARY KEY,
	Customer_id INT REFERENCES Customers(Customer_id),
	Book_id INT REFERENCES Books(Book_id),
	Order_date DATE,
	Quantity INT,
	Total_Amount NUMERIC(10,2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;
















