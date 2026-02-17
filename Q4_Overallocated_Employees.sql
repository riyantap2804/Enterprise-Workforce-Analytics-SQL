-- Q4. Which employees are allocated to projects more than 100% of their capacity?

SELECT
    e.full_name,
    SUM(pa.allocation_percentage) AS total_allocation
FROM employees e
JOIN project_assignments pa ON e.employee_id = pa.employee_id
GROUP BY e.full_name
HAVING SUM(pa.allocation_percentage) > 100;


/* Explanation:

In this scenario, my goal is to identify employees who are assigned
to projects beyond their available capacity.

Each record in the project_assignments table represents how much
of an employee’s time is allocated to a specific project.
This allocation is stored as a percentage.

To find the total workload per employee:
- I joined the employees table with project_assignments
  using employee_id.
- Then I calculated the total allocation by summing
  allocation_percentage for each employee.
  --> SUM(pa.allocation_percentage) AS total_allocation

Next, I grouped the results by employee name so that
all project allocations of the same employee are combined.

Finally, I used the HAVING clause to filter employees whose
total allocation exceeds 100%.

Condition used:
    SUM(pa.allocation_percentage) > 100
	
Important concept:
WHERE --> filters rows
HAVING --> filters groups (after SUM)

So, whenever SUM is used --> use HAVING

This helps identify employees who may be overallocated,
which can indicate workload imbalance or resource planning issues.
*/