-- 1. To find customers with at least one funded savings plan AND one funded investment plan, sorted by total deposits.

Select 
u.id,
u.first_name,
u.last_name,
SUM(CASE WHEN p.plan_type_id = 'savings' THEN 1 ELSE 0 END) As savings_count,
SUM(CASE WHEN p.plan_type_id = 'investment' THEN 1 ELSE 0 END) As investment_count,
COALESCE(SUM(s.new_balance), 0) As total_deposits
FROM
users_customuser u
LEFT JOIN savings_savingsaccount s ON u.id = s.owner_id
LEFT JOIN plans_plan p ON s.owner_id = p.owner_id
WHERE
p.plan_type_id IN ('savings', 'investment' >= 1)
GROUP BY
u.id, u.first_name, u.last_name
HAVING
SUM(CASE WHEN p.plan_type_id = 'savings' THEN 1 ELSE 0 END) >= 1
AND SUM(CASE WHEN p.plan_type_id = 'investment' THEN 1 ELSE 0 END) >= 1
ORDER BY 
total_deposits DESC;


-- Comment: The query returned 0 row(s)