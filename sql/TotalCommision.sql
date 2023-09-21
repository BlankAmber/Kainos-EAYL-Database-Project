ALTER TABLE SalesEmployee RENAME COLUMN SaleID TO SalesEmpID;

SELECT * FROM Project;
SELECT * FROM SalesEmployee;

ALTER TABLE Project
ADD column SalesEmpID INT;

ALTER TABLE Project
ADD FOREIGN KEY(SalesEmpID) REFERENCES SalesEmployee(SalesEmpID);

-- As a member of the HR team I want to see a list of sales employees and 
-- how much each has made in commission this year

SELECT CONCAT(Forename,' ', Surname) as 'Name', ProjectValue, ComRate FROM SalesEmployee s
INNER JOIN Project p on p.SalesEmpID = s.SalesEmpID;

SELECT CONCAT(Forename,' ', Surname) as 'Name', SUM((ProjectValue/100) * ComRate) as 'Commision Paid' FROM SalesEmployee s
INNER JOIN Project p on p.SalesEmpID = s.SalesEmpID
GROUP BY CONCAT(Forename,' ', Surname);




