USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(100) NOT NULL,
record_name VARCHAR(150),
release_date SMALLINT UNSIGNED,
sales FLOAT(6, 2),
genre VARCHAR(50),
PRIMARY KEY (id),
UNIQUE (record_name, artist)
);