-- Total penjualan harian
SELECT
    order_date,
    SUM(total_price) AS total_sales
FROM sales
GROUP BY order_date
ORDER BY order_date;

-- Total penjualan bulanan
SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(total_price) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

-- B2B vs B2C
SELECT
    customer_type,
    SUM(total_price) AS total_sales
FROM sales
GROUP BY customer_type;

-- Penjualan per region
SELECT
    region,
    SUM(total_price) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

-- Top Produk
SELECT
    product,
    category,
    SUM(quantity) AS total_quantity,
    SUM(total_price) AS total_sales
FROM sales
GROUP BY product, category
ORDER BY total_sales DESC;