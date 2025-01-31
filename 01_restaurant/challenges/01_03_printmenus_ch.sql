-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
SELECT
  Type, Name, Price, Description
FROM
  Dishes
ORDER BY
  Price;

-- Create a report showing appetizers and beverages.
SELECT
  Type, Name, Price, Description
FROM
  Dishes
WHERE
  Type LIKE 'app%' OR Type LIKE 'bev%'
ORDER BY
  Type, Name;

-- Create a report with all items except beverages.
SELECT
  Type, Name, Price, Description
FROM
  Dishes
WHERE
  Type NOT LIKE 'bev%'
ORDER BY
  Type, Name;