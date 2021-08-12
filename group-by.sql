SELECT count(*), g.name
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
GROUP BY g.name;


SELECT count(*), g.name
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name;


SELECT ar.name, COUNT(al.*)
    FROM artist ar
    JOIN album al ON ar.artist_id = al.artist_id
    GROUP BY ar.name;
