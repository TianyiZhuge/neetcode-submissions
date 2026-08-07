-- Write your query below
select s.seller_name 
FROM seller s
LEFT JOIN orders o on s.seller_id = o.seller_id And sale_date between '2020-01-01'AND '2020-12-31'
WHERE o.seller_id IS NULL
order by seller_name;
