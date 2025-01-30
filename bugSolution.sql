To correct the first error (missing GROUP BY), always ensure your query includes a GROUP BY clause whenever using aggregate functions to group results by specific columns.  For example, to find total sales per product category:

SELECT category, SUM(sales) AS total_sales
FROM sales_data
GROUP BY category; 

To address the second error (NULL values), use functions like ISNULL (in SQL Server) or COALESCE (in other SQL dialects) to replace NULL values with appropriate substitutes before applying aggregate functions. This might involve replacing NULLs with 0 for numerical aggregations or an empty string for text aggregations.  Example:

SELECT category, SUM(ISNULL(sales, 0)) AS total_sales
FROM sales_data
GROUP BY category;