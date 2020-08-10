SELECT 
	DATE_TRUNC('week', CURRENT_DATE) AS BEGIN_MONDAY,
	DATE_TRUNC('week', CURRENT_DATE+INTERVAL '1 week')- INTERVAL '1 day' AS END_SUNDAY,
	DATE_TRUNC('week', CURRENT_DATE)-INTERVAL '1 day' AS FIRST_SUNDAY,
	DATE_TRUNC('week', CURRENT_DATE+INTERVAL '1 week')-INTERVAL '2 day' AS LAST_MONDAY