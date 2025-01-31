-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT Published, COUNT(DISTINCT Title) BooksPublished,
GROUP_CONCAT(DISTINCT (Title)) Titles
FROM Books
GROUP BY Published
ORDER BY BooksPublished DESC;

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT COUNT(l.LoanID) LoanCount, b.Title
FROM Loans l
JOIN Books b
ON l.BookID = b.BookID
GROUP BY b.Title
ORDER BY LoanCount DESC
LIMIT 5;