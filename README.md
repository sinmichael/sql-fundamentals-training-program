# 🛒 SQL Training – E-Commerce Database (PostgreSQL)

Welcome to the companion repository for the **SQL Fundamentals Training Program**. This repo contains the schema, sample data, and query examples used throughout the hands-on sessions.

## 📁 Files Included

| File Name                  | Description |
|---------------------------|-------------|
| `create-tables.sql`       | SQL scripts to create the main e-commerce tables: `customers`, `products`, `orders`, `order_items`. |
| `ecommerce-sample-data.sql` | Inserts ~100 sample records into each table with realistic data using [Faker](https://faker.readthedocs.io/). |
| `example-queries.sql`      | A collection of example queries covering filtering, JOINs, INSERT, UPDATE, DELETE, aggregation, and more. |

## 🧱 Database Structure

This project simulates a simplified e-commerce platform. The following entities are included:

- **Customers** – People who place orders
- **Products** – Items for sale
- **Orders** – Purchase records made by customers
- **Order Items** – Items attached to each order (many-to-many bridge)

## 🛠️ Getting Started

### 1. Create the database (PostgreSQL)

```bash
createdb ecommerce_training
```

### 2. Connect and run the setup

```sql
-- Inside psql
\c ecommerce_training
\i create-tables.sql
\i ecommerce-sample-data.sql
```

## 🧪 Run Example Queries

You can explore the database using:

```sql
\i select-queries.sql
```

This includes practical queries:
- Filtering products and customers
- Insertion, updating and deletion of records
- Aggregating sales data
- Using JOINs to connect related tables
- Common real-world reporting queries

## 📚 Related Training

This repository supports the **SQL Fundamentals Training Program** for junior developers.  
It is aligned with real-life use cases from a typical e-commerce platform.

## 📝 License

This project is provided for educational and non-commercial use.

---

Enjoy learning SQL! 🎓