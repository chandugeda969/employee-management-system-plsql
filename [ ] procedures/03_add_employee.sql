CREATE OR REPLACE PROCEDURE add_employee (
    p_emp_id  IN employees.employee_id%TYPE,
    p_name    IN employees.employee_name%TYPE,
    p_email   IN employees.email%TYPE,
    p_salary  IN employees.salary%TYPE,
    p_dept_id IN employees.department_id%TYPE
)
AS
    e_department_not_found EXCEPTION;
    PRAGMA EXCEPTION_INIT(e_department_not_found, -2291);
BEGIN
    -- Validate salary
    IF p_salary IS NULL OR p_salary <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Salary must be greater than zero'
        );
    END IF;

    -- Insert employee
    INSERT INTO employees (
        employee_id,
        employee_name,
        email,
        salary,
        department_id
    )
    VALUES (
        p_emp_id,
        p_name,
        p_email,
        p_salary,
        p_dept_id
    );

    DBMS_OUTPUT.PUT_LINE('Employee added successfully');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Employee ID or email already exists'
        );

    WHEN e_department_not_found THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Department does not exist'
        );
END;

/
