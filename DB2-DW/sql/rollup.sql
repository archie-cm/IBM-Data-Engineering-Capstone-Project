SELECT 
  dd.year, 
  dc.country, 
  SUM(fs.amount) AS totalsales 
FROM 
  factsales fs 
  JOIN dimdate dd ON fs.dateid = dd.dateid 
  JOIN dimcountry dc ON fs.countryid = dc.countryid 
GROUP BY 
  ROLLUP (dd.year, dc.country, fs.amount) 
ORDER BY
  dd.year, 
  SUM(fs.amount) DESC;
