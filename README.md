# My_SQL_reference
## SQL LITE
## steps with Examples

### CREATING A TABLE

- ```sql
  CREATE TABLE cats (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);
  ```
- Its creates a new table

### ADDING A COLUMN

- ```sql
   ALTER TABLE cats ADD COLUMN breed TEXT; 
  ```
- it adds a column to the table
### DELETING THE WHOLE TABLE

- ```sql
   DROP TABLE cats;
  ```
- it deletes the table
   
### INSERTING

-  ```sql
   INSERT INTO cats (name, age, breed) VALUES ('Maru', 3, 'Scottish Fold');
   ```
### UPDATING

- ```sql
  UPDATE fans
  SET artist_id = 160
  WHERE
  name |="essy"
  ```
### DELETING

- ```sql
  DELETE FROM fans WHERE name ="essy'
  ```

### SELECTING BY COLUMN NAME

-  ```sql
   SELECT*FROM cats; -=>this is a special selector, known commonly as the 'wildcard' Selector *.
   ```
-  The * selector means: "Give me all the data from all the columns for all of the cats"

- ```sql 
   SELECT name FROM cats;
   ```
-  To select just certain columns from a table

- ```sql 
  SELECT DISTINCT name FROM cats;
  ```
- If you have duplicate data (for example, two cats with the same name) and you only want to select unique values, you can use the DISTINCT keyword.

### SELECTING BASED ON THE CONDITION:THE WHERE CLAUSE.

- ```sql
  SELECT * FROM [table name] WHERE [column name] = [some value];
  SELECT * FROM cats WHERE name = "Maru";
  ```
- ```sql
  SELECT * FROM cats WHERE age < 2;
  ```
- use comparison ops < > to select specific data

### UPDATE
- ```sql
   UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];
   UPDATE cats SET name = "Hana" WHERE name = "Hannah";
   ```

### DELETE
- ```sql
  DELETE FROM [table name] WHERE [column name] = [value];
  ```
- DELETE FROM cats WHERE id = 3;




- database selecting specific artist
- SELECT*FROM artists
- SELECT* FROM artists WHERE name="essy uge";
-  SELECT FROM artists WHERE name LIKE%ess%;

- CREATE TABLE, ALTER TABLE,DROP TABLE
#### .help
#### .tables
#### .schema

## SQL QUERY

The term "query" refers to any SQL statement that retrieves data from your database

1. ORDER BY
 This modifier allows us to order the table rows returned by a certain SELECT statement.
SELECT column_name FROM table_name ORDER BY column_name ASC|DESC;
ie SELECT * FROM cats ORDER BY age;
When using ORDER BY, the default is to order in ascending order. If we want to specify though, we can use ASC for "ascending" or DESC for "descending."
SELECT * FROM cats ORDER BY age DESC;

 2. LIMIT

SELECT * FROM cats ORDER BY age DESC LIMIT 1;
returns all of the cats in order from oldest to youngest. Setting a LIMIT of 1 returns just the first, i.e. oldest, cat on the list.

3. BETWEEN
SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
SELECT name FROM cats WHERE age BETWEEN 1 AND 3;

4. NULL

 We can add data with missing values using the NULL keyword.
INSERT INTO cats (name, age, breed) VALUES (NULL, NULL, "Tabby");
SELECT * FROM cats WHERE name IS NULL;

5.COUNT

COUNT will count the number of records that meet a certain condition.
SELECT COUNT([column name]) FROM [table name] WHERE [column name] = [value];
SELECT COUNT(owner_id) FROM cats WHERE owner_id = 1;

6. GROUP BY

GROUP BY is a great function for aggregating results into different segments
SELECT breed, owner_id, COUNT(breed) FROM cats GROUP BY breed, owner_id;
SELECT breed, COUNT(breed) FROM cats GROUP BY breed;

7.SELECT
SELECT name FROM cats;
Might be written as like this as well;
SELECT cats.name FROM cats;
SELECT cats.name, dogs.name FROM cats, dogs;




    .headers on
    .mode column
    .width auto


.headers on      # output the name of each column
.mode column     # now we are in column mode, enabling us to run the next two .width commands
.width auto      # adjusts and normalizes column width
.width NUM1, NUM2 # customize column width

## USING AGGREGATE FUNCTIONS

AVG, SUM, COUNT, MIN, MAX

1.The average, AVG(), function returns the average value of a column.
SELECT AVG(column_name) FROM table_name;
ie SELECT AVG(net_worth) FROM cats;
That return value is a little ugly, however. Let's use the AS keyword to rename the column. This is called "aliasing the return value".
SELECT AVG(net_worth) AS average_net_worth FROM cats;

2.SUM

The sum, SUM(), function returns the sum of all of the values in a particular column.
SELECT SUM(column_name) FROM table_name;
SELECT SUM(net_worth) FROM cats;


3. MIN && MAX

The minimum and maximum aggregator functions return the minimum and maximum values from a specified column respectively.
SELECT MIN(column_name) FROM table_name;
SELECT MAX(column_name) FROM table_name;
SELECT MIN(net_worth) FROM cats;

4. COUNT

The count function returns the number of rows that meet a certain condition.
SELECT COUNT(column_name) FROM table_name;
SELECT COUNT(name) FROM cats;

5.COUNT(*)

We can also use COUNT() to count the total number of rows in a table that meet a certain condition.
SELECT COUNT(*) FROM cats WHERE net_worth > 1000000;