-- File: sql/01_create_tables.sql

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) NOT NULL UNIQUE,
    salary NUMBER(10,2) NOT NULL,
    hire_date DATE DEFAULT SYSDATE,
    department_id NUMBER NOT NULL,

    CONSTRAINT chk_employee_salary
        CHECK (salary > 0),

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
