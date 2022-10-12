CREATE TABLE `directors`(
	id INT AUTO_INCREMENT,
    director_name VARCHAR(200) NOT NULL,
    notes TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `genres`(
	id INT AUTO_INCREMENT,
    genre_name VARCHAR(200) NOT NULL,
    notes TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `categories`(
	id INT AUTO_INCREMENT,
    category_name CHAR(2) NOT NULL,
    notes TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `movies`(
	id INT AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    director_id INT,
    copyright_year INT,
    length FLOAT,
    genre_id INT,
    category_id INT,
    rating FLOAT,
    notes TEXT,
    
    PRIMARY KEY(id)
);

INSERT INTO directors(`id`, `director_name`) VALUES
(1, "Anzhi"), (2, "Ivan"), (3, "Pesho"), (4, "Ivana"), (5, "Didi");

INSERT INTO genres(`id`, `genre_name`) VALUES
(1, "Drama"), (2, "Comedy"), (3, "Historical"), (4, "Romance"), (5, "Biographical");

INSERT INTO categories(`id`, `category_name`) VALUES
(1, 'A'), (2, 'B'), (3, 'C'), (4, 'D'), (5, 'E');

INSERT INTO movies(`id`, `title`) VALUES
(1, "Scarface"), (2, "The Irishman"), (3, "Hangover"), (4, "Mean girls"), (5, "Focus");
