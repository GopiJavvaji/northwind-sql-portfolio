--Top products by Revenue
select p1.product_id,p1.product_name, 
sum(o1.quantity) as units_sold,
ROUND(sum(o1.unit_price * o1.quantity * (1 - coalesce(o1.discount, 0)))::numeric,2) as total_revenue
from order_details o1 
join products p1 on p1.product_id=o1.product_id
group by p1.product_id, p1.product_name
order by total_revenue desc

