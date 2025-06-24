-- 4. To calculate the Account tenure, Total transactions, Estimated CLV for each customer:


Select
u.customer_id,
u.first_name,
u.last_name,
TIMESTAMPDIFF(MONTH, u.signup_date, CURRENT_DATE) As tenure_months,
Count(s.transaction_date) As total_transaction,
Count(s.transaction_date) / TIMESTAMPDIFF(MONTH, u.signup_date, CURRENT_DATE) * 12 * (SUM(s.amount) * 0.001) As estimated_clv
FROM
users_customuser u
JOIN savings_savingsaccount s ON u.customer_id = s.owner_id
GROUP BY 
u.customer_id, u.first_name, u.last_name, u.signup_date
ORDER BY
estimated_clv DESC;