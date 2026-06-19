CREATE DATABASE Ecommerce_Analytics;
GO

USE Ecommerce_Analytics;
GO

CREATE SCHEMA ECAS;
GO

-- How to create schema in a sql



CREATE TABLE ECAS.Products(
 ProductID INT IDENTITY(1,1) PRIMARY KEY,
 ProductName VARCHAR(200) NOT NULL,
 Category VARCHAR(100),
 Price DECIMAL(10,2),
 Stock INT,
 Rating DECIMAL(3,2),
 CreatedDate DATETIME DEFAULT GETDATE()
);

INSERT INTO ECAS.Products(ProductName, Category, Price, Stock, Rating)
VALUES
('Laptop', 'Electronics', 55000, 20, 4.50),
('Mouse', 'Electronics', 500, 100, 4.20),
('Keyboard', 'Electronics', 1200, 50, 4.30),
('Monitor', 'Electronics', 15000, 15, 4.60),
('Mobile Phone', 'Electronics', 25000, 30, 4.40),
('Headphones', 'Accessories', 2000, 40, 4.10),
('Chair', 'Furniture', 3500, 25, 4.00),
('Table', 'Furniture', 5000, 10, 4.20),
('Notebook', 'Stationery', 100, 200, 4.50),
('Pen', 'Stationery', 20, 500, 4.30);

select * from ECAS.Products


--This is my second table customer 

CREATE TABLE ECAS.Customers(
 CustomerID INT IDENTITY(1,1) PRIMARY KEY,
 CustomerName VARCHAR(100),
 Email VARCHAR(150) UNIQUE,
 MobileNo VARCHAR(15),
 City VARCHAR(100),
 Country VARCHAR(100),
 RegistrationDate DATETIME DEFAULT GETDATE()
)


 INSERT INTO ECAS.Customers(CustomerName, Email, MobileNo, City, Country)
VALUES
('Ankit Prajapati','ankit@gmail.com','9876543210','Ghaziabad','India'),
('Rahul Sharma','rahul@gmail.com','9876543211','Delhi','India'),
('Priya Singh','priya@gmail.com','9876543212','Noida','India'),
('Amit Kumar','amit@gmail.com','9876543213','Gurgaon','India'),
('Neha Gupta','neha@gmail.com','9876543214','Lucknow','India'),
('Rohit Verma','rohit@gmail.com','9876543215','Jaipur','India'),
('Pooja Yadav','pooja@gmail.com','9876543216','Mumbai','India'),
('Vikas Mishra','vikas@gmail.com','9876543217','Pune','India'),
('Sneha Jain','sneha@gmail.com','9876543218','Chandigarh','India'),
('Arjun Patel','arjun@gmail.com','9876543219','Ahmedabad','India');

Select * from ECAS.Customers

-- This is my Third table Orders

CREATE TABLE ECAS.Orders( OrderID INT IDENTITY(1,1) PRIMARY KEY, 
CustomerID INT, 
OrderDate DATETIME DEFAULT GETDATE(), 
TotalAmount DECIMAL(12,2), 
FOREIGN KEY(CustomerID) REFERENCES ECAS.Customers(CustomerID)
);


INSERT INTO ECAS.Orders(CustomerID, TotalAmount)
VALUES
(1,55000),
(2,500),
(3,1200),
(4,15000),
(5,25000),
(6,2000),
(7,3500),
(8,5000),
(9,100),
(10,20);

Select * from ECAS.Orders

-- This is my fourth table Ordersdetails

CREATE TABLE ECAS.OrderDetails( OrderDetailID INT IDENTITY(1,1) PRIMARY KEY, 
OrderID INT, 
ProductID INT, 
Quantity INT, 
UnitPrice DECIMAL(10,2), 
FOREIGN KEY(OrderID) REFERENCES ECAS.Orders(OrderID), 
FOREIGN KEY(ProductID) REFERENCES ECAS.Products(ProductID)
);

INSERT INTO ECAS.OrderDetails(OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1,1,1,55000),
(2,2,2,500),
(3,3,1,1200),
(4,4,1,15000),
(5,5,1,25000),
(6,6,2,2000),
(7,7,1,3500),
(8,8,1,5000),
(9,9,5,100),
(10,10,10,20);

Select * from ECAS.OrderDetails

--This is my fifth table 

CREATE TABLE ECAS.Payments(
 PaymentID INT IDENTITY(1,1) PRIMARY KEY,
 OrderID INT,
 PaymentMethod VARCHAR(50),
 PaymentStatus VARCHAR(50),
 PaymentDate DATETIME DEFAULT GETDATE(),
 FOREIGN KEY(OrderID) REFERENCES ECAS.Orders(OrderID)
)

INSERT INTO ECAS.Payments(OrderID, PaymentMethod, PaymentStatus)
VALUES
(1,'UPI','Success'),
(2,'Credit Card','Success'),
(3,'Debit Card','Success'),
(4,'Cash','Pending'),
(5,'UPI','Success'),
(6,'Net Banking','Success'),
(7,'UPI','Failed'),
(8,'Credit Card','Success'),
(9,'Cash','Success'),
(10,'UPI','Success');

Select * from ECAS.Payments

-- This is my sixth table KPI_Summary 

CREATE TABLE ECAS.KPI_Summary(
 KPIID INT IDENTITY(1,1) PRIMARY KEY,
 ReportDate DATE,
 TotalRevenue DECIMAL(12,2),
 TotalOrders INT,
 TotalCustomers INT,
 AvgOrderValue DECIMAL(10,2)
)

INSERT INTO ECAS.KPI_Summary
(ReportDate, TotalRevenue, TotalOrders, TotalCustomers, AvgOrderValue)
VALUES
('2025-01-01',50000,10,10,5000),
('2025-02-01',55000,12,11,4583),
('2025-03-01',60000,15,13,4000),
('2025-04-01',65000,18,15,3611),
('2025-05-01',70000,20,17,3500),
('2025-06-01',75000,22,19,3409),
('2025-07-01',80000,25,20,3200),
('2025-08-01',85000,28,22,3036),
('2025-09-01',90000,30,24,3000),
('2025-10-01',95000,32,25,2968);

Select * from ECAS.KPI_Summary

