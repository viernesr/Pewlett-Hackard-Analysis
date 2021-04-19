-- Queries for Deliverable #1

-- Creating the retirement_titles table
SELECT e.emp_no, e.first_name, e.last_name,
t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS t ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
t.title
INTO unique_titles
FROM employees AS e
JOIN titles AS t ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, t.to_date DESC;

-- Getting count for unique titles and putting into a new table
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Queries for Deliverable #2

-- Creating a new table which shows current employees eligible to participate in a mentorship program
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name,
e.birth_date, de.from_date, de.to_date, 
t.title
INTO mentorship_eligibilty
FROM employees AS e
JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
JOIN titles AS t ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;
--
