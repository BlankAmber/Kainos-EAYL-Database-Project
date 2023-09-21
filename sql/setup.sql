CREATE DATABASE db_PICASO_OdhranH;
USE db_PICASO_OdhranH;

CREATE TABLE Client (
  ClientID int AUTO_INCREMENT PRIMARY KEY,
    Forename varchar(20) NOT NULL,
    Surname varchar(20) NOT NULL,
    Address varchar(50) NOT NULL,
    Phone varchar(15) NOT NULL
);

# SQL for creating Delivery Employee table
CREATE TABLE DeliveryEmployee (
	DEmpID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	DEmpForename VARCHAR(20) NOT NULL,
	DEmpSurname VARCHAR(20) NOT NULL,
	DEMPBankNum VARCHAR(16) NOT NULL,
	NationalInsuranceNum VARCHAR(9) NOT NULL
);

CREATE TABLE Project (
  ProjectID INT NOT NULL AUTO_INCREMENT,
  ProjectName VARCHAR(50) NOT NULL,
  ProjectValue DECIMAL(9,2) NOT NULL,
  ClientID INT,
  TechLeadID INT NOT NULL,
  PRIMARY KEY (ProjectID),
  CONSTRAINT FOREIGN KEY (ClientID) REFERENCES `Client`(ClientID),
  CONSTRAINT FOREIGN KEY  (TechLeadID) REFERENCES DeliveryEmployee(DEmpID)
);

CREATE TABLE Technologies (
  TechID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  TechType VARCHAR(50) NOT NULL
);

CREATE TABLE Project_Tech (
  ProjectID int NOT NULL,
  TechID int NOT NULL,
  PRIMARY KEY (ProjectID,TechID),
  CONSTRAINT FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
  CONSTRAINT FOREIGN KEY (TechID) REFERENCES Technologies(TechID)
);

CREATE TABLE SalesEmployee (
  SaleID INT AUTO_INCREMENT PRIMARY KEY,
  Forename VARCHAR(20) NOT NULL,
  Surname VARCHAR(20) NOT NULL,
  Salary DECIMAL(9,2) NOT NULL,
  BAN VARCHAR(16) NOT NULL,
  NINumber VARCHAR(9) NOT NULL,
  ComRate DECIMAL(9,2) NOT NULL
);

CREATE TABLE Project_DeliveryEmployee(
	EmployeeID INT,
	ProjectID INT,
	startDate DATE NOT NULL DEFAULT NOW(),
	endDate DATETIME NULL,
	PRIMARY KEY(EmployeeID, ProjectID),
	FOREIGN KEY (EmployeeID) REFERENCES DeliveryEmployee(DEmpID),
	FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
	
);
