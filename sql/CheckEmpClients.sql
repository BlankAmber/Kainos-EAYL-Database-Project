# This should sleect any sales employee who hasn't won a client contract this year.

SELECT CONCAT(SalesEmployee.Forename, ' ', SalesEmployee.Surname) AS `Name`
FROM SalesEmployee
INNER JOIN `Client` ON SalesEmployee.SalesEmpID = `Client`.SalesEmpID
WHERE YEAR(ContractWon) != YEAR(now());

