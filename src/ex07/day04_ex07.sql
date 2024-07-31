INSERT INTO person_visits
VALUES ((SELECT MAX(id) + 1 FROM person_visits),
(SELECT person.id FROM person WHERE person.name = 'Dmitriy'),
(SELECT pizzeria.id FROM pizzeria INNER JOIN menu ON menu.pizzeria_id = pizzeria.id 
WHERE menu.price < 800 AND pizzeria.name != 'Papa Johns' ORDER BY 1 LIMIT 1), '2022-01-08');
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;