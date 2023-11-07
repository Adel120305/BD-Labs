/*Рассчитайте для каждого члена количество рекомендаций, данных этим членом клуба, искючив членов, которые не давали рекомендаций.*/
USE cd;
SELECT recommendedby, COUNT(*) FROM members WHERE recommendedby IS NOT Null GROUP BY recommendedby;