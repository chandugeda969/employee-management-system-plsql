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

## Planned Features

1. Create and manage departments.
2. Add a new employee.
3. Retrieve employee details by employee ID.
4. List employees by department.
5. Update employee salary.
6. Transfer employees between departments.
7. Delete employee records.
8. Handle invalid inputs and database exceptions.
9. Manage transactions.
10. Maintain employee audit history.

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
- `procedures/` — Employee management procedures.
- `functions/` — Reusable database functions.
- `triggers/` — Automatic database actions and audit logic.
- `tests/` — Test scripts and validation scenarios.
- `docs/` — Database design and project documentation.

## How to Run

1. Open Oracle FreeSQL.
2. Create the database tables using the scripts in the `sql/` folder.
3. Insert the sample department and employee data.
4. Execute the procedure scripts in the `procedures/` folder.
5. Run the test scripts and verify the results.

Execute table creation scripts before inserting data or creating procedures that depend on those tables.

## Project Status

In Development

Features and documentation will be updated as the project progresses.

## Learning Outcomes

This project demonstrates practical knowledge of relational database design, PL/SQL programming, stored procedures, cursors, exception handling, constraints, and transaction management.
