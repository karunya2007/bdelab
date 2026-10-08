CREATE DATABASE IF NOT EXISTS company;
USE company;

CREATE TABLE IF NOT EXISTS employee (
   id INT,
   name STRING,
   dept STRING,
   salary INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH 'employee_data.txt' INTO TABLE employee;

SELECT * FROM employee;
SELECT dept, AVG(salary) as avg_salary FROM employee GROUP BY dept;
SELECT * FROM employee ORDER BY salary DESC LIMIT 1;
