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