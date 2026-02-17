-- Q5. What is the average performance score of each manager’s team?

SELECT
    m.full_name AS manager_name,
    AVG(pr.performance_score) AS team_avg_performance
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
JOIN performance_reviews pr ON e.employee_id = pr.employee_id
GROUP BY m.full_name;

/* Explanation:

In this scenario, my objective is to calculate the average performance
of employees under each manager.

The employees table contains both employees and managers.
Each employee record stores manager_id, which points to the employee_id
of their reporting manager.

To connect employees with their managers:
- I joined the employees table with itself (self-join).
- "e" represents team members
- "m" represents managers
  --> e.manager_id = m.employee_id

Next, I joined the performance_reviews table to bring in
each employee’s performance score.
  --> pr.employee_id = e.employee_id

After establishing the relationships, I calculated the
average performance score of all employees reporting
to the same manager.

Aggregation used:
    AVG(pr.performance_score) AS team_avg_performance

Finally, I grouped the results by manager name so that
each row represents one manager and the average performance
of their entire team.

This helps evaluate team-level performance under each manager.
*/
