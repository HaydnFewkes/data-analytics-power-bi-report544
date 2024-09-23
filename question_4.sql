SELECT store_type, SUM(total_sales) AS total_sales,
COUNT(total_sales) AS no_of_orders,
SUM(total_percent)*100 AS total_percent
FROM (
    SELECT 
    dim_products.sale_price*orders_powerbi."Product Quantity" AS total_sales,
    dim_stores.store_type,
    dim_products.sale_price*orders_powerbi."Product Quantity"/SUM(dim_products.sale_price*orders_powerbi."Product Quantity") OVER() AS total_percent
    FROM orders_powerbi JOIN dim_stores
    ON orders_powerbi."Store Code" = dim_stores."store code"
    JOIN dim_products
    ON dim_products.product_code = orders_powerbi.product_code
    GROUP BY sale_price, "Product Quantity", store_type)
    AS store_type_values
GROUP BY store_type