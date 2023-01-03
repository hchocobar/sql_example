-- only distinct values
SELECT City FROM Customers
UNION SELECT City FROM Suppliers ORDER BY City;

-- duplicate values also
SELECT City FROM Customers
UNION ALL SELECT City FROM Suppliers ORDER BY City;

-- only distinct values
SELECT City, Country FROM Customers WHERE Country='Germany'
UNION SELECT City, Country FROM Suppliers WHERE Country='Germany' ORDER BY City;

-- duplicate values also
SELECT City, Country FROM Customers WHERE Country='Germany'
UNION ALL SELECT City, Country FROM Suppliers WHERE Country='Germany' ORDER BY City;
