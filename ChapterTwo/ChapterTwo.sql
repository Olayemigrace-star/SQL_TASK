2.17
SELECT SKU, SKU_Description FROM INVENTORY;

2.18
SELECT SKU_Description, SKU FROM INVENTORY;

2.19
SELECT WarehouseID FROM INVENTORY;

2.20
SELECT DISTINCT WarehouseID FROM INVENTORY;

2.21
SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder;

2.22
SELECT * FROM INVENTORY;

2.23
SELECT * FROM INVENTORY WHERE QuantityOnHand > 0;

2.24
SELECT SKU, SKU_DESCRIPTION FROM INVENTORY WHERE QuantityOnHand = 0;

2.25
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID ASC;

2.26
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand > 0 ORDER BY WarehouseID DESC, SKU ASC;

2.27
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0 ORDER BY WarehouseID DESC, SKU ASC;

2.28
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0 ORDER BY WarehouseID DESC, SKU ASC;

2.29
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand FROM INVENTORY WHERE QuantityOnHand BETWEEN 2 AND 9;

2.30
SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE 'Half-Dome%';

2.31
SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE '%Climb%';

2.32
SELECT DISTINCT SKU, SKU_Description FROM SKU_DATA WHERE SKU_Description LIKE '__d%';

2.33
SELECT COUNT(QuantityOnHand) AS CountQuantityOnHand, SUM(QuantityOnHand) AS TotalQuantityOnHand, AVG(QuantityOnHand) AS AverageQuantityOnHand, MIN(QuantityOnHand) AS MinimumQuantityOnHand, MAX(QuantityOnHand) AS MaximumQuantityOnHand FROM INVENTORY;

2.34
SELECT COUNT(QuantityOnHand) FROM INVENTORY;

2.35
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHand FROM INVENTORY GROUP BY WarehouseID ORDER BY TotalItemsOnHand DESC;

SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID ORDER BY TotalItemsOnHandLT3 DESC;

SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID HAVING COUNT(SKU) < 2 ORDER BY TotalItemsOnHandLT3 DESC;



SELECT SKU , SKU_Description FROM cape_codd.INVENTORY;

SELECT SKU_Description , SKU FROM cape_codd.INVENTORY;

SELECT WarehouseID FROM cape_codd.INVENTORY;

SELECT DISTINCT WarehouseID FROM cape_codd.INVENTORY;

SELECT SKU , SKU_Description , QuantityOnHand , QuantityOnOrder FROM cape_codd.INVENTORY;

SELECT * FROM cape_codd.INVENTORY;

SELECT * FROM cape_codd.INVENTORY WHERE QuantityOnHand > 0;

SELECT SKU , SKU_Description FROM cape_codd.INVENTORY WHERE QuantityOnHand = 0;

SELECT SKU , SKU_Description , WarehouseID FROM cape_codd.INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID ASC;

SELECT SKU , SKU_Description , WarehouseID FROM cape_codd.INVENTORY WHERE QuantityOnHand > 0 ORDER BY WarehouseID DESC , SKU ASC;

SELECT SKU , SKU_Description , WarehouseID FROM cape_codd.INVENTORY WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0 ORDER BY WarehouseID DESC , SKU ASC;

SELECT SKU , SKU_Description , WarehouseID FROM cape_codd.INVENTORY WHERE QuantityOnHand = 0 AND QuantityOnOrder = 0 ORDER BY WarehouseID DESC , SKU ASC;

SELECT SKU , SKU_Description , WarehouseID FROM cape_codd.INVENTORY WHERE QuantityOnHand = 0 AND QuantityOnOrder = 0 ORDER BY WarehouseID DESC , SKU ASC;

SELECT SKU , SKU_Description , WarehouseID , QuantityOnHand FROM cape_codd.INVENTORY WHERE QuantityOnHand > 1 AND QuantityOnHand < 10 ORDER BY WarehouseID DESC, SKU ASC;

SELECT SKU , SKU_Description , WarehouseID , QuantityOnHand FROM cape_codd.INVENTORY WHERE QuantityOnHand BETWEEN 1 AND 10 ORDER BY WarehouseID DESC, SKU ASC;

