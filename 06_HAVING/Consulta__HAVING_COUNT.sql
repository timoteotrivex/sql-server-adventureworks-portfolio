/*=========================================================
CONSULTA - HAVING + COUNT()

OBJETIVO DE NEGOCIO:
El Director de Recursos Humanos necesita identificar
qué tipos de personas tienen más de 100 registros.

TABLA:
Person.Person

CONCEPTOS APLICADOS:
- COUNT(*)
- GROUP BY
- HAVING
- Alias de columnas

RESULTADO ESPERADO:
Devuelve únicamente los tipos de persona cuya cantidad
de registros es mayor a 100.

KPI POWER BI:
Cantidad de Personas por Tipo

DIFICULTAD:
Intermedio

AUTOR:
Timoteo Trivellini

PROYECTO:
SQL Server + AdventureWorks2022 + Power BI Portfolio
=========================================================*/

SELECT
    PersonType AS [Tipo de Persona],
    COUNT(*) AS [Cantidad]
FROM Person.Person
GROUP BY PersonType
HAVING COUNT(*) > 100;
