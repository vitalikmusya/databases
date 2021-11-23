
CREATE DATABASE IF NOT EXISTS films;
USE films;

DROP TABLE IF EXISTS album_actor;
DROP TABLE IF EXISTS facts;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS film;

CREATE TABLE IF NOT EXISTS film (
  id          int           PRIMARY KEY AUTO_INCREMENT,
  name        varchar(99)   NOT NULL,
  descriptions varchar(1000) NOT NULL,
   rating     varchar(99)         NOT NULL DEFAULT 0,
  box_office  varchar(99)         NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS actor (
  id          int         PRIMARY KEY AUTO_INCREMENT,
  first_name  varchar(99) NOT NULL,
  second_name varchar(99) NOT NULL
);

CREATE TABLE IF NOT EXISTS user (
  id    int         PRIMARY KEY AUTO_INCREMENT,
  name  varchar(99) NOT NULL, 
  email varchar(99) NOT NULL
);

CREATE TABLE IF NOT EXISTS comments (
  id      int           PRIMARY KEY AUTO_INCREMENT,
  film_id int,
  user_id int,
  rating  int           NOT NULL DEFAULT 0,
  text    varchar(1000) NOT NULL,

  FOREIGN KEY (film_id) REFERENCES film(id),
  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS factsactor (
  id      int PRIMARY KEY AUTO_INCREMENT,
  user_id int,
  text    varchar(1000),

  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS album_actor (
  id int PRIMARY KEY AUTO_INCREMENT,
  film_id int,
  actor_id int,

  
  FOREIGN KEY (film_id) REFERENCES film(id),
  FOREIGN KEY (actor_id) REFERENCES actor(id)
);
