USE cd;
SELECT recommendedby, COUNT(*) FROM members WHERE recommendedby IS NOT Null GROUP BY recommendedby;