select * from employees;
select * from department;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from titles;

-- 1. List the employee number, last name, first name, sex, and salary of each employee
SELECT em.emp_no, em.last_name, em.first_name, em.sex, sa.salary as "employee salary"
FROM employees em
JOIN salaries sa
ON sa.emp_no = em.emp_no
ORDER BY em.emp_no ASC;


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986
SELECT em.first_name, em.last_name, em.hire_date
From employees em
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY em.hire_date ASC, first_name, last_name;


-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT ma.dept_no, dep.dept_name, ma.emp_no, em.last_name, em.first_name
FROM dept_manager ma
JOIN department dep
ON ma.dept_no = dep.dept_no
JOIN employees em
ON ma.emp_no = em.emp_no



-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT depe.dept_no, em.emp_no, em.last_name, em.first_name, dep.dept_name as "ak"
FROM dept_emp depe
JOIN department dep
ON dep.dept_no = depe.dept_no
JOIN employees em
ON depe.emp_no = em.emp_no
ORDER BY dept_no, emp_no, last_name, first_name


-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT em.first_name, em.last_name, em.sex
FROM employees em
WHERE em.first_name = 'Hercules' AND em.last_name LIKE 'B%'
ORDER BY em.last_name;


-- 6. List each employee in the Sales department, including their employee number, last name, and first name(with department name)
SELECT em.emp_no, em.last_name, em.first_name, dep.dept_name
FROM employees em
JOIN dept_emp depe
ON em.emp_no = depe.emp_no
JOIN department dep
ON depe.dept_no = dep.dept_no
WHERE dep.dept_name = 'Sales'
ORDER BY em.emp_no;


-- 6. List each employee in the Sales department, including their employee number, last name, and first name(without department name)
SELECT em.emp_no, em.last_name, em.first_name
FROM employees em
WHERE emp_no IN (
SELECT emp_no
FROM dept_emp depe
WHERE dept_no IN (
SELECT dept_no 
FROM department dep
WHERE dep.dept_name = 'Sales'
)
)
ORDER BY em.emp_no;


-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT em.emp_no, em.last_name, em.first_name, dep.dept_name
FROM employees em
JOIN dept_emp depe
ON em.emp_no = depe.emp_no
JOIN department dep
ON depe.dept_no = dep.dept_no
WHERE dep.dept_name
IN ('Sales', 'Development')
ORDER BY em.emp_no;


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT (last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" DESC;

