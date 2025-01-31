-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT 
  *
FROM
  Customers
WHERE
  FirstName = 'Norby';

SELECT 
  *
FROM
  Reservations r
JOIN
  Customers c
ON
  r.CustomerID = c.CustomerID
WHERE
  FirstName = 'Norby' AND r.Date > '2022-07-24';

DELETE FROM 
  Reservations
WHERE
  CustomerID = 64 AND Date LIKE '2022-07-29%';

SELECT 
  *
FROM
  Reservations
WHERE
  CustomerID = 64 AND Date LIKE '2022%';