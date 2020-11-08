-- Data Analytics Query
-- 1) So, first I will list employee number, last name, first name, 
-- sex and salary
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
ORDER BY e.hire_date ASC;

-- 3) I will list manager for each department w/ dept number, dept name, manager employee number, last name and first name
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

-- 4) I will list the department of each employee with their info: employee number, lastname, first name and department name 
SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employees e 
JOIN dept_emp de
ON de.dept_no = d.dept_no;


--5) I will list the employees who have the name HERCULES AND LAST name starts with B
SELECT first_name, last_name, sex
FROM employees e
WHERE first_name = 'Hercules'
AND last_name like 'B%';

-- 6) I will list the employees in Sales department, including their employee no:, lastname, firstname,and department name
SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = d.dept_no)
WHERE d.dept_name = 'Sales';

--7) I will list sales and development departments with their employee number, lastname, firstname and department name
SELECT e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
JOIN departments d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--8) In descending order, I will list the frequency counts of employees last names
SELECT e.last_name, COUNT (e.emp_no)
FROM employees e
GROUP BY e.last_name
ORDER BY COUNT (e.emp_no) DESC;

