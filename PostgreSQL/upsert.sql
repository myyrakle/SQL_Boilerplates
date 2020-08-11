INSERT INTO USER AS A 
( 
    USER_ID,
    USER_PASS,
    USER_NAME
) 
SELECT  
    USER_ID_NEW, 
    USER_PASS_NEW,
    USER_NAME_NEW
FROM ( 
    VALUES ${tupleValue} 
) AS TEMP ( 
    USER_ID_NEW, 
    USER_PASS_NEW,
    USER_NAME_NEW
) 
ON CONFLICT (USER_ID) 
DO 
    UPDATE 
    SET     
      USER_PASS = EXCLUDED.USER_PASS,
      USER_NAME = (A.VANK_COIN + EXCLUDED.USER_NAME
RETURNING USER_ID