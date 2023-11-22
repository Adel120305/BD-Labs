/*Выберите количество аренд объектов клуба в каждый месяц.*/
USE cd;
SELECT monthname(starttime) AS месяц, count(slots) FROM bookings
GROUP BY месяц;