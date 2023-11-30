/*Составьте список общего количества часов, забронированных на один объект, помня, что интервал длится полчаса. 
Выходная таблица должна состоять из идентификатора объекта, имени и забронированных часов, отсортированных по идентификатору 
объекта. Попробуйте отформатировать часы с точностью до двух десятичных знаков.
Без ROUND*/
USE cd;
SELECT book.facid AS 'ID объекта', fac.facility AS 'Название объекта', 
  ROUND(SUM(book.slots) / 2, 2) AS 'Общее количество часов'
FROM bookings AS book
INNER JOIN facilities AS fac ON book.facid = fac.facid
GROUP BY book.facid, fac.facility
ORDER BY book.facid;