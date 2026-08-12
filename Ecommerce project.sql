-- CREATE DATABASE EcommerceDB;
USE EcommerceDB;
/*
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    CategoryID INT,

    CONSTRAINT FK_Products_Categories
    FOREIGN KEY (CategoryID)
    REFERENCES Categories(CategoryID)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,

    CONSTRAINT FK_Orders_Customers
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,

    CONSTRAINT FK_OrderItems_Orders
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),

    CONSTRAINT FK_OrderItems_Products
    FOREIGN KEY (ProductID)
    REFERENCES Products(ProductID)
);

INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home Appliances'),
(4, 'Books'),
(5, 'Sports'),
(6, 'Beauty'),
(7, 'Groceries'),
(8, 'Furniture'),
(9, 'Toys'),
(10, 'Footwear'),
(11, 'Mobile Accessories'),
(12, 'Kitchen'),
(13, 'Stationery'),
(14, 'Gaming'),
(15, 'Health'),
(16, 'Laptops'),
(17, 'Cameras'),
(18, 'Jewellery'),
(19, 'Travel'),
(20, 'Automotive'),
(21, 'Pet Supplies'),
(22, 'Office Supplies'),
(23, 'Music'),
(24, 'Garden'),
(25, 'Baby Products'),
(26, 'Smart Home'),
(27, 'Fitness'),
(28, 'Watches'),
(29, 'Bags'),
(30, 'Personal Care');

INSERT INTO Customers (CustomerID, CustomerName, Email, City) VALUES
(1, 'Aarav Sharma', 'aarav.sharma@gmail.com', 'Mumbai'),
(2, 'Priya Patil', 'priya.patil@gmail.com', 'Pune'),
(3, 'Rahul Deshmukh', 'rahul.deshmukh@gmail.com', 'Nashik'),
(4, 'Sneha Joshi', 'sneha.joshi@gmail.com', 'Nagpur'),
(5, 'Aditya Kulkarni', 'aditya.kulkarni@gmail.com', 'Kolhapur'),
(6, 'Ananya Shah', 'ananya.shah@gmail.com', 'Surat'),
(7, 'Rohan Mehta', 'rohan.mehta@gmail.com', 'Ahmedabad'),
(8, 'Neha Verma', 'neha.verma@gmail.com', 'Delhi'),
(9, 'Vikram Singh', 'vikram.singh@gmail.com', 'Jaipur'),
(10, 'Kavya Nair', 'kavya.nair@gmail.com', 'Kochi'),
(11, 'Arjun Rao', 'arjun.rao@gmail.com', 'Bengaluru'),
(12, 'Isha Gupta', 'isha.gupta@gmail.com', 'Lucknow'),
(13, 'Manish Yadav', 'manish.yadav@gmail.com', 'Indore'),
(14, 'Pooja Mishra', 'pooja.mishra@gmail.com', 'Bhopal'),
(15, 'Sahil Khan', 'sahil.khan@gmail.com', 'Hyderabad'),
(16, 'Meera Iyer', 'meera.iyer@gmail.com', 'Chennai'),
(17, 'Karan Malhotra', 'karan.malhotra@gmail.com', 'Chandigarh'),
(18, 'Simran Kaur', 'simran.kaur@gmail.com', 'Amritsar'),
(19, 'Nikhil Jain', 'nikhil.jain@gmail.com', 'Vadodara'),
(20, 'Riya Kapoor', 'riya.kapoor@gmail.com', 'Noida'),
(21, 'Amit Tiwari', 'amit.tiwari@gmail.com', 'Kanpur'),
(22, 'Tanvi Bhosale', 'tanvi.bhosale@gmail.com', 'Aurangabad'),
(23, 'Dev Patel', 'dev.patel@gmail.com', 'Rajkot'),
(24, 'Sakshi Pawar', 'sakshi.pawar@gmail.com', 'Satara'),
(25, 'Harsh Agarwal', 'harsh.agarwal@gmail.com', 'Delhi'),
(26, 'Mansi Desai', 'mansi.desai@gmail.com', 'Mumbai'),
(27, 'Yash Thakur', 'yash.thakur@gmail.com', 'Pune'),
(28, 'Aditi More', 'aditi.more@gmail.com', 'Nashik'),
(29, 'Varun Sethi', 'varun.sethi@gmail.com', 'Gurgaon'),
(30, 'Diya Reddy', 'diya.reddy@gmail.com', 'Hyderabad');

INSERT INTO Products (ProductID, ProductName, Price, CategoryID) VALUES
(1, 'Wireless Headphones', 2499.00, 1),
(2, 'Bluetooth Speaker', 1799.00, 1),
(3, 'Smart LED TV', 32999.00, 1),
(4, 'Cotton T-Shirt', 699.00, 2),
(5, 'Denim Jeans', 1499.00, 2),
(6, 'Mixer Grinder', 2899.00, 3),
(7, 'Air Conditioner', 38999.00, 3),
(8, 'The Alchemist', 399.00, 4),
(9, 'Atomic Habits', 599.00, 4),
(10, 'Cricket Bat', 2499.00, 5),
(11, 'Football', 899.00, 5),
(12, 'Face Wash', 349.00, 6),
(13, 'Shampoo', 499.00, 6),
(14, 'Organic Rice 5kg', 699.00, 7),
(15, 'Cooking Oil 5L', 799.00, 7),
(16, 'Office Chair', 6499.00, 8),
(17, 'Study Table', 7999.00, 8),
(18, 'Remote Control Car', 1299.00, 9),
(19, 'Building Blocks', 999.00, 9),
(20, 'Running Shoes', 2299.00, 10),
(21, 'Casual Sneakers', 1999.00, 10),
(22, 'Phone Case', 399.00, 11),
(23, 'USB-C Cable', 499.00, 11),
(24, 'Non-Stick Pan', 1299.00, 12),
(25, 'Notebook Pack', 299.00, 13),
(26, 'Gaming Mouse', 1499.00, 14),
(27, 'Digital Thermometer', 599.00, 15),
(28, 'Laptop Stand', 1199.00, 16),
(29, 'Digital Camera', 45999.00, 17),
(30, 'Smart Watch', 3499.00, 28);

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(1, 1, '2026-01-05'),
(2, 2, '2026-01-07'),
(3, 3, '2026-01-10'),
(4, 4, '2026-01-12'),
(5, 5, '2026-01-15'),
(6, 6, '2026-01-18'),
(7, 7, '2026-01-20'),
(8, 8, '2026-01-23'),
(9, 9, '2026-01-25'),
(10, 10, '2026-01-28'),
(11, 11, '2026-02-02'),
(12, 12, '2026-02-05'),
(13, 13, '2026-02-08'),
(14, 14, '2026-02-11'),
(15, 15, '2026-02-14'),
(16, 16, '2026-02-17'),
(17, 17, '2026-02-20'),
(18, 18, '2026-02-23'),
(19, 19, '2026-02-26'),
(20, 20, '2026-03-01'),
(21, 21, '2026-03-04'),
(22, 22, '2026-03-07'),
(23, 23, '2026-03-10'),
(24, 24, '2026-03-13'),
(25, 25, '2026-03-16'),
(26, 26, '2026-03-19'),
(27, 27, '2026-03-22'),
(28, 28, '2026-03-25'),
(29, 29, '2026-03-28'),
(30, 30, '2026-03-31');

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES
(1, 1, 1, 2),
(2, 2, 4, 3),
(3, 3, 8, 2),
(4, 4, 10, 1),
(5, 5, 6, 2),
(6, 6, 12, 3),
(7, 7, 20, 1),
(8, 8, 2, 2),
(9, 9, 5, 1),
(10, 10, 14, 4),
(11, 11, 3, 1),
(12, 12, 9, 2),
(13, 13, 16, 1),
(14, 14, 18, 2),
(15, 15, 22, 3),
(16, 16, 24, 1),
(17, 17, 26, 2),
(18, 18, 27, 1),
(19, 19, 30, 1),
(20, 20, 7, 1),
(21, 21, 11, 2),
(22, 22, 13, 3),
(23, 23, 15, 2),
(24, 24, 17, 1),
(25, 25, 19, 2),
(26, 26, 21, 1),
(27, 27, 23, 4),
(28, 28, 25, 5),
(29, 29, 28, 1),
(30, 30, 29, 1);
*/

