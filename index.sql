-- PERSON TABLE AND COMMANDS

CREATE TABLE person ( person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Adam Paul', 20, 180, 'Salt Lake City', 'Dusk Purple' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Apaul Pdam', 21, 185, 'Lake Salt City', 'Porple' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Daul Aam', 22, 190, 'Slat Kale Yitc', 'Evening' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('AP', 23, 195, 'SLC', 'DP' );
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('PA', 24, 200, 'Radiant', 'Blood Red' );
SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;
SELECT * FROM person ORDER BY age DESC;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 AND age > 30;
SELECT * FROM person WHERE age != 27;
SELECT * FROM person WHERE favorite_color != 'red';
SELECT * FROM person WHERE favorite_color != 'red' OR 'blue';
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');

-- ORDERS TABLE AND COMMANDS

CREATE TABLE orders ( order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER);
INSERT INTO  orders (person_id, product_name, product_price, quantity) VALUES (0, 'McShizzle', 5, 1);
INSERT INTO  orders (person_id, product_name, product_price, quantity) VALUES (1, 'Fries', 6, 2);
SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

-- ARTIST TABLE COMMANDS

INSERT INTO artist (name) VALUES ('artist1')
INSERT INTO artist (name) VALUES ('artist2')
INSERT INTO artist (name) VALUES ('artist3')
SELECT * FROM artist ORDER BY name ASC LIMIT 10;
SELECT * FROM artist WHERE name LIKE 'Black%';
SELECT * FROM artist WHERE name LIKE '%Black%';

-- EMPLOYEE TABLE COMMANDS

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';
SELECT MIN(birth_date) FROM employee;
SELECT MAX(birth_date) FROM employee;
SELECT * FROM employee WHERE first_name = 'Nancy';
SELECT * FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

-- INVOICE TABLE COMMANDS

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE total < 5;
SELECT COUNT(*) FROM invoice WHERE billing_city IN ('CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;
SELECT SUM(total) FROM invoice;
