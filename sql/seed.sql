-- Reference data --

INSERT INTO categories (name)
VALUES ('Mug'), ('Cup'), ('Bowl'), ('Jar'), ('Teapot Set');

INSERT INTO order_status (status)
VALUES ('Pending'), ('Sent'), ('Completed');


-- products data --

INSERT INTO products (name, category_id, description, stock_quantity, price)
VALUES ('White Mug', (SELECT id FROM categories WHERE name = 'Mug'), 'Regular size white mug', 6, 30.00);

INSERT INTO products (name, category_id, description, stock_quantity, price)
VALUES ('Raw Clay Mug', (SELECT id FROM categories WHERE name = 'Mug'), 'Regular size transparent glazed mug', 5, 30.00);

INSERT INTO products (name, category_id, description, stock_quantity, price)
VALUES ('Mountain Mug', (SELECT id FROM categories WHERE name = 'Mug'), 'Regular size mug with mountain artwork', 3, 40.00);

INSERT INTO products (name, category_id, description, stock_quantity, price)
VALUES ('Teapot Set', (SELECT id FROM categories WHERE name = 'Teapot Set'), 'Teapot with 2 small cups', 1, 100.00);

INSERT INTO products (name, category_id, description, stock_quantity, price)
VALUES ('Black Apple Jar', (SELECT id FROM categories WHERE name = 'Jar'), 'Small black apple jar', 2, 60.00);

INSERT INTO products (name, category_id, description, stock_quantity, price)
VALUES ('Red Apple Jar', (SELECT id FROM categories WHERE name = 'Jar'), 'Small red apple jar', 1, 60.00);

-- customer data --

INSERT INTO customers (first_name, last_name, email, address, city, country)
VALUES ('James', 'Johnson', 'jamesjohnson@mail.com', '2 Prebent Street', 'London', 'United Kingdom');

INSERT INTO customers (first_name, last_name, email, address, city, country)
VALUES ('Steph', 'Williams', 'stephwilliams@mail.com', 'Flat 34, Stone Square', 'London', 'United Kingdom');

INSERT INTO customers (first_name, last_name, email, address, city, country)
VALUES ('Aiden', 'Chan', 'aidenchan@mail.com', '86 Deem Street', 'London', 'United Kingdom');

-- orders data --

INSERT INTO orders (customer_id, order_date, total_amount, status_id)
VALUES ((SELECT id FROM customers WHERE email = 'jamesjohnson@mail.com'), '2025-10-10 13:30:02', 70.00, (SELECT id FROM order_status WHERE status = 'Pending'));

INSERT INTO orders (customer_id, order_date, total_amount, status_id)
VALUES ((SELECT id FROM customers WHERE email = 'stephwilliams@mail.com'), '2025-09-14 20:10:22', 60.00, (SELECT id FROM order_status WHERE status = 'Completed'));

INSERT INTO orders (customer_id, order_date, total_amount, status_id)
VALUES ((SELECT id FROM customers WHERE email = 'aidenchan@mail.com'), '2025-10-04 16:18:16', 100.00, (SELECT id FROM order_status WHERE status = 'Completed'));

-- order_items -- 
INSERT INTO order_items (order_id, product_id, quantity, total_amount)
VALUES ((SELECT id FROM orders WHERE order_date = '2025-10-10 13:30:02' AND customer_id = (SELECT id FROM customers WHERE email = 'jamesjohnson@mail.com')), (SELECT id FROM products WHERE name = 'Mountain Mug'), 1, 40.00);

INSERT INTO order_items (order_id, product_id, quantity, total_amount)
VALUES ((SELECT id FROM orders WHERE order_date = '2025-10-10 13:30:02' AND customer_id = (SELECT id FROM customers WHERE email = 'jamesjohnson@mail.com')), (SELECT id FROM products WHERE name = 'Raw Clay Mug'), 1, 30.00);

INSERT INTO order_items (order_id, product_id, quantity, total_amount)
VALUES ((SELECT id FROM orders WHERE order_date = '2025-09-14 20:10:22' AND customer_id = (SELECT id FROM customers WHERE email = 'stephwilliams@mail.com')), (SELECT id FROM products WHERE name = 'Red Apple Jar'), 1, 60.00);

INSERT INTO order_items (order_id, product_id, quantity, total_amount)
VALUES ((SELECT id FROM orders WHERE order_date = '2025-10-04 16:18:16' AND customer_id = (SELECT id FROM customers WHERE email = 'aidenchan@mail.com')), (SELECT id FROM products WHERE name = 'Teapot Set'), 1, 100.00);