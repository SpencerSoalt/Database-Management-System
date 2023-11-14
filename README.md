# Database Management System & Analysis

## Table of Contents

- [Introduction](#introduction)
- [Database Features](#database-features)
    - [Employee Management](#employee-management)
    - [Customer & Order Management](#customer--order-management)
    - [Inventory & Transactional Data](#inventory--transactional-data)
- [Data Modeling](#entity-relationship-diagram--relational-model)
    - [Entity-Relationship Diagram (ERD)](#entity-relationship-diagram-erd)
    - [Relational Model](#relational-model)
- [Technical Overview](#technical-overview)
    - [Library Dependencies](#library-dependencies)
    - [Database Structure & Connection](#database-structure--connection)
    - [Utility Functions](#utility-functions)
    - [Data Visualizations](#data-visualizations)
    - [Datapane Integration](#datapane-integration)
- [Benefits & Use Cases](#benefits--use-cases)
- [Getting Started & Usage](#getting-started--usage)

---

## Introduction

This Database project is a comprehensive data management solution tailored for coffee shop businesses. By centralizing data related to employees, inventory, orders, and transactions, this system seeks to streamline operations, enhance customer experience, and provide actionable insights for business growth.

---

## Database Features

### Employee Management

- **Comprehensive Records**: Store details of all employees, capturing their tenure, roles, and performance metrics.
- **Role-Based Access**: Classify employees as managers, cashiers, or baristas, allowing for tailored access and responsibilities.
- **Assignment & Reporting**: Assign employees to specific branches and visualize hierarchical reporting structures.

### Customer & Order Management

- **Account Creation**: Allow customers to create personal accounts for a more tailored ordering experience.
- **Order History**: Customers can review their past orders, ensuring transparency and fostering trust.
- **Payment Methods**: Track multiple payment methods, ensuring flexibility and convenience for customers.

### Inventory & Transactional Data

- **Real-Time Monitoring**: Real-time updates on inventory levels across different locations.
- **Predictive Analytics**: Use past transactional data to forecast inventory needs and optimize stock levels.
- **Personalized Marketing**: Analyze purchase histories to craft personalized offers, discounts, and recommendations.

---

## Data Modeling

The backbone ofthedatabase design is the Entity-Relationship Diagram (ERD) and the subsequent relational model derived from it. These tools provide a visual representation of the logical structure ofthedatabase, ensuring clarity in design and facilitating efficient database queries.

### Entity-Relationship Diagram (ERD)

The ERD visually represents the relationships between different entities (tables) inthedatabase. It provides a clear picture of how data tables relate and interact with one another.

**Diagram**:
![ERD Image](https://github.com/SpencerSoalt/Database-Management-System/blob/main/Diagrams/ERD.png)

### Relational Model

Post the ERD design, I transitioned to the relational model, which is a more detailed and structured representation ofthedatabase. This model incorporates primary keys, foreign keys, and the specific types of relationships (one-to-one, one-to-many, many-to-many) between tables.

**Diagram**:
![Relational Model Image](https://github.com/SpencerSoalt/Database-Management-System/blob/main/Diagrams/Relational%20Model.png)

**Key Points**:
- **Primary Keys**: Every table has a unique primary key, ensuring each record can be distinctly identified.
- **Foreign Keys**: These are columns in one table that uniquely identify rows of another table, establishing relationships.
- **Relationship Types**: The arrows and lines in the relational model image denote the type and direction of the relationship between tables.

To understandthedatabase's structure, flow, and interdependencies, both the ERD and the relational model diagrams should be referred to concurrently.

---

## Technical Overview

### Database Structure & Connection

The project utilizes the SQLite database system, with the database file named 'MIS 380 Term Project.db'. The provided utility functions facilitate easy connection, query execution, and data retrieval.

### Library Dependencies

Ensure the following Python libraries are installed for smooth execution:

- **pandas**: For data manipulation and analysis.
- **numpy**: For numerical operations.
- **datapane**: For publishing Python data analyses.
- **plotly**: For interactive data visualizations.
- **sqlite3**: For SQLite database interactions.

### Utility Functions

- `run_query()`: A versatile function to run any SQL query and fetch results in a pandas DataFrame.
- `run_command()`: Execute database commands, especially useful for data insertions, updates, and deletions.
- `show_tables()`: Get a quick snapshot of all tables and views present in the database.
- `get_table_row_count()`: Obtain row count for a specific table, useful for monitoring data growth.

### Data Visualizations

Harness the power of `plotly` to generate:

- **Orders per Store**: Analyze the order distribution across different branches.
- **Orders per Cashier**: Understand the performance and efficiency of each cashier.

### Datapane Integration

The project is integrated with Datapane to allow for publishing and sharing of analyses. Ensure you have an appropriate token for authentication.

---

## Benefits & Use Cases

The database system offers manifold benefits:

- **Operational Efficiency**: Speed up order processing and reduce redundancy.
- **Enhanced Customer Experience**: Provide customers with a user-friendly platform to place and track orders.
- **Data-Driven Decisions**: Equip managers with the data needed to make informed business decisions.
- **Centralized Management**: A unified database for both online and in-store orders.

---

## Getting Started & Usage

1. Clone the repository to your local machine.
2. Install the required Python libraries.
3. Set up the SQLite database connection.
4. Execute the Jupyter notebook to explore, analyze, and visualize the data.
5. Integrate with Datapane if needed, for publishing and sharing.

---
