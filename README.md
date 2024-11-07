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

### Prerequisites
## Ruby version
Ensure you have **Ruby 3.2.2** or later installed to run the application.

## System dependencies
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

