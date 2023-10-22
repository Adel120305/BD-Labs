USE cd;
SELECT facility, 'Дешевый' AS 'Качественная стоимость' FROM facilities WHERE monthlymaintenance < 100
/*объекты с дешевой качественной стоимостью*/
UNION
SELECT facility, 'Дорогой' FROM facilities WHERE monthlymaintenance >= 100;
/*объекты с дорогой качественной стоимостью*/