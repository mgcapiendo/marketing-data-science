-- ================================================
-- Marketing Analytics SQL Queries
-- Dataset: UCI Online Retail
-- Author: Manuel "Chok" Capiendo
-- ================================================

-- Query 1: Top 10 Customers by Total Spend
SELECT CustomerID, SUM(Quantity * UnitPrice) AS TotalSpent
FROM online_retail
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10;

-- Query 2: Top 5 Countries by Total Spend
SELECT Country, SUM(Quantity * UnitPrice) AS TotalSpent
FROM online_retail
GROUP BY Country
ORDER BY TotalSpent DESC
LIMIT 5;

-- Query 3: Monthly Sales Trend
SELECT MONTH(InvoiceDate) AS Month, SUM(Quantity * UnitPrice) AS TotalSpent
FROM online_retail
GROUP BY Month
ORDER BY Month
LIMIT 12;

-- Query 4: Most Cancelled Products
SELECT Description, ABS(SUM(Quantity)) AS TotalCancelled
FROM online_retail
WHERE InvoiceNo LIKE 'C%'
GROUP BY Description
ORDER BY TotalCancelled DESC
LIMIT 10;