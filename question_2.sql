SELECT month, sum(revenue) AS month_rev
    FROM (
        SELECT 
        orders_powerbi."Product Quantity" * dim_products.sale_price AS revenue,
        EXTRACT(YEAR FROM Date("Order Date")) AS year,
        EXTRACT(MONTH FROM Date("Order Date")) AS month
        FROM orders_powerbi JOIN dim_products
        ON orders_powerbi.product_code = dim_products.product_code
        WHERE EXTRACT(YEAR FROM Date("Order Date")) = 2022) AS top_month
    GROUP BY month
