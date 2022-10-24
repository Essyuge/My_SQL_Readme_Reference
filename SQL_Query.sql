SQL QUERY

The term "query" refers to any SQL statement that retrieves data from your database

1.ORDER BY
 This modifier allows us to order the table rows returned by a certain SELECT statement.
SELECT column_name FROM table_name ORDER BY column_name ASC|DESC;
ie SELECT * FROM cats ORDER BY age;
When using ORDER BY, the default is to order in ascending order. If we want to specify though, we can use ASC for "ascending" or DESC for "descending."
SELECT * FROM cats ORDER BY age DESC;

 2. LIMIT

SELECT * FROM cats ORDER BY age DESC LIMIT 1;
returns all of the cats in order from oldest to youngest. Setting a LIMIT of 1 returns just the first, i.e. oldest, cat on the list.

3 .BETWEEN
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