CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(75)
);
CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC(8, 2)
);
CREATE TABLE cart(
    cart_id SERIAL PRIMARY KEY,
    quantity INT,
    user_id INT NOT NULL REFERENCES users(user_id),
    product_id INT NOT NULL REFERENCES products(product_id)
);

INSERT INTO users (first_name, last_name, email)
VALUES ('Clint', 'Edwards', 'cedwards1080@gmail.com'),
('Michi', 'Devall', 'michi@gamil.com'),
('Jeddy', 'Mentor', 'jeddy@gmail.com')

INSERT INTO products (product_name, price)
VALUES ('pen', '22.98'), ('rpg', '200400'),
('phone', '560'), ('knife', '2.99'), ('Water bottle', '67.69');

INSERT INTO cart (user_id, product_id, quantity)
VALUES (2, 3, 1), (2, 2, 1), (1, 1, 4), (1, 4, 8), (3, 5, 1), (3, 4, 16);

SELECT *
FROM products
WHERE product_id IN (
    SELECT product_id
    FROM cart
    WHERE user_id IN (
        SELECT user_id
        FROM users
        WHERE user_id = 1
    )
);

SELECT u.first_name, u.last_name, u.email, p.product_name
FROM products p
JOIN cart c ON p.product_id = c.product_id
JOIN users u ON c.user_id = u.user_id;

SELECT sum(quantity)
FROM cart
WHERE user_id = 1;

UPDATE cart
SET quantity = 3
WHERE user_id = 2 AND cart_id = 1;
