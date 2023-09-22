# This SQL command allows you to connect Delivery Employees with projects they work on.
# This takes the format (Employee ID, Project ID, Start date, End date)
# If a team member is still employed on a task, set their end-date to null.

insert into Project_DeliveryEmployee(EmployeeID, ProjectID, startDate, endDate) values
(1, 2, '2022/07/23', '2023/02/15'),
(1,3, '2023/02/24', NULL),
(2,1,'2023/01/08', NULL),
(3,2, '2022/08/02','2023/02/15'),
(3,4, '2023/03/04', NULL),
(4,5, '2023/01/20', null),
(5,5, '2022/10/13', '2023/02/13'),
(5,6, '2021/09/26', '2022/10/04'),
(6,6, '2021/09/26', '2022/10/01'),
(7,8,  '2022/04/07', null),
(8, 7, '2023/08/29', null),
(9, 9,'2023/07/14', null),
(10, 8,'2022/05/10', '2023/04/15'),
(10, 9, '2023/05/03', NULL);
