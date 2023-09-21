CREATE DATABASE db_PICASO_OdhranH;
USE db_PICASO_OdhranH;

# SQL for creating Delivery Employee table
CREATE TABLE DeliveryEmployee(
DEmpID int auto_increment not null PRIMARY KEY,
DEmpForename varchar(20) not null,
DEmpSurname varchar(20) not null,
DEMPBankNum VARCHAR(16) not null,
NationalInsuranceNum Varchar(9) not null
);