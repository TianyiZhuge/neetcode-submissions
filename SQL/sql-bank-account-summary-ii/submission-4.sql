-- Write your query below
SELECT name, sum(t.amount) as balance
from users u
JOIN transactions t on u.account = t.account
group by u.account
having sum(t.amount) > 10000;