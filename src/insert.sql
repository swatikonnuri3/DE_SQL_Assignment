USE ecommerce;

INSERT INTO gold_member_users VALUES
('John','2017-09-22'),
('Mary','2017-04-21');

INSERT INTO users VALUES
('John','2014-09-02'),
('Michel','2015-01-15'),
('Mary','2014-04-11');

INSERT INTO sales VALUES
('John','2017-04-19',2),
('Mary','2019-12-18',1),
('Michel','2020-07-20',3),
('John','2019-10-23',2),
('John','2018-03-19',3),
('Mary','2016-12-20',2),
('John','2016-11-09',1),
('John','2016-05-20',3),
('Michel','2017-09-24',1),
('John','2017-03-11',2),
('John','2016-03-11',1),
('Mary','2016-11-10',1),
('Mary','2017-12-07',2);

INSERT INTO product VALUES
(1,'Mobile',980),
(2,'Ipad',870),
(3,'Laptop',330);
-- Question 19: Insert duplicate record into product table

INSERT INTO product (product_id, product_name, price_value)
VALUES (3, 'Laptop', 330);