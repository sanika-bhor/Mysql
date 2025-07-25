-- Creating a Stored Procedure for Retrieving Order Details
-- price, quntity, name , order id, shipping address, oredrdate
DELIMITER //
CREATE PROCEDURE RetrieveOrder(
IN order_id int
)
BEGIN
 select o.id, o.order_date, o.shipping_address, p.name, p.id as product_id, oi.quantity
 from orders o
 join order_items oi on oi.order_id=o.id
 join products p on p.id=oi.item_id
 where o.id=order_id;
END //
DELIMITER ;

CALL RetrieveOrder(1);