-- Module Challenge
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	t.title,
	t.from_date,
	s.salary
INTO titles_retiring
FROM retirement_info as ri
INNER JOIN titles as t
ON (ri.emp_no = t.emp_no)
INNER JOIN salaries AS s
ON (t.emp_no = s.emp_no)
-- Most recent titles descending order by date
ORDER BY t.from_date DESC;	

-- Counting Duplicates
SELECT
  first_name,
  last_name,
  count(*)
FROM titles_retiring
GROUP BY
  first_name,
  last_name
HAVING count(*) > 1
ORDER BY titles_retiring.count DESC;

-- Counting how many employees share the same title
SELECT
  title,
  count(*)
FROM titles_retiring
GROUP BY
  title
HAVING count(*) > 1
ORDER BY titles_retiring.count DESC;

-- Display duplicate rows with all info
SELECT * FROM
  (SELECT *, count(*)
  OVER
    (PARTITION BY
      first_name,
      last_name
    ) AS count
  FROM titles_retiring) tableWithCount
  WHERE tableWithCount.count > 1;

-- Removing Duplicates
SELECT emp_no, first_name, last_name, title, from_date, salary 
INTO titles_retiring2
FROM
  (SELECT emp_no, first_name, last_name, title, from_date, salary,
     ROW_NUMBER() OVER 
(PARTITION BY (first_name, last_name) ORDER BY from_date DESC) rn
   FROM titles_retiring
  ) tmp WHERE rn = 1;

-- Who's Ready for a Mentor?
-- emp.No, first_name, last_name, title, from_date, to_date
-- Tables: 
-- [current_emp] - emp.No, first_name, last_name, to_date
-- [employees] - emp.No, birth_date, boundries needed from 1965-01-01 to 1965-12-31
-- [titles] - emp.No, title, from_date, to_date

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO mentor_list
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = ('9999-01-01'))
ORDER BY e.emp_no;

-- Removing Duplicates
SELECT emp_no, first_name, last_name, title, from_date, to_date 
INTO mentor_list2
FROM
  (SELECT emp_no, first_name, last_name, title, from_date, to_date,
     ROW_NUMBER() OVER 
(PARTITION BY (first_name, last_name) ORDER BY emp_no) rn
   FROM mentor_list
  ) tmp WHERE rn = 1;

SELECT*FROM retirement_info
SELECT*FROM titles
SELECT*FROM salaries
SELECT*FROM titles_retiring