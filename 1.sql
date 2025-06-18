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
