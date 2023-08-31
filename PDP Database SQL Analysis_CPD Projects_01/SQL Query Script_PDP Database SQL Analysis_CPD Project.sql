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
SELECT COUNT(DISTINCT SAMPLE_PK) FROM pdp_results /* 1535 */

-- Country of origin of the distinct samples


