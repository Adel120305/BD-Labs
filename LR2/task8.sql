select * from facilities;
select facility, 'Дешевый' as 'Качественная стоимость' from facilities where monthlymaintenance < 100
/*объекты с дешевой качественной стоимостью*/
union
select facility, 'Дорогой' from facilities where monthlymaintenance >= 100;
/*объекты с дорогой качественной стоимостью*/