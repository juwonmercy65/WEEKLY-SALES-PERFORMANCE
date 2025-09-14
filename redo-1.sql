-- SELECT * FROM retail_sales_dataset2

-- SELECT `Product Category` FROM retail_sales_dataset2

/*SELECT WEEK(Date, 3) AS week_number FROM retail_sales_dataset2
ORDER BY week_number;*/

-- Total revenue per category per week 
  /*SELECT 
  YEAR(Date) AS year,
  WEEK(Date, 3) AS week_number, 
  `Product Category`, 
    SUM(`Total Amount`) AS total_revenue
FROM 
  retail_sales_dataset2 AS sales
GROUP BY  
	YEAR(Date),
    WEEK(Date, 3),
    `Product Category`
ORDER BY 
  year ASC,
  week_number ASC,
  `Product Category`;*/
  
  -- Number of unique customers per category per week
/*SELECT 
  YEAR(Date) AS year,
  WEEK(Date, 3) AS week_number,
  `Product Category`,
  COUNT(DISTINCT `Customer ID`) AS unique_customers
FROM 
  retail_sales_dataset2 AS sales
GROUP BY  
	YEAR(Date),
    WEEK(Date, 3),
    `Product Category`
ORDER BY 
  year ASC,
  week_number ASC,
  `Product Category`;*/
  
  -- visual showing trends of top 3 categories over time
  /*WITH category_trends AS (
  SELECT 
    YEAR(Date) AS year,
    WEEK(Date, 3) AS week_number,
    `Product Category`,
    SUM(`Total Amount`) AS total_revenue
  FROM 
    retail_sales_dataset2
  GROUP BY 
    YEAR(Date),
    WEEK(Date, 3),
    `Product Category`
),
top_categories AS (
  SELECT 
    `Product Category`,
    SUM(total_revenue) AS total_revenue
  FROM 
    category_trends
  GROUP BY 
    `Product Category`
  ORDER BY 
    total_revenue DESC
  LIMIT 3
)
SELECT 
  ct.year,
  ct.week_number,
  ct.`Product Category`,
  ct.total_revenue
FROM 
  category_trends ct
JOIN 
  top_categories tc ON ct.`Product Category` = tc.`Product Category`
ORDER BY 
  ct.year,
  ct.week_number,
  ct.`Product Category`;*/


