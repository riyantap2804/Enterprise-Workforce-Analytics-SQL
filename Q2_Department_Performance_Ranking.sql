-- Q2. Who are the top 3 performing employees in each department based on average performance score?
-- Meaning: Here, we need to find the best employees inside each department.

/* Important NOTE: 
	This file contains two variations of the same ranking logic:
    one for top performers (DESC order) and one for lowest performers (ASC order). */

-- Query-1 (Top Performers Per Department): <-- MAIN QUERY as per the question
SELECT * FROM (
    SELECT
        e.employee_id,
        e.full_name,
        d.department_name,
        AVG(p.performance_score) AS avg_score,
        RANK() OVER (PARTITION BY d.department_name ORDER BY AVG(p.performance_score) DESC) AS dept_rank
    FROM employees e
    JOIN departments d ON e.department_id = d.department_id
    JOIN performance_reviews p ON e.employee_id = p.employee_id
    GROUP BY e.employee_id, e.full_name, d.department_name
) ranked
WHERE dept_rank <= 3;

/* NOTE for Query 1:
RANK() OVER(PARTITION BY d.department_name ORDER BY AVG(p.performance_score) DESC) AS dept_rank
--> Ranks employees from highest score to lowest
--> Returns top performing employees in each department */

----------------------------------------------------------------------------------------------------------------------------------------

-- Query-2 (Lowest Performers Per Department): <-- Comparison Query
SELECT * FROM (
	SELECT 
		e.employee_id, 
		e.full_name, 
		d.department_name,
		AVG(p.performance_score) AS avg_score,
		RANK() OVER(PARTITION BY d.department_name ORDER BY AVG(p.performance_score)) AS dept_rank
	FROM employees e
	JOIN departments d ON e.department_id = d.department_id
	JOIN performance_reviews p ON e.employee_id = p.employee_id
	GROUP BY e.employee_id, e.full_name, d.department_name
) ranked
WHERE dept_rank <= 3;

/* NOTE for Query 2:
RANK() OVER(PARTITION BY d.department_name ORDER BY AVG(p.performance_score)) AS dept_rank
--> Ranks employees from lowest score to highest
--> Returns lowest performing employees in each department */

-----------------------------------------------------------------------------------------------------------------------------------------------

/* Explaination:

	"In this scenario, I have used 'Ranking Function', which is a sub-topic of 'Windows Function' in SQL.
	Along with that, I have also used Joins concept, to join multiple tables."
	
	- Here, my aim is to find the best employees from each department, to do so., 
	  1. First I have calculated the average performance score from 'performance_reviews' table
	  	 and given the alias name as 'avg_score'.
		 --> AVG(p.performance_score) AS avg_score

	  2. Next I have used 'Ranking Function' to find the rank of each employee of their department, 
	  	 with the help of their average performance score and I also given alias name as 'dept_rank'.
		 -->  RANK() OVER (
		 		PARTITION BY d.department_name ORDER BY AVG(p.performance_score) DESC
			  ) AS dept_rank
			  
	NOTE: We cannot use avg_score(Alias given for --AVG(p.performance_score)--) inside the ranking function 
		  because:
		- SQL calculates aliases after window functions
		- So when RANK runs, avg_score does not exist yet

	Notice the important part:
	- AVG is calculated
	- RANK runs
	- THEN alias avg_score is assigned

	So when RANK function executes, SQL only knows:
	AVG(p.performance_score)

	It does not know:
	avg_score

IMPORTANT NOTE ABOUT RANK():

RANK() assigns the same rank to rows with equal values.
When multiple employees share the same average score,
they receive the same rank, and the next rank number is skipped.

Example for 'Engineering Department':
Average Scores (DESC order): 5, 5, 4, 4
Ranks assigned			   : 1, 1, 3, 3

Notice that after rank 1, rank 2 is skipped.
This happens because ranking reflects position in the ordered result,
not the number of distinct score values.

Because this query filters using:
    WHERE dept_rank <= 3
only employees with ranks 1, 2, or 3 are returned.

If many employees tie at rank 1, and the next rank becomes 4,
those lower score employees will be excluded from the result.

We can use DENSE_RANK() instead of RANK() if sequential ranking
(without skipped numbers) is required.
*/
