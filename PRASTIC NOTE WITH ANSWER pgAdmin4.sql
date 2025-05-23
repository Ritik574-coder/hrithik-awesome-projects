--ONLY PRASTIC QUSATION IS HERE 

				                     -------------------
				                     -- BASIC QUASTION--
									 -------------------
									-- THIS IS QUASTION IS GIVEN BY w3resource  This resource offers a total of 
									--75 SQL Data Definition Language (DDL) problems for practice.
									
DANE--Q1: Create a table named "Employees" with columns for ID, Name, Age, and Salary.
CREATE TABLE IF NOT EXISTS Employees(
ID SERIAL PRIMARY KEY ,
Name VARCHAR(150) NOT NULL,
Age SMALLINT NOT NULL,
Salary NUMERIC(10,2) NOT NULL 
);
DANE--Q2: Add a new column "Department" to the "Employees" table.
INSERT INTO Employees (Name, Age, Salary)
VALUES
('Ritik Sharma', 25, 99999999.00),
('Anita Verma', 30, 55000.50),
('Karan Patel', 22, 30000.00),
('Priya Singh', 28, 47000.75),
('Aman Joshi', 26, 42000.00),
('Neha Gupta', 31, 58000.90),
('Sahil Khan', 24, 39000.00),
('Divya Iyer', 29, 51000.25),
('Rohit Mehta', 27, 46000.00),
('Pooja Das', 23, 35000.00),
('Varun Rao', 32, 60000.00),
('Sonal Jain', 21, 28000.00),
('Deepak Nair', 33, 61000.75),
('Isha Kulkarni', 26, 43000.50),
('Nikhil Aggarwal', 27, 47000.00),
('Meera Chawla', 25, 44000.00),
('Vikram Sethi', 30, 55000.00),
('Sanya Bhat', 22, 32000.00),
('Arjun Malhotra', 29, 52000.25),
('Preeti Yadav', 28, 48000.00),
('Rajat Roy', 24, 41000.00),
('Rina Paul', 31, 59000.00),
('Tarun Kaul', 27, 45000.00),
('Shikha Dey', 26, 43000.00),
('Manoj Pillai', 34, 63000.00),
('Kavya Shah', 25, 45000.00),
('Aditya Menon', 23, 36000.00),
('Laxmi Jha', 29, 51000.00),
('Suresh Rawat', 28, 49000.00),
('Geeta Chopra', 32, 60000.00)
;
DANE--Q3: Change the data type of the "Salary" column to INTEGER.
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER;
DANE--Q4: Remove the "Department" column from the "Employees" table.
ALTER TABLE employee
DELETE COLUMN department;
DONE--Q5: Add a unique constraint to the "Name" column to ensure no duplicate names.
ALTER TABLE employees
ADD CONSTRAINT name UNIQUE(name);
--Q6: Create a new table "Departments" and link it to "Employees" using a foreign key.
CREATE TABLE department__(
dept_id VARCHAR(8) DEFAULT UPPER(SUBSTRING(uuid_generate_v4()::TEXT,1,8)),
dept_name VARCHAR(100) NOT NULL,
emp_id INT,
FOREIGN KEY (emp_id) REFERENCES employee___(emp_id)
 );
DANE--Q7: Delete the "Departments" table permanently.
DROP TABLE IF EXISTS 
department;
DANE--Q8: Truncate a Table
TRUNCATE TABLE employees
RESTART IDENTITY ; 
--Q9: Create an Index
CREATE INDEX idx_employee_name
ON employees (name);

CREATE INDEX idx_employee_name_age
ON employees (name, age);

CREATE UNIQUE INDEX idx_employee_email
ON employees (email);

CREATE INDEX idx_active_employees
ON employees (name)
WHERE is_active = true;

CREATE INDEX idx_lower_name
ON employees (lower(name));


--Q10: Remove the index "idx_Name" from the "Employees" table.
SELECT * FROM pg_indexes WHERE tablename = 'employees';

