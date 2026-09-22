<img width="932" height="440" alt="Screenshot 2026-09-16 001137" src="https://github.com/user-attachments/assets/b396963f-d857-4758-8ce5-07bb0dd52b2d" />

<img width="831" height="347" alt="Screenshot 2026-09-16 001204" src="https://github.com/user-attachments/assets/def337f5-8997-47b4-a658-b95b775024a7" />

<img width="842" height="354" alt="Screenshot 2026-09-16 001223" src="https://github.com/user-attachments/assets/97b6d895-cd20-4392-b341-73b7eb5a8f80" />

# Online Store Database & Analytics Project

## Overview
This project demonstrates the design, implementation, population, validation, and analysis of a relational online store database.
The project was developed as a practical Data Engineering and Data Analytics portfolio project using PostgreSQL, Docker, SQL, Python, Jupyter Notebook, DBeaver, and Metabase.
The workflow covers database design, data population, data validation, SQL analysis, and business intelligence visualization.

## -- Project Workflow
->Database Design
→ Schema Creation
→ Data Population
→ Data Validation
→ SQL Analysis
→ Metabase Visualization
-> Business Insights

## -- Technologies
- PostgreSQL 16 – Relational database
- Docker – Database containerization
- DBeaver – Database management and SQL development
- SQL – Data querying and analysis
- Python – Data processing and future ETL development
- Jupyter Notebook – Analysis and project documentation
- Metabase – Data visualization and dashboarding
- Git & GitHub – Version control

## -- Database
The online_store database contains six related tables:
Table	                             Description
categories	               Product categories and category hierarchy
customers	                 Registered customers
products	                 Products available for purchase
orders	                   Customer orders
order_items	               Products included in each order
reviews	                   Customer product reviews and ratings

## -- Data Inventory
Table	         Records
Categories	    10
Customers	      15
Products	      18
Orders	        15
Order Items	    27
Reviews	        13

## -- SQL Analysis
The project uses SQL to answer business questions related to:
Overall sales performance
Order status and fulfillment
Payment method usage
Revenue by city
Revenue by product and category
Product sales volume
Product profit margins
Customer spending and purchasing frequency
Customers without orders
Product ratings
Relationship between product ratings and sales

## -- SQL concepts demonstrated include:
JOIN
LEFT JOIN
GROUP BY
HAVING
CASE
CTEs
Window Functions
ROW_NUMBER()
PARTITION BY
Aggregate Functions
COALESCE()
CONCAT()
Views
Indexes

## -- Query performance analysis
Key Results
Metric	                    Result
Total Orders	               15
Total Revenue	               ₵43,300
Average Order Value	         ₵2,886.67
Largest Order	               ₵9,218
Delivery Rate	               66.67%
Customers Without Orders	   26.67%

## -- Key Findings
1. The store generated ₵43,300 across 15 orders.
2. The average order value was ₵2,886.67.
3. 66.67% of orders were delivered.
4. Card and Mobile Money were the most commonly used payment methods, each accounting for 46.67% of orders.
5. Accra recorded the highest number of orders, while Kumasi generated nearly the same revenue from fewer orders.
6. Laptops generated the highest category-level sales value, while Accessories recorded the highest unit sales.
7. 26.67% of customers had not placed an order.
8. Product ratings were generally positive, although the small number of reviews limits the strength of conclusions about the relationship between ratings and sales.


## -- Metabase Dashboard
Metabase was connected directly to the PostgreSQL database to create analytical questions and visualizations.
The dashboard focuses on:
Total Revenue
Total Orders
Average Order Value
Delivery Rate
Customers Without Orders
Revenue by Category
Revenue by City
Orders by Status
Payment Method Usage
Top Products
Top Customers

![Metabase Dashboard](Screenshots/Metabase_dashboard.png) 
Dashboard link is in the 'Metabase Analytics and Visualization.ipynb' in the notebook folder.
Also screenshots are available in the Screenshots/ folder.

## Repository structure
online-store-data-engineering/
│
├── README.md
├── .gitignore
│
├── Notebooks/
│   ├── Online_Store_Sales_Analysis.ipynb
│   └── Metabase Analytics and Visualization.ipynb
│
├── Screenshots/
│
└── sql/
    ├── schema.sql
    ├── data.sql
    └── analysis.sql

    
## -- Future Improvements
- Build a Python ETL pipeline
- Introduce incremental loading
- Add automated data-quality testing
- Implement dbt transformations
- Introduce Airflow orchestration
- Expand the dataset for more robust analysis
- Add inventory forecasting
- Implement customer segmentation
`
