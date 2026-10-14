-- File: tests/test_add_employee.sql
-- Tests for the add_employee procedure

SET SERVEROUTPUT ON;

-- TEST 1: Add a valid employee
BEGIN 
    add_employee(
        201,
        'Test Employee',
        'test201@example.com',
        40000,
        10
    );
END;
/

-- Verify Test 1
SELECT *
FROM employees
WHERE employee_id = 201;


-- TEST 2: Duplicate employee ID
-- Employee ID 201 already exists from Test 1
BEGIN
    add_employee(
        201,
        'Another Employee',
        'another201@example.com',
        45000,
        10
    );
END;
/

-- Expected: ORA-20002
-- Employee ID or email already exists


-- TEST 3: Duplicate email
-- Email test201@example.com already exists from Test 1
BEGIN
    add_employee(
        202,
        'Duplicate Email',
        'test201@example.com',
        35000,
        10
    );
END;
/

-- Expected: ORA-20002
-- Employee ID or email already exists


-- TEST 4: Invalid salary
BEGIN
    add_employee(
        203,
        'Invalid Salary',
        'invalid203@example.com',
        -5000,
        10
    );
END;
/

-- Expected: ORA-20001
-- Salary must be greater than zero


-- TEST 5: Nonexistent department
BEGIN
    add_employee(
        204,
        'Invalid Department',
        'invalid204@example.com',
        35000,
        99
    );
END;
/

-- Expected: ORA-20003
-- Department does not exist


-- TEST 6: Verify invalid records were not inserted
SELECT *
FROM employees
WHERE employee_id IN (202, 203, 204);

-- Expected: No rows selected
