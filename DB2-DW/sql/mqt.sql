CREATE TABLE total_sales_per_country (country, total_sales) AS (
  SELECT 
    dc.country, 
    SUM(fs.amount) AS totalsales 
  FROM 
    FACTSALES fs 
    JOIN dimcountry dc ON fs.countryid = dc.countryid 
  GROUP BY 
    dc.country
) DATA INITIALLY DEFERRED REFRESH DEFERRED;
REFRESH TABLE total_sales_per_country;
