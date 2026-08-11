-- Write your query below
SELECT email
from person
group by email
having count(*) > 1;