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
