-- Write your query below
SELECT distinct c.title 
from content c
RIGHT join tv_program tv on c.content_id = tv.content_id
where tv.program_date >= '2020-06-01' and tv.program_date < '2020-07-01' and c.kids_content = 'Y' AND c.content_type = 'Movies';