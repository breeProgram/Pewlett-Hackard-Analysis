-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

-- Join employees and titles tables
SELECT em.emp_no,
	em.first_name,
	em.last_name,
	ti.title
	ti.from_date,
	ti.to_date
--INTO retirement_titles
FROM employees as em
	INNER JOIN titles as ti
		ON em.emp_no = ti.emp_no
	WHERE em.birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
--INTO unique_titles
FROM retirement_titles
	WHERE to_date = '9999-01-01'
ORDER BY emp_no, title DESC;

-- Count amount of each title retiring
SELECT COUNT(title),
	title
--INTO retiring_titles
FROM unique_titles
	GROUP BY title
	ORDER BY COUNT DESC;

-- Create table of all employees eligible to be mentor
SELECT DISTINCT ON (em.emp_no) em.emp_no,
	em.first_name,
	em.last_name,
	em.birth_date,
	de.from_date,
	de.to_date,
	ti.title
--INTO mentorship_eligibilty
FROM employees as em
	INNER JOIN dept_emp as de
		on em.emp_no = de.emp_no
	INNER JOIN titles as ti
		on de.emp_no = ti.emp_no
	WHERE (de.to_date = '9999-01-01')
		AND (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY em.emp_no, ti.title DESC;