DROP INDEX idx_employee_name;

--Q11: Rename the "Employees" table to "Staff".
ALTER TABLE employees RENAME TO staff ; 
--Q12: Set a default value of 0 for the "Salary" column.
UPDATE employee
SET salary = 0
where salary IS NULL;

ALTER TABLE employee
ALTER COLUMN salary SET DEFAULT 0 ; 
SELECT * FROM EMPLOYEE ORDER BY salary DESC ; 
--Q13: Remove the unique constraint "UC_Name" from the "Employees" table.
ALTER TABLE Employees
DROP CONSTRAINT UC_Name;
--Q14: Create a new schema named "HR".
CREATE SCHEMA HR;
--Q15: Move the "Employees" table to the "HR" schema.
ALTER TABLE Employees SET SCHEMA HR;
--18: Retrieve a list of unique departments

--19: Get all the categories in Uppercase
--20: Get all the categories in Lowercase
--21: Join Product_name adn category text with hypen.
--22: Extract the first 5 characters from product_name
--23: Count length
--24: Remove leading and trailing spaces from string
--25: Replace the word "phone" with "device" in product names
--26: Get the first 3 characters from category
--27: NOW() – Get Current Date and Time
--28: CURRENT_DATE() – Get Current Date
--29: EXTRACT() – Extract Parts of a Date  -- Extract the year, month, and day from the added_date column.
--30: AGE() – Calculate Age Between Dates -- Calculate the time difference between added_date and today’s date.
--31: TO_CHAR() – Format Dates as Strings  -- Format added_date in a custom format (DD-Mon-YYYY).
--32: DATE_PART() – Get Specific Date Part -- Extract the day of the week from added_date.
--33: DATE_TRUNC() – Truncate Date to Precision  -- Truncate added_date to the start of the month.
--34: INTERVAL – Add or Subtract Time Intervals  -- Add 6 months to the added_date.
--35: CURRENT_TIME() – Get Current Time  --Retrieve only the current time.
--36: TO_DATE() – Convert String to Date  -- Convert a string to a date format.


					                     ------------------------
					                     --INTERMEDIT QUASTION--
										 ------------------------
				           	 -- THIS IS QUASTION IS GIVEN BY SATISH DHAWALE --
					 
DONE--Q1: Retrieve all employees’ first_name and their departments.
SELECT emp_name,department
FROM employee;
DONE--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE employee
SET salary = salary+(salary*0.10)
WHERE department = 'IT';
DONE--Q3: Delete all employees who are older than 34 years.
DELETE FROM employee
WHERE age > 33; 
DONE--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE employee
ADD COLUMN emaail VARCHAR(200) DEFAULT 'ritik.owner@ritsky.com';
DONE--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE employee
RENAME COLUMN department TO dep_name;
DONE--Q6: Retrieve the names of employees who joined after January 1, 2019.
SELECT * FROM employee 
WHERE hire_date > '2019-01-01';
DONE--Q7: Change the data type of the `salary` column to `INTEGER`.
ALTER TABLE employee
ALTER COLUMN salary TYPE DECIMAL(10,2);
DONE--Q8: List all employees with their age and salary in descending order of salary.
SELECT * FROM employee
ORDER BY 
salary DESC;
DONE--Q9: Insert a new employee with the following details:
INSERT INTO employee
(name,departnemt,position,age,salary,hire_date,duration,is_active, etc.............)
VALUES 
		('ritik kumar','foumder','owner',19,99999999.99,'etc...........')
