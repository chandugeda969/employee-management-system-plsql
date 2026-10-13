
CREATE OR REPLACE PROCEDURE update_employee_salary (
    p_emp_id    IN employees.employee_id%TYPE,
    p_new_salary IN employees.salary%TYPE
)
AS
BEGIN
    IF p_new_salary IS NULL OR p_new_salary <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20004,
            'Salary must be greater than zero'
        );
    END IF;

    UPDATE employees
    SET salary = p_new_salary
    WHERE employee_id = p_emp_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary updated successfully');
    END IF;
END;
/
