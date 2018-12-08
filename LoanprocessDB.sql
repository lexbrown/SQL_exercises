CREATE DATABASE loanprocessdb
GO;

USE loanprocessdb
GO;

CREATE TABLE Customers (
custid int PRIMARY KEY,
firstname varchar(50) NOT NULL,
lastname varchar(50) NOT NULL,
dateofbirth datetime NOT NULL, -- пояснить за формат
socsecnumber int NOT NULL);

CREATE TABLE Applications (
appid int PRIMARY KEY,
appdate datetime NOT NULL,
custid varchar(50) NOT NULL,
loantype varchar(50) NOT NULL, 
loansize int NOT NULL,
loangoal varchar(50),
appstatus varchar(50)); --или лучше bit
                  
CREATE TABLE LoanProducts (
idProduct int PRIMARY KEY,
productType varchar(50) NOT NULL,
revolving int NOT NULL); -- лучше bit

                  
INSERT INTO Loanproducts (productType, revolving)
VALUES (rcl, 1);
INSERT INTO Loanproducts (productType, revolving)
VALUES (ncl, 0);
INSERT INTO Loanproducts (productType, revolving)
VALUES (pv loan, 0);
INSERT INTO Loanproducts (productType, revolving)
VALUES (overdraft, 1);
