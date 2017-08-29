INSERT INTO todos (title, priority, created_at, completed_at) VALUES
('Buy groceries',         10, now(), NULL),
('Meditate in the room',   5, now(), NULL),
('Poop',                  10, now(), now()),
('Do homework',            8, now(), NULL),
('Sleep',                  7, now(), now()),
('Walk over there',        3, now(), NULL),
('Walk over here',         2, now(), now()),
('Go on a run',            3, now(), NULL),
('Buy plastic bags',       3, now(), NULL),
('Meditate on a mountain', 5, now(), NULL),
('Poop on a mountain',    10, now(), now()),
('Change clothes',         3, now(), NULL),
('Sleep on a mountain',    7, now(), now()),
('Buy chairs',             9, now(), NULL),
('Spend money on things',  2, now(), now()),
('Read a boook',           3, now(), NULL),
('Skip jacks',             9, now(), NULL),
('Sing the kukuru song',   2, now(), now());

SELECT * FROM todos WHERE priority = 3 AND completed_at IS NULL;

SELECT COUNT(*) FROM todos GROUP BY priority;

SELECT * FROM todos WHERE created_at > now() - interval '30' day;

SELECT * FROM todos WHERE completed_at IS NULL ORDER BY priority DESC;
