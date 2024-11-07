# Teacher Portal

> This README outlines the steps necessary to get the Teacher Portal application up and running. 
> Click :star: if you like the project. Pull Requests are highly appreciated. Connect with me [@AjithReddy](https://www.linkedin.com/in/ajith-reddy-b75604185/)


### Project Overview
This Ruby on Rails application allows teachers to manage students and their details, including name, subject, and marks. It includes authentication functionality, student list with edit and delete options, and pagination for easier navigation. The project uses Tailwind CSS for modern, responsive styling and integrates a simple modal interface for adding new teachers and students.

### Features
 - **Teacher Management:** Ability to add new teachers and ensure teacher names are unique before creation.
 - **Student Management:** Ability to add new students and ensure student names are unique before creation.
 - **Edit & Delete Options:** Teachers and students can be edited or deleted.
 - **Pagination:** Display students and teachers with pagination for better navigation.
 - **Modal Interface:** New teacher and student creation is handled through a modal form.
 - **Validation:** Form validation for required fields and marks (ensuring marks are out of 100).
 - **Teacher Id & Student ID Generation:** Automatically generates unique teacher & student IDs before saving the data.
 - **Responsive Design:** Tailwind CSS is used to ensure the application is mobile-friendly and visually appealing.
 - **Security Best Practices:** Application ensures secure data handling by implementing input validation and other security measures.

## Prerequisites
### Ruby version
Ensure you have **Ruby 3.2.2** or later installed to run the application.

### System dependencies
- **Rails 7.x** or later
- **Node.js** for managing JavaScript assets
- **Yarn** for managing front-end dependencies
- **PostgreSQL** (or **SQLite3**, depending on your setup) as the database

You can install required dependencies by running the following commands:

```ruby
bundle install      # Install Ruby gems
yarn install        # Install JavaScript packages
```
### Getting Started Locally
1. **Clone the Repository**
   First, clone this repository to your local machine:
```ruby
git clone https://github.com/your-username/teacher-portal.git
cd teacher-portal
```
3. **Install Dependencies**
Run the following commands to install all necessary dependencies:
```ruby
bundle install      # Install Ruby gems
yarn install        # Install JavaScript packages
```
5. **Set Up the Database**
Create and migrate the database:
```ruby
rails db:create     # Create the database
rails db:migrate    # Apply migrations
rails db:seed       # Seed the database with initial data (optional)
```
7. **Run the Server**
Start the Rails development server:
```ruby
rails server
```
Visit http://localhost:3000 in your browser to see the application in action.

## Tailwind CSS Setup
This project uses Tailwind CSS for responsive and utility-first styling. Tailwind is fully integrated and can be customized through the tailwind.config.js file.

## Folder Structure
   - `app/controllers`: Handles all requests related to teachers and students.
   - `app/models`: Contains the Teacher and Student models.
   - `app/views`: Includes views for listing, adding, and editing teachers and students.
   - `db/migrate`: Contains database migration files for teacher and student tables.
   - `config`: Includes Rails configuration files.
   - `public`: Contains static assets.
## Security Best Practices
   - Input validation is implemented to prevent invalid or malicious data entry.
   - Data encryption is in place to protect sensitive user data.
   - Security headers are configured to prevent common vulnerabilities such as XSS and CSRF attacks.

### Login Process for Teachers (via Rails Console)
## Step 1: Create a Teacher Using Rails Console
To create a new teacher, first open the Rails console:
```ruby
rails console
```
Next, create a new teacher record by providing the teacher's name and password. In this example, replace "teacher_name" and "password" with the desired teacher's name and password:
```ruby
teacher = Teacher.new(name: "teacher_name", password: "password")
teacher.save
```
This will create a new teacher and save it to the database. The teacher_id will be automatically generated upon saving the teacher.
## Step 2: Find the Teacher's `teacher_id`
After saving the teacher, you can retrieve the teacher_id by running the following command:
```ruby
teacher.teacher_id
```
## Step 3: Login Using teacher_id and Password
Once the teacher is created, you can use the generated `teacher_id` and the password to log in to the application. For the first login attempt, use the `teacher_id` and the password you've set while creating the teacher.

In login form, enter the `teacher_id` as the username and the password to log in to the application.

**Example:**
  - Username: The teacher_id generated for the teacher.
  - Password: The password you set when creating the teacher.

*This will authenticate the teacher and grant them access to the Teacher Portal application.*
