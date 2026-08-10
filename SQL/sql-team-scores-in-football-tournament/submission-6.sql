-- Write your query below
with team_matches as (
    SELECT host_team as team_id,host_goals as goals_main, guest_goals as goals_against,
    case
        when host_goals > guest_goals then 3
        when host_goals = guest_goals then 1
        else 0
    END AS num_points
    from matches
    UNION ALL
    SELECT guest_team as team_id,guest_goals as goals_main, host_goals as goals_against,
        case
        when guest_goals > host_goals then 3
        when guest_goals = host_goals then 1
        else 0
    END AS num_points
    from matches)


select t.team_id, t.team_name,COALESCE(sum(num_points),0) as num_points
FROM team_matches tm
right join teams t on  t.team_id = tm.team_id
group by t.team_id,t.team_name
order by num_points desc,team_id;
