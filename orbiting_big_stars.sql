-- Finds the radii of those planets in the Planet table which orbit the five
-- largest stars in the Star table.
--
-- The query returns the planet's koi_name and radius as well as the corresponding
-- star radius.

SELECT p.koi_name AS OBJECT,
       p.radius AS planet_radius,
       s.radius AS star_radius
FROM star AS s
JOIN planet AS p USING (kepler_id)
WHERE kepler_id IN
        (SELECT kepler_id
         FROM star
         ORDER BY radius DESC
         LIMIT 5);
