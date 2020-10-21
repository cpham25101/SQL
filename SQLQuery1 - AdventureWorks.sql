select * from Person.Person
join HumanResources.Employee
on Person.BusinessEntityID = Employee.BusinessEntityID
join sales.SalesPerson
on Person.BusinessEntityID = SalesPerson.BusinessEntityID
join sales.SalesTerritory
on SalesPerson.TerritoryID = SalesTerritory.TerritoryID


