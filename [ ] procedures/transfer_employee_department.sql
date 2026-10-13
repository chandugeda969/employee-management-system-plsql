
CREATE OR REPLACE PROCEDURE transfer_employee_department (
    p_emp_id      IN employees.employee_id%TYPE,
    p_new_dept_id IN departments.department_id%TYPE
)
AS
    v_emp_count  NUMBER;
    v_dept_count NUMBER;
BEGIN
    --Check whether the employee exists
    SELECT COUNT(*)
    INTO v_emp_count
    FROM employees
    WHERE employee_id = p_emp_id;

    IF v_emp_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
        RETURN;
    END IF;

    -- Check whether the destination department exists
    SELECT COUNT(*)
    INTO v_dept_count
    FROM departments
    WHERE department_id = p_new_dept_id;

    IF v_dept_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Department not found');
        RETURN;
    END IF;

    -- Transfer the employee
    UPDATE employees
    SET department_id = p_new_dept_id
    WHERE employee_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE(
        'Employee department transferred successfully'
    );
END;
/

BEGIN
    transfer_employee_department(1001, 200);
END;
/
