CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender VARCHAR(10),
    date_of_birth DATE,
    hire_date DATE,
    department_id INT,
    job_role VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'John Carter', 'Male', '1985-04-12', '2015-06-01', 3, 'Senior Engineer', 110000, 5),
(2, 'Emily Watson', 'Female', '1990-08-21', '2018-03-15', 5, 'Marketing Manager', 90000, 12),
(3, 'Michael Lee', 'Male', '1988-01-30', '2016-09-10', 4, 'Sales Executive', 85000, 14),
(4, 'Sarah Johnson', 'Female', '1992-11-05', '2019-07-01', 1, 'HR Analyst', 70000, 10),
(5, 'David Kim', 'Male', '1980-02-17', '2012-01-20', 3, 'Engineering Manager', 130000, NULL),
(6, 'Priya Sharma', 'Female', '1993-05-22', '2020-10-12', 8, 'Data Analyst', 80000, 15),
(7, 'Robert Brown', 'Male', '1986-09-09', '2014-04-18', 2, 'Financial Analyst', 95000, 11),
(8, 'Linda Green', 'Female', '1989-06-14', '2017-11-05', 6, 'IT Support Engineer', 78000, 16),
(9, 'James Wilson', 'Male', '1995-12-02', '2021-02-01', 3, 'Junior Engineer', 70000, 5),
(10, 'Karen Miller', 'Female', '1978-03-28', '2010-05-10', 1, 'HR Manager', 105000, NULL),
(11, 'Thomas Clark', 'Male', '1982-07-19', '2013-08-25', 2, 'Finance Manager', 120000, NULL),
(12, 'Rachel Adams', 'Female', '1987-10-11', '2016-01-04', 5, 'Marketing Director', 125000, NULL),
(13, 'Amit Verma', 'Male', '1991-01-08', '2019-06-17', 8, 'BI Developer', 92000, 15),
(14, 'Sophia Martinez', 'Female', '1994-04-30', '2020-09-23', 4, 'Sales Analyst', 75000, 3),
(15, 'Daniel Nguyen', 'Male', '1984-12-15', '2011-03-11', 8, 'Data Analytics Manager', 135000, NULL),
(16, 'Chris Evans', 'Male', '1988-08-08', '2015-10-19', 6, 'IT Manager', 115000, NULL),
(17, 'Olivia Perez', 'Female', '1996-02-13', '2022-01-10', 7, 'Operations Coordinator', 68000, 18),
(18, 'William Scott', 'Male', '1983-09-26', '2009-06-01', 7, 'Operations Manager', 125000, NULL),
(19, 'Emma Thompson', 'Female', '1991-11-07', '2018-04-09', 3, 'QA Engineer', 88000, 5),
(20, 'Noah Anderson', 'Male', '1997-07-18', '2022-08-15', 3, 'Intern Engineer', 55000, 5),
(21, 'Grace Liu', 'Female', '1990-01-25', '2017-02-27', 4, 'Sales Manager', 110000, NULL),
(22, 'Henry Taylor', 'Male', '1986-05-03', '2014-12-01', 2, 'Senior Accountant', 98000, 11),
(23, 'Natalie Brooks', 'Female', '1993-06-09', '2019-09-16', 5, 'Content Strategist', 76000, 12),
(24, 'Arjun Patel', 'Male', '1994-10-20', '2021-03-08', 8, 'Data Engineer', 95000, 15),
(25, 'Megan Foster', 'Female', '1989-12-01', '2016-07-25', 6, 'System Administrator', 90000, 16),
(26, 'Brian Hall', 'Male', '1981-04-14', '2008-11-03', 4, 'Regional Sales Lead', 140000, NULL),
(27, 'Isabella Rossi', 'Female', '1995-09-29', '2021-06-21', 7, 'Supply Chain Analyst', 82000, 18),
(28, 'Kevin Moore', 'Male', '1992-02-06', '2018-10-01', 3, 'DevOps Engineer', 105000, 5),
(29, 'Samantha Reed', 'Female', '1987-08-17', '2015-01-12', 1, 'HR Business Partner', 95000, 10),
(30, 'Lucas White', 'Male', '1998-11-11', '2023-01-09', 3, 'Graduate Engineer', 60000, 5);


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'Human Resources', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'Engineering', 'San Francisco'),
(4, 'Sales', 'Boston'),
(5, 'Marketing', 'Los Angeles'),
(6, 'IT Support', 'Austin'),
(7, 'Operations', 'Seattle'),
(8, 'Data Analytics', 'San Jose');


