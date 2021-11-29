--QUESTION 1
Select * from Genre;

--QUESTION 2
select * from Artist order by ArtistName;

--QUESTION 3
select * from Album;

--QUESTION 4
select Title, ArtistName from Song Leftjoin Artist on Song.ArtistId = Artist.Id;

--QUESTION 5
select distinct ArtistName, g.name from Album
Left join Artist on Album.ArtistId = Artist.Id
Left join Genre g on g.id = Album.genreId
where GenreId = 2 or GenreId = 4;

--QUESTION 6
select distinct ArtistName 
from Album
Left join Artist on Album.ArtistId = Artist.Id 
where GenreId = 1

--QUESTION 7
select a.Title as 'Album Title' 
from Album a Left join Song s on s.AlbumId = a.Id
where s.Id is null;

--QUESTION 7
Insert into Artist (ArtistName, YearEstablished) 
VALUES ('Led Zeppelin', '1968');

--QUESTION 8
Insert into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
Values('I', 1969, 2025, 'Olympic', 28, 2)

--QUESTION 9
Insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ('Good Times Bad Times', 216, 9/1/1968, 2, 28, 24)

--QUESTION 10
Select 
al.Title as 'Album Title', 
s.Title as 'Song Title', 
ar.ArtistName
From Artist ar
LEFT Join Album al on al.ArtistId = ar.Id
LEFT join Song s on ar.id = s.ArtistId
where ar.ArtistName = 'Bullet for My Valentine'

--QUESTION 11
SELECT al.Title as AlbumTitle, COUNT(s.Id) as SongCount
	FROM Album al
	JOIN Song s on s.AlbumId = al.Id
	GROUP BY al.Title

--QUESTION 12
SELECT a.ArtistName as AlbumTitle, COUNT(s.Id) as SongCount
	FROM Artist a
	JOIN Song s on s.ArtistId = a.Id
	GROUP BY a.ArtistName

--QUESTION 13
SELECT g.name,
COUNT(s.id) As 'Genre Count'
FROM Song s
JOIN Genre g ON g.id = s.GenreId
GROUP BY g.name

--QUESTION 14
SELECT ArtistName
FROM Album 
JOIN Artist on Artist.Id = Album.ArtistId
GROUP BY ArtistName
HAVING COUNT(distinct Label) > 1;

