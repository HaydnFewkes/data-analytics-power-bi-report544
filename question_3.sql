SELECT store_type, SUM(revenue) AS rev_sum
FROM (
    SELECT 
    dim_products.sale_price*orders_powerbi."Product Quantity" AS revenue,
    dim_stores.country_code, 
    dim_stores.store_type
    FROM orders_powerbi JOIN dim_stores
    ON orders_powerbi."Store Code" = dim_stores."store code"
    JOIN dim_products
    ON dim_products.product_code = orders_powerbi.product_code
    WHERE country_code = 'DE'
    AND EXTRACT(YEAR FROM Date("Order Date")) = 2022) AS german_rev
GROUP BY store_type

