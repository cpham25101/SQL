--Selecting SalesOrder Detail Table from AdventureWorks database
SELECT * FROM Sales.SalesOrderDetail

--Selecting unique SalesOrderID (no duplicates)
SELECT DISTINCT SalesOrderID
FROM Sales.SalesOrderDetail

--Counting the values of each unique SalesOrderID (no duplicates)
SELECT DISTINCT SalesOrderID, count(SalesOrderID) as ct
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID

--Selecting ProductID
SELECT DISTINCT ProductID
FROM Sales.SalesOrderDetail

--Counting number of unique Product IDs
SELECT DISTINCT ProductID, count(ProductID) as ct
FROM Sales.SalesOrderDetail
GROUP BY ProductID

--Sum of overall Orders
SELECT sum(OrderQty) as OrderQty
FROM Sales.SalesOrderDetail

--Sales Order total Product ID 776
SELECT ProductID, sum(LineTotal) as Total
FROM Sales.SalesOrderDetail
WHERE ProductID = '776'
GROUP BY ProductID

--Joining both SalesOrderDetail and SalesOrderHeader table to retrieve 
--order Summary report from 2011-2012
SELECT * FROM Sales.SalesOrderDetail
JOIN Sales.SalesOrderHeader
ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
WHERE OrderDate BETWEEN '2011' AND '2012'

--Order Totals from 2011-2012
SELECT sum(OrderQty) as ct FROM Sales.SalesOrderDetail
JOIN Sales.SalesOrderHeader
ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
WHERE OrderDate BETWEEN '2011' AND '2012'