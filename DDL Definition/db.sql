
CREATE DATABASE testDB;  -- crea la Base de Datos
DROP DATABASE testDB;  -- borra la Base de Datos

BACKUP DATABASE testDB TO DISK = '.\backups\testDB.bak' WITH DIFFERENTIAL;
