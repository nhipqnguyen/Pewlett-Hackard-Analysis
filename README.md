# Pewlett-Hackard Analysis
# Project Overview
Our assignment is to help Pewlett-Hackard, a large company boasting several thousand employees, build an employee database with SQL to answer 2 main questions:
- Who will be retiring in the next few years?
- How many position will Pewlett-Hackard need to fill?

## Challenge Overview
After generating a list of all employees eligible for the retirement package, we now determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

## Resources
- Data Source: departments.csv, employees.csv, salaries.csv, dept_emp.csv, titles.csv, dept_manager.csv.
- Software: PostgreSQL 11, pgAdmin 4.

## Pewlett-Hackard Analysis Results
- The retiring employees (those who were born between 1952 and 1955) fall in the following 7 titles.

  ![Retiring Employee Count by Title](https://github.com/nhipqnguyen/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.png)
  
- The positions that will need to be filled the most are Senior Engineer and Senior Staff.
- The position that is least demanded by the company is Manager.

- There are 1549 employees (current employees born in 1965) that are eligible for the mentorship program. Here is the information of the first 10:

  ![Mentorship Eligibility](https://github.com/nhipqnguyen/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.png)

## Pewlett-Hackard Analysis Summary
- From the above "Retiring Employees" table, Pewlett-Hackard has 90,398 employees retiring soon, which means there are 90,398 positions to fill out as the "silver tsunami" begins to make an impact.
- The number of eligible mentors Pewlett-Hackard has is only 1.7% of that of their retiring employees. That is to say, each mentor will be in charge of 58 new employees on average which seems quite overwhelming.
