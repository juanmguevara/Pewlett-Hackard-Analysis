# Pewlett-Hackard-Analysis

### Summary
In our Pewlett Hackard analysis, we created an Entity Relation Diagram (ERD) with the provided data: Departments, Department Employees, Department Manager, Employees, Titles, and Salaries. Creating the ERD helped us see relationships between each data set. These key factors helped us import and handle the data in SQL phAdmin 4.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/EmployeeDB.png.png)

# 

Using the employee data set we were able to apply various conditions for retirement eligibility helping us narrow down which employee is eligible for retirement. Here we got that there are 41,380 rows off employees who are eligible. This lets us know how many new open spaces will be available for new employees and new promotions for the following year.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Current%20Employees%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Retirement%20Employees%20Output.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Current%20Employees%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Current%20Employees%20Output.PNG)

# 

Furthering our analysis, we counted the number of employees in each department to see how big of a size is each department. This can help the company figure out where they need to add more resources or where they could potentially cut employment if needed.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Employee%20Count%20Per%20Department%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Employee%20Count%20Per%20Department%20Output.PNG)

# 

The Employee information table can help the company analyze their entire existing employment group. Which can be order by employee number or salary. Theses are important features when figuring out how long an employee has been with a company or what the a particular employee is costing the company each year.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Employee%20Information%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Employee%20Information%20Output.PNG)

# 

List of Managers the company know what manager oversees blank department. The one this that is a bit odd in this final output of the data is that there are only 5 managers for 9 different departments. Which means either there are no managers for the other remaining 4 departments or we have these five managers also managing other departments off the record. This is a question which Bobby will need to ask his manager.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Manager%20Information%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Manager%20Information%20Output.PNG)

# 

Department Information is another query created in order to give an in-depth overview of which employee is working in blank department. One issue found in this data set was that a few employees were appearing twice which could mean that the employee could have been moved from one department to the next. This is another question that Bobby will need to bring up to his manager.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Department%20Information%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Department%20Information%20Output.PNG)

# 

Sales Team Employee Retirement Information table is a list containing all the sales team employee information: Employment Number, First Name, Last Name, Department (Sales Only). This can be a useful tool for the sales team, so they know who is becoming eligible for retirement.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Sales%20Team%20Employee%20Information%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Sales%20Team%20Employee%20Information%20Output.PNG)

# 

Combining both the sales & development team employee retirement information in order to get a list of names of people who are eligible for the mentoring program, so that they do not retire completely, and instead work part time helping the new hires.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Sales%20%26%20Development%20Team%20Employee%20Information%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots/Sales%20%26%20Development%20Team%20Employee%20Information%20Output.PNG)

# Challenge

### Summary
We were asked to create a list that contains potential mentors from the company’s current employees list who are eligible for retirement, as well as their most recent titles.


![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Titles%20Retirement%20Information%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Titles%20Retirement%20Information%20Output.PNG)

#

Using our retirement information list and combining that with the titles and salaries list we were able to obtain a list containing current employees who are eligible for retirement, noting their title. Furthering our analysis on this data set we can see that there are multiple duplicates in our list, which we will need to remove. After removing the duplicates from our data set, we ended up with 40,975 unique employees who are ready to be considered in the mentoring program. All employees in our list of data only shows their most recent title.

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Counts%20the%20Duplicates%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Counts%20the%20Duplicates%20Output.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Counting%20how%20many%20employees%20share%20the%20same%20title.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Counting%20how%20many%20employees%20share%20the%20same%20title%20Output.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Display%20duplicate%20rows%20with%20all%20info%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Display%20duplicate%20rows%20with%20all%20info%20Output.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Removing%20Duplicates%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Removing%20Duplicates%20Output.PNG)

#

Now that we know how many employees are retiring and are eligible for the mentorship program, we need to figure out which employees are ready to get a mentor. The most recent employees will be eligible for this program. After creating this query, we were able to get that there are 1,549 employees who are eligible to receive the benefits from this program!

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Mentor%20List%20Query.PNG)

![](https://github.com/juanmguevara/Pewlett-Hackard-Analysis/blob/master/ScreenShots%20for%20Challenge/Mentor%20List%20Output.PNG)
