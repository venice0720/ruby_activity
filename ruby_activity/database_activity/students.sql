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


-- New Activity (JOIN)

CREATE TABLE classrooms(id integer PRIMARY KEY, section VARCHAR (3),student_id integer, FOREIGN KEY (student_id) REFERENCES students (id));

INSERT into classrooms (id, student_id, section) VALUES (1, 1, 'A');
INSERT into classrooms (id, student_id, section) VALUES (2, 2, 'A');
INSERT into classrooms (id, student_id, section) VALUES (3, 3, 'B');
INSERT into classrooms (id, student_id, section) VALUES (4, 4, 'C');
INSERT into classrooms (id, student_id, section) VALUES (5, 5, 'B');
INSERT into classrooms (id, student_id, section) VALUES (6, 6, 'A');
INSERT into classrooms (id, student_id, section) VALUES (7, 7, 'C');
INSERT into classrooms (id, student_id, section) VALUES (8, 8, 'B');
INSERT into classrooms (id, student_id, section) VALUES (9, 9, 'B');
INSERT into classrooms (id, student_id, section) VALUES (10, 10, 'C');

SELECT * FROM students s INNER JOIN classrooms c ON c.student_id=s.id;
SELECT * FROM students s LEFT JOIN classrooms c ON c.student_id=s.id;
SELECT * FROM classrooms c RIGHT JOIN students s ON c.student_id=s.id;
SELECT * FROM classrooms c FULL JOIN students s ON c.student_id=s.id;
