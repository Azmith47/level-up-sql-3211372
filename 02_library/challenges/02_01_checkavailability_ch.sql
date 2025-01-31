-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT COUNT(Title) Copies
FROM Books
WHERE Title = 'Dracula';

SELECT (
  SELECT COUNT(Title) Copies
  FROM Books
  WHERE Title = 'Dracula') - (
  SELECT COUNT(*)
  FROM Loans l
  JOIN Books b
  ON l.BookID = b.BookID
  WHERE Title = 'Dracula' AND ReturnedDate IS NULL) AS AvailableCopies;