DONE--Q10: Update age of employee +1 to every employee 
UPDATE employee
SET age = age + 1;
DONE--11: import CSV File DIRECT MODE
COPY employee (name,departnemt,position,age,salary,hire_date,duration,is_active, etc.............)
FROM C:\Users\Hrithik\employees.csv
DELIMITER ','
CSV DEADER ;
DONE--12: Retrieve employees whose salary is between 40,000 and 60,000. - Use BETWEEN Operators
SELECT * FROM employee
WHERE salary BETWEEN 60000 AND 120000;
DONE--13  Find employees whose email addresses end with gmail.com - Use LIKE Operators
SELECT * FROM employee
WHERE email LIKE '%@ritsky.com';
DONE--14: Retrieve employees who belong to either the 'Finance' or 'Marketing' departments-- Use IN Operator
SELECT * FROM employee 
WHERE dep_name IN ('IT','R&D');
DONE--15: Find employees where the email column is NULL ( if applicable).
SELECT * FROM employee
WHERE email IS NULL;
DONE--16:  List employees sorted by salary in DESCENDING order.
SELECT * FROM employee
ORDER BY salary DESC;
DONE--17: Retrieve the top 5 highest-paid employees.
SELECT * FROM employee 
ORDER BY salary
DESC LIMIT 5 ; 
Q18--Return 20 records, starting from the 41th record: USING OFFSET LIMIT
SELECT * FROM employee
LIMIT 20 OFFSET 40 ; 
Q19--The MIN() function returns the smallest value of the selected column. USING MIN
SELECT MIN(Amount) AS Smallest_Amount
FROM orders;
Q20--Return the highest price in the products table: USING MAX
SELECT MAX(Price) AS Highest_Price
FROM products;
Q21--Return the number of customers from the customers table:  USING COUMT
SELECT COUNT(*) AS Total_Customers
FROM customers;
Q22--Return the number of customers from London: USING COUNT
SELECT COUNT(*) AS Customers_From_London
FROM customers
WHERE City = 'London';
Q23--Return the total amount of ordered items: USING SUM 
SELECT SUM(Amount) AS Total_Ordered_Amount
FROM orders;
Q24--Return the average price of all the products in the products table: USING AVG
SELECT AVG(Price) AS Average_Product_Price
FROM products;
Q25--Return the average price of all the products, rounded to 2 decimals: USING AVG
SELECT AVG(price)::NUMERIC(10,2)
FROM products;
-- Q26: Retrieve the second highest salary from the employees table.
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);
-- Q27: Retrieve the employee details who have worked in both 'IT' and 'HR' departments.
SELECT first_name, last_name, department
FROM employees
WHERE department IN ('IT', 'HR')
GROUP BY first_name, last_name
HAVING COUNT(DISTINCT department) = 2;
-- Q28: List all employees who do not have a manager (i.e., have NULL in manager_id column).
SELECT first_name, last_name
FROM employees
WHERE manager_id IS NULL;
-- Q29: Find employees whose salary is in the top 10% of the salaries.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT PERCENTILE_CONT(0.9) WITHIN GROUP (ORDER BY salary) FROM employees);
-- Q30: List the department and its average salary, only for departments with more than 5 employees.
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
-- Q31: Retrieve employees who have been in the company for more than 5 years.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date <= CURRENT_DATE - INTERVAL '5 years';
-- Q32: List the departments that do not have any employees.
SELECT department
FROM departments
WHERE department NOT IN (SELECT DISTINCT department FROM employees);
-- Q33: Retrieve employees with the highest salary in each department.
SELECT department, first_name, last_name, salary
FROM employees e
WHERE salary = (SELECT MAX(salary) FROM employees WHERE department = e.department);
-- Q34: Retrieve all employees whose names start with the letter "J" or "S".
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'J%' OR first_name LIKE 'S%';
-- Q35: List all employees who have a salary greater than the average salary of their department.
SELECT first_name, last_name, salary, department
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department = e.department);


		                     ------------------------
		                       --ADVANCE QUASTION--
							 ------------------------
