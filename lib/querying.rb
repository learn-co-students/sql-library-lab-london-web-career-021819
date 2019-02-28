def select_books_titles_and_years_in_first_series_order_by_year
"SELECT Books.title, Books.year
 FROM Books
 JOIN Series
 ON Series.id = Books.series_id
 WHERE Series.id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM Characters WHERE length(motto) = (SELECT max(length(motto)) FROM Characters);"
end


def select_value_and_count_of_most_prolific_species
"SELECT Characters.species, count(Characters.species) FROM Characters
 GROUP BY Characters.species
 ORDER BY count(Characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
"SELECT Authors.name, Subgenres.name
 FROM Authors
 JOIN Series
 ON authors.id = Series.author_id
 JOIN Subgenres
 ON Subgenres.id  = Series.subgenre_id;"
end

def select_series_title_with_most_human_characters
"SELECT series.title
 FROM characters
 INNER JOIN series
 ON series_id = series.id
 WHERE characters.species = 'human'
 GROUP BY series.title
 ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
"SELECT Characters.name, count(character_books.book_id)
 FROM Characters
 JOIN character_books
 ON Characters.id = character_books.character_id
 GROUP BY Characters.name
 ORDER BY count(character_books.book_id) DESC;"
end
