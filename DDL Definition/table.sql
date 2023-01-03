-- Crear una tabla
CREATE TABLE Persons
 (
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255)
);

-- Create Table Using Another Table
-- A copy of an existing table can also be created using CREATE TABLE.
-- The new table gets the same column definitions. All columns or specific columns can be selected.
-- If you create a new table using an existing table, the new table will be filled with the existing values from the old table.
CREATE TABLE new_table_name AS
    SELECT column1, column2, ...
    FROM existing_table_name
    WHERE ....;

-- The following SQL creates a new table called "TestTables" (which is a copy of the "Customers" table):
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM Customers;

-- Borrar una tabla
DROP TABLE Persons;

-- Use the TRUNCATE statement to delete all data inside a table.
TRUNCATE TABLE Persons;

-- Add a column of type DATE called Birthday.
ALTER TABLE Persons ADD Birthday DATE;
ALTER TABLE Customers ADD Email varchar(255);

-- Delete the column Birthday from the Persons table.
ALTER TABLE Persons DROP COLUMN Birthday;
ALTER TABLE Customers DROP COLUMN Email;

-- MySQL / Oracle
-- To change the data type of a column in a table
ALTER TABLE Persons MODIFY COLUMN Birthday YEAR;
