/*=========================================================
CONSULTA  - HAVING + SUM()

OBJETIVO DE NEGOCIO:
El Gerente de Inventario necesita identificar los
depósitos cuyo stock total supera las 800 unidades.

TABLA:
Production.ProductInventory

CONCEPTOS APLICADOS:
- GROUP BY
- SUM()
- HAVING

RESULTADO ESPERADO:
Devuelve únicamente los depósitos cuyo stock total es
mayor a 800 unidades.

KPI POWER BI:
Depósitos con Alto Nivel de Stock

DIFICULTAD:
Intermedio

AUTOR:
Timoteo Trivellini

PROYECTO:
SQL Server + AdventureWorks2022 + Power BI Portfolio
=========================================================*/

SELECT
    LocationID AS [Depósito],
    SUM(Quantity) AS [Stock Total]
FROM Production.ProductInventory
GROUP BY LocationID
HAVING SUM(Quantity) > 800;
