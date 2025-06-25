# 📊 Task 2: Data Insertion and Handling Nulls – SQL Project

## 🔍 Objective

This task focuses on strengthening core SQL skills through practical database operations:
- *Inserting real-world data*
- *Handling missing values (NULLs)*
- *Updating incomplete entries*
- *Deleting invalid or redundant records safely*

By the end of this task, the database will be populated with clean, consistent, and relationally valid data.

---

## 🧰 Tools Used

- *Primary Tool*: MySQL Workbench
- *Alternate Options*: DB Fiddle, SQLiteStudio, phpMyAdmin

> ✅ The SQL script is compatible with *MySQL Safe Update Mode*, ensuring safety during update/delete operations.

---

## 📁 Deliverables

- ✅ task2_data_insertion_and_null_handling.sql: Executable SQL script containing:
  - Database creation
  - Table schema
  - Insert, update, and delete commands
- ✅ README.md (this file)

---

## 🧠 Mini Guide

| Task        | Command Used     | Description |
|-------------|------------------|-------------|
| Data Insertion | INSERT INTO   | Add sample rows with realistic details and some intentional NULLs |
| Handle Missing Data | UPDATE ... WHERE ... IS NULL | Clean up records with missing values by filling in correct data |
| Remove Redundant Data | DELETE FROM ... WHERE ... | Delete records that are still incomplete or logically invalid |

---

## 📦 Domain: E-commerce Platform

The data models a simplified online shopping system with key business entities and their relationships.

### 🧱 Schema Structure

#### 1. Customers
- Stores customer information  
- Fields: customer_id, name, email, phone, address

#### 2. Products
- List of items available for sale  
- Fields: product_id, name, description, price, stock_quantity

#### 3. Orders
- Represents a transaction placed by a customer  
- Fields: order_id, customer_id, order_date, total_amount

#### 4. Order_Items
- Details of products included in each order  
- Fields: order_item_id, order_id, product_id, quantity, price_at_purchase

#### 5. Payments
- Payment details for each order  
- Fields: payment_id, order_id, payment_date, amount_paid, payment_method

---

## 🔗 Entity Relationships (ER Summary)

- Customers (1) → (∞) Orders
- Orders (1) → (∞) Order_Items
- Products (1) → (∞) Order_Items
- Orders (1) → (1) Payments

Foreign key constraints maintain referential integrity.

---

## 🧪 Test Data & NULL Handling

### 🔸 Inserted Sample Data Includes:
- Customers with missing email or phone
- Products with missing description
- Orders with missing total amount
- Payments with missing amount/method

### 🔸 Updates Performed:
- Filled missing phone or email using realistic values
- Updated total_amount and description for clarity
- Ensured payment records are complete

### 🔸 Deletions:
- Removed:
  - Orders with NULL total
  - Customers with NULL email
  - Out-of-stock products (stock_quantity = 0)

All DELETE operations are *safe-mode compatible* — using WHERE with primary keys.

---

## ✅ Final Outcome

- Fully structured and normalized database schema
- All NULL values either corrected or safely removed
- Consistent data ready for future use (e.g., reporting, analytics, frontend apps)
- Clean database state with *referential integrity maintained*

---

## 📌 Best Practices Followed

- Primary keys on every table
- Foreign key constraints defined
- Use of AUTO_INCREMENT for identifiers
- Use of IF EXISTS/IF NOT EXISTS for idempotent execution
- Safe UPDATE and DELETE using WHERE with indexed columns

---

## 📂 File Structure (if submitting on GitHub or as a project folder)





