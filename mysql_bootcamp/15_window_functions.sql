# Setup
-- CREATE DATABASE window_funcs;
-- USE window_funcs;

-- CREATE TABLE employees (
--     emp_no INT PRIMARY KEY AUTO_INCREMENT,
--     department VARCHAR(20),
--     salary INT
-- );
--  
-- INSERT INTO employees (department, salary) VALUES
-- ('engineering', 80000),
-- ('engineering', 69000),
-- ('engineering', 70000),
-- ('engineering', 103000),
-- ('engineering', 67000),
-- ('engineering', 89000),
-- ('engineering', 91000),
-- ('sales', 59000),
-- ('sales', 70000),
-- ('sales', 159000),
-- ('sales', 72000),
-- ('sales', 60000),
-- ('sales', 61000),
-- ('sales', 61000),
-- ('customer service', 38000),
-- ('customer service', 45000),
-- ('customer service', 61000),
-- ('customer service', 40000),
-- ('customer service', 31000),
-- ('customer service', 56000),
-- ('customer service', 55000);

# Using OVER()
-- SELECT 
-- 	emp_no, 
-- 	department, 
-- 	salary, 
-- 	MIN(salary) OVER(),
--     MAX(salary) OVER()
-- FROM employees;

# PARTITION BY
-- SELECT department, AVG(salary) FROM employees GROUP BY department;

-- SELECT 
-- 	emp_no, 
-- 	department, 
-- 	salary, 
-- 	AVG(salary) OVER(PARTITION BY department) AS dept_avg,
--     AVG(salary) OVER() AS company)_avg
-- FROM employees;

-- SELECT emp_no, department, salary, COUNT(*) OVER(PARTITION BY department) as dept_count
-- FROM employees;

-- SELECT 
-- 	emp_no, 
-- 	department, 
-- 	salary, 
--     SUM(salary) OVER(PARTITION BY department) AS dept_payroll,
-- 	SUM(salary) OVER() AS total_payroll
-- FROM employees;

# ORDER BY with Windows
-- SELECT 
-- 	emp_no, 
-- 	department,
-- 	salary, 
-- 	SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_dept_salary,
--     SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
-- FROM employees;

# RANK()
-- SELECT 
-- 	emp_no, 
-- 	department,
-- 	salary, 
-- 	RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
-- FROM employees;

-- SELECT 
-- 	emp_no, 
-- 	department,
-- 	salary, 
--     RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
-- 	RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
-- FROM employees ORDER BY department;

# DENSE_RANK & ROW_NUMBER()
-- SELECT 
-- emp_no, 
-- department,
-- salary, 
-- 	ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_num,			//rank can have tie, row not 
-- 	RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
-- 	RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank,
-- 	DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dense_rank,						//can have tie but doesn't skip number
-- 	ROW_NUMBER() OVER(ORDER BY salary DESC) AS overall_num
-- FROM employees ORDER BY department;
