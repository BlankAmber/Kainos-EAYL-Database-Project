CREATE DATABASE db_PICASO_OdhranH;
USE db_PICASO_OdhranH;

CREATE TABLE Project (
  ProjectID int NOT NULL AUTO_INCREMENT,
  ProjectName varchar(50) NOT NULL,
  ProjectValue decimal(9,2) NOT NULL,
  ClientID int,
  PRIMARY KEY (ProjectID),
  CONSTRAINT FOREIGN KEY (ClientID) REFERENCES Client (ClientID)
);

CREATE TABLE Technologies (
  TechID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  TechType varchar(50) NOT NULL
);

CREATE TABLE Project_Tech (
  ProjectID int NOT NULL,
  TechID int NOT NULL,
  PRIMARY KEY (ProjectID,TechID),
  CONSTRAINT FOREIGN KEY (ProjectID) REFERENCES Project (ProjectID),
  CONSTRAINT FOREIGN KEY (TechID) REFERENCES Technologies (TechID)
);

CREATE TABLE SalesEmployee (
  SaleID int AUTO_INCREMENT PRIMARY KEY,
  Forename varchar(20) NOT NULL,
  Surname Varchar(20) NOT NULL,
  Salary decimal(9,2) NOT NULL,
  BAN varchar(16) NOT NULL,
  NINumber varchar(9) NOT NULL,
  ComRate decimal(9,2) NOT NULL
);
