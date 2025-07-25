
-- Creating a Stored Procedure for User Login
DELIMITER //
CREATE PROCEDURE userLogin(
IN p_username VARCHAR(50),
IN p_password VARCHAR(255)
)
BEGIN
	SELECT * FROM users where username=p_username AND password=p_password;
END //
DELIMITER ;

CALL userLogin("sanika_bhor","pass123");