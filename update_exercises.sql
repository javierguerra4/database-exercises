USE codeup_test_db;

#Album titles
SELECT name FROM albums
WHERE id BETWEEN 1 AND 30;



#Released before 1980
SELECT name, release_date FROM albums
WHERE release_date < 1980;

#MJ albums
SELECT artist, name FROM albums
WHERE artist = 'Michael Jackson';


#Make albums 10x more popular
UPDATE albums
SET sales = sales * 10;


#Set 100 years back
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums
