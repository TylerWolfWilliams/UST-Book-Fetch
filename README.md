# Book Fetch Application

The Book Fetch Application is a comprehensive system that allows students, customer service representatives, and administrators to manage various aspects of a university's book inventory and ordering system.

## Features

The application includes the following modules:

1. **Student Module**:
   - Create a new student account
   - Create a shopping cart
   - Place new book orders based on the cart
   - Create book reviews
   - Update cart contents
   - Cancel existing orders

2. **Customer Service Module**:
   - Create trouble tickets
   - Update ticket status and assign to an administrator

3. **Administrator Module**:
   - Create new books and add them to the system
   - Create new university departments
   - Manage course information

4. **Super Administrator Module**:
   - Create new customer service employee accounts
   - Manage existing administrator accounts

## Technologies Used

- Python
- SQLite3
- Pillow (Python Imaging Library)
- Tkinter (Python GUI toolkit)

## Installation and Setup

1. Install Python 3.12.1 or later from the official website: [https://www.python.org/downloads/release/python-3121/](https://www.python.org/downloads/release/python-3121/)
2. Open a terminal or command prompt and run the following commands:
   ```
   pip install pillow
   py main.py
   ```

If you encounter an error stating that you already have pip installed but it's not recognized, you may have multiple Python installations. In this case, remove the oldest Python installation and try running the commands again.

## Project Structure

The project files are organized as follows:

```
Book Fetch Application/
├── docs/
│   └── All Phases.pdf
├── src/
│   ├── admin.py
│   ├── book.py
│   ├── employee.py
│   ├── employee_login.py
│   ├── main.py
│   ├── student.py
│   ├── student_login.py
│   └── superadmin.py
└── sql/
    ├── create_tables.sql
    ├── delete_script.sql
    ├── drop_tables.sql
    ├── insert_data.sql
    └── Query1.sql
```

The `docs/` directory contains the project documentation, the `src/` directory holds the Python source files, and the `sql/` directory includes the SQL scripts for the database.

## Database Schema

The database schema includes the following tables:

- Courses
- Departments
- Instructors
- Categories
- Recommendations

The SQL scripts in the `sql/` directory provide the necessary instructions to create and populate the database.

## Usage

1. Run the `main.py` file to start the application.
2. The user can log in as a student, customer service representative, administrator, or super administrator, depending on their role.
3. Refer to the project documentation in the `docs/` directory for detailed instructions on using the various modules and features of the application.

## Contributing

If you would like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your branch to your forked repository.
5. Submit a pull request to the original repository.

## Video Walkthrough

If you would like to watch a video walkthrough of the application watch it here: https://www.youtube.com/watch?v=9ohoi_gBulE
