/* Выбрать объекты, пользование которых бесплатно для членов клуба.*/
USE cd;
SELECT facility FROM facilities WHERE membercost=0;
