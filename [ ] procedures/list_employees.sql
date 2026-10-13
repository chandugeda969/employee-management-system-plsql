
CREATE OR REPLACE PROCEDURE list_employees (
    p_dept_id IN employees.department_id%TYPE
)
AS
    v_found BOOLEAN := FALSE;
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
        v_found := TRUE;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || emp.employee_id ||
            ' | Name: ' || emp.employee_name ||
            ' | Email: ' || emp.email ||
            ' | Salary: ' || emp.salary ||
            ' | Department: ' || emp.department_id
        );
    END LOOP;

    IF NOT v_found THEN
        DBMS_OUTPUT.PUT_LINE(
            'No employees found in this department'
        );
    END IF;
END;
/
