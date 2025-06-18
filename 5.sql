-- Create a query that includes a GROUP BY, but selects items from the results of the GROUP BY query and lists them in order (e.g. using our COOKIE example, list everyone who has spent over $100 in total).
-- List all donors who have contributed over $555 in total across all donations, sorted from highest to lowest.

SELECT 
    D.DonorID, 
    D.DonorFN, 
    D.DonorLN, 
    SUM(M.MTAmount) AS TotalDonated
FROM DONOR AS D
INNER JOIN MONEYTRANSFER AS M ON D.DonorID = M.DonorID
GROUP BY D.DonorID, D.DonorFN, D.DonorLN
HAVING SUM(M.MTAmount) > 5555555
ORDER BY TotalDonated DESC;
