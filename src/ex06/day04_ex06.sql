CREATE VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name
FROM menu
INNER JOIN pizzeria
ON menu.pizzeria_id = pizzeria.id
INNER JOIN person_visits
ON menu.pizzeria_id = person_visits.pizzeria_id
INNER JOIN person
ON person.id = person_visits.person_id
WHERE menu.price < 800 AND person.name = 'Dmitriy' AND person_visits.visit_date = '2022-01-08';