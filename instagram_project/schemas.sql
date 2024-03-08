-- CREATE DATABASE ig_project;
-- USE ig_project;

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	image_url ,
	user_id ,
	created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE comments (
	id INT AUTO_INCREMENT PRIMARY KEY,
	commented_text ,
	user_id ,
	photo_id ,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (photo_id) REFERENCES photos(id)
);

CREATE TABLE likes (
	user_id ,
	photo_id ,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (photo_id) REFERENCES photos(id)
);

