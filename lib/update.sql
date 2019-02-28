
UPDATE characters SET species = "Martian" WHERE ID = (SELECT MAX(id) FROM characters);
