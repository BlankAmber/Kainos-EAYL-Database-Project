SELECT COUNT(EmployeeID) as 'Count', ProjectName as 'Project Name' FROM Project_DeliveryEmployee
INNER JOIN Project on Project_DeliveryEmployee.ProjectID = Project.ProjectID
GROUP BY `Project Name`
ORDER BY `Count` DESC
LIMIT 1;