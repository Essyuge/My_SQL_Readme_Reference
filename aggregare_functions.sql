USING AGGREGATE FUNCTIONS

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