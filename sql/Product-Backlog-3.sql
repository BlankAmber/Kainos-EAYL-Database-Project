USE db_PICASO_OdhranH;

CREATE TABLE Client (
  ClientID int AUTO_INCREMENT PRIMARY KEY,
    Forename varchar(20) NOT NULL,
    Surname varchar(20) NOT NULL,
    Address varchar(50) NOT NULL,
    Phone varchar(15) NOT NULL
);

INSERT INTO Client (Forename, Surname, Address, Phone)
VALUES ('Nicole','Brown','12 Drumstick lane','174882123');