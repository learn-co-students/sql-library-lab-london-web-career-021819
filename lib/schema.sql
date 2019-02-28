CREATE TABLE Series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id,
  subgenre_id
);

CREATE TABLE Subgenres (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE Authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE Books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id
);

CREATE TABLE Characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  motto TEXT,
  species TEXT,
  author_id,
  series_id
);

CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
  character_id,
  book_id
);
