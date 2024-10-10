USE courmgmtsys;

/* 1- List all customers */
SELECT * FROM User;

/* 2- List all orders for a specific customer. */
-- ????? UserID Foreign key toh hai hi ni Courier table mein

/* 3- List all couriers. */
SELECT * FROM Courier;

/* 4- List all packages for a specific order. */
SELECT * FROM Courier
WHERE TrackingNumber = 'TRK12345';

/* 5- List all deliveries for a specific courier. */
SELECT * FROM Courier
WHERE CourierID = 2 AND Status = 'Delivered';

/* 6- List all undelivered packages. */
SELECT * FROM Courier
WHERE Status != 'Delivered';

/* 7- List all packages that are scheduled for delivery today. */
SELECT * FROM Courier
WHERE DeliveryDate = CURRENT_DATE();

/* 8- List all packages with a specific status. */
SELECT * FROM Courier
WHERE Status = 'In Transit';

/* 9- Calculate the total number of packages for each courier. */
SELECT CourierID, COUNT(*) AS TotalPackages
FROM Courier
GROUP BY CourierID;

/* 10- Find the average delivery time for each courier. */
-- ????? Koi time reference hi ni hai (Probably OrderDate)

/* 11- List all packages with a specific weight range. */
SELECT * FROM Courier
WHERE Weight BETWEEN 1.00 AND 2.00;

/* 12- Retrieve employees whose names contain 'John'. */
SELECT * FROM Employee
WHERE Name LIKE '%John%';

/* 13- Retrieve all courier records with payments greater than $50. */
SELECT c.* FROM Courier c
JOIN Payment p ON c.CourierID = p.CourierID
WHERE p.Amount > 50;