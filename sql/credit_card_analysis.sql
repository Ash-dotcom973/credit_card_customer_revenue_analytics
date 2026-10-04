CREATE DATABASE credit_card_analytics;

USE credit_card_analytics;
CREATE TABLE credit_card_customers (
    row_index INT,
    Customer_ID VARCHAR(20) PRIMARY KEY,
    Age INT,
    Employment_Type VARCHAR(50),
    City VARCHAR(50),
    Annual_Income DECIMAL(12,2),
    Credit_Score INT,
    Card_Type VARCHAR(30),
    Customer_Segment VARCHAR(50),
    Acquisition_Channel VARCHAR(50),
    Tenure_Months INT,
    Credit_Limit DECIMAL(12,2),
    Monthly_Transactions INT,
    Monthly_Spend DECIMAL(12,2),
    Credit_Utilization_Percent DECIMAL(6,2),
    Payment_Ratio DECIMAL(6,2),
    Late_Payment_Count INT,
    Interchange_Revenue DECIMAL(12,2),
    Interest_Revenue DECIMAL(12,2),
    Late_Fee_Revenue DECIMAL(12,2),
    Annual_Fee_Revenue DECIMAL(12,2),
    Monthly_Revenue DECIMAL(12,2),
    Annual_Revenue DECIMAL(12,2),
    Cashback_Cost DECIMAL(12,2),
    Net_Monthly_Revenue DECIMAL(12,2),
    Net_Annual_Revenue DECIMAL(12,2),
    Risk_Band VARCHAR(30),
    Churn_Status VARCHAR(30),
    Customer_Since DATE
);


SELECT COUNT(*) AS total_rows
FROM credit_card_customers;

SELECT *
FROM credit_card_customers
LIMIT 10;

SELECT
		Customer_Segment,
        COUNT(Customer_ID) AS Customer_count,
        round(AVG(Annual_Income), 2) AS Average_Income,
        round(AVG(Monthly_Spend), 2) AS Average_Spend,
        round(SUM(Monthly_Revenue), 2) AS Total_Revenue,
        round(AVG(Monthly_Revenue), 2) As Average_Revenue
FROM credit_card_customers
GROUP BY Customer_Segment
ORDER BY Total_Revenue DESC;

SELECT
		Customer_Segment,
        COUNT(Customer_ID) AS Customer_count,
        round(SUM(Monthly_Revenue), 2) AS Total_Revenue,
        round(AVG(Monthly_Revenue), 2) As Average_Revenue
FROM credit_card_customers
GROUP BY Customer_Segment
ORDER BY Total_Revenue DESC;


SELECT
		card_type,
        COUNT(Customer_ID) AS Customer_count,
        round(AVG(Credit_Limit), 2) AS Average_Credit_Limit,
        round(AVG(Monthly_Spend), 2) AS Total_Spend,
        round(AVG(Monthly_Spend), 2) AS Average_Spend,
        round(SUM(Monthly_Revenue), 2) AS Total_Revenue,
        round(AVG(Monthly_Revenue), 2) As Average_Revenue
FROM credit_card_customers
GROUP BY Card_Type
ORDER BY Total_Revenue DESC;

SELECT
	Customer_ID,
    Customer_Segment,
    Card_Type,
    Annual_Income,
    Credit_limit,
    Monthly_Spend,
    Credit_Utilization_Percent,
    Risk_Band,
    Net_Annual_Revenue
FROM credit_card_customers
ORDER BY Net_Annual_Revenue DESC
LIMIT 10;


SELECT
		Risk_Band,
        COUNT(Customer_ID) AS Customer_count,
        round(AVG(Credit_Score), 2) AS Average_Credit_Score,
        round(AVG(Credit_Utilization_Percent), 2) Average_Utilization,
        round(AVG(Monthly_Spend), 2) AS Average_Monthly_Spend,
        round(AVG(Late_payment_count), 2) As Avergae_Late_Payments,
        round(SUM(Net_Annual_Revenue), 2) AS Total_Net_Revenue,
        round(AVG(Net_Annual_Revenue), 2) As Average_Net_Revenue
FROM credit_card_customers
GROUP BY Risk_Band
ORDER BY Total_Net_Revenue DESC;

SELECT
		Customer_Segment,
        COUNT(Customer_ID) AS Customer_count,
        round(AVG(Annual_Income), 2) AS Average_Income,
        round(AVG(Monthly_Spend), 2) AS Average_Monthly_Spend,
        round(AVG(Monthly_Revenue), 2) As Average_Monthly_Revenue,
        round(AVG(Net_Annual_Revenue), 2) As Average_Net_Annual_Revenue,
         round(SUM(Monthly_Revenue), 2) AS Total_Revenue
FROM credit_card_customers
GROUP BY Customer_Segment
ORDER BY Average_Net_Annual_Revenue DESC;