Q1--"Find all employees who have the same name appearing more than once in the table."
SELECT emp_name , COUNT(*)
FROM employee
GROUP BY emp_name
HAVING COUNT(*) > 1 ;
Q2--"Retrieve the column names and their data types along with numeric precision and scale for the employee table."
select * from employee;
Q3--Return all customers with a name that starts with the letter 'A': USING LIKE 'A%'
SELECT * FROM employee
WHERE first_name LIKE 'A%';
Q4--Return all customers with a name that contains the letter 'A': USING LIKE '%A%'
SELECT * FROM employee
WHERE first_name LIKE '%A%'
Q5--Return all customers with a email that ends with the phrase 'en': USING LIKE '%@ritsky.com'
SELECT * FROM employee
WHERE email LIKE '%@ritsky.com';
Q6--Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters: USING LIKE
SELECT * FROM customers
WHERE city LIKE 'L_nd__';
Q7--Return all customers from 'Germany', France' or 'UK': USING IN 
SELECT * FROM customers
WHERE Country IN ('Germany','France','UK');
Q8--Return all customers that are NOT from 'Germany', France' or 'UK': USING NOT IN
SELECT * FROM Customers
WHERE Country NOT IN ('Germany','France','UK');
Q9--Return all customers that have an order in the orders table: USING IN(SELECT)
SELECT * FROM customers
WHERE CustomerID IN (
    SELECT CustomerID FROM orders
);
Q10--Return all customers that have NOT placed any orders in the orders table: USING NOT IN (SELECT)
SELECT * FROM customers
WHERE CustomerID NOT IN (
    SELECT CustomerID FROM orders
);
Q11--Select all products with a price between 10 and 15: USING BETWEEN 
SELECT * FROM products
WHERE price BETWEEN 10 AND 15 ;
Q12--Select all products between 'Pavlova' and 'Tofu':
SELECT * FROM products
WHERE product_name BETWEEN 'Pavlova' AND 'Tofu';
Q13--Same example as above, but we sort it by product_name:
SELECT * FROM Products
WHERE product_name BETWEEN 'Pavlova' AND 'Tofu'
ORDER BY product_name;
Q14--Select all orders between 12. of April 2023 and 5. of May 2023:
SELECT * FROM orders
WHERE order_date BETWEEN '2023-04-12' AND '2023-05-05';
Q15--Using aliases for columns: USING AS 
SELECT 
Name AS customer_name 
FROM customers;
Q16--Return Same result without AS:
SELECT Name 
Customers_name FROM
customers;
Q17--Concatenate two fields and call them product:
SELECT product_name || unit AS product
FROM products;
Q18--return Concatenate, with space:
SELECT product_name || ' ' || unit AS product
FROM products;
Q19--Surround your alias with double quotes:
SELECT product_name AS "My Great Products"
FROM products;
Q20--Join products to categories using the category_id column: USING JOINS
SELECT product_id, product_name, category_name
FROM products
INNER JOIN categories ON products.category_id = categories.category_id;
Q21--Join testproducts to categories using the category_id column: USING INNER JOINS
SELECT testproduct_id, product_name, category_name
FROM testproducts
INNER JOIN categories ON testproducts.category_id = categories.category_id;
Q22--Join testproducts to categories using the category_id column: USING LEFT JOINS
SELECT testproduct_id, product_name, category_name
FROM testproducts
LEFT JOIN categories ON testproducts.category_id = categories.category_id;
Q23--Join testproducts to categories using the category_id column:USING RIGHT JOINS
SELECT testproduct_id, product_name, category_name
FROM testproducts
RIGHT JOIN categories ON testproducts.category_id = categories.category_id;
Q24--Join testproducts to categories using the category_id column: USING FULL JOINS
SELECT testproduct_id, product_name, category_name
FROM testproducts
FULL JOIN categories ON testproducts.category_id = categories.category_id;
Q25--Join testproducts to categories using the CROSS JOIN keyword: USING CROSS JOINS
SELECT testproduct_id, product_name, category_name
FROM testproducts
CROSS JOIN categories;
Q26--Combine products and testproducts using the UNION operator: USING UINON
SELECT product_id, product_name
FROM products
UNION
SELECT testproduct_id, product_name
FROM testproducts
ORDER BY product_id;
Q27--Combine products and testproducts using the UNION ALL operator: USING UINON ALL
SELECT product_id, product_name
FROM products
UNION ALL
SELECT testproduct_id, product_name
FROM testproducts
ORDER BY product_id;
Q28--Lists the number of customers in each country: USING GROUP BY 
SELECT COUNT(customer_id), country
FROM customers
GROUP BY country;
Q29--The following SQL statement lists the number of orders made by each customer: USING GROUP BY With JOIN
SELECT customers.customer_name, COUNT(orders.order_id)
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customer_name;
Q30--List only countries that are represented more than 5 times: USING HAVING 
SELECT COUNT(customer_id), country
FROM customers
GROUP BY country
HAVING COUNT(customer_id) > 5;
Q31--More HAVING Examples The following SQL statement lists only orders with a total price of 400$ or more:
SELECT order_details.order_id, SUM(products.price)
FROM order_details
LEFT JOIN products ON order_details.product_id = products.product_id
GROUP BY order_id
HAVING SUM(products.price) > 400.00;
Q32--Lists customers that have ordered for 1000$ or more:
SELECT customers.customer_name, SUM(products.price)
FROM order_details
LEFT JOIN products ON order_details.product_id = products.product_id
LEFT JOIN orders ON order_details.order_id = orders.order_id
LEFT JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customer_name
HAVING SUM(products.price) > 1000.00;
Q33--Return all customers that is represented in the orders table: USING EXISTS
SELECT customers.customer_name
FROM customers
WHERE EXISTS (
  SELECT order_id
  FROM orders
  WHERE customer_id = customers.customer_id
);
Q34--Return all customers that is NOT represented in the orders table:
SELECT customers.customer_name
FROM customers
WHERE NOT EXISTS (
  SELECT order_id
  FROM orders
  WHERE customer_id = customers.customer_id
);
Q35--List products that have ANY records in the order_details table with a quantity larger than 120: USING ANY FUNCTION 
SELECT product_name
FROM products
WHERE product_id = ANY (
  SELECT product_id
  FROM order_details
  WHERE quantity > 120
);

