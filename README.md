# The Blue Hut - Restaurant Management System

## Project Overview

The Restaurant Management System is a comprehensive solution designed to streamline restaurant operations, including table reservations, menu management, order processing, and billing. Built using PHP and MySQL, this system aims to enhance operational efficiency, improve customer satisfaction, and provide valuable insights through detailed reporting.

## Features

### Customer Features
- **Table Reservations**: Allows customers to view available tables and make reservations online.
- **Menu Browsing**: Enables customers to browse the restaurant's menu, including detailed descriptions and prices.
- **Order Placement**: Facilitates easy order placement with options to customize orders.
- **Order Tracking**: Provides real-time updates on order status.

### Admin Features
- **Menu Management**: Allows staff to add, update, and remove menu items.
- **Reservation Management**: Enables staff to view and manage table reservations.
- **Order Management**: Facilitates efficient order processing and tracking.
- **Billing and Invoicing**: Automates bill generation and supports multiple payment options.
- **Reporting and Analytics**: Generates detailed reports on sales, order trends, and customer preferences.

## Technology Stack
- **Backend**: PHP
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL

## Installation

### Prerequisites
- PHP 7.4 or higher
- MySQL 5.7 or higher
- Apache HTTP Server 2.4 or higher
- Web browser (Chrome, Firefox, etc.)

### Steps
1. **Clone the Repository**
   ```sh
   git clone https://github.com/Jayanthsai08/The-Blue-Hut-Restaurant-Management-System.git
   cd restaurant-management-system
2. **Setup the Database**
   - Create a new MySQL database.
   - Import the provided SQL file (`new-food-order.sql`) into the database.
     ```sh
     mysql -u username -p database_name < new-food-order.sql
     ```
3. **Configure the Application**
   - Update the database configuration in `config.php`.
     ```php
     define('DB_SERVER', 'localhost');
     define('DB_USERNAME', 'your_username');
     define('DB_PASSWORD', 'your_password');
     define('DB_NAME', 'your_database_name');
     ```
4. **Start the Server**
   - Ensure the Apache server is running and the project directory is accessible.
   - Open the project in your web browser.
     ```sh
     http://localhost/restaurant
     ```
## Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a pull request.


## Contact
For any questions or feedback, please contact [jayanthsaichethan@gmail.com](mailto:jayanthsaichethan@gmail.com).
