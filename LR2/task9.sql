/*через оператор > выводятся члены клуба зарегистрированные с 1 сентября 2012 года*/
USE cd;
SELECT surname, firstname, joindate FROM members WHERE joindate > '2012-08-31';