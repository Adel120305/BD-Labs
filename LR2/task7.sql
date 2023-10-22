/*Выбрать объекты, у которых ID равен 1 или 5*/
USE cd;
SELECT facid, facility FROM facilities WHERE facid IN (1,5);