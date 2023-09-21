CREATE DATABASE db_PICASO_OdhranH;
USE db_PICASO_OdhranH;


CREATE TABLE Project_DeliveryEmployee(
	EmployeeID int,
	ProjectID int,
	isTechLead boolean NOT NULL,
	startDate dateTime NOT NULL DEFAULT NOW(),
	endDate dateTime NULL,	
	PRIMARY KEY(EmployeeID, ProjectID),
	Foreign Key(EmployeeID) references DeliveryEmployee(DEmpID),
	FOREIGN KEY (ProjectID) references Project(ProjectID)
);