-- 1. To find customers with at least one funded savings plan AND one funded investment plan, sorted by total deposits.

Select 
u.owner_id,
U.first_name,
U.last_name,
SUM(IF(p.plan_type = 'savings', 1, 0)) As savings_count,
SUM(IF(p.plan_type = 'investment', 1, 0)) As investment_count,
IFNULL(SUM(s.balance), 0) As total_deposits
FROM
users_customuser u
JOIN savings_savingsaccount s ON u.owner_id = s.owner_id
JOIN plans_plan p ON s.owner_id = p.owner_id
WHERE
p.plan_type IN ('savings', 'investment')
GROUP BY
u.owner_id,
U.first_name,
U.last_name
HAVING
SUM(IF(p.plan_type = 'savings', 1, 0)) >= 1
AND SUM(IF(p.plan_type = 'investment', 1, 0)) >= 1
ORDER BY
total_deposits DESC;


Select * from users_customuser
Where first_name like 'D%';