CREATE DATABASE practice_ad_db;

USE practice_ad_db;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    email_address VARCHAR(100)NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE ad(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (user_id) REFERENCES users(id));

CREATE TABLE categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ad_categories(
    ad_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ad(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)

);

SELECT email_address, title FROM users
JOIN ad ON users.id = ad.user_id;

SELECT ad.title, c.name FROM ad
JOIN ad_categories ac on ad.id = ac.ad_id
JOIN categories c on c.id = ac.category_id;