/*
CREATE TABLE orderDetails
 (orderID INT PRIMARY KEY,
 cust_name VARCHAR(50),
 product_name VARCHAR(50),
 price DECIMAL(10,2),
 qty INT,
 OrderDate DATE,
 DeliveryDate DATE,
 amount DECIMAL(10,2)GENERATED ALWAYS AS (price * qty) STORED ); 
 
 INSERT INTO orderDetails (orderID, cust_name, product_name, price, qty, OrderDate, DeliveryDate)
 VALUES (1, 'Amit Sharma', 'Keyboard', 550.00, 2, '2026-01-05', '2026-01-08'),
 (2, 'Sara Khan', 'Mouse', 350.00, 4, '2026-01-07', '2026-01-12'),
 (3, 'Rahul Patil', 'Monitor', 8500.00, 1, '2026-01-10', '2026-01-16'),
 (4, 'Ayesha Shaikh', 'Laptop', 55000.00, 1, '2026-01-12', '2026-01-17'),
 (5, 'John Dsouza', 'USB Cable', 180.00, 6, '2026-01-15', '2026-01-18'),
 (6, 'Neha Joshi', 'Webcam', 2200.00, 2, '2026-01-18', '2026-01-25'),
 (7, 'Arman Khan', 'Headphones', 1500.00, 3, '2026-01-20', '2026-01-24'),
 (8, 'Priya Verma', 'Printer', 12500.00, 1, '2026-01-23', '2026-01-30'),
 (9, 'Imran Sheikh', 'Pen Drive 32GB', 650.00, 5, '2026-01-25', '2026-01-29'),
 (10, 'Sneha More', 'SSD 500GB', 4200.00, 2, '2026-01-28', '2026-02-03'),
 (11, 'Rohan Deshmukh', 'External HDD 1TB', 5800.00, 1, '2026-02-01', '2026-02-05'),
 (12, 'Fatima Ansari', 'WiFi Router', 1800.00, 3, '2026-02-04', '2026-02-09'),
 (13, 'Vikas Pawar', 'Laptop Bag', 1200.00, 2, '2026-02-07', '2026-02-11'),
 (14, 'Zoya Khan', 'HDMI Cable', 450.00, 7, '2026-02-10', '2026-02-15'),
 (15, 'Sahil Shaikh', 'Bluetooth Speaker', 2800.00, 2, '2026-02-14', '2026-02-20'),
 (16, 'Pooja Kulkarni', 'Power Bank', 1600.00, 4, '2026-02-18', '2026-02-23'),
 (17, 'Adnan Qureshi', 'Mobile Stand', 250.00, 10, '2026-02-21', '2026-02-24'),
 (18, 'Kiran Jadhav', 'Graphics Tablet', 7200.00, 1, '2026-02-25', '2026-03-02'),
 (19, 'Sameer Khan', 'Mechanical Keyboard', 3200.00, 2, '2026-03-02', '2026-03-07'),
 (20, 'Riya Shah', 'Gaming Mouse', 1800.00, 3, '2026-03-05', '2026-03-10'),
 (21, 'Nadeem Shaikh', 'Projector', 28500.00, 1, '2026-03-10', '2026-03-17'),
 (22, 'Meena Patil', 'UPS', 4500.00, 2, '2026-03-14', '2026-03-19'),
 (23, 'Faizan Ahmed', 'Memory Card 128GB', 950.00, 5, '2026-03-18', '2026-03-23'),
 (24, 'Anjali Desai', 'Office Chair', 6500.00, 2, '2026-03-22', '2026-03-28'),
 (25, 'Yusuf Khan', 'Table Lamp', 750.00, 6, '2026-03-25', '2026-03-29');
 */
 /*
SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderItems;
select * from orderDetails

-- Exercise 1: Display all records. 
SELECT * FROM orderDetails; 

-- Exercise 2: Display orderID, OrderDate, and the day number.  
SELECT orderID, OrderDate, DAY(OrderDate) AS OrderDay FROM orderDetails; 

-- Exercise 3: Display cust_name, OrderDate, and month number. 
SELECT cust_name, OrderDate, MONTH(OrderDate) AS OrderMonth FROM orderDetails; 

-- Exercise 4: Display orderID, OrderDate, and year. 
SELECT orderID, OrderDate, YEAR(OrderDate) AS OrderYear FROM orderDetails; 

-- Exercise 5: Display cust_name, OrderDate, and month name. 
SELECT cust_name, OrderDate, MONTHNAME(OrderDate) AS MonthName FROM orderDetails;

-- Exercise 6: Display orderID, OrderDate, and day name. 
SELECT orderID, OrderDate, DAYNAME(OrderDate) AS DayName FROM orderDetails; 

-- Exercise 7: Calculate the number of days taken for delivery. 
SELECT orderID, cust_name, OrderDate, DeliveryDate,        
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays FROM orderDetails; 

-- Exercise 8: Create a complete date analysis report. 
SELECT     orderID,     cust_name,     OrderDate,     
DAY(OrderDate) AS OrderDay,     
MONTH(OrderDate) AS OrderMonth,     
MONTHNAME(OrderDate) AS MonthName,     
YEAR(OrderDate) AS OrderYear,     
DAYNAME(OrderDate) AS DayName,     
DeliveryDate,     
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays 
FROM orderDetails;

-- Exercise 9: Display customer, product, amount, order month, and delivery days. 
SELECT orderID,cust_name,product_name,amount,OrderDate,
MONTHNAME(OrderDate) AS MonthName,
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays 
FROM orderDetails;

-- Exercise 10: Find orders that took more than 5 days to deliver. 
SELECT orderID,cust_name,product_name,OrderDate,DeliveryDate,
DATEDIFF(DeliveryDate, OrderDate) AS DeliveryDays 
FROM orderDetails 
WHERE 
DATEDIFF(DeliveryDate, OrderDate) > 5; 

-- Exercise 11: Find all orders placed in January. 
SELECT * FROM orderDetails 
WHERE MONTH(OrderDate) = 1; 

-- Exercise 12: Find all orders placed in February. 
SELECT * FROM orderDetails 
WHERE MONTH(OrderDate) = 2; 

-- Exercise 13: Find all orders placed in March. 
SELECT * FROM orderDetails 
WHERE MONTH(OrderDate) = 3; 

-- Exercise 14: Find all orders placed in 2026. 
SELECT * FROM orderDetails 
WHERE YEAR(OrderDate) = 2026
*/

/*
-- Display the customer name along with their order ID
select c.CustomerName, o.OrderID
FROM Customers as c
INNER JOIN Orders as o
ON c.CustomerID = o.CustomerID;

-- Display the Order ID, Order Date, and Customer Name.
select o.OrderID, o.OrderDate, c.CustomerName
from Customers as c 
INNER JOIN Orders as o
ON c.CustomerID=o.OrderID;

-- Display the Product Name along with the Quantity Ordered
select p.ProductName,p.ProductID,o.Quantity
from Products as p 
Inner join Orderitems as o
on p.ProductID=o.ProductID;

-- Display the Product Name and its Category Name.
select p.ProductName, p.Price, c.CategoryID,c.CategoryName
from Products as p
inner join Categories as c 
on p.categoryID=c.CategoryID;
 
 -- Display the Customer Name, Product Name, and Quantity Purchase
 SELECT
    c.CustomerName,
    p.ProductName,
    oi.Quantity
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
INNER JOIN OrderItems AS oi
    ON o.OrderID = oi.OrderID
INNER JOIN Products AS p
    ON oi.ProductID = p.ProductID;
 */
 
SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderItems;
