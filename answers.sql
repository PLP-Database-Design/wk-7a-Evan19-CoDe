-- QUESTION 1.

-- To achieve 1NF, i created a new DB, and created a different table having different product details,
-- separating the products into individual rows ensuring each row represents a single product for an order.

CREATE DATABASE Normalisation;

USE Normalisation;

-- Create new Table with the 1NF format
CREATE TABLE ProductDetail_1NF (
OrderID INT,
CustomerName VARCHAR(100),
Products VARCHAR(100)
);

-- Insert the products in separate rows
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF VALUES (103, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (103, 'Emily Clark', 'Phone');

-- QUESTION 2.

-- Created a new orders table inorder to achieve the 2NF by removing the partial dependancy (CustomerName),
-- then I created a new table OrderItem table that ensures the non-key coumn depenmds on the primary key of the Orders table.   

-- Create orders table
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerNane VARCHAR(100)
);

INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

-- Create OrderItem table
CREATE TABLE OrderItem (
OrderID INT,
Product VARCHAR(100),
Quantity INT,
PRIMARY KEY (OrderID, Product),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderItem VALUES (101, 'Laptop', 2);
INSERT INTO OrderItem VALUES (101, 'Mouse', 1);
INSERT INTO OrderItem VALUES (102, 'Tablet', 3);
INSERT INTO OrderItem VALUES (102, 'Keyboard', 1);
INSERT INTO OrderItem VALUES (102, 'Mouse', 2);
INSERT INTO OrderItem VALUES (103, 'Phone', 1);




