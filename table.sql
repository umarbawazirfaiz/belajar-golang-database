CREATE TABLE customer
(
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DELETE FROM customer;

ALTER TABLE customer
    ADD COLUMN email VARCHAR(100),
    ADD COLUMN balance INTEGER DEFAULT 0,
    ADD COLUMN rating DOUBLE DEFAULT 0.0,
    ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ADD COLUMN birth_date date,
    ADD COLUMN married BOOLEAN DEFAULT false;

INSERT INTO customer (id, name, email, balance, rating, birth_date, married) 
    VALUES
        ('umar', 'Umar', 'umar@gmail.com', 1000000, 90.0, '1999-10-10', false),
        ('budi', 'Budi', 'budi@gmail.com', 2000000, 80.0, '1996-09-09', true),
        ('ahmad', 'Ahmad', 'ahmad@gmail.com', 1500000, 50.0, '1992-02-02', true);

UPDATE customer
    SET email = NULL,
        birth_date = NULL
    WHERE id = 'ahmad';


CREATE TABLE user (
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (username)
);

INSERT INTO user (username, password) 
    VALUES
        ('admin', 'admin');


CREATE TABLE comments (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    comment TEXT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