Q35--List the products if ALL the records in the order_details with quantity larger than 10.
--Note: This will of course return FALSE because the quantity column has many different values (not only the value of 10):
SELECT product_name
FROM products
WHERE product_id = ALL (
  SELECT product_id
  FROM order_details
  WHERE quantity > 10
);
Q36--Return specific values if the price meets a specific condition:
SELECT product_name,
CASE
  WHEN price < 10 THEN 'Low price product'
  WHEN price > 50 THEN 'High price product'
ELSE
  'Normal product'
END
FROM products;
Q37--Same example, but with an alias for the case column::
SELECT product_name,
CASE
  WHEN price < 10 THEN 'Low price product'
  WHEN price > 50 THEN 'High price product'
ELSE
  'Normal product'
END AS "price category"
FROM products;
Q38 --Top 3 highest salary wale employees ka naam aur salary dikhaiye (Subquery or LIMIT use karke)
SELECT first_name, last_name, salary
FROM employee5
ORDER BY salary DESC
LIMIT 3;
Q39--2️⃣ Har employee ke saath uski rank bhi dikhaiye salary ke hisaab se (Window Function)
SELECT 
  first_name, 
  last_name, 
  salary,
  RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee5;
Q40--3️⃣ CTE use karke un employees ko dikhaiye jinki salary average salary se zyada hai
WITH avg_salary_cte AS (
  SELECT AVG(salary) AS avg_salary FROM employee5
)
SELECT first_name, last_name, salary
FROM employee5, avg_salary_cte
WHERE employee5.salary > avg_salary_cte.avg_salary;
Q41--4️⃣ Har department me highest salary wala employee ka naam aur salary dikhaiye (Window Function - PARTITION)
SELECT 
  first_name,
  last_name,
  department,
  salary,
  RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank
