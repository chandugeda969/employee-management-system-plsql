create or replace procedure get_employee_details(
    p_emp_id IN employees.employee_id%TYPE
)
AS
 v_name   employees.employee_name%TYPE;
    v_email  employees.email%TYPE;
    v_salary employees.salary%TYPE;
    v_dept   employees.department_id%TYPE;

BEGIN
    SELECT employee_name,email,salary,department_id
    INTO  v_name, v_email, v_salary, v_dept
    FROM employees
    WHERE employee_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_email);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Department ID: ' || v_dept);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
END;
/
