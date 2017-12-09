-- Returns the list of stars that have more than one planet orbiting it.

SELECT kepler_id AS star,
       count(koi_name) AS number_of_planets
FROM planet
GROUP BY kepler_id
HAVING count(koi_name) > 1
ORDER BY count(koi_name) DESC;
