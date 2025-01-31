-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
SELECT *
FROM Customers
WHERE Address = '6939 Elka Place';

-- CustomerID = 70
INSERT INTO Orders
  (CustomerID, OrderDate)
VALUES
  (70, '2022-09-20 14:00:00');

SELECT *
FROM Orders
WHERE CustomerID = 70 AND OrderDate = '2022-09-20 14:00:00';

-- OrderID = 1001
INSERT INTO OrdersDishes
  (OrderID, DishID)
VALUES
  (1001, (SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
  (1001, (SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers')),
  (1001, (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));

SELECT
  c.FirstName,
  c.LastName,
  o.OrderID,
  SUM(d.Price) Price
FROM
  Orders o
JOIN Customers c
ON o.CustomerID = c.CustomerID
JOIN OrdersDishes od
ON o.OrderID = od.OrderID
JOIN Dishes d
ON od.DishID = d.DishID
WHERE o.OrderID = 1001
GROUP BY
  c.FirstName,
  c.LastName,
  o.OrderID;