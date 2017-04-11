CREATE TABLE departments (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL

);

CREATE TABLE professors (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  departments_id INTEGER NOT NULL,
  FOREIGN KEY (departments_id) REFERENCES departments(id)

);

INSERT INTO
  departments (name)
VALUES
  ('mathematics'), ('physics');

INSERT INTO
  professors (first_name,last_name, departments_id)
VALUES
  ('Albert', 'Einstein', (SELECT id FROM departments WHERE name = 'physics')),
  ('Kurt','Godel', (SELECT id FROM departments WHERE name = 'mathematics'));
