--List all orders with order date, customer name, and sales rep (employee name) who handled the order

select order_id,order_date,contact_name as customer,concat(e1.last_name,' ',e1.first_name) as salesrep from orders o1 
join customers c1 on o1.customer_id=c1.customer_id
join employees e1 on e1.employee_id=o1.employee_id
order by order_date desc
