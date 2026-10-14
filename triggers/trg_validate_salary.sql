
CREATE OR REPLACE TRIGGER trg_validate_salary
BEFORE INSERT OR UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
    IF :NEW.salary IS NULL OR :NEW.salary <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20020,
            'Salary must be greater than zero'
        );
    END IF;
END;
/



--test
UPDATE employees
SET salary = -5000
WHERE employee_id = 101;


UPDATE employees
SET salary = 46000
WHERE employee_id = 101;
