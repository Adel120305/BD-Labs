/*с помощью функции DISTRICT мы сортируем объекты по афавиту, а используя LIMIT выводим только 10 первых элементов*//* Выберите 10 фамилий членов клуба упорядочите их по алфавиту без повторов.*/
USE cd;
SELECT DISTINCT surname FROM members WHERE surname != 'Guest' ORDER BY surname LIMIT 10;