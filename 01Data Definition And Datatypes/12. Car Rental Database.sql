CREATE TABLE `categories`(
	id INT AUTO_INCREMENT,
    category VARCHAR(200) NOT NULL,
    daily_rate FLOAT,
    weekly_rate FLOAT,
    monthly_rate FLOAT,
    weekend_rate FLOAT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `cars`(
	id INT AUTO_INCREMENT,
    plate_number INT,
    make VARCHAR(200),
    model VARCHAR(200) NOT NULL,
    car_year INT,
    category_id INT,
    doors INT,
    picture BLOB,
    car_condition TEXT,
    available BOOLEAN,
    
    PRIMARY KEY(id)
);

CREATE TABLE `employees`(
	id INT AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    title VARCHAR(200),
    notes TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `customers`(
	id INT AUTO_INCREMENT,
    driver_licence_number BIGINT NOT NULL,
    full_name VARCHAR(200) NOT NULL,
    address VARCHAR(200),
    city VARCHAR(200),
    zip_code INT,
    notes TEXT,
    
    PRIMARY KEY(id)
);

CREATE TABLE `rental_orders`(
	id INT AUTO_INCREMENT,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    car_condition TEXT, 
    tank_level FLOAT,
    kilometrage_start FLOAT,
    kilometrage_end FLOAT,
    total_kilometrage FLOAT,
    start_date DATE,
    end_date DATE,
    total_days INT,
    rate_applied FLOAT,
    tax_rate FLOAT,
    order_status BOOLEAN,
    notes TEXT,
    
    PRIMARY KEY(id)
);

INSERT INTO `categories`(`id`, `category`) VALUES(1, "sedan"), (2, "coupe"), (3, "hatchback");

INSERT INTO `cars`(`id`, `model`) VALUES(1, "BMW"), (2, "Mercedes"), (3, "Audi");

INSERT INTO `employees`(`id`, `first_name`) VALUES(1, "Anzhi"), (2, "Pesho"), (3, "Mila");

INSERT INTO `customers`(`id`, `driver_licence_number`, `full_name`) VALUES
(1, 151456465143, "Ivan Petrov"),
(2, 464864131355, "Ludmila Yordanova"),
(3, 315468587445, "Anzhelika Koteva");

INSERT INTO `rental_orders`(`id`, `employee_id`, `customer_id`, `car_id`) VALUES(1, 3, 2, 1), (2, 1, 2, 3), (3, 3, 1, 2);
