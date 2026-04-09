# ☕ Coffee Shop Database (MySQL)

## 📌 Overview

This project is a beginner-to-intermediate MySQL database designed to simulate a real-world coffee shop system.

It demonstrates how to structure relational databases using tables, primary keys, foreign keys, and JOIN queries.

---

## 🧱 Database Structure

The database consists of three main tables:

### 1. Drinks

Stores available beverages.

* drink_id (Primary Key)
* name
* price
* size

### 2. Customers

Stores customer information.

* customer_id (Primary Key)
* name
* email

### 3. Orders

Stores purchase records and links customers to drinks.

* order_id (Primary Key)
* customer_id (Foreign Key)
* drink_id (Foreign Key)
* quantity
* order_date

---

## 🔗 Relationships

* A customer can have many orders
* A drink can appear in many orders
* Orders act as a bridge between customers and drinks

---

## 💻 Example Query (JOIN)

```sql
SELECT 
    customers.name AS customer_name,
    drinks.name AS drink_name,
    orders.quantity,
    orders.order_date
FROM orders
JOIN customers 
    ON orders.customer_id = customers.customer_id
JOIN drinks 
    ON orders.drink_id = drinks.drink_id;
```

---

## 🚀 Features Demonstrated

* Database creation
* Table relationships (Foreign Keys)
* Data insertion
* Data retrieval using SELECT
* JOIN operations (multi-table queries)
* Basic data modeling

---

## 📊 Future Improvements

* Add categories (hot/cold drinks)
* Add staff table
* Implement order totals and receipts
* Add constraints to prevent duplicate data
* Build a front-end app to interact with the database

---

## 🧠 What I Learned

* How relational databases work
* How to design tables with relationships
* How to write SQL queries for real-world scenarios
* How to use MySQL Workbench
* How to use GitHub for version control

---

## ⚙️ How to Run

1. Open MySQL Workbench
2. Run the `coffee_shop-mysql` file
3. Insert sample data
4. Execute queries to explore the database

---

## 📌 Author
ALPHA
