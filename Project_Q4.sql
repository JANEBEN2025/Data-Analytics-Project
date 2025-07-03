-- 4. To calculate the Account tenure, Total transactions, Estimated CLV for each customer:


Select
u.id,
u.first_name,
u.last_name,
TIMESTAMPDIFF(MONTH, u.date_joined, CURRENT_DATE) As tenure_months,
Count(s.transaction_date) As total_transaction,
Count(s.transaction_date) / TIMESTAMPDIFF(MONTH, u.date_joined, CURRENT_DATE) * 12 * (SUM(s.amount) * 0.001) As estimated_clv
FROM
users_customuser u
JOIN savings_savingsaccount s ON u.id = s.id
GROUP BY 
u.id, u.first_name, u.last_name, u.date_joined
ORDER BY
estimated_clv DESC;