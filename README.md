# ATI-WEB


# ATI Website - Lecturer Portal


# Description
This repository contains the codebase for the lecturer portal of the ATI (Advanced Technology Institute) website. The portal allows lecturers to register, log in, access a dashboard, and perform functions reserved for lecturers.

# Functionalities
Registration Form (register.php):

Collects lecturer details including Name, Email, Designation, Course, Gender, and Password.
Course list is fetched from the Course table in the ATIWEB database.
Login Form (login.php):

Lecturers log in using their email address as the username.
Dashboard (dashboard.php):

Reserved functionalities for logged-in lecturers.
Displays lecturer's email address upon successful login.
Actual functionalities for lecturers are placeholders.
Logout (logout.php):

Allows lecturers to log out from their sessions.\

# Database
DBMS: MySQL
Database Name: ATIWEB
Tables
Lecturer Table:

LecID (Lecturer ID)
Name (Full Name)
Email
Designation
CourseID (Foreign key referencing Course table)
Gender
Password
Course Table:

CourseID
Title
TitleInShort
Description

# How to Use
Clone the repository.
Set up a MySQL database named ATIWEB.
Import the provided SQL files to create and populate the Lecturer and Course tables.
Configure the database connection in PHP files (register_process.php, login_process.php, etc.) with your database credentials.
Host the files on a server with PHP support.
Access the respective pages (register.php, login.php, dashboard.php) in a web browser.
# Note
The functionalities for lecturers in the dashboard are placeholders and require implementation.
Ensure to handle security measures like validating inputs, preventing SQL injection, and hashing passwords securely.

# License
This project is licensed under the [MIT License] License - see the LICENSE.md file for details.

Contributors
[HIMAS AHMED]
