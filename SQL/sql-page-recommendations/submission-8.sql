-- Write your query below
with friend_id as (SELECT user1_id as friend
    from friendship
    where user2_id = 1
    union all
    select user2_id
    from friendship 
    where user1_id = 1
)


SELECT distinct page_id as recommended_page
from likes
join friend_id on user_id = friend_id.friend
where page_id not in (select page_id from likes where user_id = 1)
order by recommended_page asc;
 
