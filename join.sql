SELECT * fROM invoice
WHERE invoice_id IN (
	SELECT invoice_id 
  FROM invoice_line
  WHERE unit_price > .99
);


SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customers c
ON i.customer_id  = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customers c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar
ON al.album_id = ar.artist_id;

SELECT pt.track_id
FROM playlist_track pt
JOIN playlist pl
ON pl.playlist_id = pt.playlist_id
WHERE pl.name = 'Music';

SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

SELECT tr.name, pl.name
FROM track tr
JOIN playlist_track pt ON tr.track_id = pt.track_id
JOIN playlist pl ON pl.playlist_id = pt.playlist_id;
    
SELECT tr.name, al.title
FROM album al
JOIN track tr ON al.album_id = tr.album_id
JOIN genre g ON g.genre_id = tr.genre_id;


SELECT * FROM INVOICE
WHERE invoice_id IN (
    SELECT invoice_id
    FROM invoice_line
    WHERE unit_price > .99
);
-- 2
SELECT * FROM playlist_track
WHERE playlist_id IN (
    SELECT playlist_id
    FROM playlist
    WHERE name = 'Music'
);
-- 3
SELECT * FROM playlist
WHERE 