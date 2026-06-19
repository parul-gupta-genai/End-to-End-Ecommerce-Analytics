# End-to-End-Ecommerce-Analytics
An end-to-end Ecommerce Analytics project using SQL Server, Power BI, Excel, Python, Pandas, Matplotlib, and Seaborn to analyze sales performance, customer behavior, payment trends, inventory risks, and business KPIs through interactive dashboards and data-driven insights. 
🛒 Ecommerce Analytics Dashboard
📌 Project Overview
The Ecommerce Analytics Dashboard is an end-to-end data analytics project designed to analyze sales performance, customer behavior, product performance, payment trends, and business KPIs. The project uses Python for ETL and analysis, and Power BI for interactive dashboarding and reporting.
The dashboard helps stakeholders make data-driven decisions by providing insights into revenue growth, customer trends, inventory risks, payment performance, and product sales.
________________________________________
🎯 Business Objectives
This project answers the following business questions:
1.	What is the total revenue and number of orders? 
2.	How many customers are registered? 
3.	Which product category performs best? 
4.	Which products generate the highest sales? 
5.	Which city has the most customers? 
6.	Which payment method is used most? 
7.	What is the payment success rate? 
8.	What is the average order value (AOV)? 
9.	How is revenue changing over time? 
10.	Which products are at risk of stockout? 
________________________________________
📂 Dataset Information
The project consists of the following tables:
Customers
Column
CustomerID
CustomerName
Email
MobileNo
City
Country
RegistrationDate
Orders
Column
OrderID
CustomerID
OrderDate
TotalAmount
OrderDetails
Column
OrderDetailID
OrderID
ProductID
Quantity
UnitPrice
Products
Column
ProductID
ProductName
Category
Price
Stock
Rating
CreatedDate
Payments
Column
PaymentID
OrderID
PaymentMethod
PaymentStatus
PaymentDate
KPI Summary
Column
KPIID
ReportDate
TotalRevenue
TotalOrders
TotalCustomers
AvgOrderValue
________________________________________
🔄 ETL Process
Extract
•	Loaded Excel datasets into Pandas DataFrames. 
Transform
•	Cleaned missing values. 
•	Removed duplicate records. 
•	Converted date fields to datetime format. 
•	Validated primary and foreign keys. 
•	Generated business KPIs. 
•	Created aggregated metrics. 
Load
•	Loaded transformed data into analytical models and Power BI dashboards. 
________________________________________
🛠️ Technologies Used
Tool	Purpose
Python	Data Analysis
Pandas	Data Cleaning & Transformation
NumPy	Numerical Operations
Matplotlib	Data Visualization
Seaborn	Statistical Visualization
Power BI	Dashboard Development
SQL	Data Modeling & Queries
Jupyter Notebook	Analysis Environment
________________________________________
📊 Key KPIs
KPI	Value
Total Revenue	₹13,59,120
Total Orders	70
Total Customers	60
Average Order Value	₹19,416
Payment Success Rate	80%
Peak Revenue Day	18-Jun-2026
Peak Revenue	₹107,320
________________________________________
📈 Key Findings
Revenue Performance
•	Generated total revenue of ₹13.59 lakh. 
•	Revenue showed an upward trend from January to June 2025. 
•	Highest daily revenue reached ₹107,320. 
Product Performance
•	Electronics emerged as the best-performing category. 
•	Samsung Galaxy S24 was the top-selling product. 
•	Premium electronics contributed significantly to sales. 
Customer Analysis
•	60 registered customers. 
•	Customer base distributed across multiple cities. 
•	Ahmedabad, Delhi, Noida, Jaipur, Lucknow, Pune, and Mumbai were among the top customer locations. 
Payment Analysis
•	UPI was the most preferred payment method. 
•	80% payment success rate achieved. 
•	Opportunities exist to reduce failed and pending payments. 
Inventory Analysis
•	Sony Soundbar 
•	Brother Printer 
•	Apple MacBook Air 
•	Table 
These products have the lowest stock levels and require replenishment planning.
________________________________________
🔗 Data Model
Relationships used in the project:
•	Customers → Orders (1:M) 
•	Orders → OrderDetails (1:M) 
•	Products → OrderDetails (1:M) 
•	Orders → Payments (1:M) 
OrderDetails acts as the bridge table between Orders and Products.
________________________________________
📊 Dashboard Pages
Executive Overview
•	Revenue KPIs 
•	Order Metrics 
•	Customer Metrics 
•	Payment Summary 
Sales Analysis
•	Revenue Trends 
•	Category Performance 
•	Product Performance 
Customer & Product Analysis
•	Customer Distribution 
•	Product Insights 
Payment Analytics
•	Payment Method Distribution 
•	Payment Success Analysis 
________________________________________
💼 Business Impact
This dashboard provides:
✅ Revenue monitoring and growth analysis
✅ Product performance tracking
✅ Inventory risk identification
✅ Customer behavior insights
✅ Payment trend monitoring
✅ Data-driven business decision support
________________________________________
🚀 Future Enhancements
•	Real-time dashboard integration 
•	Customer segmentation analysis 
•	Sales forecasting using Machine Learning 
•	Inventory demand prediction 
•	Customer Lifetime Value (CLV) analysis 
________________________________________
👩‍💻 Author
Parul Gupta
Project: Ecommerce Analytics Dashboard
Tools: Python | Pandas | NumPy | Matplotlib | Seaborn | Power BI | SQL

