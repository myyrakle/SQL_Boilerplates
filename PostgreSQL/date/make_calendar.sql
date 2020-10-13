WITH CALENDAR_DEFAULT AS 
(
	SELECT 
		DATE_TRUNC('week', DATE_TRUNC('month', CURRENT_TIMESTAMP)) - INTERVAL '1 day' AS CALENDAR_BEGIN,
		DATE_TRUNC('week', DATE_TRUNC('month', CURRENT_TIMESTAMP + INTERVAL '1 month') - INTERVAL '1 day' + INTERVAL '1 week')-INTERVAL '2 day' AS CALENDAR_END
)
SELECT 
	ARRAY_AGG(T.DAY::DATE) AS each_week
FROM
(
	SELECT 
		(SELECT CALENDAR_BEGIN FROM CALENDAR_DEFAULT) + INTERVAL '1 day' * SERIES.n AS day
		, DATE_TRUNC('week', ((SELECT CALENDAR_BEGIN FROM CALENDAR_DEFAULT) + INTERVAL '1 day' * SERIES.n) + INTERVAL '1 day') - INTERVAL '1 day' AS week 
	FROM (
		SELECT GENERATE_SERIES(0, EXTRACT(DAY FROM (SELECT CALENDAR_END - CALENDAR_BEGIN FROM CALENDAR_DEFAULT))::INTEGER) AS n
	) SERIES
) T
GROUP BY T.week
