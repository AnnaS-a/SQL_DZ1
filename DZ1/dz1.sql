-- Вся таблица
SELECT*
FROM dz1.order;

-- название, производитель и цена для товаров, количество которых превышает 2
SELECT product_name, manufacturer, price
FROM dz1.order
WHERE product_count > 2;

-- ассортимент товаров марки “Samsung”
SELECT product_name
FROM dz1.order
WHERE manufacturer = "Samsung";

-- информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000
SELECT *
FROM dz1.order
WHERE product_count * price > 100000 AND product_count * price < 145000;
-- WHERE product_count* price BETWEEN 100000 AND 145000;

-- Товары, в которых есть упоминание "Iphone"
SELECT *
FROM dz1.order
WHERE product_name LIKE '%Iphone%' OR manufacturer LIKE '%Iphone%';

-- Товары, в которых есть упоминание "Galaxy"
SELECT *
FROM dz1.order
WHERE product_name LIKE '%Galaxy%' OR manufacturer LIKE '%Galaxy%';

-- Товары, в которых есть ЦИФРЫ
SELECT *
FROM dz1.order
WHERE product_name RLIKE '[:digit:]';

-- Товары, в которых есть ЦИФРА "8"
SELECT *
FROM dz1.order
WHERE product_name LIKE '%8%';