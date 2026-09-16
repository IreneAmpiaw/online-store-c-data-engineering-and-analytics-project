Online Store Database & Analytics Project

-- Overview

This project demonstrates the design, implementation, population,
validation, and analysis of a relational online store database.

The project was developed as a practical Data Engineering project
using PostgreSQL, Docker, DBeaver, SQL, Python, Jupyter Notebook,
and Metabase.

-- Project Workflow

Database Design
→ Schema Creation
→ Data Population
→ Data Validation
→ SQL Analysis
→ Metabase Visualization

-- Technologies

- PostgreSQL 16
- Docker
- SQL
- DBeaver
- Metabase
- Python
- Jupyter Notebook
- Git & GitHub

-- Database Tables
The database contains six related tables:

- categories
- customers
- products
- orders
- order_items
- reviews

-- Data Inventory
| Table | Records |
|---|---:|
| Categories | 10 |
| Customers | 15 |
| Products | 18 |
| Orders | 15 |
| Order Items | 27 |
| Reviews | 13 |

-- Key Results
- Total Orders: 15
- Total Revenue: ₵43,300
- Average Order Value: ₵2,886.67
- Delivery Rate: 66.67%
- Customers Without Orders: 26.67%

-- SQL Skills Demonstrated
- JOINs
- LEFT JOINs
- GROUP BY
- HAVING
- CASE
- CTEs
- Window Functions
- ROW_NUMBER()
- PARTITION BY
- COALESCE()
- CONCAT()
- Aggregations
- Data validation
- Views
- Indexes
- Query performance analysis

-- Visualization
Metabase was connected directly to the PostgreSQL database to
create analytical questions and dashboard visualizations.

-- Future Improvements
- Build a Python ETL pipeline
- Introduce incremental loading
- Add automated data-quality testing
- Implement dbt transformations
- Introduce Airflow orchestration
- Expand the dataset for more robust analysis