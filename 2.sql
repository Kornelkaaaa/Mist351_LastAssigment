-- 2.	Create a query that includes a useful calculation (e.g. average, sum, etc.).
-- Find Avg amount of donation from donor with id #2 in 2025. 
SELECT 
    D.DonorID, 
    D.DonorFN, 
    D.DonorLN, 
    AVG(M.MTAmount) AS AvgDonation
FROM DONOR AS D
INNER JOIN MONEYTRANSFER AS M ON D.DonorID = M.DonorID
WHERE D.DonorID = 2 
  AND M.MTDate BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY D.DonorID, D.DonorFN, D.DonorLN;
