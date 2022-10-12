CREATE DATABASE minions;

USE minions;

CREATE TABLE minions(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100),
    age INT NOT NULL,
    
	PRIMARY KEY(id)
);

CREATE TABLE towns(
	town_id INT NOT NULL AUTO_INCREMENT,
    town_name VARCHAR(100),
    
    PRIMARY KEY(town_id)
)
