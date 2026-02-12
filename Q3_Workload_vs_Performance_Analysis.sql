-- Q3. Which employees work very long hours but still have low performance scores?
/* Meaning: In this query, I will calculate.,
			1. How long employees work.
			2. Calculate how well they perform.
			3. Find people who work too much but perform poorly. */

WITH workload AS (
    SELECT
        employee_id,
        AVG(hours_worked) AS avg_hours
    FROM attendance_logs
    GROUP BY employee_id
),
performance_drop AS (
    SELECT
        employee_id,
        AVG(performance_score) AS avg_score
    FROM performance_reviews
    GROUP BY employee_id
)
SELECT
    e.full_name,
    w.avg_hours,
    p.avg_score
FROM employees e
JOIN workload w ON e.employee_id = w.employee_id
JOIN performance_drop p ON e.employee_id = p.employee_id
WHERE w.avg_hours > 9
  AND p.avg_score < 3;


/* Explanation:

In this scenario, my goal is to identify employees who are putting in
high working hours but still receiving low performance scores.

To achieve this, I calculated two separate metrics (Multiple CTEs):

1) Average working hours per employee
   - From attendance_logs table
   - Grouped by employee_id
   - Stored inside a CTE named "workload"
   --> AVG(hours_worked) AS avg_hours

2) Average performance score per employee
   - From performance_reviews table
   - Grouped by employee_id
   - Stored inside another CTE named "performance_drop"
   --> AVG(performance_score) AS avg_score

After calculating both metrics separately, I joined them with the employees table
to get employee names along with their average hours and performance scores.

Finally, I applied filtering conditions to identify the required employees:
   - avg_hours > 9  ----> employees working long hours
   - avg_score < 3  ----> employees with low performance

This helps highlight employees who may be overworked but underperforming,
which can indicate burnout, inefficiency or workload imbalance.
*/
