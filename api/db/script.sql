CREATE DATABASE IF NOT EXISTS ploomesDB;
USE ploomesDB;

CREATE TABLE IF NOT EXISTS products (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  price DECIMAL(10, 2),
  PRIMARY KEY (id)
);

INSERT INTO products VALUE(0, 'Tv 50 polegadas', 2500);
INSERT INTO products VALUE(0, 'Celular xy', 900);