CREATE TABLE attendance_logs (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    log_date DATE,
    hours_worked DECIMAL(4,2),
    is_remote BOOLEAN
);

INSERT INTO attendance_logs VALUES
(1, 1, '2024-01-02', 8.5, FALSE),
(2, 1, '2024-01-03', 9.0, TRUE),
(3, 2, '2024-01-02', 7.5, TRUE),
(4, 3, '2024-01-02', 8.0, FALSE),
(5, 4, '2024-01-02', 8.2, TRUE),
(6, 5, '2024-01-02', 9.1, FALSE),
(7, 6, '2024-01-02', 7.8, TRUE),
(8, 7, '2024-01-02', 8.6, FALSE),
(9, 8, '2024-01-02', 8.0, TRUE),
(10, 9, '2024-01-02', 7.4, FALSE),
(11, 10, '2024-01-02', 8.9, FALSE),
(12, 11, '2024-01-02', 9.2, FALSE),
(13, 12, '2024-01-02', 8.7, TRUE),
(14, 13, '2024-01-02', 8.1, TRUE),
(15, 14, '2024-01-02', 7.6, FALSE),
(16, 15, '2024-01-02', 9.0, TRUE),
(17, 16, '2024-01-02', 8.4, FALSE),
(18, 17, '2024-01-02', 7.9, TRUE),
(19, 18, '2024-01-02', 9.3, FALSE),
(20, 19, '2024-01-02', 8.2, TRUE),
(21, 20, '2024-01-02', 7.0, TRUE),
(22, 21, '2024-01-02', 8.5, FALSE),
(23, 22, '2024-01-02', 8.8, FALSE),
(24, 23, '2024-01-02', 7.7, TRUE),
(25, 24, '2024-01-02', 8.6, TRUE),
(26, 25, '2024-01-02', 8.0, FALSE),
(27, 26, '2024-01-02', 9.5, FALSE),
(28, 27, '2024-01-02', 8.3, TRUE),
(29, 28, '2024-01-02', 9.1, TRUE),
(30, 29, '2024-01-02', 8.4, FALSE),
(31, 30, '2024-01-02', 7.2, TRUE),
(32, 1, '2024-01-04', 8.9, FALSE),
(33, 2, '2024-01-04', 7.8, TRUE),
(34, 3, '2024-01-04', 8.1, FALSE),
(35, 4, '2024-01-04', 8.0, TRUE),
(36, 5, '2024-01-04', 9.2, FALSE),
(37, 6, '2024-01-04', 8.0, TRUE),
(38, 7, '2024-01-04', 8.7, FALSE),
(39, 8, '2024-01-04', 7.9, TRUE),
(40, 9, '2024-01-04', 7.5, FALSE),
(41, 10, '2024-01-04', 8.8, FALSE),
(42, 11, '2024-01-04', 9.0, FALSE),
(43, 12, '2024-01-04', 8.6, TRUE),
(44, 13, '2024-01-04', 8.2, TRUE),
(45, 14, '2024-01-04', 7.9, FALSE),
(46, 15, '2024-01-04', 9.1, TRUE),
(47, 16, '2024-01-04', 8.5, FALSE),
(48, 17, '2024-01-04', 7.8, TRUE),
(49, 18, '2024-01-04', 9.4, FALSE),
(50, 19, '2024-01-04', 8.3, TRUE),
(51, 20, '2024-01-04', 7.1, TRUE),
(52, 21, '2024-01-04', 8.6, FALSE),
(53, 22, '2024-01-04', 8.9, FALSE),
(54, 23, '2024-01-04', 7.6, TRUE),
(55, 24, '2024-01-04', 8.7, TRUE),
(56, 25, '2024-01-04', 8.1, FALSE),
(57, 26, '2024-01-04', 9.6, FALSE),
(58, 27, '2024-01-04', 8.4, TRUE),
(59, 28, '2024-01-04', 9.2, TRUE),
(60, 29, '2024-01-04', 8.5, FALSE),
(61, 20, '2024-01-06', 10.5, TRUE),
(62, 20, '2024-01-07', 11.0, FALSE),
(63, 20, '2024-01-08', 10.2, TRUE),
(64, 20, '2024-01-09', 9.8, FALSE);


CREATE TABLE performance_reviews (
    review_id INT PRIMARY KEY,
    employee_id INT,
    review_date DATE,
    performance_score INT,  -- 1 to 5
    reviewer_comments VARCHAR(255)
);

