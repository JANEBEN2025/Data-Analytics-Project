# Data-Analytics-Project
SQL project to cowrywise: This repository contains a collection of SQL queries designed to analyze and extract insights from financial data. The queries cover various aspects including: Customer analysis, account management, customer lifetime value, and transaction frequency analysis.

PROJECT_Q1
Retrieved customers with both savings and investment plans, along with their total deposits. By determining the required columns: owner ID, first name, last name, savings count, investment count, and total deposits.
Identified the tables required users_customer, savings_savingsaccount, and plans_plan. and then i used join to combine the tables. 
Used IF within SUM to conditionally count savings and investment plans.
Applied the WHERE clause to filter plans to only 'savings' and 'investment' types.
Applied the HAVING clause to filter customers with at least one savings and one investment plan.
Then sort the results in descending order by total deposits.
Note: IFNULL is used to replace NULL values with 0, ensuring that the total_deposits column always has a numeric value.

PROJECT_Q2
Using Common Table Expression (CTE) transaction_counts to calculate the number of transactions per customer per month.
- Group the transactions by owner_id, year, and month to get the transaction count for each customer-month combination.
Use another CTE average_transactions to calculate the average transactions per customer per month.
- Group the transaction counts by owner_id to get the average transaction count for each customer.
Using a CASE statement to categorize customers based on their average transactions per month into "High Frequency", "Medium Frequency", and "Low Frequency".
Group the customers by frequency category and calculate the customer count and average transactions per month for each category.

PROJECT_Q3
Join the savings_savingsaccount and plans_plan tables based on plan_id.
Use MAX(s.transaction_date) to get the last transaction date for each account.
Use DATEDIFF(CURRENT_DATE, MAX(s.transaction_date)) to calculate the number of days since the last transaction.
Use the HAVING clause to filter accounts with no transactions in the last year.
Use DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR) to get the date one year ago.
Use ORDER BY to sort the accounts by inactivity days in descending order.

PROJECT_Q4

