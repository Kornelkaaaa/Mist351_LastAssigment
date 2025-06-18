-- Create a query that properly uses a GROUP BY to perform a calculation on information spanning at least two tables.
-- Find team ID, team name, and how many athletes is per each team.

SELECT 
    T.TeamID, 
    T.TeamName, 
    COUNT(A.AthleteID) AS AthleteCount
FROM TEAM AS T
INNER JOIN ATHLETE AS A ON T.TeamID = A.TeamID
GROUP BY T.TeamID, T.TeamName;
