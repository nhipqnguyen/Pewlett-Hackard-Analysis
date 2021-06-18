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
Below are the summary dataframe of the ride-sharing data and the PyBer weekly fares summary line graph for each city type:

  ![PyBer Summary by City Type](https://github.com/nhipqnguyen/PyBer_Analysis/blob/main/analysis/PyBer_summary_by_city_type.png)
  
  ![PyBer Fare Summary](https://github.com/nhipqnguyen/PyBer_Analysis/blob/main/analysis/PyBer_fare_summary.png)
  
- The number of total rides in urban cities is 2.6 and 13 times that in suburban cities and rural cities, respectively. A similar pattern can be seen with the total nubmber of drivers. Urban cities have approximately 5 and 31 times more drivers than suburban and rural cities, respectively.
- Since urban cities have the most rides and drivers, followed by suburban cities and then rural cities, the total amounts of ride fares by city ctype also follow that order. The biggest sales comes from urban city, which is approximately 2 and 9 times that of suburban and rural cities. This pattern can also be seen in the line chart, where the top line represents urban cities total fares and the bottom lines represents rural citites.
- The ratio between total rides and total drivers in rural area is the largest (1.6), followed by suburban cities (1.3) and then urban cities (0.7), which means the demand is higher than the supply in rural and suburban cities while it is the other way around in urban cities. This results in rural cities having the largest average fare per ride and per driver, followed by suburban cities and then urban cities. 

## Pewlett-Hackard Analysis Summary
Based on the above analysis resutls, here are three business recommendations addressing the disparities among the city types:
- For rural cities, we could recruit more drivers to increase the supply to better meet the demand and therefore make ride-shring more affordable for the customers in those areas.
- Similarly, for suburban cities, we could also recruit more drivers to make ride sharing more accessible and affordable to the underserved neighborhoods.
- For urban cities, we could focus more on marketing, especially advertising, to get more customers and sales.
