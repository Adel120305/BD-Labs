/*Составьте список участников (включая гостей) вместе с количеством часов, которые они забронировали для объекта,  
округленным до ближайших десяти часов. Ранжируйте их по этой округленной цифре, получая в результате имя, фамилию, 
округленные часы и звание. Сортировка по званию, фамилии и имени.*/
USE cd;
SELECT mem.firstname AS 'Имя', mem.surname AS 'Фамилия', ROUND(SUM(book.slots) / 2, -1) AS 'Округлённые часы',
RANK() OVER (ORDER BY ROUND(SUM(book.slots) / 2, -1)) AS Ранг
FROM members AS mem
INNER JOIN bookings AS book ON mem.memid = book.memid
GROUP BY mem.memid
ORDER BY Ранг, mem.surname, mem.firstname;