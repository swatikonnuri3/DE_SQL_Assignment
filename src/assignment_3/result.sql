SELECT
    SUBSTRING_INDEX(id_deptname, '-', -1) AS dept_name,
    SUM(salary) AS total_salary
FROM dept_tbl
GROUP BY dept_name
ORDER BY dept_name;