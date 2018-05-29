USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 2),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 2),
  ('adam', 'adam@example.com', NULL)

SELECT *
FROM roles
JOIN users u on roles.id = u.role_id;

SELECT *
FROM roles
LEFT JOIN users u on roles.id = u.role_id;


SELECT *
FROM roles
RIGHT JOIN users u on roles.id = u.role_id;