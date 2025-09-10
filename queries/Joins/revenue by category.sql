--Revenue by Category 
SELECT
c.category_id,
c.category_name,
COUNT(DISTINCT p.product_id)  AS products_in_category,
SUM(od.quantity) AS units_sold,
COUNT(DISTINCT od.order_id)  AS num_orders,
round(SUM(od.unit_price * od.quantity * (1 - COALESCE(od.discount, 0)))::numeric, 2) AS total_revenue
FROM categories c
JOIN products p      ON p.category_id = c.category_id
JOIN order_details od ON od.product_id = p.product_id
GROUP BY c.category_id, c.category_name
ORDER BY total_revenue DESC;
