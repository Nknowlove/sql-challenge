# sql-challenge
Assignment Task

This task is about SQL application. First, create the relevant tables as required, set the data types, primary keys, and foreign keys. Then, import data into the respective tables. Finally, perform data analysis and display the results as per the requirements. 

Instructions

1.	Firstly, when creating the data tables, the data types for the same type of data across different tables were not consistent during the initial setup, which led to errors due to incompatible formats when importing data. I had to delete and recreate the tables, but due to the primary and foreign key constraints, I was unable to delete them properly. After searching online, I discovered that the DROP ... CASCADE method could resolve this issue.
2.	Secondly, during the data import, errors occurred due to foreign key constraints because the dependent tables had not yet been populated with data. After re-evaluating the dependencies, I was able to resolve this issue.
3.	In the 6th question, which required listing information related to the Sales department, I was unsure whether to include the department name. Therefore, I used different methods to display the information both with and without the department name, while keeping the rest of the content the same.

Declaration

During the project, we used some syntax, formulas, and functions. Some of them are from class, and some of them are from a web search. When we made an error or had no idea what was going on, we discussed or chatted with ChatGPT and got some suggestions or debug for coding. We figured the problem out first and understood it, and then typed the code down. From this view, my work might have some similarities with others.
