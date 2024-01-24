DROP TABLE users
PRAGMA foreign_keys = ON;


--Tables
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  motto TEXT NULL
 );

 CREATE TABLE dogs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
 );

 CREATE TABLE favorites (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  dog_id INTEGER,
  unique(user_id, dog_id),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(dog_id) REFERENCES dogs(id)
 );

--Users
 INSERT INTO users (first_name, last_name, motto) VALUES (
  "Jon", 
  "Higgz",
  "I love coding"
 );

  INSERT INTO users (first_name, last_name, motto) VALUES (
  "Andrey", 
  "Rusterton",
  "I love coding even more"
 );

  INSERT INTO users (first_name, last_name, motto) VALUES (
  "Peter", 
  "Garboni",
  "I love coding even more"
 );

-- Dogs
 INSERT INTO dogs (name) VALUES (
  "DOOMSLAYER"
 );

 INSERT INTO dogs (name) VALUES (
  "Zoey"
 );

 INSERT INTO dogs (name) VALUES (
  "Jefferey"
 );


-- Favorites
 INSERT INTO favorites (user_id, dog_id) VALUES (
  3, 1
 );

 INSERT INTO favorites (user_id, dog_id) VALUES (
  1, 1
 );

  INSERT INTO favorites (user_id, dog_id) VALUES (
  2, 1
 );

  INSERT INTO favorites (user_id, dog_id) VALUES (
  1, 3
 );

  INSERT INTO favorites (user_id, dog_id) VALUES (
  2, 2
 );