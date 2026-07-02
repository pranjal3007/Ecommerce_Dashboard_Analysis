-- Top 10 Profitable Products
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

--Top 10 Customers by Sales
SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

--Region-wise Total Sales
SELECT
    region,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

--Category-wise Average Profit
SELECT
    category,
    ROUND(AVG(profit),2) AS average_profit
FROM sales_data
GROUP BY category
ORDER BY average_profit DESC;

--Highest Discount Category
SELECT
    category,
    MAX(discount) AS highest_discount
FROM sales_data
GROUP BY category
ORDER BY highest_discount DESC;

--Orders with Negative Profit
SELECT
    order_id,
    customer_name,
    product_name,
    sales,
    profit
FROM sales_data
WHERE profit < 0
ORDER BY profit;

--Monthly Sales Trend
SELECT
    order_year,
    order_month,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

--Market-wise Revenue Analysis
SELECT
    market,
    SUM(sales) AS revenue
FROM sales_data
GROUP BY market
ORDER BY revenue DESC;

--Top-performing Sub-Categories
SELECT
    sub_category,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10;

--Ship Mode Usage Analysis
SELECT
    ship_mode,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY ship_mode
ORDER BY total_orders DESC;