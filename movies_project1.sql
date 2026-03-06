CREATE TABLE IF NOT EXISTS users(
user_id BIGSERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
number VARCHAR(20),
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(100) NOT NULL,
created_on TIMESTAMPTZ DEFAULT NOW() NOT NULL,
last_login TIMESTAMPTZ DEFAULT NOW()

);

CREATE TABLE  IF NOT EXISTS  movies(
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    year INTEGER 
);

 CREATE TABLE IF NOT EXISTS reviews (
    id BIGSERIAL PRIMARY KEY,
    movie_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    rating DOUBLE PRECISION CHECK(rating >= 0 AND rating <= 10),
    review TEXT,
	 FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
	 FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);




