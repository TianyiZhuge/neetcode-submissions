-- Write your query below
with june_table as (
    SELECT c.customer_id as june_id,c.name as june_name
    from orders o
    left join customers c on o.customer_id = c.customer_id
    left join product p on o.product_id = p.product_id
    where o.order_date >= '2020-06-01' and o.order_date < '2020-07-01' 
    group by c.customer_id,c.name
    having sum(o.quantity * p.price) >= 100),

    july_table as (
    SELECT c.customer_id as july_id,c.name as july_name
    from orders o
    left join customers c on o.customer_id = c.customer_id
    left join product p on o.product_id = p.product_id
    where o.order_date >= '2020-07-01' and o.order_date < '2020-08-01'
    group by c.customer_id,c.name
    having sum(o.quantity * p.price) >= 100)


SELECT customer_id,name
from customers
where customer_id in(
    select jut.june_id
    from june_table jut
    join july_table jlt on jut.june_name = jlt.july_name
);