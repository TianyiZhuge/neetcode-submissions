-- Write your query below
SELECT ROUND(100.0*sum (case when( order_date = customer_pref_delivery_date) then 1 else 0 END)/count(*),2) as immediate_percentage
from delivery;