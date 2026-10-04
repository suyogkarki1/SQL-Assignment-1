CREATE TABLE employees (
    employee_id   INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department    VARCHAR(30) NOT NULL,
    job_title     VARCHAR(50),
    salary        NUMERIC(10,2) NOT NULL,
    city          VARCHAR(30)
);

INSERT INTO employees
(employee_id, employee_name, department, job_title, salary, city)
VALUES
(101, 'Ram Sharma', 'IT', 'Developer', 60000, 'Kathmandu'),
(102, 'Sita Thapa', 'HR', 'HR Officer', 50000, 'Pokhara'),
(103, 'Amit Gurung', 'IT', 'Developer', 65000, 'Kathmandu'),
(104, 'Nisha Rai', 'Finance', 'Accountant', 55000, 'Lalitpur'),
(105, 'Bikash Shrestha', 'IT', 'Tester', 52000, 'Bhaktapur'),
(106, 'Puja Karki', 'HR', 'Recruiter', 48000, 'Kathmandu'),
(107, 'Ramesh Tamang', 'Finance', 'Accountant', 60000, 'Pokhara'),
(108, 'Anu Lama', 'IT', 'Developer', 70000, 'Lalitpur'),
(109, 'Suman KC', 'HR', 'Manager', 75000, 'Kathmandu'),
(110, 'Mina Gurung', 'Finance', 'Manager', 80000, 'Kathmandu'),
(111, 'Dipesh Rai', 'IT', 'Developer', 62000, 'Pokhara'),
(112, 'Sabina Thapa', 'HR', 'HR Officer', 52000, 'Lalitpur');

SELECT * 
FROM employees;

-- Number of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Average salary in each department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;	

-- Display the maximum salary in each department.
SELECT department, MAX(salary) AS Max_salary
FROM employees
GROUP BY department;

-- Display the minimum salary in each department.
SELECT department, MIN(salary) AS Max_salary
FROM employees
GROUP BY department
order BY Max_salary;

-- Display the total salary paid by each department
SELECT department,SUM(salary) AS total_Salary
FROM employees
GROUP BY department
ORDER BY total_salary;


-- Display departments having more than 3 employees.
SELECT department,COUNT(employee_id) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(employee_id) >3
ORDER BY total_employees DESC;

-- Display departments where the average salary is greater than 60,000
SELECT department,AVG(salary) AS avg_Salary
FROM employees
GROUP BY department
HAVING AVG(salary) >60000
ORDER BY avg_salary;


-- Find the average salary of employees in each department, considering only
-- employees whose salary is greater than 50,000.

select department,AVG(salary) AS avg_salary_employee
FROM employees
GROUP BY department
HAVING AVG(salary) >50000;

-- Find the number of employees in each department who are from Kathmandu.
SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE city = 'Kathmandu'
GROUP BY department
ORDER BY employee_count DESC;




