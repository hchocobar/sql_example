-- MySQL
-- Return the specified value IF the expression is NULL, otherwise return the expression:
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products;
