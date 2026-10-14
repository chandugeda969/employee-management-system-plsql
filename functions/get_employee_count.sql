
CREATE OR REPLACE FUNCTION get_employee_count (
    p_dept_id IN employees.department_id%TYPE DEFAULT NULL
)
RETURN NUMBER
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM employees
    WHERE p_dept_id IS NULL
       OR department_id = p_dept_id;

    RETURN v_count;
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(get_employee_count(20));
END;
/
