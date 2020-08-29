SELECT 
	/*월요일을 시작으로 했을 경우 한 주의 범위*/
	DATE_TRUNC('week', CURRENT_DATE) AS BEGIN_MONDAY, 
	DATE_TRUNC('week', CURRENT_DATE+INTERVAL '1 week')- INTERVAL '1 day' AS END_SUNDAY,
	/*일요일을 시작으로 했을 경우 한 주의 범위*/
	DATE_TRUNC('week', CURRENT_DATE + INTERVAL '1 day') - INTERVAL '1 day' AS FIRST_SUNDAY,
	DATE_TRUNC('week', CURRENT_DATE + INTERVAL '1 day' + INTERVAL '1 week')-INTERVAL '2 day' AS LAST_MONDAY
