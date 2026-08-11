-- Write your query below
SELECT date_id,make_name,count(distinct lead_id) as unique_leads,count(distinct partner_id) as unique_partners
from daily_sales
group by date_id,make_name;