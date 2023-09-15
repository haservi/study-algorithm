SELECT
  os.USER_ID,
  os.PRODUCT_ID
FROM ONLINE_SALE AS os
GROUP BY os.USER_ID, os.PRODUCT_ID
HAVING 2 <= COUNT(os.PRODUCT_ID)
ORDER BY os.USER_ID ASC, os.PRODUCT_ID DESC