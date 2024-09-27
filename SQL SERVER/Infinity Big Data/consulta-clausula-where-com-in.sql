SELECT *
FROM DimCustomer
WHERE EnglishEducation IN('Bachelors', 'High School')
AND SpanishOccupation IN( 'Administrativo', 'Profesional')
ORDER BY EnglishEducation

select * 
from DimCustomer
where LastName in('Fernandez', 'Johnson', 'Ruiz', 'Alvarez')