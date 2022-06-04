SELECT * FROM customer 
JOIN customer_order ON customer.id = customer_order.customer_id;


select customer.first_name, customer_order.total_amount from customer 
join customer_order  on customer.id = customer_order.customer_id;

select customer.* from customer;

select * from customer 
join customer_order on customer.id = customer_order.customer_id
join order_item on customer_order.id = order_item.order_id
join product on order_item.product_id = product.id
