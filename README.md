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

<p>
The dataset is synthetic and created for educational purposes.  
Dummy data was generated with the assistance of ChatGPT and inserted using SQL statements.  
Although CSV import could be used, this project focuses on database schema design and analytical SQL queries.
</p>

## Dataset Questions (KPIs)

<ol>
  <li>Which employees have less than 2 years of tenure in the organization?</li>
  <li>Who are the top 3 performing employees in each department?</li>
  <li>Which employees work long hours but still have low performance scores?</li>
  <li>Which employees are allocated to projects more than 100% of their capacity?</li>
  <li>What is the average performance score of each manager’s team?</li>
</ol>

## Process

<ul>
  <li>Designed normalized relational database schema</li>
  <li>Created tables with primary and foreign key relationships</li>
  <li>Inserted structured sample data using SQL</li>
  <li>Validated data consistency and relationships</li>
  <li>Wrote analytical SQL queries to answer workforce questions</li>
  <li>Applied joins, aggregations, filtering, and window functions</li>
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

## SQL Analysis Files

<ul>
  <li>Employee Tenure Analysis</li>
  <li>Department Top Performers Ranking</li>
  <li>Workload vs Performance Analysis</li>
  <li>Overallocated Employees Detection</li>
  <li>Manager-wise Team Performance</li>
</ul>

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
