
CREATE OR REPLACE PROCEDURE delete_employee (
    p_emp_id IN employees.employee_id%TYPE
)
AS
BEGIN
    DELETE FROM employees
    WHERE employee_id = p_emp_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee deleted successfully');
    END IF;
END;
/
