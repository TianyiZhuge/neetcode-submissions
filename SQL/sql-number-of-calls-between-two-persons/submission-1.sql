-- Write your query below
with calls_clean as(
SELECT LEAST(from_id,to_id) as person1,greatest(from_id,to_id) as person2,duration
FROM calls
)

SELECT cc.person1,cc.person2,count(*) as call_count, sum(cc.duration) as total_duration
from calls_clean cc
group by person1,person2;