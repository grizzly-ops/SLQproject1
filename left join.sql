SELECT employees.first_name, employees.last_name,departments.department_name,salaries.salary_per_annum,title.title_name,overtime.over_time_worked
FROM employees LEFT JOIN departments
ON employees.department = departments.dept_id
LEFT JOIN title
ON employees.title = title.title_id
LEFT JOIN salaries
ON employees.salary = salaries.salary_id
LEFT JOIN overtime
ON employees.overtime_hours_worked = overtime.overtime_id