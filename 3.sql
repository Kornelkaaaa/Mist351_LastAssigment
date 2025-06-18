-- Create a query that includes at least one RIGHT or LEFT join and a search criterion, and orders the resulting data.
-- List all teams and their associated disciplines, including teams that may not yet have a discipline assigned, show data in this order: first waterpolo teams, synchronized swimming teams, swimming teams, open water teams, diving teams and all teams with out discipline. 

SELECT TD.Team_Discipline, T.TeamName
FROM TEAM_DIS AS TD
RIGHT JOIN TEAM AS T ON T.TeamID = TD.TeamID
ORDER BY TD.Team_Discipline DESC;
