/*한 달의 1일~마지막날 범위*/
SELECT 
  DATE_TRUNC('month', CURRENT_DATE) AS MONTH_BEGIN,
  DATE_TRUNC('month', CURRENT_DATE + INTERVAL '1 month')- INTERVAL '1 day' AS MONTH_END
