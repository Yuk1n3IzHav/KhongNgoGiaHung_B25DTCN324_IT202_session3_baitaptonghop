CREATE DATABASE session_3_baitaptonghop;
USE session_3_baitaptonghop;

CREATE TABLE product (
	product_id VARCHAR(10) PRIMARY KEY UNIQUE,
    product_name VARCHAR(100) NOT NULL,
    size ENUM('S', 'M', 'L', 'XL', 'XXL'),
    price DECIMAL(10,2) NOT NULL 
);

INSERT INTO product( product_id, product_name, size, price)
VALUES
('P01', 'Áo sơ mi trắng', 'L', 250000),
('P02', 'Quần Jean xanh', 'M', 450000),
('P03', 'Áo thun Basic', 'XL', 150000),
('P04', 'Áo hoodie', NULL, -200000);

UPDATE product 
SET price = '40000' WHERE product_id = 'P01';

UPDATE product
SET price = price * 1.1;

DELETE FROM product 
WHERE product_id = 'P03';

SELECT * FROM product;

SELECT product_name, size FROM product;

SELECT * FROM product WHERE ( price > 30000);


