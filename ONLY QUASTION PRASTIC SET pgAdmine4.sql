                          
				                     -------------------
				                     -- BASIC QUASTION--
									 -------------------
									 
Q01:-- Create a table named "Employees" with columns for ID, Name, Age, and Salary.
Q02:-- Add a new column "Department" to the "Employees" table.
Q03:-- Change the data type of the "Salary" column to INTEGER.
Q04:-- Remove the "Department" column from the "Employees" table.
Q05:-- Add a unique constraint to the "Name" column to ensure no duplicate names.
Q06:-- Create a new table "Departments" and link it to "Employees" using a foreign key.
Q07:-- Delete the "Departments" table permanently.
Q08:-- Truncate a Table
Q09:-- Create an Index
Q10:-- Remove the index "idx_Name" from the "Employees" table.
Q11:-- Rename the "Employees" table to "Staff".
Q12:-- Set a default value of 0 for the "Salary" column.
Q13:-- Remove the unique constraint "UC_Name" from the "Employees" table.
Q14:-- Create a new schema named "HR".
Q15:-- Move the "Employees" table to the "HR" schema.
Q18:-- Retrieve a list of unique departments
Q19:-- Get all the categories in Uppercase
Q20:-- Get all the categories in Lowercase
Q21:-- Join Product_name adn category text with hypen.
Q22:-- Extract the first 5 characters from product_name
Q23:-- Count length
Q24:-- Remove leading and trailing spaces from string
Q25:-- Replace the word "phone" with "device" in product names
Q26:-- Get the first 3 characters from category
Q27:-- NOW() – Get Current Date and Time
Q28:-- CURRENT_DATE() – Get Current Date
Q29:-- EXTRACT() – Extract Parts of a Date  -- Extract the year, month, and day from the added_date column.
Q30:-- AGE() – Calculate Age Between Dates -- Calculate the time difference between added_date and today’s date.
Q31:-- TO_CHAR() – Format Dates as Strings  -- Format added_date in a custom format (DD-Mon-YYYY).
Q32:-- DATE_PART() – Get Specific Date Part -- Extract the day of the week from added_date.
Q33:-- DATE_TRUNC() – Truncate Date to Precision  -- Truncate added_date to the start of the month.
Q34:-- INTERVAL – Add or Subtract Time Intervals  -- Add 6 months to the added_date.
Q35:-- CURRENT_TIME() – Get Current Time  --Retrieve only the current time.
Q36:-- TO_DATE() – Convert String to Date  -- Convert a string to a date format.

					                     ------------------------
					                     --INTERMEDIT QUASTION--
										 ------------------------
Q01:-- Retrieve all employees’ first_name and their departments.
Q02:-- Update the salary of all employees in the 'IT' department by increasing it by 10%.
Q03:-- Delete all employees who are older than 34 years.
Q04:-- Add a new column `email` to the `employees` table.
Q05:-- Rename the `department` column to `dept_name`.
Q06:-- Retrieve the names of employees who joined after January 1, 2019.
Q07:-- Change the data type of the `salary` column to `INTEGER`.
Q08:-- List all employees with their age and salary in descending order of salary.
Q09:-- Insert a new employee with the following details:
Q10:-- Update age of employee +1 to every employee 
Q11:-- import CSV File DIRECT MODE
Q12:-- Retrieve employees whose salary is between 40,000 and 60,000. - Use BETWEEN Operators
Q13 -- Find employees whose email addresses end with gmail.com - Use LIKE Operators
Q14:-- Retrieve employees who belong to either the 'Finance' or 'Marketing' departments-- Use IN Operator
Q15:-- Find employees where the email column is NULL ( if applicable).
Q16:-- List employees sorted by salary in DESCENDING order.
Q17:-- Retrieve the top 5 highest-paid employees.
Q18:-- Return 20 records, starting from the 41th record: USING OFFSET LIMIT
Q19:-- The MIN() function returns the smallest value of the selected column. USING MIN
Q20:-- Return the highest price in the products table: USING MAX
Q21:-- Return the number of customers from the customers table:  USING COUMT
Q22:-- Return the number of customers from London: USING COUNT
Q23:-- Return the total amount of ordered items: USING SUM 
Q24:-- Return the average price of all the products in the products table: USING AVG
Q25:-- Return the average price of all the products, rounded to 2 decimals: USING AVG
Q26:-- Retrieve the second highest salary from the employees table.
Q27:-- Retrieve the employee details who have worked in both 'IT' and 'HR' departments.
Q28:-- List all employees who do not have a manager (i.e., have NULL in manager_id column).
Q29:-- Find employees whose salary is in the top 10% of the salaries.
Q30:-- List the department and its average salary, only for departments with more than 5 employees.
Q31:-- Retrieve employees who have been in the company for more than 5 years.
Q32:-- List the departments that do not have any employees.
Q33:-- Retrieve employees with the highest salary in each department.
Q34:-- Retrieve all employees whose names start with the letter "J" or "S".
Q35:-- List all employees who have a salary greater than the average salary of their department.
	
		                     ------------------------
		                       --ADVANCE QUASTION--
							 ------------------------
