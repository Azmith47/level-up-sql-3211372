-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT p.FirstName, p.Email, COUNT(*) LoanCount
FROM Patrons p
JOIN Loans l
ON p.PatronID = l.PatronID
GROUP BY p.PatronID
ORDER BY LoanCount
LIMIT 5;
