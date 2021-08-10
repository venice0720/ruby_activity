CREATE TABLE students(id integer PRIMARY KEY, first_name VARCHAR (100),middle_name VARCHAR (100),last_name VARCHAR (100),age INTEGER,location VARCHAR(100));

SELECT * from students;

INSERT into students (id, first_name,last_name, age, location) VALUES (1, 'Juan', 'Cruz', 18, 'Manila');

INSERT into students (id, first_name,last_name, age, location) VALUES (2, 'Anne', 'Wall', 20, 'Manila');

INSERT into students (id, first_name,last_name, age, location) VALUES (3, 'Theresa', 'Joseph', 21, 'Manila');

INSERT into students (id, first_name,last_name, age, location) VALUES (4, 'Isaac', 'Gray', 19, 'Laguna');

INSERT into students (id, first_name,last_name, age, location) VALUES (5, 'Zack', 'Matthews', 22, 'Marikina');

INSERT into students (id, first_name,last_name, age, location) VALUES (6, 'Finn', 'Lam', 25, 'Manila');


UPDATE students set first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan' where id = 1;

DELETE FROM students where id = 6;

-- New activity

SELECT COUNT(id) FROM students;

SELECT * from students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * from students ORDER BY age desc;