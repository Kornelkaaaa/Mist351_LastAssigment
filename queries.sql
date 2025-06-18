-- 1.	Create a query that includes at least two INNER JOINS (i.e. spans at least three tables), a search criterion, and orders the resulting data.
-- Find all athletes and show their names who has GPA bellow 3.50, show their team and address of facility where they have practices, ordering them by GPA in descending order.

SELECT 
    A.AthleteFN, 
    A.AthleteLN, 
    A.AthleteGPA, 
    T.TeamName, 
    F.FacilityAdrss
FROM ATHLETE AS A
INNER JOIN TEAM AS T ON A.TeamID = T.TeamID
INNER JOIN FACILITY AS F ON T.FacilityNum = F.FacilityNum
WHERE A.AthleteGPA < 3.50
ORDER BY A.AthleteGPA DESC;

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

-- Create a query that includes at least one RIGHT or LEFT join and a search criterion, and orders the resulting data.
-- List all teams and their associated disciplines, including teams that may not yet have a discipline assigned, show data in this order: first waterpolo teams, synchronized swimming teams, swimming teams, open water teams, diving teams and all teams with out discipline. 

SELECT TD.Team_Discipline, T.TeamName
FROM TEAM_DIS AS TD
RIGHT JOIN TEAM AS T ON T.TeamID = TD.TeamID
ORDER BY TD.Team_Discipline DESC;

-- Create a query that properly uses a GROUP BY to perform a calculation on information spanning at least two tables.
-- Find team ID, team name, and how many athletes is per each team.

SELECT 
    T.TeamID, 
    T.TeamName, 
    COUNT(A.AthleteID) AS AthleteCount
FROM TEAM AS T
INNER JOIN ATHLETE AS A ON T.TeamID = A.TeamID
GROUP BY T.TeamID, T.TeamName;

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

-- Create a query that includes a useful nested query.
-- Find all teams which are practicing on facilities with capacity above or equal average. Show team name, facility country and capacity. Sort results from the largest to the lowest capacity facility.

SELECT 
    T.TeamName, 
    F.FacilityAdrss, 
    F.FacilityCapacity
FROM TEAM AS T
INNER JOIN FACILITY AS F ON T.FacilityNum = F.FacilityNum
WHERE F.FacilityCapacity >= (
    SELECT AVG(FacilityCapacity) 
    FROM FACILITY
)
ORDER BY F.FacilityCapacity DESC;

-- Create a query that spans at least two tables and uses any four of the following: a RIGHT or LEFT join, a SELECT statement, a nested query, a calculation, a GROUP BY, a HAVING. Have some fun!
-- List each team and the average GPA of its athletes . But only show teams whose average GPA is above the overall average GPA of all athletes.

SELECT 
    T.TeamName, 
    AVG(A.AthleteGPA) AS AVGTeamGPA, 
    COUNT(A.AthleteID) AS NumAthletes
FROM TEAM AS T
LEFT JOIN ATHLETE AS A ON T.TeamID = A.TeamID
GROUP BY T.TeamID, T.TeamName
HAVING AVG(A.AthleteGPA) > (
    SELECT AVG(AthleteGPA) FROM ATHLETE
);
