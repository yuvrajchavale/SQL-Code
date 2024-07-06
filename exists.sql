use test_1

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    -- Add other order details columns here
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

INSERT INTO customer (customer_id, first_name, last_name)
VALUES
    (1, 'John', 'Doe'),
    (2, 'Jane', 'Smith'),
    (3, 'Michael', 'Johnson');

	INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
    (101, 1, '2023-08-06', 150.00),
    (102, 1, '2023-08-06', 200.50),
    (103, 2, '2023-08-05', 75.25),
    (104, 3, '2023-08-04', 300.00);
	(105, 1, '2023-08-06', 150.00),
    (106, 2, '2023-08-06', 123.50),
    (107, 2, '2023-08-05', 78.25),
    (108, 2, '2023-08-04', 300.00);

	select * from customer
	select * from orders

	select 
	 customer_id,
	 first_name,
	 last_name
	 from customer c
	 where 
	 exists(
	 select count(*)
	 from orders o
	 where c.customer_id=o.customer_id
	 group by customer_id
	 having count(*)>2
	 )
---extra info
	 select 
		customer_id,
		first_name,
		last_name
from customer c
where 
not exists(
	select * from orders where order_id=201
)
