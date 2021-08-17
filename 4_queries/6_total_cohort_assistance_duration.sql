SELECT cohorts.name as cohort, SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;