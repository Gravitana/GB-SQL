
-- 1.

CREATE TABLE `product` (
                           `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
                           `product_name` VARCHAR(50) NOT NULL,
                           `manufacturer` VARCHAR(50) NULL,
                           `product_count` INT UNSIGNED NULL DEFAULT NULL,
                           `price` INT UNSIGNED NULL DEFAULT NULL,
                           PRIMARY KEY (`id`)
)
    COLLATE='utf8mb4_unicode_ci';

INSERT INTO `gb_lesson1`.`product` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone X', 'Apple', 3, 76000);
INSERT INTO `gb_lesson1`.`product` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone 8', 'Apple', 2, 51000);
INSERT INTO `gb_lesson1`.`product` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy S9', 'Samsung', 2, 56000);
INSERT INTO `gb_lesson1`.`product` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy S8', 'Samsung', 1, 41000);
INSERT INTO `gb_lesson1`.`product` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('P20 Pro', 'Huawei', 5, 36000);


-- 2.
SELECT product_name, manufacturer, price FROM product WHERE product_count > 2;

-- 3.
SELECT * FROM product WHERE manufacturer = 'Samsung';

-- 4.
SELECT * FROM product WHERE product_count * price > 100000 AND product_count * price < 145000;



