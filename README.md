# Airbnb Relational Database (SQL)

**Course:** MSBX 5405  
**Focus:** Relational database design, SQL querying, and decision-support analytics  
**Tools:** SQL (MySQL), Beekeeper Studio

## Project Overview
This project designs and implements a relational database to support an Airbnb-style rental management system.  
The goal is to provide a structured backend that allows property managers to track rentals, renters, cleaners, contractors, and ownership status in order to support operational and decision-making workflows.

The database supports questions such as:
- Which renters are repeat customers?
- Which units are currently assigned cleaners?
- How much work and guest volume is assigned to each cleaner?
- How do managed units compare to owned units in booking activity?
- How much revenue has each contractor earned?

## Database Design
The schema was designed using normalized relational concepts including:
- Primary and foreign keys
- One-to-many and many-to-many relationships
- Self-referencing relationships (cleaner training hierarchy)
- Referential integrity constraints

An ER diagram illustrating the schema is included in the `diagrams/` folder.

## Schema
The database includes the following core entities:
- OWNER
- UNIT (owned or managed)
- CLEANER (with trainer relationship)
- RENTER (with multiple phone numbers)
- CONTRACTOR
- RENTS (booking records)
- FIXES (maintenance records)

Table creation scripts are located in `schema/create_tables.sql`.

## Sample SQL Queries
The `queries/` folder contains representative SQL queries demonstrating:
- JOINs across multiple tables
- GROUP BY and aggregation
- Conditional logic (CASE statements)
- Operational and analytical reporting queries

Each query includes comments describing its purpose and output.

## Notes
This project was completed as part of coursework.  
Data is synthetic and created for instructional purposes only.
