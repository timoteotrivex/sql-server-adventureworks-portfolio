# 📊 SQL Server Portfolio — AdventureWorks2022

Portfolio de consultas SQL Server aplicadas a la base de datos **AdventureWorks2022**,
orientado a responder preguntas reales de negocio (RR.HH., inventario, ventas)
en lugar de solo demostrar sintaxis. Cada consulta está redactada como si respondiera
a un pedido real de un área de la empresa.

## 🧰 Herramientas
- SQL Server 2022 (Express)

## 📁 Estructura y preguntas de negocio

### 01. SELECT
Selección de columnas y alias, sobre `Person.Person`.

| Consulta | Técnica | Qué resuelve |
|---|---|---|
| SELECT * | `SELECT *` | Mostrar todos los registros y columnas de la tabla `Person.Person`. |
| Selección de columnas específicas | `SELECT` de columnas puntuales | Mostrar solo ID, nombre y apellido, evitando `SELECT *` innecesario. |
| Alias de columnas (con y sin `AS`) | `AS`, alias con espacios (`[ ]`) | Generar encabezados amigables para un reporte (ej. `[ID Cliente]`). |

### 02. WHERE
Filtros sobre `Person.Person`.

| Consulta | Técnica | Objetivo de negocio |
|---|---|---|
| Empleados de la empresa | `WHERE =` | RR.HH. necesita el listado de empleados (`PersonType = 'EM'`). |
| Personas que no son empleados | `WHERE <>` | Obtener todas las personas que no sean empleados. |
| Empleados con nivel de promoción por email | `WHERE AND` | Marketing necesita empleados con `EmailPromotion = 2`. |
| Empleados y vendedores | `WHERE OR` | Armar el listado combinado para una capacitación interna. |
| Personas con ID entre 100 y 150 | `WHERE BETWEEN`, columna calculada | Auditoría necesita revisar ese rango de `BusinessEntityID`. |
| Personas sin título registrado | `WHERE IS NULL` | Calidad de Datos identifica registros incompletos. |
| Personas con título registrado | `WHERE IS NOT NULL` | RR.HH. arma una campaña institucional. |
| Desafío integrador WHERE | `IN`, `LIKE`, `IS NOT NULL`, `BETWEEN` | Comercial busca personas EM/SP, apellido que empiece con "S", con título y `BusinessEntityID` entre 100 y 500, para una campaña de fidelización. |

### 03. Funciones de Agregación
Cálculos sobre `Person.Person` y `Production.ProductInventory`.

| Consulta | Técnica | Objetivo de negocio |
|---|---|---|
| Total de personas | `COUNT(*)` | Dirección de RR.HH. necesita el total de registros. |
| Total de empleados | `COUNT(*)` + `WHERE` | Dirección de RR.HH. necesita el total de empleados (`PersonType = 'EM'`). |
| Stock mínimo | `MIN()` | Inventario identifica el nivel mínimo de stock registrado. |
| Stock máximo | `MAX()` | Inventario identifica el nivel máximo de stock registrado. |
| Stock promedio | `AVG()` | Inventario evalúa el nivel medio de inventario disponible. |
| Stock total | `SUM()` | Inventario conoce el total de unidades disponibles en almacén. |

### 04. GROUP BY
Agrupaciones sobre `Person.Person` y `Production.ProductInventory`.

| Consulta | Técnica | Objetivo de negocio |
|---|---|---|
| Personas por tipo | `GROUP BY` + `COUNT()` | RR.HH. necesita la cantidad de personas por `PersonType`. |
| Stock total por depósito | `GROUP BY` + `SUM()` | Inventario conoce el stock total por `LocationID`. |
| Stock promedio por depósito | `GROUP BY` + `AVG()` | Inventario conoce el stock promedio por depósito. |
| Stock máximo por depósito | `GROUP BY` + `MAX()` | Inventario identifica el mayor nivel de stock por depósito. |
| Stock mínimo por depósito | `GROUP BY` + `MIN()` | Inventario identifica niveles bajos de stock por depósito. |
| Ranking de depósitos por stock | `GROUP BY` + `SUM()` + `ORDER BY DESC` | Inventario visualiza qué depósitos tienen más stock. |
| Stock por depósito y estante | `GROUP BY` con múltiples columnas | Inventario conoce el stock total por `LocationID` y `Shelf`. |
| Desafío integrador GROUP BY | `GROUP BY`, `SUM()`, `AVG()`, `ORDER BY` | Reporte ejecutivo con stock total y promedio por depósito y estante, ordenado de mayor a menor. |

### 05. HAVING
Filtros aplicados después de agrupar, sobre `Person.Person` y `Production.ProductInventory`.

| Consulta | Técnica | Objetivo de negocio |
|---|---|---|
| Tipos de persona con más de 100 registros | `GROUP BY` + `HAVING COUNT()` | RR.HH. identifica qué tipos de persona superan los 100 registros. |
| Depósitos con stock total > 800 | `GROUP BY` + `HAVING SUM()` | Inventario identifica depósitos con alto nivel de stock. |
| Depósitos con stock promedio > 100 | `GROUP BY` + `HAVING AVG()` | Inventario identifica depósitos con stock promedio alto. |

### 06. INNER JOIN
Relaciones entre tablas de ventas, clientes y productos.

| Consulta | Técnica | Objetivo de negocio |
|---|---|---|
| Clientes y pedidos | `INNER JOIN` (`SalesOrderHeader` + `Customer`) | Comercial visualiza pedidos junto con el cliente asociado. |
| Clientes con nombre y apellido | `INNER JOIN` (`Customer` + `Person`) | Comercial obtiene el listado de clientes con nombre completo. |
| Productos vendidos por pedido | `INNER JOIN` (`SalesOrderDetail` + `Product`) | Comercial ve qué productos incluyó cada pedido y la cantidad. |
| Productos, subcategoría e importe (3 tablas) | `INNER JOIN` múltiple (`Product` + `ProductSubcategory` + `SalesOrderDetail`) | Comercial analiza productos vendidos junto con su categoría comercial y el total generado. |
| Unidades vendidas por subcategoría | `INNER JOIN` múltiple + `GROUP BY` + `SUM()` + `ORDER BY DESC` | Comercial identifica qué subcategorías generan más unidades vendidas. |

## 🗄️ Base de datos
[AdventureWorks2022](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure) — base de datos de ejemplo de Microsoft que simula una empresa de manufactura y venta de bicicletas.

## 🔗 Parte del portfolio completo
Este repo es uno de los proyectos SQL del portfolio. El otro es:
[World Cup SQL Analysis](https://github.com/timoteotrivex/world-cup-sql-analysis)

## 👤 Autor
**Timoteo Trivellini** — Data Analyst | SQL Server | Power BI | Excel | 
[LinkedIn](https://www.linkedin.com/in/timotrive42)
