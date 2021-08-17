SELECT cohorts.name, count(students.*) as student_total
FROM cohorts 
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY student_total ASC;
