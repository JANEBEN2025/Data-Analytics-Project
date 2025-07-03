# Data-Analytics-Project
SQL Capstone Project to cowrywise: This repository contains a collection of SQL queries designed to analyze and extract insights from financial data. The queries cover various aspects including: Customer analysis, account management, customer lifetime value, and transaction frequency analysis.

**PROJECT_Q1**
* Retrieved customers with both savings and investment plans, along with their total deposits. By determining the required columns: owner ID, first name, last name, savings count, investment count, and total deposits.
* Identified the tables required users_customer, savings_savingsaccount, and plans_plan. and then i used Left join to combine the tables. 
* Using SUM to conditionally count savings and investment plans.
* Applied the WHERE clause to filter plans to only 'savings' and 'investment' types.
* Applied the HAVING clause to filter customers with at least one savings and one investment plan.
* Then sort the results in descending order by total deposits.

The result returned 0(rows).


**PROJECT_Q2**
* Using Common Table Expression (CTE) transaction_counts to calculate the number of transactions per customer per month.
- Group the transactions by owner_id, year, and month to get the transaction count for each customer-month combination.
* Use another CTE average_transactions to calculate the average transactions per customer per month.
- Group the transaction counts by owner_id to get the average transaction count for each customer.
* Using a CASE statement to categorize customers based on their average transactions per month into "High Frequency", "Medium Frequency", and "Low Frequency".
* Group the customers by frequency category and calculate the customer count and average transactions per month for each category.

The result showed the different Average transactions per month of each customer and their frequency category.

**PROJECT_Q3**
* IdEntify accounts that are active and have a plan type of 'Savings' or 'Investments'.
* Join the savings_savingsaccount and plans_plan tables based on plan_id column.
* Using MAX(s.transaction_date) to calculate the last transaction date for each account.
* Calculate the Inactivity Days by using the DATEDIFF function to calculate the number of days since the last transaction date.
* Using the HAVING clause to filter accounts with no transactions in the last year.

The result returned 0(rows).

**PROJECT_Q4**
* Using TIMESTAMPDIFF to calculate the difference in months between the current date and the customer's signup date(Date_Joined).
* Using COUNT to count the number of transactions for each customer.
* Join the users_customuser and savings_savingsaccount tables based on owner_id.
* Group the results by customer ID, name, and signup date(Date_Joined).
* Use ORDER BY to sort the results by estimated CLV in descending order.

The result showed the ID, Name, Tenure_Month for each customer, the total transactions and the estimated clv.

**CHALLENGES**
At first i has issues passing the queries cause it was returning errors because i didn't execute the database that was given. When i executed the database i was able to pass in the queries successfully. though two (2) of the queries returned 0(rows).

