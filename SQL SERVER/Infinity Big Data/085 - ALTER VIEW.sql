-- ALTER VIEW

USE DWAdventure

CREATE OR ALTER VIEW VW_DPNAME AS
SELECT 
	EmployeeKey,
	LastName,
	Title,
	Phone,
	EmailAddress,
	DepartmentName
FROM DimEmployee
WHERE DepartmentName = 'Marketing'

SELECT *
FROM VW_DPNAME