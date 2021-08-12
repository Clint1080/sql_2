-- SELECT p.name AS painter, e.name era
-- FROM painters p
-- JOIN eras e
-- ON p.era_id = e.era_id;


-- SELECT a.name title, a.year, p.name painter
-- FROM artworks a
-- JOIN painters p
-- ON a.painter_id = p.painter_id
-- ORDER BY a.year;

-- SELECT a.year, p.name painter, a.name title
-- FROM artworks a
-- JOIN painters p
-- ON a.painter_id = p.painter_id
-- ORDER BY a.year;


-- CREATE VIEW all_artwork_info AS
-- SELECT e.name "era", p.name "painter", a.name "artwork", a.year
-- FROM artworks a
-- JOIN painters p ON a.painter_id = p.painter_id
-- JOIN eras e ON p.era_id = e.era_id; 

-- SELECT * FROM all_artwork_info
-- WHERE year < 1800;


-- SELECT * FROM painters
-- WHERE era_id IN (
-- 	SELECT era_id From eras WHERE name = 'Cubism'
-- );

SELECT a.name, a.year 
FROM artworks a
WHERE painter_id IN (
	SELECT painter_id 
  FROM painters p 
  WHERE p.name LIKE 'M%'
);
