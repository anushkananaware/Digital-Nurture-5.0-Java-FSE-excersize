CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER
);

INSERT INTO Employees VALUES (1,'Amit','HR',50000);
INSERT INTO Employees VALUES (2,'Sneha','HR',60000);
INSERT INTO Employees VALUES (3,'Rohan','IT',70000);

COMMIT;