-- Q1. Which employees currently have less than two years of tenure in the organization?
-- Meaning: Which employees are newly hired (less than 2 years in the company)?

WITH tenure_calc AS (
    SELECT
        employee_id,
        full_name,
        DATE_PART('year', AGE(CURRENT_DATE, hire_date)) AS tenure_years
    FROM employees
)
SELECT *
FROM tenure_calc
WHERE tenure_years < 2;

/* Explaination: 
	"In this scenario, I have used Common Table Expression (CTE)"
	--> SELECT
        	employee_id,
        	full_name,
       	    DATE_PART('year', AGE(CURRENT_DATE, hire_date)) AS tenure_years
    	FROM employees

	"This is CTE Inner Query, I have used 'AGE()' for Date calculation. 
	 It will show all the employees with their total years of work experience."

	--> SELECT *
		FROM tenure_calc

	"This is Outer Query, we read from the temporary table(CTE Inner Query) we just built."

	--> WHERE tenure_years < 2

	"I used 'WHERE Clause' for Data filtering, this remove all the employees and keeps only 
	 employees who joined recently(Less than 2 years in the company)"  */
