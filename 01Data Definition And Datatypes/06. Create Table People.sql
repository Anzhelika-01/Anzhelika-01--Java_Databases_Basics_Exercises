CREATE TABLE people(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(10, 2),
    weight DOUBLE(100, 2),
    gender CHAR(2) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT,
    
    PRIMARY KEY(id)
);

INSERT INTO people(id, name, gender, birthdate) VALUES
(1, "Anzhi", 'f', DATE(NOW())),
(2, "Pesho", 'm', DATE(NOW())),
(3, "Gosho", 'm', DATE(NOW())),
(4, "Ivana", 'f', DATE(NOW())),
(5, "Gergana", 'f', DATE(NOW()));
