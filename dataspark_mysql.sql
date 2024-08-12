## Query to get number of stores in each country
SELECT COUNT(StoreKey) AS stores, Country 
FROM stores_details
GROUP BY Country 
ORDER BY stores desc;

##Query to get size of stores in sq. metres of all stores together in each country
SELECT SUM(Square_Meters) AS stores_size, Country
FROM stores_details
GROUP BY Country
ORDER BY stores_size desc;



## Query to get number of stores opened per year
SELECT COUNT(StoreKey) AS stores, YEAR(Open_Date) AS YEAR_opened
FROM stores_details
GROUP BY YEAR_opened
ORDER BY stores desc;



## Query to get total orders and totql quantity by stores
SELECT SUM(Order_Number) as total_orders, SUM(Quantity) AS total_quantity, StoreKey
FROM sales_details
GROUP BY StoreKey
ORDER BY StoreKey;

## Query to get  number of customers by each store
SELECT COUNT(CustomerKey) AS total_customers, StoreKey
FROM sales_details
GROUP BY StoreKey
ORDER BY StoreKey;