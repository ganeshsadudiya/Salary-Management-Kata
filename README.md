# README
# Salary Management API

This README would normally document whatever steps are necessary to get the
application up and running.
A Rails API for managing employee salary information and calculations.

Things you may want to cover:
## Setup

* Ruby version
### Prerequisites
- Ruby 3.x
- SQLite3

* System dependencies
### Installation

* Configuration
```bash
# Clone the repository
git clone <https://github.com/ganeshsadudiya/Salary-Management-Kata.git>
cd salary_management_api

* Database creation
# Install dependencies
bundle install

* Database initialization
# Setup database
bin/rails db:migrate
```

* How to run the test suite
## Running the Application

* Services (job queues, cache servers, search engines, etc.)
```bash
bin/rails server
```

* Deployment instructions
The API will be available at `http://localhost:3000`

* ...
## Running Tests

```bash
# Run all tests
bundle exec rspec

# Run specific test file
bundle exec rspec spec/requests/employees_spec.rb

# Run with verbose output
bundle exec rspec --format documentation
```

## API Endpoints

- `POST /employees` - Create employee
- `GET /employees/:id` - Get employee details
- `PATCH /employees/:id` - Update employee
- `DELETE /employees/:id` - Delete employee
- `GET /employees/:id/salary` - Get salary
- `GET /employees/salary_metrics` - Get salary metrics
## Database

SQLite database is stored in `storage/` directory:
- `storage/development.sqlite3` - Development database
- `storage/test.sqlite3` - Test database

```