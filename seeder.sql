USE gen_con_db;

# master user
INSERT INTO users (username, email, password)
VALUES ('master', 'master@gencon.com', 'master');

# four brands
INSERT INTO brands (name)
VALUES ('Sega');
INSERT INTO brands (name)
VALUES ('Nintendo');
INSERT INTO brands (name)
VALUES ('Xbox');
INSERT INTO brands (name)
VALUES ('Playstation');

# two ads

INSERT INTO ads (title, description, item_condition, brand_id, user_id)
VALUES ('Blue game cube', 'New in the box, ready to ROCK!, shipped from japan. INCLUDES SMASH BROS you can get smashed by my diddy', 'new', '2', '1');

INSERT INTO ads (title, description, item_condition, brand_id, user_id)
VALUES ('OG XBOX!', 'Where it all began! HALO enough said, dont be cheap!', 'used', '3', '1');


