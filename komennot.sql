CREATE DATABASE heppa CHARACTER SET utf8;
GRANT ALL ON heppa.* TO iron@localhost IDENTIFIED BY 'bear';

USE heppa;
CREATE TABLE model(id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(1024));
INSERT INTO model(name) VALUES ('marin');
INSERT INTO model(name) VALUES ('nakamura');
INSERT INTO model(name) VALUES ('kona');

