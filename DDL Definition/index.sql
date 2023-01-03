CREATE INDEX idx_lastname
ON Persons (LastName);

CREATE UNIQUE INDEX idx_lastname
ON Persons (LastName);

CREATE INDEX idx_pname
ON Persons (LastName, FirstName);

-- MySQL:
ALTER TABLE Persons
DROP INDEX idx_pname;
