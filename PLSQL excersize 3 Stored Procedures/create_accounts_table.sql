CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    AccountType VARCHAR2(20),
    Balance NUMBER
);

INSERT INTO Accounts VALUES (101,'Anushka','Savings',10000);
INSERT INTO Accounts VALUES (102,'Rahul','Savings',20000);
INSERT INTO Accounts VALUES (103,'Priya','Current',15000);

COMMIT;