SQL LITE
steps:
1.sqlite3 pet_database.db

2.CREATE TABLE cats (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
); (Its creates a new table)

3.ALTER TABLE cats ADD COLUMN breed TEXT; (it adds a column to the table)

4.DROP TABLE cats;  (it deletes the table)

5.INSERT INTO cats (name, age, breed) VALUES ('Maru', 3, 'Scottish Fold');

6.UPDATE fans
SET artist_id = 160
WHERE
name |="essy"

7.DELETE FROM fans WHERE name ="essy'

Selecting by Column Names

8.SELECT*FROM cats; -=>this is a special selector, known commonly as the 'wildcard' Selector *.
The * selector means: "Give me all the data from all the columns for all of the cats"

9.SELECT name FROM cats;
To select just certain columns from a table

10.SELECT DISTINCT name FROM cats;
If you have duplicate data (for example, two cats with the same name) and you only want to select unique values, you can use the DISTINCT keyword.

Selecting based on conditions:The where clause

11. SELECT * FROM [table name] WHERE [column name] = [some value];
SELECT * FROM cats WHERE name = "Maru";
12.use comparison ops <> to select specific data
 SELECT * FROM cats WHERE age < 2;

UPDATE
13. UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];
UPDATE cats SET name = "Hana" WHERE name = "Hannah";

DELETE
14.DELETE FROM [table name] WHERE [column name] = [value];
DELETE FROM cats WHERE id = 3;




database selecting specific artist
=> SELECT*FROM artists
=> SELECT* FROM artists WHERE name="essy uge";
=>  SELECT FROM artists WHERE name LIKE%ess%;

CREATE TABLE, ALTER TABLE,DROP TABLE
.help,.tables.schema