# DB - Bases de Datos

Una base de datos es un conjunto de datos estructurados que pertenecen a un mismo contexto y, en cuanto a su función, se utiliza para administrar de forma electrónica grandes cantidades de información.

Tipos de bases de datos

1. Bases de datos jerárquicas 
2. Bases de datos de red
3. Bases de datos transaccionales
4. **Bases de Datos Relacionales - DBR**
5. Bases de datos multidimensionales
6. Bases de datos orientada a objetos
7. Bases de datos documentales
8. Bases de datos deductivas
9. NoSQL

## DBMS - Sistema de Gestión de Base de Datos

Un DBMS, Data Base Management Systems, es un software que permite la creación y administración de Base de Datos y además actúa como un intermediario entre los usuarios, las aplicaciones y la propia base de datos.

Ejemplos:

* MySQL / MariaDB
* Oracle DataBase
* IBM DB2
* SQLite
* MongoDB (NoSQL)
* Apache Cassandra (NoSQL)
* PostgreSQL (Postgres)
* Amazon RDS
* Amazon DynamoDB

Un DBMS proporciona los siguientes servicios:

* Definición de la base de datos.
* ABM (Alta, baja y modificación) o CRUD (Create, update and delete) de datos 
* Consultas o Queries de los datos. 
* Acceso controlado a la Base de Datos (seguridad).
* Herramientas para la creación de copias de seguridad (backup).
* Herramientas de exportación e importación de datos.
* entre otros...

# DBR - Bases de Datos Relacionales

Es un conjunto de tablas estructuradas en registros (filas) y campos (columnas), que se vinculan entre sí por un campo en común.

A este campo generalmente se le denomina ID, identificador o clave y posee (en ambos casos) las mismas características tales como: nombre de campo, tipo y longitud.

## Definición de los datos

Dentro de cada tabla se debe definir una a una las columnas correspondientes  el tipo de datos que requiere cada uno de esos atributos:

* Qué tipos de valores vamos a almacenar.
* Cuánto espacio de almacenamiento ocupan esos valores.
* Si son de longitud fija o de longitud variable.
* Si permite o no valores NULL.
* Si permiten valores por defecto.

## Indices

En las bases de datos relacionales, los índices son estructuras de datos que permiten realizar consultas rápidas en diferentes columnas de una tabla.

La selección de los índices apropiados para una base de datos es una operación compleja que busca el equilibrio entre la velocidad de la consulta y el costo de actualización.

Los índices mejoran la performance del DBMS, pero requieren su propio espacio en disco y contienen una copia de los datos de la tabla por ende, es una redundancia. 

Sin embargo,  crear un índice no cambia los datos de la tabla, sino que establece una nueva estructura de datos que hace referencia a la tabla.

# SQL

SQL es un lenguaje de dominio específico, diseñado para administrar, y recuperar información de sistemas de gestión de bases de datos relacionales.​ Una de sus principales características es el manejo del álgebra y el cálculo relacional para efectuar consultas con el fin de recuperar, de forma sencilla, información de bases de datos, así como realizar cambios en ellas. [Wikipedia (ES)](https://es.wikipedia.org/wiki/SQL)

SQL es un estándar y funciona con un tipo específico de base de datos, llamado base de datos relacional. 

Las siglas SQL significan Lenguaje de Consulta Estructurada en inglés: Structured Query Language.

## DDL

Data Definition Language, es un subconjunto o parte del lenguaje SQL. 

DDL significa lenguaje de definición de datos e incluye aquellas sentencias que nos permiten definir, alterar, modificar objetos dentro de la base de datos.

Ejemplos:

* CREATE
* ALTER
* DROP

## DML 

Data Manipulation Language, es un subconjunto o parte del lenguaje SQL.

DML significa lenguaje de manipulación de datos e incluye sentencias que permiten manipular, consultar, eliminar los datos o registros de las tablas. 

Ejemplos:

* SELECT
* INSERT INTO
* UPDATE
* DELETE

## SQL Syntax

### Keep in Mind That…

SQL keywords are NOT case-sensitive: `select` is the same as `SELECT`

### Semicolon after SQL Statements?

Some database systems require a semicolon at the end of each SQL statement.

Semicolon is the standard way to separate each SQL statement in database systems that allow more than one SQL statement to be executed in the same call to the server.

### Examples Syntax

SELECT Syntax

```sql
SELECT [DISTINCT] column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...
ORDER BY column1, column2, ... ASC|DESC;
```

INSERT INTO Syntax

```sql
INSERT [INTO table_name (column1, column2, column3, ...)]
VALUES (value1, value2, value3, ...);
```

UPDATE Syntax

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

DELETE Syntax

```sql
DELETE FROM table_name WHERE condition;
```