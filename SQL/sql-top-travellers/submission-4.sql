-- Write your query below
SELECT name, coalesce(sum(r.distance),0) as travelled_distance
FROM users u
LEFT JOIN rides r on u.id = r.user_id 
group by u.name
order by travelled_distance desc, name asc;