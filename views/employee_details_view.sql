
CREATE OR REPLACE VIEW employee_details_view AS
SELECT
    e.employee_id,
    e.employee_name,
    e.email,
    e.salary,
    d.department_name,
    e.hire_date
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id;


SELECT *
FROM employee_details_view

