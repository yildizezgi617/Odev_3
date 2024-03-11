SELECT * FROM products;

SELECT product_name, quantity_per_unit from products;
SELECT product_id, product_name FROM products WHERE Discontinued=0;
SELECT product_id, product_name, unit_price FROM products WHERE unit_price < 20;
SELECT product_id, product_name, unit_price FROM products WHERE unit_price BETWEEN 15 AND 25;
SELECT product_name, units_on_order, units_in_stock FROM products WHERE units_in_stock < Units_on_order;
SELECT * FROM products WHERE product_name LIKE 'a%';
SELECT * FROM products WHERE product_name LIKE '%i';
SELECT product_name, unit_price, unit_price * 1.18 AS Unit_Price_KDV FROM products;
SELECT COUNT(*) FROM products WHERE unit_price > 30;
SELECT LOWER(product_name), unit_price FROM products ORDER BY unit_price DESC;
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;
SELECT COUNT(*) FROM suppliers WHERE region IS NULL;
SELECT COUNT(*) FROM suppliers WHERE region IS NOT NULL;
SELECT CONCAT('TR ', UPPER(product_name)) AS product_name FROM products;
SELECT CONCAT('TR ', product_name) AS product_name FROM products WHERE unit_price < 20;
SELECT product_name, unit_price FROM products ORDER BY unit_price DESC LIMIT 1;
SELECT product_name, unit_price FROM products ORDER BY unit_price DESC LIMIT 10;
SELECT product_name, unit_price FROM products WHERE unit_price > (SELECT AVG(unit_price) FROM products);
SELECT SUM(od.quantity) AS total_sold FROM order_details od JOIN products p ON od.product_id = p.product_id JOIN orders o ON od.order_id = o.order_id WHERE p.units_in_stock > 0;
SELECT Discontinued, COUNT(*) FROM products GROUP BY Discontinued;
SELECT p.product_name, c.category_name FROM products p JOIN categories c ON p.category_id = c.category_id;
SELECT c.category_name, AVG(p.unit_price) AS AveragePrice FROM products p JOIN categories c ON p.category_id = c.category_id GROUP BY c.category_name;
SELECT p.product_name, p.unit_price, c.category_name FROM products p JOIN categories c ON p.category_id = c.category_id ORDER BY p.unit_price DESC LIMIT 1;
SELECT p.product_name, c.category_name, s.company_name FROM products p JOIN categories c ON p.category_id = c.category_id JOIN suppliers s ON p.supplier_id = s.supplier_id ORDER BY p.units_in_stock DESC LIMIT 1;











