-- Create a list of retirees with their titles
SELECT 	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows 
-- to get only ythe most recent title of each employee
SELECT DISTINCT ON (emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no, to_date DESC;

-- Retrieve the number of retirees by their most recent job title
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- Create a Mentorship Eligibility table holding current employees 
-- born between 1/165 & 12/31/65
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN titles as t
		ON e.emp_no = t.emp_no
WHERE (de.to_date = ('9999-01-01'))
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- Create a list of mentor emloyees with their emp_no and dept_no  
SELECT me.emp_no,
	de.dept_no
INTO mentorship_dept_emp
FROM mentorship_eligibility as me
LEFT JOIN dept_emp as de
ON me.emp_no = de.emp_no;

-- Retrieve the number of eligible mentors by department
SELECT COUNT(emp_no), mde.dept_no,
	d.dept_name
FROM mentorship_dept_emp as mde
INNER JOIN departments as d
ON mde.dept_no = d.dept_no
GROUP BY mde.dept_no, d.dept_name
ORDER BY dept_no;