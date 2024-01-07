-- Problem 1:

SELECT email FROM customers ORDER BY email;

-- Problem 2:

SELECT id FROM orders WHERE customer_id = (
SELECT id FROM customers WHERE fname = 'Elizabeth' AND lname = 'Crocker'
);

-- Problem 3:

SELECT sum(order_total) FROM orders WHERE processed = false;

--Problem 4:

SELECT name, SUM(num_cupcakes) FROM cupcakes
LEFT JOIN orders ON cupcakes.id = orders.cupcake_id
GROUP BY cupcakes.name ORDER BY cupcakes.name;

--Problem 5: 

SELECT email, SUM(num_cupcakes) FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY email ORDER BY sum DESC;

--Problem 6:

SELECT fname, lname, email FROM orders
JOIN customers ON customers.id = orders.customer_id
JOIN cupcakes ON cupcakes.id = orders.cupcake_id
WHERE orders.cupcake_id = 5 AND orders.processed = TRUE
LIMIT 1;