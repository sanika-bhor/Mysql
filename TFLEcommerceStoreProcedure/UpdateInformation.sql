-- Creating a Stored Procedure for Updating User Information
DELIMITER //
CREATE PROCEDURE UpdateInfo(
IN u_id int,
IN u_email varchar(100),
IN u_address varchar(255)
)
BEGIN
	UPDATE users 
    SET email=u_email, address=u_address
    where id=u_id;
END //
DELIMITER ;


CALL UpdateInfo(22,"sanika.b@example.com","manchar, pune");