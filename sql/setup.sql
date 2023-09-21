CREATE DATABASE db_PICASO_OdhranH;
USE db_PICASO_OdhranH;

CREATE TABLE SalesEmployee (
  SaleID int AUTO_INCREMENT PRIMARY KEY,
  Forename varchar(20) NOT NULL,
  Surname Varchar(20) NOT NULL,
  Salary decimal(9,2) NOT NULL,
  BAN varchar(16) NOT NULL,
  NINumber varchar(9) NOT NULL,
  ComRate decimal(9,2) NOT NULL
);
