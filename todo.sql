
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, completed_at) VALUES
('Feed dog', NULL),
('Brush dog hair', now()),
('Cut dog nails', NULL),
('Wash dog', NULL),
('Give dog medicine', NULL);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = now() WHERE id = '1';

DELETE FROM todos WHERE completed_at IS NOT NULL;
