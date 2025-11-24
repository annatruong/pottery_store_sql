-- List all products where the stock quantity is below 2.

SELECT *
FROM products
WHERE stock_quantity < 2;

-- Calculate the total value of all products currently in stock split by category.

SELECT name, stock_quantity * price AS total_value
FROM products;

-- Show the total stock quantity split by category.

SELECT categories.name, SUM(products.stock_quantity) AS total_quantity
FROM categories
LEFT JOIN products
ON products.category_id = categories.id
GROUP BY categories.name;

-- Which customer has spent the most overall?

SELECT customers.first_name || ' ' || customers.last_name AS name, customers.email, SUM(orders.total_amount) AS total_spend
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.email
ORDER BY total_spend DESC
LIMIT 1;

-- What is the best-selling product category?

SELECT categories.name, COUNT(order_items.id) AS quantity_sold
FROM categories
JOIN products ON products.category_id = categories.id
LEFT JOIN order_items ON order_items.product_id = products.id
GROUP BY categories.name
ORDER BY quantity_sold DESC
LIMIT 1;


-- What is the total revenue generated?

SELECT SUM(total_amount)
FROM orders;