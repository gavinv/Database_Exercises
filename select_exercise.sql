USE codeup_test_db;

-- Number 1 The name of all albums by Pink Floyd
SELECT name FROM albums WHERE artist = 'Pink Floyd';

-- Number 2 The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers''s Lonely Hearts Club Band';

-- Number 3 The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Number 4 The genre for Nevermind
SELECT * FROM albums WHERE release_date between 1990 and 1999;

-- Number 5 Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales > 20.0;

-- Number 6 All the albums in the rock genre
SELECT * FROM albums WHERE genre = 'Rock' OR 'Grunge' OR 'Progressive Rock';