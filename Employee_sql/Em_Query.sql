-- Data analytics Query
-- 1) first list employee number, last name, first name, sex and salary
SELECT e.emp_no,
e.last_name,
e.first_name, 
e.sex,
s.salary
FROM employees e 
JOIN salaries s
ON e.emp_no = s.emp_no;

-- 2) next I list first name, last name, and the hire date of the employee who was hired in 1986
SELECT e.first_name,e.last_name,e.hire_date
FROM employees e 
WHERE e.hire_date between '1986-1-1'and '1986-12-31'
ORDER BY e.hire_date ASC

-- 3) List manager for each department w/ dept number, dept name, manager employee number, last name and first name
SELECT 
d.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name,
FROM departments d 
JOIN dept_manager dm 
ON d.dept_no = dm.dept_no
JOIN employees e 
ON dm.emp_no = e.emp_no;


