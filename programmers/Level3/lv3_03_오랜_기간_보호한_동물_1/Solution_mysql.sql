SELECT
  ai.NAME,
  ai.DATETIME
FROM ANIMAL_INS AS ai
LEFT JOIN ANIMAL_OUTS AS ao ON ai.ANIMAL_ID = ao.ANIMAL_ID
WHERE 1 = 1
  AND ao.ANIMAL_ID IS NULL
ORDER BY ai.DATETIME ASC
LIMIT 3;