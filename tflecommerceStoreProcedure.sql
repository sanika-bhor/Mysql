-- storeprocedure to apply discount
DELIMITER \\
CREATE PROCEDURE ApplyDiscount(in todaydate date,in order_id int, out sellingPrice int)
begin
DECLARE discount int;
DECLARE tPrice int;
     -- check discount is available or not
	SET discount= (select discount_percentage from discount_codes
     where code="DIWALI21" AND todaydate between start_date and end_date);
     
     -- then apply the discount to an order
     if(discount>0) then
		SET tPrice=(select total_amount from orders where id=order_id);
        SET sellingPrice= tPrice - (tPrice * discount / 100);
     else
		 SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid or expired discount code.';
     end if;
end \\
DELIMITER ;

drop PROCEDURE ApplyDiscount;

SET @price = 0;
CALL ApplyDiscount("2024-7-31",2, @price);
SELECT @price AS FinalSellingPrice;