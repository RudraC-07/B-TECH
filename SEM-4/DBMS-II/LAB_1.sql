--SELECT * FROM Artists
--SELECT * FROM Albums
--SELECT * FROM Songs



----------PART-A(QUERIES)----------


--1. Retrieve a unique genre of songs.
SELECT DISTINCT GENRE FROM Songs

--2. Find top 2 albums released before 2010.
SELECT TOP 2 ALBUM_TITLE FROM Albums
WHERE Release_year < 2010

--3. Insert Data into the Songs Table. (1245, ‘Zaroor’, 2.55, ‘Feel good’, 1005)
INSERT INTO Songs VALUES (1245, 'Zaroor', 2.55, 'Feel good', 1005)

--4. Change the Genre of the song ‘Zaroor’ to ‘Happy’
UPDATE Songs
SET Genre = 'Happy'
WHERE Song_title = 'Zaroor'

--5. Delete an Artist ‘Ed Sheeran’
DELETE FROM Artists
WHERE Artist_name = 'Ed Sheeran'

--6. Add a New Column for Rating in Songs Table. [Ratings decimal(3,2)]
ALTER TABLE SONGS
ADD Ratings decimal(3,2)

--7. Retrieve songs whose title starts with 'S'.
SELECT * FROM Songs
WHERE Song_title LIKE 'S%'

--8. Retrieve all songs whose title contains 'Everybody'.
SELECT * FROM Songs
WHERE Song_title LIKE '%Everybody%' 

--9. Display Artist Name in Uppercase.
SELECT UPPER(Artist_name) FROM Artists

--10. Find the Square Root of the Duration of a Song ‘Good Luck’
SELECT SQRT(Duration) FROM Songs
WHERE Song_title = 'Good Luck'

--11. Find Current Date.
SELECT GETDATE()

--12. Find the number of albums for each artist.
SELECT a1.Artist_Name,COUNT(a2.Album_Id) AS 'No. Of Albums' FROM Artists a1
JOIN Albums a2
ON a1.Artist_Id = a2.Artist_id
GROUP BY a1.Artist_name

--13. Retrieve the Album_id which has more than 5 songs in it.
SELECT a.Album_id,COUNT(s.Song_id) FROM Albums a
JOIN Songs s
ON a.Album_id = s.Album_id
GROUP BY a.Album_id
HAVING  COUNT(s.Song_id) > 5

--14. Retrieve all songs from the album 'Album1'. (using Subquery)
SELECT Song_title FROM Songs
WHERE Album_id IN (SELECT Album_id FROM Albums WHERE Album_title = 'Album1')

--15. Retrieve all albums name from the artist ‘Aparshakti Khurana’ (using Subquery)
SELECT Album_title FROM Albums
WHERE Artist_id IN (SELECT Artist_id FROM Artists WHERE Artist_name = 'Aparshakti Khurana')

--16. Retrieve all the song titles with its album title.
SELECT S.Song_title,A.Album_title FROM Songs S
JOIN Albums A
ON A.Album_id = S.Album_id

--17. Find all the songs which are released in 2020.
SELECT S.Song_title,A.Album_title FROM Songs S
JOIN Albums A
ON A.Album_id = S.Album_id
WHERE A.Release_year = 2020

--18. Create a view called ‘Fav_Songs’ from the songs table having songs with song_id 101-105.
CREATE VIEW 
--19. Update a song name to ‘Jannat’ of song having song_id 101 in Fav_Songs view.
--20. Find all artists who have released an album in 2020.
--21. Retrieve all songs by Shreya Ghoshal and order them by duration. 