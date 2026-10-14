# Database Design

## Overview

The Employee Management System uses Oracle SQL and PL/SQL to manage employees and departments.

The database contains two main tables: `DEPARTMENTS` and `EMPLOYEES`. A separate `SALARY_AUDIT` table stores salary change history.

## Tables

### 1. DEPARTMENTS

Stores department information.

| Column | Purpose | Constraint |
|---|---|---|
| `department_id` | Identifies a department | Primary key |
| `department_name` | Stores the department name | Required and unique |

### 2. EMPLOYEES

Stores employee information.

| Column | Purpose | Constraint |
|---|---|---|
| `employee_id` | Identifies an employee | Primary key |
| `employee_name` | Stores the employee name | Required |
| `email` | Stores the employee email | Required and unique |
| `salary` | Stores the employee salary | Required and greater than zero |
| `hire_date` | Stores the joining date | Defaults to the current date |
| `department_id` | Identifies the employee's department | Foreign key |

### 3. SALARY_AUDIT

Stores a history of salary changes made to employee records.

| Column | Purpose |
|---|---|
| `audit_id` | Automatically generated audit record identifier |
| `employee_id` | Identifies the employee whose salary changed |
| `old_salary` | Salary before the update |
| `new_salary` | Salary after the update |
| `changed_at` | Timestamp of the audit record |

## Relationships

One department can have multiple employees. Each employee must reference an existing department.

The relationship is enforced by the foreign key from `EMPLOYEES.department_id` to `DEPARTMENTS.department_id`.

The `SALARY_AUDIT` table records salary changes through the salary audit trigger.

## Database Constraints

- **Primary key:** Uniquely identifies each department, employee, and audit record.
- **Unique constraint:** Prevents duplicate department names and employee email addresses.
- **Not null constraint:** Requires important fields to contain values.
- **Check constraint:** Prevents salaries that are zero or negative.
- **Foreign key:** Ensures employees reference existing departments.

## Database View

`EMPLOYEE_DETAILS_VIEW` joins `EMPLOYEES` and `DEPARTMENTS` to display employee details together with department names.

## PL/SQL Components

- **Procedures:** Add, retrieve, list, update, delete, and transfer employees.
- **Functions:** Calculate annual salary and count employees.
- **Triggers:** Validate salary values and record salary changes.

## Transaction Management

Oracle transaction commands include:

- `COMMIT` to save pending changes.
- `ROLLBACK` to undo uncommitted changes.
- `SAVEPOINT` to mark a position within a transaction.

The behavior observed when executing statements individually or as a script may depend on the SQL client execution settings.
