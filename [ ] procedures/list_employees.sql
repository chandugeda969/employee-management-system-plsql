
CREATE OR REPLACE PROCEDURE list_employees (
    p_dept_id IN employees.department_id%TYPE
)
AS
BEGIN
    FOR emp IN (
        SELECT employee_id,
               employee_name,
               email,
               salary,
               department_id
        FROM employees
        WHERE department_id = p_dept_id
        ORDER BY employee_id
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || emp.employee_id ||
            ' | Name: ' || emp.employee_name ||
            ' | Email: ' || emp.email ||
            ' | Salary: ' || emp.salary ||
            ' | Department: ' || emp.department_id
        );
    END LOOP;
END;
/

































































Copy
