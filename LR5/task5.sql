/*Рассчитайте количество аренд каждого из объектов клуба за сентябрь 2012 года.*/
USE cd;
SELECT facility, SUM(book.slots) as rent_count
FROM cd.facilities as fac
LEFT JOIN cd.bookings as book ON book.facid = fac.facid
WHERE DATE(book.starttime) = '2012.09.12'
GROUP BY fac.facid;