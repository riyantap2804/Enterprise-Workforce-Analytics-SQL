# Enterprise-Workforce-Analytics (SQL Database Project)

## Project Objective

The objective of this project is to design and analyze an Employee Workforce Management System using SQL.
The system helps understand employee tenure, departmental performance, workload efficiency, project allocation, and manager-level team effectiveness.

The insights from this analysis help organizations identify workforce patterns, performance trends, and resource utilization to support data-driven decision making.

## Dataset Used

<h3>
  Dataset Access Link  
  (<a href="https://github.com/riyantap2804/Enterprise-Workforce-Analytics-SQL/blob/main/SQL%20Project_1%20Dataset.sql">Employee Workforce Dataset</a>)
</h3>

<p>The dataset represents a structured corporate workforce environment and includes:</p>
<ul>
  <li>Employee personal and job information</li>
  <li>Department details and locations</li>
  <li>Employee attendance and working hours</li>
  <li>Performance review scores</li>
  <li>Projects and project managers</li>
  <li>Employee project allocation percentages</li>
</ul>

### Sample Data Source

The dataset used in this project is dummy data created for learning and demonstration purposes.

* Data was generated with the assistance of ChatGPT
* Records were inserted using SQL INSERT statements
* CSV import could also be used, but manual insertion was chosen to clearly show table structure and relationships

This project focuses on SQL querying, schema design, and data analysis rather than data ingestion methods.

## Dataset Questions (KPIs)

<ol>
  <li>
    Which employees have less than 2 years of tenure in the organization?  
    <a href="https://github.com/riyantap2804/Enterprise-Workforce-Analytics-SQL/blob/main/Q1_Employee_Tenure_Analysis.sql">View SQL Query</a>
  </li>

  <li>
    Who are the top 3 performing employees in each department?  
    <a href="https://github.com/riyantap2804/Enterprise-Workforce-Analytics-SQL/blob/main/Q2_Department_Performance_Ranking.sql">View SQL Query</a>
  </li>

  <li>
    Which employees work long hours but still have low performance scores?  
    <a href="https://github.com/riyantap2804/Enterprise-Workforce-Analytics-SQL/blob/main/Q3_Workload_vs_Performance_Analysis.sql">View SQL Query</a>
  </li>

  <li>
    Which employees are allocated to projects more than 100% of their capacity?  
    <a href="https://github.com/riyantap2804/Enterprise-Workforce-Analytics-SQL/blob/main/Q4_Overallocated_Employees.sql">View SQL Query</a>
  </li>

  <li>
    What is the average performance score of each manager’s team?  
    <a href="https://github.com/riyantap2804/Enterprise-Workforce-Analytics-SQL/blob/main/Q5_Manager_Wise_Team_Performance.sql">View SQL Query</a>
  </li>
</ol>

## Process

<ul>
  <li>Designed normalized relational database schema</li>
  <li>Created tables with primary and foreign key relationships</li>
  <li>Inserted structured sample data using SQL</li>
  <li>Validated data consistency and relationships</li>
  <li>Wrote analytical SQL queries to answer workforce questions</li>
  <li>Applied joins, aggregations, filtering, CTEs, and window functions</li>
  <li>Performed workforce and performance analysis</li>
</ul>

## Database Structure

The project consists of the following tables:

<ul>
  <li>Employees</li>
  <li>Departments</li>
  <li>Attendance Logs</li>
  <li>Performance Reviews</li>
  <li>Projects</li>
  <li>Project Assignments</li>
</ul>

These tables model organizational hierarchy, workforce activity, and project participation within a company environment.

## Project Insights

<ul>
  <li>Newly hired employees can be identified based on tenure calculation</li>
  <li>Performance levels vary across departments</li>
  <li>High working hours do not always result in high performance</li>
  <li>Some employees are assigned beyond their capacity across projects</li>
  <li>Manager-led teams show measurable differences in average performance</li>
</ul>

## Final Conclusion

<p>
This project demonstrates how SQL can be used to design a relational database and extract meaningful workforce insights.  
By analyzing employee data, performance metrics, and project allocations, organizations can better understand productivity, workload distribution, and team effectiveness.

The system showcases practical SQL skills applicable to real-world business scenarios including workforce analytics, performance evaluation, and resource planning.

</p>
