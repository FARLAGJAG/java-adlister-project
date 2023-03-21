USE gen_con_db;



DROP TABLE IF EXISTS ad;
DROP TABLE IF EXISTS brand;
DROP TABLE IF EXISTS user;

CREATE TABLE user
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(128) NOT NULL,
    email      VARCHAR(128) NOT NULL,
    password   VARCHAR(128) NOT NULL
);

CREATE TABLE brand
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL
);

CREATE TABLE ad
(
    id             INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title          VARCHAR(128) NOT NULL,
    description    VARCHAR(300),
    item_condition VARCHAR(10)  NOT NULL,
    brand_id       INT UNSIGNED NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand (id),
    userId        INT UNSIGNED NOT NULL,
    FOREIGN KEY (userId) REFERENCES user (id)
);