-- Write your query below
SELECT   min(abs(p1.x-p2.x))   AS shortest
from point as p1
join point as p2 on p1 != p2;