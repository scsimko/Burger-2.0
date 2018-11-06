
USE f1qo6ov2ko2pyzrn;
DROP TABLE IF EXISTS burgers;
CREATE TABLE burgers(
	id INT NOT NULL AUTO_INCREMENT,
	burger_name VARCHAR(255) NOT NULL,
	devoured BOOLEAN NOT NULL,
	date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
);
INSERT INTO burgers (burger_name, devoured) VALUES ("Cheese burger", FALSE);
INSERT INTO burgers (burger_name, devoured) VALUES ("Turkey burger", FALSE);
INSERT INTO burgers (burger_name, devoured) VALUES ("Veggie Burger", FALSE);
SELECT * FROM burgers;