CREATE TABLE IF NOT EXISTS drinks (
	drink_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE,
    price DECIMAL(5,2),
    size VARCHAR(10)
);

INSERT INTO drinks (name, price, size)
VALUES ('Cappuccino', 35.50, 'Medium');

INSERT INTO drinks (name, price, size)
VALUES ('Latte', 38.00, 'Large');

INSERT INTO drinks (name, price, size)
VALUES ('Espresso', 25.00, 'Small');

SELECT * FROM drinks;

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO customers (name, email)
VALUES ('John', 'john@email.com');

INSERT INTO customers (name, email)
VALUES ('Malcom', 'malcom@gmail.com');

CREATE TABLE IF NOT EXISTS orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    drink_id INT,
    quantity INT,
    order_date DATETIME,
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (drink_id) REFERENCES drinks(drink_id)
);

INSERT INTO orders (customer_id, drink_id, quantity, order_date)
VALUES (1, 1, 2, NOW());

INSERT INTO orders (customer_id, drink_id, quantity, order_date)
VALUES (2, 2, 1, NOW());

SELECT 
    *
FROM
    orders;

SELECT 
    customers.name AS customer_name,
    drinks.name AS drink_name,
    orders.quantity,
    orders.order_date
FROM
    orders
        JOIN
    customers ON orders.customer_id = customers.customer_id
        JOIN
    drinks ON orders.drink_id = drinks.drink_idcustomers;