CREATE DATABASE db_PICASO_OdhranH;
USE db_PICASO_OdhranH;

CREATE TABLE Client (
  ClientID int AUTO_INCREMENT PRIMARY KEY,
    Forename varchar(20) NOT NULL,
    Surname varchar(20) NOT NULL,
    Address varchar(50) NOT NULL,
    Phone varchar(15) NOT NULL
);