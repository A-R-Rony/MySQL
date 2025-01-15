select 
IF(g.grade > 7,name,null) , g.grade, s.marks
FROM Students s
JOIN Grades g 
ON s.marks >= g.Min_Mark AND s.marks <= g.Max_Mark
order by g.grade DESC, s.name ASC, s.marks
