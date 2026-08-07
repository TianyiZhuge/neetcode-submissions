-- Write your query below
SELECT s.name
FROM sales_person s
WHERE s.sales_id not in(
    SELECT o.sales_id
    FROM orders o
    join company c on o.com_id = c.com_id
    where c.name = 'CRIMSON'
);
