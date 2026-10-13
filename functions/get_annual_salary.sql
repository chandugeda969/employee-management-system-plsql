
CREATE OR REPLACE FUNCTION get_annual_salary (
    p_emp_id IN employees.employee_id%TYPE
)
RETURN NUMBER
AS
    v_monthly_salary employees.salary%TYPE;
BEGIN
    IF p_emp_id IS NULL OR p_emp_id <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20010,
            'Employee ID must be a positive number'
        );
    END IF;

    SELECT salary
    INTO v_monthly_salary
    FROM employees
    WHERE employee_id = p_emp_id;

    RETURN v_monthly_salary * 12;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(
            -20011,
            'Employee not found'
        );
END;
/

  

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        get_annual_salary(NULL)
    );
END;
/
