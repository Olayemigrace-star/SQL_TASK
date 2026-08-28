USE quickride;
-- Question One
SELECT trip_id, rider_name, fare, city 
FROM trips 
WHERE city = 'Lagos';

-- Question Two
SELECT rider_name, city, fare 
FROM trips
ORDER BY fare DESC LIMIT 5;

-- Question Three
SELECT city 
FROM trips;

-- Question Four
SELECT * 
FROM trips 
WHERE payment_method = 'Card' and fare > 5000; 

-- Question Five
SELECT * 
FROM trips 
WHERE distance_km BETWEEN 5 AND 10;


-- Question Six
SELECT * 
FROM trips 
WHERE rider_name LIKE 'A%';

-- Question seven
SELECT * 
FROM trips 
WHERE payment_method IN ('Card', 'Wallet');

-- Question Eight
SELECT * 
FROM trips 
WHERE rating IS NULL;

-- Question Nine
SELECT city, max(fare) as highest_fare 
FROM trips 
WHERE status = 'Completed' 
GROUP BY city ORDER BY highest_fare DESC;

-- Question Ten

SELECT * 
FROM trips 
WHERE status = 'Completed' 
ORDER BY city ASC, fare DESC;

-- Question Eleven
SELECT COUNT(*) AS cancelled_trips
FROM trips
WHERE status = 'Cancelled';

-- Question Twelve
SELECT
    SUM(fare) AS total_revenue,
    AVG(fare) AS average_fare,
    MAX(fare) AS biggest_fare,
    MIN(fare) AS smallest_fare
FROM trips
WHERE status = 'Completed';


-- Question Thirteen
SELECT
    vehicle_type,
    COUNT(*) AS trip_count
FROM trips
GROUP BY vehicle_type;