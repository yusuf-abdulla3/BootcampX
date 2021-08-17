SELECT cohorts.name, AVG(completed_at-started_at) AS average_cohort_assistance_time
FROM cohorts 
JOIN students ON cohorts.id = cohort_id 
JOIN assistance_requests ON students.id = student_id
GROUP BY cohorts.name
ORDER BY average_cohort_assistance_time ASC;