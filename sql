CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 10),
    rating_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
