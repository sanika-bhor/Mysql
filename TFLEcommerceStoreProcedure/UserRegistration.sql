
-- Creating a Stored Procedure for User Registration
DELIMITER //
CREATE PROCEDURE userRegistration(
IN p_username VARCHAR(50),
IN p_password VARCHAR(255),
IN p_email VARCHAR(100),
IN p_address VARCHAR(255)
)
BEGIN
     INSERT INTO users(username,password, email,address)values(p_username,p_password,p_email,p_address);
END //
DELIMITER ;

CALL userRegistration("Sanika_bhor","pass123","sanika@example.com","manchar");
