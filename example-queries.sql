-- SELECT statment
SELECT
  first_name,
  last_name
FROM
  customers;

-- Using LIMIT to restrict the number of results
SELECT
  name,
  category
FROM
  products
limit
  10;

-- Filtering with WHERE
SELECT
  name
FROM
  products
WHERE
  price < 100;

-- Filtering with WHERE
SELECT
  name
FROM
  products
WHERE
  price BETWEEN 50
  AND 500
  AND stock_quantity > 0;

-- Sorting with ORDER BY
SELECT
  first_name,
  last_name
FROM
  customers
ORDER BY
  last_name ASC;

-- Remove duplicate results with DISTINCT
SELECT
  DISTINCT category
FROM
  products;

-- Aliases for Readability
SELECT
  first_name AS "First",
  last_name AS "Last"
FROM
  customers;

-- INNER JOIN
SELECT
  o.id,
  c.first_name,
  o.total_amount
FROM
  orders o
  INNER JOIN customers c ON o.customer_id = c.id;

-- LEFT JOIN
SELECT
  c.first_name,
  o.id
FROM
  customers c
  LEFT JOIN orders o ON c.id = o.customer_id;

-- RIGHT JOIN
SELECT
  c.first_name,
  o.id
FROM
  customers c
  RIGHT JOIN orders o ON c.id = o.customer_id;

-- OUTER JOIN
SELECT
  c.first_name,
  o.id
FROM
  customers c full
  OUTER JOIN orders o ON c.id = o.customer_id;

-- JOIN multiple tables
SELECT
  o.id,
  p.name as product,
  oi.quantity
FROM
  order_items oi
  JOIN orders o ON o.id = oi.order_id
  JOIN products p ON p.id = oi.product_id;

-- Filtering joined data
SELECT
  c.first_name,
  p.name,
  oi.quantity
FROM
  customers c
  JOIN orders o ON o.customer_id = c.id
  JOIN order_items oi ON oi.order_id = o.id
  JOIN products p ON p.id = oi.product_id
WHERE
  p.category = 'Electronics';

-- INSERT INTO
INSERT INTO
  customer (first_name, last_name, email, phone, address)
VALUES
  (
    'Maria',
    'Lopez',
    'maria@example.com',
    '1234567890',
    '456 Pine St'
  );

-- UPDATE
UPDATE
  product
SET
  price = price * 0.9
WHERE
  category = 'Home Appliances';

-- DELETE
DELETE FROM
  product
WHERE
  name = 'Discontinued Item';

-- Transactions and Rollback
BEGIN;

UPDATE
  products
SET
  price = price * 0.9
WHERE
  category = 'Electronics';

DELETE FROM
  customers
WHERE
  email = 'test@example.com';

COMMIT;

-- ROLLBACK
ROLLBACK;

-- Count total customers
SELECT
  COUNT(*)
FROM
  customers;

-- Get the average product price
SELECT
  AVG(price)
FROM
  products;

-- Total value of all orders
SELECT
  SUM(total_amount)
FROM
  orders;

-- GROUP BY
SELECT
  category,
  COUNT(*) AS total_products
FROM
  products
GROUP BY
  category;

-- Total orders per customer
SELECT
  customer_id,
  COUNT(*) AS total_orders
FROM
  orders
GROUP BY
  customer_id;

-- Average stock by category
SELECT
  category,
  AVG(stock_quantity) AS avg_stock
FROM
  products
GROUP BY
  category;