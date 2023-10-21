/*выбираем только тот объект, у которого дата регистрации максимальная*/
USE cd;
SELECT surname, firstname, joindate FROM members WHERE joindate = (SELECT MAX(joindate) FROM members);