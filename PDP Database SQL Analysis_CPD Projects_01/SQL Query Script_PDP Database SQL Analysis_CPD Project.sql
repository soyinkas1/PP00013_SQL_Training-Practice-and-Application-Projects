-- Confirm the number of results in the database
SELECT COUNT(*) FROM pdp_results; /* 312,112 */

-- Confirm the number of samples in the database
SELECT COUNT(*) FROM pdp_samples; /*10,127 */

-- View the top 5 rows of all columns in the results table
SELECT * FROM pdp_results
	LIMIT 5;
-- View top 5 rows of all columns in the samples table
SELECT * FROM pdp_samples
	LIMIT 5;
-- Number of distinct samples that results was collected about
SELECT COUNT(DISTINCT SAMPLE_PK) FROM pdp_results /* 1535 */;

-- Country of origin of the distinct samples (country name not code)
SELECT DISTINCT SAMPLE_PK, `Country Name` as Country_Name, COUNTRY as Country_Code  FROM 
	pdp_samples JOIN country_code on pdp_samples.COUNTRY = country_code.`Country Code`;
  
-- Distint countries from which samples was collected
SELECT DISTINCT `Country Name` as Country_Name, COUNTRY as Country_Code  FROM 
	pdp_samples JOIN country_code on pdp_samples.COUNTRY = country_code.`Country Code`;
    
-- Count of Samples from each country from highest to lowest
SELECT `Country Name` as Country_Name, count(COUNTRY) as Number_of_Samples FROM 
	pdp_samples JOIN country_code on pdp_samples.COUNTRY = country_code.`Country Code`
		GROUP BY `Country Name`
			ORDER BY Number_of_Samples DESC;
            
-- Commodities tested and Lab used 
SELECT DISTINCT `COMMODITY NAME` , COUNT(*) AS Samples  FROM 
commodity_code JOIN pdp_results ON commodity_code.`Commodity Code`=pdp_results.COMMOD
GROUP BY `COMMODITY NAME`
ORDER BY Samples DESC;


