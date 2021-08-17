SELECT assignments.day, COUNT(assignments.*), SUM(assignments.duration)
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day ASC