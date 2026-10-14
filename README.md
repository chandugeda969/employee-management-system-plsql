# Employee Management System using Oracle PL/SQL

## Project Overview

The Employee Management System is a database project built using Oracle SQL and PL/SQL. It manages employee information and demonstrates how database programming concepts can be used to implement common employee-related operations.

This project is developed for learning, practical database development, and interview preparation.

## Objectives

- Store and manage employee information.
- Organize employees by department.
- Implement reusable PL/SQL procedures.
- Validate input and handle database exceptions.
- Demonstrate cursors, constraints, and transaction management.

## Technologies Used

- Oracle SQL
- Oracle PL/SQL
- Oracle FreeSQL
- GitHub

## Implemented Features

1. Create and manage departments.
2. Add new employees using a stored procedure.
3. Retrieve employee details by employee ID.
4. List employees by department.
5. Update employee salaries with validation.
6. Transfer employees between departments.
7. Delete employee records.
8. Handle invalid inputs and database exceptions.
9. Calculate annual salary using a PL/SQL function.
10. Count employees overall or by department.
11. Maintain salary change audit history using a trigger.
12. Validate salary changes using a database trigger.
13. Display employee and department information through a database view.
14. Verify database object validity and check compilation errors.

## Database Design

### DEPARTMENTS

| Column | Description |
|---|---|
| department_id | Primary key |
| department_name | Department name; unique and required |

### EMPLOYEES

| Column | Description |
|---|---|
| employee_id | Primary key |
| employee_name | Employee name |
| email | Unique employee email |
| salary | Employee salary; must be greater than zero |
| hire_date | Employee joining date |
| department_id | Foreign key referencing DEPARTMENTS |

## Project Structure

- `sql/` — Table creation, constraints, and sample data.
- `procedures/` — Stored procedures for employee management operations.
- `functions/` — Functions for annual salary calculation and employee counting.
- `triggers/` — Salary validation and salary audit triggers.
- `views/` — Views for displaying employee and department details.
- `tests/` — Reserved for future test scripts and validation scenarios.
- `docs/` — Database design and project documentation.

## How to Run

1. Open Oracle FreeSQL and connect to your database.
2. Execute `sql/01_create_tables.sql` to create the departments and employees tables.
3. Execute `sql/02_insert_sample_data.sql` to insert sample department and employee records.
4. Execute the stored procedure scripts in the `procedures/` folder.
5. Execute the function scripts in the `functions/` folder.
6. Execute the trigger scripts in the `triggers/` folder.
7. Execute `views/employee_details_view.sql` to create the employee details view.
8. Test the procedures, functions, triggers, and view using SQL statements in FreeSQL.

**Important:** Create the tables before inserting sample data or creating database objects that depend on those tables. Run each script in the appropriate order and verify that it executes successfully before continuing.

## Project Status

In Development

Features and documentation will be updated as the project progresses.

## Learning Outcomes

This project demonstrates practical knowledge of relational database design, PL/SQL programming, stored procedures, cursors, exception handling, constraints, and transaction management.
