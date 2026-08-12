-- Write your query below
SELECT c1.seat_id as seat_id
from cinema as c1
LEFT join cinema as c2 on (c1.seat_id+1) = c2.seat_id
LEFT join cinema as c3 on c1.seat_id = c3.seat_id + 1
where (c1.free = c2.free and c1.free = 1) OR (c1.free = c3.free and c1.free = 1)
order by seat_id;