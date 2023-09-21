CREATE DATABASE db_PICASO_OdhranH;
USE db_PICASO_OdhranH;

# SQL for creating Delivery Employee table
CREATE TABLE DeliveryEmployee(
	DEmpID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	DEmpForename VARCHAR(20) NOT NULL,
	DEmpSurname VARCHAR(20) NOT NULL,
	DEMPBankNum VARCHAR(16) NOT NULL,
	NationalInsuranceNum VARCHAR(9) NOT NULL
);