FROM employee5
WHERE department IS NOT NULL;
Q42--5️⃣ Email id ka domain (jaise gmail.com, ritksy.com) extract karke dikhaiye (String function practice)
SELECT 
  first_name,
  last_name,
  email,
  SPLIT_PART(email, '@', 2) AS email_domain
FROM employee5;
Q43--6️⃣ Jo employees abhi bhi active hain aur 500 se zyada din se kaam kar rahe hain unki list banaiye
SELECT first_name, last_name, CURRENT_DATE - hire_date AS total_days_worked
FROM employee5
WHERE is_active = TRUE AND (CURRENT_DATE - hire_date) > 500;
Q44--7️⃣ Har hire_type ke andar average salary kya hai?
SELECT hire_type, AVG(salary) AS avg_salary
FROM employee5
GROUP BY hire_type;
Q45--8️⃣ Har state me total employees aur unka total salary kitna hai?
SELECT state, COUNT(*) AS total_employees, SUM(salary) AS total_salary
FROM employee5
GROUP BY state;
Q46--Jo employee company me sabse purana hai (sabse pehle join hua hai), uska naam aur hire date dikhaiye
SELECT first_name, last_name, hire_date
FROM employee5
ORDER BY hire_date ASC
LIMIT 1;
Q47 --Finde total date of workr how meany day employee work in your company hire_date to current-date
SELECT 
		first_name,
		last_name,
		salary,
		gender,
		unique_id,
		is_active,
		hire_type,
		CURRENT_DATE AS todya_date,
		CURRENT_DATE - hire_date AS total_day_worked
FROM employee5 ORDER BY unique_id;

Q48--Enable UUID Extension (only once)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

Q49-- Create users table with UUID-based unique_id
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
    unique_id VARCHAR(8) DEFAULT UPPER(SUBSTRING(uuid_generate_v4()::TEXT, 1, 8))
);

Q50-- Insert demo users
INSERT INTO users (name, age) VALUES 
('Hrithik', 18), 
('Ravi', 16), 
('Priya', 22),
('Alok', 25);

Q51--Select users where unique_id starts with 'A'
SELECT * FROM users
WHERE unique_id LIKE 'A%';

Q52-- Convert string to integer and add 2
SELECT '123'::int + 2 AS result;

Q53-- Convert timestamp to only date
SELECT NOW()::DATE AS today_date;

Q54-- Employees table sample query (assuming salary is stored as TEXT)
-- Uncomment if table exists
SELECT * FROM employees
WHERE salary::int > 30000;

Q55-- Get current date, time, and full timestamp
SELECT CURRENT_DATE AS today,
       CURRENT_TIME AS time_now,
       NOW() AS full_timestamp;

Q56-- Pagination: return 20 records from 41st record
SELECT * FROM users
LIMIT 20 OFFSET 40;

Q57-- 10. Grouping (Sample - department wise employee count)
-- Uncomment if table exists
 SELECT department, COUNT(*) AS total
 FROM employees
 GROUP BY department
 ORDER BY total DESC;

Q58-- CASE Statement: Check if user is adult or minor
SELECT name, age,
  CASE
    WHEN age >= 18 THEN 'Adult'
    ELSE 'Minor'
  END AS status
FROM users;

Q59-- Create promo_codes table with random 6-char codes
CREATE TABLE promo_codes (
    id SERIAL PRIMARY KEY,
    code VARCHAR(6) DEFAULT UPPER(SUBSTRING(uuid_generate_v4()::TEXT, 1, 6))
);

Q60-- Insert sample promo codes
INSERT INTO promo_codes DEFAULT VALUES;
INSERT INTO promo_codes DEFAULT VALUES;

Q61-- Math operations
SELECT 
  ROUND(123.4567, 2) AS rounded_value,
  POWER(2, 3) AS power_example,
  MOD(10, 3) AS modulo_result;







