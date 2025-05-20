----- Beginner Tasks -------
 ---- George Sepiadis  -----

---- 1. CREATE THE DATABSE -------------------------
---- 2. USE THE DATABSE ----------------------------
---- 3. CREATE TABLES ------------------------------
---- 4. INSERT DATA --------------------------------
---- 5. VIEW TABLES --------------------------------
---- 6. TASKS --------------------------------------


---- 1. CREATE THE DATABSE -------------------------
/*

CREATE DATABASE PracticeDB;
GO

*/
--- END --------------------------------------------


---- 2. USE THE DATABSE ----------------------------
/*

USE PracticeDB;
GO

*/
--- END --------------------------------------------


---- 3. CREATE TABLES ------------------------------
/*

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE
);

*/
--- END --------------------------------------------

---- 4. INSERT DATA --------------------------------
/*

INSERT INTO Customers (FirstName, LastName, Email, Country)
VALUES 
('Alice', 'Green', 'alice.g@example.com', 'USA'),
('Bob', 'Lee', 'bob.lee@example.com', 'UK'),
('Maria', 'Papadopoulos', 'maria.p@example.com', 'Greece'),
('Ahmed', 'Yousef', 'ahmed.y@example.com', 'Egypt'),
('Naoko', 'Tanaka', 'naoko.t@example.com', 'Japan');
GO

INSERT INTO Products (ProductName, Category, Price)
VALUES 
('Laptop', 'Electronics', 1200.00),
('Desk Chair', 'Furniture', 150.00),
('Notebook', 'Stationery', 4.50),
('Monitor', 'Electronics', 300.00),
('Pen Pack', 'Stationery', 6.00);
GO

INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate)
VALUES 
(1, 1, 1, '2024-11-01'),
(1, 3, 5, '2024-11-02'),
(2, 2, 1, '2024-11-03'),
(3, 5, 2, '2024-11-04'),
(4, 4, 1, '2024-11-05'),
(5, 3, 3, '2024-11-06');
GO

*/
--- END --------------------------------------------

---- 5. VIEW TABLES --------------------------------
/*
SELECT *
FROM Customers

SELECT *
FROM Orders

SELECT *
FROM Products
*/
--- END --------------------------------------------

---- 6. TASKS --------------------------------------
/*
--- Task 1
SELECT FirstName + ' ' + LastName AS [Full Name], Email, Country
FROM Customers;

--- Task 2
SELECT ProductName, Category, Price
FROM Products
ORDER BY Price DESC;

--- Task 3
SELECT * FROM Customers
WHERE Country IN ('Greece', 'Egypt', 'UK');

--- Task 4
SELECT ProductName, Price,
  CASE
    WHEN Price < 50 THEN 'Budget'
    WHEN Price BETWEEN 50 AND 300 THEN 'Mid-Range'
    ELSE 'Premium'
  END AS [Price Tier]
FROM Products;

--- Task 5
SELECT FirstName, Email, LEN(Email) AS [Email Length]
FROM Customers;

--- Task 6
SELECT TOP 3 ProductName, Price
FROM Products
ORDER BY Price DESC;

--- Task 7
SELECT *
FROM Orders
WHERE OrderDate < '2024-11-05';

--- Task 8
SELECT *
FROM Orders
WHERE Quantity > 2;

*/
--- END --------------------------------------------