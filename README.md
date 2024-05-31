# Data Analyst Assesment

Welcome to data analysis assessment respository

## Analysis with python
 
The python script 'python_task.ipynb' perform some data analysis task on the sales data.It include following function:

- Loading sales data from a dictionary and creating a dataframe
- Saving dataframe in to a csv file('sales_data.csv')
- loading the saved csv file
- Checking the missing values in the dataframe(there are no any missing values in sales dataset.if there were any missing values,they could be handled using the 'dropna' function to remove rows with missing values or filling the missing values with specific value , such as the mean)
- Calculate total sale and adding a new column for total sales
- Determine the  top 5 products by total sales
- Visualizing monthly sales trends using matplotlib
- Plot a bar chart for top 5 products by total sales
- Calculating the average order value(AOV)
- Determing the repeat purchase rate

### Requirments

- pandas
- matplotlib

### SQL

### SQL Queries (sql_task.sql)

The SQL file 'sql_task.sql' contain sql queries to extract information from the database

- Retrieve the top 5 customers by total spending
- Find the number of orders placed each month in the last year
- Datermine average order values(AOV)
- Find customers who have not placed any oredrs in the last 6 months

### Database schema

- customers table:
    - customer_id(Primary key)
    - name
    - email
    - join_date
- orders table:
    - order_id(Primary key)
    - customer_id(Foregin key)
    - order_date
    - total_amount







