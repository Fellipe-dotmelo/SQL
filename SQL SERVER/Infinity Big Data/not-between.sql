select * from FactResellerSales
where SalesAmount not between 1000 and 5000
order by SalesAmount