---this data is queried from the AdventureWorks database to show 
---list of salesperson sales contact info, role, territory, sales history, YTD sales

select * from Person.Person
join HumanResources.Employee
on Person.BusinessEntityID = Employee.BusinessEntityID
join sales.SalesPerson
on Person.BusinessEntityID = SalesPerson.BusinessEntityID
join sales.SalesTerritory
on SalesPerson.TerritoryID = SalesTerritory.TerritoryID


