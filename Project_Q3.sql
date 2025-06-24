-- 3. All active accounts with no transactions in the last year.

Select 
p.plan_id,
s.owner_id,
p.plan_type,
MAX(s.transaction_date) As last_transaction_date,
DATEDIFF(CURRENT_DATE, MAX(s.transaction_date)) As inactivity_days
FROM 
savings_savingsaccount s
JOIN 
plans_plan p ON s.plan_id = p.plan_id
GROUP BY 
p.plan_id, s.owner_id, p.plan_type
HAVING 
MAX(s.transaction_date) < DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
ORDER BY
inactivity_days DESC;