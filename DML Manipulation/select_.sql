SELECT * FROM Persons;
SELECT City FROM Customes;
SELECT DISTINCT Country FROM Customers;


SELECT * FROM Customers WHERE City = "Berlin";
SELECT * FROM Customers WHERE NOT City = 'Berlin';
SELECT * FROM Customers WHERE CustomersID = 32;
SELECT * FROM Customers WHERE City = 'Berlin' AND PostalCode = 12209;
SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'London';
SELECT * FROM Customers WHERE PostalCode IS NULL;
SELECT * FROM Customers WHERE PostalCode IS NOT NULL;


SELECT * FROM Customers ORDER BY City DESC;
SELECT * FROM Customers ORDER BY Country, City;


SELECT COUNT(*) FROM Products WHERE Price = 18;
SELECT MIN(Price) FROM Products;
SELECT MAX(Price) FROM Products;
SELECT AVG(Price) FROM Products;
SELECT SUM(Price) FROM Products;

-- List the number of customers in each country.
-- Lista la cantidad de clientes en cada país.
SELECT COUNT(CustomerID),Country FROM Customers GROUP BY Country;

-- List the number of customers in each country, ordered by the country with the most customers first.
-- Lista la cantidad de clientes en cada país, mostrando (ordenando) los paises con más clientes primero.
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC;

SELECT * FROM Customers WHERE City LIKE 'a%';  -- comienzan con 'a'
SELECT * FROM Customers WHERE City LIKE '%a';  -- terminan con 'a'
SELECT * FROM Customers WHERE City LIKE '%a%';  -- contienen 'a'
SELECT * FROM Customers WHERE City LIKE 'a%b';  -- inicio con 'a' y fin con 'b'
SELECT * FROM Customers WHERE City NOT LIKE 'a%';  -- NO comienzan con 'a'
SELECT * FROM Customers WHERE City LIKE '_a%';  -- segunda letra es 'a'
SELECT * FROM Customers WHERE City LIKE '[acs]%';  -- comienza con 'a' 'c' o 's'
SELECT * FROM Customers WHERE City LIKE '[a-f]%';  -- inicia con letras entre 'a' y 'f'
SELECT * FROM Customers WHERE City LIKE '[!acs]%';  -- NO comienza con 'a' ni con 'c' ni con 's'


SELECT * FROM Customers WHERE Country IN ('Norway', 'France');  -- cualquiera de los dos (Norway o France)
SELECT * FROM Customers WHERE Country NOT IN ('Norway', 'France');  -- ninguno de los dos (ni Norway ni France)



SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;  -- entre 10 y 20
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;  -- no está
SELECT * FROM Products WHERE ProductName BETWEEN 'Geitost' AND 'Pavlova';

SELECT * FROM Customers AS Consumers;
SELECT CustomerName, Address, PostalCode AS Pno FROM Customers;
SELECT CustomerID AS ID, CustomerName AS Customer FROM Customers;
-- un alias q contiene espacios en blanco se escribe entre []
SELECT CustomerName AS Customer, ContactName AS [Contact Person] FROM Customers;
-- crea un alias "Address" que concatena cuatro columnas (Address, PostalCode, City and Country)
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address FROM Customers;
