# Pewlett Hackard Analysis

## Overview

The purpose of the new analysis is to find the employees eligible for retirement and what are their current job titles. From there, a count is done for how many within each job position is eligible for retirement. To help prepare for the silver tsunami, a mentorship eligibility table is created to show the list of employees eligible to mentor the upcoming future recruits.

## Analysis

Four main takeaways from the analysis deliverables:
* Over 90,000 employees will be eligible for retirement.
* Majority of the eligible candidates are senior statuses within their job field, indicating how long they have been working in the company.
* Out of all the eligible employees for retirement, the potential heavily hit sections within the company are the engineering and staff sections. 
* 1549 current employees are eligible to be mentors for the future generation of recruits after the silver tsunami.

## Summary

To check how many roles would be needed to be filled, another query can be done for the next group of employees who will be soon eligible for retirement. Since the query within Deliverable #1 only covers birth dates from 1952-01-01 to 1955-12-31, it would make sense to have the same query cover birth dates from 1956-01-01 to 1959-12-31. The resulting table is then exported into a .csv file, which can be seen [here](./Data/future_retiring_titles.csv). [Given the numbers are lower than the first table](./Data/retiring_titles.csv), it would be ideal if the numbers from the new table are suggested in terms of positions needing to be filled by 1956.

To see if there are enough eligible employees to mentor the future generation, a count on the table would have to be done. The query for creating a table involving counts within roles is similar to the previous suggestion. The resulting table is then exported into a .csv file, with the data being located [here](./Data/mentor_count.csv). The table is then shown to the higher-ups to give insight on whether there is a sufficient number of employees eligible to mentor the future generation of employees.
