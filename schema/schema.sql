-- CREATE MUSIC_ALBUM TABLE
CREATE TABLE music_album (
  id SERIAL PRIMARY KEY,
  author INTEGER,
  genre INTEGER,
  source INTEGER,
  label INTEGERL,
  publish_date DATE NOT NULL,
  archived BOOLEAN,
  on_spotify BOOLEAN,
  FOREIGN KEY (author) REFERENCES author(id),
  FOREIGN KEY (source) REFERENCES source(id),
  FOREIGN KEY (label) REFERENCES label(id),
  FOREIGN KEY (genre) REFERENCES genre(id)
);

-- CREATE GENRE TABLE
CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
);

-- CREATE GENRE ITEMS TABLE
CREATE TABLE genre_items (
  id SERIAL PRIMARY KEY,
  genre_id INTEGER NOT NULL
  item VARCHAR(100) NOT NULL,
  FOREIGN KEY(genre_id) REFERENCES genre(id)
);
