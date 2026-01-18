--daily_sales
CREATE OR REPLACE VIEW daily_sales_view AS
SELECT
    order_date,
    SUM(total_price) AS total_sales,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY order_date;

SELECT * FROM daily_sales_view LIMIT 5;

--monthly_sales
CREATE OR REPLACE VIEW monthly_sales_view AS
SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(total_price) AS total_sales,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY month;

SELECT * FROM monthly_sales_view;

--region_sales
CREATE OR REPLACE VIEW region_sales_view AS
SELECT
    region,
    SUM(total_price) AS total_sales,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT customer_id) AS total_customers
FROM sales
GROUP BY region;

SELECT * FROM region_sales_view;

--customer_type
CREATE OR REPLACE VIEW customer_type_sales_view AS
SELECT
    customer_type,
    SUM(total_price) AS total_sales,
    AVG(discount) AS avg_discount,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY customer_type;

SELECT * FROM customer_type_sales_view;

--product_sales
CREATE OR REPLACE VIEW product_sales_view AS
SELECT
    product,
    category,
    SUM(quantity) AS total_quantity,
    SUM(total_price) AS total_sales
FROM sales
GROUP BY product, category;

SELECT * FROM product_sales_view;
