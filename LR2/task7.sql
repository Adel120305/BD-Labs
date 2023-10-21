/*Выбрали объекты, у которых ID равен 1 или 5*/
USE cd;
SELECT facid, facility FROM facilities WHERE facid in (1,5);