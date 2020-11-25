--Selecting SalesOrder Detail Table from AdventureWorks database
Select * from Sales.SalesOrderDetail

--Selecting unique SalesOrderID (no duplicates)
SELECT DISTINCT SalesOrderID
from Sales.SalesOrderDetail

--Counting the values of each unique SalesOrderID (no duplicates)
SELECT DISTINCT SalesOrderID, count(SalesOrderID) as ct
from Sales.SalesOrderDetail
Group by SalesOrderID

--Selecting ProductID
SELECT DISTINCT ProductID
from Sales.SalesOrderDetail

--Counting number of unique Product IDs
SELECT DISTINCT ProductID, count(ProductID) as ct
from Sales.SalesOrderDetail
Group by ProductID

--Sum of overall Orders
Select sum(OrderQty) as OrderQty
from Sales.SalesOrderDetail

--Sales Order total Product ID 776
SELECT ProductID, sum(LineTotal) as Total
From Sales.SalesOrderDetail
WHERE ProductID = '776'
Group By ProductID

--Joining both SalesOrderDetail and SalesOrderHeader table to retrieve 
--order Summary report from 2011-2012
Select * from Sales.SalesOrderDetail
JOIN Sales.SalesOrderHeader
ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
WHERE OrderDate BETWEEN '2011' AND '2012'

--Order Totals from 2011-2012
Select sum(OrderQty) as ct from Sales.SalesOrderDetail
JOIN Sales.SalesOrderHeader
ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
WHERE OrderDate BETWEEN '2011' AND '2012'