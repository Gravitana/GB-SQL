# Комментарий
-- После двух знаков "--" ставится пробел
/*
Это
многострочный 
комментарий
*/

-- 1. Подключение к БД
USE lesson1; -- Делаем активной БД под наванием lesson1

-- 2. Получим инфо обо всех студентов
SELECT *
FROM student;

-- 3. Получим имена и почтовые адреса всех студентов
SELECT first_name,  email
FROM student;

-- 4. Получим имя и почтовый адрес студента по имени Анатолий
SELECT first_name,  email
FROM student
WHERE first_name = "Анатолий";

-- 5. Получим имена и почтовые адреса студента, исключив Анатолия
SELECT first_name,  email
FROM student
WHERE first_name != "Анатолий";

-- 6. Получим инфо о студентах, имена которых начинаются с буквы "А"
SELECT first_name,  email
FROM student
WHERE first_name LIKE "А%н__";