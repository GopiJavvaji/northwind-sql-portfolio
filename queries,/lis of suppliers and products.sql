--List of Suppliers and Products
select s1.contact_name as Supplier
,s1.company_name as CompanyName
,p1.product_name
from products p1 join suppliers s1 on 
p1.supplier_id=s1.supplier_id
order by s1.company_name, p1.product_name; 