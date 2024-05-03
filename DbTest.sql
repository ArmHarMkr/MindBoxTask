CREATE DATABASE MyNewDbForTestInMindBox;

USE MyNewDbForTestInMindBox;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255)
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName NVARCHAR(255)
);

CREATE TABLE ProductCategories (
    ProductID INT,
    CategoryID INT,
    PRIMARY KEY (ProductID, CategoryID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


INSERT INTO Products (ProductID, ProductName) VALUES (1, 'Product A');
INSERT INTO Products (ProductID, ProductName) VALUES (2, 'Product B');
INSERT INTO Products (ProductID, ProductName) VALUES (3, 'Product C');

INSERT INTO Categories (CategoryID, CategoryName) VALUES (1, 'Category X');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (2, 'Category Y');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (3, 'Category Z');

INSERT INTO ProductCategories (ProductID, CategoryID) VALUES (1, 1);
INSERT INTO ProductCategories (ProductID, CategoryID) VALUES (2, 1);
INSERT INTO ProductCategories (ProductID, CategoryID) VALUES (2, 2);
INSERT INTO ProductCategories (ProductID, CategoryID) VALUES (3, 3);


SELECT 
    p.ProductName AS ProductName,
    ISNULL(c.CategoryName, 'No Category') AS CategoryName
FROM 
    Products p
LEFT JOIN 
    ProductCategories pc ON p.ProductID = pc.ProductID
LEFT JOIN 
    Categories c ON pc.CategoryID = c.CategoryID;
