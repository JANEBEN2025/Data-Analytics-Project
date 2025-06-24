# Data-Analytics-Project
SQL project to cowrywise: This repository contains a collection of SQL queries designed to analyze and extract insights from financial data. The queries cover various aspects including: Customer analysis, account management, customer lifetime value, and transaction frequency analysis.

PROJECT_Q1
Step 1: I retrieve customers with both savings and investment plans, along with their total deposits. By determining the required columns: owner ID, first name, last name, savings count, investment count, and total deposits.

Step 2: I identify the tables required users_customer, savings_savingsaccount, and plans_plan. and then i used join to combine the tables. 

Step 3: I used IF within SUM to conditionally count savings and investment plans.

Step 4: I applied the WHERE clause to filter plans to only 'savings' and 'investment' types.

Step 5: I applied the HAVING clause to filter customers with at least one savings and one investment plan.

Then i sort the results in descending order by total deposits.




