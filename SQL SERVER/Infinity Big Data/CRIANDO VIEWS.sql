-- VIEWS

-- CREATE VIEW
-- ALTER VIEW
-- DROP VIEW
USE DWAdventure

SELECT *
FROM DimEmployee

CREATE VIEW VW_DEPARTAMENTOS AS 
	SELECT
	EmployeeKey,
	LastName,
	Title,
	Phone,
	EmailAddress,
	DepartmentName
FROM DimEmployee
WHERE DepartmentName = 'Marketing'

SELECT * FROM VW_DEPARTAMENTOS