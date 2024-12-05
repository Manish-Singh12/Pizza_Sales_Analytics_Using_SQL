
# PIZZA SALES ANALYTICS USING SQL

![PIZZA PHOTO](https://github.com/Manish-Singh12/Pizza_Sales_Analytics_Using_SQL/blob/main/Pizza-logo.png "a title")

This project, **Pizza Sales Analytics Using SQL**, is designed to analyze and generate insights from pizza sales data using SQL queries in MySQL Workbench. Through this project, I aimed to answer several important questions regarding the sales trends, customer preferences, and performance of various pizza types.


## PROJECT GOALS

The goal of this project is to answer some key questions such as:
- Calculate the total revenue generated from pizza sales?
- Find the category-wise distribution of pizzas?
- Determine the top 3 most ordered pizza types based on revenue?

You'll find more such questions here: [**Click Here**](https://github.com/Manish-Singh12/Pizza_Sales_Analytics_Using_SQL/blob/main/Questions.txt)
## TOOLS AND TECHNOLOGIES

- **SQL (MySQL Workbench)**: For database management and query execution.
- **MySQL Database**: Used to store the pizza sales data.
- **Canva**: Used for creating a PDF of all the queries and outputs, providing a visually appealing and easy-to-share report. [**QUICK CHECK THE FINAL REPORT**](https://github.com/Manish-Singh12/Pizza_Sales_Analytics_Using_SQL/blob/main/Pizza%20Sales%20Analytics%20Using%20SQL.pdf) 
## DATABASE STRUCTURE

[**DATASET LINK HERE**](https://github.com/Manish-Singh12/Pizza_Sales_Analytics_Using_SQL/tree/main/pizza_sales)

This project uses the following four tables, which are actually four separate CSV files imported into MySQL Workbench using the **Table Data Import Wizard** functionality. These CSV files are:

1. **order_details**: Stores details about each pizza order.
   - Columns: `order_details_id`, `order_id`, `pizza_id`, `quantity`
   
2. **orders**: Contains order information.
   - Columns: `order_id`, `date`, `time`

3. **pizza_types**: Lists pizza types, names, categories, and ingredients.
   - Columns: `pizza_type_id`, `name`, `category`, `ingredients`

4. **pizzas**: Information about each pizza.
   - Columns: `pizza_id`, `pizza_type_id`, `size`, `price`


## MODEL VIEW

The **Model View** describes the relationships between the tables in the database. Below is the explanation of the relationships:

1. **orders** ↔ **order_details**:  
   - **Relationship**: One-to-many  
   - Each order (in the **orders** table) can have multiple items (pizzas) ordered, which are stored in the **order_details** table. This is linked via the `order_id` field.

2. **order_details** ↔ **pizzas**:  
   - **Relationship**: Many-to-one  
   - Each record in the **order_details** table references a specific pizza (from the **pizzas** table) through the `pizza_id` field. Each pizza can appear multiple times in **order_details** if it is part of multiple orders.

3. **pizzas** ↔ **pizza_types**:  
   - **Relationship**: Many-to-one  
   - Each pizza in the **pizzas** table is associated with a pizza type (from the **pizza_types** table) through the `pizza_type_id` field. Multiple pizzas can belong to the same pizza type.

![MODEL VIEW](https://github.com/Manish-Singh12/Pizza_Sales_Analytics_Using_SQL/blob/main/model_view/relation.png "a title")
## SOLUTIONS


You can find the SQL queries in the **Solutions** folder of this repository. The queries address various business questions and provide insights from the pizza sales data.

[**Click Here to View Solutions**](https://github.com/Manish-Singh12/Pizza_Sales_Analytics_Using_SQL/tree/main/solutions)

Also I kept the pictures of queries and their outputs in **Solutions_pics** folder of this repository. You can address from there how the answers looks-like.

[**Click Here to View Solution Pictures**](https://github.com/Manish-Singh12/Pizza_Sales_Analytics_Using_SQL/tree/main/solutions_pics)
## ACKNOWLEDGEMENTS 

 - [WsCube Tech: SQL FOR DATA ANALYSIS](https://www.youtube.com/watch?v=zZpMvAedh_E)
 - [Awesome README](https://readme.so/editor)


## AUTHORS

- [@Manish-Singh12](https://github.com/Manish-Singh12)