Q01:-- "Find all employees who have the same name appearing more than once in the table."
Q02:-- "Retrieve the column names and their data types along with numeric precision and scale for the employee table."
Q03:-- Return all customers with a name that starts with the letter 'A': USING LIKE 'A%'
Q04:-- Return all customers with a name that contains the letter 'A': USING LIKE '%A%'
Q05:-- Return all customers with a name that ends with the phrase 'en': USING LIKE '%en'
Q06:-- Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters: USING LIKE
Q07:-- Return all customers from 'Germany', France' or 'UK': USING IN 
Q08:-- Return all customers that are NOT from 'Germany', France' or 'UK': USING NOT IN
Q09:-- Return all customers that have an order in the orders table: USING IN(SELECT)
Q10:-- Return all customers that have NOT placed any orders in the orders table: USING NOT IN (SELECT)
Q11:-- Select all products with a price between 10 and 15: USING BETWEEN 
Q12:-- Select all products between 'Pavlova' and 'Tofu':
Q13:-- Same example as above, but we sort it by product_name:
Q14:-- Select all orders between 12. of April 2023 and 5. of May 2023:
Q15:-- Using aliases for columns: USING AS 
Q16:-- Return Same result without AS:
Q17:-- Concatenate two fields and call them product:
Q18:-- return Concatenate, with space
Q19:-- Surround your alias with double quotes:
Q20:-- Join products to categories using the category_id column: USING JOINS
Q21:-- Join testproducts to categories using the category_id column: USING INNER JOINS
Q22:-- Join testproducts to categories using the category_id column: USING LEFT JOINS
Q23:-- Join testproducts to categories using the category_id column:USING RIGHT JOINS
Q24:-- Join testproducts to categories using the category_id column: USING FULL JOINS
Q25:-- Join testproducts to categories using the CROSS JOIN keyword: USING CROSS JOINS
Q26:-- Combine products and testproducts using the UNION operator: USING UINON
Q27:-- Combine products and testproducts using the UNION ALL operator: USING UINON ALL
Q28:-- Lists the number of customers in each country: USING GROUP BY 
Q29:-- The following SQL statement lists the number of orders made by each customer: USING GROUP BY With JOIN
Q30:-- List only countries that are represented more than 5 times: USING HAVING 
Q31:-- More HAVING Examples The following SQL statement lists only orders with a total price of 400$ or more:
Q32:-- Lists customers that have ordered for 1000$ or more:
Q33:-- Return all customers that is represented in the orders table: USING EXISTS
Q34:-- Return all customers that is NOT represented in the orders table:
Q35:-- List products that have ANY records in the order_details table with a quantity larger than 120: USING ANY FUNCTION 
Q35:-- List the products if ALL the records in the order_details with quantity larger than 10.
    -- Note: This will of course return FALSE because the quantity column has many different values (not only the value of 10):
Q36:-- Return specific values if the price meets a specific condition:
Q37:-- Same example, but with an alias for the case column::
Q38:-- Top 3 highest salary wale employees ka naam aur salary dikhaiye (Subquery or LIMIT use karke)
Q39:-- Har employee ke saath uski rank bhi dikhaiye salary ke hisaab se (Window Function)
Q40:-- CTE use karke un employees ko dikhaiye jinki salary average salary se zyada hai
Q41:-- Har department me highest salary wala employee ka naam aur salary dikhaiye (Window Function - PARTITION)
Q42:-- Email id ka domain (jaise gmail.com, ritksy.com) extract karke dikhaiye (String function practice)
Q43:-- Jo employees abhi bhi active hain aur 500 se zyada din se kaam kar rahe hain unki list banaiye
Q44:-- Har hire_type ke andar average salary kya hai?
Q45:-- Har state me total employees aur unka total salary kitna hai?
Q46:-- Jo employee company me sabse purana hai (sabse pehle join hua hai), uska naam aur hire date dikhaiye
Q47:-- Finde total date of workr how meany day employee work in your company hire_date to current-date
Q48:-- Enable UUID Extension (only once)
Q49:-- Create users table with UUID-based unique_id
Q50:-- Insert demo users
Q51:-- Select users where unique_id starts with 'A'
Q52:-- Convert string to integer and add 2
Q53:-- Convert timestamp to only date
Q54:-- Employees table sample query (assuming salary is stored as TEXT)
Q55:-- Get current date, time, and full timestamp
Q56:-- Pagination: return 20 records from 41st record
Q57:-- 10. Grouping (Sample - department wise employee count)
Q58:-- CASE Statement: Check if user is adult or minor
Q59:-- Create promo_codes table with random 6-char codes
Q60:-- Insert sample promo codes
Q61:-- Math operations