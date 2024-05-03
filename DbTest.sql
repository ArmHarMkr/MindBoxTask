CREATE DATABASE ProductsDB;

USE ProductsDB;

CREATE TABLE Products (
    ProductId INT PRIMARY KEY,
    Name NVARCHAR(100)
);

CREATE TABLE Categories (
    CategoryId INT PRIMARY KEY,
    Name NVARCHAR(100)
);

CREATE TABLE ProductCategory (
    ProductId INT,
    CategoryId INT,
    PRIMARY KEY (ProductId, CategoryId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);

INSERT INTO Products (ProductId, Name) VALUES (1, 'Product A'), (2, 'Product B'), (3, 'Product C');
INSERT INTO Categories (CategoryId, Name) VALUES (1, 'Category X'), (2, 'Category Y'), (3, 'Category Z');
INSERT INTO ProductCategory (ProductId, CategoryId) VALUES (1, 1), (2, 2), (3, 2), (3, 3);

SELECT 
    p.Name AS ProductName,
    ISNULL(c.Name, 'No Category') AS CategoryName
FROM 
    Products p
LEFT JOIN 
    ProductCategory pc ON p.ProductId = pc.ProductId
LEFT JOIN 
    Categories c ON pc.CategoryId = c.CategoryId;
