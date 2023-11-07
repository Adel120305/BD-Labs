/*Создайте список общего количества мест, забронированных на один объект в месяц в 2012 году. Включите выходные строки, содержащие итоговые суммы за все месяцы по каждому объекту а также итоговые суммы за все месяцы для всех объектов. Выходная таблица должна состоять из идентификатора объекта, месяца и слотов, отсортированных по идентификатору и месяцу. При вычислении агрегированных значений для всех месяцев и всех facid возвращайте нулевые значения в столбцах месяца и facid.*/
USE cd;
SELECT bookings.facid,
MONTH(bookings.starttime) AS month,
COUNT(*) AS slots
FROM bookings
INNER JOIN facilities ON bookings.facid = facilities.facid
WHERE YEAR(bookings.starttime) = 2012
GROUP BY bookings.facid, MONTH(bookings.starttime)
WITH ROLLUP
ORDER BY bookings.facid, MONTH(bookings.starttime);