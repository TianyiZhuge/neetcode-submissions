-- Write your query below
SELECT left_operand,operator,right_operand,
case 
    when operator = '>' and v1.value > v2.value  then 'true'
    when operator = '<' and v1.value < v2.value then 'true'
    when operator = '=' and v1.value = v2.value then 'true'
    else false
END AS value

from expressions e
join variables as v1 on e.left_operand = v1.name
join variables as v2 on e.right_operand = v2.name;