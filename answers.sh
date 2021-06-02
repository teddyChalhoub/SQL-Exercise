### Basic Queries:

1. SELECT Name from students; 

2. SELECT * from students WHERE Age > 30;

3. SELECT name from students WHERE Age = 30 AND Gender = "F";

4. SELECT Points from students WHERE name = "Alex";

5. INSERT INTO students (name,Age,Gender,Points) VALUES ("Teddy", 29,"M",100);

6. UPDATE students SET Points = Points + 100 WHERE name = "Basma"; 

7. UPDATE students SET Points = Points - 10 WHERE name = "Alex"; 

### Creating Table:

CREATE TABLE graduates(
ID Integer Not Null Primary key AUTOINCREMENT,
Name Text Not Null Unique,
Age Integer,
Gender Text,
Points Integer,
Graduation Text 
);

INSERT INTO graduates (name,Age,Gender,Points)
SELECT name, Age,Gender,Points FROM students 
WHERE name = "Layal";

UPDATE graduates
SET Graduation = "08/09/2018"
WHERE name = "Layal";

DELETE FROM students WHERE name = "Layal";

### Joins:

1. SELECT employees.name, companies.name, companies.date
FROM employees INNER JOIN companies 
ON employees.Company = companies.Name; 

2. SELECT employees.name
FROM employees INNER JOIN companies 
ON employees.Company = companies.Name
WHERE date < 2000; 

3. SELECT companies.name
FROM employees INNER JOIN companies 
ON employees.Company = companies.Name
WHERE Role = "Graphic Designer"; 







