CREATE DATABASE ig_project;

CREATE TABLE users (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	image_url ,
	user_id ,
	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE comments (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	commented_text ,
	user_id ,
	photo_id ,
	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE likes (
	user_id ,
	photo_id ,
	created_at TIMESTAMP DEFAULT NOW()
);

