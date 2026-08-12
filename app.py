import streamlit as st
import pandas as pd
import plotly.express as px

st.set_page_config(
    page_title="European Bank Customer Churn",
    page_icon="🏦",
    layout="wide"
)

# Load data
df = pd.read_csv("European_Bank_Cleaned.csv")

# Title
st.title("🏦 European Bank Customer Churn Analysis")
st.write("Interactive analysis of customer churn, demographics and financial characteristics.")

# -------------------------
# KPIs
# -------------------------

total_customers = len(df)
churned_customers = int(df["Exited"].sum())
retained_customers = total_customers - churned_customers
churn_rate = churned_customers / total_customers * 100

col1, col2, col3, col4 = st.columns(4)

col1.metric("Total Customers", f"{total_customers:,}")
col2.metric("Churned Customers", f"{churned_customers:,}")
col3.metric("Retained Customers", f"{retained_customers:,}")
col4.metric("Churn Rate", f"{churn_rate:.2f}%")

st.divider()

# -------------------------
# Filters
# -------------------------

st.sidebar.header("Filters")

geography = st.sidebar.multiselect(
    "Geography",
    options=sorted(df["Geography"].unique()),
    default=sorted(df["Geography"].unique())
)

gender = st.sidebar.multiselect(
    "Gender",
    options=sorted(df["Gender"].unique()),
    default=sorted(df["Gender"].unique())
)

age_group = st.sidebar.multiselect(
    "Age Group",
    options=sorted(df["Age_Group"].unique()),
    default=sorted(df["Age_Group"].unique())
)

filtered_df = df[
    (df["Geography"].isin(geography)) &
    (df["Gender"].isin(gender)) &
    (df["Age_Group"].isin(age_group))
]

# -------------------------
# Geography
# -------------------------

col1, col2 = st.columns(2)

with col1:

    geo = (
        filtered_df.groupby("Geography")["Exited"]
        .sum()
        .reset_index()
    )

    fig = px.bar(
        geo,
        x="Geography",
        y="Exited",
        title="Churned Customers by Geography",
        text="Exited"
    )

    st.plotly_chart(fig, width="stretch")

# -------------------------
# Age Group
# -------------------------

with col2:

    age = (
        filtered_df.groupby("Age_Group")["Exited"]
        .sum()
        .reset_index()
    )

    fig = px.bar(
        age,
        x="Age_Group",
        y="Exited",
        title="Churned Customers by Age Group",
        text="Exited"
    )

    st.plotly_chart(fig, width="stretch")

# -------------------------
# Gender
# -------------------------

col1, col2 = st.columns(2)

with col1:

    gender_data = (
        filtered_df.groupby("Gender")["Exited"]
        .sum()
        .reset_index()
    )

    fig = px.bar(
        gender_data,
        x="Gender",
        y="Exited",
        title="Churned Customers by Gender",
        text="Exited"
    )

    st.plotly_chart(fig, width="stretch")

# -------------------------
# Number of Products
# -------------------------

with col2:

    products = (
        filtered_df.groupby("NumOfProducts")["Exited"]
        .sum()
        .reset_index()
    )

    fig = px.bar(
        products,
        x="NumOfProducts",
        y="Exited",
        title="Churned Customers by Number of Products",
        text="Exited"
    )

    st.plotly_chart(fig, width="stretch")

# -------------------------
# Balance comparison
# -------------------------

status_df = filtered_df.copy()

status_df["Customer_Status"] = status_df["Exited"].map({
    0: "Retained",
    1: "Churned"
})

balance = (
    status_df.groupby("Customer_Status")["Balance"]
    .mean()
    .reset_index()
)

fig = px.bar(
    balance,
    x="Customer_Status",
    y="Balance",
    title="Average Account Balance: Churned vs Retained",
    text_auto=".0f"
)

st.plotly_chart(fig, width="stretch")

# -------------------------
# Data preview
# -------------------------

st.subheader("Customer Data Preview")

st.dataframe(
    filtered_df.head(100),
    width="stretch"
)

st.caption("European Bank Customer Churn Analysis")