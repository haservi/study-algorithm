-- https://school.programmers.co.kr/learn/courses/30/lessons/77487

-- 코드를 입력하세요
SELECT
  p.ID,
  p.NAME,
  p.HOST_ID
FROM PLACES AS p
WHERE p.HOST_ID IN 
(
  SELECT p_in.HOST_ID
  FROM PLACES AS p_in
  GROUP BY p_in.HOST_ID
    HAVING COUNT(p_in.HOST_ID) > 1
)