INSERT INTO performance_reviews VALUES
(1, 1, '2023-12-15', 5, 'Outstanding technical leadership'),
(2, 2, '2023-12-15', 4, 'Strong campaign execution'),
(3, 3, '2023-12-16', 3, 'Met sales targets'),
(4, 4, '2023-12-16', 4, 'Good HR coordination'),
(5, 5, '2023-12-17', 5, 'Excellent team leadership'),
(6, 6, '2023-12-17', 4, 'Strong analytical skills'),
(7, 7, '2023-12-18', 4, 'Reliable financial insights'),
(8, 8, '2023-12-18', 3, 'Satisfactory IT support'),
(9, 9, '2023-12-19', 3, 'Learning quickly'),
(10, 10, '2023-12-19', 5, 'Exceptional HR leadership'),
(11, 11, '2023-12-20', 5, 'Strategic financial planning'),
(12, 12, '2023-12-20', 4, 'Creative brand management'),
(13, 13, '2023-12-21', 4, 'Strong BI solutions'),
(14, 14, '2023-12-21', 3, 'Improving sales analysis'),
(15, 15, '2023-12-22', 5, 'Data-driven decision making'),
(16, 16, '2023-12-22', 4, 'Effective IT operations'),
(17, 17, '2023-12-23', 3, 'Needs process improvement'),
(18, 18, '2023-12-23', 5, 'Operational excellence'),
(19, 19, '2023-12-24', 4, 'High QA standards'),
(20, 20, '2023-12-24', 2, 'Needs mentoring'),
(21, 21, '2023-12-26', 4, 'Strong client relationships'),
(22, 22, '2023-12-26', 4, 'Accurate financial reporting'),
(23, 23, '2023-12-27', 3, 'Consistent content delivery'),
(24, 24, '2023-12-27', 4, 'Reliable data pipelines'),
(25, 25, '2024-01-10', 4, 'Stable system management'),
(26, 28, '2024-01-10', 4, 'Strong DevOps execution'),
(27, 29, '2024-01-10', 5, 'Excellent HR partnership'),
(28, 30, '2024-01-10', 3, 'Learning well');




CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    project_manager_id INT
);

INSERT INTO projects VALUES
(1, 'HR Digital Transformation', '2023-01-01', '2023-12-31', 10),
(2, 'Sales Forecasting Revamp', '2023-03-01', '2024-02-28', 21),
(3, 'Cloud Migration', '2022-09-01', '2023-09-30', 16),
(4, 'Enterprise Data Warehouse', '2023-05-01', '2024-06-30', 15),
(5, 'Marketing Automation', '2023-02-15', '2023-11-30', 12),
(6, 'Finance Compliance Upgrade', '2023-04-01', '2023-10-31', 11),
(7, 'Supply Chain Optimization', '2023-06-01', '2024-03-31', 18),
(8, 'DevOps CI/CD Pipeline', '2023-07-01', '2024-01-31', 5);


CREATE TABLE project_assignments (
    assignment_id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    allocation_percentage INT
);

INSERT INTO project_assignments VALUES
(1, 1, 4, 60),
(2, 6, 4, 80),
(3, 13, 4, 70),
(4, 24, 4, 90),
(5, 2, 5, 75),
(6, 23, 5, 60),
(7, 3, 2, 70),
(8, 14, 2, 50),
(9, 21, 2, 80),
(10, 4, 1, 65),
(11, 29, 1, 70),
(12, 10, 1, 40),
(13, 7, 6, 60),
(14, 11, 6, 80),
(15, 22, 6, 75),
(16, 8, 3, 70),
(17, 16, 3, 90),
(18, 25, 3, 65),
(19, 17, 7, 60),
(20, 27, 7, 70),
(21, 18, 7, 50),
(22, 1, 8, 40),
(23, 28, 8, 80),
(24, 5, 8, 30),
(25, 9, 4, 50),
(26, 19, 4, 60),
(27, 20, 4, 30),
(28, 30, 8, 40),
(29, 6, 8, 30),
(30, 24, 8, 50),
(31, 12, 5, 40),
(32, 2, 1, 30),
(33, 7, 2, 20),
(34, 22, 2, 30),
(35, 3, 5, 20),
(36, 14, 5, 30),
(37, 17, 1, 25),
(38, 27, 7, 40),
(39, 8, 3, 20),
(40, 16, 8, 20),
(41, 1, 1, 60),
(42, 1, 2, 50);


SELECT * FROM employees; 
SELECT * FROM departments; 
SELECT * FROM attendance_logs; 
SELECT * FROM performance_reviews; 
SELECT * FROM projects; 
SELECT * FROM project_assignments;