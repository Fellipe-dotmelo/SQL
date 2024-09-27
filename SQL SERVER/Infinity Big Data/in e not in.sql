SELECT *
FROM DimEmployee
WHERE FirstName NOT IN ('Guy', 'Thierry', 'Roberto', 'Jossef') AND DepartmentName IN ('Marketing', 'Production')
ORDER BY DepartmentName