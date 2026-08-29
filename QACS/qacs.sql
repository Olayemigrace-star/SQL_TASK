-- A
SELECT *
FROM CUSTOMER, ITEM, SALE, SALE_ITEM;

-- B
SELECT LastName, FirstName, Phone
FROM CUSTOMER;

-- C
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE FirstName = 'John';

-- D
SELECT LastName, FirstName, Phone, SaleDate, Total
FROM CUSTOMER, SALE
WHERE TOTAL >= 100.00;

-- E
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE FirstName LIKE 'D%';

-- F
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE LastName LIKE '%ne%';

-- G
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE Phone LIKE '56';

-- H
SELECT 
	MAX(Total) AS Maximum_sales,
    MIN(Total) AS Minimum_sales
FROM SALE;

-- I
SELECT 
	AVG(Total) AS Average
FROM SALE;

-- J
SELECT 
	COUNT(*) AS Total_Customer
FROM CUSTOMER;

-- k
SELECT LastName, FirstName
FROM CUSTOMER
GROUP BY LastName, FirstName;

-- L
SELECT LastName, FirstName
FROM CUSTOMER
HAVING LastName;

-- M
SELECT LastName, FirstName, Phone FROM CUSTOMER
WHERE CustomerID in (
		SELECT CustomerID 
        FROM SALE 
        WHERE Total > 100);
        
-- N
SELECT C.LastName, C.FirstName, C.Phone
FROM CUSTOMER AS C, SALE AS S
WHERE C.CustomerID = S.SaleID
and S.Total > 100
ORDER BY C.LastName ASC,  C.FirstName DESC;

-- O
SELECT C.FirstName, C.LastName , C.Phone
FROM CUSTOMER AS C 
JOIN SALE AS S ON C.CustomerID = S.SaleID
WHERE S.Total > 100
ORDER BY C.LastName ASC, C.FirstName DESC;

-- P
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE CustomerID in (
	SELECT CustomerID
	FROM SALE
    WHERE SaleID IN (
		SELECT SaleItemID
        FROM SALE_ITEM
        where ItemID in (
			select ItemID 
            FROM ITEM
            WHERE ItemDescription = 'Desk Lamp'
        )
    )
)
ORDER BY LastName asc, FirstName desc;
describe ITEM;


    


