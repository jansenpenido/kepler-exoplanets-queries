-- Queries both the Star and the Planet table and calculates the following quantities:
-- 1. the average value of the planets' equilibrium temperature t_eq, rounded to one decimal place;
-- 2. he minimum effective temperature t_eff of the stars;
-- 3. the maximum value of t_eff;

SELECT round(avg(p.t_eq), 1),
       min(s.t_eff),
       max(s.t_eff)
FROM Star AS s
INNER JOIN Planet AS p USING (kepler_id)
WHERE s.t_eff >
        (SELECT avg(t_eff)
         FROM star);
