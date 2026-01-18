CREATE TABLE sales (
order_id VARCHAR(50),
customer_id VARCHAR(50),
customer_type VARCHAR(3) CHECK (customer_type IN ('B2B','B2C')),
product VARCHAR(100),
category VARCHAR(50),
unit_price NUMERIC(10,2),
quantity INT,
discount NUMERIC(12,2),
total_price NUMERIC(12,2),
region VARCHAR(50),
order_date DATE,
PRIMARY KEY (order_id, product)
);

