
По вопросу об используемом редакторе – уже несколько лет пользуюсь [HeidiSQL](https://www.heidisql.com/?place=lnklblWebpage). 
Он мне показался более удобным, чем PHPMyAdmin, когда пришлось заниматься сайтами.


1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными

```sql
USE `gb-sql`;

CREATE TABLE IF NOT EXISTS sales (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    order_date DATE NULL DEFAULT NULL,
    count_product INT(10) UNSIGNED NULL DEFAULT NULL,
PRIMARY KEY (`id`)
);

INSERT INTO sales (order_date, count_product) VALUES ('2022-01-01', 156);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-02', 180);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-03', 21);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-04', 124);
INSERT INTO sales (order_date, count_product) VALUES ('2022-01-05', 341);

```
2. Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва:
- меньше 100 - Маленький заказ
- от 100 до 300 - Средний заказ
- больше 300 - Большой заказ

```sql
SELECT
    id AS 'id заказа',
    CASE
        WHEN count_product < 100 THEN 'Маленький заказ'
        WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
        WHEN count_product > 300 THEN 'Большой заказ'
    END AS 'Тип заказа'
    FROM sales;
```

3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE

```sql
USE `gb-sql`;

CREATE TABLE IF NOT EXISTS orders (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    employee_id VARCHAR(20) NULL DEFAULT NULL,
    amount DECIMAL(10,2) UNSIGNED NULL DEFAULT NULL,
    order_status VARCHAR(20) NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
    );

INSERT INTO orders (employee_id, amount, order_status) VALUES ('e03',  15.00, 'OPEN');
INSERT INTO orders (employee_id, amount, order_status) VALUES ('e01',  25.50, 'OPEN');
INSERT INTO orders (employee_id, amount, order_status) VALUES ('e05', 100.70, 'CLOSED');
INSERT INTO orders (employee_id, amount, order_status) VALUES ('e03',  22.18, 'OPEN');
INSERT INTO orders (employee_id, amount, order_status) VALUES ('e03',   9.50, 'CANCELLED');

SELECT
    id AS 'id заказа',
    employee_id AS 'id сотрудника',
    amount AS 'Сумма',
    order_status AS 'Статус заказа',
    CASE
        WHEN order_status = 'OPEN' THEN 'Order is in open state'
        WHEN order_status = 'CLOSED' THEN 'Order is closed'
        WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
        ELSE ''
        END AS 'Статус заказа'
    FROM orders;

```

