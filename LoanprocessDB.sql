CREATE DATABASE loanprocessdb;

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