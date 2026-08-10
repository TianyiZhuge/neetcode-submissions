-- Write your query below
SELECT distinct on (user_id) user_id,  time_stamp as last_stamp
from logins
where time_stamp >= '2020-01-01' and time_stamp < '2021-01-01'
order by user_id,time_stamp desc;