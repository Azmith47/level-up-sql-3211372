-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.
SELECT 
  l.DueDate,
  b.Title,
  p.FirstName,
  p.Email  
FROM Patrons p
JOIN Loans l ON p.PatronID = l.PatronID
JOIN Books b ON l.BookID = b.BookID
WHERE l.ReturnedDate IS NULL 
AND l.DueDate = '2022-07-13';