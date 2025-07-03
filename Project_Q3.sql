-- 3. All active accounts with no transactions in the last year.

Select
p.plan_type_id,
p.owner_id,
'Savings' As type,
MAX(S.transaction_date) As last_transaction_date,
DATEDIFF(CURRENT_DATE, MAX(S.transaction_date)) As inactivity_days
FROM
plans_plan p
JOIN savings_savingsaccount s ON p.plan_type_id = s.plan_id
WHERE
p.plan_type_id IN ('Savings', 'Investments')
GROUP BY
p.plan_type_id, p.owner_id
HAVING
MAX(s.transaction_date) IS NULL OR MAX(s.transaction_date) < CURRENT_DATE - INTERVAL 365 DAY;

-- Comment: The query returned 0 row(s)