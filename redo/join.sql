SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > .99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

SELECT c.first_name AS "Customer first name", c.last_name AS "Customer last name", e.first_name AS "Support first name", e.last_name AS "Support last name"
FROM customer c 
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT a.name, al.title
FROM artist a 
JOIN album al ON al.artist_id = a.artist_id;

SELECT pl.track_id, p.name
FROM playlist_track pl
JOIN playlist p ON pl.playlist_id = p.playlist_id
WHERE p.name = 'Music';

SELECT t.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE pt.playlist_id = 200 LIMIT 100; --Added a limit so it would go faster

SELECT t.name AS "Track Name", p.name AS "Playlist Name"
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

SELECT t.name, al.title
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';