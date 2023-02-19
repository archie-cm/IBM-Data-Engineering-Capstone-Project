SELECT 
  dd.year, 
  dc.country, 
  AVG(fs.amount) AS totalsales 
FROM 
  FACTSALES fs 
  JOIN dimdate dd ON fs.dateid = dd.dateid 
  JOIN dimcountry dc ON fs.countryid = dc.countryid 
GROUP BY 
  CUBE (dd.year, dc.country, fs.amount) 
ORDER BY 
  dd.year, 
  AVG(fs.amount) DESC;
