CREATE TABLE IF NOT EXISTS customer
(
    id BIGSERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    address TEXT NOT NULL,
    create_at TIMESTAMP WITH TIME ZONE
);

INSERT INTO customer (id, first_name, last_name, email, address, create_at)
VALUES (1, 'James', 'Bond', 'james.bond@gmail.com', 'London, UK', now()),
(2, 'Ali', 'Ahmed', 'ali.ahmed@gmail.com', 'Florida, USA', now()),
(3, 'Jamila', 'Bah','jamila.bah@yahoo.com', 'Dubai, UAE', now()),
(4, 'Ana', 'Maria', 'ana.maria@hotmail.com', 'Madrid, SPAIN', now());


CREATE TABLE IF NOT EXISTS customer_order
(
    id  BIGSERIAL PRIMARY KEY,
    customer_id BIGINT NOT NULL REFERENCES customer (id),
    total_amount NUMERIC(10, 2) NOT NULL,
    create_at TIMESTAMP WITH TIME ZONE
);

INSERT INTO customer_order(customer_id, total_amount, create_at) 
VALUES (1, 1.80, now()),
(2, 0.28, now()),
(3, 1.89, now()),
(4, 1.90, now());

