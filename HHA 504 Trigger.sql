#Creating a Table named H1N1
CREATE TABLE h1n1 (
resource_id INT AUTO_INCREMENT PRIMARY KEY,
race VARCHAR(10),
age_group VARCHAR(50) NOT NULL,
sex VARCHAR(50) NOT NULL,
h1n1_vaccines INT NOT NULL
);

##Display Tables
SHOW TABLES;

###Creating a trigger with Error Message: "H1N1 concern should be a numerical value between 0 and 3. Please try again."

select * from h1n1 limit 10;
DELIMITER $$
CREATE TRIGGER H1N1_concern_trigger BEFORE INSERT ON h1n1
FOR EACH ROW 
BEGIN
	IF NEW.alert >=3 THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = "H1N1 concern should be a numerical value between 0 and 3. Please try again.";
  END IF;
END; $$

delimiter ;