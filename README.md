📖 Project Overview
This project focuses on analyzing historical pizza sales data to uncover key business insights related to revenue, customer ordering behavior, product performance, and time-based sales trends. The analysis was performed using MS SQL Server for data querying and Microsoft Excel for data cleaning, visualization, and dashboard creation.
The final output is an interactive Excel dashboard that enables quick and data-driven decision-making.

🎯 Objectives
Analyze key performance indicators (KPIs) to evaluate overall sales performance
Identify daily and hourly order trends
Understand customer preferences by pizza category and size
Highlight top-performing and underperforming pizza products
Support business decisions related to menu optimization and demand planning

🗂 Dataset Description
The dataset contains detailed information about pizza sales transactions, including order details, pizza attributes, pricing, and timestamps.
Key Data Components:
Orders: Order ID, order date, and order time
Order Details: Pizza name, quantity sold, and total price
Pizza Types: Pizza category and ingredients
Pizza Sizes: Small, Medium, Large, X-Large, XX-Large

🛠 Tools & Technologies
MS SQL Server – Data loading, KPI calculations, trend analysis
Microsoft Excel – Data cleaning, feature engineering, pivot tables, charts, and dashboard creation

🔄 Workflow & Methodology
1. Data Loading & Exploration
Loaded the dataset into MS SQL Server
Reviewed key columns and metrics such as order date, order time, quantity, and total price
2. KPI Analysis (SQL)
Total Revenue
Average Order Value
Total Orders
Total Pizzas Sold
Average Pizzas per Order
3. Trend & Performance Analysis (SQL)
Daily trend for total orders
Hourly trend for total orders
Percentage of sales by pizza category
Percentage of sales by pizza size
Top 5 best-selling pizzas
Bottom 5 worst-selling pizzas
Time-based filters (Month / Quarter) were applied using WHERE clauses.

🧹 Data Cleaning & Feature Engineering (Excel)
Standardized pizza size values (S → Small, L → Large, XL → X-Large)
Created Order Day column using TEXT(order_date,"dddd")
Created Total Orders calculated field using 1/COUNTIF(order_id, order_id)
Ensured consistency before visualization

📊 Visualizations & Dashboard
The Excel dashboard includes:
KPI summary cards
Daily trend of total orders
Hourly trend of total orders
Sales distribution by pizza category and size
Funnel chart for pizzas sold by category
Top 5 and Bottom 5 pizza performance charts

🔍 Key Insights
Weekend days generate higher order volumes
Lunch and dinner hours are peak ordering periods
Large and Medium pizzas contribute most to revenue
A small set of pizzas drives a major share of total sales
Low-performing pizzas present opportunities for menu optimization



This project demonstrates how SQL and Excel can be effectively used together to transform raw sales data into actionable business insights through structured analysis and visualization.
