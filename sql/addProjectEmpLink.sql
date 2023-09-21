# This SQL command allows you to connect Delivery Employees with projects they work on.
# This takes the format (Employee ID, Project ID, Tech Lead Status, Start date, End date)
# To signify a team member is a tech lead, use 1. Otherwise, insert 0.
# If a team member is still employed on a task, set their end-date to null.

insert into Project_DeliveryEmployee(EmployeeID, ProjectID, isTechLead, startDate, endDate) values
(1, 2, 0, '2022/07/23', '2023/02/15'),
(1,3,1, '2023/02/24', NULL),
(2,1,1,'2023/01/08', NULL),
(3,2,0, '2022/08/02','2023/02/15'),
(3,4,1, '2023/03/04', NULL),
(4,5,1, '2023/01/20', null),
(5,5,0, '2022/10/13', '2023/02/13'),
(5,6,1, '2021/09/26', '2022/10/04'),
(6,6,0, '2021/09/26', '2022/10/01'),
(7,8, 1, '2022/04/07', null),
(8, 7, 1, '2023/08/29', null),
(9, 9, 1, '2023/07/14', null),
(10, 8, 0, '2022/05/10', '2023/04/15'),
(10, 9, 0, '2023/05/03', NULL);
