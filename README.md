# sql-ecommerce-practice
A hands-on SQL practice project based on an e-commerce database, covering database and table creation, data insertion, filtering, sorting, date functions, calculations, and SQL JOIN operations. More advanced JOIN queries and SQL concepts will be added progressively.
# SQL E-Commerce Practice

A hands-on SQL practice project built around an **e-commerce database**. This repository contains SQL scripts for creating the database, designing relational tables, inserting sample data, performing basic queries, working with date functions, calculations, and practicing SQL `JOIN` operations.

This is an ongoing learning project. More advanced SQL queries and JOIN operations will be added as I continue learning.

## 📌 Project Overview

The database is named **`EcommerceDB`** and represents a simple e-commerce system.

The main tables are:

* `Customers` — stores customer information.
* `Categories` — stores product categories.
* `Products` — stores products and their prices.
* `Orders` — stores customer orders and order dates.
* `OrderItems` — stores products included in each order and their quantities.

The tables are connected using **Primary Keys** and **Foreign Keys**, which makes the database suitable for practicing relational SQL queries and JOINs.

## 🗂️ Database Structure

```text
Customers
    │
    │ CustomerID
    ▼
Orders
    │
    │ OrderID
    ▼
OrderItems
    │
    │ ProductID
    ▼
Products
    │
    │ CategoryID
    ▼
Categories
```

### Relationships

```text
Customers  1 ──────── N  Orders

Orders     1 ──────── N  OrderItems

Products   1 ──────── N  OrderItems

Categories 1 ──────── N  Products
```

## 📚 Topics Covered

### Database & Table Creation

* `CREATE DATABASE`
* `USE`
* `CREATE TABLE`
* Primary Keys
* Foreign Keys
* Constraints

### Data Insertion

* `INSERT INTO`
* Inserting multiple records
* Working with relational data

### Basic Queries

* `SELECT`
* `SELECT *`
* Selecting specific columns
* Column aliases using `AS`

### Filtering

* `WHERE`
* Filtering by values
* Filtering using date conditions
* `IN`
* `BETWEEN`
* `LIKE`

### Date Functions

The project currently includes practice with:

* `DAY()`
* `MONTH()`
* `YEAR()`
* `MONTHNAME()`
* `DAYNAME()`
* `DATEDIFF()`

Example:

```sql
SELECT 
    orderID,
    OrderDate,
    DAY(OrderDate) AS OrderDay
FROM orderDetails;
```

### Calculations

The project also contains calculated values such as:

```sql
amount = price * qty
```

and delivery duration:

```sql
DATEDIFF(DeliveryDate, OrderDate)
```

## 🔗 JOIN Operations

JOIN practice is currently being added progressively.

The project already includes examples of:

* `INNER JOIN`
* Joining two tables
* Joining multiple tables
* Using table aliases
* Joining tables through primary and foreign key relationships

Example:

```sql
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
```

This query combines **four tables** to display the customer, product, and quantity purchased.

More JOIN operations will be added later, including additional practice with different JOIN types and more complex multi-table queries.

## 🛠️ SQL Environment

This project is written using **MySQL-style SQL syntax**.

The queries can be practiced using tools such as:

* MySQL
* MySQL Workbench
* VS Code with a MySQL extension
* Other MySQL-compatible environments

## 📁 Planned Repository Structure

The repository will gradually be organized into separate SQL files:

```text
sql-ecommerce-practice/
│
├── 01_create_database.sql
├── 02_create_tables.sql
├── 03_insert_categories.sql
├── 04_insert_customers.sql
├── 05_insert_products.sql
├── 06_insert_orders.sql
├── 07_insert_order_items.sql
│
├── 08_basic_queries.sql
├── 09_date_functions.sql
├── 10_filtering.sql
├── 11_calculations.sql
│
├── 12_inner_join.sql
├── 13_left_join.sql
├── 14_right_join.sql
├── 15_full_join.sql
├── 16_multiple_table_joins.sql
│
└── README.md
```

> The file structure is being organized progressively as the project grows.

## 🎯 Purpose of This Repository

The main purpose of this repository is to **practice SQL through a realistic relational database** rather than learning individual commands in isolation.

The project is focused on understanding:

1. How relational databases are structured.
2. How tables are connected.
3. How primary and foreign keys work.
4. How to retrieve useful information from multiple tables.
5. How SQL functions can be used for analysis.
6. How JOIN operations work in real-world scenarios.
7. How SQL queries become more complex as multiple tables are combined.

## 🚀 Learning Progress

* [x] Database creation
* [x] Table creation
* [x] Primary and foreign keys
* [x] Sample data insertion
* [x] Basic `SELECT` queries
* [x] Date functions
* [x] Calculations
* [x] Basic `INNER JOIN`
* [x] Multiple-table `INNER JOIN`
* [ ] More `INNER JOIN` practice
* [ ] `LEFT JOIN`
* [ ] `RIGHT JOIN`
* [ ] `FULL OUTER JOIN` concepts
* [ ] Advanced multi-table JOINs
* [ ] Aggregation with JOINs
* [ ] `GROUP BY` with JOINs
* [ ] Subqueries
* [ ] Advanced SQL analysis

## 📈 Future Improvements

As I continue practicing SQL, this repository will be expanded with:

* More JOIN problems
* Complex multi-table queries
* Aggregate functions
* `GROUP BY` and `HAVING`
* Subqueries
* Conditional logic
* Advanced filtering
* SQL data analysis problems
* Real-world e-commerce analysis questions

## 👨‍💻 About

This repository is part of my ongoing journey of learning **SQL and Data Analysis** through hands-on practice.

The goal is not just to memorize SQL syntax, but to understand **why a query works, how tables are connected, and how SQL can be used to solve real data problems**.

---

⭐ This repository will continue to evolve as I learn and add more SQL concepts.
