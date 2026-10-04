# credit_card_customer_revenue_analytics
End-to-end Credit Card Customer &amp; Revenue Analytics project using Excel, Python, MySQL, and Power BI to analyze customer segments, card performance, revenue, spending behavior, and risk.

🎯 Business Objective

Credit card companies need to understand:

Which customer segments generate the most revenue?
Which card types perform best?
Which customers generate the highest value?
How does customer risk relate to revenue?
How do credit limits and spending behavior interact?
Which customer groups could represent growth or risk opportunities?

This project answers these questions using customer-level credit card and revenue data.

🛠️ Tools & Technologies
| Tool                   | Purpose                                            |
| ---------------------- | -------------------------------------------------- |
| 🐍 **Python / Pandas** | Data cleaning, validation and exploratory analysis |
| 📗 **Excel**           | Data validation and quality checks                 |
| 🗄️ **MySQL**          | Business analysis and SQL queries                  |
| 📊 **Power BI**        | Interactive dashboards and visualization           |
| 🐙 **GitHub**          | Project version control and documentation          |


Raw Dataset (synthetic dataset)
     ↓
Python / Pandas
     ↓
Data Cleaning & Validation
     ↓
Excel Quality Checks
     ↓
MySQL Business Analysis
     ↓
Power BI Dashboard
     ↓
Business Insights

📁 Project Structure

credit_card_customer_revenue_analytics/
│
├── data/
│   └── credit_card_customer_revenue_analytics_35000.xlsx
│
├── python/
│   └── data_cleaning.py
│
├── sql/
│   └── credit_card_analysis.sql
│
├── powerbi/
│   └── Credit_Card_Revenue_Analytics.pbix
│
├── .gitignore
├── LICENSE
└── README.md


🔍 Analysis Performed
1. Customer Segment Analysis

Analyzed customer segments based on:

.Customer count
.Average income
.Monthly spending
.Monthly revenue
.Average revenue
.Net annual revenue

Key insight: Mass Market customers represent the largest customer base and generate the highest total revenue, while High Net Worth customers generate the highest average revenue per customer.

2. Card Type Performance

Compared:

.Customer count
.Average credit limit
.Total spending
.Average spending
.Total revenue
.Average revenue

Key insight: Gold has the largest customer base and highest total revenue, while Infinite customers generate the highest average revenue per customer.


3. Customer Revenue Analysis

Identified the Top 10 customers by Net Annual Revenue.

The analysis considers:

.Customer segment
.Card type
.Annual income
.Credit limit
.Monthly spending
.Credit utilization
.Risk band
.Net annual revenue

This helps identify high-value customers who may deserve targeted retention and relationship-management strategies.


4. Risk & Revenue Analysis

Analyzed customer risk bands using:

.Credit score
.Credit utilization
.Monthly spending
.Late payment frequency
.Total net revenue
.Average net revenue

Key insight: Very High Risk customers have the lowest average credit scores but the highest average net revenue per customer, highlighting a potential trade-off between customer value and credit risk.


5. Customer & Card Analytics

Additional analysis includes:

.Revenue by customer segment
.Average revenue by card type
.Average monthly spending by card type
.Credit limit vs. monthly spending
.Customer distribution by card type
.Top revenue-generating customers




📊 Power BI Dashboard

The Power BI dashboard is organized into multiple analytical views.

Page 1 — Executive Overview

Provides a high-level view of:

-Total Customers
-Total Monthly Revenue
-Total Net Annual Revenue
-Average Credit Limit
-Average Monthly Spend
-Customer Distribution by Risk Band
-Revenue by Customer Segment
-Revenue by Card Type


Page 2 — Customer & Card Analytics

Focuses on:

-Top 10 Customers by Net Annual Revenue
-Revenue by Customer Segment
-Average Revenue by Card Type
-Average Monthly Spend by Card Type
-Credit Limit vs Monthly Spend
-Customer Distribution by Card Type


Page 3 — Risk Analytics

Focuses on:

-Net Revenue by Risk Band
-Customer Distribution by Risk Band
-Average Credit Score by Risk Band
-Average Credit Utilization by Risk Band
-Average Late Payments by Risk Band
-Average Net Revenue per Customer by Risk Band





💡 Key Business Insights

Customer Segments:

Mass Market customers form the largest customer base and contribute the highest overall revenue due to their volume.

Card Performance:

Gold cards generate the highest total revenue, while Infinite cards have the highest average revenue per customer.

Customer Value:

A relatively small group of high-value customers contributes significant net revenue, making customer retention an important business opportunity.

Risk:

Higher-risk customers can still generate substantial revenue. Therefore, revenue optimization should be balanced with appropriate risk management.

Spending Behavior:

Credit limit and monthly spending provide useful indicators for understanding customer engagement and potential opportunities for credit-product optimization.




🧹 Data Preparation

The dataset was validated before analysis using Python and Excel.

Data quality checks included:

* Missing value detection
* Duplicate row detection
* Duplicate Customer ID detection
* Data type validation
* Numerical range validation
* Categorical value consistency
* Date validation
* Revenue and cost validation

Negative net revenue values were retained where applicable because they can represent customers whose costs, such as cashback, exceed generated revenue.



🗄️ MySQL Analysis

The SQL analysis includes queries for:

Customer Segment Revenue
Card Type Performance
Top 10 Customers
Risk & Revenue Analysis
Customer Segment Value

The SQL script also contains the database and table creation statements required to reproduce the analysis.



🐍 Python Analysis

Python/Pandas was used for:

Loading the dataset
Inspecting the dataset structure
Checking missing values
Detecting duplicates
Validating Customer IDs
Exploring categorical variables
Generating descriptive statistics
Performing grouped revenue and risk analysis



📈 Skills Demonstrated

This project demonstrates practical experience with:

1. Data Cleaning
2. Exploratory Data Analysis
3. Business Analytics
4. SQL
5. MySQL
6. Python
7. Pandas
8. Excel
9. Power BI
10. Data Visualization
11. KPI Analysis
12. Customer Segmentation
13. Revenue Analysis
14. Risk Analysis
16. Business Intelligence


📌 Dataset

This project uses a synthetic credit card customer dataset created for portfolio and analytics practice purposes.

The dataset contains customer, credit, spending, revenue, risk, and churn-related attributes.

It should not be interpreted as real customer or financial institution data.



🚀 Business Recommendations

Based on the analysis, a credit card business could:

Focus retention efforts on high-value customers with strong net revenue contribution.
Develop targeted strategies for premium card customers based on their higher average revenue.
Monitor high-risk high-value customers carefully to balance revenue opportunities with credit risk.
Use spending and credit utilization patterns to identify opportunities for personalized credit-limit strategies.
Segment marketing campaigns according to customer value, card type, and risk profile.
👨‍💻 About This Project

This project was created as part of my data analytics portfolio to demonstrate an end-to-end workflow using Python, Excel, MySQL, and Power BI.

The goal was not simply to create charts, but to transform raw customer data into actionable business insights.




👨‍💻 About This Project:

This project was created as part of my data analytics portfolio to demonstrate an end-to-end workflow using Python, Excel, MySQL, and Power BI.
The goal was not simply to create charts, but to transform raw customer data into actionable business insights.


📌 Key Results

- Analyzed 35,000 credit card customers
- Identified the highest-value customer segments
- Compared performance across 5 card types
- Identified top revenue-generating customers
- Analyzed revenue across 5 risk bands
- Built a 3-page Power BI analytical dashboard



✨A Little Sneak-peak:

Executive Overview:
(screenshots/Executive Overview.jpg)


















