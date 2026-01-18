-- check total rows
SELECT COUNT(*) FROM sales;

-- check sampel data
SELECT * FROM sales LIMIT 10;

-- check duplicates
SELECT order_id, product, COUNT(*)
FROM sales
GROUP BY order_id, product
HAVING COUNT(*) > 1;
