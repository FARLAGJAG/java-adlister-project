USE gen_con_db;



DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS brands;
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(128) NOT NULL,
    email      VARCHAR(128) NOT NULL,
    password   VARCHAR(128) NOT NULL
);

CREATE TABLE brands
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL
);

CREATE TABLE ads
(
    id             INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title          VARCHAR(128) NOT NULL,
    description    VARCHAR(300),
    item_condition VARCHAR(10)  NOT NULL,
    brand_id       INT UNSIGNED NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands (id),

    user_id        INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)

);