/*=========================================================
CONSULTA Consulta_HAVING_AVG.sql - HAVING + AVG()

OBJETIVO DE NEGOCIO:
El Gerente de Inventario necesita identificar los
depósitos cuyo stock promedio es superior a 100 unidades.

TABLA:
Production.ProductInventory

CONCEPTOS APLICADOS:
- AVG()
- GROUP BY
- HAVING
- Alias de columnas

RESULTADO ESPERADO:
Devuelve únicamente los depósitos cuyo stock promedio
supera las 100 unidades.

KPI POWER BI:
Depósitos con Stock Promedio Alto

DIFICULTAD:
Intermedio

AUTOR:
Timoteo Trivellini

PROYECTO:
SQL Server + AdventureWorks2022 + Power BI Portfolio
=========================================================*/

SELECT
    LocationID AS [Depósito],
    AVG(Quantity) AS [Stock Promedio]
FROM Production.ProductInventory
GROUP BY LocationID
HAVING AVG(Quantity) > 100;
