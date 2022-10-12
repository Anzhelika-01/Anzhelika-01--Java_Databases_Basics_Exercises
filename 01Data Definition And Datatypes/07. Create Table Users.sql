CREATE TABLE `users`(
	`id` INT AUTO_INCREMENT,
    `username` VARCHAR(30) NOT NULL,
    `password` VARCHAR(26) NOT NULL,
    `profile_picture` BLOB,
    `last_login_time` TIME,
    `is_deleted` BOOLEAN,
    
    PRIMARY KEY(id)
);

INSERT INTO `users`(id, username, password) VALUES
(1, "Anzhi", "sdfksd;"),
(2, "Pesho", "s,fdl,sd"),
(3, "Gosho", "sdfk"),
(4, "Ivan", "5dcf5s"),
(5, "Mila", "sfc55");
