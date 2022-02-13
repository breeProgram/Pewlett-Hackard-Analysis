# Pewlett-Hackard-Analysis
## Introduction
The company Pewlett-Hackard has multiple employees reaching retirement age and is anticipate many of those employees to retire in the next few years. The purpose of this analysis was to determine the number of retiring employees per title, and then identify a list of employees who would be eligible to participate in a mentorship program. I imported the 6 different employee csv into a SQL database and used queries to work through the data.
## Results
![retire_titles](https://user-images.githubusercontent.com/56700719/153760145-a0c51005-b558-4ce5-8685-3169591f5e77.JPG) 
 
 Import points regarding number of retiring employees per title.
- The title with the most expect employees of retiring is Senior Engineers.
- The total amount of all engineer titles expecting to retire soon is 36,291 employees.
- The 2 managers expecting to retire soon would leave 2 of the 9 departments without managers.
- The total amount of employees eligible to be mentors for future employment is 1549.
## Summary
![mentor_title_amount](https://user-images.githubusercontent.com/56700719/153760182-8bc9cc03-860d-41ea-8866-12e493cae076.JPG)

This table is the total amount of each employees’ title in the list of employees eligible to participate in a mentorship program. There are multiple employees who are qualified, retirement-ready in each department to mentor the upcoming generation of employees. Unfortunately, there no managers made the list for the mentorship program.

![total_emp_retire](https://user-images.githubusercontent.com/56700719/153760202-84ae901d-f6c8-438f-ba0f-1c46baed771d.JPG)

As some of the employees begin to retire, there will be a total of 72,458 positions to be filled when this retirement wave finishes.

![total_salary_retire](https://user-images.githubusercontent.com/56700719/153760225-825684e9-e012-4a54-a990-f159d30b1c2b.JPG)

I was a little curious and joined the unique_titles table, which is the table with all retirement ready employees with no duplicate rows, with the salaries table, and then summed up all the salaries. When this retirement wave finishes, the total amount of all those salaries will sum to more than $3.83 billion.
