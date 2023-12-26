
USE cd;

START TRANSACTION;
    CALL payback(1, MONTH('2012-07-03'), YEAR('2012-07-03'));

    UPDATE facilities
    SET
        guestcost = guestcost * (SELECT RentChange(facid, 2, '2012-07-01-00:00:00', '2012-07-31-23:59:59')),
        membercost = membercost * (SELECT RentChange(facid, 2, '2012-07-01-00:00:00', '2012-07-31-23:59:59'));

    UPDATE bookings
    SET payed = 1
    WHERE DATE(starttime) < '2012-09-01' AND DATE(starttime) >= '2012-08-01';

    CALL payback(1, MONTH('2012-08-03'), YEAR('2012-08-03'));
ROLLBACK;
/*Вывод: В данном случае окупаемость возрасла.*/