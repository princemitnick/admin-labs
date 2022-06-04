SELECT * FROM customer
JOIN customer_order ON customer.id = customer_order.customer_id;