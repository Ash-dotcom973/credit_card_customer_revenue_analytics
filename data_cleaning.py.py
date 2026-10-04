import pandas as pd

df = pd.read_csv("credit_card_customer_revenue_analytics_35000.csv")

print(df.shape)
print(df.head())
print(df.columns)

df.info()

print(df.isnull().sum())

print("Duplicate rows:", df.duplicated().sum())

print("Duplicate Customer IDs:", df["Customer_ID"].duplicated().sum())

print(df.describe())

df = pd.read_csv("credit_card_customer_revenue_analytics_35000.csv")
print (df.isnull().sum())
print("Duplicate rows:", df.duplicated().sum())
print("Duplicate Customer IDs:", df["Customer_ID"].duplicated().sum())

print(df["Employment_Type"].unique())
print(df["Card_Type"].unique())
print(df["Customer_Segment"].unique())
print(df.describe())

segment_analysis = df.groupby("Customer_Segment").agg(
    Customer_Count=("Customer_ID", "count"),
    Average_Income=("Annual_Income", "mean"),
    Average_Spend=("Monthly_Spend", "mean")
)

print(segment_analysis)

print(df.columns.tolist())

segment_analysis = df.groupby("Customer_Segment").agg(
    Customer_Count=("Customer_ID", "count"),
    Average_Income=("Annual_Income", "mean"),
    Average_Spend=("Monthly_Spend", "mean"),
    Total_Revenue=("Monthly_Revenue", "sum"),
    Average_Revenue=("Monthly_Revenue", "mean")
)

print(segment_analysis)

segment_analysis = segment_analysis.sort_values(
    "Total_Revenue",
    ascending=False
)

print(segment_analysis.round(2))

card_analysis = df.groupby("Card_Type").agg(
    Customer_Count=("Customer_ID", "count"),
    Average_Credit_Limit=("Credit_Limit", "mean"),
    Total_Spend=("Monthly_Spend", "sum"),
    Average_Spend=("Monthly_Spend", "mean"),
    Total_Revenue=("Monthly_Revenue", "sum"),
    Average_Revenue=("Monthly_Revenue", "mean")
)

print(card_analysis.round(2))
card_analysis = card_analysis.sort_values(
    "Total_Revenue",    
ascending=False
)
print(card_analysis.round(2))

print(df.columns.tolist())
top_10_customers = df[["Customer_ID","Customer_Segment","Card_Type","Annual_Income","Credit_Limit","Monthly_Spend","Credit_Utilization_Percent", "Risk_Band","Net_Annual_Revenue"]
                      
].sort_values(
    "Net_Annual_Revenue",
    ascending=False
).head(10)

print(top_10_customers.to_string(index=False))

risk_analysis =df.groupby("Risk_Band").agg(
    Customer_Count=("Customer_ID", "count"),
    Average_Credit_Score=("Credit_Score", "mean"),
    Average_Utilization=("Credit_Utilization_Percent", "mean"),
    Average_Monthly_Spend=("Monthly_Spend", "mean"),
    Average_late_Payments=("Late_Payment_Count", "mean"),
    Total_Net_Revenue=("Net_Annual_Revenue", "sum"),
    Average_Net_Revenue=("Net_Annual_Revenue", "mean")
)
print(risk_analysis.round(2))
risk_analysis = risk_analysis.sort_values(
    "Total_Net_Revenue",    
ascending=False
)
print(risk_analysis.round(2))

