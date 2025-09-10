--customers_without_orders
select c1.customer_id, c1.company_name, c1.contact_name as CustomerName from customers c1 left join orders o1 on c1.customer_id=o1.customer_id
where o1.order_id is null 
order by c1.company_name;
