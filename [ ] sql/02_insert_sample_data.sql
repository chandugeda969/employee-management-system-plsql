

-- Insert departments first
INSERT INTO departments (department_id, department_name)
VALUES (10, 'IT');x

INSERT INTO departments (department_id, department_name)
VALUES (20, 'HR');

INSERT INTO departments (department_id, department_name)
VALUES (30, 'Finance');

-- Insert employees
INSERT INTO employees (
    employee_id, employee_name, email, salary, department_id
)
VALUES (
    101, 'Ravi', 'ravi@example.com', 35000, 10
);

INSERT INTO employees (
    employee_id, employee_name, email, salary, department_id
)
VALUES (
    102, 'Priya', 'priya@example.com', 45000, 10
);

INSERT INTO employees (
    employee_id, employee_name, email, salary, department_id
)
VALUES (
    103, 'Sita', 'sita@example.com', 30000, 20
);

COMMIT;

 SELECT * FROM departments ORDER BY department_id;

SELECT * FROM employees ORDER BY employee_id;
