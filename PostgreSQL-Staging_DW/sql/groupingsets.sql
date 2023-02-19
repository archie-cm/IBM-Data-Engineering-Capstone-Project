SELECT 
  co.country, 
  ca.category, 
  SUM(s.amount) AS totalsales 
FROM 
  factsales s 
  JOIN dimcountry co ON s.countryid = co.countryid 
  JOIN dimcategory ca ON s.categoryid = ca.categoryid 
GROUP BY 
  GROUPING SETS (
    co.country, ca.category, s.amount
  ) 
ORDER BY 
  SUM(s.amount) DESC;
