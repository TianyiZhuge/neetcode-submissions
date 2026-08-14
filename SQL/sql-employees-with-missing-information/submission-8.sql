-- Write your query below
SELECT employee_id 
from employees e
WHERE employee_id not in (
    SELECT e.employee_id 
    from employees e
    join salaries s on e.employee_id = s.employee_id)
UNION ALL
SELECT employee_id 
from salaries
WHERE employee_id not in (
    SELECT e.employee_id 
    from employees e
    join salaries s on e.employee_id = s.employee_id)

order by employee_id;