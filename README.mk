AiCore PowerBI Data Analysis Project:

Milestone 1:
- Setting up the enviroment

Milestone 2:
- Imported the tables used for the project which included:
	- Azure SQL database
	- CSV file
	- Azure blob storage
	- A folder of excel files, which were merged into one file
- Transformed the data including:
	- Removing unused columns
	- Combining columns
	- Splitting columns
	- Ensuring all columns and table names were the same naming convention
	- Removing null and blank values

Milestone 3:
- Created a date table
- Created a star schema data model which included establishing relationships between tables
- Created a measures table along with some key measures including:
	- Total Orders
	- Total Revenue
	- Total Profit
	- Total Customers
	- Total Quantity
	- Profit YTD
	- Revenue YTD
- Created date and geography hierarchies

Milestone 4:
- Created the reports pages including:
	- Executive Summary
	- Customer Details
	- Product Details
	- Stores Map

Milestone 5:
- Added to the Customer Details page including:
	- A card for the number of unique customers
	- A card for the revenue per customers
	- A donut chart for the total customers per region
	- A bar chart for the total customers per product category
	- A line chart that shows total customers per (start of) year, quarter and month, with the ability to drill down
	- A table that shows the top 20 customers by revenue including the customers full name, total orders and revenue made
	- A set of cards that represents the top customer with their full name, number of orders and total revenue in each respective card
	- A date  slicer to select a frame between two years

Milestone 6:
- Added to the Executive Summary page including:
	- Three cards that shows total revenue, total orders and total profit
	- A line chart that shows total revenue against the data hierarchy including (start of) year, quarter and month
	- Two donut charts that show total revenue segmented my country and store type
	- A bar chart that shows total orders by product category
	- Created 6 new measures including:
		- Previous quarter revenue, orders and profit
		- Target revenue, orders and profit which shows 5% growth of the Previous quarter metric
	- Three KPI to show target revenue, orders and profit respectively

Milestone 7:
- Added to the Product Details page including:
	- Creating 3 gauges that shows the current metric of orders, revenue and profit for the quarter against the target value which
	  in this case was 10%
	- From the previous point I created the current orders, revenue and profit for the quarter along with the difference left to reach
	- Created card that displayed the filtered data, including the category and country
	- Added an area chart for the total revenue for each category of product by the quarter
	- Added a top 10 product table that included created new columns for profit per item and profit per orders
		- the table incldued the description, total revenue, total orders, total customers and profit per order
	- Added a scatter graph that shows the profit per item against the total quantity that has been sold, seperated by category
	- Added some buttons that worked as a opening and closing menu which included:
		- two filters for category and country
		- two button that use bookmarks to open and close said menu

Milestone 8:
- Added to the Stores Page including:
	- Created two more pages, one for drillthrough, one for tooltip
		- The drillthrough page inlcudes having gauges for profit and revenue YTD and the goal for the metrics
		- A top 5 products table by profit YTD
		- A column chart showing total orders by category
		- A card that shows the store loaction that is selected
	- Added a map visual that shows the profit YTD using the geography hierarchy made earlier
	- A filter for said map that seperates out the different regions

Milestone 9:
- Cleaned up cross-filtering and formatting including:
	- Ensuring each pages visuals only effected the required other visuals e.g:
		- Selecting one bar in a bar chart doesnt change all the cards and graphs to match the data
	- Creating navigation buttons so that the user can move between pages easily

Milestone 10:
- Answered the questions using SQL queiries:
	- First connected to the data base using an azure connection
	- Created csv files containing all the table column names
	- The questions were as followed:
		- Q1: How many staff are there in all of the UK stores?
			- Here we had a simple SUM query that outputted the result
			 of 13,273 staff members
		- Q2: Which month in 2022 has had the highest revenue?
			- Here we used subqueries and JOINS to create a table that
			calculated the revenue for the given year, resulting in a
			table with the revenue for 2022 for all 12 months. Hence we
			see that the month with the highest revenue is August with 
			a total of 66,048.29
		-Q3: Which German store type had the highest revenue for 2022?
			- This had a similar path to question 2, where we use subqueries
			and JOINS to create a table that has the revenue for each store
			in germany in the year 2022, and so we see that the stores with 
			the highest revenue is the Super Stores with a revenue of 43,536.78
		- Q4: Create a view where the rows are the store types and the columns are the total sales, 
			  percentage of total sales and the count of orders
			- Once again we use JOINS and a subquery for the required table
			the only new element being the calculation for the percentage,
			to find the percent of the whole column accuratly I used the OVER
			function to define the window over the given full column
		- Q5: Which product category generated the most profit for the "Wiltshire, UK" region in 2021?
			- We use more JOIN and subqueries getting a table with the categories
			against their total profit, the only difference for this queiry 
			being calculating profit instead of revenue, and so we find that
			the product category with the most profit in the area of Wiltshire
			in 2021 is Homeware with a profit of 1,193.52	