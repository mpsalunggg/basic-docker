CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL
);

INSERT INTO users (name, email)
VALUES
  ('Putra', 'putra@example.com'),
  ('Francis', 'francis@example.com')
ON CONFLICT DO NOTHING;