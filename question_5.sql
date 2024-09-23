SELECT category, SUM(profit) AS profit
FROM ( 
    SELECT dim_stores.country_region,
    dim_products.category,
    (dim_products.sale_price-dim_products.cost_price)*orders_powerbi."Product Quantity" AS profit
    FROM orders_powerbi JOIN dim_products
    ON orders_powerbi.product_code = dim_products.product_code
    JOIN dim_stores
    ON orders_powerbi."Store Code" = dim_stores."store code"
    WHERE country_region = 'Wiltshire'
    AND EXTRACT(YEAR FROM Date("Order Date")) = 2021)
AS profit_per_category
GROUP BY category
